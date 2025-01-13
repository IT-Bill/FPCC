; ModuleID = 'bessel.c'
source_filename = "bessel.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bessel.c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_IJ_taylor_e(double, double, i32, i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct*, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca %struct.gsl_sf_result_struct, align 8
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca i32, align 4
  store double %0, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !61, metadata !62), !dbg !63
  store double %1, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !64, metadata !62), !dbg !65
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !66, metadata !62), !dbg !67
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !68, metadata !62), !dbg !69
  store double %4, double* %12, align 8
  call void @llvm.dbg.declare(metadata double* %12, metadata !70, metadata !62), !dbg !71
  store %struct.gsl_sf_result_struct* %5, %struct.gsl_sf_result_struct** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %13, metadata !72, metadata !62), !dbg !73
  %37 = load double, double* %8, align 8, !dbg !74
  %38 = fcmp olt double %37, 0.000000e+00, !dbg !76
  br i1 %38, label %42, label %39, !dbg !77

; <label>:39:                                     ; preds = %6
  %40 = load double, double* %9, align 8, !dbg !78
  %41 = fcmp olt double %40, 0.000000e+00, !dbg !80
  br i1 %41, label %42, label %51, !dbg !81

; <label>:42:                                     ; preds = %39, %6
  br label %43, !dbg !82, !llvm.loop !84

; <label>:43:                                     ; preds = %42
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !85
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !85
  store double 0x7FF8000000000000, double* %45, align 8, !dbg !85
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !85
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !85
  store double 0x7FF8000000000000, double* %47, align 8, !dbg !85
  br label %48, !dbg !85, !llvm.loop !88

; <label>:48:                                     ; preds = %43
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 102, i32 1), !dbg !90
  store i32 1, i32* %7, align 4, !dbg !90
  br label %270, !dbg !90
                                                  ; No predecessors!
  br label %50, !dbg !93

; <label>:50:                                     ; preds = %49
  br label %270, !dbg !95

; <label>:51:                                     ; preds = %39
  %52 = load double, double* %9, align 8, !dbg !96
  %53 = fcmp oeq double %52, 0.000000e+00, !dbg !98
  br i1 %53, label %54, label %68, !dbg !99

; <label>:54:                                     ; preds = %51
  %55 = load double, double* %8, align 8, !dbg !100
  %56 = fcmp oeq double %55, 0.000000e+00, !dbg !103
  br i1 %56, label %57, label %62, !dbg !104

; <label>:57:                                     ; preds = %54
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !105
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 0, !dbg !107
  store double 1.000000e+00, double* %59, align 8, !dbg !108
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !109
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !110
  store double 0.000000e+00, double* %61, align 8, !dbg !111
  br label %67, !dbg !112

; <label>:62:                                     ; preds = %54
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !113
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !115
  store double 0.000000e+00, double* %64, align 8, !dbg !116
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !117
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 1, !dbg !118
  store double 0.000000e+00, double* %66, align 8, !dbg !119
  br label %67

; <label>:67:                                     ; preds = %62, %57
  store i32 0, i32* %7, align 4, !dbg !120
  br label %270, !dbg !120

; <label>:68:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !121, metadata !62), !dbg !123
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !124, metadata !62), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %16, metadata !126, metadata !62), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %17, metadata !128, metadata !62), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %18, metadata !130, metadata !62), !dbg !131
  %69 = load double, double* %8, align 8, !dbg !132
  %70 = fcmp oeq double %69, 0.000000e+00, !dbg !134
  br i1 %70, label %71, label %74, !dbg !135

; <label>:71:                                     ; preds = %68
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !136
  store double 1.000000e+00, double* %72, align 8, !dbg !138
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !139
  store double 0.000000e+00, double* %73, align 8, !dbg !140
  store i32 0, i32* %16, align 4, !dbg !141
  br label %189, !dbg !142

; <label>:74:                                     ; preds = %68
  %75 = load double, double* %8, align 8, !dbg !143
  %76 = fcmp olt double %75, 0x41DFFFFFFF800000, !dbg !145
  br i1 %76, label %77, label %148, !dbg !146

; <label>:77:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata i32* %19, metadata !147, metadata !62), !dbg !149
  %78 = load double, double* %8, align 8, !dbg !150
  %79 = fadd double %78, 5.000000e-01, !dbg !151
  %80 = call double @floor(double %79) #1, !dbg !152
  %81 = fptosi double %80 to i32, !dbg !153
  store i32 %81, i32* %19, align 4, !dbg !149
  call void @llvm.dbg.declare(metadata double* %20, metadata !154, metadata !62), !dbg !155
  %82 = load double, double* %8, align 8, !dbg !156
  %83 = load i32, i32* %19, align 4, !dbg !157
  %84 = sitofp i32 %83 to double, !dbg !157
  %85 = fsub double %82, %84, !dbg !158
  store double %85, double* %20, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !159, metadata !62), !dbg !160
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !161, metadata !62), !dbg !162
  call void @llvm.dbg.declare(metadata i32* %23, metadata !163, metadata !62), !dbg !164
  %86 = load i32, i32* %19, align 4, !dbg !165
  %87 = sitofp i32 %86 to double, !dbg !165
  %88 = fadd double %87, 1.000000e+00, !dbg !166
  %89 = load double, double* %20, align 8, !dbg !167
  %90 = call i32 @gsl_sf_poch_e(double %88, double %89, %struct.gsl_sf_result_struct* %21), !dbg !168
  store i32 %90, i32* %23, align 4, !dbg !164
  call void @llvm.dbg.declare(metadata i32* %24, metadata !169, metadata !62), !dbg !170
  %91 = load i32, i32* %19, align 4, !dbg !171
  %92 = load double, double* %9, align 8, !dbg !172
  %93 = fmul double 5.000000e-01, %92, !dbg !173
  %94 = call i32 @gsl_sf_taylorcoeff_e(i32 %91, double %93, %struct.gsl_sf_result_struct* %22), !dbg !174
  store i32 %94, i32* %24, align 4, !dbg !170
  call void @llvm.dbg.declare(metadata double* %25, metadata !175, metadata !62), !dbg !176
  %95 = load double, double* %9, align 8, !dbg !177
  %96 = fmul double 5.000000e-01, %95, !dbg !178
  %97 = load double, double* %20, align 8, !dbg !179
  %98 = call double @pow(double %96, double %97) #6, !dbg !180
  store double %98, double* %25, align 8, !dbg !176
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !181
  %100 = load double, double* %99, align 8, !dbg !181
  %101 = load double, double* %25, align 8, !dbg !182
  %102 = fmul double %100, %101, !dbg !183
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !184
  %104 = load double, double* %103, align 8, !dbg !184
  %105 = fdiv double %102, %104, !dbg !185
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !186
  store double %105, double* %106, align 8, !dbg !187
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !188
  %108 = load double, double* %107, align 8, !dbg !188
  %109 = load double, double* %25, align 8, !dbg !189
  %110 = fmul double %108, %109, !dbg !190
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !191
  %112 = load double, double* %111, align 8, !dbg !191
  %113 = fdiv double %110, %112, !dbg !192
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !193
  store double %113, double* %114, align 8, !dbg !194
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !195
  %116 = load double, double* %115, align 8, !dbg !195
  %117 = call double @fabs(double %116) #1, !dbg !196
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !197
  %119 = load double, double* %118, align 8, !dbg !197
  %120 = fdiv double %117, %119, !dbg !198
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !199
  %122 = load double, double* %121, align 8, !dbg !199
  %123 = fmul double %120, %122, !dbg !200
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !201
  %125 = load double, double* %124, align 8, !dbg !202
  %126 = fadd double %125, %123, !dbg !202
  store double %126, double* %124, align 8, !dbg !202
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !203
  %128 = load double, double* %127, align 8, !dbg !203
  %129 = call double @fabs(double %128) #1, !dbg !204
  %130 = fmul double 0x3CC0000000000000, %129, !dbg !205
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !206
  %132 = load double, double* %131, align 8, !dbg !207
  %133 = fadd double %132, %130, !dbg !207
  store double %133, double* %131, align 8, !dbg !207
  %134 = load i32, i32* %24, align 4, !dbg !208
  %135 = icmp ne i32 %134, 0, !dbg !208
  br i1 %135, label %136, label %138, !dbg !208

; <label>:136:                                    ; preds = %77
  %137 = load i32, i32* %24, align 4, !dbg !209
  br label %146, !dbg !209

; <label>:138:                                    ; preds = %77
  %139 = load i32, i32* %23, align 4, !dbg !211
  %140 = icmp ne i32 %139, 0, !dbg !211
  br i1 %140, label %141, label %143, !dbg !211

; <label>:141:                                    ; preds = %138
  %142 = load i32, i32* %23, align 4, !dbg !213
  br label %144, !dbg !213

; <label>:143:                                    ; preds = %138
  br label %144, !dbg !215

; <label>:144:                                    ; preds = %143, %141
  %145 = phi i32 [ %142, %141 ], [ 0, %143 ], !dbg !217
  br label %146, !dbg !217

; <label>:146:                                    ; preds = %144, %136
  %147 = phi i32 [ %137, %136 ], [ %145, %144 ], !dbg !219
  store i32 %147, i32* %16, align 4, !dbg !221
  br label %188, !dbg !222

; <label>:148:                                    ; preds = %74
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %26, metadata !223, metadata !62), !dbg !225
  call void @llvm.dbg.declare(metadata i32* %27, metadata !226, metadata !62), !dbg !227
  %149 = load double, double* %8, align 8, !dbg !228
  %150 = fadd double %149, 1.000000e+00, !dbg !229
  %151 = call i32 @gsl_sf_lngamma_e(double %150, %struct.gsl_sf_result_struct* %26), !dbg !230
  store i32 %151, i32* %27, align 4, !dbg !227
  call void @llvm.dbg.declare(metadata double* %28, metadata !231, metadata !62), !dbg !232
  %152 = load double, double* %8, align 8, !dbg !233
  %153 = load double, double* %9, align 8, !dbg !234
  %154 = fmul double 5.000000e-01, %153, !dbg !235
  %155 = call double @log(double %154) #6, !dbg !236
  %156 = fmul double %152, %155, !dbg !237
  store double %156, double* %28, align 8, !dbg !232
  call void @llvm.dbg.declare(metadata double* %29, metadata !238, metadata !62), !dbg !239
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !240
  %158 = load double, double* %157, align 8, !dbg !240
  store double %158, double* %29, align 8, !dbg !239
  call void @llvm.dbg.declare(metadata double* %30, metadata !241, metadata !62), !dbg !242
  %159 = load double, double* %28, align 8, !dbg !243
  %160 = load double, double* %29, align 8, !dbg !244
  %161 = fsub double %159, %160, !dbg !245
  store double %161, double* %30, align 8, !dbg !242
  call void @llvm.dbg.declare(metadata double* %31, metadata !246, metadata !62), !dbg !247
  %162 = load double, double* %28, align 8, !dbg !248
  %163 = call double @fabs(double %162) #1, !dbg !249
  %164 = load double, double* %29, align 8, !dbg !250
  %165 = call double @fabs(double %164) #1, !dbg !251
  %166 = fadd double %163, %165, !dbg !253
  %167 = fmul double 0x3CB0000000000000, %166, !dbg !254
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !255
  %169 = load double, double* %168, align 8, !dbg !255
  %170 = fadd double %167, %169, !dbg !256
  store double %170, double* %31, align 8, !dbg !247
  call void @llvm.dbg.declare(metadata i32* %32, metadata !257, metadata !62), !dbg !258
  %171 = load double, double* %30, align 8, !dbg !259
  %172 = load double, double* %31, align 8, !dbg !260
  %173 = call i32 @gsl_sf_exp_err_e(double %171, double %172, %struct.gsl_sf_result_struct* %14), !dbg !261
  store i32 %173, i32* %32, align 4, !dbg !258
  %174 = load i32, i32* %32, align 4, !dbg !262
  %175 = icmp ne i32 %174, 0, !dbg !262
  br i1 %175, label %176, label %178, !dbg !262

; <label>:176:                                    ; preds = %148
  %177 = load i32, i32* %32, align 4, !dbg !263
  br label %186, !dbg !263

; <label>:178:                                    ; preds = %148
  %179 = load i32, i32* %27, align 4, !dbg !264
  %180 = icmp ne i32 %179, 0, !dbg !264
  br i1 %180, label %181, label %183, !dbg !264

; <label>:181:                                    ; preds = %178
  %182 = load i32, i32* %27, align 4, !dbg !266
  br label %184, !dbg !266

; <label>:183:                                    ; preds = %178
  br label %184, !dbg !268

; <label>:184:                                    ; preds = %183, %181
  %185 = phi i32 [ %182, %181 ], [ 0, %183 ], !dbg !270
  br label %186, !dbg !270

; <label>:186:                                    ; preds = %184, %176
  %187 = phi i32 [ %177, %176 ], [ %185, %184 ], !dbg !272
  store i32 %187, i32* %16, align 4, !dbg !274
  br label %188

; <label>:188:                                    ; preds = %186, %146
  br label %189

; <label>:189:                                    ; preds = %188, %71
  call void @llvm.dbg.declare(metadata double* %33, metadata !275, metadata !62), !dbg !277
  %190 = load i32, i32* %10, align 4, !dbg !278
  %191 = sitofp i32 %190 to double, !dbg !278
  %192 = fmul double %191, 2.500000e-01, !dbg !279
  %193 = load double, double* %9, align 8, !dbg !280
  %194 = fmul double %192, %193, !dbg !281
  %195 = load double, double* %9, align 8, !dbg !282
  %196 = fmul double %194, %195, !dbg !283
  store double %196, double* %33, align 8, !dbg !277
  call void @llvm.dbg.declare(metadata double* %34, metadata !284, metadata !62), !dbg !285
  store double 1.000000e+00, double* %34, align 8, !dbg !285
  call void @llvm.dbg.declare(metadata double* %35, metadata !286, metadata !62), !dbg !287
  store double 1.000000e+00, double* %35, align 8, !dbg !287
  call void @llvm.dbg.declare(metadata i32* %36, metadata !288, metadata !62), !dbg !289
  store i32 1, i32* %36, align 4, !dbg !290
  br label %197, !dbg !292

; <label>:197:                                    ; preds = %224, %189
  %198 = load i32, i32* %36, align 4, !dbg !293
  %199 = load i32, i32* %11, align 4, !dbg !296
  %200 = icmp sle i32 %198, %199, !dbg !297
  br i1 %200, label %201, label %227, !dbg !298

; <label>:201:                                    ; preds = %197
  %202 = load double, double* %33, align 8, !dbg !299
  %203 = load double, double* %8, align 8, !dbg !301
  %204 = load i32, i32* %36, align 4, !dbg !302
  %205 = sitofp i32 %204 to double, !dbg !302
  %206 = fadd double %203, %205, !dbg !303
  %207 = load i32, i32* %36, align 4, !dbg !304
  %208 = sitofp i32 %207 to double, !dbg !304
  %209 = fmul double %206, %208, !dbg !305
  %210 = fdiv double %202, %209, !dbg !306
  %211 = load double, double* %35, align 8, !dbg !307
  %212 = fmul double %211, %210, !dbg !307
  store double %212, double* %35, align 8, !dbg !307
  %213 = load double, double* %35, align 8, !dbg !308
  %214 = load double, double* %34, align 8, !dbg !309
  %215 = fadd double %214, %213, !dbg !309
  store double %215, double* %34, align 8, !dbg !309
  %216 = load double, double* %35, align 8, !dbg !310
  %217 = load double, double* %34, align 8, !dbg !312
  %218 = fdiv double %216, %217, !dbg !313
  %219 = call double @fabs(double %218) #1, !dbg !314
  %220 = load double, double* %12, align 8, !dbg !315
  %221 = fcmp olt double %219, %220, !dbg !316
  br i1 %221, label %222, label %223, !dbg !317

; <label>:222:                                    ; preds = %201
  br label %227, !dbg !318

; <label>:223:                                    ; preds = %201
  br label %224, !dbg !320

; <label>:224:                                    ; preds = %223
  %225 = load i32, i32* %36, align 4, !dbg !321
  %226 = add nsw i32 %225, 1, !dbg !321
  store i32 %226, i32* %36, align 4, !dbg !321
  br label %197, !dbg !323, !llvm.loop !324

; <label>:227:                                    ; preds = %222, %197
  %228 = load double, double* %34, align 8, !dbg !326
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !327
  store double %228, double* %229, align 8, !dbg !328
  %230 = load double, double* %12, align 8, !dbg !329
  %231 = load double, double* %34, align 8, !dbg !330
  %232 = call double @fabs(double %231) #1, !dbg !331
  %233 = fmul double %230, %232, !dbg !332
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !333
  store double %233, double* %234, align 8, !dbg !334
  %235 = load i32, i32* %36, align 4, !dbg !335
  %236 = load i32, i32* %11, align 4, !dbg !336
  %237 = icmp sge i32 %235, %236, !dbg !337
  %238 = select i1 %237, i32 11, i32 0, !dbg !335
  store i32 %238, i32* %17, align 4, !dbg !338
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !339
  %240 = load double, double* %239, align 8, !dbg !339
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !340
  %242 = load double, double* %241, align 8, !dbg !340
  %243 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !341
  %244 = load double, double* %243, align 8, !dbg !341
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !342
  %246 = load double, double* %245, align 8, !dbg !342
  %247 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !343
  %248 = call i32 @gsl_sf_multiply_err_e(double %240, double %242, double %244, double %246, %struct.gsl_sf_result_struct* %247), !dbg !344
  store i32 %248, i32* %18, align 4, !dbg !345
  %249 = load i32, i32* %18, align 4, !dbg !346
  %250 = icmp ne i32 %249, 0, !dbg !346
  br i1 %250, label %251, label %253, !dbg !346

; <label>:251:                                    ; preds = %227
  %252 = load i32, i32* %18, align 4, !dbg !347
  br label %268, !dbg !347

; <label>:253:                                    ; preds = %227
  %254 = load i32, i32* %16, align 4, !dbg !349
  %255 = icmp ne i32 %254, 0, !dbg !349
  br i1 %255, label %256, label %258, !dbg !349

; <label>:256:                                    ; preds = %253
  %257 = load i32, i32* %16, align 4, !dbg !351
  br label %266, !dbg !351

; <label>:258:                                    ; preds = %253
  %259 = load i32, i32* %17, align 4, !dbg !353
  %260 = icmp ne i32 %259, 0, !dbg !353
  br i1 %260, label %261, label %263, !dbg !353

; <label>:261:                                    ; preds = %258
  %262 = load i32, i32* %17, align 4, !dbg !355
  br label %264, !dbg !355

; <label>:263:                                    ; preds = %258
  br label %264, !dbg !357

; <label>:264:                                    ; preds = %263, %261
  %265 = phi i32 [ %262, %261 ], [ 0, %263 ], !dbg !359
  br label %266, !dbg !359

; <label>:266:                                    ; preds = %264, %256
  %267 = phi i32 [ %257, %256 ], [ %265, %264 ], !dbg !361
  br label %268, !dbg !361

; <label>:268:                                    ; preds = %266, %251
  %269 = phi i32 [ %252, %251 ], [ %267, %266 ], !dbg !363
  store i32 %269, i32* %7, align 4, !dbg !365
  br label %270, !dbg !365

; <label>:270:                                    ; preds = %48, %67, %268, %50
  %271 = load i32, i32* %7, align 4, !dbg !366
  ret i32 %271, !dbg !366
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare i32 @gsl_sf_poch_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_taylorcoeff_e(i32, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @log(double) #4

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_multiply_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Jnu_asympx_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !367 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !370, metadata !62), !dbg !371
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !372, metadata !62), !dbg !373
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !374, metadata !62), !dbg !375
  call void @llvm.dbg.declare(metadata double* %7, metadata !376, metadata !62), !dbg !377
  %18 = load double, double* %4, align 8, !dbg !378
  %19 = fmul double 4.000000e+00, %18, !dbg !379
  %20 = load double, double* %4, align 8, !dbg !380
  %21 = fmul double %19, %20, !dbg !381
  store double %21, double* %7, align 8, !dbg !377
  call void @llvm.dbg.declare(metadata double* %8, metadata !382, metadata !62), !dbg !383
  %22 = load double, double* %5, align 8, !dbg !384
  %23 = load double, double* %4, align 8, !dbg !385
  %24 = fmul double 5.000000e-01, %23, !dbg !386
  %25 = fadd double %24, 2.500000e-01, !dbg !387
  %26 = fmul double %25, 0x400921FB54442D18, !dbg !388
  %27 = fsub double %22, %26, !dbg !389
  store double %27, double* %8, align 8, !dbg !383
  call void @llvm.dbg.declare(metadata double* %9, metadata !390, metadata !62), !dbg !391
  store double 0.000000e+00, double* %9, align 8, !dbg !391
  call void @llvm.dbg.declare(metadata double* %10, metadata !392, metadata !62), !dbg !393
  store double 0.000000e+00, double* %10, align 8, !dbg !393
  call void @llvm.dbg.declare(metadata double* %11, metadata !394, metadata !62), !dbg !395
  store double 0.000000e+00, double* %11, align 8, !dbg !395
  call void @llvm.dbg.declare(metadata double* %12, metadata !396, metadata !62), !dbg !397
  store double 1.000000e+00, double* %12, align 8, !dbg !397
  call void @llvm.dbg.declare(metadata i32* %13, metadata !398, metadata !62), !dbg !399
  call void @llvm.dbg.declare(metadata i32* %14, metadata !400, metadata !62), !dbg !401
  br label %28, !dbg !402, !llvm.loop !403

; <label>:28:                                     ; preds = %104, %3
  %29 = load double, double* %11, align 8, !dbg !404
  %30 = fcmp oeq double %29, 0.000000e+00, !dbg !406
  br i1 %30, label %31, label %32, !dbg !407

; <label>:31:                                     ; preds = %28
  br label %48, !dbg !408

; <label>:32:                                     ; preds = %28
  %33 = load double, double* %7, align 8, !dbg !410
  %34 = load double, double* %11, align 8, !dbg !412
  %35 = fmul double 2.000000e+00, %34, !dbg !413
  %36 = fsub double %35, 1.000000e+00, !dbg !414
  %37 = load double, double* %11, align 8, !dbg !415
  %38 = fmul double 2.000000e+00, %37, !dbg !416
  %39 = fsub double %38, 1.000000e+00, !dbg !417
  %40 = fmul double %36, %39, !dbg !418
  %41 = fsub double %33, %40, !dbg !419
  %42 = fsub double -0.000000e+00, %41, !dbg !420
  %43 = load double, double* %11, align 8, !dbg !421
  %44 = load double, double* %5, align 8, !dbg !422
  %45 = fmul double 8.000000e+00, %44, !dbg !423
  %46 = fmul double %43, %45, !dbg !424
  %47 = fdiv double %42, %46, !dbg !425
  br label %48, !dbg !426

; <label>:48:                                     ; preds = %32, %31
  %49 = phi double [ 1.000000e+00, %31 ], [ %47, %32 ], !dbg !427
  %50 = load double, double* %12, align 8, !dbg !429
  %51 = fmul double %50, %49, !dbg !429
  store double %51, double* %12, align 8, !dbg !429
  %52 = load double, double* %12, align 8, !dbg !430
  %53 = call double @fabs(double %52) #1, !dbg !431
  %54 = load double, double* %9, align 8, !dbg !432
  %55 = call double @fabs(double %54) #1, !dbg !433
  %56 = fmul double 0x3CB0000000000000, %55, !dbg !434
  %57 = fcmp olt double %53, %56, !dbg !435
  %58 = zext i1 %57 to i32, !dbg !435
  store i32 %58, i32* %13, align 4, !dbg !436
  %59 = load double, double* %12, align 8, !dbg !437
  %60 = load double, double* %9, align 8, !dbg !438
  %61 = fadd double %60, %59, !dbg !438
  store double %61, double* %9, align 8, !dbg !438
  %62 = load double, double* %11, align 8, !dbg !439
  %63 = fadd double %62, 1.000000e+00, !dbg !439
  store double %63, double* %11, align 8, !dbg !439
  %64 = load double, double* %7, align 8, !dbg !440
  %65 = load double, double* %11, align 8, !dbg !441
  %66 = fmul double 2.000000e+00, %65, !dbg !442
  %67 = fsub double %66, 1.000000e+00, !dbg !443
  %68 = load double, double* %11, align 8, !dbg !444
  %69 = fmul double 2.000000e+00, %68, !dbg !445
  %70 = fsub double %69, 1.000000e+00, !dbg !446
  %71 = fmul double %67, %70, !dbg !447
  %72 = fsub double %64, %71, !dbg !448
  %73 = load double, double* %11, align 8, !dbg !449
  %74 = load double, double* %5, align 8, !dbg !450
  %75 = fmul double 8.000000e+00, %74, !dbg !451
  %76 = fmul double %73, %75, !dbg !452
  %77 = fdiv double %72, %76, !dbg !453
  %78 = load double, double* %12, align 8, !dbg !454
  %79 = fmul double %78, %77, !dbg !454
  store double %79, double* %12, align 8, !dbg !454
  %80 = load double, double* %12, align 8, !dbg !455
  %81 = call double @fabs(double %80) #1, !dbg !456
  %82 = load double, double* %10, align 8, !dbg !457
  %83 = call double @fabs(double %82) #1, !dbg !458
  %84 = fmul double 0x3CB0000000000000, %83, !dbg !459
  %85 = fcmp olt double %81, %84, !dbg !460
  %86 = zext i1 %85 to i32, !dbg !460
  store i32 %86, i32* %14, align 4, !dbg !461
  %87 = load double, double* %12, align 8, !dbg !462
  %88 = load double, double* %10, align 8, !dbg !463
  %89 = fadd double %88, %87, !dbg !463
  store double %89, double* %10, align 8, !dbg !463
  %90 = load i32, i32* %13, align 4, !dbg !464
  %91 = icmp ne i32 %90, 0, !dbg !464
  br i1 %91, label %92, label %101, !dbg !466

; <label>:92:                                     ; preds = %48
  %93 = load i32, i32* %14, align 4, !dbg !467
  %94 = icmp ne i32 %93, 0, !dbg !467
  br i1 %94, label %95, label %101, !dbg !469

; <label>:95:                                     ; preds = %92
  %96 = load double, double* %11, align 8, !dbg !470
  %97 = load double, double* %4, align 8, !dbg !472
  %98 = fdiv double %97, 2.000000e+00, !dbg !473
  %99 = fcmp ogt double %96, %98, !dbg !474
  br i1 %99, label %100, label %101, !dbg !475

; <label>:100:                                    ; preds = %95
  br label %107, !dbg !476

; <label>:101:                                    ; preds = %95, %92, %48
  %102 = load double, double* %11, align 8, !dbg !477
  %103 = fadd double %102, 1.000000e+00, !dbg !477
  store double %103, double* %11, align 8, !dbg !477
  br label %104, !dbg !478

; <label>:104:                                    ; preds = %101
  %105 = load double, double* %11, align 8, !dbg !479
  %106 = fcmp olt double %105, 1.000000e+03, !dbg !480
  br i1 %106, label %28, label %107, !dbg !481, !llvm.loop !403

; <label>:107:                                    ; preds = %104, %100
  call void @llvm.dbg.declare(metadata double* %15, metadata !482, metadata !62), !dbg !484
  %108 = load double, double* %5, align 8, !dbg !485
  %109 = fmul double 0x400921FB54442D18, %108, !dbg !486
  %110 = fdiv double 2.000000e+00, %109, !dbg !487
  %111 = call double @sqrt(double %110) #6, !dbg !488
  store double %111, double* %15, align 8, !dbg !484
  call void @llvm.dbg.declare(metadata double* %16, metadata !489, metadata !62), !dbg !490
  %112 = load double, double* %8, align 8, !dbg !491
  %113 = call double @cos(double %112) #6, !dbg !492
  store double %113, double* %16, align 8, !dbg !490
  call void @llvm.dbg.declare(metadata double* %17, metadata !493, metadata !62), !dbg !494
  %114 = load double, double* %8, align 8, !dbg !495
  %115 = call double @sin(double %114) #6, !dbg !496
  store double %115, double* %17, align 8, !dbg !494
  %116 = load double, double* %15, align 8, !dbg !497
  %117 = load double, double* %16, align 8, !dbg !498
  %118 = load double, double* %9, align 8, !dbg !499
  %119 = fmul double %117, %118, !dbg !500
  %120 = load double, double* %17, align 8, !dbg !501
  %121 = load double, double* %10, align 8, !dbg !502
  %122 = fmul double %120, %121, !dbg !503
  %123 = fsub double %119, %122, !dbg !504
  %124 = fmul double %116, %123, !dbg !505
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !506
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !507
  store double %124, double* %126, align 8, !dbg !508
  %127 = load double, double* %15, align 8, !dbg !509
  %128 = fmul double %127, 0x3CB0000000000000, !dbg !510
  %129 = load double, double* %16, align 8, !dbg !511
  %130 = load double, double* %9, align 8, !dbg !512
  %131 = fmul double %129, %130, !dbg !513
  %132 = call double @fabs(double %131) #1, !dbg !514
  %133 = load double, double* %17, align 8, !dbg !515
  %134 = load double, double* %10, align 8, !dbg !516
  %135 = fmul double %133, %134, !dbg !517
  %136 = call double @fabs(double %135) #1, !dbg !518
  %137 = fadd double %132, %136, !dbg !520
  %138 = load double, double* %12, align 8, !dbg !521
  %139 = call double @fabs(double %138) #1, !dbg !522
  %140 = fadd double %137, %139, !dbg !524
  %141 = fmul double %128, %140, !dbg !525
  %142 = load double, double* %5, align 8, !dbg !526
  %143 = call double @fabs(double %142) #1, !dbg !527
  %144 = fadd double 1.000000e+00, %143, !dbg !529
  %145 = fmul double %141, %144, !dbg !530
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !531
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %146, i32 0, i32 1, !dbg !532
  store double %145, double* %147, align 8, !dbg !533
  ret i32 0, !dbg !534
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Ynu_asympx_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !535 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !536, metadata !62), !dbg !537
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !538, metadata !62), !dbg !539
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !540, metadata !62), !dbg !541
  call void @llvm.dbg.declare(metadata double* %7, metadata !542, metadata !62), !dbg !543
  call void @llvm.dbg.declare(metadata double* %8, metadata !544, metadata !62), !dbg !545
  call void @llvm.dbg.declare(metadata double* %9, metadata !546, metadata !62), !dbg !547
  %19 = load double, double* %5, align 8, !dbg !548
  store double %19, double* %9, align 8, !dbg !547
  call void @llvm.dbg.declare(metadata double* %10, metadata !549, metadata !62), !dbg !550
  %20 = load double, double* %4, align 8, !dbg !551
  %21 = fmul double -5.000000e-01, %20, !dbg !552
  %22 = fmul double %21, 0x400921FB54442D18, !dbg !553
  store double %22, double* %10, align 8, !dbg !550
  call void @llvm.dbg.declare(metadata i32* %11, metadata !554, metadata !62), !dbg !555
  %23 = load double, double* %4, align 8, !dbg !556
  %24 = load double, double* %5, align 8, !dbg !557
  %25 = call i32 @gsl_sf_bessel_asymp_Mnu_e(double %23, double %24, double* %7), !dbg !558
  store i32 %25, i32* %11, align 4, !dbg !555
  call void @llvm.dbg.declare(metadata i32* %12, metadata !559, metadata !62), !dbg !560
  %26 = load double, double* %4, align 8, !dbg !561
  %27 = load double, double* %5, align 8, !dbg !562
  %28 = call i32 @gsl_sf_bessel_asymp_thetanu_corr_e(double %26, double %27, double* %8), !dbg !563
  store i32 %28, i32* %12, align 4, !dbg !560
  call void @llvm.dbg.declare(metadata double* %13, metadata !564, metadata !62), !dbg !565
  %29 = load double, double* %9, align 8, !dbg !566
  %30 = call double @sin(double %29) #6, !dbg !567
  store double %30, double* %13, align 8, !dbg !565
  call void @llvm.dbg.declare(metadata double* %14, metadata !568, metadata !62), !dbg !569
  %31 = load double, double* %9, align 8, !dbg !570
  %32 = call double @cos(double %31) #6, !dbg !571
  store double %32, double* %14, align 8, !dbg !569
  call void @llvm.dbg.declare(metadata double* %15, metadata !572, metadata !62), !dbg !573
  %33 = load double, double* %10, align 8, !dbg !574
  %34 = load double, double* %8, align 8, !dbg !575
  %35 = fadd double %33, %34, !dbg !576
  %36 = call double @sin(double %35) #6, !dbg !577
  store double %36, double* %15, align 8, !dbg !573
  call void @llvm.dbg.declare(metadata double* %16, metadata !578, metadata !62), !dbg !579
  %37 = load double, double* %10, align 8, !dbg !580
  %38 = load double, double* %8, align 8, !dbg !581
  %39 = fadd double %37, %38, !dbg !582
  %40 = call double @cos(double %39) #6, !dbg !583
  store double %40, double* %16, align 8, !dbg !579
  call void @llvm.dbg.declare(metadata double* %17, metadata !584, metadata !62), !dbg !585
  %41 = load double, double* %13, align 8, !dbg !586
  %42 = load double, double* %16, align 8, !dbg !587
  %43 = fmul double %41, %42, !dbg !588
  %44 = load double, double* %15, align 8, !dbg !589
  %45 = load double, double* %14, align 8, !dbg !590
  %46 = fmul double %44, %45, !dbg !591
  %47 = fadd double %43, %46, !dbg !592
  store double %47, double* %17, align 8, !dbg !585
  call void @llvm.dbg.declare(metadata double* %18, metadata !593, metadata !62), !dbg !594
  %48 = load double, double* %13, align 8, !dbg !595
  %49 = load double, double* %16, align 8, !dbg !596
  %50 = fmul double %48, %49, !dbg !597
  %51 = call double @fabs(double %50) #1, !dbg !598
  %52 = load double, double* %15, align 8, !dbg !599
  %53 = load double, double* %14, align 8, !dbg !600
  %54 = fmul double %52, %53, !dbg !601
  %55 = call double @fabs(double %54) #1, !dbg !602
  %56 = fadd double %51, %55, !dbg !604
  store double %56, double* %18, align 8, !dbg !594
  %57 = load double, double* %7, align 8, !dbg !605
  %58 = load double, double* %17, align 8, !dbg !606
  %59 = fmul double %57, %58, !dbg !607
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !608
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !609
  store double %59, double* %61, align 8, !dbg !610
  %62 = load double, double* %7, align 8, !dbg !611
  %63 = call double @fabs(double %62) #1, !dbg !612
  %64 = fmul double %63, 0x3CB0000000000000, !dbg !613
  %65 = load double, double* %18, align 8, !dbg !614
  %66 = fmul double %64, %65, !dbg !615
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !616
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !617
  store double %66, double* %68, align 8, !dbg !618
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !619
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !620
  %71 = load double, double* %70, align 8, !dbg !620
  %72 = call double @fabs(double %71) #1, !dbg !621
  %73 = fmul double %72, 2.000000e+00, !dbg !622
  %74 = fmul double %73, 0x3CB0000000000000, !dbg !623
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !624
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !625
  %77 = load double, double* %76, align 8, !dbg !626
  %78 = fadd double %77, %74, !dbg !626
  store double %78, double* %76, align 8, !dbg !626
  %79 = load double, double* %9, align 8, !dbg !627
  %80 = call double @fabs(double %79) #1, !dbg !629
  %81 = fcmp ogt double %80, 0x4330000000000000, !dbg !630
  br i1 %81, label %82, label %90, !dbg !631

; <label>:82:                                     ; preds = %3
  %83 = load double, double* %9, align 8, !dbg !632
  %84 = call double @fabs(double %83) #1, !dbg !634
  %85 = fmul double 5.000000e-01, %84, !dbg !635
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !636
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 1, !dbg !637
  %88 = load double, double* %87, align 8, !dbg !638
  %89 = fmul double %88, %85, !dbg !638
  store double %89, double* %87, align 8, !dbg !638
  br label %104, !dbg !639

; <label>:90:                                     ; preds = %3
  %91 = load double, double* %9, align 8, !dbg !640
  %92 = call double @fabs(double %91) #1, !dbg !642
  %93 = fcmp ogt double %92, 0x4190000000000000, !dbg !643
  br i1 %93, label %94, label %103, !dbg !644

; <label>:94:                                     ; preds = %90
  %95 = load double, double* %9, align 8, !dbg !645
  %96 = call double @fabs(double %95) #1, !dbg !647
  %97 = fmul double 2.560000e+02, %96, !dbg !648
  %98 = fmul double %97, 0x3E50000000000000, !dbg !649
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !650
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !651
  %101 = load double, double* %100, align 8, !dbg !652
  %102 = fmul double %101, %98, !dbg !652
  store double %102, double* %100, align 8, !dbg !652
  br label %103, !dbg !653

; <label>:103:                                    ; preds = %94, %90
  br label %104

; <label>:104:                                    ; preds = %103, %82
  %105 = load i32, i32* %12, align 4, !dbg !654
  %106 = icmp ne i32 %105, 0, !dbg !654
  br i1 %106, label %107, label %109, !dbg !654

; <label>:107:                                    ; preds = %104
  %108 = load i32, i32* %12, align 4, !dbg !655
  br label %117, !dbg !655

; <label>:109:                                    ; preds = %104
  %110 = load i32, i32* %11, align 4, !dbg !656
  %111 = icmp ne i32 %110, 0, !dbg !656
  br i1 %111, label %112, label %114, !dbg !656

; <label>:112:                                    ; preds = %109
  %113 = load i32, i32* %11, align 4, !dbg !658
  br label %115, !dbg !658

; <label>:114:                                    ; preds = %109
  br label %115, !dbg !660

; <label>:115:                                    ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ], !dbg !662
  br label %117, !dbg !662

; <label>:117:                                    ; preds = %115, %107
  %118 = phi i32 [ %108, %107 ], [ %116, %115 ], !dbg !664
  ret i32 %118, !dbg !666
}

declare i32 @gsl_sf_bessel_asymp_Mnu_e(double, double, double*) #2

declare i32 @gsl_sf_bessel_asymp_thetanu_corr_e(double, double, double*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Inu_scaled_asympx_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !667 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !668, metadata !62), !dbg !669
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !670, metadata !62), !dbg !671
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !672, metadata !62), !dbg !673
  call void @llvm.dbg.declare(metadata double* %7, metadata !674, metadata !62), !dbg !675
  %12 = load double, double* %4, align 8, !dbg !676
  %13 = fmul double 4.000000e+00, %12, !dbg !677
  %14 = load double, double* %4, align 8, !dbg !678
  %15 = fmul double %13, %14, !dbg !679
  store double %15, double* %7, align 8, !dbg !675
  call void @llvm.dbg.declare(metadata double* %8, metadata !680, metadata !62), !dbg !681
  %16 = load double, double* %7, align 8, !dbg !682
  %17 = fsub double %16, 1.000000e+00, !dbg !683
  store double %17, double* %8, align 8, !dbg !681
  call void @llvm.dbg.declare(metadata double* %9, metadata !684, metadata !62), !dbg !685
  %18 = load double, double* %7, align 8, !dbg !686
  %19 = fsub double %18, 9.000000e+00, !dbg !687
  store double %19, double* %9, align 8, !dbg !685
  call void @llvm.dbg.declare(metadata double* %10, metadata !688, metadata !62), !dbg !689
  %20 = load double, double* %5, align 8, !dbg !690
  %21 = fmul double 0x401921FB54442D18, %20, !dbg !691
  %22 = call double @sqrt(double %21) #6, !dbg !692
  %23 = fdiv double 1.000000e+00, %22, !dbg !693
  store double %23, double* %10, align 8, !dbg !689
  call void @llvm.dbg.declare(metadata double* %11, metadata !694, metadata !62), !dbg !695
  %24 = load double, double* %7, align 8, !dbg !696
  %25 = load double, double* %5, align 8, !dbg !697
  %26 = fdiv double %24, %25, !dbg !698
  store double %26, double* %11, align 8, !dbg !695
  %27 = load double, double* %10, align 8, !dbg !699
  %28 = load double, double* %8, align 8, !dbg !700
  %29 = load double, double* %5, align 8, !dbg !701
  %30 = fmul double 8.000000e+00, %29, !dbg !702
  %31 = fdiv double %28, %30, !dbg !703
  %32 = fsub double 1.000000e+00, %31, !dbg !704
  %33 = load double, double* %8, align 8, !dbg !705
  %34 = load double, double* %9, align 8, !dbg !706
  %35 = fmul double %33, %34, !dbg !707
  %36 = load double, double* %5, align 8, !dbg !708
  %37 = fmul double 1.280000e+02, %36, !dbg !709
  %38 = load double, double* %5, align 8, !dbg !710
  %39 = fmul double %37, %38, !dbg !711
  %40 = fdiv double %35, %39, !dbg !712
  %41 = fadd double %32, %40, !dbg !713
  %42 = fmul double %27, %41, !dbg !714
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !715
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !716
  store double %42, double* %44, align 8, !dbg !717
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !718
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !719
  %47 = load double, double* %46, align 8, !dbg !719
  %48 = call double @fabs(double %47) #1, !dbg !720
  %49 = fmul double 0x3CC0000000000000, %48, !dbg !721
  %50 = load double, double* %10, align 8, !dbg !722
  %51 = load double, double* %11, align 8, !dbg !723
  %52 = fmul double 1.000000e-01, %51, !dbg !724
  %53 = load double, double* %11, align 8, !dbg !725
  %54 = fmul double %52, %53, !dbg !726
  %55 = load double, double* %11, align 8, !dbg !727
  %56 = fmul double %54, %55, !dbg !728
  %57 = call double @fabs(double %56) #1, !dbg !729
  %58 = fmul double %50, %57, !dbg !731
  %59 = fadd double %49, %58, !dbg !732
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !733
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !734
  store double %59, double* %61, align 8, !dbg !735
  ret i32 0, !dbg !736
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !737 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !738, metadata !62), !dbg !739
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !740, metadata !62), !dbg !741
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !742, metadata !62), !dbg !743
  call void @llvm.dbg.declare(metadata double* %7, metadata !744, metadata !62), !dbg !745
  %12 = load double, double* %4, align 8, !dbg !746
  %13 = fmul double 4.000000e+00, %12, !dbg !747
  %14 = load double, double* %4, align 8, !dbg !748
  %15 = fmul double %13, %14, !dbg !749
  store double %15, double* %7, align 8, !dbg !745
  call void @llvm.dbg.declare(metadata double* %8, metadata !750, metadata !62), !dbg !751
  %16 = load double, double* %7, align 8, !dbg !752
  %17 = fsub double %16, 1.000000e+00, !dbg !753
  store double %17, double* %8, align 8, !dbg !751
  call void @llvm.dbg.declare(metadata double* %9, metadata !754, metadata !62), !dbg !755
  %18 = load double, double* %7, align 8, !dbg !756
  %19 = fsub double %18, 9.000000e+00, !dbg !757
  store double %19, double* %9, align 8, !dbg !755
  call void @llvm.dbg.declare(metadata double* %10, metadata !758, metadata !62), !dbg !759
  %20 = load double, double* %5, align 8, !dbg !760
  %21 = fmul double 2.000000e+00, %20, !dbg !761
  %22 = fdiv double 0x400921FB54442D18, %21, !dbg !762
  %23 = call double @sqrt(double %22) #6, !dbg !763
  store double %23, double* %10, align 8, !dbg !759
  call void @llvm.dbg.declare(metadata double* %11, metadata !764, metadata !62), !dbg !765
  %24 = load double, double* %4, align 8, !dbg !766
  %25 = load double, double* %5, align 8, !dbg !767
  %26 = fdiv double %24, %25, !dbg !768
  store double %26, double* %11, align 8, !dbg !765
  %27 = load double, double* %10, align 8, !dbg !769
  %28 = load double, double* %8, align 8, !dbg !770
  %29 = load double, double* %5, align 8, !dbg !771
  %30 = fmul double 8.000000e+00, %29, !dbg !772
  %31 = fdiv double %28, %30, !dbg !773
  %32 = fadd double 1.000000e+00, %31, !dbg !774
  %33 = load double, double* %8, align 8, !dbg !775
  %34 = load double, double* %9, align 8, !dbg !776
  %35 = fmul double %33, %34, !dbg !777
  %36 = load double, double* %5, align 8, !dbg !778
  %37 = fmul double 1.280000e+02, %36, !dbg !779
  %38 = load double, double* %5, align 8, !dbg !780
  %39 = fmul double %37, %38, !dbg !781
  %40 = fdiv double %35, %39, !dbg !782
  %41 = fadd double %32, %40, !dbg !783
  %42 = fmul double %27, %41, !dbg !784
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !785
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !786
  store double %42, double* %44, align 8, !dbg !787
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !788
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !789
  %47 = load double, double* %46, align 8, !dbg !789
  %48 = call double @fabs(double %47) #1, !dbg !790
  %49 = fmul double 0x3CC0000000000000, %48, !dbg !791
  %50 = load double, double* %10, align 8, !dbg !792
  %51 = load double, double* %11, align 8, !dbg !793
  %52 = fmul double 1.000000e-01, %51, !dbg !794
  %53 = load double, double* %11, align 8, !dbg !795
  %54 = fmul double %52, %53, !dbg !796
  %55 = load double, double* %11, align 8, !dbg !797
  %56 = fmul double %54, %55, !dbg !798
  %57 = call double @fabs(double %56) #1, !dbg !799
  %58 = fmul double %50, %57, !dbg !801
  %59 = fadd double %49, %58, !dbg !802
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !803
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !804
  store double %59, double* %61, align 8, !dbg !805
  ret i32 0, !dbg !806
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !807 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca [16 x double], align 16
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !808, metadata !62), !dbg !809
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !810, metadata !62), !dbg !811
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !812, metadata !62), !dbg !813
  call void @llvm.dbg.declare(metadata i32* %8, metadata !814, metadata !62), !dbg !815
  call void @llvm.dbg.declare(metadata double* %9, metadata !816, metadata !62), !dbg !817
  %19 = load double, double* %6, align 8, !dbg !818
  %20 = load double, double* %5, align 8, !dbg !819
  %21 = fdiv double %19, %20, !dbg !820
  store double %21, double* %9, align 8, !dbg !817
  call void @llvm.dbg.declare(metadata double* %10, metadata !821, metadata !62), !dbg !822
  %22 = load double, double* %9, align 8, !dbg !823
  %23 = call double @hypot(double 1.000000e+00, double %22) #6, !dbg !824
  store double %23, double* %10, align 8, !dbg !822
  call void @llvm.dbg.declare(metadata double* %11, metadata !825, metadata !62), !dbg !826
  %24 = load double, double* %5, align 8, !dbg !827
  %25 = fmul double 0x401921FB54442D18, %24, !dbg !828
  %26 = load double, double* %10, align 8, !dbg !829
  %27 = fmul double %25, %26, !dbg !830
  %28 = call double @sqrt(double %27) #6, !dbg !831
  %29 = fdiv double 1.000000e+00, %28, !dbg !832
  store double %29, double* %11, align 8, !dbg !826
  call void @llvm.dbg.declare(metadata double* %12, metadata !833, metadata !62), !dbg !834
  %30 = load double, double* %10, align 8, !dbg !835
  %31 = load double, double* %9, align 8, !dbg !836
  %32 = load double, double* %10, align 8, !dbg !837
  %33 = fadd double 1.000000e+00, %32, !dbg !838
  %34 = fdiv double %31, %33, !dbg !839
  %35 = call double @log(double %34) #6, !dbg !840
  %36 = fadd double %30, %35, !dbg !841
  store double %36, double* %12, align 8, !dbg !834
  call void @llvm.dbg.declare(metadata double* %13, metadata !842, metadata !62), !dbg !843
  %37 = load double, double* %9, align 8, !dbg !844
  %38 = fcmp olt double %37, 0x410428A2F98D7287, !dbg !845
  br i1 %38, label %39, label %46, !dbg !844

; <label>:39:                                     ; preds = %3
  %40 = load double, double* %5, align 8, !dbg !846
  %41 = load double, double* %9, align 8, !dbg !848
  %42 = fsub double -0.000000e+00, %41, !dbg !849
  %43 = load double, double* %12, align 8, !dbg !850
  %44 = fadd double %42, %43, !dbg !851
  %45 = fmul double %40, %44, !dbg !852
  br label %58, !dbg !853

; <label>:46:                                     ; preds = %3
  %47 = load double, double* %5, align 8, !dbg !854
  %48 = fmul double -5.000000e-01, %47, !dbg !856
  %49 = load double, double* %9, align 8, !dbg !857
  %50 = fdiv double %48, %49, !dbg !858
  %51 = load double, double* %9, align 8, !dbg !859
  %52 = fmul double 1.200000e+01, %51, !dbg !860
  %53 = load double, double* %9, align 8, !dbg !861
  %54 = fmul double %52, %53, !dbg !862
  %55 = fdiv double 1.000000e+00, %54, !dbg !863
  %56 = fsub double 1.000000e+00, %55, !dbg !864
  %57 = fmul double %50, %56, !dbg !865
  br label %58, !dbg !866

; <label>:58:                                     ; preds = %46, %39
  %59 = phi double [ %45, %39 ], [ %57, %46 ], !dbg !867
  store double %59, double* %13, align 8, !dbg !869
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !870, metadata !62), !dbg !871
  call void @llvm.dbg.declare(metadata i32* %15, metadata !872, metadata !62), !dbg !873
  %60 = load double, double* %13, align 8, !dbg !874
  %61 = call i32 @gsl_sf_exp_e(double %60, %struct.gsl_sf_result_struct* %14), !dbg !875
  store i32 %61, i32* %15, align 4, !dbg !873
  %62 = load i32, i32* %15, align 4, !dbg !876
  %63 = icmp eq i32 %62, 0, !dbg !878
  br i1 %63, label %64, label %177, !dbg !879

; <label>:64:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata double* %16, metadata !880, metadata !62), !dbg !882
  %65 = load double, double* %10, align 8, !dbg !883
  %66 = fdiv double 1.000000e+00, %65, !dbg !884
  store double %66, double* %16, align 8, !dbg !882
  call void @llvm.dbg.declare(metadata double* %17, metadata !885, metadata !62), !dbg !886
  call void @llvm.dbg.declare(metadata [16 x double]* %18, metadata !887, metadata !62), !dbg !891
  %67 = getelementptr inbounds [16 x double], [16 x double]* %18, i64 0, i64 0, !dbg !892
  store double 1.000000e+00, double* %67, align 16, !dbg !893
  store i32 1, i32* %8, align 4, !dbg !894
  br label %68, !dbg !896

; <label>:68:                                     ; preds = %82, %64
  %69 = load i32, i32* %8, align 4, !dbg !897
  %70 = icmp slt i32 %69, 16, !dbg !900
  br i1 %70, label %71, label %85, !dbg !901

; <label>:71:                                     ; preds = %68
  %72 = load double, double* %16, align 8, !dbg !902
  %73 = load i32, i32* %8, align 4, !dbg !904
  %74 = sub nsw i32 %73, 1, !dbg !905
  %75 = sext i32 %74 to i64, !dbg !906
  %76 = getelementptr inbounds [16 x double], [16 x double]* %18, i64 0, i64 %75, !dbg !906
  %77 = load double, double* %76, align 8, !dbg !906
  %78 = fmul double %72, %77, !dbg !907
  %79 = load i32, i32* %8, align 4, !dbg !908
  %80 = sext i32 %79 to i64, !dbg !909
  %81 = getelementptr inbounds [16 x double], [16 x double]* %18, i64 0, i64 %80, !dbg !909
  store double %78, double* %81, align 8, !dbg !910
  br label %82, !dbg !909

; <label>:82:                                     ; preds = %71
  %83 = load i32, i32* %8, align 4, !dbg !911
  %84 = add nsw i32 %83, 1, !dbg !911
  store i32 %84, i32* %8, align 4, !dbg !911
  br label %68, !dbg !913, !llvm.loop !914

; <label>:85:                                     ; preds = %68
  %86 = getelementptr inbounds [16 x double], [16 x double]* %18, i32 0, i32 0, !dbg !916
  %87 = call double @debye_u1(double* %86), !dbg !917
  %88 = load double, double* %5, align 8, !dbg !918
  %89 = fdiv double %87, %88, !dbg !919
  %90 = fadd double 1.000000e+00, %89, !dbg !920
  %91 = getelementptr inbounds [16 x double], [16 x double]* %18, i32 0, i32 0, !dbg !921
  %92 = call double @debye_u2(double* %91), !dbg !922
  %93 = load double, double* %5, align 8, !dbg !924
  %94 = load double, double* %5, align 8, !dbg !925
  %95 = fmul double %93, %94, !dbg !926
  %96 = fdiv double %92, %95, !dbg !927
  %97 = fadd double %90, %96, !dbg !928
  %98 = getelementptr inbounds [16 x double], [16 x double]* %18, i32 0, i32 0, !dbg !929
  %99 = call double @debye_u3(double* %98), !dbg !930
  %100 = load double, double* %5, align 8, !dbg !932
  %101 = load double, double* %5, align 8, !dbg !933
  %102 = fmul double %100, %101, !dbg !934
  %103 = load double, double* %5, align 8, !dbg !935
  %104 = fmul double %102, %103, !dbg !936
  %105 = fdiv double %99, %104, !dbg !937
  %106 = fadd double %97, %105, !dbg !938
  %107 = getelementptr inbounds [16 x double], [16 x double]* %18, i32 0, i32 0, !dbg !939
  %108 = call double @debye_u4(double* %107), !dbg !940
  %109 = load double, double* %5, align 8, !dbg !941
  %110 = load double, double* %5, align 8, !dbg !942
  %111 = fmul double %109, %110, !dbg !943
  %112 = load double, double* %5, align 8, !dbg !944
  %113 = fmul double %111, %112, !dbg !945
  %114 = load double, double* %5, align 8, !dbg !946
  %115 = fmul double %113, %114, !dbg !947
  %116 = fdiv double %108, %115, !dbg !948
  %117 = fadd double %106, %116, !dbg !949
  %118 = getelementptr inbounds [16 x double], [16 x double]* %18, i32 0, i32 0, !dbg !950
  %119 = call double @debye_u5(double* %118), !dbg !951
  %120 = load double, double* %5, align 8, !dbg !952
  %121 = load double, double* %5, align 8, !dbg !953
  %122 = fmul double %120, %121, !dbg !954
  %123 = load double, double* %5, align 8, !dbg !955
  %124 = fmul double %122, %123, !dbg !956
  %125 = load double, double* %5, align 8, !dbg !957
  %126 = fmul double %124, %125, !dbg !958
  %127 = load double, double* %5, align 8, !dbg !959
  %128 = fmul double %126, %127, !dbg !960
  %129 = fdiv double %119, %128, !dbg !961
  %130 = fadd double %117, %129, !dbg !962
  store double %130, double* %17, align 8, !dbg !963
  %131 = load double, double* %11, align 8, !dbg !964
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !965
  %133 = load double, double* %132, align 8, !dbg !965
  %134 = fmul double %131, %133, !dbg !966
  %135 = load double, double* %17, align 8, !dbg !967
  %136 = fmul double %134, %135, !dbg !968
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !969
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 0, !dbg !970
  store double %136, double* %138, align 8, !dbg !971
  %139 = load double, double* %11, align 8, !dbg !972
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !973
  %141 = load double, double* %140, align 8, !dbg !973
  %142 = fmul double %139, %141, !dbg !974
  %143 = load double, double* %5, align 8, !dbg !975
  %144 = load double, double* %5, align 8, !dbg !976
  %145 = fmul double %143, %144, !dbg !977
  %146 = load double, double* %5, align 8, !dbg !978
  %147 = fmul double %145, %146, !dbg !979
  %148 = load double, double* %5, align 8, !dbg !980
  %149 = fmul double %147, %148, !dbg !981
  %150 = load double, double* %5, align 8, !dbg !982
  %151 = fmul double %149, %150, !dbg !983
  %152 = load double, double* %5, align 8, !dbg !984
  %153 = fmul double %151, %152, !dbg !985
  %154 = fdiv double %142, %153, !dbg !986
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !987
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %155, i32 0, i32 1, !dbg !988
  store double %154, double* %156, align 8, !dbg !989
  %157 = load double, double* %11, align 8, !dbg !990
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !991
  %159 = load double, double* %158, align 8, !dbg !991
  %160 = fmul double %157, %159, !dbg !992
  %161 = load double, double* %17, align 8, !dbg !993
  %162 = call double @fabs(double %161) #1, !dbg !994
  %163 = fmul double %160, %162, !dbg !995
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !996
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %164, i32 0, i32 1, !dbg !997
  %166 = load double, double* %165, align 8, !dbg !998
  %167 = fadd double %166, %163, !dbg !998
  store double %167, double* %165, align 8, !dbg !998
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !999
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 0, !dbg !1000
  %170 = load double, double* %169, align 8, !dbg !1000
  %171 = call double @fabs(double %170) #1, !dbg !1001
  %172 = fmul double 0x3CC0000000000000, %171, !dbg !1002
  %173 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1003
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %173, i32 0, i32 1, !dbg !1004
  %175 = load double, double* %174, align 8, !dbg !1005
  %176 = fadd double %175, %172, !dbg !1005
  store double %176, double* %174, align 8, !dbg !1005
  store i32 0, i32* %4, align 4, !dbg !1006
  br label %183, !dbg !1006

; <label>:177:                                    ; preds = %58
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1007
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !1009
  store double 0.000000e+00, double* %179, align 8, !dbg !1010
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1011
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 1, !dbg !1012
  store double 0.000000e+00, double* %181, align 8, !dbg !1013
  %182 = load i32, i32* %15, align 4, !dbg !1014
  store i32 %182, i32* %4, align 4, !dbg !1015
  br label %183, !dbg !1015

; <label>:183:                                    ; preds = %177, %85
  %184 = load i32, i32* %4, align 4, !dbg !1016
  ret i32 %184, !dbg !1016
}

; Function Attrs: nounwind
declare double @hypot(double, double) #4

declare i32 @gsl_sf_exp_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal double @debye_u1(double*) #5 !dbg !1017 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  call void @llvm.dbg.declare(metadata double** %2, metadata !1021, metadata !62), !dbg !1022
  %3 = load double*, double** %2, align 8, !dbg !1023
  %4 = getelementptr inbounds double, double* %3, i64 1, !dbg !1023
  %5 = load double, double* %4, align 8, !dbg !1023
  %6 = fmul double 3.000000e+00, %5, !dbg !1024
  %7 = load double*, double** %2, align 8, !dbg !1025
  %8 = getelementptr inbounds double, double* %7, i64 3, !dbg !1025
  %9 = load double, double* %8, align 8, !dbg !1025
  %10 = fmul double 5.000000e+00, %9, !dbg !1026
  %11 = fsub double %6, %10, !dbg !1027
  %12 = fdiv double %11, 2.400000e+01, !dbg !1028
  ret double %12, !dbg !1029
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @debye_u2(double*) #5 !dbg !1030 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  call void @llvm.dbg.declare(metadata double** %2, metadata !1031, metadata !62), !dbg !1032
  %3 = load double*, double** %2, align 8, !dbg !1033
  %4 = getelementptr inbounds double, double* %3, i64 2, !dbg !1033
  %5 = load double, double* %4, align 8, !dbg !1033
  %6 = fmul double 8.100000e+01, %5, !dbg !1034
  %7 = load double*, double** %2, align 8, !dbg !1035
  %8 = getelementptr inbounds double, double* %7, i64 4, !dbg !1035
  %9 = load double, double* %8, align 8, !dbg !1035
  %10 = fmul double 4.620000e+02, %9, !dbg !1036
  %11 = fsub double %6, %10, !dbg !1037
  %12 = load double*, double** %2, align 8, !dbg !1038
  %13 = getelementptr inbounds double, double* %12, i64 6, !dbg !1038
  %14 = load double, double* %13, align 8, !dbg !1038
  %15 = fmul double 3.850000e+02, %14, !dbg !1039
  %16 = fadd double %11, %15, !dbg !1040
  %17 = fdiv double %16, 1.152000e+03, !dbg !1041
  ret double %17, !dbg !1042
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @debye_u3(double*) #5 !dbg !1043 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  call void @llvm.dbg.declare(metadata double** %2, metadata !1044, metadata !62), !dbg !1045
  %3 = load double*, double** %2, align 8, !dbg !1046
  %4 = getelementptr inbounds double, double* %3, i64 3, !dbg !1046
  %5 = load double, double* %4, align 8, !dbg !1046
  %6 = fmul double 3.037500e+04, %5, !dbg !1047
  %7 = load double*, double** %2, align 8, !dbg !1048
  %8 = getelementptr inbounds double, double* %7, i64 5, !dbg !1048
  %9 = load double, double* %8, align 8, !dbg !1048
  %10 = fmul double 3.696030e+05, %9, !dbg !1049
  %11 = fsub double %6, %10, !dbg !1050
  %12 = load double*, double** %2, align 8, !dbg !1051
  %13 = getelementptr inbounds double, double* %12, i64 7, !dbg !1051
  %14 = load double, double* %13, align 8, !dbg !1051
  %15 = fmul double 7.657650e+05, %14, !dbg !1052
  %16 = fadd double %11, %15, !dbg !1053
  %17 = load double*, double** %2, align 8, !dbg !1054
  %18 = getelementptr inbounds double, double* %17, i64 9, !dbg !1054
  %19 = load double, double* %18, align 8, !dbg !1054
  %20 = fmul double 4.254250e+05, %19, !dbg !1055
  %21 = fsub double %16, %20, !dbg !1056
  %22 = fdiv double %21, 4.147200e+05, !dbg !1057
  ret double %22, !dbg !1058
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @debye_u4(double*) #5 !dbg !1059 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  call void @llvm.dbg.declare(metadata double** %2, metadata !1060, metadata !62), !dbg !1061
  %3 = load double*, double** %2, align 8, !dbg !1062
  %4 = getelementptr inbounds double, double* %3, i64 4, !dbg !1062
  %5 = load double, double* %4, align 8, !dbg !1062
  %6 = fmul double 4.465125e+06, %5, !dbg !1063
  %7 = load double*, double** %2, align 8, !dbg !1064
  %8 = getelementptr inbounds double, double* %7, i64 6, !dbg !1064
  %9 = load double, double* %8, align 8, !dbg !1064
  %10 = fmul double 0x419670BB30000000, %9, !dbg !1065
  %11 = fsub double %6, %10, !dbg !1066
  %12 = load double*, double** %2, align 8, !dbg !1067
  %13 = getelementptr inbounds double, double* %12, i64 8, !dbg !1067
  %14 = load double, double* %13, align 8, !dbg !1067
  %15 = fmul double 0x41B4DB647E000000, %14, !dbg !1068
  %16 = fadd double %11, %15, !dbg !1069
  %17 = load double*, double** %2, align 8, !dbg !1070
  %18 = getelementptr inbounds double, double* %17, i64 10, !dbg !1070
  %19 = load double, double* %18, align 8, !dbg !1070
  %20 = fmul double 0x41BA98410C000000, %19, !dbg !1071
  %21 = fsub double %16, %20, !dbg !1072
  %22 = load double*, double** %2, align 8, !dbg !1073
  %23 = getelementptr inbounds double, double* %22, i64 12, !dbg !1073
  %24 = load double, double* %23, align 8, !dbg !1073
  %25 = fmul double 0x41A6298B8A000000, %24, !dbg !1074
  %26 = fadd double %21, %25, !dbg !1075
  %27 = fdiv double %26, 3.981312e+07, !dbg !1076
  ret double %27, !dbg !1077
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @debye_u5(double*) #5 !dbg !1078 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  call void @llvm.dbg.declare(metadata double** %2, metadata !1079, metadata !62), !dbg !1080
  %3 = load double*, double** %2, align 8, !dbg !1081
  %4 = getelementptr inbounds double, double* %3, i64 5, !dbg !1081
  %5 = load double, double* %4, align 8, !dbg !1081
  %6 = fmul double 0x41D6A2A921400000, %5, !dbg !1082
  %7 = load double*, double** %2, align 8, !dbg !1083
  %8 = getelementptr inbounds double, double* %7, i64 7, !dbg !1083
  %9 = load double, double* %8, align 8, !dbg !1083
  %10 = fmul double 0x4226F3764DFE0000, %9, !dbg !1084
  %11 = fsub double %6, %10, !dbg !1085
  %12 = load double*, double** %2, align 8, !dbg !1086
  %13 = getelementptr inbounds double, double* %12, i64 9, !dbg !1086
  %14 = load double, double* %13, align 8, !dbg !1086
  %15 = fmul double 0x42508F607E348000, %14, !dbg !1087
  %16 = fadd double %11, %15, !dbg !1088
  %17 = load double*, double** %2, align 8, !dbg !1089
  %18 = getelementptr inbounds double, double* %17, i64 11, !dbg !1089
  %19 = load double, double* %18, align 8, !dbg !1089
  %20 = fmul double 0x4261DFAB376BC000, %19, !dbg !1090
  %21 = fsub double %16, %20, !dbg !1091
  %22 = load double*, double** %2, align 8, !dbg !1092
  %23 = getelementptr inbounds double, double* %22, i64 13, !dbg !1092
  %24 = load double, double* %23, align 8, !dbg !1092
  %25 = fmul double 0x426079C28C072000, %24, !dbg !1093
  %26 = fadd double %21, %25, !dbg !1094
  %27 = load double*, double** %2, align 8, !dbg !1095
  %28 = getelementptr inbounds double, double* %27, i64 15, !dbg !1095
  %29 = load double, double* %28, align 8, !dbg !1095
  %30 = fmul double 0x4245F7AE10098000, %29, !dbg !1096
  %31 = fsub double %26, %30, !dbg !1097
  %32 = fdiv double %31, 0x41F8EAC000000000, !dbg !1098
  ret double %32, !dbg !1099
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1100 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca [16 x double], align 16
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1101, metadata !62), !dbg !1102
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1103, metadata !62), !dbg !1104
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1105, metadata !62), !dbg !1106
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1107, metadata !62), !dbg !1108
  call void @llvm.dbg.declare(metadata double* %9, metadata !1109, metadata !62), !dbg !1110
  %19 = load double, double* %6, align 8, !dbg !1111
  %20 = load double, double* %5, align 8, !dbg !1112
  %21 = fdiv double %19, %20, !dbg !1113
  store double %21, double* %9, align 8, !dbg !1110
  call void @llvm.dbg.declare(metadata double* %10, metadata !1114, metadata !62), !dbg !1115
  %22 = load double, double* %9, align 8, !dbg !1116
  %23 = call double @hypot(double 1.000000e+00, double %22) #6, !dbg !1117
  store double %23, double* %10, align 8, !dbg !1115
  call void @llvm.dbg.declare(metadata double* %11, metadata !1118, metadata !62), !dbg !1119
  %24 = load double, double* %5, align 8, !dbg !1120
  %25 = fmul double 2.000000e+00, %24, !dbg !1121
  %26 = load double, double* %10, align 8, !dbg !1122
  %27 = fmul double %25, %26, !dbg !1123
  %28 = fdiv double 0x400921FB54442D18, %27, !dbg !1124
  %29 = call double @sqrt(double %28) #6, !dbg !1125
  store double %29, double* %11, align 8, !dbg !1119
  call void @llvm.dbg.declare(metadata double* %12, metadata !1126, metadata !62), !dbg !1127
  %30 = load double, double* %10, align 8, !dbg !1128
  %31 = load double, double* %9, align 8, !dbg !1129
  %32 = load double, double* %10, align 8, !dbg !1130
  %33 = fadd double 1.000000e+00, %32, !dbg !1131
  %34 = fdiv double %31, %33, !dbg !1132
  %35 = call double @log(double %34) #6, !dbg !1133
  %36 = fadd double %30, %35, !dbg !1134
  store double %36, double* %12, align 8, !dbg !1127
  call void @llvm.dbg.declare(metadata double* %13, metadata !1135, metadata !62), !dbg !1136
  %37 = load double, double* %9, align 8, !dbg !1137
  %38 = fcmp olt double %37, 0x410428A2F98D7287, !dbg !1138
  br i1 %38, label %39, label %45, !dbg !1137

; <label>:39:                                     ; preds = %3
  %40 = load double, double* %5, align 8, !dbg !1139
  %41 = load double, double* %9, align 8, !dbg !1141
  %42 = load double, double* %12, align 8, !dbg !1142
  %43 = fsub double %41, %42, !dbg !1143
  %44 = fmul double %40, %43, !dbg !1144
  br label %57, !dbg !1145

; <label>:45:                                     ; preds = %3
  %46 = load double, double* %5, align 8, !dbg !1146
  %47 = fmul double 5.000000e-01, %46, !dbg !1148
  %48 = load double, double* %9, align 8, !dbg !1149
  %49 = fdiv double %47, %48, !dbg !1150
  %50 = load double, double* %9, align 8, !dbg !1151
  %51 = fmul double 1.200000e+01, %50, !dbg !1152
  %52 = load double, double* %9, align 8, !dbg !1153
  %53 = fmul double %51, %52, !dbg !1154
  %54 = fdiv double 1.000000e+00, %53, !dbg !1155
  %55 = fadd double 1.000000e+00, %54, !dbg !1156
  %56 = fmul double %49, %55, !dbg !1157
  br label %57, !dbg !1158

; <label>:57:                                     ; preds = %45, %39
  %58 = phi double [ %44, %39 ], [ %56, %45 ], !dbg !1159
  store double %58, double* %13, align 8, !dbg !1161
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1162, metadata !62), !dbg !1163
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1164, metadata !62), !dbg !1165
  %59 = load double, double* %13, align 8, !dbg !1166
  %60 = call i32 @gsl_sf_exp_e(double %59, %struct.gsl_sf_result_struct* %14), !dbg !1167
  store i32 %60, i32* %15, align 4, !dbg !1165
  %61 = load i32, i32* %15, align 4, !dbg !1168
  %62 = icmp eq i32 %61, 0, !dbg !1170
  br i1 %62, label %63, label %176, !dbg !1171

; <label>:63:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata double* %16, metadata !1172, metadata !62), !dbg !1174
  %64 = load double, double* %10, align 8, !dbg !1175
  %65 = fdiv double 1.000000e+00, %64, !dbg !1176
  store double %65, double* %16, align 8, !dbg !1174
  call void @llvm.dbg.declare(metadata double* %17, metadata !1177, metadata !62), !dbg !1178
  call void @llvm.dbg.declare(metadata [16 x double]* %18, metadata !1179, metadata !62), !dbg !1180
  %66 = getelementptr inbounds [16 x double], [16 x double]* %18, i64 0, i64 0, !dbg !1181
  store double 1.000000e+00, double* %66, align 16, !dbg !1182
  store i32 1, i32* %8, align 4, !dbg !1183
  br label %67, !dbg !1185

; <label>:67:                                     ; preds = %81, %63
  %68 = load i32, i32* %8, align 4, !dbg !1186
  %69 = icmp slt i32 %68, 16, !dbg !1189
  br i1 %69, label %70, label %84, !dbg !1190

; <label>:70:                                     ; preds = %67
  %71 = load double, double* %16, align 8, !dbg !1191
  %72 = load i32, i32* %8, align 4, !dbg !1193
  %73 = sub nsw i32 %72, 1, !dbg !1194
  %74 = sext i32 %73 to i64, !dbg !1195
  %75 = getelementptr inbounds [16 x double], [16 x double]* %18, i64 0, i64 %74, !dbg !1195
  %76 = load double, double* %75, align 8, !dbg !1195
  %77 = fmul double %71, %76, !dbg !1196
  %78 = load i32, i32* %8, align 4, !dbg !1197
  %79 = sext i32 %78 to i64, !dbg !1198
  %80 = getelementptr inbounds [16 x double], [16 x double]* %18, i64 0, i64 %79, !dbg !1198
  store double %77, double* %80, align 8, !dbg !1199
  br label %81, !dbg !1198

; <label>:81:                                     ; preds = %70
  %82 = load i32, i32* %8, align 4, !dbg !1200
  %83 = add nsw i32 %82, 1, !dbg !1200
  store i32 %83, i32* %8, align 4, !dbg !1200
  br label %67, !dbg !1202, !llvm.loop !1203

; <label>:84:                                     ; preds = %67
  %85 = getelementptr inbounds [16 x double], [16 x double]* %18, i32 0, i32 0, !dbg !1205
  %86 = call double @debye_u1(double* %85), !dbg !1206
  %87 = load double, double* %5, align 8, !dbg !1207
  %88 = fdiv double %86, %87, !dbg !1208
  %89 = fsub double 1.000000e+00, %88, !dbg !1209
  %90 = getelementptr inbounds [16 x double], [16 x double]* %18, i32 0, i32 0, !dbg !1210
  %91 = call double @debye_u2(double* %90), !dbg !1211
  %92 = load double, double* %5, align 8, !dbg !1213
  %93 = load double, double* %5, align 8, !dbg !1214
  %94 = fmul double %92, %93, !dbg !1215
  %95 = fdiv double %91, %94, !dbg !1216
  %96 = fadd double %89, %95, !dbg !1217
  %97 = getelementptr inbounds [16 x double], [16 x double]* %18, i32 0, i32 0, !dbg !1218
  %98 = call double @debye_u3(double* %97), !dbg !1219
  %99 = load double, double* %5, align 8, !dbg !1221
  %100 = load double, double* %5, align 8, !dbg !1222
  %101 = fmul double %99, %100, !dbg !1223
  %102 = load double, double* %5, align 8, !dbg !1224
  %103 = fmul double %101, %102, !dbg !1225
  %104 = fdiv double %98, %103, !dbg !1226
  %105 = fsub double %96, %104, !dbg !1227
  %106 = getelementptr inbounds [16 x double], [16 x double]* %18, i32 0, i32 0, !dbg !1228
  %107 = call double @debye_u4(double* %106), !dbg !1229
  %108 = load double, double* %5, align 8, !dbg !1230
  %109 = load double, double* %5, align 8, !dbg !1231
  %110 = fmul double %108, %109, !dbg !1232
  %111 = load double, double* %5, align 8, !dbg !1233
  %112 = fmul double %110, %111, !dbg !1234
  %113 = load double, double* %5, align 8, !dbg !1235
  %114 = fmul double %112, %113, !dbg !1236
  %115 = fdiv double %107, %114, !dbg !1237
  %116 = fadd double %105, %115, !dbg !1238
  %117 = getelementptr inbounds [16 x double], [16 x double]* %18, i32 0, i32 0, !dbg !1239
  %118 = call double @debye_u5(double* %117), !dbg !1240
  %119 = load double, double* %5, align 8, !dbg !1241
  %120 = load double, double* %5, align 8, !dbg !1242
  %121 = fmul double %119, %120, !dbg !1243
  %122 = load double, double* %5, align 8, !dbg !1244
  %123 = fmul double %121, %122, !dbg !1245
  %124 = load double, double* %5, align 8, !dbg !1246
  %125 = fmul double %123, %124, !dbg !1247
  %126 = load double, double* %5, align 8, !dbg !1248
  %127 = fmul double %125, %126, !dbg !1249
  %128 = fdiv double %118, %127, !dbg !1250
  %129 = fsub double %116, %128, !dbg !1251
  store double %129, double* %17, align 8, !dbg !1252
  %130 = load double, double* %11, align 8, !dbg !1253
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1254
  %132 = load double, double* %131, align 8, !dbg !1254
  %133 = fmul double %130, %132, !dbg !1255
  %134 = load double, double* %17, align 8, !dbg !1256
  %135 = fmul double %133, %134, !dbg !1257
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1258
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 0, !dbg !1259
  store double %135, double* %137, align 8, !dbg !1260
  %138 = load double, double* %11, align 8, !dbg !1261
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1262
  %140 = load double, double* %139, align 8, !dbg !1262
  %141 = fmul double %138, %140, !dbg !1263
  %142 = load double, double* %17, align 8, !dbg !1264
  %143 = call double @fabs(double %142) #1, !dbg !1265
  %144 = fmul double %141, %143, !dbg !1266
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1267
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 1, !dbg !1268
  store double %144, double* %146, align 8, !dbg !1269
  %147 = load double, double* %11, align 8, !dbg !1270
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1271
  %149 = load double, double* %148, align 8, !dbg !1271
  %150 = fmul double %147, %149, !dbg !1272
  %151 = load double, double* %5, align 8, !dbg !1273
  %152 = load double, double* %5, align 8, !dbg !1274
  %153 = fmul double %151, %152, !dbg !1275
  %154 = load double, double* %5, align 8, !dbg !1276
  %155 = fmul double %153, %154, !dbg !1277
  %156 = load double, double* %5, align 8, !dbg !1278
  %157 = fmul double %155, %156, !dbg !1279
  %158 = load double, double* %5, align 8, !dbg !1280
  %159 = fmul double %157, %158, !dbg !1281
  %160 = load double, double* %5, align 8, !dbg !1282
  %161 = fmul double %159, %160, !dbg !1283
  %162 = fdiv double %150, %161, !dbg !1284
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1285
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 1, !dbg !1286
  %165 = load double, double* %164, align 8, !dbg !1287
  %166 = fadd double %165, %162, !dbg !1287
  store double %166, double* %164, align 8, !dbg !1287
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1288
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 0, !dbg !1289
  %169 = load double, double* %168, align 8, !dbg !1289
  %170 = call double @fabs(double %169) #1, !dbg !1290
  %171 = fmul double 0x3CC0000000000000, %170, !dbg !1291
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1292
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 1, !dbg !1293
  %174 = load double, double* %173, align 8, !dbg !1294
  %175 = fadd double %174, %171, !dbg !1294
  store double %175, double* %173, align 8, !dbg !1294
  store i32 0, i32* %4, align 4, !dbg !1295
  br label %182, !dbg !1295

; <label>:176:                                    ; preds = %57
  %177 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1296
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %177, i32 0, i32 0, !dbg !1298
  store double 0.000000e+00, double* %178, align 8, !dbg !1299
  %179 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1300
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %179, i32 0, i32 1, !dbg !1301
  store double 0.000000e+00, double* %180, align 8, !dbg !1302
  %181 = load i32, i32* %15, align 4, !dbg !1303
  store i32 %181, i32* %4, align 4, !dbg !1304
  br label %182, !dbg !1304

; <label>:182:                                    ; preds = %176, %84
  %183 = load i32, i32* %4, align 4, !dbg !1305
  ret i32 %183, !dbg !1305
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_JY_mu_restricted(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1306 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca %struct.gsl_sf_result_struct*, align 8
  %13 = alloca %struct.gsl_sf_result_struct*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store double %0, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1309, metadata !62), !dbg !1310
  store double %1, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1311, metadata !62), !dbg !1312
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !1313, metadata !62), !dbg !1314
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !1315, metadata !62), !dbg !1316
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %12, metadata !1317, metadata !62), !dbg !1318
  store %struct.gsl_sf_result_struct* %5, %struct.gsl_sf_result_struct** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %13, metadata !1319, metadata !62), !dbg !1320
  %32 = load double, double* %9, align 8, !dbg !1321
  %33 = fcmp olt double %32, 0.000000e+00, !dbg !1323
  br i1 %33, label %38, label %34, !dbg !1324

; <label>:34:                                     ; preds = %6
  %35 = load double, double* %8, align 8, !dbg !1325
  %36 = call double @fabs(double %35) #1, !dbg !1327
  %37 = fcmp ogt double %36, 5.000000e-01, !dbg !1328
  br i1 %37, label %38, label %57, !dbg !1329

; <label>:38:                                     ; preds = %34, %6
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1330
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !1332
  store double 0.000000e+00, double* %40, align 8, !dbg !1333
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1334
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !1335
  store double 0.000000e+00, double* %42, align 8, !dbg !1336
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1337
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !1338
  store double 0.000000e+00, double* %44, align 8, !dbg !1339
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1340
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !1341
  store double 0.000000e+00, double* %46, align 8, !dbg !1342
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !1343
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !1344
  store double 0.000000e+00, double* %48, align 8, !dbg !1345
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !1346
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !1347
  store double 0.000000e+00, double* %50, align 8, !dbg !1348
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1349
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !1350
  store double 0.000000e+00, double* %52, align 8, !dbg !1351
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1352
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !1353
  store double 0.000000e+00, double* %54, align 8, !dbg !1354
  br label %55, !dbg !1355, !llvm.loop !1356

; <label>:55:                                     ; preds = %38
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 447, i32 1), !dbg !1357
  store i32 1, i32* %7, align 4, !dbg !1357
  br label %354, !dbg !1357
                                                  ; No predecessors!
  br label %354, !dbg !1360

; <label>:57:                                     ; preds = %34
  %58 = load double, double* %9, align 8, !dbg !1361
  %59 = fcmp oeq double %58, 0.000000e+00, !dbg !1363
  br i1 %59, label %60, label %88, !dbg !1364

; <label>:60:                                     ; preds = %57
  %61 = load double, double* %8, align 8, !dbg !1365
  %62 = fcmp oeq double %61, 0.000000e+00, !dbg !1368
  br i1 %62, label %63, label %68, !dbg !1369

; <label>:63:                                     ; preds = %60
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1370
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !1372
  store double 1.000000e+00, double* %65, align 8, !dbg !1373
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1374
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 1, !dbg !1375
  store double 0.000000e+00, double* %67, align 8, !dbg !1376
  br label %73, !dbg !1377

; <label>:68:                                     ; preds = %60
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1378
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !1380
  store double 0.000000e+00, double* %70, align 8, !dbg !1381
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1382
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !1383
  store double 0.000000e+00, double* %72, align 8, !dbg !1384
  br label %73

; <label>:73:                                     ; preds = %68, %63
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1385
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !1386
  store double 0.000000e+00, double* %75, align 8, !dbg !1387
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1388
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 1, !dbg !1389
  store double 0.000000e+00, double* %77, align 8, !dbg !1390
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !1391
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !1392
  store double 0.000000e+00, double* %79, align 8, !dbg !1393
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !1394
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !1395
  store double 0.000000e+00, double* %81, align 8, !dbg !1396
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1397
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !1398
  store double 0.000000e+00, double* %83, align 8, !dbg !1399
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1400
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !1401
  store double 0.000000e+00, double* %85, align 8, !dbg !1402
  br label %86, !dbg !1403, !llvm.loop !1404

; <label>:86:                                     ; preds = %73
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 464, i32 1), !dbg !1405
  store i32 1, i32* %7, align 4, !dbg !1405
  br label %354, !dbg !1405
                                                  ; No predecessors!
  br label %353, !dbg !1408

; <label>:88:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1409, metadata !62), !dbg !1411
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1412, metadata !62), !dbg !1413
  %89 = load double, double* %9, align 8, !dbg !1414
  %90 = fcmp olt double %89, 2.000000e+00, !dbg !1416
  br i1 %90, label %91, label %168, !dbg !1417

; <label>:91:                                     ; preds = %88
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !1418, metadata !62), !dbg !1420
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1421, metadata !62), !dbg !1422
  %92 = load double, double* %8, align 8, !dbg !1423
  %93 = fadd double %92, 1.000000e+00, !dbg !1424
  %94 = load double, double* %9, align 8, !dbg !1425
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1426
  %96 = call i32 @gsl_sf_bessel_IJ_taylor_e(double %93, double %94, i32 -1, i32 100, double 0x3CB0000000000000, %struct.gsl_sf_result_struct* %95), !dbg !1427
  store i32 %96, i32* %17, align 4, !dbg !1422
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1428, metadata !62), !dbg !1429
  %97 = load double, double* %8, align 8, !dbg !1430
  %98 = fadd double %97, 2.000000e+00, !dbg !1431
  %99 = load double, double* %9, align 8, !dbg !1432
  %100 = call i32 @gsl_sf_bessel_IJ_taylor_e(double %98, double %99, i32 -1, i32 100, double 0x3CB0000000000000, %struct.gsl_sf_result_struct* %16), !dbg !1433
  store i32 %100, i32* %18, align 4, !dbg !1429
  call void @llvm.dbg.declare(metadata double* %19, metadata !1434, metadata !62), !dbg !1435
  %101 = load double, double* %8, align 8, !dbg !1436
  %102 = fadd double %101, 1.000000e+00, !dbg !1437
  %103 = fmul double 2.000000e+00, %102, !dbg !1438
  %104 = load double, double* %9, align 8, !dbg !1439
  %105 = fdiv double %103, %104, !dbg !1440
  store double %105, double* %19, align 8, !dbg !1435
  %106 = load double, double* %19, align 8, !dbg !1441
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1442
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 0, !dbg !1443
  %109 = load double, double* %108, align 8, !dbg !1443
  %110 = fmul double %106, %109, !dbg !1444
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !1445
  %112 = load double, double* %111, align 8, !dbg !1445
  %113 = fsub double %110, %112, !dbg !1446
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1447
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !1448
  store double %113, double* %115, align 8, !dbg !1449
  %116 = load double, double* %19, align 8, !dbg !1450
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1451
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 1, !dbg !1452
  %119 = load double, double* %118, align 8, !dbg !1452
  %120 = fmul double %116, %119, !dbg !1453
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1454
  %122 = load double, double* %121, align 8, !dbg !1454
  %123 = fadd double %120, %122, !dbg !1455
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1456
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 1, !dbg !1457
  store double %123, double* %125, align 8, !dbg !1458
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1459
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 0, !dbg !1460
  %128 = load double, double* %127, align 8, !dbg !1460
  %129 = call double @fabs(double %128) #1, !dbg !1461
  %130 = fmul double 0x3CC0000000000000, %129, !dbg !1462
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1463
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 1, !dbg !1464
  %133 = load double, double* %132, align 8, !dbg !1465
  %134 = fadd double %133, %130, !dbg !1465
  store double %134, double* %132, align 8, !dbg !1465
  %135 = load i32, i32* %17, align 4, !dbg !1466
  %136 = icmp ne i32 %135, 0, !dbg !1466
  br i1 %136, label %137, label %139, !dbg !1466

; <label>:137:                                    ; preds = %91
  %138 = load i32, i32* %17, align 4, !dbg !1467
  br label %147, !dbg !1467

; <label>:139:                                    ; preds = %91
  %140 = load i32, i32* %18, align 4, !dbg !1469
  %141 = icmp ne i32 %140, 0, !dbg !1469
  br i1 %141, label %142, label %144, !dbg !1469

; <label>:142:                                    ; preds = %139
  %143 = load i32, i32* %18, align 4, !dbg !1471
  br label %145, !dbg !1471

; <label>:144:                                    ; preds = %139
  br label %145, !dbg !1473

; <label>:145:                                    ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 0, %144 ], !dbg !1475
  br label %147, !dbg !1475

; <label>:147:                                    ; preds = %145, %137
  %148 = phi i32 [ %138, %137 ], [ %146, %145 ], !dbg !1477
  store i32 %148, i32* %15, align 4, !dbg !1479
  %149 = load double, double* %8, align 8, !dbg !1480
  %150 = load double, double* %9, align 8, !dbg !1481
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !1482
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1483
  %153 = call i32 @gsl_sf_bessel_Y_temme(double %149, double %150, %struct.gsl_sf_result_struct* %151, %struct.gsl_sf_result_struct* %152), !dbg !1484
  store i32 %153, i32* %14, align 4, !dbg !1485
  %154 = load i32, i32* %15, align 4, !dbg !1486
  %155 = icmp ne i32 %154, 0, !dbg !1486
  br i1 %155, label %156, label %158, !dbg !1486

; <label>:156:                                    ; preds = %147
  %157 = load i32, i32* %15, align 4, !dbg !1487
  br label %166, !dbg !1487

; <label>:158:                                    ; preds = %147
  %159 = load i32, i32* %14, align 4, !dbg !1488
  %160 = icmp ne i32 %159, 0, !dbg !1488
  br i1 %160, label %161, label %163, !dbg !1488

; <label>:161:                                    ; preds = %158
  %162 = load i32, i32* %14, align 4, !dbg !1489
  br label %164, !dbg !1489

; <label>:163:                                    ; preds = %158
  br label %164, !dbg !1490

; <label>:164:                                    ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ], !dbg !1491
  br label %166, !dbg !1491

; <label>:166:                                    ; preds = %164, %156
  %167 = phi i32 [ %157, %156 ], [ %165, %164 ], !dbg !1492
  store i32 %167, i32* %7, align 4, !dbg !1493
  br label %354, !dbg !1493

; <label>:168:                                    ; preds = %88
  %169 = load double, double* %9, align 8, !dbg !1494
  %170 = fcmp olt double %169, 1.000000e+03, !dbg !1496
  br i1 %170, label %171, label %292, !dbg !1497

; <label>:171:                                    ; preds = %168
  call void @llvm.dbg.declare(metadata double* %20, metadata !1498, metadata !62), !dbg !1500
  call void @llvm.dbg.declare(metadata double* %21, metadata !1501, metadata !62), !dbg !1502
  call void @llvm.dbg.declare(metadata double* %22, metadata !1503, metadata !62), !dbg !1504
  call void @llvm.dbg.declare(metadata double* %23, metadata !1505, metadata !62), !dbg !1506
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1507, metadata !62), !dbg !1508
  %172 = load double, double* %8, align 8, !dbg !1509
  %173 = load double, double* %9, align 8, !dbg !1510
  %174 = call i32 @gsl_sf_bessel_J_CF1(double %172, double %173, double* %22, double* %23), !dbg !1511
  store i32 %174, i32* %24, align 4, !dbg !1508
  call void @llvm.dbg.declare(metadata i32* %25, metadata !1512, metadata !62), !dbg !1513
  %175 = load double, double* %8, align 8, !dbg !1514
  %176 = load double, double* %9, align 8, !dbg !1515
  %177 = call i32 @gsl_sf_bessel_JY_steed_CF2(double %175, double %176, double* %20, double* %21), !dbg !1516
  store i32 %177, i32* %25, align 4, !dbg !1513
  call void @llvm.dbg.declare(metadata double* %26, metadata !1517, metadata !62), !dbg !1518
  %178 = load double, double* %8, align 8, !dbg !1519
  %179 = load double, double* %9, align 8, !dbg !1520
  %180 = fdiv double %178, %179, !dbg !1521
  %181 = load double, double* %22, align 8, !dbg !1522
  %182 = fsub double %180, %181, !dbg !1523
  store double %182, double* %26, align 8, !dbg !1518
  call void @llvm.dbg.declare(metadata double* %27, metadata !1524, metadata !62), !dbg !1525
  %183 = load double, double* %20, align 8, !dbg !1526
  %184 = load double, double* %26, align 8, !dbg !1527
  %185 = fsub double %183, %184, !dbg !1528
  %186 = load double, double* %21, align 8, !dbg !1529
  %187 = fdiv double %185, %186, !dbg !1530
  store double %187, double* %27, align 8, !dbg !1525
  %188 = load double, double* %23, align 8, !dbg !1531
  %189 = load double, double* %9, align 8, !dbg !1532
  %190 = fmul double 0x400921FB54442D18, %189, !dbg !1533
  %191 = fdiv double 2.000000e+00, %190, !dbg !1534
  %192 = load double, double* %21, align 8, !dbg !1535
  %193 = load double, double* %27, align 8, !dbg !1536
  %194 = load double, double* %20, align 8, !dbg !1537
  %195 = load double, double* %26, align 8, !dbg !1538
  %196 = fsub double %194, %195, !dbg !1539
  %197 = fmul double %193, %196, !dbg !1540
  %198 = fadd double %192, %197, !dbg !1541
  %199 = fdiv double %191, %198, !dbg !1542
  %200 = call double @sqrt(double %199) #6, !dbg !1543
  %201 = fmul double %188, %200, !dbg !1544
  %202 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1545
  %203 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %202, i32 0, i32 0, !dbg !1546
  store double %201, double* %203, align 8, !dbg !1547
  %204 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1548
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %204, i32 0, i32 0, !dbg !1549
  %206 = load double, double* %205, align 8, !dbg !1549
  %207 = call double @fabs(double %206) #1, !dbg !1550
  %208 = fmul double 0x3CD0000000000000, %207, !dbg !1551
  %209 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1552
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %209, i32 0, i32 1, !dbg !1553
  store double %208, double* %210, align 8, !dbg !1554
  %211 = load double, double* %22, align 8, !dbg !1555
  %212 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1556
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %212, i32 0, i32 0, !dbg !1557
  %214 = load double, double* %213, align 8, !dbg !1557
  %215 = fmul double %211, %214, !dbg !1558
  %216 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1559
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %216, i32 0, i32 0, !dbg !1560
  store double %215, double* %217, align 8, !dbg !1561
  %218 = load double, double* %22, align 8, !dbg !1562
  %219 = call double @fabs(double %218) #1, !dbg !1563
  %220 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1564
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %220, i32 0, i32 1, !dbg !1565
  %222 = load double, double* %221, align 8, !dbg !1565
  %223 = fmul double %219, %222, !dbg !1566
  %224 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1567
  %225 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %224, i32 0, i32 1, !dbg !1568
  store double %223, double* %225, align 8, !dbg !1569
  %226 = load double, double* %27, align 8, !dbg !1570
  %227 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1571
  %228 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %227, i32 0, i32 0, !dbg !1572
  %229 = load double, double* %228, align 8, !dbg !1572
  %230 = fmul double %226, %229, !dbg !1573
  %231 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !1574
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %231, i32 0, i32 0, !dbg !1575
  store double %230, double* %232, align 8, !dbg !1576
  %233 = load double, double* %27, align 8, !dbg !1577
  %234 = call double @fabs(double %233) #1, !dbg !1578
  %235 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1579
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %235, i32 0, i32 1, !dbg !1580
  %237 = load double, double* %236, align 8, !dbg !1580
  %238 = fmul double %234, %237, !dbg !1581
  %239 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !1582
  %240 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %239, i32 0, i32 1, !dbg !1583
  store double %238, double* %240, align 8, !dbg !1584
  %241 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !1585
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %241, i32 0, i32 0, !dbg !1586
  %243 = load double, double* %242, align 8, !dbg !1586
  %244 = load double, double* %8, align 8, !dbg !1587
  %245 = load double, double* %9, align 8, !dbg !1588
  %246 = fdiv double %244, %245, !dbg !1589
  %247 = load double, double* %20, align 8, !dbg !1590
  %248 = fsub double %246, %247, !dbg !1591
  %249 = load double, double* %21, align 8, !dbg !1592
  %250 = load double, double* %27, align 8, !dbg !1593
  %251 = fdiv double %249, %250, !dbg !1594
  %252 = fsub double %248, %251, !dbg !1595
  %253 = fmul double %243, %252, !dbg !1596
  %254 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1597
  %255 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %254, i32 0, i32 0, !dbg !1598
  store double %253, double* %255, align 8, !dbg !1599
  %256 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !1600
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %256, i32 0, i32 1, !dbg !1601
  %258 = load double, double* %257, align 8, !dbg !1601
  %259 = load double, double* %8, align 8, !dbg !1602
  %260 = load double, double* %9, align 8, !dbg !1603
  %261 = fdiv double %259, %260, !dbg !1604
  %262 = load double, double* %20, align 8, !dbg !1605
  %263 = fsub double %261, %262, !dbg !1606
  %264 = load double, double* %21, align 8, !dbg !1607
  %265 = load double, double* %27, align 8, !dbg !1608
  %266 = fdiv double %264, %265, !dbg !1609
  %267 = fsub double %263, %266, !dbg !1610
  %268 = call double @fabs(double %267) #1, !dbg !1611
  %269 = fmul double %258, %268, !dbg !1612
  %270 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1613
  %271 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %270, i32 0, i32 0, !dbg !1614
  %272 = load double, double* %271, align 8, !dbg !1614
  %273 = call double @fabs(double %272) #1, !dbg !1615
  %274 = fmul double 0x3CD0000000000000, %273, !dbg !1617
  %275 = fadd double %269, %274, !dbg !1618
  %276 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1619
  %277 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %276, i32 0, i32 1, !dbg !1620
  store double %275, double* %277, align 8, !dbg !1621
  %278 = load i32, i32* %24, align 4, !dbg !1622
  %279 = icmp ne i32 %278, 0, !dbg !1622
  br i1 %279, label %280, label %282, !dbg !1622

; <label>:280:                                    ; preds = %171
  %281 = load i32, i32* %24, align 4, !dbg !1623
  br label %290, !dbg !1623

; <label>:282:                                    ; preds = %171
  %283 = load i32, i32* %25, align 4, !dbg !1624
  %284 = icmp ne i32 %283, 0, !dbg !1624
  br i1 %284, label %285, label %287, !dbg !1624

; <label>:285:                                    ; preds = %282
  %286 = load i32, i32* %25, align 4, !dbg !1626
  br label %288, !dbg !1626

; <label>:287:                                    ; preds = %282
  br label %288, !dbg !1628

; <label>:288:                                    ; preds = %287, %285
  %289 = phi i32 [ %286, %285 ], [ 0, %287 ], !dbg !1630
  br label %290, !dbg !1630

; <label>:290:                                    ; preds = %288, %280
  %291 = phi i32 [ %281, %280 ], [ %289, %288 ], !dbg !1632
  store i32 %291, i32* %7, align 4, !dbg !1634
  br label %354, !dbg !1634

; <label>:292:                                    ; preds = %168
  call void @llvm.dbg.declare(metadata i32* %28, metadata !1635, metadata !62), !dbg !1637
  %293 = load double, double* %8, align 8, !dbg !1638
  %294 = load double, double* %9, align 8, !dbg !1639
  %295 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1640
  %296 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double %293, double %294, %struct.gsl_sf_result_struct* %295), !dbg !1641
  store i32 %296, i32* %28, align 4, !dbg !1637
  call void @llvm.dbg.declare(metadata i32* %29, metadata !1642, metadata !62), !dbg !1643
  %297 = load double, double* %8, align 8, !dbg !1644
  %298 = fadd double %297, 1.000000e+00, !dbg !1645
  %299 = load double, double* %9, align 8, !dbg !1646
  %300 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1647
  %301 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double %298, double %299, %struct.gsl_sf_result_struct* %300), !dbg !1648
  store i32 %301, i32* %29, align 4, !dbg !1643
  call void @llvm.dbg.declare(metadata i32* %30, metadata !1649, metadata !62), !dbg !1650
  %302 = load double, double* %8, align 8, !dbg !1651
  %303 = load double, double* %9, align 8, !dbg !1652
  %304 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %12, align 8, !dbg !1653
  %305 = call i32 @gsl_sf_bessel_Ynu_asympx_e(double %302, double %303, %struct.gsl_sf_result_struct* %304), !dbg !1654
  store i32 %305, i32* %30, align 4, !dbg !1650
  call void @llvm.dbg.declare(metadata i32* %31, metadata !1655, metadata !62), !dbg !1656
  %306 = load double, double* %8, align 8, !dbg !1657
  %307 = fadd double %306, 1.000000e+00, !dbg !1658
  %308 = load double, double* %9, align 8, !dbg !1659
  %309 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1660
  %310 = call i32 @gsl_sf_bessel_Ynu_asympx_e(double %307, double %308, %struct.gsl_sf_result_struct* %309), !dbg !1661
  store i32 %310, i32* %31, align 4, !dbg !1656
  %311 = load i32, i32* %28, align 4, !dbg !1662
  %312 = icmp ne i32 %311, 0, !dbg !1662
  br i1 %312, label %313, label %315, !dbg !1662

; <label>:313:                                    ; preds = %292
  %314 = load i32, i32* %28, align 4, !dbg !1663
  br label %323, !dbg !1663

; <label>:315:                                    ; preds = %292
  %316 = load i32, i32* %29, align 4, !dbg !1665
  %317 = icmp ne i32 %316, 0, !dbg !1665
  br i1 %317, label %318, label %320, !dbg !1665

; <label>:318:                                    ; preds = %315
  %319 = load i32, i32* %29, align 4, !dbg !1667
  br label %321, !dbg !1667

; <label>:320:                                    ; preds = %315
  br label %321, !dbg !1669

; <label>:321:                                    ; preds = %320, %318
  %322 = phi i32 [ %319, %318 ], [ 0, %320 ], !dbg !1671
  br label %323, !dbg !1671

; <label>:323:                                    ; preds = %321, %313
  %324 = phi i32 [ %314, %313 ], [ %322, %321 ], !dbg !1673
  store i32 %324, i32* %15, align 4, !dbg !1675
  %325 = load i32, i32* %30, align 4, !dbg !1676
  %326 = icmp ne i32 %325, 0, !dbg !1676
  br i1 %326, label %327, label %329, !dbg !1676

; <label>:327:                                    ; preds = %323
  %328 = load i32, i32* %30, align 4, !dbg !1677
  br label %337, !dbg !1677

; <label>:329:                                    ; preds = %323
  %330 = load i32, i32* %31, align 4, !dbg !1678
  %331 = icmp ne i32 %330, 0, !dbg !1678
  br i1 %331, label %332, label %334, !dbg !1678

; <label>:332:                                    ; preds = %329
  %333 = load i32, i32* %31, align 4, !dbg !1679
  br label %335, !dbg !1679

; <label>:334:                                    ; preds = %329
  br label %335, !dbg !1680

; <label>:335:                                    ; preds = %334, %332
  %336 = phi i32 [ %333, %332 ], [ 0, %334 ], !dbg !1681
  br label %337, !dbg !1681

; <label>:337:                                    ; preds = %335, %327
  %338 = phi i32 [ %328, %327 ], [ %336, %335 ], !dbg !1682
  store i32 %338, i32* %14, align 4, !dbg !1683
  %339 = load i32, i32* %15, align 4, !dbg !1684
  %340 = icmp ne i32 %339, 0, !dbg !1684
  br i1 %340, label %341, label %343, !dbg !1684

; <label>:341:                                    ; preds = %337
  %342 = load i32, i32* %15, align 4, !dbg !1685
  br label %351, !dbg !1685

; <label>:343:                                    ; preds = %337
  %344 = load i32, i32* %14, align 4, !dbg !1686
  %345 = icmp ne i32 %344, 0, !dbg !1686
  br i1 %345, label %346, label %348, !dbg !1686

; <label>:346:                                    ; preds = %343
  %347 = load i32, i32* %14, align 4, !dbg !1687
  br label %349, !dbg !1687

; <label>:348:                                    ; preds = %343
  br label %349, !dbg !1688

; <label>:349:                                    ; preds = %348, %346
  %350 = phi i32 [ %347, %346 ], [ 0, %348 ], !dbg !1689
  br label %351, !dbg !1689

; <label>:351:                                    ; preds = %349, %341
  %352 = phi i32 [ %342, %341 ], [ %350, %349 ], !dbg !1690
  store i32 %352, i32* %7, align 4, !dbg !1691
  br label %354, !dbg !1691

; <label>:353:                                    ; preds = %87
  br label %354

; <label>:354:                                    ; preds = %55, %86, %166, %290, %351, %353, %56
  %355 = load i32, i32* %7, align 4, !dbg !1692
  ret i32 %355, !dbg !1692
}

declare i32 @gsl_sf_bessel_Y_temme(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_J_CF1(double, double, double*, double*) #0 !dbg !1693 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
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
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1697, metadata !62), !dbg !1698
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1699, metadata !62), !dbg !1700
  store double* %2, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !1701, metadata !62), !dbg !1702
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !1703, metadata !62), !dbg !1704
  call void @llvm.dbg.declare(metadata double* %10, metadata !1705, metadata !62), !dbg !1706
  store double 0x5FEFFFFFFFFFFFFF, double* %10, align 8, !dbg !1706
  call void @llvm.dbg.declare(metadata double* %11, metadata !1707, metadata !62), !dbg !1708
  store double 0x2000000000000000, double* %11, align 8, !dbg !1708
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1709, metadata !62), !dbg !1710
  store i32 10000, i32* %12, align 4, !dbg !1710
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1711, metadata !62), !dbg !1712
  store i32 1, i32* %13, align 4, !dbg !1712
  call void @llvm.dbg.declare(metadata double* %14, metadata !1713, metadata !62), !dbg !1714
  store double 1.000000e+00, double* %14, align 8, !dbg !1714
  call void @llvm.dbg.declare(metadata double* %15, metadata !1715, metadata !62), !dbg !1716
  store double 0.000000e+00, double* %15, align 8, !dbg !1716
  call void @llvm.dbg.declare(metadata double* %16, metadata !1717, metadata !62), !dbg !1718
  store double 0.000000e+00, double* %16, align 8, !dbg !1718
  call void @llvm.dbg.declare(metadata double* %17, metadata !1719, metadata !62), !dbg !1720
  store double 1.000000e+00, double* %17, align 8, !dbg !1720
  call void @llvm.dbg.declare(metadata double* %18, metadata !1721, metadata !62), !dbg !1722
  %27 = load double, double* %7, align 8, !dbg !1723
  %28 = load double, double* %6, align 8, !dbg !1724
  %29 = fadd double %28, 1.000000e+00, !dbg !1725
  %30 = fmul double 2.000000e+00, %29, !dbg !1726
  %31 = fdiv double %27, %30, !dbg !1727
  store double %31, double* %18, align 8, !dbg !1722
  call void @llvm.dbg.declare(metadata double* %19, metadata !1728, metadata !62), !dbg !1729
  %32 = load double, double* %16, align 8, !dbg !1730
  %33 = load double, double* %18, align 8, !dbg !1731
  %34 = load double, double* %14, align 8, !dbg !1732
  %35 = fmul double %33, %34, !dbg !1733
  %36 = fadd double %32, %35, !dbg !1734
  store double %36, double* %19, align 8, !dbg !1729
  call void @llvm.dbg.declare(metadata double* %20, metadata !1735, metadata !62), !dbg !1736
  %37 = load double, double* %17, align 8, !dbg !1737
  %38 = load double, double* %18, align 8, !dbg !1738
  %39 = load double, double* %15, align 8, !dbg !1739
  %40 = fmul double %38, %39, !dbg !1740
  %41 = fadd double %37, %40, !dbg !1741
  store double %41, double* %20, align 8, !dbg !1736
  call void @llvm.dbg.declare(metadata double* %21, metadata !1742, metadata !62), !dbg !1743
  call void @llvm.dbg.declare(metadata double* %22, metadata !1744, metadata !62), !dbg !1745
  %42 = load double, double* %19, align 8, !dbg !1746
  %43 = load double, double* %20, align 8, !dbg !1747
  %44 = fdiv double %42, %43, !dbg !1748
  store double %44, double* %22, align 8, !dbg !1745
  call void @llvm.dbg.declare(metadata double* %23, metadata !1749, metadata !62), !dbg !1750
  %45 = load double, double* %18, align 8, !dbg !1751
  store double %45, double* %23, align 8, !dbg !1750
  call void @llvm.dbg.declare(metadata double* %24, metadata !1752, metadata !62), !dbg !1753
  store double 1.000000e+00, double* %24, align 8, !dbg !1753
  br label %46, !dbg !1754

; <label>:46:                                     ; preds = %151, %4
  %47 = load i32, i32* %13, align 4, !dbg !1755
  %48 = icmp slt i32 %47, 10000, !dbg !1757
  br i1 %48, label %49, label %152, !dbg !1758

; <label>:49:                                     ; preds = %46
  call void @llvm.dbg.declare(metadata double* %25, metadata !1759, metadata !62), !dbg !1761
  call void @llvm.dbg.declare(metadata double* %26, metadata !1762, metadata !62), !dbg !1763
  %50 = load i32, i32* %13, align 4, !dbg !1764
  %51 = add nsw i32 %50, 1, !dbg !1764
  store i32 %51, i32* %13, align 4, !dbg !1764
  %52 = load double, double* %16, align 8, !dbg !1765
  store double %52, double* %14, align 8, !dbg !1766
  %53 = load double, double* %17, align 8, !dbg !1767
  store double %53, double* %15, align 8, !dbg !1768
  %54 = load double, double* %19, align 8, !dbg !1769
  store double %54, double* %16, align 8, !dbg !1770
  %55 = load double, double* %20, align 8, !dbg !1771
  store double %55, double* %17, align 8, !dbg !1772
  %56 = load double, double* %7, align 8, !dbg !1773
  %57 = fsub double -0.000000e+00, %56, !dbg !1774
  %58 = load double, double* %7, align 8, !dbg !1775
  %59 = fmul double %57, %58, !dbg !1776
  %60 = load double, double* %6, align 8, !dbg !1777
  %61 = load i32, i32* %13, align 4, !dbg !1778
  %62 = sitofp i32 %61 to double, !dbg !1778
  %63 = fadd double %60, %62, !dbg !1779
  %64 = fsub double %63, 1.000000e+00, !dbg !1780
  %65 = fmul double 4.000000e+00, %64, !dbg !1781
  %66 = load double, double* %6, align 8, !dbg !1782
  %67 = load i32, i32* %13, align 4, !dbg !1783
  %68 = sitofp i32 %67 to double, !dbg !1783
  %69 = fadd double %66, %68, !dbg !1784
  %70 = fmul double %65, %69, !dbg !1785
  %71 = fdiv double %59, %70, !dbg !1786
  store double %71, double* %21, align 8, !dbg !1787
  %72 = load double, double* %16, align 8, !dbg !1788
  %73 = load double, double* %21, align 8, !dbg !1789
  %74 = load double, double* %14, align 8, !dbg !1790
  %75 = fmul double %73, %74, !dbg !1791
  %76 = fadd double %72, %75, !dbg !1792
  store double %76, double* %19, align 8, !dbg !1793
  %77 = load double, double* %17, align 8, !dbg !1794
  %78 = load double, double* %21, align 8, !dbg !1795
  %79 = load double, double* %15, align 8, !dbg !1796
  %80 = fmul double %78, %79, !dbg !1797
  %81 = fadd double %77, %80, !dbg !1798
  store double %81, double* %20, align 8, !dbg !1799
  %82 = load double, double* %19, align 8, !dbg !1800
  %83 = call double @fabs(double %82) #1, !dbg !1802
  %84 = fcmp ogt double %83, 0x5FEFFFFFFFFFFFFF, !dbg !1803
  br i1 %84, label %89, label %85, !dbg !1804

; <label>:85:                                     ; preds = %49
  %86 = load double, double* %20, align 8, !dbg !1805
  %87 = call double @fabs(double %86) #1, !dbg !1807
  %88 = fcmp ogt double %87, 0x5FEFFFFFFFFFFFFF, !dbg !1808
  br i1 %88, label %89, label %100, !dbg !1809

; <label>:89:                                     ; preds = %85, %49
  %90 = load double, double* %19, align 8, !dbg !1810
  %91 = fdiv double %90, 0x5FEFFFFFFFFFFFFF, !dbg !1810
  store double %91, double* %19, align 8, !dbg !1810
  %92 = load double, double* %20, align 8, !dbg !1812
  %93 = fdiv double %92, 0x5FEFFFFFFFFFFFFF, !dbg !1812
  store double %93, double* %20, align 8, !dbg !1812
  %94 = load double, double* %16, align 8, !dbg !1813
  %95 = fdiv double %94, 0x5FEFFFFFFFFFFFFF, !dbg !1813
  store double %95, double* %16, align 8, !dbg !1813
  %96 = load double, double* %17, align 8, !dbg !1814
  %97 = fdiv double %96, 0x5FEFFFFFFFFFFFFF, !dbg !1814
  store double %97, double* %17, align 8, !dbg !1814
  %98 = load double, double* %14, align 8, !dbg !1815
  %99 = fdiv double %98, 0x5FEFFFFFFFFFFFFF, !dbg !1815
  store double %99, double* %14, align 8, !dbg !1815
  br label %122, !dbg !1816

; <label>:100:                                    ; preds = %85
  %101 = load double, double* %19, align 8, !dbg !1817
  %102 = call double @fabs(double %101) #1, !dbg !1820
  %103 = fcmp olt double %102, 0x2000000000000000, !dbg !1821
  br i1 %103, label %108, label %104, !dbg !1822

; <label>:104:                                    ; preds = %100
  %105 = load double, double* %20, align 8, !dbg !1823
  %106 = call double @fabs(double %105) #1, !dbg !1825
  %107 = fcmp olt double %106, 0x2000000000000000, !dbg !1826
  br i1 %107, label %108, label %121, !dbg !1827

; <label>:108:                                    ; preds = %104, %100
  %109 = load double, double* %19, align 8, !dbg !1828
  %110 = fdiv double %109, 0x2000000000000000, !dbg !1828
  store double %110, double* %19, align 8, !dbg !1828
  %111 = load double, double* %20, align 8, !dbg !1830
  %112 = fdiv double %111, 0x2000000000000000, !dbg !1830
  store double %112, double* %20, align 8, !dbg !1830
  %113 = load double, double* %16, align 8, !dbg !1831
  %114 = fdiv double %113, 0x2000000000000000, !dbg !1831
  store double %114, double* %16, align 8, !dbg !1831
  %115 = load double, double* %17, align 8, !dbg !1832
  %116 = fdiv double %115, 0x2000000000000000, !dbg !1832
  store double %116, double* %17, align 8, !dbg !1832
  %117 = load double, double* %14, align 8, !dbg !1833
  %118 = fdiv double %117, 0x2000000000000000, !dbg !1833
  store double %118, double* %14, align 8, !dbg !1833
  %119 = load double, double* %15, align 8, !dbg !1834
  %120 = fdiv double %119, 0x2000000000000000, !dbg !1834
  store double %120, double* %15, align 8, !dbg !1834
  br label %121, !dbg !1835

; <label>:121:                                    ; preds = %108, %104
  br label %122

; <label>:122:                                    ; preds = %121, %89
  %123 = load double, double* %22, align 8, !dbg !1836
  store double %123, double* %25, align 8, !dbg !1837
  %124 = load double, double* %19, align 8, !dbg !1838
  %125 = load double, double* %20, align 8, !dbg !1839
  %126 = fdiv double %124, %125, !dbg !1840
  store double %126, double* %22, align 8, !dbg !1841
  %127 = load double, double* %25, align 8, !dbg !1842
  %128 = load double, double* %22, align 8, !dbg !1843
  %129 = fdiv double %127, %128, !dbg !1844
  store double %129, double* %26, align 8, !dbg !1845
  %130 = load double, double* %6, align 8, !dbg !1846
  %131 = load i32, i32* %13, align 4, !dbg !1847
  %132 = sitofp i32 %131 to double, !dbg !1847
  %133 = fadd double %130, %132, !dbg !1848
  %134 = fmul double 2.000000e+00, %133, !dbg !1849
  %135 = load double, double* %7, align 8, !dbg !1850
  %136 = fdiv double %134, %135, !dbg !1851
  %137 = load double, double* %23, align 8, !dbg !1852
  %138 = fsub double %136, %137, !dbg !1853
  %139 = fdiv double 1.000000e+00, %138, !dbg !1854
  store double %139, double* %23, align 8, !dbg !1855
  %140 = load double, double* %23, align 8, !dbg !1856
  %141 = fcmp olt double %140, 0.000000e+00, !dbg !1858
  br i1 %141, label %142, label %145, !dbg !1859

; <label>:142:                                    ; preds = %122
  %143 = load double, double* %24, align 8, !dbg !1860
  %144 = fsub double -0.000000e+00, %143, !dbg !1862
  store double %144, double* %24, align 8, !dbg !1863
  br label %145, !dbg !1864

; <label>:145:                                    ; preds = %142, %122
  %146 = load double, double* %26, align 8, !dbg !1865
  %147 = fsub double %146, 1.000000e+00, !dbg !1867
  %148 = call double @fabs(double %147) #1, !dbg !1868
  %149 = fcmp olt double %148, 0x3CC0000000000000, !dbg !1869
  br i1 %149, label %150, label %151, !dbg !1870

; <label>:150:                                    ; preds = %145
  br label %152, !dbg !1871

; <label>:151:                                    ; preds = %145
  br label %46, !dbg !1873, !llvm.loop !1875

; <label>:152:                                    ; preds = %150, %46
  %153 = load double, double* %22, align 8, !dbg !1876
  %154 = load double*, double** %8, align 8, !dbg !1877
  store double %153, double* %154, align 8, !dbg !1878
  %155 = load double, double* %24, align 8, !dbg !1879
  %156 = load double*, double** %9, align 8, !dbg !1880
  store double %155, double* %156, align 8, !dbg !1881
  %157 = load i32, i32* %13, align 4, !dbg !1882
  %158 = icmp sge i32 %157, 10000, !dbg !1884
  br i1 %158, label %159, label %162, !dbg !1885

; <label>:159:                                    ; preds = %152
  br label %160, !dbg !1886, !llvm.loop !1887

; <label>:160:                                    ; preds = %159
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 584, i32 11), !dbg !1888
  store i32 11, i32* %5, align 4, !dbg !1888
  br label %163, !dbg !1888
                                                  ; No predecessors!
  br label %163, !dbg !1891

; <label>:162:                                    ; preds = %152
  store i32 0, i32* %5, align 4, !dbg !1893
  br label %163, !dbg !1893

; <label>:163:                                    ; preds = %160, %162, %161
  %164 = load i32, i32* %5, align 4, !dbg !1894
  ret i32 %164, !dbg !1894
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_JY_steed_CF2(double, double, double*, double*) #0 !dbg !1895 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
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
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1896, metadata !62), !dbg !1897
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1898, metadata !62), !dbg !1899
  store double* %2, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !1900, metadata !62), !dbg !1901
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !1902, metadata !62), !dbg !1903
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1904, metadata !62), !dbg !1905
  store i32 10000, i32* %10, align 4, !dbg !1905
  call void @llvm.dbg.declare(metadata double* %11, metadata !1906, metadata !62), !dbg !1907
  store double 1.000000e-100, double* %11, align 8, !dbg !1907
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1908, metadata !62), !dbg !1909
  store i32 1, i32* %12, align 4, !dbg !1909
  call void @llvm.dbg.declare(metadata double* %13, metadata !1910, metadata !62), !dbg !1911
  %28 = load double, double* %7, align 8, !dbg !1912
  %29 = fdiv double 1.000000e+00, %28, !dbg !1913
  store double %29, double* %13, align 8, !dbg !1911
  call void @llvm.dbg.declare(metadata double* %14, metadata !1914, metadata !62), !dbg !1915
  %30 = load double, double* %6, align 8, !dbg !1916
  %31 = load double, double* %6, align 8, !dbg !1917
  %32 = fmul double %30, %31, !dbg !1918
  %33 = fsub double 2.500000e-01, %32, !dbg !1919
  store double %33, double* %14, align 8, !dbg !1915
  call void @llvm.dbg.declare(metadata double* %15, metadata !1920, metadata !62), !dbg !1921
  %34 = load double, double* %13, align 8, !dbg !1922
  %35 = fmul double -5.000000e-01, %34, !dbg !1923
  store double %35, double* %15, align 8, !dbg !1921
  call void @llvm.dbg.declare(metadata double* %16, metadata !1924, metadata !62), !dbg !1925
  store double 1.000000e+00, double* %16, align 8, !dbg !1925
  call void @llvm.dbg.declare(metadata double* %17, metadata !1926, metadata !62), !dbg !1927
  %36 = load double, double* %7, align 8, !dbg !1928
  %37 = fmul double 2.000000e+00, %36, !dbg !1929
  store double %37, double* %17, align 8, !dbg !1927
  call void @llvm.dbg.declare(metadata double* %18, metadata !1930, metadata !62), !dbg !1931
  store double 2.000000e+00, double* %18, align 8, !dbg !1931
  call void @llvm.dbg.declare(metadata double* %19, metadata !1932, metadata !62), !dbg !1933
  %38 = load double, double* %14, align 8, !dbg !1934
  %39 = load double, double* %13, align 8, !dbg !1935
  %40 = fmul double %38, %39, !dbg !1936
  %41 = load double, double* %15, align 8, !dbg !1937
  %42 = load double, double* %15, align 8, !dbg !1938
  %43 = fmul double %41, %42, !dbg !1939
  %44 = load double, double* %16, align 8, !dbg !1940
  %45 = load double, double* %16, align 8, !dbg !1941
  %46 = fmul double %44, %45, !dbg !1942
  %47 = fadd double %43, %46, !dbg !1943
  %48 = fdiv double %40, %47, !dbg !1944
  store double %48, double* %19, align 8, !dbg !1933
  call void @llvm.dbg.declare(metadata double* %20, metadata !1945, metadata !62), !dbg !1946
  %49 = load double, double* %17, align 8, !dbg !1947
  %50 = load double, double* %16, align 8, !dbg !1948
  %51 = load double, double* %19, align 8, !dbg !1949
  %52 = fmul double %50, %51, !dbg !1950
  %53 = fadd double %49, %52, !dbg !1951
  store double %53, double* %20, align 8, !dbg !1946
  call void @llvm.dbg.declare(metadata double* %21, metadata !1952, metadata !62), !dbg !1953
  %54 = load double, double* %18, align 8, !dbg !1954
  %55 = load double, double* %15, align 8, !dbg !1955
  %56 = load double, double* %19, align 8, !dbg !1956
  %57 = fmul double %55, %56, !dbg !1957
  %58 = fadd double %54, %57, !dbg !1958
  store double %58, double* %21, align 8, !dbg !1953
  call void @llvm.dbg.declare(metadata double* %22, metadata !1959, metadata !62), !dbg !1960
  %59 = load double, double* %17, align 8, !dbg !1961
  %60 = load double, double* %17, align 8, !dbg !1962
  %61 = fmul double %59, %60, !dbg !1963
  %62 = load double, double* %18, align 8, !dbg !1964
  %63 = load double, double* %18, align 8, !dbg !1965
  %64 = fmul double %62, %63, !dbg !1966
  %65 = fadd double %61, %64, !dbg !1967
  store double %65, double* %22, align 8, !dbg !1960
  call void @llvm.dbg.declare(metadata double* %23, metadata !1968, metadata !62), !dbg !1969
  %66 = load double, double* %17, align 8, !dbg !1970
  %67 = load double, double* %22, align 8, !dbg !1971
  %68 = fdiv double %66, %67, !dbg !1972
  store double %68, double* %23, align 8, !dbg !1969
  call void @llvm.dbg.declare(metadata double* %24, metadata !1973, metadata !62), !dbg !1974
  %69 = load double, double* %18, align 8, !dbg !1975
  %70 = fsub double -0.000000e+00, %69, !dbg !1976
  %71 = load double, double* %22, align 8, !dbg !1977
  %72 = fdiv double %70, %71, !dbg !1978
  store double %72, double* %24, align 8, !dbg !1974
  call void @llvm.dbg.declare(metadata double* %25, metadata !1979, metadata !62), !dbg !1980
  %73 = load double, double* %20, align 8, !dbg !1981
  %74 = load double, double* %23, align 8, !dbg !1982
  %75 = fmul double %73, %74, !dbg !1983
  %76 = load double, double* %21, align 8, !dbg !1984
  %77 = load double, double* %24, align 8, !dbg !1985
  %78 = fmul double %76, %77, !dbg !1986
  %79 = fsub double %75, %78, !dbg !1987
  store double %79, double* %25, align 8, !dbg !1980
  call void @llvm.dbg.declare(metadata double* %26, metadata !1988, metadata !62), !dbg !1989
  %80 = load double, double* %20, align 8, !dbg !1990
  %81 = load double, double* %24, align 8, !dbg !1991
  %82 = fmul double %80, %81, !dbg !1992
  %83 = load double, double* %21, align 8, !dbg !1993
  %84 = load double, double* %23, align 8, !dbg !1994
  %85 = fmul double %83, %84, !dbg !1995
  %86 = fadd double %82, %85, !dbg !1996
  store double %86, double* %26, align 8, !dbg !1989
  call void @llvm.dbg.declare(metadata double* %27, metadata !1997, metadata !62), !dbg !1998
  %87 = load double, double* %15, align 8, !dbg !1999
  %88 = load double, double* %25, align 8, !dbg !2000
  %89 = fmul double %87, %88, !dbg !2001
  %90 = load double, double* %16, align 8, !dbg !2002
  %91 = load double, double* %26, align 8, !dbg !2003
  %92 = fmul double %90, %91, !dbg !2004
  %93 = fsub double %89, %92, !dbg !2005
  store double %93, double* %27, align 8, !dbg !1998
  %94 = load double, double* %15, align 8, !dbg !2006
  %95 = load double, double* %26, align 8, !dbg !2007
  %96 = fmul double %94, %95, !dbg !2008
  %97 = load double, double* %16, align 8, !dbg !2009
  %98 = load double, double* %25, align 8, !dbg !2010
  %99 = fmul double %97, %98, !dbg !2011
  %100 = fadd double %96, %99, !dbg !2012
  store double %100, double* %16, align 8, !dbg !2013
  %101 = load double, double* %27, align 8, !dbg !2014
  store double %101, double* %15, align 8, !dbg !2015
  store i32 2, i32* %12, align 4, !dbg !2016
  br label %102, !dbg !2018

; <label>:102:                                    ; preds = %211, %4
  %103 = load i32, i32* %12, align 4, !dbg !2019
  %104 = icmp sle i32 %103, 10000, !dbg !2022
  br i1 %104, label %105, label %214, !dbg !2023

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* %12, align 4, !dbg !2024
  %107 = sub nsw i32 %106, 1, !dbg !2026
  %108 = mul nsw i32 2, %107, !dbg !2027
  %109 = sitofp i32 %108 to double, !dbg !2028
  %110 = load double, double* %14, align 8, !dbg !2029
  %111 = fadd double %110, %109, !dbg !2029
  store double %111, double* %14, align 8, !dbg !2029
  %112 = load double, double* %18, align 8, !dbg !2030
  %113 = fadd double %112, 2.000000e+00, !dbg !2030
  store double %113, double* %18, align 8, !dbg !2030
  %114 = load double, double* %14, align 8, !dbg !2031
  %115 = load double, double* %23, align 8, !dbg !2032
  %116 = fmul double %114, %115, !dbg !2033
  %117 = load double, double* %17, align 8, !dbg !2034
  %118 = fadd double %116, %117, !dbg !2035
  store double %118, double* %23, align 8, !dbg !2036
  %119 = load double, double* %14, align 8, !dbg !2037
  %120 = load double, double* %24, align 8, !dbg !2038
  %121 = fmul double %119, %120, !dbg !2039
  %122 = load double, double* %18, align 8, !dbg !2040
  %123 = fadd double %121, %122, !dbg !2041
  store double %123, double* %24, align 8, !dbg !2042
  %124 = load double, double* %23, align 8, !dbg !2043
  %125 = call double @fabs(double %124) #1, !dbg !2045
  %126 = load double, double* %24, align 8, !dbg !2046
  %127 = call double @fabs(double %126) #1, !dbg !2047
  %128 = fadd double %125, %127, !dbg !2049
  %129 = fcmp olt double %128, 1.000000e-100, !dbg !2050
  br i1 %129, label %130, label %131, !dbg !2051

; <label>:130:                                    ; preds = %105
  store double 1.000000e-100, double* %23, align 8, !dbg !2052
  br label %131, !dbg !2054

; <label>:131:                                    ; preds = %130, %105
  %132 = load double, double* %14, align 8, !dbg !2055
  %133 = load double, double* %20, align 8, !dbg !2056
  %134 = load double, double* %20, align 8, !dbg !2057
  %135 = fmul double %133, %134, !dbg !2058
  %136 = load double, double* %21, align 8, !dbg !2059
  %137 = load double, double* %21, align 8, !dbg !2060
  %138 = fmul double %136, %137, !dbg !2061
  %139 = fadd double %135, %138, !dbg !2062
  %140 = fdiv double %132, %139, !dbg !2063
  store double %140, double* %19, align 8, !dbg !2064
  %141 = load double, double* %17, align 8, !dbg !2065
  %142 = load double, double* %20, align 8, !dbg !2066
  %143 = load double, double* %19, align 8, !dbg !2067
  %144 = fmul double %142, %143, !dbg !2068
  %145 = fadd double %141, %144, !dbg !2069
  store double %145, double* %20, align 8, !dbg !2070
  %146 = load double, double* %18, align 8, !dbg !2071
  %147 = load double, double* %21, align 8, !dbg !2072
  %148 = load double, double* %19, align 8, !dbg !2073
  %149 = fmul double %147, %148, !dbg !2074
  %150 = fsub double %146, %149, !dbg !2075
  store double %150, double* %21, align 8, !dbg !2076
  %151 = load double, double* %20, align 8, !dbg !2077
  %152 = call double @fabs(double %151) #1, !dbg !2079
  %153 = load double, double* %21, align 8, !dbg !2080
  %154 = call double @fabs(double %153) #1, !dbg !2081
  %155 = fadd double %152, %154, !dbg !2083
  %156 = fcmp olt double %155, 1.000000e-100, !dbg !2084
  br i1 %156, label %157, label %158, !dbg !2085

; <label>:157:                                    ; preds = %131
  store double 1.000000e-100, double* %20, align 8, !dbg !2086
  br label %158, !dbg !2088

; <label>:158:                                    ; preds = %157, %131
  %159 = load double, double* %23, align 8, !dbg !2089
  %160 = load double, double* %23, align 8, !dbg !2090
  %161 = fmul double %159, %160, !dbg !2091
  %162 = load double, double* %24, align 8, !dbg !2092
  %163 = load double, double* %24, align 8, !dbg !2093
  %164 = fmul double %162, %163, !dbg !2094
  %165 = fadd double %161, %164, !dbg !2095
  store double %165, double* %22, align 8, !dbg !2096
  %166 = load double, double* %22, align 8, !dbg !2097
  %167 = load double, double* %23, align 8, !dbg !2098
  %168 = fdiv double %167, %166, !dbg !2098
  store double %168, double* %23, align 8, !dbg !2098
  %169 = load double, double* %22, align 8, !dbg !2099
  %170 = fsub double -0.000000e+00, %169, !dbg !2100
  %171 = load double, double* %24, align 8, !dbg !2101
  %172 = fdiv double %171, %170, !dbg !2101
  store double %172, double* %24, align 8, !dbg !2101
  %173 = load double, double* %20, align 8, !dbg !2102
  %174 = load double, double* %23, align 8, !dbg !2103
  %175 = fmul double %173, %174, !dbg !2104
  %176 = load double, double* %21, align 8, !dbg !2105
  %177 = load double, double* %24, align 8, !dbg !2106
  %178 = fmul double %176, %177, !dbg !2107
  %179 = fsub double %175, %178, !dbg !2108
  store double %179, double* %25, align 8, !dbg !2109
  %180 = load double, double* %20, align 8, !dbg !2110
  %181 = load double, double* %24, align 8, !dbg !2111
  %182 = fmul double %180, %181, !dbg !2112
  %183 = load double, double* %21, align 8, !dbg !2113
  %184 = load double, double* %23, align 8, !dbg !2114
  %185 = fmul double %183, %184, !dbg !2115
  %186 = fadd double %182, %185, !dbg !2116
  store double %186, double* %26, align 8, !dbg !2117
  %187 = load double, double* %15, align 8, !dbg !2118
  %188 = load double, double* %25, align 8, !dbg !2119
  %189 = fmul double %187, %188, !dbg !2120
  %190 = load double, double* %16, align 8, !dbg !2121
  %191 = load double, double* %26, align 8, !dbg !2122
  %192 = fmul double %190, %191, !dbg !2123
  %193 = fsub double %189, %192, !dbg !2124
  store double %193, double* %27, align 8, !dbg !2125
  %194 = load double, double* %15, align 8, !dbg !2126
  %195 = load double, double* %26, align 8, !dbg !2127
  %196 = fmul double %194, %195, !dbg !2128
  %197 = load double, double* %16, align 8, !dbg !2129
  %198 = load double, double* %25, align 8, !dbg !2130
  %199 = fmul double %197, %198, !dbg !2131
  %200 = fadd double %196, %199, !dbg !2132
  store double %200, double* %16, align 8, !dbg !2133
  %201 = load double, double* %27, align 8, !dbg !2134
  store double %201, double* %15, align 8, !dbg !2135
  %202 = load double, double* %25, align 8, !dbg !2136
  %203 = fsub double %202, 1.000000e+00, !dbg !2138
  %204 = call double @fabs(double %203) #1, !dbg !2139
  %205 = load double, double* %26, align 8, !dbg !2140
  %206 = call double @fabs(double %205) #1, !dbg !2141
  %207 = fadd double %204, %206, !dbg !2143
  %208 = fcmp olt double %207, 0x3CB0000000000000, !dbg !2144
  br i1 %208, label %209, label %210, !dbg !2145

; <label>:209:                                    ; preds = %158
  br label %214, !dbg !2146

; <label>:210:                                    ; preds = %158
  br label %211, !dbg !2148

; <label>:211:                                    ; preds = %210
  %212 = load i32, i32* %12, align 4, !dbg !2149
  %213 = add nsw i32 %212, 1, !dbg !2149
  store i32 %213, i32* %12, align 4, !dbg !2149
  br label %102, !dbg !2151, !llvm.loop !2152

; <label>:214:                                    ; preds = %209, %102
  %215 = load double, double* %15, align 8, !dbg !2154
  %216 = load double*, double** %8, align 8, !dbg !2155
  store double %215, double* %216, align 8, !dbg !2156
  %217 = load double, double* %16, align 8, !dbg !2157
  %218 = load double*, double** %9, align 8, !dbg !2158
  store double %217, double* %218, align 8, !dbg !2159
  %219 = load i32, i32* %12, align 4, !dbg !2160
  %220 = icmp eq i32 %219, 10000, !dbg !2162
  br i1 %220, label %221, label %224, !dbg !2163

; <label>:221:                                    ; preds = %214
  br label %222, !dbg !2164, !llvm.loop !2165

; <label>:222:                                    ; preds = %221
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 713, i32 11), !dbg !2166
  store i32 11, i32* %5, align 4, !dbg !2166
  br label %225, !dbg !2166
                                                  ; No predecessors!
  br label %225, !dbg !2169

; <label>:224:                                    ; preds = %214
  store i32 0, i32* %5, align 4, !dbg !2171
  br label %225, !dbg !2171

; <label>:225:                                    ; preds = %222, %224, %223
  %226 = load i32, i32* %5, align 4, !dbg !2172
  ret i32 %226, !dbg !2172
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_I_CF1_ser(double, double, double*) #0 !dbg !2173 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2176, metadata !62), !dbg !2177
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2178, metadata !62), !dbg !2179
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !2180, metadata !62), !dbg !2181
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2182, metadata !62), !dbg !2183
  store i32 20000, i32* %8, align 4, !dbg !2183
  call void @llvm.dbg.declare(metadata double* %9, metadata !2184, metadata !62), !dbg !2185
  store double 1.000000e+00, double* %9, align 8, !dbg !2185
  call void @llvm.dbg.declare(metadata double* %10, metadata !2186, metadata !62), !dbg !2187
  store double 1.000000e+00, double* %10, align 8, !dbg !2187
  call void @llvm.dbg.declare(metadata double* %11, metadata !2188, metadata !62), !dbg !2189
  store double 0.000000e+00, double* %11, align 8, !dbg !2189
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2190, metadata !62), !dbg !2191
  store i32 1, i32* %12, align 4, !dbg !2192
  br label %14, !dbg !2194

; <label>:14:                                     ; preds = %57, %3
  %15 = load i32, i32* %12, align 4, !dbg !2195
  %16 = icmp slt i32 %15, 20000, !dbg !2198
  br i1 %16, label %17, label %60, !dbg !2199

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata double* %13, metadata !2200, metadata !62), !dbg !2202
  %18 = load double, double* %6, align 8, !dbg !2203
  %19 = load double, double* %5, align 8, !dbg !2204
  %20 = load i32, i32* %12, align 4, !dbg !2205
  %21 = sitofp i32 %20 to double, !dbg !2205
  %22 = fadd double %19, %21, !dbg !2206
  %23 = fdiv double %18, %22, !dbg !2207
  %24 = fmul double 2.500000e-01, %23, !dbg !2208
  %25 = load double, double* %6, align 8, !dbg !2209
  %26 = fmul double %24, %25, !dbg !2210
  %27 = load double, double* %5, align 8, !dbg !2211
  %28 = load i32, i32* %12, align 4, !dbg !2212
  %29 = sitofp i32 %28 to double, !dbg !2212
  %30 = fadd double %27, %29, !dbg !2213
  %31 = fadd double %30, 1.000000e+00, !dbg !2214
  %32 = fdiv double %26, %31, !dbg !2215
  store double %32, double* %13, align 8, !dbg !2202
  %33 = load double, double* %13, align 8, !dbg !2216
  %34 = fsub double -0.000000e+00, %33, !dbg !2217
  %35 = load double, double* %11, align 8, !dbg !2218
  %36 = fadd double 1.000000e+00, %35, !dbg !2219
  %37 = fmul double %34, %36, !dbg !2220
  %38 = load double, double* %13, align 8, !dbg !2221
  %39 = load double, double* %11, align 8, !dbg !2222
  %40 = fadd double 1.000000e+00, %39, !dbg !2223
  %41 = fmul double %38, %40, !dbg !2224
  %42 = fadd double 1.000000e+00, %41, !dbg !2225
  %43 = fdiv double %37, %42, !dbg !2226
  store double %43, double* %11, align 8, !dbg !2227
  %44 = load double, double* %11, align 8, !dbg !2228
  %45 = load double, double* %9, align 8, !dbg !2229
  %46 = fmul double %45, %44, !dbg !2229
  store double %46, double* %9, align 8, !dbg !2229
  %47 = load double, double* %9, align 8, !dbg !2230
  %48 = load double, double* %10, align 8, !dbg !2231
  %49 = fadd double %48, %47, !dbg !2231
  store double %49, double* %10, align 8, !dbg !2231
  %50 = load double, double* %9, align 8, !dbg !2232
  %51 = load double, double* %10, align 8, !dbg !2234
  %52 = fdiv double %50, %51, !dbg !2235
  %53 = call double @fabs(double %52) #1, !dbg !2236
  %54 = fcmp olt double %53, 0x3CB0000000000000, !dbg !2237
  br i1 %54, label %55, label %56, !dbg !2238

; <label>:55:                                     ; preds = %17
  br label %60, !dbg !2239

; <label>:56:                                     ; preds = %17
  br label %57, !dbg !2241

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %12, align 4, !dbg !2242
  %59 = add nsw i32 %58, 1, !dbg !2242
  store i32 %59, i32* %12, align 4, !dbg !2242
  br label %14, !dbg !2244, !llvm.loop !2245

; <label>:60:                                     ; preds = %55, %14
  %61 = load double, double* %6, align 8, !dbg !2247
  %62 = load double, double* %5, align 8, !dbg !2248
  %63 = fadd double %62, 1.000000e+00, !dbg !2249
  %64 = fmul double 2.000000e+00, %63, !dbg !2250
  %65 = fdiv double %61, %64, !dbg !2251
  %66 = load double, double* %10, align 8, !dbg !2252
  %67 = fmul double %65, %66, !dbg !2253
  %68 = load double*, double** %7, align 8, !dbg !2254
  store double %67, double* %68, align 8, !dbg !2255
  %69 = load i32, i32* %12, align 4, !dbg !2256
  %70 = icmp eq i32 %69, 20000, !dbg !2258
  br i1 %70, label %71, label %74, !dbg !2259

; <label>:71:                                     ; preds = %60
  br label %72, !dbg !2260, !llvm.loop !2261

; <label>:72:                                     ; preds = %71
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 656, i32 11), !dbg !2262
  store i32 11, i32* %4, align 4, !dbg !2262
  br label %75, !dbg !2262
                                                  ; No predecessors!
  br label %75, !dbg !2265

; <label>:74:                                     ; preds = %60
  store i32 0, i32* %4, align 4, !dbg !2267
  br label %75, !dbg !2267

; <label>:75:                                     ; preds = %72, %74, %73
  %76 = load i32, i32* %4, align 4, !dbg !2268
  ret i32 %76, !dbg !2268
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double, double, double*, double*, double*) #0 !dbg !2269 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
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
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2272, metadata !62), !dbg !2273
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2274, metadata !62), !dbg !2275
  store double* %2, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !2276, metadata !62), !dbg !2277
  store double* %3, double** %10, align 8
  call void @llvm.dbg.declare(metadata double** %10, metadata !2278, metadata !62), !dbg !2279
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !2280, metadata !62), !dbg !2281
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2282, metadata !62), !dbg !2283
  store i32 10000, i32* %12, align 4, !dbg !2283
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2284, metadata !62), !dbg !2285
  store i32 1, i32* %13, align 4, !dbg !2285
  call void @llvm.dbg.declare(metadata double* %14, metadata !2286, metadata !62), !dbg !2287
  %27 = load double, double* %8, align 8, !dbg !2288
  %28 = fadd double 1.000000e+00, %27, !dbg !2289
  %29 = fmul double 2.000000e+00, %28, !dbg !2290
  store double %29, double* %14, align 8, !dbg !2287
  call void @llvm.dbg.declare(metadata double* %15, metadata !2291, metadata !62), !dbg !2292
  %30 = load double, double* %14, align 8, !dbg !2293
  %31 = fdiv double 1.000000e+00, %30, !dbg !2294
  store double %31, double* %15, align 8, !dbg !2292
  call void @llvm.dbg.declare(metadata double* %16, metadata !2295, metadata !62), !dbg !2296
  %32 = load double, double* %15, align 8, !dbg !2297
  store double %32, double* %16, align 8, !dbg !2296
  call void @llvm.dbg.declare(metadata double* %17, metadata !2298, metadata !62), !dbg !2299
  %33 = load double, double* %15, align 8, !dbg !2300
  store double %33, double* %17, align 8, !dbg !2299
  call void @llvm.dbg.declare(metadata double* %18, metadata !2301, metadata !62), !dbg !2302
  store double 0.000000e+00, double* %18, align 8, !dbg !2302
  call void @llvm.dbg.declare(metadata double* %19, metadata !2303, metadata !62), !dbg !2304
  store double 1.000000e+00, double* %19, align 8, !dbg !2304
  call void @llvm.dbg.declare(metadata double* %20, metadata !2305, metadata !62), !dbg !2306
  %34 = load double, double* %7, align 8, !dbg !2307
  %35 = load double, double* %7, align 8, !dbg !2308
  %36 = fmul double %34, %35, !dbg !2309
  %37 = fsub double 2.500000e-01, %36, !dbg !2310
  %38 = fsub double -0.000000e+00, %37, !dbg !2311
  store double %38, double* %20, align 8, !dbg !2306
  call void @llvm.dbg.declare(metadata double* %21, metadata !2312, metadata !62), !dbg !2313
  %39 = load double, double* %20, align 8, !dbg !2314
  store double %39, double* %21, align 8, !dbg !2313
  call void @llvm.dbg.declare(metadata double* %22, metadata !2315, metadata !62), !dbg !2316
  %40 = load double, double* %20, align 8, !dbg !2317
  %41 = fsub double -0.000000e+00, %40, !dbg !2318
  store double %41, double* %22, align 8, !dbg !2316
  call void @llvm.dbg.declare(metadata double* %23, metadata !2319, metadata !62), !dbg !2320
  %42 = load double, double* %20, align 8, !dbg !2321
  %43 = fsub double -0.000000e+00, %42, !dbg !2322
  store double %43, double* %23, align 8, !dbg !2320
  call void @llvm.dbg.declare(metadata double* %24, metadata !2323, metadata !62), !dbg !2324
  %44 = load double, double* %23, align 8, !dbg !2325
  %45 = load double, double* %16, align 8, !dbg !2326
  %46 = fmul double %44, %45, !dbg !2327
  %47 = fadd double 1.000000e+00, %46, !dbg !2328
  store double %47, double* %24, align 8, !dbg !2324
  store i32 2, i32* %13, align 4, !dbg !2329
  br label %48, !dbg !2331

; <label>:48:                                     ; preds = %109, %5
  %49 = load i32, i32* %13, align 4, !dbg !2332
  %50 = icmp sle i32 %49, 10000, !dbg !2335
  br i1 %50, label %51, label %112, !dbg !2336

; <label>:51:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata double* %25, metadata !2337, metadata !62), !dbg !2339
  call void @llvm.dbg.declare(metadata double* %26, metadata !2340, metadata !62), !dbg !2341
  %52 = load i32, i32* %13, align 4, !dbg !2342
  %53 = sub nsw i32 %52, 1, !dbg !2343
  %54 = sitofp i32 %53 to double, !dbg !2344
  %55 = fmul double 2.000000e+00, %54, !dbg !2345
  %56 = load double, double* %20, align 8, !dbg !2346
  %57 = fsub double %56, %55, !dbg !2346
  store double %57, double* %20, align 8, !dbg !2346
  %58 = load double, double* %20, align 8, !dbg !2347
  %59 = fsub double -0.000000e+00, %58, !dbg !2348
  %60 = load double, double* %22, align 8, !dbg !2349
  %61 = fmul double %59, %60, !dbg !2350
  %62 = load i32, i32* %13, align 4, !dbg !2351
  %63 = sitofp i32 %62 to double, !dbg !2351
  %64 = fdiv double %61, %63, !dbg !2352
  store double %64, double* %22, align 8, !dbg !2353
  %65 = load double, double* %18, align 8, !dbg !2354
  %66 = load double, double* %14, align 8, !dbg !2355
  %67 = load double, double* %19, align 8, !dbg !2356
  %68 = fmul double %66, %67, !dbg !2357
  %69 = fsub double %65, %68, !dbg !2358
  %70 = load double, double* %20, align 8, !dbg !2359
  %71 = fdiv double %69, %70, !dbg !2360
  store double %71, double* %26, align 8, !dbg !2361
  %72 = load double, double* %19, align 8, !dbg !2362
  store double %72, double* %18, align 8, !dbg !2363
  %73 = load double, double* %26, align 8, !dbg !2364
  store double %73, double* %19, align 8, !dbg !2365
  %74 = load double, double* %22, align 8, !dbg !2366
  %75 = load double, double* %19, align 8, !dbg !2367
  %76 = fmul double %74, %75, !dbg !2368
  %77 = load double, double* %23, align 8, !dbg !2369
  %78 = fadd double %77, %76, !dbg !2369
  store double %78, double* %23, align 8, !dbg !2369
  %79 = load double, double* %14, align 8, !dbg !2370
  %80 = fadd double %79, 2.000000e+00, !dbg !2370
  store double %80, double* %14, align 8, !dbg !2370
  %81 = load double, double* %14, align 8, !dbg !2371
  %82 = load double, double* %20, align 8, !dbg !2372
  %83 = load double, double* %15, align 8, !dbg !2373
  %84 = fmul double %82, %83, !dbg !2374
  %85 = fadd double %81, %84, !dbg !2375
  %86 = fdiv double 1.000000e+00, %85, !dbg !2376
  store double %86, double* %15, align 8, !dbg !2377
  %87 = load double, double* %14, align 8, !dbg !2378
  %88 = load double, double* %15, align 8, !dbg !2379
  %89 = fmul double %87, %88, !dbg !2380
  %90 = fsub double %89, 1.000000e+00, !dbg !2381
  %91 = load double, double* %16, align 8, !dbg !2382
  %92 = fmul double %90, %91, !dbg !2383
  store double %92, double* %16, align 8, !dbg !2384
  %93 = load double, double* %16, align 8, !dbg !2385
  %94 = load double, double* %17, align 8, !dbg !2386
  %95 = fadd double %94, %93, !dbg !2386
  store double %95, double* %17, align 8, !dbg !2386
  %96 = load double, double* %23, align 8, !dbg !2387
  %97 = load double, double* %16, align 8, !dbg !2388
  %98 = fmul double %96, %97, !dbg !2389
  store double %98, double* %25, align 8, !dbg !2390
  %99 = load double, double* %25, align 8, !dbg !2391
  %100 = load double, double* %24, align 8, !dbg !2392
  %101 = fadd double %100, %99, !dbg !2392
  store double %101, double* %24, align 8, !dbg !2392
  %102 = load double, double* %25, align 8, !dbg !2393
  %103 = load double, double* %24, align 8, !dbg !2395
  %104 = fdiv double %102, %103, !dbg !2396
  %105 = call double @fabs(double %104) #1, !dbg !2397
  %106 = fcmp olt double %105, 0x3CB0000000000000, !dbg !2398
  br i1 %106, label %107, label %108, !dbg !2399

; <label>:107:                                    ; preds = %51
  br label %112, !dbg !2400

; <label>:108:                                    ; preds = %51
  br label %109, !dbg !2402

; <label>:109:                                    ; preds = %108
  %110 = load i32, i32* %13, align 4, !dbg !2403
  %111 = add nsw i32 %110, 1, !dbg !2403
  store i32 %111, i32* %13, align 4, !dbg !2403
  br label %48, !dbg !2405, !llvm.loop !2406

; <label>:112:                                    ; preds = %107, %48
  %113 = load double, double* %21, align 8, !dbg !2408
  %114 = fsub double -0.000000e+00, %113, !dbg !2409
  %115 = load double, double* %17, align 8, !dbg !2410
  %116 = fmul double %115, %114, !dbg !2410
  store double %116, double* %17, align 8, !dbg !2410
  %117 = load double, double* %8, align 8, !dbg !2411
  %118 = fmul double 2.000000e+00, %117, !dbg !2412
  %119 = fdiv double 0x400921FB54442D18, %118, !dbg !2413
  %120 = call double @sqrt(double %119) #6, !dbg !2414
  %121 = load double, double* %24, align 8, !dbg !2415
  %122 = fdiv double %120, %121, !dbg !2416
  %123 = load double*, double** %9, align 8, !dbg !2417
  store double %122, double* %123, align 8, !dbg !2418
  %124 = load double*, double** %9, align 8, !dbg !2419
  %125 = load double, double* %124, align 8, !dbg !2420
  %126 = load double, double* %7, align 8, !dbg !2421
  %127 = load double, double* %8, align 8, !dbg !2422
  %128 = fadd double %126, %127, !dbg !2423
  %129 = fadd double %128, 5.000000e-01, !dbg !2424
  %130 = load double, double* %17, align 8, !dbg !2425
  %131 = fsub double %129, %130, !dbg !2426
  %132 = fmul double %125, %131, !dbg !2427
  %133 = load double, double* %8, align 8, !dbg !2428
  %134 = fdiv double %132, %133, !dbg !2429
  %135 = load double*, double** %10, align 8, !dbg !2430
  store double %134, double* %135, align 8, !dbg !2431
  %136 = load double*, double** %10, align 8, !dbg !2432
  %137 = load double, double* %136, align 8, !dbg !2433
  %138 = fsub double -0.000000e+00, %137, !dbg !2434
  %139 = load double, double* %7, align 8, !dbg !2435
  %140 = load double, double* %8, align 8, !dbg !2436
  %141 = fdiv double %139, %140, !dbg !2437
  %142 = load double*, double** %9, align 8, !dbg !2438
  %143 = load double, double* %142, align 8, !dbg !2439
  %144 = fmul double %141, %143, !dbg !2440
  %145 = fadd double %138, %144, !dbg !2441
  %146 = load double*, double** %11, align 8, !dbg !2442
  store double %145, double* %146, align 8, !dbg !2443
  %147 = load i32, i32* %13, align 4, !dbg !2444
  %148 = icmp eq i32 %147, 10000, !dbg !2446
  br i1 %148, label %149, label %152, !dbg !2447

; <label>:149:                                    ; preds = %112
  br label %150, !dbg !2448, !llvm.loop !2449

; <label>:150:                                    ; preds = %149
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 772, i32 11), !dbg !2450
  store i32 11, i32* %6, align 4, !dbg !2450
  br label %153, !dbg !2450
                                                  ; No predecessors!
  br label %153, !dbg !2453

; <label>:152:                                    ; preds = %112
  store i32 0, i32* %6, align 4, !dbg !2455
  br label %153, !dbg !2455

; <label>:153:                                    ; preds = %150, %152, %151
  %154 = load i32, i32* %6, align 4, !dbg !2456
  ret i32 %154, !dbg !2456
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_cos_pi4_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2457 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2460, metadata !62), !dbg !2461
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2462, metadata !62), !dbg !2463
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !2464, metadata !62), !dbg !2465
  call void @llvm.dbg.declare(metadata double* %7, metadata !2466, metadata !62), !dbg !2467
  %15 = load double, double* %4, align 8, !dbg !2468
  %16 = call double @sin(double %15) #6, !dbg !2469
  store double %16, double* %7, align 8, !dbg !2467
  call void @llvm.dbg.declare(metadata double* %8, metadata !2470, metadata !62), !dbg !2471
  %17 = load double, double* %4, align 8, !dbg !2472
  %18 = call double @cos(double %17) #6, !dbg !2473
  store double %18, double* %8, align 8, !dbg !2471
  call void @llvm.dbg.declare(metadata double* %9, metadata !2474, metadata !62), !dbg !2475
  %19 = load double, double* %7, align 8, !dbg !2476
  %20 = load double, double* %8, align 8, !dbg !2477
  %21 = fadd double %19, %20, !dbg !2478
  store double %21, double* %9, align 8, !dbg !2475
  call void @llvm.dbg.declare(metadata double* %10, metadata !2479, metadata !62), !dbg !2480
  %22 = load double, double* %7, align 8, !dbg !2481
  %23 = load double, double* %8, align 8, !dbg !2482
  %24 = fsub double %22, %23, !dbg !2483
  store double %24, double* %10, align 8, !dbg !2480
  call void @llvm.dbg.declare(metadata double* %11, metadata !2484, metadata !62), !dbg !2485
  %25 = load double, double* %8, align 8, !dbg !2486
  %26 = call double @fabs(double %25) #1, !dbg !2487
  %27 = load double, double* %7, align 8, !dbg !2488
  %28 = call double @fabs(double %27) #1, !dbg !2489
  %29 = fadd double %26, %28, !dbg !2491
  store double %29, double* %11, align 8, !dbg !2485
  call void @llvm.dbg.declare(metadata double* %12, metadata !2492, metadata !62), !dbg !2493
  call void @llvm.dbg.declare(metadata double* %13, metadata !2494, metadata !62), !dbg !2495
  %30 = load double, double* %5, align 8, !dbg !2496
  %31 = call double @fabs(double %30) #1, !dbg !2498
  %32 = fcmp olt double %31, 0x3F48406003B2AE5A, !dbg !2499
  br i1 %32, label %33, label %53, !dbg !2500

; <label>:33:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %14, metadata !2501, metadata !62), !dbg !2503
  %34 = load double, double* %5, align 8, !dbg !2504
  %35 = load double, double* %5, align 8, !dbg !2505
  %36 = fmul double %34, %35, !dbg !2506
  store double %36, double* %14, align 8, !dbg !2503
  %37 = load double, double* %5, align 8, !dbg !2507
  %38 = load double, double* %14, align 8, !dbg !2508
  %39 = fdiv double %38, 6.000000e+00, !dbg !2509
  %40 = load double, double* %14, align 8, !dbg !2510
  %41 = fdiv double %40, 2.000000e+01, !dbg !2511
  %42 = fsub double 1.000000e+00, %41, !dbg !2512
  %43 = fmul double %39, %42, !dbg !2513
  %44 = fsub double 1.000000e+00, %43, !dbg !2514
  %45 = fmul double %37, %44, !dbg !2515
  store double %45, double* %12, align 8, !dbg !2516
  %46 = load double, double* %14, align 8, !dbg !2517
  %47 = fdiv double %46, 2.000000e+00, !dbg !2518
  %48 = load double, double* %14, align 8, !dbg !2519
  %49 = fdiv double %48, 1.200000e+01, !dbg !2520
  %50 = fsub double 1.000000e+00, %49, !dbg !2521
  %51 = fmul double %47, %50, !dbg !2522
  %52 = fsub double 1.000000e+00, %51, !dbg !2523
  store double %52, double* %13, align 8, !dbg !2524
  br label %58, !dbg !2525

; <label>:53:                                     ; preds = %3
  %54 = load double, double* %5, align 8, !dbg !2526
  %55 = call double @sin(double %54) #6, !dbg !2528
  store double %55, double* %12, align 8, !dbg !2529
  %56 = load double, double* %5, align 8, !dbg !2530
  %57 = call double @cos(double %56) #6, !dbg !2531
  store double %57, double* %13, align 8, !dbg !2532
  br label %58

; <label>:58:                                     ; preds = %53, %33
  %59 = load double, double* %13, align 8, !dbg !2533
  %60 = load double, double* %9, align 8, !dbg !2534
  %61 = fmul double %59, %60, !dbg !2535
  %62 = load double, double* %12, align 8, !dbg !2536
  %63 = load double, double* %10, align 8, !dbg !2537
  %64 = fmul double %62, %63, !dbg !2538
  %65 = fsub double %61, %64, !dbg !2539
  %66 = fdiv double %65, 0x3FF6A09E667F3BCD, !dbg !2540
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !2541
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !2542
  store double %66, double* %68, align 8, !dbg !2543
  %69 = load double, double* %13, align 8, !dbg !2544
  %70 = call double @fabs(double %69) #1, !dbg !2545
  %71 = load double, double* %12, align 8, !dbg !2546
  %72 = call double @fabs(double %71) #1, !dbg !2547
  %73 = fadd double %70, %72, !dbg !2548
  %74 = fmul double 0x3CC0000000000000, %73, !dbg !2549
  %75 = load double, double* %11, align 8, !dbg !2550
  %76 = fmul double %74, %75, !dbg !2551
  %77 = fdiv double %76, 0x3FF6A09E667F3BCD, !dbg !2552
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !2553
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !2554
  store double %77, double* %79, align 8, !dbg !2555
  %80 = load double, double* %4, align 8, !dbg !2556
  %81 = fcmp ogt double %80, 0x4330000000000000, !dbg !2558
  br i1 %81, label %82, label %89, !dbg !2559

; <label>:82:                                     ; preds = %58
  %83 = load double, double* %4, align 8, !dbg !2560
  %84 = fmul double 5.000000e-01, %83, !dbg !2562
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !2563
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !2564
  %87 = load double, double* %86, align 8, !dbg !2565
  %88 = fmul double %87, %84, !dbg !2565
  store double %88, double* %86, align 8, !dbg !2565
  br label %101, !dbg !2566

; <label>:89:                                     ; preds = %58
  %90 = load double, double* %4, align 8, !dbg !2567
  %91 = fcmp ogt double %90, 0x4190000000000000, !dbg !2569
  br i1 %91, label %92, label %100, !dbg !2570

; <label>:92:                                     ; preds = %89
  %93 = load double, double* %4, align 8, !dbg !2571
  %94 = fmul double 2.560000e+02, %93, !dbg !2573
  %95 = fmul double %94, 0x3E50000000000000, !dbg !2574
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !2575
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 1, !dbg !2576
  %98 = load double, double* %97, align 8, !dbg !2577
  %99 = fmul double %98, %95, !dbg !2577
  store double %99, double* %97, align 8, !dbg !2577
  br label %100, !dbg !2578

; <label>:100:                                    ; preds = %92, %89
  br label %101

; <label>:101:                                    ; preds = %100, %82
  ret i32 0, !dbg !2579
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_sin_pi4_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2580 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2581, metadata !62), !dbg !2582
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2583, metadata !62), !dbg !2584
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !2585, metadata !62), !dbg !2586
  call void @llvm.dbg.declare(metadata double* %7, metadata !2587, metadata !62), !dbg !2588
  %15 = load double, double* %4, align 8, !dbg !2589
  %16 = call double @sin(double %15) #6, !dbg !2590
  store double %16, double* %7, align 8, !dbg !2588
  call void @llvm.dbg.declare(metadata double* %8, metadata !2591, metadata !62), !dbg !2592
  %17 = load double, double* %4, align 8, !dbg !2593
  %18 = call double @cos(double %17) #6, !dbg !2594
  store double %18, double* %8, align 8, !dbg !2592
  call void @llvm.dbg.declare(metadata double* %9, metadata !2595, metadata !62), !dbg !2596
  %19 = load double, double* %7, align 8, !dbg !2597
  %20 = load double, double* %8, align 8, !dbg !2598
  %21 = fadd double %19, %20, !dbg !2599
  store double %21, double* %9, align 8, !dbg !2596
  call void @llvm.dbg.declare(metadata double* %10, metadata !2600, metadata !62), !dbg !2601
  %22 = load double, double* %7, align 8, !dbg !2602
  %23 = load double, double* %8, align 8, !dbg !2603
  %24 = fsub double %22, %23, !dbg !2604
  store double %24, double* %10, align 8, !dbg !2601
  call void @llvm.dbg.declare(metadata double* %11, metadata !2605, metadata !62), !dbg !2606
  %25 = load double, double* %8, align 8, !dbg !2607
  %26 = call double @fabs(double %25) #1, !dbg !2608
  %27 = load double, double* %7, align 8, !dbg !2609
  %28 = call double @fabs(double %27) #1, !dbg !2610
  %29 = fadd double %26, %28, !dbg !2612
  store double %29, double* %11, align 8, !dbg !2606
  call void @llvm.dbg.declare(metadata double* %12, metadata !2613, metadata !62), !dbg !2614
  call void @llvm.dbg.declare(metadata double* %13, metadata !2615, metadata !62), !dbg !2616
  %30 = load double, double* %5, align 8, !dbg !2617
  %31 = call double @fabs(double %30) #1, !dbg !2619
  %32 = fcmp olt double %31, 0x3F48406003B2AE5A, !dbg !2620
  br i1 %32, label %33, label %53, !dbg !2621

; <label>:33:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %14, metadata !2622, metadata !62), !dbg !2624
  %34 = load double, double* %5, align 8, !dbg !2625
  %35 = load double, double* %5, align 8, !dbg !2626
  %36 = fmul double %34, %35, !dbg !2627
  store double %36, double* %14, align 8, !dbg !2624
  %37 = load double, double* %5, align 8, !dbg !2628
  %38 = load double, double* %14, align 8, !dbg !2629
  %39 = fdiv double %38, 6.000000e+00, !dbg !2630
  %40 = load double, double* %14, align 8, !dbg !2631
  %41 = fdiv double %40, 2.000000e+01, !dbg !2632
  %42 = fsub double 1.000000e+00, %41, !dbg !2633
  %43 = fmul double %39, %42, !dbg !2634
  %44 = fsub double 1.000000e+00, %43, !dbg !2635
  %45 = fmul double %37, %44, !dbg !2636
  store double %45, double* %12, align 8, !dbg !2637
  %46 = load double, double* %14, align 8, !dbg !2638
  %47 = fdiv double %46, 2.000000e+00, !dbg !2639
  %48 = load double, double* %14, align 8, !dbg !2640
  %49 = fdiv double %48, 1.200000e+01, !dbg !2641
  %50 = fsub double 1.000000e+00, %49, !dbg !2642
  %51 = fmul double %47, %50, !dbg !2643
  %52 = fsub double 1.000000e+00, %51, !dbg !2644
  store double %52, double* %13, align 8, !dbg !2645
  br label %58, !dbg !2646

; <label>:53:                                     ; preds = %3
  %54 = load double, double* %5, align 8, !dbg !2647
  %55 = call double @sin(double %54) #6, !dbg !2649
  store double %55, double* %12, align 8, !dbg !2650
  %56 = load double, double* %5, align 8, !dbg !2651
  %57 = call double @cos(double %56) #6, !dbg !2652
  store double %57, double* %13, align 8, !dbg !2653
  br label %58

; <label>:58:                                     ; preds = %53, %33
  %59 = load double, double* %13, align 8, !dbg !2654
  %60 = load double, double* %10, align 8, !dbg !2655
  %61 = fmul double %59, %60, !dbg !2656
  %62 = load double, double* %12, align 8, !dbg !2657
  %63 = load double, double* %9, align 8, !dbg !2658
  %64 = fmul double %62, %63, !dbg !2659
  %65 = fadd double %61, %64, !dbg !2660
  %66 = fdiv double %65, 0x3FF6A09E667F3BCD, !dbg !2661
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !2662
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !2663
  store double %66, double* %68, align 8, !dbg !2664
  %69 = load double, double* %13, align 8, !dbg !2665
  %70 = call double @fabs(double %69) #1, !dbg !2666
  %71 = load double, double* %12, align 8, !dbg !2667
  %72 = call double @fabs(double %71) #1, !dbg !2668
  %73 = fadd double %70, %72, !dbg !2669
  %74 = fmul double 0x3CC0000000000000, %73, !dbg !2670
  %75 = load double, double* %11, align 8, !dbg !2671
  %76 = fmul double %74, %75, !dbg !2672
  %77 = fdiv double %76, 0x3FF6A09E667F3BCD, !dbg !2673
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !2674
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !2675
  store double %77, double* %79, align 8, !dbg !2676
  %80 = load double, double* %4, align 8, !dbg !2677
  %81 = fcmp ogt double %80, 0x4330000000000000, !dbg !2679
  br i1 %81, label %82, label %89, !dbg !2680

; <label>:82:                                     ; preds = %58
  %83 = load double, double* %4, align 8, !dbg !2681
  %84 = fmul double 5.000000e-01, %83, !dbg !2683
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !2684
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !2685
  %87 = load double, double* %86, align 8, !dbg !2686
  %88 = fmul double %87, %84, !dbg !2686
  store double %88, double* %86, align 8, !dbg !2686
  br label %101, !dbg !2687

; <label>:89:                                     ; preds = %58
  %90 = load double, double* %4, align 8, !dbg !2688
  %91 = fcmp ogt double %90, 0x4190000000000000, !dbg !2690
  br i1 %91, label %92, label %100, !dbg !2691

; <label>:92:                                     ; preds = %89
  %93 = load double, double* %4, align 8, !dbg !2692
  %94 = fmul double 2.560000e+02, %93, !dbg !2694
  %95 = fmul double %94, 0x3E50000000000000, !dbg !2695
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !2696
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 1, !dbg !2697
  %98 = load double, double* %97, align 8, !dbg !2698
  %99 = fmul double %98, %95, !dbg !2698
  store double %99, double* %97, align 8, !dbg !2698
  br label %100, !dbg !2699

; <label>:100:                                    ; preds = %92, %89
  br label %101

; <label>:101:                                    ; preds = %100, %82
  ret i32 0, !dbg !2700
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!47 = distinct !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !1, file: !1, line: 92, type: !48, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!48 = !DISubroutineType(types: !49)
!49 = !{!42, !50, !50, !52, !52, !50, !53}
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !55, line: 41, baseType: !56)
!55 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !55, line: 37, size: 128, align: 64, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !56, file: !55, line: 38, baseType: !51, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !56, file: !55, line: 39, baseType: !51, size: 64, align: 64, offset: 64)
!60 = !{}
!61 = !DILocalVariable(name: "nu", arg: 1, scope: !47, file: !1, line: 92, type: !50)
!62 = !DIExpression()
!63 = !DILocation(line: 92, column: 40, scope: !47)
!64 = !DILocalVariable(name: "x", arg: 2, scope: !47, file: !1, line: 92, type: !50)
!65 = !DILocation(line: 92, column: 57, scope: !47)
!66 = !DILocalVariable(name: "sign", arg: 3, scope: !47, file: !1, line: 93, type: !52)
!67 = !DILocation(line: 93, column: 40, scope: !47)
!68 = !DILocalVariable(name: "kmax", arg: 4, scope: !47, file: !1, line: 94, type: !52)
!69 = !DILocation(line: 94, column: 40, scope: !47)
!70 = !DILocalVariable(name: "threshold", arg: 5, scope: !47, file: !1, line: 95, type: !50)
!71 = !DILocation(line: 95, column: 43, scope: !47)
!72 = !DILocalVariable(name: "result", arg: 6, scope: !47, file: !1, line: 96, type: !53)
!73 = !DILocation(line: 96, column: 46, scope: !47)
!74 = !DILocation(line: 101, column: 6, scope: !75)
!75 = distinct !DILexicalBlock(scope: !47, file: !1, line: 101, column: 6)
!76 = !DILocation(line: 101, column: 9, scope: !75)
!77 = !DILocation(line: 101, column: 15, scope: !75)
!78 = !DILocation(line: 101, column: 18, scope: !79)
!79 = !DILexicalBlockFile(scope: !75, file: !1, discriminator: 1)
!80 = !DILocation(line: 101, column: 20, scope: !79)
!81 = !DILocation(line: 101, column: 6, scope: !79)
!82 = !DILocation(line: 102, column: 5, scope: !83)
!83 = distinct !DILexicalBlock(scope: !75, file: !1, line: 101, column: 27)
!84 = distinct !{!84, !82}
!85 = !DILocation(line: 102, column: 5, scope: !86)
!86 = !DILexicalBlockFile(scope: !87, file: !1, discriminator: 1)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 102, column: 5)
!88 = distinct !{!88, !89}
!89 = !DILocation(line: 102, column: 5, scope: !87)
!90 = !DILocation(line: 102, column: 5, scope: !91)
!91 = !DILexicalBlockFile(scope: !92, file: !1, discriminator: 2)
!92 = distinct !DILexicalBlock(scope: !87, file: !1, line: 102, column: 5)
!93 = !DILocation(line: 102, column: 5, scope: !94)
!94 = !DILexicalBlockFile(scope: !87, file: !1, discriminator: 3)
!95 = !DILocation(line: 103, column: 3, scope: !83)
!96 = !DILocation(line: 104, column: 11, scope: !97)
!97 = distinct !DILexicalBlock(scope: !75, file: !1, line: 104, column: 11)
!98 = !DILocation(line: 104, column: 13, scope: !97)
!99 = !DILocation(line: 104, column: 11, scope: !75)
!100 = !DILocation(line: 105, column: 8, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 105, column: 8)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 104, column: 21)
!103 = !DILocation(line: 105, column: 11, scope: !101)
!104 = !DILocation(line: 105, column: 8, scope: !102)
!105 = !DILocation(line: 106, column: 7, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 105, column: 19)
!107 = !DILocation(line: 106, column: 15, scope: !106)
!108 = !DILocation(line: 106, column: 19, scope: !106)
!109 = !DILocation(line: 107, column: 7, scope: !106)
!110 = !DILocation(line: 107, column: 15, scope: !106)
!111 = !DILocation(line: 107, column: 19, scope: !106)
!112 = !DILocation(line: 108, column: 5, scope: !106)
!113 = !DILocation(line: 110, column: 7, scope: !114)
!114 = distinct !DILexicalBlock(scope: !101, file: !1, line: 109, column: 10)
!115 = !DILocation(line: 110, column: 15, scope: !114)
!116 = !DILocation(line: 110, column: 19, scope: !114)
!117 = !DILocation(line: 111, column: 7, scope: !114)
!118 = !DILocation(line: 111, column: 15, scope: !114)
!119 = !DILocation(line: 111, column: 19, scope: !114)
!120 = !DILocation(line: 113, column: 5, scope: !102)
!121 = !DILocalVariable(name: "prefactor", scope: !122, file: !1, line: 116, type: !54)
!122 = distinct !DILexicalBlock(scope: !97, file: !1, line: 115, column: 8)
!123 = !DILocation(line: 116, column: 19, scope: !122)
!124 = !DILocalVariable(name: "sum", scope: !122, file: !1, line: 117, type: !54)
!125 = !DILocation(line: 117, column: 19, scope: !122)
!126 = !DILocalVariable(name: "stat_pre", scope: !122, file: !1, line: 119, type: !42)
!127 = !DILocation(line: 119, column: 9, scope: !122)
!128 = !DILocalVariable(name: "stat_sum", scope: !122, file: !1, line: 120, type: !42)
!129 = !DILocation(line: 120, column: 9, scope: !122)
!130 = !DILocalVariable(name: "stat_mul", scope: !122, file: !1, line: 121, type: !42)
!131 = !DILocation(line: 121, column: 9, scope: !122)
!132 = !DILocation(line: 123, column: 8, scope: !133)
!133 = distinct !DILexicalBlock(scope: !122, file: !1, line: 123, column: 8)
!134 = !DILocation(line: 123, column: 11, scope: !133)
!135 = !DILocation(line: 123, column: 8, scope: !122)
!136 = !DILocation(line: 124, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 123, column: 19)
!138 = !DILocation(line: 124, column: 21, scope: !137)
!139 = !DILocation(line: 125, column: 17, scope: !137)
!140 = !DILocation(line: 125, column: 21, scope: !137)
!141 = !DILocation(line: 126, column: 16, scope: !137)
!142 = !DILocation(line: 127, column: 5, scope: !137)
!143 = !DILocation(line: 128, column: 13, scope: !144)
!144 = distinct !DILexicalBlock(scope: !133, file: !1, line: 128, column: 13)
!145 = !DILocation(line: 128, column: 16, scope: !144)
!146 = !DILocation(line: 128, column: 13, scope: !133)
!147 = !DILocalVariable(name: "N", scope: !148, file: !1, line: 133, type: !52)
!148 = distinct !DILexicalBlock(scope: !144, file: !1, line: 128, column: 29)
!149 = !DILocation(line: 133, column: 20, scope: !148)
!150 = !DILocation(line: 133, column: 35, scope: !148)
!151 = !DILocation(line: 133, column: 38, scope: !148)
!152 = !DILocation(line: 133, column: 29, scope: !148)
!153 = !DILocation(line: 133, column: 24, scope: !148)
!154 = !DILocalVariable(name: "f", scope: !148, file: !1, line: 134, type: !50)
!155 = !DILocation(line: 134, column: 20, scope: !148)
!156 = !DILocation(line: 134, column: 24, scope: !148)
!157 = !DILocation(line: 134, column: 29, scope: !148)
!158 = !DILocation(line: 134, column: 27, scope: !148)
!159 = !DILocalVariable(name: "poch_factor", scope: !148, file: !1, line: 135, type: !54)
!160 = !DILocation(line: 135, column: 21, scope: !148)
!161 = !DILocalVariable(name: "tc_factor", scope: !148, file: !1, line: 136, type: !54)
!162 = !DILocation(line: 136, column: 21, scope: !148)
!163 = !DILocalVariable(name: "stat_poch", scope: !148, file: !1, line: 137, type: !52)
!164 = !DILocation(line: 137, column: 17, scope: !148)
!165 = !DILocation(line: 137, column: 43, scope: !148)
!166 = !DILocation(line: 137, column: 44, scope: !148)
!167 = !DILocation(line: 137, column: 50, scope: !148)
!168 = !DILocation(line: 137, column: 29, scope: !148)
!169 = !DILocalVariable(name: "stat_tc", scope: !148, file: !1, line: 138, type: !52)
!170 = !DILocation(line: 138, column: 17, scope: !148)
!171 = !DILocation(line: 138, column: 50, scope: !148)
!172 = !DILocation(line: 138, column: 57, scope: !148)
!173 = !DILocation(line: 138, column: 56, scope: !148)
!174 = !DILocation(line: 138, column: 29, scope: !148)
!175 = !DILocalVariable(name: "p", scope: !148, file: !1, line: 139, type: !50)
!176 = !DILocation(line: 139, column: 20, scope: !148)
!177 = !DILocation(line: 139, column: 32, scope: !148)
!178 = !DILocation(line: 139, column: 31, scope: !148)
!179 = !DILocation(line: 139, column: 34, scope: !148)
!180 = !DILocation(line: 139, column: 24, scope: !148)
!181 = !DILocation(line: 140, column: 34, scope: !148)
!182 = !DILocation(line: 140, column: 40, scope: !148)
!183 = !DILocation(line: 140, column: 38, scope: !148)
!184 = !DILocation(line: 140, column: 56, scope: !148)
!185 = !DILocation(line: 140, column: 42, scope: !148)
!186 = !DILocation(line: 140, column: 17, scope: !148)
!187 = !DILocation(line: 140, column: 22, scope: !148)
!188 = !DILocation(line: 141, column: 34, scope: !148)
!189 = !DILocation(line: 141, column: 40, scope: !148)
!190 = !DILocation(line: 141, column: 38, scope: !148)
!191 = !DILocation(line: 141, column: 56, scope: !148)
!192 = !DILocation(line: 141, column: 42, scope: !148)
!193 = !DILocation(line: 141, column: 17, scope: !148)
!194 = !DILocation(line: 141, column: 22, scope: !148)
!195 = !DILocation(line: 142, column: 39, scope: !148)
!196 = !DILocation(line: 142, column: 24, scope: !148)
!197 = !DILocation(line: 142, column: 58, scope: !148)
!198 = !DILocation(line: 142, column: 44, scope: !148)
!199 = !DILocation(line: 142, column: 76, scope: !148)
!200 = !DILocation(line: 142, column: 62, scope: !148)
!201 = !DILocation(line: 142, column: 17, scope: !148)
!202 = !DILocation(line: 142, column: 21, scope: !148)
!203 = !DILocation(line: 143, column: 63, scope: !148)
!204 = !DILocation(line: 143, column: 48, scope: !148)
!205 = !DILocation(line: 143, column: 46, scope: !148)
!206 = !DILocation(line: 143, column: 17, scope: !148)
!207 = !DILocation(line: 143, column: 21, scope: !148)
!208 = !DILocation(line: 144, column: 18, scope: !148)
!209 = !DILocation(line: 144, column: 18, scope: !210)
!210 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 1)
!211 = !DILocation(line: 144, column: 18, scope: !212)
!212 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 2)
!213 = !DILocation(line: 144, column: 18, scope: !214)
!214 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 3)
!215 = !DILocation(line: 144, column: 18, scope: !216)
!216 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 4)
!217 = !DILocation(line: 144, column: 18, scope: !218)
!218 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 5)
!219 = !DILocation(line: 144, column: 18, scope: !220)
!220 = !DILexicalBlockFile(scope: !148, file: !1, discriminator: 6)
!221 = !DILocation(line: 144, column: 16, scope: !220)
!222 = !DILocation(line: 145, column: 5, scope: !148)
!223 = !DILocalVariable(name: "lg", scope: !224, file: !1, line: 147, type: !54)
!224 = distinct !DILexicalBlock(scope: !144, file: !1, line: 146, column: 10)
!225 = !DILocation(line: 147, column: 21, scope: !224)
!226 = !DILocalVariable(name: "stat_lg", scope: !224, file: !1, line: 148, type: !52)
!227 = !DILocation(line: 148, column: 17, scope: !224)
!228 = !DILocation(line: 148, column: 44, scope: !224)
!229 = !DILocation(line: 148, column: 46, scope: !224)
!230 = !DILocation(line: 148, column: 27, scope: !224)
!231 = !DILocalVariable(name: "term1", scope: !224, file: !1, line: 149, type: !50)
!232 = !DILocation(line: 149, column: 20, scope: !224)
!233 = !DILocation(line: 149, column: 29, scope: !224)
!234 = !DILocation(line: 149, column: 40, scope: !224)
!235 = !DILocation(line: 149, column: 39, scope: !224)
!236 = !DILocation(line: 149, column: 32, scope: !224)
!237 = !DILocation(line: 149, column: 31, scope: !224)
!238 = !DILocalVariable(name: "term2", scope: !224, file: !1, line: 150, type: !50)
!239 = !DILocation(line: 150, column: 20, scope: !224)
!240 = !DILocation(line: 150, column: 32, scope: !224)
!241 = !DILocalVariable(name: "ln_pre", scope: !224, file: !1, line: 151, type: !50)
!242 = !DILocation(line: 151, column: 20, scope: !224)
!243 = !DILocation(line: 151, column: 29, scope: !224)
!244 = !DILocation(line: 151, column: 37, scope: !224)
!245 = !DILocation(line: 151, column: 35, scope: !224)
!246 = !DILocalVariable(name: "ln_pre_err", scope: !224, file: !1, line: 152, type: !50)
!247 = !DILocation(line: 152, column: 20, scope: !224)
!248 = !DILocation(line: 152, column: 57, scope: !224)
!249 = !DILocation(line: 152, column: 52, scope: !224)
!250 = !DILocation(line: 152, column: 69, scope: !224)
!251 = !DILocation(line: 152, column: 64, scope: !252)
!252 = !DILexicalBlockFile(scope: !224, file: !1, discriminator: 1)
!253 = !DILocation(line: 152, column: 63, scope: !224)
!254 = !DILocation(line: 152, column: 49, scope: !224)
!255 = !DILocation(line: 152, column: 82, scope: !224)
!256 = !DILocation(line: 152, column: 77, scope: !224)
!257 = !DILocalVariable(name: "stat_ex", scope: !224, file: !1, line: 153, type: !52)
!258 = !DILocation(line: 153, column: 17, scope: !224)
!259 = !DILocation(line: 153, column: 44, scope: !224)
!260 = !DILocation(line: 153, column: 52, scope: !224)
!261 = !DILocation(line: 153, column: 27, scope: !224)
!262 = !DILocation(line: 154, column: 18, scope: !224)
!263 = !DILocation(line: 154, column: 18, scope: !252)
!264 = !DILocation(line: 154, column: 18, scope: !265)
!265 = !DILexicalBlockFile(scope: !224, file: !1, discriminator: 2)
!266 = !DILocation(line: 154, column: 18, scope: !267)
!267 = !DILexicalBlockFile(scope: !224, file: !1, discriminator: 3)
!268 = !DILocation(line: 154, column: 18, scope: !269)
!269 = !DILexicalBlockFile(scope: !224, file: !1, discriminator: 4)
!270 = !DILocation(line: 154, column: 18, scope: !271)
!271 = !DILexicalBlockFile(scope: !224, file: !1, discriminator: 5)
!272 = !DILocation(line: 154, column: 18, scope: !273)
!273 = !DILexicalBlockFile(scope: !224, file: !1, discriminator: 6)
!274 = !DILocation(line: 154, column: 16, scope: !273)
!275 = !DILocalVariable(name: "y", scope: !276, file: !1, line: 162, type: !50)
!276 = distinct !DILexicalBlock(scope: !122, file: !1, line: 161, column: 5)
!277 = !DILocation(line: 162, column: 20, scope: !276)
!278 = !DILocation(line: 162, column: 24, scope: !276)
!279 = !DILocation(line: 162, column: 29, scope: !276)
!280 = !DILocation(line: 162, column: 38, scope: !276)
!281 = !DILocation(line: 162, column: 36, scope: !276)
!282 = !DILocation(line: 162, column: 40, scope: !276)
!283 = !DILocation(line: 162, column: 39, scope: !276)
!284 = !DILocalVariable(name: "sumk", scope: !276, file: !1, line: 163, type: !51)
!285 = !DILocation(line: 163, column: 14, scope: !276)
!286 = !DILocalVariable(name: "term", scope: !276, file: !1, line: 164, type: !51)
!287 = !DILocation(line: 164, column: 14, scope: !276)
!288 = !DILocalVariable(name: "k", scope: !276, file: !1, line: 165, type: !42)
!289 = !DILocation(line: 165, column: 11, scope: !276)
!290 = !DILocation(line: 167, column: 12, scope: !291)
!291 = distinct !DILexicalBlock(scope: !276, file: !1, line: 167, column: 7)
!292 = !DILocation(line: 167, column: 11, scope: !291)
!293 = !DILocation(line: 167, column: 16, scope: !294)
!294 = !DILexicalBlockFile(scope: !295, file: !1, discriminator: 1)
!295 = distinct !DILexicalBlock(scope: !291, file: !1, line: 167, column: 7)
!296 = !DILocation(line: 167, column: 19, scope: !294)
!297 = !DILocation(line: 167, column: 17, scope: !294)
!298 = !DILocation(line: 167, column: 7, scope: !294)
!299 = !DILocation(line: 168, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !295, file: !1, line: 167, column: 30)
!301 = !DILocation(line: 168, column: 21, scope: !300)
!302 = !DILocation(line: 168, column: 24, scope: !300)
!303 = !DILocation(line: 168, column: 23, scope: !300)
!304 = !DILocation(line: 168, column: 27, scope: !300)
!305 = !DILocation(line: 168, column: 26, scope: !300)
!306 = !DILocation(line: 168, column: 18, scope: !300)
!307 = !DILocation(line: 168, column: 14, scope: !300)
!308 = !DILocation(line: 169, column: 17, scope: !300)
!309 = !DILocation(line: 169, column: 14, scope: !300)
!310 = !DILocation(line: 170, column: 17, scope: !311)
!311 = distinct !DILexicalBlock(scope: !300, file: !1, line: 170, column: 12)
!312 = !DILocation(line: 170, column: 22, scope: !311)
!313 = !DILocation(line: 170, column: 21, scope: !311)
!314 = !DILocation(line: 170, column: 12, scope: !311)
!315 = !DILocation(line: 170, column: 30, scope: !311)
!316 = !DILocation(line: 170, column: 28, scope: !311)
!317 = !DILocation(line: 170, column: 12, scope: !300)
!318 = !DILocation(line: 170, column: 41, scope: !319)
!319 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 1)
!320 = !DILocation(line: 171, column: 7, scope: !300)
!321 = !DILocation(line: 167, column: 26, scope: !322)
!322 = !DILexicalBlockFile(scope: !295, file: !1, discriminator: 2)
!323 = !DILocation(line: 167, column: 7, scope: !322)
!324 = distinct !{!324, !325}
!325 = !DILocation(line: 167, column: 7, scope: !276)
!326 = !DILocation(line: 173, column: 17, scope: !276)
!327 = !DILocation(line: 173, column: 11, scope: !276)
!328 = !DILocation(line: 173, column: 15, scope: !276)
!329 = !DILocation(line: 174, column: 17, scope: !276)
!330 = !DILocation(line: 174, column: 34, scope: !276)
!331 = !DILocation(line: 174, column: 29, scope: !276)
!332 = !DILocation(line: 174, column: 27, scope: !276)
!333 = !DILocation(line: 174, column: 11, scope: !276)
!334 = !DILocation(line: 174, column: 15, scope: !276)
!335 = !DILocation(line: 176, column: 20, scope: !276)
!336 = !DILocation(line: 176, column: 25, scope: !276)
!337 = !DILocation(line: 176, column: 22, scope: !276)
!338 = !DILocation(line: 176, column: 16, scope: !276)
!339 = !DILocation(line: 179, column: 48, scope: !122)
!340 = !DILocation(line: 179, column: 63, scope: !122)
!341 = !DILocation(line: 180, column: 45, scope: !122)
!342 = !DILocation(line: 180, column: 54, scope: !122)
!343 = !DILocation(line: 181, column: 41, scope: !122)
!344 = !DILocation(line: 179, column: 16, scope: !122)
!345 = !DILocation(line: 179, column: 14, scope: !122)
!346 = !DILocation(line: 183, column: 12, scope: !122)
!347 = !DILocation(line: 183, column: 12, scope: !348)
!348 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 1)
!349 = !DILocation(line: 183, column: 12, scope: !350)
!350 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 2)
!351 = !DILocation(line: 183, column: 12, scope: !352)
!352 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 3)
!353 = !DILocation(line: 183, column: 12, scope: !354)
!354 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 4)
!355 = !DILocation(line: 183, column: 12, scope: !356)
!356 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 5)
!357 = !DILocation(line: 183, column: 12, scope: !358)
!358 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 6)
!359 = !DILocation(line: 183, column: 12, scope: !360)
!360 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 7)
!361 = !DILocation(line: 183, column: 12, scope: !362)
!362 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 8)
!363 = !DILocation(line: 183, column: 12, scope: !364)
!364 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 9)
!365 = !DILocation(line: 183, column: 5, scope: !364)
!366 = !DILocation(line: 185, column: 1, scope: !47)
!367 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnu_asympx_e", scope: !1, file: !1, line: 215, type: !368, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!368 = !DISubroutineType(types: !369)
!369 = !{!42, !50, !50, !53}
!370 = !DILocalVariable(name: "nu", arg: 1, scope: !367, file: !1, line: 215, type: !50)
!371 = !DILocation(line: 215, column: 41, scope: !367)
!372 = !DILocalVariable(name: "x", arg: 2, scope: !367, file: !1, line: 215, type: !50)
!373 = !DILocation(line: 215, column: 58, scope: !367)
!374 = !DILocalVariable(name: "result", arg: 3, scope: !367, file: !1, line: 215, type: !53)
!375 = !DILocation(line: 215, column: 77, scope: !367)
!376 = !DILocalVariable(name: "mu", scope: !367, file: !1, line: 217, type: !51)
!377 = !DILocation(line: 217, column: 10, scope: !367)
!378 = !DILocation(line: 217, column: 20, scope: !367)
!379 = !DILocation(line: 217, column: 19, scope: !367)
!380 = !DILocation(line: 217, column: 23, scope: !367)
!381 = !DILocation(line: 217, column: 22, scope: !367)
!382 = !DILocalVariable(name: "chi", scope: !367, file: !1, line: 218, type: !51)
!383 = !DILocation(line: 218, column: 10, scope: !367)
!384 = !DILocation(line: 218, column: 16, scope: !367)
!385 = !DILocation(line: 218, column: 25, scope: !367)
!386 = !DILocation(line: 218, column: 24, scope: !367)
!387 = !DILocation(line: 218, column: 28, scope: !367)
!388 = !DILocation(line: 218, column: 35, scope: !367)
!389 = !DILocation(line: 218, column: 18, scope: !367)
!390 = !DILocalVariable(name: "P", scope: !367, file: !1, line: 220, type: !51)
!391 = !DILocation(line: 220, column: 10, scope: !367)
!392 = !DILocalVariable(name: "Q", scope: !367, file: !1, line: 221, type: !51)
!393 = !DILocation(line: 221, column: 10, scope: !367)
!394 = !DILocalVariable(name: "k", scope: !367, file: !1, line: 223, type: !51)
!395 = !DILocation(line: 223, column: 10, scope: !367)
!396 = !DILocalVariable(name: "t", scope: !367, file: !1, line: 223, type: !51)
!397 = !DILocation(line: 223, column: 17, scope: !367)
!398 = !DILocalVariable(name: "convP", scope: !367, file: !1, line: 224, type: !42)
!399 = !DILocation(line: 224, column: 7, scope: !367)
!400 = !DILocalVariable(name: "convQ", scope: !367, file: !1, line: 224, type: !42)
!401 = !DILocation(line: 224, column: 14, scope: !367)
!402 = !DILocation(line: 226, column: 3, scope: !367)
!403 = distinct !{!403, !402}
!404 = !DILocation(line: 228, column: 13, scope: !405)
!405 = distinct !DILexicalBlock(scope: !367, file: !1, line: 227, column: 5)
!406 = !DILocation(line: 228, column: 15, scope: !405)
!407 = !DILocation(line: 228, column: 12, scope: !405)
!408 = !DILocation(line: 228, column: 12, scope: !409)
!409 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 1)
!410 = !DILocation(line: 228, column: 29, scope: !411)
!411 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 2)
!412 = !DILocation(line: 228, column: 37, scope: !411)
!413 = !DILocation(line: 228, column: 36, scope: !411)
!414 = !DILocation(line: 228, column: 38, scope: !411)
!415 = !DILocation(line: 228, column: 45, scope: !411)
!416 = !DILocation(line: 228, column: 44, scope: !411)
!417 = !DILocation(line: 228, column: 46, scope: !411)
!418 = !DILocation(line: 228, column: 41, scope: !411)
!419 = !DILocation(line: 228, column: 32, scope: !411)
!420 = !DILocation(line: 228, column: 27, scope: !411)
!421 = !DILocation(line: 228, column: 54, scope: !411)
!422 = !DILocation(line: 228, column: 63, scope: !411)
!423 = !DILocation(line: 228, column: 61, scope: !411)
!424 = !DILocation(line: 228, column: 56, scope: !411)
!425 = !DILocation(line: 228, column: 51, scope: !411)
!426 = !DILocation(line: 228, column: 12, scope: !411)
!427 = !DILocation(line: 228, column: 12, scope: !428)
!428 = !DILexicalBlockFile(scope: !405, file: !1, discriminator: 3)
!429 = !DILocation(line: 228, column: 9, scope: !428)
!430 = !DILocation(line: 229, column: 20, scope: !405)
!431 = !DILocation(line: 229, column: 15, scope: !405)
!432 = !DILocation(line: 229, column: 48, scope: !405)
!433 = !DILocation(line: 229, column: 43, scope: !409)
!434 = !DILocation(line: 229, column: 41, scope: !405)
!435 = !DILocation(line: 229, column: 23, scope: !405)
!436 = !DILocation(line: 229, column: 13, scope: !405)
!437 = !DILocation(line: 230, column: 12, scope: !405)
!438 = !DILocation(line: 230, column: 9, scope: !405)
!439 = !DILocation(line: 232, column: 8, scope: !405)
!440 = !DILocation(line: 234, column: 13, scope: !405)
!441 = !DILocation(line: 234, column: 21, scope: !405)
!442 = !DILocation(line: 234, column: 20, scope: !405)
!443 = !DILocation(line: 234, column: 22, scope: !405)
!444 = !DILocation(line: 234, column: 29, scope: !405)
!445 = !DILocation(line: 234, column: 28, scope: !405)
!446 = !DILocation(line: 234, column: 30, scope: !405)
!447 = !DILocation(line: 234, column: 25, scope: !405)
!448 = !DILocation(line: 234, column: 16, scope: !405)
!449 = !DILocation(line: 234, column: 38, scope: !405)
!450 = !DILocation(line: 234, column: 47, scope: !405)
!451 = !DILocation(line: 234, column: 45, scope: !405)
!452 = !DILocation(line: 234, column: 40, scope: !405)
!453 = !DILocation(line: 234, column: 35, scope: !405)
!454 = !DILocation(line: 234, column: 9, scope: !405)
!455 = !DILocation(line: 235, column: 20, scope: !405)
!456 = !DILocation(line: 235, column: 15, scope: !405)
!457 = !DILocation(line: 235, column: 48, scope: !405)
!458 = !DILocation(line: 235, column: 43, scope: !409)
!459 = !DILocation(line: 235, column: 41, scope: !405)
!460 = !DILocation(line: 235, column: 23, scope: !405)
!461 = !DILocation(line: 235, column: 13, scope: !405)
!462 = !DILocation(line: 236, column: 12, scope: !405)
!463 = !DILocation(line: 236, column: 9, scope: !405)
!464 = !DILocation(line: 241, column: 11, scope: !465)
!465 = distinct !DILexicalBlock(scope: !405, file: !1, line: 241, column: 11)
!466 = !DILocation(line: 241, column: 17, scope: !465)
!467 = !DILocation(line: 241, column: 20, scope: !468)
!468 = !DILexicalBlockFile(scope: !465, file: !1, discriminator: 1)
!469 = !DILocation(line: 241, column: 26, scope: !468)
!470 = !DILocation(line: 241, column: 29, scope: !471)
!471 = !DILexicalBlockFile(scope: !465, file: !1, discriminator: 2)
!472 = !DILocation(line: 241, column: 34, scope: !471)
!473 = !DILocation(line: 241, column: 37, scope: !471)
!474 = !DILocation(line: 241, column: 31, scope: !471)
!475 = !DILocation(line: 241, column: 11, scope: !471)
!476 = !DILocation(line: 242, column: 9, scope: !465)
!477 = !DILocation(line: 244, column: 8, scope: !405)
!478 = !DILocation(line: 245, column: 5, scope: !405)
!479 = !DILocation(line: 246, column: 10, scope: !367)
!480 = !DILocation(line: 246, column: 12, scope: !367)
!481 = !DILocation(line: 245, column: 5, scope: !409)
!482 = !DILocalVariable(name: "pre", scope: !483, file: !1, line: 249, type: !51)
!483 = distinct !DILexicalBlock(scope: !367, file: !1, line: 248, column: 3)
!484 = !DILocation(line: 249, column: 12, scope: !483)
!485 = !DILocation(line: 249, column: 33, scope: !483)
!486 = !DILocation(line: 249, column: 32, scope: !483)
!487 = !DILocation(line: 249, column: 26, scope: !483)
!488 = !DILocation(line: 249, column: 18, scope: !483)
!489 = !DILocalVariable(name: "c", scope: !483, file: !1, line: 250, type: !51)
!490 = !DILocation(line: 250, column: 12, scope: !483)
!491 = !DILocation(line: 250, column: 22, scope: !483)
!492 = !DILocation(line: 250, column: 18, scope: !483)
!493 = !DILocalVariable(name: "s", scope: !483, file: !1, line: 251, type: !51)
!494 = !DILocation(line: 251, column: 12, scope: !483)
!495 = !DILocation(line: 251, column: 22, scope: !483)
!496 = !DILocation(line: 251, column: 18, scope: !483)
!497 = !DILocation(line: 253, column: 20, scope: !483)
!498 = !DILocation(line: 253, column: 27, scope: !483)
!499 = !DILocation(line: 253, column: 29, scope: !483)
!500 = !DILocation(line: 253, column: 28, scope: !483)
!501 = !DILocation(line: 253, column: 33, scope: !483)
!502 = !DILocation(line: 253, column: 35, scope: !483)
!503 = !DILocation(line: 253, column: 34, scope: !483)
!504 = !DILocation(line: 253, column: 31, scope: !483)
!505 = !DILocation(line: 253, column: 24, scope: !483)
!506 = !DILocation(line: 253, column: 5, scope: !483)
!507 = !DILocation(line: 253, column: 13, scope: !483)
!508 = !DILocation(line: 253, column: 18, scope: !483)
!509 = !DILocation(line: 254, column: 20, scope: !483)
!510 = !DILocation(line: 254, column: 24, scope: !483)
!511 = !DILocation(line: 254, column: 50, scope: !483)
!512 = !DILocation(line: 254, column: 52, scope: !483)
!513 = !DILocation(line: 254, column: 51, scope: !483)
!514 = !DILocation(line: 254, column: 45, scope: !483)
!515 = !DILocation(line: 254, column: 62, scope: !483)
!516 = !DILocation(line: 254, column: 64, scope: !483)
!517 = !DILocation(line: 254, column: 63, scope: !483)
!518 = !DILocation(line: 254, column: 57, scope: !519)
!519 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 1)
!520 = !DILocation(line: 254, column: 55, scope: !483)
!521 = !DILocation(line: 254, column: 74, scope: !483)
!522 = !DILocation(line: 254, column: 69, scope: !523)
!523 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 2)
!524 = !DILocation(line: 254, column: 67, scope: !483)
!525 = !DILocation(line: 254, column: 42, scope: !483)
!526 = !DILocation(line: 254, column: 90, scope: !483)
!527 = !DILocation(line: 254, column: 85, scope: !528)
!528 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 3)
!529 = !DILocation(line: 254, column: 83, scope: !483)
!530 = !DILocation(line: 254, column: 78, scope: !483)
!531 = !DILocation(line: 254, column: 5, scope: !483)
!532 = !DILocation(line: 254, column: 13, scope: !483)
!533 = !DILocation(line: 254, column: 18, scope: !483)
!534 = !DILocation(line: 258, column: 3, scope: !367)
!535 = distinct !DISubprogram(name: "gsl_sf_bessel_Ynu_asympx_e", scope: !1, file: !1, line: 265, type: !368, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!536 = !DILocalVariable(name: "nu", arg: 1, scope: !535, file: !1, line: 265, type: !50)
!537 = !DILocation(line: 265, column: 41, scope: !535)
!538 = !DILocalVariable(name: "x", arg: 2, scope: !535, file: !1, line: 265, type: !50)
!539 = !DILocation(line: 265, column: 58, scope: !535)
!540 = !DILocalVariable(name: "result", arg: 3, scope: !535, file: !1, line: 265, type: !53)
!541 = !DILocation(line: 265, column: 77, scope: !535)
!542 = !DILocalVariable(name: "ampl", scope: !535, file: !1, line: 267, type: !51)
!543 = !DILocation(line: 267, column: 10, scope: !535)
!544 = !DILocalVariable(name: "theta", scope: !535, file: !1, line: 268, type: !51)
!545 = !DILocation(line: 268, column: 10, scope: !535)
!546 = !DILocalVariable(name: "alpha", scope: !535, file: !1, line: 269, type: !51)
!547 = !DILocation(line: 269, column: 10, scope: !535)
!548 = !DILocation(line: 269, column: 18, scope: !535)
!549 = !DILocalVariable(name: "beta", scope: !535, file: !1, line: 270, type: !51)
!550 = !DILocation(line: 270, column: 10, scope: !535)
!551 = !DILocation(line: 270, column: 23, scope: !535)
!552 = !DILocation(line: 270, column: 22, scope: !535)
!553 = !DILocation(line: 270, column: 25, scope: !535)
!554 = !DILocalVariable(name: "stat_a", scope: !535, file: !1, line: 271, type: !42)
!555 = !DILocation(line: 271, column: 7, scope: !535)
!556 = !DILocation(line: 271, column: 42, scope: !535)
!557 = !DILocation(line: 271, column: 46, scope: !535)
!558 = !DILocation(line: 271, column: 16, scope: !535)
!559 = !DILocalVariable(name: "stat_t", scope: !535, file: !1, line: 272, type: !42)
!560 = !DILocation(line: 272, column: 7, scope: !535)
!561 = !DILocation(line: 272, column: 51, scope: !535)
!562 = !DILocation(line: 272, column: 55, scope: !535)
!563 = !DILocation(line: 272, column: 16, scope: !535)
!564 = !DILocalVariable(name: "sin_alpha", scope: !535, file: !1, line: 273, type: !51)
!565 = !DILocation(line: 273, column: 10, scope: !535)
!566 = !DILocation(line: 273, column: 26, scope: !535)
!567 = !DILocation(line: 273, column: 22, scope: !535)
!568 = !DILocalVariable(name: "cos_alpha", scope: !535, file: !1, line: 274, type: !51)
!569 = !DILocation(line: 274, column: 10, scope: !535)
!570 = !DILocation(line: 274, column: 26, scope: !535)
!571 = !DILocation(line: 274, column: 22, scope: !535)
!572 = !DILocalVariable(name: "sin_chi", scope: !535, file: !1, line: 275, type: !51)
!573 = !DILocation(line: 275, column: 10, scope: !535)
!574 = !DILocation(line: 275, column: 26, scope: !535)
!575 = !DILocation(line: 275, column: 33, scope: !535)
!576 = !DILocation(line: 275, column: 31, scope: !535)
!577 = !DILocation(line: 275, column: 22, scope: !535)
!578 = !DILocalVariable(name: "cos_chi", scope: !535, file: !1, line: 276, type: !51)
!579 = !DILocation(line: 276, column: 10, scope: !535)
!580 = !DILocation(line: 276, column: 26, scope: !535)
!581 = !DILocation(line: 276, column: 33, scope: !535)
!582 = !DILocation(line: 276, column: 31, scope: !535)
!583 = !DILocation(line: 276, column: 22, scope: !535)
!584 = !DILocalVariable(name: "sin_term", scope: !535, file: !1, line: 277, type: !51)
!585 = !DILocation(line: 277, column: 10, scope: !535)
!586 = !DILocation(line: 277, column: 25, scope: !535)
!587 = !DILocation(line: 277, column: 37, scope: !535)
!588 = !DILocation(line: 277, column: 35, scope: !535)
!589 = !DILocation(line: 277, column: 47, scope: !535)
!590 = !DILocation(line: 277, column: 57, scope: !535)
!591 = !DILocation(line: 277, column: 55, scope: !535)
!592 = !DILocation(line: 277, column: 45, scope: !535)
!593 = !DILocalVariable(name: "sin_term_mag", scope: !535, file: !1, line: 278, type: !51)
!594 = !DILocation(line: 278, column: 10, scope: !535)
!595 = !DILocation(line: 278, column: 30, scope: !535)
!596 = !DILocation(line: 278, column: 42, scope: !535)
!597 = !DILocation(line: 278, column: 40, scope: !535)
!598 = !DILocation(line: 278, column: 25, scope: !535)
!599 = !DILocation(line: 278, column: 58, scope: !535)
!600 = !DILocation(line: 278, column: 68, scope: !535)
!601 = !DILocation(line: 278, column: 66, scope: !535)
!602 = !DILocation(line: 278, column: 53, scope: !603)
!603 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 1)
!604 = !DILocation(line: 278, column: 51, scope: !535)
!605 = !DILocation(line: 279, column: 18, scope: !535)
!606 = !DILocation(line: 279, column: 25, scope: !535)
!607 = !DILocation(line: 279, column: 23, scope: !535)
!608 = !DILocation(line: 279, column: 3, scope: !535)
!609 = !DILocation(line: 279, column: 11, scope: !535)
!610 = !DILocation(line: 279, column: 16, scope: !535)
!611 = !DILocation(line: 280, column: 23, scope: !535)
!612 = !DILocation(line: 280, column: 18, scope: !535)
!613 = !DILocation(line: 280, column: 29, scope: !535)
!614 = !DILocation(line: 280, column: 49, scope: !535)
!615 = !DILocation(line: 280, column: 47, scope: !535)
!616 = !DILocation(line: 280, column: 3, scope: !535)
!617 = !DILocation(line: 280, column: 11, scope: !535)
!618 = !DILocation(line: 280, column: 16, scope: !535)
!619 = !DILocation(line: 281, column: 23, scope: !535)
!620 = !DILocation(line: 281, column: 31, scope: !535)
!621 = !DILocation(line: 281, column: 18, scope: !535)
!622 = !DILocation(line: 281, column: 36, scope: !535)
!623 = !DILocation(line: 281, column: 42, scope: !535)
!624 = !DILocation(line: 281, column: 3, scope: !535)
!625 = !DILocation(line: 281, column: 11, scope: !535)
!626 = !DILocation(line: 281, column: 15, scope: !535)
!627 = !DILocation(line: 283, column: 11, scope: !628)
!628 = distinct !DILexicalBlock(scope: !535, file: !1, line: 283, column: 6)
!629 = !DILocation(line: 283, column: 6, scope: !628)
!630 = !DILocation(line: 283, column: 18, scope: !628)
!631 = !DILocation(line: 283, column: 6, scope: !535)
!632 = !DILocation(line: 284, column: 31, scope: !633)
!633 = distinct !DILexicalBlock(scope: !628, file: !1, line: 283, column: 41)
!634 = !DILocation(line: 284, column: 26, scope: !633)
!635 = !DILocation(line: 284, column: 24, scope: !633)
!636 = !DILocation(line: 284, column: 5, scope: !633)
!637 = !DILocation(line: 284, column: 13, scope: !633)
!638 = !DILocation(line: 284, column: 17, scope: !633)
!639 = !DILocation(line: 285, column: 3, scope: !633)
!640 = !DILocation(line: 286, column: 16, scope: !641)
!641 = distinct !DILexicalBlock(scope: !628, file: !1, line: 286, column: 11)
!642 = !DILocation(line: 286, column: 11, scope: !641)
!643 = !DILocation(line: 286, column: 23, scope: !641)
!644 = !DILocation(line: 286, column: 11, scope: !628)
!645 = !DILocation(line: 287, column: 33, scope: !646)
!646 = distinct !DILexicalBlock(scope: !641, file: !1, line: 286, column: 51)
!647 = !DILocation(line: 287, column: 28, scope: !646)
!648 = !DILocation(line: 287, column: 26, scope: !646)
!649 = !DILocation(line: 287, column: 40, scope: !646)
!650 = !DILocation(line: 287, column: 5, scope: !646)
!651 = !DILocation(line: 287, column: 13, scope: !646)
!652 = !DILocation(line: 287, column: 17, scope: !646)
!653 = !DILocation(line: 288, column: 3, scope: !646)
!654 = !DILocation(line: 290, column: 10, scope: !535)
!655 = !DILocation(line: 290, column: 10, scope: !603)
!656 = !DILocation(line: 290, column: 10, scope: !657)
!657 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 2)
!658 = !DILocation(line: 290, column: 10, scope: !659)
!659 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 3)
!660 = !DILocation(line: 290, column: 10, scope: !661)
!661 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 4)
!662 = !DILocation(line: 290, column: 10, scope: !663)
!663 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 5)
!664 = !DILocation(line: 290, column: 10, scope: !665)
!665 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 6)
!666 = !DILocation(line: 290, column: 3, scope: !665)
!667 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_asympx_e", scope: !1, file: !1, line: 297, type: !368, isLocal: false, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!668 = !DILocalVariable(name: "nu", arg: 1, scope: !667, file: !1, line: 297, type: !50)
!669 = !DILocation(line: 297, column: 48, scope: !667)
!670 = !DILocalVariable(name: "x", arg: 2, scope: !667, file: !1, line: 297, type: !50)
!671 = !DILocation(line: 297, column: 65, scope: !667)
!672 = !DILocalVariable(name: "result", arg: 3, scope: !667, file: !1, line: 297, type: !53)
!673 = !DILocation(line: 297, column: 84, scope: !667)
!674 = !DILocalVariable(name: "mu", scope: !667, file: !1, line: 299, type: !51)
!675 = !DILocation(line: 299, column: 10, scope: !667)
!676 = !DILocation(line: 299, column: 21, scope: !667)
!677 = !DILocation(line: 299, column: 20, scope: !667)
!678 = !DILocation(line: 299, column: 24, scope: !667)
!679 = !DILocation(line: 299, column: 23, scope: !667)
!680 = !DILocalVariable(name: "mum1", scope: !667, file: !1, line: 300, type: !51)
!681 = !DILocation(line: 300, column: 10, scope: !667)
!682 = !DILocation(line: 300, column: 17, scope: !667)
!683 = !DILocation(line: 300, column: 19, scope: !667)
!684 = !DILocalVariable(name: "mum9", scope: !667, file: !1, line: 301, type: !51)
!685 = !DILocation(line: 301, column: 10, scope: !667)
!686 = !DILocation(line: 301, column: 17, scope: !667)
!687 = !DILocation(line: 301, column: 19, scope: !667)
!688 = !DILocalVariable(name: "pre", scope: !667, file: !1, line: 302, type: !51)
!689 = !DILocation(line: 302, column: 10, scope: !667)
!690 = !DILocation(line: 302, column: 35, scope: !667)
!691 = !DILocation(line: 302, column: 34, scope: !667)
!692 = !DILocation(line: 302, column: 21, scope: !667)
!693 = !DILocation(line: 302, column: 20, scope: !667)
!694 = !DILocalVariable(name: "r", scope: !667, file: !1, line: 303, type: !51)
!695 = !DILocation(line: 303, column: 10, scope: !667)
!696 = !DILocation(line: 303, column: 17, scope: !667)
!697 = !DILocation(line: 303, column: 20, scope: !667)
!698 = !DILocation(line: 303, column: 19, scope: !667)
!699 = !DILocation(line: 304, column: 17, scope: !667)
!700 = !DILocation(line: 304, column: 30, scope: !667)
!701 = !DILocation(line: 304, column: 40, scope: !667)
!702 = !DILocation(line: 304, column: 39, scope: !667)
!703 = !DILocation(line: 304, column: 34, scope: !667)
!704 = !DILocation(line: 304, column: 28, scope: !667)
!705 = !DILocation(line: 304, column: 45, scope: !667)
!706 = !DILocation(line: 304, column: 50, scope: !667)
!707 = !DILocation(line: 304, column: 49, scope: !667)
!708 = !DILocation(line: 304, column: 62, scope: !667)
!709 = !DILocation(line: 304, column: 61, scope: !667)
!710 = !DILocation(line: 304, column: 64, scope: !667)
!711 = !DILocation(line: 304, column: 63, scope: !667)
!712 = !DILocation(line: 304, column: 54, scope: !667)
!713 = !DILocation(line: 304, column: 43, scope: !667)
!714 = !DILocation(line: 304, column: 21, scope: !667)
!715 = !DILocation(line: 304, column: 3, scope: !667)
!716 = !DILocation(line: 304, column: 11, scope: !667)
!717 = !DILocation(line: 304, column: 15, scope: !667)
!718 = !DILocation(line: 305, column: 46, scope: !667)
!719 = !DILocation(line: 305, column: 54, scope: !667)
!720 = !DILocation(line: 305, column: 41, scope: !667)
!721 = !DILocation(line: 305, column: 39, scope: !667)
!722 = !DILocation(line: 305, column: 61, scope: !667)
!723 = !DILocation(line: 305, column: 76, scope: !667)
!724 = !DILocation(line: 305, column: 75, scope: !667)
!725 = !DILocation(line: 305, column: 78, scope: !667)
!726 = !DILocation(line: 305, column: 77, scope: !667)
!727 = !DILocation(line: 305, column: 80, scope: !667)
!728 = !DILocation(line: 305, column: 79, scope: !667)
!729 = !DILocation(line: 305, column: 67, scope: !730)
!730 = !DILexicalBlockFile(scope: !667, file: !1, discriminator: 1)
!731 = !DILocation(line: 305, column: 65, scope: !667)
!732 = !DILocation(line: 305, column: 59, scope: !667)
!733 = !DILocation(line: 305, column: 3, scope: !667)
!734 = !DILocation(line: 305, column: 11, scope: !667)
!735 = !DILocation(line: 305, column: 15, scope: !667)
!736 = !DILocation(line: 306, column: 3, scope: !667)
!737 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_asympx_e", scope: !1, file: !1, line: 312, type: !368, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!738 = !DILocalVariable(name: "nu", arg: 1, scope: !737, file: !1, line: 312, type: !50)
!739 = !DILocation(line: 312, column: 48, scope: !737)
!740 = !DILocalVariable(name: "x", arg: 2, scope: !737, file: !1, line: 312, type: !50)
!741 = !DILocation(line: 312, column: 65, scope: !737)
!742 = !DILocalVariable(name: "result", arg: 3, scope: !737, file: !1, line: 312, type: !53)
!743 = !DILocation(line: 312, column: 84, scope: !737)
!744 = !DILocalVariable(name: "mu", scope: !737, file: !1, line: 314, type: !51)
!745 = !DILocation(line: 314, column: 10, scope: !737)
!746 = !DILocation(line: 314, column: 21, scope: !737)
!747 = !DILocation(line: 314, column: 20, scope: !737)
!748 = !DILocation(line: 314, column: 24, scope: !737)
!749 = !DILocation(line: 314, column: 23, scope: !737)
!750 = !DILocalVariable(name: "mum1", scope: !737, file: !1, line: 315, type: !51)
!751 = !DILocation(line: 315, column: 10, scope: !737)
!752 = !DILocation(line: 315, column: 17, scope: !737)
!753 = !DILocation(line: 315, column: 19, scope: !737)
!754 = !DILocalVariable(name: "mum9", scope: !737, file: !1, line: 316, type: !51)
!755 = !DILocation(line: 316, column: 10, scope: !737)
!756 = !DILocation(line: 316, column: 17, scope: !737)
!757 = !DILocation(line: 316, column: 19, scope: !737)
!758 = !DILocalVariable(name: "pre", scope: !737, file: !1, line: 317, type: !51)
!759 = !DILocation(line: 317, column: 10, scope: !737)
!760 = !DILocation(line: 317, column: 32, scope: !737)
!761 = !DILocation(line: 317, column: 31, scope: !737)
!762 = !DILocation(line: 317, column: 26, scope: !737)
!763 = !DILocation(line: 317, column: 17, scope: !737)
!764 = !DILocalVariable(name: "r", scope: !737, file: !1, line: 318, type: !51)
!765 = !DILocation(line: 318, column: 10, scope: !737)
!766 = !DILocation(line: 318, column: 17, scope: !737)
!767 = !DILocation(line: 318, column: 20, scope: !737)
!768 = !DILocation(line: 318, column: 19, scope: !737)
!769 = !DILocation(line: 319, column: 17, scope: !737)
!770 = !DILocation(line: 319, column: 30, scope: !737)
!771 = !DILocation(line: 319, column: 40, scope: !737)
!772 = !DILocation(line: 319, column: 39, scope: !737)
!773 = !DILocation(line: 319, column: 34, scope: !737)
!774 = !DILocation(line: 319, column: 28, scope: !737)
!775 = !DILocation(line: 319, column: 45, scope: !737)
!776 = !DILocation(line: 319, column: 50, scope: !737)
!777 = !DILocation(line: 319, column: 49, scope: !737)
!778 = !DILocation(line: 319, column: 62, scope: !737)
!779 = !DILocation(line: 319, column: 61, scope: !737)
!780 = !DILocation(line: 319, column: 64, scope: !737)
!781 = !DILocation(line: 319, column: 63, scope: !737)
!782 = !DILocation(line: 319, column: 54, scope: !737)
!783 = !DILocation(line: 319, column: 43, scope: !737)
!784 = !DILocation(line: 319, column: 21, scope: !737)
!785 = !DILocation(line: 319, column: 3, scope: !737)
!786 = !DILocation(line: 319, column: 11, scope: !737)
!787 = !DILocation(line: 319, column: 15, scope: !737)
!788 = !DILocation(line: 320, column: 46, scope: !737)
!789 = !DILocation(line: 320, column: 54, scope: !737)
!790 = !DILocation(line: 320, column: 41, scope: !737)
!791 = !DILocation(line: 320, column: 39, scope: !737)
!792 = !DILocation(line: 320, column: 61, scope: !737)
!793 = !DILocation(line: 320, column: 76, scope: !737)
!794 = !DILocation(line: 320, column: 75, scope: !737)
!795 = !DILocation(line: 320, column: 78, scope: !737)
!796 = !DILocation(line: 320, column: 77, scope: !737)
!797 = !DILocation(line: 320, column: 80, scope: !737)
!798 = !DILocation(line: 320, column: 79, scope: !737)
!799 = !DILocation(line: 320, column: 67, scope: !800)
!800 = !DILexicalBlockFile(scope: !737, file: !1, discriminator: 1)
!801 = !DILocation(line: 320, column: 65, scope: !737)
!802 = !DILocation(line: 320, column: 59, scope: !737)
!803 = !DILocation(line: 320, column: 3, scope: !737)
!804 = !DILocation(line: 320, column: 11, scope: !737)
!805 = !DILocation(line: 320, column: 15, scope: !737)
!806 = !DILocation(line: 321, column: 3, scope: !737)
!807 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_asymp_unif_e", scope: !1, file: !1, line: 356, type: !368, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!808 = !DILocalVariable(name: "nu", arg: 1, scope: !807, file: !1, line: 356, type: !50)
!809 = !DILocation(line: 356, column: 52, scope: !807)
!810 = !DILocalVariable(name: "x", arg: 2, scope: !807, file: !1, line: 356, type: !50)
!811 = !DILocation(line: 356, column: 69, scope: !807)
!812 = !DILocalVariable(name: "result", arg: 3, scope: !807, file: !1, line: 356, type: !53)
!813 = !DILocation(line: 356, column: 88, scope: !807)
!814 = !DILocalVariable(name: "i", scope: !807, file: !1, line: 358, type: !42)
!815 = !DILocation(line: 358, column: 7, scope: !807)
!816 = !DILocalVariable(name: "z", scope: !807, file: !1, line: 359, type: !51)
!817 = !DILocation(line: 359, column: 10, scope: !807)
!818 = !DILocation(line: 359, column: 14, scope: !807)
!819 = !DILocation(line: 359, column: 16, scope: !807)
!820 = !DILocation(line: 359, column: 15, scope: !807)
!821 = !DILocalVariable(name: "root_term", scope: !807, file: !1, line: 360, type: !51)
!822 = !DILocation(line: 360, column: 10, scope: !807)
!823 = !DILocation(line: 360, column: 32, scope: !807)
!824 = !DILocation(line: 360, column: 22, scope: !807)
!825 = !DILocalVariable(name: "pre", scope: !807, file: !1, line: 361, type: !51)
!826 = !DILocation(line: 361, column: 10, scope: !807)
!827 = !DILocation(line: 361, column: 34, scope: !807)
!828 = !DILocation(line: 361, column: 33, scope: !807)
!829 = !DILocation(line: 361, column: 39, scope: !807)
!830 = !DILocation(line: 361, column: 37, scope: !807)
!831 = !DILocation(line: 361, column: 20, scope: !807)
!832 = !DILocation(line: 361, column: 19, scope: !807)
!833 = !DILocalVariable(name: "eta", scope: !807, file: !1, line: 362, type: !51)
!834 = !DILocation(line: 362, column: 10, scope: !807)
!835 = !DILocation(line: 362, column: 16, scope: !807)
!836 = !DILocation(line: 362, column: 32, scope: !807)
!837 = !DILocation(line: 362, column: 39, scope: !807)
!838 = !DILocation(line: 362, column: 38, scope: !807)
!839 = !DILocation(line: 362, column: 33, scope: !807)
!840 = !DILocation(line: 362, column: 28, scope: !807)
!841 = !DILocation(line: 362, column: 26, scope: !807)
!842 = !DILocalVariable(name: "ex_arg", scope: !807, file: !1, line: 363, type: !51)
!843 = !DILocation(line: 363, column: 10, scope: !807)
!844 = !DILocation(line: 363, column: 21, scope: !807)
!845 = !DILocation(line: 363, column: 23, scope: !807)
!846 = !DILocation(line: 363, column: 53, scope: !847)
!847 = !DILexicalBlockFile(scope: !807, file: !1, discriminator: 1)
!848 = !DILocation(line: 363, column: 58, scope: !847)
!849 = !DILocation(line: 363, column: 57, scope: !847)
!850 = !DILocation(line: 363, column: 62, scope: !847)
!851 = !DILocation(line: 363, column: 60, scope: !847)
!852 = !DILocation(line: 363, column: 55, scope: !847)
!853 = !DILocation(line: 363, column: 21, scope: !847)
!854 = !DILocation(line: 363, column: 74, scope: !855)
!855 = !DILexicalBlockFile(scope: !807, file: !1, discriminator: 2)
!856 = !DILocation(line: 363, column: 73, scope: !855)
!857 = !DILocation(line: 363, column: 77, scope: !855)
!858 = !DILocation(line: 363, column: 76, scope: !855)
!859 = !DILocation(line: 363, column: 96, scope: !855)
!860 = !DILocation(line: 363, column: 95, scope: !855)
!861 = !DILocation(line: 363, column: 98, scope: !855)
!862 = !DILocation(line: 363, column: 97, scope: !855)
!863 = !DILocation(line: 363, column: 89, scope: !855)
!864 = !DILocation(line: 363, column: 84, scope: !855)
!865 = !DILocation(line: 363, column: 78, scope: !855)
!866 = !DILocation(line: 363, column: 21, scope: !855)
!867 = !DILocation(line: 363, column: 21, scope: !868)
!868 = !DILexicalBlockFile(scope: !807, file: !1, discriminator: 3)
!869 = !DILocation(line: 363, column: 10, scope: !868)
!870 = !DILocalVariable(name: "ex_result", scope: !807, file: !1, line: 364, type: !54)
!871 = !DILocation(line: 364, column: 17, scope: !807)
!872 = !DILocalVariable(name: "stat_ex", scope: !807, file: !1, line: 365, type: !42)
!873 = !DILocation(line: 365, column: 7, scope: !807)
!874 = !DILocation(line: 365, column: 30, scope: !807)
!875 = !DILocation(line: 365, column: 17, scope: !807)
!876 = !DILocation(line: 366, column: 6, scope: !877)
!877 = distinct !DILexicalBlock(scope: !807, file: !1, line: 366, column: 6)
!878 = !DILocation(line: 366, column: 14, scope: !877)
!879 = !DILocation(line: 366, column: 6, scope: !807)
!880 = !DILocalVariable(name: "t", scope: !881, file: !1, line: 367, type: !51)
!881 = distinct !DILexicalBlock(scope: !877, file: !1, line: 366, column: 30)
!882 = !DILocation(line: 367, column: 12, scope: !881)
!883 = !DILocation(line: 367, column: 20, scope: !881)
!884 = !DILocation(line: 367, column: 19, scope: !881)
!885 = !DILocalVariable(name: "sum", scope: !881, file: !1, line: 368, type: !51)
!886 = !DILocation(line: 368, column: 12, scope: !881)
!887 = !DILocalVariable(name: "tpow", scope: !881, file: !1, line: 369, type: !888)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1024, align: 64, elements: !889)
!889 = !{!890}
!890 = !DISubrange(count: 16)
!891 = !DILocation(line: 369, column: 12, scope: !881)
!892 = !DILocation(line: 370, column: 5, scope: !881)
!893 = !DILocation(line: 370, column: 13, scope: !881)
!894 = !DILocation(line: 371, column: 10, scope: !895)
!895 = distinct !DILexicalBlock(scope: !881, file: !1, line: 371, column: 5)
!896 = !DILocation(line: 371, column: 9, scope: !895)
!897 = !DILocation(line: 371, column: 14, scope: !898)
!898 = !DILexicalBlockFile(scope: !899, file: !1, discriminator: 1)
!899 = distinct !DILexicalBlock(scope: !895, file: !1, line: 371, column: 5)
!900 = !DILocation(line: 371, column: 15, scope: !898)
!901 = !DILocation(line: 371, column: 5, scope: !898)
!902 = !DILocation(line: 371, column: 35, scope: !903)
!903 = !DILexicalBlockFile(scope: !899, file: !1, discriminator: 2)
!904 = !DILocation(line: 371, column: 44, scope: !903)
!905 = !DILocation(line: 371, column: 45, scope: !903)
!906 = !DILocation(line: 371, column: 39, scope: !903)
!907 = !DILocation(line: 371, column: 37, scope: !903)
!908 = !DILocation(line: 371, column: 30, scope: !903)
!909 = !DILocation(line: 371, column: 25, scope: !903)
!910 = !DILocation(line: 371, column: 33, scope: !903)
!911 = !DILocation(line: 371, column: 21, scope: !912)
!912 = !DILexicalBlockFile(scope: !899, file: !1, discriminator: 3)
!913 = !DILocation(line: 371, column: 5, scope: !912)
!914 = distinct !{!914, !915}
!915 = !DILocation(line: 371, column: 5, scope: !881)
!916 = !DILocation(line: 372, column: 26, scope: !881)
!917 = !DILocation(line: 372, column: 17, scope: !881)
!918 = !DILocation(line: 372, column: 32, scope: !881)
!919 = !DILocation(line: 372, column: 31, scope: !881)
!920 = !DILocation(line: 372, column: 15, scope: !881)
!921 = !DILocation(line: 372, column: 46, scope: !881)
!922 = !DILocation(line: 372, column: 37, scope: !923)
!923 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 1)
!924 = !DILocation(line: 372, column: 53, scope: !881)
!925 = !DILocation(line: 372, column: 56, scope: !881)
!926 = !DILocation(line: 372, column: 55, scope: !881)
!927 = !DILocation(line: 372, column: 51, scope: !881)
!928 = !DILocation(line: 372, column: 35, scope: !881)
!929 = !DILocation(line: 372, column: 71, scope: !881)
!930 = !DILocation(line: 372, column: 62, scope: !931)
!931 = !DILexicalBlockFile(scope: !881, file: !1, discriminator: 2)
!932 = !DILocation(line: 372, column: 78, scope: !881)
!933 = !DILocation(line: 372, column: 81, scope: !881)
!934 = !DILocation(line: 372, column: 80, scope: !881)
!935 = !DILocation(line: 372, column: 84, scope: !881)
!936 = !DILocation(line: 372, column: 83, scope: !881)
!937 = !DILocation(line: 372, column: 76, scope: !881)
!938 = !DILocation(line: 372, column: 60, scope: !881)
!939 = !DILocation(line: 373, column: 22, scope: !881)
!940 = !DILocation(line: 373, column: 13, scope: !881)
!941 = !DILocation(line: 373, column: 29, scope: !881)
!942 = !DILocation(line: 373, column: 32, scope: !881)
!943 = !DILocation(line: 373, column: 31, scope: !881)
!944 = !DILocation(line: 373, column: 35, scope: !881)
!945 = !DILocation(line: 373, column: 34, scope: !881)
!946 = !DILocation(line: 373, column: 38, scope: !881)
!947 = !DILocation(line: 373, column: 37, scope: !881)
!948 = !DILocation(line: 373, column: 27, scope: !881)
!949 = !DILocation(line: 373, column: 11, scope: !881)
!950 = !DILocation(line: 373, column: 53, scope: !881)
!951 = !DILocation(line: 373, column: 44, scope: !923)
!952 = !DILocation(line: 373, column: 60, scope: !881)
!953 = !DILocation(line: 373, column: 63, scope: !881)
!954 = !DILocation(line: 373, column: 62, scope: !881)
!955 = !DILocation(line: 373, column: 66, scope: !881)
!956 = !DILocation(line: 373, column: 65, scope: !881)
!957 = !DILocation(line: 373, column: 69, scope: !881)
!958 = !DILocation(line: 373, column: 68, scope: !881)
!959 = !DILocation(line: 373, column: 72, scope: !881)
!960 = !DILocation(line: 373, column: 71, scope: !881)
!961 = !DILocation(line: 373, column: 58, scope: !881)
!962 = !DILocation(line: 373, column: 42, scope: !881)
!963 = !DILocation(line: 372, column: 9, scope: !881)
!964 = !DILocation(line: 374, column: 20, scope: !881)
!965 = !DILocation(line: 374, column: 36, scope: !881)
!966 = !DILocation(line: 374, column: 24, scope: !881)
!967 = !DILocation(line: 374, column: 42, scope: !881)
!968 = !DILocation(line: 374, column: 40, scope: !881)
!969 = !DILocation(line: 374, column: 5, scope: !881)
!970 = !DILocation(line: 374, column: 13, scope: !881)
!971 = !DILocation(line: 374, column: 18, scope: !881)
!972 = !DILocation(line: 375, column: 20, scope: !881)
!973 = !DILocation(line: 375, column: 36, scope: !881)
!974 = !DILocation(line: 375, column: 24, scope: !881)
!975 = !DILocation(line: 375, column: 43, scope: !881)
!976 = !DILocation(line: 375, column: 46, scope: !881)
!977 = !DILocation(line: 375, column: 45, scope: !881)
!978 = !DILocation(line: 375, column: 49, scope: !881)
!979 = !DILocation(line: 375, column: 48, scope: !881)
!980 = !DILocation(line: 375, column: 52, scope: !881)
!981 = !DILocation(line: 375, column: 51, scope: !881)
!982 = !DILocation(line: 375, column: 55, scope: !881)
!983 = !DILocation(line: 375, column: 54, scope: !881)
!984 = !DILocation(line: 375, column: 58, scope: !881)
!985 = !DILocation(line: 375, column: 57, scope: !881)
!986 = !DILocation(line: 375, column: 40, scope: !881)
!987 = !DILocation(line: 375, column: 5, scope: !881)
!988 = !DILocation(line: 375, column: 13, scope: !881)
!989 = !DILocation(line: 375, column: 18, scope: !881)
!990 = !DILocation(line: 376, column: 20, scope: !881)
!991 = !DILocation(line: 376, column: 36, scope: !881)
!992 = !DILocation(line: 376, column: 24, scope: !881)
!993 = !DILocation(line: 376, column: 47, scope: !881)
!994 = !DILocation(line: 376, column: 42, scope: !881)
!995 = !DILocation(line: 376, column: 40, scope: !881)
!996 = !DILocation(line: 376, column: 5, scope: !881)
!997 = !DILocation(line: 376, column: 13, scope: !881)
!998 = !DILocation(line: 376, column: 17, scope: !881)
!999 = !DILocation(line: 377, column: 49, scope: !881)
!1000 = !DILocation(line: 377, column: 57, scope: !881)
!1001 = !DILocation(line: 377, column: 44, scope: !881)
!1002 = !DILocation(line: 377, column: 42, scope: !881)
!1003 = !DILocation(line: 377, column: 5, scope: !881)
!1004 = !DILocation(line: 377, column: 13, scope: !881)
!1005 = !DILocation(line: 377, column: 17, scope: !881)
!1006 = !DILocation(line: 378, column: 5, scope: !881)
!1007 = !DILocation(line: 381, column: 5, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !877, file: !1, line: 380, column: 8)
!1009 = !DILocation(line: 381, column: 13, scope: !1008)
!1010 = !DILocation(line: 381, column: 17, scope: !1008)
!1011 = !DILocation(line: 382, column: 5, scope: !1008)
!1012 = !DILocation(line: 382, column: 13, scope: !1008)
!1013 = !DILocation(line: 382, column: 17, scope: !1008)
!1014 = !DILocation(line: 383, column: 12, scope: !1008)
!1015 = !DILocation(line: 383, column: 5, scope: !1008)
!1016 = !DILocation(line: 385, column: 1, scope: !807)
!1017 = distinct !DISubprogram(name: "debye_u1", scope: !1, file: !1, line: 45, type: !1018, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!51, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!1021 = !DILocalVariable(name: "tpow", arg: 1, scope: !1017, file: !1, line: 45, type: !1020)
!1022 = !DILocation(line: 45, column: 25, scope: !1017)
!1023 = !DILocation(line: 47, column: 15, scope: !1017)
!1024 = !DILocation(line: 47, column: 14, scope: !1017)
!1025 = !DILocation(line: 47, column: 29, scope: !1017)
!1026 = !DILocation(line: 47, column: 28, scope: !1017)
!1027 = !DILocation(line: 47, column: 23, scope: !1017)
!1028 = !DILocation(line: 47, column: 37, scope: !1017)
!1029 = !DILocation(line: 47, column: 3, scope: !1017)
!1030 = distinct !DISubprogram(name: "debye_u2", scope: !1, file: !1, line: 51, type: !1018, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!1031 = !DILocalVariable(name: "tpow", arg: 1, scope: !1030, file: !1, line: 51, type: !1020)
!1032 = !DILocation(line: 51, column: 25, scope: !1030)
!1033 = !DILocation(line: 53, column: 16, scope: !1030)
!1034 = !DILocation(line: 53, column: 15, scope: !1030)
!1035 = !DILocation(line: 53, column: 32, scope: !1030)
!1036 = !DILocation(line: 53, column: 31, scope: !1030)
!1037 = !DILocation(line: 53, column: 24, scope: !1030)
!1038 = !DILocation(line: 53, column: 48, scope: !1030)
!1039 = !DILocation(line: 53, column: 47, scope: !1030)
!1040 = !DILocation(line: 53, column: 40, scope: !1030)
!1041 = !DILocation(line: 53, column: 56, scope: !1030)
!1042 = !DILocation(line: 53, column: 3, scope: !1030)
!1043 = distinct !DISubprogram(name: "debye_u3", scope: !1, file: !1, line: 57, type: !1018, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!1044 = !DILocalVariable(name: "tpow", arg: 1, scope: !1043, file: !1, line: 57, type: !1020)
!1045 = !DILocation(line: 57, column: 39, scope: !1043)
!1046 = !DILocation(line: 59, column: 19, scope: !1043)
!1047 = !DILocation(line: 59, column: 18, scope: !1043)
!1048 = !DILocation(line: 59, column: 38, scope: !1043)
!1049 = !DILocation(line: 59, column: 37, scope: !1043)
!1050 = !DILocation(line: 59, column: 27, scope: !1043)
!1051 = !DILocation(line: 59, column: 57, scope: !1043)
!1052 = !DILocation(line: 59, column: 56, scope: !1043)
!1053 = !DILocation(line: 59, column: 46, scope: !1043)
!1054 = !DILocation(line: 59, column: 76, scope: !1043)
!1055 = !DILocation(line: 59, column: 75, scope: !1043)
!1056 = !DILocation(line: 59, column: 65, scope: !1043)
!1057 = !DILocation(line: 59, column: 84, scope: !1043)
!1058 = !DILocation(line: 59, column: 3, scope: !1043)
!1059 = distinct !DISubprogram(name: "debye_u4", scope: !1, file: !1, line: 63, type: !1018, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!1060 = !DILocalVariable(name: "tpow", arg: 1, scope: !1059, file: !1, line: 63, type: !1020)
!1061 = !DILocation(line: 63, column: 39, scope: !1059)
!1062 = !DILocation(line: 65, column: 21, scope: !1059)
!1063 = !DILocation(line: 65, column: 20, scope: !1059)
!1064 = !DILocation(line: 65, column: 42, scope: !1059)
!1065 = !DILocation(line: 65, column: 41, scope: !1059)
!1066 = !DILocation(line: 65, column: 29, scope: !1059)
!1067 = !DILocation(line: 65, column: 64, scope: !1059)
!1068 = !DILocation(line: 65, column: 63, scope: !1059)
!1069 = !DILocation(line: 65, column: 50, scope: !1059)
!1070 = !DILocation(line: 66, column: 23, scope: !1059)
!1071 = !DILocation(line: 66, column: 22, scope: !1059)
!1072 = !DILocation(line: 65, column: 72, scope: !1059)
!1073 = !DILocation(line: 66, column: 46, scope: !1059)
!1074 = !DILocation(line: 66, column: 45, scope: !1059)
!1075 = !DILocation(line: 66, column: 32, scope: !1059)
!1076 = !DILocation(line: 66, column: 55, scope: !1059)
!1077 = !DILocation(line: 65, column: 3, scope: !1059)
!1078 = distinct !DISubprogram(name: "debye_u5", scope: !1, file: !1, line: 70, type: !1018, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!1079 = !DILocalVariable(name: "tpow", arg: 1, scope: !1078, file: !1, line: 70, type: !1020)
!1080 = !DILocation(line: 70, column: 39, scope: !1078)
!1081 = !DILocation(line: 72, column: 24, scope: !1078)
!1082 = !DILocation(line: 72, column: 23, scope: !1078)
!1083 = !DILocation(line: 72, column: 52, scope: !1078)
!1084 = !DILocation(line: 72, column: 51, scope: !1078)
!1085 = !DILocation(line: 72, column: 36, scope: !1078)
!1086 = !DILocation(line: 73, column: 26, scope: !1078)
!1087 = !DILocation(line: 73, column: 25, scope: !1078)
!1088 = !DILocation(line: 72, column: 60, scope: !1078)
!1089 = !DILocation(line: 73, column: 53, scope: !1078)
!1090 = !DILocation(line: 73, column: 52, scope: !1078)
!1091 = !DILocation(line: 73, column: 36, scope: !1078)
!1092 = !DILocation(line: 74, column: 26, scope: !1078)
!1093 = !DILocation(line: 74, column: 25, scope: !1078)
!1094 = !DILocation(line: 73, column: 62, scope: !1078)
!1095 = !DILocation(line: 74, column: 53, scope: !1078)
!1096 = !DILocation(line: 74, column: 52, scope: !1078)
!1097 = !DILocation(line: 74, column: 36, scope: !1078)
!1098 = !DILocation(line: 74, column: 62, scope: !1078)
!1099 = !DILocation(line: 72, column: 3, scope: !1078)
!1100 = distinct !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_asymp_unif_e", scope: !1, file: !1, line: 394, type: !368, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!1101 = !DILocalVariable(name: "nu", arg: 1, scope: !1100, file: !1, line: 394, type: !50)
!1102 = !DILocation(line: 394, column: 52, scope: !1100)
!1103 = !DILocalVariable(name: "x", arg: 2, scope: !1100, file: !1, line: 394, type: !50)
!1104 = !DILocation(line: 394, column: 69, scope: !1100)
!1105 = !DILocalVariable(name: "result", arg: 3, scope: !1100, file: !1, line: 394, type: !53)
!1106 = !DILocation(line: 394, column: 88, scope: !1100)
!1107 = !DILocalVariable(name: "i", scope: !1100, file: !1, line: 396, type: !42)
!1108 = !DILocation(line: 396, column: 7, scope: !1100)
!1109 = !DILocalVariable(name: "z", scope: !1100, file: !1, line: 397, type: !51)
!1110 = !DILocation(line: 397, column: 10, scope: !1100)
!1111 = !DILocation(line: 397, column: 14, scope: !1100)
!1112 = !DILocation(line: 397, column: 16, scope: !1100)
!1113 = !DILocation(line: 397, column: 15, scope: !1100)
!1114 = !DILocalVariable(name: "root_term", scope: !1100, file: !1, line: 398, type: !51)
!1115 = !DILocation(line: 398, column: 10, scope: !1100)
!1116 = !DILocation(line: 398, column: 32, scope: !1100)
!1117 = !DILocation(line: 398, column: 22, scope: !1100)
!1118 = !DILocalVariable(name: "pre", scope: !1100, file: !1, line: 399, type: !51)
!1119 = !DILocation(line: 399, column: 10, scope: !1100)
!1120 = !DILocation(line: 399, column: 31, scope: !1100)
!1121 = !DILocation(line: 399, column: 30, scope: !1100)
!1122 = !DILocation(line: 399, column: 34, scope: !1100)
!1123 = !DILocation(line: 399, column: 33, scope: !1100)
!1124 = !DILocation(line: 399, column: 25, scope: !1100)
!1125 = !DILocation(line: 399, column: 16, scope: !1100)
!1126 = !DILocalVariable(name: "eta", scope: !1100, file: !1, line: 400, type: !51)
!1127 = !DILocation(line: 400, column: 10, scope: !1100)
!1128 = !DILocation(line: 400, column: 16, scope: !1100)
!1129 = !DILocation(line: 400, column: 32, scope: !1100)
!1130 = !DILocation(line: 400, column: 39, scope: !1100)
!1131 = !DILocation(line: 400, column: 38, scope: !1100)
!1132 = !DILocation(line: 400, column: 33, scope: !1100)
!1133 = !DILocation(line: 400, column: 28, scope: !1100)
!1134 = !DILocation(line: 400, column: 26, scope: !1100)
!1135 = !DILocalVariable(name: "ex_arg", scope: !1100, file: !1, line: 401, type: !51)
!1136 = !DILocation(line: 401, column: 10, scope: !1100)
!1137 = !DILocation(line: 401, column: 21, scope: !1100)
!1138 = !DILocation(line: 401, column: 23, scope: !1100)
!1139 = !DILocation(line: 401, column: 53, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1100, file: !1, discriminator: 1)
!1141 = !DILocation(line: 401, column: 57, scope: !1140)
!1142 = !DILocation(line: 401, column: 61, scope: !1140)
!1143 = !DILocation(line: 401, column: 59, scope: !1140)
!1144 = !DILocation(line: 401, column: 55, scope: !1140)
!1145 = !DILocation(line: 401, column: 21, scope: !1140)
!1146 = !DILocation(line: 401, column: 72, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1100, file: !1, discriminator: 2)
!1148 = !DILocation(line: 401, column: 71, scope: !1147)
!1149 = !DILocation(line: 401, column: 75, scope: !1147)
!1150 = !DILocation(line: 401, column: 74, scope: !1147)
!1151 = !DILocation(line: 401, column: 94, scope: !1147)
!1152 = !DILocation(line: 401, column: 93, scope: !1147)
!1153 = !DILocation(line: 401, column: 96, scope: !1147)
!1154 = !DILocation(line: 401, column: 95, scope: !1147)
!1155 = !DILocation(line: 401, column: 87, scope: !1147)
!1156 = !DILocation(line: 401, column: 82, scope: !1147)
!1157 = !DILocation(line: 401, column: 76, scope: !1147)
!1158 = !DILocation(line: 401, column: 21, scope: !1147)
!1159 = !DILocation(line: 401, column: 21, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1100, file: !1, discriminator: 3)
!1161 = !DILocation(line: 401, column: 10, scope: !1160)
!1162 = !DILocalVariable(name: "ex_result", scope: !1100, file: !1, line: 402, type: !54)
!1163 = !DILocation(line: 402, column: 17, scope: !1100)
!1164 = !DILocalVariable(name: "stat_ex", scope: !1100, file: !1, line: 403, type: !42)
!1165 = !DILocation(line: 403, column: 7, scope: !1100)
!1166 = !DILocation(line: 403, column: 30, scope: !1100)
!1167 = !DILocation(line: 403, column: 17, scope: !1100)
!1168 = !DILocation(line: 404, column: 6, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1100, file: !1, line: 404, column: 6)
!1170 = !DILocation(line: 404, column: 14, scope: !1169)
!1171 = !DILocation(line: 404, column: 6, scope: !1100)
!1172 = !DILocalVariable(name: "t", scope: !1173, file: !1, line: 405, type: !51)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 404, column: 30)
!1174 = !DILocation(line: 405, column: 12, scope: !1173)
!1175 = !DILocation(line: 405, column: 20, scope: !1173)
!1176 = !DILocation(line: 405, column: 19, scope: !1173)
!1177 = !DILocalVariable(name: "sum", scope: !1173, file: !1, line: 406, type: !51)
!1178 = !DILocation(line: 406, column: 12, scope: !1173)
!1179 = !DILocalVariable(name: "tpow", scope: !1173, file: !1, line: 407, type: !888)
!1180 = !DILocation(line: 407, column: 12, scope: !1173)
!1181 = !DILocation(line: 408, column: 5, scope: !1173)
!1182 = !DILocation(line: 408, column: 13, scope: !1173)
!1183 = !DILocation(line: 409, column: 10, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 409, column: 5)
!1185 = !DILocation(line: 409, column: 9, scope: !1184)
!1186 = !DILocation(line: 409, column: 14, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1188, file: !1, discriminator: 1)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 409, column: 5)
!1189 = !DILocation(line: 409, column: 15, scope: !1187)
!1190 = !DILocation(line: 409, column: 5, scope: !1187)
!1191 = !DILocation(line: 409, column: 35, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1188, file: !1, discriminator: 2)
!1193 = !DILocation(line: 409, column: 44, scope: !1192)
!1194 = !DILocation(line: 409, column: 45, scope: !1192)
!1195 = !DILocation(line: 409, column: 39, scope: !1192)
!1196 = !DILocation(line: 409, column: 37, scope: !1192)
!1197 = !DILocation(line: 409, column: 30, scope: !1192)
!1198 = !DILocation(line: 409, column: 25, scope: !1192)
!1199 = !DILocation(line: 409, column: 33, scope: !1192)
!1200 = !DILocation(line: 409, column: 21, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1188, file: !1, discriminator: 3)
!1202 = !DILocation(line: 409, column: 5, scope: !1201)
!1203 = distinct !{!1203, !1204}
!1204 = !DILocation(line: 409, column: 5, scope: !1173)
!1205 = !DILocation(line: 410, column: 26, scope: !1173)
!1206 = !DILocation(line: 410, column: 17, scope: !1173)
!1207 = !DILocation(line: 410, column: 32, scope: !1173)
!1208 = !DILocation(line: 410, column: 31, scope: !1173)
!1209 = !DILocation(line: 410, column: 15, scope: !1173)
!1210 = !DILocation(line: 410, column: 46, scope: !1173)
!1211 = !DILocation(line: 410, column: 37, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1173, file: !1, discriminator: 1)
!1213 = !DILocation(line: 410, column: 53, scope: !1173)
!1214 = !DILocation(line: 410, column: 56, scope: !1173)
!1215 = !DILocation(line: 410, column: 55, scope: !1173)
!1216 = !DILocation(line: 410, column: 51, scope: !1173)
!1217 = !DILocation(line: 410, column: 35, scope: !1173)
!1218 = !DILocation(line: 410, column: 71, scope: !1173)
!1219 = !DILocation(line: 410, column: 62, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1173, file: !1, discriminator: 2)
!1221 = !DILocation(line: 410, column: 78, scope: !1173)
!1222 = !DILocation(line: 410, column: 81, scope: !1173)
!1223 = !DILocation(line: 410, column: 80, scope: !1173)
!1224 = !DILocation(line: 410, column: 84, scope: !1173)
!1225 = !DILocation(line: 410, column: 83, scope: !1173)
!1226 = !DILocation(line: 410, column: 76, scope: !1173)
!1227 = !DILocation(line: 410, column: 60, scope: !1173)
!1228 = !DILocation(line: 411, column: 22, scope: !1173)
!1229 = !DILocation(line: 411, column: 13, scope: !1173)
!1230 = !DILocation(line: 411, column: 29, scope: !1173)
!1231 = !DILocation(line: 411, column: 32, scope: !1173)
!1232 = !DILocation(line: 411, column: 31, scope: !1173)
!1233 = !DILocation(line: 411, column: 35, scope: !1173)
!1234 = !DILocation(line: 411, column: 34, scope: !1173)
!1235 = !DILocation(line: 411, column: 38, scope: !1173)
!1236 = !DILocation(line: 411, column: 37, scope: !1173)
!1237 = !DILocation(line: 411, column: 27, scope: !1173)
!1238 = !DILocation(line: 411, column: 11, scope: !1173)
!1239 = !DILocation(line: 411, column: 53, scope: !1173)
!1240 = !DILocation(line: 411, column: 44, scope: !1212)
!1241 = !DILocation(line: 411, column: 60, scope: !1173)
!1242 = !DILocation(line: 411, column: 63, scope: !1173)
!1243 = !DILocation(line: 411, column: 62, scope: !1173)
!1244 = !DILocation(line: 411, column: 66, scope: !1173)
!1245 = !DILocation(line: 411, column: 65, scope: !1173)
!1246 = !DILocation(line: 411, column: 69, scope: !1173)
!1247 = !DILocation(line: 411, column: 68, scope: !1173)
!1248 = !DILocation(line: 411, column: 72, scope: !1173)
!1249 = !DILocation(line: 411, column: 71, scope: !1173)
!1250 = !DILocation(line: 411, column: 58, scope: !1173)
!1251 = !DILocation(line: 411, column: 42, scope: !1173)
!1252 = !DILocation(line: 410, column: 9, scope: !1173)
!1253 = !DILocation(line: 412, column: 20, scope: !1173)
!1254 = !DILocation(line: 412, column: 36, scope: !1173)
!1255 = !DILocation(line: 412, column: 24, scope: !1173)
!1256 = !DILocation(line: 412, column: 42, scope: !1173)
!1257 = !DILocation(line: 412, column: 40, scope: !1173)
!1258 = !DILocation(line: 412, column: 5, scope: !1173)
!1259 = !DILocation(line: 412, column: 13, scope: !1173)
!1260 = !DILocation(line: 412, column: 18, scope: !1173)
!1261 = !DILocation(line: 413, column: 20, scope: !1173)
!1262 = !DILocation(line: 413, column: 36, scope: !1173)
!1263 = !DILocation(line: 413, column: 24, scope: !1173)
!1264 = !DILocation(line: 413, column: 47, scope: !1173)
!1265 = !DILocation(line: 413, column: 42, scope: !1173)
!1266 = !DILocation(line: 413, column: 40, scope: !1173)
!1267 = !DILocation(line: 413, column: 5, scope: !1173)
!1268 = !DILocation(line: 413, column: 13, scope: !1173)
!1269 = !DILocation(line: 413, column: 18, scope: !1173)
!1270 = !DILocation(line: 414, column: 20, scope: !1173)
!1271 = !DILocation(line: 414, column: 36, scope: !1173)
!1272 = !DILocation(line: 414, column: 24, scope: !1173)
!1273 = !DILocation(line: 414, column: 43, scope: !1173)
!1274 = !DILocation(line: 414, column: 46, scope: !1173)
!1275 = !DILocation(line: 414, column: 45, scope: !1173)
!1276 = !DILocation(line: 414, column: 49, scope: !1173)
!1277 = !DILocation(line: 414, column: 48, scope: !1173)
!1278 = !DILocation(line: 414, column: 52, scope: !1173)
!1279 = !DILocation(line: 414, column: 51, scope: !1173)
!1280 = !DILocation(line: 414, column: 55, scope: !1173)
!1281 = !DILocation(line: 414, column: 54, scope: !1173)
!1282 = !DILocation(line: 414, column: 58, scope: !1173)
!1283 = !DILocation(line: 414, column: 57, scope: !1173)
!1284 = !DILocation(line: 414, column: 40, scope: !1173)
!1285 = !DILocation(line: 414, column: 5, scope: !1173)
!1286 = !DILocation(line: 414, column: 13, scope: !1173)
!1287 = !DILocation(line: 414, column: 17, scope: !1173)
!1288 = !DILocation(line: 415, column: 49, scope: !1173)
!1289 = !DILocation(line: 415, column: 57, scope: !1173)
!1290 = !DILocation(line: 415, column: 44, scope: !1173)
!1291 = !DILocation(line: 415, column: 42, scope: !1173)
!1292 = !DILocation(line: 415, column: 5, scope: !1173)
!1293 = !DILocation(line: 415, column: 13, scope: !1173)
!1294 = !DILocation(line: 415, column: 17, scope: !1173)
!1295 = !DILocation(line: 416, column: 5, scope: !1173)
!1296 = !DILocation(line: 419, column: 5, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 418, column: 8)
!1298 = !DILocation(line: 419, column: 13, scope: !1297)
!1299 = !DILocation(line: 419, column: 17, scope: !1297)
!1300 = !DILocation(line: 420, column: 5, scope: !1297)
!1301 = !DILocation(line: 420, column: 13, scope: !1297)
!1302 = !DILocation(line: 420, column: 17, scope: !1297)
!1303 = !DILocation(line: 421, column: 12, scope: !1297)
!1304 = !DILocation(line: 421, column: 5, scope: !1297)
!1305 = !DILocation(line: 423, column: 1, scope: !1100)
!1306 = distinct !DISubprogram(name: "gsl_sf_bessel_JY_mu_restricted", scope: !1, file: !1, line: 429, type: !1307, isLocal: false, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!42, !50, !50, !53, !53, !53, !53}
!1309 = !DILocalVariable(name: "mu", arg: 1, scope: !1306, file: !1, line: 429, type: !50)
!1310 = !DILocation(line: 429, column: 45, scope: !1306)
!1311 = !DILocalVariable(name: "x", arg: 2, scope: !1306, file: !1, line: 429, type: !50)
!1312 = !DILocation(line: 429, column: 62, scope: !1306)
!1313 = !DILocalVariable(name: "Jmu", arg: 3, scope: !1306, file: !1, line: 430, type: !53)
!1314 = !DILocation(line: 430, column: 48, scope: !1306)
!1315 = !DILocalVariable(name: "Jmup1", arg: 4, scope: !1306, file: !1, line: 430, type: !53)
!1316 = !DILocation(line: 430, column: 69, scope: !1306)
!1317 = !DILocalVariable(name: "Ymu", arg: 5, scope: !1306, file: !1, line: 431, type: !53)
!1318 = !DILocation(line: 431, column: 48, scope: !1306)
!1319 = !DILocalVariable(name: "Ymup1", arg: 6, scope: !1306, file: !1, line: 431, type: !53)
!1320 = !DILocation(line: 431, column: 69, scope: !1306)
!1321 = !DILocation(line: 438, column: 6, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 438, column: 6)
!1323 = !DILocation(line: 438, column: 8, scope: !1322)
!1324 = !DILocation(line: 438, column: 14, scope: !1322)
!1325 = !DILocation(line: 438, column: 22, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1322, file: !1, discriminator: 1)
!1327 = !DILocation(line: 438, column: 17, scope: !1326)
!1328 = !DILocation(line: 438, column: 26, scope: !1326)
!1329 = !DILocation(line: 438, column: 6, scope: !1326)
!1330 = !DILocation(line: 439, column: 5, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 438, column: 33)
!1332 = !DILocation(line: 439, column: 10, scope: !1331)
!1333 = !DILocation(line: 439, column: 16, scope: !1331)
!1334 = !DILocation(line: 440, column: 5, scope: !1331)
!1335 = !DILocation(line: 440, column: 10, scope: !1331)
!1336 = !DILocation(line: 440, column: 16, scope: !1331)
!1337 = !DILocation(line: 441, column: 5, scope: !1331)
!1338 = !DILocation(line: 441, column: 12, scope: !1331)
!1339 = !DILocation(line: 441, column: 16, scope: !1331)
!1340 = !DILocation(line: 442, column: 5, scope: !1331)
!1341 = !DILocation(line: 442, column: 12, scope: !1331)
!1342 = !DILocation(line: 442, column: 16, scope: !1331)
!1343 = !DILocation(line: 443, column: 5, scope: !1331)
!1344 = !DILocation(line: 443, column: 10, scope: !1331)
!1345 = !DILocation(line: 443, column: 16, scope: !1331)
!1346 = !DILocation(line: 444, column: 5, scope: !1331)
!1347 = !DILocation(line: 444, column: 10, scope: !1331)
!1348 = !DILocation(line: 444, column: 16, scope: !1331)
!1349 = !DILocation(line: 445, column: 5, scope: !1331)
!1350 = !DILocation(line: 445, column: 12, scope: !1331)
!1351 = !DILocation(line: 445, column: 16, scope: !1331)
!1352 = !DILocation(line: 446, column: 5, scope: !1331)
!1353 = !DILocation(line: 446, column: 12, scope: !1331)
!1354 = !DILocation(line: 446, column: 16, scope: !1331)
!1355 = !DILocation(line: 447, column: 5, scope: !1331)
!1356 = distinct !{!1356, !1355}
!1357 = !DILocation(line: 447, column: 5, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1359, file: !1, discriminator: 1)
!1359 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 447, column: 5)
!1360 = !DILocation(line: 448, column: 3, scope: !1331)
!1361 = !DILocation(line: 449, column: 11, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 449, column: 11)
!1363 = !DILocation(line: 449, column: 13, scope: !1362)
!1364 = !DILocation(line: 449, column: 11, scope: !1322)
!1365 = !DILocation(line: 450, column: 8, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 450, column: 8)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !1, line: 449, column: 21)
!1368 = !DILocation(line: 450, column: 11, scope: !1366)
!1369 = !DILocation(line: 450, column: 8, scope: !1367)
!1370 = !DILocation(line: 451, column: 7, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 450, column: 19)
!1372 = !DILocation(line: 451, column: 12, scope: !1371)
!1373 = !DILocation(line: 451, column: 18, scope: !1371)
!1374 = !DILocation(line: 452, column: 7, scope: !1371)
!1375 = !DILocation(line: 452, column: 12, scope: !1371)
!1376 = !DILocation(line: 452, column: 18, scope: !1371)
!1377 = !DILocation(line: 453, column: 5, scope: !1371)
!1378 = !DILocation(line: 455, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 454, column: 10)
!1380 = !DILocation(line: 455, column: 12, scope: !1379)
!1381 = !DILocation(line: 455, column: 18, scope: !1379)
!1382 = !DILocation(line: 456, column: 7, scope: !1379)
!1383 = !DILocation(line: 456, column: 12, scope: !1379)
!1384 = !DILocation(line: 456, column: 18, scope: !1379)
!1385 = !DILocation(line: 458, column: 5, scope: !1367)
!1386 = !DILocation(line: 458, column: 12, scope: !1367)
!1387 = !DILocation(line: 458, column: 16, scope: !1367)
!1388 = !DILocation(line: 459, column: 5, scope: !1367)
!1389 = !DILocation(line: 459, column: 12, scope: !1367)
!1390 = !DILocation(line: 459, column: 16, scope: !1367)
!1391 = !DILocation(line: 460, column: 5, scope: !1367)
!1392 = !DILocation(line: 460, column: 10, scope: !1367)
!1393 = !DILocation(line: 460, column: 16, scope: !1367)
!1394 = !DILocation(line: 461, column: 5, scope: !1367)
!1395 = !DILocation(line: 461, column: 10, scope: !1367)
!1396 = !DILocation(line: 461, column: 16, scope: !1367)
!1397 = !DILocation(line: 462, column: 5, scope: !1367)
!1398 = !DILocation(line: 462, column: 12, scope: !1367)
!1399 = !DILocation(line: 462, column: 16, scope: !1367)
!1400 = !DILocation(line: 463, column: 5, scope: !1367)
!1401 = !DILocation(line: 463, column: 12, scope: !1367)
!1402 = !DILocation(line: 463, column: 16, scope: !1367)
!1403 = !DILocation(line: 464, column: 5, scope: !1367)
!1404 = distinct !{!1404, !1403}
!1405 = !DILocation(line: 464, column: 5, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1407, file: !1, discriminator: 1)
!1407 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 464, column: 5)
!1408 = !DILocation(line: 465, column: 3, scope: !1367)
!1409 = !DILocalVariable(name: "stat_Y", scope: !1410, file: !1, line: 467, type: !42)
!1410 = distinct !DILexicalBlock(scope: !1362, file: !1, line: 466, column: 8)
!1411 = !DILocation(line: 467, column: 9, scope: !1410)
!1412 = !DILocalVariable(name: "stat_J", scope: !1410, file: !1, line: 468, type: !42)
!1413 = !DILocation(line: 468, column: 9, scope: !1410)
!1414 = !DILocation(line: 470, column: 8, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1410, file: !1, line: 470, column: 8)
!1416 = !DILocation(line: 470, column: 10, scope: !1415)
!1417 = !DILocation(line: 470, column: 8, scope: !1410)
!1418 = !DILocalVariable(name: "Jmup2", scope: !1419, file: !1, line: 476, type: !54)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 470, column: 17)
!1420 = !DILocation(line: 476, column: 21, scope: !1419)
!1421 = !DILocalVariable(name: "stat_J1", scope: !1419, file: !1, line: 477, type: !42)
!1422 = !DILocation(line: 477, column: 11, scope: !1419)
!1423 = !DILocation(line: 477, column: 47, scope: !1419)
!1424 = !DILocation(line: 477, column: 49, scope: !1419)
!1425 = !DILocation(line: 477, column: 55, scope: !1419)
!1426 = !DILocation(line: 477, column: 85, scope: !1419)
!1427 = !DILocation(line: 477, column: 21, scope: !1419)
!1428 = !DILocalVariable(name: "stat_J2", scope: !1419, file: !1, line: 478, type: !42)
!1429 = !DILocation(line: 478, column: 11, scope: !1419)
!1430 = !DILocation(line: 478, column: 47, scope: !1419)
!1431 = !DILocation(line: 478, column: 49, scope: !1419)
!1432 = !DILocation(line: 478, column: 55, scope: !1419)
!1433 = !DILocation(line: 478, column: 21, scope: !1419)
!1434 = !DILocalVariable(name: "c", scope: !1419, file: !1, line: 479, type: !51)
!1435 = !DILocation(line: 479, column: 14, scope: !1419)
!1436 = !DILocation(line: 479, column: 23, scope: !1419)
!1437 = !DILocation(line: 479, column: 25, scope: !1419)
!1438 = !DILocation(line: 479, column: 21, scope: !1419)
!1439 = !DILocation(line: 479, column: 31, scope: !1419)
!1440 = !DILocation(line: 479, column: 30, scope: !1419)
!1441 = !DILocation(line: 480, column: 19, scope: !1419)
!1442 = !DILocation(line: 480, column: 23, scope: !1419)
!1443 = !DILocation(line: 480, column: 30, scope: !1419)
!1444 = !DILocation(line: 480, column: 21, scope: !1419)
!1445 = !DILocation(line: 480, column: 42, scope: !1419)
!1446 = !DILocation(line: 480, column: 34, scope: !1419)
!1447 = !DILocation(line: 480, column: 7, scope: !1419)
!1448 = !DILocation(line: 480, column: 12, scope: !1419)
!1449 = !DILocation(line: 480, column: 17, scope: !1419)
!1450 = !DILocation(line: 481, column: 19, scope: !1419)
!1451 = !DILocation(line: 481, column: 23, scope: !1419)
!1452 = !DILocation(line: 481, column: 30, scope: !1419)
!1453 = !DILocation(line: 481, column: 21, scope: !1419)
!1454 = !DILocation(line: 481, column: 42, scope: !1419)
!1455 = !DILocation(line: 481, column: 34, scope: !1419)
!1456 = !DILocation(line: 481, column: 7, scope: !1419)
!1457 = !DILocation(line: 481, column: 12, scope: !1419)
!1458 = !DILocation(line: 481, column: 17, scope: !1419)
!1459 = !DILocation(line: 482, column: 48, scope: !1419)
!1460 = !DILocation(line: 482, column: 53, scope: !1419)
!1461 = !DILocation(line: 482, column: 43, scope: !1419)
!1462 = !DILocation(line: 482, column: 41, scope: !1419)
!1463 = !DILocation(line: 482, column: 7, scope: !1419)
!1464 = !DILocation(line: 482, column: 12, scope: !1419)
!1465 = !DILocation(line: 482, column: 16, scope: !1419)
!1466 = !DILocation(line: 483, column: 16, scope: !1419)
!1467 = !DILocation(line: 483, column: 16, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1419, file: !1, discriminator: 1)
!1469 = !DILocation(line: 483, column: 16, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1419, file: !1, discriminator: 2)
!1471 = !DILocation(line: 483, column: 16, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1419, file: !1, discriminator: 3)
!1473 = !DILocation(line: 483, column: 16, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1419, file: !1, discriminator: 4)
!1475 = !DILocation(line: 483, column: 16, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1419, file: !1, discriminator: 5)
!1477 = !DILocation(line: 483, column: 16, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1419, file: !1, discriminator: 6)
!1479 = !DILocation(line: 483, column: 14, scope: !1478)
!1480 = !DILocation(line: 484, column: 38, scope: !1419)
!1481 = !DILocation(line: 484, column: 42, scope: !1419)
!1482 = !DILocation(line: 484, column: 45, scope: !1419)
!1483 = !DILocation(line: 484, column: 50, scope: !1419)
!1484 = !DILocation(line: 484, column: 16, scope: !1419)
!1485 = !DILocation(line: 484, column: 14, scope: !1419)
!1486 = !DILocation(line: 485, column: 14, scope: !1419)
!1487 = !DILocation(line: 485, column: 14, scope: !1468)
!1488 = !DILocation(line: 485, column: 14, scope: !1470)
!1489 = !DILocation(line: 485, column: 14, scope: !1472)
!1490 = !DILocation(line: 485, column: 14, scope: !1474)
!1491 = !DILocation(line: 485, column: 14, scope: !1476)
!1492 = !DILocation(line: 485, column: 14, scope: !1478)
!1493 = !DILocation(line: 485, column: 7, scope: !1478)
!1494 = !DILocation(line: 487, column: 13, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 487, column: 13)
!1496 = !DILocation(line: 487, column: 15, scope: !1495)
!1497 = !DILocation(line: 487, column: 13, scope: !1415)
!1498 = !DILocalVariable(name: "P", scope: !1499, file: !1, line: 488, type: !51)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !1, line: 487, column: 25)
!1500 = !DILocation(line: 488, column: 14, scope: !1499)
!1501 = !DILocalVariable(name: "Q", scope: !1499, file: !1, line: 488, type: !51)
!1502 = !DILocation(line: 488, column: 17, scope: !1499)
!1503 = !DILocalVariable(name: "J_ratio", scope: !1499, file: !1, line: 489, type: !51)
!1504 = !DILocation(line: 489, column: 14, scope: !1499)
!1505 = !DILocalVariable(name: "J_sgn", scope: !1499, file: !1, line: 490, type: !51)
!1506 = !DILocation(line: 490, column: 14, scope: !1499)
!1507 = !DILocalVariable(name: "stat_CF1", scope: !1499, file: !1, line: 491, type: !52)
!1508 = !DILocation(line: 491, column: 17, scope: !1499)
!1509 = !DILocation(line: 491, column: 48, scope: !1499)
!1510 = !DILocation(line: 491, column: 52, scope: !1499)
!1511 = !DILocation(line: 491, column: 28, scope: !1499)
!1512 = !DILocalVariable(name: "stat_CF2", scope: !1499, file: !1, line: 492, type: !52)
!1513 = !DILocation(line: 492, column: 17, scope: !1499)
!1514 = !DILocation(line: 492, column: 55, scope: !1499)
!1515 = !DILocation(line: 492, column: 59, scope: !1499)
!1516 = !DILocation(line: 492, column: 28, scope: !1499)
!1517 = !DILocalVariable(name: "Jprime_J_ratio", scope: !1499, file: !1, line: 493, type: !51)
!1518 = !DILocation(line: 493, column: 14, scope: !1499)
!1519 = !DILocation(line: 493, column: 31, scope: !1499)
!1520 = !DILocation(line: 493, column: 34, scope: !1499)
!1521 = !DILocation(line: 493, column: 33, scope: !1499)
!1522 = !DILocation(line: 493, column: 38, scope: !1499)
!1523 = !DILocation(line: 493, column: 36, scope: !1499)
!1524 = !DILocalVariable(name: "gamma", scope: !1499, file: !1, line: 494, type: !51)
!1525 = !DILocation(line: 494, column: 14, scope: !1499)
!1526 = !DILocation(line: 494, column: 23, scope: !1499)
!1527 = !DILocation(line: 494, column: 27, scope: !1499)
!1528 = !DILocation(line: 494, column: 25, scope: !1499)
!1529 = !DILocation(line: 494, column: 43, scope: !1499)
!1530 = !DILocation(line: 494, column: 42, scope: !1499)
!1531 = !DILocation(line: 495, column: 18, scope: !1499)
!1532 = !DILocation(line: 495, column: 41, scope: !1499)
!1533 = !DILocation(line: 495, column: 40, scope: !1499)
!1534 = !DILocation(line: 495, column: 34, scope: !1499)
!1535 = !DILocation(line: 495, column: 47, scope: !1499)
!1536 = !DILocation(line: 495, column: 51, scope: !1499)
!1537 = !DILocation(line: 495, column: 58, scope: !1499)
!1538 = !DILocation(line: 495, column: 60, scope: !1499)
!1539 = !DILocation(line: 495, column: 59, scope: !1499)
!1540 = !DILocation(line: 495, column: 56, scope: !1499)
!1541 = !DILocation(line: 495, column: 49, scope: !1499)
!1542 = !DILocation(line: 495, column: 44, scope: !1499)
!1543 = !DILocation(line: 495, column: 26, scope: !1499)
!1544 = !DILocation(line: 495, column: 24, scope: !1499)
!1545 = !DILocation(line: 495, column: 7, scope: !1499)
!1546 = !DILocation(line: 495, column: 12, scope: !1499)
!1547 = !DILocation(line: 495, column: 16, scope: !1499)
!1548 = !DILocation(line: 496, column: 47, scope: !1499)
!1549 = !DILocation(line: 496, column: 52, scope: !1499)
!1550 = !DILocation(line: 496, column: 42, scope: !1499)
!1551 = !DILocation(line: 496, column: 40, scope: !1499)
!1552 = !DILocation(line: 496, column: 7, scope: !1499)
!1553 = !DILocation(line: 496, column: 12, scope: !1499)
!1554 = !DILocation(line: 496, column: 16, scope: !1499)
!1555 = !DILocation(line: 497, column: 20, scope: !1499)
!1556 = !DILocation(line: 497, column: 30, scope: !1499)
!1557 = !DILocation(line: 497, column: 35, scope: !1499)
!1558 = !DILocation(line: 497, column: 28, scope: !1499)
!1559 = !DILocation(line: 497, column: 7, scope: !1499)
!1560 = !DILocation(line: 497, column: 14, scope: !1499)
!1561 = !DILocation(line: 497, column: 18, scope: !1499)
!1562 = !DILocation(line: 498, column: 25, scope: !1499)
!1563 = !DILocation(line: 498, column: 20, scope: !1499)
!1564 = !DILocation(line: 498, column: 36, scope: !1499)
!1565 = !DILocation(line: 498, column: 41, scope: !1499)
!1566 = !DILocation(line: 498, column: 34, scope: !1499)
!1567 = !DILocation(line: 498, column: 7, scope: !1499)
!1568 = !DILocation(line: 498, column: 14, scope: !1499)
!1569 = !DILocation(line: 498, column: 18, scope: !1499)
!1570 = !DILocation(line: 499, column: 18, scope: !1499)
!1571 = !DILocation(line: 499, column: 26, scope: !1499)
!1572 = !DILocation(line: 499, column: 31, scope: !1499)
!1573 = !DILocation(line: 499, column: 24, scope: !1499)
!1574 = !DILocation(line: 499, column: 7, scope: !1499)
!1575 = !DILocation(line: 499, column: 12, scope: !1499)
!1576 = !DILocation(line: 499, column: 16, scope: !1499)
!1577 = !DILocation(line: 500, column: 23, scope: !1499)
!1578 = !DILocation(line: 500, column: 18, scope: !1499)
!1579 = !DILocation(line: 500, column: 32, scope: !1499)
!1580 = !DILocation(line: 500, column: 37, scope: !1499)
!1581 = !DILocation(line: 500, column: 30, scope: !1499)
!1582 = !DILocation(line: 500, column: 7, scope: !1499)
!1583 = !DILocation(line: 500, column: 12, scope: !1499)
!1584 = !DILocation(line: 500, column: 16, scope: !1499)
!1585 = !DILocation(line: 501, column: 20, scope: !1499)
!1586 = !DILocation(line: 501, column: 25, scope: !1499)
!1587 = !DILocation(line: 501, column: 32, scope: !1499)
!1588 = !DILocation(line: 501, column: 35, scope: !1499)
!1589 = !DILocation(line: 501, column: 34, scope: !1499)
!1590 = !DILocation(line: 501, column: 39, scope: !1499)
!1591 = !DILocation(line: 501, column: 37, scope: !1499)
!1592 = !DILocation(line: 501, column: 43, scope: !1499)
!1593 = !DILocation(line: 501, column: 45, scope: !1499)
!1594 = !DILocation(line: 501, column: 44, scope: !1499)
!1595 = !DILocation(line: 501, column: 41, scope: !1499)
!1596 = !DILocation(line: 501, column: 29, scope: !1499)
!1597 = !DILocation(line: 501, column: 7, scope: !1499)
!1598 = !DILocation(line: 501, column: 14, scope: !1499)
!1599 = !DILocation(line: 501, column: 18, scope: !1499)
!1600 = !DILocation(line: 502, column: 20, scope: !1499)
!1601 = !DILocation(line: 502, column: 25, scope: !1499)
!1602 = !DILocation(line: 502, column: 36, scope: !1499)
!1603 = !DILocation(line: 502, column: 39, scope: !1499)
!1604 = !DILocation(line: 502, column: 38, scope: !1499)
!1605 = !DILocation(line: 502, column: 43, scope: !1499)
!1606 = !DILocation(line: 502, column: 41, scope: !1499)
!1607 = !DILocation(line: 502, column: 47, scope: !1499)
!1608 = !DILocation(line: 502, column: 49, scope: !1499)
!1609 = !DILocation(line: 502, column: 48, scope: !1499)
!1610 = !DILocation(line: 502, column: 45, scope: !1499)
!1611 = !DILocation(line: 502, column: 31, scope: !1499)
!1612 = !DILocation(line: 502, column: 29, scope: !1499)
!1613 = !DILocation(line: 502, column: 83, scope: !1499)
!1614 = !DILocation(line: 502, column: 90, scope: !1499)
!1615 = !DILocation(line: 502, column: 78, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1499, file: !1, discriminator: 1)
!1617 = !DILocation(line: 502, column: 77, scope: !1499)
!1618 = !DILocation(line: 502, column: 56, scope: !1499)
!1619 = !DILocation(line: 502, column: 7, scope: !1499)
!1620 = !DILocation(line: 502, column: 14, scope: !1499)
!1621 = !DILocation(line: 502, column: 18, scope: !1499)
!1622 = !DILocation(line: 503, column: 14, scope: !1499)
!1623 = !DILocation(line: 503, column: 14, scope: !1616)
!1624 = !DILocation(line: 503, column: 14, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1499, file: !1, discriminator: 2)
!1626 = !DILocation(line: 503, column: 14, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1499, file: !1, discriminator: 3)
!1628 = !DILocation(line: 503, column: 14, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1499, file: !1, discriminator: 4)
!1630 = !DILocation(line: 503, column: 14, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1499, file: !1, discriminator: 5)
!1632 = !DILocation(line: 503, column: 14, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1499, file: !1, discriminator: 6)
!1634 = !DILocation(line: 503, column: 7, scope: !1633)
!1635 = !DILocalVariable(name: "stat_J0", scope: !1636, file: !1, line: 508, type: !52)
!1636 = distinct !DILexicalBlock(scope: !1495, file: !1, line: 505, column: 10)
!1637 = !DILocation(line: 508, column: 17, scope: !1636)
!1638 = !DILocation(line: 508, column: 54, scope: !1636)
!1639 = !DILocation(line: 508, column: 62, scope: !1636)
!1640 = !DILocation(line: 508, column: 65, scope: !1636)
!1641 = !DILocation(line: 508, column: 27, scope: !1636)
!1642 = !DILocalVariable(name: "stat_J1", scope: !1636, file: !1, line: 509, type: !52)
!1643 = !DILocation(line: 509, column: 17, scope: !1636)
!1644 = !DILocation(line: 509, column: 54, scope: !1636)
!1645 = !DILocation(line: 509, column: 56, scope: !1636)
!1646 = !DILocation(line: 509, column: 62, scope: !1636)
!1647 = !DILocation(line: 509, column: 65, scope: !1636)
!1648 = !DILocation(line: 509, column: 27, scope: !1636)
!1649 = !DILocalVariable(name: "stat_Y0", scope: !1636, file: !1, line: 510, type: !52)
!1650 = !DILocation(line: 510, column: 17, scope: !1636)
!1651 = !DILocation(line: 510, column: 54, scope: !1636)
!1652 = !DILocation(line: 510, column: 62, scope: !1636)
!1653 = !DILocation(line: 510, column: 65, scope: !1636)
!1654 = !DILocation(line: 510, column: 27, scope: !1636)
!1655 = !DILocalVariable(name: "stat_Y1", scope: !1636, file: !1, line: 511, type: !52)
!1656 = !DILocation(line: 511, column: 17, scope: !1636)
!1657 = !DILocation(line: 511, column: 54, scope: !1636)
!1658 = !DILocation(line: 511, column: 56, scope: !1636)
!1659 = !DILocation(line: 511, column: 62, scope: !1636)
!1660 = !DILocation(line: 511, column: 65, scope: !1636)
!1661 = !DILocation(line: 511, column: 27, scope: !1636)
!1662 = !DILocation(line: 512, column: 16, scope: !1636)
!1663 = !DILocation(line: 512, column: 16, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1636, file: !1, discriminator: 1)
!1665 = !DILocation(line: 512, column: 16, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1636, file: !1, discriminator: 2)
!1667 = !DILocation(line: 512, column: 16, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1636, file: !1, discriminator: 3)
!1669 = !DILocation(line: 512, column: 16, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1636, file: !1, discriminator: 4)
!1671 = !DILocation(line: 512, column: 16, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1636, file: !1, discriminator: 5)
!1673 = !DILocation(line: 512, column: 16, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1636, file: !1, discriminator: 6)
!1675 = !DILocation(line: 512, column: 14, scope: !1674)
!1676 = !DILocation(line: 513, column: 16, scope: !1636)
!1677 = !DILocation(line: 513, column: 16, scope: !1664)
!1678 = !DILocation(line: 513, column: 16, scope: !1666)
!1679 = !DILocation(line: 513, column: 16, scope: !1668)
!1680 = !DILocation(line: 513, column: 16, scope: !1670)
!1681 = !DILocation(line: 513, column: 16, scope: !1672)
!1682 = !DILocation(line: 513, column: 16, scope: !1674)
!1683 = !DILocation(line: 513, column: 14, scope: !1674)
!1684 = !DILocation(line: 514, column: 14, scope: !1636)
!1685 = !DILocation(line: 514, column: 14, scope: !1664)
!1686 = !DILocation(line: 514, column: 14, scope: !1666)
!1687 = !DILocation(line: 514, column: 14, scope: !1668)
!1688 = !DILocation(line: 514, column: 14, scope: !1670)
!1689 = !DILocation(line: 514, column: 14, scope: !1672)
!1690 = !DILocation(line: 514, column: 14, scope: !1674)
!1691 = !DILocation(line: 514, column: 7, scope: !1674)
!1692 = !DILocation(line: 517, column: 1, scope: !1306)
!1693 = distinct !DISubprogram(name: "gsl_sf_bessel_J_CF1", scope: !1, file: !1, line: 521, type: !1694, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!42, !50, !50, !1696, !1696}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!1697 = !DILocalVariable(name: "nu", arg: 1, scope: !1693, file: !1, line: 521, type: !50)
!1698 = !DILocation(line: 521, column: 34, scope: !1693)
!1699 = !DILocalVariable(name: "x", arg: 2, scope: !1693, file: !1, line: 521, type: !50)
!1700 = !DILocation(line: 521, column: 51, scope: !1693)
!1701 = !DILocalVariable(name: "ratio", arg: 3, scope: !1693, file: !1, line: 522, type: !1696)
!1702 = !DILocation(line: 522, column: 30, scope: !1693)
!1703 = !DILocalVariable(name: "sgn", arg: 4, scope: !1693, file: !1, line: 522, type: !1696)
!1704 = !DILocation(line: 522, column: 46, scope: !1693)
!1705 = !DILocalVariable(name: "RECUR_BIG", scope: !1693, file: !1, line: 524, type: !50)
!1706 = !DILocation(line: 524, column: 16, scope: !1693)
!1707 = !DILocalVariable(name: "RECUR_SMALL", scope: !1693, file: !1, line: 525, type: !50)
!1708 = !DILocation(line: 525, column: 16, scope: !1693)
!1709 = !DILocalVariable(name: "maxiter", scope: !1693, file: !1, line: 526, type: !52)
!1710 = !DILocation(line: 526, column: 13, scope: !1693)
!1711 = !DILocalVariable(name: "n", scope: !1693, file: !1, line: 527, type: !42)
!1712 = !DILocation(line: 527, column: 7, scope: !1693)
!1713 = !DILocalVariable(name: "Anm2", scope: !1693, file: !1, line: 528, type: !51)
!1714 = !DILocation(line: 528, column: 10, scope: !1693)
!1715 = !DILocalVariable(name: "Bnm2", scope: !1693, file: !1, line: 529, type: !51)
!1716 = !DILocation(line: 529, column: 10, scope: !1693)
!1717 = !DILocalVariable(name: "Anm1", scope: !1693, file: !1, line: 530, type: !51)
!1718 = !DILocation(line: 530, column: 10, scope: !1693)
!1719 = !DILocalVariable(name: "Bnm1", scope: !1693, file: !1, line: 531, type: !51)
!1720 = !DILocation(line: 531, column: 10, scope: !1693)
!1721 = !DILocalVariable(name: "a1", scope: !1693, file: !1, line: 532, type: !51)
!1722 = !DILocation(line: 532, column: 10, scope: !1693)
!1723 = !DILocation(line: 532, column: 15, scope: !1693)
!1724 = !DILocation(line: 532, column: 23, scope: !1693)
!1725 = !DILocation(line: 532, column: 25, scope: !1693)
!1726 = !DILocation(line: 532, column: 21, scope: !1693)
!1727 = !DILocation(line: 532, column: 16, scope: !1693)
!1728 = !DILocalVariable(name: "An", scope: !1693, file: !1, line: 533, type: !51)
!1729 = !DILocation(line: 533, column: 10, scope: !1693)
!1730 = !DILocation(line: 533, column: 15, scope: !1693)
!1731 = !DILocation(line: 533, column: 22, scope: !1693)
!1732 = !DILocation(line: 533, column: 25, scope: !1693)
!1733 = !DILocation(line: 533, column: 24, scope: !1693)
!1734 = !DILocation(line: 533, column: 20, scope: !1693)
!1735 = !DILocalVariable(name: "Bn", scope: !1693, file: !1, line: 534, type: !51)
!1736 = !DILocation(line: 534, column: 10, scope: !1693)
!1737 = !DILocation(line: 534, column: 15, scope: !1693)
!1738 = !DILocation(line: 534, column: 22, scope: !1693)
!1739 = !DILocation(line: 534, column: 25, scope: !1693)
!1740 = !DILocation(line: 534, column: 24, scope: !1693)
!1741 = !DILocation(line: 534, column: 20, scope: !1693)
!1742 = !DILocalVariable(name: "an", scope: !1693, file: !1, line: 535, type: !51)
!1743 = !DILocation(line: 535, column: 10, scope: !1693)
!1744 = !DILocalVariable(name: "fn", scope: !1693, file: !1, line: 536, type: !51)
!1745 = !DILocation(line: 536, column: 10, scope: !1693)
!1746 = !DILocation(line: 536, column: 15, scope: !1693)
!1747 = !DILocation(line: 536, column: 18, scope: !1693)
!1748 = !DILocation(line: 536, column: 17, scope: !1693)
!1749 = !DILocalVariable(name: "dn", scope: !1693, file: !1, line: 537, type: !51)
!1750 = !DILocation(line: 537, column: 10, scope: !1693)
!1751 = !DILocation(line: 537, column: 15, scope: !1693)
!1752 = !DILocalVariable(name: "s", scope: !1693, file: !1, line: 538, type: !51)
!1753 = !DILocation(line: 538, column: 10, scope: !1693)
!1754 = !DILocation(line: 540, column: 3, scope: !1693)
!1755 = !DILocation(line: 540, column: 9, scope: !1756)
!1756 = !DILexicalBlockFile(scope: !1693, file: !1, discriminator: 1)
!1757 = !DILocation(line: 540, column: 11, scope: !1756)
!1758 = !DILocation(line: 540, column: 3, scope: !1756)
!1759 = !DILocalVariable(name: "old_fn", scope: !1760, file: !1, line: 541, type: !51)
!1760 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 540, column: 22)
!1761 = !DILocation(line: 541, column: 12, scope: !1760)
!1762 = !DILocalVariable(name: "del", scope: !1760, file: !1, line: 542, type: !51)
!1763 = !DILocation(line: 542, column: 12, scope: !1760)
!1764 = !DILocation(line: 543, column: 6, scope: !1760)
!1765 = !DILocation(line: 544, column: 12, scope: !1760)
!1766 = !DILocation(line: 544, column: 10, scope: !1760)
!1767 = !DILocation(line: 545, column: 12, scope: !1760)
!1768 = !DILocation(line: 545, column: 10, scope: !1760)
!1769 = !DILocation(line: 546, column: 12, scope: !1760)
!1770 = !DILocation(line: 546, column: 10, scope: !1760)
!1771 = !DILocation(line: 547, column: 12, scope: !1760)
!1772 = !DILocation(line: 547, column: 10, scope: !1760)
!1773 = !DILocation(line: 548, column: 11, scope: !1760)
!1774 = !DILocation(line: 548, column: 10, scope: !1760)
!1775 = !DILocation(line: 548, column: 13, scope: !1760)
!1776 = !DILocation(line: 548, column: 12, scope: !1760)
!1777 = !DILocation(line: 548, column: 21, scope: !1760)
!1778 = !DILocation(line: 548, column: 24, scope: !1760)
!1779 = !DILocation(line: 548, column: 23, scope: !1760)
!1780 = !DILocation(line: 548, column: 25, scope: !1760)
!1781 = !DILocation(line: 548, column: 19, scope: !1760)
!1782 = !DILocation(line: 548, column: 32, scope: !1760)
!1783 = !DILocation(line: 548, column: 35, scope: !1760)
!1784 = !DILocation(line: 548, column: 34, scope: !1760)
!1785 = !DILocation(line: 548, column: 30, scope: !1760)
!1786 = !DILocation(line: 548, column: 14, scope: !1760)
!1787 = !DILocation(line: 548, column: 8, scope: !1760)
!1788 = !DILocation(line: 549, column: 10, scope: !1760)
!1789 = !DILocation(line: 549, column: 17, scope: !1760)
!1790 = !DILocation(line: 549, column: 20, scope: !1760)
!1791 = !DILocation(line: 549, column: 19, scope: !1760)
!1792 = !DILocation(line: 549, column: 15, scope: !1760)
!1793 = !DILocation(line: 549, column: 8, scope: !1760)
!1794 = !DILocation(line: 550, column: 10, scope: !1760)
!1795 = !DILocation(line: 550, column: 17, scope: !1760)
!1796 = !DILocation(line: 550, column: 20, scope: !1760)
!1797 = !DILocation(line: 550, column: 19, scope: !1760)
!1798 = !DILocation(line: 550, column: 15, scope: !1760)
!1799 = !DILocation(line: 550, column: 8, scope: !1760)
!1800 = !DILocation(line: 552, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 552, column: 8)
!1802 = !DILocation(line: 552, column: 8, scope: !1801)
!1803 = !DILocation(line: 552, column: 17, scope: !1801)
!1804 = !DILocation(line: 552, column: 29, scope: !1801)
!1805 = !DILocation(line: 552, column: 37, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1801, file: !1, discriminator: 1)
!1807 = !DILocation(line: 552, column: 32, scope: !1806)
!1808 = !DILocation(line: 552, column: 41, scope: !1806)
!1809 = !DILocation(line: 552, column: 8, scope: !1806)
!1810 = !DILocation(line: 553, column: 10, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1801, file: !1, line: 552, column: 54)
!1812 = !DILocation(line: 554, column: 10, scope: !1811)
!1813 = !DILocation(line: 555, column: 12, scope: !1811)
!1814 = !DILocation(line: 556, column: 12, scope: !1811)
!1815 = !DILocation(line: 557, column: 12, scope: !1811)
!1816 = !DILocation(line: 558, column: 5, scope: !1811)
!1817 = !DILocation(line: 558, column: 20, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1819, file: !1, discriminator: 1)
!1819 = distinct !DILexicalBlock(scope: !1801, file: !1, line: 558, column: 15)
!1820 = !DILocation(line: 558, column: 15, scope: !1818)
!1821 = !DILocation(line: 558, column: 24, scope: !1818)
!1822 = !DILocation(line: 558, column: 38, scope: !1818)
!1823 = !DILocation(line: 558, column: 46, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1819, file: !1, discriminator: 2)
!1825 = !DILocation(line: 558, column: 41, scope: !1824)
!1826 = !DILocation(line: 558, column: 50, scope: !1824)
!1827 = !DILocation(line: 558, column: 15, scope: !1824)
!1828 = !DILocation(line: 559, column: 10, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1819, file: !1, line: 558, column: 65)
!1830 = !DILocation(line: 560, column: 10, scope: !1829)
!1831 = !DILocation(line: 561, column: 12, scope: !1829)
!1832 = !DILocation(line: 562, column: 12, scope: !1829)
!1833 = !DILocation(line: 563, column: 12, scope: !1829)
!1834 = !DILocation(line: 564, column: 12, scope: !1829)
!1835 = !DILocation(line: 565, column: 5, scope: !1829)
!1836 = !DILocation(line: 567, column: 14, scope: !1760)
!1837 = !DILocation(line: 567, column: 12, scope: !1760)
!1838 = !DILocation(line: 568, column: 10, scope: !1760)
!1839 = !DILocation(line: 568, column: 13, scope: !1760)
!1840 = !DILocation(line: 568, column: 12, scope: !1760)
!1841 = !DILocation(line: 568, column: 8, scope: !1760)
!1842 = !DILocation(line: 569, column: 11, scope: !1760)
!1843 = !DILocation(line: 569, column: 18, scope: !1760)
!1844 = !DILocation(line: 569, column: 17, scope: !1760)
!1845 = !DILocation(line: 569, column: 9, scope: !1760)
!1846 = !DILocation(line: 571, column: 22, scope: !1760)
!1847 = !DILocation(line: 571, column: 25, scope: !1760)
!1848 = !DILocation(line: 571, column: 24, scope: !1760)
!1849 = !DILocation(line: 571, column: 20, scope: !1760)
!1850 = !DILocation(line: 571, column: 28, scope: !1760)
!1851 = !DILocation(line: 571, column: 27, scope: !1760)
!1852 = !DILocation(line: 571, column: 32, scope: !1760)
!1853 = !DILocation(line: 571, column: 30, scope: !1760)
!1854 = !DILocation(line: 571, column: 14, scope: !1760)
!1855 = !DILocation(line: 571, column: 8, scope: !1760)
!1856 = !DILocation(line: 572, column: 8, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 572, column: 8)
!1858 = !DILocation(line: 572, column: 11, scope: !1857)
!1859 = !DILocation(line: 572, column: 8, scope: !1760)
!1860 = !DILocation(line: 572, column: 23, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1857, file: !1, discriminator: 1)
!1862 = !DILocation(line: 572, column: 22, scope: !1861)
!1863 = !DILocation(line: 572, column: 20, scope: !1861)
!1864 = !DILocation(line: 572, column: 18, scope: !1861)
!1865 = !DILocation(line: 574, column: 13, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 574, column: 8)
!1867 = !DILocation(line: 574, column: 17, scope: !1866)
!1868 = !DILocation(line: 574, column: 8, scope: !1866)
!1869 = !DILocation(line: 574, column: 24, scope: !1866)
!1870 = !DILocation(line: 574, column: 8, scope: !1760)
!1871 = !DILocation(line: 574, column: 47, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1866, file: !1, discriminator: 1)
!1873 = !DILocation(line: 540, column: 3, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1693, file: !1, discriminator: 2)
!1875 = distinct !{!1875, !1754}
!1876 = !DILocation(line: 580, column: 12, scope: !1693)
!1877 = !DILocation(line: 580, column: 4, scope: !1693)
!1878 = !DILocation(line: 580, column: 10, scope: !1693)
!1879 = !DILocation(line: 581, column: 12, scope: !1693)
!1880 = !DILocation(line: 581, column: 4, scope: !1693)
!1881 = !DILocation(line: 581, column: 10, scope: !1693)
!1882 = !DILocation(line: 583, column: 6, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1693, file: !1, line: 583, column: 6)
!1884 = !DILocation(line: 583, column: 8, scope: !1883)
!1885 = !DILocation(line: 583, column: 6, scope: !1693)
!1886 = !DILocation(line: 584, column: 5, scope: !1883)
!1887 = distinct !{!1887, !1886}
!1888 = !DILocation(line: 584, column: 5, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1890, file: !1, discriminator: 1)
!1890 = distinct !DILexicalBlock(scope: !1883, file: !1, line: 584, column: 5)
!1891 = !DILocation(line: 584, column: 5, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1890, file: !1, discriminator: 2)
!1893 = !DILocation(line: 586, column: 5, scope: !1883)
!1894 = !DILocation(line: 587, column: 1, scope: !1693)
!1895 = distinct !DISubprogram(name: "gsl_sf_bessel_JY_steed_CF2", scope: !1, file: !1, line: 663, type: !1694, isLocal: false, isDefinition: true, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!1896 = !DILocalVariable(name: "nu", arg: 1, scope: !1895, file: !1, line: 663, type: !50)
!1897 = !DILocation(line: 663, column: 41, scope: !1895)
!1898 = !DILocalVariable(name: "x", arg: 2, scope: !1895, file: !1, line: 663, type: !50)
!1899 = !DILocation(line: 663, column: 58, scope: !1895)
!1900 = !DILocalVariable(name: "P", arg: 3, scope: !1895, file: !1, line: 664, type: !1696)
!1901 = !DILocation(line: 664, column: 37, scope: !1895)
!1902 = !DILocalVariable(name: "Q", arg: 4, scope: !1895, file: !1, line: 664, type: !1696)
!1903 = !DILocation(line: 664, column: 49, scope: !1895)
!1904 = !DILocalVariable(name: "max_iter", scope: !1895, file: !1, line: 666, type: !52)
!1905 = !DILocation(line: 666, column: 13, scope: !1895)
!1906 = !DILocalVariable(name: "SMALL", scope: !1895, file: !1, line: 667, type: !50)
!1907 = !DILocation(line: 667, column: 16, scope: !1895)
!1908 = !DILocalVariable(name: "i", scope: !1895, file: !1, line: 669, type: !42)
!1909 = !DILocation(line: 669, column: 7, scope: !1895)
!1910 = !DILocalVariable(name: "x_inv", scope: !1895, file: !1, line: 671, type: !51)
!1911 = !DILocation(line: 671, column: 10, scope: !1895)
!1912 = !DILocation(line: 671, column: 22, scope: !1895)
!1913 = !DILocation(line: 671, column: 21, scope: !1895)
!1914 = !DILocalVariable(name: "a", scope: !1895, file: !1, line: 672, type: !51)
!1915 = !DILocation(line: 672, column: 10, scope: !1895)
!1916 = !DILocation(line: 672, column: 21, scope: !1895)
!1917 = !DILocation(line: 672, column: 24, scope: !1895)
!1918 = !DILocation(line: 672, column: 23, scope: !1895)
!1919 = !DILocation(line: 672, column: 19, scope: !1895)
!1920 = !DILocalVariable(name: "p", scope: !1895, file: !1, line: 673, type: !51)
!1921 = !DILocation(line: 673, column: 10, scope: !1895)
!1922 = !DILocation(line: 673, column: 19, scope: !1895)
!1923 = !DILocation(line: 673, column: 18, scope: !1895)
!1924 = !DILocalVariable(name: "q", scope: !1895, file: !1, line: 674, type: !51)
!1925 = !DILocation(line: 674, column: 10, scope: !1895)
!1926 = !DILocalVariable(name: "br", scope: !1895, file: !1, line: 675, type: !51)
!1927 = !DILocation(line: 675, column: 10, scope: !1895)
!1928 = !DILocation(line: 675, column: 19, scope: !1895)
!1929 = !DILocation(line: 675, column: 18, scope: !1895)
!1930 = !DILocalVariable(name: "bi", scope: !1895, file: !1, line: 676, type: !51)
!1931 = !DILocation(line: 676, column: 10, scope: !1895)
!1932 = !DILocalVariable(name: "fact", scope: !1895, file: !1, line: 677, type: !51)
!1933 = !DILocation(line: 677, column: 10, scope: !1895)
!1934 = !DILocation(line: 677, column: 17, scope: !1895)
!1935 = !DILocation(line: 677, column: 19, scope: !1895)
!1936 = !DILocation(line: 677, column: 18, scope: !1895)
!1937 = !DILocation(line: 677, column: 26, scope: !1895)
!1938 = !DILocation(line: 677, column: 28, scope: !1895)
!1939 = !DILocation(line: 677, column: 27, scope: !1895)
!1940 = !DILocation(line: 677, column: 32, scope: !1895)
!1941 = !DILocation(line: 677, column: 34, scope: !1895)
!1942 = !DILocation(line: 677, column: 33, scope: !1895)
!1943 = !DILocation(line: 677, column: 30, scope: !1895)
!1944 = !DILocation(line: 677, column: 24, scope: !1895)
!1945 = !DILocalVariable(name: "cr", scope: !1895, file: !1, line: 678, type: !51)
!1946 = !DILocation(line: 678, column: 10, scope: !1895)
!1947 = !DILocation(line: 678, column: 15, scope: !1895)
!1948 = !DILocation(line: 678, column: 20, scope: !1895)
!1949 = !DILocation(line: 678, column: 22, scope: !1895)
!1950 = !DILocation(line: 678, column: 21, scope: !1895)
!1951 = !DILocation(line: 678, column: 18, scope: !1895)
!1952 = !DILocalVariable(name: "ci", scope: !1895, file: !1, line: 679, type: !51)
!1953 = !DILocation(line: 679, column: 10, scope: !1895)
!1954 = !DILocation(line: 679, column: 15, scope: !1895)
!1955 = !DILocation(line: 679, column: 20, scope: !1895)
!1956 = !DILocation(line: 679, column: 22, scope: !1895)
!1957 = !DILocation(line: 679, column: 21, scope: !1895)
!1958 = !DILocation(line: 679, column: 18, scope: !1895)
!1959 = !DILocalVariable(name: "den", scope: !1895, file: !1, line: 680, type: !51)
!1960 = !DILocation(line: 680, column: 10, scope: !1895)
!1961 = !DILocation(line: 680, column: 16, scope: !1895)
!1962 = !DILocation(line: 680, column: 19, scope: !1895)
!1963 = !DILocation(line: 680, column: 18, scope: !1895)
!1964 = !DILocation(line: 680, column: 24, scope: !1895)
!1965 = !DILocation(line: 680, column: 27, scope: !1895)
!1966 = !DILocation(line: 680, column: 26, scope: !1895)
!1967 = !DILocation(line: 680, column: 22, scope: !1895)
!1968 = !DILocalVariable(name: "dr", scope: !1895, file: !1, line: 681, type: !51)
!1969 = !DILocation(line: 681, column: 10, scope: !1895)
!1970 = !DILocation(line: 681, column: 15, scope: !1895)
!1971 = !DILocation(line: 681, column: 18, scope: !1895)
!1972 = !DILocation(line: 681, column: 17, scope: !1895)
!1973 = !DILocalVariable(name: "di", scope: !1895, file: !1, line: 682, type: !51)
!1974 = !DILocation(line: 682, column: 10, scope: !1895)
!1975 = !DILocation(line: 682, column: 16, scope: !1895)
!1976 = !DILocation(line: 682, column: 15, scope: !1895)
!1977 = !DILocation(line: 682, column: 19, scope: !1895)
!1978 = !DILocation(line: 682, column: 18, scope: !1895)
!1979 = !DILocalVariable(name: "dlr", scope: !1895, file: !1, line: 683, type: !51)
!1980 = !DILocation(line: 683, column: 10, scope: !1895)
!1981 = !DILocation(line: 683, column: 16, scope: !1895)
!1982 = !DILocation(line: 683, column: 19, scope: !1895)
!1983 = !DILocation(line: 683, column: 18, scope: !1895)
!1984 = !DILocation(line: 683, column: 24, scope: !1895)
!1985 = !DILocation(line: 683, column: 27, scope: !1895)
!1986 = !DILocation(line: 683, column: 26, scope: !1895)
!1987 = !DILocation(line: 683, column: 22, scope: !1895)
!1988 = !DILocalVariable(name: "dli", scope: !1895, file: !1, line: 684, type: !51)
!1989 = !DILocation(line: 684, column: 10, scope: !1895)
!1990 = !DILocation(line: 684, column: 16, scope: !1895)
!1991 = !DILocation(line: 684, column: 19, scope: !1895)
!1992 = !DILocation(line: 684, column: 18, scope: !1895)
!1993 = !DILocation(line: 684, column: 24, scope: !1895)
!1994 = !DILocation(line: 684, column: 27, scope: !1895)
!1995 = !DILocation(line: 684, column: 26, scope: !1895)
!1996 = !DILocation(line: 684, column: 22, scope: !1895)
!1997 = !DILocalVariable(name: "temp", scope: !1895, file: !1, line: 685, type: !51)
!1998 = !DILocation(line: 685, column: 10, scope: !1895)
!1999 = !DILocation(line: 685, column: 17, scope: !1895)
!2000 = !DILocation(line: 685, column: 19, scope: !1895)
!2001 = !DILocation(line: 685, column: 18, scope: !1895)
!2002 = !DILocation(line: 685, column: 25, scope: !1895)
!2003 = !DILocation(line: 685, column: 27, scope: !1895)
!2004 = !DILocation(line: 685, column: 26, scope: !1895)
!2005 = !DILocation(line: 685, column: 23, scope: !1895)
!2006 = !DILocation(line: 686, column: 7, scope: !1895)
!2007 = !DILocation(line: 686, column: 9, scope: !1895)
!2008 = !DILocation(line: 686, column: 8, scope: !1895)
!2009 = !DILocation(line: 686, column: 15, scope: !1895)
!2010 = !DILocation(line: 686, column: 17, scope: !1895)
!2011 = !DILocation(line: 686, column: 16, scope: !1895)
!2012 = !DILocation(line: 686, column: 13, scope: !1895)
!2013 = !DILocation(line: 686, column: 5, scope: !1895)
!2014 = !DILocation(line: 687, column: 7, scope: !1895)
!2015 = !DILocation(line: 687, column: 5, scope: !1895)
!2016 = !DILocation(line: 688, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1895, file: !1, line: 688, column: 3)
!2018 = !DILocation(line: 688, column: 8, scope: !2017)
!2019 = !DILocation(line: 688, column: 13, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2021, file: !1, discriminator: 1)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !1, line: 688, column: 3)
!2022 = !DILocation(line: 688, column: 14, scope: !2020)
!2023 = !DILocation(line: 688, column: 3, scope: !2020)
!2024 = !DILocation(line: 689, column: 14, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 688, column: 31)
!2026 = !DILocation(line: 689, column: 15, scope: !2025)
!2027 = !DILocation(line: 689, column: 12, scope: !2025)
!2028 = !DILocation(line: 689, column: 11, scope: !2025)
!2029 = !DILocation(line: 689, column: 8, scope: !2025)
!2030 = !DILocation(line: 690, column: 8, scope: !2025)
!2031 = !DILocation(line: 691, column: 10, scope: !2025)
!2032 = !DILocation(line: 691, column: 12, scope: !2025)
!2033 = !DILocation(line: 691, column: 11, scope: !2025)
!2034 = !DILocation(line: 691, column: 17, scope: !2025)
!2035 = !DILocation(line: 691, column: 15, scope: !2025)
!2036 = !DILocation(line: 691, column: 8, scope: !2025)
!2037 = !DILocation(line: 692, column: 10, scope: !2025)
!2038 = !DILocation(line: 692, column: 12, scope: !2025)
!2039 = !DILocation(line: 692, column: 11, scope: !2025)
!2040 = !DILocation(line: 692, column: 17, scope: !2025)
!2041 = !DILocation(line: 692, column: 15, scope: !2025)
!2042 = !DILocation(line: 692, column: 8, scope: !2025)
!2043 = !DILocation(line: 693, column: 13, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2025, file: !1, line: 693, column: 8)
!2045 = !DILocation(line: 693, column: 8, scope: !2044)
!2046 = !DILocation(line: 693, column: 22, scope: !2044)
!2047 = !DILocation(line: 693, column: 17, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !2044, file: !1, discriminator: 2)
!2049 = !DILocation(line: 693, column: 16, scope: !2044)
!2050 = !DILocation(line: 693, column: 26, scope: !2044)
!2051 = !DILocation(line: 693, column: 8, scope: !2025)
!2052 = !DILocation(line: 693, column: 38, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !2044, file: !1, discriminator: 1)
!2054 = !DILocation(line: 693, column: 35, scope: !2053)
!2055 = !DILocation(line: 694, column: 12, scope: !2025)
!2056 = !DILocation(line: 694, column: 15, scope: !2025)
!2057 = !DILocation(line: 694, column: 18, scope: !2025)
!2058 = !DILocation(line: 694, column: 17, scope: !2025)
!2059 = !DILocation(line: 694, column: 21, scope: !2025)
!2060 = !DILocation(line: 694, column: 24, scope: !2025)
!2061 = !DILocation(line: 694, column: 23, scope: !2025)
!2062 = !DILocation(line: 694, column: 20, scope: !2025)
!2063 = !DILocation(line: 694, column: 13, scope: !2025)
!2064 = !DILocation(line: 694, column: 10, scope: !2025)
!2065 = !DILocation(line: 695, column: 10, scope: !2025)
!2066 = !DILocation(line: 695, column: 15, scope: !2025)
!2067 = !DILocation(line: 695, column: 18, scope: !2025)
!2068 = !DILocation(line: 695, column: 17, scope: !2025)
!2069 = !DILocation(line: 695, column: 13, scope: !2025)
!2070 = !DILocation(line: 695, column: 8, scope: !2025)
!2071 = !DILocation(line: 696, column: 10, scope: !2025)
!2072 = !DILocation(line: 696, column: 15, scope: !2025)
!2073 = !DILocation(line: 696, column: 18, scope: !2025)
!2074 = !DILocation(line: 696, column: 17, scope: !2025)
!2075 = !DILocation(line: 696, column: 13, scope: !2025)
!2076 = !DILocation(line: 696, column: 8, scope: !2025)
!2077 = !DILocation(line: 697, column: 13, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2025, file: !1, line: 697, column: 8)
!2079 = !DILocation(line: 697, column: 8, scope: !2078)
!2080 = !DILocation(line: 697, column: 22, scope: !2078)
!2081 = !DILocation(line: 697, column: 17, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !2078, file: !1, discriminator: 2)
!2083 = !DILocation(line: 697, column: 16, scope: !2078)
!2084 = !DILocation(line: 697, column: 26, scope: !2078)
!2085 = !DILocation(line: 697, column: 8, scope: !2025)
!2086 = !DILocation(line: 697, column: 38, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2078, file: !1, discriminator: 1)
!2088 = !DILocation(line: 697, column: 35, scope: !2087)
!2089 = !DILocation(line: 698, column: 11, scope: !2025)
!2090 = !DILocation(line: 698, column: 14, scope: !2025)
!2091 = !DILocation(line: 698, column: 13, scope: !2025)
!2092 = !DILocation(line: 698, column: 19, scope: !2025)
!2093 = !DILocation(line: 698, column: 22, scope: !2025)
!2094 = !DILocation(line: 698, column: 21, scope: !2025)
!2095 = !DILocation(line: 698, column: 17, scope: !2025)
!2096 = !DILocation(line: 698, column: 9, scope: !2025)
!2097 = !DILocation(line: 699, column: 11, scope: !2025)
!2098 = !DILocation(line: 699, column: 8, scope: !2025)
!2099 = !DILocation(line: 700, column: 12, scope: !2025)
!2100 = !DILocation(line: 700, column: 11, scope: !2025)
!2101 = !DILocation(line: 700, column: 8, scope: !2025)
!2102 = !DILocation(line: 701, column: 11, scope: !2025)
!2103 = !DILocation(line: 701, column: 14, scope: !2025)
!2104 = !DILocation(line: 701, column: 13, scope: !2025)
!2105 = !DILocation(line: 701, column: 19, scope: !2025)
!2106 = !DILocation(line: 701, column: 22, scope: !2025)
!2107 = !DILocation(line: 701, column: 21, scope: !2025)
!2108 = !DILocation(line: 701, column: 17, scope: !2025)
!2109 = !DILocation(line: 701, column: 9, scope: !2025)
!2110 = !DILocation(line: 702, column: 11, scope: !2025)
!2111 = !DILocation(line: 702, column: 14, scope: !2025)
!2112 = !DILocation(line: 702, column: 13, scope: !2025)
!2113 = !DILocation(line: 702, column: 19, scope: !2025)
!2114 = !DILocation(line: 702, column: 22, scope: !2025)
!2115 = !DILocation(line: 702, column: 21, scope: !2025)
!2116 = !DILocation(line: 702, column: 17, scope: !2025)
!2117 = !DILocation(line: 702, column: 9, scope: !2025)
!2118 = !DILocation(line: 703, column: 12, scope: !2025)
!2119 = !DILocation(line: 703, column: 14, scope: !2025)
!2120 = !DILocation(line: 703, column: 13, scope: !2025)
!2121 = !DILocation(line: 703, column: 20, scope: !2025)
!2122 = !DILocation(line: 703, column: 22, scope: !2025)
!2123 = !DILocation(line: 703, column: 21, scope: !2025)
!2124 = !DILocation(line: 703, column: 18, scope: !2025)
!2125 = !DILocation(line: 703, column: 10, scope: !2025)
!2126 = !DILocation(line: 704, column: 9, scope: !2025)
!2127 = !DILocation(line: 704, column: 11, scope: !2025)
!2128 = !DILocation(line: 704, column: 10, scope: !2025)
!2129 = !DILocation(line: 704, column: 17, scope: !2025)
!2130 = !DILocation(line: 704, column: 19, scope: !2025)
!2131 = !DILocation(line: 704, column: 18, scope: !2025)
!2132 = !DILocation(line: 704, column: 15, scope: !2025)
!2133 = !DILocation(line: 704, column: 7, scope: !2025)
!2134 = !DILocation(line: 705, column: 9, scope: !2025)
!2135 = !DILocation(line: 705, column: 7, scope: !2025)
!2136 = !DILocation(line: 706, column: 13, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2025, file: !1, line: 706, column: 8)
!2138 = !DILocation(line: 706, column: 16, scope: !2137)
!2139 = !DILocation(line: 706, column: 8, scope: !2137)
!2140 = !DILocation(line: 706, column: 27, scope: !2137)
!2141 = !DILocation(line: 706, column: 22, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2137, file: !1, discriminator: 2)
!2143 = !DILocation(line: 706, column: 21, scope: !2137)
!2144 = !DILocation(line: 706, column: 32, scope: !2137)
!2145 = !DILocation(line: 706, column: 8, scope: !2025)
!2146 = !DILocation(line: 706, column: 51, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2137, file: !1, discriminator: 1)
!2148 = !DILocation(line: 707, column: 3, scope: !2025)
!2149 = !DILocation(line: 688, column: 27, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2021, file: !1, discriminator: 2)
!2151 = !DILocation(line: 688, column: 3, scope: !2150)
!2152 = distinct !{!2152, !2153}
!2153 = !DILocation(line: 688, column: 3, scope: !1895)
!2154 = !DILocation(line: 709, column: 8, scope: !1895)
!2155 = !DILocation(line: 709, column: 4, scope: !1895)
!2156 = !DILocation(line: 709, column: 6, scope: !1895)
!2157 = !DILocation(line: 710, column: 8, scope: !1895)
!2158 = !DILocation(line: 710, column: 4, scope: !1895)
!2159 = !DILocation(line: 710, column: 6, scope: !1895)
!2160 = !DILocation(line: 712, column: 6, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1895, file: !1, line: 712, column: 6)
!2162 = !DILocation(line: 712, column: 8, scope: !2161)
!2163 = !DILocation(line: 712, column: 6, scope: !1895)
!2164 = !DILocation(line: 713, column: 5, scope: !2161)
!2165 = distinct !{!2165, !2164}
!2166 = !DILocation(line: 713, column: 5, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2168, file: !1, discriminator: 1)
!2168 = distinct !DILexicalBlock(scope: !2161, file: !1, line: 713, column: 5)
!2169 = !DILocation(line: 713, column: 5, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2168, file: !1, discriminator: 2)
!2171 = !DILocation(line: 715, column: 5, scope: !2161)
!2172 = !DILocation(line: 716, column: 1, scope: !1895)
!2173 = distinct !DISubprogram(name: "gsl_sf_bessel_I_CF1_ser", scope: !1, file: !1, line: 637, type: !2174, isLocal: false, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!42, !50, !50, !1696}
!2176 = !DILocalVariable(name: "nu", arg: 1, scope: !2173, file: !1, line: 637, type: !50)
!2177 = !DILocation(line: 637, column: 38, scope: !2173)
!2178 = !DILocalVariable(name: "x", arg: 2, scope: !2173, file: !1, line: 637, type: !50)
!2179 = !DILocation(line: 637, column: 55, scope: !2173)
!2180 = !DILocalVariable(name: "ratio", arg: 3, scope: !2173, file: !1, line: 637, type: !1696)
!2181 = !DILocation(line: 637, column: 67, scope: !2173)
!2182 = !DILocalVariable(name: "maxk", scope: !2173, file: !1, line: 639, type: !52)
!2183 = !DILocation(line: 639, column: 13, scope: !2173)
!2184 = !DILocalVariable(name: "tk", scope: !2173, file: !1, line: 640, type: !51)
!2185 = !DILocation(line: 640, column: 10, scope: !2173)
!2186 = !DILocalVariable(name: "sum", scope: !2173, file: !1, line: 641, type: !51)
!2187 = !DILocation(line: 641, column: 10, scope: !2173)
!2188 = !DILocalVariable(name: "rhok", scope: !2173, file: !1, line: 642, type: !51)
!2189 = !DILocation(line: 642, column: 10, scope: !2173)
!2190 = !DILocalVariable(name: "k", scope: !2173, file: !1, line: 643, type: !42)
!2191 = !DILocation(line: 643, column: 7, scope: !2173)
!2192 = !DILocation(line: 645, column: 8, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2173, file: !1, line: 645, column: 3)
!2194 = !DILocation(line: 645, column: 7, scope: !2193)
!2195 = !DILocation(line: 645, column: 12, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2197, file: !1, discriminator: 1)
!2197 = distinct !DILexicalBlock(scope: !2193, file: !1, line: 645, column: 3)
!2198 = !DILocation(line: 645, column: 13, scope: !2196)
!2199 = !DILocation(line: 645, column: 3, scope: !2196)
!2200 = !DILocalVariable(name: "ak", scope: !2201, file: !1, line: 646, type: !51)
!2201 = distinct !DILexicalBlock(scope: !2197, file: !1, line: 645, column: 25)
!2202 = !DILocation(line: 646, column: 12, scope: !2201)
!2203 = !DILocation(line: 646, column: 25, scope: !2201)
!2204 = !DILocation(line: 646, column: 28, scope: !2201)
!2205 = !DILocation(line: 646, column: 31, scope: !2201)
!2206 = !DILocation(line: 646, column: 30, scope: !2201)
!2207 = !DILocation(line: 646, column: 26, scope: !2201)
!2208 = !DILocation(line: 646, column: 22, scope: !2201)
!2209 = !DILocation(line: 646, column: 37, scope: !2201)
!2210 = !DILocation(line: 646, column: 35, scope: !2201)
!2211 = !DILocation(line: 646, column: 40, scope: !2201)
!2212 = !DILocation(line: 646, column: 43, scope: !2201)
!2213 = !DILocation(line: 646, column: 42, scope: !2201)
!2214 = !DILocation(line: 646, column: 44, scope: !2201)
!2215 = !DILocation(line: 646, column: 38, scope: !2201)
!2216 = !DILocation(line: 647, column: 13, scope: !2201)
!2217 = !DILocation(line: 647, column: 12, scope: !2201)
!2218 = !DILocation(line: 647, column: 23, scope: !2201)
!2219 = !DILocation(line: 647, column: 21, scope: !2201)
!2220 = !DILocation(line: 647, column: 15, scope: !2201)
!2221 = !DILocation(line: 647, column: 36, scope: !2201)
!2222 = !DILocation(line: 647, column: 46, scope: !2201)
!2223 = !DILocation(line: 647, column: 44, scope: !2201)
!2224 = !DILocation(line: 647, column: 38, scope: !2201)
!2225 = !DILocation(line: 647, column: 34, scope: !2201)
!2226 = !DILocation(line: 647, column: 28, scope: !2201)
!2227 = !DILocation(line: 647, column: 10, scope: !2201)
!2228 = !DILocation(line: 648, column: 12, scope: !2201)
!2229 = !DILocation(line: 648, column: 9, scope: !2201)
!2230 = !DILocation(line: 649, column: 12, scope: !2201)
!2231 = !DILocation(line: 649, column: 9, scope: !2201)
!2232 = !DILocation(line: 650, column: 13, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2201, file: !1, line: 650, column: 8)
!2234 = !DILocation(line: 650, column: 16, scope: !2233)
!2235 = !DILocation(line: 650, column: 15, scope: !2233)
!2236 = !DILocation(line: 650, column: 8, scope: !2233)
!2237 = !DILocation(line: 650, column: 21, scope: !2233)
!2238 = !DILocation(line: 650, column: 8, scope: !2201)
!2239 = !DILocation(line: 650, column: 40, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2233, file: !1, discriminator: 1)
!2241 = !DILocation(line: 651, column: 3, scope: !2201)
!2242 = !DILocation(line: 645, column: 21, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2197, file: !1, discriminator: 2)
!2244 = !DILocation(line: 645, column: 3, scope: !2243)
!2245 = distinct !{!2245, !2246}
!2246 = !DILocation(line: 645, column: 3, scope: !2173)
!2247 = !DILocation(line: 653, column: 12, scope: !2173)
!2248 = !DILocation(line: 653, column: 20, scope: !2173)
!2249 = !DILocation(line: 653, column: 22, scope: !2173)
!2250 = !DILocation(line: 653, column: 18, scope: !2173)
!2251 = !DILocation(line: 653, column: 13, scope: !2173)
!2252 = !DILocation(line: 653, column: 31, scope: !2173)
!2253 = !DILocation(line: 653, column: 29, scope: !2173)
!2254 = !DILocation(line: 653, column: 4, scope: !2173)
!2255 = !DILocation(line: 653, column: 10, scope: !2173)
!2256 = !DILocation(line: 655, column: 6, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2173, file: !1, line: 655, column: 6)
!2258 = !DILocation(line: 655, column: 8, scope: !2257)
!2259 = !DILocation(line: 655, column: 6, scope: !2173)
!2260 = !DILocation(line: 656, column: 5, scope: !2257)
!2261 = distinct !{!2261, !2260}
!2262 = !DILocation(line: 656, column: 5, scope: !2263)
!2263 = !DILexicalBlockFile(scope: !2264, file: !1, discriminator: 1)
!2264 = distinct !DILexicalBlock(scope: !2257, file: !1, line: 656, column: 5)
!2265 = !DILocation(line: 656, column: 5, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2264, file: !1, discriminator: 2)
!2267 = !DILocation(line: 658, column: 5, scope: !2257)
!2268 = !DILocation(line: 659, column: 1, scope: !2173)
!2269 = distinct !DISubprogram(name: "gsl_sf_bessel_K_scaled_steed_temme_CF2", scope: !1, file: !1, line: 726, type: !2270, isLocal: false, isDefinition: true, scopeLine: 729, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!42, !50, !50, !1696, !1696, !1696}
!2272 = !DILocalVariable(name: "nu", arg: 1, scope: !2269, file: !1, line: 726, type: !50)
!2273 = !DILocation(line: 726, column: 53, scope: !2269)
!2274 = !DILocalVariable(name: "x", arg: 2, scope: !2269, file: !1, line: 726, type: !50)
!2275 = !DILocation(line: 726, column: 70, scope: !2269)
!2276 = !DILocalVariable(name: "K_nu", arg: 3, scope: !2269, file: !1, line: 727, type: !1696)
!2277 = !DILocation(line: 727, column: 49, scope: !2269)
!2278 = !DILocalVariable(name: "K_nup1", arg: 4, scope: !2269, file: !1, line: 727, type: !1696)
!2279 = !DILocation(line: 727, column: 64, scope: !2269)
!2280 = !DILocalVariable(name: "Kp_nu", arg: 5, scope: !2269, file: !1, line: 728, type: !1696)
!2281 = !DILocation(line: 728, column: 49, scope: !2269)
!2282 = !DILocalVariable(name: "maxiter", scope: !2269, file: !1, line: 730, type: !52)
!2283 = !DILocation(line: 730, column: 13, scope: !2269)
!2284 = !DILocalVariable(name: "i", scope: !2269, file: !1, line: 732, type: !42)
!2285 = !DILocation(line: 732, column: 7, scope: !2269)
!2286 = !DILocalVariable(name: "bi", scope: !2269, file: !1, line: 733, type: !51)
!2287 = !DILocation(line: 733, column: 10, scope: !2269)
!2288 = !DILocation(line: 733, column: 26, scope: !2269)
!2289 = !DILocation(line: 733, column: 24, scope: !2269)
!2290 = !DILocation(line: 733, column: 18, scope: !2269)
!2291 = !DILocalVariable(name: "di", scope: !2269, file: !1, line: 734, type: !51)
!2292 = !DILocation(line: 734, column: 10, scope: !2269)
!2293 = !DILocation(line: 734, column: 19, scope: !2269)
!2294 = !DILocation(line: 734, column: 18, scope: !2269)
!2295 = !DILocalVariable(name: "delhi", scope: !2269, file: !1, line: 735, type: !51)
!2296 = !DILocation(line: 735, column: 10, scope: !2269)
!2297 = !DILocation(line: 735, column: 18, scope: !2269)
!2298 = !DILocalVariable(name: "hi", scope: !2269, file: !1, line: 736, type: !51)
!2299 = !DILocation(line: 736, column: 10, scope: !2269)
!2300 = !DILocation(line: 736, column: 18, scope: !2269)
!2301 = !DILocalVariable(name: "qi", scope: !2269, file: !1, line: 738, type: !51)
!2302 = !DILocation(line: 738, column: 10, scope: !2269)
!2303 = !DILocalVariable(name: "qip1", scope: !2269, file: !1, line: 739, type: !51)
!2304 = !DILocation(line: 739, column: 10, scope: !2269)
!2305 = !DILocalVariable(name: "ai", scope: !2269, file: !1, line: 741, type: !51)
!2306 = !DILocation(line: 741, column: 10, scope: !2269)
!2307 = !DILocation(line: 741, column: 24, scope: !2269)
!2308 = !DILocation(line: 741, column: 27, scope: !2269)
!2309 = !DILocation(line: 741, column: 26, scope: !2269)
!2310 = !DILocation(line: 741, column: 22, scope: !2269)
!2311 = !DILocation(line: 741, column: 15, scope: !2269)
!2312 = !DILocalVariable(name: "a1", scope: !2269, file: !1, line: 742, type: !51)
!2313 = !DILocation(line: 742, column: 10, scope: !2269)
!2314 = !DILocation(line: 742, column: 15, scope: !2269)
!2315 = !DILocalVariable(name: "ci", scope: !2269, file: !1, line: 743, type: !51)
!2316 = !DILocation(line: 743, column: 10, scope: !2269)
!2317 = !DILocation(line: 743, column: 16, scope: !2269)
!2318 = !DILocation(line: 743, column: 15, scope: !2269)
!2319 = !DILocalVariable(name: "Qi", scope: !2269, file: !1, line: 744, type: !51)
!2320 = !DILocation(line: 744, column: 10, scope: !2269)
!2321 = !DILocation(line: 744, column: 16, scope: !2269)
!2322 = !DILocation(line: 744, column: 15, scope: !2269)
!2323 = !DILocalVariable(name: "s", scope: !2269, file: !1, line: 746, type: !51)
!2324 = !DILocation(line: 746, column: 10, scope: !2269)
!2325 = !DILocation(line: 746, column: 20, scope: !2269)
!2326 = !DILocation(line: 746, column: 23, scope: !2269)
!2327 = !DILocation(line: 746, column: 22, scope: !2269)
!2328 = !DILocation(line: 746, column: 18, scope: !2269)
!2329 = !DILocation(line: 748, column: 8, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2269, file: !1, line: 748, column: 3)
!2331 = !DILocation(line: 748, column: 7, scope: !2330)
!2332 = !DILocation(line: 748, column: 12, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2334, file: !1, discriminator: 1)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !1, line: 748, column: 3)
!2335 = !DILocation(line: 748, column: 13, scope: !2333)
!2336 = !DILocation(line: 748, column: 3, scope: !2333)
!2337 = !DILocalVariable(name: "dels", scope: !2338, file: !1, line: 749, type: !51)
!2338 = distinct !DILexicalBlock(scope: !2334, file: !1, line: 748, column: 29)
!2339 = !DILocation(line: 749, column: 12, scope: !2338)
!2340 = !DILocalVariable(name: "tmp", scope: !2338, file: !1, line: 750, type: !51)
!2341 = !DILocation(line: 750, column: 12, scope: !2338)
!2342 = !DILocation(line: 751, column: 16, scope: !2338)
!2343 = !DILocation(line: 751, column: 17, scope: !2338)
!2344 = !DILocation(line: 751, column: 15, scope: !2338)
!2345 = !DILocation(line: 751, column: 14, scope: !2338)
!2346 = !DILocation(line: 751, column: 8, scope: !2338)
!2347 = !DILocation(line: 752, column: 12, scope: !2338)
!2348 = !DILocation(line: 752, column: 11, scope: !2338)
!2349 = !DILocation(line: 752, column: 15, scope: !2338)
!2350 = !DILocation(line: 752, column: 14, scope: !2338)
!2351 = !DILocation(line: 752, column: 18, scope: !2338)
!2352 = !DILocation(line: 752, column: 17, scope: !2338)
!2353 = !DILocation(line: 752, column: 9, scope: !2338)
!2354 = !DILocation(line: 753, column: 13, scope: !2338)
!2355 = !DILocation(line: 753, column: 18, scope: !2338)
!2356 = !DILocation(line: 753, column: 21, scope: !2338)
!2357 = !DILocation(line: 753, column: 20, scope: !2338)
!2358 = !DILocation(line: 753, column: 16, scope: !2338)
!2359 = !DILocation(line: 753, column: 27, scope: !2338)
!2360 = !DILocation(line: 753, column: 26, scope: !2338)
!2361 = !DILocation(line: 753, column: 10, scope: !2338)
!2362 = !DILocation(line: 754, column: 12, scope: !2338)
!2363 = !DILocation(line: 754, column: 10, scope: !2338)
!2364 = !DILocation(line: 755, column: 12, scope: !2338)
!2365 = !DILocation(line: 755, column: 10, scope: !2338)
!2366 = !DILocation(line: 756, column: 11, scope: !2338)
!2367 = !DILocation(line: 756, column: 14, scope: !2338)
!2368 = !DILocation(line: 756, column: 13, scope: !2338)
!2369 = !DILocation(line: 756, column: 8, scope: !2338)
!2370 = !DILocation(line: 757, column: 8, scope: !2338)
!2371 = !DILocation(line: 758, column: 16, scope: !2338)
!2372 = !DILocation(line: 758, column: 21, scope: !2338)
!2373 = !DILocation(line: 758, column: 24, scope: !2338)
!2374 = !DILocation(line: 758, column: 23, scope: !2338)
!2375 = !DILocation(line: 758, column: 19, scope: !2338)
!2376 = !DILocation(line: 758, column: 14, scope: !2338)
!2377 = !DILocation(line: 758, column: 9, scope: !2338)
!2378 = !DILocation(line: 759, column: 14, scope: !2338)
!2379 = !DILocation(line: 759, column: 17, scope: !2338)
!2380 = !DILocation(line: 759, column: 16, scope: !2338)
!2381 = !DILocation(line: 759, column: 20, scope: !2338)
!2382 = !DILocation(line: 759, column: 29, scope: !2338)
!2383 = !DILocation(line: 759, column: 27, scope: !2338)
!2384 = !DILocation(line: 759, column: 11, scope: !2338)
!2385 = !DILocation(line: 760, column: 11, scope: !2338)
!2386 = !DILocation(line: 760, column: 8, scope: !2338)
!2387 = !DILocation(line: 761, column: 12, scope: !2338)
!2388 = !DILocation(line: 761, column: 15, scope: !2338)
!2389 = !DILocation(line: 761, column: 14, scope: !2338)
!2390 = !DILocation(line: 761, column: 10, scope: !2338)
!2391 = !DILocation(line: 762, column: 10, scope: !2338)
!2392 = !DILocation(line: 762, column: 7, scope: !2338)
!2393 = !DILocation(line: 763, column: 13, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2338, file: !1, line: 763, column: 8)
!2395 = !DILocation(line: 763, column: 18, scope: !2394)
!2396 = !DILocation(line: 763, column: 17, scope: !2394)
!2397 = !DILocation(line: 763, column: 8, scope: !2394)
!2398 = !DILocation(line: 763, column: 21, scope: !2394)
!2399 = !DILocation(line: 763, column: 8, scope: !2338)
!2400 = !DILocation(line: 763, column: 40, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2394, file: !1, discriminator: 1)
!2402 = !DILocation(line: 764, column: 3, scope: !2338)
!2403 = !DILocation(line: 748, column: 25, scope: !2404)
!2404 = !DILexicalBlockFile(scope: !2334, file: !1, discriminator: 2)
!2405 = !DILocation(line: 748, column: 3, scope: !2404)
!2406 = distinct !{!2406, !2407}
!2407 = !DILocation(line: 748, column: 3, scope: !2269)
!2408 = !DILocation(line: 766, column: 10, scope: !2269)
!2409 = !DILocation(line: 766, column: 9, scope: !2269)
!2410 = !DILocation(line: 766, column: 6, scope: !2269)
!2411 = !DILocation(line: 768, column: 28, scope: !2269)
!2412 = !DILocation(line: 768, column: 27, scope: !2269)
!2413 = !DILocation(line: 768, column: 22, scope: !2269)
!2414 = !DILocation(line: 768, column: 13, scope: !2269)
!2415 = !DILocation(line: 768, column: 34, scope: !2269)
!2416 = !DILocation(line: 768, column: 32, scope: !2269)
!2417 = !DILocation(line: 768, column: 4, scope: !2269)
!2418 = !DILocation(line: 768, column: 11, scope: !2269)
!2419 = !DILocation(line: 769, column: 14, scope: !2269)
!2420 = !DILocation(line: 769, column: 13, scope: !2269)
!2421 = !DILocation(line: 769, column: 22, scope: !2269)
!2422 = !DILocation(line: 769, column: 27, scope: !2269)
!2423 = !DILocation(line: 769, column: 25, scope: !2269)
!2424 = !DILocation(line: 769, column: 29, scope: !2269)
!2425 = !DILocation(line: 769, column: 37, scope: !2269)
!2426 = !DILocation(line: 769, column: 35, scope: !2269)
!2427 = !DILocation(line: 769, column: 19, scope: !2269)
!2428 = !DILocation(line: 769, column: 41, scope: !2269)
!2429 = !DILocation(line: 769, column: 40, scope: !2269)
!2430 = !DILocation(line: 769, column: 4, scope: !2269)
!2431 = !DILocation(line: 769, column: 11, scope: !2269)
!2432 = !DILocation(line: 770, column: 16, scope: !2269)
!2433 = !DILocation(line: 770, column: 15, scope: !2269)
!2434 = !DILocation(line: 770, column: 13, scope: !2269)
!2435 = !DILocation(line: 770, column: 25, scope: !2269)
!2436 = !DILocation(line: 770, column: 28, scope: !2269)
!2437 = !DILocation(line: 770, column: 27, scope: !2269)
!2438 = !DILocation(line: 770, column: 33, scope: !2269)
!2439 = !DILocation(line: 770, column: 32, scope: !2269)
!2440 = !DILocation(line: 770, column: 30, scope: !2269)
!2441 = !DILocation(line: 770, column: 23, scope: !2269)
!2442 = !DILocation(line: 770, column: 4, scope: !2269)
!2443 = !DILocation(line: 770, column: 11, scope: !2269)
!2444 = !DILocation(line: 771, column: 6, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2269, file: !1, line: 771, column: 6)
!2446 = !DILocation(line: 771, column: 8, scope: !2445)
!2447 = !DILocation(line: 771, column: 6, scope: !2269)
!2448 = !DILocation(line: 772, column: 5, scope: !2445)
!2449 = distinct !{!2449, !2448}
!2450 = !DILocation(line: 772, column: 5, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2452, file: !1, discriminator: 1)
!2452 = distinct !DILexicalBlock(scope: !2445, file: !1, line: 772, column: 5)
!2453 = !DILocation(line: 772, column: 5, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !2452, file: !1, discriminator: 2)
!2455 = !DILocation(line: 774, column: 5, scope: !2445)
!2456 = !DILocation(line: 775, column: 1, scope: !2269)
!2457 = distinct !DISubprogram(name: "gsl_sf_bessel_cos_pi4_e", scope: !1, file: !1, line: 778, type: !2458, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!42, !51, !51, !53}
!2460 = !DILocalVariable(name: "y", arg: 1, scope: !2457, file: !1, line: 778, type: !51)
!2461 = !DILocation(line: 778, column: 36, scope: !2457)
!2462 = !DILocalVariable(name: "eps", arg: 2, scope: !2457, file: !1, line: 778, type: !51)
!2463 = !DILocation(line: 778, column: 46, scope: !2457)
!2464 = !DILocalVariable(name: "result", arg: 3, scope: !2457, file: !1, line: 778, type: !53)
!2465 = !DILocation(line: 778, column: 67, scope: !2457)
!2466 = !DILocalVariable(name: "sy", scope: !2457, file: !1, line: 780, type: !50)
!2467 = !DILocation(line: 780, column: 16, scope: !2457)
!2468 = !DILocation(line: 780, column: 25, scope: !2457)
!2469 = !DILocation(line: 780, column: 21, scope: !2457)
!2470 = !DILocalVariable(name: "cy", scope: !2457, file: !1, line: 781, type: !50)
!2471 = !DILocation(line: 781, column: 16, scope: !2457)
!2472 = !DILocation(line: 781, column: 25, scope: !2457)
!2473 = !DILocation(line: 781, column: 21, scope: !2457)
!2474 = !DILocalVariable(name: "s", scope: !2457, file: !1, line: 782, type: !50)
!2475 = !DILocation(line: 782, column: 16, scope: !2457)
!2476 = !DILocation(line: 782, column: 20, scope: !2457)
!2477 = !DILocation(line: 782, column: 25, scope: !2457)
!2478 = !DILocation(line: 782, column: 23, scope: !2457)
!2479 = !DILocalVariable(name: "d", scope: !2457, file: !1, line: 783, type: !50)
!2480 = !DILocation(line: 783, column: 16, scope: !2457)
!2481 = !DILocation(line: 783, column: 20, scope: !2457)
!2482 = !DILocation(line: 783, column: 25, scope: !2457)
!2483 = !DILocation(line: 783, column: 23, scope: !2457)
!2484 = !DILocalVariable(name: "abs_sum", scope: !2457, file: !1, line: 784, type: !50)
!2485 = !DILocation(line: 784, column: 16, scope: !2457)
!2486 = !DILocation(line: 784, column: 31, scope: !2457)
!2487 = !DILocation(line: 784, column: 26, scope: !2457)
!2488 = !DILocation(line: 784, column: 42, scope: !2457)
!2489 = !DILocation(line: 784, column: 37, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !2457, file: !1, discriminator: 1)
!2491 = !DILocation(line: 784, column: 35, scope: !2457)
!2492 = !DILocalVariable(name: "seps", scope: !2457, file: !1, line: 785, type: !51)
!2493 = !DILocation(line: 785, column: 10, scope: !2457)
!2494 = !DILocalVariable(name: "ceps", scope: !2457, file: !1, line: 786, type: !51)
!2495 = !DILocation(line: 786, column: 10, scope: !2457)
!2496 = !DILocation(line: 787, column: 11, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2457, file: !1, line: 787, column: 6)
!2498 = !DILocation(line: 787, column: 6, scope: !2497)
!2499 = !DILocation(line: 787, column: 16, scope: !2497)
!2500 = !DILocation(line: 787, column: 6, scope: !2457)
!2501 = !DILocalVariable(name: "e2", scope: !2502, file: !1, line: 788, type: !50)
!2502 = distinct !DILexicalBlock(scope: !2497, file: !1, line: 787, column: 41)
!2503 = !DILocation(line: 788, column: 18, scope: !2502)
!2504 = !DILocation(line: 788, column: 23, scope: !2502)
!2505 = !DILocation(line: 788, column: 27, scope: !2502)
!2506 = !DILocation(line: 788, column: 26, scope: !2502)
!2507 = !DILocation(line: 789, column: 12, scope: !2502)
!2508 = !DILocation(line: 789, column: 25, scope: !2502)
!2509 = !DILocation(line: 789, column: 27, scope: !2502)
!2510 = !DILocation(line: 789, column: 41, scope: !2502)
!2511 = !DILocation(line: 789, column: 43, scope: !2502)
!2512 = !DILocation(line: 789, column: 39, scope: !2502)
!2513 = !DILocation(line: 789, column: 32, scope: !2502)
!2514 = !DILocation(line: 789, column: 23, scope: !2502)
!2515 = !DILocation(line: 789, column: 16, scope: !2502)
!2516 = !DILocation(line: 789, column: 10, scope: !2502)
!2517 = !DILocation(line: 790, column: 18, scope: !2502)
!2518 = !DILocation(line: 790, column: 20, scope: !2502)
!2519 = !DILocation(line: 790, column: 34, scope: !2502)
!2520 = !DILocation(line: 790, column: 36, scope: !2502)
!2521 = !DILocation(line: 790, column: 32, scope: !2502)
!2522 = !DILocation(line: 790, column: 25, scope: !2502)
!2523 = !DILocation(line: 790, column: 16, scope: !2502)
!2524 = !DILocation(line: 790, column: 10, scope: !2502)
!2525 = !DILocation(line: 791, column: 3, scope: !2502)
!2526 = !DILocation(line: 793, column: 16, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2497, file: !1, line: 792, column: 8)
!2528 = !DILocation(line: 793, column: 12, scope: !2527)
!2529 = !DILocation(line: 793, column: 10, scope: !2527)
!2530 = !DILocation(line: 794, column: 16, scope: !2527)
!2531 = !DILocation(line: 794, column: 12, scope: !2527)
!2532 = !DILocation(line: 794, column: 10, scope: !2527)
!2533 = !DILocation(line: 796, column: 18, scope: !2457)
!2534 = !DILocation(line: 796, column: 25, scope: !2457)
!2535 = !DILocation(line: 796, column: 23, scope: !2457)
!2536 = !DILocation(line: 796, column: 29, scope: !2457)
!2537 = !DILocation(line: 796, column: 36, scope: !2457)
!2538 = !DILocation(line: 796, column: 34, scope: !2457)
!2539 = !DILocation(line: 796, column: 27, scope: !2457)
!2540 = !DILocation(line: 796, column: 38, scope: !2457)
!2541 = !DILocation(line: 796, column: 3, scope: !2457)
!2542 = !DILocation(line: 796, column: 11, scope: !2457)
!2543 = !DILocation(line: 796, column: 15, scope: !2457)
!2544 = !DILocation(line: 797, column: 47, scope: !2457)
!2545 = !DILocation(line: 797, column: 42, scope: !2457)
!2546 = !DILocation(line: 797, column: 60, scope: !2457)
!2547 = !DILocation(line: 797, column: 55, scope: !2490)
!2548 = !DILocation(line: 797, column: 53, scope: !2457)
!2549 = !DILocation(line: 797, column: 39, scope: !2457)
!2550 = !DILocation(line: 797, column: 69, scope: !2457)
!2551 = !DILocation(line: 797, column: 67, scope: !2457)
!2552 = !DILocation(line: 797, column: 77, scope: !2457)
!2553 = !DILocation(line: 797, column: 3, scope: !2457)
!2554 = !DILocation(line: 797, column: 11, scope: !2457)
!2555 = !DILocation(line: 797, column: 15, scope: !2457)
!2556 = !DILocation(line: 805, column: 6, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2457, file: !1, line: 805, column: 6)
!2558 = !DILocation(line: 805, column: 8, scope: !2557)
!2559 = !DILocation(line: 805, column: 6, scope: !2457)
!2560 = !DILocation(line: 806, column: 26, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !1, line: 805, column: 31)
!2562 = !DILocation(line: 806, column: 24, scope: !2561)
!2563 = !DILocation(line: 806, column: 5, scope: !2561)
!2564 = !DILocation(line: 806, column: 13, scope: !2561)
!2565 = !DILocation(line: 806, column: 17, scope: !2561)
!2566 = !DILocation(line: 807, column: 3, scope: !2561)
!2567 = !DILocation(line: 808, column: 11, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2557, file: !1, line: 808, column: 11)
!2569 = !DILocation(line: 808, column: 13, scope: !2568)
!2570 = !DILocation(line: 808, column: 11, scope: !2557)
!2571 = !DILocation(line: 809, column: 28, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2568, file: !1, line: 808, column: 41)
!2573 = !DILocation(line: 809, column: 26, scope: !2572)
!2574 = !DILocation(line: 809, column: 30, scope: !2572)
!2575 = !DILocation(line: 809, column: 5, scope: !2572)
!2576 = !DILocation(line: 809, column: 13, scope: !2572)
!2577 = !DILocation(line: 809, column: 17, scope: !2572)
!2578 = !DILocation(line: 810, column: 3, scope: !2572)
!2579 = !DILocation(line: 812, column: 3, scope: !2457)
!2580 = distinct !DISubprogram(name: "gsl_sf_bessel_sin_pi4_e", scope: !1, file: !1, line: 816, type: !2458, isLocal: false, isDefinition: true, scopeLine: 817, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!2581 = !DILocalVariable(name: "y", arg: 1, scope: !2580, file: !1, line: 816, type: !51)
!2582 = !DILocation(line: 816, column: 36, scope: !2580)
!2583 = !DILocalVariable(name: "eps", arg: 2, scope: !2580, file: !1, line: 816, type: !51)
!2584 = !DILocation(line: 816, column: 46, scope: !2580)
!2585 = !DILocalVariable(name: "result", arg: 3, scope: !2580, file: !1, line: 816, type: !53)
!2586 = !DILocation(line: 816, column: 67, scope: !2580)
!2587 = !DILocalVariable(name: "sy", scope: !2580, file: !1, line: 818, type: !50)
!2588 = !DILocation(line: 818, column: 16, scope: !2580)
!2589 = !DILocation(line: 818, column: 25, scope: !2580)
!2590 = !DILocation(line: 818, column: 21, scope: !2580)
!2591 = !DILocalVariable(name: "cy", scope: !2580, file: !1, line: 819, type: !50)
!2592 = !DILocation(line: 819, column: 16, scope: !2580)
!2593 = !DILocation(line: 819, column: 25, scope: !2580)
!2594 = !DILocation(line: 819, column: 21, scope: !2580)
!2595 = !DILocalVariable(name: "s", scope: !2580, file: !1, line: 820, type: !50)
!2596 = !DILocation(line: 820, column: 16, scope: !2580)
!2597 = !DILocation(line: 820, column: 20, scope: !2580)
!2598 = !DILocation(line: 820, column: 25, scope: !2580)
!2599 = !DILocation(line: 820, column: 23, scope: !2580)
!2600 = !DILocalVariable(name: "d", scope: !2580, file: !1, line: 821, type: !50)
!2601 = !DILocation(line: 821, column: 16, scope: !2580)
!2602 = !DILocation(line: 821, column: 20, scope: !2580)
!2603 = !DILocation(line: 821, column: 25, scope: !2580)
!2604 = !DILocation(line: 821, column: 23, scope: !2580)
!2605 = !DILocalVariable(name: "abs_sum", scope: !2580, file: !1, line: 822, type: !50)
!2606 = !DILocation(line: 822, column: 16, scope: !2580)
!2607 = !DILocation(line: 822, column: 31, scope: !2580)
!2608 = !DILocation(line: 822, column: 26, scope: !2580)
!2609 = !DILocation(line: 822, column: 42, scope: !2580)
!2610 = !DILocation(line: 822, column: 37, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2580, file: !1, discriminator: 1)
!2612 = !DILocation(line: 822, column: 35, scope: !2580)
!2613 = !DILocalVariable(name: "seps", scope: !2580, file: !1, line: 823, type: !51)
!2614 = !DILocation(line: 823, column: 10, scope: !2580)
!2615 = !DILocalVariable(name: "ceps", scope: !2580, file: !1, line: 824, type: !51)
!2616 = !DILocation(line: 824, column: 10, scope: !2580)
!2617 = !DILocation(line: 825, column: 11, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2580, file: !1, line: 825, column: 6)
!2619 = !DILocation(line: 825, column: 6, scope: !2618)
!2620 = !DILocation(line: 825, column: 16, scope: !2618)
!2621 = !DILocation(line: 825, column: 6, scope: !2580)
!2622 = !DILocalVariable(name: "e2", scope: !2623, file: !1, line: 826, type: !50)
!2623 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 825, column: 41)
!2624 = !DILocation(line: 826, column: 18, scope: !2623)
!2625 = !DILocation(line: 826, column: 23, scope: !2623)
!2626 = !DILocation(line: 826, column: 27, scope: !2623)
!2627 = !DILocation(line: 826, column: 26, scope: !2623)
!2628 = !DILocation(line: 827, column: 12, scope: !2623)
!2629 = !DILocation(line: 827, column: 25, scope: !2623)
!2630 = !DILocation(line: 827, column: 27, scope: !2623)
!2631 = !DILocation(line: 827, column: 41, scope: !2623)
!2632 = !DILocation(line: 827, column: 43, scope: !2623)
!2633 = !DILocation(line: 827, column: 39, scope: !2623)
!2634 = !DILocation(line: 827, column: 32, scope: !2623)
!2635 = !DILocation(line: 827, column: 23, scope: !2623)
!2636 = !DILocation(line: 827, column: 16, scope: !2623)
!2637 = !DILocation(line: 827, column: 10, scope: !2623)
!2638 = !DILocation(line: 828, column: 18, scope: !2623)
!2639 = !DILocation(line: 828, column: 20, scope: !2623)
!2640 = !DILocation(line: 828, column: 34, scope: !2623)
!2641 = !DILocation(line: 828, column: 36, scope: !2623)
!2642 = !DILocation(line: 828, column: 32, scope: !2623)
!2643 = !DILocation(line: 828, column: 25, scope: !2623)
!2644 = !DILocation(line: 828, column: 16, scope: !2623)
!2645 = !DILocation(line: 828, column: 10, scope: !2623)
!2646 = !DILocation(line: 829, column: 3, scope: !2623)
!2647 = !DILocation(line: 831, column: 16, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 830, column: 8)
!2649 = !DILocation(line: 831, column: 12, scope: !2648)
!2650 = !DILocation(line: 831, column: 10, scope: !2648)
!2651 = !DILocation(line: 832, column: 16, scope: !2648)
!2652 = !DILocation(line: 832, column: 12, scope: !2648)
!2653 = !DILocation(line: 832, column: 10, scope: !2648)
!2654 = !DILocation(line: 834, column: 18, scope: !2580)
!2655 = !DILocation(line: 834, column: 25, scope: !2580)
!2656 = !DILocation(line: 834, column: 23, scope: !2580)
!2657 = !DILocation(line: 834, column: 29, scope: !2580)
!2658 = !DILocation(line: 834, column: 36, scope: !2580)
!2659 = !DILocation(line: 834, column: 34, scope: !2580)
!2660 = !DILocation(line: 834, column: 27, scope: !2580)
!2661 = !DILocation(line: 834, column: 38, scope: !2580)
!2662 = !DILocation(line: 834, column: 3, scope: !2580)
!2663 = !DILocation(line: 834, column: 11, scope: !2580)
!2664 = !DILocation(line: 834, column: 15, scope: !2580)
!2665 = !DILocation(line: 835, column: 47, scope: !2580)
!2666 = !DILocation(line: 835, column: 42, scope: !2580)
!2667 = !DILocation(line: 835, column: 60, scope: !2580)
!2668 = !DILocation(line: 835, column: 55, scope: !2611)
!2669 = !DILocation(line: 835, column: 53, scope: !2580)
!2670 = !DILocation(line: 835, column: 39, scope: !2580)
!2671 = !DILocation(line: 835, column: 69, scope: !2580)
!2672 = !DILocation(line: 835, column: 67, scope: !2580)
!2673 = !DILocation(line: 835, column: 77, scope: !2580)
!2674 = !DILocation(line: 835, column: 3, scope: !2580)
!2675 = !DILocation(line: 835, column: 11, scope: !2580)
!2676 = !DILocation(line: 835, column: 15, scope: !2580)
!2677 = !DILocation(line: 841, column: 6, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2580, file: !1, line: 841, column: 6)
!2679 = !DILocation(line: 841, column: 8, scope: !2678)
!2680 = !DILocation(line: 841, column: 6, scope: !2580)
!2681 = !DILocation(line: 842, column: 26, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2678, file: !1, line: 841, column: 31)
!2683 = !DILocation(line: 842, column: 24, scope: !2682)
!2684 = !DILocation(line: 842, column: 5, scope: !2682)
!2685 = !DILocation(line: 842, column: 13, scope: !2682)
!2686 = !DILocation(line: 842, column: 17, scope: !2682)
!2687 = !DILocation(line: 843, column: 3, scope: !2682)
!2688 = !DILocation(line: 844, column: 11, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2678, file: !1, line: 844, column: 11)
!2690 = !DILocation(line: 844, column: 13, scope: !2689)
!2691 = !DILocation(line: 844, column: 11, scope: !2678)
!2692 = !DILocation(line: 845, column: 28, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2689, file: !1, line: 844, column: 41)
!2694 = !DILocation(line: 845, column: 26, scope: !2693)
!2695 = !DILocation(line: 845, column: 30, scope: !2693)
!2696 = !DILocation(line: 845, column: 5, scope: !2693)
!2697 = !DILocation(line: 845, column: 13, scope: !2693)
!2698 = !DILocation(line: 845, column: 17, scope: !2693)
!2699 = !DILocation(line: 846, column: 3, scope: !2693)
!2700 = !DILocation(line: 848, column: 3, scope: !2580)
