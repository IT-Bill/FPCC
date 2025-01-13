; ModuleID = 'hyperg_2F1.c'
source_filename = "hyperg_2F1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"hyperg_2F1.c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"gsl_sf_hyperg_2F1_e(a, b, c, x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"gsl_sf_hyperg_2F1_conj_e(aR, aI, c, x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"gsl_sf_hyperg_2F1_renorm_e(a, b, c, x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"gsl_sf_hyperg_2F1_conj_renorm_e(aR, aI, c, x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_2F1_e(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !60, metadata !61), !dbg !62
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !63, metadata !61), !dbg !64
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !65, metadata !61), !dbg !66
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !67, metadata !61), !dbg !68
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !69, metadata !61), !dbg !70
  call void @llvm.dbg.declare(metadata double* %12, metadata !71, metadata !61), !dbg !72
  %34 = load double, double* %9, align 8, !dbg !73
  %35 = load double, double* %7, align 8, !dbg !74
  %36 = fsub double %34, %35, !dbg !75
  %37 = load double, double* %8, align 8, !dbg !76
  %38 = fsub double %36, %37, !dbg !77
  store double %38, double* %12, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata double* %13, metadata !78, metadata !61), !dbg !79
  %39 = load double, double* %7, align 8, !dbg !80
  %40 = fadd double %39, 5.000000e-01, !dbg !81
  %41 = call double @floor(double %40) #1, !dbg !82
  store double %41, double* %13, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata double* %14, metadata !83, metadata !61), !dbg !84
  %42 = load double, double* %8, align 8, !dbg !85
  %43 = fadd double %42, 5.000000e-01, !dbg !86
  %44 = call double @floor(double %43) #1, !dbg !87
  store double %44, double* %14, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata double* %15, metadata !88, metadata !61), !dbg !89
  %45 = load double, double* %9, align 8, !dbg !90
  %46 = fadd double %45, 5.000000e-01, !dbg !91
  %47 = call double @floor(double %46) #1, !dbg !92
  store double %47, double* %15, align 8, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %16, metadata !93, metadata !61), !dbg !95
  %48 = load double, double* %7, align 8, !dbg !96
  %49 = fcmp olt double %48, 0.000000e+00, !dbg !97
  br i1 %49, label %50, label %56, !dbg !98

; <label>:50:                                     ; preds = %5
  %51 = load double, double* %7, align 8, !dbg !99
  %52 = load double, double* %13, align 8, !dbg !101
  %53 = fsub double %51, %52, !dbg !102
  %54 = call double @fabs(double %53) #1, !dbg !103
  %55 = fcmp olt double %54, 0x3D4F400000000000, !dbg !104
  br label %56

; <label>:56:                                     ; preds = %50, %5
  %57 = phi i1 [ false, %5 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32, !dbg !105
  store i32 %58, i32* %16, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %17, metadata !108, metadata !61), !dbg !109
  %59 = load double, double* %8, align 8, !dbg !110
  %60 = fcmp olt double %59, 0.000000e+00, !dbg !111
  br i1 %60, label %61, label %67, !dbg !112

; <label>:61:                                     ; preds = %56
  %62 = load double, double* %8, align 8, !dbg !113
  %63 = load double, double* %14, align 8, !dbg !114
  %64 = fsub double %62, %63, !dbg !115
  %65 = call double @fabs(double %64) #1, !dbg !116
  %66 = fcmp olt double %65, 0x3D4F400000000000, !dbg !117
  br label %67

; <label>:67:                                     ; preds = %61, %56
  %68 = phi i1 [ false, %56 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32, !dbg !118
  store i32 %69, i32* %17, align 4, !dbg !119
  call void @llvm.dbg.declare(metadata i32* %18, metadata !120, metadata !61), !dbg !121
  %70 = load double, double* %9, align 8, !dbg !122
  %71 = fcmp olt double %70, 0.000000e+00, !dbg !123
  br i1 %71, label %72, label %78, !dbg !124

; <label>:72:                                     ; preds = %67
  %73 = load double, double* %9, align 8, !dbg !125
  %74 = load double, double* %15, align 8, !dbg !126
  %75 = fsub double %73, %74, !dbg !127
  %76 = call double @fabs(double %75) #1, !dbg !128
  %77 = fcmp olt double %76, 0x3D4F400000000000, !dbg !129
  br label %78

; <label>:78:                                     ; preds = %72, %67
  %79 = phi i1 [ false, %67 ], [ %77, %72 ]
  %80 = zext i1 %79 to i32, !dbg !130
  store i32 %80, i32* %18, align 4, !dbg !131
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !132
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !133
  store double 0.000000e+00, double* %82, align 8, !dbg !134
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !135
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 1, !dbg !136
  store double 0.000000e+00, double* %84, align 8, !dbg !137
  %85 = load double, double* %10, align 8, !dbg !138
  %86 = fsub double %85, 1.000000e+00, !dbg !140
  %87 = call double @fabs(double %86) #1, !dbg !141
  %88 = fcmp olt double %87, 0x3D4F400000000000, !dbg !142
  br i1 %88, label %89, label %174, !dbg !143

; <label>:89:                                     ; preds = %78
  %90 = load double, double* %9, align 8, !dbg !144
  %91 = load double, double* %7, align 8, !dbg !146
  %92 = fsub double %90, %91, !dbg !147
  %93 = load double, double* %8, align 8, !dbg !148
  %94 = fsub double %92, %93, !dbg !149
  %95 = fcmp ogt double %94, 0.000000e+00, !dbg !150
  br i1 %95, label %96, label %174, !dbg !151

; <label>:96:                                     ; preds = %89
  %97 = load double, double* %9, align 8, !dbg !152
  %98 = fcmp une double %97, 0.000000e+00, !dbg !154
  br i1 %98, label %99, label %174, !dbg !155

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %18, align 4, !dbg !156
  %101 = icmp ne i32 %100, 0, !dbg !156
  br i1 %101, label %174, label %102, !dbg !158

; <label>:102:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !159, metadata !61), !dbg !161
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !162, metadata !61), !dbg !163
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !164, metadata !61), !dbg !165
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !166, metadata !61), !dbg !167
  call void @llvm.dbg.declare(metadata double* %23, metadata !168, metadata !61), !dbg !169
  call void @llvm.dbg.declare(metadata double* %24, metadata !170, metadata !61), !dbg !171
  call void @llvm.dbg.declare(metadata double* %25, metadata !172, metadata !61), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %26, metadata !174, metadata !61), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %27, metadata !176, metadata !61), !dbg !177
  %103 = load double, double* %9, align 8, !dbg !178
  %104 = call i32 @gsl_sf_lngamma_sgn_e(double %103, %struct.gsl_sf_result_struct* %19, double* %23), !dbg !179
  store i32 %104, i32* %27, align 4, !dbg !177
  call void @llvm.dbg.declare(metadata i32* %28, metadata !180, metadata !61), !dbg !181
  %105 = load double, double* %9, align 8, !dbg !182
  %106 = load double, double* %7, align 8, !dbg !183
  %107 = fsub double %105, %106, !dbg !184
  %108 = load double, double* %8, align 8, !dbg !185
  %109 = fsub double %107, %108, !dbg !186
  %110 = call i32 @gsl_sf_lngamma_e(double %109, %struct.gsl_sf_result_struct* %20), !dbg !187
  store i32 %110, i32* %28, align 4, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %29, metadata !188, metadata !61), !dbg !189
  %111 = load double, double* %9, align 8, !dbg !190
  %112 = load double, double* %7, align 8, !dbg !191
  %113 = fsub double %111, %112, !dbg !192
  %114 = call i32 @gsl_sf_lngamma_sgn_e(double %113, %struct.gsl_sf_result_struct* %21, double* %24), !dbg !193
  store i32 %114, i32* %29, align 4, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %30, metadata !194, metadata !61), !dbg !195
  %115 = load double, double* %9, align 8, !dbg !196
  %116 = load double, double* %8, align 8, !dbg !197
  %117 = fsub double %115, %116, !dbg !198
  %118 = call i32 @gsl_sf_lngamma_sgn_e(double %117, %struct.gsl_sf_result_struct* %22, double* %25), !dbg !199
  store i32 %118, i32* %30, align 4, !dbg !195
  %119 = load i32, i32* %27, align 4, !dbg !200
  %120 = icmp ne i32 %119, 0, !dbg !202
  br i1 %120, label %130, label %121, !dbg !203

; <label>:121:                                    ; preds = %102
  %122 = load i32, i32* %28, align 4, !dbg !204
  %123 = icmp ne i32 %122, 0, !dbg !206
  br i1 %123, label %130, label %124, !dbg !207

; <label>:124:                                    ; preds = %121
  %125 = load i32, i32* %29, align 4, !dbg !208
  %126 = icmp ne i32 %125, 0, !dbg !209
  br i1 %126, label %130, label %127, !dbg !210

; <label>:127:                                    ; preds = %124
  %128 = load i32, i32* %30, align 4, !dbg !211
  %129 = icmp ne i32 %128, 0, !dbg !213
  br i1 %129, label %130, label %139, !dbg !214

; <label>:130:                                    ; preds = %127, %124, %121, %102
  br label %131, !dbg !216, !llvm.loop !218

; <label>:131:                                    ; preds = %130
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !219
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 0, !dbg !219
  store double 0x7FF8000000000000, double* %133, align 8, !dbg !219
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !219
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 1, !dbg !219
  store double 0x7FF8000000000000, double* %135, align 8, !dbg !219
  br label %136, !dbg !219, !llvm.loop !222

; <label>:136:                                    ; preds = %131
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 672, i32 1), !dbg !224
  store i32 1, i32* %6, align 4, !dbg !224
  br label %406, !dbg !224
                                                  ; No predecessors!
  br label %138, !dbg !227

; <label>:138:                                    ; preds = %137
  br label %139, !dbg !229

; <label>:139:                                    ; preds = %138, %127
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !230
  %141 = load double, double* %140, align 8, !dbg !230
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !231
  %143 = load double, double* %142, align 8, !dbg !231
  %144 = fadd double %141, %143, !dbg !232
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !233
  %146 = load double, double* %145, align 8, !dbg !233
  %147 = fsub double %144, %146, !dbg !234
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !235
  %149 = load double, double* %148, align 8, !dbg !235
  %150 = fsub double %147, %149, !dbg !236
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !237
  %152 = load double, double* %151, align 8, !dbg !237
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !238
  %154 = load double, double* %153, align 8, !dbg !238
  %155 = fadd double %152, %154, !dbg !239
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !240
  %157 = load double, double* %156, align 8, !dbg !240
  %158 = fadd double %155, %157, !dbg !241
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !242
  %160 = load double, double* %159, align 8, !dbg !242
  %161 = fadd double %158, %160, !dbg !243
  %162 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !244
  %163 = call i32 @gsl_sf_exp_err_e(double %150, double %161, %struct.gsl_sf_result_struct* %162), !dbg !245
  store i32 %163, i32* %26, align 4, !dbg !246
  %164 = load double, double* %23, align 8, !dbg !247
  %165 = load double, double* %24, align 8, !dbg !248
  %166 = load double, double* %25, align 8, !dbg !249
  %167 = fmul double %165, %166, !dbg !250
  %168 = fdiv double %164, %167, !dbg !251
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !252
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 0, !dbg !253
  %171 = load double, double* %170, align 8, !dbg !254
  %172 = fmul double %171, %168, !dbg !254
  store double %172, double* %170, align 8, !dbg !254
  %173 = load i32, i32* %26, align 4, !dbg !255
  store i32 %173, i32* %6, align 4, !dbg !256
  br label %406, !dbg !256

; <label>:174:                                    ; preds = %99, %96, %89, %78
  %175 = load double, double* %10, align 8, !dbg !257
  %176 = fcmp olt double %175, -1.000000e+00, !dbg !259
  br i1 %176, label %180, label %177, !dbg !260

; <label>:177:                                    ; preds = %174
  %178 = load double, double* %10, align 8, !dbg !261
  %179 = fcmp ole double 1.000000e+00, %178, !dbg !263
  br i1 %179, label %180, label %189, !dbg !264

; <label>:180:                                    ; preds = %177, %174
  br label %181, !dbg !265, !llvm.loop !267

; <label>:181:                                    ; preds = %180
  %182 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !268
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %182, i32 0, i32 0, !dbg !268
  store double 0x7FF8000000000000, double* %183, align 8, !dbg !268
  %184 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !268
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %184, i32 0, i32 1, !dbg !268
  store double 0x7FF8000000000000, double* %185, align 8, !dbg !268
  br label %186, !dbg !268, !llvm.loop !271

; <label>:186:                                    ; preds = %181
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 685, i32 1), !dbg !273
  store i32 1, i32* %6, align 4, !dbg !273
  br label %406, !dbg !273
                                                  ; No predecessors!
  br label %188, !dbg !276

; <label>:188:                                    ; preds = %187
  br label %189, !dbg !278

; <label>:189:                                    ; preds = %188, %177
  %190 = load i32, i32* %18, align 4, !dbg !279
  %191 = icmp ne i32 %190, 0, !dbg !279
  br i1 %191, label %192, label %218, !dbg !281

; <label>:192:                                    ; preds = %189
  %193 = load i32, i32* %16, align 4, !dbg !282
  %194 = icmp ne i32 %193, 0, !dbg !282
  br i1 %194, label %195, label %200, !dbg !285

; <label>:195:                                    ; preds = %192
  %196 = load double, double* %7, align 8, !dbg !286
  %197 = load double, double* %9, align 8, !dbg !288
  %198 = fadd double %197, 1.000000e-01, !dbg !289
  %199 = fcmp ogt double %196, %198, !dbg !290
  br i1 %199, label %217, label %200, !dbg !291

; <label>:200:                                    ; preds = %195, %192
  %201 = load i32, i32* %17, align 4, !dbg !292
  %202 = icmp ne i32 %201, 0, !dbg !292
  br i1 %202, label %203, label %208, !dbg !294

; <label>:203:                                    ; preds = %200
  %204 = load double, double* %8, align 8, !dbg !295
  %205 = load double, double* %9, align 8, !dbg !297
  %206 = fadd double %205, 1.000000e-01, !dbg !298
  %207 = fcmp ogt double %204, %206, !dbg !299
  br i1 %207, label %217, label %208, !dbg !300

; <label>:208:                                    ; preds = %203, %200
  br label %209, !dbg !301, !llvm.loop !303

; <label>:209:                                    ; preds = %208
  %210 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !304
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %210, i32 0, i32 0, !dbg !304
  store double 0x7FF8000000000000, double* %211, align 8, !dbg !304
  %212 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !304
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %212, i32 0, i32 1, !dbg !304
  store double 0x7FF8000000000000, double* %213, align 8, !dbg !304
  br label %214, !dbg !304, !llvm.loop !307

; <label>:214:                                    ; preds = %209
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 693, i32 1), !dbg !309
  store i32 1, i32* %6, align 4, !dbg !309
  br label %406, !dbg !309
                                                  ; No predecessors!
  br label %216, !dbg !312

; <label>:216:                                    ; preds = %215
  br label %217, !dbg !314

; <label>:217:                                    ; preds = %216, %203, %195
  br label %218, !dbg !315

; <label>:218:                                    ; preds = %217, %189
  %219 = load double, double* %9, align 8, !dbg !316
  %220 = load double, double* %8, align 8, !dbg !318
  %221 = fsub double %219, %220, !dbg !319
  %222 = call double @fabs(double %221) #1, !dbg !320
  %223 = fcmp olt double %222, 0x3D4F400000000000, !dbg !321
  br i1 %223, label %230, label %224, !dbg !322

; <label>:224:                                    ; preds = %218
  %225 = load double, double* %9, align 8, !dbg !323
  %226 = load double, double* %7, align 8, !dbg !325
  %227 = fsub double %225, %226, !dbg !326
  %228 = call double @fabs(double %227) #1, !dbg !327
  %229 = fcmp olt double %228, 0x3D4F400000000000, !dbg !328
  br i1 %229, label %230, label %235, !dbg !329

; <label>:230:                                    ; preds = %224, %218
  %231 = load double, double* %10, align 8, !dbg !330
  %232 = load double, double* %12, align 8, !dbg !332
  %233 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !333
  %234 = call i32 @pow_omx(double %231, double %232, %struct.gsl_sf_result_struct* %233), !dbg !334
  store i32 %234, i32* %6, align 4, !dbg !335
  br label %406, !dbg !335

; <label>:235:                                    ; preds = %224
  %236 = load double, double* %7, align 8, !dbg !336
  %237 = fcmp oge double %236, 0.000000e+00, !dbg !338
  br i1 %237, label %238, label %257, !dbg !339

; <label>:238:                                    ; preds = %235
  %239 = load double, double* %8, align 8, !dbg !340
  %240 = fcmp oge double %239, 0.000000e+00, !dbg !342
  br i1 %240, label %241, label %257, !dbg !343

; <label>:241:                                    ; preds = %238
  %242 = load double, double* %9, align 8, !dbg !344
  %243 = fcmp oge double %242, 0.000000e+00, !dbg !346
  br i1 %243, label %244, label %257, !dbg !347

; <label>:244:                                    ; preds = %241
  %245 = load double, double* %10, align 8, !dbg !348
  %246 = fcmp oge double %245, 0.000000e+00, !dbg !350
  br i1 %246, label %247, label %257, !dbg !351

; <label>:247:                                    ; preds = %244
  %248 = load double, double* %10, align 8, !dbg !352
  %249 = fcmp olt double %248, 9.950000e-01, !dbg !354
  br i1 %249, label %250, label %257, !dbg !355

; <label>:250:                                    ; preds = %247
  %251 = load double, double* %7, align 8, !dbg !356
  %252 = load double, double* %8, align 8, !dbg !358
  %253 = load double, double* %9, align 8, !dbg !359
  %254 = load double, double* %10, align 8, !dbg !360
  %255 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !361
  %256 = call i32 @hyperg_2F1_series(double %251, double %252, double %253, double %254, %struct.gsl_sf_result_struct* %255), !dbg !362
  store i32 %256, i32* %6, align 4, !dbg !363
  br label %406, !dbg !363

; <label>:257:                                    ; preds = %247, %244, %241, %238, %235
  %258 = load double, double* %7, align 8, !dbg !364
  %259 = call double @fabs(double %258) #1, !dbg !366
  %260 = fcmp olt double %259, 1.000000e+01, !dbg !367
  br i1 %260, label %261, label %323, !dbg !368

; <label>:261:                                    ; preds = %257
  %262 = load double, double* %8, align 8, !dbg !369
  %263 = call double @fabs(double %262) #1, !dbg !371
  %264 = fcmp olt double %263, 1.000000e+01, !dbg !372
  br i1 %264, label %265, label %323, !dbg !373

; <label>:265:                                    ; preds = %261
  %266 = load i32, i32* %16, align 4, !dbg !374
  %267 = icmp ne i32 %266, 0, !dbg !374
  br i1 %267, label %268, label %275, !dbg !377

; <label>:268:                                    ; preds = %265
  %269 = load double, double* %13, align 8, !dbg !378
  %270 = load double, double* %8, align 8, !dbg !380
  %271 = load double, double* %9, align 8, !dbg !381
  %272 = load double, double* %10, align 8, !dbg !382
  %273 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !383
  %274 = call i32 @hyperg_2F1_series(double %269, double %270, double %271, double %272, %struct.gsl_sf_result_struct* %273), !dbg !384
  store i32 %274, i32* %6, align 4, !dbg !385
  br label %406, !dbg !385

; <label>:275:                                    ; preds = %265
  %276 = load i32, i32* %17, align 4, !dbg !386
  %277 = icmp ne i32 %276, 0, !dbg !386
  br i1 %277, label %278, label %285, !dbg !388

; <label>:278:                                    ; preds = %275
  %279 = load double, double* %7, align 8, !dbg !389
  %280 = load double, double* %14, align 8, !dbg !391
  %281 = load double, double* %9, align 8, !dbg !392
  %282 = load double, double* %10, align 8, !dbg !393
  %283 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !394
  %284 = call i32 @hyperg_2F1_series(double %279, double %280, double %281, double %282, %struct.gsl_sf_result_struct* %283), !dbg !395
  store i32 %284, i32* %6, align 4, !dbg !396
  br label %406, !dbg !396

; <label>:285:                                    ; preds = %275
  %286 = load double, double* %10, align 8, !dbg !397
  %287 = fcmp olt double %286, -2.500000e-01, !dbg !399
  br i1 %287, label %288, label %295, !dbg !400

; <label>:288:                                    ; preds = %285
  %289 = load double, double* %7, align 8, !dbg !401
  %290 = load double, double* %8, align 8, !dbg !403
  %291 = load double, double* %9, align 8, !dbg !404
  %292 = load double, double* %10, align 8, !dbg !405
  %293 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !406
  %294 = call i32 @hyperg_2F1_luke(double %289, double %290, double %291, double %292, %struct.gsl_sf_result_struct* %293), !dbg !407
  store i32 %294, i32* %6, align 4, !dbg !408
  br label %406, !dbg !408

; <label>:295:                                    ; preds = %285
  %296 = load double, double* %10, align 8, !dbg !409
  %297 = fcmp olt double %296, 5.000000e-01, !dbg !411
  br i1 %297, label %298, label %305, !dbg !412

; <label>:298:                                    ; preds = %295
  %299 = load double, double* %7, align 8, !dbg !413
  %300 = load double, double* %8, align 8, !dbg !415
  %301 = load double, double* %9, align 8, !dbg !416
  %302 = load double, double* %10, align 8, !dbg !417
  %303 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !418
  %304 = call i32 @hyperg_2F1_series(double %299, double %300, double %301, double %302, %struct.gsl_sf_result_struct* %303), !dbg !419
  store i32 %304, i32* %6, align 4, !dbg !420
  br label %406, !dbg !420

; <label>:305:                                    ; preds = %295
  %306 = load double, double* %9, align 8, !dbg !421
  %307 = call double @fabs(double %306) #1, !dbg !424
  %308 = fcmp ogt double %307, 1.000000e+01, !dbg !425
  br i1 %308, label %309, label %316, !dbg !426

; <label>:309:                                    ; preds = %305
  %310 = load double, double* %7, align 8, !dbg !427
  %311 = load double, double* %8, align 8, !dbg !429
  %312 = load double, double* %9, align 8, !dbg !430
  %313 = load double, double* %10, align 8, !dbg !431
  %314 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !432
  %315 = call i32 @hyperg_2F1_series(double %310, double %311, double %312, double %313, %struct.gsl_sf_result_struct* %314), !dbg !433
  store i32 %315, i32* %6, align 4, !dbg !434
  br label %406, !dbg !434

; <label>:316:                                    ; preds = %305
  %317 = load double, double* %7, align 8, !dbg !435
  %318 = load double, double* %8, align 8, !dbg !437
  %319 = load double, double* %9, align 8, !dbg !438
  %320 = load double, double* %10, align 8, !dbg !439
  %321 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !440
  %322 = call i32 @hyperg_2F1_reflect(double %317, double %318, double %319, double %320, %struct.gsl_sf_result_struct* %321), !dbg !441
  store i32 %322, i32* %6, align 4, !dbg !442
  br label %406, !dbg !442

; <label>:323:                                    ; preds = %261, %257
  call void @llvm.dbg.declare(metadata double* %31, metadata !443, metadata !61), !dbg !445
  call void @llvm.dbg.declare(metadata double* %32, metadata !446, metadata !61), !dbg !447
  %324 = load double, double* %7, align 8, !dbg !448
  %325 = call double @fabs(double %324) #1, !dbg !450
  %326 = load double, double* %8, align 8, !dbg !451
  %327 = call double @fabs(double %326) #1, !dbg !452
  %328 = fcmp ogt double %325, %327, !dbg !454
  br i1 %328, label %329, label %332, !dbg !455

; <label>:329:                                    ; preds = %323
  %330 = load double, double* %7, align 8, !dbg !456
  store double %330, double* %32, align 8, !dbg !458
  %331 = load double, double* %8, align 8, !dbg !459
  store double %331, double* %31, align 8, !dbg !460
  br label %335, !dbg !461

; <label>:332:                                    ; preds = %323
  %333 = load double, double* %8, align 8, !dbg !462
  store double %333, double* %32, align 8, !dbg !464
  %334 = load double, double* %7, align 8, !dbg !465
  store double %334, double* %31, align 8, !dbg !466
  br label %335

; <label>:335:                                    ; preds = %332, %329
  %336 = load double, double* %10, align 8, !dbg !467
  %337 = fcmp olt double %336, 0.000000e+00, !dbg !469
  br i1 %337, label %338, label %345, !dbg !470

; <label>:338:                                    ; preds = %335
  %339 = load double, double* %7, align 8, !dbg !471
  %340 = load double, double* %8, align 8, !dbg !473
  %341 = load double, double* %9, align 8, !dbg !474
  %342 = load double, double* %10, align 8, !dbg !475
  %343 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !476
  %344 = call i32 @hyperg_2F1_luke(double %339, double %340, double %341, double %342, %struct.gsl_sf_result_struct* %343), !dbg !477
  store i32 %344, i32* %6, align 4, !dbg !478
  br label %406, !dbg !478

; <label>:345:                                    ; preds = %335
  %346 = load double, double* %31, align 8, !dbg !479
  %347 = call double @fabs(double %346) #1, !dbg !481
  %348 = call double @GSL_MAX_DBL(double %347, double 1.000000e+00), !dbg !482
  %349 = load double, double* %32, align 8, !dbg !484
  %350 = call double @fabs(double %349) #1, !dbg !485
  %351 = fmul double %348, %350, !dbg !487
  %352 = load double, double* %10, align 8, !dbg !488
  %353 = call double @fabs(double %352) #1, !dbg !489
  %354 = fmul double %351, %353, !dbg !491
  %355 = load double, double* %9, align 8, !dbg !492
  %356 = call double @fabs(double %355) #1, !dbg !493
  %357 = fmul double 2.000000e+00, %356, !dbg !495
  %358 = fcmp olt double %354, %357, !dbg !496
  br i1 %358, label %359, label %366, !dbg !497

; <label>:359:                                    ; preds = %345
  %360 = load double, double* %7, align 8, !dbg !498
  %361 = load double, double* %8, align 8, !dbg !500
  %362 = load double, double* %9, align 8, !dbg !501
  %363 = load double, double* %10, align 8, !dbg !502
  %364 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !503
  %365 = call i32 @hyperg_2F1_series(double %360, double %361, double %362, double %363, %struct.gsl_sf_result_struct* %364), !dbg !504
  store i32 %365, i32* %6, align 4, !dbg !505
  br label %406, !dbg !505

; <label>:366:                                    ; preds = %345
  %367 = load double, double* %32, align 8, !dbg !506
  %368 = load double, double* %32, align 8, !dbg !508
  %369 = fmul double %367, %368, !dbg !509
  %370 = load double, double* %10, align 8, !dbg !510
  %371 = fmul double %369, %370, !dbg !511
  %372 = load double, double* %10, align 8, !dbg !512
  %373 = fmul double %371, %372, !dbg !513
  %374 = call double @fabs(double %373) #1, !dbg !514
  %375 = load double, double* %32, align 8, !dbg !515
  %376 = call double @fabs(double %375) #1, !dbg !516
  %377 = fmul double 1.000000e-03, %376, !dbg !518
  %378 = fcmp olt double %374, %377, !dbg !519
  br i1 %378, label %379, label %399, !dbg !520

; <label>:379:                                    ; preds = %366
  %380 = load double, double* %31, align 8, !dbg !521
  %381 = call double @fabs(double %380) #1, !dbg !523
  %382 = fcmp olt double %381, 1.000000e+01, !dbg !524
  br i1 %382, label %383, label %399, !dbg !525

; <label>:383:                                    ; preds = %379
  call void @llvm.dbg.declare(metadata i32* %33, metadata !526, metadata !61), !dbg !528
  %384 = load double, double* %31, align 8, !dbg !529
  %385 = load double, double* %9, align 8, !dbg !530
  %386 = load double, double* %32, align 8, !dbg !531
  %387 = load double, double* %10, align 8, !dbg !532
  %388 = fmul double %386, %387, !dbg !533
  %389 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !534
  %390 = call i32 @gsl_sf_hyperg_1F1_e(double %384, double %385, double %388, %struct.gsl_sf_result_struct* %389), !dbg !535
  store i32 %390, i32* %33, align 4, !dbg !528
  %391 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !536
  %392 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %391, i32 0, i32 0, !dbg !537
  %393 = load double, double* %392, align 8, !dbg !537
  %394 = call double @fabs(double %393) #1, !dbg !538
  %395 = fmul double 1.000000e-03, %394, !dbg !539
  %396 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !540
  %397 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %396, i32 0, i32 1, !dbg !541
  store double %395, double* %397, align 8, !dbg !542
  %398 = load i32, i32* %33, align 4, !dbg !543
  store i32 %398, i32* %6, align 4, !dbg !544
  br label %406, !dbg !544

; <label>:399:                                    ; preds = %379, %366
  %400 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !545
  %401 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %400, i32 0, i32 0, !dbg !546
  store double 0.000000e+00, double* %401, align 8, !dbg !547
  %402 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !548
  %403 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %402, i32 0, i32 1, !dbg !549
  store double 0.000000e+00, double* %403, align 8, !dbg !550
  br label %404, !dbg !551, !llvm.loop !552

; <label>:404:                                    ; preds = %399
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 773, i32 24), !dbg !553
  store i32 24, i32* %6, align 4, !dbg !553
  br label %406, !dbg !553
                                                  ; No predecessors!
  br label %406

; <label>:406:                                    ; preds = %136, %139, %186, %214, %230, %250, %268, %278, %288, %298, %309, %316, %338, %359, %383, %404, %405
  %407 = load i32, i32* %6, align 4, !dbg !556
  ret i32 %407, !dbg !556
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare i32 @gsl_sf_lngamma_sgn_e(double, %struct.gsl_sf_result_struct*, double*) #3

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #3

declare void @gsl_error(i8*, i8*, i32, i32) #3

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define internal i32 @pow_omx(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !557 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !560, metadata !61), !dbg !561
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !562, metadata !61), !dbg !563
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !564, metadata !61), !dbg !565
  call void @llvm.dbg.declare(metadata double* %7, metadata !566, metadata !61), !dbg !567
  call void @llvm.dbg.declare(metadata double* %8, metadata !568, metadata !61), !dbg !569
  %9 = load double, double* %4, align 8, !dbg !570
  %10 = call double @fabs(double %9) #1, !dbg !572
  %11 = fcmp olt double %10, 0x3F48406003B2AE5A, !dbg !573
  br i1 %11, label %12, label %30, !dbg !574

; <label>:12:                                     ; preds = %3
  %13 = load double, double* %4, align 8, !dbg !575
  %14 = fsub double -0.000000e+00, %13, !dbg !577
  %15 = load double, double* %4, align 8, !dbg !578
  %16 = load double, double* %4, align 8, !dbg !579
  %17 = load double, double* %4, align 8, !dbg !580
  %18 = fdiv double %17, 4.000000e+00, !dbg !581
  %19 = fadd double 0x3FD5555555555555, %18, !dbg !582
  %20 = load double, double* %4, align 8, !dbg !583
  %21 = load double, double* %4, align 8, !dbg !584
  %22 = fmul double %20, %21, !dbg !585
  %23 = fdiv double %22, 5.000000e+00, !dbg !586
  %24 = fadd double %19, %23, !dbg !587
  %25 = fmul double %16, %24, !dbg !588
  %26 = fadd double 5.000000e-01, %25, !dbg !589
  %27 = fmul double %15, %26, !dbg !590
  %28 = fadd double 1.000000e+00, %27, !dbg !591
  %29 = fmul double %14, %28, !dbg !592
  store double %29, double* %7, align 8, !dbg !593
  br label %34, !dbg !594

; <label>:30:                                     ; preds = %3
  %31 = load double, double* %4, align 8, !dbg !595
  %32 = fsub double 1.000000e+00, %31, !dbg !597
  %33 = call double @log(double %32) #5, !dbg !598
  store double %33, double* %7, align 8, !dbg !599
  br label %34

; <label>:34:                                     ; preds = %30, %12
  %35 = load double, double* %5, align 8, !dbg !600
  %36 = load double, double* %7, align 8, !dbg !601
  %37 = fmul double %35, %36, !dbg !602
  store double %37, double* %8, align 8, !dbg !603
  %38 = load double, double* %8, align 8, !dbg !604
  %39 = load double, double* %8, align 8, !dbg !605
  %40 = call double @fabs(double %39) #1, !dbg !606
  %41 = fmul double 0x3CB0000000000000, %40, !dbg !607
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !608
  %43 = call i32 @gsl_sf_exp_err_e(double %38, double %41, %struct.gsl_sf_result_struct* %42), !dbg !609
  ret i32 %43, !dbg !611
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_2F1_series(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !612 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !615, metadata !61), !dbg !616
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !617, metadata !61), !dbg !618
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !619, metadata !61), !dbg !620
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !621, metadata !61), !dbg !622
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !623, metadata !61), !dbg !624
  call void @llvm.dbg.declare(metadata double* %12, metadata !625, metadata !61), !dbg !626
  store double 1.000000e+00, double* %12, align 8, !dbg !626
  call void @llvm.dbg.declare(metadata double* %13, metadata !627, metadata !61), !dbg !628
  store double 0.000000e+00, double* %13, align 8, !dbg !628
  call void @llvm.dbg.declare(metadata double* %14, metadata !629, metadata !61), !dbg !630
  store double 1.000000e+00, double* %14, align 8, !dbg !630
  call void @llvm.dbg.declare(metadata double* %15, metadata !631, metadata !61), !dbg !632
  store double 0.000000e+00, double* %15, align 8, !dbg !632
  call void @llvm.dbg.declare(metadata double* %16, metadata !633, metadata !61), !dbg !634
  store double 1.000000e+00, double* %16, align 8, !dbg !634
  call void @llvm.dbg.declare(metadata double* %17, metadata !635, metadata !61), !dbg !636
  call void @llvm.dbg.declare(metadata double* %18, metadata !637, metadata !61), !dbg !638
  store double 0.000000e+00, double* %18, align 8, !dbg !638
  call void @llvm.dbg.declare(metadata i32* %19, metadata !639, metadata !61), !dbg !640
  store i32 0, i32* %19, align 4, !dbg !640
  %20 = load double, double* %9, align 8, !dbg !641
  %21 = call double @fabs(double %20) #1, !dbg !643
  %22 = fcmp olt double %21, 0x3CB0000000000000, !dbg !644
  br i1 %22, label %23, label %30, !dbg !645

; <label>:23:                                     ; preds = %5
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !646
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !648
  store double 0.000000e+00, double* %25, align 8, !dbg !649
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !650
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !651
  store double 1.000000e+00, double* %27, align 8, !dbg !652
  br label %28, !dbg !653, !llvm.loop !654

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 57, i32 1), !dbg !655
  store i32 1, i32* %6, align 4, !dbg !655
  br label %171, !dbg !655
                                                  ; No predecessors!
  br label %30, !dbg !658

; <label>:30:                                     ; preds = %29, %5
  br label %31, !dbg !659, !llvm.loop !660

; <label>:31:                                     ; preds = %128, %30
  %32 = load i32, i32* %19, align 4, !dbg !661
  %33 = add nsw i32 %32, 1, !dbg !661
  store i32 %33, i32* %19, align 4, !dbg !661
  %34 = icmp sgt i32 %33, 30000, !dbg !664
  br i1 %34, label %35, label %70, !dbg !665

; <label>:35:                                     ; preds = %31
  %36 = load double, double* %12, align 8, !dbg !666
  %37 = load double, double* %13, align 8, !dbg !668
  %38 = fsub double %36, %37, !dbg !669
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !670
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !671
  store double %38, double* %40, align 8, !dbg !672
  %41 = load double, double* %14, align 8, !dbg !673
  %42 = load double, double* %15, align 8, !dbg !674
  %43 = fadd double %41, %42, !dbg !675
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !676
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !677
  store double %43, double* %45, align 8, !dbg !678
  %46 = load double, double* %12, align 8, !dbg !679
  %47 = load double, double* %13, align 8, !dbg !680
  %48 = fadd double %46, %47, !dbg !681
  %49 = fmul double 0x3CC0000000000000, %48, !dbg !682
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !683
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 1, !dbg !684
  %52 = load double, double* %51, align 8, !dbg !685
  %53 = fadd double %52, %49, !dbg !685
  store double %53, double* %51, align 8, !dbg !685
  %54 = load double, double* %18, align 8, !dbg !686
  %55 = call double @sqrt(double %54) #5, !dbg !687
  %56 = fmul double 2.000000e+00, %55, !dbg !688
  %57 = fadd double %56, 1.000000e+00, !dbg !689
  %58 = fmul double 0x3CC0000000000000, %57, !dbg !690
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !691
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 0, !dbg !692
  %61 = load double, double* %60, align 8, !dbg !692
  %62 = call double @fabs(double %61) #1, !dbg !693
  %63 = fmul double %58, %62, !dbg !695
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !696
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 1, !dbg !697
  %66 = load double, double* %65, align 8, !dbg !698
  %67 = fadd double %66, %63, !dbg !698
  store double %67, double* %65, align 8, !dbg !698
  br label %68, !dbg !699, !llvm.loop !700

; <label>:68:                                     ; preds = %35
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 66, i32 11), !dbg !701
  store i32 11, i32* %6, align 4, !dbg !701
  br label %171, !dbg !701
                                                  ; No predecessors!
  br label %70, !dbg !704

; <label>:70:                                     ; preds = %69, %31
  %71 = load double, double* %16, align 8, !dbg !705
  store double %71, double* %17, align 8, !dbg !706
  %72 = load double, double* %7, align 8, !dbg !707
  %73 = load double, double* %18, align 8, !dbg !708
  %74 = fadd double %72, %73, !dbg !709
  %75 = load double, double* %8, align 8, !dbg !710
  %76 = load double, double* %18, align 8, !dbg !711
  %77 = fadd double %75, %76, !dbg !712
  %78 = fmul double %74, %77, !dbg !713
  %79 = load double, double* %10, align 8, !dbg !714
  %80 = fmul double %78, %79, !dbg !715
  %81 = load double, double* %9, align 8, !dbg !716
  %82 = load double, double* %18, align 8, !dbg !717
  %83 = fadd double %81, %82, !dbg !718
  %84 = load double, double* %18, align 8, !dbg !719
  %85 = fadd double %84, 1.000000e+00, !dbg !720
  %86 = fmul double %83, %85, !dbg !721
  %87 = fdiv double %80, %86, !dbg !722
  %88 = load double, double* %16, align 8, !dbg !723
  %89 = fmul double %88, %87, !dbg !723
  store double %89, double* %16, align 8, !dbg !723
  %90 = load double, double* %16, align 8, !dbg !724
  %91 = fcmp ogt double %90, 0.000000e+00, !dbg !726
  br i1 %91, label %92, label %97, !dbg !727

; <label>:92:                                     ; preds = %70
  %93 = load double, double* %16, align 8, !dbg !728
  store double %93, double* %14, align 8, !dbg !730
  %94 = load double, double* %16, align 8, !dbg !731
  %95 = load double, double* %12, align 8, !dbg !732
  %96 = fadd double %95, %94, !dbg !732
  store double %96, double* %12, align 8, !dbg !732
  br label %108, !dbg !733

; <label>:97:                                     ; preds = %70
  %98 = load double, double* %16, align 8, !dbg !734
  %99 = fcmp oeq double %98, 0.000000e+00, !dbg !736
  br i1 %99, label %100, label %101, !dbg !737

; <label>:100:                                    ; preds = %97
  store double 0.000000e+00, double* %14, align 8, !dbg !738
  store double 0.000000e+00, double* %15, align 8, !dbg !740
  br label %138, !dbg !741

; <label>:101:                                    ; preds = %97
  %102 = load double, double* %16, align 8, !dbg !742
  %103 = fsub double -0.000000e+00, %102, !dbg !744
  store double %103, double* %15, align 8, !dbg !745
  %104 = load double, double* %16, align 8, !dbg !746
  %105 = load double, double* %13, align 8, !dbg !747
  %106 = fsub double %105, %104, !dbg !747
  store double %106, double* %13, align 8, !dbg !747
  br label %107

; <label>:107:                                    ; preds = %101
  br label %108

; <label>:108:                                    ; preds = %107, %92
  %109 = load double, double* %17, align 8, !dbg !748
  %110 = load double, double* %12, align 8, !dbg !750
  %111 = load double, double* %13, align 8, !dbg !751
  %112 = fsub double %110, %111, !dbg !752
  %113 = fdiv double %109, %112, !dbg !753
  %114 = call double @fabs(double %113) #1, !dbg !754
  %115 = fcmp olt double %114, 0x3CB0000000000000, !dbg !755
  br i1 %115, label %116, label %125, !dbg !756

; <label>:116:                                    ; preds = %108
  %117 = load double, double* %16, align 8, !dbg !757
  %118 = load double, double* %12, align 8, !dbg !758
  %119 = load double, double* %13, align 8, !dbg !759
  %120 = fsub double %118, %119, !dbg !760
  %121 = fdiv double %117, %120, !dbg !761
  %122 = call double @fabs(double %121) #1, !dbg !762
  %123 = fcmp olt double %122, 0x3CB0000000000000, !dbg !763
  br i1 %123, label %124, label %125, !dbg !764

; <label>:124:                                    ; preds = %116
  br label %138, !dbg !766

; <label>:125:                                    ; preds = %116, %108
  %126 = load double, double* %18, align 8, !dbg !767
  %127 = fadd double %126, 1.000000e+00, !dbg !767
  store double %127, double* %18, align 8, !dbg !767
  br label %128, !dbg !768

; <label>:128:                                    ; preds = %125
  %129 = load double, double* %14, align 8, !dbg !769
  %130 = load double, double* %15, align 8, !dbg !771
  %131 = fadd double %129, %130, !dbg !772
  %132 = load double, double* %12, align 8, !dbg !773
  %133 = load double, double* %13, align 8, !dbg !774
  %134 = fsub double %132, %133, !dbg !775
  %135 = fdiv double %131, %134, !dbg !776
  %136 = call double @fabs(double %135) #1, !dbg !777
  %137 = fcmp ogt double %136, 0x3CB0000000000000, !dbg !778
  br i1 %137, label %31, label %138, !dbg !779, !llvm.loop !660

; <label>:138:                                    ; preds = %128, %124, %100
  %139 = load double, double* %12, align 8, !dbg !780
  %140 = load double, double* %13, align 8, !dbg !781
  %141 = fsub double %139, %140, !dbg !782
  %142 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !783
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %142, i32 0, i32 0, !dbg !784
  store double %141, double* %143, align 8, !dbg !785
  %144 = load double, double* %14, align 8, !dbg !786
  %145 = load double, double* %15, align 8, !dbg !787
  %146 = fadd double %144, %145, !dbg !788
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !789
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 1, !dbg !790
  store double %146, double* %148, align 8, !dbg !791
  %149 = load double, double* %12, align 8, !dbg !792
  %150 = load double, double* %13, align 8, !dbg !793
  %151 = fadd double %149, %150, !dbg !794
  %152 = fmul double 0x3CC0000000000000, %151, !dbg !795
  %153 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !796
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %153, i32 0, i32 1, !dbg !797
  %155 = load double, double* %154, align 8, !dbg !798
  %156 = fadd double %155, %152, !dbg !798
  store double %156, double* %154, align 8, !dbg !798
  %157 = load double, double* %18, align 8, !dbg !799
  %158 = call double @sqrt(double %157) #5, !dbg !800
  %159 = fmul double 2.000000e+00, %158, !dbg !801
  %160 = fadd double %159, 1.000000e+00, !dbg !802
  %161 = fmul double 0x3CC0000000000000, %160, !dbg !803
  %162 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !804
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %162, i32 0, i32 0, !dbg !805
  %164 = load double, double* %163, align 8, !dbg !805
  %165 = call double @fabs(double %164) #1, !dbg !806
  %166 = fmul double %161, %165, !dbg !807
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !808
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 1, !dbg !809
  %169 = load double, double* %168, align 8, !dbg !810
  %170 = fadd double %169, %166, !dbg !810
  store double %170, double* %168, align 8, !dbg !810
  store i32 0, i32* %6, align 4, !dbg !811
  br label %171, !dbg !811

; <label>:171:                                    ; preds = %138, %68, %28
  %172 = load i32, i32* %6, align 4, !dbg !812
  ret i32 %172, !dbg !812
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_2F1_luke(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !813 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
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
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
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
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !814, metadata !61), !dbg !815
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !816, metadata !61), !dbg !817
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !818, metadata !61), !dbg !819
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !820, metadata !61), !dbg !821
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !822, metadata !61), !dbg !823
  call void @llvm.dbg.declare(metadata i32* %11, metadata !824, metadata !61), !dbg !825
  call void @llvm.dbg.declare(metadata double* %12, metadata !826, metadata !61), !dbg !827
  store double 1.000000e+50, double* %12, align 8, !dbg !827
  call void @llvm.dbg.declare(metadata i32* %13, metadata !828, metadata !61), !dbg !829
  store i32 20000, i32* %13, align 4, !dbg !829
  call void @llvm.dbg.declare(metadata i32* %14, metadata !830, metadata !61), !dbg !831
  store i32 3, i32* %14, align 4, !dbg !831
  call void @llvm.dbg.declare(metadata double* %15, metadata !832, metadata !61), !dbg !833
  %45 = load double, double* %9, align 8, !dbg !834
  %46 = fsub double -0.000000e+00, %45, !dbg !835
  store double %46, double* %15, align 8, !dbg !833
  call void @llvm.dbg.declare(metadata double* %16, metadata !836, metadata !61), !dbg !837
  %47 = load double, double* %15, align 8, !dbg !838
  %48 = load double, double* %15, align 8, !dbg !839
  %49 = fmul double %47, %48, !dbg !840
  %50 = load double, double* %15, align 8, !dbg !841
  %51 = fmul double %49, %50, !dbg !842
  store double %51, double* %16, align 8, !dbg !837
  call void @llvm.dbg.declare(metadata double* %17, metadata !843, metadata !61), !dbg !844
  %52 = load double, double* %6, align 8, !dbg !845
  %53 = load double, double* %7, align 8, !dbg !846
  %54 = fmul double %52, %53, !dbg !847
  %55 = load double, double* %8, align 8, !dbg !848
  %56 = fdiv double %54, %55, !dbg !849
  store double %56, double* %17, align 8, !dbg !844
  call void @llvm.dbg.declare(metadata double* %18, metadata !850, metadata !61), !dbg !851
  %57 = load double, double* %6, align 8, !dbg !852
  %58 = fadd double %57, 1.000000e+00, !dbg !853
  %59 = load double, double* %7, align 8, !dbg !854
  %60 = fadd double %59, 1.000000e+00, !dbg !855
  %61 = fmul double %58, %60, !dbg !856
  %62 = load double, double* %8, align 8, !dbg !857
  %63 = fmul double 2.000000e+00, %62, !dbg !858
  %64 = fdiv double %61, %63, !dbg !859
  store double %64, double* %18, align 8, !dbg !851
  call void @llvm.dbg.declare(metadata double* %19, metadata !860, metadata !61), !dbg !861
  %65 = load double, double* %6, align 8, !dbg !862
  %66 = fadd double %65, 2.000000e+00, !dbg !863
  %67 = load double, double* %7, align 8, !dbg !864
  %68 = fadd double %67, 2.000000e+00, !dbg !865
  %69 = fmul double %66, %68, !dbg !866
  %70 = load double, double* %8, align 8, !dbg !867
  %71 = fadd double %70, 1.000000e+00, !dbg !868
  %72 = fmul double 2.000000e+00, %71, !dbg !869
  %73 = fdiv double %69, %72, !dbg !870
  store double %73, double* %19, align 8, !dbg !861
  call void @llvm.dbg.declare(metadata double* %20, metadata !871, metadata !61), !dbg !872
  store double 1.000000e+00, double* %20, align 8, !dbg !872
  call void @llvm.dbg.declare(metadata double* %21, metadata !873, metadata !61), !dbg !874
  call void @llvm.dbg.declare(metadata double* %22, metadata !875, metadata !61), !dbg !876
  store double 1.000000e+00, double* %22, align 8, !dbg !876
  call void @llvm.dbg.declare(metadata double* %23, metadata !877, metadata !61), !dbg !878
  %74 = load double, double* %18, align 8, !dbg !879
  %75 = load double, double* %15, align 8, !dbg !880
  %76 = fmul double %74, %75, !dbg !881
  %77 = fadd double 1.000000e+00, %76, !dbg !882
  store double %77, double* %23, align 8, !dbg !878
  call void @llvm.dbg.declare(metadata double* %24, metadata !883, metadata !61), !dbg !884
  %78 = load double, double* %19, align 8, !dbg !885
  %79 = load double, double* %15, align 8, !dbg !886
  %80 = fmul double %78, %79, !dbg !887
  %81 = load double, double* %18, align 8, !dbg !888
  %82 = fdiv double %81, 3.000000e+00, !dbg !889
  %83 = load double, double* %15, align 8, !dbg !890
  %84 = fmul double %82, %83, !dbg !891
  %85 = fadd double 1.000000e+00, %84, !dbg !892
  %86 = fmul double %80, %85, !dbg !893
  %87 = fadd double 1.000000e+00, %86, !dbg !894
  store double %87, double* %24, align 8, !dbg !884
  call void @llvm.dbg.declare(metadata double* %25, metadata !895, metadata !61), !dbg !896
  store double 1.000000e+00, double* %25, align 8, !dbg !896
  call void @llvm.dbg.declare(metadata double* %26, metadata !897, metadata !61), !dbg !898
  %88 = load double, double* %23, align 8, !dbg !899
  %89 = load double, double* %17, align 8, !dbg !900
  %90 = load double, double* %15, align 8, !dbg !901
  %91 = fmul double %89, %90, !dbg !902
  %92 = fsub double %88, %91, !dbg !903
  store double %92, double* %26, align 8, !dbg !898
  call void @llvm.dbg.declare(metadata double* %27, metadata !904, metadata !61), !dbg !905
  %93 = load double, double* %24, align 8, !dbg !906
  %94 = load double, double* %17, align 8, !dbg !907
  %95 = load double, double* %19, align 8, !dbg !908
  %96 = load double, double* %15, align 8, !dbg !909
  %97 = fmul double %95, %96, !dbg !910
  %98 = fadd double 1.000000e+00, %97, !dbg !911
  %99 = fmul double %94, %98, !dbg !912
  %100 = load double, double* %15, align 8, !dbg !913
  %101 = fmul double %99, %100, !dbg !914
  %102 = fsub double %93, %101, !dbg !915
  %103 = load double, double* %17, align 8, !dbg !916
  %104 = load double, double* %18, align 8, !dbg !917
  %105 = fmul double %103, %104, !dbg !918
  %106 = load double, double* %8, align 8, !dbg !919
  %107 = load double, double* %8, align 8, !dbg !920
  %108 = fadd double %107, 1.000000e+00, !dbg !921
  %109 = fdiv double %106, %108, !dbg !922
  %110 = fmul double %105, %109, !dbg !923
  %111 = load double, double* %15, align 8, !dbg !924
  %112 = fmul double %110, %111, !dbg !925
  %113 = load double, double* %15, align 8, !dbg !926
  %114 = fmul double %112, %113, !dbg !927
  %115 = fadd double %102, %114, !dbg !928
  store double %115, double* %27, align 8, !dbg !905
  br label %116, !dbg !929

; <label>:116:                                    ; preds = %5, %381
  call void @llvm.dbg.declare(metadata double* %28, metadata !930, metadata !61), !dbg !932
  %117 = load i32, i32* %14, align 4, !dbg !933
  %118 = sitofp i32 %117 to double, !dbg !933
  %119 = load double, double* %6, align 8, !dbg !934
  %120 = fadd double %118, %119, !dbg !935
  %121 = fsub double %120, 1.000000e+00, !dbg !936
  store double %121, double* %28, align 8, !dbg !932
  call void @llvm.dbg.declare(metadata double* %29, metadata !937, metadata !61), !dbg !938
  %122 = load i32, i32* %14, align 4, !dbg !939
  %123 = sitofp i32 %122 to double, !dbg !939
  %124 = load double, double* %7, align 8, !dbg !940
  %125 = fadd double %123, %124, !dbg !941
  %126 = fsub double %125, 1.000000e+00, !dbg !942
  store double %126, double* %29, align 8, !dbg !938
  call void @llvm.dbg.declare(metadata double* %30, metadata !943, metadata !61), !dbg !944
  %127 = load i32, i32* %14, align 4, !dbg !945
  %128 = sitofp i32 %127 to double, !dbg !945
  %129 = load double, double* %8, align 8, !dbg !946
  %130 = fadd double %128, %129, !dbg !947
  %131 = fsub double %130, 1.000000e+00, !dbg !948
  store double %131, double* %30, align 8, !dbg !944
  call void @llvm.dbg.declare(metadata double* %31, metadata !949, metadata !61), !dbg !950
  %132 = load i32, i32* %14, align 4, !dbg !951
  %133 = sitofp i32 %132 to double, !dbg !951
  %134 = load double, double* %6, align 8, !dbg !952
  %135 = fadd double %133, %134, !dbg !953
  %136 = fsub double %135, 2.000000e+00, !dbg !954
  store double %136, double* %31, align 8, !dbg !950
  call void @llvm.dbg.declare(metadata double* %32, metadata !955, metadata !61), !dbg !956
  %137 = load i32, i32* %14, align 4, !dbg !957
  %138 = sitofp i32 %137 to double, !dbg !957
  %139 = load double, double* %7, align 8, !dbg !958
  %140 = fadd double %138, %139, !dbg !959
  %141 = fsub double %140, 2.000000e+00, !dbg !960
  store double %141, double* %32, align 8, !dbg !956
  call void @llvm.dbg.declare(metadata double* %33, metadata !961, metadata !61), !dbg !962
  %142 = load i32, i32* %14, align 4, !dbg !963
  %143 = sitofp i32 %142 to double, !dbg !963
  %144 = load double, double* %8, align 8, !dbg !964
  %145 = fadd double %143, %144, !dbg !965
  %146 = fsub double %145, 2.000000e+00, !dbg !966
  store double %146, double* %33, align 8, !dbg !962
  call void @llvm.dbg.declare(metadata double* %34, metadata !967, metadata !61), !dbg !968
  %147 = load i32, i32* %14, align 4, !dbg !969
  %148 = mul nsw i32 2, %147, !dbg !970
  %149 = sub nsw i32 %148, 1, !dbg !971
  %150 = sitofp i32 %149 to double, !dbg !972
  store double %150, double* %34, align 8, !dbg !968
  call void @llvm.dbg.declare(metadata double* %35, metadata !973, metadata !61), !dbg !974
  %151 = load i32, i32* %14, align 4, !dbg !975
  %152 = mul nsw i32 2, %151, !dbg !976
  %153 = sub nsw i32 %152, 3, !dbg !977
  %154 = sitofp i32 %153 to double, !dbg !978
  store double %154, double* %35, align 8, !dbg !974
  call void @llvm.dbg.declare(metadata double* %36, metadata !979, metadata !61), !dbg !980
  %155 = load i32, i32* %14, align 4, !dbg !981
  %156 = mul nsw i32 2, %155, !dbg !982
  %157 = sub nsw i32 %156, 5, !dbg !983
  %158 = sitofp i32 %157 to double, !dbg !984
  store double %158, double* %36, align 8, !dbg !980
  call void @llvm.dbg.declare(metadata double* %37, metadata !985, metadata !61), !dbg !986
  %159 = load i32, i32* %14, align 4, !dbg !987
  %160 = load i32, i32* %14, align 4, !dbg !988
  %161 = mul nsw i32 %159, %160, !dbg !989
  %162 = sitofp i32 %161 to double, !dbg !987
  store double %162, double* %37, align 8, !dbg !986
  call void @llvm.dbg.declare(metadata double* %38, metadata !990, metadata !61), !dbg !991
  %163 = load double, double* %37, align 8, !dbg !992
  %164 = fmul double 3.000000e+00, %163, !dbg !993
  %165 = load double, double* %6, align 8, !dbg !994
  %166 = load double, double* %7, align 8, !dbg !995
  %167 = fadd double %165, %166, !dbg !996
  %168 = fsub double %167, 6.000000e+00, !dbg !997
  %169 = load i32, i32* %14, align 4, !dbg !998
  %170 = sitofp i32 %169 to double, !dbg !998
  %171 = fmul double %168, %170, !dbg !999
  %172 = fadd double %164, %171, !dbg !1000
  %173 = fadd double %172, 2.000000e+00, !dbg !1001
  %174 = load double, double* %6, align 8, !dbg !1002
  %175 = load double, double* %7, align 8, !dbg !1003
  %176 = fmul double %174, %175, !dbg !1004
  %177 = fsub double %173, %176, !dbg !1005
  %178 = load double, double* %6, align 8, !dbg !1006
  %179 = load double, double* %7, align 8, !dbg !1007
  %180 = fadd double %178, %179, !dbg !1008
  %181 = fmul double 2.000000e+00, %180, !dbg !1009
  %182 = fsub double %177, %181, !dbg !1010
  %183 = load double, double* %35, align 8, !dbg !1011
  %184 = fmul double 2.000000e+00, %183, !dbg !1012
  %185 = load double, double* %30, align 8, !dbg !1013
  %186 = fmul double %184, %185, !dbg !1014
  %187 = fdiv double %182, %186, !dbg !1015
  store double %187, double* %38, align 8, !dbg !991
  call void @llvm.dbg.declare(metadata double* %39, metadata !1016, metadata !61), !dbg !1017
  %188 = load double, double* %37, align 8, !dbg !1018
  %189 = fmul double 3.000000e+00, %188, !dbg !1019
  %190 = load double, double* %6, align 8, !dbg !1020
  %191 = load double, double* %7, align 8, !dbg !1021
  %192 = fadd double %190, %191, !dbg !1022
  %193 = fadd double %192, 6.000000e+00, !dbg !1023
  %194 = load i32, i32* %14, align 4, !dbg !1024
  %195 = sitofp i32 %194 to double, !dbg !1024
  %196 = fmul double %193, %195, !dbg !1025
  %197 = fsub double %189, %196, !dbg !1026
  %198 = fadd double %197, 2.000000e+00, !dbg !1027
  %199 = load double, double* %6, align 8, !dbg !1028
  %200 = load double, double* %7, align 8, !dbg !1029
  %201 = fmul double %199, %200, !dbg !1030
  %202 = fsub double %198, %201, !dbg !1031
  %203 = fsub double -0.000000e+00, %202, !dbg !1032
  %204 = load double, double* %28, align 8, !dbg !1033
  %205 = fmul double %203, %204, !dbg !1034
  %206 = load double, double* %29, align 8, !dbg !1035
  %207 = fmul double %205, %206, !dbg !1036
  %208 = load double, double* %34, align 8, !dbg !1037
  %209 = fmul double 4.000000e+00, %208, !dbg !1038
  %210 = load double, double* %35, align 8, !dbg !1039
  %211 = fmul double %209, %210, !dbg !1040
  %212 = load double, double* %33, align 8, !dbg !1041
  %213 = fmul double %211, %212, !dbg !1042
  %214 = load double, double* %30, align 8, !dbg !1043
  %215 = fmul double %213, %214, !dbg !1044
  %216 = fdiv double %207, %215, !dbg !1045
  store double %216, double* %39, align 8, !dbg !1017
  call void @llvm.dbg.declare(metadata double* %40, metadata !1046, metadata !61), !dbg !1047
  %217 = load double, double* %31, align 8, !dbg !1048
  %218 = load double, double* %28, align 8, !dbg !1049
  %219 = fmul double %217, %218, !dbg !1050
  %220 = load double, double* %32, align 8, !dbg !1051
  %221 = fmul double %219, %220, !dbg !1052
  %222 = load double, double* %29, align 8, !dbg !1053
  %223 = fmul double %221, %222, !dbg !1054
  %224 = load i32, i32* %14, align 4, !dbg !1055
  %225 = sitofp i32 %224 to double, !dbg !1055
  %226 = load double, double* %6, align 8, !dbg !1056
  %227 = fsub double %225, %226, !dbg !1057
  %228 = fsub double %227, 2.000000e+00, !dbg !1058
  %229 = fmul double %223, %228, !dbg !1059
  %230 = load i32, i32* %14, align 4, !dbg !1060
  %231 = sitofp i32 %230 to double, !dbg !1060
  %232 = load double, double* %7, align 8, !dbg !1061
  %233 = fsub double %231, %232, !dbg !1062
  %234 = fsub double %233, 2.000000e+00, !dbg !1063
  %235 = fmul double %229, %234, !dbg !1064
  %236 = load double, double* %35, align 8, !dbg !1065
  %237 = fmul double 8.000000e+00, %236, !dbg !1066
  %238 = load double, double* %35, align 8, !dbg !1067
  %239 = fmul double %237, %238, !dbg !1068
  %240 = load double, double* %36, align 8, !dbg !1069
  %241 = fmul double %239, %240, !dbg !1070
  %242 = load i32, i32* %14, align 4, !dbg !1071
  %243 = sitofp i32 %242 to double, !dbg !1071
  %244 = load double, double* %8, align 8, !dbg !1072
  %245 = fadd double %243, %244, !dbg !1073
  %246 = fsub double %245, 3.000000e+00, !dbg !1074
  %247 = fmul double %241, %246, !dbg !1075
  %248 = load double, double* %33, align 8, !dbg !1076
  %249 = fmul double %247, %248, !dbg !1077
  %250 = load double, double* %30, align 8, !dbg !1078
  %251 = fmul double %249, %250, !dbg !1079
  %252 = fdiv double %235, %251, !dbg !1080
  store double %252, double* %40, align 8, !dbg !1047
  call void @llvm.dbg.declare(metadata double* %41, metadata !1081, metadata !61), !dbg !1082
  %253 = load double, double* %28, align 8, !dbg !1083
  %254 = fsub double -0.000000e+00, %253, !dbg !1084
  %255 = load double, double* %29, align 8, !dbg !1085
  %256 = fmul double %254, %255, !dbg !1086
  %257 = load i32, i32* %14, align 4, !dbg !1087
  %258 = sitofp i32 %257 to double, !dbg !1087
  %259 = load double, double* %8, align 8, !dbg !1088
  %260 = fsub double %258, %259, !dbg !1089
  %261 = fsub double %260, 1.000000e+00, !dbg !1090
  %262 = fmul double %256, %261, !dbg !1091
  %263 = load double, double* %35, align 8, !dbg !1092
  %264 = fmul double 2.000000e+00, %263, !dbg !1093
  %265 = load double, double* %33, align 8, !dbg !1094
  %266 = fmul double %264, %265, !dbg !1095
  %267 = load double, double* %30, align 8, !dbg !1096
  %268 = fmul double %266, %267, !dbg !1097
  %269 = fdiv double %262, %268, !dbg !1098
  store double %269, double* %41, align 8, !dbg !1082
  call void @llvm.dbg.declare(metadata double* %42, metadata !1099, metadata !61), !dbg !1100
  %270 = load double, double* %38, align 8, !dbg !1101
  %271 = load double, double* %15, align 8, !dbg !1102
  %272 = fmul double %270, %271, !dbg !1103
  %273 = fadd double 1.000000e+00, %272, !dbg !1104
  %274 = load double, double* %27, align 8, !dbg !1105
  %275 = fmul double %273, %274, !dbg !1106
  %276 = load double, double* %41, align 8, !dbg !1107
  %277 = load double, double* %39, align 8, !dbg !1108
  %278 = load double, double* %15, align 8, !dbg !1109
  %279 = fmul double %277, %278, !dbg !1110
  %280 = fadd double %276, %279, !dbg !1111
  %281 = load double, double* %15, align 8, !dbg !1112
  %282 = fmul double %280, %281, !dbg !1113
  %283 = load double, double* %26, align 8, !dbg !1114
  %284 = fmul double %282, %283, !dbg !1115
  %285 = fadd double %275, %284, !dbg !1116
  %286 = load double, double* %40, align 8, !dbg !1117
  %287 = load double, double* %16, align 8, !dbg !1118
  %288 = fmul double %286, %287, !dbg !1119
  %289 = load double, double* %25, align 8, !dbg !1120
  %290 = fmul double %288, %289, !dbg !1121
  %291 = fadd double %285, %290, !dbg !1122
  store double %291, double* %42, align 8, !dbg !1100
  call void @llvm.dbg.declare(metadata double* %43, metadata !1123, metadata !61), !dbg !1124
  %292 = load double, double* %38, align 8, !dbg !1125
  %293 = load double, double* %15, align 8, !dbg !1126
  %294 = fmul double %292, %293, !dbg !1127
  %295 = fadd double 1.000000e+00, %294, !dbg !1128
  %296 = load double, double* %24, align 8, !dbg !1129
  %297 = fmul double %295, %296, !dbg !1130
  %298 = load double, double* %41, align 8, !dbg !1131
  %299 = load double, double* %39, align 8, !dbg !1132
  %300 = load double, double* %15, align 8, !dbg !1133
  %301 = fmul double %299, %300, !dbg !1134
  %302 = fadd double %298, %301, !dbg !1135
  %303 = load double, double* %15, align 8, !dbg !1136
  %304 = fmul double %302, %303, !dbg !1137
  %305 = load double, double* %23, align 8, !dbg !1138
  %306 = fmul double %304, %305, !dbg !1139
  %307 = fadd double %297, %306, !dbg !1140
  %308 = load double, double* %40, align 8, !dbg !1141
  %309 = load double, double* %16, align 8, !dbg !1142
  %310 = fmul double %308, %309, !dbg !1143
  %311 = load double, double* %22, align 8, !dbg !1144
  %312 = fmul double %310, %311, !dbg !1145
  %313 = fadd double %307, %312, !dbg !1146
  store double %313, double* %43, align 8, !dbg !1124
  call void @llvm.dbg.declare(metadata double* %44, metadata !1147, metadata !61), !dbg !1148
  %314 = load double, double* %42, align 8, !dbg !1149
  %315 = load double, double* %43, align 8, !dbg !1150
  %316 = fdiv double %314, %315, !dbg !1151
  store double %316, double* %44, align 8, !dbg !1148
  %317 = load double, double* %20, align 8, !dbg !1152
  %318 = load double, double* %44, align 8, !dbg !1153
  %319 = fsub double %317, %318, !dbg !1154
  %320 = load double, double* %20, align 8, !dbg !1155
  %321 = fdiv double %319, %320, !dbg !1156
  %322 = call double @fabs(double %321) #1, !dbg !1157
  store double %322, double* %21, align 8, !dbg !1158
  %323 = load double, double* %44, align 8, !dbg !1159
  store double %323, double* %20, align 8, !dbg !1160
  %324 = load double, double* %21, align 8, !dbg !1161
  %325 = fcmp olt double %324, 0x3CB0000000000000, !dbg !1163
  br i1 %325, label %329, label %326, !dbg !1164

; <label>:326:                                    ; preds = %116
  %327 = load i32, i32* %14, align 4, !dbg !1165
  %328 = icmp sgt i32 %327, 20000, !dbg !1167
  br i1 %328, label %329, label %330, !dbg !1168

; <label>:329:                                    ; preds = %326, %116
  br label %390, !dbg !1169

; <label>:330:                                    ; preds = %326
  %331 = load double, double* %42, align 8, !dbg !1171
  %332 = call double @fabs(double %331) #1, !dbg !1173
  %333 = fcmp ogt double %332, 1.000000e+50, !dbg !1174
  br i1 %333, label %338, label %334, !dbg !1175

; <label>:334:                                    ; preds = %330
  %335 = load double, double* %43, align 8, !dbg !1176
  %336 = call double @fabs(double %335) #1, !dbg !1178
  %337 = fcmp ogt double %336, 1.000000e+50, !dbg !1179
  br i1 %337, label %338, label %355, !dbg !1180

; <label>:338:                                    ; preds = %334, %330
  %339 = load double, double* %42, align 8, !dbg !1181
  %340 = fdiv double %339, 1.000000e+50, !dbg !1181
  store double %340, double* %42, align 8, !dbg !1181
  %341 = load double, double* %43, align 8, !dbg !1183
  %342 = fdiv double %341, 1.000000e+50, !dbg !1183
  store double %342, double* %43, align 8, !dbg !1183
  %343 = load double, double* %27, align 8, !dbg !1184
  %344 = fdiv double %343, 1.000000e+50, !dbg !1184
  store double %344, double* %27, align 8, !dbg !1184
  %345 = load double, double* %24, align 8, !dbg !1185
  %346 = fdiv double %345, 1.000000e+50, !dbg !1185
  store double %346, double* %24, align 8, !dbg !1185
  %347 = load double, double* %26, align 8, !dbg !1186
  %348 = fdiv double %347, 1.000000e+50, !dbg !1186
  store double %348, double* %26, align 8, !dbg !1186
  %349 = load double, double* %23, align 8, !dbg !1187
  %350 = fdiv double %349, 1.000000e+50, !dbg !1187
  store double %350, double* %23, align 8, !dbg !1187
  %351 = load double, double* %25, align 8, !dbg !1188
  %352 = fdiv double %351, 1.000000e+50, !dbg !1188
  store double %352, double* %25, align 8, !dbg !1188
  %353 = load double, double* %22, align 8, !dbg !1189
  %354 = fdiv double %353, 1.000000e+50, !dbg !1189
  store double %354, double* %22, align 8, !dbg !1189
  br label %381, !dbg !1190

; <label>:355:                                    ; preds = %334
  %356 = load double, double* %42, align 8, !dbg !1191
  %357 = call double @fabs(double %356) #1, !dbg !1193
  %358 = fcmp olt double %357, 0x358DEE7A4AD4B81E, !dbg !1194
  br i1 %358, label %363, label %359, !dbg !1195

; <label>:359:                                    ; preds = %355
  %360 = load double, double* %43, align 8, !dbg !1196
  %361 = call double @fabs(double %360) #1, !dbg !1198
  %362 = fcmp olt double %361, 0x358DEE7A4AD4B81E, !dbg !1199
  br i1 %362, label %363, label %380, !dbg !1200

; <label>:363:                                    ; preds = %359, %355
  %364 = load double, double* %42, align 8, !dbg !1201
  %365 = fmul double %364, 1.000000e+50, !dbg !1201
  store double %365, double* %42, align 8, !dbg !1201
  %366 = load double, double* %43, align 8, !dbg !1203
  %367 = fmul double %366, 1.000000e+50, !dbg !1203
  store double %367, double* %43, align 8, !dbg !1203
  %368 = load double, double* %27, align 8, !dbg !1204
  %369 = fmul double %368, 1.000000e+50, !dbg !1204
  store double %369, double* %27, align 8, !dbg !1204
  %370 = load double, double* %24, align 8, !dbg !1205
  %371 = fmul double %370, 1.000000e+50, !dbg !1205
  store double %371, double* %24, align 8, !dbg !1205
  %372 = load double, double* %26, align 8, !dbg !1206
  %373 = fmul double %372, 1.000000e+50, !dbg !1206
  store double %373, double* %26, align 8, !dbg !1206
  %374 = load double, double* %23, align 8, !dbg !1207
  %375 = fmul double %374, 1.000000e+50, !dbg !1207
  store double %375, double* %23, align 8, !dbg !1207
  %376 = load double, double* %25, align 8, !dbg !1208
  %377 = fmul double %376, 1.000000e+50, !dbg !1208
  store double %377, double* %25, align 8, !dbg !1208
  %378 = load double, double* %22, align 8, !dbg !1209
  %379 = fmul double %378, 1.000000e+50, !dbg !1209
  store double %379, double* %22, align 8, !dbg !1209
  br label %380, !dbg !1210

; <label>:380:                                    ; preds = %363, %359
  br label %381

; <label>:381:                                    ; preds = %380, %338
  %382 = load i32, i32* %14, align 4, !dbg !1211
  %383 = add nsw i32 %382, 1, !dbg !1211
  store i32 %383, i32* %14, align 4, !dbg !1211
  %384 = load double, double* %23, align 8, !dbg !1212
  store double %384, double* %22, align 8, !dbg !1213
  %385 = load double, double* %24, align 8, !dbg !1214
  store double %385, double* %23, align 8, !dbg !1215
  %386 = load double, double* %43, align 8, !dbg !1216
  store double %386, double* %24, align 8, !dbg !1217
  %387 = load double, double* %26, align 8, !dbg !1218
  store double %387, double* %25, align 8, !dbg !1219
  %388 = load double, double* %27, align 8, !dbg !1220
  store double %388, double* %26, align 8, !dbg !1221
  %389 = load double, double* %42, align 8, !dbg !1222
  store double %389, double* %27, align 8, !dbg !1223
  br label %116, !dbg !1224, !llvm.loop !1226

; <label>:390:                                    ; preds = %329
  %391 = load double, double* %20, align 8, !dbg !1227
  %392 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1228
  %393 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %392, i32 0, i32 0, !dbg !1229
  store double %391, double* %393, align 8, !dbg !1230
  %394 = load double, double* %21, align 8, !dbg !1231
  %395 = load double, double* %20, align 8, !dbg !1232
  %396 = fmul double %394, %395, !dbg !1233
  %397 = call double @fabs(double %396) #1, !dbg !1234
  %398 = fmul double 2.000000e+00, %397, !dbg !1235
  %399 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1236
  %400 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %399, i32 0, i32 1, !dbg !1237
  store double %398, double* %400, align 8, !dbg !1238
  %401 = load i32, i32* %14, align 4, !dbg !1239
  %402 = sitofp i32 %401 to double, !dbg !1239
  %403 = fadd double %402, 1.000000e+00, !dbg !1240
  %404 = fmul double 0x3CC0000000000000, %403, !dbg !1241
  %405 = load double, double* %20, align 8, !dbg !1242
  %406 = call double @fabs(double %405) #1, !dbg !1243
  %407 = fmul double %404, %406, !dbg !1244
  %408 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1245
  %409 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %408, i32 0, i32 1, !dbg !1246
  %410 = load double, double* %409, align 8, !dbg !1247
  %411 = fadd double %410, %407, !dbg !1247
  store double %411, double* %409, align 8, !dbg !1247
  %412 = load double, double* %6, align 8, !dbg !1248
  %413 = call double @fabs(double %412) #1, !dbg !1249
  %414 = load double, double* %7, align 8, !dbg !1250
  %415 = call double @fabs(double %414) #1, !dbg !1251
  %416 = fadd double %413, %415, !dbg !1252
  %417 = fadd double %416, 1.000000e+00, !dbg !1253
  %418 = fmul double 8.000000e+00, %417, !dbg !1254
  %419 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !1255
  %420 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %419, i32 0, i32 1, !dbg !1256
  %421 = load double, double* %420, align 8, !dbg !1257
  %422 = fmul double %421, %418, !dbg !1257
  store double %422, double* %420, align 8, !dbg !1257
  %423 = load i32, i32* %14, align 4, !dbg !1258
  %424 = icmp sge i32 %423, 20000, !dbg !1259
  %425 = select i1 %424, i32 11, i32 0, !dbg !1258
  store i32 %425, i32* %11, align 4, !dbg !1260
  %426 = load i32, i32* %11, align 4, !dbg !1261
  ret i32 %426, !dbg !1262
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_2F1_reflect(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1263 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  %30 = alloca %struct.gsl_sf_result_struct, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca double, align 8
  %44 = alloca %struct.gsl_sf_result_struct, align 8
  %45 = alloca %struct.gsl_sf_result_struct, align 8
  %46 = alloca %struct.gsl_sf_result_struct, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca double, align 8
  %52 = alloca double, align 8
  %53 = alloca double, align 8
  %54 = alloca double, align 8
  %55 = alloca double, align 8
  %56 = alloca double, align 8
  %57 = alloca double, align 8
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca double, align 8
  %61 = alloca double, align 8
  %62 = alloca double, align 8
  %63 = alloca %struct.gsl_sf_result_struct, align 8
  %64 = alloca %struct.gsl_sf_result_struct, align 8
  %65 = alloca double, align 8
  %66 = alloca double, align 8
  %67 = alloca %struct.gsl_sf_result_struct, align 8
  %68 = alloca %struct.gsl_sf_result_struct, align 8
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca %struct.gsl_sf_result_struct, align 8
  %72 = alloca %struct.gsl_sf_result_struct, align 8
  %73 = alloca %struct.gsl_sf_result_struct, align 8
  %74 = alloca %struct.gsl_sf_result_struct, align 8
  %75 = alloca double, align 8
  %76 = alloca double, align 8
  %77 = alloca double, align 8
  %78 = alloca double, align 8
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  %84 = alloca i32, align 4
  %85 = alloca %struct.gsl_sf_result_struct, align 8
  %86 = alloca %struct.gsl_sf_result_struct, align 8
  %87 = alloca %struct.gsl_sf_result_struct, align 8
  %88 = alloca double, align 8
  %89 = alloca double, align 8
  %90 = alloca double, align 8
  %91 = alloca double, align 8
  %92 = alloca double, align 8
  %93 = alloca double, align 8
  %94 = alloca double, align 8
  %95 = alloca double, align 8
  %96 = alloca double, align 8
  %97 = alloca double, align 8
  %98 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1264, metadata !61), !dbg !1265
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1266, metadata !61), !dbg !1267
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !1268, metadata !61), !dbg !1269
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !1270, metadata !61), !dbg !1271
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !1272, metadata !61), !dbg !1273
  call void @llvm.dbg.declare(metadata double* %12, metadata !1274, metadata !61), !dbg !1275
  %99 = load double, double* %9, align 8, !dbg !1276
  %100 = load double, double* %7, align 8, !dbg !1277
  %101 = fsub double %99, %100, !dbg !1278
  %102 = load double, double* %8, align 8, !dbg !1279
  %103 = fsub double %101, %102, !dbg !1280
  store double %103, double* %12, align 8, !dbg !1275
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1281, metadata !61), !dbg !1282
  %104 = load double, double* %12, align 8, !dbg !1283
  %105 = fadd double %104, 5.000000e-01, !dbg !1284
  %106 = call double @floor(double %105) #1, !dbg !1285
  %107 = fptosi double %106 to i32, !dbg !1285
  store i32 %107, i32* %13, align 4, !dbg !1282
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1286, metadata !61), !dbg !1287
  %108 = load double, double* %12, align 8, !dbg !1288
  %109 = load i32, i32* %13, align 4, !dbg !1289
  %110 = sitofp i32 %109 to double, !dbg !1289
  %111 = fsub double %108, %110, !dbg !1290
  %112 = call double @fabs(double %111) #1, !dbg !1291
  %113 = fcmp olt double %112, 0x3D4F400000000000, !dbg !1292
  %114 = zext i1 %113 to i32, !dbg !1292
  store i32 %114, i32* %14, align 4, !dbg !1287
  %115 = load i32, i32* %14, align 4, !dbg !1293
  %116 = icmp ne i32 %115, 0, !dbg !1293
  br i1 %116, label %117, label %534, !dbg !1295

; <label>:117:                                    ; preds = %5
  call void @llvm.dbg.declare(metadata double* %15, metadata !1296, metadata !61), !dbg !1298
  %118 = load double, double* %10, align 8, !dbg !1299
  %119 = fsub double 1.000000e+00, %118, !dbg !1300
  %120 = call double @log(double %119) #5, !dbg !1301
  store double %120, double* %15, align 8, !dbg !1298
  call void @llvm.dbg.declare(metadata double* %16, metadata !1302, metadata !61), !dbg !1303
  %121 = load double, double* %12, align 8, !dbg !1304
  %122 = call double @fabs(double %121) #1, !dbg !1305
  store double %122, double* %16, align 8, !dbg !1303
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1306, metadata !61), !dbg !1307
  store i32 0, i32* %17, align 4, !dbg !1307
  call void @llvm.dbg.declare(metadata double* %18, metadata !1308, metadata !61), !dbg !1309
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !1310, metadata !61), !dbg !1311
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !1312, metadata !61), !dbg !1313
  call void @llvm.dbg.declare(metadata double* %21, metadata !1314, metadata !61), !dbg !1315
  call void @llvm.dbg.declare(metadata double* %22, metadata !1316, metadata !61), !dbg !1317
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !1318, metadata !61), !dbg !1319
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !1320, metadata !61), !dbg !1321
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !1322, metadata !61), !dbg !1323
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1324, metadata !61), !dbg !1325
  call void @llvm.dbg.declare(metadata i32* %27, metadata !1326, metadata !61), !dbg !1327
  call void @llvm.dbg.declare(metadata i32* %28, metadata !1328, metadata !61), !dbg !1329
  %123 = load double, double* %12, align 8, !dbg !1330
  %124 = fcmp oge double %123, 0.000000e+00, !dbg !1332
  br i1 %124, label %125, label %127, !dbg !1333

; <label>:125:                                    ; preds = %117
  %126 = load double, double* %12, align 8, !dbg !1334
  store double %126, double* %21, align 8, !dbg !1336
  store double 0.000000e+00, double* %22, align 8, !dbg !1337
  br label %129, !dbg !1338

; <label>:127:                                    ; preds = %117
  store double 0.000000e+00, double* %21, align 8, !dbg !1339
  %128 = load double, double* %12, align 8, !dbg !1341
  store double %128, double* %22, align 8, !dbg !1342
  br label %129

; <label>:129:                                    ; preds = %127, %125
  %130 = load double, double* %7, align 8, !dbg !1343
  %131 = load double, double* %22, align 8, !dbg !1344
  %132 = fadd double %130, %131, !dbg !1345
  %133 = call i32 @gsl_sf_lngamma_e(double %132, %struct.gsl_sf_result_struct* %24), !dbg !1346
  store i32 %133, i32* %27, align 4, !dbg !1347
  %134 = load double, double* %8, align 8, !dbg !1348
  %135 = load double, double* %22, align 8, !dbg !1349
  %136 = fadd double %134, %135, !dbg !1350
  %137 = call i32 @gsl_sf_lngamma_e(double %136, %struct.gsl_sf_result_struct* %25), !dbg !1351
  store i32 %137, i32* %28, align 4, !dbg !1352
  %138 = load double, double* %9, align 8, !dbg !1353
  %139 = call i32 @gsl_sf_lngamma_e(double %138, %struct.gsl_sf_result_struct* %23), !dbg !1354
  store i32 %139, i32* %26, align 4, !dbg !1355
  %140 = load double, double* %16, align 8, !dbg !1356
  %141 = fcmp olt double %140, 0x3CB0000000000000, !dbg !1358
  br i1 %141, label %142, label %145, !dbg !1359

; <label>:142:                                    ; preds = %129
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1360
  store double 0.000000e+00, double* %143, align 8, !dbg !1362
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !1363
  store double 0.000000e+00, double* %144, align 8, !dbg !1364
  br label %260, !dbg !1365

; <label>:145:                                    ; preds = %129
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !1366, metadata !61), !dbg !1368
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %30, metadata !1369, metadata !61), !dbg !1370
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !1371, metadata !61), !dbg !1372
  call void @llvm.dbg.declare(metadata i32* %32, metadata !1373, metadata !61), !dbg !1374
  %146 = load double, double* %16, align 8, !dbg !1375
  %147 = call i32 @gsl_sf_lngamma_e(double %146, %struct.gsl_sf_result_struct* %29), !dbg !1376
  store i32 %147, i32* %32, align 4, !dbg !1374
  call void @llvm.dbg.declare(metadata i32* %33, metadata !1377, metadata !61), !dbg !1378
  %148 = load double, double* %7, align 8, !dbg !1379
  %149 = load double, double* %21, align 8, !dbg !1380
  %150 = fadd double %148, %149, !dbg !1381
  %151 = call i32 @gsl_sf_lngamma_e(double %150, %struct.gsl_sf_result_struct* %30), !dbg !1382
  store i32 %151, i32* %33, align 4, !dbg !1378
  call void @llvm.dbg.declare(metadata i32* %34, metadata !1383, metadata !61), !dbg !1384
  %152 = load double, double* %8, align 8, !dbg !1385
  %153 = load double, double* %21, align 8, !dbg !1386
  %154 = fadd double %152, %153, !dbg !1387
  %155 = call i32 @gsl_sf_lngamma_e(double %154, %struct.gsl_sf_result_struct* %31), !dbg !1388
  store i32 %155, i32* %34, align 4, !dbg !1384
  %156 = load i32, i32* %33, align 4, !dbg !1389
  %157 = icmp eq i32 %156, 0, !dbg !1391
  br i1 %157, label %158, label %256, !dbg !1392

; <label>:158:                                    ; preds = %145
  %159 = load i32, i32* %34, align 4, !dbg !1393
  %160 = icmp eq i32 %159, 0, !dbg !1395
  br i1 %160, label %161, label %256, !dbg !1396

; <label>:161:                                    ; preds = %158
  %162 = load i32, i32* %32, align 4, !dbg !1397
  %163 = icmp eq i32 %162, 0, !dbg !1399
  br i1 %163, label %164, label %256, !dbg !1400

; <label>:164:                                    ; preds = %161
  call void @llvm.dbg.declare(metadata i32* %35, metadata !1401, metadata !61), !dbg !1403
  call void @llvm.dbg.declare(metadata double* %36, metadata !1404, metadata !61), !dbg !1405
  store double 1.000000e+00, double* %36, align 8, !dbg !1405
  call void @llvm.dbg.declare(metadata double* %37, metadata !1406, metadata !61), !dbg !1407
  store double 1.000000e+00, double* %37, align 8, !dbg !1407
  call void @llvm.dbg.declare(metadata double* %38, metadata !1408, metadata !61), !dbg !1409
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !1410
  %166 = load double, double* %165, align 8, !dbg !1410
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1411
  %168 = load double, double* %167, align 8, !dbg !1411
  %169 = fadd double %166, %168, !dbg !1412
  %170 = load double, double* %22, align 8, !dbg !1413
  %171 = load double, double* %15, align 8, !dbg !1414
  %172 = fmul double %170, %171, !dbg !1415
  %173 = fadd double %169, %172, !dbg !1416
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !1417
  %175 = load double, double* %174, align 8, !dbg !1417
  %176 = fsub double %173, %175, !dbg !1418
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !1419
  %178 = load double, double* %177, align 8, !dbg !1419
  %179 = fsub double %176, %178, !dbg !1420
  store double %179, double* %38, align 8, !dbg !1409
  call void @llvm.dbg.declare(metadata double* %39, metadata !1421, metadata !61), !dbg !1422
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !1423
  %181 = load double, double* %180, align 8, !dbg !1423
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !1424
  %183 = load double, double* %182, align 8, !dbg !1424
  %184 = fadd double %181, %183, !dbg !1425
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !1426
  %186 = load double, double* %185, align 8, !dbg !1426
  %187 = fadd double %184, %186, !dbg !1427
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !1428
  %189 = load double, double* %188, align 8, !dbg !1428
  %190 = fadd double %187, %189, !dbg !1429
  %191 = load double, double* %38, align 8, !dbg !1430
  %192 = call double @fabs(double %191) #1, !dbg !1431
  %193 = fmul double 0x3CB0000000000000, %192, !dbg !1432
  %194 = fadd double %190, %193, !dbg !1433
  store double %194, double* %39, align 8, !dbg !1422
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1434, metadata !61), !dbg !1435
  store i32 1, i32* %35, align 4, !dbg !1436
  br label %195, !dbg !1438

; <label>:195:                                    ; preds = %233, %164
  %196 = load i32, i32* %35, align 4, !dbg !1439
  %197 = sitofp i32 %196 to double, !dbg !1439
  %198 = load double, double* %16, align 8, !dbg !1442
  %199 = fcmp olt double %197, %198, !dbg !1443
  br i1 %199, label %200, label %236, !dbg !1444

; <label>:200:                                    ; preds = %195
  call void @llvm.dbg.declare(metadata i32* %41, metadata !1445, metadata !61), !dbg !1447
  %201 = load i32, i32* %35, align 4, !dbg !1448
  %202 = sub nsw i32 %201, 1, !dbg !1449
  store i32 %202, i32* %41, align 4, !dbg !1447
  %203 = load double, double* %7, align 8, !dbg !1450
  %204 = load double, double* %22, align 8, !dbg !1451
  %205 = fadd double %203, %204, !dbg !1452
  %206 = load i32, i32* %41, align 4, !dbg !1453
  %207 = sitofp i32 %206 to double, !dbg !1453
  %208 = fadd double %205, %207, !dbg !1454
  %209 = load double, double* %8, align 8, !dbg !1455
  %210 = load double, double* %22, align 8, !dbg !1456
  %211 = fadd double %209, %210, !dbg !1457
  %212 = load i32, i32* %41, align 4, !dbg !1458
  %213 = sitofp i32 %212 to double, !dbg !1458
  %214 = fadd double %211, %213, !dbg !1459
  %215 = fmul double %208, %214, !dbg !1460
  %216 = load double, double* %22, align 8, !dbg !1461
  %217 = fadd double 1.000000e+00, %216, !dbg !1462
  %218 = load i32, i32* %41, align 4, !dbg !1463
  %219 = sitofp i32 %218 to double, !dbg !1463
  %220 = fadd double %217, %219, !dbg !1464
  %221 = fdiv double %215, %220, !dbg !1465
  %222 = load i32, i32* %35, align 4, !dbg !1466
  %223 = sitofp i32 %222 to double, !dbg !1466
  %224 = fdiv double %221, %223, !dbg !1467
  %225 = load double, double* %10, align 8, !dbg !1468
  %226 = fsub double 1.000000e+00, %225, !dbg !1469
  %227 = fmul double %224, %226, !dbg !1470
  %228 = load double, double* %37, align 8, !dbg !1471
  %229 = fmul double %228, %227, !dbg !1471
  store double %229, double* %37, align 8, !dbg !1471
  %230 = load double, double* %37, align 8, !dbg !1472
  %231 = load double, double* %36, align 8, !dbg !1473
  %232 = fadd double %231, %230, !dbg !1473
  store double %232, double* %36, align 8, !dbg !1473
  br label %233, !dbg !1474

; <label>:233:                                    ; preds = %200
  %234 = load i32, i32* %35, align 4, !dbg !1475
  %235 = add nsw i32 %234, 1, !dbg !1475
  store i32 %235, i32* %35, align 4, !dbg !1475
  br label %195, !dbg !1477, !llvm.loop !1478

; <label>:236:                                    ; preds = %195
  %237 = load double, double* %38, align 8, !dbg !1480
  %238 = load double, double* %39, align 8, !dbg !1481
  %239 = load double, double* %36, align 8, !dbg !1482
  %240 = load double, double* %36, align 8, !dbg !1483
  %241 = call double @fabs(double %240) #1, !dbg !1484
  %242 = fmul double 0x3CB0000000000000, %241, !dbg !1485
  %243 = call i32 @gsl_sf_exp_mult_err_e(double %237, double %238, double %239, double %242, %struct.gsl_sf_result_struct* %19), !dbg !1486
  store i32 %243, i32* %40, align 4, !dbg !1487
  %244 = load i32, i32* %40, align 4, !dbg !1488
  %245 = icmp eq i32 %244, 16, !dbg !1490
  br i1 %245, label %246, label %255, !dbg !1491

; <label>:246:                                    ; preds = %236
  br label %247, !dbg !1492, !llvm.loop !1494

; <label>:247:                                    ; preds = %246
  %248 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1495
  %249 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %248, i32 0, i32 0, !dbg !1495
  store double 0x7FF0000000000000, double* %249, align 8, !dbg !1495
  %250 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1495
  %251 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %250, i32 0, i32 1, !dbg !1495
  store double 0x7FF0000000000000, double* %251, align 8, !dbg !1495
  br label %252, !dbg !1495, !llvm.loop !1498

; <label>:252:                                    ; preds = %247
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 440, i32 16), !dbg !1500
  store i32 16, i32* %6, align 4, !dbg !1500
  br label %892, !dbg !1500
                                                  ; No predecessors!
  br label %254, !dbg !1503

; <label>:254:                                    ; preds = %253
  br label %255, !dbg !1505

; <label>:255:                                    ; preds = %254, %236
  br label %259, !dbg !1506

; <label>:256:                                    ; preds = %161, %158, %145
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1507
  store double 0.000000e+00, double* %257, align 8, !dbg !1509
  %258 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !1510
  store double 0.000000e+00, double* %258, align 8, !dbg !1511
  br label %259

; <label>:259:                                    ; preds = %256, %255
  br label %260

; <label>:260:                                    ; preds = %259, %142
  %261 = load i32, i32* %27, align 4, !dbg !1512
  %262 = icmp eq i32 %261, 0, !dbg !1514
  br i1 %262, label %263, label %488, !dbg !1515

; <label>:263:                                    ; preds = %260
  %264 = load i32, i32* %28, align 4, !dbg !1516
  %265 = icmp eq i32 %264, 0, !dbg !1518
  br i1 %265, label %266, label %488, !dbg !1519

; <label>:266:                                    ; preds = %263
  call void @llvm.dbg.declare(metadata i32* %42, metadata !1520, metadata !61), !dbg !1522
  store i32 2000, i32* %42, align 4, !dbg !1522
  call void @llvm.dbg.declare(metadata double* %43, metadata !1523, metadata !61), !dbg !1524
  store double 0xBFE2788CFC6FB619, double* %43, align 8, !dbg !1524
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %44, metadata !1525, metadata !61), !dbg !1526
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %45, metadata !1527, metadata !61), !dbg !1528
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %46, metadata !1529, metadata !61), !dbg !1530
  call void @llvm.dbg.declare(metadata i32* %47, metadata !1531, metadata !61), !dbg !1532
  %267 = load double, double* %16, align 8, !dbg !1533
  %268 = fadd double 1.000000e+00, %267, !dbg !1534
  %269 = call i32 @gsl_sf_psi_e(double %268, %struct.gsl_sf_result_struct* %44), !dbg !1535
  store i32 %269, i32* %47, align 4, !dbg !1532
  call void @llvm.dbg.declare(metadata i32* %48, metadata !1536, metadata !61), !dbg !1537
  %270 = load double, double* %7, align 8, !dbg !1538
  %271 = load double, double* %21, align 8, !dbg !1539
  %272 = fadd double %270, %271, !dbg !1540
  %273 = call i32 @gsl_sf_psi_e(double %272, %struct.gsl_sf_result_struct* %45), !dbg !1541
  store i32 %273, i32* %48, align 4, !dbg !1537
  call void @llvm.dbg.declare(metadata i32* %49, metadata !1542, metadata !61), !dbg !1543
  %274 = load double, double* %8, align 8, !dbg !1544
  %275 = load double, double* %21, align 8, !dbg !1545
  %276 = fadd double %274, %275, !dbg !1546
  %277 = call i32 @gsl_sf_psi_e(double %276, %struct.gsl_sf_result_struct* %46), !dbg !1547
  store i32 %277, i32* %49, align 4, !dbg !1543
  call void @llvm.dbg.declare(metadata i32* %50, metadata !1548, metadata !61), !dbg !1549
  %278 = load i32, i32* %47, align 4, !dbg !1550
  %279 = icmp ne i32 %278, 0, !dbg !1550
  br i1 %279, label %280, label %282, !dbg !1550

; <label>:280:                                    ; preds = %266
  %281 = load i32, i32* %47, align 4, !dbg !1551
  br label %297, !dbg !1551

; <label>:282:                                    ; preds = %266
  %283 = load i32, i32* %48, align 4, !dbg !1553
  %284 = icmp ne i32 %283, 0, !dbg !1553
  br i1 %284, label %285, label %287, !dbg !1553

; <label>:285:                                    ; preds = %282
  %286 = load i32, i32* %48, align 4, !dbg !1555
  br label %295, !dbg !1555

; <label>:287:                                    ; preds = %282
  %288 = load i32, i32* %49, align 4, !dbg !1557
  %289 = icmp ne i32 %288, 0, !dbg !1557
  br i1 %289, label %290, label %292, !dbg !1557

; <label>:290:                                    ; preds = %287
  %291 = load i32, i32* %49, align 4, !dbg !1559
  br label %293, !dbg !1559

; <label>:292:                                    ; preds = %287
  br label %293, !dbg !1561

; <label>:293:                                    ; preds = %292, %290
  %294 = phi i32 [ %291, %290 ], [ 0, %292 ], !dbg !1563
  br label %295, !dbg !1563

; <label>:295:                                    ; preds = %293, %285
  %296 = phi i32 [ %286, %285 ], [ %294, %293 ], !dbg !1565
  br label %297, !dbg !1565

; <label>:297:                                    ; preds = %295, %280
  %298 = phi i32 [ %281, %280 ], [ %296, %295 ], !dbg !1567
  store i32 %298, i32* %50, align 4, !dbg !1569
  call void @llvm.dbg.declare(metadata double* %51, metadata !1570, metadata !61), !dbg !1571
  %299 = load double, double* %43, align 8, !dbg !1572
  %300 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !1573
  %301 = load double, double* %300, align 8, !dbg !1573
  %302 = fadd double %299, %301, !dbg !1574
  %303 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !1575
  %304 = load double, double* %303, align 8, !dbg !1575
  %305 = fsub double %302, %304, !dbg !1576
  %306 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !1577
  %307 = load double, double* %306, align 8, !dbg !1577
  %308 = fsub double %305, %307, !dbg !1578
  %309 = load double, double* %15, align 8, !dbg !1579
  %310 = fsub double %308, %309, !dbg !1580
  store double %310, double* %51, align 8, !dbg !1571
  call void @llvm.dbg.declare(metadata double* %52, metadata !1581, metadata !61), !dbg !1582
  %311 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !1583
  %312 = load double, double* %311, align 8, !dbg !1583
  %313 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !1584
  %314 = load double, double* %313, align 8, !dbg !1584
  %315 = fadd double %312, %314, !dbg !1585
  %316 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !1586
  %317 = load double, double* %316, align 8, !dbg !1586
  %318 = fadd double %315, %317, !dbg !1587
  %319 = load double, double* %51, align 8, !dbg !1588
  %320 = call double @fabs(double %319) #1, !dbg !1589
  %321 = fmul double 0x3CB0000000000000, %320, !dbg !1590
  %322 = fadd double %318, %321, !dbg !1591
  store double %322, double* %52, align 8, !dbg !1582
  call void @llvm.dbg.declare(metadata double* %53, metadata !1592, metadata !61), !dbg !1593
  store double 1.000000e+00, double* %53, align 8, !dbg !1593
  call void @llvm.dbg.declare(metadata double* %54, metadata !1594, metadata !61), !dbg !1595
  %323 = load double, double* %51, align 8, !dbg !1596
  store double %323, double* %54, align 8, !dbg !1595
  call void @llvm.dbg.declare(metadata double* %55, metadata !1597, metadata !61), !dbg !1598
  %324 = load double, double* %52, align 8, !dbg !1599
  store double %324, double* %55, align 8, !dbg !1598
  call void @llvm.dbg.declare(metadata double* %56, metadata !1600, metadata !61), !dbg !1601
  %325 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1602
  %326 = load double, double* %325, align 8, !dbg !1602
  %327 = load double, double* %21, align 8, !dbg !1603
  %328 = load double, double* %15, align 8, !dbg !1604
  %329 = fmul double %327, %328, !dbg !1605
  %330 = fadd double %326, %329, !dbg !1606
  %331 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !1607
  %332 = load double, double* %331, align 8, !dbg !1607
  %333 = fsub double %330, %332, !dbg !1608
  %334 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !1609
  %335 = load double, double* %334, align 8, !dbg !1609
  %336 = fsub double %333, %335, !dbg !1610
  store double %336, double* %56, align 8, !dbg !1601
  call void @llvm.dbg.declare(metadata double* %57, metadata !1611, metadata !61), !dbg !1612
  %337 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !1613
  %338 = load double, double* %337, align 8, !dbg !1613
  %339 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !1614
  %340 = load double, double* %339, align 8, !dbg !1614
  %341 = fadd double %338, %340, !dbg !1615
  %342 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !1616
  %343 = load double, double* %342, align 8, !dbg !1616
  %344 = fadd double %341, %343, !dbg !1617
  %345 = load double, double* %56, align 8, !dbg !1618
  %346 = call double @fabs(double %345) #1, !dbg !1619
  %347 = fmul double 0x3CB0000000000000, %346, !dbg !1620
  %348 = fadd double %344, %347, !dbg !1621
  store double %348, double* %57, align 8, !dbg !1612
  call void @llvm.dbg.declare(metadata i32* %58, metadata !1622, metadata !61), !dbg !1623
  call void @llvm.dbg.declare(metadata i32* %59, metadata !1624, metadata !61), !dbg !1625
  store i32 1, i32* %59, align 4, !dbg !1626
  br label %349, !dbg !1628

; <label>:349:                                    ; preds = %444, %297
  %350 = load i32, i32* %59, align 4, !dbg !1629
  %351 = icmp slt i32 %350, 2000, !dbg !1632
  br i1 %351, label %352, label %447, !dbg !1633

; <label>:352:                                    ; preds = %349
  call void @llvm.dbg.declare(metadata double* %60, metadata !1634, metadata !61), !dbg !1636
  %353 = load i32, i32* %59, align 4, !dbg !1637
  %354 = sitofp i32 %353 to double, !dbg !1638
  %355 = fdiv double 1.000000e+00, %354, !dbg !1639
  %356 = load double, double* %16, align 8, !dbg !1640
  %357 = load i32, i32* %59, align 4, !dbg !1641
  %358 = sitofp i32 %357 to double, !dbg !1641
  %359 = fadd double %356, %358, !dbg !1642
  %360 = fdiv double 1.000000e+00, %359, !dbg !1643
  %361 = fadd double %355, %360, !dbg !1644
  store double %361, double* %60, align 8, !dbg !1636
  call void @llvm.dbg.declare(metadata double* %61, metadata !1645, metadata !61), !dbg !1646
  %362 = load double, double* %7, align 8, !dbg !1647
  %363 = load double, double* %21, align 8, !dbg !1648
  %364 = fadd double %362, %363, !dbg !1649
  %365 = load i32, i32* %59, align 4, !dbg !1650
  %366 = sitofp i32 %365 to double, !dbg !1650
  %367 = fadd double %364, %366, !dbg !1651
  %368 = fsub double %367, 1.000000e+00, !dbg !1652
  %369 = fdiv double 1.000000e+00, %368, !dbg !1653
  %370 = load double, double* %8, align 8, !dbg !1654
  %371 = load double, double* %21, align 8, !dbg !1655
  %372 = fadd double %370, %371, !dbg !1656
  %373 = load i32, i32* %59, align 4, !dbg !1657
  %374 = sitofp i32 %373 to double, !dbg !1657
  %375 = fadd double %372, %374, !dbg !1658
  %376 = fsub double %375, 1.000000e+00, !dbg !1659
  %377 = fdiv double 1.000000e+00, %376, !dbg !1660
  %378 = fadd double %369, %377, !dbg !1661
  store double %378, double* %61, align 8, !dbg !1646
  call void @llvm.dbg.declare(metadata double* %62, metadata !1662, metadata !61), !dbg !1663
  store double 0.000000e+00, double* %62, align 8, !dbg !1663
  %379 = load double, double* %60, align 8, !dbg !1664
  %380 = load double, double* %61, align 8, !dbg !1665
  %381 = fsub double %379, %380, !dbg !1666
  %382 = load double, double* %51, align 8, !dbg !1667
  %383 = fadd double %382, %381, !dbg !1667
  store double %383, double* %51, align 8, !dbg !1667
  %384 = load double, double* %60, align 8, !dbg !1668
  %385 = call double @fabs(double %384) #1, !dbg !1669
  %386 = load double, double* %61, align 8, !dbg !1670
  %387 = call double @fabs(double %386) #1, !dbg !1671
  %388 = fadd double %385, %387, !dbg !1673
  %389 = fmul double 0x3CB0000000000000, %388, !dbg !1674
  %390 = load double, double* %52, align 8, !dbg !1675
  %391 = fadd double %390, %389, !dbg !1675
  store double %391, double* %52, align 8, !dbg !1675
  %392 = load double, double* %7, align 8, !dbg !1676
  %393 = load double, double* %21, align 8, !dbg !1677
  %394 = fadd double %392, %393, !dbg !1678
  %395 = load i32, i32* %59, align 4, !dbg !1679
  %396 = sitofp i32 %395 to double, !dbg !1679
  %397 = fadd double %394, %396, !dbg !1680
  %398 = fsub double %397, 1.000000e+00, !dbg !1681
  %399 = load double, double* %8, align 8, !dbg !1682
  %400 = load double, double* %21, align 8, !dbg !1683
  %401 = fadd double %399, %400, !dbg !1684
  %402 = load i32, i32* %59, align 4, !dbg !1685
  %403 = sitofp i32 %402 to double, !dbg !1685
  %404 = fadd double %401, %403, !dbg !1686
  %405 = fsub double %404, 1.000000e+00, !dbg !1687
  %406 = fmul double %398, %405, !dbg !1688
  %407 = load double, double* %16, align 8, !dbg !1689
  %408 = load i32, i32* %59, align 4, !dbg !1690
  %409 = sitofp i32 %408 to double, !dbg !1690
  %410 = fadd double %407, %409, !dbg !1691
  %411 = load i32, i32* %59, align 4, !dbg !1692
  %412 = sitofp i32 %411 to double, !dbg !1692
  %413 = fmul double %410, %412, !dbg !1693
  %414 = fdiv double %406, %413, !dbg !1694
  %415 = load double, double* %10, align 8, !dbg !1695
  %416 = fsub double 1.000000e+00, %415, !dbg !1696
  %417 = fmul double %414, %416, !dbg !1697
  %418 = load double, double* %53, align 8, !dbg !1698
  %419 = fmul double %418, %417, !dbg !1698
  store double %419, double* %53, align 8, !dbg !1698
  %420 = load double, double* %53, align 8, !dbg !1699
  %421 = load double, double* %51, align 8, !dbg !1700
  %422 = fmul double %420, %421, !dbg !1701
  store double %422, double* %62, align 8, !dbg !1702
  %423 = load double, double* %62, align 8, !dbg !1703
  %424 = load double, double* %54, align 8, !dbg !1704
  %425 = fadd double %424, %423, !dbg !1704
  store double %425, double* %54, align 8, !dbg !1704
  %426 = load double, double* %53, align 8, !dbg !1705
  %427 = load double, double* %52, align 8, !dbg !1706
  %428 = fmul double %426, %427, !dbg !1707
  %429 = call double @fabs(double %428) #1, !dbg !1708
  %430 = load double, double* %62, align 8, !dbg !1709
  %431 = call double @fabs(double %430) #1, !dbg !1710
  %432 = fmul double 0x3CB0000000000000, %431, !dbg !1711
  %433 = fadd double %429, %432, !dbg !1712
  %434 = load double, double* %55, align 8, !dbg !1713
  %435 = fadd double %434, %433, !dbg !1713
  store double %435, double* %55, align 8, !dbg !1713
  %436 = load double, double* %62, align 8, !dbg !1714
  %437 = call double @fabs(double %436) #1, !dbg !1716
  %438 = load double, double* %54, align 8, !dbg !1717
  %439 = call double @fabs(double %438) #1, !dbg !1718
  %440 = fmul double 0x3CB0000000000000, %439, !dbg !1720
  %441 = fcmp olt double %437, %440, !dbg !1721
  br i1 %441, label %442, label %443, !dbg !1722

; <label>:442:                                    ; preds = %352
  br label %447, !dbg !1723

; <label>:443:                                    ; preds = %352
  br label %444, !dbg !1725

; <label>:444:                                    ; preds = %443
  %445 = load i32, i32* %59, align 4, !dbg !1726
  %446 = add nsw i32 %445, 1, !dbg !1726
  store i32 %446, i32* %59, align 4, !dbg !1726
  br label %349, !dbg !1728, !llvm.loop !1729

; <label>:447:                                    ; preds = %442, %349
  %448 = load i32, i32* %59, align 4, !dbg !1731
  %449 = icmp eq i32 %448, 2000, !dbg !1733
  br i1 %449, label %450, label %451, !dbg !1734

; <label>:450:                                    ; preds = %447
  store i32 11, i32* %17, align 4, !dbg !1735
  br label %451, !dbg !1737

; <label>:451:                                    ; preds = %450, %447
  %452 = load double, double* %54, align 8, !dbg !1738
  %453 = fcmp oeq double %452, 0.000000e+00, !dbg !1740
  br i1 %453, label %454, label %457, !dbg !1741

; <label>:454:                                    ; preds = %451
  %455 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1742
  store double 0.000000e+00, double* %455, align 8, !dbg !1744
  %456 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1745
  store double 0.000000e+00, double* %456, align 8, !dbg !1746
  br label %473, !dbg !1747

; <label>:457:                                    ; preds = %451
  %458 = load double, double* %56, align 8, !dbg !1748
  %459 = load double, double* %57, align 8, !dbg !1750
  %460 = load double, double* %54, align 8, !dbg !1751
  %461 = load double, double* %55, align 8, !dbg !1752
  %462 = call i32 @gsl_sf_exp_mult_err_e(double %458, double %459, double %460, double %461, %struct.gsl_sf_result_struct* %20), !dbg !1753
  store i32 %462, i32* %58, align 4, !dbg !1754
  %463 = load i32, i32* %58, align 4, !dbg !1755
  %464 = icmp eq i32 %463, 16, !dbg !1757
  br i1 %464, label %465, label %472, !dbg !1758

; <label>:465:                                    ; preds = %457
  %466 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1759
  %467 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %466, i32 0, i32 0, !dbg !1761
  store double 0.000000e+00, double* %467, align 8, !dbg !1762
  %468 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1763
  %469 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %468, i32 0, i32 1, !dbg !1764
  store double 0.000000e+00, double* %469, align 8, !dbg !1765
  br label %470, !dbg !1766, !llvm.loop !1767

; <label>:470:                                    ; preds = %465
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 509, i32 16), !dbg !1768
  store i32 16, i32* %6, align 4, !dbg !1768
  br label %892, !dbg !1768
                                                  ; No predecessors!
  br label %472, !dbg !1771

; <label>:472:                                    ; preds = %471, %457
  br label %473

; <label>:473:                                    ; preds = %472, %454
  %474 = load i32, i32* %17, align 4, !dbg !1772
  %475 = icmp ne i32 %474, 0, !dbg !1772
  br i1 %475, label %476, label %478, !dbg !1772

; <label>:476:                                    ; preds = %473
  %477 = load i32, i32* %17, align 4, !dbg !1773
  br label %486, !dbg !1773

; <label>:478:                                    ; preds = %473
  %479 = load i32, i32* %50, align 4, !dbg !1774
  %480 = icmp ne i32 %479, 0, !dbg !1774
  br i1 %480, label %481, label %483, !dbg !1774

; <label>:481:                                    ; preds = %478
  %482 = load i32, i32* %50, align 4, !dbg !1775
  br label %484, !dbg !1775

; <label>:483:                                    ; preds = %478
  br label %484, !dbg !1776

; <label>:484:                                    ; preds = %483, %481
  %485 = phi i32 [ %482, %481 ], [ 0, %483 ], !dbg !1777
  br label %486, !dbg !1777

; <label>:486:                                    ; preds = %484, %476
  %487 = phi i32 [ %477, %476 ], [ %485, %484 ], !dbg !1778
  store i32 %487, i32* %17, align 4, !dbg !1779
  br label %491, !dbg !1780

; <label>:488:                                    ; preds = %263, %260
  %489 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1781
  store double 0.000000e+00, double* %489, align 8, !dbg !1783
  %490 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1784
  store double 0.000000e+00, double* %490, align 8, !dbg !1785
  br label %491

; <label>:491:                                    ; preds = %488, %486
  %492 = load i32, i32* %13, align 4, !dbg !1786
  %493 = and i32 %492, 1, !dbg !1786
  %494 = icmp ne i32 %493, 0, !dbg !1786
  %495 = select i1 %494, double -1.000000e+00, double 1.000000e+00, !dbg !1786
  store double %495, double* %18, align 8, !dbg !1787
  %496 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1788
  %497 = load double, double* %496, align 8, !dbg !1788
  %498 = load double, double* %18, align 8, !dbg !1789
  %499 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1790
  %500 = load double, double* %499, align 8, !dbg !1790
  %501 = fmul double %498, %500, !dbg !1791
  %502 = fadd double %497, %501, !dbg !1792
  %503 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1793
  %504 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %503, i32 0, i32 0, !dbg !1794
  store double %502, double* %504, align 8, !dbg !1795
  %505 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !1796
  %506 = load double, double* %505, align 8, !dbg !1796
  %507 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1797
  %508 = load double, double* %507, align 8, !dbg !1797
  %509 = fadd double %506, %508, !dbg !1798
  %510 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1799
  %511 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %510, i32 0, i32 1, !dbg !1800
  store double %509, double* %511, align 8, !dbg !1801
  %512 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1802
  %513 = load double, double* %512, align 8, !dbg !1802
  %514 = call double @fabs(double %513) #1, !dbg !1803
  %515 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1804
  %516 = load double, double* %515, align 8, !dbg !1804
  %517 = call double @fabs(double %516) #1, !dbg !1805
  %518 = fadd double %514, %517, !dbg !1807
  %519 = fmul double 0x3CC0000000000000, %518, !dbg !1808
  %520 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1809
  %521 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %520, i32 0, i32 1, !dbg !1810
  %522 = load double, double* %521, align 8, !dbg !1811
  %523 = fadd double %522, %519, !dbg !1811
  store double %523, double* %521, align 8, !dbg !1811
  %524 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1812
  %525 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %524, i32 0, i32 0, !dbg !1813
  %526 = load double, double* %525, align 8, !dbg !1813
  %527 = call double @fabs(double %526) #1, !dbg !1814
  %528 = fmul double 0x3CC0000000000000, %527, !dbg !1815
  %529 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !1816
  %530 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %529, i32 0, i32 1, !dbg !1817
  %531 = load double, double* %530, align 8, !dbg !1818
  %532 = fadd double %531, %528, !dbg !1818
  store double %532, double* %530, align 8, !dbg !1818
  %533 = load i32, i32* %17, align 4, !dbg !1819
  store i32 %533, i32* %6, align 4, !dbg !1820
  br label %892, !dbg !1820

; <label>:534:                                    ; preds = %5
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %63, metadata !1821, metadata !61), !dbg !1823
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %64, metadata !1824, metadata !61), !dbg !1825
  call void @llvm.dbg.declare(metadata double* %65, metadata !1826, metadata !61), !dbg !1827
  call void @llvm.dbg.declare(metadata double* %66, metadata !1828, metadata !61), !dbg !1829
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %67, metadata !1830, metadata !61), !dbg !1831
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %68, metadata !1832, metadata !61), !dbg !1833
  call void @llvm.dbg.declare(metadata i32* %69, metadata !1834, metadata !61), !dbg !1835
  call void @llvm.dbg.declare(metadata i32* %70, metadata !1836, metadata !61), !dbg !1837
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %71, metadata !1838, metadata !61), !dbg !1839
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %72, metadata !1840, metadata !61), !dbg !1841
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %73, metadata !1842, metadata !61), !dbg !1843
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %74, metadata !1844, metadata !61), !dbg !1845
  call void @llvm.dbg.declare(metadata double* %75, metadata !1846, metadata !61), !dbg !1847
  call void @llvm.dbg.declare(metadata double* %76, metadata !1848, metadata !61), !dbg !1849
  call void @llvm.dbg.declare(metadata double* %77, metadata !1850, metadata !61), !dbg !1851
  call void @llvm.dbg.declare(metadata double* %78, metadata !1852, metadata !61), !dbg !1853
  call void @llvm.dbg.declare(metadata i32* %79, metadata !1854, metadata !61), !dbg !1855
  %535 = load double, double* %9, align 8, !dbg !1856
  %536 = load double, double* %7, align 8, !dbg !1857
  %537 = fsub double %535, %536, !dbg !1858
  %538 = call i32 @gsl_sf_lngamma_sgn_e(double %537, %struct.gsl_sf_result_struct* %71, double* %75), !dbg !1859
  store i32 %538, i32* %79, align 4, !dbg !1855
  call void @llvm.dbg.declare(metadata i32* %80, metadata !1860, metadata !61), !dbg !1861
  %539 = load double, double* %9, align 8, !dbg !1862
  %540 = load double, double* %8, align 8, !dbg !1863
  %541 = fsub double %539, %540, !dbg !1864
  %542 = call i32 @gsl_sf_lngamma_sgn_e(double %541, %struct.gsl_sf_result_struct* %72, double* %76), !dbg !1865
  store i32 %542, i32* %80, align 4, !dbg !1861
  call void @llvm.dbg.declare(metadata i32* %81, metadata !1866, metadata !61), !dbg !1867
  %543 = load double, double* %7, align 8, !dbg !1868
  %544 = call i32 @gsl_sf_lngamma_sgn_e(double %543, %struct.gsl_sf_result_struct* %73, double* %77), !dbg !1869
  store i32 %544, i32* %81, align 4, !dbg !1867
  call void @llvm.dbg.declare(metadata i32* %82, metadata !1870, metadata !61), !dbg !1871
  %545 = load double, double* %8, align 8, !dbg !1872
  %546 = call i32 @gsl_sf_lngamma_sgn_e(double %545, %struct.gsl_sf_result_struct* %74, double* %78), !dbg !1873
  store i32 %546, i32* %82, align 4, !dbg !1871
  call void @llvm.dbg.declare(metadata i32* %83, metadata !1874, metadata !61), !dbg !1875
  %547 = load i32, i32* %79, align 4, !dbg !1876
  %548 = icmp eq i32 %547, 0, !dbg !1877
  br i1 %548, label %549, label %552, !dbg !1878

; <label>:549:                                    ; preds = %534
  %550 = load i32, i32* %80, align 4, !dbg !1879
  %551 = icmp eq i32 %550, 0, !dbg !1881
  br label %552

; <label>:552:                                    ; preds = %549, %534
  %553 = phi i1 [ false, %534 ], [ %551, %549 ]
  %554 = zext i1 %553 to i32, !dbg !1882
  store i32 %554, i32* %83, align 4, !dbg !1884
  call void @llvm.dbg.declare(metadata i32* %84, metadata !1885, metadata !61), !dbg !1886
  %555 = load i32, i32* %81, align 4, !dbg !1887
  %556 = icmp eq i32 %555, 0, !dbg !1888
  br i1 %556, label %557, label %560, !dbg !1889

; <label>:557:                                    ; preds = %552
  %558 = load i32, i32* %82, align 4, !dbg !1890
  %559 = icmp eq i32 %558, 0, !dbg !1891
  br label %560

; <label>:560:                                    ; preds = %557, %552
  %561 = phi i1 [ false, %552 ], [ %559, %557 ]
  %562 = zext i1 %561 to i32, !dbg !1892
  store i32 %562, i32* %84, align 4, !dbg !1893
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %85, metadata !1894, metadata !61), !dbg !1895
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %86, metadata !1896, metadata !61), !dbg !1897
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %87, metadata !1898, metadata !61), !dbg !1899
  call void @llvm.dbg.declare(metadata double* %88, metadata !1900, metadata !61), !dbg !1901
  call void @llvm.dbg.declare(metadata double* %89, metadata !1902, metadata !61), !dbg !1903
  call void @llvm.dbg.declare(metadata double* %90, metadata !1904, metadata !61), !dbg !1905
  %563 = load double, double* %9, align 8, !dbg !1906
  %564 = call i32 @gsl_sf_lngamma_sgn_e(double %563, %struct.gsl_sf_result_struct* %85, double* %88), !dbg !1907
  %565 = load double, double* %12, align 8, !dbg !1908
  %566 = call i32 @gsl_sf_lngamma_sgn_e(double %565, %struct.gsl_sf_result_struct* %86, double* %89), !dbg !1909
  %567 = load double, double* %12, align 8, !dbg !1910
  %568 = fsub double -0.000000e+00, %567, !dbg !1911
  %569 = call i32 @gsl_sf_lngamma_sgn_e(double %568, %struct.gsl_sf_result_struct* %87, double* %90), !dbg !1912
  %570 = load double, double* %88, align 8, !dbg !1913
  %571 = load double, double* %89, align 8, !dbg !1914
  %572 = fmul double %570, %571, !dbg !1915
  %573 = load double, double* %75, align 8, !dbg !1916
  %574 = fmul double %572, %573, !dbg !1917
  %575 = load double, double* %76, align 8, !dbg !1918
  %576 = fmul double %574, %575, !dbg !1919
  store double %576, double* %65, align 8, !dbg !1920
  %577 = load double, double* %88, align 8, !dbg !1921
  %578 = load double, double* %90, align 8, !dbg !1922
  %579 = fmul double %577, %578, !dbg !1923
  %580 = load double, double* %77, align 8, !dbg !1924
  %581 = fmul double %579, %580, !dbg !1925
  %582 = load double, double* %78, align 8, !dbg !1926
  %583 = fmul double %581, %582, !dbg !1927
  store double %583, double* %66, align 8, !dbg !1928
  %584 = load i32, i32* %83, align 4, !dbg !1929
  %585 = icmp ne i32 %584, 0, !dbg !1929
  br i1 %585, label %586, label %670, !dbg !1931

; <label>:586:                                    ; preds = %560
  %587 = load i32, i32* %84, align 4, !dbg !1932
  %588 = icmp ne i32 %587, 0, !dbg !1932
  br i1 %588, label %589, label %670, !dbg !1934

; <label>:589:                                    ; preds = %586
  call void @llvm.dbg.declare(metadata double* %91, metadata !1935, metadata !61), !dbg !1937
  %590 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !1938
  %591 = load double, double* %590, align 8, !dbg !1938
  %592 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !1939
  %593 = load double, double* %592, align 8, !dbg !1939
  %594 = fadd double %591, %593, !dbg !1940
  %595 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !1941
  %596 = load double, double* %595, align 8, !dbg !1941
  %597 = fsub double %594, %596, !dbg !1942
  %598 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !1943
  %599 = load double, double* %598, align 8, !dbg !1943
  %600 = fsub double %597, %599, !dbg !1944
  store double %600, double* %91, align 8, !dbg !1937
  call void @llvm.dbg.declare(metadata double* %92, metadata !1945, metadata !61), !dbg !1946
  %601 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !1947
  %602 = load double, double* %601, align 8, !dbg !1947
  %603 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !1948
  %604 = load double, double* %603, align 8, !dbg !1948
  %605 = fadd double %602, %604, !dbg !1949
  %606 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !1950
  %607 = load double, double* %606, align 8, !dbg !1950
  %608 = fsub double %605, %607, !dbg !1951
  %609 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !1952
  %610 = load double, double* %609, align 8, !dbg !1952
  %611 = fsub double %608, %610, !dbg !1953
  %612 = load double, double* %12, align 8, !dbg !1954
  %613 = load double, double* %10, align 8, !dbg !1955
  %614 = fsub double 1.000000e+00, %613, !dbg !1956
  %615 = call double @log(double %614) #5, !dbg !1957
  %616 = fmul double %612, %615, !dbg !1958
  %617 = fadd double %611, %616, !dbg !1959
  store double %617, double* %92, align 8, !dbg !1946
  call void @llvm.dbg.declare(metadata double* %93, metadata !1960, metadata !61), !dbg !1961
  %618 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !1962
  %619 = load double, double* %618, align 8, !dbg !1962
  %620 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 1, !dbg !1963
  %621 = load double, double* %620, align 8, !dbg !1963
  %622 = fadd double %619, %621, !dbg !1964
  %623 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !1965
  %624 = load double, double* %623, align 8, !dbg !1965
  %625 = fadd double %622, %624, !dbg !1966
  %626 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !1967
  %627 = load double, double* %626, align 8, !dbg !1967
  %628 = fadd double %625, %627, !dbg !1968
  store double %628, double* %93, align 8, !dbg !1961
  call void @llvm.dbg.declare(metadata double* %94, metadata !1969, metadata !61), !dbg !1970
  %629 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !1971
  %630 = load double, double* %629, align 8, !dbg !1971
  %631 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !1972
  %632 = load double, double* %631, align 8, !dbg !1972
  %633 = fadd double %630, %632, !dbg !1973
  %634 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !1974
  %635 = load double, double* %634, align 8, !dbg !1974
  %636 = fadd double %633, %635, !dbg !1975
  %637 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 1, !dbg !1976
  %638 = load double, double* %637, align 8, !dbg !1976
  %639 = fadd double %636, %638, !dbg !1977
  store double %639, double* %94, align 8, !dbg !1970
  %640 = load double, double* %91, align 8, !dbg !1978
  %641 = fcmp olt double %640, 0x40862E42FEFA39EF, !dbg !1980
  br i1 %641, label %642, label %660, !dbg !1981

; <label>:642:                                    ; preds = %589
  %643 = load double, double* %92, align 8, !dbg !1982
  %644 = fcmp olt double %643, 0x40862E42FEFA39EF, !dbg !1984
  br i1 %644, label %645, label %660, !dbg !1985

; <label>:645:                                    ; preds = %642
  %646 = load double, double* %91, align 8, !dbg !1986
  %647 = load double, double* %93, align 8, !dbg !1988
  %648 = call i32 @gsl_sf_exp_err_e(double %646, double %647, %struct.gsl_sf_result_struct* %63), !dbg !1989
  %649 = load double, double* %92, align 8, !dbg !1990
  %650 = load double, double* %94, align 8, !dbg !1991
  %651 = call i32 @gsl_sf_exp_err_e(double %649, double %650, %struct.gsl_sf_result_struct* %64), !dbg !1992
  %652 = load double, double* %65, align 8, !dbg !1993
  %653 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !1994
  %654 = load double, double* %653, align 8, !dbg !1995
  %655 = fmul double %654, %652, !dbg !1995
  store double %655, double* %653, align 8, !dbg !1995
  %656 = load double, double* %66, align 8, !dbg !1996
  %657 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !1997
  %658 = load double, double* %657, align 8, !dbg !1998
  %659 = fmul double %658, %656, !dbg !1998
  store double %659, double* %657, align 8, !dbg !1998
  br label %669, !dbg !1999

; <label>:660:                                    ; preds = %642, %589
  br label %661, !dbg !2000, !llvm.loop !2002

; <label>:661:                                    ; preds = %660
  %662 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2003
  %663 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %662, i32 0, i32 0, !dbg !2003
  store double 0x7FF0000000000000, double* %663, align 8, !dbg !2003
  %664 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2003
  %665 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %664, i32 0, i32 1, !dbg !2003
  store double 0x7FF0000000000000, double* %665, align 8, !dbg !2003
  br label %666, !dbg !2003, !llvm.loop !2006

; <label>:666:                                    ; preds = %661
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 570, i32 16), !dbg !2008
  store i32 16, i32* %6, align 4, !dbg !2008
  br label %892, !dbg !2008
                                                  ; No predecessors!
  br label %668, !dbg !2011

; <label>:668:                                    ; preds = %667
  br label %669

; <label>:669:                                    ; preds = %668, %645
  br label %791, !dbg !2013

; <label>:670:                                    ; preds = %586, %560
  %671 = load i32, i32* %83, align 4, !dbg !2014
  %672 = icmp ne i32 %671, 0, !dbg !2014
  br i1 %672, label %673, label %721, !dbg !2016

; <label>:673:                                    ; preds = %670
  %674 = load i32, i32* %84, align 4, !dbg !2017
  %675 = icmp ne i32 %674, 0, !dbg !2017
  br i1 %675, label %721, label %676, !dbg !2019

; <label>:676:                                    ; preds = %673
  call void @llvm.dbg.declare(metadata double* %95, metadata !2020, metadata !61), !dbg !2022
  %677 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !2023
  %678 = load double, double* %677, align 8, !dbg !2023
  %679 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !2024
  %680 = load double, double* %679, align 8, !dbg !2024
  %681 = fadd double %678, %680, !dbg !2025
  %682 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !2026
  %683 = load double, double* %682, align 8, !dbg !2026
  %684 = fsub double %681, %683, !dbg !2027
  %685 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !2028
  %686 = load double, double* %685, align 8, !dbg !2028
  %687 = fsub double %684, %686, !dbg !2029
  store double %687, double* %95, align 8, !dbg !2022
  call void @llvm.dbg.declare(metadata double* %96, metadata !2030, metadata !61), !dbg !2031
  %688 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !2032
  %689 = load double, double* %688, align 8, !dbg !2032
  %690 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 1, !dbg !2033
  %691 = load double, double* %690, align 8, !dbg !2033
  %692 = fadd double %689, %691, !dbg !2034
  %693 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !2035
  %694 = load double, double* %693, align 8, !dbg !2035
  %695 = fadd double %692, %694, !dbg !2036
  %696 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !2037
  %697 = load double, double* %696, align 8, !dbg !2037
  %698 = fadd double %695, %697, !dbg !2038
  store double %698, double* %96, align 8, !dbg !2031
  %699 = load double, double* %95, align 8, !dbg !2039
  %700 = fcmp olt double %699, 0x40862E42FEFA39EF, !dbg !2041
  br i1 %700, label %701, label %711, !dbg !2042

; <label>:701:                                    ; preds = %676
  %702 = load double, double* %95, align 8, !dbg !2043
  %703 = load double, double* %96, align 8, !dbg !2045
  %704 = call i32 @gsl_sf_exp_err_e(double %702, double %703, %struct.gsl_sf_result_struct* %63), !dbg !2046
  %705 = load double, double* %65, align 8, !dbg !2047
  %706 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !2048
  %707 = load double, double* %706, align 8, !dbg !2049
  %708 = fmul double %707, %705, !dbg !2049
  store double %708, double* %706, align 8, !dbg !2049
  %709 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !2050
  store double 0.000000e+00, double* %709, align 8, !dbg !2051
  %710 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 1, !dbg !2052
  store double 0.000000e+00, double* %710, align 8, !dbg !2053
  br label %720, !dbg !2054

; <label>:711:                                    ; preds = %676
  br label %712, !dbg !2055, !llvm.loop !2057

; <label>:712:                                    ; preds = %711
  %713 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2058
  %714 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %713, i32 0, i32 0, !dbg !2058
  store double 0x7FF0000000000000, double* %714, align 8, !dbg !2058
  %715 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2058
  %716 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %715, i32 0, i32 1, !dbg !2058
  store double 0x7FF0000000000000, double* %716, align 8, !dbg !2058
  br label %717, !dbg !2058, !llvm.loop !2061

; <label>:717:                                    ; preds = %712
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 583, i32 16), !dbg !2063
  store i32 16, i32* %6, align 4, !dbg !2063
  br label %892, !dbg !2063
                                                  ; No predecessors!
  br label %719, !dbg !2066

; <label>:719:                                    ; preds = %718
  br label %720

; <label>:720:                                    ; preds = %719, %701
  br label %790, !dbg !2068

; <label>:721:                                    ; preds = %673, %670
  %722 = load i32, i32* %83, align 4, !dbg !2069
  %723 = icmp ne i32 %722, 0, !dbg !2069
  br i1 %723, label %778, label %724, !dbg !2071

; <label>:724:                                    ; preds = %721
  %725 = load i32, i32* %84, align 4, !dbg !2072
  %726 = icmp ne i32 %725, 0, !dbg !2072
  br i1 %726, label %727, label %778, !dbg !2074

; <label>:727:                                    ; preds = %724
  call void @llvm.dbg.declare(metadata double* %97, metadata !2075, metadata !61), !dbg !2077
  %728 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !2078
  %729 = load double, double* %728, align 8, !dbg !2078
  %730 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !2079
  %731 = load double, double* %730, align 8, !dbg !2079
  %732 = fadd double %729, %731, !dbg !2080
  %733 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !2081
  %734 = load double, double* %733, align 8, !dbg !2081
  %735 = fsub double %732, %734, !dbg !2082
  %736 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !2083
  %737 = load double, double* %736, align 8, !dbg !2083
  %738 = fsub double %735, %737, !dbg !2084
  %739 = load double, double* %12, align 8, !dbg !2085
  %740 = load double, double* %10, align 8, !dbg !2086
  %741 = fsub double 1.000000e+00, %740, !dbg !2087
  %742 = call double @log(double %741) #5, !dbg !2088
  %743 = fmul double %739, %742, !dbg !2089
  %744 = fadd double %738, %743, !dbg !2090
  store double %744, double* %97, align 8, !dbg !2077
  call void @llvm.dbg.declare(metadata double* %98, metadata !2091, metadata !61), !dbg !2092
  %745 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !2093
  %746 = load double, double* %745, align 8, !dbg !2093
  %747 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !2094
  %748 = load double, double* %747, align 8, !dbg !2094
  %749 = fadd double %746, %748, !dbg !2095
  %750 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !2096
  %751 = load double, double* %750, align 8, !dbg !2096
  %752 = fadd double %749, %751, !dbg !2097
  %753 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 1, !dbg !2098
  %754 = load double, double* %753, align 8, !dbg !2098
  %755 = fadd double %752, %754, !dbg !2099
  store double %755, double* %98, align 8, !dbg !2092
  %756 = load double, double* %97, align 8, !dbg !2100
  %757 = fcmp olt double %756, 0x40862E42FEFA39EF, !dbg !2102
  br i1 %757, label %758, label %768, !dbg !2103

; <label>:758:                                    ; preds = %727
  %759 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !2104
  store double 0.000000e+00, double* %759, align 8, !dbg !2106
  %760 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !2107
  store double 0.000000e+00, double* %760, align 8, !dbg !2108
  %761 = load double, double* %97, align 8, !dbg !2109
  %762 = load double, double* %98, align 8, !dbg !2110
  %763 = call i32 @gsl_sf_exp_err_e(double %761, double %762, %struct.gsl_sf_result_struct* %64), !dbg !2111
  %764 = load double, double* %66, align 8, !dbg !2112
  %765 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !2113
  %766 = load double, double* %765, align 8, !dbg !2114
  %767 = fmul double %766, %764, !dbg !2114
  store double %767, double* %765, align 8, !dbg !2114
  br label %777, !dbg !2115

; <label>:768:                                    ; preds = %727
  br label %769, !dbg !2116, !llvm.loop !2118

; <label>:769:                                    ; preds = %768
  %770 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2119
  %771 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %770, i32 0, i32 0, !dbg !2119
  store double 0x7FF0000000000000, double* %771, align 8, !dbg !2119
  %772 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2119
  %773 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %772, i32 0, i32 1, !dbg !2119
  store double 0x7FF0000000000000, double* %773, align 8, !dbg !2119
  br label %774, !dbg !2119, !llvm.loop !2122

; <label>:774:                                    ; preds = %769
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 596, i32 16), !dbg !2124
  store i32 16, i32* %6, align 4, !dbg !2124
  br label %892, !dbg !2124
                                                  ; No predecessors!
  br label %776, !dbg !2127

; <label>:776:                                    ; preds = %775
  br label %777

; <label>:777:                                    ; preds = %776, %758
  br label %789, !dbg !2129

; <label>:778:                                    ; preds = %724, %721
  %779 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !2130
  store double 0.000000e+00, double* %779, align 8, !dbg !2132
  %780 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !2133
  store double 0.000000e+00, double* %780, align 8, !dbg !2134
  br label %781, !dbg !2135, !llvm.loop !2136

; <label>:781:                                    ; preds = %778
  %782 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2137
  %783 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %782, i32 0, i32 0, !dbg !2137
  store double 0.000000e+00, double* %783, align 8, !dbg !2137
  %784 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2137
  %785 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %784, i32 0, i32 1, !dbg !2137
  store double 0x10000000000000, double* %785, align 8, !dbg !2137
  br label %786, !dbg !2137, !llvm.loop !2140

; <label>:786:                                    ; preds = %781
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 602, i32 15), !dbg !2142
  store i32 15, i32* %6, align 4, !dbg !2142
  br label %892, !dbg !2142
                                                  ; No predecessors!
  br label %788, !dbg !2145

; <label>:788:                                    ; preds = %787
  br label %789

; <label>:789:                                    ; preds = %788, %777
  br label %790

; <label>:790:                                    ; preds = %789, %720
  br label %791

; <label>:791:                                    ; preds = %790, %669
  %792 = load double, double* %7, align 8, !dbg !2147
  %793 = load double, double* %8, align 8, !dbg !2148
  %794 = load double, double* %12, align 8, !dbg !2149
  %795 = fsub double 1.000000e+00, %794, !dbg !2150
  %796 = load double, double* %10, align 8, !dbg !2151
  %797 = fsub double 1.000000e+00, %796, !dbg !2152
  %798 = call i32 @hyperg_2F1_series(double %792, double %793, double %795, double %797, %struct.gsl_sf_result_struct* %67), !dbg !2153
  store i32 %798, i32* %69, align 4, !dbg !2154
  %799 = load double, double* %9, align 8, !dbg !2155
  %800 = load double, double* %7, align 8, !dbg !2156
  %801 = fsub double %799, %800, !dbg !2157
  %802 = load double, double* %9, align 8, !dbg !2158
  %803 = load double, double* %8, align 8, !dbg !2159
  %804 = fsub double %802, %803, !dbg !2160
  %805 = load double, double* %12, align 8, !dbg !2161
  %806 = fadd double 1.000000e+00, %805, !dbg !2162
  %807 = load double, double* %10, align 8, !dbg !2163
  %808 = fsub double 1.000000e+00, %807, !dbg !2164
  %809 = call i32 @hyperg_2F1_series(double %801, double %804, double %806, double %808, %struct.gsl_sf_result_struct* %68), !dbg !2165
  store i32 %809, i32* %70, align 4, !dbg !2166
  %810 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !2167
  %811 = load double, double* %810, align 8, !dbg !2167
  %812 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !2168
  %813 = load double, double* %812, align 8, !dbg !2168
  %814 = fmul double %811, %813, !dbg !2169
  %815 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !2170
  %816 = load double, double* %815, align 8, !dbg !2170
  %817 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !2171
  %818 = load double, double* %817, align 8, !dbg !2171
  %819 = fmul double %816, %818, !dbg !2172
  %820 = fadd double %814, %819, !dbg !2173
  %821 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2174
  %822 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %821, i32 0, i32 0, !dbg !2175
  store double %820, double* %822, align 8, !dbg !2176
  %823 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !2177
  %824 = load double, double* %823, align 8, !dbg !2177
  %825 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !2178
  %826 = load double, double* %825, align 8, !dbg !2178
  %827 = fmul double %824, %826, !dbg !2179
  %828 = call double @fabs(double %827) #1, !dbg !2180
  %829 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !2181
  %830 = load double, double* %829, align 8, !dbg !2181
  %831 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 1, !dbg !2182
  %832 = load double, double* %831, align 8, !dbg !2182
  %833 = fmul double %830, %832, !dbg !2183
  %834 = call double @fabs(double %833) #1, !dbg !2184
  %835 = fadd double %828, %834, !dbg !2185
  %836 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2186
  %837 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %836, i32 0, i32 1, !dbg !2187
  store double %835, double* %837, align 8, !dbg !2188
  %838 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !2189
  %839 = load double, double* %838, align 8, !dbg !2189
  %840 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !2190
  %841 = load double, double* %840, align 8, !dbg !2190
  %842 = fmul double %839, %841, !dbg !2191
  %843 = call double @fabs(double %842) #1, !dbg !2192
  %844 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 1, !dbg !2193
  %845 = load double, double* %844, align 8, !dbg !2193
  %846 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !2194
  %847 = load double, double* %846, align 8, !dbg !2194
  %848 = fmul double %845, %847, !dbg !2195
  %849 = call double @fabs(double %848) #1, !dbg !2196
  %850 = fadd double %843, %849, !dbg !2197
  %851 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2198
  %852 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %851, i32 0, i32 1, !dbg !2199
  %853 = load double, double* %852, align 8, !dbg !2200
  %854 = fadd double %853, %850, !dbg !2200
  store double %854, double* %852, align 8, !dbg !2200
  %855 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !2201
  %856 = load double, double* %855, align 8, !dbg !2201
  %857 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !2202
  %858 = load double, double* %857, align 8, !dbg !2202
  %859 = fmul double %856, %858, !dbg !2203
  %860 = call double @fabs(double %859) #1, !dbg !2204
  %861 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !2205
  %862 = load double, double* %861, align 8, !dbg !2205
  %863 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !2206
  %864 = load double, double* %863, align 8, !dbg !2206
  %865 = fmul double %862, %864, !dbg !2207
  %866 = call double @fabs(double %865) #1, !dbg !2208
  %867 = fadd double %860, %866, !dbg !2209
  %868 = fmul double 0x3CC0000000000000, %867, !dbg !2210
  %869 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2211
  %870 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %869, i32 0, i32 1, !dbg !2212
  %871 = load double, double* %870, align 8, !dbg !2213
  %872 = fadd double %871, %868, !dbg !2213
  store double %872, double* %870, align 8, !dbg !2213
  %873 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2214
  %874 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %873, i32 0, i32 0, !dbg !2215
  %875 = load double, double* %874, align 8, !dbg !2215
  %876 = call double @fabs(double %875) #1, !dbg !2216
  %877 = fmul double 0x3CC0000000000000, %876, !dbg !2217
  %878 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2218
  %879 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %878, i32 0, i32 1, !dbg !2219
  %880 = load double, double* %879, align 8, !dbg !2220
  %881 = fadd double %880, %877, !dbg !2220
  store double %881, double* %879, align 8, !dbg !2220
  %882 = load i32, i32* %69, align 4, !dbg !2221
  %883 = icmp ne i32 %882, 0, !dbg !2221
  br i1 %883, label %884, label %886, !dbg !2223

; <label>:884:                                    ; preds = %791
  %885 = load i32, i32* %69, align 4, !dbg !2224
  store i32 %885, i32* %6, align 4, !dbg !2225
  br label %892, !dbg !2225

; <label>:886:                                    ; preds = %791
  %887 = load i32, i32* %70, align 4, !dbg !2226
  %888 = icmp ne i32 %887, 0, !dbg !2226
  br i1 %888, label %889, label %891, !dbg !2228

; <label>:889:                                    ; preds = %886
  %890 = load i32, i32* %70, align 4, !dbg !2229
  store i32 %890, i32* %6, align 4, !dbg !2230
  br label %892, !dbg !2230

; <label>:891:                                    ; preds = %886
  store i32 0, i32* %6, align 4, !dbg !2231
  br label %892, !dbg !2231

; <label>:892:                                    ; preds = %891, %889, %884, %786, %774, %717, %666, %491, %470, %252
  %893 = load i32, i32* %6, align 4, !dbg !2232
  ret i32 %893, !dbg !2232
}

declare double @GSL_MAX_DBL(double, double) #3

declare i32 @gsl_sf_hyperg_1F1_e(double, double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_2F1_conj_e(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2233 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2234, metadata !61), !dbg !2235
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2236, metadata !61), !dbg !2237
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2238, metadata !61), !dbg !2239
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !2240, metadata !61), !dbg !2241
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !2242, metadata !61), !dbg !2243
  call void @llvm.dbg.declare(metadata double* %12, metadata !2244, metadata !61), !dbg !2245
  %15 = load double, double* %10, align 8, !dbg !2246
  %16 = call double @fabs(double %15) #1, !dbg !2247
  store double %16, double* %12, align 8, !dbg !2245
  call void @llvm.dbg.declare(metadata double* %13, metadata !2248, metadata !61), !dbg !2249
  %17 = load double, double* %9, align 8, !dbg !2250
  %18 = fadd double %17, 5.000000e-01, !dbg !2251
  %19 = call double @floor(double %18) #1, !dbg !2252
  store double %19, double* %13, align 8, !dbg !2249
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2253, metadata !61), !dbg !2254
  %20 = load double, double* %9, align 8, !dbg !2255
  %21 = fcmp olt double %20, 0.000000e+00, !dbg !2256
  br i1 %21, label %22, label %28, !dbg !2257

; <label>:22:                                     ; preds = %5
  %23 = load double, double* %9, align 8, !dbg !2258
  %24 = load double, double* %13, align 8, !dbg !2260
  %25 = fsub double %23, %24, !dbg !2261
  %26 = call double @fabs(double %25) #1, !dbg !2262
  %27 = fcmp olt double %26, 0x3D4F400000000000, !dbg !2263
  br label %28

; <label>:28:                                     ; preds = %22, %5
  %29 = phi i1 [ false, %5 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32, !dbg !2264
  store i32 %30, i32* %14, align 4, !dbg !2266
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2267
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !2268
  store double 0.000000e+00, double* %32, align 8, !dbg !2269
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2270
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !2271
  store double 0.000000e+00, double* %34, align 8, !dbg !2272
  %35 = load double, double* %12, align 8, !dbg !2273
  %36 = fcmp oge double %35, 1.000000e+00, !dbg !2275
  br i1 %36, label %43, label %37, !dbg !2276

; <label>:37:                                     ; preds = %28
  %38 = load i32, i32* %14, align 4, !dbg !2277
  %39 = icmp ne i32 %38, 0, !dbg !2277
  br i1 %39, label %43, label %40, !dbg !2279

; <label>:40:                                     ; preds = %37
  %41 = load double, double* %9, align 8, !dbg !2280
  %42 = fcmp oeq double %41, 0.000000e+00, !dbg !2282
  br i1 %42, label %43, label %52, !dbg !2283

; <label>:43:                                     ; preds = %40, %37, %28
  br label %44, !dbg !2284, !llvm.loop !2286

; <label>:44:                                     ; preds = %43
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2287
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !2287
  store double 0x7FF8000000000000, double* %46, align 8, !dbg !2287
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2287
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !2287
  store double 0x7FF8000000000000, double* %48, align 8, !dbg !2287
  br label %49, !dbg !2287, !llvm.loop !2290

; <label>:49:                                     ; preds = %44
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 791, i32 1), !dbg !2292
  store i32 1, i32* %6, align 4, !dbg !2292
  br label %119, !dbg !2292
                                                  ; No predecessors!
  br label %51, !dbg !2295

; <label>:51:                                     ; preds = %50
  br label %52, !dbg !2297

; <label>:52:                                     ; preds = %51, %40
  %53 = load double, double* %12, align 8, !dbg !2298
  %54 = fcmp olt double %53, 2.500000e-01, !dbg !2300
  br i1 %54, label %55, label %63, !dbg !2301

; <label>:55:                                     ; preds = %52
  %56 = load double, double* %7, align 8, !dbg !2302
  %57 = call double @fabs(double %56) #1, !dbg !2304
  %58 = fcmp olt double %57, 2.000000e+01, !dbg !2305
  br i1 %58, label %59, label %63, !dbg !2306

; <label>:59:                                     ; preds = %55
  %60 = load double, double* %8, align 8, !dbg !2307
  %61 = call double @fabs(double %60) #1, !dbg !2309
  %62 = fcmp olt double %61, 2.000000e+01, !dbg !2310
  br i1 %62, label %69, label %63, !dbg !2311

; <label>:63:                                     ; preds = %59, %55, %52
  %64 = load double, double* %9, align 8, !dbg !2312
  %65 = fcmp ogt double %64, 0.000000e+00, !dbg !2313
  br i1 %65, label %66, label %76, !dbg !2314

; <label>:66:                                     ; preds = %63
  %67 = load double, double* %10, align 8, !dbg !2315
  %68 = fcmp ogt double %67, 0.000000e+00, !dbg !2316
  br i1 %68, label %69, label %76, !dbg !2317

; <label>:69:                                     ; preds = %66, %59
  %70 = load double, double* %7, align 8, !dbg !2319
  %71 = load double, double* %8, align 8, !dbg !2321
  %72 = load double, double* %9, align 8, !dbg !2322
  %73 = load double, double* %10, align 8, !dbg !2323
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2324
  %75 = call i32 @hyperg_2F1_conj_series(double %70, double %71, double %72, double %73, %struct.gsl_sf_result_struct* %74), !dbg !2325
  store i32 %75, i32* %6, align 4, !dbg !2326
  br label %119, !dbg !2326

; <label>:76:                                     ; preds = %66, %63
  %77 = load double, double* %7, align 8, !dbg !2327
  %78 = call double @fabs(double %77) #1, !dbg !2329
  %79 = fcmp olt double %78, 1.000000e+01, !dbg !2330
  br i1 %79, label %80, label %101, !dbg !2331

; <label>:80:                                     ; preds = %76
  %81 = load double, double* %8, align 8, !dbg !2332
  %82 = call double @fabs(double %81) #1, !dbg !2334
  %83 = fcmp olt double %82, 1.000000e+01, !dbg !2335
  br i1 %83, label %84, label %101, !dbg !2336

; <label>:84:                                     ; preds = %80
  %85 = load double, double* %10, align 8, !dbg !2337
  %86 = fcmp olt double %85, -2.500000e-01, !dbg !2340
  br i1 %86, label %87, label %94, !dbg !2341

; <label>:87:                                     ; preds = %84
  %88 = load double, double* %7, align 8, !dbg !2342
  %89 = load double, double* %8, align 8, !dbg !2344
  %90 = load double, double* %9, align 8, !dbg !2345
  %91 = load double, double* %10, align 8, !dbg !2346
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2347
  %93 = call i32 @hyperg_2F1_conj_luke(double %88, double %89, double %90, double %91, %struct.gsl_sf_result_struct* %92), !dbg !2348
  store i32 %93, i32* %6, align 4, !dbg !2349
  br label %119, !dbg !2349

; <label>:94:                                     ; preds = %84
  %95 = load double, double* %7, align 8, !dbg !2350
  %96 = load double, double* %8, align 8, !dbg !2352
  %97 = load double, double* %9, align 8, !dbg !2353
  %98 = load double, double* %10, align 8, !dbg !2354
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2355
  %100 = call i32 @hyperg_2F1_conj_series(double %95, double %96, double %97, double %98, %struct.gsl_sf_result_struct* %99), !dbg !2356
  store i32 %100, i32* %6, align 4, !dbg !2357
  br label %119, !dbg !2357

; <label>:101:                                    ; preds = %80, %76
  %102 = load double, double* %10, align 8, !dbg !2358
  %103 = fcmp olt double %102, 0.000000e+00, !dbg !2361
  br i1 %103, label %104, label %111, !dbg !2362

; <label>:104:                                    ; preds = %101
  %105 = load double, double* %7, align 8, !dbg !2363
  %106 = load double, double* %8, align 8, !dbg !2365
  %107 = load double, double* %9, align 8, !dbg !2366
  %108 = load double, double* %10, align 8, !dbg !2367
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2368
  %110 = call i32 @hyperg_2F1_conj_luke(double %105, double %106, double %107, double %108, %struct.gsl_sf_result_struct* %109), !dbg !2369
  store i32 %110, i32* %6, align 4, !dbg !2370
  br label %119, !dbg !2370

; <label>:111:                                    ; preds = %101
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2371
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !2372
  store double 0.000000e+00, double* %113, align 8, !dbg !2373
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2374
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 1, !dbg !2375
  store double 0.000000e+00, double* %115, align 8, !dbg !2376
  br label %116, !dbg !2377, !llvm.loop !2378

; <label>:116:                                    ; preds = %111
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 817, i32 24), !dbg !2379
  store i32 24, i32* %6, align 4, !dbg !2379
  br label %119, !dbg !2379
                                                  ; No predecessors!
  br label %118

; <label>:118:                                    ; preds = %117
  br label %119

; <label>:119:                                    ; preds = %49, %69, %87, %94, %104, %116, %118
  %120 = load i32, i32* %6, align 4, !dbg !2382
  ret i32 %120, !dbg !2382
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_2F1_conj_series(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2383 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2386, metadata !61), !dbg !2387
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2388, metadata !61), !dbg !2389
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2390, metadata !61), !dbg !2391
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !2392, metadata !61), !dbg !2393
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !2394, metadata !61), !dbg !2395
  %18 = load double, double* %9, align 8, !dbg !2396
  %19 = fcmp oeq double %18, 0.000000e+00, !dbg !2398
  br i1 %19, label %20, label %27, !dbg !2399

; <label>:20:                                     ; preds = %5
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2400
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !2402
  store double 0.000000e+00, double* %22, align 8, !dbg !2403
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2404
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !2405
  store double 0.000000e+00, double* %24, align 8, !dbg !2406
  br label %25, !dbg !2407, !llvm.loop !2408

; <label>:25:                                     ; preds = %20
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 119, i32 1), !dbg !2409
  store i32 1, i32* %6, align 4, !dbg !2409
  br label %148, !dbg !2409
                                                  ; No predecessors!
  br label %148, !dbg !2412

; <label>:27:                                     ; preds = %5
  call void @llvm.dbg.declare(metadata double* %12, metadata !2413, metadata !61), !dbg !2415
  store double 1.000000e+00, double* %12, align 8, !dbg !2415
  call void @llvm.dbg.declare(metadata double* %13, metadata !2416, metadata !61), !dbg !2417
  store double 0.000000e+00, double* %13, align 8, !dbg !2417
  call void @llvm.dbg.declare(metadata double* %14, metadata !2418, metadata !61), !dbg !2419
  store double 1.000000e+00, double* %14, align 8, !dbg !2419
  call void @llvm.dbg.declare(metadata double* %15, metadata !2420, metadata !61), !dbg !2421
  store double 0.000000e+00, double* %15, align 8, !dbg !2421
  call void @llvm.dbg.declare(metadata double* %16, metadata !2422, metadata !61), !dbg !2423
  store double 1.000000e+00, double* %16, align 8, !dbg !2423
  call void @llvm.dbg.declare(metadata double* %17, metadata !2424, metadata !61), !dbg !2425
  store double 0.000000e+00, double* %17, align 8, !dbg !2425
  br label %28, !dbg !2426, !llvm.loop !2427

; <label>:28:                                     ; preds = %105, %27
  %29 = load double, double* %7, align 8, !dbg !2428
  %30 = load double, double* %17, align 8, !dbg !2430
  %31 = fadd double %29, %30, !dbg !2431
  %32 = load double, double* %7, align 8, !dbg !2432
  %33 = load double, double* %17, align 8, !dbg !2433
  %34 = fadd double %32, %33, !dbg !2434
  %35 = fmul double %31, %34, !dbg !2435
  %36 = load double, double* %8, align 8, !dbg !2436
  %37 = load double, double* %8, align 8, !dbg !2437
  %38 = fmul double %36, %37, !dbg !2438
  %39 = fadd double %35, %38, !dbg !2439
  %40 = load double, double* %17, align 8, !dbg !2440
  %41 = fadd double %40, 1.000000e+00, !dbg !2441
  %42 = load double, double* %9, align 8, !dbg !2442
  %43 = load double, double* %17, align 8, !dbg !2443
  %44 = fadd double %42, %43, !dbg !2444
  %45 = fmul double %41, %44, !dbg !2445
  %46 = fdiv double %39, %45, !dbg !2446
  %47 = load double, double* %10, align 8, !dbg !2447
  %48 = fmul double %46, %47, !dbg !2448
  %49 = load double, double* %16, align 8, !dbg !2449
  %50 = fmul double %49, %48, !dbg !2449
  store double %50, double* %16, align 8, !dbg !2449
  %51 = load double, double* %16, align 8, !dbg !2450
  %52 = fcmp oge double %51, 0.000000e+00, !dbg !2452
  br i1 %52, label %53, label %58, !dbg !2453

; <label>:53:                                     ; preds = %28
  %54 = load double, double* %16, align 8, !dbg !2454
  store double %54, double* %14, align 8, !dbg !2456
  %55 = load double, double* %16, align 8, !dbg !2457
  %56 = load double, double* %12, align 8, !dbg !2458
  %57 = fadd double %56, %55, !dbg !2458
  store double %57, double* %12, align 8, !dbg !2458
  br label %64, !dbg !2459

; <label>:58:                                     ; preds = %28
  %59 = load double, double* %16, align 8, !dbg !2460
  %60 = fsub double -0.000000e+00, %59, !dbg !2462
  store double %60, double* %15, align 8, !dbg !2463
  %61 = load double, double* %16, align 8, !dbg !2464
  %62 = load double, double* %13, align 8, !dbg !2465
  %63 = fsub double %62, %61, !dbg !2465
  store double %63, double* %13, align 8, !dbg !2465
  br label %64

; <label>:64:                                     ; preds = %58, %53
  %65 = load double, double* %17, align 8, !dbg !2466
  %66 = fcmp ogt double %65, 3.000000e+04, !dbg !2468
  br i1 %66, label %67, label %102, !dbg !2469

; <label>:67:                                     ; preds = %64
  %68 = load double, double* %12, align 8, !dbg !2470
  %69 = load double, double* %13, align 8, !dbg !2472
  %70 = fsub double %68, %69, !dbg !2473
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2474
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !2475
  store double %70, double* %72, align 8, !dbg !2476
  %73 = load double, double* %14, align 8, !dbg !2477
  %74 = load double, double* %15, align 8, !dbg !2478
  %75 = fadd double %73, %74, !dbg !2479
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2480
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 1, !dbg !2481
  store double %75, double* %77, align 8, !dbg !2482
  %78 = load double, double* %12, align 8, !dbg !2483
  %79 = load double, double* %13, align 8, !dbg !2484
  %80 = fadd double %78, %79, !dbg !2485
  %81 = fmul double 0x3CC0000000000000, %80, !dbg !2486
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2487
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !2488
  %84 = load double, double* %83, align 8, !dbg !2489
  %85 = fadd double %84, %81, !dbg !2489
  store double %85, double* %83, align 8, !dbg !2489
  %86 = load double, double* %17, align 8, !dbg !2490
  %87 = call double @sqrt(double %86) #5, !dbg !2491
  %88 = fmul double 2.000000e+00, %87, !dbg !2492
  %89 = fadd double %88, 1.000000e+00, !dbg !2493
  %90 = fmul double 0x3CC0000000000000, %89, !dbg !2494
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2495
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !2496
  %93 = load double, double* %92, align 8, !dbg !2496
  %94 = call double @fabs(double %93) #1, !dbg !2497
  %95 = fmul double %90, %94, !dbg !2499
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2500
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 1, !dbg !2501
  %98 = load double, double* %97, align 8, !dbg !2502
  %99 = fadd double %98, %95, !dbg !2502
  store double %99, double* %97, align 8, !dbg !2502
  br label %100, !dbg !2503, !llvm.loop !2504

; <label>:100:                                    ; preds = %67
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 145, i32 11), !dbg !2505
  store i32 11, i32* %6, align 4, !dbg !2505
  br label %148, !dbg !2505
                                                  ; No predecessors!
  br label %102, !dbg !2508

; <label>:102:                                    ; preds = %101, %64
  %103 = load double, double* %17, align 8, !dbg !2509
  %104 = fadd double %103, 1.000000e+00, !dbg !2509
  store double %104, double* %17, align 8, !dbg !2509
  br label %105, !dbg !2510

; <label>:105:                                    ; preds = %102
  %106 = load double, double* %14, align 8, !dbg !2511
  %107 = load double, double* %15, align 8, !dbg !2513
  %108 = fadd double %106, %107, !dbg !2514
  %109 = load double, double* %12, align 8, !dbg !2515
  %110 = load double, double* %13, align 8, !dbg !2516
  %111 = fsub double %109, %110, !dbg !2517
  %112 = fdiv double %108, %111, !dbg !2518
  %113 = call double @fabs(double %112) #1, !dbg !2519
  %114 = fcmp ogt double %113, 0x3CB0000000000000, !dbg !2520
  br i1 %114, label %28, label %115, !dbg !2521, !llvm.loop !2427

; <label>:115:                                    ; preds = %105
  %116 = load double, double* %12, align 8, !dbg !2522
  %117 = load double, double* %13, align 8, !dbg !2523
  %118 = fsub double %116, %117, !dbg !2524
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2525
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 0, !dbg !2526
  store double %118, double* %120, align 8, !dbg !2527
  %121 = load double, double* %14, align 8, !dbg !2528
  %122 = load double, double* %15, align 8, !dbg !2529
  %123 = fadd double %121, %122, !dbg !2530
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2531
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 1, !dbg !2532
  store double %123, double* %125, align 8, !dbg !2533
  %126 = load double, double* %12, align 8, !dbg !2534
  %127 = load double, double* %13, align 8, !dbg !2535
  %128 = fadd double %126, %127, !dbg !2536
  %129 = fmul double 0x3CC0000000000000, %128, !dbg !2537
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2538
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 1, !dbg !2539
  %132 = load double, double* %131, align 8, !dbg !2540
  %133 = fadd double %132, %129, !dbg !2540
  store double %133, double* %131, align 8, !dbg !2540
  %134 = load double, double* %17, align 8, !dbg !2541
  %135 = call double @sqrt(double %134) #5, !dbg !2542
  %136 = fmul double 2.000000e+00, %135, !dbg !2543
  %137 = fadd double %136, 1.000000e+00, !dbg !2544
  %138 = fmul double 0x3CC0000000000000, %137, !dbg !2545
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2546
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 0, !dbg !2547
  %141 = load double, double* %140, align 8, !dbg !2547
  %142 = call double @fabs(double %141) #1, !dbg !2548
  %143 = fmul double %138, %142, !dbg !2549
  %144 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2550
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %144, i32 0, i32 1, !dbg !2551
  %146 = load double, double* %145, align 8, !dbg !2552
  %147 = fadd double %146, %143, !dbg !2552
  store double %147, double* %145, align 8, !dbg !2552
  store i32 0, i32* %6, align 4, !dbg !2553
  br label %148, !dbg !2553

; <label>:148:                                    ; preds = %25, %100, %115, %26
  %149 = load i32, i32* %6, align 4, !dbg !2554
  ret i32 %149, !dbg !2554
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_2F1_conj_luke(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2555 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
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
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
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
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2556, metadata !61), !dbg !2557
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2558, metadata !61), !dbg !2559
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2560, metadata !61), !dbg !2561
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2562, metadata !61), !dbg !2563
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !2564, metadata !61), !dbg !2565
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2566, metadata !61), !dbg !2567
  call void @llvm.dbg.declare(metadata double* %12, metadata !2568, metadata !61), !dbg !2569
  store double 1.000000e+50, double* %12, align 8, !dbg !2569
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2570, metadata !61), !dbg !2571
  store i32 10000, i32* %13, align 4, !dbg !2571
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2572, metadata !61), !dbg !2573
  store i32 3, i32* %14, align 4, !dbg !2573
  call void @llvm.dbg.declare(metadata double* %15, metadata !2574, metadata !61), !dbg !2575
  %47 = load double, double* %9, align 8, !dbg !2576
  %48 = fsub double -0.000000e+00, %47, !dbg !2577
  store double %48, double* %15, align 8, !dbg !2575
  call void @llvm.dbg.declare(metadata double* %16, metadata !2578, metadata !61), !dbg !2579
  %49 = load double, double* %15, align 8, !dbg !2580
  %50 = load double, double* %15, align 8, !dbg !2581
  %51 = fmul double %49, %50, !dbg !2582
  %52 = load double, double* %15, align 8, !dbg !2583
  %53 = fmul double %51, %52, !dbg !2584
  store double %53, double* %16, align 8, !dbg !2579
  call void @llvm.dbg.declare(metadata double* %17, metadata !2585, metadata !61), !dbg !2586
  %54 = load double, double* %6, align 8, !dbg !2587
  %55 = load double, double* %6, align 8, !dbg !2588
  %56 = fmul double %54, %55, !dbg !2589
  %57 = load double, double* %7, align 8, !dbg !2590
  %58 = load double, double* %7, align 8, !dbg !2591
  %59 = fmul double %57, %58, !dbg !2592
  %60 = fadd double %56, %59, !dbg !2593
  store double %60, double* %17, align 8, !dbg !2586
  call void @llvm.dbg.declare(metadata double* %18, metadata !2594, metadata !61), !dbg !2595
  %61 = load double, double* %6, align 8, !dbg !2596
  %62 = fmul double 2.000000e+00, %61, !dbg !2597
  store double %62, double* %18, align 8, !dbg !2595
  call void @llvm.dbg.declare(metadata double* %19, metadata !2598, metadata !61), !dbg !2599
  %63 = load double, double* %17, align 8, !dbg !2600
  %64 = load double, double* %8, align 8, !dbg !2601
  %65 = fdiv double %63, %64, !dbg !2602
  store double %65, double* %19, align 8, !dbg !2599
  call void @llvm.dbg.declare(metadata double* %20, metadata !2603, metadata !61), !dbg !2604
  %66 = load double, double* %17, align 8, !dbg !2605
  %67 = load double, double* %18, align 8, !dbg !2606
  %68 = fadd double %66, %67, !dbg !2607
  %69 = fadd double %68, 1.000000e+00, !dbg !2608
  %70 = load double, double* %8, align 8, !dbg !2609
  %71 = fmul double 2.000000e+00, %70, !dbg !2610
  %72 = fdiv double %69, %71, !dbg !2611
  store double %72, double* %20, align 8, !dbg !2604
  call void @llvm.dbg.declare(metadata double* %21, metadata !2612, metadata !61), !dbg !2613
  %73 = load double, double* %17, align 8, !dbg !2614
  %74 = load double, double* %18, align 8, !dbg !2615
  %75 = fmul double 2.000000e+00, %74, !dbg !2616
  %76 = fadd double %73, %75, !dbg !2617
  %77 = fadd double %76, 4.000000e+00, !dbg !2618
  %78 = load double, double* %8, align 8, !dbg !2619
  %79 = fadd double %78, 1.000000e+00, !dbg !2620
  %80 = fmul double 2.000000e+00, %79, !dbg !2621
  %81 = fdiv double %77, %80, !dbg !2622
  store double %81, double* %21, align 8, !dbg !2613
  call void @llvm.dbg.declare(metadata double* %22, metadata !2623, metadata !61), !dbg !2624
  store double 1.000000e+00, double* %22, align 8, !dbg !2624
  call void @llvm.dbg.declare(metadata double* %23, metadata !2625, metadata !61), !dbg !2626
  call void @llvm.dbg.declare(metadata double* %24, metadata !2627, metadata !61), !dbg !2628
  store double 1.000000e+00, double* %24, align 8, !dbg !2628
  call void @llvm.dbg.declare(metadata double* %25, metadata !2629, metadata !61), !dbg !2630
  %82 = load double, double* %20, align 8, !dbg !2631
  %83 = load double, double* %15, align 8, !dbg !2632
  %84 = fmul double %82, %83, !dbg !2633
  %85 = fadd double 1.000000e+00, %84, !dbg !2634
  store double %85, double* %25, align 8, !dbg !2630
  call void @llvm.dbg.declare(metadata double* %26, metadata !2635, metadata !61), !dbg !2636
  %86 = load double, double* %21, align 8, !dbg !2637
  %87 = load double, double* %15, align 8, !dbg !2638
  %88 = fmul double %86, %87, !dbg !2639
  %89 = load double, double* %20, align 8, !dbg !2640
  %90 = fdiv double %89, 3.000000e+00, !dbg !2641
  %91 = load double, double* %15, align 8, !dbg !2642
  %92 = fmul double %90, %91, !dbg !2643
  %93 = fadd double 1.000000e+00, %92, !dbg !2644
  %94 = fmul double %88, %93, !dbg !2645
  %95 = fadd double 1.000000e+00, %94, !dbg !2646
  store double %95, double* %26, align 8, !dbg !2636
  call void @llvm.dbg.declare(metadata double* %27, metadata !2647, metadata !61), !dbg !2648
  store double 1.000000e+00, double* %27, align 8, !dbg !2648
  call void @llvm.dbg.declare(metadata double* %28, metadata !2649, metadata !61), !dbg !2650
  %96 = load double, double* %25, align 8, !dbg !2651
  %97 = load double, double* %19, align 8, !dbg !2652
  %98 = load double, double* %15, align 8, !dbg !2653
  %99 = fmul double %97, %98, !dbg !2654
  %100 = fsub double %96, %99, !dbg !2655
  store double %100, double* %28, align 8, !dbg !2650
  call void @llvm.dbg.declare(metadata double* %29, metadata !2656, metadata !61), !dbg !2657
  %101 = load double, double* %26, align 8, !dbg !2658
  %102 = load double, double* %19, align 8, !dbg !2659
  %103 = load double, double* %21, align 8, !dbg !2660
  %104 = load double, double* %15, align 8, !dbg !2661
  %105 = fmul double %103, %104, !dbg !2662
  %106 = fadd double 1.000000e+00, %105, !dbg !2663
  %107 = fmul double %102, %106, !dbg !2664
  %108 = load double, double* %15, align 8, !dbg !2665
  %109 = fmul double %107, %108, !dbg !2666
  %110 = fsub double %101, %109, !dbg !2667
  %111 = load double, double* %19, align 8, !dbg !2668
  %112 = load double, double* %20, align 8, !dbg !2669
  %113 = fmul double %111, %112, !dbg !2670
  %114 = load double, double* %8, align 8, !dbg !2671
  %115 = load double, double* %8, align 8, !dbg !2672
  %116 = fadd double %115, 1.000000e+00, !dbg !2673
  %117 = fdiv double %114, %116, !dbg !2674
  %118 = fmul double %113, %117, !dbg !2675
  %119 = load double, double* %15, align 8, !dbg !2676
  %120 = fmul double %118, %119, !dbg !2677
  %121 = load double, double* %15, align 8, !dbg !2678
  %122 = fmul double %120, %121, !dbg !2679
  %123 = fadd double %110, %122, !dbg !2680
  store double %123, double* %29, align 8, !dbg !2657
  br label %124, !dbg !2681

; <label>:124:                                    ; preds = %5, %370
  call void @llvm.dbg.declare(metadata double* %30, metadata !2682, metadata !61), !dbg !2684
  %125 = load i32, i32* %14, align 4, !dbg !2685
  %126 = sub nsw i32 %125, 1, !dbg !2686
  %127 = sitofp i32 %126 to double, !dbg !2685
  store double %127, double* %30, align 8, !dbg !2684
  call void @llvm.dbg.declare(metadata double* %31, metadata !2687, metadata !61), !dbg !2688
  %128 = load i32, i32* %14, align 4, !dbg !2689
  %129 = sub nsw i32 %128, 2, !dbg !2690
  %130 = sitofp i32 %129 to double, !dbg !2689
  store double %130, double* %31, align 8, !dbg !2688
  call void @llvm.dbg.declare(metadata double* %32, metadata !2691, metadata !61), !dbg !2692
  %131 = load double, double* %17, align 8, !dbg !2693
  %132 = load double, double* %30, align 8, !dbg !2694
  %133 = load double, double* %18, align 8, !dbg !2695
  %134 = fmul double %132, %133, !dbg !2696
  %135 = fadd double %131, %134, !dbg !2697
  %136 = load double, double* %30, align 8, !dbg !2698
  %137 = load double, double* %30, align 8, !dbg !2699
  %138 = fmul double %136, %137, !dbg !2700
  %139 = fadd double %135, %138, !dbg !2701
  store double %139, double* %32, align 8, !dbg !2692
  call void @llvm.dbg.declare(metadata double* %33, metadata !2702, metadata !61), !dbg !2703
  %140 = load double, double* %17, align 8, !dbg !2704
  %141 = load double, double* %31, align 8, !dbg !2705
  %142 = load double, double* %18, align 8, !dbg !2706
  %143 = fmul double %141, %142, !dbg !2707
  %144 = fadd double %140, %143, !dbg !2708
  %145 = load double, double* %31, align 8, !dbg !2709
  %146 = load double, double* %31, align 8, !dbg !2710
  %147 = fmul double %145, %146, !dbg !2711
  %148 = fadd double %144, %147, !dbg !2712
  store double %148, double* %33, align 8, !dbg !2703
  call void @llvm.dbg.declare(metadata double* %34, metadata !2713, metadata !61), !dbg !2714
  %149 = load double, double* %30, align 8, !dbg !2715
  %150 = load double, double* %8, align 8, !dbg !2716
  %151 = fadd double %149, %150, !dbg !2717
  store double %151, double* %34, align 8, !dbg !2714
  call void @llvm.dbg.declare(metadata double* %35, metadata !2718, metadata !61), !dbg !2719
  %152 = load double, double* %31, align 8, !dbg !2720
  %153 = load double, double* %8, align 8, !dbg !2721
  %154 = fadd double %152, %153, !dbg !2722
  store double %154, double* %35, align 8, !dbg !2719
  call void @llvm.dbg.declare(metadata double* %36, metadata !2723, metadata !61), !dbg !2724
  %155 = load i32, i32* %14, align 4, !dbg !2725
  %156 = mul nsw i32 2, %155, !dbg !2726
  %157 = sub nsw i32 %156, 1, !dbg !2727
  %158 = sitofp i32 %157 to double, !dbg !2728
  store double %158, double* %36, align 8, !dbg !2724
  call void @llvm.dbg.declare(metadata double* %37, metadata !2729, metadata !61), !dbg !2730
  %159 = load i32, i32* %14, align 4, !dbg !2731
  %160 = mul nsw i32 2, %159, !dbg !2732
  %161 = sub nsw i32 %160, 3, !dbg !2733
  %162 = sitofp i32 %161 to double, !dbg !2734
  store double %162, double* %37, align 8, !dbg !2730
  call void @llvm.dbg.declare(metadata double* %38, metadata !2735, metadata !61), !dbg !2736
  %163 = load i32, i32* %14, align 4, !dbg !2737
  %164 = mul nsw i32 2, %163, !dbg !2738
  %165 = sub nsw i32 %164, 5, !dbg !2739
  %166 = sitofp i32 %165 to double, !dbg !2740
  store double %166, double* %38, align 8, !dbg !2736
  call void @llvm.dbg.declare(metadata double* %39, metadata !2741, metadata !61), !dbg !2742
  %167 = load i32, i32* %14, align 4, !dbg !2743
  %168 = load i32, i32* %14, align 4, !dbg !2744
  %169 = mul nsw i32 %167, %168, !dbg !2745
  %170 = sitofp i32 %169 to double, !dbg !2743
  store double %170, double* %39, align 8, !dbg !2742
  call void @llvm.dbg.declare(metadata double* %40, metadata !2746, metadata !61), !dbg !2747
  %171 = load double, double* %39, align 8, !dbg !2748
  %172 = fmul double 3.000000e+00, %171, !dbg !2749
  %173 = load double, double* %18, align 8, !dbg !2750
  %174 = fsub double %173, 6.000000e+00, !dbg !2751
  %175 = load i32, i32* %14, align 4, !dbg !2752
  %176 = sitofp i32 %175 to double, !dbg !2752
  %177 = fmul double %174, %176, !dbg !2753
  %178 = fadd double %172, %177, !dbg !2754
  %179 = fadd double %178, 2.000000e+00, !dbg !2755
  %180 = load double, double* %17, align 8, !dbg !2756
  %181 = fsub double %179, %180, !dbg !2757
  %182 = load double, double* %18, align 8, !dbg !2758
  %183 = fmul double 2.000000e+00, %182, !dbg !2759
  %184 = fsub double %181, %183, !dbg !2760
  %185 = load double, double* %37, align 8, !dbg !2761
  %186 = fmul double 2.000000e+00, %185, !dbg !2762
  %187 = load double, double* %34, align 8, !dbg !2763
  %188 = fmul double %186, %187, !dbg !2764
  %189 = fdiv double %184, %188, !dbg !2765
  store double %189, double* %40, align 8, !dbg !2747
  call void @llvm.dbg.declare(metadata double* %41, metadata !2766, metadata !61), !dbg !2767
  %190 = load double, double* %39, align 8, !dbg !2768
  %191 = fmul double 3.000000e+00, %190, !dbg !2769
  %192 = load double, double* %18, align 8, !dbg !2770
  %193 = fadd double %192, 6.000000e+00, !dbg !2771
  %194 = load i32, i32* %14, align 4, !dbg !2772
  %195 = sitofp i32 %194 to double, !dbg !2772
  %196 = fmul double %193, %195, !dbg !2773
  %197 = fsub double %191, %196, !dbg !2774
  %198 = fadd double %197, 2.000000e+00, !dbg !2775
  %199 = load double, double* %17, align 8, !dbg !2776
  %200 = fsub double %198, %199, !dbg !2777
  %201 = fsub double -0.000000e+00, %200, !dbg !2778
  %202 = load double, double* %32, align 8, !dbg !2779
  %203 = fmul double %201, %202, !dbg !2780
  %204 = load double, double* %36, align 8, !dbg !2781
  %205 = fmul double 4.000000e+00, %204, !dbg !2782
  %206 = load double, double* %37, align 8, !dbg !2783
  %207 = fmul double %205, %206, !dbg !2784
  %208 = load double, double* %35, align 8, !dbg !2785
  %209 = fmul double %207, %208, !dbg !2786
  %210 = load double, double* %34, align 8, !dbg !2787
  %211 = fmul double %209, %210, !dbg !2788
  %212 = fdiv double %203, %211, !dbg !2789
  store double %212, double* %41, align 8, !dbg !2767
  call void @llvm.dbg.declare(metadata double* %42, metadata !2790, metadata !61), !dbg !2791
  %213 = load double, double* %33, align 8, !dbg !2792
  %214 = load double, double* %32, align 8, !dbg !2793
  %215 = fmul double %213, %214, !dbg !2794
  %216 = load double, double* %31, align 8, !dbg !2795
  %217 = load double, double* %31, align 8, !dbg !2796
  %218 = fmul double %216, %217, !dbg !2797
  %219 = load double, double* %31, align 8, !dbg !2798
  %220 = load double, double* %18, align 8, !dbg !2799
  %221 = fmul double %219, %220, !dbg !2800
  %222 = fsub double %218, %221, !dbg !2801
  %223 = load double, double* %17, align 8, !dbg !2802
  %224 = fadd double %222, %223, !dbg !2803
  %225 = fmul double %215, %224, !dbg !2804
  %226 = load double, double* %37, align 8, !dbg !2805
  %227 = fmul double 8.000000e+00, %226, !dbg !2806
  %228 = load double, double* %37, align 8, !dbg !2807
  %229 = fmul double %227, %228, !dbg !2808
  %230 = load double, double* %38, align 8, !dbg !2809
  %231 = fmul double %229, %230, !dbg !2810
  %232 = load i32, i32* %14, align 4, !dbg !2811
  %233 = sitofp i32 %232 to double, !dbg !2811
  %234 = load double, double* %8, align 8, !dbg !2812
  %235 = fadd double %233, %234, !dbg !2813
  %236 = fsub double %235, 3.000000e+00, !dbg !2814
  %237 = fmul double %231, %236, !dbg !2815
  %238 = load double, double* %35, align 8, !dbg !2816
  %239 = fmul double %237, %238, !dbg !2817
  %240 = load double, double* %34, align 8, !dbg !2818
  %241 = fmul double %239, %240, !dbg !2819
  %242 = fdiv double %225, %241, !dbg !2820
  store double %242, double* %42, align 8, !dbg !2791
  call void @llvm.dbg.declare(metadata double* %43, metadata !2821, metadata !61), !dbg !2822
  %243 = load double, double* %32, align 8, !dbg !2823
  %244 = fsub double -0.000000e+00, %243, !dbg !2824
  %245 = load i32, i32* %14, align 4, !dbg !2825
  %246 = sitofp i32 %245 to double, !dbg !2825
  %247 = load double, double* %8, align 8, !dbg !2826
  %248 = fsub double %246, %247, !dbg !2827
  %249 = fsub double %248, 1.000000e+00, !dbg !2828
  %250 = fmul double %244, %249, !dbg !2829
  %251 = load double, double* %37, align 8, !dbg !2830
  %252 = fmul double 2.000000e+00, %251, !dbg !2831
  %253 = load double, double* %35, align 8, !dbg !2832
  %254 = fmul double %252, %253, !dbg !2833
  %255 = load double, double* %34, align 8, !dbg !2834
  %256 = fmul double %254, %255, !dbg !2835
  %257 = fdiv double %250, %256, !dbg !2836
  store double %257, double* %43, align 8, !dbg !2822
  call void @llvm.dbg.declare(metadata double* %44, metadata !2837, metadata !61), !dbg !2838
  %258 = load double, double* %40, align 8, !dbg !2839
  %259 = load double, double* %15, align 8, !dbg !2840
  %260 = fmul double %258, %259, !dbg !2841
  %261 = fadd double 1.000000e+00, %260, !dbg !2842
  %262 = load double, double* %29, align 8, !dbg !2843
  %263 = fmul double %261, %262, !dbg !2844
  %264 = load double, double* %43, align 8, !dbg !2845
  %265 = load double, double* %41, align 8, !dbg !2846
  %266 = load double, double* %15, align 8, !dbg !2847
  %267 = fmul double %265, %266, !dbg !2848
  %268 = fadd double %264, %267, !dbg !2849
  %269 = load double, double* %15, align 8, !dbg !2850
  %270 = fmul double %268, %269, !dbg !2851
  %271 = load double, double* %28, align 8, !dbg !2852
  %272 = fmul double %270, %271, !dbg !2853
  %273 = fadd double %263, %272, !dbg !2854
  %274 = load double, double* %42, align 8, !dbg !2855
  %275 = load double, double* %16, align 8, !dbg !2856
  %276 = fmul double %274, %275, !dbg !2857
  %277 = load double, double* %27, align 8, !dbg !2858
  %278 = fmul double %276, %277, !dbg !2859
  %279 = fadd double %273, %278, !dbg !2860
  store double %279, double* %44, align 8, !dbg !2838
  call void @llvm.dbg.declare(metadata double* %45, metadata !2861, metadata !61), !dbg !2862
  %280 = load double, double* %40, align 8, !dbg !2863
  %281 = load double, double* %15, align 8, !dbg !2864
  %282 = fmul double %280, %281, !dbg !2865
  %283 = fadd double 1.000000e+00, %282, !dbg !2866
  %284 = load double, double* %26, align 8, !dbg !2867
  %285 = fmul double %283, %284, !dbg !2868
  %286 = load double, double* %43, align 8, !dbg !2869
  %287 = load double, double* %41, align 8, !dbg !2870
  %288 = load double, double* %15, align 8, !dbg !2871
  %289 = fmul double %287, %288, !dbg !2872
  %290 = fadd double %286, %289, !dbg !2873
  %291 = load double, double* %15, align 8, !dbg !2874
  %292 = fmul double %290, %291, !dbg !2875
  %293 = load double, double* %25, align 8, !dbg !2876
  %294 = fmul double %292, %293, !dbg !2877
  %295 = fadd double %285, %294, !dbg !2878
  %296 = load double, double* %42, align 8, !dbg !2879
  %297 = load double, double* %16, align 8, !dbg !2880
  %298 = fmul double %296, %297, !dbg !2881
  %299 = load double, double* %24, align 8, !dbg !2882
  %300 = fmul double %298, %299, !dbg !2883
  %301 = fadd double %295, %300, !dbg !2884
  store double %301, double* %45, align 8, !dbg !2862
  call void @llvm.dbg.declare(metadata double* %46, metadata !2885, metadata !61), !dbg !2886
  %302 = load double, double* %44, align 8, !dbg !2887
  %303 = load double, double* %45, align 8, !dbg !2888
  %304 = fdiv double %302, %303, !dbg !2889
  store double %304, double* %46, align 8, !dbg !2886
  %305 = load double, double* %22, align 8, !dbg !2890
  %306 = load double, double* %46, align 8, !dbg !2891
  %307 = fsub double %305, %306, !dbg !2892
  %308 = call double @fabs(double %307) #1, !dbg !2893
  %309 = load double, double* %22, align 8, !dbg !2894
  %310 = call double @fabs(double %309) #1, !dbg !2895
  %311 = fdiv double %308, %310, !dbg !2897
  store double %311, double* %23, align 8, !dbg !2898
  %312 = load double, double* %46, align 8, !dbg !2899
  store double %312, double* %22, align 8, !dbg !2900
  %313 = load double, double* %23, align 8, !dbg !2901
  %314 = fcmp olt double %313, 0x3CB0000000000000, !dbg !2903
  br i1 %314, label %318, label %315, !dbg !2904

; <label>:315:                                    ; preds = %124
  %316 = load i32, i32* %14, align 4, !dbg !2905
  %317 = icmp sgt i32 %316, 10000, !dbg !2907
  br i1 %317, label %318, label %319, !dbg !2908

; <label>:318:                                    ; preds = %315, %124
  br label %379, !dbg !2909

; <label>:319:                                    ; preds = %315
  %320 = load double, double* %44, align 8, !dbg !2911
  %321 = call double @fabs(double %320) #1, !dbg !2913
  %322 = fcmp ogt double %321, 1.000000e+50, !dbg !2914
  br i1 %322, label %327, label %323, !dbg !2915

; <label>:323:                                    ; preds = %319
  %324 = load double, double* %45, align 8, !dbg !2916
  %325 = call double @fabs(double %324) #1, !dbg !2918
  %326 = fcmp ogt double %325, 1.000000e+50, !dbg !2919
  br i1 %326, label %327, label %344, !dbg !2920

; <label>:327:                                    ; preds = %323, %319
  %328 = load double, double* %44, align 8, !dbg !2921
  %329 = fdiv double %328, 1.000000e+50, !dbg !2921
  store double %329, double* %44, align 8, !dbg !2921
  %330 = load double, double* %45, align 8, !dbg !2923
  %331 = fdiv double %330, 1.000000e+50, !dbg !2923
  store double %331, double* %45, align 8, !dbg !2923
  %332 = load double, double* %29, align 8, !dbg !2924
  %333 = fdiv double %332, 1.000000e+50, !dbg !2924
  store double %333, double* %29, align 8, !dbg !2924
  %334 = load double, double* %26, align 8, !dbg !2925
  %335 = fdiv double %334, 1.000000e+50, !dbg !2925
  store double %335, double* %26, align 8, !dbg !2925
  %336 = load double, double* %28, align 8, !dbg !2926
  %337 = fdiv double %336, 1.000000e+50, !dbg !2926
  store double %337, double* %28, align 8, !dbg !2926
  %338 = load double, double* %25, align 8, !dbg !2927
  %339 = fdiv double %338, 1.000000e+50, !dbg !2927
  store double %339, double* %25, align 8, !dbg !2927
  %340 = load double, double* %27, align 8, !dbg !2928
  %341 = fdiv double %340, 1.000000e+50, !dbg !2928
  store double %341, double* %27, align 8, !dbg !2928
  %342 = load double, double* %24, align 8, !dbg !2929
  %343 = fdiv double %342, 1.000000e+50, !dbg !2929
  store double %343, double* %24, align 8, !dbg !2929
  br label %370, !dbg !2930

; <label>:344:                                    ; preds = %323
  %345 = load double, double* %44, align 8, !dbg !2931
  %346 = call double @fabs(double %345) #1, !dbg !2933
  %347 = fcmp olt double %346, 0x358DEE7A4AD4B81E, !dbg !2934
  br i1 %347, label %352, label %348, !dbg !2935

; <label>:348:                                    ; preds = %344
  %349 = load double, double* %45, align 8, !dbg !2936
  %350 = call double @fabs(double %349) #1, !dbg !2938
  %351 = fcmp olt double %350, 0x358DEE7A4AD4B81E, !dbg !2939
  br i1 %351, label %352, label %369, !dbg !2940

; <label>:352:                                    ; preds = %348, %344
  %353 = load double, double* %44, align 8, !dbg !2941
  %354 = fmul double %353, 1.000000e+50, !dbg !2941
  store double %354, double* %44, align 8, !dbg !2941
  %355 = load double, double* %45, align 8, !dbg !2943
  %356 = fmul double %355, 1.000000e+50, !dbg !2943
  store double %356, double* %45, align 8, !dbg !2943
  %357 = load double, double* %29, align 8, !dbg !2944
  %358 = fmul double %357, 1.000000e+50, !dbg !2944
  store double %358, double* %29, align 8, !dbg !2944
  %359 = load double, double* %26, align 8, !dbg !2945
  %360 = fmul double %359, 1.000000e+50, !dbg !2945
  store double %360, double* %26, align 8, !dbg !2945
  %361 = load double, double* %28, align 8, !dbg !2946
  %362 = fmul double %361, 1.000000e+50, !dbg !2946
  store double %362, double* %28, align 8, !dbg !2946
  %363 = load double, double* %25, align 8, !dbg !2947
  %364 = fmul double %363, 1.000000e+50, !dbg !2947
  store double %364, double* %25, align 8, !dbg !2947
  %365 = load double, double* %27, align 8, !dbg !2948
  %366 = fmul double %365, 1.000000e+50, !dbg !2948
  store double %366, double* %27, align 8, !dbg !2948
  %367 = load double, double* %24, align 8, !dbg !2949
  %368 = fmul double %367, 1.000000e+50, !dbg !2949
  store double %368, double* %24, align 8, !dbg !2949
  br label %369, !dbg !2950

; <label>:369:                                    ; preds = %352, %348
  br label %370

; <label>:370:                                    ; preds = %369, %327
  %371 = load i32, i32* %14, align 4, !dbg !2951
  %372 = add nsw i32 %371, 1, !dbg !2951
  store i32 %372, i32* %14, align 4, !dbg !2951
  %373 = load double, double* %25, align 8, !dbg !2952
  store double %373, double* %24, align 8, !dbg !2953
  %374 = load double, double* %26, align 8, !dbg !2954
  store double %374, double* %25, align 8, !dbg !2955
  %375 = load double, double* %45, align 8, !dbg !2956
  store double %375, double* %26, align 8, !dbg !2957
  %376 = load double, double* %28, align 8, !dbg !2958
  store double %376, double* %27, align 8, !dbg !2959
  %377 = load double, double* %29, align 8, !dbg !2960
  store double %377, double* %28, align 8, !dbg !2961
  %378 = load double, double* %44, align 8, !dbg !2962
  store double %378, double* %29, align 8, !dbg !2963
  br label %124, !dbg !2964, !llvm.loop !2966

; <label>:379:                                    ; preds = %318
  %380 = load double, double* %22, align 8, !dbg !2967
  %381 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2968
  %382 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %381, i32 0, i32 0, !dbg !2969
  store double %380, double* %382, align 8, !dbg !2970
  %383 = load double, double* %23, align 8, !dbg !2971
  %384 = load double, double* %22, align 8, !dbg !2972
  %385 = fmul double %383, %384, !dbg !2973
  %386 = call double @fabs(double %385) #1, !dbg !2974
  %387 = fmul double 2.000000e+00, %386, !dbg !2975
  %388 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2976
  %389 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %388, i32 0, i32 1, !dbg !2977
  store double %387, double* %389, align 8, !dbg !2978
  %390 = load i32, i32* %14, align 4, !dbg !2979
  %391 = sitofp i32 %390 to double, !dbg !2979
  %392 = fadd double %391, 1.000000e+00, !dbg !2980
  %393 = fmul double 0x3CC0000000000000, %392, !dbg !2981
  %394 = load double, double* %22, align 8, !dbg !2982
  %395 = call double @fabs(double %394) #1, !dbg !2983
  %396 = fmul double %393, %395, !dbg !2984
  %397 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2985
  %398 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %397, i32 0, i32 1, !dbg !2986
  %399 = load double, double* %398, align 8, !dbg !2987
  %400 = fadd double %399, %396, !dbg !2987
  store double %400, double* %398, align 8, !dbg !2987
  %401 = load double, double* %6, align 8, !dbg !2988
  %402 = call double @fabs(double %401) #1, !dbg !2989
  %403 = load double, double* %7, align 8, !dbg !2990
  %404 = call double @fabs(double %403) #1, !dbg !2991
  %405 = fadd double %402, %404, !dbg !2992
  %406 = fadd double %405, 1.000000e+00, !dbg !2993
  %407 = fmul double 8.000000e+00, %406, !dbg !2994
  %408 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !2995
  %409 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %408, i32 0, i32 1, !dbg !2996
  %410 = load double, double* %409, align 8, !dbg !2997
  %411 = fmul double %410, %407, !dbg !2997
  store double %411, double* %409, align 8, !dbg !2997
  %412 = load i32, i32* %14, align 4, !dbg !2998
  %413 = icmp sge i32 %412, 10000, !dbg !2999
  %414 = select i1 %413, i32 11, i32 0, !dbg !2998
  store i32 %414, i32* %11, align 4, !dbg !3000
  %415 = load i32, i32* %11, align 4, !dbg !3001
  ret i32 %415, !dbg !3002
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_2F1_renorm_e(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !3003 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  %30 = alloca i32, align 4
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.gsl_sf_result_struct, align 8
  %36 = alloca %struct.gsl_sf_result_struct, align 8
  %37 = alloca double, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3004, metadata !61), !dbg !3005
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3006, metadata !61), !dbg !3007
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3008, metadata !61), !dbg !3009
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !3010, metadata !61), !dbg !3011
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !3012, metadata !61), !dbg !3013
  call void @llvm.dbg.declare(metadata double* %12, metadata !3014, metadata !61), !dbg !3015
  %41 = load double, double* %7, align 8, !dbg !3016
  %42 = fadd double %41, 5.000000e-01, !dbg !3017
  %43 = call double @floor(double %42) #1, !dbg !3018
  store double %43, double* %12, align 8, !dbg !3015
  call void @llvm.dbg.declare(metadata double* %13, metadata !3019, metadata !61), !dbg !3020
  %44 = load double, double* %8, align 8, !dbg !3021
  %45 = fadd double %44, 5.000000e-01, !dbg !3022
  %46 = call double @floor(double %45) #1, !dbg !3023
  store double %46, double* %13, align 8, !dbg !3020
  call void @llvm.dbg.declare(metadata double* %14, metadata !3024, metadata !61), !dbg !3025
  %47 = load double, double* %9, align 8, !dbg !3026
  %48 = fadd double %47, 5.000000e-01, !dbg !3027
  %49 = call double @floor(double %48) #1, !dbg !3028
  store double %49, double* %14, align 8, !dbg !3025
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3029, metadata !61), !dbg !3030
  %50 = load double, double* %7, align 8, !dbg !3031
  %51 = fcmp olt double %50, 0.000000e+00, !dbg !3032
  br i1 %51, label %52, label %58, !dbg !3033

; <label>:52:                                     ; preds = %5
  %53 = load double, double* %7, align 8, !dbg !3034
  %54 = load double, double* %12, align 8, !dbg !3036
  %55 = fsub double %53, %54, !dbg !3037
  %56 = call double @fabs(double %55) #1, !dbg !3038
  %57 = fcmp olt double %56, 0x3D4F400000000000, !dbg !3039
  br label %58

; <label>:58:                                     ; preds = %52, %5
  %59 = phi i1 [ false, %5 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32, !dbg !3040
  store i32 %60, i32* %15, align 4, !dbg !3042
  call void @llvm.dbg.declare(metadata i32* %16, metadata !3043, metadata !61), !dbg !3044
  %61 = load double, double* %8, align 8, !dbg !3045
  %62 = fcmp olt double %61, 0.000000e+00, !dbg !3046
  br i1 %62, label %63, label %69, !dbg !3047

; <label>:63:                                     ; preds = %58
  %64 = load double, double* %8, align 8, !dbg !3048
  %65 = load double, double* %13, align 8, !dbg !3049
  %66 = fsub double %64, %65, !dbg !3050
  %67 = call double @fabs(double %66) #1, !dbg !3051
  %68 = fcmp olt double %67, 0x3D4F400000000000, !dbg !3052
  br label %69

; <label>:69:                                     ; preds = %63, %58
  %70 = phi i1 [ false, %58 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32, !dbg !3053
  store i32 %71, i32* %16, align 4, !dbg !3054
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3055, metadata !61), !dbg !3056
  %72 = load double, double* %9, align 8, !dbg !3057
  %73 = fcmp olt double %72, 0.000000e+00, !dbg !3058
  br i1 %73, label %74, label %80, !dbg !3059

; <label>:74:                                     ; preds = %69
  %75 = load double, double* %9, align 8, !dbg !3060
  %76 = load double, double* %14, align 8, !dbg !3061
  %77 = fsub double %75, %76, !dbg !3062
  %78 = call double @fabs(double %77) #1, !dbg !3063
  %79 = fcmp olt double %78, 0x3D4F400000000000, !dbg !3064
  br label %80

; <label>:80:                                     ; preds = %74, %69
  %81 = phi i1 [ false, %69 ], [ %79, %74 ]
  %82 = zext i1 %81 to i32, !dbg !3065
  store i32 %82, i32* %17, align 4, !dbg !3066
  %83 = load i32, i32* %17, align 4, !dbg !3067
  %84 = icmp ne i32 %83, 0, !dbg !3067
  br i1 %84, label %85, label %223, !dbg !3069

; <label>:85:                                     ; preds = %80
  %86 = load i32, i32* %15, align 4, !dbg !3070
  %87 = icmp ne i32 %86, 0, !dbg !3070
  br i1 %87, label %88, label %93, !dbg !3073

; <label>:88:                                     ; preds = %85
  %89 = load double, double* %7, align 8, !dbg !3074
  %90 = load double, double* %9, align 8, !dbg !3076
  %91 = fadd double %90, 1.000000e-01, !dbg !3077
  %92 = fcmp ogt double %89, %91, !dbg !3078
  br i1 %92, label %101, label %93, !dbg !3079

; <label>:93:                                     ; preds = %88, %85
  %94 = load i32, i32* %16, align 4, !dbg !3080
  %95 = icmp ne i32 %94, 0, !dbg !3080
  br i1 %95, label %96, label %106, !dbg !3082

; <label>:96:                                     ; preds = %93
  %97 = load double, double* %8, align 8, !dbg !3083
  %98 = load double, double* %9, align 8, !dbg !3085
  %99 = fadd double %98, 1.000000e-01, !dbg !3086
  %100 = fcmp ogt double %97, %99, !dbg !3087
  br i1 %100, label %101, label %106, !dbg !3088

; <label>:101:                                    ; preds = %96, %88
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3089
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !3091
  store double 0.000000e+00, double* %103, align 8, !dbg !3092
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3093
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 1, !dbg !3094
  store double 0.000000e+00, double* %105, align 8, !dbg !3095
  store i32 0, i32* %6, align 4, !dbg !3096
  br label %265, !dbg !3096

; <label>:106:                                    ; preds = %96, %93
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !3097, metadata !61), !dbg !3099
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !3100, metadata !61), !dbg !3101
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !3102, metadata !61), !dbg !3103
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !3104, metadata !61), !dbg !3105
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !3106, metadata !61), !dbg !3107
  call void @llvm.dbg.declare(metadata double* %23, metadata !3108, metadata !61), !dbg !3109
  call void @llvm.dbg.declare(metadata double* %24, metadata !3110, metadata !61), !dbg !3111
  call void @llvm.dbg.declare(metadata double* %25, metadata !3112, metadata !61), !dbg !3113
  call void @llvm.dbg.declare(metadata double* %26, metadata !3114, metadata !61), !dbg !3115
  call void @llvm.dbg.declare(metadata double* %27, metadata !3116, metadata !61), !dbg !3117
  call void @llvm.dbg.declare(metadata i32* %28, metadata !3118, metadata !61), !dbg !3119
  store i32 0, i32* %28, align 4, !dbg !3119
  %107 = load double, double* %7, align 8, !dbg !3120
  %108 = load double, double* %9, align 8, !dbg !3121
  %109 = fsub double %107, %108, !dbg !3122
  %110 = fadd double %109, 1.000000e+00, !dbg !3123
  %111 = call i32 @gsl_sf_lngamma_sgn_e(double %110, %struct.gsl_sf_result_struct* %18, double* %23), !dbg !3124
  %112 = load i32, i32* %28, align 4, !dbg !3125
  %113 = add nsw i32 %112, %111, !dbg !3125
  store i32 %113, i32* %28, align 4, !dbg !3125
  %114 = load double, double* %8, align 8, !dbg !3126
  %115 = load double, double* %9, align 8, !dbg !3127
  %116 = fsub double %114, %115, !dbg !3128
  %117 = fadd double %116, 1.000000e+00, !dbg !3129
  %118 = call i32 @gsl_sf_lngamma_sgn_e(double %117, %struct.gsl_sf_result_struct* %19, double* %24), !dbg !3130
  %119 = load i32, i32* %28, align 4, !dbg !3131
  %120 = add nsw i32 %119, %118, !dbg !3131
  store i32 %120, i32* %28, align 4, !dbg !3131
  %121 = load double, double* %7, align 8, !dbg !3132
  %122 = call i32 @gsl_sf_lngamma_sgn_e(double %121, %struct.gsl_sf_result_struct* %20, double* %25), !dbg !3133
  %123 = load i32, i32* %28, align 4, !dbg !3134
  %124 = add nsw i32 %123, %122, !dbg !3134
  store i32 %124, i32* %28, align 4, !dbg !3134
  %125 = load double, double* %8, align 8, !dbg !3135
  %126 = call i32 @gsl_sf_lngamma_sgn_e(double %125, %struct.gsl_sf_result_struct* %21, double* %26), !dbg !3136
  %127 = load i32, i32* %28, align 4, !dbg !3137
  %128 = add nsw i32 %127, %126, !dbg !3137
  store i32 %128, i32* %28, align 4, !dbg !3137
  %129 = load double, double* %9, align 8, !dbg !3138
  %130 = fsub double -0.000000e+00, %129, !dbg !3139
  %131 = fadd double %130, 2.000000e+00, !dbg !3140
  %132 = call i32 @gsl_sf_lngamma_sgn_e(double %131, %struct.gsl_sf_result_struct* %22, double* %27), !dbg !3141
  %133 = load i32, i32* %28, align 4, !dbg !3142
  %134 = add nsw i32 %133, %132, !dbg !3142
  store i32 %134, i32* %28, align 4, !dbg !3142
  %135 = load i32, i32* %28, align 4, !dbg !3143
  %136 = icmp ne i32 %135, 0, !dbg !3145
  br i1 %136, label %137, label %146, !dbg !3146

; <label>:137:                                    ; preds = %106
  br label %138, !dbg !3147, !llvm.loop !3149

; <label>:138:                                    ; preds = %137
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3150
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 0, !dbg !3150
  store double 0x7FF8000000000000, double* %140, align 8, !dbg !3150
  %141 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3150
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %141, i32 0, i32 1, !dbg !3150
  store double 0x7FF8000000000000, double* %142, align 8, !dbg !3150
  br label %143, !dbg !3150, !llvm.loop !3153

; <label>:143:                                    ; preds = %138
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 854, i32 1), !dbg !3155
  store i32 1, i32* %6, align 4, !dbg !3155
  br label %265, !dbg !3155
                                                  ; No predecessors!
  br label %145, !dbg !3158

; <label>:145:                                    ; preds = %144
  br label %221, !dbg !3160

; <label>:146:                                    ; preds = %106
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !3161, metadata !61), !dbg !3163
  call void @llvm.dbg.declare(metadata i32* %30, metadata !3164, metadata !61), !dbg !3165
  %147 = load double, double* %7, align 8, !dbg !3166
  %148 = load double, double* %9, align 8, !dbg !3167
  %149 = fsub double %147, %148, !dbg !3168
  %150 = fadd double %149, 1.000000e+00, !dbg !3169
  %151 = load double, double* %8, align 8, !dbg !3170
  %152 = load double, double* %9, align 8, !dbg !3171
  %153 = fsub double %151, %152, !dbg !3172
  %154 = fadd double %153, 1.000000e+00, !dbg !3173
  %155 = load double, double* %9, align 8, !dbg !3174
  %156 = fsub double -0.000000e+00, %155, !dbg !3175
  %157 = fadd double %156, 2.000000e+00, !dbg !3176
  %158 = load double, double* %10, align 8, !dbg !3177
  %159 = call i32 @gsl_sf_hyperg_2F1_e(double %150, double %154, double %157, double %158, %struct.gsl_sf_result_struct* %29), !dbg !3178
  store i32 %159, i32* %30, align 4, !dbg !3165
  call void @llvm.dbg.declare(metadata double* %31, metadata !3179, metadata !61), !dbg !3180
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !3181
  %161 = load double, double* %160, align 8, !dbg !3181
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !3182
  %163 = load double, double* %162, align 8, !dbg !3182
  %164 = fadd double %161, %163, !dbg !3183
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !3184
  %166 = load double, double* %165, align 8, !dbg !3184
  %167 = fsub double %164, %166, !dbg !3185
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !3186
  %169 = load double, double* %168, align 8, !dbg !3186
  %170 = fsub double %167, %169, !dbg !3187
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !3188
  %172 = load double, double* %171, align 8, !dbg !3188
  %173 = fsub double %170, %172, !dbg !3189
  store double %173, double* %31, align 8, !dbg !3180
  call void @llvm.dbg.declare(metadata double* %32, metadata !3190, metadata !61), !dbg !3191
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !3192
  %175 = load double, double* %174, align 8, !dbg !3192
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !3193
  %177 = load double, double* %176, align 8, !dbg !3193
  %178 = fadd double %175, %177, !dbg !3194
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !3195
  %180 = load double, double* %179, align 8, !dbg !3195
  %181 = fadd double %178, %180, !dbg !3196
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !3197
  %183 = load double, double* %182, align 8, !dbg !3197
  %184 = fadd double %181, %183, !dbg !3198
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !3199
  %186 = load double, double* %185, align 8, !dbg !3199
  %187 = fadd double %184, %186, !dbg !3200
  store double %187, double* %32, align 8, !dbg !3191
  call void @llvm.dbg.declare(metadata double* %33, metadata !3201, metadata !61), !dbg !3202
  %188 = load double, double* %23, align 8, !dbg !3203
  %189 = load double, double* %24, align 8, !dbg !3204
  %190 = fmul double %188, %189, !dbg !3205
  %191 = load double, double* %25, align 8, !dbg !3206
  %192 = fmul double %190, %191, !dbg !3207
  %193 = load double, double* %26, align 8, !dbg !3208
  %194 = fmul double %192, %193, !dbg !3209
  %195 = load double, double* %27, align 8, !dbg !3210
  %196 = fmul double %194, %195, !dbg !3211
  store double %196, double* %33, align 8, !dbg !3202
  call void @llvm.dbg.declare(metadata i32* %34, metadata !3212, metadata !61), !dbg !3213
  %197 = load double, double* %31, align 8, !dbg !3214
  %198 = load double, double* %32, align 8, !dbg !3215
  %199 = load double, double* %33, align 8, !dbg !3216
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !3217
  %201 = load double, double* %200, align 8, !dbg !3217
  %202 = fmul double %199, %201, !dbg !3218
  %203 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !3219
  %204 = load double, double* %203, align 8, !dbg !3219
  %205 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3220
  %206 = call i32 @gsl_sf_exp_mult_err_e(double %197, double %198, double %202, double %204, %struct.gsl_sf_result_struct* %205), !dbg !3221
  store i32 %206, i32* %34, align 4, !dbg !3213
  %207 = load i32, i32* %34, align 4, !dbg !3222
  %208 = icmp ne i32 %207, 0, !dbg !3222
  br i1 %208, label %209, label %211, !dbg !3222

; <label>:209:                                    ; preds = %146
  %210 = load i32, i32* %34, align 4, !dbg !3223
  br label %219, !dbg !3223

; <label>:211:                                    ; preds = %146
  %212 = load i32, i32* %30, align 4, !dbg !3225
  %213 = icmp ne i32 %212, 0, !dbg !3225
  br i1 %213, label %214, label %216, !dbg !3225

; <label>:214:                                    ; preds = %211
  %215 = load i32, i32* %30, align 4, !dbg !3227
  br label %217, !dbg !3227

; <label>:216:                                    ; preds = %211
  br label %217, !dbg !3229

; <label>:217:                                    ; preds = %216, %214
  %218 = phi i32 [ %215, %214 ], [ 0, %216 ], !dbg !3231
  br label %219, !dbg !3231

; <label>:219:                                    ; preds = %217, %209
  %220 = phi i32 [ %210, %209 ], [ %218, %217 ], !dbg !3233
  store i32 %220, i32* %6, align 4, !dbg !3235
  br label %265, !dbg !3235

; <label>:221:                                    ; preds = %145
  br label %222

; <label>:222:                                    ; preds = %221
  br label %265, !dbg !3236

; <label>:223:                                    ; preds = %80
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %35, metadata !3237, metadata !61), !dbg !3239
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %36, metadata !3240, metadata !61), !dbg !3241
  call void @llvm.dbg.declare(metadata double* %37, metadata !3242, metadata !61), !dbg !3243
  call void @llvm.dbg.declare(metadata i32* %38, metadata !3244, metadata !61), !dbg !3245
  %224 = load double, double* %9, align 8, !dbg !3246
  %225 = call i32 @gsl_sf_lngamma_sgn_e(double %224, %struct.gsl_sf_result_struct* %36, double* %37), !dbg !3247
  store i32 %225, i32* %38, align 4, !dbg !3245
  call void @llvm.dbg.declare(metadata i32* %39, metadata !3248, metadata !61), !dbg !3249
  %226 = load double, double* %7, align 8, !dbg !3250
  %227 = load double, double* %8, align 8, !dbg !3251
  %228 = load double, double* %9, align 8, !dbg !3252
  %229 = load double, double* %10, align 8, !dbg !3253
  %230 = call i32 @gsl_sf_hyperg_2F1_e(double %226, double %227, double %228, double %229, %struct.gsl_sf_result_struct* %35), !dbg !3254
  store i32 %230, i32* %39, align 4, !dbg !3249
  call void @llvm.dbg.declare(metadata i32* %40, metadata !3255, metadata !61), !dbg !3256
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !3257
  %232 = load double, double* %231, align 8, !dbg !3257
  %233 = fsub double -0.000000e+00, %232, !dbg !3258
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !3259
  %235 = load double, double* %234, align 8, !dbg !3259
  %236 = load double, double* %37, align 8, !dbg !3260
  %237 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !3261
  %238 = load double, double* %237, align 8, !dbg !3261
  %239 = fmul double %236, %238, !dbg !3262
  %240 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !3263
  %241 = load double, double* %240, align 8, !dbg !3263
  %242 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3264
  %243 = call i32 @gsl_sf_exp_mult_err_e(double %233, double %235, double %239, double %241, %struct.gsl_sf_result_struct* %242), !dbg !3265
  store i32 %243, i32* %40, align 4, !dbg !3256
  %244 = load i32, i32* %40, align 4, !dbg !3266
  %245 = icmp ne i32 %244, 0, !dbg !3266
  br i1 %245, label %246, label %248, !dbg !3266

; <label>:246:                                    ; preds = %223
  %247 = load i32, i32* %40, align 4, !dbg !3267
  br label %263, !dbg !3267

; <label>:248:                                    ; preds = %223
  %249 = load i32, i32* %39, align 4, !dbg !3269
  %250 = icmp ne i32 %249, 0, !dbg !3269
  br i1 %250, label %251, label %253, !dbg !3269

; <label>:251:                                    ; preds = %248
  %252 = load i32, i32* %39, align 4, !dbg !3271
  br label %261, !dbg !3271

; <label>:253:                                    ; preds = %248
  %254 = load i32, i32* %38, align 4, !dbg !3273
  %255 = icmp ne i32 %254, 0, !dbg !3273
  br i1 %255, label %256, label %258, !dbg !3273

; <label>:256:                                    ; preds = %253
  %257 = load i32, i32* %38, align 4, !dbg !3275
  br label %259, !dbg !3275

; <label>:258:                                    ; preds = %253
  br label %259, !dbg !3277

; <label>:259:                                    ; preds = %258, %256
  %260 = phi i32 [ %257, %256 ], [ 0, %258 ], !dbg !3279
  br label %261, !dbg !3279

; <label>:261:                                    ; preds = %259, %251
  %262 = phi i32 [ %252, %251 ], [ %260, %259 ], !dbg !3281
  br label %263, !dbg !3281

; <label>:263:                                    ; preds = %261, %246
  %264 = phi i32 [ %247, %246 ], [ %262, %261 ], !dbg !3283
  store i32 %264, i32* %6, align 4, !dbg !3285
  br label %265, !dbg !3285

; <label>:265:                                    ; preds = %101, %143, %219, %263, %222
  %266 = load i32, i32* %6, align 4, !dbg !3286
  ret i32 %266, !dbg !3286
}

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_2F1_conj_renorm_e(double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !3287 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca %struct.gsl_sf_result_struct, align 8
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3288, metadata !61), !dbg !3289
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3290, metadata !61), !dbg !3291
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3292, metadata !61), !dbg !3293
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !3294, metadata !61), !dbg !3295
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !3296, metadata !61), !dbg !3297
  call void @llvm.dbg.declare(metadata double* %12, metadata !3298, metadata !61), !dbg !3299
  %33 = load double, double* %9, align 8, !dbg !3300
  %34 = fadd double %33, 5.000000e-01, !dbg !3301
  %35 = call double @floor(double %34) #1, !dbg !3302
  store double %35, double* %12, align 8, !dbg !3299
  call void @llvm.dbg.declare(metadata double* %13, metadata !3303, metadata !61), !dbg !3304
  %36 = load double, double* %7, align 8, !dbg !3305
  %37 = fadd double %36, 5.000000e-01, !dbg !3306
  %38 = call double @floor(double %37) #1, !dbg !3307
  store double %38, double* %13, align 8, !dbg !3304
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3308, metadata !61), !dbg !3309
  %39 = load double, double* %7, align 8, !dbg !3310
  %40 = fcmp olt double %39, 0.000000e+00, !dbg !3311
  br i1 %40, label %41, label %50, !dbg !3312

; <label>:41:                                     ; preds = %5
  %42 = load double, double* %7, align 8, !dbg !3313
  %43 = load double, double* %13, align 8, !dbg !3315
  %44 = fsub double %42, %43, !dbg !3316
  %45 = call double @fabs(double %44) #1, !dbg !3317
  %46 = fcmp olt double %45, 0x3D4F400000000000, !dbg !3318
  br i1 %46, label %47, label %50, !dbg !3319

; <label>:47:                                     ; preds = %41
  %48 = load double, double* %8, align 8, !dbg !3320
  %49 = fcmp oeq double %48, 0.000000e+00, !dbg !3322
  br label %50

; <label>:50:                                     ; preds = %47, %41, %5
  %51 = phi i1 [ false, %41 ], [ false, %5 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32, !dbg !3323
  store i32 %52, i32* %14, align 4, !dbg !3325
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3326, metadata !61), !dbg !3327
  %53 = load double, double* %9, align 8, !dbg !3328
  %54 = fcmp olt double %53, 0.000000e+00, !dbg !3329
  br i1 %54, label %55, label %61, !dbg !3330

; <label>:55:                                     ; preds = %50
  %56 = load double, double* %9, align 8, !dbg !3331
  %57 = load double, double* %12, align 8, !dbg !3332
  %58 = fsub double %56, %57, !dbg !3333
  %59 = call double @fabs(double %58) #1, !dbg !3334
  %60 = fcmp olt double %59, 0x3D4F400000000000, !dbg !3335
  br label %61

; <label>:61:                                     ; preds = %55, %50
  %62 = phi i1 [ false, %50 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32, !dbg !3336
  store i32 %63, i32* %15, align 4, !dbg !3337
  %64 = load i32, i32* %15, align 4, !dbg !3338
  %65 = icmp ne i32 %64, 0, !dbg !3338
  br i1 %65, label %66, label %163, !dbg !3340

; <label>:66:                                     ; preds = %61
  %67 = load i32, i32* %14, align 4, !dbg !3341
  %68 = icmp ne i32 %67, 0, !dbg !3341
  br i1 %68, label %69, label %79, !dbg !3344

; <label>:69:                                     ; preds = %66
  %70 = load double, double* %7, align 8, !dbg !3345
  %71 = load double, double* %9, align 8, !dbg !3347
  %72 = fadd double %71, 1.000000e-01, !dbg !3348
  %73 = fcmp ogt double %70, %72, !dbg !3349
  br i1 %73, label %74, label %79, !dbg !3350

; <label>:74:                                     ; preds = %69
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3351
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !3353
  store double 0.000000e+00, double* %76, align 8, !dbg !3354
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3355
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !3356
  store double 0.000000e+00, double* %78, align 8, !dbg !3357
  store i32 0, i32* %6, align 4, !dbg !3358
  br label %205, !dbg !3358

; <label>:79:                                     ; preds = %69, %66
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !3359, metadata !61), !dbg !3361
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !3362, metadata !61), !dbg !3363
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !3364, metadata !61), !dbg !3365
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !3366, metadata !61), !dbg !3367
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !3368, metadata !61), !dbg !3369
  call void @llvm.dbg.declare(metadata i32* %21, metadata !3370, metadata !61), !dbg !3371
  store i32 0, i32* %21, align 4, !dbg !3371
  %80 = load double, double* %7, align 8, !dbg !3372
  %81 = load double, double* %9, align 8, !dbg !3373
  %82 = fsub double %80, %81, !dbg !3374
  %83 = fadd double %82, 1.000000e+00, !dbg !3375
  %84 = load double, double* %8, align 8, !dbg !3376
  %85 = call i32 @gsl_sf_lngamma_complex_e(double %83, double %84, %struct.gsl_sf_result_struct* %16, %struct.gsl_sf_result_struct* %19), !dbg !3377
  %86 = load i32, i32* %21, align 4, !dbg !3378
  %87 = add nsw i32 %86, %85, !dbg !3378
  store i32 %87, i32* %21, align 4, !dbg !3378
  %88 = load double, double* %7, align 8, !dbg !3379
  %89 = load double, double* %8, align 8, !dbg !3380
  %90 = call i32 @gsl_sf_lngamma_complex_e(double %88, double %89, %struct.gsl_sf_result_struct* %17, %struct.gsl_sf_result_struct* %20), !dbg !3381
  %91 = load i32, i32* %21, align 4, !dbg !3382
  %92 = add nsw i32 %91, %90, !dbg !3382
  store i32 %92, i32* %21, align 4, !dbg !3382
  %93 = load double, double* %9, align 8, !dbg !3383
  %94 = fsub double -0.000000e+00, %93, !dbg !3384
  %95 = fadd double %94, 2.000000e+00, !dbg !3385
  %96 = call i32 @gsl_sf_lngamma_e(double %95, %struct.gsl_sf_result_struct* %18), !dbg !3386
  %97 = load i32, i32* %21, align 4, !dbg !3387
  %98 = add nsw i32 %97, %96, !dbg !3387
  store i32 %98, i32* %21, align 4, !dbg !3387
  %99 = load i32, i32* %21, align 4, !dbg !3388
  %100 = icmp ne i32 %99, 0, !dbg !3390
  br i1 %100, label %101, label %110, !dbg !3391

; <label>:101:                                    ; preds = %79
  br label %102, !dbg !3392, !llvm.loop !3394

; <label>:102:                                    ; preds = %101
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3395
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !3395
  store double 0x7FF8000000000000, double* %104, align 8, !dbg !3395
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3395
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 1, !dbg !3395
  store double 0x7FF8000000000000, double* %106, align 8, !dbg !3395
  br label %107, !dbg !3395, !llvm.loop !3398

; <label>:107:                                    ; preds = %102
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 913, i32 1), !dbg !3400
  store i32 1, i32* %6, align 4, !dbg !3400
  br label %205, !dbg !3400
                                                  ; No predecessors!
  br label %109, !dbg !3403

; <label>:109:                                    ; preds = %108
  br label %161, !dbg !3405

; <label>:110:                                    ; preds = %79
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !3406, metadata !61), !dbg !3408
  call void @llvm.dbg.declare(metadata i32* %23, metadata !3409, metadata !61), !dbg !3410
  %111 = load double, double* %7, align 8, !dbg !3411
  %112 = load double, double* %9, align 8, !dbg !3412
  %113 = fsub double %111, %112, !dbg !3413
  %114 = fadd double %113, 1.000000e+00, !dbg !3414
  %115 = load double, double* %8, align 8, !dbg !3415
  %116 = load double, double* %9, align 8, !dbg !3416
  %117 = fsub double -0.000000e+00, %116, !dbg !3417
  %118 = fadd double %117, 2.000000e+00, !dbg !3418
  %119 = load double, double* %10, align 8, !dbg !3419
  %120 = call i32 @gsl_sf_hyperg_2F1_conj_e(double %114, double %115, double %118, double %119, %struct.gsl_sf_result_struct* %22), !dbg !3420
  store i32 %120, i32* %23, align 4, !dbg !3410
  call void @llvm.dbg.declare(metadata double* %24, metadata !3421, metadata !61), !dbg !3422
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !3423
  %122 = load double, double* %121, align 8, !dbg !3423
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !3424
  %124 = load double, double* %123, align 8, !dbg !3424
  %125 = fsub double %122, %124, !dbg !3425
  %126 = fmul double 2.000000e+00, %125, !dbg !3426
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !3427
  %128 = load double, double* %127, align 8, !dbg !3427
  %129 = fsub double %126, %128, !dbg !3428
  store double %129, double* %24, align 8, !dbg !3422
  call void @llvm.dbg.declare(metadata double* %25, metadata !3429, metadata !61), !dbg !3430
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !3431
  %131 = load double, double* %130, align 8, !dbg !3431
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !3432
  %133 = load double, double* %132, align 8, !dbg !3432
  %134 = fadd double %131, %133, !dbg !3433
  %135 = fmul double 2.000000e+00, %134, !dbg !3434
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !3435
  %137 = load double, double* %136, align 8, !dbg !3435
  %138 = fadd double %135, %137, !dbg !3436
  store double %138, double* %25, align 8, !dbg !3430
  call void @llvm.dbg.declare(metadata i32* %26, metadata !3437, metadata !61), !dbg !3438
  %139 = load double, double* %24, align 8, !dbg !3439
  %140 = load double, double* %25, align 8, !dbg !3440
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !3441
  %142 = load double, double* %141, align 8, !dbg !3441
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !3442
  %144 = load double, double* %143, align 8, !dbg !3442
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3443
  %146 = call i32 @gsl_sf_exp_mult_err_e(double %139, double %140, double %142, double %144, %struct.gsl_sf_result_struct* %145), !dbg !3444
  store i32 %146, i32* %26, align 4, !dbg !3438
  %147 = load i32, i32* %26, align 4, !dbg !3445
  %148 = icmp ne i32 %147, 0, !dbg !3445
  br i1 %148, label %149, label %151, !dbg !3445

; <label>:149:                                    ; preds = %110
  %150 = load i32, i32* %26, align 4, !dbg !3446
  br label %159, !dbg !3446

; <label>:151:                                    ; preds = %110
  %152 = load i32, i32* %23, align 4, !dbg !3448
  %153 = icmp ne i32 %152, 0, !dbg !3448
  br i1 %153, label %154, label %156, !dbg !3448

; <label>:154:                                    ; preds = %151
  %155 = load i32, i32* %23, align 4, !dbg !3450
  br label %157, !dbg !3450

; <label>:156:                                    ; preds = %151
  br label %157, !dbg !3452

; <label>:157:                                    ; preds = %156, %154
  %158 = phi i32 [ %155, %154 ], [ 0, %156 ], !dbg !3454
  br label %159, !dbg !3454

; <label>:159:                                    ; preds = %157, %149
  %160 = phi i32 [ %150, %149 ], [ %158, %157 ], !dbg !3456
  store i32 %160, i32* %6, align 4, !dbg !3458
  br label %205, !dbg !3458

; <label>:161:                                    ; preds = %109
  br label %162

; <label>:162:                                    ; preds = %161
  br label %205, !dbg !3459

; <label>:163:                                    ; preds = %61
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !3460, metadata !61), !dbg !3462
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %28, metadata !3463, metadata !61), !dbg !3464
  call void @llvm.dbg.declare(metadata double* %29, metadata !3465, metadata !61), !dbg !3466
  call void @llvm.dbg.declare(metadata i32* %30, metadata !3467, metadata !61), !dbg !3468
  %164 = load double, double* %9, align 8, !dbg !3469
  %165 = call i32 @gsl_sf_lngamma_sgn_e(double %164, %struct.gsl_sf_result_struct* %28, double* %29), !dbg !3470
  store i32 %165, i32* %30, align 4, !dbg !3468
  call void @llvm.dbg.declare(metadata i32* %31, metadata !3471, metadata !61), !dbg !3472
  %166 = load double, double* %7, align 8, !dbg !3473
  %167 = load double, double* %8, align 8, !dbg !3474
  %168 = load double, double* %9, align 8, !dbg !3475
  %169 = load double, double* %10, align 8, !dbg !3476
  %170 = call i32 @gsl_sf_hyperg_2F1_conj_e(double %166, double %167, double %168, double %169, %struct.gsl_sf_result_struct* %27), !dbg !3477
  store i32 %170, i32* %31, align 4, !dbg !3472
  call void @llvm.dbg.declare(metadata i32* %32, metadata !3478, metadata !61), !dbg !3479
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !3480
  %172 = load double, double* %171, align 8, !dbg !3480
  %173 = fsub double -0.000000e+00, %172, !dbg !3481
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !3482
  %175 = load double, double* %174, align 8, !dbg !3482
  %176 = load double, double* %29, align 8, !dbg !3483
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !3484
  %178 = load double, double* %177, align 8, !dbg !3484
  %179 = fmul double %176, %178, !dbg !3485
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !3486
  %181 = load double, double* %180, align 8, !dbg !3486
  %182 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !3487
  %183 = call i32 @gsl_sf_exp_mult_err_e(double %173, double %175, double %179, double %181, %struct.gsl_sf_result_struct* %182), !dbg !3488
  store i32 %183, i32* %32, align 4, !dbg !3479
  %184 = load i32, i32* %32, align 4, !dbg !3489
  %185 = icmp ne i32 %184, 0, !dbg !3489
  br i1 %185, label %186, label %188, !dbg !3489

; <label>:186:                                    ; preds = %163
  %187 = load i32, i32* %32, align 4, !dbg !3490
  br label %203, !dbg !3490

; <label>:188:                                    ; preds = %163
  %189 = load i32, i32* %31, align 4, !dbg !3492
  %190 = icmp ne i32 %189, 0, !dbg !3492
  br i1 %190, label %191, label %193, !dbg !3492

; <label>:191:                                    ; preds = %188
  %192 = load i32, i32* %31, align 4, !dbg !3494
  br label %201, !dbg !3494

; <label>:193:                                    ; preds = %188
  %194 = load i32, i32* %30, align 4, !dbg !3496
  %195 = icmp ne i32 %194, 0, !dbg !3496
  br i1 %195, label %196, label %198, !dbg !3496

; <label>:196:                                    ; preds = %193
  %197 = load i32, i32* %30, align 4, !dbg !3498
  br label %199, !dbg !3498

; <label>:198:                                    ; preds = %193
  br label %199, !dbg !3500

; <label>:199:                                    ; preds = %198, %196
  %200 = phi i32 [ %197, %196 ], [ 0, %198 ], !dbg !3502
  br label %201, !dbg !3502

; <label>:201:                                    ; preds = %199, %191
  %202 = phi i32 [ %192, %191 ], [ %200, %199 ], !dbg !3504
  br label %203, !dbg !3504

; <label>:203:                                    ; preds = %201, %186
  %204 = phi i32 [ %187, %186 ], [ %202, %201 ], !dbg !3506
  store i32 %204, i32* %6, align 4, !dbg !3508
  br label %205, !dbg !3508

; <label>:205:                                    ; preds = %74, %107, %159, %203, %162
  %206 = load i32, i32* %6, align 4, !dbg !3509
  ret i32 %206, !dbg !3509
}

declare i32 @gsl_sf_lngamma_complex_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_2F1(double, double, double, double) #0 !dbg !3510 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3513, metadata !61), !dbg !3514
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3515, metadata !61), !dbg !3516
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3517, metadata !61), !dbg !3518
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3519, metadata !61), !dbg !3520
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !3521, metadata !61), !dbg !3522
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3523, metadata !61), !dbg !3522
  %12 = load double, double* %6, align 8, !dbg !3522
  %13 = load double, double* %7, align 8, !dbg !3522
  %14 = load double, double* %8, align 8, !dbg !3522
  %15 = load double, double* %9, align 8, !dbg !3522
  %16 = call i32 @gsl_sf_hyperg_2F1_e(double %12, double %13, double %14, double %15, %struct.gsl_sf_result_struct* %10), !dbg !3522
  store i32 %16, i32* %11, align 4, !dbg !3522
  %17 = load i32, i32* %11, align 4, !dbg !3524
  %18 = icmp ne i32 %17, 0, !dbg !3524
  br i1 %18, label %19, label %25, !dbg !3522

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !3526, !llvm.loop !3529

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %11, align 4, !dbg !3531
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 948, i32 %21), !dbg !3531
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3531
  %23 = load double, double* %22, align 8, !dbg !3531
  store double %23, double* %5, align 8, !dbg !3531
  br label %28, !dbg !3531
                                                  ; No predecessors!
  br label %25, !dbg !3534

; <label>:25:                                     ; preds = %24, %4
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3536
  %27 = load double, double* %26, align 8, !dbg !3536
  store double %27, double* %5, align 8, !dbg !3536
  br label %28, !dbg !3536

; <label>:28:                                     ; preds = %25, %20
  %29 = load double, double* %5, align 8, !dbg !3538
  ret double %29, !dbg !3538
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_2F1_conj(double, double, double, double) #0 !dbg !3539 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3540, metadata !61), !dbg !3541
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3542, metadata !61), !dbg !3543
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3544, metadata !61), !dbg !3545
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3546, metadata !61), !dbg !3547
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !3548, metadata !61), !dbg !3549
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3550, metadata !61), !dbg !3549
  %12 = load double, double* %6, align 8, !dbg !3549
  %13 = load double, double* %7, align 8, !dbg !3549
  %14 = load double, double* %8, align 8, !dbg !3549
  %15 = load double, double* %9, align 8, !dbg !3549
  %16 = call i32 @gsl_sf_hyperg_2F1_conj_e(double %12, double %13, double %14, double %15, %struct.gsl_sf_result_struct* %10), !dbg !3549
  store i32 %16, i32* %11, align 4, !dbg !3549
  %17 = load i32, i32* %11, align 4, !dbg !3551
  %18 = icmp ne i32 %17, 0, !dbg !3551
  br i1 %18, label %19, label %25, !dbg !3549

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !3553, !llvm.loop !3556

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %11, align 4, !dbg !3558
  call void @gsl_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 953, i32 %21), !dbg !3558
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3558
  %23 = load double, double* %22, align 8, !dbg !3558
  store double %23, double* %5, align 8, !dbg !3558
  br label %28, !dbg !3558
                                                  ; No predecessors!
  br label %25, !dbg !3561

; <label>:25:                                     ; preds = %24, %4
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3563
  %27 = load double, double* %26, align 8, !dbg !3563
  store double %27, double* %5, align 8, !dbg !3563
  br label %28, !dbg !3563

; <label>:28:                                     ; preds = %25, %20
  %29 = load double, double* %5, align 8, !dbg !3565
  ret double %29, !dbg !3565
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_2F1_renorm(double, double, double, double) #0 !dbg !3566 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3567, metadata !61), !dbg !3568
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3569, metadata !61), !dbg !3570
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3571, metadata !61), !dbg !3572
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3573, metadata !61), !dbg !3574
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !3575, metadata !61), !dbg !3576
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3577, metadata !61), !dbg !3576
  %12 = load double, double* %6, align 8, !dbg !3576
  %13 = load double, double* %7, align 8, !dbg !3576
  %14 = load double, double* %8, align 8, !dbg !3576
  %15 = load double, double* %9, align 8, !dbg !3576
  %16 = call i32 @gsl_sf_hyperg_2F1_renorm_e(double %12, double %13, double %14, double %15, %struct.gsl_sf_result_struct* %10), !dbg !3576
  store i32 %16, i32* %11, align 4, !dbg !3576
  %17 = load i32, i32* %11, align 4, !dbg !3578
  %18 = icmp ne i32 %17, 0, !dbg !3578
  br i1 %18, label %19, label %25, !dbg !3576

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !3580, !llvm.loop !3583

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %11, align 4, !dbg !3585
  call void @gsl_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 958, i32 %21), !dbg !3585
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3585
  %23 = load double, double* %22, align 8, !dbg !3585
  store double %23, double* %5, align 8, !dbg !3585
  br label %28, !dbg !3585
                                                  ; No predecessors!
  br label %25, !dbg !3588

; <label>:25:                                     ; preds = %24, %4
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3590
  %27 = load double, double* %26, align 8, !dbg !3590
  store double %27, double* %5, align 8, !dbg !3590
  br label %28, !dbg !3590

; <label>:28:                                     ; preds = %25, %20
  %29 = load double, double* %5, align 8, !dbg !3592
  ret double %29, !dbg !3592
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_2F1_conj_renorm(double, double, double, double) #0 !dbg !3593 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3594, metadata !61), !dbg !3595
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3596, metadata !61), !dbg !3597
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3598, metadata !61), !dbg !3599
  store double %3, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3600, metadata !61), !dbg !3601
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !3602, metadata !61), !dbg !3603
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3604, metadata !61), !dbg !3603
  %12 = load double, double* %6, align 8, !dbg !3603
  %13 = load double, double* %7, align 8, !dbg !3603
  %14 = load double, double* %8, align 8, !dbg !3603
  %15 = load double, double* %9, align 8, !dbg !3603
  %16 = call i32 @gsl_sf_hyperg_2F1_conj_renorm_e(double %12, double %13, double %14, double %15, %struct.gsl_sf_result_struct* %10), !dbg !3603
  store i32 %16, i32* %11, align 4, !dbg !3603
  %17 = load i32, i32* %11, align 4, !dbg !3605
  %18 = icmp ne i32 %17, 0, !dbg !3605
  br i1 %18, label %19, label %25, !dbg !3603

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !3607, !llvm.loop !3610

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %11, align 4, !dbg !3612
  call void @gsl_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 963, i32 %21), !dbg !3612
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3612
  %23 = load double, double* %22, align 8, !dbg !3612
  store double %23, double* %5, align 8, !dbg !3612
  br label %28, !dbg !3612
                                                  ; No predecessors!
  br label %25, !dbg !3615

; <label>:25:                                     ; preds = %24, %4
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !3617
  %27 = load double, double* %26, align 8, !dbg !3617
  store double %27, double* %5, align 8, !dbg !3617
  br label %28, !dbg !3617

; <label>:28:                                     ; preds = %25, %20
  %29 = load double, double* %5, align 8, !dbg !3619
  ret double %29, !dbg !3619
}

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @gsl_sf_psi_e(double, %struct.gsl_sf_result_struct*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "hyperg_2F1.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!47 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_e", scope: !1, file: !1, line: 643, type: !48, isLocal: false, isDefinition: true, scopeLine: 646, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !42, !42, !51, !51, !52}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !54, line: 41, baseType: !55)
!54 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !54, line: 37, size: 128, align: 64, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !55, file: !54, line: 38, baseType: !42, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !55, file: !54, line: 39, baseType: !42, size: 64, align: 64, offset: 64)
!59 = !{}
!60 = !DILocalVariable(name: "a", arg: 1, scope: !47, file: !1, line: 643, type: !42)
!61 = !DIExpression()
!62 = !DILocation(line: 643, column: 28, scope: !47)
!63 = !DILocalVariable(name: "b", arg: 2, scope: !47, file: !1, line: 643, type: !42)
!64 = !DILocation(line: 643, column: 38, scope: !47)
!65 = !DILocalVariable(name: "c", arg: 3, scope: !47, file: !1, line: 643, type: !51)
!66 = !DILocation(line: 643, column: 54, scope: !47)
!67 = !DILocalVariable(name: "x", arg: 4, scope: !47, file: !1, line: 644, type: !51)
!68 = !DILocation(line: 644, column: 37, scope: !47)
!69 = !DILocalVariable(name: "result", arg: 5, scope: !47, file: !1, line: 645, type: !52)
!70 = !DILocation(line: 645, column: 40, scope: !47)
!71 = !DILocalVariable(name: "d", scope: !47, file: !1, line: 647, type: !51)
!72 = !DILocation(line: 647, column: 16, scope: !47)
!73 = !DILocation(line: 647, column: 20, scope: !47)
!74 = !DILocation(line: 647, column: 24, scope: !47)
!75 = !DILocation(line: 647, column: 22, scope: !47)
!76 = !DILocation(line: 647, column: 28, scope: !47)
!77 = !DILocation(line: 647, column: 26, scope: !47)
!78 = !DILocalVariable(name: "rinta", scope: !47, file: !1, line: 648, type: !51)
!79 = !DILocation(line: 648, column: 16, scope: !47)
!80 = !DILocation(line: 648, column: 30, scope: !47)
!81 = !DILocation(line: 648, column: 32, scope: !47)
!82 = !DILocation(line: 648, column: 24, scope: !47)
!83 = !DILocalVariable(name: "rintb", scope: !47, file: !1, line: 649, type: !51)
!84 = !DILocation(line: 649, column: 16, scope: !47)
!85 = !DILocation(line: 649, column: 30, scope: !47)
!86 = !DILocation(line: 649, column: 32, scope: !47)
!87 = !DILocation(line: 649, column: 24, scope: !47)
!88 = !DILocalVariable(name: "rintc", scope: !47, file: !1, line: 650, type: !51)
!89 = !DILocation(line: 650, column: 16, scope: !47)
!90 = !DILocation(line: 650, column: 30, scope: !47)
!91 = !DILocation(line: 650, column: 32, scope: !47)
!92 = !DILocation(line: 650, column: 24, scope: !47)
!93 = !DILocalVariable(name: "a_neg_integer", scope: !47, file: !1, line: 651, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!95 = !DILocation(line: 651, column: 13, scope: !47)
!96 = !DILocation(line: 651, column: 31, scope: !47)
!97 = !DILocation(line: 651, column: 33, scope: !47)
!98 = !DILocation(line: 651, column: 40, scope: !47)
!99 = !DILocation(line: 651, column: 49, scope: !100)
!100 = !DILexicalBlockFile(scope: !47, file: !1, discriminator: 1)
!101 = !DILocation(line: 651, column: 53, scope: !100)
!102 = !DILocation(line: 651, column: 51, scope: !100)
!103 = !DILocation(line: 651, column: 44, scope: !100)
!104 = !DILocation(line: 651, column: 60, scope: !100)
!105 = !DILocation(line: 651, column: 40, scope: !106)
!106 = !DILexicalBlockFile(scope: !47, file: !1, discriminator: 2)
!107 = !DILocation(line: 651, column: 13, scope: !106)
!108 = !DILocalVariable(name: "b_neg_integer", scope: !47, file: !1, line: 652, type: !94)
!109 = !DILocation(line: 652, column: 13, scope: !47)
!110 = !DILocation(line: 652, column: 31, scope: !47)
!111 = !DILocation(line: 652, column: 33, scope: !47)
!112 = !DILocation(line: 652, column: 40, scope: !47)
!113 = !DILocation(line: 652, column: 49, scope: !100)
!114 = !DILocation(line: 652, column: 53, scope: !100)
!115 = !DILocation(line: 652, column: 51, scope: !100)
!116 = !DILocation(line: 652, column: 44, scope: !100)
!117 = !DILocation(line: 652, column: 60, scope: !100)
!118 = !DILocation(line: 652, column: 40, scope: !106)
!119 = !DILocation(line: 652, column: 13, scope: !106)
!120 = !DILocalVariable(name: "c_neg_integer", scope: !47, file: !1, line: 653, type: !94)
!121 = !DILocation(line: 653, column: 13, scope: !47)
!122 = !DILocation(line: 653, column: 31, scope: !47)
!123 = !DILocation(line: 653, column: 33, scope: !47)
!124 = !DILocation(line: 653, column: 40, scope: !47)
!125 = !DILocation(line: 653, column: 49, scope: !100)
!126 = !DILocation(line: 653, column: 53, scope: !100)
!127 = !DILocation(line: 653, column: 51, scope: !100)
!128 = !DILocation(line: 653, column: 44, scope: !100)
!129 = !DILocation(line: 653, column: 60, scope: !100)
!130 = !DILocation(line: 653, column: 40, scope: !106)
!131 = !DILocation(line: 653, column: 13, scope: !106)
!132 = !DILocation(line: 655, column: 3, scope: !47)
!133 = !DILocation(line: 655, column: 11, scope: !47)
!134 = !DILocation(line: 655, column: 15, scope: !47)
!135 = !DILocation(line: 656, column: 3, scope: !47)
!136 = !DILocation(line: 656, column: 11, scope: !47)
!137 = !DILocation(line: 656, column: 15, scope: !47)
!138 = !DILocation(line: 660, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !47, file: !1, line: 660, column: 7)
!140 = !DILocation(line: 660, column: 15, scope: !139)
!141 = !DILocation(line: 660, column: 7, scope: !139)
!142 = !DILocation(line: 660, column: 22, scope: !139)
!143 = !DILocation(line: 660, column: 31, scope: !139)
!144 = !DILocation(line: 660, column: 35, scope: !145)
!145 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 1)
!146 = !DILocation(line: 660, column: 39, scope: !145)
!147 = !DILocation(line: 660, column: 37, scope: !145)
!148 = !DILocation(line: 660, column: 43, scope: !145)
!149 = !DILocation(line: 660, column: 41, scope: !145)
!150 = !DILocation(line: 660, column: 46, scope: !145)
!151 = !DILocation(line: 660, column: 50, scope: !145)
!152 = !DILocation(line: 660, column: 53, scope: !153)
!153 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 2)
!154 = !DILocation(line: 660, column: 55, scope: !153)
!155 = !DILocation(line: 660, column: 60, scope: !153)
!156 = !DILocation(line: 660, column: 64, scope: !157)
!157 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 3)
!158 = !DILocation(line: 660, column: 7, scope: !157)
!159 = !DILocalVariable(name: "lngamc", scope: !160, file: !1, line: 661, type: !53)
!160 = distinct !DILexicalBlock(scope: !139, file: !1, line: 660, column: 79)
!161 = !DILocation(line: 661, column: 19, scope: !160)
!162 = !DILocalVariable(name: "lngamcab", scope: !160, file: !1, line: 661, type: !53)
!163 = !DILocation(line: 661, column: 27, scope: !160)
!164 = !DILocalVariable(name: "lngamca", scope: !160, file: !1, line: 661, type: !53)
!165 = !DILocation(line: 661, column: 37, scope: !160)
!166 = !DILocalVariable(name: "lngamcb", scope: !160, file: !1, line: 661, type: !53)
!167 = !DILocation(line: 661, column: 46, scope: !160)
!168 = !DILocalVariable(name: "lngamc_sgn", scope: !160, file: !1, line: 662, type: !42)
!169 = !DILocation(line: 662, column: 12, scope: !160)
!170 = !DILocalVariable(name: "lngamca_sgn", scope: !160, file: !1, line: 662, type: !42)
!171 = !DILocation(line: 662, column: 24, scope: !160)
!172 = !DILocalVariable(name: "lngamcb_sgn", scope: !160, file: !1, line: 662, type: !42)
!173 = !DILocation(line: 662, column: 37, scope: !160)
!174 = !DILocalVariable(name: "status", scope: !160, file: !1, line: 663, type: !50)
!175 = !DILocation(line: 663, column: 9, scope: !160)
!176 = !DILocalVariable(name: "stat1", scope: !160, file: !1, line: 664, type: !50)
!177 = !DILocation(line: 664, column: 9, scope: !160)
!178 = !DILocation(line: 664, column: 39, scope: !160)
!179 = !DILocation(line: 664, column: 17, scope: !160)
!180 = !DILocalVariable(name: "stat2", scope: !160, file: !1, line: 665, type: !50)
!181 = !DILocation(line: 665, column: 9, scope: !160)
!182 = !DILocation(line: 665, column: 35, scope: !160)
!183 = !DILocation(line: 665, column: 39, scope: !160)
!184 = !DILocation(line: 665, column: 37, scope: !160)
!185 = !DILocation(line: 665, column: 43, scope: !160)
!186 = !DILocation(line: 665, column: 41, scope: !160)
!187 = !DILocation(line: 665, column: 17, scope: !160)
!188 = !DILocalVariable(name: "stat3", scope: !160, file: !1, line: 666, type: !50)
!189 = !DILocation(line: 666, column: 9, scope: !160)
!190 = !DILocation(line: 666, column: 39, scope: !160)
!191 = !DILocation(line: 666, column: 43, scope: !160)
!192 = !DILocation(line: 666, column: 41, scope: !160)
!193 = !DILocation(line: 666, column: 17, scope: !160)
!194 = !DILocalVariable(name: "stat4", scope: !160, file: !1, line: 667, type: !50)
!195 = !DILocation(line: 667, column: 9, scope: !160)
!196 = !DILocation(line: 667, column: 39, scope: !160)
!197 = !DILocation(line: 667, column: 43, scope: !160)
!198 = !DILocation(line: 667, column: 41, scope: !160)
!199 = !DILocation(line: 667, column: 17, scope: !160)
!200 = !DILocation(line: 669, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !160, file: !1, line: 669, column: 9)
!202 = !DILocation(line: 669, column: 15, scope: !201)
!203 = !DILocation(line: 669, column: 30, scope: !201)
!204 = !DILocation(line: 669, column: 33, scope: !205)
!205 = !DILexicalBlockFile(scope: !201, file: !1, discriminator: 1)
!206 = !DILocation(line: 669, column: 39, scope: !205)
!207 = !DILocation(line: 670, column: 9, scope: !201)
!208 = !DILocation(line: 670, column: 12, scope: !205)
!209 = !DILocation(line: 670, column: 18, scope: !205)
!210 = !DILocation(line: 670, column: 33, scope: !205)
!211 = !DILocation(line: 670, column: 36, scope: !212)
!212 = !DILexicalBlockFile(scope: !201, file: !1, discriminator: 2)
!213 = !DILocation(line: 670, column: 42, scope: !212)
!214 = !DILocation(line: 669, column: 9, scope: !215)
!215 = !DILexicalBlockFile(scope: !160, file: !1, discriminator: 2)
!216 = !DILocation(line: 672, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !201, file: !1, line: 671, column: 7)
!218 = distinct !{!218, !216}
!219 = !DILocation(line: 672, column: 9, scope: !220)
!220 = !DILexicalBlockFile(scope: !221, file: !1, discriminator: 1)
!221 = distinct !DILexicalBlock(scope: !217, file: !1, line: 672, column: 9)
!222 = distinct !{!222, !223}
!223 = !DILocation(line: 672, column: 9, scope: !221)
!224 = !DILocation(line: 672, column: 9, scope: !225)
!225 = !DILexicalBlockFile(scope: !226, file: !1, discriminator: 2)
!226 = distinct !DILexicalBlock(scope: !221, file: !1, line: 672, column: 9)
!227 = !DILocation(line: 672, column: 9, scope: !228)
!228 = !DILexicalBlockFile(scope: !221, file: !1, discriminator: 3)
!229 = !DILocation(line: 673, column: 7, scope: !217)
!230 = !DILocation(line: 676, column: 32, scope: !160)
!231 = !DILocation(line: 676, column: 47, scope: !160)
!232 = !DILocation(line: 676, column: 36, scope: !160)
!233 = !DILocation(line: 676, column: 61, scope: !160)
!234 = !DILocation(line: 676, column: 51, scope: !160)
!235 = !DILocation(line: 676, column: 75, scope: !160)
!236 = !DILocation(line: 676, column: 65, scope: !160)
!237 = !DILocation(line: 677, column: 32, scope: !160)
!238 = !DILocation(line: 677, column: 47, scope: !160)
!239 = !DILocation(line: 677, column: 36, scope: !160)
!240 = !DILocation(line: 677, column: 61, scope: !160)
!241 = !DILocation(line: 677, column: 51, scope: !160)
!242 = !DILocation(line: 677, column: 75, scope: !160)
!243 = !DILocation(line: 677, column: 65, scope: !160)
!244 = !DILocation(line: 678, column: 25, scope: !160)
!245 = !DILocation(line: 676, column: 7, scope: !160)
!246 = !DILocation(line: 675, column: 12, scope: !160)
!247 = !DILocation(line: 680, column: 20, scope: !160)
!248 = !DILocation(line: 680, column: 34, scope: !160)
!249 = !DILocation(line: 680, column: 48, scope: !160)
!250 = !DILocation(line: 680, column: 46, scope: !160)
!251 = !DILocation(line: 680, column: 31, scope: !160)
!252 = !DILocation(line: 680, column: 5, scope: !160)
!253 = !DILocation(line: 680, column: 13, scope: !160)
!254 = !DILocation(line: 680, column: 17, scope: !160)
!255 = !DILocation(line: 681, column: 14, scope: !160)
!256 = !DILocation(line: 681, column: 7, scope: !160)
!257 = !DILocation(line: 684, column: 6, scope: !258)
!258 = distinct !DILexicalBlock(scope: !47, file: !1, line: 684, column: 6)
!259 = !DILocation(line: 684, column: 8, scope: !258)
!260 = !DILocation(line: 684, column: 15, scope: !258)
!261 = !DILocation(line: 684, column: 25, scope: !262)
!262 = !DILexicalBlockFile(scope: !258, file: !1, discriminator: 1)
!263 = !DILocation(line: 684, column: 22, scope: !262)
!264 = !DILocation(line: 684, column: 6, scope: !262)
!265 = !DILocation(line: 685, column: 5, scope: !266)
!266 = distinct !DILexicalBlock(scope: !258, file: !1, line: 684, column: 28)
!267 = distinct !{!267, !265}
!268 = !DILocation(line: 685, column: 5, scope: !269)
!269 = !DILexicalBlockFile(scope: !270, file: !1, discriminator: 1)
!270 = distinct !DILexicalBlock(scope: !266, file: !1, line: 685, column: 5)
!271 = distinct !{!271, !272}
!272 = !DILocation(line: 685, column: 5, scope: !270)
!273 = !DILocation(line: 685, column: 5, scope: !274)
!274 = !DILexicalBlockFile(scope: !275, file: !1, discriminator: 2)
!275 = distinct !DILexicalBlock(scope: !270, file: !1, line: 685, column: 5)
!276 = !DILocation(line: 685, column: 5, scope: !277)
!277 = !DILexicalBlockFile(scope: !270, file: !1, discriminator: 3)
!278 = !DILocation(line: 686, column: 3, scope: !266)
!279 = !DILocation(line: 688, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !47, file: !1, line: 688, column: 6)
!281 = !DILocation(line: 688, column: 6, scope: !47)
!282 = !DILocation(line: 692, column: 11, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 692, column: 8)
!284 = distinct !DILexicalBlock(scope: !280, file: !1, line: 688, column: 21)
!285 = !DILocation(line: 692, column: 25, scope: !283)
!286 = !DILocation(line: 692, column: 28, scope: !287)
!287 = !DILexicalBlockFile(scope: !283, file: !1, discriminator: 1)
!288 = !DILocation(line: 692, column: 32, scope: !287)
!289 = !DILocation(line: 692, column: 34, scope: !287)
!290 = !DILocation(line: 692, column: 30, scope: !287)
!291 = !DILocation(line: 692, column: 41, scope: !287)
!292 = !DILocation(line: 692, column: 47, scope: !293)
!293 = !DILexicalBlockFile(scope: !283, file: !1, discriminator: 2)
!294 = !DILocation(line: 692, column: 61, scope: !293)
!295 = !DILocation(line: 692, column: 64, scope: !296)
!296 = !DILexicalBlockFile(scope: !283, file: !1, discriminator: 3)
!297 = !DILocation(line: 692, column: 68, scope: !296)
!298 = !DILocation(line: 692, column: 70, scope: !296)
!299 = !DILocation(line: 692, column: 66, scope: !296)
!300 = !DILocation(line: 692, column: 8, scope: !296)
!301 = !DILocation(line: 693, column: 7, scope: !302)
!302 = distinct !DILexicalBlock(scope: !283, file: !1, line: 692, column: 78)
!303 = distinct !{!303, !301}
!304 = !DILocation(line: 693, column: 7, scope: !305)
!305 = !DILexicalBlockFile(scope: !306, file: !1, discriminator: 1)
!306 = distinct !DILexicalBlock(scope: !302, file: !1, line: 693, column: 7)
!307 = distinct !{!307, !308}
!308 = !DILocation(line: 693, column: 7, scope: !306)
!309 = !DILocation(line: 693, column: 7, scope: !310)
!310 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 2)
!311 = distinct !DILexicalBlock(scope: !306, file: !1, line: 693, column: 7)
!312 = !DILocation(line: 693, column: 7, scope: !313)
!313 = !DILexicalBlockFile(scope: !306, file: !1, discriminator: 3)
!314 = !DILocation(line: 694, column: 5, scope: !302)
!315 = !DILocation(line: 695, column: 3, scope: !284)
!316 = !DILocation(line: 697, column: 11, scope: !317)
!317 = distinct !DILexicalBlock(scope: !47, file: !1, line: 697, column: 6)
!318 = !DILocation(line: 697, column: 13, scope: !317)
!319 = !DILocation(line: 697, column: 12, scope: !317)
!320 = !DILocation(line: 697, column: 6, scope: !317)
!321 = !DILocation(line: 697, column: 16, scope: !317)
!322 = !DILocation(line: 697, column: 25, scope: !317)
!323 = !DILocation(line: 697, column: 33, scope: !324)
!324 = !DILexicalBlockFile(scope: !317, file: !1, discriminator: 1)
!325 = !DILocation(line: 697, column: 35, scope: !324)
!326 = !DILocation(line: 697, column: 34, scope: !324)
!327 = !DILocation(line: 697, column: 28, scope: !324)
!328 = !DILocation(line: 697, column: 38, scope: !324)
!329 = !DILocation(line: 697, column: 6, scope: !324)
!330 = !DILocation(line: 698, column: 20, scope: !331)
!331 = distinct !DILexicalBlock(scope: !317, file: !1, line: 697, column: 48)
!332 = !DILocation(line: 698, column: 23, scope: !331)
!333 = !DILocation(line: 698, column: 26, scope: !331)
!334 = !DILocation(line: 698, column: 12, scope: !331)
!335 = !DILocation(line: 698, column: 5, scope: !331)
!336 = !DILocation(line: 701, column: 6, scope: !337)
!337 = distinct !DILexicalBlock(scope: !47, file: !1, line: 701, column: 6)
!338 = !DILocation(line: 701, column: 8, scope: !337)
!339 = !DILocation(line: 701, column: 15, scope: !337)
!340 = !DILocation(line: 701, column: 18, scope: !341)
!341 = !DILexicalBlockFile(scope: !337, file: !1, discriminator: 1)
!342 = !DILocation(line: 701, column: 20, scope: !341)
!343 = !DILocation(line: 701, column: 27, scope: !341)
!344 = !DILocation(line: 701, column: 30, scope: !345)
!345 = !DILexicalBlockFile(scope: !337, file: !1, discriminator: 2)
!346 = !DILocation(line: 701, column: 32, scope: !345)
!347 = !DILocation(line: 701, column: 38, scope: !345)
!348 = !DILocation(line: 701, column: 41, scope: !349)
!349 = !DILexicalBlockFile(scope: !337, file: !1, discriminator: 3)
!350 = !DILocation(line: 701, column: 43, scope: !349)
!351 = !DILocation(line: 701, column: 50, scope: !349)
!352 = !DILocation(line: 701, column: 53, scope: !353)
!353 = !DILexicalBlockFile(scope: !337, file: !1, discriminator: 4)
!354 = !DILocation(line: 701, column: 55, scope: !353)
!355 = !DILocation(line: 701, column: 6, scope: !353)
!356 = !DILocation(line: 705, column: 30, scope: !357)
!357 = distinct !DILexicalBlock(scope: !337, file: !1, line: 701, column: 64)
!358 = !DILocation(line: 705, column: 33, scope: !357)
!359 = !DILocation(line: 705, column: 36, scope: !357)
!360 = !DILocation(line: 705, column: 39, scope: !357)
!361 = !DILocation(line: 705, column: 42, scope: !357)
!362 = !DILocation(line: 705, column: 12, scope: !357)
!363 = !DILocation(line: 705, column: 5, scope: !357)
!364 = !DILocation(line: 708, column: 11, scope: !365)
!365 = distinct !DILexicalBlock(scope: !47, file: !1, line: 708, column: 6)
!366 = !DILocation(line: 708, column: 6, scope: !365)
!367 = !DILocation(line: 708, column: 14, scope: !365)
!368 = !DILocation(line: 708, column: 21, scope: !365)
!369 = !DILocation(line: 708, column: 29, scope: !370)
!370 = !DILexicalBlockFile(scope: !365, file: !1, discriminator: 1)
!371 = !DILocation(line: 708, column: 24, scope: !370)
!372 = !DILocation(line: 708, column: 32, scope: !370)
!373 = !DILocation(line: 708, column: 6, scope: !370)
!374 = !DILocation(line: 712, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !1, line: 712, column: 8)
!376 = distinct !DILexicalBlock(scope: !365, file: !1, line: 708, column: 40)
!377 = !DILocation(line: 712, column: 8, scope: !376)
!378 = !DILocation(line: 713, column: 32, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !1, line: 712, column: 23)
!380 = !DILocation(line: 713, column: 39, scope: !379)
!381 = !DILocation(line: 713, column: 42, scope: !379)
!382 = !DILocation(line: 713, column: 45, scope: !379)
!383 = !DILocation(line: 713, column: 48, scope: !379)
!384 = !DILocation(line: 713, column: 14, scope: !379)
!385 = !DILocation(line: 713, column: 7, scope: !379)
!386 = !DILocation(line: 715, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !376, file: !1, line: 715, column: 8)
!388 = !DILocation(line: 715, column: 8, scope: !376)
!389 = !DILocation(line: 716, column: 32, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !1, line: 715, column: 23)
!391 = !DILocation(line: 716, column: 35, scope: !390)
!392 = !DILocation(line: 716, column: 42, scope: !390)
!393 = !DILocation(line: 716, column: 45, scope: !390)
!394 = !DILocation(line: 716, column: 48, scope: !390)
!395 = !DILocation(line: 716, column: 14, scope: !390)
!396 = !DILocation(line: 716, column: 7, scope: !390)
!397 = !DILocation(line: 719, column: 8, scope: !398)
!398 = distinct !DILexicalBlock(scope: !376, file: !1, line: 719, column: 8)
!399 = !DILocation(line: 719, column: 10, scope: !398)
!400 = !DILocation(line: 719, column: 8, scope: !376)
!401 = !DILocation(line: 720, column: 30, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !1, line: 719, column: 19)
!403 = !DILocation(line: 720, column: 33, scope: !402)
!404 = !DILocation(line: 720, column: 36, scope: !402)
!405 = !DILocation(line: 720, column: 39, scope: !402)
!406 = !DILocation(line: 720, column: 42, scope: !402)
!407 = !DILocation(line: 720, column: 14, scope: !402)
!408 = !DILocation(line: 720, column: 7, scope: !402)
!409 = !DILocation(line: 722, column: 13, scope: !410)
!410 = distinct !DILexicalBlock(scope: !398, file: !1, line: 722, column: 13)
!411 = !DILocation(line: 722, column: 15, scope: !410)
!412 = !DILocation(line: 722, column: 13, scope: !398)
!413 = !DILocation(line: 723, column: 32, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !1, line: 722, column: 22)
!415 = !DILocation(line: 723, column: 35, scope: !414)
!416 = !DILocation(line: 723, column: 38, scope: !414)
!417 = !DILocation(line: 723, column: 41, scope: !414)
!418 = !DILocation(line: 723, column: 44, scope: !414)
!419 = !DILocation(line: 723, column: 14, scope: !414)
!420 = !DILocation(line: 723, column: 7, scope: !414)
!421 = !DILocation(line: 726, column: 15, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !1, line: 726, column: 10)
!423 = distinct !DILexicalBlock(scope: !410, file: !1, line: 725, column: 10)
!424 = !DILocation(line: 726, column: 10, scope: !422)
!425 = !DILocation(line: 726, column: 18, scope: !422)
!426 = !DILocation(line: 726, column: 10, scope: !423)
!427 = !DILocation(line: 727, column: 34, scope: !428)
!428 = distinct !DILexicalBlock(scope: !422, file: !1, line: 726, column: 26)
!429 = !DILocation(line: 727, column: 37, scope: !428)
!430 = !DILocation(line: 727, column: 40, scope: !428)
!431 = !DILocation(line: 727, column: 43, scope: !428)
!432 = !DILocation(line: 727, column: 46, scope: !428)
!433 = !DILocation(line: 727, column: 16, scope: !428)
!434 = !DILocation(line: 727, column: 9, scope: !428)
!435 = !DILocation(line: 730, column: 35, scope: !436)
!436 = distinct !DILexicalBlock(scope: !422, file: !1, line: 729, column: 12)
!437 = !DILocation(line: 730, column: 38, scope: !436)
!438 = !DILocation(line: 730, column: 41, scope: !436)
!439 = !DILocation(line: 730, column: 44, scope: !436)
!440 = !DILocation(line: 730, column: 47, scope: !436)
!441 = !DILocation(line: 730, column: 16, scope: !436)
!442 = !DILocation(line: 730, column: 9, scope: !436)
!443 = !DILocalVariable(name: "ap", scope: !444, file: !1, line: 739, type: !42)
!444 = distinct !DILexicalBlock(scope: !365, file: !1, line: 734, column: 8)
!445 = !DILocation(line: 739, column: 12, scope: !444)
!446 = !DILocalVariable(name: "bp", scope: !444, file: !1, line: 739, type: !42)
!447 = !DILocation(line: 739, column: 16, scope: !444)
!448 = !DILocation(line: 740, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !1, line: 740, column: 8)
!450 = !DILocation(line: 740, column: 8, scope: !449)
!451 = !DILocation(line: 740, column: 23, scope: !449)
!452 = !DILocation(line: 740, column: 18, scope: !453)
!453 = !DILexicalBlockFile(scope: !449, file: !1, discriminator: 1)
!454 = !DILocation(line: 740, column: 16, scope: !449)
!455 = !DILocation(line: 740, column: 8, scope: !444)
!456 = !DILocation(line: 741, column: 12, scope: !457)
!457 = distinct !DILexicalBlock(scope: !449, file: !1, line: 740, column: 27)
!458 = !DILocation(line: 741, column: 10, scope: !457)
!459 = !DILocation(line: 742, column: 12, scope: !457)
!460 = !DILocation(line: 742, column: 10, scope: !457)
!461 = !DILocation(line: 743, column: 5, scope: !457)
!462 = !DILocation(line: 745, column: 12, scope: !463)
!463 = distinct !DILexicalBlock(scope: !449, file: !1, line: 744, column: 10)
!464 = !DILocation(line: 745, column: 10, scope: !463)
!465 = !DILocation(line: 746, column: 12, scope: !463)
!466 = !DILocation(line: 746, column: 10, scope: !463)
!467 = !DILocation(line: 749, column: 8, scope: !468)
!468 = distinct !DILexicalBlock(scope: !444, file: !1, line: 749, column: 8)
!469 = !DILocation(line: 749, column: 10, scope: !468)
!470 = !DILocation(line: 749, column: 8, scope: !444)
!471 = !DILocation(line: 752, column: 30, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !1, line: 749, column: 17)
!473 = !DILocation(line: 752, column: 33, scope: !472)
!474 = !DILocation(line: 752, column: 36, scope: !472)
!475 = !DILocation(line: 752, column: 39, scope: !472)
!476 = !DILocation(line: 752, column: 42, scope: !472)
!477 = !DILocation(line: 752, column: 14, scope: !472)
!478 = !DILocation(line: 752, column: 7, scope: !472)
!479 = !DILocation(line: 755, column: 25, scope: !480)
!480 = distinct !DILexicalBlock(scope: !444, file: !1, line: 755, column: 8)
!481 = !DILocation(line: 755, column: 20, scope: !480)
!482 = !DILocation(line: 755, column: 8, scope: !483)
!483 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 1)
!484 = !DILocation(line: 755, column: 39, scope: !480)
!485 = !DILocation(line: 755, column: 34, scope: !486)
!486 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 2)
!487 = !DILocation(line: 755, column: 33, scope: !480)
!488 = !DILocation(line: 755, column: 48, scope: !480)
!489 = !DILocation(line: 755, column: 43, scope: !490)
!490 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 3)
!491 = !DILocation(line: 755, column: 42, scope: !480)
!492 = !DILocation(line: 755, column: 62, scope: !480)
!493 = !DILocation(line: 755, column: 57, scope: !494)
!494 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 4)
!495 = !DILocation(line: 755, column: 56, scope: !480)
!496 = !DILocation(line: 755, column: 51, scope: !480)
!497 = !DILocation(line: 755, column: 8, scope: !444)
!498 = !DILocation(line: 759, column: 32, scope: !499)
!499 = distinct !DILexicalBlock(scope: !480, file: !1, line: 755, column: 66)
!500 = !DILocation(line: 759, column: 35, scope: !499)
!501 = !DILocation(line: 759, column: 38, scope: !499)
!502 = !DILocation(line: 759, column: 41, scope: !499)
!503 = !DILocation(line: 759, column: 44, scope: !499)
!504 = !DILocation(line: 759, column: 14, scope: !499)
!505 = !DILocation(line: 759, column: 7, scope: !499)
!506 = !DILocation(line: 762, column: 13, scope: !507)
!507 = distinct !DILexicalBlock(scope: !444, file: !1, line: 762, column: 8)
!508 = !DILocation(line: 762, column: 16, scope: !507)
!509 = !DILocation(line: 762, column: 15, scope: !507)
!510 = !DILocation(line: 762, column: 19, scope: !507)
!511 = !DILocation(line: 762, column: 18, scope: !507)
!512 = !DILocation(line: 762, column: 21, scope: !507)
!513 = !DILocation(line: 762, column: 20, scope: !507)
!514 = !DILocation(line: 762, column: 8, scope: !507)
!515 = !DILocation(line: 762, column: 37, scope: !507)
!516 = !DILocation(line: 762, column: 32, scope: !517)
!517 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 2)
!518 = !DILocation(line: 762, column: 31, scope: !507)
!519 = !DILocation(line: 762, column: 24, scope: !507)
!520 = !DILocation(line: 762, column: 41, scope: !507)
!521 = !DILocation(line: 762, column: 49, scope: !522)
!522 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 1)
!523 = !DILocation(line: 762, column: 44, scope: !522)
!524 = !DILocation(line: 762, column: 53, scope: !522)
!525 = !DILocation(line: 762, column: 8, scope: !522)
!526 = !DILocalVariable(name: "stat", scope: !527, file: !1, line: 765, type: !50)
!527 = distinct !DILexicalBlock(scope: !507, file: !1, line: 762, column: 61)
!528 = !DILocation(line: 765, column: 11, scope: !527)
!529 = !DILocation(line: 765, column: 38, scope: !527)
!530 = !DILocation(line: 765, column: 42, scope: !527)
!531 = !DILocation(line: 765, column: 45, scope: !527)
!532 = !DILocation(line: 765, column: 48, scope: !527)
!533 = !DILocation(line: 765, column: 47, scope: !527)
!534 = !DILocation(line: 765, column: 51, scope: !527)
!535 = !DILocation(line: 765, column: 18, scope: !527)
!536 = !DILocation(line: 766, column: 34, scope: !527)
!537 = !DILocation(line: 766, column: 42, scope: !527)
!538 = !DILocation(line: 766, column: 29, scope: !527)
!539 = !DILocation(line: 766, column: 27, scope: !527)
!540 = !DILocation(line: 766, column: 7, scope: !527)
!541 = !DILocation(line: 766, column: 15, scope: !527)
!542 = !DILocation(line: 766, column: 19, scope: !527)
!543 = !DILocation(line: 767, column: 14, scope: !527)
!544 = !DILocation(line: 767, column: 7, scope: !527)
!545 = !DILocation(line: 771, column: 5, scope: !444)
!546 = !DILocation(line: 771, column: 13, scope: !444)
!547 = !DILocation(line: 771, column: 17, scope: !444)
!548 = !DILocation(line: 772, column: 5, scope: !444)
!549 = !DILocation(line: 772, column: 13, scope: !444)
!550 = !DILocation(line: 772, column: 17, scope: !444)
!551 = !DILocation(line: 773, column: 5, scope: !444)
!552 = distinct !{!552, !551}
!553 = !DILocation(line: 773, column: 5, scope: !554)
!554 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 1)
!555 = distinct !DILexicalBlock(scope: !444, file: !1, line: 773, column: 5)
!556 = !DILocation(line: 775, column: 1, scope: !47)
!557 = distinct !DISubprogram(name: "pow_omx", scope: !1, file: !1, line: 625, type: !558, isLocal: true, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!558 = !DISubroutineType(types: !559)
!559 = !{!50, !51, !51, !52}
!560 = !DILocalVariable(name: "x", arg: 1, scope: !557, file: !1, line: 625, type: !51)
!561 = !DILocation(line: 625, column: 33, scope: !557)
!562 = !DILocalVariable(name: "p", arg: 2, scope: !557, file: !1, line: 625, type: !51)
!563 = !DILocation(line: 625, column: 49, scope: !557)
!564 = !DILocalVariable(name: "result", arg: 3, scope: !557, file: !1, line: 625, type: !52)
!565 = !DILocation(line: 625, column: 68, scope: !557)
!566 = !DILocalVariable(name: "ln_omx", scope: !557, file: !1, line: 627, type: !42)
!567 = !DILocation(line: 627, column: 10, scope: !557)
!568 = !DILocalVariable(name: "ln_result", scope: !557, file: !1, line: 628, type: !42)
!569 = !DILocation(line: 628, column: 10, scope: !557)
!570 = !DILocation(line: 629, column: 11, scope: !571)
!571 = distinct !DILexicalBlock(scope: !557, file: !1, line: 629, column: 6)
!572 = !DILocation(line: 629, column: 6, scope: !571)
!573 = !DILocation(line: 629, column: 14, scope: !571)
!574 = !DILocation(line: 629, column: 6, scope: !557)
!575 = !DILocation(line: 630, column: 15, scope: !576)
!576 = distinct !DILexicalBlock(scope: !571, file: !1, line: 629, column: 39)
!577 = !DILocation(line: 630, column: 14, scope: !576)
!578 = !DILocation(line: 630, column: 24, scope: !576)
!579 = !DILocation(line: 630, column: 37, scope: !576)
!580 = !DILocation(line: 630, column: 50, scope: !576)
!581 = !DILocation(line: 630, column: 51, scope: !576)
!582 = !DILocation(line: 630, column: 48, scope: !576)
!583 = !DILocation(line: 630, column: 58, scope: !576)
!584 = !DILocation(line: 630, column: 60, scope: !576)
!585 = !DILocation(line: 630, column: 59, scope: !576)
!586 = !DILocation(line: 630, column: 61, scope: !576)
!587 = !DILocation(line: 630, column: 56, scope: !576)
!588 = !DILocation(line: 630, column: 38, scope: !576)
!589 = !DILocation(line: 630, column: 35, scope: !576)
!590 = !DILocation(line: 630, column: 25, scope: !576)
!591 = !DILocation(line: 630, column: 22, scope: !576)
!592 = !DILocation(line: 630, column: 16, scope: !576)
!593 = !DILocation(line: 630, column: 12, scope: !576)
!594 = !DILocation(line: 631, column: 3, scope: !576)
!595 = !DILocation(line: 633, column: 22, scope: !596)
!596 = distinct !DILexicalBlock(scope: !571, file: !1, line: 632, column: 8)
!597 = !DILocation(line: 633, column: 21, scope: !596)
!598 = !DILocation(line: 633, column: 14, scope: !596)
!599 = !DILocation(line: 633, column: 12, scope: !596)
!600 = !DILocation(line: 635, column: 15, scope: !557)
!601 = !DILocation(line: 635, column: 19, scope: !557)
!602 = !DILocation(line: 635, column: 17, scope: !557)
!603 = !DILocation(line: 635, column: 13, scope: !557)
!604 = !DILocation(line: 636, column: 27, scope: !557)
!605 = !DILocation(line: 636, column: 61, scope: !557)
!606 = !DILocation(line: 636, column: 56, scope: !557)
!607 = !DILocation(line: 636, column: 54, scope: !557)
!608 = !DILocation(line: 636, column: 73, scope: !557)
!609 = !DILocation(line: 636, column: 10, scope: !610)
!610 = !DILexicalBlockFile(scope: !557, file: !1, discriminator: 1)
!611 = !DILocation(line: 636, column: 3, scope: !557)
!612 = distinct !DISubprogram(name: "hyperg_2F1_series", scope: !1, file: !1, line: 40, type: !613, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!613 = !DISubroutineType(types: !614)
!614 = !{!50, !51, !51, !51, !51, !52}
!615 = !DILocalVariable(name: "a", arg: 1, scope: !612, file: !1, line: 40, type: !51)
!616 = !DILocation(line: 40, column: 32, scope: !612)
!617 = !DILocalVariable(name: "b", arg: 2, scope: !612, file: !1, line: 40, type: !51)
!618 = !DILocation(line: 40, column: 48, scope: !612)
!619 = !DILocalVariable(name: "c", arg: 3, scope: !612, file: !1, line: 40, type: !51)
!620 = !DILocation(line: 40, column: 64, scope: !612)
!621 = !DILocalVariable(name: "x", arg: 4, scope: !612, file: !1, line: 41, type: !51)
!622 = !DILocation(line: 41, column: 32, scope: !612)
!623 = !DILocalVariable(name: "result", arg: 5, scope: !612, file: !1, line: 42, type: !52)
!624 = !DILocation(line: 42, column: 35, scope: !612)
!625 = !DILocalVariable(name: "sum_pos", scope: !612, file: !1, line: 45, type: !42)
!626 = !DILocation(line: 45, column: 10, scope: !612)
!627 = !DILocalVariable(name: "sum_neg", scope: !612, file: !1, line: 46, type: !42)
!628 = !DILocation(line: 46, column: 10, scope: !612)
!629 = !DILocalVariable(name: "del_pos", scope: !612, file: !1, line: 47, type: !42)
!630 = !DILocation(line: 47, column: 10, scope: !612)
!631 = !DILocalVariable(name: "del_neg", scope: !612, file: !1, line: 48, type: !42)
!632 = !DILocation(line: 48, column: 10, scope: !612)
!633 = !DILocalVariable(name: "del", scope: !612, file: !1, line: 49, type: !42)
!634 = !DILocation(line: 49, column: 10, scope: !612)
!635 = !DILocalVariable(name: "del_prev", scope: !612, file: !1, line: 50, type: !42)
!636 = !DILocation(line: 50, column: 10, scope: !612)
!637 = !DILocalVariable(name: "k", scope: !612, file: !1, line: 51, type: !42)
!638 = !DILocation(line: 51, column: 10, scope: !612)
!639 = !DILocalVariable(name: "i", scope: !612, file: !1, line: 52, type: !50)
!640 = !DILocation(line: 52, column: 7, scope: !612)
!641 = !DILocation(line: 54, column: 11, scope: !642)
!642 = distinct !DILexicalBlock(scope: !612, file: !1, line: 54, column: 6)
!643 = !DILocation(line: 54, column: 6, scope: !642)
!644 = !DILocation(line: 54, column: 14, scope: !642)
!645 = !DILocation(line: 54, column: 6, scope: !612)
!646 = !DILocation(line: 55, column: 5, scope: !647)
!647 = distinct !DILexicalBlock(scope: !642, file: !1, line: 54, column: 33)
!648 = !DILocation(line: 55, column: 13, scope: !647)
!649 = !DILocation(line: 55, column: 17, scope: !647)
!650 = !DILocation(line: 56, column: 5, scope: !647)
!651 = !DILocation(line: 56, column: 13, scope: !647)
!652 = !DILocation(line: 56, column: 17, scope: !647)
!653 = !DILocation(line: 57, column: 5, scope: !647)
!654 = distinct !{!654, !653}
!655 = !DILocation(line: 57, column: 5, scope: !656)
!656 = !DILexicalBlockFile(scope: !657, file: !1, discriminator: 1)
!657 = distinct !DILexicalBlock(scope: !647, file: !1, line: 57, column: 5)
!658 = !DILocation(line: 58, column: 3, scope: !647)
!659 = !DILocation(line: 60, column: 3, scope: !612)
!660 = distinct !{!660, !659}
!661 = !DILocation(line: 61, column: 8, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !1, line: 61, column: 8)
!663 = distinct !DILexicalBlock(scope: !612, file: !1, line: 60, column: 6)
!664 = !DILocation(line: 61, column: 12, scope: !662)
!665 = !DILocation(line: 61, column: 8, scope: !663)
!666 = !DILocation(line: 62, column: 22, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !1, line: 61, column: 21)
!668 = !DILocation(line: 62, column: 32, scope: !667)
!669 = !DILocation(line: 62, column: 30, scope: !667)
!670 = !DILocation(line: 62, column: 7, scope: !667)
!671 = !DILocation(line: 62, column: 15, scope: !667)
!672 = !DILocation(line: 62, column: 20, scope: !667)
!673 = !DILocation(line: 63, column: 22, scope: !667)
!674 = !DILocation(line: 63, column: 32, scope: !667)
!675 = !DILocation(line: 63, column: 30, scope: !667)
!676 = !DILocation(line: 63, column: 7, scope: !667)
!677 = !DILocation(line: 63, column: 15, scope: !667)
!678 = !DILocation(line: 63, column: 20, scope: !667)
!679 = !DILocation(line: 64, column: 47, scope: !667)
!680 = !DILocation(line: 64, column: 57, scope: !667)
!681 = !DILocation(line: 64, column: 55, scope: !667)
!682 = !DILocation(line: 64, column: 44, scope: !667)
!683 = !DILocation(line: 64, column: 7, scope: !667)
!684 = !DILocation(line: 64, column: 15, scope: !667)
!685 = !DILocation(line: 64, column: 19, scope: !667)
!686 = !DILocation(line: 65, column: 56, scope: !667)
!687 = !DILocation(line: 65, column: 51, scope: !667)
!688 = !DILocation(line: 65, column: 50, scope: !667)
!689 = !DILocation(line: 65, column: 58, scope: !667)
!690 = !DILocation(line: 65, column: 44, scope: !667)
!691 = !DILocation(line: 65, column: 71, scope: !667)
!692 = !DILocation(line: 65, column: 79, scope: !667)
!693 = !DILocation(line: 65, column: 66, scope: !694)
!694 = !DILexicalBlockFile(scope: !667, file: !1, discriminator: 1)
!695 = !DILocation(line: 65, column: 64, scope: !667)
!696 = !DILocation(line: 65, column: 7, scope: !667)
!697 = !DILocation(line: 65, column: 15, scope: !667)
!698 = !DILocation(line: 65, column: 19, scope: !667)
!699 = !DILocation(line: 66, column: 7, scope: !667)
!700 = distinct !{!700, !699}
!701 = !DILocation(line: 66, column: 7, scope: !702)
!702 = !DILexicalBlockFile(scope: !703, file: !1, discriminator: 1)
!703 = distinct !DILexicalBlock(scope: !667, file: !1, line: 66, column: 7)
!704 = !DILocation(line: 67, column: 5, scope: !667)
!705 = !DILocation(line: 68, column: 16, scope: !663)
!706 = !DILocation(line: 68, column: 14, scope: !663)
!707 = !DILocation(line: 69, column: 13, scope: !663)
!708 = !DILocation(line: 69, column: 15, scope: !663)
!709 = !DILocation(line: 69, column: 14, scope: !663)
!710 = !DILocation(line: 69, column: 19, scope: !663)
!711 = !DILocation(line: 69, column: 21, scope: !663)
!712 = !DILocation(line: 69, column: 20, scope: !663)
!713 = !DILocation(line: 69, column: 17, scope: !663)
!714 = !DILocation(line: 69, column: 26, scope: !663)
!715 = !DILocation(line: 69, column: 24, scope: !663)
!716 = !DILocation(line: 69, column: 32, scope: !663)
!717 = !DILocation(line: 69, column: 34, scope: !663)
!718 = !DILocation(line: 69, column: 33, scope: !663)
!719 = !DILocation(line: 69, column: 40, scope: !663)
!720 = !DILocation(line: 69, column: 41, scope: !663)
!721 = !DILocation(line: 69, column: 37, scope: !663)
!722 = !DILocation(line: 69, column: 28, scope: !663)
!723 = !DILocation(line: 69, column: 9, scope: !663)
!724 = !DILocation(line: 71, column: 8, scope: !725)
!725 = distinct !DILexicalBlock(scope: !663, file: !1, line: 71, column: 8)
!726 = !DILocation(line: 71, column: 12, scope: !725)
!727 = !DILocation(line: 71, column: 8, scope: !663)
!728 = !DILocation(line: 72, column: 19, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !1, line: 71, column: 19)
!730 = !DILocation(line: 72, column: 16, scope: !729)
!731 = !DILocation(line: 73, column: 19, scope: !729)
!732 = !DILocation(line: 73, column: 15, scope: !729)
!733 = !DILocation(line: 74, column: 5, scope: !729)
!734 = !DILocation(line: 75, column: 13, scope: !735)
!735 = distinct !DILexicalBlock(scope: !725, file: !1, line: 75, column: 13)
!736 = !DILocation(line: 75, column: 17, scope: !735)
!737 = !DILocation(line: 75, column: 13, scope: !725)
!738 = !DILocation(line: 78, column: 15, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !1, line: 75, column: 25)
!740 = !DILocation(line: 79, column: 15, scope: !739)
!741 = !DILocation(line: 80, column: 7, scope: !739)
!742 = !DILocation(line: 83, column: 19, scope: !743)
!743 = distinct !DILexicalBlock(scope: !735, file: !1, line: 82, column: 10)
!744 = !DILocation(line: 83, column: 18, scope: !743)
!745 = !DILocation(line: 83, column: 16, scope: !743)
!746 = !DILocation(line: 84, column: 19, scope: !743)
!747 = !DILocation(line: 84, column: 15, scope: !743)
!748 = !DILocation(line: 93, column: 14, scope: !749)
!749 = distinct !DILexicalBlock(scope: !663, file: !1, line: 93, column: 9)
!750 = !DILocation(line: 93, column: 26, scope: !749)
!751 = !DILocation(line: 93, column: 36, scope: !749)
!752 = !DILocation(line: 93, column: 34, scope: !749)
!753 = !DILocation(line: 93, column: 23, scope: !749)
!754 = !DILocation(line: 93, column: 9, scope: !749)
!755 = !DILocation(line: 93, column: 46, scope: !749)
!756 = !DILocation(line: 93, column: 64, scope: !749)
!757 = !DILocation(line: 94, column: 14, scope: !749)
!758 = !DILocation(line: 94, column: 21, scope: !749)
!759 = !DILocation(line: 94, column: 31, scope: !749)
!760 = !DILocation(line: 94, column: 29, scope: !749)
!761 = !DILocation(line: 94, column: 18, scope: !749)
!762 = !DILocation(line: 94, column: 9, scope: !749)
!763 = !DILocation(line: 94, column: 41, scope: !749)
!764 = !DILocation(line: 93, column: 9, scope: !765)
!765 = !DILexicalBlockFile(scope: !663, file: !1, discriminator: 1)
!766 = !DILocation(line: 95, column: 7, scope: !749)
!767 = !DILocation(line: 97, column: 7, scope: !663)
!768 = !DILocation(line: 98, column: 3, scope: !663)
!769 = !DILocation(line: 98, column: 17, scope: !770)
!770 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 1)
!771 = !DILocation(line: 98, column: 27, scope: !770)
!772 = !DILocation(line: 98, column: 25, scope: !770)
!773 = !DILocation(line: 98, column: 37, scope: !770)
!774 = !DILocation(line: 98, column: 45, scope: !770)
!775 = !DILocation(line: 98, column: 44, scope: !770)
!776 = !DILocation(line: 98, column: 35, scope: !770)
!777 = !DILocation(line: 98, column: 11, scope: !770)
!778 = !DILocation(line: 98, column: 55, scope: !770)
!779 = !DILocation(line: 98, column: 3, scope: !770)
!780 = !DILocation(line: 100, column: 18, scope: !612)
!781 = !DILocation(line: 100, column: 28, scope: !612)
!782 = !DILocation(line: 100, column: 26, scope: !612)
!783 = !DILocation(line: 100, column: 3, scope: !612)
!784 = !DILocation(line: 100, column: 11, scope: !612)
!785 = !DILocation(line: 100, column: 16, scope: !612)
!786 = !DILocation(line: 101, column: 18, scope: !612)
!787 = !DILocation(line: 101, column: 28, scope: !612)
!788 = !DILocation(line: 101, column: 26, scope: !612)
!789 = !DILocation(line: 101, column: 3, scope: !612)
!790 = !DILocation(line: 101, column: 11, scope: !612)
!791 = !DILocation(line: 101, column: 16, scope: !612)
!792 = !DILocation(line: 102, column: 43, scope: !612)
!793 = !DILocation(line: 102, column: 53, scope: !612)
!794 = !DILocation(line: 102, column: 51, scope: !612)
!795 = !DILocation(line: 102, column: 40, scope: !612)
!796 = !DILocation(line: 102, column: 3, scope: !612)
!797 = !DILocation(line: 102, column: 11, scope: !612)
!798 = !DILocation(line: 102, column: 15, scope: !612)
!799 = !DILocation(line: 103, column: 52, scope: !612)
!800 = !DILocation(line: 103, column: 47, scope: !612)
!801 = !DILocation(line: 103, column: 46, scope: !612)
!802 = !DILocation(line: 103, column: 55, scope: !612)
!803 = !DILocation(line: 103, column: 40, scope: !612)
!804 = !DILocation(line: 103, column: 69, scope: !612)
!805 = !DILocation(line: 103, column: 77, scope: !612)
!806 = !DILocation(line: 103, column: 64, scope: !770)
!807 = !DILocation(line: 103, column: 62, scope: !612)
!808 = !DILocation(line: 103, column: 3, scope: !612)
!809 = !DILocation(line: 103, column: 11, scope: !612)
!810 = !DILocation(line: 103, column: 15, scope: !612)
!811 = !DILocation(line: 105, column: 3, scope: !612)
!812 = !DILocation(line: 106, column: 1, scope: !612)
!813 = distinct !DISubprogram(name: "hyperg_2F1_luke", scope: !1, file: !1, line: 171, type: !613, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!814 = !DILocalVariable(name: "a", arg: 1, scope: !813, file: !1, line: 171, type: !51)
!815 = !DILocation(line: 171, column: 30, scope: !813)
!816 = !DILocalVariable(name: "b", arg: 2, scope: !813, file: !1, line: 171, type: !51)
!817 = !DILocation(line: 171, column: 46, scope: !813)
!818 = !DILocalVariable(name: "c", arg: 3, scope: !813, file: !1, line: 171, type: !51)
!819 = !DILocation(line: 171, column: 62, scope: !813)
!820 = !DILocalVariable(name: "xin", arg: 4, scope: !813, file: !1, line: 172, type: !51)
!821 = !DILocation(line: 172, column: 30, scope: !813)
!822 = !DILocalVariable(name: "result", arg: 5, scope: !813, file: !1, line: 173, type: !52)
!823 = !DILocation(line: 173, column: 33, scope: !813)
!824 = !DILocalVariable(name: "stat_iter", scope: !813, file: !1, line: 175, type: !50)
!825 = !DILocation(line: 175, column: 7, scope: !813)
!826 = !DILocalVariable(name: "RECUR_BIG", scope: !813, file: !1, line: 176, type: !51)
!827 = !DILocation(line: 176, column: 16, scope: !813)
!828 = !DILocalVariable(name: "nmax", scope: !813, file: !1, line: 177, type: !94)
!829 = !DILocation(line: 177, column: 13, scope: !813)
!830 = !DILocalVariable(name: "n", scope: !813, file: !1, line: 178, type: !50)
!831 = !DILocation(line: 178, column: 7, scope: !813)
!832 = !DILocalVariable(name: "x", scope: !813, file: !1, line: 179, type: !51)
!833 = !DILocation(line: 179, column: 16, scope: !813)
!834 = !DILocation(line: 179, column: 22, scope: !813)
!835 = !DILocation(line: 179, column: 21, scope: !813)
!836 = !DILocalVariable(name: "x3", scope: !813, file: !1, line: 180, type: !51)
!837 = !DILocation(line: 180, column: 16, scope: !813)
!838 = !DILocation(line: 180, column: 21, scope: !813)
!839 = !DILocation(line: 180, column: 23, scope: !813)
!840 = !DILocation(line: 180, column: 22, scope: !813)
!841 = !DILocation(line: 180, column: 25, scope: !813)
!842 = !DILocation(line: 180, column: 24, scope: !813)
!843 = !DILocalVariable(name: "t0", scope: !813, file: !1, line: 181, type: !51)
!844 = !DILocation(line: 181, column: 16, scope: !813)
!845 = !DILocation(line: 181, column: 21, scope: !813)
!846 = !DILocation(line: 181, column: 23, scope: !813)
!847 = !DILocation(line: 181, column: 22, scope: !813)
!848 = !DILocation(line: 181, column: 25, scope: !813)
!849 = !DILocation(line: 181, column: 24, scope: !813)
!850 = !DILocalVariable(name: "t1", scope: !813, file: !1, line: 182, type: !51)
!851 = !DILocation(line: 182, column: 16, scope: !813)
!852 = !DILocation(line: 182, column: 22, scope: !813)
!853 = !DILocation(line: 182, column: 23, scope: !813)
!854 = !DILocation(line: 182, column: 30, scope: !813)
!855 = !DILocation(line: 182, column: 31, scope: !813)
!856 = !DILocation(line: 182, column: 28, scope: !813)
!857 = !DILocation(line: 182, column: 42, scope: !813)
!858 = !DILocation(line: 182, column: 41, scope: !813)
!859 = !DILocation(line: 182, column: 36, scope: !813)
!860 = !DILocalVariable(name: "t2", scope: !813, file: !1, line: 183, type: !51)
!861 = !DILocation(line: 183, column: 16, scope: !813)
!862 = !DILocation(line: 183, column: 22, scope: !813)
!863 = !DILocation(line: 183, column: 23, scope: !813)
!864 = !DILocation(line: 183, column: 30, scope: !813)
!865 = !DILocation(line: 183, column: 31, scope: !813)
!866 = !DILocation(line: 183, column: 28, scope: !813)
!867 = !DILocation(line: 183, column: 43, scope: !813)
!868 = !DILocation(line: 183, column: 44, scope: !813)
!869 = !DILocation(line: 183, column: 41, scope: !813)
!870 = !DILocation(line: 183, column: 36, scope: !813)
!871 = !DILocalVariable(name: "F", scope: !813, file: !1, line: 184, type: !42)
!872 = !DILocation(line: 184, column: 10, scope: !813)
!873 = !DILocalVariable(name: "prec", scope: !813, file: !1, line: 185, type: !42)
!874 = !DILocation(line: 185, column: 10, scope: !813)
!875 = !DILocalVariable(name: "Bnm3", scope: !813, file: !1, line: 187, type: !42)
!876 = !DILocation(line: 187, column: 10, scope: !813)
!877 = !DILocalVariable(name: "Bnm2", scope: !813, file: !1, line: 188, type: !42)
!878 = !DILocation(line: 188, column: 10, scope: !813)
!879 = !DILocation(line: 188, column: 23, scope: !813)
!880 = !DILocation(line: 188, column: 28, scope: !813)
!881 = !DILocation(line: 188, column: 26, scope: !813)
!882 = !DILocation(line: 188, column: 21, scope: !813)
!883 = !DILocalVariable(name: "Bnm1", scope: !813, file: !1, line: 189, type: !42)
!884 = !DILocation(line: 189, column: 10, scope: !813)
!885 = !DILocation(line: 189, column: 23, scope: !813)
!886 = !DILocation(line: 189, column: 28, scope: !813)
!887 = !DILocation(line: 189, column: 26, scope: !813)
!888 = !DILocation(line: 189, column: 39, scope: !813)
!889 = !DILocation(line: 189, column: 41, scope: !813)
!890 = !DILocation(line: 189, column: 48, scope: !813)
!891 = !DILocation(line: 189, column: 46, scope: !813)
!892 = !DILocation(line: 189, column: 37, scope: !813)
!893 = !DILocation(line: 189, column: 30, scope: !813)
!894 = !DILocation(line: 189, column: 21, scope: !813)
!895 = !DILocalVariable(name: "Anm3", scope: !813, file: !1, line: 191, type: !42)
!896 = !DILocation(line: 191, column: 10, scope: !813)
!897 = !DILocalVariable(name: "Anm2", scope: !813, file: !1, line: 192, type: !42)
!898 = !DILocation(line: 192, column: 10, scope: !813)
!899 = !DILocation(line: 192, column: 17, scope: !813)
!900 = !DILocation(line: 192, column: 24, scope: !813)
!901 = !DILocation(line: 192, column: 29, scope: !813)
!902 = !DILocation(line: 192, column: 27, scope: !813)
!903 = !DILocation(line: 192, column: 22, scope: !813)
!904 = !DILocalVariable(name: "Anm1", scope: !813, file: !1, line: 193, type: !42)
!905 = !DILocation(line: 193, column: 10, scope: !813)
!906 = !DILocation(line: 193, column: 17, scope: !813)
!907 = !DILocation(line: 193, column: 24, scope: !813)
!908 = !DILocation(line: 193, column: 34, scope: !813)
!909 = !DILocation(line: 193, column: 37, scope: !813)
!910 = !DILocation(line: 193, column: 36, scope: !813)
!911 = !DILocation(line: 193, column: 32, scope: !813)
!912 = !DILocation(line: 193, column: 26, scope: !813)
!913 = !DILocation(line: 193, column: 40, scope: !813)
!914 = !DILocation(line: 193, column: 39, scope: !813)
!915 = !DILocation(line: 193, column: 22, scope: !813)
!916 = !DILocation(line: 193, column: 44, scope: !813)
!917 = !DILocation(line: 193, column: 49, scope: !813)
!918 = !DILocation(line: 193, column: 47, scope: !813)
!919 = !DILocation(line: 193, column: 55, scope: !813)
!920 = !DILocation(line: 193, column: 58, scope: !813)
!921 = !DILocation(line: 193, column: 59, scope: !813)
!922 = !DILocation(line: 193, column: 56, scope: !813)
!923 = !DILocation(line: 193, column: 52, scope: !813)
!924 = !DILocation(line: 193, column: 68, scope: !813)
!925 = !DILocation(line: 193, column: 66, scope: !813)
!926 = !DILocation(line: 193, column: 70, scope: !813)
!927 = !DILocation(line: 193, column: 69, scope: !813)
!928 = !DILocation(line: 193, column: 42, scope: !813)
!929 = !DILocation(line: 195, column: 3, scope: !813)
!930 = !DILocalVariable(name: "npam1", scope: !931, file: !1, line: 196, type: !42)
!931 = distinct !DILexicalBlock(scope: !813, file: !1, line: 195, column: 12)
!932 = !DILocation(line: 196, column: 12, scope: !931)
!933 = !DILocation(line: 196, column: 20, scope: !931)
!934 = !DILocation(line: 196, column: 24, scope: !931)
!935 = !DILocation(line: 196, column: 22, scope: !931)
!936 = !DILocation(line: 196, column: 26, scope: !931)
!937 = !DILocalVariable(name: "npbm1", scope: !931, file: !1, line: 197, type: !42)
!938 = !DILocation(line: 197, column: 12, scope: !931)
!939 = !DILocation(line: 197, column: 20, scope: !931)
!940 = !DILocation(line: 197, column: 24, scope: !931)
!941 = !DILocation(line: 197, column: 22, scope: !931)
!942 = !DILocation(line: 197, column: 26, scope: !931)
!943 = !DILocalVariable(name: "npcm1", scope: !931, file: !1, line: 198, type: !42)
!944 = !DILocation(line: 198, column: 12, scope: !931)
!945 = !DILocation(line: 198, column: 20, scope: !931)
!946 = !DILocation(line: 198, column: 24, scope: !931)
!947 = !DILocation(line: 198, column: 22, scope: !931)
!948 = !DILocation(line: 198, column: 26, scope: !931)
!949 = !DILocalVariable(name: "npam2", scope: !931, file: !1, line: 199, type: !42)
!950 = !DILocation(line: 199, column: 12, scope: !931)
!951 = !DILocation(line: 199, column: 20, scope: !931)
!952 = !DILocation(line: 199, column: 24, scope: !931)
!953 = !DILocation(line: 199, column: 22, scope: !931)
!954 = !DILocation(line: 199, column: 26, scope: !931)
!955 = !DILocalVariable(name: "npbm2", scope: !931, file: !1, line: 200, type: !42)
!956 = !DILocation(line: 200, column: 12, scope: !931)
!957 = !DILocation(line: 200, column: 20, scope: !931)
!958 = !DILocation(line: 200, column: 24, scope: !931)
!959 = !DILocation(line: 200, column: 22, scope: !931)
!960 = !DILocation(line: 200, column: 26, scope: !931)
!961 = !DILocalVariable(name: "npcm2", scope: !931, file: !1, line: 201, type: !42)
!962 = !DILocation(line: 201, column: 12, scope: !931)
!963 = !DILocation(line: 201, column: 20, scope: !931)
!964 = !DILocation(line: 201, column: 24, scope: !931)
!965 = !DILocation(line: 201, column: 22, scope: !931)
!966 = !DILocation(line: 201, column: 26, scope: !931)
!967 = !DILocalVariable(name: "tnm1", scope: !931, file: !1, line: 202, type: !42)
!968 = !DILocation(line: 202, column: 12, scope: !931)
!969 = !DILocation(line: 202, column: 22, scope: !931)
!970 = !DILocation(line: 202, column: 21, scope: !931)
!971 = !DILocation(line: 202, column: 24, scope: !931)
!972 = !DILocation(line: 202, column: 20, scope: !931)
!973 = !DILocalVariable(name: "tnm3", scope: !931, file: !1, line: 203, type: !42)
!974 = !DILocation(line: 203, column: 12, scope: !931)
!975 = !DILocation(line: 203, column: 22, scope: !931)
!976 = !DILocation(line: 203, column: 21, scope: !931)
!977 = !DILocation(line: 203, column: 24, scope: !931)
!978 = !DILocation(line: 203, column: 20, scope: !931)
!979 = !DILocalVariable(name: "tnm5", scope: !931, file: !1, line: 204, type: !42)
!980 = !DILocation(line: 204, column: 12, scope: !931)
!981 = !DILocation(line: 204, column: 22, scope: !931)
!982 = !DILocation(line: 204, column: 21, scope: !931)
!983 = !DILocation(line: 204, column: 24, scope: !931)
!984 = !DILocation(line: 204, column: 20, scope: !931)
!985 = !DILocalVariable(name: "n2", scope: !931, file: !1, line: 205, type: !42)
!986 = !DILocation(line: 205, column: 12, scope: !931)
!987 = !DILocation(line: 205, column: 17, scope: !931)
!988 = !DILocation(line: 205, column: 19, scope: !931)
!989 = !DILocation(line: 205, column: 18, scope: !931)
!990 = !DILocalVariable(name: "F1", scope: !931, file: !1, line: 206, type: !42)
!991 = !DILocation(line: 206, column: 12, scope: !931)
!992 = !DILocation(line: 206, column: 23, scope: !931)
!993 = !DILocation(line: 206, column: 22, scope: !931)
!994 = !DILocation(line: 206, column: 29, scope: !931)
!995 = !DILocation(line: 206, column: 31, scope: !931)
!996 = !DILocation(line: 206, column: 30, scope: !931)
!997 = !DILocation(line: 206, column: 32, scope: !931)
!998 = !DILocation(line: 206, column: 36, scope: !931)
!999 = !DILocation(line: 206, column: 35, scope: !931)
!1000 = !DILocation(line: 206, column: 26, scope: !931)
!1001 = !DILocation(line: 206, column: 38, scope: !931)
!1002 = !DILocation(line: 206, column: 44, scope: !931)
!1003 = !DILocation(line: 206, column: 46, scope: !931)
!1004 = !DILocation(line: 206, column: 45, scope: !931)
!1005 = !DILocation(line: 206, column: 42, scope: !931)
!1006 = !DILocation(line: 206, column: 53, scope: !931)
!1007 = !DILocation(line: 206, column: 55, scope: !931)
!1008 = !DILocation(line: 206, column: 54, scope: !931)
!1009 = !DILocation(line: 206, column: 51, scope: !931)
!1010 = !DILocation(line: 206, column: 48, scope: !931)
!1011 = !DILocation(line: 206, column: 64, scope: !931)
!1012 = !DILocation(line: 206, column: 63, scope: !931)
!1013 = !DILocation(line: 206, column: 69, scope: !931)
!1014 = !DILocation(line: 206, column: 68, scope: !931)
!1015 = !DILocation(line: 206, column: 59, scope: !931)
!1016 = !DILocalVariable(name: "F2", scope: !931, file: !1, line: 207, type: !42)
!1017 = !DILocation(line: 207, column: 12, scope: !931)
!1018 = !DILocation(line: 207, column: 23, scope: !931)
!1019 = !DILocation(line: 207, column: 22, scope: !931)
!1020 = !DILocation(line: 207, column: 29, scope: !931)
!1021 = !DILocation(line: 207, column: 31, scope: !931)
!1022 = !DILocation(line: 207, column: 30, scope: !931)
!1023 = !DILocation(line: 207, column: 32, scope: !931)
!1024 = !DILocation(line: 207, column: 36, scope: !931)
!1025 = !DILocation(line: 207, column: 35, scope: !931)
!1026 = !DILocation(line: 207, column: 26, scope: !931)
!1027 = !DILocation(line: 207, column: 38, scope: !931)
!1028 = !DILocation(line: 207, column: 44, scope: !931)
!1029 = !DILocation(line: 207, column: 46, scope: !931)
!1030 = !DILocation(line: 207, column: 45, scope: !931)
!1031 = !DILocation(line: 207, column: 42, scope: !931)
!1032 = !DILocation(line: 207, column: 17, scope: !931)
!1033 = !DILocation(line: 207, column: 49, scope: !931)
!1034 = !DILocation(line: 207, column: 48, scope: !931)
!1035 = !DILocation(line: 207, column: 55, scope: !931)
!1036 = !DILocation(line: 207, column: 54, scope: !931)
!1037 = !DILocation(line: 207, column: 64, scope: !931)
!1038 = !DILocation(line: 207, column: 63, scope: !931)
!1039 = !DILocation(line: 207, column: 69, scope: !931)
!1040 = !DILocation(line: 207, column: 68, scope: !931)
!1041 = !DILocation(line: 207, column: 74, scope: !931)
!1042 = !DILocation(line: 207, column: 73, scope: !931)
!1043 = !DILocation(line: 207, column: 80, scope: !931)
!1044 = !DILocation(line: 207, column: 79, scope: !931)
!1045 = !DILocation(line: 207, column: 60, scope: !931)
!1046 = !DILocalVariable(name: "F3", scope: !931, file: !1, line: 208, type: !42)
!1047 = !DILocation(line: 208, column: 12, scope: !931)
!1048 = !DILocation(line: 208, column: 18, scope: !931)
!1049 = !DILocation(line: 208, column: 24, scope: !931)
!1050 = !DILocation(line: 208, column: 23, scope: !931)
!1051 = !DILocation(line: 208, column: 30, scope: !931)
!1052 = !DILocation(line: 208, column: 29, scope: !931)
!1053 = !DILocation(line: 208, column: 36, scope: !931)
!1054 = !DILocation(line: 208, column: 35, scope: !931)
!1055 = !DILocation(line: 208, column: 43, scope: !931)
!1056 = !DILocation(line: 208, column: 45, scope: !931)
!1057 = !DILocation(line: 208, column: 44, scope: !931)
!1058 = !DILocation(line: 208, column: 46, scope: !931)
!1059 = !DILocation(line: 208, column: 41, scope: !931)
!1060 = !DILocation(line: 208, column: 51, scope: !931)
!1061 = !DILocation(line: 208, column: 53, scope: !931)
!1062 = !DILocation(line: 208, column: 52, scope: !931)
!1063 = !DILocation(line: 208, column: 54, scope: !931)
!1064 = !DILocation(line: 208, column: 49, scope: !931)
!1065 = !DILocation(line: 208, column: 64, scope: !931)
!1066 = !DILocation(line: 208, column: 63, scope: !931)
!1067 = !DILocation(line: 208, column: 69, scope: !931)
!1068 = !DILocation(line: 208, column: 68, scope: !931)
!1069 = !DILocation(line: 208, column: 74, scope: !931)
!1070 = !DILocation(line: 208, column: 73, scope: !931)
!1071 = !DILocation(line: 208, column: 80, scope: !931)
!1072 = !DILocation(line: 208, column: 82, scope: !931)
!1073 = !DILocation(line: 208, column: 81, scope: !931)
!1074 = !DILocation(line: 208, column: 83, scope: !931)
!1075 = !DILocation(line: 208, column: 78, scope: !931)
!1076 = !DILocation(line: 208, column: 87, scope: !931)
!1077 = !DILocation(line: 208, column: 86, scope: !931)
!1078 = !DILocation(line: 208, column: 93, scope: !931)
!1079 = !DILocation(line: 208, column: 92, scope: !931)
!1080 = !DILocation(line: 208, column: 59, scope: !931)
!1081 = !DILocalVariable(name: "E", scope: !931, file: !1, line: 209, type: !42)
!1082 = !DILocation(line: 209, column: 12, scope: !931)
!1083 = !DILocation(line: 209, column: 18, scope: !931)
!1084 = !DILocation(line: 209, column: 17, scope: !931)
!1085 = !DILocation(line: 209, column: 24, scope: !931)
!1086 = !DILocation(line: 209, column: 23, scope: !931)
!1087 = !DILocation(line: 209, column: 31, scope: !931)
!1088 = !DILocation(line: 209, column: 33, scope: !931)
!1089 = !DILocation(line: 209, column: 32, scope: !931)
!1090 = !DILocation(line: 209, column: 34, scope: !931)
!1091 = !DILocation(line: 209, column: 29, scope: !931)
!1092 = !DILocation(line: 209, column: 43, scope: !931)
!1093 = !DILocation(line: 209, column: 42, scope: !931)
!1094 = !DILocation(line: 209, column: 48, scope: !931)
!1095 = !DILocation(line: 209, column: 47, scope: !931)
!1096 = !DILocation(line: 209, column: 54, scope: !931)
!1097 = !DILocation(line: 209, column: 53, scope: !931)
!1098 = !DILocation(line: 209, column: 38, scope: !931)
!1099 = !DILocalVariable(name: "An", scope: !931, file: !1, line: 211, type: !42)
!1100 = !DILocation(line: 211, column: 12, scope: !931)
!1101 = !DILocation(line: 211, column: 22, scope: !931)
!1102 = !DILocation(line: 211, column: 25, scope: !931)
!1103 = !DILocation(line: 211, column: 24, scope: !931)
!1104 = !DILocation(line: 211, column: 21, scope: !931)
!1105 = !DILocation(line: 211, column: 28, scope: !931)
!1106 = !DILocation(line: 211, column: 27, scope: !931)
!1107 = !DILocation(line: 211, column: 36, scope: !931)
!1108 = !DILocation(line: 211, column: 40, scope: !931)
!1109 = !DILocation(line: 211, column: 43, scope: !931)
!1110 = !DILocation(line: 211, column: 42, scope: !931)
!1111 = !DILocation(line: 211, column: 38, scope: !931)
!1112 = !DILocation(line: 211, column: 46, scope: !931)
!1113 = !DILocation(line: 211, column: 45, scope: !931)
!1114 = !DILocation(line: 211, column: 48, scope: !931)
!1115 = !DILocation(line: 211, column: 47, scope: !931)
!1116 = !DILocation(line: 211, column: 33, scope: !931)
!1117 = !DILocation(line: 211, column: 55, scope: !931)
!1118 = !DILocation(line: 211, column: 58, scope: !931)
!1119 = !DILocation(line: 211, column: 57, scope: !931)
!1120 = !DILocation(line: 211, column: 61, scope: !931)
!1121 = !DILocation(line: 211, column: 60, scope: !931)
!1122 = !DILocation(line: 211, column: 53, scope: !931)
!1123 = !DILocalVariable(name: "Bn", scope: !931, file: !1, line: 212, type: !42)
!1124 = !DILocation(line: 212, column: 12, scope: !931)
!1125 = !DILocation(line: 212, column: 22, scope: !931)
!1126 = !DILocation(line: 212, column: 25, scope: !931)
!1127 = !DILocation(line: 212, column: 24, scope: !931)
!1128 = !DILocation(line: 212, column: 21, scope: !931)
!1129 = !DILocation(line: 212, column: 28, scope: !931)
!1130 = !DILocation(line: 212, column: 27, scope: !931)
!1131 = !DILocation(line: 212, column: 36, scope: !931)
!1132 = !DILocation(line: 212, column: 40, scope: !931)
!1133 = !DILocation(line: 212, column: 43, scope: !931)
!1134 = !DILocation(line: 212, column: 42, scope: !931)
!1135 = !DILocation(line: 212, column: 38, scope: !931)
!1136 = !DILocation(line: 212, column: 46, scope: !931)
!1137 = !DILocation(line: 212, column: 45, scope: !931)
!1138 = !DILocation(line: 212, column: 48, scope: !931)
!1139 = !DILocation(line: 212, column: 47, scope: !931)
!1140 = !DILocation(line: 212, column: 33, scope: !931)
!1141 = !DILocation(line: 212, column: 55, scope: !931)
!1142 = !DILocation(line: 212, column: 58, scope: !931)
!1143 = !DILocation(line: 212, column: 57, scope: !931)
!1144 = !DILocation(line: 212, column: 61, scope: !931)
!1145 = !DILocation(line: 212, column: 60, scope: !931)
!1146 = !DILocation(line: 212, column: 53, scope: !931)
!1147 = !DILocalVariable(name: "r", scope: !931, file: !1, line: 213, type: !42)
!1148 = !DILocation(line: 213, column: 12, scope: !931)
!1149 = !DILocation(line: 213, column: 16, scope: !931)
!1150 = !DILocation(line: 213, column: 19, scope: !931)
!1151 = !DILocation(line: 213, column: 18, scope: !931)
!1152 = !DILocation(line: 215, column: 18, scope: !931)
!1153 = !DILocation(line: 215, column: 22, scope: !931)
!1154 = !DILocation(line: 215, column: 20, scope: !931)
!1155 = !DILocation(line: 215, column: 25, scope: !931)
!1156 = !DILocation(line: 215, column: 24, scope: !931)
!1157 = !DILocation(line: 215, column: 12, scope: !931)
!1158 = !DILocation(line: 215, column: 10, scope: !931)
!1159 = !DILocation(line: 216, column: 9, scope: !931)
!1160 = !DILocation(line: 216, column: 7, scope: !931)
!1161 = !DILocation(line: 218, column: 8, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !931, file: !1, line: 218, column: 8)
!1163 = !DILocation(line: 218, column: 13, scope: !1162)
!1164 = !DILocation(line: 218, column: 31, scope: !1162)
!1165 = !DILocation(line: 218, column: 34, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1162, file: !1, discriminator: 1)
!1167 = !DILocation(line: 218, column: 36, scope: !1166)
!1168 = !DILocation(line: 218, column: 8, scope: !1166)
!1169 = !DILocation(line: 218, column: 44, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1162, file: !1, discriminator: 2)
!1171 = !DILocation(line: 220, column: 13, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !931, file: !1, line: 220, column: 8)
!1173 = !DILocation(line: 220, column: 8, scope: !1172)
!1174 = !DILocation(line: 220, column: 17, scope: !1172)
!1175 = !DILocation(line: 220, column: 29, scope: !1172)
!1176 = !DILocation(line: 220, column: 37, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1172, file: !1, discriminator: 1)
!1178 = !DILocation(line: 220, column: 32, scope: !1177)
!1179 = !DILocation(line: 220, column: 41, scope: !1177)
!1180 = !DILocation(line: 220, column: 8, scope: !1177)
!1181 = !DILocation(line: 221, column: 12, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 220, column: 54)
!1183 = !DILocation(line: 222, column: 12, scope: !1182)
!1184 = !DILocation(line: 223, column: 12, scope: !1182)
!1185 = !DILocation(line: 224, column: 12, scope: !1182)
!1186 = !DILocation(line: 225, column: 12, scope: !1182)
!1187 = !DILocation(line: 226, column: 12, scope: !1182)
!1188 = !DILocation(line: 227, column: 12, scope: !1182)
!1189 = !DILocation(line: 228, column: 12, scope: !1182)
!1190 = !DILocation(line: 229, column: 5, scope: !1182)
!1191 = !DILocation(line: 230, column: 18, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1172, file: !1, line: 230, column: 13)
!1193 = !DILocation(line: 230, column: 13, scope: !1192)
!1194 = !DILocation(line: 230, column: 22, scope: !1192)
!1195 = !DILocation(line: 230, column: 38, scope: !1192)
!1196 = !DILocation(line: 230, column: 46, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1192, file: !1, discriminator: 1)
!1198 = !DILocation(line: 230, column: 41, scope: !1197)
!1199 = !DILocation(line: 230, column: 50, scope: !1197)
!1200 = !DILocation(line: 230, column: 13, scope: !1197)
!1201 = !DILocation(line: 231, column: 12, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 230, column: 67)
!1203 = !DILocation(line: 232, column: 12, scope: !1202)
!1204 = !DILocation(line: 233, column: 12, scope: !1202)
!1205 = !DILocation(line: 234, column: 12, scope: !1202)
!1206 = !DILocation(line: 235, column: 12, scope: !1202)
!1207 = !DILocation(line: 236, column: 12, scope: !1202)
!1208 = !DILocation(line: 237, column: 12, scope: !1202)
!1209 = !DILocation(line: 238, column: 12, scope: !1202)
!1210 = !DILocation(line: 239, column: 5, scope: !1202)
!1211 = !DILocation(line: 241, column: 6, scope: !931)
!1212 = !DILocation(line: 242, column: 12, scope: !931)
!1213 = !DILocation(line: 242, column: 10, scope: !931)
!1214 = !DILocation(line: 243, column: 12, scope: !931)
!1215 = !DILocation(line: 243, column: 10, scope: !931)
!1216 = !DILocation(line: 244, column: 12, scope: !931)
!1217 = !DILocation(line: 244, column: 10, scope: !931)
!1218 = !DILocation(line: 245, column: 12, scope: !931)
!1219 = !DILocation(line: 245, column: 10, scope: !931)
!1220 = !DILocation(line: 246, column: 12, scope: !931)
!1221 = !DILocation(line: 246, column: 10, scope: !931)
!1222 = !DILocation(line: 247, column: 12, scope: !931)
!1223 = !DILocation(line: 247, column: 10, scope: !931)
!1224 = !DILocation(line: 195, column: 3, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !813, file: !1, discriminator: 1)
!1226 = distinct !{!1226, !929}
!1227 = !DILocation(line: 250, column: 18, scope: !813)
!1228 = !DILocation(line: 250, column: 3, scope: !813)
!1229 = !DILocation(line: 250, column: 11, scope: !813)
!1230 = !DILocation(line: 250, column: 16, scope: !813)
!1231 = !DILocation(line: 251, column: 29, scope: !813)
!1232 = !DILocation(line: 251, column: 36, scope: !813)
!1233 = !DILocation(line: 251, column: 34, scope: !813)
!1234 = !DILocation(line: 251, column: 24, scope: !813)
!1235 = !DILocation(line: 251, column: 22, scope: !813)
!1236 = !DILocation(line: 251, column: 3, scope: !813)
!1237 = !DILocation(line: 251, column: 11, scope: !813)
!1238 = !DILocation(line: 251, column: 16, scope: !813)
!1239 = !DILocation(line: 252, column: 43, scope: !813)
!1240 = !DILocation(line: 252, column: 44, scope: !813)
!1241 = !DILocation(line: 252, column: 40, scope: !813)
!1242 = !DILocation(line: 252, column: 57, scope: !813)
!1243 = !DILocation(line: 252, column: 52, scope: !813)
!1244 = !DILocation(line: 252, column: 50, scope: !813)
!1245 = !DILocation(line: 252, column: 3, scope: !813)
!1246 = !DILocation(line: 252, column: 11, scope: !813)
!1247 = !DILocation(line: 252, column: 15, scope: !813)
!1248 = !DILocation(line: 255, column: 30, scope: !813)
!1249 = !DILocation(line: 255, column: 25, scope: !813)
!1250 = !DILocation(line: 255, column: 40, scope: !813)
!1251 = !DILocation(line: 255, column: 35, scope: !1225)
!1252 = !DILocation(line: 255, column: 33, scope: !813)
!1253 = !DILocation(line: 255, column: 43, scope: !813)
!1254 = !DILocation(line: 255, column: 22, scope: !813)
!1255 = !DILocation(line: 255, column: 3, scope: !813)
!1256 = !DILocation(line: 255, column: 11, scope: !813)
!1257 = !DILocation(line: 255, column: 15, scope: !813)
!1258 = !DILocation(line: 257, column: 16, scope: !813)
!1259 = !DILocation(line: 257, column: 18, scope: !813)
!1260 = !DILocation(line: 257, column: 13, scope: !813)
!1261 = !DILocation(line: 259, column: 10, scope: !813)
!1262 = !DILocation(line: 259, column: 3, scope: !813)
!1263 = distinct !DISubprogram(name: "hyperg_2F1_reflect", scope: !1, file: !1, line: 367, type: !613, isLocal: true, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1264 = !DILocalVariable(name: "a", arg: 1, scope: !1263, file: !1, line: 367, type: !51)
!1265 = !DILocation(line: 367, column: 33, scope: !1263)
!1266 = !DILocalVariable(name: "b", arg: 2, scope: !1263, file: !1, line: 367, type: !51)
!1267 = !DILocation(line: 367, column: 49, scope: !1263)
!1268 = !DILocalVariable(name: "c", arg: 3, scope: !1263, file: !1, line: 367, type: !51)
!1269 = !DILocation(line: 367, column: 65, scope: !1263)
!1270 = !DILocalVariable(name: "x", arg: 4, scope: !1263, file: !1, line: 368, type: !51)
!1271 = !DILocation(line: 368, column: 33, scope: !1263)
!1272 = !DILocalVariable(name: "result", arg: 5, scope: !1263, file: !1, line: 368, type: !52)
!1273 = !DILocation(line: 368, column: 52, scope: !1263)
!1274 = !DILocalVariable(name: "d", scope: !1263, file: !1, line: 370, type: !51)
!1275 = !DILocation(line: 370, column: 16, scope: !1263)
!1276 = !DILocation(line: 370, column: 20, scope: !1263)
!1277 = !DILocation(line: 370, column: 24, scope: !1263)
!1278 = !DILocation(line: 370, column: 22, scope: !1263)
!1279 = !DILocation(line: 370, column: 28, scope: !1263)
!1280 = !DILocation(line: 370, column: 26, scope: !1263)
!1281 = !DILocalVariable(name: "intd", scope: !1263, file: !1, line: 371, type: !94)
!1282 = !DILocation(line: 371, column: 13, scope: !1263)
!1283 = !DILocation(line: 371, column: 27, scope: !1263)
!1284 = !DILocation(line: 371, column: 28, scope: !1263)
!1285 = !DILocation(line: 371, column: 21, scope: !1263)
!1286 = !DILocalVariable(name: "d_integer", scope: !1263, file: !1, line: 372, type: !94)
!1287 = !DILocation(line: 372, column: 13, scope: !1263)
!1288 = !DILocation(line: 372, column: 32, scope: !1263)
!1289 = !DILocation(line: 372, column: 36, scope: !1263)
!1290 = !DILocation(line: 372, column: 34, scope: !1263)
!1291 = !DILocation(line: 372, column: 27, scope: !1263)
!1292 = !DILocation(line: 372, column: 42, scope: !1263)
!1293 = !DILocation(line: 374, column: 6, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 374, column: 6)
!1295 = !DILocation(line: 374, column: 6, scope: !1263)
!1296 = !DILocalVariable(name: "ln_omx", scope: !1297, file: !1, line: 375, type: !51)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 374, column: 17)
!1298 = !DILocation(line: 375, column: 18, scope: !1297)
!1299 = !DILocation(line: 375, column: 37, scope: !1297)
!1300 = !DILocation(line: 375, column: 35, scope: !1297)
!1301 = !DILocation(line: 375, column: 27, scope: !1297)
!1302 = !DILocalVariable(name: "ad", scope: !1297, file: !1, line: 376, type: !51)
!1303 = !DILocation(line: 376, column: 18, scope: !1297)
!1304 = !DILocation(line: 376, column: 28, scope: !1297)
!1305 = !DILocation(line: 376, column: 23, scope: !1297)
!1306 = !DILocalVariable(name: "stat_F2", scope: !1297, file: !1, line: 377, type: !50)
!1307 = !DILocation(line: 377, column: 9, scope: !1297)
!1308 = !DILocalVariable(name: "sgn_2", scope: !1297, file: !1, line: 378, type: !42)
!1309 = !DILocation(line: 378, column: 12, scope: !1297)
!1310 = !DILocalVariable(name: "F1", scope: !1297, file: !1, line: 379, type: !53)
!1311 = !DILocation(line: 379, column: 19, scope: !1297)
!1312 = !DILocalVariable(name: "F2", scope: !1297, file: !1, line: 380, type: !53)
!1313 = !DILocation(line: 380, column: 19, scope: !1297)
!1314 = !DILocalVariable(name: "d1", scope: !1297, file: !1, line: 381, type: !42)
!1315 = !DILocation(line: 381, column: 12, scope: !1297)
!1316 = !DILocalVariable(name: "d2", scope: !1297, file: !1, line: 381, type: !42)
!1317 = !DILocation(line: 381, column: 16, scope: !1297)
!1318 = !DILocalVariable(name: "lng_c", scope: !1297, file: !1, line: 382, type: !53)
!1319 = !DILocation(line: 382, column: 19, scope: !1297)
!1320 = !DILocalVariable(name: "lng_ad2", scope: !1297, file: !1, line: 383, type: !53)
!1321 = !DILocation(line: 383, column: 19, scope: !1297)
!1322 = !DILocalVariable(name: "lng_bd2", scope: !1297, file: !1, line: 384, type: !53)
!1323 = !DILocation(line: 384, column: 19, scope: !1297)
!1324 = !DILocalVariable(name: "stat_c", scope: !1297, file: !1, line: 385, type: !50)
!1325 = !DILocation(line: 385, column: 9, scope: !1297)
!1326 = !DILocalVariable(name: "stat_ad2", scope: !1297, file: !1, line: 386, type: !50)
!1327 = !DILocation(line: 386, column: 9, scope: !1297)
!1328 = !DILocalVariable(name: "stat_bd2", scope: !1297, file: !1, line: 387, type: !50)
!1329 = !DILocation(line: 387, column: 9, scope: !1297)
!1330 = !DILocation(line: 389, column: 8, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 389, column: 8)
!1332 = !DILocation(line: 389, column: 10, scope: !1331)
!1333 = !DILocation(line: 389, column: 8, scope: !1297)
!1334 = !DILocation(line: 390, column: 12, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 389, column: 18)
!1336 = !DILocation(line: 390, column: 10, scope: !1335)
!1337 = !DILocation(line: 391, column: 10, scope: !1335)
!1338 = !DILocation(line: 392, column: 5, scope: !1335)
!1339 = !DILocation(line: 394, column: 10, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 393, column: 10)
!1341 = !DILocation(line: 395, column: 12, scope: !1340)
!1342 = !DILocation(line: 395, column: 10, scope: !1340)
!1343 = !DILocation(line: 398, column: 33, scope: !1297)
!1344 = !DILocation(line: 398, column: 35, scope: !1297)
!1345 = !DILocation(line: 398, column: 34, scope: !1297)
!1346 = !DILocation(line: 398, column: 16, scope: !1297)
!1347 = !DILocation(line: 398, column: 14, scope: !1297)
!1348 = !DILocation(line: 399, column: 33, scope: !1297)
!1349 = !DILocation(line: 399, column: 35, scope: !1297)
!1350 = !DILocation(line: 399, column: 34, scope: !1297)
!1351 = !DILocation(line: 399, column: 16, scope: !1297)
!1352 = !DILocation(line: 399, column: 14, scope: !1297)
!1353 = !DILocation(line: 400, column: 33, scope: !1297)
!1354 = !DILocation(line: 400, column: 16, scope: !1297)
!1355 = !DILocation(line: 400, column: 14, scope: !1297)
!1356 = !DILocation(line: 404, column: 8, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 404, column: 8)
!1358 = !DILocation(line: 404, column: 11, scope: !1357)
!1359 = !DILocation(line: 404, column: 8, scope: !1297)
!1360 = !DILocation(line: 406, column: 10, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !1, line: 404, column: 30)
!1362 = !DILocation(line: 406, column: 14, scope: !1361)
!1363 = !DILocation(line: 407, column: 10, scope: !1361)
!1364 = !DILocation(line: 407, column: 14, scope: !1361)
!1365 = !DILocation(line: 408, column: 5, scope: !1361)
!1366 = !DILocalVariable(name: "lng_ad", scope: !1367, file: !1, line: 410, type: !53)
!1367 = distinct !DILexicalBlock(scope: !1357, file: !1, line: 409, column: 10)
!1368 = !DILocation(line: 410, column: 21, scope: !1367)
!1369 = !DILocalVariable(name: "lng_ad1", scope: !1367, file: !1, line: 411, type: !53)
!1370 = !DILocation(line: 411, column: 21, scope: !1367)
!1371 = !DILocalVariable(name: "lng_bd1", scope: !1367, file: !1, line: 412, type: !53)
!1372 = !DILocation(line: 412, column: 21, scope: !1367)
!1373 = !DILocalVariable(name: "stat_ad", scope: !1367, file: !1, line: 413, type: !50)
!1374 = !DILocation(line: 413, column: 11, scope: !1367)
!1375 = !DILocation(line: 413, column: 39, scope: !1367)
!1376 = !DILocation(line: 413, column: 22, scope: !1367)
!1377 = !DILocalVariable(name: "stat_ad1", scope: !1367, file: !1, line: 414, type: !50)
!1378 = !DILocation(line: 414, column: 11, scope: !1367)
!1379 = !DILocation(line: 414, column: 39, scope: !1367)
!1380 = !DILocation(line: 414, column: 41, scope: !1367)
!1381 = !DILocation(line: 414, column: 40, scope: !1367)
!1382 = !DILocation(line: 414, column: 22, scope: !1367)
!1383 = !DILocalVariable(name: "stat_bd1", scope: !1367, file: !1, line: 415, type: !50)
!1384 = !DILocation(line: 415, column: 11, scope: !1367)
!1385 = !DILocation(line: 415, column: 39, scope: !1367)
!1386 = !DILocation(line: 415, column: 41, scope: !1367)
!1387 = !DILocation(line: 415, column: 40, scope: !1367)
!1388 = !DILocation(line: 415, column: 22, scope: !1367)
!1389 = !DILocation(line: 417, column: 10, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 417, column: 10)
!1391 = !DILocation(line: 417, column: 19, scope: !1390)
!1392 = !DILocation(line: 417, column: 34, scope: !1390)
!1393 = !DILocation(line: 417, column: 37, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1390, file: !1, discriminator: 1)
!1395 = !DILocation(line: 417, column: 46, scope: !1394)
!1396 = !DILocation(line: 417, column: 61, scope: !1394)
!1397 = !DILocation(line: 417, column: 64, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1390, file: !1, discriminator: 2)
!1399 = !DILocation(line: 417, column: 72, scope: !1398)
!1400 = !DILocation(line: 417, column: 10, scope: !1398)
!1401 = !DILocalVariable(name: "i", scope: !1402, file: !1, line: 421, type: !50)
!1402 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 417, column: 88)
!1403 = !DILocation(line: 421, column: 13, scope: !1402)
!1404 = !DILocalVariable(name: "sum1", scope: !1402, file: !1, line: 422, type: !42)
!1405 = !DILocation(line: 422, column: 16, scope: !1402)
!1406 = !DILocalVariable(name: "term", scope: !1402, file: !1, line: 423, type: !42)
!1407 = !DILocation(line: 423, column: 16, scope: !1402)
!1408 = !DILocalVariable(name: "ln_pre1_val", scope: !1402, file: !1, line: 424, type: !42)
!1409 = !DILocation(line: 424, column: 16, scope: !1402)
!1410 = !DILocation(line: 424, column: 37, scope: !1402)
!1411 = !DILocation(line: 424, column: 49, scope: !1402)
!1412 = !DILocation(line: 424, column: 41, scope: !1402)
!1413 = !DILocation(line: 424, column: 55, scope: !1402)
!1414 = !DILocation(line: 424, column: 58, scope: !1402)
!1415 = !DILocation(line: 424, column: 57, scope: !1402)
!1416 = !DILocation(line: 424, column: 53, scope: !1402)
!1417 = !DILocation(line: 424, column: 75, scope: !1402)
!1418 = !DILocation(line: 424, column: 65, scope: !1402)
!1419 = !DILocation(line: 424, column: 89, scope: !1402)
!1420 = !DILocation(line: 424, column: 79, scope: !1402)
!1421 = !DILocalVariable(name: "ln_pre1_err", scope: !1402, file: !1, line: 425, type: !42)
!1422 = !DILocation(line: 425, column: 16, scope: !1402)
!1423 = !DILocation(line: 425, column: 37, scope: !1402)
!1424 = !DILocation(line: 425, column: 49, scope: !1402)
!1425 = !DILocation(line: 425, column: 41, scope: !1402)
!1426 = !DILocation(line: 425, column: 63, scope: !1402)
!1427 = !DILocation(line: 425, column: 53, scope: !1402)
!1428 = !DILocation(line: 425, column: 77, scope: !1402)
!1429 = !DILocation(line: 425, column: 67, scope: !1402)
!1430 = !DILocation(line: 425, column: 106, scope: !1402)
!1431 = !DILocation(line: 425, column: 101, scope: !1402)
!1432 = !DILocation(line: 425, column: 99, scope: !1402)
!1433 = !DILocation(line: 425, column: 81, scope: !1402)
!1434 = !DILocalVariable(name: "stat_e", scope: !1402, file: !1, line: 426, type: !50)
!1435 = !DILocation(line: 426, column: 13, scope: !1402)
!1436 = !DILocation(line: 430, column: 14, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 430, column: 9)
!1438 = !DILocation(line: 430, column: 13, scope: !1437)
!1439 = !DILocation(line: 430, column: 18, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1441, file: !1, discriminator: 1)
!1441 = distinct !DILexicalBlock(scope: !1437, file: !1, line: 430, column: 9)
!1442 = !DILocation(line: 430, column: 20, scope: !1440)
!1443 = !DILocation(line: 430, column: 19, scope: !1440)
!1444 = !DILocation(line: 430, column: 9, scope: !1440)
!1445 = !DILocalVariable(name: "j", scope: !1446, file: !1, line: 431, type: !50)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !1, line: 430, column: 29)
!1447 = !DILocation(line: 431, column: 15, scope: !1446)
!1448 = !DILocation(line: 431, column: 19, scope: !1446)
!1449 = !DILocation(line: 431, column: 20, scope: !1446)
!1450 = !DILocation(line: 432, column: 20, scope: !1446)
!1451 = !DILocation(line: 432, column: 24, scope: !1446)
!1452 = !DILocation(line: 432, column: 22, scope: !1446)
!1453 = !DILocation(line: 432, column: 29, scope: !1446)
!1454 = !DILocation(line: 432, column: 27, scope: !1446)
!1455 = !DILocation(line: 432, column: 35, scope: !1446)
!1456 = !DILocation(line: 432, column: 39, scope: !1446)
!1457 = !DILocation(line: 432, column: 37, scope: !1446)
!1458 = !DILocation(line: 432, column: 44, scope: !1446)
!1459 = !DILocation(line: 432, column: 42, scope: !1446)
!1460 = !DILocation(line: 432, column: 32, scope: !1446)
!1461 = !DILocation(line: 432, column: 56, scope: !1446)
!1462 = !DILocation(line: 432, column: 54, scope: !1446)
!1463 = !DILocation(line: 432, column: 61, scope: !1446)
!1464 = !DILocation(line: 432, column: 59, scope: !1446)
!1465 = !DILocation(line: 432, column: 47, scope: !1446)
!1466 = !DILocation(line: 432, column: 66, scope: !1446)
!1467 = !DILocation(line: 432, column: 64, scope: !1446)
!1468 = !DILocation(line: 432, column: 75, scope: !1446)
!1469 = !DILocation(line: 432, column: 74, scope: !1446)
!1470 = !DILocation(line: 432, column: 68, scope: !1446)
!1471 = !DILocation(line: 432, column: 16, scope: !1446)
!1472 = !DILocation(line: 433, column: 19, scope: !1446)
!1473 = !DILocation(line: 433, column: 16, scope: !1446)
!1474 = !DILocation(line: 434, column: 9, scope: !1446)
!1475 = !DILocation(line: 430, column: 25, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1441, file: !1, discriminator: 2)
!1477 = !DILocation(line: 430, column: 9, scope: !1476)
!1478 = distinct !{!1478, !1479}
!1479 = !DILocation(line: 430, column: 9, scope: !1402)
!1480 = !DILocation(line: 436, column: 40, scope: !1402)
!1481 = !DILocation(line: 436, column: 53, scope: !1402)
!1482 = !DILocation(line: 437, column: 40, scope: !1402)
!1483 = !DILocation(line: 437, column: 67, scope: !1402)
!1484 = !DILocation(line: 437, column: 62, scope: !1402)
!1485 = !DILocation(line: 437, column: 61, scope: !1402)
!1486 = !DILocation(line: 436, column: 18, scope: !1402)
!1487 = !DILocation(line: 436, column: 16, scope: !1402)
!1488 = !DILocation(line: 439, column: 12, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 439, column: 12)
!1490 = !DILocation(line: 439, column: 19, scope: !1489)
!1491 = !DILocation(line: 439, column: 12, scope: !1402)
!1492 = !DILocation(line: 440, column: 11, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !1, line: 439, column: 35)
!1494 = distinct !{!1494, !1492}
!1495 = !DILocation(line: 440, column: 11, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1497, file: !1, discriminator: 1)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 440, column: 11)
!1498 = distinct !{!1498, !1499}
!1499 = !DILocation(line: 440, column: 11, scope: !1497)
!1500 = !DILocation(line: 440, column: 11, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1502, file: !1, discriminator: 2)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !1, line: 440, column: 11)
!1503 = !DILocation(line: 440, column: 11, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1497, file: !1, discriminator: 3)
!1505 = !DILocation(line: 441, column: 9, scope: !1493)
!1506 = !DILocation(line: 442, column: 7, scope: !1402)
!1507 = !DILocation(line: 447, column: 12, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 443, column: 12)
!1509 = !DILocation(line: 447, column: 16, scope: !1508)
!1510 = !DILocation(line: 448, column: 12, scope: !1508)
!1511 = !DILocation(line: 448, column: 16, scope: !1508)
!1512 = !DILocation(line: 455, column: 8, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 455, column: 8)
!1514 = !DILocation(line: 455, column: 17, scope: !1513)
!1515 = !DILocation(line: 455, column: 32, scope: !1513)
!1516 = !DILocation(line: 455, column: 35, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1513, file: !1, discriminator: 1)
!1518 = !DILocation(line: 455, column: 44, scope: !1517)
!1519 = !DILocation(line: 455, column: 8, scope: !1517)
!1520 = !DILocalVariable(name: "maxiter", scope: !1521, file: !1, line: 459, type: !94)
!1521 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 455, column: 60)
!1522 = !DILocation(line: 459, column: 17, scope: !1521)
!1523 = !DILocalVariable(name: "psi_1", scope: !1521, file: !1, line: 460, type: !42)
!1524 = !DILocation(line: 460, column: 14, scope: !1521)
!1525 = !DILocalVariable(name: "psi_1pd", scope: !1521, file: !1, line: 461, type: !53)
!1526 = !DILocation(line: 461, column: 21, scope: !1521)
!1527 = !DILocalVariable(name: "psi_apd1", scope: !1521, file: !1, line: 462, type: !53)
!1528 = !DILocation(line: 462, column: 21, scope: !1521)
!1529 = !DILocalVariable(name: "psi_bpd1", scope: !1521, file: !1, line: 463, type: !53)
!1530 = !DILocation(line: 463, column: 21, scope: !1521)
!1531 = !DILocalVariable(name: "stat_1pd", scope: !1521, file: !1, line: 464, type: !50)
!1532 = !DILocation(line: 464, column: 11, scope: !1521)
!1533 = !DILocation(line: 464, column: 42, scope: !1521)
!1534 = !DILocation(line: 464, column: 40, scope: !1521)
!1535 = !DILocation(line: 464, column: 23, scope: !1521)
!1536 = !DILocalVariable(name: "stat_apd1", scope: !1521, file: !1, line: 465, type: !50)
!1537 = !DILocation(line: 465, column: 11, scope: !1521)
!1538 = !DILocation(line: 465, column: 36, scope: !1521)
!1539 = !DILocation(line: 465, column: 40, scope: !1521)
!1540 = !DILocation(line: 465, column: 38, scope: !1521)
!1541 = !DILocation(line: 465, column: 23, scope: !1521)
!1542 = !DILocalVariable(name: "stat_bpd1", scope: !1521, file: !1, line: 466, type: !50)
!1543 = !DILocation(line: 466, column: 11, scope: !1521)
!1544 = !DILocation(line: 466, column: 36, scope: !1521)
!1545 = !DILocation(line: 466, column: 40, scope: !1521)
!1546 = !DILocation(line: 466, column: 38, scope: !1521)
!1547 = !DILocation(line: 466, column: 23, scope: !1521)
!1548 = !DILocalVariable(name: "stat_dall", scope: !1521, file: !1, line: 467, type: !50)
!1549 = !DILocation(line: 467, column: 11, scope: !1521)
!1550 = !DILocation(line: 467, column: 23, scope: !1521)
!1551 = !DILocation(line: 467, column: 23, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 1)
!1553 = !DILocation(line: 467, column: 23, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 2)
!1555 = !DILocation(line: 467, column: 23, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 3)
!1557 = !DILocation(line: 467, column: 23, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 4)
!1559 = !DILocation(line: 467, column: 23, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 5)
!1561 = !DILocation(line: 467, column: 23, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 6)
!1563 = !DILocation(line: 467, column: 23, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 7)
!1565 = !DILocation(line: 467, column: 23, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 8)
!1567 = !DILocation(line: 467, column: 23, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 9)
!1569 = !DILocation(line: 467, column: 11, scope: !1568)
!1570 = !DILocalVariable(name: "psi_val", scope: !1521, file: !1, line: 469, type: !42)
!1571 = !DILocation(line: 469, column: 14, scope: !1521)
!1572 = !DILocation(line: 469, column: 24, scope: !1521)
!1573 = !DILocation(line: 469, column: 40, scope: !1521)
!1574 = !DILocation(line: 469, column: 30, scope: !1521)
!1575 = !DILocation(line: 469, column: 55, scope: !1521)
!1576 = !DILocation(line: 469, column: 44, scope: !1521)
!1577 = !DILocation(line: 469, column: 70, scope: !1521)
!1578 = !DILocation(line: 469, column: 59, scope: !1521)
!1579 = !DILocation(line: 469, column: 76, scope: !1521)
!1580 = !DILocation(line: 469, column: 74, scope: !1521)
!1581 = !DILocalVariable(name: "psi_err", scope: !1521, file: !1, line: 470, type: !42)
!1582 = !DILocation(line: 470, column: 14, scope: !1521)
!1583 = !DILocation(line: 470, column: 32, scope: !1521)
!1584 = !DILocation(line: 470, column: 47, scope: !1521)
!1585 = !DILocation(line: 470, column: 36, scope: !1521)
!1586 = !DILocation(line: 470, column: 62, scope: !1521)
!1587 = !DILocation(line: 470, column: 51, scope: !1521)
!1588 = !DILocation(line: 470, column: 89, scope: !1521)
!1589 = !DILocation(line: 470, column: 84, scope: !1521)
!1590 = !DILocation(line: 470, column: 83, scope: !1521)
!1591 = !DILocation(line: 470, column: 66, scope: !1521)
!1592 = !DILocalVariable(name: "fact", scope: !1521, file: !1, line: 471, type: !42)
!1593 = !DILocation(line: 471, column: 14, scope: !1521)
!1594 = !DILocalVariable(name: "sum2_val", scope: !1521, file: !1, line: 472, type: !42)
!1595 = !DILocation(line: 472, column: 14, scope: !1521)
!1596 = !DILocation(line: 472, column: 25, scope: !1521)
!1597 = !DILocalVariable(name: "sum2_err", scope: !1521, file: !1, line: 473, type: !42)
!1598 = !DILocation(line: 473, column: 14, scope: !1521)
!1599 = !DILocation(line: 473, column: 25, scope: !1521)
!1600 = !DILocalVariable(name: "ln_pre2_val", scope: !1521, file: !1, line: 474, type: !42)
!1601 = !DILocation(line: 474, column: 14, scope: !1521)
!1602 = !DILocation(line: 474, column: 34, scope: !1521)
!1603 = !DILocation(line: 474, column: 40, scope: !1521)
!1604 = !DILocation(line: 474, column: 43, scope: !1521)
!1605 = !DILocation(line: 474, column: 42, scope: !1521)
!1606 = !DILocation(line: 474, column: 38, scope: !1521)
!1607 = !DILocation(line: 474, column: 60, scope: !1521)
!1608 = !DILocation(line: 474, column: 50, scope: !1521)
!1609 = !DILocation(line: 474, column: 74, scope: !1521)
!1610 = !DILocation(line: 474, column: 64, scope: !1521)
!1611 = !DILocalVariable(name: "ln_pre2_err", scope: !1521, file: !1, line: 475, type: !42)
!1612 = !DILocation(line: 475, column: 14, scope: !1521)
!1613 = !DILocation(line: 475, column: 34, scope: !1521)
!1614 = !DILocation(line: 475, column: 48, scope: !1521)
!1615 = !DILocation(line: 475, column: 38, scope: !1521)
!1616 = !DILocation(line: 475, column: 62, scope: !1521)
!1617 = !DILocation(line: 475, column: 52, scope: !1521)
!1618 = !DILocation(line: 475, column: 91, scope: !1521)
!1619 = !DILocation(line: 475, column: 86, scope: !1521)
!1620 = !DILocation(line: 475, column: 84, scope: !1521)
!1621 = !DILocation(line: 475, column: 66, scope: !1521)
!1622 = !DILocalVariable(name: "stat_e", scope: !1521, file: !1, line: 476, type: !50)
!1623 = !DILocation(line: 476, column: 11, scope: !1521)
!1624 = !DILocalVariable(name: "j", scope: !1521, file: !1, line: 478, type: !50)
!1625 = !DILocation(line: 478, column: 11, scope: !1521)
!1626 = !DILocation(line: 482, column: 12, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 482, column: 7)
!1628 = !DILocation(line: 482, column: 11, scope: !1627)
!1629 = !DILocation(line: 482, column: 16, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1631, file: !1, discriminator: 1)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !1, line: 482, column: 7)
!1632 = !DILocation(line: 482, column: 17, scope: !1630)
!1633 = !DILocation(line: 482, column: 7, scope: !1630)
!1634 = !DILocalVariable(name: "term1", scope: !1635, file: !1, line: 484, type: !42)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 482, column: 32)
!1636 = !DILocation(line: 484, column: 16, scope: !1635)
!1637 = !DILocation(line: 484, column: 36, scope: !1635)
!1638 = !DILocation(line: 484, column: 28, scope: !1635)
!1639 = !DILocation(line: 484, column: 27, scope: !1635)
!1640 = !DILocation(line: 484, column: 46, scope: !1635)
!1641 = !DILocation(line: 484, column: 49, scope: !1635)
!1642 = !DILocation(line: 484, column: 48, scope: !1635)
!1643 = !DILocation(line: 484, column: 44, scope: !1635)
!1644 = !DILocation(line: 484, column: 39, scope: !1635)
!1645 = !DILocalVariable(name: "term2", scope: !1635, file: !1, line: 485, type: !42)
!1646 = !DILocation(line: 485, column: 16, scope: !1635)
!1647 = !DILocation(line: 485, column: 29, scope: !1635)
!1648 = !DILocation(line: 485, column: 31, scope: !1635)
!1649 = !DILocation(line: 485, column: 30, scope: !1635)
!1650 = !DILocation(line: 485, column: 34, scope: !1635)
!1651 = !DILocation(line: 485, column: 33, scope: !1635)
!1652 = !DILocation(line: 485, column: 35, scope: !1635)
!1653 = !DILocation(line: 485, column: 27, scope: !1635)
!1654 = !DILocation(line: 485, column: 48, scope: !1635)
!1655 = !DILocation(line: 485, column: 50, scope: !1635)
!1656 = !DILocation(line: 485, column: 49, scope: !1635)
!1657 = !DILocation(line: 485, column: 53, scope: !1635)
!1658 = !DILocation(line: 485, column: 52, scope: !1635)
!1659 = !DILocation(line: 485, column: 54, scope: !1635)
!1660 = !DILocation(line: 485, column: 46, scope: !1635)
!1661 = !DILocation(line: 485, column: 41, scope: !1635)
!1662 = !DILocalVariable(name: "delta", scope: !1635, file: !1, line: 486, type: !42)
!1663 = !DILocation(line: 486, column: 16, scope: !1635)
!1664 = !DILocation(line: 487, column: 20, scope: !1635)
!1665 = !DILocation(line: 487, column: 28, scope: !1635)
!1666 = !DILocation(line: 487, column: 26, scope: !1635)
!1667 = !DILocation(line: 487, column: 17, scope: !1635)
!1668 = !DILocation(line: 488, column: 44, scope: !1635)
!1669 = !DILocation(line: 488, column: 39, scope: !1635)
!1670 = !DILocation(line: 488, column: 58, scope: !1635)
!1671 = !DILocation(line: 488, column: 53, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1635, file: !1, discriminator: 1)
!1673 = !DILocation(line: 488, column: 51, scope: !1635)
!1674 = !DILocation(line: 488, column: 36, scope: !1635)
!1675 = !DILocation(line: 488, column: 17, scope: !1635)
!1676 = !DILocation(line: 489, column: 18, scope: !1635)
!1677 = !DILocation(line: 489, column: 20, scope: !1635)
!1678 = !DILocation(line: 489, column: 19, scope: !1635)
!1679 = !DILocation(line: 489, column: 23, scope: !1635)
!1680 = !DILocation(line: 489, column: 22, scope: !1635)
!1681 = !DILocation(line: 489, column: 24, scope: !1635)
!1682 = !DILocation(line: 489, column: 31, scope: !1635)
!1683 = !DILocation(line: 489, column: 33, scope: !1635)
!1684 = !DILocation(line: 489, column: 32, scope: !1635)
!1685 = !DILocation(line: 489, column: 36, scope: !1635)
!1686 = !DILocation(line: 489, column: 35, scope: !1635)
!1687 = !DILocation(line: 489, column: 37, scope: !1635)
!1688 = !DILocation(line: 489, column: 29, scope: !1635)
!1689 = !DILocation(line: 489, column: 45, scope: !1635)
!1690 = !DILocation(line: 489, column: 48, scope: !1635)
!1691 = !DILocation(line: 489, column: 47, scope: !1635)
!1692 = !DILocation(line: 489, column: 51, scope: !1635)
!1693 = !DILocation(line: 489, column: 50, scope: !1635)
!1694 = !DILocation(line: 489, column: 42, scope: !1635)
!1695 = !DILocation(line: 489, column: 61, scope: !1635)
!1696 = !DILocation(line: 489, column: 60, scope: !1635)
!1697 = !DILocation(line: 489, column: 54, scope: !1635)
!1698 = !DILocation(line: 489, column: 14, scope: !1635)
!1699 = !DILocation(line: 490, column: 17, scope: !1635)
!1700 = !DILocation(line: 490, column: 24, scope: !1635)
!1701 = !DILocation(line: 490, column: 22, scope: !1635)
!1702 = !DILocation(line: 490, column: 15, scope: !1635)
!1703 = !DILocation(line: 491, column: 21, scope: !1635)
!1704 = !DILocation(line: 491, column: 18, scope: !1635)
!1705 = !DILocation(line: 492, column: 26, scope: !1635)
!1706 = !DILocation(line: 492, column: 33, scope: !1635)
!1707 = !DILocation(line: 492, column: 31, scope: !1635)
!1708 = !DILocation(line: 492, column: 21, scope: !1635)
!1709 = !DILocation(line: 492, column: 65, scope: !1635)
!1710 = !DILocation(line: 492, column: 60, scope: !1672)
!1711 = !DILocation(line: 492, column: 59, scope: !1635)
!1712 = !DILocation(line: 492, column: 42, scope: !1635)
!1713 = !DILocation(line: 492, column: 18, scope: !1635)
!1714 = !DILocation(line: 493, column: 17, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 493, column: 12)
!1716 = !DILocation(line: 493, column: 12, scope: !1715)
!1717 = !DILocation(line: 493, column: 49, scope: !1715)
!1718 = !DILocation(line: 493, column: 44, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1715, file: !1, discriminator: 2)
!1720 = !DILocation(line: 493, column: 42, scope: !1715)
!1721 = !DILocation(line: 493, column: 24, scope: !1715)
!1722 = !DILocation(line: 493, column: 12, scope: !1635)
!1723 = !DILocation(line: 493, column: 60, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1715, file: !1, discriminator: 1)
!1725 = !DILocation(line: 494, column: 7, scope: !1635)
!1726 = !DILocation(line: 482, column: 28, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1631, file: !1, discriminator: 2)
!1728 = !DILocation(line: 482, column: 7, scope: !1727)
!1729 = distinct !{!1729, !1730}
!1730 = !DILocation(line: 482, column: 7, scope: !1521)
!1731 = !DILocation(line: 496, column: 10, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 496, column: 10)
!1733 = !DILocation(line: 496, column: 12, scope: !1732)
!1734 = !DILocation(line: 496, column: 10, scope: !1521)
!1735 = !DILocation(line: 496, column: 32, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1732, file: !1, discriminator: 1)
!1737 = !DILocation(line: 496, column: 24, scope: !1736)
!1738 = !DILocation(line: 498, column: 10, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 498, column: 10)
!1740 = !DILocation(line: 498, column: 19, scope: !1739)
!1741 = !DILocation(line: 498, column: 10, scope: !1521)
!1742 = !DILocation(line: 499, column: 12, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 498, column: 27)
!1744 = !DILocation(line: 499, column: 16, scope: !1743)
!1745 = !DILocation(line: 500, column: 12, scope: !1743)
!1746 = !DILocation(line: 500, column: 16, scope: !1743)
!1747 = !DILocation(line: 501, column: 7, scope: !1743)
!1748 = !DILocation(line: 503, column: 40, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1739, file: !1, line: 502, column: 12)
!1750 = !DILocation(line: 503, column: 53, scope: !1749)
!1751 = !DILocation(line: 504, column: 40, scope: !1749)
!1752 = !DILocation(line: 504, column: 50, scope: !1749)
!1753 = !DILocation(line: 503, column: 18, scope: !1749)
!1754 = !DILocation(line: 503, column: 16, scope: !1749)
!1755 = !DILocation(line: 506, column: 12, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1749, file: !1, line: 506, column: 12)
!1757 = !DILocation(line: 506, column: 19, scope: !1756)
!1758 = !DILocation(line: 506, column: 12, scope: !1749)
!1759 = !DILocation(line: 507, column: 11, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 506, column: 35)
!1761 = !DILocation(line: 507, column: 19, scope: !1760)
!1762 = !DILocation(line: 507, column: 23, scope: !1760)
!1763 = !DILocation(line: 508, column: 11, scope: !1760)
!1764 = !DILocation(line: 508, column: 19, scope: !1760)
!1765 = !DILocation(line: 508, column: 23, scope: !1760)
!1766 = !DILocation(line: 509, column: 11, scope: !1760)
!1767 = distinct !{!1767, !1766}
!1768 = !DILocation(line: 509, column: 11, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1770, file: !1, discriminator: 1)
!1770 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 509, column: 11)
!1771 = !DILocation(line: 510, column: 9, scope: !1760)
!1772 = !DILocation(line: 512, column: 17, scope: !1521)
!1773 = !DILocation(line: 512, column: 17, scope: !1552)
!1774 = !DILocation(line: 512, column: 17, scope: !1554)
!1775 = !DILocation(line: 512, column: 17, scope: !1556)
!1776 = !DILocation(line: 512, column: 17, scope: !1558)
!1777 = !DILocation(line: 512, column: 17, scope: !1560)
!1778 = !DILocation(line: 512, column: 17, scope: !1562)
!1779 = !DILocation(line: 512, column: 15, scope: !1562)
!1780 = !DILocation(line: 513, column: 5, scope: !1521)
!1781 = !DILocation(line: 518, column: 10, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 514, column: 10)
!1783 = !DILocation(line: 518, column: 14, scope: !1782)
!1784 = !DILocation(line: 519, column: 10, scope: !1782)
!1785 = !DILocation(line: 519, column: 14, scope: !1782)
!1786 = !DILocation(line: 522, column: 15, scope: !1297)
!1787 = !DILocation(line: 522, column: 11, scope: !1297)
!1788 = !DILocation(line: 523, column: 23, scope: !1297)
!1789 = !DILocation(line: 523, column: 29, scope: !1297)
!1790 = !DILocation(line: 523, column: 40, scope: !1297)
!1791 = !DILocation(line: 523, column: 35, scope: !1297)
!1792 = !DILocation(line: 523, column: 27, scope: !1297)
!1793 = !DILocation(line: 523, column: 5, scope: !1297)
!1794 = !DILocation(line: 523, column: 13, scope: !1297)
!1795 = !DILocation(line: 523, column: 18, scope: !1297)
!1796 = !DILocation(line: 524, column: 23, scope: !1297)
!1797 = !DILocation(line: 524, column: 33, scope: !1297)
!1798 = !DILocation(line: 524, column: 27, scope: !1297)
!1799 = !DILocation(line: 524, column: 5, scope: !1297)
!1800 = !DILocation(line: 524, column: 13, scope: !1297)
!1801 = !DILocation(line: 524, column: 18, scope: !1297)
!1802 = !DILocation(line: 525, column: 53, scope: !1297)
!1803 = !DILocation(line: 525, column: 45, scope: !1297)
!1804 = !DILocation(line: 525, column: 68, scope: !1297)
!1805 = !DILocation(line: 525, column: 60, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1297, file: !1, discriminator: 1)
!1807 = !DILocation(line: 525, column: 58, scope: !1297)
!1808 = !DILocation(line: 525, column: 42, scope: !1297)
!1809 = !DILocation(line: 525, column: 5, scope: !1297)
!1810 = !DILocation(line: 525, column: 13, scope: !1297)
!1811 = !DILocation(line: 525, column: 17, scope: !1297)
!1812 = !DILocation(line: 526, column: 49, scope: !1297)
!1813 = !DILocation(line: 526, column: 57, scope: !1297)
!1814 = !DILocation(line: 526, column: 44, scope: !1297)
!1815 = !DILocation(line: 526, column: 42, scope: !1297)
!1816 = !DILocation(line: 526, column: 5, scope: !1297)
!1817 = !DILocation(line: 526, column: 13, scope: !1297)
!1818 = !DILocation(line: 526, column: 17, scope: !1297)
!1819 = !DILocation(line: 527, column: 12, scope: !1297)
!1820 = !DILocation(line: 527, column: 5, scope: !1297)
!1821 = !DILocalVariable(name: "pre1", scope: !1822, file: !1, line: 532, type: !53)
!1822 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 529, column: 8)
!1823 = !DILocation(line: 532, column: 19, scope: !1822)
!1824 = !DILocalVariable(name: "pre2", scope: !1822, file: !1, line: 532, type: !53)
!1825 = !DILocation(line: 532, column: 25, scope: !1822)
!1826 = !DILocalVariable(name: "sgn1", scope: !1822, file: !1, line: 533, type: !42)
!1827 = !DILocation(line: 533, column: 12, scope: !1822)
!1828 = !DILocalVariable(name: "sgn2", scope: !1822, file: !1, line: 533, type: !42)
!1829 = !DILocation(line: 533, column: 18, scope: !1822)
!1830 = !DILocalVariable(name: "F1", scope: !1822, file: !1, line: 534, type: !53)
!1831 = !DILocation(line: 534, column: 19, scope: !1822)
!1832 = !DILocalVariable(name: "F2", scope: !1822, file: !1, line: 534, type: !53)
!1833 = !DILocation(line: 534, column: 23, scope: !1822)
!1834 = !DILocalVariable(name: "status_F1", scope: !1822, file: !1, line: 535, type: !50)
!1835 = !DILocation(line: 535, column: 9, scope: !1822)
!1836 = !DILocalVariable(name: "status_F2", scope: !1822, file: !1, line: 535, type: !50)
!1837 = !DILocation(line: 535, column: 20, scope: !1822)
!1838 = !DILocalVariable(name: "ln_g1ca", scope: !1822, file: !1, line: 540, type: !53)
!1839 = !DILocation(line: 540, column: 19, scope: !1822)
!1840 = !DILocalVariable(name: "ln_g1cb", scope: !1822, file: !1, line: 540, type: !53)
!1841 = !DILocation(line: 540, column: 29, scope: !1822)
!1842 = !DILocalVariable(name: "ln_g2a", scope: !1822, file: !1, line: 540, type: !53)
!1843 = !DILocation(line: 540, column: 39, scope: !1822)
!1844 = !DILocalVariable(name: "ln_g2b", scope: !1822, file: !1, line: 540, type: !53)
!1845 = !DILocation(line: 540, column: 48, scope: !1822)
!1846 = !DILocalVariable(name: "sgn_g1ca", scope: !1822, file: !1, line: 541, type: !42)
!1847 = !DILocation(line: 541, column: 12, scope: !1822)
!1848 = !DILocalVariable(name: "sgn_g1cb", scope: !1822, file: !1, line: 541, type: !42)
!1849 = !DILocation(line: 541, column: 22, scope: !1822)
!1850 = !DILocalVariable(name: "sgn_g2a", scope: !1822, file: !1, line: 541, type: !42)
!1851 = !DILocation(line: 541, column: 32, scope: !1822)
!1852 = !DILocalVariable(name: "sgn_g2b", scope: !1822, file: !1, line: 541, type: !42)
!1853 = !DILocation(line: 541, column: 41, scope: !1822)
!1854 = !DILocalVariable(name: "stat_1ca", scope: !1822, file: !1, line: 542, type: !50)
!1855 = !DILocation(line: 542, column: 9, scope: !1822)
!1856 = !DILocation(line: 542, column: 41, scope: !1822)
!1857 = !DILocation(line: 542, column: 43, scope: !1822)
!1858 = !DILocation(line: 542, column: 42, scope: !1822)
!1859 = !DILocation(line: 542, column: 20, scope: !1822)
!1860 = !DILocalVariable(name: "stat_1cb", scope: !1822, file: !1, line: 543, type: !50)
!1861 = !DILocation(line: 543, column: 9, scope: !1822)
!1862 = !DILocation(line: 543, column: 41, scope: !1822)
!1863 = !DILocation(line: 543, column: 43, scope: !1822)
!1864 = !DILocation(line: 543, column: 42, scope: !1822)
!1865 = !DILocation(line: 543, column: 20, scope: !1822)
!1866 = !DILocalVariable(name: "stat_2a", scope: !1822, file: !1, line: 544, type: !50)
!1867 = !DILocation(line: 544, column: 9, scope: !1822)
!1868 = !DILocation(line: 544, column: 41, scope: !1822)
!1869 = !DILocation(line: 544, column: 20, scope: !1822)
!1870 = !DILocalVariable(name: "stat_2b", scope: !1822, file: !1, line: 545, type: !50)
!1871 = !DILocation(line: 545, column: 9, scope: !1822)
!1872 = !DILocation(line: 545, column: 41, scope: !1822)
!1873 = !DILocation(line: 545, column: 20, scope: !1822)
!1874 = !DILocalVariable(name: "ok1", scope: !1822, file: !1, line: 546, type: !50)
!1875 = !DILocation(line: 546, column: 9, scope: !1822)
!1876 = !DILocation(line: 546, column: 16, scope: !1822)
!1877 = !DILocation(line: 546, column: 25, scope: !1822)
!1878 = !DILocation(line: 546, column: 40, scope: !1822)
!1879 = !DILocation(line: 546, column: 43, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1822, file: !1, discriminator: 1)
!1881 = !DILocation(line: 546, column: 52, scope: !1880)
!1882 = !DILocation(line: 546, column: 40, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1822, file: !1, discriminator: 2)
!1884 = !DILocation(line: 546, column: 9, scope: !1883)
!1885 = !DILocalVariable(name: "ok2", scope: !1822, file: !1, line: 547, type: !50)
!1886 = !DILocation(line: 547, column: 9, scope: !1822)
!1887 = !DILocation(line: 547, column: 16, scope: !1822)
!1888 = !DILocation(line: 547, column: 25, scope: !1822)
!1889 = !DILocation(line: 547, column: 40, scope: !1822)
!1890 = !DILocation(line: 547, column: 43, scope: !1880)
!1891 = !DILocation(line: 547, column: 52, scope: !1880)
!1892 = !DILocation(line: 547, column: 40, scope: !1883)
!1893 = !DILocation(line: 547, column: 9, scope: !1883)
!1894 = !DILocalVariable(name: "ln_gc", scope: !1822, file: !1, line: 549, type: !53)
!1895 = !DILocation(line: 549, column: 19, scope: !1822)
!1896 = !DILocalVariable(name: "ln_gd", scope: !1822, file: !1, line: 549, type: !53)
!1897 = !DILocation(line: 549, column: 27, scope: !1822)
!1898 = !DILocalVariable(name: "ln_gmd", scope: !1822, file: !1, line: 549, type: !53)
!1899 = !DILocation(line: 549, column: 35, scope: !1822)
!1900 = !DILocalVariable(name: "sgn_gc", scope: !1822, file: !1, line: 550, type: !42)
!1901 = !DILocation(line: 550, column: 12, scope: !1822)
!1902 = !DILocalVariable(name: "sgn_gd", scope: !1822, file: !1, line: 550, type: !42)
!1903 = !DILocation(line: 550, column: 20, scope: !1822)
!1904 = !DILocalVariable(name: "sgn_gmd", scope: !1822, file: !1, line: 550, type: !42)
!1905 = !DILocation(line: 550, column: 28, scope: !1822)
!1906 = !DILocation(line: 551, column: 27, scope: !1822)
!1907 = !DILocation(line: 551, column: 5, scope: !1822)
!1908 = !DILocation(line: 552, column: 27, scope: !1822)
!1909 = !DILocation(line: 552, column: 5, scope: !1822)
!1910 = !DILocation(line: 553, column: 27, scope: !1822)
!1911 = !DILocation(line: 553, column: 26, scope: !1822)
!1912 = !DILocation(line: 553, column: 5, scope: !1822)
!1913 = !DILocation(line: 555, column: 12, scope: !1822)
!1914 = !DILocation(line: 555, column: 21, scope: !1822)
!1915 = !DILocation(line: 555, column: 19, scope: !1822)
!1916 = !DILocation(line: 555, column: 31, scope: !1822)
!1917 = !DILocation(line: 555, column: 29, scope: !1822)
!1918 = !DILocation(line: 555, column: 42, scope: !1822)
!1919 = !DILocation(line: 555, column: 40, scope: !1822)
!1920 = !DILocation(line: 555, column: 10, scope: !1822)
!1921 = !DILocation(line: 556, column: 12, scope: !1822)
!1922 = !DILocation(line: 556, column: 21, scope: !1822)
!1923 = !DILocation(line: 556, column: 19, scope: !1822)
!1924 = !DILocation(line: 556, column: 31, scope: !1822)
!1925 = !DILocation(line: 556, column: 29, scope: !1822)
!1926 = !DILocation(line: 556, column: 42, scope: !1822)
!1927 = !DILocation(line: 556, column: 40, scope: !1822)
!1928 = !DILocation(line: 556, column: 10, scope: !1822)
!1929 = !DILocation(line: 558, column: 8, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 558, column: 8)
!1931 = !DILocation(line: 558, column: 12, scope: !1930)
!1932 = !DILocation(line: 558, column: 15, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1930, file: !1, discriminator: 1)
!1934 = !DILocation(line: 558, column: 8, scope: !1933)
!1935 = !DILocalVariable(name: "ln_pre1_val", scope: !1936, file: !1, line: 559, type: !42)
!1936 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 558, column: 20)
!1937 = !DILocation(line: 559, column: 14, scope: !1936)
!1938 = !DILocation(line: 559, column: 34, scope: !1936)
!1939 = !DILocation(line: 559, column: 46, scope: !1936)
!1940 = !DILocation(line: 559, column: 38, scope: !1936)
!1941 = !DILocation(line: 559, column: 61, scope: !1936)
!1942 = !DILocation(line: 559, column: 51, scope: !1936)
!1943 = !DILocation(line: 559, column: 75, scope: !1936)
!1944 = !DILocation(line: 559, column: 65, scope: !1936)
!1945 = !DILocalVariable(name: "ln_pre2_val", scope: !1936, file: !1, line: 560, type: !42)
!1946 = !DILocation(line: 560, column: 14, scope: !1936)
!1947 = !DILocation(line: 560, column: 34, scope: !1936)
!1948 = !DILocation(line: 560, column: 47, scope: !1936)
!1949 = !DILocation(line: 560, column: 38, scope: !1936)
!1950 = !DILocation(line: 560, column: 60, scope: !1936)
!1951 = !DILocation(line: 560, column: 51, scope: !1936)
!1952 = !DILocation(line: 560, column: 74, scope: !1936)
!1953 = !DILocation(line: 560, column: 65, scope: !1936)
!1954 = !DILocation(line: 560, column: 80, scope: !1936)
!1955 = !DILocation(line: 560, column: 90, scope: !1936)
!1956 = !DILocation(line: 560, column: 89, scope: !1936)
!1957 = !DILocation(line: 560, column: 82, scope: !1936)
!1958 = !DILocation(line: 560, column: 81, scope: !1936)
!1959 = !DILocation(line: 560, column: 78, scope: !1936)
!1960 = !DILocalVariable(name: "ln_pre1_err", scope: !1936, file: !1, line: 561, type: !42)
!1961 = !DILocation(line: 561, column: 14, scope: !1936)
!1962 = !DILocation(line: 561, column: 34, scope: !1936)
!1963 = !DILocation(line: 561, column: 46, scope: !1936)
!1964 = !DILocation(line: 561, column: 38, scope: !1936)
!1965 = !DILocation(line: 561, column: 60, scope: !1936)
!1966 = !DILocation(line: 561, column: 50, scope: !1936)
!1967 = !DILocation(line: 561, column: 74, scope: !1936)
!1968 = !DILocation(line: 561, column: 64, scope: !1936)
!1969 = !DILocalVariable(name: "ln_pre2_err", scope: !1936, file: !1, line: 562, type: !42)
!1970 = !DILocation(line: 562, column: 14, scope: !1936)
!1971 = !DILocation(line: 562, column: 34, scope: !1936)
!1972 = !DILocation(line: 562, column: 47, scope: !1936)
!1973 = !DILocation(line: 562, column: 38, scope: !1936)
!1974 = !DILocation(line: 562, column: 60, scope: !1936)
!1975 = !DILocation(line: 562, column: 51, scope: !1936)
!1976 = !DILocation(line: 562, column: 74, scope: !1936)
!1977 = !DILocation(line: 562, column: 65, scope: !1936)
!1978 = !DILocation(line: 563, column: 10, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1936, file: !1, line: 563, column: 10)
!1980 = !DILocation(line: 563, column: 22, scope: !1979)
!1981 = !DILocation(line: 563, column: 40, scope: !1979)
!1982 = !DILocation(line: 563, column: 43, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1979, file: !1, discriminator: 1)
!1984 = !DILocation(line: 563, column: 55, scope: !1983)
!1985 = !DILocation(line: 563, column: 10, scope: !1983)
!1986 = !DILocation(line: 564, column: 26, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 563, column: 74)
!1988 = !DILocation(line: 564, column: 39, scope: !1987)
!1989 = !DILocation(line: 564, column: 9, scope: !1987)
!1990 = !DILocation(line: 565, column: 26, scope: !1987)
!1991 = !DILocation(line: 565, column: 39, scope: !1987)
!1992 = !DILocation(line: 565, column: 9, scope: !1987)
!1993 = !DILocation(line: 566, column: 21, scope: !1987)
!1994 = !DILocation(line: 566, column: 14, scope: !1987)
!1995 = !DILocation(line: 566, column: 18, scope: !1987)
!1996 = !DILocation(line: 567, column: 21, scope: !1987)
!1997 = !DILocation(line: 567, column: 14, scope: !1987)
!1998 = !DILocation(line: 567, column: 18, scope: !1987)
!1999 = !DILocation(line: 568, column: 7, scope: !1987)
!2000 = !DILocation(line: 570, column: 9, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1979, file: !1, line: 569, column: 12)
!2002 = distinct !{!2002, !2000}
!2003 = !DILocation(line: 570, column: 9, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !2005, file: !1, discriminator: 1)
!2005 = distinct !DILexicalBlock(scope: !2001, file: !1, line: 570, column: 9)
!2006 = distinct !{!2006, !2007}
!2007 = !DILocation(line: 570, column: 9, scope: !2005)
!2008 = !DILocation(line: 570, column: 9, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2010, file: !1, discriminator: 2)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !1, line: 570, column: 9)
!2011 = !DILocation(line: 570, column: 9, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2005, file: !1, discriminator: 3)
!2013 = !DILocation(line: 572, column: 5, scope: !1936)
!2014 = !DILocation(line: 573, column: 13, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 573, column: 13)
!2016 = !DILocation(line: 573, column: 17, scope: !2015)
!2017 = !DILocation(line: 573, column: 21, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !2015, file: !1, discriminator: 1)
!2019 = !DILocation(line: 573, column: 13, scope: !2018)
!2020 = !DILocalVariable(name: "ln_pre1_val", scope: !2021, file: !1, line: 574, type: !42)
!2021 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 573, column: 26)
!2022 = !DILocation(line: 574, column: 14, scope: !2021)
!2023 = !DILocation(line: 574, column: 34, scope: !2021)
!2024 = !DILocation(line: 574, column: 46, scope: !2021)
!2025 = !DILocation(line: 574, column: 38, scope: !2021)
!2026 = !DILocation(line: 574, column: 60, scope: !2021)
!2027 = !DILocation(line: 574, column: 50, scope: !2021)
!2028 = !DILocation(line: 574, column: 74, scope: !2021)
!2029 = !DILocation(line: 574, column: 64, scope: !2021)
!2030 = !DILocalVariable(name: "ln_pre1_err", scope: !2021, file: !1, line: 575, type: !42)
!2031 = !DILocation(line: 575, column: 14, scope: !2021)
!2032 = !DILocation(line: 575, column: 34, scope: !2021)
!2033 = !DILocation(line: 575, column: 46, scope: !2021)
!2034 = !DILocation(line: 575, column: 38, scope: !2021)
!2035 = !DILocation(line: 575, column: 60, scope: !2021)
!2036 = !DILocation(line: 575, column: 50, scope: !2021)
!2037 = !DILocation(line: 575, column: 74, scope: !2021)
!2038 = !DILocation(line: 575, column: 64, scope: !2021)
!2039 = !DILocation(line: 576, column: 10, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 576, column: 10)
!2041 = !DILocation(line: 576, column: 22, scope: !2040)
!2042 = !DILocation(line: 576, column: 10, scope: !2021)
!2043 = !DILocation(line: 577, column: 26, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 576, column: 41)
!2045 = !DILocation(line: 577, column: 39, scope: !2044)
!2046 = !DILocation(line: 577, column: 9, scope: !2044)
!2047 = !DILocation(line: 578, column: 21, scope: !2044)
!2048 = !DILocation(line: 578, column: 14, scope: !2044)
!2049 = !DILocation(line: 578, column: 18, scope: !2044)
!2050 = !DILocation(line: 579, column: 14, scope: !2044)
!2051 = !DILocation(line: 579, column: 18, scope: !2044)
!2052 = !DILocation(line: 580, column: 14, scope: !2044)
!2053 = !DILocation(line: 580, column: 18, scope: !2044)
!2054 = !DILocation(line: 581, column: 7, scope: !2044)
!2055 = !DILocation(line: 583, column: 9, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 582, column: 12)
!2057 = distinct !{!2057, !2055}
!2058 = !DILocation(line: 583, column: 9, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2060, file: !1, discriminator: 1)
!2060 = distinct !DILexicalBlock(scope: !2056, file: !1, line: 583, column: 9)
!2061 = distinct !{!2061, !2062}
!2062 = !DILocation(line: 583, column: 9, scope: !2060)
!2063 = !DILocation(line: 583, column: 9, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2065, file: !1, discriminator: 2)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 583, column: 9)
!2066 = !DILocation(line: 583, column: 9, scope: !2067)
!2067 = !DILexicalBlockFile(scope: !2060, file: !1, discriminator: 3)
!2068 = !DILocation(line: 585, column: 5, scope: !2021)
!2069 = !DILocation(line: 586, column: 14, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 586, column: 13)
!2071 = !DILocation(line: 586, column: 18, scope: !2070)
!2072 = !DILocation(line: 586, column: 21, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2070, file: !1, discriminator: 1)
!2074 = !DILocation(line: 586, column: 13, scope: !2073)
!2075 = !DILocalVariable(name: "ln_pre2_val", scope: !2076, file: !1, line: 587, type: !42)
!2076 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 586, column: 26)
!2077 = !DILocation(line: 587, column: 14, scope: !2076)
!2078 = !DILocation(line: 587, column: 34, scope: !2076)
!2079 = !DILocation(line: 587, column: 47, scope: !2076)
!2080 = !DILocation(line: 587, column: 38, scope: !2076)
!2081 = !DILocation(line: 587, column: 60, scope: !2076)
!2082 = !DILocation(line: 587, column: 51, scope: !2076)
!2083 = !DILocation(line: 587, column: 73, scope: !2076)
!2084 = !DILocation(line: 587, column: 64, scope: !2076)
!2085 = !DILocation(line: 587, column: 79, scope: !2076)
!2086 = !DILocation(line: 587, column: 89, scope: !2076)
!2087 = !DILocation(line: 587, column: 88, scope: !2076)
!2088 = !DILocation(line: 587, column: 81, scope: !2076)
!2089 = !DILocation(line: 587, column: 80, scope: !2076)
!2090 = !DILocation(line: 587, column: 77, scope: !2076)
!2091 = !DILocalVariable(name: "ln_pre2_err", scope: !2076, file: !1, line: 588, type: !42)
!2092 = !DILocation(line: 588, column: 14, scope: !2076)
!2093 = !DILocation(line: 588, column: 34, scope: !2076)
!2094 = !DILocation(line: 588, column: 47, scope: !2076)
!2095 = !DILocation(line: 588, column: 38, scope: !2076)
!2096 = !DILocation(line: 588, column: 60, scope: !2076)
!2097 = !DILocation(line: 588, column: 51, scope: !2076)
!2098 = !DILocation(line: 588, column: 73, scope: !2076)
!2099 = !DILocation(line: 588, column: 64, scope: !2076)
!2100 = !DILocation(line: 589, column: 10, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2076, file: !1, line: 589, column: 10)
!2102 = !DILocation(line: 589, column: 22, scope: !2101)
!2103 = !DILocation(line: 589, column: 10, scope: !2076)
!2104 = !DILocation(line: 590, column: 14, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2101, file: !1, line: 589, column: 41)
!2106 = !DILocation(line: 590, column: 18, scope: !2105)
!2107 = !DILocation(line: 591, column: 14, scope: !2105)
!2108 = !DILocation(line: 591, column: 18, scope: !2105)
!2109 = !DILocation(line: 592, column: 26, scope: !2105)
!2110 = !DILocation(line: 592, column: 39, scope: !2105)
!2111 = !DILocation(line: 592, column: 9, scope: !2105)
!2112 = !DILocation(line: 593, column: 21, scope: !2105)
!2113 = !DILocation(line: 593, column: 14, scope: !2105)
!2114 = !DILocation(line: 593, column: 18, scope: !2105)
!2115 = !DILocation(line: 594, column: 7, scope: !2105)
!2116 = !DILocation(line: 596, column: 9, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2101, file: !1, line: 595, column: 12)
!2118 = distinct !{!2118, !2116}
!2119 = !DILocation(line: 596, column: 9, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2121, file: !1, discriminator: 1)
!2121 = distinct !DILexicalBlock(scope: !2117, file: !1, line: 596, column: 9)
!2122 = distinct !{!2122, !2123}
!2123 = !DILocation(line: 596, column: 9, scope: !2121)
!2124 = !DILocation(line: 596, column: 9, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2126, file: !1, discriminator: 2)
!2126 = distinct !DILexicalBlock(scope: !2121, file: !1, line: 596, column: 9)
!2127 = !DILocation(line: 596, column: 9, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2121, file: !1, discriminator: 3)
!2129 = !DILocation(line: 598, column: 5, scope: !2076)
!2130 = !DILocation(line: 600, column: 12, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2070, file: !1, line: 599, column: 10)
!2132 = !DILocation(line: 600, column: 16, scope: !2131)
!2133 = !DILocation(line: 601, column: 12, scope: !2131)
!2134 = !DILocation(line: 601, column: 16, scope: !2131)
!2135 = !DILocation(line: 602, column: 7, scope: !2131)
!2136 = distinct !{!2136, !2135}
!2137 = !DILocation(line: 602, column: 7, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2139, file: !1, discriminator: 1)
!2139 = distinct !DILexicalBlock(scope: !2131, file: !1, line: 602, column: 7)
!2140 = distinct !{!2140, !2141}
!2141 = !DILocation(line: 602, column: 7, scope: !2139)
!2142 = !DILocation(line: 602, column: 7, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2144, file: !1, discriminator: 2)
!2144 = distinct !DILexicalBlock(scope: !2139, file: !1, line: 602, column: 7)
!2145 = !DILocation(line: 602, column: 7, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2139, file: !1, discriminator: 3)
!2147 = !DILocation(line: 605, column: 37, scope: !1822)
!2148 = !DILocation(line: 605, column: 42, scope: !1822)
!2149 = !DILocation(line: 605, column: 49, scope: !1822)
!2150 = !DILocation(line: 605, column: 48, scope: !1822)
!2151 = !DILocation(line: 605, column: 56, scope: !1822)
!2152 = !DILocation(line: 605, column: 55, scope: !1822)
!2153 = !DILocation(line: 605, column: 17, scope: !1822)
!2154 = !DILocation(line: 605, column: 15, scope: !1822)
!2155 = !DILocation(line: 606, column: 35, scope: !1822)
!2156 = !DILocation(line: 606, column: 37, scope: !1822)
!2157 = !DILocation(line: 606, column: 36, scope: !1822)
!2158 = !DILocation(line: 606, column: 40, scope: !1822)
!2159 = !DILocation(line: 606, column: 42, scope: !1822)
!2160 = !DILocation(line: 606, column: 41, scope: !1822)
!2161 = !DILocation(line: 606, column: 49, scope: !1822)
!2162 = !DILocation(line: 606, column: 48, scope: !1822)
!2163 = !DILocation(line: 606, column: 56, scope: !1822)
!2164 = !DILocation(line: 606, column: 55, scope: !1822)
!2165 = !DILocation(line: 606, column: 17, scope: !1822)
!2166 = !DILocation(line: 606, column: 15, scope: !1822)
!2167 = !DILocation(line: 608, column: 25, scope: !1822)
!2168 = !DILocation(line: 608, column: 32, scope: !1822)
!2169 = !DILocation(line: 608, column: 28, scope: !1822)
!2170 = !DILocation(line: 608, column: 43, scope: !1822)
!2171 = !DILocation(line: 608, column: 50, scope: !1822)
!2172 = !DILocation(line: 608, column: 46, scope: !1822)
!2173 = !DILocation(line: 608, column: 36, scope: !1822)
!2174 = !DILocation(line: 608, column: 5, scope: !1822)
!2175 = !DILocation(line: 608, column: 13, scope: !1822)
!2176 = !DILocation(line: 608, column: 18, scope: !1822)
!2177 = !DILocation(line: 609, column: 30, scope: !1822)
!2178 = !DILocation(line: 609, column: 37, scope: !1822)
!2179 = !DILocation(line: 609, column: 33, scope: !1822)
!2180 = !DILocation(line: 609, column: 20, scope: !1822)
!2181 = !DILocation(line: 609, column: 54, scope: !1822)
!2182 = !DILocation(line: 609, column: 61, scope: !1822)
!2183 = !DILocation(line: 609, column: 57, scope: !1822)
!2184 = !DILocation(line: 609, column: 44, scope: !1880)
!2185 = !DILocation(line: 609, column: 42, scope: !1822)
!2186 = !DILocation(line: 609, column: 5, scope: !1822)
!2187 = !DILocation(line: 609, column: 13, scope: !1822)
!2188 = !DILocation(line: 609, column: 18, scope: !1822)
!2189 = !DILocation(line: 610, column: 30, scope: !1822)
!2190 = !DILocation(line: 610, column: 37, scope: !1822)
!2191 = !DILocation(line: 610, column: 33, scope: !1822)
!2192 = !DILocation(line: 610, column: 20, scope: !1822)
!2193 = !DILocation(line: 610, column: 54, scope: !1822)
!2194 = !DILocation(line: 610, column: 61, scope: !1822)
!2195 = !DILocation(line: 610, column: 57, scope: !1822)
!2196 = !DILocation(line: 610, column: 44, scope: !1880)
!2197 = !DILocation(line: 610, column: 42, scope: !1822)
!2198 = !DILocation(line: 610, column: 5, scope: !1822)
!2199 = !DILocation(line: 610, column: 13, scope: !1822)
!2200 = !DILocation(line: 610, column: 17, scope: !1822)
!2201 = !DILocation(line: 611, column: 55, scope: !1822)
!2202 = !DILocation(line: 611, column: 62, scope: !1822)
!2203 = !DILocation(line: 611, column: 58, scope: !1822)
!2204 = !DILocation(line: 611, column: 45, scope: !1822)
!2205 = !DILocation(line: 611, column: 79, scope: !1822)
!2206 = !DILocation(line: 611, column: 86, scope: !1822)
!2207 = !DILocation(line: 611, column: 82, scope: !1822)
!2208 = !DILocation(line: 611, column: 69, scope: !1880)
!2209 = !DILocation(line: 611, column: 67, scope: !1822)
!2210 = !DILocation(line: 611, column: 42, scope: !1822)
!2211 = !DILocation(line: 611, column: 5, scope: !1822)
!2212 = !DILocation(line: 611, column: 13, scope: !1822)
!2213 = !DILocation(line: 611, column: 17, scope: !1822)
!2214 = !DILocation(line: 612, column: 49, scope: !1822)
!2215 = !DILocation(line: 612, column: 57, scope: !1822)
!2216 = !DILocation(line: 612, column: 44, scope: !1822)
!2217 = !DILocation(line: 612, column: 42, scope: !1822)
!2218 = !DILocation(line: 612, column: 5, scope: !1822)
!2219 = !DILocation(line: 612, column: 13, scope: !1822)
!2220 = !DILocation(line: 612, column: 17, scope: !1822)
!2221 = !DILocation(line: 614, column: 9, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 614, column: 9)
!2223 = !DILocation(line: 614, column: 9, scope: !1822)
!2224 = !DILocation(line: 615, column: 14, scope: !2222)
!2225 = !DILocation(line: 615, column: 7, scope: !2222)
!2226 = !DILocation(line: 617, column: 9, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 617, column: 9)
!2228 = !DILocation(line: 617, column: 9, scope: !1822)
!2229 = !DILocation(line: 618, column: 14, scope: !2227)
!2230 = !DILocation(line: 618, column: 7, scope: !2227)
!2231 = !DILocation(line: 620, column: 5, scope: !1822)
!2232 = !DILocation(line: 622, column: 1, scope: !1263)
!2233 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_e", scope: !1, file: !1, line: 779, type: !613, isLocal: false, isDefinition: true, scopeLine: 782, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!2234 = !DILocalVariable(name: "aR", arg: 1, scope: !2233, file: !1, line: 779, type: !51)
!2235 = !DILocation(line: 779, column: 39, scope: !2233)
!2236 = !DILocalVariable(name: "aI", arg: 2, scope: !2233, file: !1, line: 779, type: !51)
!2237 = !DILocation(line: 779, column: 56, scope: !2233)
!2238 = !DILocalVariable(name: "c", arg: 3, scope: !2233, file: !1, line: 779, type: !51)
!2239 = !DILocation(line: 779, column: 73, scope: !2233)
!2240 = !DILocalVariable(name: "x", arg: 4, scope: !2233, file: !1, line: 780, type: !51)
!2241 = !DILocation(line: 780, column: 42, scope: !2233)
!2242 = !DILocalVariable(name: "result", arg: 5, scope: !2233, file: !1, line: 781, type: !52)
!2243 = !DILocation(line: 781, column: 45, scope: !2233)
!2244 = !DILocalVariable(name: "ax", scope: !2233, file: !1, line: 783, type: !51)
!2245 = !DILocation(line: 783, column: 16, scope: !2233)
!2246 = !DILocation(line: 783, column: 26, scope: !2233)
!2247 = !DILocation(line: 783, column: 21, scope: !2233)
!2248 = !DILocalVariable(name: "rintc", scope: !2233, file: !1, line: 784, type: !51)
!2249 = !DILocation(line: 784, column: 16, scope: !2233)
!2250 = !DILocation(line: 784, column: 30, scope: !2233)
!2251 = !DILocation(line: 784, column: 32, scope: !2233)
!2252 = !DILocation(line: 784, column: 24, scope: !2233)
!2253 = !DILocalVariable(name: "c_neg_integer", scope: !2233, file: !1, line: 785, type: !94)
!2254 = !DILocation(line: 785, column: 13, scope: !2233)
!2255 = !DILocation(line: 785, column: 31, scope: !2233)
!2256 = !DILocation(line: 785, column: 33, scope: !2233)
!2257 = !DILocation(line: 785, column: 40, scope: !2233)
!2258 = !DILocation(line: 785, column: 49, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2233, file: !1, discriminator: 1)
!2260 = !DILocation(line: 785, column: 53, scope: !2259)
!2261 = !DILocation(line: 785, column: 51, scope: !2259)
!2262 = !DILocation(line: 785, column: 44, scope: !2259)
!2263 = !DILocation(line: 785, column: 60, scope: !2259)
!2264 = !DILocation(line: 785, column: 40, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2233, file: !1, discriminator: 2)
!2266 = !DILocation(line: 785, column: 13, scope: !2265)
!2267 = !DILocation(line: 787, column: 3, scope: !2233)
!2268 = !DILocation(line: 787, column: 11, scope: !2233)
!2269 = !DILocation(line: 787, column: 15, scope: !2233)
!2270 = !DILocation(line: 788, column: 3, scope: !2233)
!2271 = !DILocation(line: 788, column: 11, scope: !2233)
!2272 = !DILocation(line: 788, column: 15, scope: !2233)
!2273 = !DILocation(line: 790, column: 6, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 790, column: 6)
!2275 = !DILocation(line: 790, column: 9, scope: !2274)
!2276 = !DILocation(line: 790, column: 16, scope: !2274)
!2277 = !DILocation(line: 790, column: 19, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2274, file: !1, discriminator: 1)
!2279 = !DILocation(line: 790, column: 33, scope: !2278)
!2280 = !DILocation(line: 790, column: 36, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2274, file: !1, discriminator: 2)
!2282 = !DILocation(line: 790, column: 38, scope: !2281)
!2283 = !DILocation(line: 790, column: 6, scope: !2281)
!2284 = !DILocation(line: 791, column: 5, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2274, file: !1, line: 790, column: 46)
!2286 = distinct !{!2286, !2284}
!2287 = !DILocation(line: 791, column: 5, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2289, file: !1, discriminator: 1)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !1, line: 791, column: 5)
!2290 = distinct !{!2290, !2291}
!2291 = !DILocation(line: 791, column: 5, scope: !2289)
!2292 = !DILocation(line: 791, column: 5, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2294, file: !1, discriminator: 2)
!2294 = distinct !DILexicalBlock(scope: !2289, file: !1, line: 791, column: 5)
!2295 = !DILocation(line: 791, column: 5, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2289, file: !1, discriminator: 3)
!2297 = !DILocation(line: 792, column: 3, scope: !2285)
!2298 = !DILocation(line: 794, column: 10, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 794, column: 9)
!2300 = !DILocation(line: 794, column: 13, scope: !2299)
!2301 = !DILocation(line: 794, column: 20, scope: !2299)
!2302 = !DILocation(line: 794, column: 28, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2299, file: !1, discriminator: 1)
!2304 = !DILocation(line: 794, column: 23, scope: !2303)
!2305 = !DILocation(line: 794, column: 32, scope: !2303)
!2306 = !DILocation(line: 794, column: 39, scope: !2303)
!2307 = !DILocation(line: 794, column: 47, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2299, file: !1, discriminator: 2)
!2309 = !DILocation(line: 794, column: 42, scope: !2308)
!2310 = !DILocation(line: 794, column: 51, scope: !2308)
!2311 = !DILocation(line: 795, column: 6, scope: !2299)
!2312 = !DILocation(line: 795, column: 10, scope: !2303)
!2313 = !DILocation(line: 795, column: 12, scope: !2303)
!2314 = !DILocation(line: 795, column: 18, scope: !2303)
!2315 = !DILocation(line: 795, column: 21, scope: !2308)
!2316 = !DILocation(line: 795, column: 23, scope: !2308)
!2317 = !DILocation(line: 794, column: 9, scope: !2318)
!2318 = !DILexicalBlockFile(scope: !2233, file: !1, discriminator: 3)
!2319 = !DILocation(line: 797, column: 35, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2299, file: !1, line: 796, column: 7)
!2321 = !DILocation(line: 797, column: 39, scope: !2320)
!2322 = !DILocation(line: 797, column: 43, scope: !2320)
!2323 = !DILocation(line: 797, column: 46, scope: !2320)
!2324 = !DILocation(line: 797, column: 49, scope: !2320)
!2325 = !DILocation(line: 797, column: 12, scope: !2320)
!2326 = !DILocation(line: 797, column: 5, scope: !2320)
!2327 = !DILocation(line: 799, column: 16, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2299, file: !1, line: 799, column: 11)
!2329 = !DILocation(line: 799, column: 11, scope: !2328)
!2330 = !DILocation(line: 799, column: 20, scope: !2328)
!2331 = !DILocation(line: 799, column: 27, scope: !2328)
!2332 = !DILocation(line: 799, column: 35, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2328, file: !1, discriminator: 1)
!2334 = !DILocation(line: 799, column: 30, scope: !2333)
!2335 = !DILocation(line: 799, column: 39, scope: !2333)
!2336 = !DILocation(line: 799, column: 11, scope: !2333)
!2337 = !DILocation(line: 800, column: 8, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !1, line: 800, column: 8)
!2339 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 799, column: 47)
!2340 = !DILocation(line: 800, column: 10, scope: !2338)
!2341 = !DILocation(line: 800, column: 8, scope: !2339)
!2342 = !DILocation(line: 801, column: 35, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !1, line: 800, column: 19)
!2344 = !DILocation(line: 801, column: 39, scope: !2343)
!2345 = !DILocation(line: 801, column: 43, scope: !2343)
!2346 = !DILocation(line: 801, column: 46, scope: !2343)
!2347 = !DILocation(line: 801, column: 49, scope: !2343)
!2348 = !DILocation(line: 801, column: 14, scope: !2343)
!2349 = !DILocation(line: 801, column: 7, scope: !2343)
!2350 = !DILocation(line: 804, column: 37, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2338, file: !1, line: 803, column: 10)
!2352 = !DILocation(line: 804, column: 41, scope: !2351)
!2353 = !DILocation(line: 804, column: 45, scope: !2351)
!2354 = !DILocation(line: 804, column: 48, scope: !2351)
!2355 = !DILocation(line: 804, column: 51, scope: !2351)
!2356 = !DILocation(line: 804, column: 14, scope: !2351)
!2357 = !DILocation(line: 804, column: 7, scope: !2351)
!2358 = !DILocation(line: 808, column: 8, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !1, line: 808, column: 8)
!2360 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 807, column: 8)
!2361 = !DILocation(line: 808, column: 10, scope: !2359)
!2362 = !DILocation(line: 808, column: 8, scope: !2360)
!2363 = !DILocation(line: 811, column: 35, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2359, file: !1, line: 808, column: 17)
!2365 = !DILocation(line: 811, column: 39, scope: !2364)
!2366 = !DILocation(line: 811, column: 43, scope: !2364)
!2367 = !DILocation(line: 811, column: 46, scope: !2364)
!2368 = !DILocation(line: 811, column: 49, scope: !2364)
!2369 = !DILocation(line: 811, column: 14, scope: !2364)
!2370 = !DILocation(line: 811, column: 7, scope: !2364)
!2371 = !DILocation(line: 815, column: 5, scope: !2360)
!2372 = !DILocation(line: 815, column: 13, scope: !2360)
!2373 = !DILocation(line: 815, column: 17, scope: !2360)
!2374 = !DILocation(line: 816, column: 5, scope: !2360)
!2375 = !DILocation(line: 816, column: 13, scope: !2360)
!2376 = !DILocation(line: 816, column: 17, scope: !2360)
!2377 = !DILocation(line: 817, column: 5, scope: !2360)
!2378 = distinct !{!2378, !2377}
!2379 = !DILocation(line: 817, column: 5, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2381, file: !1, discriminator: 1)
!2381 = distinct !DILexicalBlock(scope: !2360, file: !1, line: 817, column: 5)
!2382 = !DILocation(line: 819, column: 1, scope: !2233)
!2383 = distinct !DISubprogram(name: "hyperg_2F1_conj_series", scope: !1, file: !1, line: 112, type: !2384, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!50, !51, !51, !51, !42, !52}
!2386 = !DILocalVariable(name: "aR", arg: 1, scope: !2383, file: !1, line: 112, type: !51)
!2387 = !DILocation(line: 112, column: 37, scope: !2383)
!2388 = !DILocalVariable(name: "aI", arg: 2, scope: !2383, file: !1, line: 112, type: !51)
!2389 = !DILocation(line: 112, column: 54, scope: !2383)
!2390 = !DILocalVariable(name: "c", arg: 3, scope: !2383, file: !1, line: 112, type: !51)
!2391 = !DILocation(line: 112, column: 71, scope: !2383)
!2392 = !DILocalVariable(name: "x", arg: 4, scope: !2383, file: !1, line: 113, type: !42)
!2393 = !DILocation(line: 113, column: 31, scope: !2383)
!2394 = !DILocalVariable(name: "result", arg: 5, scope: !2383, file: !1, line: 114, type: !52)
!2395 = !DILocation(line: 114, column: 40, scope: !2383)
!2396 = !DILocation(line: 116, column: 6, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2383, file: !1, line: 116, column: 6)
!2398 = !DILocation(line: 116, column: 8, scope: !2397)
!2399 = !DILocation(line: 116, column: 6, scope: !2383)
!2400 = !DILocation(line: 117, column: 5, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 116, column: 16)
!2402 = !DILocation(line: 117, column: 13, scope: !2401)
!2403 = !DILocation(line: 117, column: 17, scope: !2401)
!2404 = !DILocation(line: 118, column: 5, scope: !2401)
!2405 = !DILocation(line: 118, column: 13, scope: !2401)
!2406 = !DILocation(line: 118, column: 17, scope: !2401)
!2407 = !DILocation(line: 119, column: 5, scope: !2401)
!2408 = distinct !{!2408, !2407}
!2409 = !DILocation(line: 119, column: 5, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2411, file: !1, discriminator: 1)
!2411 = distinct !DILexicalBlock(scope: !2401, file: !1, line: 119, column: 5)
!2412 = !DILocation(line: 120, column: 3, scope: !2401)
!2413 = !DILocalVariable(name: "sum_pos", scope: !2414, file: !1, line: 122, type: !42)
!2414 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 121, column: 8)
!2415 = !DILocation(line: 122, column: 12, scope: !2414)
!2416 = !DILocalVariable(name: "sum_neg", scope: !2414, file: !1, line: 123, type: !42)
!2417 = !DILocation(line: 123, column: 12, scope: !2414)
!2418 = !DILocalVariable(name: "del_pos", scope: !2414, file: !1, line: 124, type: !42)
!2419 = !DILocation(line: 124, column: 12, scope: !2414)
!2420 = !DILocalVariable(name: "del_neg", scope: !2414, file: !1, line: 125, type: !42)
!2421 = !DILocation(line: 125, column: 12, scope: !2414)
!2422 = !DILocalVariable(name: "del", scope: !2414, file: !1, line: 126, type: !42)
!2423 = !DILocation(line: 126, column: 12, scope: !2414)
!2424 = !DILocalVariable(name: "k", scope: !2414, file: !1, line: 127, type: !42)
!2425 = !DILocation(line: 127, column: 12, scope: !2414)
!2426 = !DILocation(line: 128, column: 5, scope: !2414)
!2427 = distinct !{!2427, !2426}
!2428 = !DILocation(line: 129, column: 16, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2414, file: !1, line: 128, column: 8)
!2430 = !DILocation(line: 129, column: 19, scope: !2429)
!2431 = !DILocation(line: 129, column: 18, scope: !2429)
!2432 = !DILocation(line: 129, column: 23, scope: !2429)
!2433 = !DILocation(line: 129, column: 26, scope: !2429)
!2434 = !DILocation(line: 129, column: 25, scope: !2429)
!2435 = !DILocation(line: 129, column: 21, scope: !2429)
!2436 = !DILocation(line: 129, column: 31, scope: !2429)
!2437 = !DILocation(line: 129, column: 34, scope: !2429)
!2438 = !DILocation(line: 129, column: 33, scope: !2429)
!2439 = !DILocation(line: 129, column: 29, scope: !2429)
!2440 = !DILocation(line: 129, column: 40, scope: !2429)
!2441 = !DILocation(line: 129, column: 41, scope: !2429)
!2442 = !DILocation(line: 129, column: 48, scope: !2429)
!2443 = !DILocation(line: 129, column: 50, scope: !2429)
!2444 = !DILocation(line: 129, column: 49, scope: !2429)
!2445 = !DILocation(line: 129, column: 46, scope: !2429)
!2446 = !DILocation(line: 129, column: 37, scope: !2429)
!2447 = !DILocation(line: 129, column: 56, scope: !2429)
!2448 = !DILocation(line: 129, column: 54, scope: !2429)
!2449 = !DILocation(line: 129, column: 11, scope: !2429)
!2450 = !DILocation(line: 131, column: 10, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2429, file: !1, line: 131, column: 10)
!2452 = !DILocation(line: 131, column: 14, scope: !2451)
!2453 = !DILocation(line: 131, column: 10, scope: !2429)
!2454 = !DILocation(line: 132, column: 21, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !1, line: 131, column: 22)
!2456 = !DILocation(line: 132, column: 18, scope: !2455)
!2457 = !DILocation(line: 133, column: 21, scope: !2455)
!2458 = !DILocation(line: 133, column: 17, scope: !2455)
!2459 = !DILocation(line: 134, column: 7, scope: !2455)
!2460 = !DILocation(line: 136, column: 21, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2451, file: !1, line: 135, column: 12)
!2462 = !DILocation(line: 136, column: 20, scope: !2461)
!2463 = !DILocation(line: 136, column: 18, scope: !2461)
!2464 = !DILocation(line: 137, column: 21, scope: !2461)
!2465 = !DILocation(line: 137, column: 17, scope: !2461)
!2466 = !DILocation(line: 140, column: 10, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2429, file: !1, line: 140, column: 10)
!2468 = !DILocation(line: 140, column: 12, scope: !2467)
!2469 = !DILocation(line: 140, column: 10, scope: !2429)
!2470 = !DILocation(line: 141, column: 24, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !1, line: 140, column: 21)
!2472 = !DILocation(line: 141, column: 34, scope: !2471)
!2473 = !DILocation(line: 141, column: 32, scope: !2471)
!2474 = !DILocation(line: 141, column: 9, scope: !2471)
!2475 = !DILocation(line: 141, column: 17, scope: !2471)
!2476 = !DILocation(line: 141, column: 22, scope: !2471)
!2477 = !DILocation(line: 142, column: 24, scope: !2471)
!2478 = !DILocation(line: 142, column: 34, scope: !2471)
!2479 = !DILocation(line: 142, column: 32, scope: !2471)
!2480 = !DILocation(line: 142, column: 9, scope: !2471)
!2481 = !DILocation(line: 142, column: 17, scope: !2471)
!2482 = !DILocation(line: 142, column: 22, scope: !2471)
!2483 = !DILocation(line: 143, column: 49, scope: !2471)
!2484 = !DILocation(line: 143, column: 59, scope: !2471)
!2485 = !DILocation(line: 143, column: 57, scope: !2471)
!2486 = !DILocation(line: 143, column: 46, scope: !2471)
!2487 = !DILocation(line: 143, column: 9, scope: !2471)
!2488 = !DILocation(line: 143, column: 17, scope: !2471)
!2489 = !DILocation(line: 143, column: 21, scope: !2471)
!2490 = !DILocation(line: 144, column: 58, scope: !2471)
!2491 = !DILocation(line: 144, column: 53, scope: !2471)
!2492 = !DILocation(line: 144, column: 52, scope: !2471)
!2493 = !DILocation(line: 144, column: 60, scope: !2471)
!2494 = !DILocation(line: 144, column: 46, scope: !2471)
!2495 = !DILocation(line: 144, column: 73, scope: !2471)
!2496 = !DILocation(line: 144, column: 81, scope: !2471)
!2497 = !DILocation(line: 144, column: 68, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2471, file: !1, discriminator: 1)
!2499 = !DILocation(line: 144, column: 66, scope: !2471)
!2500 = !DILocation(line: 144, column: 9, scope: !2471)
!2501 = !DILocation(line: 144, column: 17, scope: !2471)
!2502 = !DILocation(line: 144, column: 21, scope: !2471)
!2503 = !DILocation(line: 145, column: 9, scope: !2471)
!2504 = distinct !{!2504, !2503}
!2505 = !DILocation(line: 145, column: 9, scope: !2506)
!2506 = !DILexicalBlockFile(scope: !2507, file: !1, discriminator: 1)
!2507 = distinct !DILexicalBlock(scope: !2471, file: !1, line: 145, column: 9)
!2508 = !DILocation(line: 146, column: 7, scope: !2471)
!2509 = !DILocation(line: 148, column: 9, scope: !2429)
!2510 = !DILocation(line: 149, column: 5, scope: !2429)
!2511 = !DILocation(line: 149, column: 19, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2414, file: !1, discriminator: 1)
!2513 = !DILocation(line: 149, column: 29, scope: !2512)
!2514 = !DILocation(line: 149, column: 27, scope: !2512)
!2515 = !DILocation(line: 149, column: 39, scope: !2512)
!2516 = !DILocation(line: 149, column: 49, scope: !2512)
!2517 = !DILocation(line: 149, column: 47, scope: !2512)
!2518 = !DILocation(line: 149, column: 37, scope: !2512)
!2519 = !DILocation(line: 149, column: 13, scope: !2512)
!2520 = !DILocation(line: 149, column: 59, scope: !2512)
!2521 = !DILocation(line: 149, column: 5, scope: !2512)
!2522 = !DILocation(line: 151, column: 20, scope: !2414)
!2523 = !DILocation(line: 151, column: 30, scope: !2414)
!2524 = !DILocation(line: 151, column: 28, scope: !2414)
!2525 = !DILocation(line: 151, column: 5, scope: !2414)
!2526 = !DILocation(line: 151, column: 13, scope: !2414)
!2527 = !DILocation(line: 151, column: 18, scope: !2414)
!2528 = !DILocation(line: 152, column: 20, scope: !2414)
!2529 = !DILocation(line: 152, column: 30, scope: !2414)
!2530 = !DILocation(line: 152, column: 28, scope: !2414)
!2531 = !DILocation(line: 152, column: 5, scope: !2414)
!2532 = !DILocation(line: 152, column: 13, scope: !2414)
!2533 = !DILocation(line: 152, column: 18, scope: !2414)
!2534 = !DILocation(line: 153, column: 45, scope: !2414)
!2535 = !DILocation(line: 153, column: 55, scope: !2414)
!2536 = !DILocation(line: 153, column: 53, scope: !2414)
!2537 = !DILocation(line: 153, column: 42, scope: !2414)
!2538 = !DILocation(line: 153, column: 5, scope: !2414)
!2539 = !DILocation(line: 153, column: 13, scope: !2414)
!2540 = !DILocation(line: 153, column: 17, scope: !2414)
!2541 = !DILocation(line: 154, column: 54, scope: !2414)
!2542 = !DILocation(line: 154, column: 49, scope: !2414)
!2543 = !DILocation(line: 154, column: 48, scope: !2414)
!2544 = !DILocation(line: 154, column: 57, scope: !2414)
!2545 = !DILocation(line: 154, column: 42, scope: !2414)
!2546 = !DILocation(line: 154, column: 71, scope: !2414)
!2547 = !DILocation(line: 154, column: 79, scope: !2414)
!2548 = !DILocation(line: 154, column: 66, scope: !2512)
!2549 = !DILocation(line: 154, column: 64, scope: !2414)
!2550 = !DILocation(line: 154, column: 5, scope: !2414)
!2551 = !DILocation(line: 154, column: 13, scope: !2414)
!2552 = !DILocation(line: 154, column: 17, scope: !2414)
!2553 = !DILocation(line: 156, column: 5, scope: !2414)
!2554 = !DILocation(line: 158, column: 1, scope: !2383)
!2555 = distinct !DISubprogram(name: "hyperg_2F1_conj_luke", scope: !1, file: !1, line: 268, type: !613, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!2556 = !DILocalVariable(name: "aR", arg: 1, scope: !2555, file: !1, line: 268, type: !51)
!2557 = !DILocation(line: 268, column: 35, scope: !2555)
!2558 = !DILocalVariable(name: "aI", arg: 2, scope: !2555, file: !1, line: 268, type: !51)
!2559 = !DILocation(line: 268, column: 52, scope: !2555)
!2560 = !DILocalVariable(name: "c", arg: 3, scope: !2555, file: !1, line: 268, type: !51)
!2561 = !DILocation(line: 268, column: 69, scope: !2555)
!2562 = !DILocalVariable(name: "xin", arg: 4, scope: !2555, file: !1, line: 269, type: !51)
!2563 = !DILocation(line: 269, column: 35, scope: !2555)
!2564 = !DILocalVariable(name: "result", arg: 5, scope: !2555, file: !1, line: 270, type: !52)
!2565 = !DILocation(line: 270, column: 38, scope: !2555)
!2566 = !DILocalVariable(name: "stat_iter", scope: !2555, file: !1, line: 272, type: !50)
!2567 = !DILocation(line: 272, column: 7, scope: !2555)
!2568 = !DILocalVariable(name: "RECUR_BIG", scope: !2555, file: !1, line: 273, type: !51)
!2569 = !DILocation(line: 273, column: 16, scope: !2555)
!2570 = !DILocalVariable(name: "nmax", scope: !2555, file: !1, line: 274, type: !94)
!2571 = !DILocation(line: 274, column: 13, scope: !2555)
!2572 = !DILocalVariable(name: "n", scope: !2555, file: !1, line: 275, type: !50)
!2573 = !DILocation(line: 275, column: 7, scope: !2555)
!2574 = !DILocalVariable(name: "x", scope: !2555, file: !1, line: 276, type: !51)
!2575 = !DILocation(line: 276, column: 16, scope: !2555)
!2576 = !DILocation(line: 276, column: 21, scope: !2555)
!2577 = !DILocation(line: 276, column: 20, scope: !2555)
!2578 = !DILocalVariable(name: "x3", scope: !2555, file: !1, line: 277, type: !51)
!2579 = !DILocation(line: 277, column: 16, scope: !2555)
!2580 = !DILocation(line: 277, column: 21, scope: !2555)
!2581 = !DILocation(line: 277, column: 23, scope: !2555)
!2582 = !DILocation(line: 277, column: 22, scope: !2555)
!2583 = !DILocation(line: 277, column: 25, scope: !2555)
!2584 = !DILocation(line: 277, column: 24, scope: !2555)
!2585 = !DILocalVariable(name: "atimesb", scope: !2555, file: !1, line: 278, type: !51)
!2586 = !DILocation(line: 278, column: 16, scope: !2555)
!2587 = !DILocation(line: 278, column: 26, scope: !2555)
!2588 = !DILocation(line: 278, column: 29, scope: !2555)
!2589 = !DILocation(line: 278, column: 28, scope: !2555)
!2590 = !DILocation(line: 278, column: 34, scope: !2555)
!2591 = !DILocation(line: 278, column: 37, scope: !2555)
!2592 = !DILocation(line: 278, column: 36, scope: !2555)
!2593 = !DILocation(line: 278, column: 32, scope: !2555)
!2594 = !DILocalVariable(name: "apb", scope: !2555, file: !1, line: 279, type: !51)
!2595 = !DILocation(line: 279, column: 16, scope: !2555)
!2596 = !DILocation(line: 279, column: 30, scope: !2555)
!2597 = !DILocation(line: 279, column: 29, scope: !2555)
!2598 = !DILocalVariable(name: "t0", scope: !2555, file: !1, line: 280, type: !51)
!2599 = !DILocation(line: 280, column: 16, scope: !2555)
!2600 = !DILocation(line: 280, column: 21, scope: !2555)
!2601 = !DILocation(line: 280, column: 29, scope: !2555)
!2602 = !DILocation(line: 280, column: 28, scope: !2555)
!2603 = !DILocalVariable(name: "t1", scope: !2555, file: !1, line: 281, type: !51)
!2604 = !DILocation(line: 281, column: 16, scope: !2555)
!2605 = !DILocation(line: 281, column: 22, scope: !2555)
!2606 = !DILocation(line: 281, column: 36, scope: !2555)
!2607 = !DILocation(line: 281, column: 30, scope: !2555)
!2608 = !DILocation(line: 281, column: 40, scope: !2555)
!2609 = !DILocation(line: 281, column: 52, scope: !2555)
!2610 = !DILocation(line: 281, column: 51, scope: !2555)
!2611 = !DILocation(line: 281, column: 46, scope: !2555)
!2612 = !DILocalVariable(name: "t2", scope: !2555, file: !1, line: 282, type: !51)
!2613 = !DILocation(line: 282, column: 16, scope: !2555)
!2614 = !DILocation(line: 282, column: 22, scope: !2555)
!2615 = !DILocation(line: 282, column: 36, scope: !2555)
!2616 = !DILocation(line: 282, column: 35, scope: !2555)
!2617 = !DILocation(line: 282, column: 30, scope: !2555)
!2618 = !DILocation(line: 282, column: 40, scope: !2555)
!2619 = !DILocation(line: 282, column: 53, scope: !2555)
!2620 = !DILocation(line: 282, column: 54, scope: !2555)
!2621 = !DILocation(line: 282, column: 51, scope: !2555)
!2622 = !DILocation(line: 282, column: 46, scope: !2555)
!2623 = !DILocalVariable(name: "F", scope: !2555, file: !1, line: 283, type: !42)
!2624 = !DILocation(line: 283, column: 10, scope: !2555)
!2625 = !DILocalVariable(name: "prec", scope: !2555, file: !1, line: 284, type: !42)
!2626 = !DILocation(line: 284, column: 10, scope: !2555)
!2627 = !DILocalVariable(name: "Bnm3", scope: !2555, file: !1, line: 286, type: !42)
!2628 = !DILocation(line: 286, column: 10, scope: !2555)
!2629 = !DILocalVariable(name: "Bnm2", scope: !2555, file: !1, line: 287, type: !42)
!2630 = !DILocation(line: 287, column: 10, scope: !2555)
!2631 = !DILocation(line: 287, column: 23, scope: !2555)
!2632 = !DILocation(line: 287, column: 28, scope: !2555)
!2633 = !DILocation(line: 287, column: 26, scope: !2555)
!2634 = !DILocation(line: 287, column: 21, scope: !2555)
!2635 = !DILocalVariable(name: "Bnm1", scope: !2555, file: !1, line: 288, type: !42)
!2636 = !DILocation(line: 288, column: 10, scope: !2555)
!2637 = !DILocation(line: 288, column: 23, scope: !2555)
!2638 = !DILocation(line: 288, column: 28, scope: !2555)
!2639 = !DILocation(line: 288, column: 26, scope: !2555)
!2640 = !DILocation(line: 288, column: 39, scope: !2555)
!2641 = !DILocation(line: 288, column: 41, scope: !2555)
!2642 = !DILocation(line: 288, column: 48, scope: !2555)
!2643 = !DILocation(line: 288, column: 46, scope: !2555)
!2644 = !DILocation(line: 288, column: 37, scope: !2555)
!2645 = !DILocation(line: 288, column: 30, scope: !2555)
!2646 = !DILocation(line: 288, column: 21, scope: !2555)
!2647 = !DILocalVariable(name: "Anm3", scope: !2555, file: !1, line: 290, type: !42)
!2648 = !DILocation(line: 290, column: 10, scope: !2555)
!2649 = !DILocalVariable(name: "Anm2", scope: !2555, file: !1, line: 291, type: !42)
!2650 = !DILocation(line: 291, column: 10, scope: !2555)
!2651 = !DILocation(line: 291, column: 17, scope: !2555)
!2652 = !DILocation(line: 291, column: 24, scope: !2555)
!2653 = !DILocation(line: 291, column: 29, scope: !2555)
!2654 = !DILocation(line: 291, column: 27, scope: !2555)
!2655 = !DILocation(line: 291, column: 22, scope: !2555)
!2656 = !DILocalVariable(name: "Anm1", scope: !2555, file: !1, line: 292, type: !42)
!2657 = !DILocation(line: 292, column: 10, scope: !2555)
!2658 = !DILocation(line: 292, column: 17, scope: !2555)
!2659 = !DILocation(line: 292, column: 24, scope: !2555)
!2660 = !DILocation(line: 292, column: 34, scope: !2555)
!2661 = !DILocation(line: 292, column: 37, scope: !2555)
!2662 = !DILocation(line: 292, column: 36, scope: !2555)
!2663 = !DILocation(line: 292, column: 32, scope: !2555)
!2664 = !DILocation(line: 292, column: 26, scope: !2555)
!2665 = !DILocation(line: 292, column: 40, scope: !2555)
!2666 = !DILocation(line: 292, column: 39, scope: !2555)
!2667 = !DILocation(line: 292, column: 22, scope: !2555)
!2668 = !DILocation(line: 292, column: 44, scope: !2555)
!2669 = !DILocation(line: 292, column: 49, scope: !2555)
!2670 = !DILocation(line: 292, column: 47, scope: !2555)
!2671 = !DILocation(line: 292, column: 55, scope: !2555)
!2672 = !DILocation(line: 292, column: 58, scope: !2555)
!2673 = !DILocation(line: 292, column: 59, scope: !2555)
!2674 = !DILocation(line: 292, column: 56, scope: !2555)
!2675 = !DILocation(line: 292, column: 52, scope: !2555)
!2676 = !DILocation(line: 292, column: 68, scope: !2555)
!2677 = !DILocation(line: 292, column: 66, scope: !2555)
!2678 = !DILocation(line: 292, column: 70, scope: !2555)
!2679 = !DILocation(line: 292, column: 69, scope: !2555)
!2680 = !DILocation(line: 292, column: 42, scope: !2555)
!2681 = !DILocation(line: 294, column: 3, scope: !2555)
!2682 = !DILocalVariable(name: "nm1", scope: !2683, file: !1, line: 295, type: !42)
!2683 = distinct !DILexicalBlock(scope: !2555, file: !1, line: 294, column: 12)
!2684 = !DILocation(line: 295, column: 12, scope: !2683)
!2685 = !DILocation(line: 295, column: 18, scope: !2683)
!2686 = !DILocation(line: 295, column: 20, scope: !2683)
!2687 = !DILocalVariable(name: "nm2", scope: !2683, file: !1, line: 296, type: !42)
!2688 = !DILocation(line: 296, column: 12, scope: !2683)
!2689 = !DILocation(line: 296, column: 18, scope: !2683)
!2690 = !DILocation(line: 296, column: 20, scope: !2683)
!2691 = !DILocalVariable(name: "npam1_npbm1", scope: !2683, file: !1, line: 297, type: !42)
!2692 = !DILocation(line: 297, column: 12, scope: !2683)
!2693 = !DILocation(line: 297, column: 26, scope: !2683)
!2694 = !DILocation(line: 297, column: 36, scope: !2683)
!2695 = !DILocation(line: 297, column: 40, scope: !2683)
!2696 = !DILocation(line: 297, column: 39, scope: !2683)
!2697 = !DILocation(line: 297, column: 34, scope: !2683)
!2698 = !DILocation(line: 297, column: 46, scope: !2683)
!2699 = !DILocation(line: 297, column: 50, scope: !2683)
!2700 = !DILocation(line: 297, column: 49, scope: !2683)
!2701 = !DILocation(line: 297, column: 44, scope: !2683)
!2702 = !DILocalVariable(name: "npam2_npbm2", scope: !2683, file: !1, line: 298, type: !42)
!2703 = !DILocation(line: 298, column: 12, scope: !2683)
!2704 = !DILocation(line: 298, column: 26, scope: !2683)
!2705 = !DILocation(line: 298, column: 36, scope: !2683)
!2706 = !DILocation(line: 298, column: 40, scope: !2683)
!2707 = !DILocation(line: 298, column: 39, scope: !2683)
!2708 = !DILocation(line: 298, column: 34, scope: !2683)
!2709 = !DILocation(line: 298, column: 46, scope: !2683)
!2710 = !DILocation(line: 298, column: 50, scope: !2683)
!2711 = !DILocation(line: 298, column: 49, scope: !2683)
!2712 = !DILocation(line: 298, column: 44, scope: !2683)
!2713 = !DILocalVariable(name: "npcm1", scope: !2683, file: !1, line: 299, type: !42)
!2714 = !DILocation(line: 299, column: 12, scope: !2683)
!2715 = !DILocation(line: 299, column: 20, scope: !2683)
!2716 = !DILocation(line: 299, column: 26, scope: !2683)
!2717 = !DILocation(line: 299, column: 24, scope: !2683)
!2718 = !DILocalVariable(name: "npcm2", scope: !2683, file: !1, line: 300, type: !42)
!2719 = !DILocation(line: 300, column: 12, scope: !2683)
!2720 = !DILocation(line: 300, column: 20, scope: !2683)
!2721 = !DILocation(line: 300, column: 26, scope: !2683)
!2722 = !DILocation(line: 300, column: 24, scope: !2683)
!2723 = !DILocalVariable(name: "tnm1", scope: !2683, file: !1, line: 301, type: !42)
!2724 = !DILocation(line: 301, column: 12, scope: !2683)
!2725 = !DILocation(line: 301, column: 22, scope: !2683)
!2726 = !DILocation(line: 301, column: 21, scope: !2683)
!2727 = !DILocation(line: 301, column: 24, scope: !2683)
!2728 = !DILocation(line: 301, column: 20, scope: !2683)
!2729 = !DILocalVariable(name: "tnm3", scope: !2683, file: !1, line: 302, type: !42)
!2730 = !DILocation(line: 302, column: 12, scope: !2683)
!2731 = !DILocation(line: 302, column: 22, scope: !2683)
!2732 = !DILocation(line: 302, column: 21, scope: !2683)
!2733 = !DILocation(line: 302, column: 24, scope: !2683)
!2734 = !DILocation(line: 302, column: 20, scope: !2683)
!2735 = !DILocalVariable(name: "tnm5", scope: !2683, file: !1, line: 303, type: !42)
!2736 = !DILocation(line: 303, column: 12, scope: !2683)
!2737 = !DILocation(line: 303, column: 22, scope: !2683)
!2738 = !DILocation(line: 303, column: 21, scope: !2683)
!2739 = !DILocation(line: 303, column: 24, scope: !2683)
!2740 = !DILocation(line: 303, column: 20, scope: !2683)
!2741 = !DILocalVariable(name: "n2", scope: !2683, file: !1, line: 304, type: !42)
!2742 = !DILocation(line: 304, column: 12, scope: !2683)
!2743 = !DILocation(line: 304, column: 17, scope: !2683)
!2744 = !DILocation(line: 304, column: 19, scope: !2683)
!2745 = !DILocation(line: 304, column: 18, scope: !2683)
!2746 = !DILocalVariable(name: "F1", scope: !2683, file: !1, line: 305, type: !42)
!2747 = !DILocation(line: 305, column: 12, scope: !2683)
!2748 = !DILocation(line: 305, column: 23, scope: !2683)
!2749 = !DILocation(line: 305, column: 22, scope: !2683)
!2750 = !DILocation(line: 305, column: 29, scope: !2683)
!2751 = !DILocation(line: 305, column: 32, scope: !2683)
!2752 = !DILocation(line: 305, column: 36, scope: !2683)
!2753 = !DILocation(line: 305, column: 35, scope: !2683)
!2754 = !DILocation(line: 305, column: 26, scope: !2683)
!2755 = !DILocation(line: 305, column: 38, scope: !2683)
!2756 = !DILocation(line: 305, column: 44, scope: !2683)
!2757 = !DILocation(line: 305, column: 42, scope: !2683)
!2758 = !DILocation(line: 305, column: 56, scope: !2683)
!2759 = !DILocation(line: 305, column: 55, scope: !2683)
!2760 = !DILocation(line: 305, column: 52, scope: !2683)
!2761 = !DILocation(line: 305, column: 66, scope: !2683)
!2762 = !DILocation(line: 305, column: 65, scope: !2683)
!2763 = !DILocation(line: 305, column: 71, scope: !2683)
!2764 = !DILocation(line: 305, column: 70, scope: !2683)
!2765 = !DILocation(line: 305, column: 61, scope: !2683)
!2766 = !DILocalVariable(name: "F2", scope: !2683, file: !1, line: 306, type: !42)
!2767 = !DILocation(line: 306, column: 12, scope: !2683)
!2768 = !DILocation(line: 306, column: 23, scope: !2683)
!2769 = !DILocation(line: 306, column: 22, scope: !2683)
!2770 = !DILocation(line: 306, column: 29, scope: !2683)
!2771 = !DILocation(line: 306, column: 32, scope: !2683)
!2772 = !DILocation(line: 306, column: 36, scope: !2683)
!2773 = !DILocation(line: 306, column: 35, scope: !2683)
!2774 = !DILocation(line: 306, column: 26, scope: !2683)
!2775 = !DILocation(line: 306, column: 38, scope: !2683)
!2776 = !DILocation(line: 306, column: 44, scope: !2683)
!2777 = !DILocation(line: 306, column: 42, scope: !2683)
!2778 = !DILocation(line: 306, column: 17, scope: !2683)
!2779 = !DILocation(line: 306, column: 53, scope: !2683)
!2780 = !DILocation(line: 306, column: 52, scope: !2683)
!2781 = !DILocation(line: 306, column: 68, scope: !2683)
!2782 = !DILocation(line: 306, column: 67, scope: !2683)
!2783 = !DILocation(line: 306, column: 73, scope: !2683)
!2784 = !DILocation(line: 306, column: 72, scope: !2683)
!2785 = !DILocation(line: 306, column: 78, scope: !2683)
!2786 = !DILocation(line: 306, column: 77, scope: !2683)
!2787 = !DILocation(line: 306, column: 84, scope: !2683)
!2788 = !DILocation(line: 306, column: 83, scope: !2683)
!2789 = !DILocation(line: 306, column: 64, scope: !2683)
!2790 = !DILocalVariable(name: "F3", scope: !2683, file: !1, line: 307, type: !42)
!2791 = !DILocation(line: 307, column: 12, scope: !2683)
!2792 = !DILocation(line: 307, column: 18, scope: !2683)
!2793 = !DILocation(line: 307, column: 30, scope: !2683)
!2794 = !DILocation(line: 307, column: 29, scope: !2683)
!2795 = !DILocation(line: 307, column: 43, scope: !2683)
!2796 = !DILocation(line: 307, column: 47, scope: !2683)
!2797 = !DILocation(line: 307, column: 46, scope: !2683)
!2798 = !DILocation(line: 307, column: 53, scope: !2683)
!2799 = !DILocation(line: 307, column: 57, scope: !2683)
!2800 = !DILocation(line: 307, column: 56, scope: !2683)
!2801 = !DILocation(line: 307, column: 51, scope: !2683)
!2802 = !DILocation(line: 307, column: 63, scope: !2683)
!2803 = !DILocation(line: 307, column: 61, scope: !2683)
!2804 = !DILocation(line: 307, column: 41, scope: !2683)
!2805 = !DILocation(line: 307, column: 78, scope: !2683)
!2806 = !DILocation(line: 307, column: 77, scope: !2683)
!2807 = !DILocation(line: 307, column: 83, scope: !2683)
!2808 = !DILocation(line: 307, column: 82, scope: !2683)
!2809 = !DILocation(line: 307, column: 88, scope: !2683)
!2810 = !DILocation(line: 307, column: 87, scope: !2683)
!2811 = !DILocation(line: 307, column: 94, scope: !2683)
!2812 = !DILocation(line: 307, column: 96, scope: !2683)
!2813 = !DILocation(line: 307, column: 95, scope: !2683)
!2814 = !DILocation(line: 307, column: 97, scope: !2683)
!2815 = !DILocation(line: 307, column: 92, scope: !2683)
!2816 = !DILocation(line: 307, column: 101, scope: !2683)
!2817 = !DILocation(line: 307, column: 100, scope: !2683)
!2818 = !DILocation(line: 307, column: 107, scope: !2683)
!2819 = !DILocation(line: 307, column: 106, scope: !2683)
!2820 = !DILocation(line: 307, column: 73, scope: !2683)
!2821 = !DILocalVariable(name: "E", scope: !2683, file: !1, line: 308, type: !42)
!2822 = !DILocation(line: 308, column: 12, scope: !2683)
!2823 = !DILocation(line: 308, column: 18, scope: !2683)
!2824 = !DILocation(line: 308, column: 17, scope: !2683)
!2825 = !DILocation(line: 308, column: 31, scope: !2683)
!2826 = !DILocation(line: 308, column: 33, scope: !2683)
!2827 = !DILocation(line: 308, column: 32, scope: !2683)
!2828 = !DILocation(line: 308, column: 34, scope: !2683)
!2829 = !DILocation(line: 308, column: 29, scope: !2683)
!2830 = !DILocation(line: 308, column: 43, scope: !2683)
!2831 = !DILocation(line: 308, column: 42, scope: !2683)
!2832 = !DILocation(line: 308, column: 48, scope: !2683)
!2833 = !DILocation(line: 308, column: 47, scope: !2683)
!2834 = !DILocation(line: 308, column: 54, scope: !2683)
!2835 = !DILocation(line: 308, column: 53, scope: !2683)
!2836 = !DILocation(line: 308, column: 38, scope: !2683)
!2837 = !DILocalVariable(name: "An", scope: !2683, file: !1, line: 310, type: !42)
!2838 = !DILocation(line: 310, column: 12, scope: !2683)
!2839 = !DILocation(line: 310, column: 22, scope: !2683)
!2840 = !DILocation(line: 310, column: 25, scope: !2683)
!2841 = !DILocation(line: 310, column: 24, scope: !2683)
!2842 = !DILocation(line: 310, column: 21, scope: !2683)
!2843 = !DILocation(line: 310, column: 28, scope: !2683)
!2844 = !DILocation(line: 310, column: 27, scope: !2683)
!2845 = !DILocation(line: 310, column: 36, scope: !2683)
!2846 = !DILocation(line: 310, column: 40, scope: !2683)
!2847 = !DILocation(line: 310, column: 43, scope: !2683)
!2848 = !DILocation(line: 310, column: 42, scope: !2683)
!2849 = !DILocation(line: 310, column: 38, scope: !2683)
!2850 = !DILocation(line: 310, column: 46, scope: !2683)
!2851 = !DILocation(line: 310, column: 45, scope: !2683)
!2852 = !DILocation(line: 310, column: 48, scope: !2683)
!2853 = !DILocation(line: 310, column: 47, scope: !2683)
!2854 = !DILocation(line: 310, column: 33, scope: !2683)
!2855 = !DILocation(line: 310, column: 55, scope: !2683)
!2856 = !DILocation(line: 310, column: 58, scope: !2683)
!2857 = !DILocation(line: 310, column: 57, scope: !2683)
!2858 = !DILocation(line: 310, column: 61, scope: !2683)
!2859 = !DILocation(line: 310, column: 60, scope: !2683)
!2860 = !DILocation(line: 310, column: 53, scope: !2683)
!2861 = !DILocalVariable(name: "Bn", scope: !2683, file: !1, line: 311, type: !42)
!2862 = !DILocation(line: 311, column: 12, scope: !2683)
!2863 = !DILocation(line: 311, column: 22, scope: !2683)
!2864 = !DILocation(line: 311, column: 25, scope: !2683)
!2865 = !DILocation(line: 311, column: 24, scope: !2683)
!2866 = !DILocation(line: 311, column: 21, scope: !2683)
!2867 = !DILocation(line: 311, column: 28, scope: !2683)
!2868 = !DILocation(line: 311, column: 27, scope: !2683)
!2869 = !DILocation(line: 311, column: 36, scope: !2683)
!2870 = !DILocation(line: 311, column: 40, scope: !2683)
!2871 = !DILocation(line: 311, column: 43, scope: !2683)
!2872 = !DILocation(line: 311, column: 42, scope: !2683)
!2873 = !DILocation(line: 311, column: 38, scope: !2683)
!2874 = !DILocation(line: 311, column: 46, scope: !2683)
!2875 = !DILocation(line: 311, column: 45, scope: !2683)
!2876 = !DILocation(line: 311, column: 48, scope: !2683)
!2877 = !DILocation(line: 311, column: 47, scope: !2683)
!2878 = !DILocation(line: 311, column: 33, scope: !2683)
!2879 = !DILocation(line: 311, column: 55, scope: !2683)
!2880 = !DILocation(line: 311, column: 58, scope: !2683)
!2881 = !DILocation(line: 311, column: 57, scope: !2683)
!2882 = !DILocation(line: 311, column: 61, scope: !2683)
!2883 = !DILocation(line: 311, column: 60, scope: !2683)
!2884 = !DILocation(line: 311, column: 53, scope: !2683)
!2885 = !DILocalVariable(name: "r", scope: !2683, file: !1, line: 312, type: !42)
!2886 = !DILocation(line: 312, column: 12, scope: !2683)
!2887 = !DILocation(line: 312, column: 16, scope: !2683)
!2888 = !DILocation(line: 312, column: 19, scope: !2683)
!2889 = !DILocation(line: 312, column: 18, scope: !2683)
!2890 = !DILocation(line: 314, column: 17, scope: !2683)
!2891 = !DILocation(line: 314, column: 21, scope: !2683)
!2892 = !DILocation(line: 314, column: 19, scope: !2683)
!2893 = !DILocation(line: 314, column: 12, scope: !2683)
!2894 = !DILocation(line: 314, column: 29, scope: !2683)
!2895 = !DILocation(line: 314, column: 24, scope: !2896)
!2896 = !DILexicalBlockFile(scope: !2683, file: !1, discriminator: 1)
!2897 = !DILocation(line: 314, column: 23, scope: !2683)
!2898 = !DILocation(line: 314, column: 10, scope: !2683)
!2899 = !DILocation(line: 315, column: 9, scope: !2683)
!2900 = !DILocation(line: 315, column: 7, scope: !2683)
!2901 = !DILocation(line: 317, column: 8, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2683, file: !1, line: 317, column: 8)
!2903 = !DILocation(line: 317, column: 13, scope: !2902)
!2904 = !DILocation(line: 317, column: 31, scope: !2902)
!2905 = !DILocation(line: 317, column: 34, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !2902, file: !1, discriminator: 1)
!2907 = !DILocation(line: 317, column: 36, scope: !2906)
!2908 = !DILocation(line: 317, column: 8, scope: !2906)
!2909 = !DILocation(line: 317, column: 44, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !2902, file: !1, discriminator: 2)
!2911 = !DILocation(line: 319, column: 13, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2683, file: !1, line: 319, column: 8)
!2913 = !DILocation(line: 319, column: 8, scope: !2912)
!2914 = !DILocation(line: 319, column: 17, scope: !2912)
!2915 = !DILocation(line: 319, column: 29, scope: !2912)
!2916 = !DILocation(line: 319, column: 37, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !2912, file: !1, discriminator: 1)
!2918 = !DILocation(line: 319, column: 32, scope: !2917)
!2919 = !DILocation(line: 319, column: 41, scope: !2917)
!2920 = !DILocation(line: 319, column: 8, scope: !2917)
!2921 = !DILocation(line: 320, column: 12, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2912, file: !1, line: 319, column: 54)
!2923 = !DILocation(line: 321, column: 12, scope: !2922)
!2924 = !DILocation(line: 322, column: 12, scope: !2922)
!2925 = !DILocation(line: 323, column: 12, scope: !2922)
!2926 = !DILocation(line: 324, column: 12, scope: !2922)
!2927 = !DILocation(line: 325, column: 12, scope: !2922)
!2928 = !DILocation(line: 326, column: 12, scope: !2922)
!2929 = !DILocation(line: 327, column: 12, scope: !2922)
!2930 = !DILocation(line: 328, column: 5, scope: !2922)
!2931 = !DILocation(line: 329, column: 18, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2912, file: !1, line: 329, column: 13)
!2933 = !DILocation(line: 329, column: 13, scope: !2932)
!2934 = !DILocation(line: 329, column: 22, scope: !2932)
!2935 = !DILocation(line: 329, column: 38, scope: !2932)
!2936 = !DILocation(line: 329, column: 46, scope: !2937)
!2937 = !DILexicalBlockFile(scope: !2932, file: !1, discriminator: 1)
!2938 = !DILocation(line: 329, column: 41, scope: !2937)
!2939 = !DILocation(line: 329, column: 50, scope: !2937)
!2940 = !DILocation(line: 329, column: 13, scope: !2937)
!2941 = !DILocation(line: 330, column: 12, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2932, file: !1, line: 329, column: 67)
!2943 = !DILocation(line: 331, column: 12, scope: !2942)
!2944 = !DILocation(line: 332, column: 12, scope: !2942)
!2945 = !DILocation(line: 333, column: 12, scope: !2942)
!2946 = !DILocation(line: 334, column: 12, scope: !2942)
!2947 = !DILocation(line: 335, column: 12, scope: !2942)
!2948 = !DILocation(line: 336, column: 12, scope: !2942)
!2949 = !DILocation(line: 337, column: 12, scope: !2942)
!2950 = !DILocation(line: 338, column: 5, scope: !2942)
!2951 = !DILocation(line: 340, column: 6, scope: !2683)
!2952 = !DILocation(line: 341, column: 12, scope: !2683)
!2953 = !DILocation(line: 341, column: 10, scope: !2683)
!2954 = !DILocation(line: 342, column: 12, scope: !2683)
!2955 = !DILocation(line: 342, column: 10, scope: !2683)
!2956 = !DILocation(line: 343, column: 12, scope: !2683)
!2957 = !DILocation(line: 343, column: 10, scope: !2683)
!2958 = !DILocation(line: 344, column: 12, scope: !2683)
!2959 = !DILocation(line: 344, column: 10, scope: !2683)
!2960 = !DILocation(line: 345, column: 12, scope: !2683)
!2961 = !DILocation(line: 345, column: 10, scope: !2683)
!2962 = !DILocation(line: 346, column: 12, scope: !2683)
!2963 = !DILocation(line: 346, column: 10, scope: !2683)
!2964 = !DILocation(line: 294, column: 3, scope: !2965)
!2965 = !DILexicalBlockFile(scope: !2555, file: !1, discriminator: 1)
!2966 = distinct !{!2966, !2681}
!2967 = !DILocation(line: 349, column: 18, scope: !2555)
!2968 = !DILocation(line: 349, column: 3, scope: !2555)
!2969 = !DILocation(line: 349, column: 11, scope: !2555)
!2970 = !DILocation(line: 349, column: 16, scope: !2555)
!2971 = !DILocation(line: 350, column: 29, scope: !2555)
!2972 = !DILocation(line: 350, column: 36, scope: !2555)
!2973 = !DILocation(line: 350, column: 34, scope: !2555)
!2974 = !DILocation(line: 350, column: 24, scope: !2555)
!2975 = !DILocation(line: 350, column: 22, scope: !2555)
!2976 = !DILocation(line: 350, column: 3, scope: !2555)
!2977 = !DILocation(line: 350, column: 11, scope: !2555)
!2978 = !DILocation(line: 350, column: 16, scope: !2555)
!2979 = !DILocation(line: 351, column: 43, scope: !2555)
!2980 = !DILocation(line: 351, column: 44, scope: !2555)
!2981 = !DILocation(line: 351, column: 40, scope: !2555)
!2982 = !DILocation(line: 351, column: 57, scope: !2555)
!2983 = !DILocation(line: 351, column: 52, scope: !2555)
!2984 = !DILocation(line: 351, column: 50, scope: !2555)
!2985 = !DILocation(line: 351, column: 3, scope: !2555)
!2986 = !DILocation(line: 351, column: 11, scope: !2555)
!2987 = !DILocation(line: 351, column: 15, scope: !2555)
!2988 = !DILocation(line: 354, column: 30, scope: !2555)
!2989 = !DILocation(line: 354, column: 25, scope: !2555)
!2990 = !DILocation(line: 354, column: 41, scope: !2555)
!2991 = !DILocation(line: 354, column: 36, scope: !2965)
!2992 = !DILocation(line: 354, column: 34, scope: !2555)
!2993 = !DILocation(line: 354, column: 45, scope: !2555)
!2994 = !DILocation(line: 354, column: 22, scope: !2555)
!2995 = !DILocation(line: 354, column: 3, scope: !2555)
!2996 = !DILocation(line: 354, column: 11, scope: !2555)
!2997 = !DILocation(line: 354, column: 15, scope: !2555)
!2998 = !DILocation(line: 356, column: 16, scope: !2555)
!2999 = !DILocation(line: 356, column: 18, scope: !2555)
!3000 = !DILocation(line: 356, column: 13, scope: !2555)
!3001 = !DILocation(line: 358, column: 10, scope: !2555)
!3002 = !DILocation(line: 358, column: 3, scope: !2555)
!3003 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_renorm_e", scope: !1, file: !1, line: 823, type: !613, isLocal: false, isDefinition: true, scopeLine: 827, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!3004 = !DILocalVariable(name: "a", arg: 1, scope: !3003, file: !1, line: 823, type: !51)
!3005 = !DILocation(line: 823, column: 41, scope: !3003)
!3006 = !DILocalVariable(name: "b", arg: 2, scope: !3003, file: !1, line: 823, type: !51)
!3007 = !DILocation(line: 823, column: 57, scope: !3003)
!3008 = !DILocalVariable(name: "c", arg: 3, scope: !3003, file: !1, line: 823, type: !51)
!3009 = !DILocation(line: 823, column: 73, scope: !3003)
!3010 = !DILocalVariable(name: "x", arg: 4, scope: !3003, file: !1, line: 824, type: !51)
!3011 = !DILocation(line: 824, column: 44, scope: !3003)
!3012 = !DILocalVariable(name: "result", arg: 5, scope: !3003, file: !1, line: 825, type: !52)
!3013 = !DILocation(line: 825, column: 47, scope: !3003)
!3014 = !DILocalVariable(name: "rinta", scope: !3003, file: !1, line: 828, type: !51)
!3015 = !DILocation(line: 828, column: 16, scope: !3003)
!3016 = !DILocation(line: 828, column: 30, scope: !3003)
!3017 = !DILocation(line: 828, column: 32, scope: !3003)
!3018 = !DILocation(line: 828, column: 24, scope: !3003)
!3019 = !DILocalVariable(name: "rintb", scope: !3003, file: !1, line: 829, type: !51)
!3020 = !DILocation(line: 829, column: 16, scope: !3003)
!3021 = !DILocation(line: 829, column: 30, scope: !3003)
!3022 = !DILocation(line: 829, column: 32, scope: !3003)
!3023 = !DILocation(line: 829, column: 24, scope: !3003)
!3024 = !DILocalVariable(name: "rintc", scope: !3003, file: !1, line: 830, type: !51)
!3025 = !DILocation(line: 830, column: 16, scope: !3003)
!3026 = !DILocation(line: 830, column: 30, scope: !3003)
!3027 = !DILocation(line: 830, column: 32, scope: !3003)
!3028 = !DILocation(line: 830, column: 24, scope: !3003)
!3029 = !DILocalVariable(name: "a_neg_integer", scope: !3003, file: !1, line: 831, type: !94)
!3030 = !DILocation(line: 831, column: 13, scope: !3003)
!3031 = !DILocation(line: 831, column: 31, scope: !3003)
!3032 = !DILocation(line: 831, column: 33, scope: !3003)
!3033 = !DILocation(line: 831, column: 40, scope: !3003)
!3034 = !DILocation(line: 831, column: 49, scope: !3035)
!3035 = !DILexicalBlockFile(scope: !3003, file: !1, discriminator: 1)
!3036 = !DILocation(line: 831, column: 53, scope: !3035)
!3037 = !DILocation(line: 831, column: 51, scope: !3035)
!3038 = !DILocation(line: 831, column: 44, scope: !3035)
!3039 = !DILocation(line: 831, column: 60, scope: !3035)
!3040 = !DILocation(line: 831, column: 40, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !3003, file: !1, discriminator: 2)
!3042 = !DILocation(line: 831, column: 13, scope: !3041)
!3043 = !DILocalVariable(name: "b_neg_integer", scope: !3003, file: !1, line: 832, type: !94)
!3044 = !DILocation(line: 832, column: 13, scope: !3003)
!3045 = !DILocation(line: 832, column: 31, scope: !3003)
!3046 = !DILocation(line: 832, column: 33, scope: !3003)
!3047 = !DILocation(line: 832, column: 40, scope: !3003)
!3048 = !DILocation(line: 832, column: 49, scope: !3035)
!3049 = !DILocation(line: 832, column: 53, scope: !3035)
!3050 = !DILocation(line: 832, column: 51, scope: !3035)
!3051 = !DILocation(line: 832, column: 44, scope: !3035)
!3052 = !DILocation(line: 832, column: 60, scope: !3035)
!3053 = !DILocation(line: 832, column: 40, scope: !3041)
!3054 = !DILocation(line: 832, column: 13, scope: !3041)
!3055 = !DILocalVariable(name: "c_neg_integer", scope: !3003, file: !1, line: 833, type: !94)
!3056 = !DILocation(line: 833, column: 13, scope: !3003)
!3057 = !DILocation(line: 833, column: 31, scope: !3003)
!3058 = !DILocation(line: 833, column: 33, scope: !3003)
!3059 = !DILocation(line: 833, column: 40, scope: !3003)
!3060 = !DILocation(line: 833, column: 49, scope: !3035)
!3061 = !DILocation(line: 833, column: 53, scope: !3035)
!3062 = !DILocation(line: 833, column: 51, scope: !3035)
!3063 = !DILocation(line: 833, column: 44, scope: !3035)
!3064 = !DILocation(line: 833, column: 60, scope: !3035)
!3065 = !DILocation(line: 833, column: 40, scope: !3041)
!3066 = !DILocation(line: 833, column: 13, scope: !3041)
!3067 = !DILocation(line: 835, column: 6, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3003, file: !1, line: 835, column: 6)
!3069 = !DILocation(line: 835, column: 6, scope: !3003)
!3070 = !DILocation(line: 836, column: 9, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !1, line: 836, column: 8)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !1, line: 835, column: 21)
!3073 = !DILocation(line: 836, column: 23, scope: !3071)
!3074 = !DILocation(line: 836, column: 26, scope: !3075)
!3075 = !DILexicalBlockFile(scope: !3071, file: !1, discriminator: 1)
!3076 = !DILocation(line: 836, column: 30, scope: !3075)
!3077 = !DILocation(line: 836, column: 31, scope: !3075)
!3078 = !DILocation(line: 836, column: 28, scope: !3075)
!3079 = !DILocation(line: 836, column: 37, scope: !3075)
!3080 = !DILocation(line: 836, column: 41, scope: !3081)
!3081 = !DILexicalBlockFile(scope: !3071, file: !1, discriminator: 2)
!3082 = !DILocation(line: 836, column: 55, scope: !3081)
!3083 = !DILocation(line: 836, column: 58, scope: !3084)
!3084 = !DILexicalBlockFile(scope: !3071, file: !1, discriminator: 3)
!3085 = !DILocation(line: 836, column: 62, scope: !3084)
!3086 = !DILocation(line: 836, column: 63, scope: !3084)
!3087 = !DILocation(line: 836, column: 60, scope: !3084)
!3088 = !DILocation(line: 836, column: 8, scope: !3084)
!3089 = !DILocation(line: 838, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3071, file: !1, line: 836, column: 70)
!3091 = !DILocation(line: 838, column: 15, scope: !3090)
!3092 = !DILocation(line: 838, column: 19, scope: !3090)
!3093 = !DILocation(line: 839, column: 7, scope: !3090)
!3094 = !DILocation(line: 839, column: 15, scope: !3090)
!3095 = !DILocation(line: 839, column: 19, scope: !3090)
!3096 = !DILocation(line: 840, column: 7, scope: !3090)
!3097 = !DILocalVariable(name: "g1", scope: !3098, file: !1, line: 845, type: !53)
!3098 = distinct !DILexicalBlock(scope: !3071, file: !1, line: 842, column: 10)
!3099 = !DILocation(line: 845, column: 21, scope: !3098)
!3100 = !DILocalVariable(name: "g2", scope: !3098, file: !1, line: 845, type: !53)
!3101 = !DILocation(line: 845, column: 25, scope: !3098)
!3102 = !DILocalVariable(name: "g3", scope: !3098, file: !1, line: 845, type: !53)
!3103 = !DILocation(line: 845, column: 29, scope: !3098)
!3104 = !DILocalVariable(name: "g4", scope: !3098, file: !1, line: 845, type: !53)
!3105 = !DILocation(line: 845, column: 33, scope: !3098)
!3106 = !DILocalVariable(name: "g5", scope: !3098, file: !1, line: 845, type: !53)
!3107 = !DILocation(line: 845, column: 37, scope: !3098)
!3108 = !DILocalVariable(name: "s1", scope: !3098, file: !1, line: 846, type: !42)
!3109 = !DILocation(line: 846, column: 14, scope: !3098)
!3110 = !DILocalVariable(name: "s2", scope: !3098, file: !1, line: 846, type: !42)
!3111 = !DILocation(line: 846, column: 18, scope: !3098)
!3112 = !DILocalVariable(name: "s3", scope: !3098, file: !1, line: 846, type: !42)
!3113 = !DILocation(line: 846, column: 22, scope: !3098)
!3114 = !DILocalVariable(name: "s4", scope: !3098, file: !1, line: 846, type: !42)
!3115 = !DILocation(line: 846, column: 26, scope: !3098)
!3116 = !DILocalVariable(name: "s5", scope: !3098, file: !1, line: 846, type: !42)
!3117 = !DILocation(line: 846, column: 30, scope: !3098)
!3118 = !DILocalVariable(name: "stat", scope: !3098, file: !1, line: 847, type: !50)
!3119 = !DILocation(line: 847, column: 11, scope: !3098)
!3120 = !DILocation(line: 848, column: 36, scope: !3098)
!3121 = !DILocation(line: 848, column: 38, scope: !3098)
!3122 = !DILocation(line: 848, column: 37, scope: !3098)
!3123 = !DILocation(line: 848, column: 39, scope: !3098)
!3124 = !DILocation(line: 848, column: 15, scope: !3098)
!3125 = !DILocation(line: 848, column: 12, scope: !3098)
!3126 = !DILocation(line: 849, column: 36, scope: !3098)
!3127 = !DILocation(line: 849, column: 38, scope: !3098)
!3128 = !DILocation(line: 849, column: 37, scope: !3098)
!3129 = !DILocation(line: 849, column: 39, scope: !3098)
!3130 = !DILocation(line: 849, column: 15, scope: !3098)
!3131 = !DILocation(line: 849, column: 12, scope: !3098)
!3132 = !DILocation(line: 850, column: 36, scope: !3098)
!3133 = !DILocation(line: 850, column: 15, scope: !3098)
!3134 = !DILocation(line: 850, column: 12, scope: !3098)
!3135 = !DILocation(line: 851, column: 36, scope: !3098)
!3136 = !DILocation(line: 851, column: 15, scope: !3098)
!3137 = !DILocation(line: 851, column: 12, scope: !3098)
!3138 = !DILocation(line: 852, column: 37, scope: !3098)
!3139 = !DILocation(line: 852, column: 36, scope: !3098)
!3140 = !DILocation(line: 852, column: 38, scope: !3098)
!3141 = !DILocation(line: 852, column: 15, scope: !3098)
!3142 = !DILocation(line: 852, column: 12, scope: !3098)
!3143 = !DILocation(line: 853, column: 10, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3098, file: !1, line: 853, column: 10)
!3145 = !DILocation(line: 853, column: 15, scope: !3144)
!3146 = !DILocation(line: 853, column: 10, scope: !3098)
!3147 = !DILocation(line: 854, column: 9, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3144, file: !1, line: 853, column: 21)
!3149 = distinct !{!3149, !3147}
!3150 = !DILocation(line: 854, column: 9, scope: !3151)
!3151 = !DILexicalBlockFile(scope: !3152, file: !1, discriminator: 1)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !1, line: 854, column: 9)
!3153 = distinct !{!3153, !3154}
!3154 = !DILocation(line: 854, column: 9, scope: !3152)
!3155 = !DILocation(line: 854, column: 9, scope: !3156)
!3156 = !DILexicalBlockFile(scope: !3157, file: !1, discriminator: 2)
!3157 = distinct !DILexicalBlock(scope: !3152, file: !1, line: 854, column: 9)
!3158 = !DILocation(line: 854, column: 9, scope: !3159)
!3159 = !DILexicalBlockFile(scope: !3152, file: !1, discriminator: 3)
!3160 = !DILocation(line: 855, column: 7, scope: !3148)
!3161 = !DILocalVariable(name: "F", scope: !3162, file: !1, line: 857, type: !53)
!3162 = distinct !DILexicalBlock(scope: !3144, file: !1, line: 856, column: 12)
!3163 = !DILocation(line: 857, column: 23, scope: !3162)
!3164 = !DILocalVariable(name: "stat_F", scope: !3162, file: !1, line: 858, type: !50)
!3165 = !DILocation(line: 858, column: 13, scope: !3162)
!3166 = !DILocation(line: 858, column: 42, scope: !3162)
!3167 = !DILocation(line: 858, column: 44, scope: !3162)
!3168 = !DILocation(line: 858, column: 43, scope: !3162)
!3169 = !DILocation(line: 858, column: 45, scope: !3162)
!3170 = !DILocation(line: 858, column: 49, scope: !3162)
!3171 = !DILocation(line: 858, column: 51, scope: !3162)
!3172 = !DILocation(line: 858, column: 50, scope: !3162)
!3173 = !DILocation(line: 858, column: 52, scope: !3162)
!3174 = !DILocation(line: 858, column: 57, scope: !3162)
!3175 = !DILocation(line: 858, column: 56, scope: !3162)
!3176 = !DILocation(line: 858, column: 58, scope: !3162)
!3177 = !DILocation(line: 858, column: 62, scope: !3162)
!3178 = !DILocation(line: 858, column: 22, scope: !3162)
!3179 = !DILocalVariable(name: "ln_pre_val", scope: !3162, file: !1, line: 859, type: !42)
!3180 = !DILocation(line: 859, column: 16, scope: !3162)
!3181 = !DILocation(line: 859, column: 32, scope: !3162)
!3182 = !DILocation(line: 859, column: 41, scope: !3162)
!3183 = !DILocation(line: 859, column: 36, scope: !3162)
!3184 = !DILocation(line: 859, column: 50, scope: !3162)
!3185 = !DILocation(line: 859, column: 45, scope: !3162)
!3186 = !DILocation(line: 859, column: 59, scope: !3162)
!3187 = !DILocation(line: 859, column: 54, scope: !3162)
!3188 = !DILocation(line: 859, column: 68, scope: !3162)
!3189 = !DILocation(line: 859, column: 63, scope: !3162)
!3190 = !DILocalVariable(name: "ln_pre_err", scope: !3162, file: !1, line: 860, type: !42)
!3191 = !DILocation(line: 860, column: 16, scope: !3162)
!3192 = !DILocation(line: 860, column: 32, scope: !3162)
!3193 = !DILocation(line: 860, column: 41, scope: !3162)
!3194 = !DILocation(line: 860, column: 36, scope: !3162)
!3195 = !DILocation(line: 860, column: 50, scope: !3162)
!3196 = !DILocation(line: 860, column: 45, scope: !3162)
!3197 = !DILocation(line: 860, column: 59, scope: !3162)
!3198 = !DILocation(line: 860, column: 54, scope: !3162)
!3199 = !DILocation(line: 860, column: 68, scope: !3162)
!3200 = !DILocation(line: 860, column: 63, scope: !3162)
!3201 = !DILocalVariable(name: "sg", scope: !3162, file: !1, line: 861, type: !42)
!3202 = !DILocation(line: 861, column: 16, scope: !3162)
!3203 = !DILocation(line: 861, column: 22, scope: !3162)
!3204 = !DILocation(line: 861, column: 27, scope: !3162)
!3205 = !DILocation(line: 861, column: 25, scope: !3162)
!3206 = !DILocation(line: 861, column: 32, scope: !3162)
!3207 = !DILocation(line: 861, column: 30, scope: !3162)
!3208 = !DILocation(line: 861, column: 37, scope: !3162)
!3209 = !DILocation(line: 861, column: 35, scope: !3162)
!3210 = !DILocation(line: 861, column: 42, scope: !3162)
!3211 = !DILocation(line: 861, column: 40, scope: !3162)
!3212 = !DILocalVariable(name: "stat_e", scope: !3162, file: !1, line: 862, type: !50)
!3213 = !DILocation(line: 862, column: 13, scope: !3162)
!3214 = !DILocation(line: 862, column: 44, scope: !3162)
!3215 = !DILocation(line: 862, column: 56, scope: !3162)
!3216 = !DILocation(line: 863, column: 47, scope: !3162)
!3217 = !DILocation(line: 863, column: 54, scope: !3162)
!3218 = !DILocation(line: 863, column: 50, scope: !3162)
!3219 = !DILocation(line: 863, column: 61, scope: !3162)
!3220 = !DILocation(line: 864, column: 47, scope: !3162)
!3221 = !DILocation(line: 862, column: 22, scope: !3162)
!3222 = !DILocation(line: 865, column: 16, scope: !3162)
!3223 = !DILocation(line: 865, column: 16, scope: !3224)
!3224 = !DILexicalBlockFile(scope: !3162, file: !1, discriminator: 1)
!3225 = !DILocation(line: 865, column: 16, scope: !3226)
!3226 = !DILexicalBlockFile(scope: !3162, file: !1, discriminator: 2)
!3227 = !DILocation(line: 865, column: 16, scope: !3228)
!3228 = !DILexicalBlockFile(scope: !3162, file: !1, discriminator: 3)
!3229 = !DILocation(line: 865, column: 16, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !3162, file: !1, discriminator: 4)
!3231 = !DILocation(line: 865, column: 16, scope: !3232)
!3232 = !DILexicalBlockFile(scope: !3162, file: !1, discriminator: 5)
!3233 = !DILocation(line: 865, column: 16, scope: !3234)
!3234 = !DILexicalBlockFile(scope: !3162, file: !1, discriminator: 6)
!3235 = !DILocation(line: 865, column: 9, scope: !3234)
!3236 = !DILocation(line: 868, column: 3, scope: !3072)
!3237 = !DILocalVariable(name: "F", scope: !3238, file: !1, line: 871, type: !53)
!3238 = distinct !DILexicalBlock(scope: !3068, file: !1, line: 869, column: 8)
!3239 = !DILocation(line: 871, column: 19, scope: !3238)
!3240 = !DILocalVariable(name: "lng", scope: !3238, file: !1, line: 872, type: !53)
!3241 = !DILocation(line: 872, column: 19, scope: !3238)
!3242 = !DILocalVariable(name: "sgn", scope: !3238, file: !1, line: 873, type: !42)
!3243 = !DILocation(line: 873, column: 12, scope: !3238)
!3244 = !DILocalVariable(name: "stat_g", scope: !3238, file: !1, line: 874, type: !50)
!3245 = !DILocation(line: 874, column: 9, scope: !3238)
!3246 = !DILocation(line: 874, column: 39, scope: !3238)
!3247 = !DILocation(line: 874, column: 18, scope: !3238)
!3248 = !DILocalVariable(name: "stat_F", scope: !3238, file: !1, line: 875, type: !50)
!3249 = !DILocation(line: 875, column: 9, scope: !3238)
!3250 = !DILocation(line: 875, column: 38, scope: !3238)
!3251 = !DILocation(line: 875, column: 41, scope: !3238)
!3252 = !DILocation(line: 875, column: 44, scope: !3238)
!3253 = !DILocation(line: 875, column: 47, scope: !3238)
!3254 = !DILocation(line: 875, column: 18, scope: !3238)
!3255 = !DILocalVariable(name: "stat_e", scope: !3238, file: !1, line: 876, type: !50)
!3256 = !DILocation(line: 876, column: 9, scope: !3238)
!3257 = !DILocation(line: 876, column: 45, scope: !3238)
!3258 = !DILocation(line: 876, column: 40, scope: !3238)
!3259 = !DILocation(line: 876, column: 54, scope: !3238)
!3260 = !DILocation(line: 877, column: 43, scope: !3238)
!3261 = !DILocation(line: 877, column: 49, scope: !3238)
!3262 = !DILocation(line: 877, column: 46, scope: !3238)
!3263 = !DILocation(line: 877, column: 56, scope: !3238)
!3264 = !DILocation(line: 878, column: 43, scope: !3238)
!3265 = !DILocation(line: 876, column: 18, scope: !3238)
!3266 = !DILocation(line: 879, column: 12, scope: !3238)
!3267 = !DILocation(line: 879, column: 12, scope: !3268)
!3268 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 1)
!3269 = !DILocation(line: 879, column: 12, scope: !3270)
!3270 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 2)
!3271 = !DILocation(line: 879, column: 12, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 3)
!3273 = !DILocation(line: 879, column: 12, scope: !3274)
!3274 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 4)
!3275 = !DILocation(line: 879, column: 12, scope: !3276)
!3276 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 5)
!3277 = !DILocation(line: 879, column: 12, scope: !3278)
!3278 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 6)
!3279 = !DILocation(line: 879, column: 12, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 7)
!3281 = !DILocation(line: 879, column: 12, scope: !3282)
!3282 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 8)
!3283 = !DILocation(line: 879, column: 12, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3238, file: !1, discriminator: 9)
!3285 = !DILocation(line: 879, column: 5, scope: !3284)
!3286 = !DILocation(line: 881, column: 1, scope: !3003)
!3287 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_renorm_e", scope: !1, file: !1, line: 885, type: !613, isLocal: false, isDefinition: true, scopeLine: 889, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!3288 = !DILocalVariable(name: "aR", arg: 1, scope: !3287, file: !1, line: 885, type: !51)
!3289 = !DILocation(line: 885, column: 46, scope: !3287)
!3290 = !DILocalVariable(name: "aI", arg: 2, scope: !3287, file: !1, line: 885, type: !51)
!3291 = !DILocation(line: 885, column: 63, scope: !3287)
!3292 = !DILocalVariable(name: "c", arg: 3, scope: !3287, file: !1, line: 885, type: !51)
!3293 = !DILocation(line: 885, column: 80, scope: !3287)
!3294 = !DILocalVariable(name: "x", arg: 4, scope: !3287, file: !1, line: 886, type: !51)
!3295 = !DILocation(line: 886, column: 49, scope: !3287)
!3296 = !DILocalVariable(name: "result", arg: 5, scope: !3287, file: !1, line: 887, type: !52)
!3297 = !DILocation(line: 887, column: 52, scope: !3287)
!3298 = !DILocalVariable(name: "rintc", scope: !3287, file: !1, line: 890, type: !51)
!3299 = !DILocation(line: 890, column: 16, scope: !3287)
!3300 = !DILocation(line: 890, column: 30, scope: !3287)
!3301 = !DILocation(line: 890, column: 33, scope: !3287)
!3302 = !DILocation(line: 890, column: 24, scope: !3287)
!3303 = !DILocalVariable(name: "rinta", scope: !3287, file: !1, line: 891, type: !51)
!3304 = !DILocation(line: 891, column: 16, scope: !3287)
!3305 = !DILocation(line: 891, column: 30, scope: !3287)
!3306 = !DILocation(line: 891, column: 33, scope: !3287)
!3307 = !DILocation(line: 891, column: 24, scope: !3287)
!3308 = !DILocalVariable(name: "a_neg_integer", scope: !3287, file: !1, line: 892, type: !94)
!3309 = !DILocation(line: 892, column: 13, scope: !3287)
!3310 = !DILocation(line: 892, column: 31, scope: !3287)
!3311 = !DILocation(line: 892, column: 34, scope: !3287)
!3312 = !DILocation(line: 892, column: 40, scope: !3287)
!3313 = !DILocation(line: 892, column: 48, scope: !3314)
!3314 = !DILexicalBlockFile(scope: !3287, file: !1, discriminator: 1)
!3315 = !DILocation(line: 892, column: 51, scope: !3314)
!3316 = !DILocation(line: 892, column: 50, scope: !3314)
!3317 = !DILocation(line: 892, column: 43, scope: !3314)
!3318 = !DILocation(line: 892, column: 58, scope: !3314)
!3319 = !DILocation(line: 892, column: 67, scope: !3314)
!3320 = !DILocation(line: 892, column: 70, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !3287, file: !1, discriminator: 2)
!3322 = !DILocation(line: 892, column: 73, scope: !3321)
!3323 = !DILocation(line: 892, column: 67, scope: !3324)
!3324 = !DILexicalBlockFile(scope: !3287, file: !1, discriminator: 3)
!3325 = !DILocation(line: 892, column: 13, scope: !3324)
!3326 = !DILocalVariable(name: "c_neg_integer", scope: !3287, file: !1, line: 893, type: !94)
!3327 = !DILocation(line: 893, column: 13, scope: !3287)
!3328 = !DILocation(line: 893, column: 32, scope: !3287)
!3329 = !DILocation(line: 893, column: 34, scope: !3287)
!3330 = !DILocation(line: 893, column: 40, scope: !3287)
!3331 = !DILocation(line: 893, column: 48, scope: !3314)
!3332 = !DILocation(line: 893, column: 52, scope: !3314)
!3333 = !DILocation(line: 893, column: 50, scope: !3314)
!3334 = !DILocation(line: 893, column: 43, scope: !3314)
!3335 = !DILocation(line: 893, column: 59, scope: !3314)
!3336 = !DILocation(line: 893, column: 40, scope: !3321)
!3337 = !DILocation(line: 893, column: 13, scope: !3321)
!3338 = !DILocation(line: 895, column: 6, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3287, file: !1, line: 895, column: 6)
!3340 = !DILocation(line: 895, column: 6, scope: !3287)
!3341 = !DILocation(line: 896, column: 8, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !1, line: 896, column: 8)
!3343 = distinct !DILexicalBlock(scope: !3339, file: !1, line: 895, column: 21)
!3344 = !DILocation(line: 896, column: 22, scope: !3342)
!3345 = !DILocation(line: 896, column: 25, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !3342, file: !1, discriminator: 1)
!3347 = !DILocation(line: 896, column: 30, scope: !3346)
!3348 = !DILocation(line: 896, column: 31, scope: !3346)
!3349 = !DILocation(line: 896, column: 28, scope: !3346)
!3350 = !DILocation(line: 896, column: 8, scope: !3346)
!3351 = !DILocation(line: 898, column: 7, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3342, file: !1, line: 896, column: 37)
!3353 = !DILocation(line: 898, column: 15, scope: !3352)
!3354 = !DILocation(line: 898, column: 19, scope: !3352)
!3355 = !DILocation(line: 899, column: 7, scope: !3352)
!3356 = !DILocation(line: 899, column: 15, scope: !3352)
!3357 = !DILocation(line: 899, column: 19, scope: !3352)
!3358 = !DILocation(line: 900, column: 7, scope: !3352)
!3359 = !DILocalVariable(name: "g1", scope: !3360, file: !1, line: 905, type: !53)
!3360 = distinct !DILexicalBlock(scope: !3342, file: !1, line: 902, column: 10)
!3361 = !DILocation(line: 905, column: 21, scope: !3360)
!3362 = !DILocalVariable(name: "g2", scope: !3360, file: !1, line: 905, type: !53)
!3363 = !DILocation(line: 905, column: 25, scope: !3360)
!3364 = !DILocalVariable(name: "g3", scope: !3360, file: !1, line: 906, type: !53)
!3365 = !DILocation(line: 906, column: 21, scope: !3360)
!3366 = !DILocalVariable(name: "a1", scope: !3360, file: !1, line: 907, type: !53)
!3367 = !DILocation(line: 907, column: 21, scope: !3360)
!3368 = !DILocalVariable(name: "a2", scope: !3360, file: !1, line: 907, type: !53)
!3369 = !DILocation(line: 907, column: 25, scope: !3360)
!3370 = !DILocalVariable(name: "stat", scope: !3360, file: !1, line: 908, type: !50)
!3371 = !DILocation(line: 908, column: 11, scope: !3360)
!3372 = !DILocation(line: 909, column: 40, scope: !3360)
!3373 = !DILocation(line: 909, column: 43, scope: !3360)
!3374 = !DILocation(line: 909, column: 42, scope: !3360)
!3375 = !DILocation(line: 909, column: 44, scope: !3360)
!3376 = !DILocation(line: 909, column: 48, scope: !3360)
!3377 = !DILocation(line: 909, column: 15, scope: !3360)
!3378 = !DILocation(line: 909, column: 12, scope: !3360)
!3379 = !DILocation(line: 910, column: 40, scope: !3360)
!3380 = !DILocation(line: 910, column: 44, scope: !3360)
!3381 = !DILocation(line: 910, column: 15, scope: !3360)
!3382 = !DILocation(line: 910, column: 12, scope: !3360)
!3383 = !DILocation(line: 911, column: 33, scope: !3360)
!3384 = !DILocation(line: 911, column: 32, scope: !3360)
!3385 = !DILocation(line: 911, column: 34, scope: !3360)
!3386 = !DILocation(line: 911, column: 15, scope: !3360)
!3387 = !DILocation(line: 911, column: 12, scope: !3360)
!3388 = !DILocation(line: 912, column: 10, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3360, file: !1, line: 912, column: 10)
!3390 = !DILocation(line: 912, column: 15, scope: !3389)
!3391 = !DILocation(line: 912, column: 10, scope: !3360)
!3392 = !DILocation(line: 913, column: 9, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3389, file: !1, line: 912, column: 21)
!3394 = distinct !{!3394, !3392}
!3395 = !DILocation(line: 913, column: 9, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !3397, file: !1, discriminator: 1)
!3397 = distinct !DILexicalBlock(scope: !3393, file: !1, line: 913, column: 9)
!3398 = distinct !{!3398, !3399}
!3399 = !DILocation(line: 913, column: 9, scope: !3397)
!3400 = !DILocation(line: 913, column: 9, scope: !3401)
!3401 = !DILexicalBlockFile(scope: !3402, file: !1, discriminator: 2)
!3402 = distinct !DILexicalBlock(scope: !3397, file: !1, line: 913, column: 9)
!3403 = !DILocation(line: 913, column: 9, scope: !3404)
!3404 = !DILexicalBlockFile(scope: !3397, file: !1, discriminator: 3)
!3405 = !DILocation(line: 914, column: 7, scope: !3393)
!3406 = !DILocalVariable(name: "F", scope: !3407, file: !1, line: 916, type: !53)
!3407 = distinct !DILexicalBlock(scope: !3389, file: !1, line: 915, column: 12)
!3408 = !DILocation(line: 916, column: 23, scope: !3407)
!3409 = !DILocalVariable(name: "stat_F", scope: !3407, file: !1, line: 917, type: !50)
!3410 = !DILocation(line: 917, column: 13, scope: !3407)
!3411 = !DILocation(line: 917, column: 47, scope: !3407)
!3412 = !DILocation(line: 917, column: 50, scope: !3407)
!3413 = !DILocation(line: 917, column: 49, scope: !3407)
!3414 = !DILocation(line: 917, column: 51, scope: !3407)
!3415 = !DILocation(line: 917, column: 55, scope: !3407)
!3416 = !DILocation(line: 917, column: 60, scope: !3407)
!3417 = !DILocation(line: 917, column: 59, scope: !3407)
!3418 = !DILocation(line: 917, column: 61, scope: !3407)
!3419 = !DILocation(line: 917, column: 65, scope: !3407)
!3420 = !DILocation(line: 917, column: 22, scope: !3407)
!3421 = !DILocalVariable(name: "ln_pre_val", scope: !3407, file: !1, line: 918, type: !42)
!3422 = !DILocation(line: 918, column: 16, scope: !3407)
!3423 = !DILocation(line: 918, column: 37, scope: !3407)
!3424 = !DILocation(line: 918, column: 46, scope: !3407)
!3425 = !DILocation(line: 918, column: 41, scope: !3407)
!3426 = !DILocation(line: 918, column: 32, scope: !3407)
!3427 = !DILocation(line: 918, column: 56, scope: !3407)
!3428 = !DILocation(line: 918, column: 51, scope: !3407)
!3429 = !DILocalVariable(name: "ln_pre_err", scope: !3407, file: !1, line: 919, type: !42)
!3430 = !DILocation(line: 919, column: 16, scope: !3407)
!3431 = !DILocation(line: 919, column: 39, scope: !3407)
!3432 = !DILocation(line: 919, column: 48, scope: !3407)
!3433 = !DILocation(line: 919, column: 43, scope: !3407)
!3434 = !DILocation(line: 919, column: 33, scope: !3407)
!3435 = !DILocation(line: 919, column: 58, scope: !3407)
!3436 = !DILocation(line: 919, column: 53, scope: !3407)
!3437 = !DILocalVariable(name: "stat_e", scope: !3407, file: !1, line: 920, type: !50)
!3438 = !DILocation(line: 920, column: 13, scope: !3407)
!3439 = !DILocation(line: 920, column: 44, scope: !3407)
!3440 = !DILocation(line: 920, column: 56, scope: !3407)
!3441 = !DILocation(line: 921, column: 49, scope: !3407)
!3442 = !DILocation(line: 921, column: 56, scope: !3407)
!3443 = !DILocation(line: 922, column: 47, scope: !3407)
!3444 = !DILocation(line: 920, column: 22, scope: !3407)
!3445 = !DILocation(line: 923, column: 16, scope: !3407)
!3446 = !DILocation(line: 923, column: 16, scope: !3447)
!3447 = !DILexicalBlockFile(scope: !3407, file: !1, discriminator: 1)
!3448 = !DILocation(line: 923, column: 16, scope: !3449)
!3449 = !DILexicalBlockFile(scope: !3407, file: !1, discriminator: 2)
!3450 = !DILocation(line: 923, column: 16, scope: !3451)
!3451 = !DILexicalBlockFile(scope: !3407, file: !1, discriminator: 3)
!3452 = !DILocation(line: 923, column: 16, scope: !3453)
!3453 = !DILexicalBlockFile(scope: !3407, file: !1, discriminator: 4)
!3454 = !DILocation(line: 923, column: 16, scope: !3455)
!3455 = !DILexicalBlockFile(scope: !3407, file: !1, discriminator: 5)
!3456 = !DILocation(line: 923, column: 16, scope: !3457)
!3457 = !DILexicalBlockFile(scope: !3407, file: !1, discriminator: 6)
!3458 = !DILocation(line: 923, column: 9, scope: !3457)
!3459 = !DILocation(line: 926, column: 3, scope: !3343)
!3460 = !DILocalVariable(name: "F", scope: !3461, file: !1, line: 929, type: !53)
!3461 = distinct !DILexicalBlock(scope: !3339, file: !1, line: 927, column: 8)
!3462 = !DILocation(line: 929, column: 19, scope: !3461)
!3463 = !DILocalVariable(name: "lng", scope: !3461, file: !1, line: 930, type: !53)
!3464 = !DILocation(line: 930, column: 19, scope: !3461)
!3465 = !DILocalVariable(name: "sgn", scope: !3461, file: !1, line: 931, type: !42)
!3466 = !DILocation(line: 931, column: 12, scope: !3461)
!3467 = !DILocalVariable(name: "stat_g", scope: !3461, file: !1, line: 932, type: !50)
!3468 = !DILocation(line: 932, column: 9, scope: !3461)
!3469 = !DILocation(line: 932, column: 39, scope: !3461)
!3470 = !DILocation(line: 932, column: 18, scope: !3461)
!3471 = !DILocalVariable(name: "stat_F", scope: !3461, file: !1, line: 933, type: !50)
!3472 = !DILocation(line: 933, column: 9, scope: !3461)
!3473 = !DILocation(line: 933, column: 43, scope: !3461)
!3474 = !DILocation(line: 933, column: 47, scope: !3461)
!3475 = !DILocation(line: 933, column: 51, scope: !3461)
!3476 = !DILocation(line: 933, column: 54, scope: !3461)
!3477 = !DILocation(line: 933, column: 18, scope: !3461)
!3478 = !DILocalVariable(name: "stat_e", scope: !3461, file: !1, line: 934, type: !50)
!3479 = !DILocation(line: 934, column: 9, scope: !3461)
!3480 = !DILocation(line: 934, column: 45, scope: !3461)
!3481 = !DILocation(line: 934, column: 40, scope: !3461)
!3482 = !DILocation(line: 934, column: 54, scope: !3461)
!3483 = !DILocation(line: 935, column: 43, scope: !3461)
!3484 = !DILocation(line: 935, column: 49, scope: !3461)
!3485 = !DILocation(line: 935, column: 46, scope: !3461)
!3486 = !DILocation(line: 935, column: 56, scope: !3461)
!3487 = !DILocation(line: 936, column: 43, scope: !3461)
!3488 = !DILocation(line: 934, column: 18, scope: !3461)
!3489 = !DILocation(line: 937, column: 12, scope: !3461)
!3490 = !DILocation(line: 937, column: 12, scope: !3491)
!3491 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 1)
!3492 = !DILocation(line: 937, column: 12, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 2)
!3494 = !DILocation(line: 937, column: 12, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 3)
!3496 = !DILocation(line: 937, column: 12, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 4)
!3498 = !DILocation(line: 937, column: 12, scope: !3499)
!3499 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 5)
!3500 = !DILocation(line: 937, column: 12, scope: !3501)
!3501 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 6)
!3502 = !DILocation(line: 937, column: 12, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 7)
!3504 = !DILocation(line: 937, column: 12, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 8)
!3506 = !DILocation(line: 937, column: 12, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !3461, file: !1, discriminator: 9)
!3508 = !DILocation(line: 937, column: 5, scope: !3507)
!3509 = !DILocation(line: 939, column: 1, scope: !3287)
!3510 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1", scope: !1, file: !1, line: 946, type: !3511, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!42, !42, !42, !42, !42}
!3513 = !DILocalVariable(name: "a", arg: 1, scope: !3510, file: !1, line: 946, type: !42)
!3514 = !DILocation(line: 946, column: 33, scope: !3510)
!3515 = !DILocalVariable(name: "b", arg: 2, scope: !3510, file: !1, line: 946, type: !42)
!3516 = !DILocation(line: 946, column: 43, scope: !3510)
!3517 = !DILocalVariable(name: "c", arg: 3, scope: !3510, file: !1, line: 946, type: !42)
!3518 = !DILocation(line: 946, column: 53, scope: !3510)
!3519 = !DILocalVariable(name: "x", arg: 4, scope: !3510, file: !1, line: 946, type: !42)
!3520 = !DILocation(line: 946, column: 63, scope: !3510)
!3521 = !DILocalVariable(name: "result", scope: !3510, file: !1, line: 948, type: !53)
!3522 = !DILocation(line: 948, column: 3, scope: !3510)
!3523 = !DILocalVariable(name: "status", scope: !3510, file: !1, line: 948, type: !50)
!3524 = !DILocation(line: 948, column: 3, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3510, file: !1, line: 948, column: 3)
!3526 = !DILocation(line: 948, column: 3, scope: !3527)
!3527 = !DILexicalBlockFile(scope: !3528, file: !1, discriminator: 1)
!3528 = distinct !DILexicalBlock(scope: !3525, file: !1, line: 948, column: 3)
!3529 = distinct !{!3529, !3530}
!3530 = !DILocation(line: 948, column: 3, scope: !3528)
!3531 = !DILocation(line: 948, column: 3, scope: !3532)
!3532 = !DILexicalBlockFile(scope: !3533, file: !1, discriminator: 2)
!3533 = distinct !DILexicalBlock(scope: !3528, file: !1, line: 948, column: 3)
!3534 = !DILocation(line: 948, column: 3, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3528, file: !1, discriminator: 3)
!3536 = !DILocation(line: 948, column: 3, scope: !3537)
!3537 = !DILexicalBlockFile(scope: !3510, file: !1, discriminator: 4)
!3538 = !DILocation(line: 949, column: 1, scope: !3510)
!3539 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj", scope: !1, file: !1, line: 951, type: !3511, isLocal: false, isDefinition: true, scopeLine: 952, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!3540 = !DILocalVariable(name: "aR", arg: 1, scope: !3539, file: !1, line: 951, type: !42)
!3541 = !DILocation(line: 951, column: 38, scope: !3539)
!3542 = !DILocalVariable(name: "aI", arg: 2, scope: !3539, file: !1, line: 951, type: !42)
!3543 = !DILocation(line: 951, column: 49, scope: !3539)
!3544 = !DILocalVariable(name: "c", arg: 3, scope: !3539, file: !1, line: 951, type: !42)
!3545 = !DILocation(line: 951, column: 60, scope: !3539)
!3546 = !DILocalVariable(name: "x", arg: 4, scope: !3539, file: !1, line: 951, type: !42)
!3547 = !DILocation(line: 951, column: 70, scope: !3539)
!3548 = !DILocalVariable(name: "result", scope: !3539, file: !1, line: 953, type: !53)
!3549 = !DILocation(line: 953, column: 3, scope: !3539)
!3550 = !DILocalVariable(name: "status", scope: !3539, file: !1, line: 953, type: !50)
!3551 = !DILocation(line: 953, column: 3, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3539, file: !1, line: 953, column: 3)
!3553 = !DILocation(line: 953, column: 3, scope: !3554)
!3554 = !DILexicalBlockFile(scope: !3555, file: !1, discriminator: 1)
!3555 = distinct !DILexicalBlock(scope: !3552, file: !1, line: 953, column: 3)
!3556 = distinct !{!3556, !3557}
!3557 = !DILocation(line: 953, column: 3, scope: !3555)
!3558 = !DILocation(line: 953, column: 3, scope: !3559)
!3559 = !DILexicalBlockFile(scope: !3560, file: !1, discriminator: 2)
!3560 = distinct !DILexicalBlock(scope: !3555, file: !1, line: 953, column: 3)
!3561 = !DILocation(line: 953, column: 3, scope: !3562)
!3562 = !DILexicalBlockFile(scope: !3555, file: !1, discriminator: 3)
!3563 = !DILocation(line: 953, column: 3, scope: !3564)
!3564 = !DILexicalBlockFile(scope: !3539, file: !1, discriminator: 4)
!3565 = !DILocation(line: 954, column: 1, scope: !3539)
!3566 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_renorm", scope: !1, file: !1, line: 956, type: !3511, isLocal: false, isDefinition: true, scopeLine: 957, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!3567 = !DILocalVariable(name: "a", arg: 1, scope: !3566, file: !1, line: 956, type: !42)
!3568 = !DILocation(line: 956, column: 40, scope: !3566)
!3569 = !DILocalVariable(name: "b", arg: 2, scope: !3566, file: !1, line: 956, type: !42)
!3570 = !DILocation(line: 956, column: 50, scope: !3566)
!3571 = !DILocalVariable(name: "c", arg: 3, scope: !3566, file: !1, line: 956, type: !42)
!3572 = !DILocation(line: 956, column: 60, scope: !3566)
!3573 = !DILocalVariable(name: "x", arg: 4, scope: !3566, file: !1, line: 956, type: !42)
!3574 = !DILocation(line: 956, column: 70, scope: !3566)
!3575 = !DILocalVariable(name: "result", scope: !3566, file: !1, line: 958, type: !53)
!3576 = !DILocation(line: 958, column: 3, scope: !3566)
!3577 = !DILocalVariable(name: "status", scope: !3566, file: !1, line: 958, type: !50)
!3578 = !DILocation(line: 958, column: 3, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3566, file: !1, line: 958, column: 3)
!3580 = !DILocation(line: 958, column: 3, scope: !3581)
!3581 = !DILexicalBlockFile(scope: !3582, file: !1, discriminator: 1)
!3582 = distinct !DILexicalBlock(scope: !3579, file: !1, line: 958, column: 3)
!3583 = distinct !{!3583, !3584}
!3584 = !DILocation(line: 958, column: 3, scope: !3582)
!3585 = !DILocation(line: 958, column: 3, scope: !3586)
!3586 = !DILexicalBlockFile(scope: !3587, file: !1, discriminator: 2)
!3587 = distinct !DILexicalBlock(scope: !3582, file: !1, line: 958, column: 3)
!3588 = !DILocation(line: 958, column: 3, scope: !3589)
!3589 = !DILexicalBlockFile(scope: !3582, file: !1, discriminator: 3)
!3590 = !DILocation(line: 958, column: 3, scope: !3591)
!3591 = !DILexicalBlockFile(scope: !3566, file: !1, discriminator: 4)
!3592 = !DILocation(line: 959, column: 1, scope: !3566)
!3593 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F1_conj_renorm", scope: !1, file: !1, line: 961, type: !3511, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!3594 = !DILocalVariable(name: "aR", arg: 1, scope: !3593, file: !1, line: 961, type: !42)
!3595 = !DILocation(line: 961, column: 45, scope: !3593)
!3596 = !DILocalVariable(name: "aI", arg: 2, scope: !3593, file: !1, line: 961, type: !42)
!3597 = !DILocation(line: 961, column: 56, scope: !3593)
!3598 = !DILocalVariable(name: "c", arg: 3, scope: !3593, file: !1, line: 961, type: !42)
!3599 = !DILocation(line: 961, column: 67, scope: !3593)
!3600 = !DILocalVariable(name: "x", arg: 4, scope: !3593, file: !1, line: 961, type: !42)
!3601 = !DILocation(line: 961, column: 77, scope: !3593)
!3602 = !DILocalVariable(name: "result", scope: !3593, file: !1, line: 963, type: !53)
!3603 = !DILocation(line: 963, column: 3, scope: !3593)
!3604 = !DILocalVariable(name: "status", scope: !3593, file: !1, line: 963, type: !50)
!3605 = !DILocation(line: 963, column: 3, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3593, file: !1, line: 963, column: 3)
!3607 = !DILocation(line: 963, column: 3, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3609, file: !1, discriminator: 1)
!3609 = distinct !DILexicalBlock(scope: !3606, file: !1, line: 963, column: 3)
!3610 = distinct !{!3610, !3611}
!3611 = !DILocation(line: 963, column: 3, scope: !3609)
!3612 = !DILocation(line: 963, column: 3, scope: !3613)
!3613 = !DILexicalBlockFile(scope: !3614, file: !1, discriminator: 2)
!3614 = distinct !DILexicalBlock(scope: !3609, file: !1, line: 963, column: 3)
!3615 = !DILocation(line: 963, column: 3, scope: !3616)
!3616 = !DILexicalBlockFile(scope: !3609, file: !1, discriminator: 3)
!3617 = !DILocation(line: 963, column: 3, scope: !3618)
!3618 = !DILexicalBlockFile(scope: !3593, file: !1, discriminator: 4)
!3619 = !DILocation(line: 964, column: 1, scope: !3593)
