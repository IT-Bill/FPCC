; ModuleID = 'hyperg_1F1.c'
source_filename = "hyperg_1F1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_sf_result_e10_struct = type { double, double, i32 }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"hyperg_1F1.c\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"gsl_sf_hyperg_1F1_int_e(m, n, x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"gsl_sf_hyperg_1F1_e(a, b, x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_1F1_int_e(i32, i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !61, metadata !62), !dbg !63
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !64, metadata !62), !dbg !65
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !66, metadata !62), !dbg !67
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !68, metadata !62), !dbg !69
  %13 = load double, double* %8, align 8, !dbg !70
  %14 = fcmp oeq double %13, 0.000000e+00, !dbg !72
  br i1 %14, label %15, label %20, !dbg !73

; <label>:15:                                     ; preds = %4
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !74
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !76
  store double 1.000000e+00, double* %17, align 8, !dbg !77
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !78
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !79
  store double 0.000000e+00, double* %19, align 8, !dbg !80
  store i32 0, i32* %5, align 4, !dbg !81
  br label %182, !dbg !81

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %6, align 4, !dbg !82
  %22 = load i32, i32* %7, align 4, !dbg !84
  %23 = icmp eq i32 %21, %22, !dbg !85
  br i1 %23, label %24, label %28, !dbg !86

; <label>:24:                                     ; preds = %20
  %25 = load double, double* %8, align 8, !dbg !87
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !89
  %27 = call i32 @gsl_sf_exp_e(double %25, %struct.gsl_sf_result_struct* %26), !dbg !90
  store i32 %27, i32* %5, align 4, !dbg !91
  br label %182, !dbg !91

; <label>:28:                                     ; preds = %20
  %29 = load i32, i32* %7, align 4, !dbg !92
  %30 = icmp eq i32 %29, 0, !dbg !94
  br i1 %30, label %31, label %40, !dbg !95

; <label>:31:                                     ; preds = %28
  br label %32, !dbg !96, !llvm.loop !98

; <label>:32:                                     ; preds = %31
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !99
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !99
  store double 0x7FF8000000000000, double* %34, align 8, !dbg !99
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !99
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !99
  store double 0x7FF8000000000000, double* %36, align 8, !dbg !99
  br label %37, !dbg !99, !llvm.loop !102

; <label>:37:                                     ; preds = %32
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 1803, i32 1), !dbg !104
  store i32 1, i32* %5, align 4, !dbg !104
  br label %182, !dbg !104
                                                  ; No predecessors!
  br label %39, !dbg !107

; <label>:39:                                     ; preds = %38
  br label %180, !dbg !109

; <label>:40:                                     ; preds = %28
  %41 = load i32, i32* %6, align 4, !dbg !110
  %42 = icmp eq i32 %41, 0, !dbg !112
  br i1 %42, label %43, label %48, !dbg !113

; <label>:43:                                     ; preds = %40
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !114
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !116
  store double 1.000000e+00, double* %45, align 8, !dbg !117
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !118
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !119
  store double 0.000000e+00, double* %47, align 8, !dbg !120
  store i32 0, i32* %5, align 4, !dbg !121
  br label %182, !dbg !121

; <label>:48:                                     ; preds = %40
  %49 = load i32, i32* %7, align 4, !dbg !122
  %50 = icmp slt i32 %49, 0, !dbg !124
  br i1 %50, label %51, label %67, !dbg !125

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %6, align 4, !dbg !126
  %53 = load i32, i32* %7, align 4, !dbg !128
  %54 = icmp slt i32 %52, %53, !dbg !129
  br i1 %54, label %58, label %55, !dbg !130

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %6, align 4, !dbg !131
  %57 = icmp sgt i32 %56, 0, !dbg !133
  br i1 %57, label %58, label %67, !dbg !134

; <label>:58:                                     ; preds = %55, %51
  br label %59, !dbg !135, !llvm.loop !137

; <label>:59:                                     ; preds = %58
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !138
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !138
  store double 0x7FF8000000000000, double* %61, align 8, !dbg !138
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !138
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !138
  store double 0x7FF8000000000000, double* %63, align 8, !dbg !138
  br label %64, !dbg !138, !llvm.loop !141

; <label>:64:                                     ; preds = %59
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 1812, i32 1), !dbg !143
  store i32 1, i32* %5, align 4, !dbg !143
  br label %182, !dbg !143
                                                  ; No predecessors!
  br label %66, !dbg !146

; <label>:66:                                     ; preds = %65
  br label %178, !dbg !148

; <label>:67:                                     ; preds = %55, %48
  %68 = load double, double* %8, align 8, !dbg !149
  %69 = fcmp ogt double %68, 1.000000e+02, !dbg !151
  br i1 %69, label %70, label %94, !dbg !152

; <label>:70:                                     ; preds = %67
  %71 = load i32, i32* %7, align 4, !dbg !153
  %72 = load i32, i32* %6, align 4, !dbg !155
  %73 = sub nsw i32 %71, %72, !dbg !156
  %74 = sitofp i32 %73 to double, !dbg !153
  %75 = call double @fabs(double %74) #1, !dbg !157
  %76 = call double @GSL_MAX_DBL(double 1.000000e+00, double %75), !dbg !158
  %77 = load i32, i32* %6, align 4, !dbg !160
  %78 = sub nsw i32 1, %77, !dbg !161
  %79 = sitofp i32 %78 to double, !dbg !162
  %80 = call double @fabs(double %79) #1, !dbg !163
  %81 = call double @GSL_MAX_DBL(double 1.000000e+00, double %80), !dbg !165
  %82 = fmul double %76, %81, !dbg !167
  %83 = load double, double* %8, align 8, !dbg !168
  %84 = fmul double 5.000000e-01, %83, !dbg !169
  %85 = fcmp olt double %82, %84, !dbg !170
  br i1 %85, label %86, label %94, !dbg !171

; <label>:86:                                     ; preds = %70
  %87 = load i32, i32* %6, align 4, !dbg !172
  %88 = sitofp i32 %87 to double, !dbg !172
  %89 = load i32, i32* %7, align 4, !dbg !174
  %90 = sitofp i32 %89 to double, !dbg !174
  %91 = load double, double* %8, align 8, !dbg !175
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !176
  %93 = call i32 @hyperg_1F1_asymp_posx(double %88, double %90, double %91, %struct.gsl_sf_result_struct* %92), !dbg !177
  store i32 %93, i32* %5, align 4, !dbg !178
  br label %182, !dbg !178

; <label>:94:                                     ; preds = %70, %67
  %95 = load double, double* %8, align 8, !dbg !179
  %96 = fcmp olt double %95, -1.000000e+02, !dbg !181
  br i1 %96, label %97, label %122, !dbg !182

; <label>:97:                                     ; preds = %94
  %98 = load i32, i32* %6, align 4, !dbg !183
  %99 = sitofp i32 %98 to double, !dbg !183
  %100 = call double @fabs(double %99) #1, !dbg !185
  %101 = call double @GSL_MAX_DBL(double 1.000000e+00, double %100), !dbg !186
  %102 = load i32, i32* %6, align 4, !dbg !188
  %103 = add nsw i32 1, %102, !dbg !189
  %104 = load i32, i32* %7, align 4, !dbg !190
  %105 = sub nsw i32 %103, %104, !dbg !191
  %106 = sitofp i32 %105 to double, !dbg !192
  %107 = call double @fabs(double %106) #1, !dbg !193
  %108 = call double @GSL_MAX_DBL(double 1.000000e+00, double %107), !dbg !195
  %109 = fmul double %101, %108, !dbg !197
  %110 = load double, double* %8, align 8, !dbg !198
  %111 = call double @fabs(double %110) #1, !dbg !199
  %112 = fmul double 5.000000e-01, %111, !dbg !201
  %113 = fcmp olt double %109, %112, !dbg !202
  br i1 %113, label %114, label %122, !dbg !203

; <label>:114:                                    ; preds = %97
  %115 = load i32, i32* %6, align 4, !dbg !204
  %116 = sitofp i32 %115 to double, !dbg !204
  %117 = load i32, i32* %7, align 4, !dbg !206
  %118 = sitofp i32 %117 to double, !dbg !206
  %119 = load double, double* %8, align 8, !dbg !207
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !208
  %121 = call i32 @hyperg_1F1_asymp_negx(double %116, double %118, double %119, %struct.gsl_sf_result_struct* %120), !dbg !209
  store i32 %121, i32* %5, align 4, !dbg !210
  br label %182, !dbg !210

; <label>:122:                                    ; preds = %97, %94
  %123 = load i32, i32* %6, align 4, !dbg !211
  %124 = icmp slt i32 %123, 0, !dbg !213
  br i1 %124, label %125, label %134, !dbg !214

; <label>:125:                                    ; preds = %122
  %126 = load i32, i32* %7, align 4, !dbg !215
  %127 = icmp slt i32 %126, 0, !dbg !217
  br i1 %127, label %128, label %134, !dbg !218

; <label>:128:                                    ; preds = %125
  %129 = load i32, i32* %6, align 4, !dbg !219
  %130 = load i32, i32* %7, align 4, !dbg !221
  %131 = load double, double* %8, align 8, !dbg !222
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !223
  %133 = call i32 @hyperg_1F1_ab_negint(i32 %129, i32 %130, double %131, %struct.gsl_sf_result_struct* %132), !dbg !224
  store i32 %133, i32* %5, align 4, !dbg !225
  br label %182, !dbg !225

; <label>:134:                                    ; preds = %125, %122
  %135 = load i32, i32* %6, align 4, !dbg !226
  %136 = icmp slt i32 %135, 0, !dbg !228
  br i1 %136, label %137, label %172, !dbg !229

; <label>:137:                                    ; preds = %134
  %138 = load i32, i32* %7, align 4, !dbg !230
  %139 = icmp sgt i32 %138, 0, !dbg !232
  br i1 %139, label %140, label %172, !dbg !233

; <label>:140:                                    ; preds = %137
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !234, metadata !62), !dbg !236
  call void @llvm.dbg.declare(metadata i32* %11, metadata !237, metadata !62), !dbg !238
  %141 = load i32, i32* %7, align 4, !dbg !239
  %142 = load i32, i32* %6, align 4, !dbg !240
  %143 = sub nsw i32 %141, %142, !dbg !241
  %144 = load i32, i32* %7, align 4, !dbg !242
  %145 = load double, double* %8, align 8, !dbg !243
  %146 = fsub double -0.000000e+00, %145, !dbg !244
  %147 = call i32 @hyperg_1F1_ab_posint(i32 %143, i32 %144, double %146, %struct.gsl_sf_result_struct* %10), !dbg !245
  store i32 %147, i32* %11, align 4, !dbg !238
  call void @llvm.dbg.declare(metadata i32* %12, metadata !246, metadata !62), !dbg !247
  %148 = load double, double* %8, align 8, !dbg !248
  %149 = load double, double* %8, align 8, !dbg !249
  %150 = call double @fabs(double %149) #1, !dbg !250
  %151 = fmul double 0x3CB0000000000000, %150, !dbg !251
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !252
  %153 = load double, double* %152, align 8, !dbg !252
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !253
  %155 = load double, double* %154, align 8, !dbg !253
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !254
  %157 = call i32 @gsl_sf_exp_mult_err_e(double %148, double %151, double %153, double %155, %struct.gsl_sf_result_struct* %156), !dbg !255
  store i32 %157, i32* %12, align 4, !dbg !247
  %158 = load i32, i32* %12, align 4, !dbg !257
  %159 = icmp ne i32 %158, 0, !dbg !257
  br i1 %159, label %160, label %162, !dbg !257

; <label>:160:                                    ; preds = %140
  %161 = load i32, i32* %12, align 4, !dbg !258
  br label %170, !dbg !258

; <label>:162:                                    ; preds = %140
  %163 = load i32, i32* %11, align 4, !dbg !259
  %164 = icmp ne i32 %163, 0, !dbg !259
  br i1 %164, label %165, label %167, !dbg !259

; <label>:165:                                    ; preds = %162
  %166 = load i32, i32* %11, align 4, !dbg !261
  br label %168, !dbg !261

; <label>:167:                                    ; preds = %162
  br label %168, !dbg !263

; <label>:168:                                    ; preds = %167, %165
  %169 = phi i32 [ %166, %165 ], [ 0, %167 ], !dbg !265
  br label %170, !dbg !265

; <label>:170:                                    ; preds = %168, %160
  %171 = phi i32 [ %161, %160 ], [ %169, %168 ], !dbg !267
  store i32 %171, i32* %5, align 4, !dbg !269
  br label %182, !dbg !269

; <label>:172:                                    ; preds = %137, %134
  %173 = load i32, i32* %6, align 4, !dbg !270
  %174 = load i32, i32* %7, align 4, !dbg !272
  %175 = load double, double* %8, align 8, !dbg !273
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !274
  %177 = call i32 @hyperg_1F1_ab_posint(i32 %173, i32 %174, double %175, %struct.gsl_sf_result_struct* %176), !dbg !275
  store i32 %177, i32* %5, align 4, !dbg !276
  br label %182, !dbg !276

; <label>:178:                                    ; preds = %66
  br label %179

; <label>:179:                                    ; preds = %178
  br label %180

; <label>:180:                                    ; preds = %179, %39
  br label %181

; <label>:181:                                    ; preds = %180
  br label %182

; <label>:182:                                    ; preds = %15, %24, %37, %43, %64, %86, %114, %128, %170, %172, %181
  %183 = load i32, i32* %5, align 4, !dbg !277
  ret i32 %183, !dbg !277
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @gsl_sf_exp_e(double, %struct.gsl_sf_result_struct*) #2

declare void @gsl_error(i8*, i8*, i32, i32) #2

declare double @GSL_MAX_DBL(double, double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_asymp_posx(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !278 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !281, metadata !62), !dbg !282
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !283, metadata !62), !dbg !284
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !285, metadata !62), !dbg !286
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !287, metadata !62), !dbg !288
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !289, metadata !62), !dbg !290
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !291, metadata !62), !dbg !292
  call void @llvm.dbg.declare(metadata double* %12, metadata !293, metadata !62), !dbg !294
  call void @llvm.dbg.declare(metadata double* %13, metadata !295, metadata !62), !dbg !296
  call void @llvm.dbg.declare(metadata i32* %14, metadata !297, metadata !62), !dbg !298
  %24 = load double, double* %7, align 8, !dbg !299
  %25 = call i32 @gsl_sf_lngamma_sgn_e(double %24, %struct.gsl_sf_result_struct* %10, double* %12), !dbg !300
  store i32 %25, i32* %14, align 4, !dbg !298
  call void @llvm.dbg.declare(metadata i32* %15, metadata !301, metadata !62), !dbg !302
  %26 = load double, double* %6, align 8, !dbg !303
  %27 = call i32 @gsl_sf_lngamma_sgn_e(double %26, %struct.gsl_sf_result_struct* %11, double* %13), !dbg !304
  store i32 %27, i32* %15, align 4, !dbg !302
  %28 = load i32, i32* %15, align 4, !dbg !305
  %29 = icmp eq i32 %28, 0, !dbg !307
  br i1 %29, label %30, label %123, !dbg !308

; <label>:30:                                     ; preds = %4
  %31 = load i32, i32* %14, align 4, !dbg !309
  %32 = icmp eq i32 %31, 0, !dbg !311
  br i1 %32, label %33, label %123, !dbg !312

; <label>:33:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !313, metadata !62), !dbg !315
  call void @llvm.dbg.declare(metadata i32* %17, metadata !316, metadata !62), !dbg !317
  %34 = load double, double* %7, align 8, !dbg !318
  %35 = load double, double* %6, align 8, !dbg !319
  %36 = fsub double %34, %35, !dbg !320
  %37 = load double, double* %6, align 8, !dbg !321
  %38 = fsub double 1.000000e+00, %37, !dbg !322
  %39 = load double, double* %8, align 8, !dbg !323
  %40 = fdiv double 1.000000e+00, %39, !dbg !324
  %41 = call i32 @gsl_sf_hyperg_2F0_series_e(double %36, double %38, double %40, i32 -1, %struct.gsl_sf_result_struct* %16), !dbg !325
  store i32 %41, i32* %17, align 4, !dbg !317
  %42 = load i32, i32* %17, align 4, !dbg !326
  %43 = icmp eq i32 %42, 0, !dbg !328
  br i1 %43, label %44, label %117, !dbg !329

; <label>:44:                                     ; preds = %33
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !330
  %46 = load double, double* %45, align 8, !dbg !330
  %47 = fcmp une double %46, 0.000000e+00, !dbg !332
  br i1 %47, label %48, label %117, !dbg !333

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.declare(metadata double* %18, metadata !334, metadata !62), !dbg !336
  %49 = load double, double* %8, align 8, !dbg !337
  %50 = call double @log(double %49) #5, !dbg !338
  store double %50, double* %18, align 8, !dbg !336
  call void @llvm.dbg.declare(metadata double* %19, metadata !339, metadata !62), !dbg !340
  %51 = load double, double* %6, align 8, !dbg !341
  %52 = load double, double* %7, align 8, !dbg !342
  %53 = fsub double %51, %52, !dbg !343
  %54 = load double, double* %18, align 8, !dbg !344
  %55 = fmul double %53, %54, !dbg !345
  store double %55, double* %19, align 8, !dbg !340
  call void @llvm.dbg.declare(metadata double* %20, metadata !346, metadata !62), !dbg !347
  %56 = load double, double* %6, align 8, !dbg !348
  %57 = call double @fabs(double %56) #1, !dbg !349
  %58 = load double, double* %7, align 8, !dbg !350
  %59 = call double @fabs(double %58) #1, !dbg !351
  %60 = fadd double %57, %59, !dbg !353
  %61 = fmul double 0x3CC0000000000000, %60, !dbg !354
  %62 = load double, double* %18, align 8, !dbg !355
  %63 = call double @fabs(double %62) #1, !dbg !356
  %64 = fmul double %61, %63, !dbg !358
  %65 = load double, double* %6, align 8, !dbg !359
  %66 = load double, double* %7, align 8, !dbg !360
  %67 = fsub double %65, %66, !dbg !361
  %68 = call double @fabs(double %67) #1, !dbg !362
  %69 = fmul double 0x3CC0000000000000, %68, !dbg !363
  %70 = fadd double %64, %69, !dbg !364
  store double %70, double* %20, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata double* %21, metadata !365, metadata !62), !dbg !366
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !367
  %72 = load double, double* %71, align 8, !dbg !367
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !368
  %74 = load double, double* %73, align 8, !dbg !368
  %75 = fsub double %72, %74, !dbg !369
  %76 = load double, double* %19, align 8, !dbg !370
  %77 = fadd double %75, %76, !dbg !371
  %78 = load double, double* %8, align 8, !dbg !372
  %79 = fadd double %77, %78, !dbg !373
  store double %79, double* %21, align 8, !dbg !366
  call void @llvm.dbg.declare(metadata double* %22, metadata !374, metadata !62), !dbg !375
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !376
  %81 = load double, double* %80, align 8, !dbg !376
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !377
  %83 = load double, double* %82, align 8, !dbg !377
  %84 = fadd double %81, %83, !dbg !378
  %85 = load double, double* %20, align 8, !dbg !379
  %86 = fadd double %84, %85, !dbg !380
  %87 = load double, double* %8, align 8, !dbg !381
  %88 = call double @fabs(double %87) #1, !dbg !382
  %89 = fmul double 0x3CC0000000000000, %88, !dbg !383
  %90 = fadd double %86, %89, !dbg !384
  store double %90, double* %22, align 8, !dbg !375
  call void @llvm.dbg.declare(metadata i32* %23, metadata !385, metadata !62), !dbg !386
  %91 = load double, double* %21, align 8, !dbg !387
  %92 = load double, double* %22, align 8, !dbg !388
  %93 = load double, double* %13, align 8, !dbg !389
  %94 = load double, double* %12, align 8, !dbg !390
  %95 = fmul double %93, %94, !dbg !391
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !392
  %97 = load double, double* %96, align 8, !dbg !392
  %98 = fmul double %95, %97, !dbg !393
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !394
  %100 = load double, double* %99, align 8, !dbg !394
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !395
  %102 = call i32 @gsl_sf_exp_mult_err_e(double %91, double %92, double %98, double %100, %struct.gsl_sf_result_struct* %101), !dbg !396
  store i32 %102, i32* %23, align 4, !dbg !386
  %103 = load i32, i32* %23, align 4, !dbg !397
  %104 = icmp ne i32 %103, 0, !dbg !397
  br i1 %104, label %105, label %107, !dbg !397

; <label>:105:                                    ; preds = %48
  %106 = load i32, i32* %23, align 4, !dbg !398
  br label %115, !dbg !398

; <label>:107:                                    ; preds = %48
  %108 = load i32, i32* %17, align 4, !dbg !399
  %109 = icmp ne i32 %108, 0, !dbg !399
  br i1 %109, label %110, label %112, !dbg !399

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %17, align 4, !dbg !400
  br label %113, !dbg !400

; <label>:112:                                    ; preds = %107
  br label %113, !dbg !402

; <label>:113:                                    ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ], !dbg !404
  br label %115, !dbg !404

; <label>:115:                                    ; preds = %113, %105
  %116 = phi i32 [ %106, %105 ], [ %114, %113 ], !dbg !406
  store i32 %116, i32* %5, align 4, !dbg !408
  br label %132, !dbg !408

; <label>:117:                                    ; preds = %44, %33
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !409
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 0, !dbg !411
  store double 0.000000e+00, double* %119, align 8, !dbg !412
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !413
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 1, !dbg !414
  store double 0.000000e+00, double* %121, align 8, !dbg !415
  %122 = load i32, i32* %17, align 4, !dbg !416
  store i32 %122, i32* %5, align 4, !dbg !417
  br label %132, !dbg !417

; <label>:123:                                    ; preds = %30, %4
  br label %124, !dbg !418, !llvm.loop !420

; <label>:124:                                    ; preds = %123
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !421
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !421
  store double 0x7FF8000000000000, double* %126, align 8, !dbg !421
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !421
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !421
  store double 0x7FF8000000000000, double* %128, align 8, !dbg !421
  br label %129, !dbg !421, !llvm.loop !424

; <label>:129:                                    ; preds = %124
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 118, i32 1), !dbg !426
  store i32 1, i32* %5, align 4, !dbg !426
  br label %132, !dbg !426
                                                  ; No predecessors!
  br label %131, !dbg !429

; <label>:131:                                    ; preds = %130
  br label %132

; <label>:132:                                    ; preds = %115, %117, %129, %131
  %133 = load i32, i32* %5, align 4, !dbg !431
  ret i32 %133, !dbg !431
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_asymp_negx(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !432 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !433, metadata !62), !dbg !434
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !435, metadata !62), !dbg !436
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !437, metadata !62), !dbg !438
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !439, metadata !62), !dbg !440
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !441, metadata !62), !dbg !442
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !443, metadata !62), !dbg !444
  call void @llvm.dbg.declare(metadata double* %12, metadata !445, metadata !62), !dbg !446
  call void @llvm.dbg.declare(metadata double* %13, metadata !447, metadata !62), !dbg !448
  call void @llvm.dbg.declare(metadata i32* %14, metadata !449, metadata !62), !dbg !450
  %23 = load double, double* %7, align 8, !dbg !451
  %24 = call i32 @gsl_sf_lngamma_sgn_e(double %23, %struct.gsl_sf_result_struct* %10, double* %12), !dbg !452
  store i32 %24, i32* %14, align 4, !dbg !450
  call void @llvm.dbg.declare(metadata i32* %15, metadata !453, metadata !62), !dbg !454
  %25 = load double, double* %7, align 8, !dbg !455
  %26 = load double, double* %6, align 8, !dbg !456
  %27 = fsub double %25, %26, !dbg !457
  %28 = call i32 @gsl_sf_lngamma_sgn_e(double %27, %struct.gsl_sf_result_struct* %11, double* %13), !dbg !458
  store i32 %28, i32* %15, align 4, !dbg !454
  %29 = load i32, i32* %14, align 4, !dbg !459
  %30 = icmp eq i32 %29, 0, !dbg !461
  br i1 %30, label %31, label %104, !dbg !462

; <label>:31:                                     ; preds = %4
  %32 = load i32, i32* %15, align 4, !dbg !463
  %33 = icmp eq i32 %32, 0, !dbg !465
  br i1 %33, label %34, label %104, !dbg !466

; <label>:34:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !467, metadata !62), !dbg !469
  call void @llvm.dbg.declare(metadata i32* %17, metadata !470, metadata !62), !dbg !471
  %35 = load double, double* %6, align 8, !dbg !472
  %36 = load double, double* %6, align 8, !dbg !473
  %37 = fadd double 1.000000e+00, %36, !dbg !474
  %38 = load double, double* %7, align 8, !dbg !475
  %39 = fsub double %37, %38, !dbg !476
  %40 = load double, double* %8, align 8, !dbg !477
  %41 = fdiv double -1.000000e+00, %40, !dbg !478
  %42 = call i32 @gsl_sf_hyperg_2F0_series_e(double %35, double %39, double %41, i32 -1, %struct.gsl_sf_result_struct* %16), !dbg !479
  store i32 %42, i32* %17, align 4, !dbg !471
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !480
  %44 = load double, double* %43, align 8, !dbg !480
  %45 = fcmp une double %44, 0.000000e+00, !dbg !482
  br i1 %45, label %46, label %98, !dbg !483

; <label>:46:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata double* %18, metadata !484, metadata !62), !dbg !486
  %47 = load double, double* %6, align 8, !dbg !487
  %48 = load double, double* %8, align 8, !dbg !488
  %49 = fsub double -0.000000e+00, %48, !dbg !489
  %50 = call double @log(double %49) #5, !dbg !490
  %51 = fmul double %47, %50, !dbg !491
  store double %51, double* %18, align 8, !dbg !486
  call void @llvm.dbg.declare(metadata double* %19, metadata !492, metadata !62), !dbg !493
  %52 = load double, double* %6, align 8, !dbg !494
  %53 = call double @fabs(double %52) #1, !dbg !495
  %54 = load double, double* %18, align 8, !dbg !496
  %55 = call double @fabs(double %54) #1, !dbg !497
  %56 = fadd double %53, %55, !dbg !499
  %57 = fmul double 0x3CC0000000000000, %56, !dbg !500
  store double %57, double* %19, align 8, !dbg !493
  call void @llvm.dbg.declare(metadata double* %20, metadata !501, metadata !62), !dbg !502
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !503
  %59 = load double, double* %58, align 8, !dbg !503
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !504
  %61 = load double, double* %60, align 8, !dbg !504
  %62 = fsub double %59, %61, !dbg !505
  %63 = load double, double* %18, align 8, !dbg !506
  %64 = fsub double %62, %63, !dbg !507
  store double %64, double* %20, align 8, !dbg !502
  call void @llvm.dbg.declare(metadata double* %21, metadata !508, metadata !62), !dbg !509
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !510
  %66 = load double, double* %65, align 8, !dbg !510
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !511
  %68 = load double, double* %67, align 8, !dbg !511
  %69 = fadd double %66, %68, !dbg !512
  %70 = load double, double* %19, align 8, !dbg !513
  %71 = fadd double %69, %70, !dbg !514
  store double %71, double* %21, align 8, !dbg !509
  call void @llvm.dbg.declare(metadata i32* %22, metadata !515, metadata !62), !dbg !516
  %72 = load double, double* %20, align 8, !dbg !517
  %73 = load double, double* %21, align 8, !dbg !518
  %74 = load double, double* %13, align 8, !dbg !519
  %75 = load double, double* %12, align 8, !dbg !520
  %76 = fmul double %74, %75, !dbg !521
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !522
  %78 = load double, double* %77, align 8, !dbg !522
  %79 = fmul double %76, %78, !dbg !523
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !524
  %81 = load double, double* %80, align 8, !dbg !524
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !525
  %83 = call i32 @gsl_sf_exp_mult_err_e(double %72, double %73, double %79, double %81, %struct.gsl_sf_result_struct* %82), !dbg !526
  store i32 %83, i32* %22, align 4, !dbg !516
  %84 = load i32, i32* %22, align 4, !dbg !527
  %85 = icmp ne i32 %84, 0, !dbg !527
  br i1 %85, label %86, label %88, !dbg !527

; <label>:86:                                     ; preds = %46
  %87 = load i32, i32* %22, align 4, !dbg !528
  br label %96, !dbg !528

; <label>:88:                                     ; preds = %46
  %89 = load i32, i32* %17, align 4, !dbg !529
  %90 = icmp ne i32 %89, 0, !dbg !529
  br i1 %90, label %91, label %93, !dbg !529

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* %17, align 4, !dbg !531
  br label %94, !dbg !531

; <label>:93:                                     ; preds = %88
  br label %94, !dbg !533

; <label>:94:                                     ; preds = %93, %91
  %95 = phi i32 [ %92, %91 ], [ 0, %93 ], !dbg !535
  br label %96, !dbg !535

; <label>:96:                                     ; preds = %94, %86
  %97 = phi i32 [ %87, %86 ], [ %95, %94 ], !dbg !537
  store i32 %97, i32* %5, align 4, !dbg !539
  br label %113, !dbg !539

; <label>:98:                                     ; preds = %34
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !540
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 0, !dbg !542
  store double 0.000000e+00, double* %100, align 8, !dbg !543
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !544
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !545
  store double 0.000000e+00, double* %102, align 8, !dbg !546
  %103 = load i32, i32* %17, align 4, !dbg !547
  store i32 %103, i32* %5, align 4, !dbg !548
  br label %113, !dbg !548

; <label>:104:                                    ; preds = %31, %4
  br label %105, !dbg !549, !llvm.loop !551

; <label>:105:                                    ; preds = %104
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !552
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !552
  store double 0x7FF8000000000000, double* %107, align 8, !dbg !552
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !552
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 1, !dbg !552
  store double 0x7FF8000000000000, double* %109, align 8, !dbg !552
  br label %110, !dbg !552, !llvm.loop !555

; <label>:110:                                    ; preds = %105
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 75, i32 1), !dbg !557
  store i32 1, i32* %5, align 4, !dbg !557
  br label %113, !dbg !557
                                                  ; No predecessors!
  br label %112, !dbg !560

; <label>:112:                                    ; preds = %111
  br label %113

; <label>:113:                                    ; preds = %96, %98, %110, %112
  %114 = load i32, i32* %5, align 4, !dbg !562
  ret i32 %114, !dbg !562
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_ab_negint(i32, i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !563 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !564, metadata !62), !dbg !565
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !566, metadata !62), !dbg !567
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !568, metadata !62), !dbg !569
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !570, metadata !62), !dbg !571
  %13 = load double, double* %8, align 8, !dbg !572
  %14 = fcmp oeq double %13, 0.000000e+00, !dbg !574
  br i1 %14, label %15, label %20, !dbg !575

; <label>:15:                                     ; preds = %4
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !576
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !578
  store double 1.000000e+00, double* %17, align 8, !dbg !579
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !580
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !581
  store double 0.000000e+00, double* %19, align 8, !dbg !582
  store i32 0, i32* %5, align 4, !dbg !583
  br label %63, !dbg !583

; <label>:20:                                     ; preds = %4
  %21 = load double, double* %8, align 8, !dbg !584
  %22 = fcmp ogt double %21, 0.000000e+00, !dbg !586
  br i1 %22, label %23, label %30, !dbg !587

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* %6, align 4, !dbg !588
  %25 = load i32, i32* %7, align 4, !dbg !590
  %26 = sitofp i32 %25 to double, !dbg !590
  %27 = load double, double* %8, align 8, !dbg !591
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !592
  %29 = call i32 @hyperg_1F1_a_negint_poly(i32 %24, double %26, double %27, %struct.gsl_sf_result_struct* %28), !dbg !593
  store i32 %29, i32* %5, align 4, !dbg !594
  br label %63, !dbg !594

; <label>:30:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !595, metadata !62), !dbg !597
  call void @llvm.dbg.declare(metadata i32* %11, metadata !598, metadata !62), !dbg !599
  %31 = load i32, i32* %7, align 4, !dbg !600
  %32 = load i32, i32* %6, align 4, !dbg !601
  %33 = sub nsw i32 %31, %32, !dbg !602
  %34 = load i32, i32* %7, align 4, !dbg !603
  %35 = sitofp i32 %34 to double, !dbg !603
  %36 = load double, double* %8, align 8, !dbg !604
  %37 = fsub double -0.000000e+00, %36, !dbg !605
  %38 = call i32 @hyperg_1F1_a_negint_poly(i32 %33, double %35, double %37, %struct.gsl_sf_result_struct* %10), !dbg !606
  store i32 %38, i32* %11, align 4, !dbg !599
  call void @llvm.dbg.declare(metadata i32* %12, metadata !607, metadata !62), !dbg !608
  %39 = load double, double* %8, align 8, !dbg !609
  %40 = load double, double* %8, align 8, !dbg !610
  %41 = call double @fabs(double %40) #1, !dbg !611
  %42 = fmul double 0x3CC0000000000000, %41, !dbg !612
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !613
  %44 = load double, double* %43, align 8, !dbg !613
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !614
  %46 = load double, double* %45, align 8, !dbg !614
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !615
  %48 = call i32 @gsl_sf_exp_mult_err_e(double %39, double %42, double %44, double %46, %struct.gsl_sf_result_struct* %47), !dbg !616
  store i32 %48, i32* %12, align 4, !dbg !608
  %49 = load i32, i32* %12, align 4, !dbg !618
  %50 = icmp ne i32 %49, 0, !dbg !618
  br i1 %50, label %51, label %53, !dbg !618

; <label>:51:                                     ; preds = %30
  %52 = load i32, i32* %12, align 4, !dbg !619
  br label %61, !dbg !619

; <label>:53:                                     ; preds = %30
  %54 = load i32, i32* %11, align 4, !dbg !620
  %55 = icmp ne i32 %54, 0, !dbg !620
  br i1 %55, label %56, label %58, !dbg !620

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %11, align 4, !dbg !622
  br label %59, !dbg !622

; <label>:58:                                     ; preds = %53
  br label %59, !dbg !624

; <label>:59:                                     ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ], !dbg !626
  br label %61, !dbg !626

; <label>:61:                                     ; preds = %59, %51
  %62 = phi i32 [ %52, %51 ], [ %60, %59 ], !dbg !628
  store i32 %62, i32* %5, align 4, !dbg !630
  br label %63, !dbg !630

; <label>:63:                                     ; preds = %61, %23, %15
  %64 = load i32, i32* %5, align 4, !dbg !631
  ret i32 %64, !dbg !631
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_ab_posint(i32, i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !632 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca i32, align 4
  %39 = alloca double, align 8
  %40 = alloca i32, align 4
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca %struct.gsl_sf_result_struct, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca i32, align 4
  %49 = alloca double, align 8
  %50 = alloca double, align 8
  %51 = alloca double, align 8
  %52 = alloca double, align 8
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca double, align 8
  %56 = alloca double, align 8
  %57 = alloca double, align 8
  %58 = alloca double, align 8
  %59 = alloca double, align 8
  %60 = alloca double, align 8
  %61 = alloca i32, align 4
  %62 = alloca double, align 8
  %63 = alloca double, align 8
  %64 = alloca double, align 8
  %65 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !633, metadata !62), !dbg !634
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !635, metadata !62), !dbg !636
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !637, metadata !62), !dbg !638
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !639, metadata !62), !dbg !640
  call void @llvm.dbg.declare(metadata double* %10, metadata !641, metadata !62), !dbg !642
  %66 = load double, double* %8, align 8, !dbg !643
  %67 = call double @fabs(double %66) #1, !dbg !644
  store double %67, double* %10, align 8, !dbg !642
  %68 = load i32, i32* %6, align 4, !dbg !645
  %69 = load i32, i32* %7, align 4, !dbg !647
  %70 = icmp eq i32 %68, %69, !dbg !648
  br i1 %70, label %71, label %75, !dbg !649

; <label>:71:                                     ; preds = %4
  %72 = load double, double* %8, align 8, !dbg !650
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !652
  %74 = call i32 @gsl_sf_exp_e(double %72, %struct.gsl_sf_result_struct* %73), !dbg !653
  store i32 %74, i32* %5, align 4, !dbg !654
  br label %884, !dbg !654

; <label>:75:                                     ; preds = %4
  %76 = load i32, i32* %6, align 4, !dbg !655
  %77 = icmp eq i32 %76, 1, !dbg !657
  br i1 %77, label %78, label %84, !dbg !658

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %7, align 4, !dbg !659
  %80 = sub nsw i32 %79, 1, !dbg !661
  %81 = load double, double* %8, align 8, !dbg !662
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !663
  %83 = call i32 @gsl_sf_exprel_n_e(i32 %80, double %81, %struct.gsl_sf_result_struct* %82), !dbg !664
  store i32 %83, i32* %5, align 4, !dbg !665
  br label %884, !dbg !665

; <label>:84:                                     ; preds = %75
  %85 = load i32, i32* %7, align 4, !dbg !666
  %86 = load i32, i32* %6, align 4, !dbg !668
  %87 = add nsw i32 %86, 1, !dbg !669
  %88 = icmp eq i32 %85, %87, !dbg !670
  br i1 %88, label %89, label %118, !dbg !671

; <label>:89:                                     ; preds = %84
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !672, metadata !62), !dbg !674
  call void @llvm.dbg.declare(metadata i32* %12, metadata !675, metadata !62), !dbg !676
  %90 = load i32, i32* %6, align 4, !dbg !677
  %91 = load double, double* %8, align 8, !dbg !678
  %92 = fsub double -0.000000e+00, %91, !dbg !679
  %93 = call i32 @gsl_sf_exprel_n_e(i32 %90, double %92, %struct.gsl_sf_result_struct* %11), !dbg !680
  store i32 %93, i32* %12, align 4, !dbg !676
  call void @llvm.dbg.declare(metadata i32* %13, metadata !681, metadata !62), !dbg !682
  %94 = load double, double* %8, align 8, !dbg !683
  %95 = load double, double* %8, align 8, !dbg !684
  %96 = call double @fabs(double %95) #1, !dbg !685
  %97 = fmul double 0x3CC0000000000000, %96, !dbg !686
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !687
  %99 = load double, double* %98, align 8, !dbg !687
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !688
  %101 = load double, double* %100, align 8, !dbg !688
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !689
  %103 = call i32 @gsl_sf_exp_mult_err_e(double %94, double %97, double %99, double %101, %struct.gsl_sf_result_struct* %102), !dbg !690
  store i32 %103, i32* %13, align 4, !dbg !682
  %104 = load i32, i32* %13, align 4, !dbg !692
  %105 = icmp ne i32 %104, 0, !dbg !692
  br i1 %105, label %106, label %108, !dbg !692

; <label>:106:                                    ; preds = %89
  %107 = load i32, i32* %13, align 4, !dbg !693
  br label %116, !dbg !693

; <label>:108:                                    ; preds = %89
  %109 = load i32, i32* %12, align 4, !dbg !694
  %110 = icmp ne i32 %109, 0, !dbg !694
  br i1 %110, label %111, label %113, !dbg !694

; <label>:111:                                    ; preds = %108
  %112 = load i32, i32* %12, align 4, !dbg !696
  br label %114, !dbg !696

; <label>:113:                                    ; preds = %108
  br label %114, !dbg !698

; <label>:114:                                    ; preds = %113, %111
  %115 = phi i32 [ %112, %111 ], [ 0, %113 ], !dbg !700
  br label %116, !dbg !700

; <label>:116:                                    ; preds = %114, %106
  %117 = phi i32 [ %107, %106 ], [ %115, %114 ], !dbg !702
  store i32 %117, i32* %5, align 4, !dbg !704
  br label %884, !dbg !704

; <label>:118:                                    ; preds = %84
  %119 = load i32, i32* %6, align 4, !dbg !705
  %120 = load i32, i32* %7, align 4, !dbg !707
  %121 = add nsw i32 %120, 1, !dbg !708
  %122 = icmp eq i32 %119, %121, !dbg !709
  br i1 %122, label %123, label %170, !dbg !710

; <label>:123:                                    ; preds = %118
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !711, metadata !62), !dbg !713
  call void @llvm.dbg.declare(metadata i32* %15, metadata !714, metadata !62), !dbg !715
  %124 = load double, double* %8, align 8, !dbg !716
  %125 = call i32 @gsl_sf_exp_e(double %124, %struct.gsl_sf_result_struct* %14), !dbg !717
  store i32 %125, i32* %15, align 4, !dbg !715
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !718
  %127 = load double, double* %126, align 8, !dbg !718
  %128 = load double, double* %8, align 8, !dbg !719
  %129 = load i32, i32* %7, align 4, !dbg !720
  %130 = sitofp i32 %129 to double, !dbg !720
  %131 = fdiv double %128, %130, !dbg !721
  %132 = fadd double 1.000000e+00, %131, !dbg !722
  %133 = fmul double %127, %132, !dbg !723
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !724
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 0, !dbg !725
  store double %133, double* %135, align 8, !dbg !726
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !727
  %137 = load double, double* %136, align 8, !dbg !727
  %138 = load double, double* %8, align 8, !dbg !728
  %139 = load i32, i32* %7, align 4, !dbg !729
  %140 = sitofp i32 %139 to double, !dbg !729
  %141 = fdiv double %138, %140, !dbg !730
  %142 = fadd double 1.000000e+00, %141, !dbg !731
  %143 = fmul double %137, %142, !dbg !732
  %144 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !733
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %144, i32 0, i32 1, !dbg !734
  store double %143, double* %145, align 8, !dbg !735
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !736
  %147 = load double, double* %146, align 8, !dbg !736
  %148 = fmul double %147, 0x3CB0000000000000, !dbg !737
  %149 = load double, double* %8, align 8, !dbg !738
  %150 = load i32, i32* %7, align 4, !dbg !739
  %151 = sitofp i32 %150 to double, !dbg !739
  %152 = fdiv double %149, %151, !dbg !740
  %153 = call double @fabs(double %152) #1, !dbg !741
  %154 = fadd double 1.000000e+00, %153, !dbg !742
  %155 = fmul double %148, %154, !dbg !743
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !744
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %156, i32 0, i32 1, !dbg !745
  %158 = load double, double* %157, align 8, !dbg !746
  %159 = fadd double %158, %155, !dbg !746
  store double %159, double* %157, align 8, !dbg !746
  %160 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !747
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %160, i32 0, i32 0, !dbg !748
  %162 = load double, double* %161, align 8, !dbg !748
  %163 = call double @fabs(double %162) #1, !dbg !749
  %164 = fmul double 0x3CC0000000000000, %163, !dbg !750
  %165 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !751
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %165, i32 0, i32 1, !dbg !752
  %167 = load double, double* %166, align 8, !dbg !753
  %168 = fadd double %167, %164, !dbg !753
  store double %168, double* %166, align 8, !dbg !753
  %169 = load i32, i32* %15, align 4, !dbg !754
  store i32 %169, i32* %5, align 4, !dbg !755
  br label %884, !dbg !755

; <label>:170:                                    ; preds = %118
  %171 = load i32, i32* %6, align 4, !dbg !756
  %172 = load i32, i32* %7, align 4, !dbg !758
  %173 = add nsw i32 %172, 2, !dbg !759
  %174 = icmp eq i32 %171, %173, !dbg !760
  br i1 %174, label %175, label %235, !dbg !761

; <label>:175:                                    ; preds = %170
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !762, metadata !62), !dbg !764
  call void @llvm.dbg.declare(metadata i32* %17, metadata !765, metadata !62), !dbg !766
  %176 = load double, double* %8, align 8, !dbg !767
  %177 = call i32 @gsl_sf_exp_e(double %176, %struct.gsl_sf_result_struct* %16), !dbg !768
  store i32 %177, i32* %17, align 4, !dbg !766
  call void @llvm.dbg.declare(metadata double* %18, metadata !769, metadata !62), !dbg !770
  %178 = load double, double* %8, align 8, !dbg !771
  %179 = load i32, i32* %7, align 4, !dbg !772
  %180 = sitofp i32 %179 to double, !dbg !772
  %181 = fdiv double %178, %180, !dbg !773
  %182 = load double, double* %8, align 8, !dbg !774
  %183 = load i32, i32* %7, align 4, !dbg !775
  %184 = sitofp i32 %183 to double, !dbg !775
  %185 = fadd double %184, 1.000000e+00, !dbg !776
  %186 = fdiv double %182, %185, !dbg !777
  %187 = fadd double 2.000000e+00, %186, !dbg !778
  %188 = fmul double %181, %187, !dbg !779
  %189 = fadd double 1.000000e+00, %188, !dbg !780
  store double %189, double* %18, align 8, !dbg !770
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !781
  %191 = load double, double* %190, align 8, !dbg !781
  %192 = load double, double* %18, align 8, !dbg !782
  %193 = fmul double %191, %192, !dbg !783
  %194 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !784
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %194, i32 0, i32 0, !dbg !785
  store double %193, double* %195, align 8, !dbg !786
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !787
  %197 = load double, double* %196, align 8, !dbg !787
  %198 = load double, double* %18, align 8, !dbg !788
  %199 = call double @fabs(double %198) #1, !dbg !789
  %200 = fmul double %197, %199, !dbg !790
  %201 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !791
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %201, i32 0, i32 1, !dbg !792
  store double %200, double* %202, align 8, !dbg !793
  %203 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !794
  %204 = load double, double* %203, align 8, !dbg !794
  %205 = fmul double %204, 0x3CB0000000000000, !dbg !795
  %206 = load double, double* %8, align 8, !dbg !796
  %207 = load i32, i32* %7, align 4, !dbg !797
  %208 = sitofp i32 %207 to double, !dbg !797
  %209 = fdiv double %206, %208, !dbg !798
  %210 = call double @fabs(double %209) #1, !dbg !799
  %211 = load double, double* %8, align 8, !dbg !800
  %212 = load i32, i32* %7, align 4, !dbg !801
  %213 = sitofp i32 %212 to double, !dbg !801
  %214 = fadd double %213, 1.000000e+00, !dbg !802
  %215 = fdiv double %211, %214, !dbg !803
  %216 = call double @fabs(double %215) #1, !dbg !804
  %217 = fadd double 2.000000e+00, %216, !dbg !806
  %218 = fmul double %210, %217, !dbg !807
  %219 = fadd double 1.000000e+00, %218, !dbg !808
  %220 = fmul double %205, %219, !dbg !809
  %221 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !810
  %222 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %221, i32 0, i32 1, !dbg !811
  %223 = load double, double* %222, align 8, !dbg !812
  %224 = fadd double %223, %220, !dbg !812
  store double %224, double* %222, align 8, !dbg !812
  %225 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !813
  %226 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %225, i32 0, i32 0, !dbg !814
  %227 = load double, double* %226, align 8, !dbg !814
  %228 = call double @fabs(double %227) #1, !dbg !815
  %229 = fmul double 0x3CC0000000000000, %228, !dbg !816
  %230 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !817
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %230, i32 0, i32 1, !dbg !818
  %232 = load double, double* %231, align 8, !dbg !819
  %233 = fadd double %232, %229, !dbg !819
  store double %233, double* %231, align 8, !dbg !819
  %234 = load i32, i32* %17, align 4, !dbg !820
  store i32 %234, i32* %5, align 4, !dbg !821
  br label %884, !dbg !821

; <label>:235:                                    ; preds = %170
  %236 = load i32, i32* %7, align 4, !dbg !822
  %237 = load i32, i32* %6, align 4, !dbg !824
  %238 = mul nsw i32 2, %237, !dbg !825
  %239 = icmp eq i32 %236, %238, !dbg !826
  br i1 %239, label %240, label %246, !dbg !827

; <label>:240:                                    ; preds = %235
  %241 = load i32, i32* %6, align 4, !dbg !828
  %242 = sitofp i32 %241 to double, !dbg !828
  %243 = load double, double* %8, align 8, !dbg !830
  %244 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !831
  %245 = call i32 @hyperg_1F1_beq2a_pos(double %242, double %243, %struct.gsl_sf_result_struct* %244), !dbg !832
  store i32 %245, i32* %5, align 4, !dbg !833
  br label %884, !dbg !833

; <label>:246:                                    ; preds = %235
  %247 = load i32, i32* %7, align 4, !dbg !834
  %248 = icmp slt i32 %247, 10, !dbg !836
  br i1 %248, label %249, label %255, !dbg !837

; <label>:249:                                    ; preds = %246
  %250 = load i32, i32* %6, align 4, !dbg !838
  %251 = icmp slt i32 %250, 10, !dbg !840
  br i1 %251, label %252, label %255, !dbg !841

; <label>:252:                                    ; preds = %249
  %253 = load double, double* %10, align 8, !dbg !842
  %254 = fcmp olt double %253, 5.000000e+00, !dbg !844
  br i1 %254, label %270, label %255, !dbg !845

; <label>:255:                                    ; preds = %252, %249, %246
  %256 = load i32, i32* %7, align 4, !dbg !846
  %257 = sitofp i32 %256 to double, !dbg !846
  %258 = load i32, i32* %6, align 4, !dbg !847
  %259 = sitofp i32 %258 to double, !dbg !847
  %260 = load double, double* %10, align 8, !dbg !848
  %261 = fmul double %259, %260, !dbg !849
  %262 = fcmp ogt double %257, %261, !dbg !850
  br i1 %262, label %270, label %263, !dbg !851

; <label>:263:                                    ; preds = %255
  %264 = load i32, i32* %7, align 4, !dbg !852
  %265 = load i32, i32* %6, align 4, !dbg !853
  %266 = icmp sgt i32 %264, %265, !dbg !854
  br i1 %266, label %267, label %278, !dbg !855

; <label>:267:                                    ; preds = %263
  %268 = load double, double* %10, align 8, !dbg !856
  %269 = fcmp olt double %268, 5.000000e+00, !dbg !857
  br i1 %269, label %270, label %278, !dbg !858

; <label>:270:                                    ; preds = %267, %255, %252
  %271 = load i32, i32* %6, align 4, !dbg !860
  %272 = sitofp i32 %271 to double, !dbg !860
  %273 = load i32, i32* %7, align 4, !dbg !862
  %274 = sitofp i32 %273 to double, !dbg !862
  %275 = load double, double* %8, align 8, !dbg !863
  %276 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !864
  %277 = call i32 @gsl_sf_hyperg_1F1_series_e(double %272, double %274, double %275, %struct.gsl_sf_result_struct* %276), !dbg !865
  store i32 %277, i32* %5, align 4, !dbg !866
  br label %884, !dbg !866

; <label>:278:                                    ; preds = %267, %263
  %279 = load i32, i32* %7, align 4, !dbg !867
  %280 = load i32, i32* %6, align 4, !dbg !869
  %281 = icmp sgt i32 %279, %280, !dbg !870
  br i1 %281, label %282, label %358, !dbg !871

; <label>:282:                                    ; preds = %278
  %283 = load i32, i32* %7, align 4, !dbg !872
  %284 = sitofp i32 %283 to double, !dbg !872
  %285 = load i32, i32* %6, align 4, !dbg !874
  %286 = mul nsw i32 2, %285, !dbg !875
  %287 = sitofp i32 %286 to double, !dbg !876
  %288 = load double, double* %8, align 8, !dbg !877
  %289 = fadd double %287, %288, !dbg !878
  %290 = fcmp oge double %284, %289, !dbg !879
  br i1 %290, label %291, label %358, !dbg !880

; <label>:291:                                    ; preds = %282
  call void @llvm.dbg.declare(metadata double* %19, metadata !881, metadata !62), !dbg !883
  call void @llvm.dbg.declare(metadata i32* %20, metadata !884, metadata !62), !dbg !885
  %292 = load i32, i32* %6, align 4, !dbg !886
  %293 = sitofp i32 %292 to double, !dbg !886
  %294 = load i32, i32* %7, align 4, !dbg !887
  %295 = sitofp i32 %294 to double, !dbg !887
  %296 = load double, double* %8, align 8, !dbg !888
  %297 = call i32 @hyperg_1F1_CF1_p_ser(double %293, double %295, double %296, double* %19), !dbg !889
  store i32 %297, i32* %20, align 4, !dbg !885
  call void @llvm.dbg.declare(metadata double* %21, metadata !890, metadata !62), !dbg !891
  %298 = load double, double* %8, align 8, !dbg !892
  %299 = load i32, i32* %6, align 4, !dbg !893
  %300 = sitofp i32 %299 to double, !dbg !893
  %301 = fdiv double %298, %300, !dbg !894
  %302 = load double, double* %19, align 8, !dbg !895
  %303 = fmul double %301, %302, !dbg !896
  %304 = fadd double 1.000000e+00, %303, !dbg !897
  store double %304, double* %21, align 8, !dbg !891
  call void @llvm.dbg.declare(metadata double* %22, metadata !898, metadata !62), !dbg !899
  store double 0x2000000000000000, double* %22, align 8, !dbg !899
  call void @llvm.dbg.declare(metadata double* %23, metadata !900, metadata !62), !dbg !901
  %305 = load double, double* %21, align 8, !dbg !902
  %306 = load double, double* %22, align 8, !dbg !903
  %307 = fmul double %305, %306, !dbg !904
  store double %307, double* %23, align 8, !dbg !901
  call void @llvm.dbg.declare(metadata double* %24, metadata !905, metadata !62), !dbg !906
  %308 = load double, double* %23, align 8, !dbg !907
  store double %308, double* %24, align 8, !dbg !906
  call void @llvm.dbg.declare(metadata double* %25, metadata !908, metadata !62), !dbg !909
  %309 = load double, double* %22, align 8, !dbg !910
  store double %309, double* %25, align 8, !dbg !909
  call void @llvm.dbg.declare(metadata double* %26, metadata !911, metadata !62), !dbg !912
  call void @llvm.dbg.declare(metadata i32* %27, metadata !913, metadata !62), !dbg !914
  %310 = load i32, i32* %6, align 4, !dbg !915
  store i32 %310, i32* %27, align 4, !dbg !917
  br label %311, !dbg !918

; <label>:311:                                    ; preds = %336, %291
  %312 = load i32, i32* %27, align 4, !dbg !919
  %313 = icmp sgt i32 %312, 0, !dbg !922
  br i1 %313, label %314, label %339, !dbg !923

; <label>:314:                                    ; preds = %311
  %315 = load i32, i32* %27, align 4, !dbg !924
  %316 = sitofp i32 %315 to double, !dbg !924
  %317 = load double, double* %24, align 8, !dbg !926
  %318 = fmul double %316, %317, !dbg !927
  %319 = load i32, i32* %27, align 4, !dbg !928
  %320 = mul nsw i32 2, %319, !dbg !929
  %321 = load i32, i32* %7, align 4, !dbg !930
  %322 = sub nsw i32 %320, %321, !dbg !931
  %323 = sitofp i32 %322 to double, !dbg !932
  %324 = load double, double* %8, align 8, !dbg !933
  %325 = fadd double %323, %324, !dbg !934
  %326 = load double, double* %25, align 8, !dbg !935
  %327 = fmul double %325, %326, !dbg !936
  %328 = fsub double %318, %327, !dbg !937
  %329 = load i32, i32* %7, align 4, !dbg !938
  %330 = load i32, i32* %27, align 4, !dbg !939
  %331 = sub nsw i32 %329, %330, !dbg !940
  %332 = sitofp i32 %331 to double, !dbg !941
  %333 = fdiv double %328, %332, !dbg !942
  store double %333, double* %26, align 8, !dbg !943
  %334 = load double, double* %25, align 8, !dbg !944
  store double %334, double* %24, align 8, !dbg !945
  %335 = load double, double* %26, align 8, !dbg !946
  store double %335, double* %25, align 8, !dbg !947
  br label %336, !dbg !948

; <label>:336:                                    ; preds = %314
  %337 = load i32, i32* %27, align 4, !dbg !949
  %338 = add nsw i32 %337, -1, !dbg !949
  store i32 %338, i32* %27, align 4, !dbg !949
  br label %311, !dbg !951, !llvm.loop !952

; <label>:339:                                    ; preds = %311
  %340 = load double, double* %22, align 8, !dbg !954
  %341 = load double, double* %25, align 8, !dbg !955
  %342 = fdiv double %340, %341, !dbg !956
  %343 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !957
  %344 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %343, i32 0, i32 0, !dbg !958
  store double %342, double* %344, align 8, !dbg !959
  %345 = load i32, i32* %6, align 4, !dbg !960
  %346 = sitofp i32 %345 to double, !dbg !960
  %347 = call double @fabs(double %346) #1, !dbg !961
  %348 = fadd double %347, 1.000000e+00, !dbg !962
  %349 = fmul double 0x3CC0000000000000, %348, !dbg !963
  %350 = load double, double* %22, align 8, !dbg !964
  %351 = load double, double* %25, align 8, !dbg !965
  %352 = fdiv double %350, %351, !dbg !966
  %353 = call double @fabs(double %352) #1, !dbg !967
  %354 = fmul double %349, %353, !dbg !969
  %355 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !970
  %356 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %355, i32 0, i32 1, !dbg !971
  store double %354, double* %356, align 8, !dbg !972
  %357 = load i32, i32* %20, align 4, !dbg !973
  store i32 %357, i32* %5, align 4, !dbg !974
  br label %884, !dbg !974

; <label>:358:                                    ; preds = %282, %278
  %359 = load i32, i32* %7, align 4, !dbg !975
  %360 = load i32, i32* %6, align 4, !dbg !977
  %361 = icmp sgt i32 %359, %360, !dbg !978
  br i1 %361, label %362, label %476, !dbg !979

; <label>:362:                                    ; preds = %358
  %363 = load i32, i32* %7, align 4, !dbg !980
  %364 = sitofp i32 %363 to double, !dbg !980
  %365 = load i32, i32* %6, align 4, !dbg !982
  %366 = mul nsw i32 2, %365, !dbg !983
  %367 = sitofp i32 %366 to double, !dbg !984
  %368 = load double, double* %8, align 8, !dbg !985
  %369 = fadd double %367, %368, !dbg !986
  %370 = fcmp olt double %364, %369, !dbg !987
  br i1 %370, label %371, label %476, !dbg !988

; <label>:371:                                    ; preds = %362
  %372 = load i32, i32* %7, align 4, !dbg !989
  %373 = sitofp i32 %372 to double, !dbg !989
  %374 = load double, double* %8, align 8, !dbg !991
  %375 = fcmp ogt double %373, %374, !dbg !992
  br i1 %375, label %376, label %476, !dbg !993

; <label>:376:                                    ; preds = %371
  call void @llvm.dbg.declare(metadata double* %28, metadata !994, metadata !62), !dbg !996
  call void @llvm.dbg.declare(metadata i32* %29, metadata !997, metadata !62), !dbg !998
  %377 = load i32, i32* %6, align 4, !dbg !999
  %378 = sitofp i32 %377 to double, !dbg !999
  %379 = load i32, i32* %7, align 4, !dbg !1000
  %380 = sitofp i32 %379 to double, !dbg !1000
  %381 = load double, double* %8, align 8, !dbg !1001
  %382 = call i32 @hyperg_1F1_CF1_p_ser(double %378, double %380, double %381, double* %28), !dbg !1002
  store i32 %382, i32* %29, align 4, !dbg !998
  call void @llvm.dbg.declare(metadata double* %30, metadata !1003, metadata !62), !dbg !1004
  %383 = load double, double* %8, align 8, !dbg !1005
  %384 = load i32, i32* %6, align 4, !dbg !1006
  %385 = sitofp i32 %384 to double, !dbg !1006
  %386 = fdiv double %383, %385, !dbg !1007
  %387 = load double, double* %28, align 8, !dbg !1008
  %388 = fmul double %386, %387, !dbg !1009
  %389 = fadd double 1.000000e+00, %388, !dbg !1010
  store double %389, double* %30, align 8, !dbg !1004
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !1011, metadata !62), !dbg !1012
  call void @llvm.dbg.declare(metadata i32* %32, metadata !1013, metadata !62), !dbg !1014
  call void @llvm.dbg.declare(metadata double* %33, metadata !1015, metadata !62), !dbg !1016
  store double 0x2000000000000000, double* %33, align 8, !dbg !1016
  call void @llvm.dbg.declare(metadata double* %34, metadata !1017, metadata !62), !dbg !1018
  %390 = load double, double* %30, align 8, !dbg !1019
  %391 = load double, double* %33, align 8, !dbg !1020
  %392 = fmul double %390, %391, !dbg !1021
  store double %392, double* %34, align 8, !dbg !1018
  call void @llvm.dbg.declare(metadata double* %35, metadata !1022, metadata !62), !dbg !1023
  %393 = load double, double* %33, align 8, !dbg !1024
  store double %393, double* %35, align 8, !dbg !1023
  call void @llvm.dbg.declare(metadata double* %36, metadata !1025, metadata !62), !dbg !1026
  %394 = load double, double* %34, align 8, !dbg !1027
  store double %394, double* %36, align 8, !dbg !1026
  call void @llvm.dbg.declare(metadata double* %37, metadata !1028, metadata !62), !dbg !1029
  call void @llvm.dbg.declare(metadata i32* %38, metadata !1030, metadata !62), !dbg !1031
  %395 = load i32, i32* %6, align 4, !dbg !1032
  %396 = add nsw i32 %395, 1, !dbg !1034
  store i32 %396, i32* %38, align 4, !dbg !1035
  br label %397, !dbg !1036

; <label>:397:                                    ; preds = %423, %376
  %398 = load i32, i32* %38, align 4, !dbg !1037
  %399 = load i32, i32* %7, align 4, !dbg !1040
  %400 = icmp slt i32 %398, %399, !dbg !1041
  br i1 %400, label %401, label %426, !dbg !1042

; <label>:401:                                    ; preds = %397
  %402 = load i32, i32* %7, align 4, !dbg !1043
  %403 = load i32, i32* %38, align 4, !dbg !1045
  %404 = sub nsw i32 %402, %403, !dbg !1046
  %405 = sitofp i32 %404 to double, !dbg !1047
  %406 = load double, double* %35, align 8, !dbg !1048
  %407 = fmul double %405, %406, !dbg !1049
  %408 = load i32, i32* %38, align 4, !dbg !1050
  %409 = mul nsw i32 2, %408, !dbg !1051
  %410 = load i32, i32* %7, align 4, !dbg !1052
  %411 = sub nsw i32 %409, %410, !dbg !1053
  %412 = sitofp i32 %411 to double, !dbg !1054
  %413 = load double, double* %8, align 8, !dbg !1055
  %414 = fadd double %412, %413, !dbg !1056
  %415 = load double, double* %36, align 8, !dbg !1057
  %416 = fmul double %414, %415, !dbg !1058
  %417 = fadd double %407, %416, !dbg !1059
  %418 = load i32, i32* %38, align 4, !dbg !1060
  %419 = sitofp i32 %418 to double, !dbg !1060
  %420 = fdiv double %417, %419, !dbg !1061
  store double %420, double* %37, align 8, !dbg !1062
  %421 = load double, double* %36, align 8, !dbg !1063
  store double %421, double* %35, align 8, !dbg !1064
  %422 = load double, double* %37, align 8, !dbg !1065
  store double %422, double* %36, align 8, !dbg !1066
  br label %423, !dbg !1067

; <label>:423:                                    ; preds = %401
  %424 = load i32, i32* %38, align 4, !dbg !1068
  %425 = add nsw i32 %424, 1, !dbg !1068
  store i32 %425, i32* %38, align 4, !dbg !1068
  br label %397, !dbg !1070, !llvm.loop !1071

; <label>:426:                                    ; preds = %397
  %427 = load double, double* %8, align 8, !dbg !1073
  %428 = call i32 @gsl_sf_exp_e(double %427, %struct.gsl_sf_result_struct* %31), !dbg !1074
  store i32 %428, i32* %32, align 4, !dbg !1075
  %429 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !1076
  %430 = load double, double* %429, align 8, !dbg !1076
  %431 = load double, double* %33, align 8, !dbg !1077
  %432 = fmul double %430, %431, !dbg !1078
  %433 = load double, double* %36, align 8, !dbg !1079
  %434 = fdiv double %432, %433, !dbg !1080
  %435 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1081
  %436 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %435, i32 0, i32 0, !dbg !1082
  store double %434, double* %436, align 8, !dbg !1083
  %437 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !1084
  %438 = load double, double* %437, align 8, !dbg !1084
  %439 = load double, double* %33, align 8, !dbg !1085
  %440 = load double, double* %36, align 8, !dbg !1086
  %441 = fdiv double %439, %440, !dbg !1087
  %442 = call double @fabs(double %441) #1, !dbg !1088
  %443 = fmul double %438, %442, !dbg !1089
  %444 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1090
  %445 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %444, i32 0, i32 1, !dbg !1091
  store double %443, double* %445, align 8, !dbg !1092
  %446 = load i32, i32* %7, align 4, !dbg !1093
  %447 = load i32, i32* %6, align 4, !dbg !1094
  %448 = sub nsw i32 %446, %447, !dbg !1095
  %449 = sitofp i32 %448 to double, !dbg !1093
  %450 = call double @fabs(double %449) #1, !dbg !1096
  %451 = fadd double %450, 1.000000e+00, !dbg !1097
  %452 = fmul double 0x3CD0000000000000, %451, !dbg !1098
  %453 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1099
  %454 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %453, i32 0, i32 0, !dbg !1100
  %455 = load double, double* %454, align 8, !dbg !1100
  %456 = call double @fabs(double %455) #1, !dbg !1101
  %457 = fmul double %452, %456, !dbg !1103
  %458 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1104
  %459 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %458, i32 0, i32 1, !dbg !1105
  %460 = load double, double* %459, align 8, !dbg !1106
  %461 = fadd double %460, %457, !dbg !1106
  store double %461, double* %459, align 8, !dbg !1106
  %462 = load i32, i32* %32, align 4, !dbg !1107
  %463 = icmp ne i32 %462, 0, !dbg !1107
  br i1 %463, label %464, label %466, !dbg !1107

; <label>:464:                                    ; preds = %426
  %465 = load i32, i32* %32, align 4, !dbg !1108
  br label %474, !dbg !1108

; <label>:466:                                    ; preds = %426
  %467 = load i32, i32* %29, align 4, !dbg !1109
  %468 = icmp ne i32 %467, 0, !dbg !1109
  br i1 %468, label %469, label %471, !dbg !1109

; <label>:469:                                    ; preds = %466
  %470 = load i32, i32* %29, align 4, !dbg !1111
  br label %472, !dbg !1111

; <label>:471:                                    ; preds = %466
  br label %472, !dbg !1113

; <label>:472:                                    ; preds = %471, %469
  %473 = phi i32 [ %470, %469 ], [ 0, %471 ], !dbg !1115
  br label %474, !dbg !1115

; <label>:474:                                    ; preds = %472, %464
  %475 = phi i32 [ %465, %464 ], [ %473, %472 ], !dbg !1117
  store i32 %475, i32* %5, align 4, !dbg !1119
  br label %884, !dbg !1119

; <label>:476:                                    ; preds = %371, %362, %358
  %477 = load double, double* %8, align 8, !dbg !1120
  %478 = fcmp oge double %477, 0.000000e+00, !dbg !1122
  br i1 %478, label %479, label %631, !dbg !1123

; <label>:479:                                    ; preds = %476
  %480 = load i32, i32* %7, align 4, !dbg !1124
  %481 = load i32, i32* %6, align 4, !dbg !1127
  %482 = icmp slt i32 %480, %481, !dbg !1128
  br i1 %482, label %483, label %567, !dbg !1129

; <label>:483:                                    ; preds = %479
  %484 = load double, double* %8, align 8, !dbg !1130
  %485 = load double, double* %8, align 8, !dbg !1133
  %486 = load i32, i32* %7, align 4, !dbg !1134
  %487 = sitofp i32 %486 to double, !dbg !1134
  %488 = fdiv double %485, %487, !dbg !1135
  %489 = call double @fabs(double %488) #1, !dbg !1136
  %490 = call double @log(double %489) #5, !dbg !1137
  %491 = fadd double %484, %490, !dbg !1139
  %492 = fcmp olt double %491, 0x40861E42FEFA39EF, !dbg !1140
  br i1 %492, label %493, label %557, !dbg !1141

; <label>:493:                                    ; preds = %483
  call void @llvm.dbg.declare(metadata double* %39, metadata !1142, metadata !62), !dbg !1144
  %494 = load double, double* %8, align 8, !dbg !1145
  %495 = call double @exp(double %494) #5, !dbg !1146
  store double %495, double* %39, align 8, !dbg !1144
  call void @llvm.dbg.declare(metadata i32* %40, metadata !1147, metadata !62), !dbg !1148
  call void @llvm.dbg.declare(metadata double* %41, metadata !1149, metadata !62), !dbg !1150
  %496 = load double, double* %39, align 8, !dbg !1151
  store double %496, double* %41, align 8, !dbg !1150
  call void @llvm.dbg.declare(metadata double* %42, metadata !1152, metadata !62), !dbg !1153
  %497 = load double, double* %39, align 8, !dbg !1154
  %498 = load double, double* %8, align 8, !dbg !1155
  %499 = load i32, i32* %7, align 4, !dbg !1156
  %500 = sitofp i32 %499 to double, !dbg !1156
  %501 = fdiv double %498, %500, !dbg !1157
  %502 = fadd double 1.000000e+00, %501, !dbg !1158
  %503 = fmul double %497, %502, !dbg !1159
  store double %503, double* %42, align 8, !dbg !1153
  call void @llvm.dbg.declare(metadata double* %43, metadata !1160, metadata !62), !dbg !1161
  %504 = load i32, i32* %7, align 4, !dbg !1162
  %505 = add nsw i32 %504, 1, !dbg !1164
  store i32 %505, i32* %40, align 4, !dbg !1165
  br label %506, !dbg !1166

; <label>:506:                                    ; preds = %532, %493
  %507 = load i32, i32* %40, align 4, !dbg !1167
  %508 = load i32, i32* %6, align 4, !dbg !1170
  %509 = icmp slt i32 %507, %508, !dbg !1171
  br i1 %509, label %510, label %535, !dbg !1172

; <label>:510:                                    ; preds = %506
  %511 = load i32, i32* %7, align 4, !dbg !1173
  %512 = load i32, i32* %40, align 4, !dbg !1175
  %513 = sub nsw i32 %511, %512, !dbg !1176
  %514 = sitofp i32 %513 to double, !dbg !1177
  %515 = load double, double* %41, align 8, !dbg !1178
  %516 = fmul double %514, %515, !dbg !1179
  %517 = load i32, i32* %40, align 4, !dbg !1180
  %518 = mul nsw i32 2, %517, !dbg !1181
  %519 = load i32, i32* %7, align 4, !dbg !1182
  %520 = sub nsw i32 %518, %519, !dbg !1183
  %521 = sitofp i32 %520 to double, !dbg !1184
  %522 = load double, double* %8, align 8, !dbg !1185
  %523 = fadd double %521, %522, !dbg !1186
  %524 = load double, double* %42, align 8, !dbg !1187
  %525 = fmul double %523, %524, !dbg !1188
  %526 = fadd double %516, %525, !dbg !1189
  %527 = load i32, i32* %40, align 4, !dbg !1190
  %528 = sitofp i32 %527 to double, !dbg !1190
  %529 = fdiv double %526, %528, !dbg !1191
  store double %529, double* %43, align 8, !dbg !1192
  %530 = load double, double* %42, align 8, !dbg !1193
  store double %530, double* %41, align 8, !dbg !1194
  %531 = load double, double* %43, align 8, !dbg !1195
  store double %531, double* %42, align 8, !dbg !1196
  br label %532, !dbg !1197

; <label>:532:                                    ; preds = %510
  %533 = load i32, i32* %40, align 4, !dbg !1198
  %534 = add nsw i32 %533, 1, !dbg !1198
  store i32 %534, i32* %40, align 4, !dbg !1198
  br label %506, !dbg !1200, !llvm.loop !1201

; <label>:535:                                    ; preds = %506
  %536 = load double, double* %42, align 8, !dbg !1203
  %537 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1204
  %538 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %537, i32 0, i32 0, !dbg !1205
  store double %536, double* %538, align 8, !dbg !1206
  %539 = load double, double* %8, align 8, !dbg !1207
  %540 = fadd double %539, 1.000000e+00, !dbg !1208
  %541 = fmul double %540, 0x3CB0000000000000, !dbg !1209
  %542 = load double, double* %42, align 8, !dbg !1210
  %543 = call double @fabs(double %542) #1, !dbg !1211
  %544 = fmul double %541, %543, !dbg !1212
  %545 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1213
  %546 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %545, i32 0, i32 1, !dbg !1214
  store double %544, double* %546, align 8, !dbg !1215
  %547 = load i32, i32* %6, align 4, !dbg !1216
  %548 = load i32, i32* %7, align 4, !dbg !1217
  %549 = sub nsw i32 %547, %548, !dbg !1218
  %550 = sitofp i32 %549 to double, !dbg !1216
  %551 = call double @fabs(double %550) #1, !dbg !1219
  %552 = fadd double %551, 1.000000e+00, !dbg !1220
  %553 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1221
  %554 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %553, i32 0, i32 1, !dbg !1222
  %555 = load double, double* %554, align 8, !dbg !1223
  %556 = fmul double %555, %552, !dbg !1223
  store double %556, double* %554, align 8, !dbg !1223
  store i32 0, i32* %5, align 4, !dbg !1224
  br label %884, !dbg !1224

; <label>:557:                                    ; preds = %483
  br label %558, !dbg !1225, !llvm.loop !1227

; <label>:558:                                    ; preds = %557
  %559 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1228
  %560 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %559, i32 0, i32 0, !dbg !1228
  store double 0x7FF0000000000000, double* %560, align 8, !dbg !1228
  %561 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1228
  %562 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %561, i32 0, i32 1, !dbg !1228
  store double 0x7FF0000000000000, double* %562, align 8, !dbg !1228
  br label %563, !dbg !1228, !llvm.loop !1231

; <label>:563:                                    ; preds = %558
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 1062, i32 16), !dbg !1233
  store i32 16, i32* %5, align 4, !dbg !1233
  br label %884, !dbg !1233
                                                  ; No predecessors!
  br label %565, !dbg !1236

; <label>:565:                                    ; preds = %564
  br label %566

; <label>:566:                                    ; preds = %565
  br label %630, !dbg !1238

; <label>:567:                                    ; preds = %479
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %44, metadata !1239, metadata !62), !dbg !1241
  call void @llvm.dbg.declare(metadata double* %45, metadata !1242, metadata !62), !dbg !1243
  store double 1.000000e+00, double* %45, align 8, !dbg !1243
  call void @llvm.dbg.declare(metadata double* %46, metadata !1244, metadata !62), !dbg !1245
  call void @llvm.dbg.declare(metadata double* %47, metadata !1246, metadata !62), !dbg !1247
  call void @llvm.dbg.declare(metadata i32* %48, metadata !1248, metadata !62), !dbg !1249
  %568 = load i32, i32* %7, align 4, !dbg !1250
  %569 = sub nsw i32 %568, 1, !dbg !1251
  %570 = load double, double* %8, align 8, !dbg !1252
  %571 = call i32 @gsl_sf_exprel_n_e(i32 %569, double %570, %struct.gsl_sf_result_struct* %44), !dbg !1253
  %572 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !1254
  %573 = load double, double* %572, align 8, !dbg !1254
  store double %573, double* %46, align 8, !dbg !1255
  store i32 1, i32* %48, align 4, !dbg !1256
  br label %574, !dbg !1258

; <label>:574:                                    ; preds = %600, %567
  %575 = load i32, i32* %48, align 4, !dbg !1259
  %576 = load i32, i32* %6, align 4, !dbg !1262
  %577 = icmp slt i32 %575, %576, !dbg !1263
  br i1 %577, label %578, label %603, !dbg !1264

; <label>:578:                                    ; preds = %574
  %579 = load i32, i32* %7, align 4, !dbg !1265
  %580 = load i32, i32* %48, align 4, !dbg !1267
  %581 = sub nsw i32 %579, %580, !dbg !1268
  %582 = sitofp i32 %581 to double, !dbg !1269
  %583 = load double, double* %45, align 8, !dbg !1270
  %584 = fmul double %582, %583, !dbg !1271
  %585 = load i32, i32* %48, align 4, !dbg !1272
  %586 = mul nsw i32 2, %585, !dbg !1273
  %587 = load i32, i32* %7, align 4, !dbg !1274
  %588 = sub nsw i32 %586, %587, !dbg !1275
  %589 = sitofp i32 %588 to double, !dbg !1276
  %590 = load double, double* %8, align 8, !dbg !1277
  %591 = fadd double %589, %590, !dbg !1278
  %592 = load double, double* %46, align 8, !dbg !1279
  %593 = fmul double %591, %592, !dbg !1280
  %594 = fadd double %584, %593, !dbg !1281
  %595 = load i32, i32* %48, align 4, !dbg !1282
  %596 = sitofp i32 %595 to double, !dbg !1282
  %597 = fdiv double %594, %596, !dbg !1283
  store double %597, double* %47, align 8, !dbg !1284
  %598 = load double, double* %46, align 8, !dbg !1285
  store double %598, double* %45, align 8, !dbg !1286
  %599 = load double, double* %47, align 8, !dbg !1287
  store double %599, double* %46, align 8, !dbg !1288
  br label %600, !dbg !1289

; <label>:600:                                    ; preds = %578
  %601 = load i32, i32* %48, align 4, !dbg !1290
  %602 = add nsw i32 %601, 1, !dbg !1290
  store i32 %602, i32* %48, align 4, !dbg !1290
  br label %574, !dbg !1292, !llvm.loop !1293

; <label>:603:                                    ; preds = %574
  %604 = load double, double* %46, align 8, !dbg !1295
  %605 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1296
  %606 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %605, i32 0, i32 0, !dbg !1297
  store double %604, double* %606, align 8, !dbg !1298
  %607 = load double, double* %46, align 8, !dbg !1299
  %608 = call double @fabs(double %607) #1, !dbg !1300
  %609 = load i32, i32* %6, align 4, !dbg !1301
  %610 = sitofp i32 %609 to double, !dbg !1301
  %611 = call double @fabs(double %610) #1, !dbg !1302
  %612 = fadd double 1.000000e+00, %611, !dbg !1304
  %613 = fmul double %608, %612, !dbg !1305
  %614 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !1306
  %615 = load double, double* %614, align 8, !dbg !1306
  %616 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !1307
  %617 = load double, double* %616, align 8, !dbg !1307
  %618 = fdiv double %615, %617, !dbg !1308
  %619 = call double @fabs(double %618) #1, !dbg !1309
  %620 = fmul double %613, %619, !dbg !1311
  %621 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1312
  %622 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %621, i32 0, i32 1, !dbg !1313
  store double %620, double* %622, align 8, !dbg !1314
  %623 = load double, double* %46, align 8, !dbg !1315
  %624 = call double @fabs(double %623) #1, !dbg !1316
  %625 = fmul double 0x3CC0000000000000, %624, !dbg !1317
  %626 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1318
  %627 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %626, i32 0, i32 1, !dbg !1319
  %628 = load double, double* %627, align 8, !dbg !1320
  %629 = fadd double %628, %625, !dbg !1320
  store double %629, double* %627, align 8, !dbg !1320
  store i32 0, i32* %5, align 4, !dbg !1321
  br label %884, !dbg !1321

; <label>:630:                                    ; preds = %566
  br label %875, !dbg !1322

; <label>:631:                                    ; preds = %476
  %632 = load i32, i32* %6, align 4, !dbg !1323
  %633 = sitofp i32 %632 to double, !dbg !1323
  %634 = load i32, i32* %7, align 4, !dbg !1326
  %635 = sitofp i32 %634 to double, !dbg !1326
  %636 = load double, double* %8, align 8, !dbg !1327
  %637 = fsub double %635, %636, !dbg !1328
  %638 = fmul double 5.000000e-01, %637, !dbg !1329
  %639 = fcmp ole double %633, %638, !dbg !1330
  br i1 %639, label %646, label %640, !dbg !1331

; <label>:640:                                    ; preds = %631
  %641 = load i32, i32* %6, align 4, !dbg !1332
  %642 = sitofp i32 %641 to double, !dbg !1332
  %643 = load double, double* %8, align 8, !dbg !1334
  %644 = fsub double -0.000000e+00, %643, !dbg !1335
  %645 = fcmp oge double %642, %644, !dbg !1336
  br i1 %645, label %646, label %720, !dbg !1337

; <label>:646:                                    ; preds = %640, %631
  call void @llvm.dbg.declare(metadata double* %49, metadata !1338, metadata !62), !dbg !1340
  %647 = load double, double* %8, align 8, !dbg !1341
  %648 = call double @exp(double %647) #5, !dbg !1342
  store double %648, double* %49, align 8, !dbg !1340
  call void @llvm.dbg.declare(metadata double* %50, metadata !1343, metadata !62), !dbg !1344
  %649 = load double, double* %49, align 8, !dbg !1345
  store double %649, double* %50, align 8, !dbg !1344
  call void @llvm.dbg.declare(metadata double* %51, metadata !1346, metadata !62), !dbg !1347
  %650 = load double, double* %49, align 8, !dbg !1348
  %651 = load double, double* %8, align 8, !dbg !1349
  %652 = load i32, i32* %6, align 4, !dbg !1350
  %653 = sitofp i32 %652 to double, !dbg !1350
  %654 = fsub double %653, 1.000000e+00, !dbg !1351
  %655 = fdiv double %651, %654, !dbg !1352
  %656 = fadd double 1.000000e+00, %655, !dbg !1353
  %657 = fmul double %650, %656, !dbg !1354
  store double %657, double* %51, align 8, !dbg !1347
  call void @llvm.dbg.declare(metadata double* %52, metadata !1355, metadata !62), !dbg !1356
  call void @llvm.dbg.declare(metadata i32* %53, metadata !1357, metadata !62), !dbg !1358
  %658 = load i32, i32* %6, align 4, !dbg !1359
  %659 = sub nsw i32 %658, 1, !dbg !1361
  store i32 %659, i32* %53, align 4, !dbg !1362
  br label %660, !dbg !1363

; <label>:660:                                    ; preds = %694, %646
  %661 = load i32, i32* %53, align 4, !dbg !1364
  %662 = load i32, i32* %7, align 4, !dbg !1367
  %663 = icmp sgt i32 %661, %662, !dbg !1368
  br i1 %663, label %664, label %697, !dbg !1369

; <label>:664:                                    ; preds = %660
  %665 = load i32, i32* %53, align 4, !dbg !1370
  %666 = sub nsw i32 0, %665, !dbg !1372
  %667 = sitofp i32 %666 to double, !dbg !1372
  %668 = load i32, i32* %53, align 4, !dbg !1373
  %669 = sub nsw i32 1, %668, !dbg !1374
  %670 = sitofp i32 %669 to double, !dbg !1375
  %671 = load double, double* %8, align 8, !dbg !1376
  %672 = fsub double %670, %671, !dbg !1377
  %673 = fmul double %667, %672, !dbg !1378
  %674 = load double, double* %51, align 8, !dbg !1379
  %675 = fmul double %673, %674, !dbg !1380
  %676 = load double, double* %8, align 8, !dbg !1381
  %677 = load i32, i32* %53, align 4, !dbg !1382
  %678 = load i32, i32* %6, align 4, !dbg !1383
  %679 = sub nsw i32 %677, %678, !dbg !1384
  %680 = sitofp i32 %679 to double, !dbg !1385
  %681 = fmul double %676, %680, !dbg !1386
  %682 = load double, double* %50, align 8, !dbg !1387
  %683 = fmul double %681, %682, !dbg !1388
  %684 = fsub double %675, %683, !dbg !1389
  %685 = load i32, i32* %53, align 4, !dbg !1390
  %686 = sitofp i32 %685 to double, !dbg !1390
  %687 = load i32, i32* %53, align 4, !dbg !1391
  %688 = sitofp i32 %687 to double, !dbg !1391
  %689 = fsub double %688, 1.000000e+00, !dbg !1392
  %690 = fmul double %686, %689, !dbg !1393
  %691 = fdiv double %684, %690, !dbg !1394
  store double %691, double* %52, align 8, !dbg !1395
  %692 = load double, double* %51, align 8, !dbg !1396
  store double %692, double* %50, align 8, !dbg !1397
  %693 = load double, double* %52, align 8, !dbg !1398
  store double %693, double* %51, align 8, !dbg !1399
  br label %694, !dbg !1400

; <label>:694:                                    ; preds = %664
  %695 = load i32, i32* %53, align 4, !dbg !1401
  %696 = add nsw i32 %695, -1, !dbg !1401
  store i32 %696, i32* %53, align 4, !dbg !1401
  br label %660, !dbg !1403, !llvm.loop !1404

; <label>:697:                                    ; preds = %660
  %698 = load double, double* %51, align 8, !dbg !1406
  %699 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1407
  %700 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %699, i32 0, i32 0, !dbg !1408
  store double %698, double* %700, align 8, !dbg !1409
  %701 = load double, double* %8, align 8, !dbg !1410
  %702 = call double @fabs(double %701) #1, !dbg !1411
  %703 = fadd double %702, 1.000000e+00, !dbg !1412
  %704 = fmul double %703, 0x3CB0000000000000, !dbg !1413
  %705 = load double, double* %51, align 8, !dbg !1414
  %706 = call double @fabs(double %705) #1, !dbg !1415
  %707 = fmul double %704, %706, !dbg !1417
  %708 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1418
  %709 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %708, i32 0, i32 1, !dbg !1419
  store double %707, double* %709, align 8, !dbg !1420
  %710 = load i32, i32* %7, align 4, !dbg !1421
  %711 = load i32, i32* %6, align 4, !dbg !1422
  %712 = sub nsw i32 %710, %711, !dbg !1423
  %713 = sitofp i32 %712 to double, !dbg !1421
  %714 = call double @fabs(double %713) #1, !dbg !1424
  %715 = fadd double %714, 1.000000e+00, !dbg !1425
  %716 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1426
  %717 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %716, i32 0, i32 1, !dbg !1427
  %718 = load double, double* %717, align 8, !dbg !1428
  %719 = fmul double %718, %715, !dbg !1428
  store double %719, double* %717, align 8, !dbg !1428
  store i32 0, i32* %5, align 4, !dbg !1429
  br label %884, !dbg !1429

; <label>:720:                                    ; preds = %640
  call void @llvm.dbg.declare(metadata i32* %54, metadata !1430, metadata !62), !dbg !1432
  %721 = load i32, i32* %7, align 4, !dbg !1433
  %722 = sitofp i32 %721 to double, !dbg !1433
  %723 = load double, double* %8, align 8, !dbg !1434
  %724 = fsub double %722, %723, !dbg !1435
  %725 = fmul double 5.000000e-01, %724, !dbg !1436
  %726 = call double @ceil(double %725) #1, !dbg !1437
  %727 = fptosi double %726 to i32, !dbg !1438
  store i32 %727, i32* %54, align 4, !dbg !1432
  call void @llvm.dbg.declare(metadata double* %55, metadata !1439, metadata !62), !dbg !1440
  call void @llvm.dbg.declare(metadata double* %56, metadata !1441, metadata !62), !dbg !1442
  call void @llvm.dbg.declare(metadata double* %57, metadata !1443, metadata !62), !dbg !1444
  call void @llvm.dbg.declare(metadata double* %58, metadata !1445, metadata !62), !dbg !1446
  call void @llvm.dbg.declare(metadata double* %59, metadata !1447, metadata !62), !dbg !1448
  call void @llvm.dbg.declare(metadata double* %60, metadata !1449, metadata !62), !dbg !1450
  call void @llvm.dbg.declare(metadata i32* %61, metadata !1451, metadata !62), !dbg !1452
  call void @llvm.dbg.declare(metadata double* %62, metadata !1453, metadata !62), !dbg !1455
  %728 = load double, double* %8, align 8, !dbg !1456
  %729 = call double @exp(double %728) #5, !dbg !1457
  store double %729, double* %62, align 8, !dbg !1455
  call void @llvm.dbg.declare(metadata double* %63, metadata !1458, metadata !62), !dbg !1459
  %730 = load double, double* %62, align 8, !dbg !1460
  store double %730, double* %63, align 8, !dbg !1459
  call void @llvm.dbg.declare(metadata double* %64, metadata !1461, metadata !62), !dbg !1462
  %731 = load double, double* %62, align 8, !dbg !1463
  %732 = load double, double* %8, align 8, !dbg !1464
  %733 = load i32, i32* %54, align 4, !dbg !1465
  %734 = sitofp i32 %733 to double, !dbg !1465
  %735 = fsub double %734, 1.000000e+00, !dbg !1466
  %736 = fdiv double %732, %735, !dbg !1467
  %737 = fadd double 1.000000e+00, %736, !dbg !1468
  %738 = fmul double %731, %737, !dbg !1469
  store double %738, double* %64, align 8, !dbg !1462
  call void @llvm.dbg.declare(metadata double* %65, metadata !1470, metadata !62), !dbg !1471
  %739 = load i32, i32* %54, align 4, !dbg !1472
  %740 = sub nsw i32 %739, 1, !dbg !1474
  store i32 %740, i32* %61, align 4, !dbg !1475
  br label %741, !dbg !1476

; <label>:741:                                    ; preds = %775, %720
  %742 = load i32, i32* %61, align 4, !dbg !1477
  %743 = load i32, i32* %7, align 4, !dbg !1480
  %744 = icmp sgt i32 %742, %743, !dbg !1481
  br i1 %744, label %745, label %778, !dbg !1482

; <label>:745:                                    ; preds = %741
  %746 = load i32, i32* %61, align 4, !dbg !1483
  %747 = sub nsw i32 0, %746, !dbg !1485
  %748 = sitofp i32 %747 to double, !dbg !1485
  %749 = load i32, i32* %61, align 4, !dbg !1486
  %750 = sub nsw i32 1, %749, !dbg !1487
  %751 = sitofp i32 %750 to double, !dbg !1488
  %752 = load double, double* %8, align 8, !dbg !1489
  %753 = fsub double %751, %752, !dbg !1490
  %754 = fmul double %748, %753, !dbg !1491
  %755 = load double, double* %64, align 8, !dbg !1492
  %756 = fmul double %754, %755, !dbg !1493
  %757 = load double, double* %8, align 8, !dbg !1494
  %758 = load i32, i32* %61, align 4, !dbg !1495
  %759 = load i32, i32* %54, align 4, !dbg !1496
  %760 = sub nsw i32 %758, %759, !dbg !1497
  %761 = sitofp i32 %760 to double, !dbg !1498
  %762 = fmul double %757, %761, !dbg !1499
  %763 = load double, double* %63, align 8, !dbg !1500
  %764 = fmul double %762, %763, !dbg !1501
  %765 = fsub double %756, %764, !dbg !1502
  %766 = load i32, i32* %61, align 4, !dbg !1503
  %767 = sitofp i32 %766 to double, !dbg !1503
  %768 = load i32, i32* %61, align 4, !dbg !1504
  %769 = sitofp i32 %768 to double, !dbg !1504
  %770 = fsub double %769, 1.000000e+00, !dbg !1505
  %771 = fmul double %767, %770, !dbg !1506
  %772 = fdiv double %765, %771, !dbg !1507
  store double %772, double* %65, align 8, !dbg !1508
  %773 = load double, double* %64, align 8, !dbg !1509
  store double %773, double* %63, align 8, !dbg !1510
  %774 = load double, double* %65, align 8, !dbg !1511
  store double %774, double* %64, align 8, !dbg !1512
  br label %775, !dbg !1513

; <label>:775:                                    ; preds = %745
  %776 = load i32, i32* %61, align 4, !dbg !1514
  %777 = add nsw i32 %776, -1, !dbg !1514
  store i32 %777, i32* %61, align 4, !dbg !1514
  br label %741, !dbg !1516, !llvm.loop !1517

; <label>:778:                                    ; preds = %741
  %779 = load double, double* %63, align 8, !dbg !1519
  store double %779, double* %56, align 8, !dbg !1520
  %780 = load double, double* %64, align 8, !dbg !1521
  store double %780, double* %55, align 8, !dbg !1522
  %781 = load i32, i32* %7, align 4, !dbg !1523
  %782 = sitofp i32 %781 to double, !dbg !1523
  %783 = load i32, i32* %54, align 4, !dbg !1524
  %784 = sitofp i32 %783 to double, !dbg !1524
  %785 = load double, double* %8, align 8, !dbg !1525
  %786 = fadd double %784, %785, !dbg !1526
  %787 = fmul double %782, %786, !dbg !1527
  %788 = load double, double* %55, align 8, !dbg !1528
  %789 = fmul double %787, %788, !dbg !1529
  %790 = load double, double* %8, align 8, !dbg !1530
  %791 = load i32, i32* %54, align 4, !dbg !1531
  %792 = load i32, i32* %7, align 4, !dbg !1532
  %793 = sub nsw i32 %791, %792, !dbg !1533
  %794 = sitofp i32 %793 to double, !dbg !1534
  %795 = fmul double %790, %794, !dbg !1535
  %796 = load double, double* %56, align 8, !dbg !1536
  %797 = fmul double %795, %796, !dbg !1537
  %798 = fadd double %789, %797, !dbg !1538
  %799 = load i32, i32* %54, align 4, !dbg !1539
  %800 = load i32, i32* %7, align 4, !dbg !1540
  %801 = mul nsw i32 %799, %800, !dbg !1541
  %802 = sitofp i32 %801 to double, !dbg !1542
  %803 = fdiv double %798, %802, !dbg !1543
  store double %803, double* %57, align 8, !dbg !1544
  %804 = load i32, i32* %54, align 4, !dbg !1545
  %805 = load i32, i32* %6, align 4, !dbg !1547
  %806 = icmp sge i32 %804, %805, !dbg !1548
  br i1 %806, label %807, label %809, !dbg !1549

; <label>:807:                                    ; preds = %778
  %808 = load double, double* %55, align 8, !dbg !1550
  store double %808, double* %59, align 8, !dbg !1552
  br label %852, !dbg !1553

; <label>:809:                                    ; preds = %778
  %810 = load i32, i32* %54, align 4, !dbg !1554
  %811 = add nsw i32 %810, 1, !dbg !1556
  %812 = load i32, i32* %6, align 4, !dbg !1557
  %813 = icmp sge i32 %811, %812, !dbg !1558
  br i1 %813, label %814, label %816, !dbg !1559

; <label>:814:                                    ; preds = %809
  %815 = load double, double* %57, align 8, !dbg !1560
  store double %815, double* %59, align 8, !dbg !1562
  br label %851, !dbg !1563

; <label>:816:                                    ; preds = %809
  %817 = load double, double* %55, align 8, !dbg !1564
  store double %817, double* %58, align 8, !dbg !1566
  %818 = load double, double* %57, align 8, !dbg !1567
  store double %818, double* %59, align 8, !dbg !1568
  %819 = load i32, i32* %54, align 4, !dbg !1569
  %820 = add nsw i32 %819, 1, !dbg !1571
  store i32 %820, i32* %61, align 4, !dbg !1572
  br label %821, !dbg !1573

; <label>:821:                                    ; preds = %847, %816
  %822 = load i32, i32* %61, align 4, !dbg !1574
  %823 = load i32, i32* %6, align 4, !dbg !1577
  %824 = icmp slt i32 %822, %823, !dbg !1578
  br i1 %824, label %825, label %850, !dbg !1579

; <label>:825:                                    ; preds = %821
  %826 = load i32, i32* %7, align 4, !dbg !1580
  %827 = load i32, i32* %61, align 4, !dbg !1582
  %828 = sub nsw i32 %826, %827, !dbg !1583
  %829 = sitofp i32 %828 to double, !dbg !1584
  %830 = load double, double* %58, align 8, !dbg !1585
  %831 = fmul double %829, %830, !dbg !1586
  %832 = load i32, i32* %61, align 4, !dbg !1587
  %833 = mul nsw i32 2, %832, !dbg !1588
  %834 = load i32, i32* %7, align 4, !dbg !1589
  %835 = sub nsw i32 %833, %834, !dbg !1590
  %836 = sitofp i32 %835 to double, !dbg !1591
  %837 = load double, double* %8, align 8, !dbg !1592
  %838 = fadd double %836, %837, !dbg !1593
  %839 = load double, double* %59, align 8, !dbg !1594
  %840 = fmul double %838, %839, !dbg !1595
  %841 = fadd double %831, %840, !dbg !1596
  %842 = load i32, i32* %61, align 4, !dbg !1597
  %843 = sitofp i32 %842 to double, !dbg !1597
  %844 = fdiv double %841, %843, !dbg !1598
  store double %844, double* %60, align 8, !dbg !1599
  %845 = load double, double* %59, align 8, !dbg !1600
  store double %845, double* %58, align 8, !dbg !1601
  %846 = load double, double* %60, align 8, !dbg !1602
  store double %846, double* %59, align 8, !dbg !1603
  br label %847, !dbg !1604

; <label>:847:                                    ; preds = %825
  %848 = load i32, i32* %61, align 4, !dbg !1605
  %849 = add nsw i32 %848, 1, !dbg !1605
  store i32 %849, i32* %61, align 4, !dbg !1605
  br label %821, !dbg !1607, !llvm.loop !1608

; <label>:850:                                    ; preds = %821
  br label %851

; <label>:851:                                    ; preds = %850, %814
  br label %852

; <label>:852:                                    ; preds = %851, %807
  %853 = load double, double* %59, align 8, !dbg !1610
  %854 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1611
  %855 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %854, i32 0, i32 0, !dbg !1612
  store double %853, double* %855, align 8, !dbg !1613
  %856 = load double, double* %8, align 8, !dbg !1614
  %857 = call double @fabs(double %856) #1, !dbg !1615
  %858 = fadd double %857, 1.000000e+00, !dbg !1616
  %859 = fmul double %858, 0x3CB0000000000000, !dbg !1617
  %860 = load double, double* %59, align 8, !dbg !1618
  %861 = call double @fabs(double %860) #1, !dbg !1619
  %862 = fmul double %859, %861, !dbg !1621
  %863 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1622
  %864 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %863, i32 0, i32 1, !dbg !1623
  store double %862, double* %864, align 8, !dbg !1624
  %865 = load i32, i32* %7, align 4, !dbg !1625
  %866 = load i32, i32* %6, align 4, !dbg !1626
  %867 = sub nsw i32 %865, %866, !dbg !1627
  %868 = sitofp i32 %867 to double, !dbg !1625
  %869 = call double @fabs(double %868) #1, !dbg !1628
  %870 = fadd double %869, 1.000000e+00, !dbg !1629
  %871 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1630
  %872 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %871, i32 0, i32 1, !dbg !1631
  %873 = load double, double* %872, align 8, !dbg !1632
  %874 = fmul double %873, %870, !dbg !1632
  store double %874, double* %872, align 8, !dbg !1632
  store i32 0, i32* %5, align 4, !dbg !1633
  br label %884, !dbg !1633

; <label>:875:                                    ; preds = %630
  br label %876

; <label>:876:                                    ; preds = %875
  br label %877

; <label>:877:                                    ; preds = %876
  br label %878

; <label>:878:                                    ; preds = %877
  br label %879

; <label>:879:                                    ; preds = %878
  br label %880

; <label>:880:                                    ; preds = %879
  br label %881

; <label>:881:                                    ; preds = %880
  br label %882

; <label>:882:                                    ; preds = %881
  br label %883

; <label>:883:                                    ; preds = %882
  br label %884

; <label>:884:                                    ; preds = %71, %78, %116, %123, %175, %240, %270, %339, %474, %535, %563, %603, %697, %852, %883
  %885 = load i32, i32* %5, align 4, !dbg !1634
  ret i32 %885, !dbg !1634
}

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_1F1_e(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1635 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca %struct.gsl_sf_result_struct, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct.gsl_sf_result_struct, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.gsl_sf_result_struct, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1636, metadata !62), !dbg !1637
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1638, metadata !62), !dbg !1639
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1640, metadata !62), !dbg !1641
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1642, metadata !62), !dbg !1643
  call void @llvm.dbg.declare(metadata double* %10, metadata !1644, metadata !62), !dbg !1645
  %43 = load double, double* %7, align 8, !dbg !1646
  %44 = load double, double* %6, align 8, !dbg !1647
  %45 = fsub double %43, %44, !dbg !1648
  store double %45, double* %10, align 8, !dbg !1645
  call void @llvm.dbg.declare(metadata double* %11, metadata !1649, metadata !62), !dbg !1650
  %46 = load double, double* %6, align 8, !dbg !1651
  %47 = fadd double %46, 5.000000e-01, !dbg !1652
  %48 = call double @floor(double %47) #1, !dbg !1653
  store double %48, double* %11, align 8, !dbg !1650
  call void @llvm.dbg.declare(metadata double* %12, metadata !1654, metadata !62), !dbg !1655
  %49 = load double, double* %7, align 8, !dbg !1656
  %50 = fadd double %49, 5.000000e-01, !dbg !1657
  %51 = call double @floor(double %50) #1, !dbg !1658
  store double %51, double* %12, align 8, !dbg !1655
  call void @llvm.dbg.declare(metadata double* %13, metadata !1659, metadata !62), !dbg !1660
  %52 = load double, double* %10, align 8, !dbg !1661
  %53 = fadd double %52, 5.000000e-01, !dbg !1662
  %54 = call double @floor(double %53) #1, !dbg !1663
  store double %54, double* %13, align 8, !dbg !1660
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1664, metadata !62), !dbg !1665
  %55 = load double, double* %6, align 8, !dbg !1666
  %56 = load double, double* %11, align 8, !dbg !1667
  %57 = fsub double %55, %56, !dbg !1668
  %58 = call double @fabs(double %57) #1, !dbg !1669
  %59 = fcmp olt double %58, 0x3D19000000000000, !dbg !1670
  br i1 %59, label %60, label %66, !dbg !1671

; <label>:60:                                     ; preds = %4
  %61 = load double, double* %11, align 8, !dbg !1672
  %62 = fcmp ogt double %61, 0xC1E0000000000000, !dbg !1674
  br i1 %62, label %63, label %66, !dbg !1675

; <label>:63:                                     ; preds = %60
  %64 = load double, double* %11, align 8, !dbg !1676
  %65 = fcmp olt double %64, 0x41DFFFFFFFC00000, !dbg !1678
  br label %66

; <label>:66:                                     ; preds = %63, %60, %4
  %67 = phi i1 [ false, %60 ], [ false, %4 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32, !dbg !1679
  store i32 %68, i32* %14, align 4, !dbg !1681
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1682, metadata !62), !dbg !1683
  %69 = load double, double* %7, align 8, !dbg !1684
  %70 = load double, double* %12, align 8, !dbg !1685
  %71 = fsub double %69, %70, !dbg !1686
  %72 = call double @fabs(double %71) #1, !dbg !1687
  %73 = fcmp olt double %72, 0x3D19000000000000, !dbg !1688
  br i1 %73, label %74, label %80, !dbg !1689

; <label>:74:                                     ; preds = %66
  %75 = load double, double* %12, align 8, !dbg !1690
  %76 = fcmp ogt double %75, 0xC1E0000000000000, !dbg !1691
  br i1 %76, label %77, label %80, !dbg !1692

; <label>:77:                                     ; preds = %74
  %78 = load double, double* %12, align 8, !dbg !1693
  %79 = fcmp olt double %78, 0x41DFFFFFFFC00000, !dbg !1694
  br label %80

; <label>:80:                                     ; preds = %77, %74, %66
  %81 = phi i1 [ false, %74 ], [ false, %66 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32, !dbg !1695
  store i32 %82, i32* %15, align 4, !dbg !1696
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1697, metadata !62), !dbg !1698
  %83 = load double, double* %10, align 8, !dbg !1699
  %84 = load double, double* %13, align 8, !dbg !1700
  %85 = fsub double %83, %84, !dbg !1701
  %86 = call double @fabs(double %85) #1, !dbg !1702
  %87 = fcmp olt double %86, 0x3D19000000000000, !dbg !1703
  br i1 %87, label %88, label %94, !dbg !1704

; <label>:88:                                     ; preds = %80
  %89 = load double, double* %13, align 8, !dbg !1705
  %90 = fcmp ogt double %89, 0xC1E0000000000000, !dbg !1706
  br i1 %90, label %91, label %94, !dbg !1707

; <label>:91:                                     ; preds = %88
  %92 = load double, double* %13, align 8, !dbg !1708
  %93 = fcmp olt double %92, 0x41DFFFFFFFC00000, !dbg !1709
  br label %94

; <label>:94:                                     ; preds = %91, %88, %80
  %95 = phi i1 [ false, %88 ], [ false, %80 ], [ %93, %91 ]
  %96 = zext i1 %95 to i32, !dbg !1710
  store i32 %96, i32* %16, align 4, !dbg !1711
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1712, metadata !62), !dbg !1713
  %97 = load double, double* %7, align 8, !dbg !1714
  %98 = fcmp olt double %97, -1.000000e-01, !dbg !1715
  br i1 %98, label %99, label %102, !dbg !1716

; <label>:99:                                     ; preds = %94
  %100 = load i32, i32* %15, align 4, !dbg !1717
  %101 = icmp ne i32 %100, 0, !dbg !1718
  br label %102

; <label>:102:                                    ; preds = %99, %94
  %103 = phi i1 [ false, %94 ], [ %101, %99 ]
  %104 = zext i1 %103 to i32, !dbg !1719
  store i32 %104, i32* %17, align 4, !dbg !1720
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1721, metadata !62), !dbg !1722
  %105 = load double, double* %6, align 8, !dbg !1723
  %106 = fcmp olt double %105, -1.000000e-01, !dbg !1724
  br i1 %106, label %107, label %110, !dbg !1725

; <label>:107:                                    ; preds = %102
  %108 = load i32, i32* %14, align 4, !dbg !1726
  %109 = icmp ne i32 %108, 0, !dbg !1727
  br label %110

; <label>:110:                                    ; preds = %107, %102
  %111 = phi i1 [ false, %102 ], [ %109, %107 ]
  %112 = zext i1 %111 to i32, !dbg !1728
  store i32 %112, i32* %18, align 4, !dbg !1729
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1730, metadata !62), !dbg !1731
  %113 = load double, double* %10, align 8, !dbg !1732
  %114 = fcmp olt double %113, -1.000000e-01, !dbg !1733
  br i1 %114, label %115, label %118, !dbg !1734

; <label>:115:                                    ; preds = %110
  %116 = load i32, i32* %16, align 4, !dbg !1735
  %117 = icmp ne i32 %116, 0, !dbg !1736
  br label %118

; <label>:118:                                    ; preds = %115, %110
  %119 = phi i1 [ false, %110 ], [ %117, %115 ]
  %120 = zext i1 %119 to i32, !dbg !1737
  store i32 %120, i32* %19, align 4, !dbg !1738
  %121 = load double, double* %8, align 8, !dbg !1739
  %122 = fcmp oeq double %121, 0.000000e+00, !dbg !1741
  br i1 %122, label %123, label %128, !dbg !1742

; <label>:123:                                    ; preds = %118
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1743
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 0, !dbg !1745
  store double 1.000000e+00, double* %125, align 8, !dbg !1746
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1747
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 1, !dbg !1748
  store double 0.000000e+00, double* %127, align 8, !dbg !1749
  store i32 0, i32* %5, align 4, !dbg !1750
  br label %507, !dbg !1750

; <label>:128:                                    ; preds = %118
  %129 = load double, double* %7, align 8, !dbg !1751
  %130 = fcmp oeq double %129, 0.000000e+00, !dbg !1753
  br i1 %130, label %131, label %140, !dbg !1754

; <label>:131:                                    ; preds = %128
  br label %132, !dbg !1755, !llvm.loop !1757

; <label>:132:                                    ; preds = %131
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1758
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 0, !dbg !1758
  store double 0x7FF8000000000000, double* %134, align 8, !dbg !1758
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1758
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 1, !dbg !1758
  store double 0x7FF8000000000000, double* %136, align 8, !dbg !1758
  br label %137, !dbg !1758, !llvm.loop !1761

; <label>:137:                                    ; preds = %132
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 1871, i32 1), !dbg !1763
  store i32 1, i32* %5, align 4, !dbg !1763
  br label %507, !dbg !1763
                                                  ; No predecessors!
  br label %139, !dbg !1766

; <label>:139:                                    ; preds = %138
  br label %506, !dbg !1768

; <label>:140:                                    ; preds = %128
  %141 = load double, double* %6, align 8, !dbg !1769
  %142 = fcmp oeq double %141, 0.000000e+00, !dbg !1771
  br i1 %142, label %143, label %148, !dbg !1772

; <label>:143:                                    ; preds = %140
  %144 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1773
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %144, i32 0, i32 0, !dbg !1775
  store double 1.000000e+00, double* %145, align 8, !dbg !1776
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1777
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %146, i32 0, i32 1, !dbg !1778
  store double 0.000000e+00, double* %147, align 8, !dbg !1779
  store i32 0, i32* %5, align 4, !dbg !1780
  br label %507, !dbg !1780

; <label>:148:                                    ; preds = %140
  %149 = load double, double* %6, align 8, !dbg !1781
  %150 = load double, double* %7, align 8, !dbg !1783
  %151 = fcmp oeq double %149, %150, !dbg !1784
  br i1 %151, label %152, label %156, !dbg !1785

; <label>:152:                                    ; preds = %148
  %153 = load double, double* %8, align 8, !dbg !1786
  %154 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1788
  %155 = call i32 @gsl_sf_exp_e(double %153, %struct.gsl_sf_result_struct* %154), !dbg !1789
  store i32 %155, i32* %5, align 4, !dbg !1790
  br label %507, !dbg !1790

; <label>:156:                                    ; preds = %148
  %157 = load double, double* %7, align 8, !dbg !1791
  %158 = call double @fabs(double %157) #1, !dbg !1793
  %159 = fcmp olt double %158, 0x3D19000000000000, !dbg !1794
  br i1 %159, label %160, label %223, !dbg !1795

; <label>:160:                                    ; preds = %156
  %161 = load double, double* %6, align 8, !dbg !1796
  %162 = call double @fabs(double %161) #1, !dbg !1798
  %163 = fcmp olt double %162, 0x3D19000000000000, !dbg !1799
  br i1 %163, label %164, label %223, !dbg !1800

; <label>:164:                                    ; preds = %160
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !1801, metadata !62), !dbg !1803
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1804, metadata !62), !dbg !1805
  %165 = load double, double* %8, align 8, !dbg !1806
  %166 = call i32 @gsl_sf_expm1_e(double %165, %struct.gsl_sf_result_struct* %20), !dbg !1807
  store i32 %166, i32* %21, align 4, !dbg !1805
  call void @llvm.dbg.declare(metadata double* %22, metadata !1808, metadata !62), !dbg !1809
  %167 = load double, double* %6, align 8, !dbg !1810
  %168 = fcmp ogt double %167, 0.000000e+00, !dbg !1811
  %169 = select i1 %168, double 1.000000e+00, double -1.000000e+00, !dbg !1810
  store double %169, double* %22, align 8, !dbg !1809
  call void @llvm.dbg.declare(metadata double* %23, metadata !1812, metadata !62), !dbg !1813
  %170 = load double, double* %7, align 8, !dbg !1814
  %171 = fcmp ogt double %170, 0.000000e+00, !dbg !1815
  %172 = select i1 %171, double 1.000000e+00, double -1.000000e+00, !dbg !1814
  store double %172, double* %23, align 8, !dbg !1813
  call void @llvm.dbg.declare(metadata double* %24, metadata !1816, metadata !62), !dbg !1817
  %173 = load double, double* %6, align 8, !dbg !1818
  %174 = load double, double* %7, align 8, !dbg !1819
  %175 = fdiv double %173, %174, !dbg !1820
  %176 = call double @fabs(double %175) #1, !dbg !1821
  %177 = call double @log(double %176) #5, !dbg !1822
  store double %177, double* %24, align 8, !dbg !1817
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !1824, metadata !62), !dbg !1825
  call void @llvm.dbg.declare(metadata i32* %26, metadata !1826, metadata !62), !dbg !1827
  %178 = load double, double* %24, align 8, !dbg !1828
  %179 = load double, double* %24, align 8, !dbg !1829
  %180 = call double @fabs(double %179) #1, !dbg !1830
  %181 = fmul double 0x3CB0000000000000, %180, !dbg !1831
  %182 = load double, double* %22, align 8, !dbg !1832
  %183 = load double, double* %23, align 8, !dbg !1833
  %184 = fmul double %182, %183, !dbg !1834
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1835
  %186 = load double, double* %185, align 8, !dbg !1835
  %187 = fmul double %184, %186, !dbg !1836
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1837
  %189 = load double, double* %188, align 8, !dbg !1837
  %190 = call i32 @gsl_sf_exp_mult_err_e(double %178, double %181, double %187, double %189, %struct.gsl_sf_result_struct* %25), !dbg !1838
  store i32 %190, i32* %26, align 4, !dbg !1827
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !1839
  %192 = load double, double* %191, align 8, !dbg !1839
  %193 = fcmp oeq double %192, 0x7FEFFFFFFFFFFFFF, !dbg !1840
  br i1 %193, label %194, label %197, !dbg !1841

; <label>:194:                                    ; preds = %164
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !1842
  %196 = load double, double* %195, align 8, !dbg !1842
  br label %201, !dbg !1843

; <label>:197:                                    ; preds = %164
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !1844
  %199 = load double, double* %198, align 8, !dbg !1844
  %200 = fadd double 1.000000e+00, %199, !dbg !1846
  br label %201, !dbg !1847

; <label>:201:                                    ; preds = %197, %194
  %202 = phi double [ %196, %194 ], [ %200, %197 ], !dbg !1848
  %203 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1850
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %203, i32 0, i32 0, !dbg !1851
  store double %202, double* %204, align 8, !dbg !1852
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !1853
  %206 = load double, double* %205, align 8, !dbg !1853
  %207 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1854
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %207, i32 0, i32 1, !dbg !1855
  store double %206, double* %208, align 8, !dbg !1856
  %209 = load i32, i32* %26, align 4, !dbg !1857
  %210 = icmp ne i32 %209, 0, !dbg !1857
  br i1 %210, label %211, label %213, !dbg !1857

; <label>:211:                                    ; preds = %201
  %212 = load i32, i32* %26, align 4, !dbg !1858
  br label %221, !dbg !1858

; <label>:213:                                    ; preds = %201
  %214 = load i32, i32* %21, align 4, !dbg !1859
  %215 = icmp ne i32 %214, 0, !dbg !1859
  br i1 %215, label %216, label %218, !dbg !1859

; <label>:216:                                    ; preds = %213
  %217 = load i32, i32* %21, align 4, !dbg !1860
  br label %219, !dbg !1860

; <label>:218:                                    ; preds = %213
  br label %219, !dbg !1861

; <label>:219:                                    ; preds = %218, %216
  %220 = phi i32 [ %217, %216 ], [ 0, %218 ], !dbg !1863
  br label %221, !dbg !1863

; <label>:221:                                    ; preds = %219, %211
  %222 = phi i32 [ %212, %211 ], [ %220, %219 ], !dbg !1865
  store i32 %222, i32* %5, align 4, !dbg !1867
  br label %507, !dbg !1867

; <label>:223:                                    ; preds = %160, %156
  %224 = load double, double* %7, align 8, !dbg !1868
  %225 = call double @fabs(double %224) #1, !dbg !1870
  %226 = fcmp olt double %225, 0x3D19000000000000, !dbg !1871
  br i1 %226, label %227, label %265, !dbg !1872

; <label>:227:                                    ; preds = %223
  %228 = load double, double* %8, align 8, !dbg !1873
  %229 = load double, double* %6, align 8, !dbg !1875
  %230 = fmul double %228, %229, !dbg !1876
  %231 = call double @fabs(double %230) #1, !dbg !1877
  %232 = fcmp olt double %231, 1.000000e+00, !dbg !1878
  br i1 %232, label %233, label %265, !dbg !1879

; <label>:233:                                    ; preds = %227
  call void @llvm.dbg.declare(metadata double* %27, metadata !1880, metadata !62), !dbg !1882
  %234 = load double, double* %7, align 8, !dbg !1883
  %235 = fmul double 5.000000e-01, %234, !dbg !1884
  %236 = fdiv double 1.000000e+00, %235, !dbg !1885
  store double %236, double* %27, align 8, !dbg !1882
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %28, metadata !1886, metadata !62), !dbg !1887
  call void @llvm.dbg.declare(metadata i32* %29, metadata !1888, metadata !62), !dbg !1889
  %237 = load double, double* %6, align 8, !dbg !1890
  %238 = load double, double* %8, align 8, !dbg !1891
  %239 = call i32 @hyperg_1F1_renorm_b0(double %237, double %238, %struct.gsl_sf_result_struct* %28), !dbg !1892
  store i32 %239, i32* %29, align 4, !dbg !1889
  call void @llvm.dbg.declare(metadata i32* %30, metadata !1893, metadata !62), !dbg !1894
  %240 = load double, double* %27, align 8, !dbg !1895
  %241 = load double, double* %27, align 8, !dbg !1896
  %242 = fmul double 0x3CC0000000000000, %241, !dbg !1897
  %243 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !1898
  %244 = load double, double* %243, align 8, !dbg !1898
  %245 = fmul double 5.000000e-01, %244, !dbg !1899
  %246 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !1900
  %247 = load double, double* %246, align 8, !dbg !1900
  %248 = fmul double 5.000000e-01, %247, !dbg !1901
  %249 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1902
  %250 = call i32 @gsl_sf_multiply_err_e(double %240, double %242, double %245, double %248, %struct.gsl_sf_result_struct* %249), !dbg !1903
  store i32 %250, i32* %30, align 4, !dbg !1894
  %251 = load i32, i32* %30, align 4, !dbg !1904
  %252 = icmp ne i32 %251, 0, !dbg !1904
  br i1 %252, label %253, label %255, !dbg !1904

; <label>:253:                                    ; preds = %233
  %254 = load i32, i32* %30, align 4, !dbg !1905
  br label %263, !dbg !1905

; <label>:255:                                    ; preds = %233
  %256 = load i32, i32* %29, align 4, !dbg !1907
  %257 = icmp ne i32 %256, 0, !dbg !1907
  br i1 %257, label %258, label %260, !dbg !1907

; <label>:258:                                    ; preds = %255
  %259 = load i32, i32* %29, align 4, !dbg !1909
  br label %261, !dbg !1909

; <label>:260:                                    ; preds = %255
  br label %261, !dbg !1911

; <label>:261:                                    ; preds = %260, %258
  %262 = phi i32 [ %259, %258 ], [ 0, %260 ], !dbg !1913
  br label %263, !dbg !1913

; <label>:263:                                    ; preds = %261, %253
  %264 = phi i32 [ %254, %253 ], [ %262, %261 ], !dbg !1915
  store i32 %264, i32* %5, align 4, !dbg !1917
  br label %507, !dbg !1917

; <label>:265:                                    ; preds = %227, %223
  %266 = load i32, i32* %14, align 4, !dbg !1918
  %267 = icmp ne i32 %266, 0, !dbg !1918
  br i1 %267, label %268, label %279, !dbg !1920

; <label>:268:                                    ; preds = %265
  %269 = load i32, i32* %15, align 4, !dbg !1921
  %270 = icmp ne i32 %269, 0, !dbg !1921
  br i1 %270, label %271, label %279, !dbg !1923

; <label>:271:                                    ; preds = %268
  %272 = load double, double* %11, align 8, !dbg !1924
  %273 = fptosi double %272 to i32, !dbg !1926
  %274 = load double, double* %12, align 8, !dbg !1927
  %275 = fptosi double %274 to i32, !dbg !1928
  %276 = load double, double* %8, align 8, !dbg !1929
  %277 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1930
  %278 = call i32 @gsl_sf_hyperg_1F1_int_e(i32 %273, i32 %275, double %276, %struct.gsl_sf_result_struct* %277), !dbg !1931
  store i32 %278, i32* %5, align 4, !dbg !1932
  br label %507, !dbg !1932

; <label>:279:                                    ; preds = %268, %265
  %280 = load i32, i32* %17, align 4, !dbg !1933
  %281 = icmp ne i32 %280, 0, !dbg !1933
  br i1 %281, label %282, label %298, !dbg !1935

; <label>:282:                                    ; preds = %279
  %283 = load i32, i32* %18, align 4, !dbg !1936
  %284 = icmp ne i32 %283, 0, !dbg !1936
  br i1 %284, label %285, label %289, !dbg !1938

; <label>:285:                                    ; preds = %282
  %286 = load double, double* %6, align 8, !dbg !1939
  %287 = load double, double* %7, align 8, !dbg !1941
  %288 = fcmp ogt double %286, %287, !dbg !1942
  br i1 %288, label %298, label %289, !dbg !1943

; <label>:289:                                    ; preds = %285, %282
  br label %290, !dbg !1944, !llvm.loop !1946

; <label>:290:                                    ; preds = %289
  %291 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1947
  %292 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %291, i32 0, i32 0, !dbg !1947
  store double 0x7FF8000000000000, double* %292, align 8, !dbg !1947
  %293 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1947
  %294 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %293, i32 0, i32 1, !dbg !1947
  store double 0x7FF8000000000000, double* %294, align 8, !dbg !1947
  br label %295, !dbg !1947, !llvm.loop !1950

; <label>:295:                                    ; preds = %290
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 1925, i32 1), !dbg !1952
  store i32 1, i32* %5, align 4, !dbg !1952
  br label %507, !dbg !1952
                                                  ; No predecessors!
  br label %297, !dbg !1955

; <label>:297:                                    ; preds = %296
  br label %500, !dbg !1957

; <label>:298:                                    ; preds = %285, %279
  %299 = load i32, i32* %18, align 4, !dbg !1958
  %300 = icmp ne i32 %299, 0, !dbg !1958
  br i1 %300, label %301, label %308, !dbg !1960

; <label>:301:                                    ; preds = %298
  %302 = load double, double* %11, align 8, !dbg !1961
  %303 = fptosi double %302 to i32, !dbg !1963
  %304 = load double, double* %7, align 8, !dbg !1964
  %305 = load double, double* %8, align 8, !dbg !1965
  %306 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1966
  %307 = call i32 @hyperg_1F1_a_negint_lag(i32 %303, double %304, double %305, %struct.gsl_sf_result_struct* %306), !dbg !1967
  store i32 %307, i32* %5, align 4, !dbg !1968
  br label %507, !dbg !1968

; <label>:308:                                    ; preds = %298
  %309 = load double, double* %7, align 8, !dbg !1969
  %310 = fcmp ogt double %309, 0.000000e+00, !dbg !1971
  br i1 %310, label %311, label %411, !dbg !1972

; <label>:311:                                    ; preds = %308
  %312 = load double, double* %6, align 8, !dbg !1973
  %313 = fcmp ole double -1.000000e+00, %312, !dbg !1976
  br i1 %313, label %314, label %323, !dbg !1977

; <label>:314:                                    ; preds = %311
  %315 = load double, double* %6, align 8, !dbg !1978
  %316 = fcmp ole double %315, 1.000000e+00, !dbg !1980
  br i1 %316, label %317, label %323, !dbg !1981

; <label>:317:                                    ; preds = %314
  %318 = load double, double* %6, align 8, !dbg !1982
  %319 = load double, double* %7, align 8, !dbg !1984
  %320 = load double, double* %8, align 8, !dbg !1985
  %321 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1986
  %322 = call i32 @hyperg_1F1_small_a_bgt0(double %318, double %319, double %320, %struct.gsl_sf_result_struct* %321), !dbg !1987
  store i32 %322, i32* %5, align 4, !dbg !1988
  br label %507, !dbg !1988

; <label>:323:                                    ; preds = %314, %311
  %324 = load i32, i32* %19, align 4, !dbg !1989
  %325 = icmp ne i32 %324, 0, !dbg !1989
  br i1 %325, label %326, label %357, !dbg !1991

; <label>:326:                                    ; preds = %323
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !1992, metadata !62), !dbg !1994
  call void @llvm.dbg.declare(metadata i32* %32, metadata !1995, metadata !62), !dbg !1996
  %327 = load double, double* %13, align 8, !dbg !1997
  %328 = fptosi double %327 to i32, !dbg !1998
  %329 = load double, double* %7, align 8, !dbg !1999
  %330 = load double, double* %8, align 8, !dbg !2000
  %331 = fsub double -0.000000e+00, %330, !dbg !2001
  %332 = call i32 @hyperg_1F1_a_negint_lag(i32 %328, double %329, double %331, %struct.gsl_sf_result_struct* %31), !dbg !2002
  store i32 %332, i32* %32, align 4, !dbg !1996
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2003, metadata !62), !dbg !2004
  %333 = load double, double* %8, align 8, !dbg !2005
  %334 = load double, double* %8, align 8, !dbg !2006
  %335 = call double @fabs(double %334) #1, !dbg !2007
  %336 = fmul double 0x3CB0000000000000, %335, !dbg !2008
  %337 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !2009
  %338 = load double, double* %337, align 8, !dbg !2009
  %339 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !2010
  %340 = load double, double* %339, align 8, !dbg !2010
  %341 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2011
  %342 = call i32 @gsl_sf_exp_mult_err_e(double %333, double %336, double %338, double %340, %struct.gsl_sf_result_struct* %341), !dbg !2012
  store i32 %342, i32* %33, align 4, !dbg !2004
  %343 = load i32, i32* %33, align 4, !dbg !2014
  %344 = icmp ne i32 %343, 0, !dbg !2014
  br i1 %344, label %345, label %347, !dbg !2014

; <label>:345:                                    ; preds = %326
  %346 = load i32, i32* %33, align 4, !dbg !2015
  br label %355, !dbg !2015

; <label>:347:                                    ; preds = %326
  %348 = load i32, i32* %32, align 4, !dbg !2016
  %349 = icmp ne i32 %348, 0, !dbg !2016
  br i1 %349, label %350, label %352, !dbg !2016

; <label>:350:                                    ; preds = %347
  %351 = load i32, i32* %32, align 4, !dbg !2018
  br label %353, !dbg !2018

; <label>:352:                                    ; preds = %347
  br label %353, !dbg !2020

; <label>:353:                                    ; preds = %352, %350
  %354 = phi i32 [ %351, %350 ], [ 0, %352 ], !dbg !2022
  br label %355, !dbg !2022

; <label>:355:                                    ; preds = %353, %345
  %356 = phi i32 [ %346, %345 ], [ %354, %353 ], !dbg !2024
  store i32 %356, i32* %5, align 4, !dbg !2026
  br label %507, !dbg !2026

; <label>:357:                                    ; preds = %323
  %358 = load double, double* %6, align 8, !dbg !2027
  %359 = fcmp olt double %358, 0.000000e+00, !dbg !2029
  br i1 %359, label %360, label %396, !dbg !2030

; <label>:360:                                    ; preds = %357
  %361 = load double, double* %8, align 8, !dbg !2031
  %362 = call double @fabs(double %361) #1, !dbg !2033
  %363 = fcmp olt double %362, 0x40962E42FEFA39EF, !dbg !2034
  br i1 %363, label %364, label %396, !dbg !2035

; <label>:364:                                    ; preds = %360
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !2036, metadata !62), !dbg !2038
  call void @llvm.dbg.declare(metadata i32* %35, metadata !2039, metadata !62), !dbg !2040
  %365 = load double, double* %7, align 8, !dbg !2041
  %366 = load double, double* %6, align 8, !dbg !2042
  %367 = fsub double %365, %366, !dbg !2043
  %368 = load double, double* %7, align 8, !dbg !2044
  %369 = load double, double* %8, align 8, !dbg !2045
  %370 = fsub double -0.000000e+00, %369, !dbg !2046
  %371 = call i32 @hyperg_1F1_ab_pos(double %367, double %368, double %370, %struct.gsl_sf_result_struct* %34), !dbg !2047
  store i32 %371, i32* %35, align 4, !dbg !2040
  call void @llvm.dbg.declare(metadata i32* %36, metadata !2048, metadata !62), !dbg !2049
  %372 = load double, double* %8, align 8, !dbg !2050
  %373 = load double, double* %8, align 8, !dbg !2051
  %374 = call double @fabs(double %373) #1, !dbg !2052
  %375 = fmul double 0x3CB0000000000000, %374, !dbg !2053
  %376 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !2054
  %377 = load double, double* %376, align 8, !dbg !2054
  %378 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !2055
  %379 = load double, double* %378, align 8, !dbg !2055
  %380 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2056
  %381 = call i32 @gsl_sf_exp_mult_err_e(double %372, double %375, double %377, double %379, %struct.gsl_sf_result_struct* %380), !dbg !2057
  store i32 %381, i32* %36, align 4, !dbg !2049
  %382 = load i32, i32* %36, align 4, !dbg !2059
  %383 = icmp ne i32 %382, 0, !dbg !2059
  br i1 %383, label %384, label %386, !dbg !2059

; <label>:384:                                    ; preds = %364
  %385 = load i32, i32* %36, align 4, !dbg !2060
  br label %394, !dbg !2060

; <label>:386:                                    ; preds = %364
  %387 = load i32, i32* %35, align 4, !dbg !2061
  %388 = icmp ne i32 %387, 0, !dbg !2061
  br i1 %388, label %389, label %391, !dbg !2061

; <label>:389:                                    ; preds = %386
  %390 = load i32, i32* %35, align 4, !dbg !2063
  br label %392, !dbg !2063

; <label>:391:                                    ; preds = %386
  br label %392, !dbg !2065

; <label>:392:                                    ; preds = %391, %389
  %393 = phi i32 [ %390, %389 ], [ 0, %391 ], !dbg !2067
  br label %394, !dbg !2067

; <label>:394:                                    ; preds = %392, %384
  %395 = phi i32 [ %385, %384 ], [ %393, %392 ], !dbg !2069
  store i32 %395, i32* %5, align 4, !dbg !2071
  br label %507, !dbg !2071

; <label>:396:                                    ; preds = %360, %357
  %397 = load double, double* %6, align 8, !dbg !2072
  %398 = fcmp ogt double %397, 0.000000e+00, !dbg !2074
  br i1 %398, label %399, label %405, !dbg !2075

; <label>:399:                                    ; preds = %396
  %400 = load double, double* %6, align 8, !dbg !2076
  %401 = load double, double* %7, align 8, !dbg !2078
  %402 = load double, double* %8, align 8, !dbg !2079
  %403 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2080
  %404 = call i32 @hyperg_1F1_ab_pos(double %400, double %401, double %402, %struct.gsl_sf_result_struct* %403), !dbg !2081
  store i32 %404, i32* %5, align 4, !dbg !2082
  br label %507, !dbg !2082

; <label>:405:                                    ; preds = %396
  %406 = load double, double* %6, align 8, !dbg !2083
  %407 = load double, double* %7, align 8, !dbg !2085
  %408 = load double, double* %8, align 8, !dbg !2086
  %409 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2087
  %410 = call i32 @gsl_sf_hyperg_1F1_series_e(double %406, double %407, double %408, %struct.gsl_sf_result_struct* %409), !dbg !2088
  store i32 %410, i32* %5, align 4, !dbg !2089
  br label %507, !dbg !2089

; <label>:411:                                    ; preds = %308
  %412 = load i32, i32* %19, align 4, !dbg !2090
  %413 = icmp ne i32 %412, 0, !dbg !2090
  br i1 %413, label %414, label %459, !dbg !2093

; <label>:414:                                    ; preds = %411
  %415 = load double, double* %8, align 8, !dbg !2094
  %416 = fcmp olt double %415, 0.000000e+00, !dbg !2096
  br i1 %416, label %417, label %459, !dbg !2097

; <label>:417:                                    ; preds = %414
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %37, metadata !2098, metadata !62), !dbg !2100
  call void @llvm.dbg.declare(metadata i32* %38, metadata !2101, metadata !62), !dbg !2102
  call void @llvm.dbg.declare(metadata i32* %39, metadata !2103, metadata !62), !dbg !2104
  %418 = load double, double* %6, align 8, !dbg !2105
  %419 = fcmp olt double %418, 0.000000e+00, !dbg !2107
  br i1 %419, label %420, label %427, !dbg !2108

; <label>:420:                                    ; preds = %417
  %421 = load double, double* %13, align 8, !dbg !2109
  %422 = fptosi double %421 to i32, !dbg !2111
  %423 = load double, double* %7, align 8, !dbg !2112
  %424 = load double, double* %8, align 8, !dbg !2113
  %425 = fsub double -0.000000e+00, %424, !dbg !2114
  %426 = call i32 @hyperg_1F1_a_negint_poly(i32 %422, double %423, double %425, %struct.gsl_sf_result_struct* %37), !dbg !2115
  store i32 %426, i32* %38, align 4, !dbg !2116
  br label %434, !dbg !2117

; <label>:427:                                    ; preds = %417
  %428 = load double, double* %13, align 8, !dbg !2118
  %429 = fptosi double %428 to i32, !dbg !2120
  %430 = load double, double* %7, align 8, !dbg !2121
  %431 = load double, double* %8, align 8, !dbg !2122
  %432 = fsub double -0.000000e+00, %431, !dbg !2123
  %433 = call i32 @hyperg_1F1_a_negint_lag(i32 %429, double %430, double %432, %struct.gsl_sf_result_struct* %37), !dbg !2124
  store i32 %433, i32* %38, align 4, !dbg !2125
  br label %434

; <label>:434:                                    ; preds = %427, %420
  %435 = load double, double* %8, align 8, !dbg !2126
  %436 = load double, double* %8, align 8, !dbg !2127
  %437 = call double @fabs(double %436) #1, !dbg !2128
  %438 = fmul double 0x3CB0000000000000, %437, !dbg !2129
  %439 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !2130
  %440 = load double, double* %439, align 8, !dbg !2130
  %441 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !2131
  %442 = load double, double* %441, align 8, !dbg !2131
  %443 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2132
  %444 = call i32 @gsl_sf_exp_mult_err_e(double %435, double %438, double %440, double %442, %struct.gsl_sf_result_struct* %443), !dbg !2133
  store i32 %444, i32* %39, align 4, !dbg !2135
  %445 = load i32, i32* %39, align 4, !dbg !2136
  %446 = icmp ne i32 %445, 0, !dbg !2136
  br i1 %446, label %447, label %449, !dbg !2136

; <label>:447:                                    ; preds = %434
  %448 = load i32, i32* %39, align 4, !dbg !2137
  br label %457, !dbg !2137

; <label>:449:                                    ; preds = %434
  %450 = load i32, i32* %38, align 4, !dbg !2138
  %451 = icmp ne i32 %450, 0, !dbg !2138
  br i1 %451, label %452, label %454, !dbg !2138

; <label>:452:                                    ; preds = %449
  %453 = load i32, i32* %38, align 4, !dbg !2140
  br label %455, !dbg !2140

; <label>:454:                                    ; preds = %449
  br label %455, !dbg !2142

; <label>:455:                                    ; preds = %454, %452
  %456 = phi i32 [ %453, %452 ], [ 0, %454 ], !dbg !2144
  br label %457, !dbg !2144

; <label>:457:                                    ; preds = %455, %447
  %458 = phi i32 [ %448, %447 ], [ %456, %455 ], !dbg !2146
  store i32 %458, i32* %5, align 4, !dbg !2148
  br label %507, !dbg !2148

; <label>:459:                                    ; preds = %414, %411
  %460 = load double, double* %6, align 8, !dbg !2149
  %461 = fcmp ogt double %460, 0.000000e+00, !dbg !2151
  br i1 %461, label %462, label %494, !dbg !2152

; <label>:462:                                    ; preds = %459
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %40, metadata !2153, metadata !62), !dbg !2155
  call void @llvm.dbg.declare(metadata i32* %41, metadata !2156, metadata !62), !dbg !2157
  %463 = load double, double* %7, align 8, !dbg !2158
  %464 = load double, double* %6, align 8, !dbg !2159
  %465 = fsub double %463, %464, !dbg !2160
  %466 = load double, double* %7, align 8, !dbg !2161
  %467 = load double, double* %8, align 8, !dbg !2162
  %468 = fsub double -0.000000e+00, %467, !dbg !2163
  %469 = call i32 @hyperg_1F1_ab_neg(double %465, double %466, double %468, %struct.gsl_sf_result_struct* %40), !dbg !2164
  store i32 %469, i32* %41, align 4, !dbg !2157
  call void @llvm.dbg.declare(metadata i32* %42, metadata !2165, metadata !62), !dbg !2166
  %470 = load double, double* %8, align 8, !dbg !2167
  %471 = load double, double* %8, align 8, !dbg !2168
  %472 = call double @fabs(double %471) #1, !dbg !2169
  %473 = fmul double 0x3CB0000000000000, %472, !dbg !2170
  %474 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !2171
  %475 = load double, double* %474, align 8, !dbg !2171
  %476 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !2172
  %477 = load double, double* %476, align 8, !dbg !2172
  %478 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2173
  %479 = call i32 @gsl_sf_exp_mult_err_e(double %470, double %473, double %475, double %477, %struct.gsl_sf_result_struct* %478), !dbg !2174
  store i32 %479, i32* %42, align 4, !dbg !2166
  %480 = load i32, i32* %42, align 4, !dbg !2176
  %481 = icmp ne i32 %480, 0, !dbg !2176
  br i1 %481, label %482, label %484, !dbg !2176

; <label>:482:                                    ; preds = %462
  %483 = load i32, i32* %42, align 4, !dbg !2177
  br label %492, !dbg !2177

; <label>:484:                                    ; preds = %462
  %485 = load i32, i32* %41, align 4, !dbg !2178
  %486 = icmp ne i32 %485, 0, !dbg !2178
  br i1 %486, label %487, label %489, !dbg !2178

; <label>:487:                                    ; preds = %484
  %488 = load i32, i32* %41, align 4, !dbg !2180
  br label %490, !dbg !2180

; <label>:489:                                    ; preds = %484
  br label %490, !dbg !2182

; <label>:490:                                    ; preds = %489, %487
  %491 = phi i32 [ %488, %487 ], [ 0, %489 ], !dbg !2184
  br label %492, !dbg !2184

; <label>:492:                                    ; preds = %490, %482
  %493 = phi i32 [ %483, %482 ], [ %491, %490 ], !dbg !2186
  store i32 %493, i32* %5, align 4, !dbg !2188
  br label %507, !dbg !2188

; <label>:494:                                    ; preds = %459
  %495 = load double, double* %6, align 8, !dbg !2189
  %496 = load double, double* %7, align 8, !dbg !2191
  %497 = load double, double* %8, align 8, !dbg !2192
  %498 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2193
  %499 = call i32 @hyperg_1F1_ab_neg(double %495, double %496, double %497, %struct.gsl_sf_result_struct* %498), !dbg !2194
  store i32 %499, i32* %5, align 4, !dbg !2195
  br label %507, !dbg !2195

; <label>:500:                                    ; preds = %297
  br label %501

; <label>:501:                                    ; preds = %500
  br label %502

; <label>:502:                                    ; preds = %501
  br label %503

; <label>:503:                                    ; preds = %502
  br label %504

; <label>:504:                                    ; preds = %503
  br label %505

; <label>:505:                                    ; preds = %504
  br label %506

; <label>:506:                                    ; preds = %505, %139
  br label %507

; <label>:507:                                    ; preds = %123, %137, %143, %152, %221, %263, %271, %295, %301, %317, %355, %394, %399, %405, %457, %492, %494, %506
  %508 = load i32, i32* %5, align 4, !dbg !2196
  ret i32 %508, !dbg !2196
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare i32 @gsl_sf_expm1_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_renorm_b0(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2197 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  %25 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2200, metadata !62), !dbg !2201
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2202, metadata !62), !dbg !2203
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !2204, metadata !62), !dbg !2205
  call void @llvm.dbg.declare(metadata double* %8, metadata !2206, metadata !62), !dbg !2207
  %26 = load double, double* %5, align 8, !dbg !2208
  %27 = load double, double* %6, align 8, !dbg !2209
  %28 = fmul double %26, %27, !dbg !2210
  store double %28, double* %8, align 8, !dbg !2207
  %29 = load double, double* %8, align 8, !dbg !2211
  %30 = fcmp ogt double %29, 0.000000e+00, !dbg !2213
  br i1 %30, label %31, label %99, !dbg !2214

; <label>:31:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %9, metadata !2215, metadata !62), !dbg !2217
  %32 = load double, double* %8, align 8, !dbg !2218
  %33 = call double @sqrt(double %32) #5, !dbg !2219
  store double %33, double* %9, align 8, !dbg !2217
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !2220, metadata !62), !dbg !2221
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2222, metadata !62), !dbg !2223
  %34 = load double, double* %9, align 8, !dbg !2224
  %35 = fmul double 2.000000e+00, %34, !dbg !2225
  %36 = call i32 @gsl_sf_bessel_I1_scaled_e(double %35, %struct.gsl_sf_result_struct* %10), !dbg !2226
  store i32 %36, i32* %11, align 4, !dbg !2223
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2227
  %38 = load double, double* %37, align 8, !dbg !2227
  %39 = fcmp ole double %38, 0.000000e+00, !dbg !2229
  br i1 %39, label %40, label %52, !dbg !2230

; <label>:40:                                     ; preds = %31
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2231
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !2233
  store double 0.000000e+00, double* %42, align 8, !dbg !2234
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2235
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !2236
  store double 0.000000e+00, double* %44, align 8, !dbg !2237
  %45 = load i32, i32* %11, align 4, !dbg !2238
  %46 = icmp ne i32 %45, 0, !dbg !2238
  br i1 %46, label %47, label %49, !dbg !2238

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* %11, align 4, !dbg !2239
  br label %50, !dbg !2239

; <label>:49:                                     ; preds = %40
  br label %50, !dbg !2241

; <label>:50:                                     ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 1, %49 ], !dbg !2243
  store i32 %51, i32* %4, align 4, !dbg !2245
  br label %173, !dbg !2245

; <label>:52:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata double* %12, metadata !2246, metadata !62), !dbg !2248
  %53 = load double, double* %5, align 8, !dbg !2249
  %54 = fmul double 0x3FE5555555555555, %53, !dbg !2250
  %55 = load double, double* %6, align 8, !dbg !2251
  %56 = load double, double* %5, align 8, !dbg !2252
  %57 = fmul double 4.000000e+00, %56, !dbg !2253
  %58 = fdiv double %55, %57, !dbg !2254
  %59 = call double @pow(double %58, double 1.500000e+00) #5, !dbg !2255
  %60 = fmul double %54, %59, !dbg !2256
  %61 = load double, double* %9, align 8, !dbg !2257
  %62 = fmul double 2.000000e+00, %61, !dbg !2258
  %63 = call double @gsl_sf_bessel_In_scaled(i32 2, double %62), !dbg !2259
  %64 = fmul double %60, %63, !dbg !2261
  store double %64, double* %12, align 8, !dbg !2248
  call void @llvm.dbg.declare(metadata double* %13, metadata !2262, metadata !62), !dbg !2263
  %65 = load double, double* %6, align 8, !dbg !2264
  %66 = fmul double 5.000000e-01, %65, !dbg !2265
  %67 = load double, double* %8, align 8, !dbg !2266
  %68 = call double @log(double %67) #5, !dbg !2267
  %69 = fmul double 5.000000e-01, %68, !dbg !2268
  %70 = fadd double %66, %69, !dbg !2269
  %71 = load double, double* %9, align 8, !dbg !2270
  %72 = fmul double 2.000000e+00, %71, !dbg !2271
  %73 = call double @fabs(double %72) #1, !dbg !2272
  %74 = fadd double %70, %73, !dbg !2273
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2274
  %76 = load double, double* %75, align 8, !dbg !2274
  %77 = load double, double* %12, align 8, !dbg !2275
  %78 = fadd double %76, %77, !dbg !2276
  %79 = call double @log(double %78) #5, !dbg !2277
  %80 = fadd double %74, %79, !dbg !2279
  store double %80, double* %13, align 8, !dbg !2263
  call void @llvm.dbg.declare(metadata double* %14, metadata !2280, metadata !62), !dbg !2281
  %81 = load double, double* %6, align 8, !dbg !2282
  %82 = call double @fabs(double %81) #1, !dbg !2283
  %83 = fmul double 1.500000e+00, %82, !dbg !2284
  %84 = fadd double %83, 1.000000e+00, !dbg !2285
  %85 = fmul double 0x3CB0000000000000, %84, !dbg !2286
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !2287
  %87 = load double, double* %86, align 8, !dbg !2287
  %88 = load double, double* %12, align 8, !dbg !2288
  %89 = fadd double %87, %88, !dbg !2289
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2290
  %91 = load double, double* %90, align 8, !dbg !2290
  %92 = fdiv double %89, %91, !dbg !2291
  %93 = call double @fabs(double %92) #1, !dbg !2292
  %94 = fadd double %85, %93, !dbg !2293
  store double %94, double* %14, align 8, !dbg !2281
  %95 = load double, double* %13, align 8, !dbg !2294
  %96 = load double, double* %14, align 8, !dbg !2295
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2296
  %98 = call i32 @gsl_sf_exp_err_e(double %95, double %96, %struct.gsl_sf_result_struct* %97), !dbg !2297
  store i32 %98, i32* %4, align 4, !dbg !2298
  br label %173, !dbg !2298

; <label>:99:                                     ; preds = %3
  %100 = load double, double* %8, align 8, !dbg !2299
  %101 = fcmp oeq double %100, 0.000000e+00, !dbg !2301
  br i1 %101, label %102, label %107, !dbg !2302

; <label>:102:                                    ; preds = %99
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2303
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !2305
  store double 0.000000e+00, double* %104, align 8, !dbg !2306
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2307
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 1, !dbg !2308
  store double 0.000000e+00, double* %106, align 8, !dbg !2309
  store i32 0, i32* %4, align 4, !dbg !2310
  br label %173, !dbg !2310

; <label>:107:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata double* %15, metadata !2311, metadata !62), !dbg !2313
  %108 = load double, double* %8, align 8, !dbg !2314
  %109 = fsub double -0.000000e+00, %108, !dbg !2315
  %110 = call double @sqrt(double %109) #5, !dbg !2316
  store double %110, double* %15, align 8, !dbg !2313
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !2317, metadata !62), !dbg !2318
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2319, metadata !62), !dbg !2320
  %111 = load double, double* %15, align 8, !dbg !2321
  %112 = fmul double 2.000000e+00, %111, !dbg !2322
  %113 = call i32 @gsl_sf_bessel_J1_e(double %112, %struct.gsl_sf_result_struct* %16), !dbg !2323
  store i32 %113, i32* %17, align 4, !dbg !2320
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !2324
  %115 = load double, double* %114, align 8, !dbg !2324
  %116 = fcmp ole double %115, 0.000000e+00, !dbg !2326
  br i1 %116, label %117, label %129, !dbg !2327

; <label>:117:                                    ; preds = %107
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2328
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 0, !dbg !2330
  store double 0.000000e+00, double* %119, align 8, !dbg !2331
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2332
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 1, !dbg !2333
  store double 0.000000e+00, double* %121, align 8, !dbg !2334
  %122 = load i32, i32* %17, align 4, !dbg !2335
  %123 = icmp ne i32 %122, 0, !dbg !2335
  br i1 %123, label %124, label %126, !dbg !2335

; <label>:124:                                    ; preds = %117
  %125 = load i32, i32* %17, align 4, !dbg !2336
  br label %127, !dbg !2336

; <label>:126:                                    ; preds = %117
  br label %127, !dbg !2338

; <label>:127:                                    ; preds = %126, %124
  %128 = phi i32 [ %125, %124 ], [ 1, %126 ], !dbg !2340
  store i32 %128, i32* %4, align 4, !dbg !2342
  br label %173, !dbg !2342

; <label>:129:                                    ; preds = %107
  call void @llvm.dbg.declare(metadata double* %18, metadata !2343, metadata !62), !dbg !2345
  %130 = load double, double* %6, align 8, !dbg !2346
  %131 = fmul double 5.000000e-01, %130, !dbg !2347
  store double %131, double* %18, align 8, !dbg !2345
  call void @llvm.dbg.declare(metadata double* %19, metadata !2348, metadata !62), !dbg !2349
  %132 = load double, double* %8, align 8, !dbg !2350
  %133 = fsub double -0.000000e+00, %132, !dbg !2351
  %134 = call double @log(double %133) #5, !dbg !2352
  %135 = fmul double 5.000000e-01, %134, !dbg !2353
  store double %135, double* %19, align 8, !dbg !2349
  call void @llvm.dbg.declare(metadata double* %20, metadata !2354, metadata !62), !dbg !2355
  %136 = load double, double* %6, align 8, !dbg !2356
  %137 = call double @fabs(double %136) #1, !dbg !2357
  store double %137, double* %20, align 8, !dbg !2355
  call void @llvm.dbg.declare(metadata double* %21, metadata !2358, metadata !62), !dbg !2359
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !2360
  %139 = load double, double* %138, align 8, !dbg !2360
  %140 = call double @log(double %139) #5, !dbg !2361
  store double %140, double* %21, align 8, !dbg !2359
  call void @llvm.dbg.declare(metadata double* %22, metadata !2362, metadata !62), !dbg !2363
  %141 = load double, double* %18, align 8, !dbg !2364
  %142 = load double, double* %19, align 8, !dbg !2365
  %143 = fadd double %141, %142, !dbg !2366
  %144 = load double, double* %20, align 8, !dbg !2367
  %145 = fadd double %143, %144, !dbg !2368
  %146 = load double, double* %21, align 8, !dbg !2369
  %147 = fadd double %145, %146, !dbg !2370
  store double %147, double* %22, align 8, !dbg !2363
  call void @llvm.dbg.declare(metadata double* %23, metadata !2371, metadata !62), !dbg !2372
  %148 = load double, double* %6, align 8, !dbg !2373
  %149 = call double @fabs(double %148) #1, !dbg !2374
  %150 = fmul double 1.500000e+00, %149, !dbg !2375
  %151 = fadd double %150, 1.000000e+00, !dbg !2376
  %152 = fmul double 0x3CB0000000000000, %151, !dbg !2377
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !2378
  %154 = load double, double* %153, align 8, !dbg !2378
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !2379
  %156 = load double, double* %155, align 8, !dbg !2379
  %157 = fdiv double %154, %156, !dbg !2380
  %158 = call double @fabs(double %157) #1, !dbg !2381
  %159 = fadd double %152, %158, !dbg !2383
  store double %159, double* %23, align 8, !dbg !2372
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !2384, metadata !62), !dbg !2385
  call void @llvm.dbg.declare(metadata i32* %25, metadata !2386, metadata !62), !dbg !2387
  %160 = load double, double* %22, align 8, !dbg !2388
  %161 = load double, double* %23, align 8, !dbg !2389
  %162 = call i32 @gsl_sf_exp_err_e(double %160, double %161, %struct.gsl_sf_result_struct* %24), !dbg !2390
  store i32 %162, i32* %25, align 4, !dbg !2387
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !2391
  %164 = load double, double* %163, align 8, !dbg !2391
  %165 = fsub double -0.000000e+00, %164, !dbg !2392
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2393
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 0, !dbg !2394
  store double %165, double* %167, align 8, !dbg !2395
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !2396
  %169 = load double, double* %168, align 8, !dbg !2396
  %170 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2397
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %170, i32 0, i32 1, !dbg !2398
  store double %169, double* %171, align 8, !dbg !2399
  %172 = load i32, i32* %25, align 4, !dbg !2400
  store i32 %172, i32* %4, align 4, !dbg !2401
  br label %173, !dbg !2401

; <label>:173:                                    ; preds = %129, %127, %102, %52, %50
  %174 = load i32, i32* %4, align 4, !dbg !2402
  ret i32 %174, !dbg !2402
}

declare i32 @gsl_sf_multiply_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_a_negint_lag(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2403 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2406, metadata !62), !dbg !2407
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2408, metadata !62), !dbg !2409
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2410, metadata !62), !dbg !2411
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !2412, metadata !62), !dbg !2413
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2414, metadata !62), !dbg !2415
  %34 = load i32, i32* %6, align 4, !dbg !2416
  %35 = sub nsw i32 0, %34, !dbg !2417
  store i32 %35, i32* %10, align 4, !dbg !2415
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !2418, metadata !62), !dbg !2419
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2420, metadata !62), !dbg !2421
  %36 = load i32, i32* %10, align 4, !dbg !2422
  %37 = load double, double* %7, align 8, !dbg !2423
  %38 = fsub double %37, 1.000000e+00, !dbg !2424
  %39 = load double, double* %8, align 8, !dbg !2425
  %40 = call i32 @gsl_sf_laguerre_n_e(i32 %36, double %38, double %39, %struct.gsl_sf_result_struct* %11), !dbg !2426
  store i32 %40, i32* %12, align 4, !dbg !2421
  %41 = load double, double* %7, align 8, !dbg !2427
  %42 = fcmp olt double %41, 0.000000e+00, !dbg !2429
  br i1 %42, label %43, label %120, !dbg !2430

; <label>:43:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !2431, metadata !62), !dbg !2433
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !2434, metadata !62), !dbg !2435
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !2436, metadata !62), !dbg !2437
  call void @llvm.dbg.declare(metadata double* %16, metadata !2438, metadata !62), !dbg !2439
  call void @llvm.dbg.declare(metadata double* %17, metadata !2440, metadata !62), !dbg !2441
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2442, metadata !62), !dbg !2443
  %44 = load i32, i32* %10, align 4, !dbg !2444
  %45 = call i32 @gsl_sf_lnfact_e(i32 %44, %struct.gsl_sf_result_struct* %13), !dbg !2445
  store i32 %45, i32* %18, align 4, !dbg !2443
  call void @llvm.dbg.declare(metadata i32* %19, metadata !2446, metadata !62), !dbg !2447
  %46 = load double, double* %7, align 8, !dbg !2448
  %47 = load i32, i32* %10, align 4, !dbg !2449
  %48 = sitofp i32 %47 to double, !dbg !2449
  %49 = fadd double %46, %48, !dbg !2450
  %50 = call i32 @gsl_sf_lngamma_sgn_e(double %49, %struct.gsl_sf_result_struct* %14, double* %16), !dbg !2451
  store i32 %50, i32* %19, align 4, !dbg !2447
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2452, metadata !62), !dbg !2453
  %51 = load double, double* %7, align 8, !dbg !2454
  %52 = call i32 @gsl_sf_lngamma_sgn_e(double %51, %struct.gsl_sf_result_struct* %15, double* %17), !dbg !2455
  store i32 %52, i32* %20, align 4, !dbg !2453
  call void @llvm.dbg.declare(metadata double* %21, metadata !2456, metadata !62), !dbg !2457
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !2458
  %54 = load double, double* %53, align 8, !dbg !2458
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !2459
  %56 = load double, double* %55, align 8, !dbg !2459
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !2460
  %58 = load double, double* %57, align 8, !dbg !2460
  %59 = fsub double %56, %58, !dbg !2461
  %60 = fsub double %54, %59, !dbg !2462
  store double %60, double* %21, align 8, !dbg !2457
  call void @llvm.dbg.declare(metadata double* %22, metadata !2463, metadata !62), !dbg !2464
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !2465
  %62 = load double, double* %61, align 8, !dbg !2465
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !2466
  %64 = load double, double* %63, align 8, !dbg !2466
  %65 = fadd double %62, %64, !dbg !2467
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !2468
  %67 = load double, double* %66, align 8, !dbg !2468
  %68 = fadd double %65, %67, !dbg !2469
  %69 = load double, double* %21, align 8, !dbg !2470
  %70 = call double @fabs(double %69) #1, !dbg !2471
  %71 = fmul double 0x3CC0000000000000, %70, !dbg !2472
  %72 = fadd double %68, %71, !dbg !2473
  store double %72, double* %22, align 8, !dbg !2464
  call void @llvm.dbg.declare(metadata i32* %23, metadata !2474, metadata !62), !dbg !2475
  %73 = load double, double* %21, align 8, !dbg !2476
  %74 = load double, double* %22, align 8, !dbg !2477
  %75 = load double, double* %16, align 8, !dbg !2478
  %76 = load double, double* %17, align 8, !dbg !2479
  %77 = fmul double %75, %76, !dbg !2480
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !2481
  %79 = load double, double* %78, align 8, !dbg !2481
  %80 = fmul double %77, %79, !dbg !2482
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !2483
  %82 = load double, double* %81, align 8, !dbg !2483
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2484
  %84 = call i32 @gsl_sf_exp_mult_err_e(double %73, double %74, double %80, double %82, %struct.gsl_sf_result_struct* %83), !dbg !2485
  store i32 %84, i32* %23, align 4, !dbg !2475
  %85 = load i32, i32* %23, align 4, !dbg !2486
  %86 = icmp ne i32 %85, 0, !dbg !2486
  br i1 %86, label %87, label %89, !dbg !2486

; <label>:87:                                     ; preds = %43
  %88 = load i32, i32* %23, align 4, !dbg !2487
  br label %118, !dbg !2487

; <label>:89:                                     ; preds = %43
  %90 = load i32, i32* %12, align 4, !dbg !2489
  %91 = icmp ne i32 %90, 0, !dbg !2489
  br i1 %91, label %92, label %94, !dbg !2489

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* %12, align 4, !dbg !2491
  br label %116, !dbg !2491

; <label>:94:                                     ; preds = %89
  %95 = load i32, i32* %19, align 4, !dbg !2493
  %96 = icmp ne i32 %95, 0, !dbg !2493
  br i1 %96, label %97, label %99, !dbg !2493

; <label>:97:                                     ; preds = %94
  %98 = load i32, i32* %19, align 4, !dbg !2495
  br label %114, !dbg !2495

; <label>:99:                                     ; preds = %94
  %100 = load i32, i32* %20, align 4, !dbg !2497
  %101 = icmp ne i32 %100, 0, !dbg !2497
  br i1 %101, label %102, label %104, !dbg !2497

; <label>:102:                                    ; preds = %99
  %103 = load i32, i32* %20, align 4, !dbg !2499
  br label %112, !dbg !2499

; <label>:104:                                    ; preds = %99
  %105 = load i32, i32* %18, align 4, !dbg !2501
  %106 = icmp ne i32 %105, 0, !dbg !2501
  br i1 %106, label %107, label %109, !dbg !2501

; <label>:107:                                    ; preds = %104
  %108 = load i32, i32* %18, align 4, !dbg !2503
  br label %110, !dbg !2503

; <label>:109:                                    ; preds = %104
  br label %110, !dbg !2505

; <label>:110:                                    ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ], !dbg !2507
  br label %112, !dbg !2507

; <label>:112:                                    ; preds = %110, %102
  %113 = phi i32 [ %103, %102 ], [ %111, %110 ], !dbg !2509
  br label %114, !dbg !2509

; <label>:114:                                    ; preds = %112, %97
  %115 = phi i32 [ %98, %97 ], [ %113, %112 ], !dbg !2511
  br label %116, !dbg !2511

; <label>:116:                                    ; preds = %114, %92
  %117 = phi i32 [ %93, %92 ], [ %115, %114 ], !dbg !2513
  br label %118, !dbg !2513

; <label>:118:                                    ; preds = %116, %87
  %119 = phi i32 [ %88, %87 ], [ %117, %116 ], !dbg !2515
  store i32 %119, i32* %5, align 4, !dbg !2517
  br label %219, !dbg !2517

; <label>:120:                                    ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !2518, metadata !62), !dbg !2520
  %121 = load double, double* %7, align 8, !dbg !2521
  %122 = load i32, i32* %10, align 4, !dbg !2522
  %123 = sitofp i32 %122 to double, !dbg !2522
  %124 = call i32 @gsl_sf_lnbeta_e(double %121, double %123, %struct.gsl_sf_result_struct* %24), !dbg !2523
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !2524
  %126 = load double, double* %125, align 8, !dbg !2524
  %127 = call double @fabs(double %126) #1, !dbg !2526
  %128 = fcmp olt double %127, 1.000000e-01, !dbg !2527
  br i1 %128, label %129, label %183, !dbg !2528

; <label>:129:                                    ; preds = %120
  call void @llvm.dbg.declare(metadata double* %25, metadata !2529, metadata !62), !dbg !2531
  %130 = load i32, i32* %10, align 4, !dbg !2532
  %131 = sitofp i32 %130 to double, !dbg !2532
  %132 = fmul double 1.250000e+00, %131, !dbg !2533
  %133 = call double @log(double %132) #5, !dbg !2534
  store double %133, double* %25, align 8, !dbg !2531
  call void @llvm.dbg.declare(metadata double* %26, metadata !2535, metadata !62), !dbg !2536
  %134 = load double, double* %25, align 8, !dbg !2537
  %135 = fmul double 0x3CC0000000000000, %134, !dbg !2538
  store double %135, double* %26, align 8, !dbg !2536
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !2539, metadata !62), !dbg !2540
  call void @llvm.dbg.declare(metadata i32* %28, metadata !2541, metadata !62), !dbg !2542
  %136 = load double, double* %7, align 8, !dbg !2543
  %137 = load i32, i32* %10, align 4, !dbg !2544
  %138 = sitofp i32 %137 to double, !dbg !2544
  %139 = call i32 @gsl_sf_beta_e(double %136, double %138, %struct.gsl_sf_result_struct* %27), !dbg !2545
  store i32 %139, i32* %28, align 4, !dbg !2542
  call void @llvm.dbg.declare(metadata i32* %29, metadata !2546, metadata !62), !dbg !2547
  %140 = load double, double* %25, align 8, !dbg !2548
  %141 = load double, double* %26, align 8, !dbg !2549
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !2550
  %143 = load double, double* %142, align 8, !dbg !2550
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !2551
  %145 = load double, double* %144, align 8, !dbg !2551
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2552
  %147 = call i32 @gsl_sf_exp_mult_err_e(double %140, double %141, double %143, double %145, %struct.gsl_sf_result_struct* %146), !dbg !2553
  store i32 %147, i32* %29, align 4, !dbg !2547
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !2554
  %149 = load double, double* %148, align 8, !dbg !2554
  %150 = fdiv double %149, 1.250000e+00, !dbg !2555
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2556
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 0, !dbg !2557
  %153 = load double, double* %152, align 8, !dbg !2558
  %154 = fmul double %153, %150, !dbg !2558
  store double %154, double* %152, align 8, !dbg !2558
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !2559
  %156 = load double, double* %155, align 8, !dbg !2559
  %157 = fdiv double %156, 1.250000e+00, !dbg !2560
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2561
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 1, !dbg !2562
  %160 = load double, double* %159, align 8, !dbg !2563
  %161 = fmul double %160, %157, !dbg !2563
  store double %161, double* %159, align 8, !dbg !2563
  %162 = load i32, i32* %29, align 4, !dbg !2564
  %163 = icmp ne i32 %162, 0, !dbg !2564
  br i1 %163, label %164, label %166, !dbg !2564

; <label>:164:                                    ; preds = %129
  %165 = load i32, i32* %29, align 4, !dbg !2565
  br label %181, !dbg !2565

; <label>:166:                                    ; preds = %129
  %167 = load i32, i32* %12, align 4, !dbg !2567
  %168 = icmp ne i32 %167, 0, !dbg !2567
  br i1 %168, label %169, label %171, !dbg !2567

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* %12, align 4, !dbg !2569
  br label %179, !dbg !2569

; <label>:171:                                    ; preds = %166
  %172 = load i32, i32* %28, align 4, !dbg !2571
  %173 = icmp ne i32 %172, 0, !dbg !2571
  br i1 %173, label %174, label %176, !dbg !2571

; <label>:174:                                    ; preds = %171
  %175 = load i32, i32* %28, align 4, !dbg !2573
  br label %177, !dbg !2573

; <label>:176:                                    ; preds = %171
  br label %177, !dbg !2575

; <label>:177:                                    ; preds = %176, %174
  %178 = phi i32 [ %175, %174 ], [ 0, %176 ], !dbg !2577
  br label %179, !dbg !2577

; <label>:179:                                    ; preds = %177, %169
  %180 = phi i32 [ %170, %169 ], [ %178, %177 ], !dbg !2579
  br label %181, !dbg !2579

; <label>:181:                                    ; preds = %179, %164
  %182 = phi i32 [ %165, %164 ], [ %180, %179 ], !dbg !2581
  store i32 %182, i32* %5, align 4, !dbg !2583
  br label %219, !dbg !2583

; <label>:183:                                    ; preds = %120
  call void @llvm.dbg.declare(metadata double* %30, metadata !2584, metadata !62), !dbg !2586
  %184 = load i32, i32* %10, align 4, !dbg !2587
  %185 = sitofp i32 %184 to double, !dbg !2587
  %186 = call double @log(double %185) #5, !dbg !2588
  store double %186, double* %30, align 8, !dbg !2586
  call void @llvm.dbg.declare(metadata double* %31, metadata !2589, metadata !62), !dbg !2590
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !2591
  %188 = load double, double* %187, align 8, !dbg !2591
  %189 = load double, double* %30, align 8, !dbg !2592
  %190 = fadd double %188, %189, !dbg !2593
  store double %190, double* %31, align 8, !dbg !2590
  call void @llvm.dbg.declare(metadata double* %32, metadata !2594, metadata !62), !dbg !2595
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !2596
  %192 = load double, double* %191, align 8, !dbg !2596
  %193 = load double, double* %30, align 8, !dbg !2597
  %194 = call double @fabs(double %193) #1, !dbg !2598
  %195 = fmul double 0x3CC0000000000000, %194, !dbg !2599
  %196 = fadd double %192, %195, !dbg !2600
  store double %196, double* %32, align 8, !dbg !2595
  call void @llvm.dbg.declare(metadata i32* %33, metadata !2601, metadata !62), !dbg !2602
  %197 = load double, double* %31, align 8, !dbg !2603
  %198 = load double, double* %32, align 8, !dbg !2604
  %199 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !2605
  %200 = load double, double* %199, align 8, !dbg !2605
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !2606
  %202 = load double, double* %201, align 8, !dbg !2606
  %203 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2607
  %204 = call i32 @gsl_sf_exp_mult_err_e(double %197, double %198, double %200, double %202, %struct.gsl_sf_result_struct* %203), !dbg !2608
  store i32 %204, i32* %33, align 4, !dbg !2602
  %205 = load i32, i32* %33, align 4, !dbg !2609
  %206 = icmp ne i32 %205, 0, !dbg !2609
  br i1 %206, label %207, label %209, !dbg !2609

; <label>:207:                                    ; preds = %183
  %208 = load i32, i32* %33, align 4, !dbg !2610
  br label %217, !dbg !2610

; <label>:209:                                    ; preds = %183
  %210 = load i32, i32* %12, align 4, !dbg !2612
  %211 = icmp ne i32 %210, 0, !dbg !2612
  br i1 %211, label %212, label %214, !dbg !2612

; <label>:212:                                    ; preds = %209
  %213 = load i32, i32* %12, align 4, !dbg !2614
  br label %215, !dbg !2614

; <label>:214:                                    ; preds = %209
  br label %215, !dbg !2616

; <label>:215:                                    ; preds = %214, %212
  %216 = phi i32 [ %213, %212 ], [ 0, %214 ], !dbg !2618
  br label %217, !dbg !2618

; <label>:217:                                    ; preds = %215, %207
  %218 = phi i32 [ %208, %207 ], [ %216, %215 ], !dbg !2620
  store i32 %218, i32* %5, align 4, !dbg !2622
  br label %219, !dbg !2622

; <label>:219:                                    ; preds = %217, %181, %118
  %220 = load i32, i32* %5, align 4, !dbg !2623
  ret i32 %220, !dbg !2623
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_small_a_bgt0(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2624 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2625, metadata !62), !dbg !2626
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2627, metadata !62), !dbg !2628
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2629, metadata !62), !dbg !2630
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !2631, metadata !62), !dbg !2632
  call void @llvm.dbg.declare(metadata double* %10, metadata !2633, metadata !62), !dbg !2634
  %27 = load double, double* %7, align 8, !dbg !2635
  %28 = load double, double* %6, align 8, !dbg !2636
  %29 = fsub double %27, %28, !dbg !2637
  store double %29, double* %10, align 8, !dbg !2634
  call void @llvm.dbg.declare(metadata double* %11, metadata !2638, metadata !62), !dbg !2639
  %30 = load double, double* %6, align 8, !dbg !2640
  %31 = fsub double 1.000000e+00, %30, !dbg !2641
  store double %31, double* %11, align 8, !dbg !2639
  call void @llvm.dbg.declare(metadata double* %12, metadata !2642, metadata !62), !dbg !2643
  %32 = load double, double* %6, align 8, !dbg !2644
  %33 = fadd double 1.000000e+00, %32, !dbg !2645
  %34 = load double, double* %7, align 8, !dbg !2646
  %35 = fsub double %33, %34, !dbg !2647
  store double %35, double* %12, align 8, !dbg !2643
  call void @llvm.dbg.declare(metadata double* %13, metadata !2648, metadata !62), !dbg !2649
  %36 = load double, double* %10, align 8, !dbg !2650
  %37 = call double @fabs(double %36) #1, !dbg !2651
  store double %37, double* %13, align 8, !dbg !2649
  call void @llvm.dbg.declare(metadata double* %14, metadata !2652, metadata !62), !dbg !2653
  %38 = load double, double* %11, align 8, !dbg !2654
  %39 = call double @fabs(double %38) #1, !dbg !2655
  store double %39, double* %14, align 8, !dbg !2653
  call void @llvm.dbg.declare(metadata double* %15, metadata !2656, metadata !62), !dbg !2657
  %40 = load double, double* %12, align 8, !dbg !2658
  %41 = call double @fabs(double %40) #1, !dbg !2659
  store double %41, double* %15, align 8, !dbg !2657
  call void @llvm.dbg.declare(metadata double* %16, metadata !2660, metadata !62), !dbg !2661
  %42 = load double, double* %8, align 8, !dbg !2662
  %43 = call double @fabs(double %42) #1, !dbg !2663
  store double %43, double* %16, align 8, !dbg !2661
  %44 = load double, double* %6, align 8, !dbg !2664
  %45 = fcmp oeq double %44, 0.000000e+00, !dbg !2666
  br i1 %45, label %46, label %51, !dbg !2667

; <label>:46:                                     ; preds = %4
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2668
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !2670
  store double 1.000000e+00, double* %48, align 8, !dbg !2671
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2672
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !2673
  store double 0.000000e+00, double* %50, align 8, !dbg !2674
  store i32 0, i32* %5, align 4, !dbg !2675
  br label %296, !dbg !2675

; <label>:51:                                     ; preds = %4
  %52 = load double, double* %6, align 8, !dbg !2676
  %53 = fcmp oeq double %52, 1.000000e+00, !dbg !2678
  br i1 %53, label %54, label %62, !dbg !2679

; <label>:54:                                     ; preds = %51
  %55 = load double, double* %7, align 8, !dbg !2680
  %56 = fcmp oge double %55, 1.000000e+00, !dbg !2682
  br i1 %56, label %57, label %62, !dbg !2683

; <label>:57:                                     ; preds = %54
  %58 = load double, double* %7, align 8, !dbg !2684
  %59 = load double, double* %8, align 8, !dbg !2686
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2687
  %61 = call i32 @hyperg_1F1_1(double %58, double %59, %struct.gsl_sf_result_struct* %60), !dbg !2688
  store i32 %61, i32* %5, align 4, !dbg !2689
  br label %296, !dbg !2689

; <label>:62:                                     ; preds = %54, %51
  %63 = load double, double* %6, align 8, !dbg !2690
  %64 = fcmp oeq double %63, -1.000000e+00, !dbg !2692
  br i1 %64, label %65, label %93, !dbg !2693

; <label>:65:                                     ; preds = %62
  %66 = load double, double* %6, align 8, !dbg !2694
  %67 = load double, double* %7, align 8, !dbg !2696
  %68 = fdiv double %66, %67, !dbg !2697
  %69 = load double, double* %8, align 8, !dbg !2698
  %70 = fmul double %68, %69, !dbg !2699
  %71 = fadd double 1.000000e+00, %70, !dbg !2700
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2701
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !2702
  store double %71, double* %73, align 8, !dbg !2703
  %74 = load double, double* %6, align 8, !dbg !2704
  %75 = load double, double* %7, align 8, !dbg !2705
  %76 = fdiv double %74, %75, !dbg !2706
  %77 = load double, double* %8, align 8, !dbg !2707
  %78 = fmul double %76, %77, !dbg !2708
  %79 = call double @fabs(double %78) #1, !dbg !2709
  %80 = fadd double 1.000000e+00, %79, !dbg !2710
  %81 = fmul double 0x3CB0000000000000, %80, !dbg !2711
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2712
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !2713
  store double %81, double* %83, align 8, !dbg !2714
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2715
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !2716
  %86 = load double, double* %85, align 8, !dbg !2716
  %87 = call double @fabs(double %86) #1, !dbg !2717
  %88 = fmul double 0x3CC0000000000000, %87, !dbg !2718
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2719
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !2720
  %91 = load double, double* %90, align 8, !dbg !2721
  %92 = fadd double %91, %88, !dbg !2721
  store double %92, double* %90, align 8, !dbg !2721
  store i32 0, i32* %5, align 4, !dbg !2722
  br label %296, !dbg !2722

; <label>:93:                                     ; preds = %62
  %94 = load double, double* %7, align 8, !dbg !2723
  %95 = load double, double* %16, align 8, !dbg !2725
  %96 = fmul double 1.400000e+00, %95, !dbg !2726
  %97 = fcmp oge double %94, %96, !dbg !2727
  br i1 %97, label %98, label %104, !dbg !2728

; <label>:98:                                     ; preds = %93
  %99 = load double, double* %6, align 8, !dbg !2729
  %100 = load double, double* %7, align 8, !dbg !2731
  %101 = load double, double* %8, align 8, !dbg !2732
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2733
  %103 = call i32 @gsl_sf_hyperg_1F1_series_e(double %99, double %100, double %101, %struct.gsl_sf_result_struct* %102), !dbg !2734
  store i32 %103, i32* %5, align 4, !dbg !2735
  br label %296, !dbg !2735

; <label>:104:                                    ; preds = %93
  %105 = load double, double* %8, align 8, !dbg !2736
  %106 = fcmp ogt double %105, 0.000000e+00, !dbg !2738
  br i1 %106, label %107, label %258, !dbg !2739

; <label>:107:                                    ; preds = %104
  %108 = load double, double* %8, align 8, !dbg !2740
  %109 = fcmp ogt double %108, 1.000000e+02, !dbg !2743
  br i1 %109, label %110, label %123, !dbg !2744

; <label>:110:                                    ; preds = %107
  %111 = load double, double* %13, align 8, !dbg !2745
  %112 = load double, double* %14, align 8, !dbg !2747
  %113 = fmul double %111, %112, !dbg !2748
  %114 = load double, double* %8, align 8, !dbg !2749
  %115 = fmul double 5.000000e-01, %114, !dbg !2750
  %116 = fcmp olt double %113, %115, !dbg !2751
  br i1 %116, label %117, label %123, !dbg !2752

; <label>:117:                                    ; preds = %110
  %118 = load double, double* %6, align 8, !dbg !2753
  %119 = load double, double* %7, align 8, !dbg !2755
  %120 = load double, double* %8, align 8, !dbg !2756
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2757
  %122 = call i32 @hyperg_1F1_asymp_posx(double %118, double %119, double %120, %struct.gsl_sf_result_struct* %121), !dbg !2758
  store i32 %122, i32* %5, align 4, !dbg !2759
  br label %296, !dbg !2759

; <label>:123:                                    ; preds = %110, %107
  %124 = load double, double* %7, align 8, !dbg !2760
  %125 = fcmp olt double %124, 5.000000e+06, !dbg !2762
  br i1 %125, label %126, label %226, !dbg !2763

; <label>:126:                                    ; preds = %123
  call void @llvm.dbg.declare(metadata double* %17, metadata !2764, metadata !62), !dbg !2766
  %127 = load double, double* %8, align 8, !dbg !2767
  %128 = fmul double 1.400000e+00, %127, !dbg !2768
  %129 = load double, double* %7, align 8, !dbg !2769
  %130 = fsub double %128, %129, !dbg !2770
  %131 = call double @ceil(double %130) #1, !dbg !2771
  %132 = fadd double %131, 1.000000e+00, !dbg !2772
  store double %132, double* %17, align 8, !dbg !2766
  call void @llvm.dbg.declare(metadata double* %18, metadata !2773, metadata !62), !dbg !2774
  %133 = load double, double* %7, align 8, !dbg !2775
  %134 = load double, double* %17, align 8, !dbg !2776
  %135 = fadd double %133, %134, !dbg !2777
  store double %135, double* %18, align 8, !dbg !2774
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !2778, metadata !62), !dbg !2779
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !2780, metadata !62), !dbg !2781
  call void @llvm.dbg.declare(metadata double* %21, metadata !2782, metadata !62), !dbg !2783
  call void @llvm.dbg.declare(metadata double* %22, metadata !2784, metadata !62), !dbg !2785
  call void @llvm.dbg.declare(metadata double* %23, metadata !2786, metadata !62), !dbg !2787
  call void @llvm.dbg.declare(metadata i32* %24, metadata !2788, metadata !62), !dbg !2789
  %136 = load double, double* %6, align 8, !dbg !2790
  %137 = load double, double* %18, align 8, !dbg !2791
  %138 = fadd double %137, 1.000000e+00, !dbg !2792
  %139 = load double, double* %8, align 8, !dbg !2793
  %140 = call i32 @gsl_sf_hyperg_1F1_series_e(double %136, double %138, double %139, %struct.gsl_sf_result_struct* %19), !dbg !2794
  store i32 %140, i32* %24, align 4, !dbg !2789
  call void @llvm.dbg.declare(metadata i32* %25, metadata !2795, metadata !62), !dbg !2796
  %141 = load double, double* %6, align 8, !dbg !2797
  %142 = load double, double* %18, align 8, !dbg !2798
  %143 = load double, double* %8, align 8, !dbg !2799
  %144 = call i32 @gsl_sf_hyperg_1F1_series_e(double %141, double %142, double %143, %struct.gsl_sf_result_struct* %20), !dbg !2800
  store i32 %144, i32* %25, align 4, !dbg !2796
  call void @llvm.dbg.declare(metadata double* %26, metadata !2801, metadata !62), !dbg !2802
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !2803
  %146 = load double, double* %145, align 8, !dbg !2803
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !2804
  %148 = load double, double* %147, align 8, !dbg !2804
  %149 = fdiv double %146, %148, !dbg !2805
  %150 = call double @fabs(double %149) #1, !dbg !2806
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !2807
  %152 = load double, double* %151, align 8, !dbg !2807
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !2808
  %154 = load double, double* %153, align 8, !dbg !2808
  %155 = fdiv double %152, %154, !dbg !2809
  %156 = call double @fabs(double %155) #1, !dbg !2810
  %157 = fadd double %150, %156, !dbg !2812
  store double %157, double* %26, align 8, !dbg !2802
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !2813
  %159 = load double, double* %158, align 8, !dbg !2813
  store double %159, double* %21, align 8, !dbg !2814
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !2815
  %161 = load double, double* %160, align 8, !dbg !2815
  store double %161, double* %22, align 8, !dbg !2816
  br label %162, !dbg !2817

; <label>:162:                                    ; preds = %167, %126
  %163 = load double, double* %18, align 8, !dbg !2818
  %164 = load double, double* %7, align 8, !dbg !2819
  %165 = fadd double %164, 1.000000e-01, !dbg !2820
  %166 = fcmp ogt double %163, %165, !dbg !2821
  br i1 %166, label %167, label %191, !dbg !2822

; <label>:167:                                    ; preds = %162
  %168 = load double, double* %8, align 8, !dbg !2823
  %169 = load double, double* %18, align 8, !dbg !2825
  %170 = fadd double %168, %169, !dbg !2826
  %171 = fsub double %170, 1.000000e+00, !dbg !2827
  %172 = load double, double* %22, align 8, !dbg !2828
  %173 = fmul double %171, %172, !dbg !2829
  %174 = load double, double* %8, align 8, !dbg !2830
  %175 = load double, double* %18, align 8, !dbg !2831
  %176 = load double, double* %6, align 8, !dbg !2832
  %177 = fsub double %175, %176, !dbg !2833
  %178 = fmul double %174, %177, !dbg !2834
  %179 = load double, double* %18, align 8, !dbg !2835
  %180 = fdiv double %178, %179, !dbg !2836
  %181 = load double, double* %21, align 8, !dbg !2837
  %182 = fmul double %180, %181, !dbg !2838
  %183 = fsub double %173, %182, !dbg !2839
  %184 = load double, double* %18, align 8, !dbg !2840
  %185 = fsub double %184, 1.000000e+00, !dbg !2841
  %186 = fdiv double %183, %185, !dbg !2842
  store double %186, double* %23, align 8, !dbg !2843
  %187 = load double, double* %18, align 8, !dbg !2844
  %188 = fsub double %187, 1.000000e+00, !dbg !2844
  store double %188, double* %18, align 8, !dbg !2844
  %189 = load double, double* %22, align 8, !dbg !2845
  store double %189, double* %21, align 8, !dbg !2846
  %190 = load double, double* %23, align 8, !dbg !2847
  store double %190, double* %22, align 8, !dbg !2848
  br label %162, !dbg !2849, !llvm.loop !2851

; <label>:191:                                    ; preds = %162
  %192 = load double, double* %22, align 8, !dbg !2852
  %193 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2853
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %193, i32 0, i32 0, !dbg !2854
  store double %192, double* %194, align 8, !dbg !2855
  %195 = load double, double* %26, align 8, !dbg !2856
  %196 = load double, double* %17, align 8, !dbg !2857
  %197 = call double @fabs(double %196) #1, !dbg !2858
  %198 = fadd double %197, 1.000000e+00, !dbg !2859
  %199 = fmul double %195, %198, !dbg !2860
  %200 = load double, double* %22, align 8, !dbg !2861
  %201 = call double @fabs(double %200) #1, !dbg !2862
  %202 = fmul double %199, %201, !dbg !2863
  %203 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2864
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %203, i32 0, i32 1, !dbg !2865
  store double %202, double* %204, align 8, !dbg !2866
  %205 = load double, double* %22, align 8, !dbg !2867
  %206 = call double @fabs(double %205) #1, !dbg !2868
  %207 = fmul double 0x3CC0000000000000, %206, !dbg !2869
  %208 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2870
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %208, i32 0, i32 1, !dbg !2871
  %210 = load double, double* %209, align 8, !dbg !2872
  %211 = fadd double %210, %207, !dbg !2872
  store double %211, double* %209, align 8, !dbg !2872
  %212 = load i32, i32* %24, align 4, !dbg !2873
  %213 = icmp ne i32 %212, 0, !dbg !2873
  br i1 %213, label %214, label %216, !dbg !2873

; <label>:214:                                    ; preds = %191
  %215 = load i32, i32* %24, align 4, !dbg !2874
  br label %224, !dbg !2874

; <label>:216:                                    ; preds = %191
  %217 = load i32, i32* %25, align 4, !dbg !2875
  %218 = icmp ne i32 %217, 0, !dbg !2875
  br i1 %218, label %219, label %221, !dbg !2875

; <label>:219:                                    ; preds = %216
  %220 = load i32, i32* %25, align 4, !dbg !2876
  br label %222, !dbg !2876

; <label>:221:                                    ; preds = %216
  br label %222, !dbg !2878

; <label>:222:                                    ; preds = %221, %219
  %223 = phi i32 [ %220, %219 ], [ 0, %221 ], !dbg !2880
  br label %224, !dbg !2880

; <label>:224:                                    ; preds = %222, %214
  %225 = phi i32 [ %215, %214 ], [ %223, %222 ], !dbg !2882
  store i32 %225, i32* %5, align 4, !dbg !2884
  br label %296, !dbg !2884

; <label>:226:                                    ; preds = %123
  %227 = load double, double* %8, align 8, !dbg !2885
  %228 = call double @fabs(double %227) #1, !dbg !2887
  %229 = load double, double* %7, align 8, !dbg !2888
  %230 = call double @fabs(double %229) #1, !dbg !2889
  %231 = fcmp olt double %228, %230, !dbg !2891
  br i1 %231, label %232, label %252, !dbg !2892

; <label>:232:                                    ; preds = %226
  %233 = load double, double* %6, align 8, !dbg !2893
  %234 = load double, double* %8, align 8, !dbg !2895
  %235 = fmul double %233, %234, !dbg !2896
  %236 = call double @fabs(double %235) #1, !dbg !2897
  %237 = load double, double* %7, align 8, !dbg !2898
  %238 = call double @fabs(double %237) #1, !dbg !2899
  %239 = call double @sqrt(double %238) #5, !dbg !2901
  %240 = load double, double* %7, align 8, !dbg !2903
  %241 = load double, double* %8, align 8, !dbg !2904
  %242 = fsub double %240, %241, !dbg !2905
  %243 = call double @fabs(double %242) #1, !dbg !2906
  %244 = fmul double %239, %243, !dbg !2908
  %245 = fcmp olt double %236, %244, !dbg !2909
  br i1 %245, label %246, label %252, !dbg !2910

; <label>:246:                                    ; preds = %232
  %247 = load double, double* %6, align 8, !dbg !2911
  %248 = load double, double* %7, align 8, !dbg !2913
  %249 = load double, double* %8, align 8, !dbg !2914
  %250 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2915
  %251 = call i32 @hyperg_1F1_largebx(double %247, double %248, double %249, %struct.gsl_sf_result_struct* %250), !dbg !2916
  store i32 %251, i32* %5, align 4, !dbg !2917
  br label %296, !dbg !2917

; <label>:252:                                    ; preds = %232, %226
  %253 = load double, double* %6, align 8, !dbg !2918
  %254 = load double, double* %7, align 8, !dbg !2920
  %255 = load double, double* %8, align 8, !dbg !2921
  %256 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2922
  %257 = call i32 @hyperg_1F1_large2bm4a(double %253, double %254, double %255, %struct.gsl_sf_result_struct* %256), !dbg !2923
  store i32 %257, i32* %5, align 4, !dbg !2924
  br label %296, !dbg !2924

; <label>:258:                                    ; preds = %104
  %259 = load double, double* %16, align 8, !dbg !2925
  %260 = fcmp olt double %259, 1.000000e+01, !dbg !2928
  br i1 %260, label %261, label %270, !dbg !2929

; <label>:261:                                    ; preds = %258
  %262 = load double, double* %7, align 8, !dbg !2930
  %263 = fcmp olt double %262, 1.000000e+01, !dbg !2932
  br i1 %263, label %264, label %270, !dbg !2933

; <label>:264:                                    ; preds = %261
  %265 = load double, double* %6, align 8, !dbg !2934
  %266 = load double, double* %7, align 8, !dbg !2936
  %267 = load double, double* %8, align 8, !dbg !2937
  %268 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2938
  %269 = call i32 @gsl_sf_hyperg_1F1_series_e(double %265, double %266, double %267, %struct.gsl_sf_result_struct* %268), !dbg !2939
  store i32 %269, i32* %5, align 4, !dbg !2940
  br label %296, !dbg !2940

; <label>:270:                                    ; preds = %261, %258
  %271 = load double, double* %16, align 8, !dbg !2941
  %272 = fcmp oge double %271, 1.000000e+02, !dbg !2943
  br i1 %272, label %273, label %290, !dbg !2944

; <label>:273:                                    ; preds = %270
  %274 = load double, double* %15, align 8, !dbg !2945
  %275 = fcmp ogt double %274, 1.000000e+00, !dbg !2945
  br i1 %275, label %276, label %278, !dbg !2945

; <label>:276:                                    ; preds = %273
  %277 = load double, double* %15, align 8, !dbg !2947
  br label %279, !dbg !2947

; <label>:278:                                    ; preds = %273
  br label %279, !dbg !2949

; <label>:279:                                    ; preds = %278, %276
  %280 = phi double [ %277, %276 ], [ 1.000000e+00, %278 ], !dbg !2951
  %281 = load double, double* %16, align 8, !dbg !2953
  %282 = fmul double 9.900000e-01, %281, !dbg !2954
  %283 = fcmp olt double %280, %282, !dbg !2955
  br i1 %283, label %284, label %290, !dbg !2956

; <label>:284:                                    ; preds = %279
  %285 = load double, double* %6, align 8, !dbg !2957
  %286 = load double, double* %7, align 8, !dbg !2959
  %287 = load double, double* %8, align 8, !dbg !2960
  %288 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2961
  %289 = call i32 @hyperg_1F1_asymp_negx(double %285, double %286, double %287, %struct.gsl_sf_result_struct* %288), !dbg !2962
  store i32 %289, i32* %5, align 4, !dbg !2963
  br label %296, !dbg !2963

; <label>:290:                                    ; preds = %279, %270
  %291 = load double, double* %6, align 8, !dbg !2964
  %292 = load double, double* %7, align 8, !dbg !2966
  %293 = load double, double* %8, align 8, !dbg !2967
  %294 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2968
  %295 = call i32 @hyperg_1F1_luke(double %291, double %292, double %293, %struct.gsl_sf_result_struct* %294), !dbg !2969
  store i32 %295, i32* %5, align 4, !dbg !2970
  br label %296, !dbg !2970

; <label>:296:                                    ; preds = %290, %284, %264, %252, %246, %224, %117, %98, %65, %57, %46
  %297 = load i32, i32* %5, align 4, !dbg !2971
  ret i32 %297, !dbg !2971
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_ab_pos(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !2972 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca %struct.gsl_sf_result_struct, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca %struct.gsl_sf_result_struct, align 8
  %51 = alloca %struct.gsl_sf_result_struct, align 8
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca double, align 8
  %55 = alloca double, align 8
  %56 = alloca double, align 8
  %57 = alloca double, align 8
  %58 = alloca double, align 8
  %59 = alloca double, align 8
  %60 = alloca double, align 8
  %61 = alloca double, align 8
  %62 = alloca double, align 8
  %63 = alloca double, align 8
  %64 = alloca double, align 8
  %65 = alloca %struct.gsl_sf_result_struct, align 8
  %66 = alloca %struct.gsl_sf_result_struct, align 8
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca double, align 8
  %70 = alloca double, align 8
  %71 = alloca double, align 8
  %72 = alloca double, align 8
  %73 = alloca double, align 8
  %74 = alloca double, align 8
  %75 = alloca double, align 8
  %76 = alloca double, align 8
  %77 = alloca double, align 8
  %78 = alloca double, align 8
  %79 = alloca double, align 8
  %80 = alloca double, align 8
  %81 = alloca double, align 8
  %82 = alloca double, align 8
  %83 = alloca double, align 8
  %84 = alloca double, align 8
  %85 = alloca i32, align 4
  %86 = alloca double, align 8
  %87 = alloca double, align 8
  %88 = alloca double, align 8
  %89 = alloca double, align 8
  %90 = alloca double, align 8
  %91 = alloca %struct.gsl_sf_result_struct, align 8
  %92 = alloca %struct.gsl_sf_result_struct, align 8
  %93 = alloca i32, align 4
  %94 = alloca i32, align 4
  %95 = alloca double, align 8
  %96 = alloca double, align 8
  %97 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2973, metadata !62), !dbg !2974
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2975, metadata !62), !dbg !2976
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2977, metadata !62), !dbg !2978
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !2979, metadata !62), !dbg !2980
  call void @llvm.dbg.declare(metadata double* %10, metadata !2981, metadata !62), !dbg !2982
  %98 = load double, double* %8, align 8, !dbg !2983
  %99 = call double @fabs(double %98) #1, !dbg !2984
  store double %99, double* %10, align 8, !dbg !2982
  %100 = load double, double* %7, align 8, !dbg !2985
  %101 = fcmp olt double %100, 1.000000e+01, !dbg !2987
  br i1 %101, label %102, label %108, !dbg !2988

; <label>:102:                                    ; preds = %4
  %103 = load double, double* %6, align 8, !dbg !2989
  %104 = fcmp olt double %103, 1.000000e+01, !dbg !2991
  br i1 %104, label %105, label %108, !dbg !2992

; <label>:105:                                    ; preds = %102
  %106 = load double, double* %10, align 8, !dbg !2993
  %107 = fcmp olt double %106, 5.000000e+00, !dbg !2995
  br i1 %107, label %121, label %108, !dbg !2996

; <label>:108:                                    ; preds = %105, %102, %4
  %109 = load double, double* %7, align 8, !dbg !2997
  %110 = load double, double* %6, align 8, !dbg !2998
  %111 = load double, double* %10, align 8, !dbg !2999
  %112 = fmul double %110, %111, !dbg !3000
  %113 = fcmp ogt double %109, %112, !dbg !3001
  br i1 %113, label %121, label %114, !dbg !3002

; <label>:114:                                    ; preds = %108
  %115 = load double, double* %7, align 8, !dbg !3003
  %116 = load double, double* %6, align 8, !dbg !3004
  %117 = fcmp ogt double %115, %116, !dbg !3005
  br i1 %117, label %118, label %127, !dbg !3006

; <label>:118:                                    ; preds = %114
  %119 = load double, double* %10, align 8, !dbg !3007
  %120 = fcmp olt double %119, 5.000000e+00, !dbg !3008
  br i1 %120, label %121, label %127, !dbg !3009

; <label>:121:                                    ; preds = %118, %108, %105
  %122 = load double, double* %6, align 8, !dbg !3011
  %123 = load double, double* %7, align 8, !dbg !3013
  %124 = load double, double* %8, align 8, !dbg !3014
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3015
  %126 = call i32 @gsl_sf_hyperg_1F1_series_e(double %122, double %123, double %124, %struct.gsl_sf_result_struct* %125), !dbg !3016
  store i32 %126, i32* %5, align 4, !dbg !3017
  br label %1017, !dbg !3017

; <label>:127:                                    ; preds = %118, %114
  %128 = load double, double* %8, align 8, !dbg !3018
  %129 = fcmp olt double %128, -1.000000e+02, !dbg !3020
  br i1 %129, label %130, label %151, !dbg !3021

; <label>:130:                                    ; preds = %127
  %131 = load double, double* %6, align 8, !dbg !3022
  %132 = call double @fabs(double %131) #1, !dbg !3024
  %133 = call double @GSL_MAX_DBL(double %132, double 1.000000e+00), !dbg !3025
  %134 = load double, double* %6, align 8, !dbg !3027
  %135 = fadd double 1.000000e+00, %134, !dbg !3028
  %136 = load double, double* %7, align 8, !dbg !3029
  %137 = fsub double %135, %136, !dbg !3030
  %138 = call double @fabs(double %137) #1, !dbg !3031
  %139 = call double @GSL_MAX_DBL(double %138, double 1.000000e+00), !dbg !3033
  %140 = fmul double %133, %139, !dbg !3035
  %141 = load double, double* %8, align 8, !dbg !3036
  %142 = call double @fabs(double %141) #1, !dbg !3037
  %143 = fmul double 7.000000e-01, %142, !dbg !3039
  %144 = fcmp olt double %140, %143, !dbg !3040
  br i1 %144, label %145, label %151, !dbg !3041

; <label>:145:                                    ; preds = %130
  %146 = load double, double* %6, align 8, !dbg !3042
  %147 = load double, double* %7, align 8, !dbg !3044
  %148 = load double, double* %8, align 8, !dbg !3045
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3046
  %150 = call i32 @hyperg_1F1_asymp_negx(double %146, double %147, double %148, %struct.gsl_sf_result_struct* %149), !dbg !3047
  store i32 %150, i32* %5, align 4, !dbg !3048
  br label %1017, !dbg !3048

; <label>:151:                                    ; preds = %130, %127
  %152 = load double, double* %8, align 8, !dbg !3049
  %153 = fcmp ogt double %152, 1.000000e+02, !dbg !3051
  br i1 %153, label %154, label %175, !dbg !3052

; <label>:154:                                    ; preds = %151
  %155 = load double, double* %7, align 8, !dbg !3053
  %156 = load double, double* %6, align 8, !dbg !3055
  %157 = fsub double %155, %156, !dbg !3056
  %158 = call double @fabs(double %157) #1, !dbg !3057
  %159 = call double @GSL_MAX_DBL(double %158, double 1.000000e+00), !dbg !3058
  %160 = load double, double* %6, align 8, !dbg !3060
  %161 = fsub double 1.000000e+00, %160, !dbg !3061
  %162 = call double @fabs(double %161) #1, !dbg !3062
  %163 = call double @GSL_MAX_DBL(double %162, double 1.000000e+00), !dbg !3064
  %164 = fmul double %159, %163, !dbg !3066
  %165 = load double, double* %8, align 8, !dbg !3067
  %166 = call double @fabs(double %165) #1, !dbg !3068
  %167 = fmul double 7.000000e-01, %166, !dbg !3070
  %168 = fcmp olt double %164, %167, !dbg !3071
  br i1 %168, label %169, label %175, !dbg !3072

; <label>:169:                                    ; preds = %154
  %170 = load double, double* %6, align 8, !dbg !3073
  %171 = load double, double* %7, align 8, !dbg !3075
  %172 = load double, double* %8, align 8, !dbg !3076
  %173 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3077
  %174 = call i32 @hyperg_1F1_asymp_posx(double %170, double %171, double %172, %struct.gsl_sf_result_struct* %173), !dbg !3078
  store i32 %174, i32* %5, align 4, !dbg !3079
  br label %1017, !dbg !3079

; <label>:175:                                    ; preds = %154, %151
  %176 = load double, double* %7, align 8, !dbg !3080
  %177 = load double, double* %6, align 8, !dbg !3082
  %178 = fsub double %176, %177, !dbg !3083
  %179 = call double @fabs(double %178) #1, !dbg !3084
  %180 = fcmp ole double %179, 1.000000e+00, !dbg !3085
  br i1 %180, label %181, label %189, !dbg !3086

; <label>:181:                                    ; preds = %175
  %182 = load double, double* %6, align 8, !dbg !3087
  %183 = load double, double* %7, align 8, !dbg !3089
  %184 = fsub double %182, %183, !dbg !3090
  %185 = load double, double* %7, align 8, !dbg !3091
  %186 = load double, double* %8, align 8, !dbg !3092
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3093
  %188 = call i32 @hyperg_1F1_beps_bgt0(double %184, double %185, double %186, %struct.gsl_sf_result_struct* %187), !dbg !3094
  store i32 %188, i32* %5, align 4, !dbg !3095
  br label %1017, !dbg !3095

; <label>:189:                                    ; preds = %175
  %190 = load double, double* %7, align 8, !dbg !3096
  %191 = load double, double* %6, align 8, !dbg !3098
  %192 = fcmp ogt double %190, %191, !dbg !3099
  br i1 %192, label %193, label %291, !dbg !3100

; <label>:193:                                    ; preds = %189
  %194 = load double, double* %7, align 8, !dbg !3101
  %195 = load double, double* %6, align 8, !dbg !3103
  %196 = fmul double 2.000000e+00, %195, !dbg !3104
  %197 = load double, double* %8, align 8, !dbg !3105
  %198 = fadd double %196, %197, !dbg !3106
  %199 = fcmp oge double %194, %198, !dbg !3107
  br i1 %199, label %200, label %291, !dbg !3108

; <label>:200:                                    ; preds = %193
  call void @llvm.dbg.declare(metadata double* %11, metadata !3109, metadata !62), !dbg !3111
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3112, metadata !62), !dbg !3113
  %201 = load double, double* %6, align 8, !dbg !3114
  %202 = load double, double* %7, align 8, !dbg !3115
  %203 = load double, double* %8, align 8, !dbg !3116
  %204 = call i32 @hyperg_1F1_CF1_p_ser(double %201, double %202, double %203, double* %11), !dbg !3117
  store i32 %204, i32* %12, align 4, !dbg !3113
  call void @llvm.dbg.declare(metadata double* %13, metadata !3118, metadata !62), !dbg !3119
  %205 = load double, double* %8, align 8, !dbg !3120
  %206 = load double, double* %6, align 8, !dbg !3121
  %207 = fdiv double %205, %206, !dbg !3122
  %208 = load double, double* %11, align 8, !dbg !3123
  %209 = fmul double %207, %208, !dbg !3124
  %210 = fadd double 1.000000e+00, %209, !dbg !3125
  store double %210, double* %13, align 8, !dbg !3119
  call void @llvm.dbg.declare(metadata double* %14, metadata !3126, metadata !62), !dbg !3127
  store double 0x2000000000000000, double* %14, align 8, !dbg !3127
  call void @llvm.dbg.declare(metadata double* %15, metadata !3128, metadata !62), !dbg !3129
  %211 = load double, double* %13, align 8, !dbg !3130
  %212 = load double, double* %14, align 8, !dbg !3131
  %213 = fmul double %211, %212, !dbg !3132
  store double %213, double* %15, align 8, !dbg !3129
  call void @llvm.dbg.declare(metadata double* %16, metadata !3133, metadata !62), !dbg !3134
  %214 = load double, double* %15, align 8, !dbg !3135
  store double %214, double* %16, align 8, !dbg !3134
  call void @llvm.dbg.declare(metadata double* %17, metadata !3136, metadata !62), !dbg !3137
  %215 = load double, double* %14, align 8, !dbg !3138
  store double %215, double* %17, align 8, !dbg !3137
  call void @llvm.dbg.declare(metadata double* %18, metadata !3139, metadata !62), !dbg !3140
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !3141, metadata !62), !dbg !3142
  call void @llvm.dbg.declare(metadata i32* %20, metadata !3143, metadata !62), !dbg !3144
  call void @llvm.dbg.declare(metadata double* %21, metadata !3145, metadata !62), !dbg !3146
  %216 = load double, double* %6, align 8, !dbg !3147
  store double %216, double* %21, align 8, !dbg !3149
  br label %217, !dbg !3150

; <label>:217:                                    ; preds = %239, %200
  %218 = load double, double* %21, align 8, !dbg !3151
  %219 = fcmp ogt double %218, 5.000000e-01, !dbg !3154
  br i1 %219, label %220, label %242, !dbg !3155

; <label>:220:                                    ; preds = %217
  %221 = load double, double* %21, align 8, !dbg !3156
  %222 = load double, double* %16, align 8, !dbg !3158
  %223 = fmul double %221, %222, !dbg !3159
  %224 = load double, double* %21, align 8, !dbg !3160
  %225 = fmul double 2.000000e+00, %224, !dbg !3161
  %226 = load double, double* %7, align 8, !dbg !3162
  %227 = fsub double %225, %226, !dbg !3163
  %228 = load double, double* %8, align 8, !dbg !3164
  %229 = fadd double %227, %228, !dbg !3165
  %230 = load double, double* %17, align 8, !dbg !3166
  %231 = fmul double %229, %230, !dbg !3167
  %232 = fsub double %223, %231, !dbg !3168
  %233 = load double, double* %7, align 8, !dbg !3169
  %234 = load double, double* %21, align 8, !dbg !3170
  %235 = fsub double %233, %234, !dbg !3171
  %236 = fdiv double %232, %235, !dbg !3172
  store double %236, double* %18, align 8, !dbg !3173
  %237 = load double, double* %17, align 8, !dbg !3174
  store double %237, double* %16, align 8, !dbg !3175
  %238 = load double, double* %18, align 8, !dbg !3176
  store double %238, double* %17, align 8, !dbg !3177
  br label %239, !dbg !3178

; <label>:239:                                    ; preds = %220
  %240 = load double, double* %21, align 8, !dbg !3179
  %241 = fsub double %240, 1.000000e+00, !dbg !3179
  store double %241, double* %21, align 8, !dbg !3179
  br label %217, !dbg !3181, !llvm.loop !3182

; <label>:242:                                    ; preds = %217
  %243 = load double, double* %21, align 8, !dbg !3184
  %244 = load double, double* %7, align 8, !dbg !3185
  %245 = load double, double* %8, align 8, !dbg !3186
  %246 = call i32 @hyperg_1F1_small_a_bgt0(double %243, double %244, double %245, %struct.gsl_sf_result_struct* %19), !dbg !3187
  store i32 %246, i32* %20, align 4, !dbg !3188
  %247 = load double, double* %14, align 8, !dbg !3189
  %248 = load double, double* %17, align 8, !dbg !3190
  %249 = fdiv double %247, %248, !dbg !3191
  %250 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !3192
  %251 = load double, double* %250, align 8, !dbg !3192
  %252 = fmul double %249, %251, !dbg !3193
  %253 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3194
  %254 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %253, i32 0, i32 0, !dbg !3195
  store double %252, double* %254, align 8, !dbg !3196
  %255 = load double, double* %14, align 8, !dbg !3197
  %256 = load double, double* %17, align 8, !dbg !3198
  %257 = fdiv double %255, %256, !dbg !3199
  %258 = call double @fabs(double %257) #1, !dbg !3200
  %259 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !3201
  %260 = load double, double* %259, align 8, !dbg !3201
  %261 = fmul double %258, %260, !dbg !3202
  %262 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3203
  %263 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %262, i32 0, i32 1, !dbg !3204
  store double %261, double* %263, align 8, !dbg !3205
  %264 = load double, double* %6, align 8, !dbg !3206
  %265 = call double @fabs(double %264) #1, !dbg !3207
  %266 = fadd double %265, 1.000000e+00, !dbg !3208
  %267 = fmul double 0x3CC0000000000000, %266, !dbg !3209
  %268 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3210
  %269 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %268, i32 0, i32 0, !dbg !3211
  %270 = load double, double* %269, align 8, !dbg !3211
  %271 = call double @fabs(double %270) #1, !dbg !3212
  %272 = fmul double %267, %271, !dbg !3214
  %273 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3215
  %274 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %273, i32 0, i32 1, !dbg !3216
  %275 = load double, double* %274, align 8, !dbg !3217
  %276 = fadd double %275, %272, !dbg !3217
  store double %276, double* %274, align 8, !dbg !3217
  %277 = load i32, i32* %20, align 4, !dbg !3218
  %278 = icmp ne i32 %277, 0, !dbg !3218
  br i1 %278, label %279, label %281, !dbg !3218

; <label>:279:                                    ; preds = %242
  %280 = load i32, i32* %20, align 4, !dbg !3219
  br label %289, !dbg !3219

; <label>:281:                                    ; preds = %242
  %282 = load i32, i32* %12, align 4, !dbg !3220
  %283 = icmp ne i32 %282, 0, !dbg !3220
  br i1 %283, label %284, label %286, !dbg !3220

; <label>:284:                                    ; preds = %281
  %285 = load i32, i32* %12, align 4, !dbg !3222
  br label %287, !dbg !3222

; <label>:286:                                    ; preds = %281
  br label %287, !dbg !3224

; <label>:287:                                    ; preds = %286, %284
  %288 = phi i32 [ %285, %284 ], [ 0, %286 ], !dbg !3226
  br label %289, !dbg !3226

; <label>:289:                                    ; preds = %287, %279
  %290 = phi i32 [ %280, %279 ], [ %288, %287 ], !dbg !3228
  store i32 %290, i32* %5, align 4, !dbg !3230
  br label %1017, !dbg !3230

; <label>:291:                                    ; preds = %193, %189
  %292 = load double, double* %7, align 8, !dbg !3231
  %293 = load double, double* %6, align 8, !dbg !3233
  %294 = fcmp ogt double %292, %293, !dbg !3234
  br i1 %294, label %295, label %403, !dbg !3235

; <label>:295:                                    ; preds = %291
  %296 = load double, double* %7, align 8, !dbg !3236
  %297 = load double, double* %6, align 8, !dbg !3238
  %298 = fmul double 2.000000e+00, %297, !dbg !3239
  %299 = load double, double* %8, align 8, !dbg !3240
  %300 = fadd double %298, %299, !dbg !3241
  %301 = fcmp olt double %296, %300, !dbg !3242
  br i1 %301, label %302, label %403, !dbg !3243

; <label>:302:                                    ; preds = %295
  %303 = load double, double* %7, align 8, !dbg !3244
  %304 = load double, double* %8, align 8, !dbg !3246
  %305 = fcmp ogt double %303, %304, !dbg !3247
  br i1 %305, label %306, label %403, !dbg !3248

; <label>:306:                                    ; preds = %302
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !3249, metadata !62), !dbg !3251
  call void @llvm.dbg.declare(metadata i32* %23, metadata !3252, metadata !62), !dbg !3253
  call void @llvm.dbg.declare(metadata double* %24, metadata !3254, metadata !62), !dbg !3255
  call void @llvm.dbg.declare(metadata i32* %25, metadata !3256, metadata !62), !dbg !3257
  %307 = load double, double* %6, align 8, !dbg !3258
  %308 = load double, double* %7, align 8, !dbg !3259
  %309 = load double, double* %8, align 8, !dbg !3260
  %310 = call i32 @hyperg_1F1_CF1_p_ser(double %307, double %308, double %309, double* %24), !dbg !3261
  store i32 %310, i32* %25, align 4, !dbg !3257
  call void @llvm.dbg.declare(metadata double* %26, metadata !3262, metadata !62), !dbg !3263
  %311 = load double, double* %8, align 8, !dbg !3264
  %312 = load double, double* %6, align 8, !dbg !3265
  %313 = fdiv double %311, %312, !dbg !3266
  %314 = load double, double* %24, align 8, !dbg !3267
  %315 = fmul double %313, %314, !dbg !3268
  %316 = fadd double 1.000000e+00, %315, !dbg !3269
  store double %316, double* %26, align 8, !dbg !3263
  call void @llvm.dbg.declare(metadata double* %27, metadata !3270, metadata !62), !dbg !3271
  store double 0x2000000000000000, double* %27, align 8, !dbg !3271
  call void @llvm.dbg.declare(metadata double* %28, metadata !3272, metadata !62), !dbg !3273
  %317 = load double, double* %27, align 8, !dbg !3274
  store double %317, double* %28, align 8, !dbg !3273
  call void @llvm.dbg.declare(metadata double* %29, metadata !3275, metadata !62), !dbg !3276
  %318 = load double, double* %26, align 8, !dbg !3277
  %319 = load double, double* %28, align 8, !dbg !3278
  %320 = fmul double %318, %319, !dbg !3279
  store double %320, double* %29, align 8, !dbg !3276
  call void @llvm.dbg.declare(metadata double* %30, metadata !3280, metadata !62), !dbg !3281
  call void @llvm.dbg.declare(metadata double* %31, metadata !3282, metadata !62), !dbg !3283
  %321 = load double, double* %6, align 8, !dbg !3284
  %322 = fadd double %321, 1.000000e+00, !dbg !3286
  store double %322, double* %31, align 8, !dbg !3287
  br label %323, !dbg !3288

; <label>:323:                                    ; preds = %347, %306
  %324 = load double, double* %31, align 8, !dbg !3289
  %325 = load double, double* %7, align 8, !dbg !3292
  %326 = fsub double %325, 5.000000e-01, !dbg !3293
  %327 = fcmp olt double %324, %326, !dbg !3294
  br i1 %327, label %328, label %350, !dbg !3295

; <label>:328:                                    ; preds = %323
  %329 = load double, double* %7, align 8, !dbg !3296
  %330 = load double, double* %31, align 8, !dbg !3298
  %331 = fsub double %329, %330, !dbg !3299
  %332 = load double, double* %28, align 8, !dbg !3300
  %333 = fmul double %331, %332, !dbg !3301
  %334 = load double, double* %31, align 8, !dbg !3302
  %335 = fmul double 2.000000e+00, %334, !dbg !3303
  %336 = load double, double* %7, align 8, !dbg !3304
  %337 = fsub double %335, %336, !dbg !3305
  %338 = load double, double* %8, align 8, !dbg !3306
  %339 = fadd double %337, %338, !dbg !3307
  %340 = load double, double* %29, align 8, !dbg !3308
  %341 = fmul double %339, %340, !dbg !3309
  %342 = fadd double %333, %341, !dbg !3310
  %343 = load double, double* %31, align 8, !dbg !3311
  %344 = fdiv double %342, %343, !dbg !3312
  store double %344, double* %30, align 8, !dbg !3313
  %345 = load double, double* %29, align 8, !dbg !3314
  store double %345, double* %28, align 8, !dbg !3315
  %346 = load double, double* %30, align 8, !dbg !3316
  store double %346, double* %29, align 8, !dbg !3317
  br label %347, !dbg !3318

; <label>:347:                                    ; preds = %328
  %348 = load double, double* %31, align 8, !dbg !3319
  %349 = fadd double %348, 1.000000e+00, !dbg !3319
  store double %349, double* %31, align 8, !dbg !3319
  br label %323, !dbg !3321, !llvm.loop !3322

; <label>:350:                                    ; preds = %323
  %351 = load double, double* %31, align 8, !dbg !3324
  %352 = load double, double* %7, align 8, !dbg !3325
  %353 = fsub double %351, %352, !dbg !3326
  %354 = load double, double* %7, align 8, !dbg !3327
  %355 = load double, double* %8, align 8, !dbg !3328
  %356 = call i32 @hyperg_1F1_beps_bgt0(double %353, double %354, double %355, %struct.gsl_sf_result_struct* %22), !dbg !3329
  store i32 %356, i32* %23, align 4, !dbg !3330
  %357 = load double, double* %27, align 8, !dbg !3331
  %358 = load double, double* %29, align 8, !dbg !3332
  %359 = fdiv double %357, %358, !dbg !3333
  %360 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !3334
  %361 = load double, double* %360, align 8, !dbg !3334
  %362 = fmul double %359, %361, !dbg !3335
  %363 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3336
  %364 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %363, i32 0, i32 0, !dbg !3337
  store double %362, double* %364, align 8, !dbg !3338
  %365 = load double, double* %27, align 8, !dbg !3339
  %366 = load double, double* %29, align 8, !dbg !3340
  %367 = fdiv double %365, %366, !dbg !3341
  %368 = call double @fabs(double %367) #1, !dbg !3342
  %369 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !3343
  %370 = load double, double* %369, align 8, !dbg !3343
  %371 = fmul double %368, %370, !dbg !3344
  %372 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3345
  %373 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %372, i32 0, i32 1, !dbg !3346
  store double %371, double* %373, align 8, !dbg !3347
  %374 = load double, double* %7, align 8, !dbg !3348
  %375 = load double, double* %6, align 8, !dbg !3349
  %376 = fsub double %374, %375, !dbg !3350
  %377 = call double @fabs(double %376) #1, !dbg !3351
  %378 = fadd double %377, 1.000000e+00, !dbg !3352
  %379 = fmul double 0x3CC0000000000000, %378, !dbg !3353
  %380 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3354
  %381 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %380, i32 0, i32 0, !dbg !3355
  %382 = load double, double* %381, align 8, !dbg !3355
  %383 = call double @fabs(double %382) #1, !dbg !3356
  %384 = fmul double %379, %383, !dbg !3358
  %385 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3359
  %386 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %385, i32 0, i32 1, !dbg !3360
  %387 = load double, double* %386, align 8, !dbg !3361
  %388 = fadd double %387, %384, !dbg !3361
  store double %388, double* %386, align 8, !dbg !3361
  %389 = load i32, i32* %23, align 4, !dbg !3362
  %390 = icmp ne i32 %389, 0, !dbg !3362
  br i1 %390, label %391, label %393, !dbg !3362

; <label>:391:                                    ; preds = %350
  %392 = load i32, i32* %23, align 4, !dbg !3363
  br label %401, !dbg !3363

; <label>:393:                                    ; preds = %350
  %394 = load i32, i32* %25, align 4, !dbg !3364
  %395 = icmp ne i32 %394, 0, !dbg !3364
  br i1 %395, label %396, label %398, !dbg !3364

; <label>:396:                                    ; preds = %393
  %397 = load i32, i32* %25, align 4, !dbg !3366
  br label %399, !dbg !3366

; <label>:398:                                    ; preds = %393
  br label %399, !dbg !3368

; <label>:399:                                    ; preds = %398, %396
  %400 = phi i32 [ %397, %396 ], [ 0, %398 ], !dbg !3370
  br label %401, !dbg !3370

; <label>:401:                                    ; preds = %399, %391
  %402 = phi i32 [ %392, %391 ], [ %400, %399 ], !dbg !3372
  store i32 %402, i32* %5, align 4, !dbg !3374
  br label %1017, !dbg !3374

; <label>:403:                                    ; preds = %302, %295, %291
  %404 = load double, double* %8, align 8, !dbg !3375
  %405 = fcmp oge double %404, 0.000000e+00, !dbg !3377
  br i1 %405, label %406, label %676, !dbg !3378

; <label>:406:                                    ; preds = %403
  %407 = load double, double* %7, align 8, !dbg !3379
  %408 = load double, double* %6, align 8, !dbg !3382
  %409 = fcmp olt double %407, %408, !dbg !3383
  br i1 %409, label %410, label %548, !dbg !3384

; <label>:410:                                    ; preds = %406
  call void @llvm.dbg.declare(metadata double* %32, metadata !3385, metadata !62), !dbg !3387
  %411 = load double, double* %6, align 8, !dbg !3388
  %412 = load double, double* %7, align 8, !dbg !3389
  %413 = fsub double %411, %412, !dbg !3390
  %414 = call double @floor(double %413) #1, !dbg !3391
  store double %414, double* %32, align 8, !dbg !3387
  call void @llvm.dbg.declare(metadata double* %33, metadata !3392, metadata !62), !dbg !3393
  %415 = load double, double* %6, align 8, !dbg !3394
  %416 = load double, double* %7, align 8, !dbg !3395
  %417 = fsub double %415, %416, !dbg !3396
  %418 = load double, double* %32, align 8, !dbg !3397
  %419 = fsub double %417, %418, !dbg !3398
  store double %419, double* %33, align 8, !dbg !3393
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !3399, metadata !62), !dbg !3400
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %35, metadata !3401, metadata !62), !dbg !3402
  call void @llvm.dbg.declare(metadata i32* %36, metadata !3403, metadata !62), !dbg !3404
  %420 = load double, double* %33, align 8, !dbg !3405
  %421 = fsub double %420, 1.000000e+00, !dbg !3406
  %422 = load double, double* %7, align 8, !dbg !3407
  %423 = load double, double* %8, align 8, !dbg !3408
  %424 = call i32 @hyperg_1F1_beps_bgt0(double %421, double %422, double %423, %struct.gsl_sf_result_struct* %34), !dbg !3409
  store i32 %424, i32* %36, align 4, !dbg !3404
  call void @llvm.dbg.declare(metadata i32* %37, metadata !3410, metadata !62), !dbg !3411
  %425 = load double, double* %33, align 8, !dbg !3412
  %426 = load double, double* %7, align 8, !dbg !3413
  %427 = load double, double* %8, align 8, !dbg !3414
  %428 = call i32 @hyperg_1F1_beps_bgt0(double %425, double %426, double %427, %struct.gsl_sf_result_struct* %35), !dbg !3415
  store i32 %428, i32* %37, align 4, !dbg !3411
  call void @llvm.dbg.declare(metadata double* %38, metadata !3416, metadata !62), !dbg !3417
  %429 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !3418
  %430 = load double, double* %429, align 8, !dbg !3418
  store double %430, double* %38, align 8, !dbg !3417
  call void @llvm.dbg.declare(metadata double* %39, metadata !3419, metadata !62), !dbg !3420
  %431 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !3421
  %432 = load double, double* %431, align 8, !dbg !3421
  store double %432, double* %39, align 8, !dbg !3420
  call void @llvm.dbg.declare(metadata double* %40, metadata !3422, metadata !62), !dbg !3423
  %433 = load double, double* %38, align 8, !dbg !3424
  store double %433, double* %40, align 8, !dbg !3423
  call void @llvm.dbg.declare(metadata double* %41, metadata !3425, metadata !62), !dbg !3426
  %434 = load double, double* %39, align 8, !dbg !3427
  store double %434, double* %41, align 8, !dbg !3426
  call void @llvm.dbg.declare(metadata double* %42, metadata !3428, metadata !62), !dbg !3429
  call void @llvm.dbg.declare(metadata double* %43, metadata !3430, metadata !62), !dbg !3431
  call void @llvm.dbg.declare(metadata double* %44, metadata !3432, metadata !62), !dbg !3433
  %435 = load double, double* %38, align 8, !dbg !3434
  %436 = call double @fabs(double %435) #1, !dbg !3435
  %437 = load double, double* %39, align 8, !dbg !3436
  %438 = call double @fabs(double %437) #1, !dbg !3437
  %439 = fadd double %436, %438, !dbg !3439
  store double %439, double* %44, align 8, !dbg !3433
  call void @llvm.dbg.declare(metadata double* %45, metadata !3440, metadata !62), !dbg !3441
  store double 0x7FEFFFFFFFFFFFFF, double* %45, align 8, !dbg !3441
  call void @llvm.dbg.declare(metadata double* %46, metadata !3442, metadata !62), !dbg !3443
  call void @llvm.dbg.declare(metadata double* %47, metadata !3444, metadata !62), !dbg !3445
  %440 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !3446
  %441 = load double, double* %440, align 8, !dbg !3446
  %442 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !3447
  %443 = load double, double* %442, align 8, !dbg !3447
  %444 = fdiv double %441, %443, !dbg !3448
  %445 = call double @fabs(double %444) #1, !dbg !3449
  store double %445, double* %47, align 8, !dbg !3445
  call void @llvm.dbg.declare(metadata double* %48, metadata !3450, metadata !62), !dbg !3451
  %446 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !3452
  %447 = load double, double* %446, align 8, !dbg !3452
  %448 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !3453
  %449 = load double, double* %448, align 8, !dbg !3453
  %450 = fdiv double %447, %449, !dbg !3454
  %451 = call double @fabs(double %450) #1, !dbg !3455
  store double %451, double* %48, align 8, !dbg !3451
  %452 = load double, double* %7, align 8, !dbg !3456
  %453 = load double, double* %33, align 8, !dbg !3458
  %454 = fadd double %452, %453, !dbg !3459
  store double %454, double* %43, align 8, !dbg !3460
  br label %455, !dbg !3461

; <label>:455:                                    ; preds = %486, %410
  %456 = load double, double* %43, align 8, !dbg !3462
  %457 = load double, double* %6, align 8, !dbg !3465
  %458 = fsub double %457, 1.000000e-01, !dbg !3466
  %459 = fcmp olt double %456, %458, !dbg !3467
  br i1 %459, label %460, label %489, !dbg !3468

; <label>:460:                                    ; preds = %455
  %461 = load double, double* %7, align 8, !dbg !3469
  %462 = load double, double* %43, align 8, !dbg !3471
  %463 = fsub double %461, %462, !dbg !3472
  %464 = load double, double* %40, align 8, !dbg !3473
  %465 = fmul double %463, %464, !dbg !3474
  %466 = load double, double* %43, align 8, !dbg !3475
  %467 = fmul double 2.000000e+00, %466, !dbg !3476
  %468 = load double, double* %7, align 8, !dbg !3477
  %469 = fsub double %467, %468, !dbg !3478
  %470 = load double, double* %8, align 8, !dbg !3479
  %471 = fadd double %469, %470, !dbg !3480
  %472 = load double, double* %41, align 8, !dbg !3481
  %473 = fmul double %471, %472, !dbg !3482
  %474 = fadd double %465, %473, !dbg !3483
  %475 = load double, double* %43, align 8, !dbg !3484
  %476 = fdiv double %474, %475, !dbg !3485
  store double %476, double* %42, align 8, !dbg !3486
  %477 = load double, double* %41, align 8, !dbg !3487
  store double %477, double* %40, align 8, !dbg !3488
  %478 = load double, double* %42, align 8, !dbg !3489
  store double %478, double* %41, align 8, !dbg !3490
  %479 = load double, double* %40, align 8, !dbg !3491
  %480 = call double @fabs(double %479) #1, !dbg !3492
  %481 = load double, double* %41, align 8, !dbg !3493
  %482 = call double @fabs(double %481) #1, !dbg !3494
  %483 = fadd double %480, %482, !dbg !3496
  %484 = load double, double* %45, align 8, !dbg !3497
  %485 = call double @GSL_MIN_DBL(double %483, double %484), !dbg !3498
  store double %485, double* %45, align 8, !dbg !3500
  br label %486, !dbg !3501

; <label>:486:                                    ; preds = %460
  %487 = load double, double* %43, align 8, !dbg !3502
  %488 = fadd double %487, 1.000000e+00, !dbg !3502
  store double %488, double* %43, align 8, !dbg !3502
  br label %455, !dbg !3504, !llvm.loop !3505

; <label>:489:                                    ; preds = %455
  %490 = load double, double* %44, align 8, !dbg !3507
  %491 = load double, double* %45, align 8, !dbg !3508
  %492 = fdiv double %490, %491, !dbg !3509
  store double %492, double* %46, align 8, !dbg !3510
  %493 = load double, double* %41, align 8, !dbg !3511
  %494 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3512
  %495 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %494, i32 0, i32 0, !dbg !3513
  store double %493, double* %495, align 8, !dbg !3514
  %496 = load double, double* %47, align 8, !dbg !3515
  %497 = load double, double* %48, align 8, !dbg !3516
  %498 = fadd double %496, %497, !dbg !3517
  %499 = fadd double %498, 0x3CB0000000000000, !dbg !3518
  %500 = fmul double 2.000000e+00, %499, !dbg !3519
  %501 = load double, double* %7, align 8, !dbg !3520
  %502 = load double, double* %6, align 8, !dbg !3521
  %503 = fsub double %501, %502, !dbg !3522
  %504 = call double @fabs(double %503) #1, !dbg !3523
  %505 = fadd double %504, 1.000000e+00, !dbg !3524
  %506 = fmul double %500, %505, !dbg !3525
  %507 = load double, double* %41, align 8, !dbg !3526
  %508 = call double @fabs(double %507) #1, !dbg !3527
  %509 = fmul double %506, %508, !dbg !3528
  %510 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3529
  %511 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %510, i32 0, i32 1, !dbg !3530
  store double %509, double* %511, align 8, !dbg !3531
  %512 = load double, double* %47, align 8, !dbg !3532
  %513 = load double, double* %48, align 8, !dbg !3533
  %514 = fadd double %512, %513, !dbg !3534
  %515 = fmul double 2.000000e+00, %514, !dbg !3535
  %516 = load double, double* %46, align 8, !dbg !3536
  %517 = fmul double %515, %516, !dbg !3537
  %518 = load double, double* %46, align 8, !dbg !3538
  %519 = fmul double %517, %518, !dbg !3539
  %520 = load double, double* %41, align 8, !dbg !3540
  %521 = call double @fabs(double %520) #1, !dbg !3541
  %522 = fmul double %519, %521, !dbg !3542
  %523 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3543
  %524 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %523, i32 0, i32 1, !dbg !3544
  %525 = load double, double* %524, align 8, !dbg !3545
  %526 = fadd double %525, %522, !dbg !3545
  store double %526, double* %524, align 8, !dbg !3545
  %527 = load double, double* %41, align 8, !dbg !3546
  %528 = call double @fabs(double %527) #1, !dbg !3547
  %529 = fmul double 0x3CC0000000000000, %528, !dbg !3548
  %530 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3549
  %531 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %530, i32 0, i32 1, !dbg !3550
  %532 = load double, double* %531, align 8, !dbg !3551
  %533 = fadd double %532, %529, !dbg !3551
  store double %533, double* %531, align 8, !dbg !3551
  %534 = load i32, i32* %36, align 4, !dbg !3552
  %535 = icmp ne i32 %534, 0, !dbg !3552
  br i1 %535, label %536, label %538, !dbg !3552

; <label>:536:                                    ; preds = %489
  %537 = load i32, i32* %36, align 4, !dbg !3553
  br label %546, !dbg !3553

; <label>:538:                                    ; preds = %489
  %539 = load i32, i32* %37, align 4, !dbg !3554
  %540 = icmp ne i32 %539, 0, !dbg !3554
  br i1 %540, label %541, label %543, !dbg !3554

; <label>:541:                                    ; preds = %538
  %542 = load i32, i32* %37, align 4, !dbg !3556
  br label %544, !dbg !3556

; <label>:543:                                    ; preds = %538
  br label %544, !dbg !3558

; <label>:544:                                    ; preds = %543, %541
  %545 = phi i32 [ %542, %541 ], [ 0, %543 ], !dbg !3560
  br label %546, !dbg !3560

; <label>:546:                                    ; preds = %544, %536
  %547 = phi i32 [ %537, %536 ], [ %545, %544 ], !dbg !3562
  store i32 %547, i32* %5, align 4, !dbg !3564
  br label %1017, !dbg !3564

; <label>:548:                                    ; preds = %406
  call void @llvm.dbg.declare(metadata double* %49, metadata !3565, metadata !62), !dbg !3567
  %549 = load double, double* %6, align 8, !dbg !3568
  %550 = load double, double* %6, align 8, !dbg !3569
  %551 = call double @floor(double %550) #1, !dbg !3570
  %552 = fsub double %549, %551, !dbg !3571
  store double %552, double* %49, align 8, !dbg !3567
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %50, metadata !3572, metadata !62), !dbg !3573
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %51, metadata !3574, metadata !62), !dbg !3575
  call void @llvm.dbg.declare(metadata i32* %52, metadata !3576, metadata !62), !dbg !3577
  %553 = load double, double* %49, align 8, !dbg !3578
  %554 = load double, double* %7, align 8, !dbg !3579
  %555 = load double, double* %8, align 8, !dbg !3580
  %556 = call i32 @hyperg_1F1_small_a_bgt0(double %553, double %554, double %555, %struct.gsl_sf_result_struct* %50), !dbg !3581
  store i32 %556, i32* %52, align 4, !dbg !3577
  call void @llvm.dbg.declare(metadata i32* %53, metadata !3582, metadata !62), !dbg !3583
  %557 = load double, double* %49, align 8, !dbg !3584
  %558 = fadd double %557, 1.000000e+00, !dbg !3585
  %559 = load double, double* %7, align 8, !dbg !3586
  %560 = load double, double* %8, align 8, !dbg !3587
  %561 = call i32 @hyperg_1F1_small_a_bgt0(double %558, double %559, double %560, %struct.gsl_sf_result_struct* %51), !dbg !3588
  store i32 %561, i32* %53, align 4, !dbg !3583
  call void @llvm.dbg.declare(metadata double* %54, metadata !3589, metadata !62), !dbg !3590
  %562 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !3591
  %563 = load double, double* %562, align 8, !dbg !3591
  store double %563, double* %54, align 8, !dbg !3590
  call void @llvm.dbg.declare(metadata double* %55, metadata !3592, metadata !62), !dbg !3593
  %564 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !3594
  %565 = load double, double* %564, align 8, !dbg !3594
  store double %565, double* %55, align 8, !dbg !3593
  call void @llvm.dbg.declare(metadata double* %56, metadata !3595, metadata !62), !dbg !3596
  call void @llvm.dbg.declare(metadata double* %57, metadata !3597, metadata !62), !dbg !3598
  call void @llvm.dbg.declare(metadata double* %58, metadata !3599, metadata !62), !dbg !3600
  %566 = load double, double* %55, align 8, !dbg !3601
  %567 = call double @fabs(double %566) #1, !dbg !3602
  %568 = load double, double* %54, align 8, !dbg !3603
  %569 = call double @fabs(double %568) #1, !dbg !3604
  %570 = fadd double %567, %569, !dbg !3606
  store double %570, double* %58, align 8, !dbg !3600
  call void @llvm.dbg.declare(metadata double* %59, metadata !3607, metadata !62), !dbg !3608
  store double 0x7FEFFFFFFFFFFFFF, double* %59, align 8, !dbg !3608
  call void @llvm.dbg.declare(metadata double* %60, metadata !3609, metadata !62), !dbg !3610
  call void @llvm.dbg.declare(metadata double* %61, metadata !3611, metadata !62), !dbg !3612
  %571 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 1, !dbg !3613
  %572 = load double, double* %571, align 8, !dbg !3613
  %573 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !3614
  %574 = load double, double* %573, align 8, !dbg !3614
  %575 = fdiv double %572, %574, !dbg !3615
  %576 = call double @fabs(double %575) #1, !dbg !3616
  store double %576, double* %61, align 8, !dbg !3612
  call void @llvm.dbg.declare(metadata double* %62, metadata !3617, metadata !62), !dbg !3618
  %577 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !3619
  %578 = load double, double* %577, align 8, !dbg !3619
  %579 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !3620
  %580 = load double, double* %579, align 8, !dbg !3620
  %581 = fdiv double %578, %580, !dbg !3621
  %582 = call double @fabs(double %581) #1, !dbg !3622
  store double %582, double* %62, align 8, !dbg !3618
  %583 = load double, double* %49, align 8, !dbg !3623
  %584 = fadd double %583, 1.000000e+00, !dbg !3625
  store double %584, double* %57, align 8, !dbg !3626
  br label %585, !dbg !3627

; <label>:585:                                    ; preds = %616, %548
  %586 = load double, double* %57, align 8, !dbg !3628
  %587 = load double, double* %6, align 8, !dbg !3631
  %588 = fsub double %587, 1.000000e-01, !dbg !3632
  %589 = fcmp olt double %586, %588, !dbg !3633
  br i1 %589, label %590, label %619, !dbg !3634

; <label>:590:                                    ; preds = %585
  %591 = load double, double* %7, align 8, !dbg !3635
  %592 = load double, double* %57, align 8, !dbg !3637
  %593 = fsub double %591, %592, !dbg !3638
  %594 = load double, double* %54, align 8, !dbg !3639
  %595 = fmul double %593, %594, !dbg !3640
  %596 = load double, double* %57, align 8, !dbg !3641
  %597 = fmul double 2.000000e+00, %596, !dbg !3642
  %598 = load double, double* %7, align 8, !dbg !3643
  %599 = fsub double %597, %598, !dbg !3644
  %600 = load double, double* %8, align 8, !dbg !3645
  %601 = fadd double %599, %600, !dbg !3646
  %602 = load double, double* %55, align 8, !dbg !3647
  %603 = fmul double %601, %602, !dbg !3648
  %604 = fadd double %595, %603, !dbg !3649
  %605 = load double, double* %57, align 8, !dbg !3650
  %606 = fdiv double %604, %605, !dbg !3651
  store double %606, double* %56, align 8, !dbg !3652
  %607 = load double, double* %55, align 8, !dbg !3653
  store double %607, double* %54, align 8, !dbg !3654
  %608 = load double, double* %56, align 8, !dbg !3655
  store double %608, double* %55, align 8, !dbg !3656
  %609 = load double, double* %55, align 8, !dbg !3657
  %610 = call double @fabs(double %609) #1, !dbg !3658
  %611 = load double, double* %54, align 8, !dbg !3659
  %612 = call double @fabs(double %611) #1, !dbg !3660
  %613 = fadd double %610, %612, !dbg !3662
  %614 = load double, double* %59, align 8, !dbg !3663
  %615 = call double @GSL_MIN_DBL(double %613, double %614), !dbg !3664
  store double %615, double* %59, align 8, !dbg !3666
  br label %616, !dbg !3667

; <label>:616:                                    ; preds = %590
  %617 = load double, double* %57, align 8, !dbg !3668
  %618 = fadd double %617, 1.000000e+00, !dbg !3668
  store double %618, double* %57, align 8, !dbg !3668
  br label %585, !dbg !3670, !llvm.loop !3671

; <label>:619:                                    ; preds = %585
  %620 = load double, double* %58, align 8, !dbg !3673
  %621 = load double, double* %59, align 8, !dbg !3674
  %622 = fdiv double %620, %621, !dbg !3675
  store double %622, double* %60, align 8, !dbg !3676
  %623 = load double, double* %55, align 8, !dbg !3677
  %624 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3678
  %625 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %624, i32 0, i32 0, !dbg !3679
  store double %623, double* %625, align 8, !dbg !3680
  %626 = load double, double* %61, align 8, !dbg !3681
  %627 = load double, double* %62, align 8, !dbg !3682
  %628 = fadd double %626, %627, !dbg !3683
  %629 = fadd double %628, 0x3CB0000000000000, !dbg !3684
  %630 = fmul double 2.000000e+00, %629, !dbg !3685
  %631 = load double, double* %6, align 8, !dbg !3686
  %632 = call double @fabs(double %631) #1, !dbg !3687
  %633 = fadd double %632, 1.000000e+00, !dbg !3688
  %634 = fmul double %630, %633, !dbg !3689
  %635 = load double, double* %55, align 8, !dbg !3690
  %636 = call double @fabs(double %635) #1, !dbg !3691
  %637 = fmul double %634, %636, !dbg !3692
  %638 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3693
  %639 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %638, i32 0, i32 1, !dbg !3694
  store double %637, double* %639, align 8, !dbg !3695
  %640 = load double, double* %61, align 8, !dbg !3696
  %641 = load double, double* %62, align 8, !dbg !3697
  %642 = fadd double %640, %641, !dbg !3698
  %643 = fmul double 2.000000e+00, %642, !dbg !3699
  %644 = load double, double* %60, align 8, !dbg !3700
  %645 = fmul double %643, %644, !dbg !3701
  %646 = load double, double* %60, align 8, !dbg !3702
  %647 = fmul double %645, %646, !dbg !3703
  %648 = load double, double* %55, align 8, !dbg !3704
  %649 = call double @fabs(double %648) #1, !dbg !3705
  %650 = fmul double %647, %649, !dbg !3706
  %651 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3707
  %652 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %651, i32 0, i32 1, !dbg !3708
  %653 = load double, double* %652, align 8, !dbg !3709
  %654 = fadd double %653, %650, !dbg !3709
  store double %654, double* %652, align 8, !dbg !3709
  %655 = load double, double* %55, align 8, !dbg !3710
  %656 = call double @fabs(double %655) #1, !dbg !3711
  %657 = fmul double 0x3CC0000000000000, %656, !dbg !3712
  %658 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3713
  %659 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %658, i32 0, i32 1, !dbg !3714
  %660 = load double, double* %659, align 8, !dbg !3715
  %661 = fadd double %660, %657, !dbg !3715
  store double %661, double* %659, align 8, !dbg !3715
  %662 = load i32, i32* %52, align 4, !dbg !3716
  %663 = icmp ne i32 %662, 0, !dbg !3716
  br i1 %663, label %664, label %666, !dbg !3716

; <label>:664:                                    ; preds = %619
  %665 = load i32, i32* %52, align 4, !dbg !3717
  br label %674, !dbg !3717

; <label>:666:                                    ; preds = %619
  %667 = load i32, i32* %53, align 4, !dbg !3718
  %668 = icmp ne i32 %667, 0, !dbg !3718
  br i1 %668, label %669, label %671, !dbg !3718

; <label>:669:                                    ; preds = %666
  %670 = load i32, i32* %53, align 4, !dbg !3720
  br label %672, !dbg !3720

; <label>:671:                                    ; preds = %666
  br label %672, !dbg !3722

; <label>:672:                                    ; preds = %671, %669
  %673 = phi i32 [ %670, %669 ], [ 0, %671 ], !dbg !3724
  br label %674, !dbg !3724

; <label>:674:                                    ; preds = %672, %664
  %675 = phi i32 [ %665, %664 ], [ %673, %672 ], !dbg !3726
  store i32 %675, i32* %5, align 4, !dbg !3728
  br label %1017, !dbg !3728

; <label>:676:                                    ; preds = %403
  %677 = load double, double* %6, align 8, !dbg !3729
  %678 = load double, double* %7, align 8, !dbg !3732
  %679 = load double, double* %8, align 8, !dbg !3733
  %680 = fsub double %678, %679, !dbg !3734
  %681 = fmul double 5.000000e-01, %680, !dbg !3735
  %682 = fcmp ole double %677, %681, !dbg !3736
  br i1 %682, label %688, label %683, !dbg !3737

; <label>:683:                                    ; preds = %676
  %684 = load double, double* %6, align 8, !dbg !3738
  %685 = load double, double* %8, align 8, !dbg !3740
  %686 = fsub double -0.000000e+00, %685, !dbg !3741
  %687 = fcmp oge double %684, %686, !dbg !3742
  br i1 %687, label %688, label %824, !dbg !3743

; <label>:688:                                    ; preds = %683, %676
  call void @llvm.dbg.declare(metadata double* %63, metadata !3744, metadata !62), !dbg !3746
  %689 = load double, double* %6, align 8, !dbg !3747
  %690 = load double, double* %7, align 8, !dbg !3748
  %691 = fsub double %689, %690, !dbg !3749
  %692 = call double @floor(double %691) #1, !dbg !3750
  store double %692, double* %63, align 8, !dbg !3746
  call void @llvm.dbg.declare(metadata double* %64, metadata !3751, metadata !62), !dbg !3752
  %693 = load double, double* %63, align 8, !dbg !3753
  %694 = fadd double 1.000000e+00, %693, !dbg !3754
  %695 = load double, double* %6, align 8, !dbg !3755
  %696 = fsub double %694, %695, !dbg !3756
  %697 = load double, double* %7, align 8, !dbg !3757
  %698 = fadd double %696, %697, !dbg !3758
  store double %698, double* %64, align 8, !dbg !3752
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %65, metadata !3759, metadata !62), !dbg !3760
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %66, metadata !3761, metadata !62), !dbg !3762
  call void @llvm.dbg.declare(metadata i32* %67, metadata !3763, metadata !62), !dbg !3764
  %699 = load double, double* %64, align 8, !dbg !3765
  %700 = fsub double -0.000000e+00, %699, !dbg !3766
  %701 = load double, double* %6, align 8, !dbg !3767
  %702 = load double, double* %64, align 8, !dbg !3768
  %703 = fadd double %701, %702, !dbg !3769
  %704 = load double, double* %8, align 8, !dbg !3770
  %705 = call i32 @hyperg_1F1_beps_bgt0(double %700, double %703, double %704, %struct.gsl_sf_result_struct* %65), !dbg !3771
  store i32 %705, i32* %67, align 4, !dbg !3764
  call void @llvm.dbg.declare(metadata i32* %68, metadata !3772, metadata !62), !dbg !3773
  %706 = load double, double* %64, align 8, !dbg !3774
  %707 = fsub double 1.000000e+00, %706, !dbg !3775
  %708 = load double, double* %6, align 8, !dbg !3776
  %709 = load double, double* %64, align 8, !dbg !3777
  %710 = fadd double %708, %709, !dbg !3778
  %711 = fsub double %710, 1.000000e+00, !dbg !3779
  %712 = load double, double* %8, align 8, !dbg !3780
  %713 = call i32 @hyperg_1F1_beps_bgt0(double %707, double %711, double %712, %struct.gsl_sf_result_struct* %66), !dbg !3781
  store i32 %713, i32* %68, align 4, !dbg !3773
  call void @llvm.dbg.declare(metadata double* %69, metadata !3782, metadata !62), !dbg !3783
  %714 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !3784
  %715 = load double, double* %714, align 8, !dbg !3784
  store double %715, double* %69, align 8, !dbg !3783
  call void @llvm.dbg.declare(metadata double* %70, metadata !3785, metadata !62), !dbg !3786
  %716 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !3787
  %717 = load double, double* %716, align 8, !dbg !3787
  store double %717, double* %70, align 8, !dbg !3786
  call void @llvm.dbg.declare(metadata double* %71, metadata !3788, metadata !62), !dbg !3789
  call void @llvm.dbg.declare(metadata double* %72, metadata !3790, metadata !62), !dbg !3791
  call void @llvm.dbg.declare(metadata double* %73, metadata !3792, metadata !62), !dbg !3793
  %718 = load double, double* %69, align 8, !dbg !3794
  %719 = call double @fabs(double %718) #1, !dbg !3795
  %720 = load double, double* %70, align 8, !dbg !3796
  %721 = call double @fabs(double %720) #1, !dbg !3797
  %722 = fadd double %719, %721, !dbg !3799
  store double %722, double* %73, align 8, !dbg !3793
  call void @llvm.dbg.declare(metadata double* %74, metadata !3800, metadata !62), !dbg !3801
  store double 0x7FEFFFFFFFFFFFFF, double* %74, align 8, !dbg !3801
  call void @llvm.dbg.declare(metadata double* %75, metadata !3802, metadata !62), !dbg !3803
  call void @llvm.dbg.declare(metadata double* %76, metadata !3804, metadata !62), !dbg !3805
  %723 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 1, !dbg !3806
  %724 = load double, double* %723, align 8, !dbg !3806
  %725 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !3807
  %726 = load double, double* %725, align 8, !dbg !3807
  %727 = fdiv double %724, %726, !dbg !3808
  %728 = call double @fabs(double %727) #1, !dbg !3809
  store double %728, double* %76, align 8, !dbg !3805
  call void @llvm.dbg.declare(metadata double* %77, metadata !3810, metadata !62), !dbg !3811
  %729 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 1, !dbg !3812
  %730 = load double, double* %729, align 8, !dbg !3812
  %731 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !3813
  %732 = load double, double* %731, align 8, !dbg !3813
  %733 = fdiv double %730, %732, !dbg !3814
  %734 = call double @fabs(double %733) #1, !dbg !3815
  store double %734, double* %77, align 8, !dbg !3811
  %735 = load double, double* %6, align 8, !dbg !3816
  %736 = load double, double* %64, align 8, !dbg !3818
  %737 = fadd double %735, %736, !dbg !3819
  %738 = fsub double %737, 1.000000e+00, !dbg !3820
  store double %738, double* %72, align 8, !dbg !3821
  br label %739, !dbg !3822

; <label>:739:                                    ; preds = %776, %688
  %740 = load double, double* %72, align 8, !dbg !3823
  %741 = load double, double* %7, align 8, !dbg !3826
  %742 = fadd double %741, 1.000000e-01, !dbg !3827
  %743 = fcmp ogt double %740, %742, !dbg !3828
  br i1 %743, label %744, label %779, !dbg !3829

; <label>:744:                                    ; preds = %739
  %745 = load double, double* %72, align 8, !dbg !3830
  %746 = fsub double -0.000000e+00, %745, !dbg !3832
  %747 = load double, double* %72, align 8, !dbg !3833
  %748 = fsub double 1.000000e+00, %747, !dbg !3834
  %749 = load double, double* %8, align 8, !dbg !3835
  %750 = fsub double %748, %749, !dbg !3836
  %751 = fmul double %746, %750, !dbg !3837
  %752 = load double, double* %70, align 8, !dbg !3838
  %753 = fmul double %751, %752, !dbg !3839
  %754 = load double, double* %8, align 8, !dbg !3840
  %755 = load double, double* %72, align 8, !dbg !3841
  %756 = load double, double* %6, align 8, !dbg !3842
  %757 = fsub double %755, %756, !dbg !3843
  %758 = fmul double %754, %757, !dbg !3844
  %759 = load double, double* %69, align 8, !dbg !3845
  %760 = fmul double %758, %759, !dbg !3846
  %761 = fsub double %753, %760, !dbg !3847
  %762 = load double, double* %72, align 8, !dbg !3848
  %763 = load double, double* %72, align 8, !dbg !3849
  %764 = fsub double %763, 1.000000e+00, !dbg !3850
  %765 = fmul double %762, %764, !dbg !3851
  %766 = fdiv double %761, %765, !dbg !3852
  store double %766, double* %71, align 8, !dbg !3853
  %767 = load double, double* %70, align 8, !dbg !3854
  store double %767, double* %69, align 8, !dbg !3855
  %768 = load double, double* %71, align 8, !dbg !3856
  store double %768, double* %70, align 8, !dbg !3857
  %769 = load double, double* %69, align 8, !dbg !3858
  %770 = call double @fabs(double %769) #1, !dbg !3859
  %771 = load double, double* %70, align 8, !dbg !3860
  %772 = call double @fabs(double %771) #1, !dbg !3861
  %773 = fadd double %770, %772, !dbg !3863
  %774 = load double, double* %74, align 8, !dbg !3864
  %775 = call double @GSL_MIN_DBL(double %773, double %774), !dbg !3865
  store double %775, double* %74, align 8, !dbg !3867
  br label %776, !dbg !3868

; <label>:776:                                    ; preds = %744
  %777 = load double, double* %72, align 8, !dbg !3869
  %778 = fsub double %777, 1.000000e+00, !dbg !3869
  store double %778, double* %72, align 8, !dbg !3869
  br label %739, !dbg !3871, !llvm.loop !3872

; <label>:779:                                    ; preds = %739
  %780 = load double, double* %73, align 8, !dbg !3874
  %781 = load double, double* %74, align 8, !dbg !3875
  %782 = fdiv double %780, %781, !dbg !3876
  store double %782, double* %75, align 8, !dbg !3877
  %783 = load double, double* %70, align 8, !dbg !3878
  %784 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3879
  %785 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %784, i32 0, i32 0, !dbg !3880
  store double %783, double* %785, align 8, !dbg !3881
  %786 = load double, double* %76, align 8, !dbg !3882
  %787 = load double, double* %77, align 8, !dbg !3883
  %788 = fadd double %786, %787, !dbg !3884
  %789 = fadd double %788, 0x3CB0000000000000, !dbg !3885
  %790 = fmul double 2.000000e+00, %789, !dbg !3886
  %791 = load double, double* %7, align 8, !dbg !3887
  %792 = load double, double* %6, align 8, !dbg !3888
  %793 = fsub double %791, %792, !dbg !3889
  %794 = call double @fabs(double %793) #1, !dbg !3890
  %795 = fadd double %794, 1.000000e+00, !dbg !3891
  %796 = fmul double %790, %795, !dbg !3892
  %797 = load double, double* %70, align 8, !dbg !3893
  %798 = call double @fabs(double %797) #1, !dbg !3894
  %799 = fmul double %796, %798, !dbg !3895
  %800 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3896
  %801 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %800, i32 0, i32 1, !dbg !3897
  store double %799, double* %801, align 8, !dbg !3898
  %802 = load double, double* %75, align 8, !dbg !3899
  %803 = load double, double* %75, align 8, !dbg !3900
  %804 = fmul double %802, %803, !dbg !3901
  %805 = fadd double %804, 1.000000e+00, !dbg !3902
  %806 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3903
  %807 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %806, i32 0, i32 1, !dbg !3904
  %808 = load double, double* %807, align 8, !dbg !3905
  %809 = fmul double %808, %805, !dbg !3905
  store double %809, double* %807, align 8, !dbg !3905
  %810 = load i32, i32* %67, align 4, !dbg !3906
  %811 = icmp ne i32 %810, 0, !dbg !3906
  br i1 %811, label %812, label %814, !dbg !3906

; <label>:812:                                    ; preds = %779
  %813 = load i32, i32* %67, align 4, !dbg !3907
  br label %822, !dbg !3907

; <label>:814:                                    ; preds = %779
  %815 = load i32, i32* %68, align 4, !dbg !3908
  %816 = icmp ne i32 %815, 0, !dbg !3908
  br i1 %816, label %817, label %819, !dbg !3908

; <label>:817:                                    ; preds = %814
  %818 = load i32, i32* %68, align 4, !dbg !3910
  br label %820, !dbg !3910

; <label>:819:                                    ; preds = %814
  br label %820, !dbg !3912

; <label>:820:                                    ; preds = %819, %817
  %821 = phi i32 [ %818, %817 ], [ 0, %819 ], !dbg !3914
  br label %822, !dbg !3914

; <label>:822:                                    ; preds = %820, %812
  %823 = phi i32 [ %813, %812 ], [ %821, %820 ], !dbg !3916
  store i32 %823, i32* %5, align 4, !dbg !3918
  br label %1017, !dbg !3918

; <label>:824:                                    ; preds = %683
  call void @llvm.dbg.declare(metadata double* %78, metadata !3919, metadata !62), !dbg !3921
  %825 = load double, double* %6, align 8, !dbg !3922
  %826 = load double, double* %6, align 8, !dbg !3923
  %827 = call double @floor(double %826) #1, !dbg !3924
  %828 = fsub double %825, %827, !dbg !3925
  store double %828, double* %78, align 8, !dbg !3921
  call void @llvm.dbg.declare(metadata double* %79, metadata !3926, metadata !62), !dbg !3927
  %829 = load double, double* %7, align 8, !dbg !3928
  %830 = load double, double* %8, align 8, !dbg !3929
  %831 = fsub double %829, %830, !dbg !3930
  %832 = fmul double 5.000000e-01, %831, !dbg !3931
  %833 = call double @floor(double %832) #1, !dbg !3932
  %834 = load double, double* %78, align 8, !dbg !3933
  %835 = fadd double %833, %834, !dbg !3934
  store double %835, double* %79, align 8, !dbg !3927
  call void @llvm.dbg.declare(metadata double* %80, metadata !3935, metadata !62), !dbg !3936
  %836 = load double, double* %79, align 8, !dbg !3937
  %837 = load double, double* %7, align 8, !dbg !3938
  %838 = fsub double %836, %837, !dbg !3939
  %839 = call double @floor(double %838) #1, !dbg !3940
  store double %839, double* %80, align 8, !dbg !3936
  call void @llvm.dbg.declare(metadata double* %81, metadata !3941, metadata !62), !dbg !3942
  %840 = load double, double* %80, align 8, !dbg !3943
  %841 = fadd double 1.000000e+00, %840, !dbg !3944
  %842 = load double, double* %79, align 8, !dbg !3945
  %843 = fsub double %841, %842, !dbg !3946
  %844 = load double, double* %7, align 8, !dbg !3947
  %845 = fadd double %843, %844, !dbg !3948
  store double %845, double* %81, align 8, !dbg !3942
  call void @llvm.dbg.declare(metadata double* %82, metadata !3949, metadata !62), !dbg !3950
  call void @llvm.dbg.declare(metadata double* %83, metadata !3951, metadata !62), !dbg !3952
  call void @llvm.dbg.declare(metadata double* %84, metadata !3953, metadata !62), !dbg !3954
  call void @llvm.dbg.declare(metadata i32* %85, metadata !3955, metadata !62), !dbg !3956
  call void @llvm.dbg.declare(metadata double* %86, metadata !3957, metadata !62), !dbg !3958
  call void @llvm.dbg.declare(metadata double* %87, metadata !3959, metadata !62), !dbg !3960
  call void @llvm.dbg.declare(metadata double* %88, metadata !3961, metadata !62), !dbg !3962
  call void @llvm.dbg.declare(metadata double* %89, metadata !3963, metadata !62), !dbg !3964
  call void @llvm.dbg.declare(metadata double* %90, metadata !3965, metadata !62), !dbg !3966
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %91, metadata !3967, metadata !62), !dbg !3969
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %92, metadata !3970, metadata !62), !dbg !3971
  call void @llvm.dbg.declare(metadata i32* %93, metadata !3972, metadata !62), !dbg !3973
  %846 = load double, double* %81, align 8, !dbg !3974
  %847 = fsub double -0.000000e+00, %846, !dbg !3975
  %848 = load double, double* %79, align 8, !dbg !3976
  %849 = load double, double* %81, align 8, !dbg !3977
  %850 = fadd double %848, %849, !dbg !3978
  %851 = load double, double* %8, align 8, !dbg !3979
  %852 = call i32 @hyperg_1F1_beps_bgt0(double %847, double %850, double %851, %struct.gsl_sf_result_struct* %91), !dbg !3980
  store i32 %852, i32* %93, align 4, !dbg !3973
  call void @llvm.dbg.declare(metadata i32* %94, metadata !3981, metadata !62), !dbg !3982
  %853 = load double, double* %81, align 8, !dbg !3983
  %854 = fsub double 1.000000e+00, %853, !dbg !3984
  %855 = load double, double* %79, align 8, !dbg !3985
  %856 = load double, double* %81, align 8, !dbg !3986
  %857 = fadd double %855, %856, !dbg !3987
  %858 = fsub double %857, 1.000000e+00, !dbg !3988
  %859 = load double, double* %8, align 8, !dbg !3989
  %860 = call i32 @hyperg_1F1_beps_bgt0(double %854, double %858, double %859, %struct.gsl_sf_result_struct* %92), !dbg !3990
  store i32 %860, i32* %94, align 4, !dbg !3982
  call void @llvm.dbg.declare(metadata double* %95, metadata !3991, metadata !62), !dbg !3992
  %861 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !3993
  %862 = load double, double* %861, align 8, !dbg !3993
  store double %862, double* %95, align 8, !dbg !3992
  call void @llvm.dbg.declare(metadata double* %96, metadata !3994, metadata !62), !dbg !3995
  %863 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !3996
  %864 = load double, double* %863, align 8, !dbg !3996
  store double %864, double* %96, align 8, !dbg !3995
  call void @llvm.dbg.declare(metadata double* %97, metadata !3997, metadata !62), !dbg !3998
  %865 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 1, !dbg !3999
  %866 = load double, double* %865, align 8, !dbg !3999
  %867 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !4000
  %868 = load double, double* %867, align 8, !dbg !4000
  %869 = fdiv double %866, %868, !dbg !4001
  %870 = call double @fabs(double %869) #1, !dbg !4002
  %871 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 1, !dbg !4003
  %872 = load double, double* %871, align 8, !dbg !4003
  %873 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !4004
  %874 = load double, double* %873, align 8, !dbg !4004
  %875 = fdiv double %872, %874, !dbg !4005
  %876 = call double @fabs(double %875) #1, !dbg !4006
  %877 = fadd double %870, %876, !dbg !4008
  store double %877, double* %90, align 8, !dbg !4009
  %878 = load double, double* %79, align 8, !dbg !4010
  %879 = load double, double* %81, align 8, !dbg !4012
  %880 = fadd double %878, %879, !dbg !4013
  %881 = fsub double %880, 1.000000e+00, !dbg !4014
  store double %881, double* %89, align 8, !dbg !4015
  br label %882, !dbg !4016

; <label>:882:                                    ; preds = %912, %824
  %883 = load double, double* %89, align 8, !dbg !4017
  %884 = load double, double* %7, align 8, !dbg !4020
  %885 = fadd double %884, 1.000000e-01, !dbg !4021
  %886 = fcmp ogt double %883, %885, !dbg !4022
  br i1 %886, label %887, label %915, !dbg !4023

; <label>:887:                                    ; preds = %882
  %888 = load double, double* %89, align 8, !dbg !4024
  %889 = fsub double -0.000000e+00, %888, !dbg !4026
  %890 = load double, double* %89, align 8, !dbg !4027
  %891 = fsub double 1.000000e+00, %890, !dbg !4028
  %892 = load double, double* %8, align 8, !dbg !4029
  %893 = fsub double %891, %892, !dbg !4030
  %894 = fmul double %889, %893, !dbg !4031
  %895 = load double, double* %96, align 8, !dbg !4032
  %896 = fmul double %894, %895, !dbg !4033
  %897 = load double, double* %8, align 8, !dbg !4034
  %898 = load double, double* %89, align 8, !dbg !4035
  %899 = load double, double* %79, align 8, !dbg !4036
  %900 = fsub double %898, %899, !dbg !4037
  %901 = fmul double %897, %900, !dbg !4038
  %902 = load double, double* %95, align 8, !dbg !4039
  %903 = fmul double %901, %902, !dbg !4040
  %904 = fsub double %896, %903, !dbg !4041
  %905 = load double, double* %89, align 8, !dbg !4042
  %906 = load double, double* %89, align 8, !dbg !4043
  %907 = fsub double %906, 1.000000e+00, !dbg !4044
  %908 = fmul double %905, %907, !dbg !4045
  %909 = fdiv double %904, %908, !dbg !4046
  store double %909, double* %97, align 8, !dbg !4047
  %910 = load double, double* %96, align 8, !dbg !4048
  store double %910, double* %95, align 8, !dbg !4049
  %911 = load double, double* %97, align 8, !dbg !4050
  store double %911, double* %96, align 8, !dbg !4051
  br label %912, !dbg !4052

; <label>:912:                                    ; preds = %887
  %913 = load double, double* %89, align 8, !dbg !4053
  %914 = fsub double %913, 1.000000e+00, !dbg !4053
  store double %914, double* %89, align 8, !dbg !4053
  br label %882, !dbg !4055, !llvm.loop !4056

; <label>:915:                                    ; preds = %882
  %916 = load double, double* %95, align 8, !dbg !4058
  store double %916, double* %83, align 8, !dbg !4059
  %917 = load double, double* %96, align 8, !dbg !4060
  store double %917, double* %82, align 8, !dbg !4061
  %918 = load double, double* %7, align 8, !dbg !4062
  %919 = load double, double* %79, align 8, !dbg !4063
  %920 = load double, double* %8, align 8, !dbg !4064
  %921 = fadd double %919, %920, !dbg !4065
  %922 = fmul double %918, %921, !dbg !4066
  %923 = load double, double* %82, align 8, !dbg !4067
  %924 = fmul double %922, %923, !dbg !4068
  %925 = load double, double* %8, align 8, !dbg !4069
  %926 = load double, double* %79, align 8, !dbg !4070
  %927 = load double, double* %7, align 8, !dbg !4071
  %928 = fsub double %926, %927, !dbg !4072
  %929 = fmul double %925, %928, !dbg !4073
  %930 = load double, double* %83, align 8, !dbg !4074
  %931 = fmul double %929, %930, !dbg !4075
  %932 = fadd double %924, %931, !dbg !4076
  %933 = load double, double* %79, align 8, !dbg !4077
  %934 = load double, double* %7, align 8, !dbg !4078
  %935 = fmul double %933, %934, !dbg !4079
  %936 = fdiv double %932, %935, !dbg !4080
  store double %936, double* %84, align 8, !dbg !4081
  %937 = load i32, i32* %93, align 4, !dbg !4082
  %938 = icmp ne i32 %937, 0, !dbg !4082
  br i1 %938, label %939, label %941, !dbg !4082

; <label>:939:                                    ; preds = %915
  %940 = load i32, i32* %93, align 4, !dbg !4083
  br label %949, !dbg !4083

; <label>:941:                                    ; preds = %915
  %942 = load i32, i32* %94, align 4, !dbg !4084
  %943 = icmp ne i32 %942, 0, !dbg !4084
  br i1 %943, label %944, label %946, !dbg !4084

; <label>:944:                                    ; preds = %941
  %945 = load i32, i32* %94, align 4, !dbg !4086
  br label %947, !dbg !4086

; <label>:946:                                    ; preds = %941
  br label %947, !dbg !4088

; <label>:947:                                    ; preds = %946, %944
  %948 = phi i32 [ %945, %944 ], [ 0, %946 ], !dbg !4090
  br label %949, !dbg !4090

; <label>:949:                                    ; preds = %947, %939
  %950 = phi i32 [ %940, %939 ], [ %948, %947 ], !dbg !4092
  store i32 %950, i32* %85, align 4, !dbg !4094
  %951 = load double, double* %79, align 8, !dbg !4095
  %952 = load double, double* %6, align 8, !dbg !4097
  %953 = fsub double %952, 1.000000e-01, !dbg !4098
  %954 = fcmp oge double %951, %953, !dbg !4099
  br i1 %954, label %955, label %957, !dbg !4100

; <label>:955:                                    ; preds = %949
  %956 = load double, double* %82, align 8, !dbg !4101
  store double %956, double* %87, align 8, !dbg !4103
  br label %999, !dbg !4104

; <label>:957:                                    ; preds = %949
  %958 = load double, double* %79, align 8, !dbg !4105
  %959 = fadd double %958, 1.000000e+00, !dbg !4107
  %960 = load double, double* %6, align 8, !dbg !4108
  %961 = fsub double %960, 1.000000e-01, !dbg !4109
  %962 = fcmp oge double %959, %961, !dbg !4110
  br i1 %962, label %963, label %965, !dbg !4111

; <label>:963:                                    ; preds = %957
  %964 = load double, double* %84, align 8, !dbg !4112
  store double %964, double* %87, align 8, !dbg !4114
  br label %998, !dbg !4115

; <label>:965:                                    ; preds = %957
  %966 = load double, double* %82, align 8, !dbg !4116
  store double %966, double* %86, align 8, !dbg !4118
  %967 = load double, double* %84, align 8, !dbg !4119
  store double %967, double* %87, align 8, !dbg !4120
  %968 = load double, double* %79, align 8, !dbg !4121
  %969 = fadd double %968, 1.000000e+00, !dbg !4123
  store double %969, double* %89, align 8, !dbg !4124
  br label %970, !dbg !4125

; <label>:970:                                    ; preds = %994, %965
  %971 = load double, double* %89, align 8, !dbg !4126
  %972 = load double, double* %6, align 8, !dbg !4129
  %973 = fsub double %972, 1.000000e-01, !dbg !4130
  %974 = fcmp olt double %971, %973, !dbg !4131
  br i1 %974, label %975, label %997, !dbg !4132

; <label>:975:                                    ; preds = %970
  %976 = load double, double* %7, align 8, !dbg !4133
  %977 = load double, double* %89, align 8, !dbg !4135
  %978 = fsub double %976, %977, !dbg !4136
  %979 = load double, double* %86, align 8, !dbg !4137
  %980 = fmul double %978, %979, !dbg !4138
  %981 = load double, double* %89, align 8, !dbg !4139
  %982 = fmul double 2.000000e+00, %981, !dbg !4140
  %983 = load double, double* %7, align 8, !dbg !4141
  %984 = fsub double %982, %983, !dbg !4142
  %985 = load double, double* %8, align 8, !dbg !4143
  %986 = fadd double %984, %985, !dbg !4144
  %987 = load double, double* %87, align 8, !dbg !4145
  %988 = fmul double %986, %987, !dbg !4146
  %989 = fadd double %980, %988, !dbg !4147
  %990 = load double, double* %89, align 8, !dbg !4148
  %991 = fdiv double %989, %990, !dbg !4149
  store double %991, double* %88, align 8, !dbg !4150
  %992 = load double, double* %87, align 8, !dbg !4151
  store double %992, double* %86, align 8, !dbg !4152
  %993 = load double, double* %88, align 8, !dbg !4153
  store double %993, double* %87, align 8, !dbg !4154
  br label %994, !dbg !4155

; <label>:994:                                    ; preds = %975
  %995 = load double, double* %89, align 8, !dbg !4156
  %996 = fadd double %995, 1.000000e+00, !dbg !4156
  store double %996, double* %89, align 8, !dbg !4156
  br label %970, !dbg !4158, !llvm.loop !4159

; <label>:997:                                    ; preds = %970
  br label %998

; <label>:998:                                    ; preds = %997, %963
  br label %999

; <label>:999:                                    ; preds = %998, %955
  %1000 = load double, double* %87, align 8, !dbg !4161
  %1001 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4162
  %1002 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %1001, i32 0, i32 0, !dbg !4163
  store double %1000, double* %1002, align 8, !dbg !4164
  %1003 = load double, double* %90, align 8, !dbg !4165
  %1004 = fadd double %1003, 0x3CB0000000000000, !dbg !4166
  %1005 = load double, double* %7, align 8, !dbg !4167
  %1006 = load double, double* %6, align 8, !dbg !4168
  %1007 = fsub double %1005, %1006, !dbg !4169
  %1008 = call double @fabs(double %1007) #1, !dbg !4170
  %1009 = fadd double %1008, 1.000000e+00, !dbg !4171
  %1010 = fmul double %1004, %1009, !dbg !4172
  %1011 = load double, double* %87, align 8, !dbg !4173
  %1012 = call double @fabs(double %1011) #1, !dbg !4174
  %1013 = fmul double %1010, %1012, !dbg !4176
  %1014 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4177
  %1015 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %1014, i32 0, i32 1, !dbg !4178
  store double %1013, double* %1015, align 8, !dbg !4179
  %1016 = load i32, i32* %85, align 4, !dbg !4180
  store i32 %1016, i32* %5, align 4, !dbg !4181
  br label %1017, !dbg !4181

; <label>:1017:                                   ; preds = %999, %822, %674, %546, %401, %289, %181, %169, %145, %121
  %1018 = load i32, i32* %5, align 4, !dbg !4182
  ret i32 %1018, !dbg !4182
}

declare i32 @gsl_sf_hyperg_1F1_series_e(double, double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_a_negint_poly(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !4183 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4184, metadata !62), !dbg !4185
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !4186, metadata !62), !dbg !4187
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !4188, metadata !62), !dbg !4189
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !4190, metadata !62), !dbg !4191
  %15 = load i32, i32* %6, align 4, !dbg !4192
  %16 = icmp eq i32 %15, 0, !dbg !4194
  br i1 %16, label %17, label %22, !dbg !4195

; <label>:17:                                     ; preds = %4
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4196
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !4198
  store double 1.000000e+00, double* %19, align 8, !dbg !4199
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4200
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !4201
  store double 1.000000e+00, double* %21, align 8, !dbg !4202
  store i32 0, i32* %5, align 4, !dbg !4203
  br label %86, !dbg !4203

; <label>:22:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4204, metadata !62), !dbg !4206
  %23 = load i32, i32* %6, align 4, !dbg !4207
  %24 = sub nsw i32 0, %23, !dbg !4208
  store i32 %24, i32* %10, align 4, !dbg !4206
  call void @llvm.dbg.declare(metadata double* %11, metadata !4209, metadata !62), !dbg !4210
  store double 1.000000e+00, double* %11, align 8, !dbg !4210
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4211, metadata !62), !dbg !4212
  %25 = load i32, i32* %10, align 4, !dbg !4213
  %26 = sub nsw i32 %25, 1, !dbg !4215
  store i32 %26, i32* %12, align 4, !dbg !4216
  br label %27, !dbg !4217

; <label>:27:                                     ; preds = %68, %22
  %28 = load i32, i32* %12, align 4, !dbg !4218
  %29 = icmp sge i32 %28, 0, !dbg !4221
  br i1 %29, label %30, label %71, !dbg !4222

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata double* %13, metadata !4223, metadata !62), !dbg !4225
  %31 = load i32, i32* %6, align 4, !dbg !4226
  %32 = load i32, i32* %12, align 4, !dbg !4227
  %33 = add nsw i32 %31, %32, !dbg !4228
  %34 = sitofp i32 %33 to double, !dbg !4229
  %35 = load double, double* %7, align 8, !dbg !4230
  %36 = load i32, i32* %12, align 4, !dbg !4231
  %37 = sitofp i32 %36 to double, !dbg !4231
  %38 = fadd double %35, %37, !dbg !4232
  %39 = fdiv double %34, %38, !dbg !4233
  %40 = load double, double* %8, align 8, !dbg !4234
  %41 = load i32, i32* %12, align 4, !dbg !4235
  %42 = add nsw i32 %41, 1, !dbg !4236
  %43 = sitofp i32 %42 to double, !dbg !4237
  %44 = fdiv double %40, %43, !dbg !4238
  %45 = fmul double %39, %44, !dbg !4239
  store double %45, double* %13, align 8, !dbg !4225
  call void @llvm.dbg.declare(metadata double* %14, metadata !4240, metadata !62), !dbg !4241
  %46 = load double, double* %13, align 8, !dbg !4242
  %47 = load double, double* %11, align 8, !dbg !4243
  %48 = fdiv double 1.000000e+00, %47, !dbg !4244
  %49 = fadd double %46, %48, !dbg !4245
  store double %49, double* %14, align 8, !dbg !4241
  %50 = load double, double* %14, align 8, !dbg !4246
  %51 = load double, double* %11, align 8, !dbg !4248
  %52 = fdiv double 0x7FECCCCCCCCCCCCC, %51, !dbg !4249
  %53 = fcmp ogt double %50, %52, !dbg !4250
  br i1 %53, label %54, label %63, !dbg !4251

; <label>:54:                                     ; preds = %30
  br label %55, !dbg !4252, !llvm.loop !4254

; <label>:55:                                     ; preds = %54
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4255
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !4255
  store double 0x7FF0000000000000, double* %57, align 8, !dbg !4255
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4255
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !4255
  store double 0x7FF0000000000000, double* %59, align 8, !dbg !4255
  br label %60, !dbg !4255, !llvm.loop !4258

; <label>:60:                                     ; preds = %55
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 1198, i32 16), !dbg !4260
  store i32 16, i32* %5, align 4, !dbg !4260
  br label %86, !dbg !4260
                                                  ; No predecessors!
  br label %62, !dbg !4263

; <label>:62:                                     ; preds = %61
  br label %67, !dbg !4265

; <label>:63:                                     ; preds = %30
  %64 = load double, double* %14, align 8, !dbg !4266
  %65 = load double, double* %11, align 8, !dbg !4268
  %66 = fmul double %65, %64, !dbg !4268
  store double %66, double* %11, align 8, !dbg !4268
  br label %67

; <label>:67:                                     ; preds = %63, %62
  br label %68, !dbg !4269

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %12, align 4, !dbg !4270
  %70 = add nsw i32 %69, -1, !dbg !4270
  store i32 %70, i32* %12, align 4, !dbg !4270
  br label %27, !dbg !4272, !llvm.loop !4273

; <label>:71:                                     ; preds = %27
  %72 = load double, double* %11, align 8, !dbg !4275
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4276
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !4277
  store double %72, double* %74, align 8, !dbg !4278
  %75 = load i32, i32* %10, align 4, !dbg !4279
  %76 = sitofp i32 %75 to double, !dbg !4279
  %77 = call double @sqrt(double %76) #5, !dbg !4280
  %78 = fadd double %77, 1.000000e+00, !dbg !4281
  %79 = fmul double 2.000000e+00, %78, !dbg !4282
  %80 = fmul double %79, 0x3CB0000000000000, !dbg !4283
  %81 = load double, double* %11, align 8, !dbg !4284
  %82 = call double @fabs(double %81) #1, !dbg !4285
  %83 = fmul double %80, %82, !dbg !4287
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4288
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !4289
  store double %83, double* %85, align 8, !dbg !4290
  store i32 0, i32* %5, align 4, !dbg !4291
  br label %86, !dbg !4291

; <label>:86:                                     ; preds = %71, %60, %17
  %87 = load i32, i32* %5, align 4, !dbg !4292
  ret i32 %87, !dbg !4292
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_ab_neg(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !4293 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !4294, metadata !62), !dbg !4295
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !4296, metadata !62), !dbg !4297
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !4298, metadata !62), !dbg !4299
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !4300, metadata !62), !dbg !4301
  call void @llvm.dbg.declare(metadata double* %10, metadata !4302, metadata !62), !dbg !4303
  %23 = load double, double* %7, align 8, !dbg !4304
  %24 = load double, double* %6, align 8, !dbg !4305
  %25 = fsub double %23, %24, !dbg !4306
  store double %25, double* %10, align 8, !dbg !4303
  call void @llvm.dbg.declare(metadata double* %11, metadata !4307, metadata !62), !dbg !4308
  %26 = load double, double* %8, align 8, !dbg !4309
  %27 = call double @fabs(double %26) #1, !dbg !4310
  store double %27, double* %11, align 8, !dbg !4308
  call void @llvm.dbg.declare(metadata double* %12, metadata !4311, metadata !62), !dbg !4312
  %28 = load double, double* %6, align 8, !dbg !4313
  %29 = call double @fabs(double %28) #1, !dbg !4314
  store double %29, double* %12, align 8, !dbg !4312
  call void @llvm.dbg.declare(metadata double* %13, metadata !4315, metadata !62), !dbg !4316
  %30 = load double, double* %7, align 8, !dbg !4317
  %31 = call double @fabs(double %30) #1, !dbg !4318
  store double %31, double* %13, align 8, !dbg !4316
  call void @llvm.dbg.declare(metadata double* %14, metadata !4319, metadata !62), !dbg !4320
  %32 = load double, double* %12, align 8, !dbg !4321
  %33 = fcmp ogt double %32, 1.000000e+00, !dbg !4321
  br i1 %33, label %34, label %36, !dbg !4321

; <label>:34:                                     ; preds = %4
  %35 = load double, double* %12, align 8, !dbg !4322
  br label %37, !dbg !4322

; <label>:36:                                     ; preds = %4
  br label %37, !dbg !4324

; <label>:37:                                     ; preds = %36, %34
  %38 = phi double [ %35, %34 ], [ 1.000000e+00, %36 ], !dbg !4326
  store double %38, double* %14, align 8, !dbg !4328
  call void @llvm.dbg.declare(metadata double* %15, metadata !4329, metadata !62), !dbg !4330
  %39 = load double, double* %13, align 8, !dbg !4331
  %40 = fcmp ogt double %39, 1.000000e+00, !dbg !4331
  br i1 %40, label %41, label %43, !dbg !4331

; <label>:41:                                     ; preds = %37
  %42 = load double, double* %13, align 8, !dbg !4332
  br label %44, !dbg !4332

; <label>:43:                                     ; preds = %37
  br label %44, !dbg !4333

; <label>:44:                                     ; preds = %43, %41
  %45 = phi double [ %42, %41 ], [ 1.000000e+00, %43 ], !dbg !4334
  store double %45, double* %15, align 8, !dbg !4335
  call void @llvm.dbg.declare(metadata i32* %16, metadata !4336, metadata !62), !dbg !4337
  %46 = load double, double* %10, align 8, !dbg !4338
  %47 = load double, double* %10, align 8, !dbg !4339
  %48 = fadd double %47, 5.000000e-01, !dbg !4340
  %49 = call double @floor(double %48) #1, !dbg !4341
  %50 = fsub double %46, %49, !dbg !4342
  %51 = fcmp olt double %50, 0x3D19000000000000, !dbg !4343
  %52 = zext i1 %51 to i32, !dbg !4343
  store i32 %52, i32* %16, align 4, !dbg !4337
  %53 = load double, double* %12, align 8, !dbg !4344
  %54 = fcmp olt double %53, 1.000000e+01, !dbg !4346
  br i1 %54, label %55, label %61, !dbg !4347

; <label>:55:                                     ; preds = %44
  %56 = load double, double* %13, align 8, !dbg !4348
  %57 = fcmp olt double %56, 1.000000e+01, !dbg !4350
  br i1 %57, label %58, label %61, !dbg !4351

; <label>:58:                                     ; preds = %55
  %59 = load double, double* %11, align 8, !dbg !4352
  %60 = fcmp olt double %59, 5.000000e+00, !dbg !4354
  br i1 %60, label %77, label %61, !dbg !4355

; <label>:61:                                     ; preds = %58, %55, %44
  %62 = load double, double* %7, align 8, !dbg !4356
  %63 = load double, double* %6, align 8, !dbg !4357
  %64 = call double @fabs(double %63) #1, !dbg !4357
  %65 = fcmp ogt double %64, 1.000000e+00, !dbg !4357
  br i1 %65, label %66, label %69, !dbg !4357

; <label>:66:                                     ; preds = %61
  %67 = load double, double* %6, align 8, !dbg !4358
  %68 = call double @fabs(double %67) #1, !dbg !4358
  br label %70, !dbg !4358

; <label>:69:                                     ; preds = %61
  br label %70, !dbg !4359

; <label>:70:                                     ; preds = %69, %66
  %71 = phi double [ %68, %66 ], [ 1.000000e+00, %69 ], !dbg !4361
  %72 = fmul double 8.000000e-01, %71, !dbg !4363
  %73 = load double, double* %8, align 8, !dbg !4364
  %74 = call double @fabs(double %73) #1, !dbg !4365
  %75 = fmul double %72, %74, !dbg !4366
  %76 = fcmp ogt double %62, %75, !dbg !4367
  br i1 %76, label %77, label %83, !dbg !4368

; <label>:77:                                     ; preds = %70, %58
  %78 = load double, double* %6, align 8, !dbg !4369
  %79 = load double, double* %7, align 8, !dbg !4371
  %80 = load double, double* %8, align 8, !dbg !4372
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4373
  %82 = call i32 @gsl_sf_hyperg_1F1_series_e(double %78, double %79, double %80, %struct.gsl_sf_result_struct* %81), !dbg !4374
  store i32 %82, i32* %5, align 4, !dbg !4375
  br label %247, !dbg !4375

; <label>:83:                                     ; preds = %70
  %84 = load double, double* %8, align 8, !dbg !4376
  %85 = fcmp ogt double %84, 0.000000e+00, !dbg !4378
  br i1 %85, label %86, label %105, !dbg !4379

; <label>:86:                                     ; preds = %83
  %87 = load double, double* %15, align 8, !dbg !4380
  %88 = load double, double* %14, align 8, !dbg !4382
  %89 = fcmp ogt double %87, %88, !dbg !4383
  br i1 %89, label %90, label %105, !dbg !4384

; <label>:90:                                     ; preds = %86
  %91 = load double, double* %14, align 8, !dbg !4385
  %92 = load double, double* %8, align 8, !dbg !4386
  %93 = fmul double 0x4005BF0A8B145769, %92, !dbg !4387
  %94 = load double, double* %15, align 8, !dbg !4388
  %95 = fdiv double %93, %94, !dbg !4389
  %96 = call double @log(double %95) #5, !dbg !4390
  %97 = fmul double %91, %96, !dbg !4391
  %98 = fcmp olt double %97, 0xC03D0B2CDE569E24, !dbg !4392
  br i1 %98, label %99, label %105, !dbg !4393

; <label>:99:                                     ; preds = %90
  %100 = load double, double* %6, align 8, !dbg !4394
  %101 = load double, double* %7, align 8, !dbg !4396
  %102 = load double, double* %8, align 8, !dbg !4397
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4398
  %104 = call i32 @gsl_sf_hyperg_1F1_series_e(double %100, double %101, double %102, %struct.gsl_sf_result_struct* %103), !dbg !4399
  store i32 %104, i32* %5, align 4, !dbg !4400
  br label %247, !dbg !4400

; <label>:105:                                    ; preds = %90, %86, %83
  %106 = load double, double* %11, align 8, !dbg !4401
  %107 = fcmp olt double %106, 5.000000e+00, !dbg !4403
  br i1 %107, label %108, label %115, !dbg !4404

; <label>:108:                                    ; preds = %105
  %109 = load double, double* %10, align 8, !dbg !4405
  %110 = call double @fabs(double %109) #1, !dbg !4407
  %111 = fcmp olt double %110, 1.000000e+01, !dbg !4408
  br i1 %111, label %112, label %115, !dbg !4409

; <label>:112:                                    ; preds = %108
  %113 = load double, double* %13, align 8, !dbg !4410
  %114 = fcmp olt double %113, 1.000000e+01, !dbg !4412
  br i1 %114, label %124, label %115, !dbg !4413

; <label>:115:                                    ; preds = %112, %108, %105
  %116 = load double, double* %7, align 8, !dbg !4414
  %117 = load double, double* %10, align 8, !dbg !4415
  %118 = call double @fabs(double %117) #1, !dbg !4416
  %119 = call double @GSL_MAX_DBL(double %118, double 1.000000e+00), !dbg !4417
  %120 = fmul double 8.000000e-01, %119, !dbg !4419
  %121 = load double, double* %11, align 8, !dbg !4420
  %122 = fmul double %120, %121, !dbg !4421
  %123 = fcmp ogt double %116, %122, !dbg !4422
  br i1 %123, label %124, label %154, !dbg !4423

; <label>:124:                                    ; preds = %115, %112
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !4425, metadata !62), !dbg !4427
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4428, metadata !62), !dbg !4429
  %125 = load double, double* %10, align 8, !dbg !4430
  %126 = load double, double* %7, align 8, !dbg !4431
  %127 = load double, double* %8, align 8, !dbg !4432
  %128 = fsub double -0.000000e+00, %127, !dbg !4433
  %129 = call i32 @gsl_sf_hyperg_1F1_series_e(double %125, double %126, double %128, %struct.gsl_sf_result_struct* %17), !dbg !4434
  store i32 %129, i32* %18, align 4, !dbg !4429
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4435, metadata !62), !dbg !4436
  %130 = load double, double* %8, align 8, !dbg !4437
  %131 = load double, double* %8, align 8, !dbg !4438
  %132 = call double @fabs(double %131) #1, !dbg !4439
  %133 = fmul double 0x3CB0000000000000, %132, !dbg !4440
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !4441
  %135 = load double, double* %134, align 8, !dbg !4441
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !4442
  %137 = load double, double* %136, align 8, !dbg !4442
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4443
  %139 = call i32 @gsl_sf_exp_mult_err_e(double %130, double %133, double %135, double %137, %struct.gsl_sf_result_struct* %138), !dbg !4444
  store i32 %139, i32* %19, align 4, !dbg !4436
  %140 = load i32, i32* %19, align 4, !dbg !4446
  %141 = icmp ne i32 %140, 0, !dbg !4446
  br i1 %141, label %142, label %144, !dbg !4446

; <label>:142:                                    ; preds = %124
  %143 = load i32, i32* %19, align 4, !dbg !4447
  br label %152, !dbg !4447

; <label>:144:                                    ; preds = %124
  %145 = load i32, i32* %18, align 4, !dbg !4448
  %146 = icmp ne i32 %145, 0, !dbg !4448
  br i1 %146, label %147, label %149, !dbg !4448

; <label>:147:                                    ; preds = %144
  %148 = load i32, i32* %18, align 4, !dbg !4450
  br label %150, !dbg !4450

; <label>:149:                                    ; preds = %144
  br label %150, !dbg !4452

; <label>:150:                                    ; preds = %149, %147
  %151 = phi i32 [ %148, %147 ], [ 0, %149 ], !dbg !4454
  br label %152, !dbg !4454

; <label>:152:                                    ; preds = %150, %142
  %153 = phi i32 [ %143, %142 ], [ %151, %150 ], !dbg !4456
  store i32 %153, i32* %5, align 4, !dbg !4458
  br label %247, !dbg !4458

; <label>:154:                                    ; preds = %115
  %155 = load double, double* %8, align 8, !dbg !4459
  %156 = fcmp olt double %155, -3.000000e+01, !dbg !4461
  br i1 %156, label %157, label %178, !dbg !4462

; <label>:157:                                    ; preds = %154
  %158 = load double, double* %6, align 8, !dbg !4463
  %159 = call double @fabs(double %158) #1, !dbg !4465
  %160 = call double @GSL_MAX_DBL(double %159, double 1.000000e+00), !dbg !4466
  %161 = load double, double* %6, align 8, !dbg !4468
  %162 = fadd double 1.000000e+00, %161, !dbg !4469
  %163 = load double, double* %7, align 8, !dbg !4470
  %164 = fsub double %162, %163, !dbg !4471
  %165 = call double @fabs(double %164) #1, !dbg !4472
  %166 = call double @GSL_MAX_DBL(double %165, double 1.000000e+00), !dbg !4474
  %167 = fmul double %160, %166, !dbg !4476
  %168 = load double, double* %8, align 8, !dbg !4477
  %169 = call double @fabs(double %168) #1, !dbg !4478
  %170 = fmul double 9.900000e-01, %169, !dbg !4480
  %171 = fcmp olt double %167, %170, !dbg !4481
  br i1 %171, label %172, label %178, !dbg !4482

; <label>:172:                                    ; preds = %157
  %173 = load double, double* %6, align 8, !dbg !4483
  %174 = load double, double* %7, align 8, !dbg !4485
  %175 = load double, double* %8, align 8, !dbg !4486
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4487
  %177 = call i32 @hyperg_1F1_asymp_negx(double %173, double %174, double %175, %struct.gsl_sf_result_struct* %176), !dbg !4488
  store i32 %177, i32* %5, align 4, !dbg !4489
  br label %247, !dbg !4489

; <label>:178:                                    ; preds = %157, %154
  %179 = load double, double* %8, align 8, !dbg !4490
  %180 = fcmp ogt double %179, 1.000000e+02, !dbg !4492
  br i1 %180, label %181, label %200, !dbg !4493

; <label>:181:                                    ; preds = %178
  %182 = load double, double* %10, align 8, !dbg !4494
  %183 = call double @fabs(double %182) #1, !dbg !4496
  %184 = call double @GSL_MAX_DBL(double %183, double 1.000000e+00), !dbg !4497
  %185 = load double, double* %6, align 8, !dbg !4499
  %186 = fsub double 1.000000e+00, %185, !dbg !4500
  %187 = call double @fabs(double %186) #1, !dbg !4501
  %188 = call double @GSL_MAX_DBL(double %187, double 1.000000e+00), !dbg !4503
  %189 = fmul double %184, %188, !dbg !4505
  %190 = load double, double* %8, align 8, !dbg !4506
  %191 = call double @fabs(double %190) #1, !dbg !4507
  %192 = fmul double 9.900000e-01, %191, !dbg !4509
  %193 = fcmp olt double %189, %192, !dbg !4510
  br i1 %193, label %194, label %200, !dbg !4511

; <label>:194:                                    ; preds = %181
  %195 = load double, double* %6, align 8, !dbg !4512
  %196 = load double, double* %7, align 8, !dbg !4514
  %197 = load double, double* %8, align 8, !dbg !4515
  %198 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4516
  %199 = call i32 @hyperg_1F1_asymp_posx(double %195, double %196, double %197, %struct.gsl_sf_result_struct* %198), !dbg !4517
  store i32 %199, i32* %5, align 4, !dbg !4518
  br label %247, !dbg !4518

; <label>:200:                                    ; preds = %181, %178
  %201 = load double, double* %8, align 8, !dbg !4519
  %202 = fcmp ogt double %201, 0.000000e+00, !dbg !4521
  br i1 %202, label %203, label %215, !dbg !4522

; <label>:203:                                    ; preds = %200
  %204 = load i32, i32* %16, align 4, !dbg !4523
  %205 = icmp ne i32 %204, 0, !dbg !4523
  br i1 %205, label %206, label %209, !dbg !4525

; <label>:206:                                    ; preds = %203
  %207 = load double, double* %10, align 8, !dbg !4526
  %208 = fcmp ogt double %207, 0.000000e+00, !dbg !4528
  br i1 %208, label %215, label %209, !dbg !4529

; <label>:209:                                    ; preds = %206, %203
  %210 = load double, double* %6, align 8, !dbg !4530
  %211 = load double, double* %7, align 8, !dbg !4532
  %212 = load double, double* %8, align 8, !dbg !4533
  %213 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4534
  %214 = call i32 @hyperg_1F1_U(double %210, double %211, double %212, %struct.gsl_sf_result_struct* %213), !dbg !4535
  store i32 %214, i32* %5, align 4, !dbg !4536
  br label %247, !dbg !4536

; <label>:215:                                    ; preds = %206, %200
  %216 = load double, double* %8, align 8, !dbg !4537
  %217 = fcmp olt double %216, 0.000000e+00, !dbg !4540
  br i1 %217, label %218, label %240, !dbg !4541

; <label>:218:                                    ; preds = %215
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4542, metadata !62), !dbg !4544
  %219 = load double, double* %7, align 8, !dbg !4545
  %220 = load double, double* %6, align 8, !dbg !4546
  %221 = fsub double %219, %220, !dbg !4547
  %222 = load double, double* %7, align 8, !dbg !4548
  %223 = load double, double* %8, align 8, !dbg !4549
  %224 = fsub double -0.000000e+00, %223, !dbg !4550
  %225 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4551
  %226 = call i32 @gsl_sf_hyperg_1F1_series_e(double %221, double %222, double %224, %struct.gsl_sf_result_struct* %225), !dbg !4552
  store i32 %226, i32* %20, align 4, !dbg !4544
  call void @llvm.dbg.declare(metadata double* %21, metadata !4553, metadata !62), !dbg !4554
  %227 = load double, double* %8, align 8, !dbg !4555
  %228 = call double @exp(double %227) #5, !dbg !4556
  store double %228, double* %21, align 8, !dbg !4554
  %229 = load double, double* %21, align 8, !dbg !4557
  %230 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4558
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %230, i32 0, i32 0, !dbg !4559
  %232 = load double, double* %231, align 8, !dbg !4560
  %233 = fmul double %232, %229, !dbg !4560
  store double %233, double* %231, align 8, !dbg !4560
  %234 = load double, double* %21, align 8, !dbg !4561
  %235 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4562
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %235, i32 0, i32 1, !dbg !4563
  %237 = load double, double* %236, align 8, !dbg !4564
  %238 = fmul double %237, %234, !dbg !4564
  store double %238, double* %236, align 8, !dbg !4564
  %239 = load i32, i32* %20, align 4, !dbg !4565
  store i32 %239, i32* %5, align 4, !dbg !4566
  br label %247, !dbg !4566

; <label>:240:                                    ; preds = %215
  call void @llvm.dbg.declare(metadata i32* %22, metadata !4567, metadata !62), !dbg !4569
  %241 = load double, double* %6, align 8, !dbg !4570
  %242 = load double, double* %7, align 8, !dbg !4571
  %243 = load double, double* %8, align 8, !dbg !4572
  %244 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4573
  %245 = call i32 @gsl_sf_hyperg_1F1_series_e(double %241, double %242, double %243, %struct.gsl_sf_result_struct* %244), !dbg !4574
  store i32 %245, i32* %22, align 4, !dbg !4569
  %246 = load i32, i32* %22, align 4, !dbg !4575
  store i32 %246, i32* %5, align 4, !dbg !4576
  br label %247, !dbg !4576

; <label>:247:                                    ; preds = %240, %218, %209, %194, %172, %152, %99, %77
  %248 = load i32, i32* %5, align 4, !dbg !4577
  ret i32 %248, !dbg !4577
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_1F1_int(i32, i32, double) #0 !dbg !4578 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4581, metadata !62), !dbg !4582
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4583, metadata !62), !dbg !4584
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !4585, metadata !62), !dbg !4586
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !4587, metadata !62), !dbg !4588
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4589, metadata !62), !dbg !4588
  %10 = load i32, i32* %5, align 4, !dbg !4588
  %11 = load i32, i32* %6, align 4, !dbg !4588
  %12 = load double, double* %7, align 8, !dbg !4588
  %13 = call i32 @gsl_sf_hyperg_1F1_int_e(i32 %10, i32 %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !4588
  store i32 %13, i32* %9, align 4, !dbg !4588
  %14 = load i32, i32* %9, align 4, !dbg !4590
  %15 = icmp ne i32 %14, 0, !dbg !4590
  br i1 %15, label %16, label %22, !dbg !4588

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !4592, !llvm.loop !4595

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !4597
  call void @gsl_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 2059, i32 %18), !dbg !4597
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !4597
  %20 = load double, double* %19, align 8, !dbg !4597
  store double %20, double* %4, align 8, !dbg !4597
  br label %25, !dbg !4597
                                                  ; No predecessors!
  br label %22, !dbg !4600

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !4602
  %24 = load double, double* %23, align 8, !dbg !4602
  store double %24, double* %4, align 8, !dbg !4602
  br label %25, !dbg !4602

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !4604
  ret double %26, !dbg !4604
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_1F1(double, double, double) #0 !dbg !4605 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !4608, metadata !62), !dbg !4609
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !4610, metadata !62), !dbg !4611
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !4612, metadata !62), !dbg !4613
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !4614, metadata !62), !dbg !4615
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4616, metadata !62), !dbg !4615
  %10 = load double, double* %5, align 8, !dbg !4615
  %11 = load double, double* %6, align 8, !dbg !4615
  %12 = load double, double* %7, align 8, !dbg !4615
  %13 = call i32 @gsl_sf_hyperg_1F1_e(double %10, double %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !4615
  store i32 %13, i32* %9, align 4, !dbg !4615
  %14 = load i32, i32* %9, align 4, !dbg !4617
  %15 = icmp ne i32 %14, 0, !dbg !4617
  br i1 %15, label %16, label %22, !dbg !4615

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !4619, !llvm.loop !4622

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !4624
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 2064, i32 %18), !dbg !4624
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !4624
  %20 = load double, double* %19, align 8, !dbg !4624
  store double %20, double* %4, align 8, !dbg !4624
  br label %25, !dbg !4624
                                                  ; No predecessors!
  br label %22, !dbg !4627

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !4629
  %24 = load double, double* %23, align 8, !dbg !4629
  store double %24, double* %4, align 8, !dbg !4629
  br label %25, !dbg !4629

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !4631
  ret double %26, !dbg !4631
}

declare i32 @gsl_sf_lngamma_sgn_e(double, %struct.gsl_sf_result_struct*, double*) #2

declare i32 @gsl_sf_hyperg_2F0_series_e(double, double, double, i32, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exprel_n_e(i32, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_beq2a_pos(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !4632 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !4633, metadata !62), !dbg !4634
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !4635, metadata !62), !dbg !4636
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !4637, metadata !62), !dbg !4638
  %16 = load double, double* %6, align 8, !dbg !4639
  %17 = fcmp oeq double %16, 0.000000e+00, !dbg !4641
  br i1 %17, label %18, label %23, !dbg !4642

; <label>:18:                                     ; preds = %3
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !4643
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !4645
  store double 1.000000e+00, double* %20, align 8, !dbg !4646
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !4647
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !4648
  store double 0.000000e+00, double* %22, align 8, !dbg !4649
  store i32 0, i32* %4, align 4, !dbg !4650
  br label %85, !dbg !4650

; <label>:23:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !4651, metadata !62), !dbg !4653
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4654, metadata !62), !dbg !4655
  %24 = load double, double* %5, align 8, !dbg !4656
  %25 = fsub double %24, 5.000000e-01, !dbg !4657
  %26 = load double, double* %6, align 8, !dbg !4658
  %27 = call double @fabs(double %26) #1, !dbg !4659
  %28 = fmul double 5.000000e-01, %27, !dbg !4660
  %29 = call i32 @gsl_sf_bessel_Inu_scaled_e(double %25, double %28, %struct.gsl_sf_result_struct* %8), !dbg !4661
  store i32 %29, i32* %9, align 4, !dbg !4655
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !4663, metadata !62), !dbg !4664
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4665, metadata !62), !dbg !4666
  %30 = load double, double* %5, align 8, !dbg !4667
  %31 = fadd double %30, 5.000000e-01, !dbg !4668
  %32 = call i32 @gsl_sf_lngamma_e(double %31, %struct.gsl_sf_result_struct* %10), !dbg !4669
  store i32 %32, i32* %11, align 4, !dbg !4666
  call void @llvm.dbg.declare(metadata double* %12, metadata !4670, metadata !62), !dbg !4671
  %33 = load double, double* %5, align 8, !dbg !4672
  %34 = fsub double 5.000000e-01, %33, !dbg !4673
  %35 = load double, double* %6, align 8, !dbg !4674
  %36 = call double @fabs(double %35) #1, !dbg !4675
  %37 = fmul double 2.500000e-01, %36, !dbg !4676
  %38 = call double @log(double %37) #5, !dbg !4677
  %39 = fmul double %34, %38, !dbg !4678
  store double %39, double* %12, align 8, !dbg !4671
  call void @llvm.dbg.declare(metadata double* %13, metadata !4679, metadata !62), !dbg !4680
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !4681
  %41 = load double, double* %40, align 8, !dbg !4681
  %42 = load double, double* %6, align 8, !dbg !4682
  %43 = call double @GSL_MAX_DBL(double %42, double 0.000000e+00), !dbg !4683
  %44 = fadd double %41, %43, !dbg !4684
  %45 = load double, double* %12, align 8, !dbg !4685
  %46 = fadd double %44, %45, !dbg !4686
  store double %46, double* %13, align 8, !dbg !4680
  call void @llvm.dbg.declare(metadata double* %14, metadata !4687, metadata !62), !dbg !4688
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !4689
  %48 = load double, double* %47, align 8, !dbg !4689
  %49 = load double, double* %12, align 8, !dbg !4690
  %50 = call double @fabs(double %49) #1, !dbg !4691
  %51 = load double, double* %6, align 8, !dbg !4692
  %52 = call double @fabs(double %51) #1, !dbg !4693
  %53 = fadd double %50, %52, !dbg !4694
  %54 = fmul double 0x3CB0000000000000, %53, !dbg !4695
  %55 = fadd double %48, %54, !dbg !4696
  store double %55, double* %14, align 8, !dbg !4688
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4697, metadata !62), !dbg !4698
  %56 = load double, double* %13, align 8, !dbg !4699
  %57 = load double, double* %14, align 8, !dbg !4700
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !4701
  %59 = load double, double* %58, align 8, !dbg !4701
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !4702
  %61 = load double, double* %60, align 8, !dbg !4702
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !4703
  %63 = call i32 @gsl_sf_exp_mult_err_e(double %56, double %57, double %59, double %61, %struct.gsl_sf_result_struct* %62), !dbg !4704
  store i32 %63, i32* %15, align 4, !dbg !4698
  %64 = load i32, i32* %15, align 4, !dbg !4705
  %65 = icmp ne i32 %64, 0, !dbg !4705
  br i1 %65, label %66, label %68, !dbg !4705

; <label>:66:                                     ; preds = %23
  %67 = load i32, i32* %15, align 4, !dbg !4706
  br label %83, !dbg !4706

; <label>:68:                                     ; preds = %23
  %69 = load i32, i32* %11, align 4, !dbg !4707
  %70 = icmp ne i32 %69, 0, !dbg !4707
  br i1 %70, label %71, label %73, !dbg !4707

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %11, align 4, !dbg !4709
  br label %81, !dbg !4709

; <label>:73:                                     ; preds = %68
  %74 = load i32, i32* %9, align 4, !dbg !4711
  %75 = icmp ne i32 %74, 0, !dbg !4711
  br i1 %75, label %76, label %78, !dbg !4711

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %9, align 4, !dbg !4713
  br label %79, !dbg !4713

; <label>:78:                                     ; preds = %73
  br label %79, !dbg !4715

; <label>:79:                                     ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ], !dbg !4717
  br label %81, !dbg !4717

; <label>:81:                                     ; preds = %79, %71
  %82 = phi i32 [ %72, %71 ], [ %80, %79 ], !dbg !4719
  br label %83, !dbg !4719

; <label>:83:                                     ; preds = %81, %66
  %84 = phi i32 [ %67, %66 ], [ %82, %81 ], !dbg !4721
  store i32 %84, i32* %4, align 4, !dbg !4723
  br label %85, !dbg !4723

; <label>:85:                                     ; preds = %83, %18
  %86 = load i32, i32* %4, align 4, !dbg !4724
  ret i32 %86, !dbg !4724
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_CF1_p_ser(double, double, double, double*) #0 !dbg !4725 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !4729, metadata !62), !dbg !4730
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !4731, metadata !62), !dbg !4732
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !4733, metadata !62), !dbg !4734
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !4735, metadata !62), !dbg !4736
  %16 = load double, double* %6, align 8, !dbg !4737
  %17 = fcmp oeq double %16, 0.000000e+00, !dbg !4739
  br i1 %17, label %18, label %20, !dbg !4740

; <label>:18:                                     ; preds = %4
  %19 = load double*, double** %9, align 8, !dbg !4741
  store double 0.000000e+00, double* %19, align 8, !dbg !4743
  store i32 0, i32* %5, align 4, !dbg !4744
  br label %89, !dbg !4744

; <label>:20:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4745, metadata !62), !dbg !4747
  store i32 5000, i32* %10, align 4, !dbg !4747
  call void @llvm.dbg.declare(metadata double* %11, metadata !4748, metadata !62), !dbg !4749
  store double 1.000000e+00, double* %11, align 8, !dbg !4749
  call void @llvm.dbg.declare(metadata double* %12, metadata !4750, metadata !62), !dbg !4751
  store double 1.000000e+00, double* %12, align 8, !dbg !4751
  call void @llvm.dbg.declare(metadata double* %13, metadata !4752, metadata !62), !dbg !4753
  store double 0.000000e+00, double* %13, align 8, !dbg !4753
  call void @llvm.dbg.declare(metadata i32* %14, metadata !4754, metadata !62), !dbg !4755
  store i32 1, i32* %14, align 4, !dbg !4756
  br label %21, !dbg !4758

; <label>:21:                                     ; preds = %70, %20
  %22 = load i32, i32* %14, align 4, !dbg !4759
  %23 = icmp slt i32 %22, 5000, !dbg !4762
  br i1 %23, label %24, label %73, !dbg !4763

; <label>:24:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata double* %15, metadata !4764, metadata !62), !dbg !4766
  %25 = load double, double* %6, align 8, !dbg !4767
  %26 = load i32, i32* %14, align 4, !dbg !4768
  %27 = sitofp i32 %26 to double, !dbg !4768
  %28 = fadd double %25, %27, !dbg !4769
  %29 = load double, double* %8, align 8, !dbg !4770
  %30 = fmul double %28, %29, !dbg !4771
  %31 = load double, double* %7, align 8, !dbg !4772
  %32 = load double, double* %8, align 8, !dbg !4773
  %33 = fsub double %31, %32, !dbg !4774
  %34 = load i32, i32* %14, align 4, !dbg !4775
  %35 = sitofp i32 %34 to double, !dbg !4775
  %36 = fadd double %33, %35, !dbg !4776
  %37 = fsub double %36, 1.000000e+00, !dbg !4777
  %38 = load double, double* %7, align 8, !dbg !4778
  %39 = load double, double* %8, align 8, !dbg !4779
  %40 = fsub double %38, %39, !dbg !4780
  %41 = load i32, i32* %14, align 4, !dbg !4781
  %42 = sitofp i32 %41 to double, !dbg !4781
  %43 = fadd double %40, %42, !dbg !4782
  %44 = fmul double %37, %43, !dbg !4783
  %45 = fdiv double %30, %44, !dbg !4784
  store double %45, double* %15, align 8, !dbg !4766
  %46 = load double, double* %15, align 8, !dbg !4785
  %47 = fsub double -0.000000e+00, %46, !dbg !4786
  %48 = load double, double* %13, align 8, !dbg !4787
  %49 = fadd double 1.000000e+00, %48, !dbg !4788
  %50 = fmul double %47, %49, !dbg !4789
  %51 = load double, double* %15, align 8, !dbg !4790
  %52 = load double, double* %13, align 8, !dbg !4791
  %53 = fadd double 1.000000e+00, %52, !dbg !4792
  %54 = fmul double %51, %53, !dbg !4793
  %55 = fadd double 1.000000e+00, %54, !dbg !4794
  %56 = fdiv double %50, %55, !dbg !4795
  store double %56, double* %13, align 8, !dbg !4796
  %57 = load double, double* %13, align 8, !dbg !4797
  %58 = load double, double* %12, align 8, !dbg !4798
  %59 = fmul double %58, %57, !dbg !4798
  store double %59, double* %12, align 8, !dbg !4798
  %60 = load double, double* %12, align 8, !dbg !4799
  %61 = load double, double* %11, align 8, !dbg !4800
  %62 = fadd double %61, %60, !dbg !4800
  store double %62, double* %11, align 8, !dbg !4800
  %63 = load double, double* %12, align 8, !dbg !4801
  %64 = load double, double* %11, align 8, !dbg !4803
  %65 = fdiv double %63, %64, !dbg !4804
  %66 = call double @fabs(double %65) #1, !dbg !4805
  %67 = fcmp olt double %66, 0x3CC0000000000000, !dbg !4806
  br i1 %67, label %68, label %69, !dbg !4807

; <label>:68:                                     ; preds = %24
  br label %73, !dbg !4808

; <label>:69:                                     ; preds = %24
  br label %70, !dbg !4810

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %14, align 4, !dbg !4811
  %72 = add nsw i32 %71, 1, !dbg !4811
  store i32 %72, i32* %14, align 4, !dbg !4811
  br label %21, !dbg !4813, !llvm.loop !4814

; <label>:73:                                     ; preds = %68, %21
  %74 = load double, double* %6, align 8, !dbg !4816
  %75 = load double, double* %7, align 8, !dbg !4817
  %76 = load double, double* %8, align 8, !dbg !4818
  %77 = fsub double %75, %76, !dbg !4819
  %78 = fdiv double %74, %77, !dbg !4820
  %79 = load double, double* %11, align 8, !dbg !4821
  %80 = fmul double %78, %79, !dbg !4822
  %81 = load double*, double** %9, align 8, !dbg !4823
  store double %80, double* %81, align 8, !dbg !4824
  %82 = load i32, i32* %14, align 4, !dbg !4825
  %83 = icmp eq i32 %82, 5000, !dbg !4827
  br i1 %83, label %84, label %87, !dbg !4828

; <label>:84:                                     ; preds = %73
  br label %85, !dbg !4829, !llvm.loop !4830

; <label>:85:                                     ; preds = %84
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 580, i32 11), !dbg !4831
  store i32 11, i32* %5, align 4, !dbg !4831
  br label %89, !dbg !4831
                                                  ; No predecessors!
  br label %88, !dbg !4834

; <label>:87:                                     ; preds = %73
  store i32 0, i32* %5, align 4, !dbg !4836
  br label %89, !dbg !4836

; <label>:88:                                     ; preds = %86
  br label %89

; <label>:89:                                     ; preds = %18, %85, %87, %88
  %90 = load i32, i32* %5, align 4, !dbg !4837
  ret i32 %90, !dbg !4837
}

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

declare i32 @gsl_sf_bessel_Inu_scaled_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @gsl_sf_bessel_I1_scaled_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @pow(double, double) #4

declare double @gsl_sf_bessel_In_scaled(i32, double) #2

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_J1_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_laguerre_n_e(i32, double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_lnfact_e(i32, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_lnbeta_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_beta_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_1(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !4838 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !4839, metadata !62), !dbg !4840
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !4841, metadata !62), !dbg !4842
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !4843, metadata !62), !dbg !4844
  call void @llvm.dbg.declare(metadata double* %8, metadata !4845, metadata !62), !dbg !4846
  %15 = load double, double* %6, align 8, !dbg !4847
  %16 = call double @fabs(double %15) #1, !dbg !4848
  store double %16, double* %8, align 8, !dbg !4846
  call void @llvm.dbg.declare(metadata double* %9, metadata !4849, metadata !62), !dbg !4850
  %17 = load double, double* %5, align 8, !dbg !4851
  %18 = fadd double %17, 1.000000e-01, !dbg !4852
  %19 = call double @floor(double %18) #1, !dbg !4853
  store double %19, double* %9, align 8, !dbg !4850
  %20 = load double, double* %5, align 8, !dbg !4854
  %21 = fcmp olt double %20, 1.000000e+00, !dbg !4856
  br i1 %21, label %22, label %31, !dbg !4857

; <label>:22:                                     ; preds = %3
  br label %23, !dbg !4858, !llvm.loop !4860

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !4861
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !4861
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !4861
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !4861
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !4861
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !4861
  br label %28, !dbg !4861, !llvm.loop !4864

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 352, i32 1), !dbg !4866
  store i32 1, i32* %4, align 4, !dbg !4866
  br label %213, !dbg !4866
                                                  ; No predecessors!
  br label %30, !dbg !4869

; <label>:30:                                     ; preds = %29
  br label %213, !dbg !4871

; <label>:31:                                     ; preds = %3
  %32 = load double, double* %5, align 8, !dbg !4872
  %33 = fcmp oeq double %32, 1.000000e+00, !dbg !4874
  br i1 %33, label %34, label %38, !dbg !4875

; <label>:34:                                     ; preds = %31
  %35 = load double, double* %6, align 8, !dbg !4876
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !4878
  %37 = call i32 @gsl_sf_exp_e(double %35, %struct.gsl_sf_result_struct* %36), !dbg !4879
  store i32 %37, i32* %4, align 4, !dbg !4880
  br label %213, !dbg !4880

; <label>:38:                                     ; preds = %31
  %39 = load double, double* %5, align 8, !dbg !4881
  %40 = load double, double* %8, align 8, !dbg !4883
  %41 = fmul double 1.400000e+00, %40, !dbg !4884
  %42 = fcmp oge double %39, %41, !dbg !4885
  br i1 %42, label %43, label %48, !dbg !4886

; <label>:43:                                     ; preds = %38
  %44 = load double, double* %5, align 8, !dbg !4887
  %45 = load double, double* %6, align 8, !dbg !4889
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !4890
  %47 = call i32 @hyperg_1F1_1_series(double %44, double %45, %struct.gsl_sf_result_struct* %46), !dbg !4891
  store i32 %47, i32* %4, align 4, !dbg !4892
  br label %213, !dbg !4892

; <label>:48:                                     ; preds = %38
  %49 = load double, double* %5, align 8, !dbg !4893
  %50 = load double, double* %9, align 8, !dbg !4895
  %51 = fsub double %49, %50, !dbg !4896
  %52 = call double @fabs(double %51) #1, !dbg !4897
  %53 = fcmp olt double %52, 0x3D19000000000000, !dbg !4898
  br i1 %53, label %54, label %63, !dbg !4899

; <label>:54:                                     ; preds = %48
  %55 = load double, double* %9, align 8, !dbg !4900
  %56 = fcmp olt double %55, 0x41DFFFFFFFC00000, !dbg !4902
  br i1 %56, label %57, label %63, !dbg !4903

; <label>:57:                                     ; preds = %54
  %58 = load double, double* %9, align 8, !dbg !4904
  %59 = fptosi double %58 to i32, !dbg !4906
  %60 = load double, double* %6, align 8, !dbg !4907
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !4908
  %62 = call i32 @hyperg_1F1_1_int(i32 %59, double %60, %struct.gsl_sf_result_struct* %61), !dbg !4909
  store i32 %62, i32* %4, align 4, !dbg !4910
  br label %213, !dbg !4910

; <label>:63:                                     ; preds = %54, %48
  %64 = load double, double* %6, align 8, !dbg !4911
  %65 = fcmp ogt double %64, 0.000000e+00, !dbg !4913
  br i1 %65, label %66, label %181, !dbg !4914

; <label>:66:                                     ; preds = %63
  %67 = load double, double* %6, align 8, !dbg !4915
  %68 = fcmp ogt double %67, 1.000000e+02, !dbg !4918
  br i1 %68, label %69, label %79, !dbg !4919

; <label>:69:                                     ; preds = %66
  %70 = load double, double* %5, align 8, !dbg !4920
  %71 = load double, double* %6, align 8, !dbg !4922
  %72 = fmul double 7.500000e-01, %71, !dbg !4923
  %73 = fcmp olt double %70, %72, !dbg !4924
  br i1 %73, label %74, label %79, !dbg !4925

; <label>:74:                                     ; preds = %69
  %75 = load double, double* %5, align 8, !dbg !4926
  %76 = load double, double* %6, align 8, !dbg !4928
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !4929
  %78 = call i32 @hyperg_1F1_asymp_posx(double 1.000000e+00, double %75, double %76, %struct.gsl_sf_result_struct* %77), !dbg !4930
  store i32 %78, i32* %4, align 4, !dbg !4931
  br label %213, !dbg !4931

; <label>:79:                                     ; preds = %69, %66
  %80 = load double, double* %5, align 8, !dbg !4932
  %81 = fcmp olt double %80, 1.000000e+05, !dbg !4934
  br i1 %81, label %82, label %142, !dbg !4935

; <label>:82:                                     ; preds = %79
  call void @llvm.dbg.declare(metadata double* %10, metadata !4936, metadata !62), !dbg !4938
  %83 = load double, double* %6, align 8, !dbg !4939
  %84 = fmul double 1.400000e+00, %83, !dbg !4940
  %85 = load double, double* %5, align 8, !dbg !4941
  %86 = fsub double %84, %85, !dbg !4942
  %87 = call double @ceil(double %86) #1, !dbg !4943
  %88 = fadd double %87, 1.000000e+00, !dbg !4944
  store double %88, double* %10, align 8, !dbg !4938
  call void @llvm.dbg.declare(metadata double* %11, metadata !4945, metadata !62), !dbg !4946
  %89 = load double, double* %5, align 8, !dbg !4947
  %90 = load double, double* %10, align 8, !dbg !4948
  %91 = fadd double %89, %90, !dbg !4949
  store double %91, double* %11, align 8, !dbg !4946
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !4950, metadata !62), !dbg !4951
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4952, metadata !62), !dbg !4953
  %92 = load double, double* %11, align 8, !dbg !4954
  %93 = load double, double* %6, align 8, !dbg !4955
  %94 = call i32 @hyperg_1F1_1_series(double %92, double %93, %struct.gsl_sf_result_struct* %12), !dbg !4956
  store i32 %94, i32* %13, align 4, !dbg !4953
  call void @llvm.dbg.declare(metadata double* %14, metadata !4957, metadata !62), !dbg !4958
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !4959
  %96 = load double, double* %95, align 8, !dbg !4959
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !4960
  %98 = load double, double* %97, align 8, !dbg !4960
  %99 = call double @fabs(double %98) #1, !dbg !4961
  %100 = fdiv double %96, %99, !dbg !4962
  store double %100, double* %14, align 8, !dbg !4958
  br label %101, !dbg !4963

; <label>:101:                                    ; preds = %106, %82
  %102 = load double, double* %11, align 8, !dbg !4964
  %103 = load double, double* %5, align 8, !dbg !4966
  %104 = fadd double %103, 1.000000e-01, !dbg !4967
  %105 = fcmp ogt double %102, %104, !dbg !4968
  br i1 %105, label %106, label %117, !dbg !4969

; <label>:106:                                    ; preds = %101
  %107 = load double, double* %11, align 8, !dbg !4970
  %108 = fsub double %107, 1.000000e+00, !dbg !4970
  store double %108, double* %11, align 8, !dbg !4970
  %109 = load double, double* %6, align 8, !dbg !4972
  %110 = load double, double* %11, align 8, !dbg !4973
  %111 = fdiv double %109, %110, !dbg !4974
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !4975
  %113 = load double, double* %112, align 8, !dbg !4975
  %114 = fmul double %111, %113, !dbg !4976
  %115 = fadd double 1.000000e+00, %114, !dbg !4977
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !4978
  store double %115, double* %116, align 8, !dbg !4979
  br label %101, !dbg !4980, !llvm.loop !4982

; <label>:117:                                    ; preds = %101
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !4983
  %119 = load double, double* %118, align 8, !dbg !4983
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !4984
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 0, !dbg !4985
  store double %119, double* %121, align 8, !dbg !4986
  %122 = load double, double* %14, align 8, !dbg !4987
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !4988
  %124 = load double, double* %123, align 8, !dbg !4988
  %125 = call double @fabs(double %124) #1, !dbg !4989
  %126 = fmul double %122, %125, !dbg !4990
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !4991
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !4992
  store double %126, double* %128, align 8, !dbg !4993
  %129 = load double, double* %10, align 8, !dbg !4994
  %130 = call double @fabs(double %129) #1, !dbg !4995
  %131 = fadd double %130, 1.000000e+00, !dbg !4996
  %132 = fmul double 0x3CC0000000000000, %131, !dbg !4997
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !4998
  %134 = load double, double* %133, align 8, !dbg !4998
  %135 = call double @fabs(double %134) #1, !dbg !4999
  %136 = fmul double %132, %135, !dbg !5000
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !5001
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 1, !dbg !5002
  %139 = load double, double* %138, align 8, !dbg !5003
  %140 = fadd double %139, %136, !dbg !5003
  store double %140, double* %138, align 8, !dbg !5003
  %141 = load i32, i32* %13, align 4, !dbg !5004
  store i32 %141, i32* %4, align 4, !dbg !5005
  br label %213, !dbg !5005

; <label>:142:                                    ; preds = %79
  %143 = load double, double* %6, align 8, !dbg !5006
  %144 = call double @fabs(double %143) #1, !dbg !5008
  %145 = load double, double* %5, align 8, !dbg !5009
  %146 = call double @fabs(double %145) #1, !dbg !5010
  %147 = fcmp olt double %144, %146, !dbg !5012
  br i1 %147, label %148, label %165, !dbg !5013

; <label>:148:                                    ; preds = %142
  %149 = load double, double* %6, align 8, !dbg !5014
  %150 = call double @fabs(double %149) #1, !dbg !5016
  %151 = load double, double* %5, align 8, !dbg !5017
  %152 = call double @fabs(double %151) #1, !dbg !5018
  %153 = call double @sqrt(double %152) #5, !dbg !5020
  %154 = load double, double* %5, align 8, !dbg !5022
  %155 = load double, double* %6, align 8, !dbg !5023
  %156 = fsub double %154, %155, !dbg !5024
  %157 = call double @fabs(double %156) #1, !dbg !5025
  %158 = fmul double %153, %157, !dbg !5027
  %159 = fcmp olt double %150, %158, !dbg !5028
  br i1 %159, label %160, label %165, !dbg !5029

; <label>:160:                                    ; preds = %148
  %161 = load double, double* %5, align 8, !dbg !5030
  %162 = load double, double* %6, align 8, !dbg !5032
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !5033
  %164 = call i32 @hyperg_1F1_largebx(double 1.000000e+00, double %161, double %162, %struct.gsl_sf_result_struct* %163), !dbg !5034
  store i32 %164, i32* %4, align 4, !dbg !5035
  br label %213, !dbg !5035

; <label>:165:                                    ; preds = %148, %142
  %166 = load double, double* %6, align 8, !dbg !5036
  %167 = call double @fabs(double %166) #1, !dbg !5038
  %168 = load double, double* %5, align 8, !dbg !5039
  %169 = call double @fabs(double %168) #1, !dbg !5040
  %170 = fcmp ogt double %167, %169, !dbg !5042
  br i1 %170, label %171, label %176, !dbg !5043

; <label>:171:                                    ; preds = %165
  %172 = load double, double* %5, align 8, !dbg !5044
  %173 = load double, double* %6, align 8, !dbg !5046
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !5047
  %175 = call i32 @hyperg_1F1_1_series(double %172, double %173, %struct.gsl_sf_result_struct* %174), !dbg !5048
  store i32 %175, i32* %4, align 4, !dbg !5049
  br label %213, !dbg !5049

; <label>:176:                                    ; preds = %165
  %177 = load double, double* %5, align 8, !dbg !5050
  %178 = load double, double* %6, align 8, !dbg !5052
  %179 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !5053
  %180 = call i32 @hyperg_1F1_large2bm4a(double 1.000000e+00, double %177, double %178, %struct.gsl_sf_result_struct* %179), !dbg !5054
  store i32 %180, i32* %4, align 4, !dbg !5055
  br label %213, !dbg !5055

; <label>:181:                                    ; preds = %63
  %182 = load double, double* %8, align 8, !dbg !5056
  %183 = fcmp olt double %182, 1.000000e+01, !dbg !5059
  br i1 %183, label %184, label %192, !dbg !5060

; <label>:184:                                    ; preds = %181
  %185 = load double, double* %5, align 8, !dbg !5061
  %186 = fcmp olt double %185, 1.000000e+01, !dbg !5063
  br i1 %186, label %187, label %192, !dbg !5064

; <label>:187:                                    ; preds = %184
  %188 = load double, double* %5, align 8, !dbg !5065
  %189 = load double, double* %6, align 8, !dbg !5067
  %190 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !5068
  %191 = call i32 @hyperg_1F1_1_series(double %188, double %189, %struct.gsl_sf_result_struct* %190), !dbg !5069
  store i32 %191, i32* %4, align 4, !dbg !5070
  br label %213, !dbg !5070

; <label>:192:                                    ; preds = %184, %181
  %193 = load double, double* %8, align 8, !dbg !5071
  %194 = fcmp oge double %193, 1.000000e+02, !dbg !5073
  br i1 %194, label %195, label %208, !dbg !5074

; <label>:195:                                    ; preds = %192
  %196 = load double, double* %5, align 8, !dbg !5075
  %197 = fsub double 2.000000e+00, %196, !dbg !5077
  %198 = call double @fabs(double %197) #1, !dbg !5078
  %199 = call double @GSL_MAX_DBL(double %198, double 1.000000e+00), !dbg !5079
  %200 = load double, double* %8, align 8, !dbg !5081
  %201 = fmul double 9.900000e-01, %200, !dbg !5082
  %202 = fcmp olt double %199, %201, !dbg !5083
  br i1 %202, label %203, label %208, !dbg !5084

; <label>:203:                                    ; preds = %195
  %204 = load double, double* %5, align 8, !dbg !5085
  %205 = load double, double* %6, align 8, !dbg !5087
  %206 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !5088
  %207 = call i32 @hyperg_1F1_asymp_negx(double 1.000000e+00, double %204, double %205, %struct.gsl_sf_result_struct* %206), !dbg !5089
  store i32 %207, i32* %4, align 4, !dbg !5090
  br label %213, !dbg !5090

; <label>:208:                                    ; preds = %195, %192
  %209 = load double, double* %5, align 8, !dbg !5091
  %210 = load double, double* %6, align 8, !dbg !5093
  %211 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !5094
  %212 = call i32 @hyperg_1F1_luke(double 1.000000e+00, double %209, double %210, %struct.gsl_sf_result_struct* %211), !dbg !5095
  store i32 %212, i32* %4, align 4, !dbg !5096
  br label %213, !dbg !5096

; <label>:213:                                    ; preds = %28, %34, %43, %57, %74, %117, %160, %171, %176, %187, %203, %208, %30
  %214 = load i32, i32* %4, align 4, !dbg !5097
  ret i32 %214, !dbg !5097
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_largebx(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !5098 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !5099, metadata !62), !dbg !5100
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !5101, metadata !62), !dbg !5102
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !5103, metadata !62), !dbg !5104
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !5105, metadata !62), !dbg !5106
  call void @llvm.dbg.declare(metadata double* %9, metadata !5107, metadata !62), !dbg !5108
  %14 = load double, double* %7, align 8, !dbg !5109
  %15 = load double, double* %6, align 8, !dbg !5110
  %16 = fdiv double %14, %15, !dbg !5111
  store double %16, double* %9, align 8, !dbg !5108
  call void @llvm.dbg.declare(metadata double* %10, metadata !5112, metadata !62), !dbg !5113
  %17 = load double, double* %5, align 8, !dbg !5114
  %18 = fsub double -0.000000e+00, %17, !dbg !5115
  %19 = load double, double* %9, align 8, !dbg !5116
  %20 = fsub double -0.000000e+00, %19, !dbg !5117
  %21 = call double @log1p(double %20) #5, !dbg !5118
  %22 = fmul double %18, %21, !dbg !5119
  %23 = call double @exp(double %22) #5, !dbg !5120
  store double %23, double* %10, align 8, !dbg !5113
  call void @llvm.dbg.declare(metadata double* %11, metadata !5122, metadata !62), !dbg !5123
  %24 = load double, double* %5, align 8, !dbg !5124
  %25 = load double, double* %5, align 8, !dbg !5125
  %26 = fadd double %25, 1.000000e+00, !dbg !5126
  %27 = fmul double %24, %26, !dbg !5127
  %28 = load double, double* %6, align 8, !dbg !5128
  %29 = fmul double 2.000000e+00, %28, !dbg !5129
  %30 = fdiv double %27, %29, !dbg !5130
  %31 = fsub double -0.000000e+00, %30, !dbg !5131
  %32 = load double, double* %9, align 8, !dbg !5132
  %33 = load double, double* %9, align 8, !dbg !5133
  %34 = fsub double 1.000000e+00, %33, !dbg !5134
  %35 = fdiv double %32, %34, !dbg !5135
  %36 = call double @pow(double %35, double 2.000000e+00) #5, !dbg !5136
  %37 = fmul double %31, %36, !dbg !5137
  store double %37, double* %11, align 8, !dbg !5123
  call void @llvm.dbg.declare(metadata double* %12, metadata !5138, metadata !62), !dbg !5139
  %38 = load double, double* %6, align 8, !dbg !5140
  %39 = fmul double 2.400000e+01, %38, !dbg !5141
  %40 = load double, double* %6, align 8, !dbg !5142
  %41 = fmul double %39, %40, !dbg !5143
  %42 = fdiv double 1.000000e+00, %41, !dbg !5144
  %43 = load double, double* %5, align 8, !dbg !5145
  %44 = load double, double* %5, align 8, !dbg !5146
  %45 = fadd double %44, 1.000000e+00, !dbg !5147
  %46 = fmul double %43, %45, !dbg !5148
  %47 = load double, double* %9, align 8, !dbg !5149
  %48 = fmul double %46, %47, !dbg !5150
  %49 = load double, double* %9, align 8, !dbg !5151
  %50 = fmul double %48, %49, !dbg !5152
  %51 = load double, double* %9, align 8, !dbg !5153
  %52 = fsub double 1.000000e+00, %51, !dbg !5154
  %53 = call double @pow(double %52, double 4.000000e+00) #5, !dbg !5155
  %54 = fdiv double %50, %53, !dbg !5156
  %55 = fmul double %42, %54, !dbg !5157
  %56 = load double, double* %5, align 8, !dbg !5158
  %57 = fmul double 2.000000e+00, %56, !dbg !5159
  %58 = fadd double %57, 1.000000e+00, !dbg !5160
  %59 = fmul double 8.000000e+00, %58, !dbg !5161
  %60 = load double, double* %9, align 8, !dbg !5162
  %61 = fmul double %59, %60, !dbg !5163
  %62 = fadd double 1.200000e+01, %61, !dbg !5164
  %63 = load double, double* %5, align 8, !dbg !5165
  %64 = fmul double 3.000000e+00, %63, !dbg !5166
  %65 = load double, double* %5, align 8, !dbg !5167
  %66 = fmul double %64, %65, !dbg !5168
  %67 = load double, double* %5, align 8, !dbg !5169
  %68 = fsub double %66, %67, !dbg !5170
  %69 = fsub double %68, 2.000000e+00, !dbg !5171
  %70 = load double, double* %9, align 8, !dbg !5172
  %71 = fmul double %69, %70, !dbg !5173
  %72 = load double, double* %9, align 8, !dbg !5174
  %73 = fmul double %71, %72, !dbg !5175
  %74 = fadd double %62, %73, !dbg !5176
  %75 = fmul double %55, %74, !dbg !5177
  store double %75, double* %12, align 8, !dbg !5139
  call void @llvm.dbg.declare(metadata double* %13, metadata !5178, metadata !62), !dbg !5179
  %76 = load double, double* %6, align 8, !dbg !5180
  %77 = fmul double 4.800000e+01, %76, !dbg !5181
  %78 = load double, double* %6, align 8, !dbg !5182
  %79 = fmul double %77, %78, !dbg !5183
  %80 = load double, double* %6, align 8, !dbg !5184
  %81 = fmul double %79, %80, !dbg !5185
  %82 = load double, double* %9, align 8, !dbg !5186
  %83 = fsub double 1.000000e+00, %82, !dbg !5187
  %84 = call double @pow(double %83, double 6.000000e+00) #5, !dbg !5188
  %85 = fmul double %81, %84, !dbg !5189
  %86 = fdiv double -1.000000e+00, %85, !dbg !5190
  %87 = load double, double* %5, align 8, !dbg !5191
  %88 = fmul double %86, %87, !dbg !5192
  %89 = load double, double* %5, align 8, !dbg !5193
  %90 = fadd double %89, 1.000000e+00, !dbg !5194
  %91 = load double, double* %9, align 8, !dbg !5195
  %92 = load double, double* %5, align 8, !dbg !5196
  %93 = fadd double %92, 1.000000e+00, !dbg !5197
  %94 = load double, double* %5, align 8, !dbg !5198
  %95 = load double, double* %9, align 8, !dbg !5199
  %96 = load double, double* %9, align 8, !dbg !5200
  %97 = load double, double* %9, align 8, !dbg !5201
  %98 = load double, double* %5, align 8, !dbg !5202
  %99 = fsub double %98, 2.000000e+00, !dbg !5203
  %100 = fmul double %97, %99, !dbg !5204
  %101 = fadd double %100, 1.600000e+01, !dbg !5205
  %102 = load double, double* %5, align 8, !dbg !5206
  %103 = fsub double %102, 1.000000e+00, !dbg !5207
  %104 = fmul double %101, %103, !dbg !5208
  %105 = fmul double %96, %104, !dbg !5209
  %106 = fadd double %105, 7.200000e+01, !dbg !5210
  %107 = fmul double %95, %106, !dbg !5211
  %108 = fmul double %94, %107, !dbg !5212
  %109 = fadd double %108, 9.600000e+01, !dbg !5213
  %110 = fmul double %93, %109, !dbg !5214
  %111 = fmul double %91, %110, !dbg !5215
  %112 = fadd double %111, 2.400000e+01, !dbg !5216
  %113 = load double, double* %9, align 8, !dbg !5217
  %114 = call double @pow(double %113, double 2.000000e+00) #5, !dbg !5218
  %115 = fmul double %112, %114, !dbg !5219
  %116 = fmul double %90, %115, !dbg !5220
  %117 = fmul double %88, %116, !dbg !5221
  store double %117, double* %13, align 8, !dbg !5179
  %118 = load double, double* %10, align 8, !dbg !5222
  %119 = load double, double* %11, align 8, !dbg !5223
  %120 = fadd double 1.000000e+00, %119, !dbg !5224
  %121 = load double, double* %12, align 8, !dbg !5225
  %122 = fadd double %120, %121, !dbg !5226
  %123 = load double, double* %13, align 8, !dbg !5227
  %124 = fadd double %122, %123, !dbg !5228
  %125 = fmul double %118, %124, !dbg !5229
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !5230
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 0, !dbg !5231
  store double %125, double* %127, align 8, !dbg !5232
  %128 = load double, double* %10, align 8, !dbg !5233
  %129 = load double, double* %13, align 8, !dbg !5234
  %130 = fmul double %128, %129, !dbg !5235
  %131 = call double @fabs(double %130) #1, !dbg !5236
  %132 = fmul double 2.000000e+00, %131, !dbg !5237
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !5238
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 0, !dbg !5239
  %135 = load double, double* %134, align 8, !dbg !5239
  %136 = call double @fabs(double %135) #1, !dbg !5240
  %137 = fmul double 0x3CC0000000000000, %136, !dbg !5241
  %138 = fadd double %132, %137, !dbg !5242
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !5243
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 1, !dbg !5244
  store double %138, double* %140, align 8, !dbg !5245
  ret i32 0, !dbg !5246
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_large2bm4a(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !5247 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !5248, metadata !62), !dbg !5249
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !5250, metadata !62), !dbg !5251
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !5252, metadata !62), !dbg !5253
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !5254, metadata !62), !dbg !5255
  call void @llvm.dbg.declare(metadata double* %9, metadata !5256, metadata !62), !dbg !5257
  %25 = load double, double* %6, align 8, !dbg !5258
  %26 = fmul double 2.000000e+00, %25, !dbg !5259
  %27 = load double, double* %5, align 8, !dbg !5260
  %28 = fmul double 4.000000e+00, %27, !dbg !5261
  %29 = fsub double %26, %28, !dbg !5262
  store double %29, double* %9, align 8, !dbg !5257
  call void @llvm.dbg.declare(metadata double* %10, metadata !5263, metadata !62), !dbg !5264
  %30 = load double, double* %7, align 8, !dbg !5265
  %31 = load double, double* %9, align 8, !dbg !5266
  %32 = fdiv double %30, %31, !dbg !5267
  store double %32, double* %10, align 8, !dbg !5264
  call void @llvm.dbg.declare(metadata double* %11, metadata !5268, metadata !62), !dbg !5269
  %33 = load double, double* %10, align 8, !dbg !5270
  %34 = fsub double 1.000000e+00, %33, !dbg !5271
  store double %34, double* %11, align 8, !dbg !5269
  call void @llvm.dbg.declare(metadata double* %12, metadata !5272, metadata !62), !dbg !5273
  %35 = load double, double* %10, align 8, !dbg !5274
  %36 = call double @sqrt(double %35) #5, !dbg !5275
  %37 = call double @acos(double %36) #5, !dbg !5276
  store double %37, double* %12, align 8, !dbg !5273
  call void @llvm.dbg.declare(metadata double* %13, metadata !5278, metadata !62), !dbg !5279
  %38 = load double, double* %9, align 8, !dbg !5280
  %39 = fmul double 0x4003BD3CC9BE45DE, %38, !dbg !5281
  %40 = load double, double* %9, align 8, !dbg !5282
  %41 = fmul double %39, %40, !dbg !5283
  %42 = load double, double* %10, align 8, !dbg !5284
  %43 = fmul double %41, %42, !dbg !5285
  %44 = load double, double* %11, align 8, !dbg !5286
  %45 = fmul double %43, %44, !dbg !5287
  store double %45, double* %13, align 8, !dbg !5279
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !5288, metadata !62), !dbg !5289
  call void @llvm.dbg.declare(metadata i32* %15, metadata !5290, metadata !62), !dbg !5291
  %46 = load double, double* %6, align 8, !dbg !5292
  %47 = call i32 @gsl_sf_lngamma_e(double %46, %struct.gsl_sf_result_struct* %14), !dbg !5293
  store i32 %47, i32* %15, align 4, !dbg !5291
  call void @llvm.dbg.declare(metadata double* %16, metadata !5294, metadata !62), !dbg !5295
  %48 = load double, double* %6, align 8, !dbg !5296
  %49 = fsub double 1.000000e+00, %48, !dbg !5297
  %50 = fmul double 5.000000e-01, %49, !dbg !5298
  %51 = load double, double* %7, align 8, !dbg !5299
  %52 = fmul double 2.500000e-01, %51, !dbg !5300
  %53 = load double, double* %9, align 8, !dbg !5301
  %54 = fmul double %52, %53, !dbg !5302
  %55 = call double @log(double %54) #5, !dbg !5303
  %56 = fmul double %50, %55, !dbg !5304
  store double %56, double* %16, align 8, !dbg !5295
  call void @llvm.dbg.declare(metadata double* %17, metadata !5305, metadata !62), !dbg !5306
  %57 = load double, double* %13, align 8, !dbg !5307
  %58 = call double @log(double %57) #5, !dbg !5308
  %59 = fmul double 2.500000e-01, %58, !dbg !5309
  store double %59, double* %17, align 8, !dbg !5306
  call void @llvm.dbg.declare(metadata double* %18, metadata !5310, metadata !62), !dbg !5311
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !5312
  %61 = load double, double* %60, align 8, !dbg !5312
  %62 = load double, double* %7, align 8, !dbg !5313
  %63 = fmul double 5.000000e-01, %62, !dbg !5314
  %64 = fadd double %61, %63, !dbg !5315
  %65 = load double, double* %16, align 8, !dbg !5316
  %66 = fadd double %64, %65, !dbg !5317
  %67 = load double, double* %17, align 8, !dbg !5318
  %68 = fsub double %66, %67, !dbg !5319
  store double %68, double* %18, align 8, !dbg !5311
  call void @llvm.dbg.declare(metadata double* %19, metadata !5320, metadata !62), !dbg !5321
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !5322
  %70 = load double, double* %69, align 8, !dbg !5322
  %71 = load double, double* %7, align 8, !dbg !5323
  %72 = fmul double 5.000000e-01, %71, !dbg !5324
  %73 = call double @fabs(double %72) #1, !dbg !5325
  %74 = load double, double* %16, align 8, !dbg !5326
  %75 = call double @fabs(double %74) #1, !dbg !5327
  %76 = fadd double %73, %75, !dbg !5328
  %77 = load double, double* %17, align 8, !dbg !5329
  %78 = call double @fabs(double %77) #1, !dbg !5330
  %79 = fadd double %76, %78, !dbg !5332
  %80 = fmul double 0x3CC0000000000000, %79, !dbg !5333
  %81 = fadd double %70, %80, !dbg !5334
  store double %81, double* %19, align 8, !dbg !5321
  call void @llvm.dbg.declare(metadata double* %20, metadata !5335, metadata !62), !dbg !5336
  %82 = load double, double* %5, align 8, !dbg !5337
  %83 = fmul double %82, 0x400921FB54442D18, !dbg !5338
  %84 = call double @sin(double %83) #5, !dbg !5339
  store double %84, double* %20, align 8, !dbg !5336
  call void @llvm.dbg.declare(metadata double* %21, metadata !5340, metadata !62), !dbg !5341
  %85 = load double, double* %9, align 8, !dbg !5342
  %86 = fmul double 2.500000e-01, %85, !dbg !5343
  %87 = load double, double* %12, align 8, !dbg !5344
  %88 = fmul double 2.000000e+00, %87, !dbg !5345
  %89 = load double, double* %12, align 8, !dbg !5346
  %90 = fmul double 2.000000e+00, %89, !dbg !5347
  %91 = call double @sin(double %90) #5, !dbg !5348
  %92 = fsub double %88, %91, !dbg !5349
  %93 = fmul double %86, %92, !dbg !5350
  %94 = fadd double %93, 0x3FE921FB54442D18, !dbg !5351
  %95 = call double @sin(double %94) #5, !dbg !5352
  store double %95, double* %21, align 8, !dbg !5341
  call void @llvm.dbg.declare(metadata double* %22, metadata !5353, metadata !62), !dbg !5354
  %96 = load double, double* %20, align 8, !dbg !5355
  %97 = load double, double* %21, align 8, !dbg !5356
  %98 = fadd double %96, %97, !dbg !5357
  store double %98, double* %22, align 8, !dbg !5354
  call void @llvm.dbg.declare(metadata double* %23, metadata !5358, metadata !62), !dbg !5359
  %99 = load double, double* %20, align 8, !dbg !5360
  %100 = call double @fabs(double %99) #1, !dbg !5361
  %101 = load double, double* %21, align 8, !dbg !5362
  %102 = call double @fabs(double %101) #1, !dbg !5363
  %103 = fadd double %100, %102, !dbg !5364
  %104 = fmul double 0x3CC0000000000000, %103, !dbg !5365
  store double %104, double* %23, align 8, !dbg !5359
  call void @llvm.dbg.declare(metadata i32* %24, metadata !5366, metadata !62), !dbg !5367
  %105 = load double, double* %18, align 8, !dbg !5368
  %106 = load double, double* %19, align 8, !dbg !5369
  %107 = load double, double* %22, align 8, !dbg !5370
  %108 = load double, double* %23, align 8, !dbg !5371
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !5372
  %110 = call i32 @gsl_sf_exp_mult_err_e(double %105, double %106, double %107, double %108, %struct.gsl_sf_result_struct* %109), !dbg !5373
  store i32 %110, i32* %24, align 4, !dbg !5367
  %111 = load i32, i32* %24, align 4, !dbg !5374
  %112 = icmp ne i32 %111, 0, !dbg !5374
  br i1 %112, label %113, label %115, !dbg !5374

; <label>:113:                                    ; preds = %4
  %114 = load i32, i32* %24, align 4, !dbg !5375
  br label %123, !dbg !5375

; <label>:115:                                    ; preds = %4
  %116 = load i32, i32* %15, align 4, !dbg !5376
  %117 = icmp ne i32 %116, 0, !dbg !5376
  br i1 %117, label %118, label %120, !dbg !5376

; <label>:118:                                    ; preds = %115
  %119 = load i32, i32* %15, align 4, !dbg !5377
  br label %121, !dbg !5377

; <label>:120:                                    ; preds = %115
  br label %121, !dbg !5379

; <label>:121:                                    ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ 0, %120 ], !dbg !5381
  br label %123, !dbg !5381

; <label>:123:                                    ; preds = %121, %113
  %124 = phi i32 [ %114, %113 ], [ %122, %121 ], !dbg !5383
  ret i32 %124, !dbg !5385
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_luke(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !5386 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
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
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !5387, metadata !62), !dbg !5388
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !5389, metadata !62), !dbg !5390
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !5391, metadata !62), !dbg !5392
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !5393, metadata !62), !dbg !5394
  call void @llvm.dbg.declare(metadata double* %9, metadata !5395, metadata !62), !dbg !5396
  store double 1.000000e+50, double* %9, align 8, !dbg !5396
  call void @llvm.dbg.declare(metadata i32* %10, metadata !5397, metadata !62), !dbg !5398
  store i32 5000, i32* %10, align 4, !dbg !5398
  call void @llvm.dbg.declare(metadata i32* %11, metadata !5399, metadata !62), !dbg !5400
  store i32 3, i32* %11, align 4, !dbg !5400
  call void @llvm.dbg.declare(metadata double* %12, metadata !5401, metadata !62), !dbg !5402
  %39 = load double, double* %7, align 8, !dbg !5403
  %40 = fsub double -0.000000e+00, %39, !dbg !5404
  store double %40, double* %12, align 8, !dbg !5402
  call void @llvm.dbg.declare(metadata double* %13, metadata !5405, metadata !62), !dbg !5406
  %41 = load double, double* %12, align 8, !dbg !5407
  %42 = load double, double* %12, align 8, !dbg !5408
  %43 = fmul double %41, %42, !dbg !5409
  %44 = load double, double* %12, align 8, !dbg !5410
  %45 = fmul double %43, %44, !dbg !5411
  store double %45, double* %13, align 8, !dbg !5406
  call void @llvm.dbg.declare(metadata double* %14, metadata !5412, metadata !62), !dbg !5413
  %46 = load double, double* %5, align 8, !dbg !5414
  %47 = load double, double* %6, align 8, !dbg !5415
  %48 = fdiv double %46, %47, !dbg !5416
  store double %48, double* %14, align 8, !dbg !5413
  call void @llvm.dbg.declare(metadata double* %15, metadata !5417, metadata !62), !dbg !5418
  %49 = load double, double* %5, align 8, !dbg !5419
  %50 = fadd double %49, 1.000000e+00, !dbg !5420
  %51 = load double, double* %6, align 8, !dbg !5421
  %52 = fmul double 2.000000e+00, %51, !dbg !5422
  %53 = fdiv double %50, %52, !dbg !5423
  store double %53, double* %15, align 8, !dbg !5418
  call void @llvm.dbg.declare(metadata double* %16, metadata !5424, metadata !62), !dbg !5425
  %54 = load double, double* %5, align 8, !dbg !5426
  %55 = fadd double %54, 2.000000e+00, !dbg !5427
  %56 = load double, double* %6, align 8, !dbg !5428
  %57 = fadd double %56, 1.000000e+00, !dbg !5429
  %58 = fmul double 2.000000e+00, %57, !dbg !5430
  %59 = fdiv double %55, %58, !dbg !5431
  store double %59, double* %16, align 8, !dbg !5425
  call void @llvm.dbg.declare(metadata double* %17, metadata !5432, metadata !62), !dbg !5433
  store double 1.000000e+00, double* %17, align 8, !dbg !5433
  call void @llvm.dbg.declare(metadata double* %18, metadata !5434, metadata !62), !dbg !5435
  call void @llvm.dbg.declare(metadata double* %19, metadata !5436, metadata !62), !dbg !5437
  store double 1.000000e+00, double* %19, align 8, !dbg !5437
  call void @llvm.dbg.declare(metadata double* %20, metadata !5438, metadata !62), !dbg !5439
  %60 = load double, double* %15, align 8, !dbg !5440
  %61 = load double, double* %12, align 8, !dbg !5441
  %62 = fmul double %60, %61, !dbg !5442
  %63 = fadd double 1.000000e+00, %62, !dbg !5443
  store double %63, double* %20, align 8, !dbg !5439
  call void @llvm.dbg.declare(metadata double* %21, metadata !5444, metadata !62), !dbg !5445
  %64 = load double, double* %16, align 8, !dbg !5446
  %65 = load double, double* %12, align 8, !dbg !5447
  %66 = fmul double %64, %65, !dbg !5448
  %67 = load double, double* %15, align 8, !dbg !5449
  %68 = fdiv double %67, 3.000000e+00, !dbg !5450
  %69 = load double, double* %12, align 8, !dbg !5451
  %70 = fmul double %68, %69, !dbg !5452
  %71 = fadd double 1.000000e+00, %70, !dbg !5453
  %72 = fmul double %66, %71, !dbg !5454
  %73 = fadd double 1.000000e+00, %72, !dbg !5455
  store double %73, double* %21, align 8, !dbg !5445
  call void @llvm.dbg.declare(metadata double* %22, metadata !5456, metadata !62), !dbg !5457
  store double 1.000000e+00, double* %22, align 8, !dbg !5457
  call void @llvm.dbg.declare(metadata double* %23, metadata !5458, metadata !62), !dbg !5459
  %74 = load double, double* %20, align 8, !dbg !5460
  %75 = load double, double* %14, align 8, !dbg !5461
  %76 = load double, double* %12, align 8, !dbg !5462
  %77 = fmul double %75, %76, !dbg !5463
  %78 = fsub double %74, %77, !dbg !5464
  store double %78, double* %23, align 8, !dbg !5459
  call void @llvm.dbg.declare(metadata double* %24, metadata !5465, metadata !62), !dbg !5466
  %79 = load double, double* %21, align 8, !dbg !5467
  %80 = load double, double* %14, align 8, !dbg !5468
  %81 = load double, double* %16, align 8, !dbg !5469
  %82 = load double, double* %12, align 8, !dbg !5470
  %83 = fmul double %81, %82, !dbg !5471
  %84 = fadd double 1.000000e+00, %83, !dbg !5472
  %85 = fmul double %80, %84, !dbg !5473
  %86 = load double, double* %12, align 8, !dbg !5474
  %87 = fmul double %85, %86, !dbg !5475
  %88 = fsub double %79, %87, !dbg !5476
  %89 = load double, double* %14, align 8, !dbg !5477
  %90 = load double, double* %15, align 8, !dbg !5478
  %91 = fmul double %89, %90, !dbg !5479
  %92 = load double, double* %6, align 8, !dbg !5480
  %93 = load double, double* %6, align 8, !dbg !5481
  %94 = fadd double %93, 1.000000e+00, !dbg !5482
  %95 = fdiv double %92, %94, !dbg !5483
  %96 = fmul double %91, %95, !dbg !5484
  %97 = load double, double* %12, align 8, !dbg !5485
  %98 = fmul double %96, %97, !dbg !5486
  %99 = load double, double* %12, align 8, !dbg !5487
  %100 = fmul double %98, %99, !dbg !5488
  %101 = fadd double %88, %100, !dbg !5489
  store double %101, double* %24, align 8, !dbg !5466
  br label %102, !dbg !5490

; <label>:102:                                    ; preds = %4, %313
  call void @llvm.dbg.declare(metadata double* %25, metadata !5491, metadata !62), !dbg !5493
  %103 = load i32, i32* %11, align 4, !dbg !5494
  %104 = sitofp i32 %103 to double, !dbg !5494
  %105 = load double, double* %5, align 8, !dbg !5495
  %106 = fadd double %104, %105, !dbg !5496
  %107 = fsub double %106, 1.000000e+00, !dbg !5497
  store double %107, double* %25, align 8, !dbg !5493
  call void @llvm.dbg.declare(metadata double* %26, metadata !5498, metadata !62), !dbg !5499
  %108 = load i32, i32* %11, align 4, !dbg !5500
  %109 = sitofp i32 %108 to double, !dbg !5500
  %110 = load double, double* %6, align 8, !dbg !5501
  %111 = fadd double %109, %110, !dbg !5502
  %112 = fsub double %111, 1.000000e+00, !dbg !5503
  store double %112, double* %26, align 8, !dbg !5499
  call void @llvm.dbg.declare(metadata double* %27, metadata !5504, metadata !62), !dbg !5505
  %113 = load i32, i32* %11, align 4, !dbg !5506
  %114 = sitofp i32 %113 to double, !dbg !5506
  %115 = load double, double* %5, align 8, !dbg !5507
  %116 = fadd double %114, %115, !dbg !5508
  %117 = fsub double %116, 2.000000e+00, !dbg !5509
  store double %117, double* %27, align 8, !dbg !5505
  call void @llvm.dbg.declare(metadata double* %28, metadata !5510, metadata !62), !dbg !5511
  %118 = load i32, i32* %11, align 4, !dbg !5512
  %119 = sitofp i32 %118 to double, !dbg !5512
  %120 = load double, double* %6, align 8, !dbg !5513
  %121 = fadd double %119, %120, !dbg !5514
  %122 = fsub double %121, 2.000000e+00, !dbg !5515
  store double %122, double* %28, align 8, !dbg !5511
  call void @llvm.dbg.declare(metadata double* %29, metadata !5516, metadata !62), !dbg !5517
  %123 = load i32, i32* %11, align 4, !dbg !5518
  %124 = mul nsw i32 2, %123, !dbg !5519
  %125 = sub nsw i32 %124, 1, !dbg !5520
  %126 = sitofp i32 %125 to double, !dbg !5521
  store double %126, double* %29, align 8, !dbg !5517
  call void @llvm.dbg.declare(metadata double* %30, metadata !5522, metadata !62), !dbg !5523
  %127 = load i32, i32* %11, align 4, !dbg !5524
  %128 = mul nsw i32 2, %127, !dbg !5525
  %129 = sub nsw i32 %128, 3, !dbg !5526
  %130 = sitofp i32 %129 to double, !dbg !5527
  store double %130, double* %30, align 8, !dbg !5523
  call void @llvm.dbg.declare(metadata double* %31, metadata !5528, metadata !62), !dbg !5529
  %131 = load i32, i32* %11, align 4, !dbg !5530
  %132 = mul nsw i32 2, %131, !dbg !5531
  %133 = sub nsw i32 %132, 5, !dbg !5532
  %134 = sitofp i32 %133 to double, !dbg !5533
  store double %134, double* %31, align 8, !dbg !5529
  call void @llvm.dbg.declare(metadata double* %32, metadata !5534, metadata !62), !dbg !5535
  %135 = load i32, i32* %11, align 4, !dbg !5536
  %136 = sitofp i32 %135 to double, !dbg !5536
  %137 = load double, double* %5, align 8, !dbg !5537
  %138 = fsub double %136, %137, !dbg !5538
  %139 = fsub double %138, 2.000000e+00, !dbg !5539
  %140 = load double, double* %30, align 8, !dbg !5540
  %141 = fmul double 2.000000e+00, %140, !dbg !5541
  %142 = load double, double* %26, align 8, !dbg !5542
  %143 = fmul double %141, %142, !dbg !5543
  %144 = fdiv double %139, %143, !dbg !5544
  store double %144, double* %32, align 8, !dbg !5535
  call void @llvm.dbg.declare(metadata double* %33, metadata !5545, metadata !62), !dbg !5546
  %145 = load i32, i32* %11, align 4, !dbg !5547
  %146 = sitofp i32 %145 to double, !dbg !5547
  %147 = load double, double* %5, align 8, !dbg !5548
  %148 = fadd double %146, %147, !dbg !5549
  %149 = load double, double* %25, align 8, !dbg !5550
  %150 = fmul double %148, %149, !dbg !5551
  %151 = load double, double* %29, align 8, !dbg !5552
  %152 = fmul double 4.000000e+00, %151, !dbg !5553
  %153 = load double, double* %30, align 8, !dbg !5554
  %154 = fmul double %152, %153, !dbg !5555
  %155 = load double, double* %28, align 8, !dbg !5556
  %156 = fmul double %154, %155, !dbg !5557
  %157 = load double, double* %26, align 8, !dbg !5558
  %158 = fmul double %156, %157, !dbg !5559
  %159 = fdiv double %150, %158, !dbg !5560
  store double %159, double* %33, align 8, !dbg !5546
  call void @llvm.dbg.declare(metadata double* %34, metadata !5561, metadata !62), !dbg !5562
  %160 = load double, double* %27, align 8, !dbg !5563
  %161 = fsub double -0.000000e+00, %160, !dbg !5564
  %162 = load double, double* %25, align 8, !dbg !5565
  %163 = fmul double %161, %162, !dbg !5566
  %164 = load i32, i32* %11, align 4, !dbg !5567
  %165 = sitofp i32 %164 to double, !dbg !5567
  %166 = load double, double* %5, align 8, !dbg !5568
  %167 = fsub double %165, %166, !dbg !5569
  %168 = fsub double %167, 2.000000e+00, !dbg !5570
  %169 = fmul double %163, %168, !dbg !5571
  %170 = load double, double* %30, align 8, !dbg !5572
  %171 = fmul double 8.000000e+00, %170, !dbg !5573
  %172 = load double, double* %30, align 8, !dbg !5574
  %173 = fmul double %171, %172, !dbg !5575
  %174 = load double, double* %31, align 8, !dbg !5576
  %175 = fmul double %173, %174, !dbg !5577
  %176 = load i32, i32* %11, align 4, !dbg !5578
  %177 = sitofp i32 %176 to double, !dbg !5578
  %178 = load double, double* %6, align 8, !dbg !5579
  %179 = fadd double %177, %178, !dbg !5580
  %180 = fsub double %179, 3.000000e+00, !dbg !5581
  %181 = fmul double %175, %180, !dbg !5582
  %182 = load double, double* %28, align 8, !dbg !5583
  %183 = fmul double %181, %182, !dbg !5584
  %184 = load double, double* %26, align 8, !dbg !5585
  %185 = fmul double %183, %184, !dbg !5586
  %186 = fdiv double %169, %185, !dbg !5587
  store double %186, double* %34, align 8, !dbg !5562
  call void @llvm.dbg.declare(metadata double* %35, metadata !5588, metadata !62), !dbg !5589
  %187 = load double, double* %25, align 8, !dbg !5590
  %188 = fsub double -0.000000e+00, %187, !dbg !5591
  %189 = load i32, i32* %11, align 4, !dbg !5592
  %190 = sitofp i32 %189 to double, !dbg !5592
  %191 = load double, double* %6, align 8, !dbg !5593
  %192 = fsub double %190, %191, !dbg !5594
  %193 = fsub double %192, 1.000000e+00, !dbg !5595
  %194 = fmul double %188, %193, !dbg !5596
  %195 = load double, double* %30, align 8, !dbg !5597
  %196 = fmul double 2.000000e+00, %195, !dbg !5598
  %197 = load double, double* %28, align 8, !dbg !5599
  %198 = fmul double %196, %197, !dbg !5600
  %199 = load double, double* %26, align 8, !dbg !5601
  %200 = fmul double %198, %199, !dbg !5602
  %201 = fdiv double %194, %200, !dbg !5603
  store double %201, double* %35, align 8, !dbg !5589
  call void @llvm.dbg.declare(metadata double* %36, metadata !5604, metadata !62), !dbg !5605
  %202 = load double, double* %32, align 8, !dbg !5606
  %203 = load double, double* %12, align 8, !dbg !5607
  %204 = fmul double %202, %203, !dbg !5608
  %205 = fadd double 1.000000e+00, %204, !dbg !5609
  %206 = load double, double* %24, align 8, !dbg !5610
  %207 = fmul double %205, %206, !dbg !5611
  %208 = load double, double* %35, align 8, !dbg !5612
  %209 = load double, double* %33, align 8, !dbg !5613
  %210 = load double, double* %12, align 8, !dbg !5614
  %211 = fmul double %209, %210, !dbg !5615
  %212 = fadd double %208, %211, !dbg !5616
  %213 = load double, double* %12, align 8, !dbg !5617
  %214 = fmul double %212, %213, !dbg !5618
  %215 = load double, double* %23, align 8, !dbg !5619
  %216 = fmul double %214, %215, !dbg !5620
  %217 = fadd double %207, %216, !dbg !5621
  %218 = load double, double* %34, align 8, !dbg !5622
  %219 = load double, double* %13, align 8, !dbg !5623
  %220 = fmul double %218, %219, !dbg !5624
  %221 = load double, double* %22, align 8, !dbg !5625
  %222 = fmul double %220, %221, !dbg !5626
  %223 = fadd double %217, %222, !dbg !5627
  store double %223, double* %36, align 8, !dbg !5605
  call void @llvm.dbg.declare(metadata double* %37, metadata !5628, metadata !62), !dbg !5629
  %224 = load double, double* %32, align 8, !dbg !5630
  %225 = load double, double* %12, align 8, !dbg !5631
  %226 = fmul double %224, %225, !dbg !5632
  %227 = fadd double 1.000000e+00, %226, !dbg !5633
  %228 = load double, double* %21, align 8, !dbg !5634
  %229 = fmul double %227, %228, !dbg !5635
  %230 = load double, double* %35, align 8, !dbg !5636
  %231 = load double, double* %33, align 8, !dbg !5637
  %232 = load double, double* %12, align 8, !dbg !5638
  %233 = fmul double %231, %232, !dbg !5639
  %234 = fadd double %230, %233, !dbg !5640
  %235 = load double, double* %12, align 8, !dbg !5641
  %236 = fmul double %234, %235, !dbg !5642
  %237 = load double, double* %20, align 8, !dbg !5643
  %238 = fmul double %236, %237, !dbg !5644
  %239 = fadd double %229, %238, !dbg !5645
  %240 = load double, double* %34, align 8, !dbg !5646
  %241 = load double, double* %13, align 8, !dbg !5647
  %242 = fmul double %240, %241, !dbg !5648
  %243 = load double, double* %19, align 8, !dbg !5649
  %244 = fmul double %242, %243, !dbg !5650
  %245 = fadd double %239, %244, !dbg !5651
  store double %245, double* %37, align 8, !dbg !5629
  call void @llvm.dbg.declare(metadata double* %38, metadata !5652, metadata !62), !dbg !5653
  %246 = load double, double* %36, align 8, !dbg !5654
  %247 = load double, double* %37, align 8, !dbg !5655
  %248 = fdiv double %246, %247, !dbg !5656
  store double %248, double* %38, align 8, !dbg !5653
  %249 = load double, double* %17, align 8, !dbg !5657
  %250 = load double, double* %38, align 8, !dbg !5658
  %251 = fsub double %249, %250, !dbg !5659
  %252 = load double, double* %17, align 8, !dbg !5660
  %253 = fdiv double %251, %252, !dbg !5661
  %254 = call double @fabs(double %253) #1, !dbg !5662
  store double %254, double* %18, align 8, !dbg !5663
  %255 = load double, double* %38, align 8, !dbg !5664
  store double %255, double* %17, align 8, !dbg !5665
  %256 = load double, double* %18, align 8, !dbg !5666
  %257 = fcmp olt double %256, 0x3CB0000000000000, !dbg !5668
  br i1 %257, label %261, label %258, !dbg !5669

; <label>:258:                                    ; preds = %102
  %259 = load i32, i32* %11, align 4, !dbg !5670
  %260 = icmp sgt i32 %259, 5000, !dbg !5672
  br i1 %260, label %261, label %262, !dbg !5673

; <label>:261:                                    ; preds = %258, %102
  br label %322, !dbg !5674

; <label>:262:                                    ; preds = %258
  %263 = load double, double* %36, align 8, !dbg !5676
  %264 = call double @fabs(double %263) #1, !dbg !5678
  %265 = fcmp ogt double %264, 1.000000e+50, !dbg !5679
  br i1 %265, label %270, label %266, !dbg !5680

; <label>:266:                                    ; preds = %262
  %267 = load double, double* %37, align 8, !dbg !5681
  %268 = call double @fabs(double %267) #1, !dbg !5683
  %269 = fcmp ogt double %268, 1.000000e+50, !dbg !5684
  br i1 %269, label %270, label %287, !dbg !5685

; <label>:270:                                    ; preds = %266, %262
  %271 = load double, double* %36, align 8, !dbg !5686
  %272 = fdiv double %271, 1.000000e+50, !dbg !5686
  store double %272, double* %36, align 8, !dbg !5686
  %273 = load double, double* %37, align 8, !dbg !5688
  %274 = fdiv double %273, 1.000000e+50, !dbg !5688
  store double %274, double* %37, align 8, !dbg !5688
  %275 = load double, double* %24, align 8, !dbg !5689
  %276 = fdiv double %275, 1.000000e+50, !dbg !5689
  store double %276, double* %24, align 8, !dbg !5689
  %277 = load double, double* %21, align 8, !dbg !5690
  %278 = fdiv double %277, 1.000000e+50, !dbg !5690
  store double %278, double* %21, align 8, !dbg !5690
  %279 = load double, double* %23, align 8, !dbg !5691
  %280 = fdiv double %279, 1.000000e+50, !dbg !5691
  store double %280, double* %23, align 8, !dbg !5691
  %281 = load double, double* %20, align 8, !dbg !5692
  %282 = fdiv double %281, 1.000000e+50, !dbg !5692
  store double %282, double* %20, align 8, !dbg !5692
  %283 = load double, double* %22, align 8, !dbg !5693
  %284 = fdiv double %283, 1.000000e+50, !dbg !5693
  store double %284, double* %22, align 8, !dbg !5693
  %285 = load double, double* %19, align 8, !dbg !5694
  %286 = fdiv double %285, 1.000000e+50, !dbg !5694
  store double %286, double* %19, align 8, !dbg !5694
  br label %313, !dbg !5695

; <label>:287:                                    ; preds = %266
  %288 = load double, double* %36, align 8, !dbg !5696
  %289 = call double @fabs(double %288) #1, !dbg !5698
  %290 = fcmp olt double %289, 0x358DEE7A4AD4B81E, !dbg !5699
  br i1 %290, label %295, label %291, !dbg !5700

; <label>:291:                                    ; preds = %287
  %292 = load double, double* %37, align 8, !dbg !5701
  %293 = call double @fabs(double %292) #1, !dbg !5703
  %294 = fcmp olt double %293, 0x358DEE7A4AD4B81E, !dbg !5704
  br i1 %294, label %295, label %312, !dbg !5705

; <label>:295:                                    ; preds = %291, %287
  %296 = load double, double* %36, align 8, !dbg !5706
  %297 = fmul double %296, 1.000000e+50, !dbg !5706
  store double %297, double* %36, align 8, !dbg !5706
  %298 = load double, double* %37, align 8, !dbg !5708
  %299 = fmul double %298, 1.000000e+50, !dbg !5708
  store double %299, double* %37, align 8, !dbg !5708
  %300 = load double, double* %24, align 8, !dbg !5709
  %301 = fmul double %300, 1.000000e+50, !dbg !5709
  store double %301, double* %24, align 8, !dbg !5709
  %302 = load double, double* %21, align 8, !dbg !5710
  %303 = fmul double %302, 1.000000e+50, !dbg !5710
  store double %303, double* %21, align 8, !dbg !5710
  %304 = load double, double* %23, align 8, !dbg !5711
  %305 = fmul double %304, 1.000000e+50, !dbg !5711
  store double %305, double* %23, align 8, !dbg !5711
  %306 = load double, double* %20, align 8, !dbg !5712
  %307 = fmul double %306, 1.000000e+50, !dbg !5712
  store double %307, double* %20, align 8, !dbg !5712
  %308 = load double, double* %22, align 8, !dbg !5713
  %309 = fmul double %308, 1.000000e+50, !dbg !5713
  store double %309, double* %22, align 8, !dbg !5713
  %310 = load double, double* %19, align 8, !dbg !5714
  %311 = fmul double %310, 1.000000e+50, !dbg !5714
  store double %311, double* %19, align 8, !dbg !5714
  br label %312, !dbg !5715

; <label>:312:                                    ; preds = %295, %291
  br label %313

; <label>:313:                                    ; preds = %312, %270
  %314 = load i32, i32* %11, align 4, !dbg !5716
  %315 = add nsw i32 %314, 1, !dbg !5716
  store i32 %315, i32* %11, align 4, !dbg !5716
  %316 = load double, double* %20, align 8, !dbg !5717
  store double %316, double* %19, align 8, !dbg !5718
  %317 = load double, double* %21, align 8, !dbg !5719
  store double %317, double* %20, align 8, !dbg !5720
  %318 = load double, double* %37, align 8, !dbg !5721
  store double %318, double* %21, align 8, !dbg !5722
  %319 = load double, double* %23, align 8, !dbg !5723
  store double %319, double* %22, align 8, !dbg !5724
  %320 = load double, double* %24, align 8, !dbg !5725
  store double %320, double* %23, align 8, !dbg !5726
  %321 = load double, double* %36, align 8, !dbg !5727
  store double %321, double* %24, align 8, !dbg !5728
  br label %102, !dbg !5729, !llvm.loop !5731

; <label>:322:                                    ; preds = %261
  %323 = load double, double* %17, align 8, !dbg !5732
  %324 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !5733
  %325 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %324, i32 0, i32 0, !dbg !5734
  store double %323, double* %325, align 8, !dbg !5735
  %326 = load double, double* %17, align 8, !dbg !5736
  %327 = load double, double* %18, align 8, !dbg !5737
  %328 = fmul double %326, %327, !dbg !5738
  %329 = call double @fabs(double %328) #1, !dbg !5739
  %330 = fmul double 2.000000e+00, %329, !dbg !5740
  %331 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !5741
  %332 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %331, i32 0, i32 1, !dbg !5742
  store double %330, double* %332, align 8, !dbg !5743
  %333 = load i32, i32* %11, align 4, !dbg !5744
  %334 = sitofp i32 %333 to double, !dbg !5744
  %335 = fsub double %334, 1.000000e+00, !dbg !5745
  %336 = fmul double 0x3CC0000000000000, %335, !dbg !5746
  %337 = load double, double* %17, align 8, !dbg !5747
  %338 = call double @fabs(double %337) #1, !dbg !5748
  %339 = fmul double %336, %338, !dbg !5749
  %340 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !5750
  %341 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %340, i32 0, i32 1, !dbg !5751
  %342 = load double, double* %341, align 8, !dbg !5752
  %343 = fadd double %342, %339, !dbg !5752
  store double %343, double* %341, align 8, !dbg !5752
  ret i32 0, !dbg !5753
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_1_series(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !5754 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !5755, metadata !62), !dbg !5756
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !5757, metadata !62), !dbg !5758
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !5759, metadata !62), !dbg !5760
  call void @llvm.dbg.declare(metadata double* %7, metadata !5761, metadata !62), !dbg !5762
  store double 1.000000e+00, double* %7, align 8, !dbg !5762
  call void @llvm.dbg.declare(metadata double* %8, metadata !5763, metadata !62), !dbg !5764
  store double 0.000000e+00, double* %8, align 8, !dbg !5764
  call void @llvm.dbg.declare(metadata double* %9, metadata !5765, metadata !62), !dbg !5766
  store double 1.000000e+00, double* %9, align 8, !dbg !5766
  call void @llvm.dbg.declare(metadata double* %10, metadata !5767, metadata !62), !dbg !5768
  store double 1.000000e+00, double* %10, align 8, !dbg !5768
  br label %11, !dbg !5769

; <label>:11:                                     ; preds = %17, %3
  %12 = load double, double* %9, align 8, !dbg !5770
  %13 = load double, double* %7, align 8, !dbg !5772
  %14 = fdiv double %12, %13, !dbg !5773
  %15 = call double @fabs(double %14) #1, !dbg !5774
  %16 = fcmp ogt double %15, 0x3C90000000000000, !dbg !5775
  br i1 %16, label %17, label %40, !dbg !5776

; <label>:17:                                     ; preds = %11
  %18 = load double, double* %5, align 8, !dbg !5777
  %19 = load double, double* %4, align 8, !dbg !5779
  %20 = load double, double* %10, align 8, !dbg !5780
  %21 = fadd double %19, %20, !dbg !5781
  %22 = fsub double %21, 1.000000e+00, !dbg !5782
  %23 = fdiv double %18, %22, !dbg !5783
  %24 = load double, double* %9, align 8, !dbg !5784
  %25 = fmul double %24, %23, !dbg !5784
  store double %25, double* %9, align 8, !dbg !5784
  %26 = load double, double* %9, align 8, !dbg !5785
  %27 = load double, double* %7, align 8, !dbg !5786
  %28 = fadd double %27, %26, !dbg !5786
  store double %28, double* %7, align 8, !dbg !5786
  %29 = load double, double* %9, align 8, !dbg !5787
  %30 = call double @fabs(double %29) #1, !dbg !5788
  %31 = fmul double 0x3CE0000000000000, %30, !dbg !5789
  %32 = load double, double* %7, align 8, !dbg !5790
  %33 = call double @fabs(double %32) #1, !dbg !5791
  %34 = fmul double 0x3CB0000000000000, %33, !dbg !5793
  %35 = fadd double %31, %34, !dbg !5794
  %36 = load double, double* %8, align 8, !dbg !5795
  %37 = fadd double %36, %35, !dbg !5795
  store double %37, double* %8, align 8, !dbg !5795
  %38 = load double, double* %10, align 8, !dbg !5796
  %39 = fadd double %38, 1.000000e+00, !dbg !5796
  store double %39, double* %10, align 8, !dbg !5796
  br label %11, !dbg !5797, !llvm.loop !5799

; <label>:40:                                     ; preds = %11
  %41 = load double, double* %7, align 8, !dbg !5800
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !5801
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !5802
  store double %41, double* %43, align 8, !dbg !5803
  %44 = load double, double* %8, align 8, !dbg !5804
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !5805
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !5806
  store double %44, double* %46, align 8, !dbg !5807
  %47 = load double, double* %9, align 8, !dbg !5808
  %48 = call double @fabs(double %47) #1, !dbg !5809
  %49 = fmul double 2.000000e+00, %48, !dbg !5810
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !5811
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 1, !dbg !5812
  %52 = load double, double* %51, align 8, !dbg !5813
  %53 = fadd double %52, %49, !dbg !5813
  store double %53, double* %51, align 8, !dbg !5813
  ret i32 0, !dbg !5814
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_1_int(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !5815 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5818, metadata !62), !dbg !5819
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !5820, metadata !62), !dbg !5821
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !5822, metadata !62), !dbg !5823
  %8 = load i32, i32* %5, align 4, !dbg !5824
  %9 = icmp slt i32 %8, 1, !dbg !5826
  br i1 %9, label %10, label %19, !dbg !5827

; <label>:10:                                     ; preds = %3
  br label %11, !dbg !5828, !llvm.loop !5830

; <label>:11:                                     ; preds = %10
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !5831
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !5831
  store double 0x7FF8000000000000, double* %13, align 8, !dbg !5831
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !5831
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !5831
  store double 0x7FF8000000000000, double* %15, align 8, !dbg !5831
  br label %16, !dbg !5831, !llvm.loop !5834

; <label>:16:                                     ; preds = %11
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 322, i32 1), !dbg !5836
  store i32 1, i32* %4, align 4, !dbg !5836
  br label %46, !dbg !5836
                                                  ; No predecessors!
  br label %18, !dbg !5839

; <label>:18:                                     ; preds = %17
  br label %46, !dbg !5841

; <label>:19:                                     ; preds = %3
  %20 = load i32, i32* %5, align 4, !dbg !5842
  %21 = icmp eq i32 %20, 1, !dbg !5844
  br i1 %21, label %22, label %26, !dbg !5845

; <label>:22:                                     ; preds = %19
  %23 = load double, double* %6, align 8, !dbg !5846
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !5848
  %25 = call i32 @gsl_sf_exp_e(double %23, %struct.gsl_sf_result_struct* %24), !dbg !5849
  store i32 %25, i32* %4, align 4, !dbg !5850
  br label %46, !dbg !5850

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %5, align 4, !dbg !5851
  %28 = icmp eq i32 %27, 2, !dbg !5853
  br i1 %28, label %29, label %33, !dbg !5854

; <label>:29:                                     ; preds = %26
  %30 = load double, double* %6, align 8, !dbg !5855
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !5857
  %32 = call i32 @gsl_sf_exprel_e(double %30, %struct.gsl_sf_result_struct* %31), !dbg !5858
  store i32 %32, i32* %4, align 4, !dbg !5859
  br label %46, !dbg !5859

; <label>:33:                                     ; preds = %26
  %34 = load i32, i32* %5, align 4, !dbg !5860
  %35 = icmp eq i32 %34, 3, !dbg !5862
  br i1 %35, label %36, label %40, !dbg !5863

; <label>:36:                                     ; preds = %33
  %37 = load double, double* %6, align 8, !dbg !5864
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !5866
  %39 = call i32 @gsl_sf_exprel_2_e(double %37, %struct.gsl_sf_result_struct* %38), !dbg !5867
  store i32 %39, i32* %4, align 4, !dbg !5868
  br label %46, !dbg !5868

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %5, align 4, !dbg !5869
  %42 = sub nsw i32 %41, 1, !dbg !5871
  %43 = load double, double* %6, align 8, !dbg !5872
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !5873
  %45 = call i32 @gsl_sf_exprel_n_e(i32 %42, double %43, %struct.gsl_sf_result_struct* %44), !dbg !5874
  store i32 %45, i32* %4, align 4, !dbg !5875
  br label %46, !dbg !5875

; <label>:46:                                     ; preds = %16, %22, %29, %36, %40, %18
  %47 = load i32, i32* %4, align 4, !dbg !5876
  ret i32 %47, !dbg !5876
}

declare i32 @gsl_sf_exprel_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exprel_2_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @log1p(double) #4

; Function Attrs: nounwind
declare double @acos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_beps_bgt0(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !5877 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !5878, metadata !62), !dbg !5879
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !5880, metadata !62), !dbg !5881
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !5882, metadata !62), !dbg !5883
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !5884, metadata !62), !dbg !5885
  %20 = load double, double* %7, align 8, !dbg !5886
  %21 = load double, double* %8, align 8, !dbg !5888
  %22 = call double @fabs(double %21) #1, !dbg !5889
  %23 = fcmp ogt double %20, %22, !dbg !5890
  br i1 %23, label %24, label %120, !dbg !5891

; <label>:24:                                     ; preds = %4
  %25 = load double, double* %6, align 8, !dbg !5892
  %26 = call double @fabs(double %25) #1, !dbg !5894
  %27 = fcmp olt double %26, 0x3E50000000000000, !dbg !5895
  br i1 %27, label %28, label %120, !dbg !5896

; <label>:28:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata double* %10, metadata !5897, metadata !62), !dbg !5899
  %29 = load double, double* %7, align 8, !dbg !5900
  %30 = load double, double* %6, align 8, !dbg !5901
  %31 = fadd double %29, %30, !dbg !5902
  store double %31, double* %10, align 8, !dbg !5899
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !5903, metadata !62), !dbg !5904
  call void @llvm.dbg.declare(metadata i32* %12, metadata !5905, metadata !62), !dbg !5906
  %32 = load double, double* %10, align 8, !dbg !5907
  %33 = load double, double* %8, align 8, !dbg !5908
  %34 = fmul double %32, %33, !dbg !5909
  %35 = load double, double* %7, align 8, !dbg !5910
  %36 = fdiv double %34, %35, !dbg !5911
  %37 = call i32 @gsl_sf_exp_e(double %36, %struct.gsl_sf_result_struct* %11), !dbg !5912
  store i32 %37, i32* %12, align 4, !dbg !5906
  call void @llvm.dbg.declare(metadata double* %13, metadata !5913, metadata !62), !dbg !5914
  %38 = load double, double* %10, align 8, !dbg !5915
  %39 = load double, double* %7, align 8, !dbg !5916
  %40 = fmul double 2.000000e+00, %39, !dbg !5917
  %41 = load double, double* %7, align 8, !dbg !5918
  %42 = fmul double %40, %41, !dbg !5919
  %43 = load double, double* %7, align 8, !dbg !5920
  %44 = fadd double %43, 1.000000e+00, !dbg !5921
  %45 = fmul double %42, %44, !dbg !5922
  %46 = fdiv double %38, %45, !dbg !5923
  store double %46, double* %13, align 8, !dbg !5914
  call void @llvm.dbg.declare(metadata double* %14, metadata !5924, metadata !62), !dbg !5925
  %47 = load double, double* %10, align 8, !dbg !5926
  %48 = load double, double* %7, align 8, !dbg !5927
  %49 = load double, double* %10, align 8, !dbg !5928
  %50 = fmul double 2.000000e+00, %49, !dbg !5929
  %51 = fsub double %48, %50, !dbg !5930
  %52 = fmul double %47, %51, !dbg !5931
  %53 = load double, double* %7, align 8, !dbg !5932
  %54 = fmul double 3.000000e+00, %53, !dbg !5933
  %55 = load double, double* %7, align 8, !dbg !5934
  %56 = fmul double %54, %55, !dbg !5935
  %57 = load double, double* %7, align 8, !dbg !5936
  %58 = fmul double %56, %57, !dbg !5937
  %59 = load double, double* %7, align 8, !dbg !5938
  %60 = fadd double %59, 1.000000e+00, !dbg !5939
  %61 = fmul double %58, %60, !dbg !5940
  %62 = load double, double* %7, align 8, !dbg !5941
  %63 = fadd double %62, 2.000000e+00, !dbg !5942
  %64 = fmul double %61, %63, !dbg !5943
  %65 = fdiv double %52, %64, !dbg !5944
  store double %65, double* %14, align 8, !dbg !5925
  call void @llvm.dbg.declare(metadata double* %15, metadata !5945, metadata !62), !dbg !5946
  %66 = load double, double* %13, align 8, !dbg !5947
  %67 = load double, double* %14, align 8, !dbg !5948
  %68 = load double, double* %8, align 8, !dbg !5949
  %69 = fmul double %67, %68, !dbg !5950
  %70 = fadd double %66, %69, !dbg !5951
  store double %70, double* %15, align 8, !dbg !5946
  call void @llvm.dbg.declare(metadata double* %16, metadata !5952, metadata !62), !dbg !5953
  %71 = load double, double* %6, align 8, !dbg !5954
  %72 = load double, double* %8, align 8, !dbg !5955
  %73 = fmul double %71, %72, !dbg !5956
  %74 = load double, double* %8, align 8, !dbg !5957
  %75 = fmul double %73, %74, !dbg !5958
  %76 = load double, double* %15, align 8, !dbg !5959
  %77 = fmul double %75, %76, !dbg !5960
  %78 = fsub double 1.000000e+00, %77, !dbg !5961
  store double %78, double* %16, align 8, !dbg !5953
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !5962
  %80 = load double, double* %79, align 8, !dbg !5962
  %81 = load double, double* %16, align 8, !dbg !5963
  %82 = fmul double %80, %81, !dbg !5964
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5965
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !5966
  store double %82, double* %84, align 8, !dbg !5967
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !5968
  %86 = load double, double* %85, align 8, !dbg !5968
  %87 = load double, double* %16, align 8, !dbg !5969
  %88 = call double @fabs(double %87) #1, !dbg !5970
  %89 = fmul double %86, %88, !dbg !5971
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5972
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 1, !dbg !5973
  store double %89, double* %91, align 8, !dbg !5974
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !5975
  %93 = load double, double* %92, align 8, !dbg !5975
  %94 = call double @fabs(double %93) #1, !dbg !5976
  %95 = fmul double %94, 0x3CB0000000000000, !dbg !5977
  %96 = load double, double* %6, align 8, !dbg !5978
  %97 = load double, double* %8, align 8, !dbg !5979
  %98 = fmul double %96, %97, !dbg !5980
  %99 = load double, double* %8, align 8, !dbg !5981
  %100 = fmul double %98, %99, !dbg !5982
  %101 = load double, double* %15, align 8, !dbg !5983
  %102 = fmul double %100, %101, !dbg !5984
  %103 = call double @fabs(double %102) #1, !dbg !5985
  %104 = fadd double 1.000000e+00, %103, !dbg !5987
  %105 = fmul double %95, %104, !dbg !5988
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5989
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 1, !dbg !5990
  %108 = load double, double* %107, align 8, !dbg !5991
  %109 = fadd double %108, %105, !dbg !5991
  store double %109, double* %107, align 8, !dbg !5991
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5992
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !5993
  %112 = load double, double* %111, align 8, !dbg !5993
  %113 = call double @fabs(double %112) #1, !dbg !5994
  %114 = fmul double 0x3CD0000000000000, %113, !dbg !5995
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !5996
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !5997
  %117 = load double, double* %116, align 8, !dbg !5998
  %118 = fadd double %117, %114, !dbg !5998
  store double %118, double* %116, align 8, !dbg !5998
  %119 = load i32, i32* %12, align 4, !dbg !5999
  store i32 %119, i32* %5, align 4, !dbg !6000
  br label %161, !dbg !6000

; <label>:120:                                    ; preds = %24, %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !6001, metadata !62), !dbg !6003
  call void @llvm.dbg.declare(metadata i32* %18, metadata !6004, metadata !62), !dbg !6005
  %121 = load double, double* %6, align 8, !dbg !6006
  %122 = fsub double -0.000000e+00, %121, !dbg !6007
  %123 = load double, double* %7, align 8, !dbg !6008
  %124 = load double, double* %8, align 8, !dbg !6009
  %125 = fsub double -0.000000e+00, %124, !dbg !6010
  %126 = call i32 @hyperg_1F1_small_a_bgt0(double %122, double %123, double %125, %struct.gsl_sf_result_struct* %17), !dbg !6011
  store i32 %126, i32* %18, align 4, !dbg !6005
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !6012
  %128 = load double, double* %127, align 8, !dbg !6012
  %129 = fcmp une double %128, 0.000000e+00, !dbg !6014
  br i1 %129, label %130, label %155, !dbg !6015

; <label>:130:                                    ; preds = %120
  call void @llvm.dbg.declare(metadata i32* %19, metadata !6016, metadata !62), !dbg !6018
  %131 = load double, double* %8, align 8, !dbg !6019
  %132 = load double, double* %8, align 8, !dbg !6020
  %133 = call double @fabs(double %132) #1, !dbg !6021
  %134 = fmul double 0x3CC0000000000000, %133, !dbg !6022
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !6023
  %136 = load double, double* %135, align 8, !dbg !6023
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !6024
  %138 = load double, double* %137, align 8, !dbg !6024
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6025
  %140 = call i32 @gsl_sf_exp_mult_err_e(double %131, double %134, double %136, double %138, %struct.gsl_sf_result_struct* %139), !dbg !6026
  store i32 %140, i32* %19, align 4, !dbg !6018
  %141 = load i32, i32* %19, align 4, !dbg !6028
  %142 = icmp ne i32 %141, 0, !dbg !6028
  br i1 %142, label %143, label %145, !dbg !6028

; <label>:143:                                    ; preds = %130
  %144 = load i32, i32* %19, align 4, !dbg !6029
  br label %153, !dbg !6029

; <label>:145:                                    ; preds = %130
  %146 = load i32, i32* %18, align 4, !dbg !6030
  %147 = icmp ne i32 %146, 0, !dbg !6030
  br i1 %147, label %148, label %150, !dbg !6030

; <label>:148:                                    ; preds = %145
  %149 = load i32, i32* %18, align 4, !dbg !6032
  br label %151, !dbg !6032

; <label>:150:                                    ; preds = %145
  br label %151, !dbg !6034

; <label>:151:                                    ; preds = %150, %148
  %152 = phi i32 [ %149, %148 ], [ 0, %150 ], !dbg !6036
  br label %153, !dbg !6036

; <label>:153:                                    ; preds = %151, %143
  %154 = phi i32 [ %144, %143 ], [ %152, %151 ], !dbg !6038
  store i32 %154, i32* %5, align 4, !dbg !6040
  br label %161, !dbg !6040

; <label>:155:                                    ; preds = %120
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6041
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %156, i32 0, i32 0, !dbg !6043
  store double 0.000000e+00, double* %157, align 8, !dbg !6044
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6045
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 1, !dbg !6046
  store double 0.000000e+00, double* %159, align 8, !dbg !6047
  %160 = load i32, i32* %18, align 4, !dbg !6048
  store i32 %160, i32* %5, align 4, !dbg !6049
  br label %161, !dbg !6049

; <label>:161:                                    ; preds = %155, %153, %28
  %162 = load i32, i32* %5, align 4, !dbg !6050
  ret i32 %162, !dbg !6050
}

declare double @GSL_MIN_DBL(double, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_1F1_U(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !6051 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  %30 = alloca %struct.gsl_sf_result_e10_struct, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.gsl_sf_result_e10_struct, align 8
  %35 = alloca i32, align 4
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca i32, align 4
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !6052, metadata !62), !dbg !6053
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !6054, metadata !62), !dbg !6055
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !6056, metadata !62), !dbg !6057
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !6058, metadata !62), !dbg !6059
  call void @llvm.dbg.declare(metadata double* %9, metadata !6060, metadata !62), !dbg !6061
  %50 = load double, double* %6, align 8, !dbg !6062
  %51 = fsub double 2.000000e+00, %50, !dbg !6063
  store double %51, double* %9, align 8, !dbg !6061
  call void @llvm.dbg.declare(metadata double* %10, metadata !6064, metadata !62), !dbg !6065
  %52 = load double, double* %5, align 8, !dbg !6066
  %53 = load double, double* %6, align 8, !dbg !6067
  %54 = fsub double %52, %53, !dbg !6068
  %55 = fadd double %54, 1.000000e+00, !dbg !6069
  store double %55, double* %10, align 8, !dbg !6065
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !6070, metadata !62), !dbg !6071
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !6072, metadata !62), !dbg !6073
  call void @llvm.dbg.declare(metadata double* %13, metadata !6074, metadata !62), !dbg !6075
  call void @llvm.dbg.declare(metadata i32* %14, metadata !6076, metadata !62), !dbg !6077
  %56 = load double, double* %10, align 8, !dbg !6078
  %57 = call i32 @gsl_sf_lngamma_sgn_e(double %56, %struct.gsl_sf_result_struct* %11, double* %13), !dbg !6079
  store i32 %57, i32* %14, align 4, !dbg !6077
  call void @llvm.dbg.declare(metadata i32* %15, metadata !6080, metadata !62), !dbg !6081
  %58 = load double, double* %9, align 8, !dbg !6082
  %59 = call i32 @gsl_sf_lngamma_e(double %58, %struct.gsl_sf_result_struct* %12), !dbg !6083
  store i32 %59, i32* %15, align 4, !dbg !6081
  call void @llvm.dbg.declare(metadata i32* %16, metadata !6084, metadata !62), !dbg !6085
  %60 = load i32, i32* %14, align 4, !dbg !6086
  %61 = icmp ne i32 %60, 0, !dbg !6086
  br i1 %61, label %62, label %64, !dbg !6086

; <label>:62:                                     ; preds = %4
  %63 = load i32, i32* %14, align 4, !dbg !6087
  br label %72, !dbg !6087

; <label>:64:                                     ; preds = %4
  %65 = load i32, i32* %15, align 4, !dbg !6089
  %66 = icmp ne i32 %65, 0, !dbg !6089
  br i1 %66, label %67, label %69, !dbg !6089

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %15, align 4, !dbg !6091
  br label %70, !dbg !6091

; <label>:69:                                     ; preds = %64
  br label %70, !dbg !6093

; <label>:70:                                     ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ], !dbg !6095
  br label %72, !dbg !6095

; <label>:72:                                     ; preds = %70, %62
  %73 = phi i32 [ %63, %62 ], [ %71, %70 ], !dbg !6097
  store i32 %73, i32* %16, align 4, !dbg !6099
  call void @llvm.dbg.declare(metadata double* %17, metadata !6100, metadata !62), !dbg !6101
  %74 = load double, double* %9, align 8, !dbg !6102
  %75 = fsub double %74, 1.000000e+00, !dbg !6103
  %76 = load double, double* %7, align 8, !dbg !6104
  %77 = call double @log(double %76) #5, !dbg !6105
  %78 = fmul double %75, %77, !dbg !6106
  store double %78, double* %17, align 8, !dbg !6101
  call void @llvm.dbg.declare(metadata double* %18, metadata !6107, metadata !62), !dbg !6108
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !6109
  %80 = load double, double* %79, align 8, !dbg !6109
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !6110
  %82 = load double, double* %81, align 8, !dbg !6110
  %83 = fsub double %80, %82, !dbg !6111
  %84 = load double, double* %17, align 8, !dbg !6112
  %85 = fadd double %83, %84, !dbg !6113
  store double %85, double* %18, align 8, !dbg !6108
  call void @llvm.dbg.declare(metadata double* %19, metadata !6114, metadata !62), !dbg !6115
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !6116
  %87 = load double, double* %86, align 8, !dbg !6116
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !6117
  %89 = load double, double* %88, align 8, !dbg !6117
  %90 = fadd double %87, %89, !dbg !6118
  %91 = load double, double* %17, align 8, !dbg !6119
  %92 = call double @fabs(double %91) #1, !dbg !6120
  %93 = fmul double 0x3CC0000000000000, %92, !dbg !6121
  %94 = fadd double %90, %93, !dbg !6122
  store double %94, double* %19, align 8, !dbg !6115
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !6123, metadata !62), !dbg !6124
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !6125, metadata !62), !dbg !6126
  call void @llvm.dbg.declare(metadata double* %22, metadata !6127, metadata !62), !dbg !6128
  call void @llvm.dbg.declare(metadata double* %23, metadata !6129, metadata !62), !dbg !6130
  call void @llvm.dbg.declare(metadata i32* %24, metadata !6131, metadata !62), !dbg !6132
  %95 = load double, double* %9, align 8, !dbg !6133
  %96 = fsub double 2.000000e+00, %95, !dbg !6134
  %97 = call i32 @gsl_sf_lngamma_sgn_e(double %96, %struct.gsl_sf_result_struct* %20, double* %22), !dbg !6135
  store i32 %97, i32* %24, align 4, !dbg !6132
  call void @llvm.dbg.declare(metadata i32* %25, metadata !6136, metadata !62), !dbg !6137
  %98 = load double, double* %10, align 8, !dbg !6138
  %99 = fadd double 1.000000e+00, %98, !dbg !6139
  %100 = load double, double* %9, align 8, !dbg !6140
  %101 = fsub double %99, %100, !dbg !6141
  %102 = call i32 @gsl_sf_lngamma_sgn_e(double %101, %struct.gsl_sf_result_struct* %21, double* %23), !dbg !6142
  store i32 %102, i32* %25, align 4, !dbg !6137
  call void @llvm.dbg.declare(metadata i32* %26, metadata !6143, metadata !62), !dbg !6144
  %103 = load i32, i32* %24, align 4, !dbg !6145
  %104 = icmp ne i32 %103, 0, !dbg !6145
  br i1 %104, label %105, label %107, !dbg !6145

; <label>:105:                                    ; preds = %72
  %106 = load i32, i32* %24, align 4, !dbg !6146
  br label %115, !dbg !6146

; <label>:107:                                    ; preds = %72
  %108 = load i32, i32* %25, align 4, !dbg !6147
  %109 = icmp ne i32 %108, 0, !dbg !6147
  br i1 %109, label %110, label %112, !dbg !6147

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %25, align 4, !dbg !6148
  br label %113, !dbg !6148

; <label>:112:                                    ; preds = %107
  br label %113, !dbg !6149

; <label>:113:                                    ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ], !dbg !6150
  br label %115, !dbg !6150

; <label>:115:                                    ; preds = %113, %105
  %116 = phi i32 [ %106, %105 ], [ %114, %113 ], !dbg !6151
  store i32 %116, i32* %26, align 4, !dbg !6152
  call void @llvm.dbg.declare(metadata double* %27, metadata !6153, metadata !62), !dbg !6154
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !6155
  %118 = load double, double* %117, align 8, !dbg !6155
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !6156
  %120 = load double, double* %119, align 8, !dbg !6156
  %121 = fsub double %118, %120, !dbg !6157
  store double %121, double* %27, align 8, !dbg !6154
  call void @llvm.dbg.declare(metadata double* %28, metadata !6158, metadata !62), !dbg !6159
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !6160
  %123 = load double, double* %122, align 8, !dbg !6160
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !6161
  %125 = load double, double* %124, align 8, !dbg !6161
  %126 = fadd double %123, %125, !dbg !6162
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !6163
  %128 = load double, double* %127, align 8, !dbg !6163
  %129 = call double @fabs(double %128) #1, !dbg !6164
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !6165
  %131 = load double, double* %130, align 8, !dbg !6165
  %132 = call double @fabs(double %131) #1, !dbg !6166
  %133 = fadd double %129, %132, !dbg !6167
  %134 = fmul double 0x3CB0000000000000, %133, !dbg !6168
  %135 = fadd double %126, %134, !dbg !6169
  store double %135, double* %28, align 8, !dbg !6159
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !6170, metadata !62), !dbg !6171
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct* %30, metadata !6172, metadata !62), !dbg !6179
  call void @llvm.dbg.declare(metadata i32* %31, metadata !6180, metadata !62), !dbg !6181
  %136 = load double, double* %10, align 8, !dbg !6182
  %137 = load double, double* %9, align 8, !dbg !6183
  %138 = load double, double* %7, align 8, !dbg !6184
  %139 = call i32 @gsl_sf_hyperg_1F1_e(double %136, double %137, double %138, %struct.gsl_sf_result_struct* %29), !dbg !6185
  store i32 %139, i32* %31, align 4, !dbg !6181
  call void @llvm.dbg.declare(metadata i32* %32, metadata !6186, metadata !62), !dbg !6187
  %140 = load double, double* %10, align 8, !dbg !6188
  %141 = load double, double* %9, align 8, !dbg !6189
  %142 = load double, double* %7, align 8, !dbg !6190
  %143 = call i32 @gsl_sf_hyperg_U_e10_e(double %140, double %141, double %142, %struct.gsl_sf_result_e10_struct* %30), !dbg !6191
  store i32 %143, i32* %32, align 4, !dbg !6187
  call void @llvm.dbg.declare(metadata i32* %33, metadata !6192, metadata !62), !dbg !6193
  %144 = load i32, i32* %31, align 4, !dbg !6194
  %145 = icmp ne i32 %144, 0, !dbg !6194
  br i1 %145, label %146, label %148, !dbg !6194

; <label>:146:                                    ; preds = %115
  %147 = load i32, i32* %31, align 4, !dbg !6195
  br label %156, !dbg !6195

; <label>:148:                                    ; preds = %115
  %149 = load i32, i32* %32, align 4, !dbg !6196
  %150 = icmp ne i32 %149, 0, !dbg !6196
  br i1 %150, label %151, label %153, !dbg !6196

; <label>:151:                                    ; preds = %148
  %152 = load i32, i32* %32, align 4, !dbg !6197
  br label %154, !dbg !6197

; <label>:153:                                    ; preds = %148
  br label %154, !dbg !6198

; <label>:154:                                    ; preds = %153, %151
  %155 = phi i32 [ %152, %151 ], [ 0, %153 ], !dbg !6199
  br label %156, !dbg !6199

; <label>:156:                                    ; preds = %154, %146
  %157 = phi i32 [ %147, %146 ], [ %155, %154 ], !dbg !6200
  store i32 %157, i32* %33, align 4, !dbg !6201
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct* %34, metadata !6202, metadata !62), !dbg !6203
  call void @llvm.dbg.declare(metadata i32* %35, metadata !6204, metadata !62), !dbg !6205
  %158 = load double, double* %27, align 8, !dbg !6206
  %159 = load double, double* %28, align 8, !dbg !6207
  %160 = load double, double* %22, align 8, !dbg !6208
  %161 = load double, double* %23, align 8, !dbg !6209
  %162 = fmul double %160, %161, !dbg !6210
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !6211
  %164 = load double, double* %163, align 8, !dbg !6211
  %165 = fmul double %162, %164, !dbg !6212
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !6213
  %167 = load double, double* %166, align 8, !dbg !6213
  %168 = call i32 @gsl_sf_exp_mult_err_e10_e(double %158, double %159, double %165, double %167, %struct.gsl_sf_result_e10_struct* %34), !dbg !6214
  store i32 %168, i32* %35, align 4, !dbg !6205
  call void @llvm.dbg.declare(metadata double* %36, metadata !6215, metadata !62), !dbg !6216
  %169 = load double, double* %9, align 8, !dbg !6217
  %170 = fsub double 1.000000e+00, %169, !dbg !6218
  store double %170, double* %36, align 8, !dbg !6216
  call void @llvm.dbg.declare(metadata double* %37, metadata !6219, metadata !62), !dbg !6220
  %171 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %30, i32 0, i32 2, !dbg !6221
  %172 = load i32, i32* %171, align 8, !dbg !6221
  %173 = sitofp i32 %172 to double, !dbg !6222
  %174 = fmul double %173, 0x40026BB1BBB55516, !dbg !6223
  store double %174, double* %37, align 8, !dbg !6220
  call void @llvm.dbg.declare(metadata double* %38, metadata !6224, metadata !62), !dbg !6225
  %175 = load double, double* %37, align 8, !dbg !6226
  %176 = call double @fabs(double %175) #1, !dbg !6227
  %177 = fmul double 0x3CC0000000000000, %176, !dbg !6228
  store double %177, double* %38, align 8, !dbg !6225
  call void @llvm.dbg.declare(metadata double* %39, metadata !6229, metadata !62), !dbg !6230
  %178 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %34, i32 0, i32 2, !dbg !6231
  %179 = load i32, i32* %178, align 8, !dbg !6231
  %180 = sitofp i32 %179 to double, !dbg !6232
  %181 = fmul double %180, 0x40026BB1BBB55516, !dbg !6233
  store double %181, double* %39, align 8, !dbg !6230
  call void @llvm.dbg.declare(metadata double* %40, metadata !6234, metadata !62), !dbg !6235
  %182 = load double, double* %39, align 8, !dbg !6236
  %183 = call double @fabs(double %182) #1, !dbg !6237
  %184 = fmul double 0x3CC0000000000000, %183, !dbg !6238
  store double %184, double* %40, align 8, !dbg !6235
  call void @llvm.dbg.declare(metadata i32* %41, metadata !6239, metadata !62), !dbg !6240
  %185 = load double, double* %37, align 8, !dbg !6241
  %186 = load double, double* %39, align 8, !dbg !6243
  %187 = fcmp ogt double %185, %186, !dbg !6244
  br i1 %187, label %188, label %251, !dbg !6245

; <label>:188:                                    ; preds = %156
  call void @llvm.dbg.declare(metadata double* %42, metadata !6246, metadata !62), !dbg !6248
  %189 = load double, double* %39, align 8, !dbg !6249
  %190 = load double, double* %37, align 8, !dbg !6250
  %191 = fsub double %189, %190, !dbg !6251
  %192 = call double @exp(double %191) #5, !dbg !6252
  store double %192, double* %42, align 8, !dbg !6248
  call void @llvm.dbg.declare(metadata double* %43, metadata !6253, metadata !62), !dbg !6254
  %193 = load double, double* %39, align 8, !dbg !6255
  %194 = load double, double* %37, align 8, !dbg !6256
  %195 = fsub double %193, %194, !dbg !6257
  %196 = call double @fabs(double %195) #1, !dbg !6258
  %197 = fadd double %196, 1.000000e+00, !dbg !6259
  %198 = fmul double 0x3CC0000000000000, %197, !dbg !6260
  %199 = load double, double* %42, align 8, !dbg !6261
  %200 = fmul double %198, %199, !dbg !6262
  store double %200, double* %43, align 8, !dbg !6254
  call void @llvm.dbg.declare(metadata double* %44, metadata !6263, metadata !62), !dbg !6264
  %201 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %34, i32 0, i32 0, !dbg !6265
  %202 = load double, double* %201, align 8, !dbg !6265
  %203 = load double, double* %42, align 8, !dbg !6266
  %204 = fmul double %202, %203, !dbg !6267
  %205 = load double, double* %36, align 8, !dbg !6268
  %206 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %30, i32 0, i32 0, !dbg !6269
  %207 = load double, double* %206, align 8, !dbg !6269
  %208 = fmul double %205, %207, !dbg !6270
  %209 = fsub double %204, %208, !dbg !6271
  store double %209, double* %44, align 8, !dbg !6264
  call void @llvm.dbg.declare(metadata double* %45, metadata !6272, metadata !62), !dbg !6273
  %210 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %34, i32 0, i32 1, !dbg !6274
  %211 = load double, double* %210, align 8, !dbg !6274
  %212 = load double, double* %42, align 8, !dbg !6275
  %213 = fmul double %211, %212, !dbg !6276
  %214 = load double, double* %36, align 8, !dbg !6277
  %215 = call double @fabs(double %214) #1, !dbg !6278
  %216 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %30, i32 0, i32 1, !dbg !6279
  %217 = load double, double* %216, align 8, !dbg !6279
  %218 = fmul double %215, %217, !dbg !6280
  %219 = fadd double %213, %218, !dbg !6281
  %220 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %34, i32 0, i32 0, !dbg !6282
  %221 = load double, double* %220, align 8, !dbg !6282
  %222 = call double @fabs(double %221) #1, !dbg !6283
  %223 = load double, double* %43, align 8, !dbg !6284
  %224 = fmul double %222, %223, !dbg !6285
  %225 = fadd double %219, %224, !dbg !6286
  %226 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %34, i32 0, i32 0, !dbg !6287
  %227 = load double, double* %226, align 8, !dbg !6287
  %228 = load double, double* %42, align 8, !dbg !6288
  %229 = fmul double %227, %228, !dbg !6289
  %230 = call double @fabs(double %229) #1, !dbg !6290
  %231 = load double, double* %36, align 8, !dbg !6291
  %232 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %30, i32 0, i32 0, !dbg !6292
  %233 = load double, double* %232, align 8, !dbg !6292
  %234 = fmul double %231, %233, !dbg !6293
  %235 = call double @fabs(double %234) #1, !dbg !6294
  %236 = fadd double %230, %235, !dbg !6296
  %237 = fmul double 0x3CB0000000000000, %236, !dbg !6297
  %238 = fadd double %225, %237, !dbg !6298
  store double %238, double* %45, align 8, !dbg !6273
  %239 = load double, double* %18, align 8, !dbg !6299
  %240 = load double, double* %37, align 8, !dbg !6300
  %241 = fadd double %239, %240, !dbg !6301
  %242 = load double, double* %19, align 8, !dbg !6302
  %243 = load double, double* %38, align 8, !dbg !6303
  %244 = fadd double %242, %243, !dbg !6304
  %245 = load double, double* %13, align 8, !dbg !6305
  %246 = load double, double* %44, align 8, !dbg !6306
  %247 = fmul double %245, %246, !dbg !6307
  %248 = load double, double* %45, align 8, !dbg !6308
  %249 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !6309
  %250 = call i32 @gsl_sf_exp_mult_err_e(double %241, double %244, double %247, double %248, %struct.gsl_sf_result_struct* %249), !dbg !6310
  store i32 %250, i32* %41, align 4, !dbg !6311
  br label %316, !dbg !6312

; <label>:251:                                    ; preds = %156
  call void @llvm.dbg.declare(metadata double* %46, metadata !6313, metadata !62), !dbg !6315
  %252 = load double, double* %37, align 8, !dbg !6316
  %253 = load double, double* %39, align 8, !dbg !6317
  %254 = fsub double %252, %253, !dbg !6318
  %255 = call double @exp(double %254) #5, !dbg !6319
  store double %255, double* %46, align 8, !dbg !6315
  call void @llvm.dbg.declare(metadata double* %47, metadata !6320, metadata !62), !dbg !6321
  %256 = load double, double* %39, align 8, !dbg !6322
  %257 = load double, double* %37, align 8, !dbg !6323
  %258 = fsub double %256, %257, !dbg !6324
  %259 = call double @fabs(double %258) #1, !dbg !6325
  %260 = fadd double %259, 1.000000e+00, !dbg !6326
  %261 = fmul double 0x3CC0000000000000, %260, !dbg !6327
  %262 = load double, double* %46, align 8, !dbg !6328
  %263 = fmul double %261, %262, !dbg !6329
  store double %263, double* %47, align 8, !dbg !6321
  call void @llvm.dbg.declare(metadata double* %48, metadata !6330, metadata !62), !dbg !6331
  %264 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %34, i32 0, i32 0, !dbg !6332
  %265 = load double, double* %264, align 8, !dbg !6332
  %266 = load double, double* %36, align 8, !dbg !6333
  %267 = load double, double* %46, align 8, !dbg !6334
  %268 = fmul double %266, %267, !dbg !6335
  %269 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %30, i32 0, i32 0, !dbg !6336
  %270 = load double, double* %269, align 8, !dbg !6336
  %271 = fmul double %268, %270, !dbg !6337
  %272 = fsub double %265, %271, !dbg !6338
  store double %272, double* %48, align 8, !dbg !6331
  call void @llvm.dbg.declare(metadata double* %49, metadata !6339, metadata !62), !dbg !6340
  %273 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %34, i32 0, i32 1, !dbg !6341
  %274 = load double, double* %273, align 8, !dbg !6341
  %275 = load double, double* %36, align 8, !dbg !6342
  %276 = load double, double* %46, align 8, !dbg !6343
  %277 = fmul double %275, %276, !dbg !6344
  %278 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %30, i32 0, i32 1, !dbg !6345
  %279 = load double, double* %278, align 8, !dbg !6345
  %280 = fmul double %277, %279, !dbg !6346
  %281 = call double @fabs(double %280) #1, !dbg !6347
  %282 = fadd double %274, %281, !dbg !6348
  %283 = load double, double* %36, align 8, !dbg !6349
  %284 = load double, double* %47, align 8, !dbg !6350
  %285 = fmul double %283, %284, !dbg !6351
  %286 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %30, i32 0, i32 0, !dbg !6352
  %287 = load double, double* %286, align 8, !dbg !6352
  %288 = fmul double %285, %287, !dbg !6353
  %289 = call double @fabs(double %288) #1, !dbg !6354
  %290 = fadd double %282, %289, !dbg !6355
  %291 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %34, i32 0, i32 0, !dbg !6356
  %292 = load double, double* %291, align 8, !dbg !6356
  %293 = call double @fabs(double %292) #1, !dbg !6357
  %294 = load double, double* %36, align 8, !dbg !6358
  %295 = load double, double* %46, align 8, !dbg !6359
  %296 = fmul double %294, %295, !dbg !6360
  %297 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %30, i32 0, i32 0, !dbg !6361
  %298 = load double, double* %297, align 8, !dbg !6361
  %299 = fmul double %296, %298, !dbg !6362
  %300 = call double @fabs(double %299) #1, !dbg !6363
  %301 = fadd double %293, %300, !dbg !6365
  %302 = fmul double 0x3CB0000000000000, %301, !dbg !6366
  %303 = fadd double %290, %302, !dbg !6367
  store double %303, double* %49, align 8, !dbg !6340
  %304 = load double, double* %18, align 8, !dbg !6368
  %305 = load double, double* %39, align 8, !dbg !6369
  %306 = fadd double %304, %305, !dbg !6370
  %307 = load double, double* %19, align 8, !dbg !6371
  %308 = load double, double* %40, align 8, !dbg !6372
  %309 = fadd double %307, %308, !dbg !6373
  %310 = load double, double* %13, align 8, !dbg !6374
  %311 = load double, double* %48, align 8, !dbg !6375
  %312 = fmul double %310, %311, !dbg !6376
  %313 = load double, double* %49, align 8, !dbg !6377
  %314 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !6378
  %315 = call i32 @gsl_sf_exp_mult_err_e(double %306, double %309, double %312, double %313, %struct.gsl_sf_result_struct* %314), !dbg !6379
  store i32 %315, i32* %41, align 4, !dbg !6380
  br label %316

; <label>:316:                                    ; preds = %251, %188
  %317 = load i32, i32* %41, align 4, !dbg !6381
  %318 = icmp ne i32 %317, 0, !dbg !6381
  br i1 %318, label %319, label %321, !dbg !6381

; <label>:319:                                    ; preds = %316
  %320 = load i32, i32* %41, align 4, !dbg !6382
  br label %350, !dbg !6382

; <label>:321:                                    ; preds = %316
  %322 = load i32, i32* %35, align 4, !dbg !6383
  %323 = icmp ne i32 %322, 0, !dbg !6383
  br i1 %323, label %324, label %326, !dbg !6383

; <label>:324:                                    ; preds = %321
  %325 = load i32, i32* %35, align 4, !dbg !6384
  br label %348, !dbg !6384

; <label>:326:                                    ; preds = %321
  %327 = load i32, i32* %33, align 4, !dbg !6385
  %328 = icmp ne i32 %327, 0, !dbg !6385
  br i1 %328, label %329, label %331, !dbg !6385

; <label>:329:                                    ; preds = %326
  %330 = load i32, i32* %33, align 4, !dbg !6386
  br label %346, !dbg !6386

; <label>:331:                                    ; preds = %326
  %332 = load i32, i32* %26, align 4, !dbg !6387
  %333 = icmp ne i32 %332, 0, !dbg !6387
  br i1 %333, label %334, label %336, !dbg !6387

; <label>:334:                                    ; preds = %331
  %335 = load i32, i32* %26, align 4, !dbg !6388
  br label %344, !dbg !6388

; <label>:336:                                    ; preds = %331
  %337 = load i32, i32* %16, align 4, !dbg !6390
  %338 = icmp ne i32 %337, 0, !dbg !6390
  br i1 %338, label %339, label %341, !dbg !6390

; <label>:339:                                    ; preds = %336
  %340 = load i32, i32* %16, align 4, !dbg !6392
  br label %342, !dbg !6392

; <label>:341:                                    ; preds = %336
  br label %342, !dbg !6394

; <label>:342:                                    ; preds = %341, %339
  %343 = phi i32 [ %340, %339 ], [ 0, %341 ], !dbg !6396
  br label %344, !dbg !6396

; <label>:344:                                    ; preds = %342, %334
  %345 = phi i32 [ %335, %334 ], [ %343, %342 ], !dbg !6398
  br label %346, !dbg !6398

; <label>:346:                                    ; preds = %344, %329
  %347 = phi i32 [ %330, %329 ], [ %345, %344 ], !dbg !6400
  br label %348, !dbg !6400

; <label>:348:                                    ; preds = %346, %324
  %349 = phi i32 [ %325, %324 ], [ %347, %346 ], !dbg !6402
  br label %350, !dbg !6402

; <label>:350:                                    ; preds = %348, %319
  %351 = phi i32 [ %320, %319 ], [ %349, %348 ], !dbg !6404
  ret i32 %351, !dbg !6406
}

declare i32 @gsl_sf_hyperg_U_e10_e(double, double, double, %struct.gsl_sf_result_e10_struct*) #2

declare i32 @gsl_sf_exp_mult_err_e10_e(double, double, double, double, %struct.gsl_sf_result_e10_struct*) #2

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
!1 = !DIFile(filename: "hyperg_1F1.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!47 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_int_e", scope: !1, file: !1, line: 1790, type: !48, isLocal: false, isDefinition: true, scopeLine: 1791, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!48 = !DISubroutineType(types: !49)
!49 = !{!42, !50, !50, !51, !53}
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !55, line: 41, baseType: !56)
!55 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !55, line: 37, size: 128, align: 64, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !56, file: !55, line: 38, baseType: !52, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !56, file: !55, line: 39, baseType: !52, size: 64, align: 64, offset: 64)
!60 = !{}
!61 = !DILocalVariable(name: "a", arg: 1, scope: !47, file: !1, line: 1790, type: !50)
!62 = !DIExpression()
!63 = !DILocation(line: 1790, column: 35, scope: !47)
!64 = !DILocalVariable(name: "b", arg: 2, scope: !47, file: !1, line: 1790, type: !50)
!65 = !DILocation(line: 1790, column: 48, scope: !47)
!66 = !DILocalVariable(name: "x", arg: 3, scope: !47, file: !1, line: 1790, type: !51)
!67 = !DILocation(line: 1790, column: 64, scope: !47)
!68 = !DILocalVariable(name: "result", arg: 4, scope: !47, file: !1, line: 1790, type: !53)
!69 = !DILocation(line: 1790, column: 83, scope: !47)
!70 = !DILocation(line: 1794, column: 6, scope: !71)
!71 = distinct !DILexicalBlock(scope: !47, file: !1, line: 1794, column: 6)
!72 = !DILocation(line: 1794, column: 8, scope: !71)
!73 = !DILocation(line: 1794, column: 6, scope: !47)
!74 = !DILocation(line: 1795, column: 5, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 1794, column: 16)
!76 = !DILocation(line: 1795, column: 13, scope: !75)
!77 = !DILocation(line: 1795, column: 17, scope: !75)
!78 = !DILocation(line: 1796, column: 5, scope: !75)
!79 = !DILocation(line: 1796, column: 13, scope: !75)
!80 = !DILocation(line: 1796, column: 17, scope: !75)
!81 = !DILocation(line: 1797, column: 5, scope: !75)
!82 = !DILocation(line: 1799, column: 11, scope: !83)
!83 = distinct !DILexicalBlock(scope: !71, file: !1, line: 1799, column: 11)
!84 = !DILocation(line: 1799, column: 16, scope: !83)
!85 = !DILocation(line: 1799, column: 13, scope: !83)
!86 = !DILocation(line: 1799, column: 11, scope: !71)
!87 = !DILocation(line: 1800, column: 25, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 1799, column: 19)
!89 = !DILocation(line: 1800, column: 28, scope: !88)
!90 = !DILocation(line: 1800, column: 12, scope: !88)
!91 = !DILocation(line: 1800, column: 5, scope: !88)
!92 = !DILocation(line: 1802, column: 11, scope: !93)
!93 = distinct !DILexicalBlock(scope: !83, file: !1, line: 1802, column: 11)
!94 = !DILocation(line: 1802, column: 13, scope: !93)
!95 = !DILocation(line: 1802, column: 11, scope: !83)
!96 = !DILocation(line: 1803, column: 5, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 1802, column: 19)
!98 = distinct !{!98, !96}
!99 = !DILocation(line: 1803, column: 5, scope: !100)
!100 = !DILexicalBlockFile(scope: !101, file: !1, discriminator: 1)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 1803, column: 5)
!102 = distinct !{!102, !103}
!103 = !DILocation(line: 1803, column: 5, scope: !101)
!104 = !DILocation(line: 1803, column: 5, scope: !105)
!105 = !DILexicalBlockFile(scope: !106, file: !1, discriminator: 2)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 1803, column: 5)
!107 = !DILocation(line: 1803, column: 5, scope: !108)
!108 = !DILexicalBlockFile(scope: !101, file: !1, discriminator: 3)
!109 = !DILocation(line: 1804, column: 3, scope: !97)
!110 = !DILocation(line: 1805, column: 11, scope: !111)
!111 = distinct !DILexicalBlock(scope: !93, file: !1, line: 1805, column: 11)
!112 = !DILocation(line: 1805, column: 13, scope: !111)
!113 = !DILocation(line: 1805, column: 11, scope: !93)
!114 = !DILocation(line: 1806, column: 5, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 1805, column: 19)
!116 = !DILocation(line: 1806, column: 13, scope: !115)
!117 = !DILocation(line: 1806, column: 17, scope: !115)
!118 = !DILocation(line: 1807, column: 5, scope: !115)
!119 = !DILocation(line: 1807, column: 13, scope: !115)
!120 = !DILocation(line: 1807, column: 17, scope: !115)
!121 = !DILocation(line: 1808, column: 5, scope: !115)
!122 = !DILocation(line: 1810, column: 11, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !1, line: 1810, column: 11)
!124 = !DILocation(line: 1810, column: 13, scope: !123)
!125 = !DILocation(line: 1810, column: 17, scope: !123)
!126 = !DILocation(line: 1810, column: 21, scope: !127)
!127 = !DILexicalBlockFile(scope: !123, file: !1, discriminator: 1)
!128 = !DILocation(line: 1810, column: 25, scope: !127)
!129 = !DILocation(line: 1810, column: 23, scope: !127)
!130 = !DILocation(line: 1810, column: 27, scope: !127)
!131 = !DILocation(line: 1810, column: 30, scope: !132)
!132 = !DILexicalBlockFile(scope: !123, file: !1, discriminator: 2)
!133 = !DILocation(line: 1810, column: 32, scope: !132)
!134 = !DILocation(line: 1810, column: 11, scope: !132)
!135 = !DILocation(line: 1812, column: 5, scope: !136)
!136 = distinct !DILexicalBlock(scope: !123, file: !1, line: 1810, column: 38)
!137 = distinct !{!137, !135}
!138 = !DILocation(line: 1812, column: 5, scope: !139)
!139 = !DILexicalBlockFile(scope: !140, file: !1, discriminator: 1)
!140 = distinct !DILexicalBlock(scope: !136, file: !1, line: 1812, column: 5)
!141 = distinct !{!141, !142}
!142 = !DILocation(line: 1812, column: 5, scope: !140)
!143 = !DILocation(line: 1812, column: 5, scope: !144)
!144 = !DILexicalBlockFile(scope: !145, file: !1, discriminator: 2)
!145 = distinct !DILexicalBlock(scope: !140, file: !1, line: 1812, column: 5)
!146 = !DILocation(line: 1812, column: 5, scope: !147)
!147 = !DILexicalBlockFile(scope: !140, file: !1, discriminator: 3)
!148 = !DILocation(line: 1813, column: 3, scope: !136)
!149 = !DILocation(line: 1814, column: 11, scope: !150)
!150 = distinct !DILexicalBlock(scope: !123, file: !1, line: 1814, column: 11)
!151 = !DILocation(line: 1814, column: 13, scope: !150)
!152 = !DILocation(line: 1814, column: 22, scope: !150)
!153 = !DILocation(line: 1814, column: 46, scope: !154)
!154 = !DILexicalBlockFile(scope: !150, file: !1, discriminator: 1)
!155 = !DILocation(line: 1814, column: 48, scope: !154)
!156 = !DILocation(line: 1814, column: 47, scope: !154)
!157 = !DILocation(line: 1814, column: 41, scope: !154)
!158 = !DILocation(line: 1814, column: 25, scope: !159)
!159 = !DILexicalBlockFile(scope: !154, file: !1, discriminator: 2)
!160 = !DILocation(line: 1814, column: 75, scope: !154)
!161 = !DILocation(line: 1814, column: 74, scope: !154)
!162 = !DILocation(line: 1814, column: 73, scope: !154)
!163 = !DILocation(line: 1814, column: 68, scope: !164)
!164 = !DILexicalBlockFile(scope: !154, file: !1, discriminator: 3)
!165 = !DILocation(line: 1814, column: 52, scope: !166)
!166 = !DILexicalBlockFile(scope: !154, file: !1, discriminator: 4)
!167 = !DILocation(line: 1814, column: 51, scope: !154)
!168 = !DILocation(line: 1814, column: 87, scope: !154)
!169 = !DILocation(line: 1814, column: 85, scope: !154)
!170 = !DILocation(line: 1814, column: 79, scope: !154)
!171 = !DILocation(line: 1814, column: 11, scope: !154)
!172 = !DILocation(line: 1816, column: 34, scope: !173)
!173 = distinct !DILexicalBlock(scope: !150, file: !1, line: 1814, column: 90)
!174 = !DILocation(line: 1816, column: 37, scope: !173)
!175 = !DILocation(line: 1816, column: 40, scope: !173)
!176 = !DILocation(line: 1816, column: 43, scope: !173)
!177 = !DILocation(line: 1816, column: 12, scope: !173)
!178 = !DILocation(line: 1816, column: 5, scope: !173)
!179 = !DILocation(line: 1818, column: 11, scope: !180)
!180 = distinct !DILexicalBlock(scope: !150, file: !1, line: 1818, column: 11)
!181 = !DILocation(line: 1818, column: 13, scope: !180)
!182 = !DILocation(line: 1818, column: 22, scope: !180)
!183 = !DILocation(line: 1818, column: 46, scope: !184)
!184 = !DILexicalBlockFile(scope: !180, file: !1, discriminator: 1)
!185 = !DILocation(line: 1818, column: 41, scope: !184)
!186 = !DILocation(line: 1818, column: 25, scope: !187)
!187 = !DILexicalBlockFile(scope: !184, file: !1, discriminator: 2)
!188 = !DILocation(line: 1818, column: 73, scope: !184)
!189 = !DILocation(line: 1818, column: 72, scope: !184)
!190 = !DILocation(line: 1818, column: 75, scope: !184)
!191 = !DILocation(line: 1818, column: 74, scope: !184)
!192 = !DILocation(line: 1818, column: 71, scope: !184)
!193 = !DILocation(line: 1818, column: 66, scope: !194)
!194 = !DILexicalBlockFile(scope: !184, file: !1, discriminator: 3)
!195 = !DILocation(line: 1818, column: 50, scope: !196)
!196 = !DILexicalBlockFile(scope: !184, file: !1, discriminator: 4)
!197 = !DILocation(line: 1818, column: 49, scope: !184)
!198 = !DILocation(line: 1818, column: 92, scope: !184)
!199 = !DILocation(line: 1818, column: 87, scope: !200)
!200 = !DILexicalBlockFile(scope: !184, file: !1, discriminator: 5)
!201 = !DILocation(line: 1818, column: 85, scope: !184)
!202 = !DILocation(line: 1818, column: 79, scope: !184)
!203 = !DILocation(line: 1818, column: 11, scope: !184)
!204 = !DILocation(line: 1820, column: 34, scope: !205)
!205 = distinct !DILexicalBlock(scope: !180, file: !1, line: 1818, column: 96)
!206 = !DILocation(line: 1820, column: 37, scope: !205)
!207 = !DILocation(line: 1820, column: 40, scope: !205)
!208 = !DILocation(line: 1820, column: 43, scope: !205)
!209 = !DILocation(line: 1820, column: 12, scope: !205)
!210 = !DILocation(line: 1820, column: 5, scope: !205)
!211 = !DILocation(line: 1822, column: 11, scope: !212)
!212 = distinct !DILexicalBlock(scope: !180, file: !1, line: 1822, column: 11)
!213 = !DILocation(line: 1822, column: 13, scope: !212)
!214 = !DILocation(line: 1822, column: 17, scope: !212)
!215 = !DILocation(line: 1822, column: 20, scope: !216)
!216 = !DILexicalBlockFile(scope: !212, file: !1, discriminator: 1)
!217 = !DILocation(line: 1822, column: 22, scope: !216)
!218 = !DILocation(line: 1822, column: 11, scope: !216)
!219 = !DILocation(line: 1823, column: 33, scope: !220)
!220 = distinct !DILexicalBlock(scope: !212, file: !1, line: 1822, column: 27)
!221 = !DILocation(line: 1823, column: 36, scope: !220)
!222 = !DILocation(line: 1823, column: 39, scope: !220)
!223 = !DILocation(line: 1823, column: 42, scope: !220)
!224 = !DILocation(line: 1823, column: 12, scope: !220)
!225 = !DILocation(line: 1823, column: 5, scope: !220)
!226 = !DILocation(line: 1825, column: 11, scope: !227)
!227 = distinct !DILexicalBlock(scope: !212, file: !1, line: 1825, column: 11)
!228 = !DILocation(line: 1825, column: 13, scope: !227)
!229 = !DILocation(line: 1825, column: 17, scope: !227)
!230 = !DILocation(line: 1825, column: 20, scope: !231)
!231 = !DILexicalBlockFile(scope: !227, file: !1, discriminator: 1)
!232 = !DILocation(line: 1825, column: 22, scope: !231)
!233 = !DILocation(line: 1825, column: 11, scope: !231)
!234 = !DILocalVariable(name: "Kummer_1F1", scope: !235, file: !1, line: 1829, type: !54)
!235 = distinct !DILexicalBlock(scope: !227, file: !1, line: 1825, column: 27)
!236 = !DILocation(line: 1829, column: 19, scope: !235)
!237 = !DILocalVariable(name: "stat_K", scope: !235, file: !1, line: 1830, type: !42)
!238 = !DILocation(line: 1830, column: 9, scope: !235)
!239 = !DILocation(line: 1830, column: 39, scope: !235)
!240 = !DILocation(line: 1830, column: 41, scope: !235)
!241 = !DILocation(line: 1830, column: 40, scope: !235)
!242 = !DILocation(line: 1830, column: 44, scope: !235)
!243 = !DILocation(line: 1830, column: 48, scope: !235)
!244 = !DILocation(line: 1830, column: 47, scope: !235)
!245 = !DILocation(line: 1830, column: 18, scope: !235)
!246 = !DILocalVariable(name: "stat_e", scope: !235, file: !1, line: 1831, type: !42)
!247 = !DILocation(line: 1831, column: 9, scope: !235)
!248 = !DILocation(line: 1831, column: 40, scope: !235)
!249 = !DILocation(line: 1831, column: 66, scope: !235)
!250 = !DILocation(line: 1831, column: 61, scope: !235)
!251 = !DILocation(line: 1831, column: 59, scope: !235)
!252 = !DILocation(line: 1832, column: 50, scope: !235)
!253 = !DILocation(line: 1832, column: 66, scope: !235)
!254 = !DILocation(line: 1833, column: 39, scope: !235)
!255 = !DILocation(line: 1831, column: 18, scope: !256)
!256 = !DILexicalBlockFile(scope: !235, file: !1, discriminator: 1)
!257 = !DILocation(line: 1834, column: 12, scope: !235)
!258 = !DILocation(line: 1834, column: 12, scope: !256)
!259 = !DILocation(line: 1834, column: 12, scope: !260)
!260 = !DILexicalBlockFile(scope: !235, file: !1, discriminator: 2)
!261 = !DILocation(line: 1834, column: 12, scope: !262)
!262 = !DILexicalBlockFile(scope: !235, file: !1, discriminator: 3)
!263 = !DILocation(line: 1834, column: 12, scope: !264)
!264 = !DILexicalBlockFile(scope: !235, file: !1, discriminator: 4)
!265 = !DILocation(line: 1834, column: 12, scope: !266)
!266 = !DILexicalBlockFile(scope: !235, file: !1, discriminator: 5)
!267 = !DILocation(line: 1834, column: 12, scope: !268)
!268 = !DILexicalBlockFile(scope: !235, file: !1, discriminator: 6)
!269 = !DILocation(line: 1834, column: 5, scope: !268)
!270 = !DILocation(line: 1838, column: 33, scope: !271)
!271 = distinct !DILexicalBlock(scope: !227, file: !1, line: 1836, column: 8)
!272 = !DILocation(line: 1838, column: 36, scope: !271)
!273 = !DILocation(line: 1838, column: 39, scope: !271)
!274 = !DILocation(line: 1838, column: 42, scope: !271)
!275 = !DILocation(line: 1838, column: 12, scope: !271)
!276 = !DILocation(line: 1838, column: 5, scope: !271)
!277 = !DILocation(line: 1840, column: 1, scope: !47)
!278 = distinct !DISubprogram(name: "hyperg_1F1_asymp_posx", scope: !1, file: !1, line: 85, type: !279, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!279 = !DISubroutineType(types: !280)
!280 = !{!42, !51, !51, !51, !53}
!281 = !DILocalVariable(name: "a", arg: 1, scope: !278, file: !1, line: 85, type: !51)
!282 = !DILocation(line: 85, column: 36, scope: !278)
!283 = !DILocalVariable(name: "b", arg: 2, scope: !278, file: !1, line: 85, type: !51)
!284 = !DILocation(line: 85, column: 52, scope: !278)
!285 = !DILocalVariable(name: "x", arg: 3, scope: !278, file: !1, line: 85, type: !51)
!286 = !DILocation(line: 85, column: 68, scope: !278)
!287 = !DILocalVariable(name: "result", arg: 4, scope: !278, file: !1, line: 86, type: !53)
!288 = !DILocation(line: 86, column: 39, scope: !278)
!289 = !DILocalVariable(name: "lg_b", scope: !278, file: !1, line: 88, type: !54)
!290 = !DILocation(line: 88, column: 17, scope: !278)
!291 = !DILocalVariable(name: "lg_a", scope: !278, file: !1, line: 89, type: !54)
!292 = !DILocation(line: 89, column: 17, scope: !278)
!293 = !DILocalVariable(name: "sgn_b", scope: !278, file: !1, line: 90, type: !52)
!294 = !DILocation(line: 90, column: 10, scope: !278)
!295 = !DILocalVariable(name: "sgn_a", scope: !278, file: !1, line: 91, type: !52)
!296 = !DILocation(line: 91, column: 10, scope: !278)
!297 = !DILocalVariable(name: "stat_b", scope: !278, file: !1, line: 93, type: !42)
!298 = !DILocation(line: 93, column: 7, scope: !278)
!299 = !DILocation(line: 93, column: 37, scope: !278)
!300 = !DILocation(line: 93, column: 16, scope: !278)
!301 = !DILocalVariable(name: "stat_a", scope: !278, file: !1, line: 94, type: !42)
!302 = !DILocation(line: 94, column: 7, scope: !278)
!303 = !DILocation(line: 94, column: 37, scope: !278)
!304 = !DILocation(line: 94, column: 16, scope: !278)
!305 = !DILocation(line: 96, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !278, file: !1, line: 96, column: 6)
!307 = !DILocation(line: 96, column: 13, scope: !306)
!308 = !DILocation(line: 96, column: 28, scope: !306)
!309 = !DILocation(line: 96, column: 31, scope: !310)
!310 = !DILexicalBlockFile(scope: !306, file: !1, discriminator: 1)
!311 = !DILocation(line: 96, column: 38, scope: !310)
!312 = !DILocation(line: 96, column: 6, scope: !310)
!313 = !DILocalVariable(name: "F", scope: !314, file: !1, line: 97, type: !54)
!314 = distinct !DILexicalBlock(scope: !306, file: !1, line: 96, column: 54)
!315 = !DILocation(line: 97, column: 19, scope: !314)
!316 = !DILocalVariable(name: "stat_F", scope: !314, file: !1, line: 98, type: !42)
!317 = !DILocation(line: 98, column: 9, scope: !314)
!318 = !DILocation(line: 98, column: 45, scope: !314)
!319 = !DILocation(line: 98, column: 47, scope: !314)
!320 = !DILocation(line: 98, column: 46, scope: !314)
!321 = !DILocation(line: 98, column: 54, scope: !314)
!322 = !DILocation(line: 98, column: 53, scope: !314)
!323 = !DILocation(line: 98, column: 61, scope: !314)
!324 = !DILocation(line: 98, column: 60, scope: !314)
!325 = !DILocation(line: 98, column: 18, scope: !314)
!326 = !DILocation(line: 99, column: 8, scope: !327)
!327 = distinct !DILexicalBlock(scope: !314, file: !1, line: 99, column: 8)
!328 = !DILocation(line: 99, column: 15, scope: !327)
!329 = !DILocation(line: 99, column: 30, scope: !327)
!330 = !DILocation(line: 99, column: 35, scope: !331)
!331 = !DILexicalBlockFile(scope: !327, file: !1, discriminator: 1)
!332 = !DILocation(line: 99, column: 39, scope: !331)
!333 = !DILocation(line: 99, column: 8, scope: !331)
!334 = !DILocalVariable(name: "lnx", scope: !335, file: !1, line: 100, type: !52)
!335 = distinct !DILexicalBlock(scope: !327, file: !1, line: 99, column: 45)
!336 = !DILocation(line: 100, column: 14, scope: !335)
!337 = !DILocation(line: 100, column: 24, scope: !335)
!338 = !DILocation(line: 100, column: 20, scope: !335)
!339 = !DILocalVariable(name: "ln_term_val", scope: !335, file: !1, line: 101, type: !52)
!340 = !DILocation(line: 101, column: 14, scope: !335)
!341 = !DILocation(line: 101, column: 29, scope: !335)
!342 = !DILocation(line: 101, column: 31, scope: !335)
!343 = !DILocation(line: 101, column: 30, scope: !335)
!344 = !DILocation(line: 101, column: 34, scope: !335)
!345 = !DILocation(line: 101, column: 33, scope: !335)
!346 = !DILocalVariable(name: "ln_term_err", scope: !335, file: !1, line: 102, type: !52)
!347 = !DILocation(line: 102, column: 14, scope: !335)
!348 = !DILocation(line: 102, column: 58, scope: !335)
!349 = !DILocation(line: 102, column: 53, scope: !335)
!350 = !DILocation(line: 102, column: 68, scope: !335)
!351 = !DILocation(line: 102, column: 63, scope: !352)
!352 = !DILexicalBlockFile(scope: !335, file: !1, discriminator: 1)
!353 = !DILocation(line: 102, column: 61, scope: !335)
!354 = !DILocation(line: 102, column: 50, scope: !335)
!355 = !DILocation(line: 102, column: 79, scope: !335)
!356 = !DILocation(line: 102, column: 74, scope: !357)
!357 = !DILexicalBlockFile(scope: !335, file: !1, discriminator: 2)
!358 = !DILocation(line: 102, column: 72, scope: !335)
!359 = !DILocation(line: 103, column: 57, scope: !335)
!360 = !DILocation(line: 103, column: 59, scope: !335)
!361 = !DILocation(line: 103, column: 58, scope: !335)
!362 = !DILocation(line: 103, column: 52, scope: !335)
!363 = !DILocation(line: 103, column: 50, scope: !335)
!364 = !DILocation(line: 103, column: 26, scope: !335)
!365 = !DILocalVariable(name: "ln_pre_val", scope: !335, file: !1, line: 104, type: !52)
!366 = !DILocation(line: 104, column: 14, scope: !335)
!367 = !DILocation(line: 104, column: 32, scope: !335)
!368 = !DILocation(line: 104, column: 43, scope: !335)
!369 = !DILocation(line: 104, column: 36, scope: !335)
!370 = !DILocation(line: 104, column: 49, scope: !335)
!371 = !DILocation(line: 104, column: 47, scope: !335)
!372 = !DILocation(line: 104, column: 63, scope: !335)
!373 = !DILocation(line: 104, column: 61, scope: !335)
!374 = !DILocalVariable(name: "ln_pre_err", scope: !335, file: !1, line: 105, type: !52)
!375 = !DILocation(line: 105, column: 14, scope: !335)
!376 = !DILocation(line: 105, column: 32, scope: !335)
!377 = !DILocation(line: 105, column: 43, scope: !335)
!378 = !DILocation(line: 105, column: 36, scope: !335)
!379 = !DILocation(line: 105, column: 49, scope: !335)
!380 = !DILocation(line: 105, column: 47, scope: !335)
!381 = !DILocation(line: 105, column: 92, scope: !335)
!382 = !DILocation(line: 105, column: 87, scope: !335)
!383 = !DILocation(line: 105, column: 85, scope: !335)
!384 = !DILocation(line: 105, column: 61, scope: !335)
!385 = !DILocalVariable(name: "stat_e", scope: !335, file: !1, line: 106, type: !42)
!386 = !DILocation(line: 106, column: 11, scope: !335)
!387 = !DILocation(line: 106, column: 42, scope: !335)
!388 = !DILocation(line: 106, column: 54, scope: !335)
!389 = !DILocation(line: 107, column: 45, scope: !335)
!390 = !DILocation(line: 107, column: 51, scope: !335)
!391 = !DILocation(line: 107, column: 50, scope: !335)
!392 = !DILocation(line: 107, column: 59, scope: !335)
!393 = !DILocation(line: 107, column: 56, scope: !335)
!394 = !DILocation(line: 107, column: 66, scope: !335)
!395 = !DILocation(line: 108, column: 45, scope: !335)
!396 = !DILocation(line: 106, column: 20, scope: !335)
!397 = !DILocation(line: 109, column: 14, scope: !335)
!398 = !DILocation(line: 109, column: 14, scope: !352)
!399 = !DILocation(line: 109, column: 14, scope: !357)
!400 = !DILocation(line: 109, column: 14, scope: !401)
!401 = !DILexicalBlockFile(scope: !335, file: !1, discriminator: 3)
!402 = !DILocation(line: 109, column: 14, scope: !403)
!403 = !DILexicalBlockFile(scope: !335, file: !1, discriminator: 4)
!404 = !DILocation(line: 109, column: 14, scope: !405)
!405 = !DILexicalBlockFile(scope: !335, file: !1, discriminator: 5)
!406 = !DILocation(line: 109, column: 14, scope: !407)
!407 = !DILexicalBlockFile(scope: !335, file: !1, discriminator: 6)
!408 = !DILocation(line: 109, column: 7, scope: !407)
!409 = !DILocation(line: 112, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !327, file: !1, line: 111, column: 10)
!411 = !DILocation(line: 112, column: 15, scope: !410)
!412 = !DILocation(line: 112, column: 19, scope: !410)
!413 = !DILocation(line: 113, column: 7, scope: !410)
!414 = !DILocation(line: 113, column: 15, scope: !410)
!415 = !DILocation(line: 113, column: 19, scope: !410)
!416 = !DILocation(line: 114, column: 14, scope: !410)
!417 = !DILocation(line: 114, column: 7, scope: !410)
!418 = !DILocation(line: 118, column: 5, scope: !419)
!419 = distinct !DILexicalBlock(scope: !306, file: !1, line: 117, column: 8)
!420 = distinct !{!420, !418}
!421 = !DILocation(line: 118, column: 5, scope: !422)
!422 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 1)
!423 = distinct !DILexicalBlock(scope: !419, file: !1, line: 118, column: 5)
!424 = distinct !{!424, !425}
!425 = !DILocation(line: 118, column: 5, scope: !423)
!426 = !DILocation(line: 118, column: 5, scope: !427)
!427 = !DILexicalBlockFile(scope: !428, file: !1, discriminator: 2)
!428 = distinct !DILexicalBlock(scope: !423, file: !1, line: 118, column: 5)
!429 = !DILocation(line: 118, column: 5, scope: !430)
!430 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 3)
!431 = !DILocation(line: 120, column: 1, scope: !278)
!432 = distinct !DISubprogram(name: "hyperg_1F1_asymp_negx", scope: !1, file: !1, line: 44, type: !279, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!433 = !DILocalVariable(name: "a", arg: 1, scope: !432, file: !1, line: 44, type: !51)
!434 = !DILocation(line: 44, column: 36, scope: !432)
!435 = !DILocalVariable(name: "b", arg: 2, scope: !432, file: !1, line: 44, type: !51)
!436 = !DILocation(line: 44, column: 52, scope: !432)
!437 = !DILocalVariable(name: "x", arg: 3, scope: !432, file: !1, line: 44, type: !51)
!438 = !DILocation(line: 44, column: 68, scope: !432)
!439 = !DILocalVariable(name: "result", arg: 4, scope: !432, file: !1, line: 45, type: !53)
!440 = !DILocation(line: 45, column: 38, scope: !432)
!441 = !DILocalVariable(name: "lg_b", scope: !432, file: !1, line: 47, type: !54)
!442 = !DILocation(line: 47, column: 17, scope: !432)
!443 = !DILocalVariable(name: "lg_bma", scope: !432, file: !1, line: 48, type: !54)
!444 = !DILocation(line: 48, column: 17, scope: !432)
!445 = !DILocalVariable(name: "sgn_b", scope: !432, file: !1, line: 49, type: !52)
!446 = !DILocation(line: 49, column: 10, scope: !432)
!447 = !DILocalVariable(name: "sgn_bma", scope: !432, file: !1, line: 50, type: !52)
!448 = !DILocation(line: 50, column: 10, scope: !432)
!449 = !DILocalVariable(name: "stat_b", scope: !432, file: !1, line: 52, type: !42)
!450 = !DILocation(line: 52, column: 7, scope: !432)
!451 = !DILocation(line: 52, column: 39, scope: !432)
!452 = !DILocation(line: 52, column: 18, scope: !432)
!453 = !DILocalVariable(name: "stat_bma", scope: !432, file: !1, line: 53, type: !42)
!454 = !DILocation(line: 53, column: 7, scope: !432)
!455 = !DILocation(line: 53, column: 39, scope: !432)
!456 = !DILocation(line: 53, column: 41, scope: !432)
!457 = !DILocation(line: 53, column: 40, scope: !432)
!458 = !DILocation(line: 53, column: 18, scope: !432)
!459 = !DILocation(line: 55, column: 6, scope: !460)
!460 = distinct !DILexicalBlock(scope: !432, file: !1, line: 55, column: 6)
!461 = !DILocation(line: 55, column: 13, scope: !460)
!462 = !DILocation(line: 55, column: 28, scope: !460)
!463 = !DILocation(line: 55, column: 31, scope: !464)
!464 = !DILexicalBlockFile(scope: !460, file: !1, discriminator: 1)
!465 = !DILocation(line: 55, column: 40, scope: !464)
!466 = !DILocation(line: 55, column: 6, scope: !464)
!467 = !DILocalVariable(name: "F", scope: !468, file: !1, line: 56, type: !54)
!468 = distinct !DILexicalBlock(scope: !460, file: !1, line: 55, column: 56)
!469 = !DILocation(line: 56, column: 19, scope: !468)
!470 = !DILocalVariable(name: "stat_F", scope: !468, file: !1, line: 57, type: !42)
!471 = !DILocation(line: 57, column: 9, scope: !468)
!472 = !DILocation(line: 57, column: 45, scope: !468)
!473 = !DILocation(line: 57, column: 52, scope: !468)
!474 = !DILocation(line: 57, column: 51, scope: !468)
!475 = !DILocation(line: 57, column: 54, scope: !468)
!476 = !DILocation(line: 57, column: 53, scope: !468)
!477 = !DILocation(line: 57, column: 62, scope: !468)
!478 = !DILocation(line: 57, column: 61, scope: !468)
!479 = !DILocation(line: 57, column: 18, scope: !468)
!480 = !DILocation(line: 58, column: 10, scope: !481)
!481 = distinct !DILexicalBlock(scope: !468, file: !1, line: 58, column: 8)
!482 = !DILocation(line: 58, column: 14, scope: !481)
!483 = !DILocation(line: 58, column: 8, scope: !468)
!484 = !DILocalVariable(name: "ln_term_val", scope: !485, file: !1, line: 59, type: !52)
!485 = distinct !DILexicalBlock(scope: !481, file: !1, line: 58, column: 20)
!486 = !DILocation(line: 59, column: 14, scope: !485)
!487 = !DILocation(line: 59, column: 28, scope: !485)
!488 = !DILocation(line: 59, column: 35, scope: !485)
!489 = !DILocation(line: 59, column: 34, scope: !485)
!490 = !DILocation(line: 59, column: 30, scope: !485)
!491 = !DILocation(line: 59, column: 29, scope: !485)
!492 = !DILocalVariable(name: "ln_term_err", scope: !485, file: !1, line: 60, type: !52)
!493 = !DILocation(line: 60, column: 14, scope: !485)
!494 = !DILocation(line: 60, column: 58, scope: !485)
!495 = !DILocation(line: 60, column: 53, scope: !485)
!496 = !DILocation(line: 60, column: 68, scope: !485)
!497 = !DILocation(line: 60, column: 63, scope: !498)
!498 = !DILexicalBlockFile(scope: !485, file: !1, discriminator: 1)
!499 = !DILocation(line: 60, column: 61, scope: !485)
!500 = !DILocation(line: 60, column: 50, scope: !485)
!501 = !DILocalVariable(name: "ln_pre_val", scope: !485, file: !1, line: 61, type: !52)
!502 = !DILocation(line: 61, column: 14, scope: !485)
!503 = !DILocation(line: 61, column: 32, scope: !485)
!504 = !DILocation(line: 61, column: 45, scope: !485)
!505 = !DILocation(line: 61, column: 36, scope: !485)
!506 = !DILocation(line: 61, column: 51, scope: !485)
!507 = !DILocation(line: 61, column: 49, scope: !485)
!508 = !DILocalVariable(name: "ln_pre_err", scope: !485, file: !1, line: 62, type: !52)
!509 = !DILocation(line: 62, column: 14, scope: !485)
!510 = !DILocation(line: 62, column: 32, scope: !485)
!511 = !DILocation(line: 62, column: 45, scope: !485)
!512 = !DILocation(line: 62, column: 36, scope: !485)
!513 = !DILocation(line: 62, column: 51, scope: !485)
!514 = !DILocation(line: 62, column: 49, scope: !485)
!515 = !DILocalVariable(name: "stat_e", scope: !485, file: !1, line: 63, type: !42)
!516 = !DILocation(line: 63, column: 11, scope: !485)
!517 = !DILocation(line: 63, column: 42, scope: !485)
!518 = !DILocation(line: 63, column: 54, scope: !485)
!519 = !DILocation(line: 64, column: 45, scope: !485)
!520 = !DILocation(line: 64, column: 53, scope: !485)
!521 = !DILocation(line: 64, column: 52, scope: !485)
!522 = !DILocation(line: 64, column: 61, scope: !485)
!523 = !DILocation(line: 64, column: 58, scope: !485)
!524 = !DILocation(line: 64, column: 68, scope: !485)
!525 = !DILocation(line: 65, column: 45, scope: !485)
!526 = !DILocation(line: 63, column: 20, scope: !485)
!527 = !DILocation(line: 66, column: 14, scope: !485)
!528 = !DILocation(line: 66, column: 14, scope: !498)
!529 = !DILocation(line: 66, column: 14, scope: !530)
!530 = !DILexicalBlockFile(scope: !485, file: !1, discriminator: 2)
!531 = !DILocation(line: 66, column: 14, scope: !532)
!532 = !DILexicalBlockFile(scope: !485, file: !1, discriminator: 3)
!533 = !DILocation(line: 66, column: 14, scope: !534)
!534 = !DILexicalBlockFile(scope: !485, file: !1, discriminator: 4)
!535 = !DILocation(line: 66, column: 14, scope: !536)
!536 = !DILexicalBlockFile(scope: !485, file: !1, discriminator: 5)
!537 = !DILocation(line: 66, column: 14, scope: !538)
!538 = !DILexicalBlockFile(scope: !485, file: !1, discriminator: 6)
!539 = !DILocation(line: 66, column: 7, scope: !538)
!540 = !DILocation(line: 69, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !481, file: !1, line: 68, column: 10)
!542 = !DILocation(line: 69, column: 15, scope: !541)
!543 = !DILocation(line: 69, column: 19, scope: !541)
!544 = !DILocation(line: 70, column: 7, scope: !541)
!545 = !DILocation(line: 70, column: 15, scope: !541)
!546 = !DILocation(line: 70, column: 19, scope: !541)
!547 = !DILocation(line: 71, column: 14, scope: !541)
!548 = !DILocation(line: 71, column: 7, scope: !541)
!549 = !DILocation(line: 75, column: 5, scope: !550)
!550 = distinct !DILexicalBlock(scope: !460, file: !1, line: 74, column: 8)
!551 = distinct !{!551, !549}
!552 = !DILocation(line: 75, column: 5, scope: !553)
!553 = !DILexicalBlockFile(scope: !554, file: !1, discriminator: 1)
!554 = distinct !DILexicalBlock(scope: !550, file: !1, line: 75, column: 5)
!555 = distinct !{!555, !556}
!556 = !DILocation(line: 75, column: 5, scope: !554)
!557 = !DILocation(line: 75, column: 5, scope: !558)
!558 = !DILexicalBlockFile(scope: !559, file: !1, discriminator: 2)
!559 = distinct !DILexicalBlock(scope: !554, file: !1, line: 75, column: 5)
!560 = !DILocation(line: 75, column: 5, scope: !561)
!561 = !DILexicalBlockFile(scope: !554, file: !1, discriminator: 3)
!562 = !DILocation(line: 77, column: 1, scope: !432)
!563 = distinct !DISubprogram(name: "hyperg_1F1_ab_negint", scope: !1, file: !1, line: 1310, type: !48, isLocal: true, isDefinition: true, scopeLine: 1311, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!564 = !DILocalVariable(name: "a", arg: 1, scope: !563, file: !1, line: 1310, type: !50)
!565 = !DILocation(line: 1310, column: 32, scope: !563)
!566 = !DILocalVariable(name: "b", arg: 2, scope: !563, file: !1, line: 1310, type: !50)
!567 = !DILocation(line: 1310, column: 45, scope: !563)
!568 = !DILocalVariable(name: "x", arg: 3, scope: !563, file: !1, line: 1310, type: !51)
!569 = !DILocation(line: 1310, column: 61, scope: !563)
!570 = !DILocalVariable(name: "result", arg: 4, scope: !563, file: !1, line: 1310, type: !53)
!571 = !DILocation(line: 1310, column: 80, scope: !563)
!572 = !DILocation(line: 1312, column: 6, scope: !573)
!573 = distinct !DILexicalBlock(scope: !563, file: !1, line: 1312, column: 6)
!574 = !DILocation(line: 1312, column: 8, scope: !573)
!575 = !DILocation(line: 1312, column: 6, scope: !563)
!576 = !DILocation(line: 1313, column: 5, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !1, line: 1312, column: 16)
!578 = !DILocation(line: 1313, column: 13, scope: !577)
!579 = !DILocation(line: 1313, column: 17, scope: !577)
!580 = !DILocation(line: 1314, column: 5, scope: !577)
!581 = !DILocation(line: 1314, column: 13, scope: !577)
!582 = !DILocation(line: 1314, column: 17, scope: !577)
!583 = !DILocation(line: 1315, column: 5, scope: !577)
!584 = !DILocation(line: 1317, column: 11, scope: !585)
!585 = distinct !DILexicalBlock(scope: !573, file: !1, line: 1317, column: 11)
!586 = !DILocation(line: 1317, column: 13, scope: !585)
!587 = !DILocation(line: 1317, column: 11, scope: !573)
!588 = !DILocation(line: 1318, column: 37, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !1, line: 1317, column: 20)
!590 = !DILocation(line: 1318, column: 40, scope: !589)
!591 = !DILocation(line: 1318, column: 43, scope: !589)
!592 = !DILocation(line: 1318, column: 46, scope: !589)
!593 = !DILocation(line: 1318, column: 12, scope: !589)
!594 = !DILocation(line: 1318, column: 5, scope: !589)
!595 = !DILocalVariable(name: "K", scope: !596, file: !1, line: 1326, type: !54)
!596 = distinct !DILexicalBlock(scope: !585, file: !1, line: 1320, column: 8)
!597 = !DILocation(line: 1326, column: 19, scope: !596)
!598 = !DILocalVariable(name: "stat_K", scope: !596, file: !1, line: 1327, type: !42)
!599 = !DILocation(line: 1327, column: 9, scope: !596)
!600 = !DILocation(line: 1327, column: 43, scope: !596)
!601 = !DILocation(line: 1327, column: 45, scope: !596)
!602 = !DILocation(line: 1327, column: 44, scope: !596)
!603 = !DILocation(line: 1327, column: 48, scope: !596)
!604 = !DILocation(line: 1327, column: 52, scope: !596)
!605 = !DILocation(line: 1327, column: 51, scope: !596)
!606 = !DILocation(line: 1327, column: 18, scope: !596)
!607 = !DILocalVariable(name: "stat_e", scope: !596, file: !1, line: 1328, type: !42)
!608 = !DILocation(line: 1328, column: 9, scope: !596)
!609 = !DILocation(line: 1328, column: 40, scope: !596)
!610 = !DILocation(line: 1328, column: 72, scope: !596)
!611 = !DILocation(line: 1328, column: 67, scope: !596)
!612 = !DILocation(line: 1328, column: 65, scope: !596)
!613 = !DILocation(line: 1329, column: 45, scope: !596)
!614 = !DILocation(line: 1329, column: 52, scope: !596)
!615 = !DILocation(line: 1330, column: 43, scope: !596)
!616 = !DILocation(line: 1328, column: 18, scope: !617)
!617 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 1)
!618 = !DILocation(line: 1331, column: 12, scope: !596)
!619 = !DILocation(line: 1331, column: 12, scope: !617)
!620 = !DILocation(line: 1331, column: 12, scope: !621)
!621 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 2)
!622 = !DILocation(line: 1331, column: 12, scope: !623)
!623 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 3)
!624 = !DILocation(line: 1331, column: 12, scope: !625)
!625 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 4)
!626 = !DILocation(line: 1331, column: 12, scope: !627)
!627 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 5)
!628 = !DILocation(line: 1331, column: 12, scope: !629)
!629 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 6)
!630 = !DILocation(line: 1331, column: 5, scope: !629)
!631 = !DILocation(line: 1333, column: 1, scope: !563)
!632 = distinct !DISubprogram(name: "hyperg_1F1_ab_posint", scope: !1, file: !1, line: 938, type: !48, isLocal: true, isDefinition: true, scopeLine: 939, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!633 = !DILocalVariable(name: "a", arg: 1, scope: !632, file: !1, line: 938, type: !50)
!634 = !DILocation(line: 938, column: 32, scope: !632)
!635 = !DILocalVariable(name: "b", arg: 2, scope: !632, file: !1, line: 938, type: !50)
!636 = !DILocation(line: 938, column: 45, scope: !632)
!637 = !DILocalVariable(name: "x", arg: 3, scope: !632, file: !1, line: 938, type: !51)
!638 = !DILocation(line: 938, column: 61, scope: !632)
!639 = !DILocalVariable(name: "result", arg: 4, scope: !632, file: !1, line: 938, type: !53)
!640 = !DILocation(line: 938, column: 80, scope: !632)
!641 = !DILocalVariable(name: "ax", scope: !632, file: !1, line: 940, type: !52)
!642 = !DILocation(line: 940, column: 10, scope: !632)
!643 = !DILocation(line: 940, column: 20, scope: !632)
!644 = !DILocation(line: 940, column: 15, scope: !632)
!645 = !DILocation(line: 942, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !632, file: !1, line: 942, column: 6)
!647 = !DILocation(line: 942, column: 11, scope: !646)
!648 = !DILocation(line: 942, column: 8, scope: !646)
!649 = !DILocation(line: 942, column: 6, scope: !632)
!650 = !DILocation(line: 943, column: 25, scope: !651)
!651 = distinct !DILexicalBlock(scope: !646, file: !1, line: 942, column: 14)
!652 = !DILocation(line: 943, column: 28, scope: !651)
!653 = !DILocation(line: 943, column: 12, scope: !651)
!654 = !DILocation(line: 943, column: 5, scope: !651)
!655 = !DILocation(line: 945, column: 11, scope: !656)
!656 = distinct !DILexicalBlock(scope: !646, file: !1, line: 945, column: 11)
!657 = !DILocation(line: 945, column: 13, scope: !656)
!658 = !DILocation(line: 945, column: 11, scope: !646)
!659 = !DILocation(line: 946, column: 30, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !1, line: 945, column: 19)
!661 = !DILocation(line: 946, column: 31, scope: !660)
!662 = !DILocation(line: 946, column: 35, scope: !660)
!663 = !DILocation(line: 946, column: 38, scope: !660)
!664 = !DILocation(line: 946, column: 12, scope: !660)
!665 = !DILocation(line: 946, column: 5, scope: !660)
!666 = !DILocation(line: 948, column: 11, scope: !667)
!667 = distinct !DILexicalBlock(scope: !656, file: !1, line: 948, column: 11)
!668 = !DILocation(line: 948, column: 16, scope: !667)
!669 = !DILocation(line: 948, column: 18, scope: !667)
!670 = !DILocation(line: 948, column: 13, scope: !667)
!671 = !DILocation(line: 948, column: 11, scope: !656)
!672 = !DILocalVariable(name: "K", scope: !673, file: !1, line: 949, type: !54)
!673 = distinct !DILexicalBlock(scope: !667, file: !1, line: 948, column: 23)
!674 = !DILocation(line: 949, column: 19, scope: !673)
!675 = !DILocalVariable(name: "stat_K", scope: !673, file: !1, line: 950, type: !42)
!676 = !DILocation(line: 950, column: 9, scope: !673)
!677 = !DILocation(line: 950, column: 36, scope: !673)
!678 = !DILocation(line: 950, column: 40, scope: !673)
!679 = !DILocation(line: 950, column: 39, scope: !673)
!680 = !DILocation(line: 950, column: 18, scope: !673)
!681 = !DILocalVariable(name: "stat_e", scope: !673, file: !1, line: 951, type: !42)
!682 = !DILocation(line: 951, column: 9, scope: !673)
!683 = !DILocation(line: 951, column: 40, scope: !673)
!684 = !DILocation(line: 951, column: 72, scope: !673)
!685 = !DILocation(line: 951, column: 67, scope: !673)
!686 = !DILocation(line: 951, column: 65, scope: !673)
!687 = !DILocation(line: 952, column: 45, scope: !673)
!688 = !DILocation(line: 952, column: 52, scope: !673)
!689 = !DILocation(line: 953, column: 43, scope: !673)
!690 = !DILocation(line: 951, column: 18, scope: !691)
!691 = !DILexicalBlockFile(scope: !673, file: !1, discriminator: 1)
!692 = !DILocation(line: 954, column: 12, scope: !673)
!693 = !DILocation(line: 954, column: 12, scope: !691)
!694 = !DILocation(line: 954, column: 12, scope: !695)
!695 = !DILexicalBlockFile(scope: !673, file: !1, discriminator: 2)
!696 = !DILocation(line: 954, column: 12, scope: !697)
!697 = !DILexicalBlockFile(scope: !673, file: !1, discriminator: 3)
!698 = !DILocation(line: 954, column: 12, scope: !699)
!699 = !DILexicalBlockFile(scope: !673, file: !1, discriminator: 4)
!700 = !DILocation(line: 954, column: 12, scope: !701)
!701 = !DILexicalBlockFile(scope: !673, file: !1, discriminator: 5)
!702 = !DILocation(line: 954, column: 12, scope: !703)
!703 = !DILexicalBlockFile(scope: !673, file: !1, discriminator: 6)
!704 = !DILocation(line: 954, column: 5, scope: !703)
!705 = !DILocation(line: 956, column: 11, scope: !706)
!706 = distinct !DILexicalBlock(scope: !667, file: !1, line: 956, column: 11)
!707 = !DILocation(line: 956, column: 16, scope: !706)
!708 = !DILocation(line: 956, column: 18, scope: !706)
!709 = !DILocation(line: 956, column: 13, scope: !706)
!710 = !DILocation(line: 956, column: 11, scope: !667)
!711 = !DILocalVariable(name: "ex", scope: !712, file: !1, line: 957, type: !54)
!712 = distinct !DILexicalBlock(scope: !706, file: !1, line: 956, column: 23)
!713 = !DILocation(line: 957, column: 19, scope: !712)
!714 = !DILocalVariable(name: "stat_e", scope: !712, file: !1, line: 958, type: !42)
!715 = !DILocation(line: 958, column: 9, scope: !712)
!716 = !DILocation(line: 958, column: 31, scope: !712)
!717 = !DILocation(line: 958, column: 18, scope: !712)
!718 = !DILocation(line: 959, column: 23, scope: !712)
!719 = !DILocation(line: 959, column: 36, scope: !712)
!720 = !DILocation(line: 959, column: 38, scope: !712)
!721 = !DILocation(line: 959, column: 37, scope: !712)
!722 = !DILocation(line: 959, column: 34, scope: !712)
!723 = !DILocation(line: 959, column: 27, scope: !712)
!724 = !DILocation(line: 959, column: 5, scope: !712)
!725 = !DILocation(line: 959, column: 13, scope: !712)
!726 = !DILocation(line: 959, column: 18, scope: !712)
!727 = !DILocation(line: 960, column: 23, scope: !712)
!728 = !DILocation(line: 960, column: 36, scope: !712)
!729 = !DILocation(line: 960, column: 38, scope: !712)
!730 = !DILocation(line: 960, column: 37, scope: !712)
!731 = !DILocation(line: 960, column: 34, scope: !712)
!732 = !DILocation(line: 960, column: 27, scope: !712)
!733 = !DILocation(line: 960, column: 5, scope: !712)
!734 = !DILocation(line: 960, column: 13, scope: !712)
!735 = !DILocation(line: 960, column: 18, scope: !712)
!736 = !DILocation(line: 961, column: 23, scope: !712)
!737 = !DILocation(line: 961, column: 27, scope: !712)
!738 = !DILocation(line: 961, column: 59, scope: !712)
!739 = !DILocation(line: 961, column: 61, scope: !712)
!740 = !DILocation(line: 961, column: 60, scope: !712)
!741 = !DILocation(line: 961, column: 54, scope: !712)
!742 = !DILocation(line: 961, column: 52, scope: !712)
!743 = !DILocation(line: 961, column: 45, scope: !712)
!744 = !DILocation(line: 961, column: 5, scope: !712)
!745 = !DILocation(line: 961, column: 13, scope: !712)
!746 = !DILocation(line: 961, column: 17, scope: !712)
!747 = !DILocation(line: 962, column: 49, scope: !712)
!748 = !DILocation(line: 962, column: 57, scope: !712)
!749 = !DILocation(line: 962, column: 44, scope: !712)
!750 = !DILocation(line: 962, column: 42, scope: !712)
!751 = !DILocation(line: 962, column: 5, scope: !712)
!752 = !DILocation(line: 962, column: 13, scope: !712)
!753 = !DILocation(line: 962, column: 17, scope: !712)
!754 = !DILocation(line: 963, column: 12, scope: !712)
!755 = !DILocation(line: 963, column: 5, scope: !712)
!756 = !DILocation(line: 965, column: 11, scope: !757)
!757 = distinct !DILexicalBlock(scope: !706, file: !1, line: 965, column: 11)
!758 = !DILocation(line: 965, column: 16, scope: !757)
!759 = !DILocation(line: 965, column: 18, scope: !757)
!760 = !DILocation(line: 965, column: 13, scope: !757)
!761 = !DILocation(line: 965, column: 11, scope: !706)
!762 = !DILocalVariable(name: "ex", scope: !763, file: !1, line: 966, type: !54)
!763 = distinct !DILexicalBlock(scope: !757, file: !1, line: 965, column: 23)
!764 = !DILocation(line: 966, column: 19, scope: !763)
!765 = !DILocalVariable(name: "stat_e", scope: !763, file: !1, line: 967, type: !42)
!766 = !DILocation(line: 967, column: 9, scope: !763)
!767 = !DILocation(line: 967, column: 31, scope: !763)
!768 = !DILocation(line: 967, column: 18, scope: !763)
!769 = !DILocalVariable(name: "poly", scope: !763, file: !1, line: 968, type: !52)
!770 = !DILocation(line: 968, column: 12, scope: !763)
!771 = !DILocation(line: 968, column: 27, scope: !763)
!772 = !DILocation(line: 968, column: 29, scope: !763)
!773 = !DILocation(line: 968, column: 28, scope: !763)
!774 = !DILocation(line: 968, column: 38, scope: !763)
!775 = !DILocation(line: 968, column: 41, scope: !763)
!776 = !DILocation(line: 968, column: 42, scope: !763)
!777 = !DILocation(line: 968, column: 39, scope: !763)
!778 = !DILocation(line: 968, column: 36, scope: !763)
!779 = !DILocation(line: 968, column: 30, scope: !763)
!780 = !DILocation(line: 968, column: 25, scope: !763)
!781 = !DILocation(line: 969, column: 23, scope: !763)
!782 = !DILocation(line: 969, column: 29, scope: !763)
!783 = !DILocation(line: 969, column: 27, scope: !763)
!784 = !DILocation(line: 969, column: 5, scope: !763)
!785 = !DILocation(line: 969, column: 13, scope: !763)
!786 = !DILocation(line: 969, column: 18, scope: !763)
!787 = !DILocation(line: 970, column: 23, scope: !763)
!788 = !DILocation(line: 970, column: 34, scope: !763)
!789 = !DILocation(line: 970, column: 29, scope: !763)
!790 = !DILocation(line: 970, column: 27, scope: !763)
!791 = !DILocation(line: 970, column: 5, scope: !763)
!792 = !DILocation(line: 970, column: 13, scope: !763)
!793 = !DILocation(line: 970, column: 18, scope: !763)
!794 = !DILocation(line: 971, column: 23, scope: !763)
!795 = !DILocation(line: 971, column: 27, scope: !763)
!796 = !DILocation(line: 971, column: 59, scope: !763)
!797 = !DILocation(line: 971, column: 61, scope: !763)
!798 = !DILocation(line: 971, column: 60, scope: !763)
!799 = !DILocation(line: 971, column: 54, scope: !763)
!800 = !DILocation(line: 971, column: 78, scope: !763)
!801 = !DILocation(line: 971, column: 81, scope: !763)
!802 = !DILocation(line: 971, column: 82, scope: !763)
!803 = !DILocation(line: 971, column: 79, scope: !763)
!804 = !DILocation(line: 971, column: 73, scope: !805)
!805 = !DILexicalBlockFile(scope: !763, file: !1, discriminator: 1)
!806 = !DILocation(line: 971, column: 71, scope: !763)
!807 = !DILocation(line: 971, column: 64, scope: !763)
!808 = !DILocation(line: 971, column: 52, scope: !763)
!809 = !DILocation(line: 971, column: 45, scope: !763)
!810 = !DILocation(line: 971, column: 5, scope: !763)
!811 = !DILocation(line: 971, column: 13, scope: !763)
!812 = !DILocation(line: 971, column: 17, scope: !763)
!813 = !DILocation(line: 972, column: 49, scope: !763)
!814 = !DILocation(line: 972, column: 57, scope: !763)
!815 = !DILocation(line: 972, column: 44, scope: !763)
!816 = !DILocation(line: 972, column: 42, scope: !763)
!817 = !DILocation(line: 972, column: 5, scope: !763)
!818 = !DILocation(line: 972, column: 13, scope: !763)
!819 = !DILocation(line: 972, column: 17, scope: !763)
!820 = !DILocation(line: 973, column: 12, scope: !763)
!821 = !DILocation(line: 973, column: 5, scope: !763)
!822 = !DILocation(line: 975, column: 11, scope: !823)
!823 = distinct !DILexicalBlock(scope: !757, file: !1, line: 975, column: 11)
!824 = !DILocation(line: 975, column: 18, scope: !823)
!825 = !DILocation(line: 975, column: 17, scope: !823)
!826 = !DILocation(line: 975, column: 13, scope: !823)
!827 = !DILocation(line: 975, column: 11, scope: !757)
!828 = !DILocation(line: 976, column: 33, scope: !829)
!829 = distinct !DILexicalBlock(scope: !823, file: !1, line: 975, column: 21)
!830 = !DILocation(line: 976, column: 36, scope: !829)
!831 = !DILocation(line: 976, column: 39, scope: !829)
!832 = !DILocation(line: 976, column: 12, scope: !829)
!833 = !DILocation(line: 976, column: 5, scope: !829)
!834 = !DILocation(line: 978, column: 16, scope: !835)
!835 = distinct !DILexicalBlock(scope: !823, file: !1, line: 978, column: 14)
!836 = !DILocation(line: 978, column: 18, scope: !835)
!837 = !DILocation(line: 978, column: 23, scope: !835)
!838 = !DILocation(line: 978, column: 26, scope: !839)
!839 = !DILexicalBlockFile(scope: !835, file: !1, discriminator: 1)
!840 = !DILocation(line: 978, column: 28, scope: !839)
!841 = !DILocation(line: 978, column: 33, scope: !839)
!842 = !DILocation(line: 978, column: 36, scope: !843)
!843 = !DILexicalBlockFile(scope: !835, file: !1, discriminator: 2)
!844 = !DILocation(line: 978, column: 39, scope: !843)
!845 = !DILocation(line: 979, column: 11, scope: !835)
!846 = !DILocation(line: 979, column: 16, scope: !839)
!847 = !DILocation(line: 979, column: 20, scope: !839)
!848 = !DILocation(line: 979, column: 22, scope: !839)
!849 = !DILocation(line: 979, column: 21, scope: !839)
!850 = !DILocation(line: 979, column: 18, scope: !839)
!851 = !DILocation(line: 980, column: 11, scope: !835)
!852 = !DILocation(line: 980, column: 16, scope: !839)
!853 = !DILocation(line: 980, column: 20, scope: !839)
!854 = !DILocation(line: 980, column: 18, scope: !839)
!855 = !DILocation(line: 980, column: 22, scope: !839)
!856 = !DILocation(line: 980, column: 25, scope: !843)
!857 = !DILocation(line: 980, column: 28, scope: !843)
!858 = !DILocation(line: 978, column: 14, scope: !859)
!859 = !DILexicalBlockFile(scope: !823, file: !1, discriminator: 3)
!860 = !DILocation(line: 982, column: 39, scope: !861)
!861 = distinct !DILexicalBlock(scope: !835, file: !1, line: 981, column: 7)
!862 = !DILocation(line: 982, column: 42, scope: !861)
!863 = !DILocation(line: 982, column: 45, scope: !861)
!864 = !DILocation(line: 982, column: 48, scope: !861)
!865 = !DILocation(line: 982, column: 12, scope: !861)
!866 = !DILocation(line: 982, column: 5, scope: !861)
!867 = !DILocation(line: 984, column: 11, scope: !868)
!868 = distinct !DILexicalBlock(scope: !835, file: !1, line: 984, column: 11)
!869 = !DILocation(line: 984, column: 15, scope: !868)
!870 = !DILocation(line: 984, column: 13, scope: !868)
!871 = !DILocation(line: 984, column: 17, scope: !868)
!872 = !DILocation(line: 984, column: 20, scope: !873)
!873 = !DILexicalBlockFile(scope: !868, file: !1, discriminator: 1)
!874 = !DILocation(line: 984, column: 27, scope: !873)
!875 = !DILocation(line: 984, column: 26, scope: !873)
!876 = !DILocation(line: 984, column: 25, scope: !873)
!877 = !DILocation(line: 984, column: 31, scope: !873)
!878 = !DILocation(line: 984, column: 29, scope: !873)
!879 = !DILocation(line: 984, column: 22, scope: !873)
!880 = !DILocation(line: 984, column: 11, scope: !873)
!881 = !DILocalVariable(name: "rap", scope: !882, file: !1, line: 989, type: !52)
!882 = distinct !DILexicalBlock(scope: !868, file: !1, line: 984, column: 34)
!883 = !DILocation(line: 989, column: 12, scope: !882)
!884 = !DILocalVariable(name: "stat_CF1", scope: !882, file: !1, line: 990, type: !42)
!885 = !DILocation(line: 990, column: 9, scope: !882)
!886 = !DILocation(line: 990, column: 41, scope: !882)
!887 = !DILocation(line: 990, column: 44, scope: !882)
!888 = !DILocation(line: 990, column: 47, scope: !882)
!889 = !DILocation(line: 990, column: 20, scope: !882)
!890 = !DILocalVariable(name: "ra", scope: !882, file: !1, line: 991, type: !52)
!891 = !DILocation(line: 991, column: 12, scope: !882)
!892 = !DILocation(line: 991, column: 23, scope: !882)
!893 = !DILocation(line: 991, column: 25, scope: !882)
!894 = !DILocation(line: 991, column: 24, scope: !882)
!895 = !DILocation(line: 991, column: 29, scope: !882)
!896 = !DILocation(line: 991, column: 27, scope: !882)
!897 = !DILocation(line: 991, column: 21, scope: !882)
!898 = !DILocalVariable(name: "Ma", scope: !882, file: !1, line: 992, type: !52)
!899 = !DILocation(line: 992, column: 12, scope: !882)
!900 = !DILocalVariable(name: "Map1", scope: !882, file: !1, line: 993, type: !52)
!901 = !DILocation(line: 993, column: 12, scope: !882)
!902 = !DILocation(line: 993, column: 19, scope: !882)
!903 = !DILocation(line: 993, column: 24, scope: !882)
!904 = !DILocation(line: 993, column: 22, scope: !882)
!905 = !DILocalVariable(name: "Mnp1", scope: !882, file: !1, line: 994, type: !52)
!906 = !DILocation(line: 994, column: 12, scope: !882)
!907 = !DILocation(line: 994, column: 19, scope: !882)
!908 = !DILocalVariable(name: "Mn", scope: !882, file: !1, line: 995, type: !52)
!909 = !DILocation(line: 995, column: 12, scope: !882)
!910 = !DILocation(line: 995, column: 19, scope: !882)
!911 = !DILocalVariable(name: "Mnm1", scope: !882, file: !1, line: 996, type: !52)
!912 = !DILocation(line: 996, column: 12, scope: !882)
!913 = !DILocalVariable(name: "n", scope: !882, file: !1, line: 997, type: !42)
!914 = !DILocation(line: 997, column: 9, scope: !882)
!915 = !DILocation(line: 998, column: 11, scope: !916)
!916 = distinct !DILexicalBlock(scope: !882, file: !1, line: 998, column: 5)
!917 = !DILocation(line: 998, column: 10, scope: !916)
!918 = !DILocation(line: 998, column: 9, scope: !916)
!919 = !DILocation(line: 998, column: 14, scope: !920)
!920 = !DILexicalBlockFile(scope: !921, file: !1, discriminator: 1)
!921 = distinct !DILexicalBlock(scope: !916, file: !1, line: 998, column: 5)
!922 = !DILocation(line: 998, column: 15, scope: !920)
!923 = !DILocation(line: 998, column: 5, scope: !920)
!924 = !DILocation(line: 999, column: 15, scope: !925)
!925 = distinct !DILexicalBlock(scope: !921, file: !1, line: 998, column: 24)
!926 = !DILocation(line: 999, column: 19, scope: !925)
!927 = !DILocation(line: 999, column: 17, scope: !925)
!928 = !DILocation(line: 999, column: 29, scope: !925)
!929 = !DILocation(line: 999, column: 28, scope: !925)
!930 = !DILocation(line: 999, column: 31, scope: !925)
!931 = !DILocation(line: 999, column: 30, scope: !925)
!932 = !DILocation(line: 999, column: 27, scope: !925)
!933 = !DILocation(line: 999, column: 33, scope: !925)
!934 = !DILocation(line: 999, column: 32, scope: !925)
!935 = !DILocation(line: 999, column: 38, scope: !925)
!936 = !DILocation(line: 999, column: 36, scope: !925)
!937 = !DILocation(line: 999, column: 24, scope: !925)
!938 = !DILocation(line: 999, column: 45, scope: !925)
!939 = !DILocation(line: 999, column: 47, scope: !925)
!940 = !DILocation(line: 999, column: 46, scope: !925)
!941 = !DILocation(line: 999, column: 44, scope: !925)
!942 = !DILocation(line: 999, column: 42, scope: !925)
!943 = !DILocation(line: 999, column: 12, scope: !925)
!944 = !DILocation(line: 1000, column: 14, scope: !925)
!945 = !DILocation(line: 1000, column: 12, scope: !925)
!946 = !DILocation(line: 1001, column: 14, scope: !925)
!947 = !DILocation(line: 1001, column: 12, scope: !925)
!948 = !DILocation(line: 1002, column: 5, scope: !925)
!949 = !DILocation(line: 998, column: 20, scope: !950)
!950 = !DILexicalBlockFile(scope: !921, file: !1, discriminator: 2)
!951 = !DILocation(line: 998, column: 5, scope: !950)
!952 = distinct !{!952, !953}
!953 = !DILocation(line: 998, column: 5, scope: !882)
!954 = !DILocation(line: 1003, column: 19, scope: !882)
!955 = !DILocation(line: 1003, column: 22, scope: !882)
!956 = !DILocation(line: 1003, column: 21, scope: !882)
!957 = !DILocation(line: 1003, column: 5, scope: !882)
!958 = !DILocation(line: 1003, column: 13, scope: !882)
!959 = !DILocation(line: 1003, column: 17, scope: !882)
!960 = !DILocation(line: 1004, column: 49, scope: !882)
!961 = !DILocation(line: 1004, column: 44, scope: !882)
!962 = !DILocation(line: 1004, column: 52, scope: !882)
!963 = !DILocation(line: 1004, column: 41, scope: !882)
!964 = !DILocation(line: 1004, column: 66, scope: !882)
!965 = !DILocation(line: 1004, column: 69, scope: !882)
!966 = !DILocation(line: 1004, column: 68, scope: !882)
!967 = !DILocation(line: 1004, column: 61, scope: !968)
!968 = !DILexicalBlockFile(scope: !882, file: !1, discriminator: 1)
!969 = !DILocation(line: 1004, column: 59, scope: !882)
!970 = !DILocation(line: 1004, column: 5, scope: !882)
!971 = !DILocation(line: 1004, column: 13, scope: !882)
!972 = !DILocation(line: 1004, column: 17, scope: !882)
!973 = !DILocation(line: 1005, column: 12, scope: !882)
!974 = !DILocation(line: 1005, column: 5, scope: !882)
!975 = !DILocation(line: 1007, column: 11, scope: !976)
!976 = distinct !DILexicalBlock(scope: !868, file: !1, line: 1007, column: 11)
!977 = !DILocation(line: 1007, column: 15, scope: !976)
!978 = !DILocation(line: 1007, column: 13, scope: !976)
!979 = !DILocation(line: 1007, column: 17, scope: !976)
!980 = !DILocation(line: 1007, column: 20, scope: !981)
!981 = !DILexicalBlockFile(scope: !976, file: !1, discriminator: 1)
!982 = !DILocation(line: 1007, column: 26, scope: !981)
!983 = !DILocation(line: 1007, column: 25, scope: !981)
!984 = !DILocation(line: 1007, column: 24, scope: !981)
!985 = !DILocation(line: 1007, column: 30, scope: !981)
!986 = !DILocation(line: 1007, column: 28, scope: !981)
!987 = !DILocation(line: 1007, column: 22, scope: !981)
!988 = !DILocation(line: 1007, column: 32, scope: !981)
!989 = !DILocation(line: 1007, column: 35, scope: !990)
!990 = !DILexicalBlockFile(scope: !976, file: !1, discriminator: 2)
!991 = !DILocation(line: 1007, column: 39, scope: !990)
!992 = !DILocation(line: 1007, column: 37, scope: !990)
!993 = !DILocation(line: 1007, column: 11, scope: !990)
!994 = !DILocalVariable(name: "rap", scope: !995, file: !1, line: 1014, type: !52)
!995 = distinct !DILexicalBlock(scope: !976, file: !1, line: 1007, column: 42)
!996 = !DILocation(line: 1014, column: 12, scope: !995)
!997 = !DILocalVariable(name: "stat_CF1", scope: !995, file: !1, line: 1015, type: !42)
!998 = !DILocation(line: 1015, column: 9, scope: !995)
!999 = !DILocation(line: 1015, column: 41, scope: !995)
!1000 = !DILocation(line: 1015, column: 44, scope: !995)
!1001 = !DILocation(line: 1015, column: 47, scope: !995)
!1002 = !DILocation(line: 1015, column: 20, scope: !995)
!1003 = !DILocalVariable(name: "ra", scope: !995, file: !1, line: 1016, type: !52)
!1004 = !DILocation(line: 1016, column: 12, scope: !995)
!1005 = !DILocation(line: 1016, column: 23, scope: !995)
!1006 = !DILocation(line: 1016, column: 25, scope: !995)
!1007 = !DILocation(line: 1016, column: 24, scope: !995)
!1008 = !DILocation(line: 1016, column: 29, scope: !995)
!1009 = !DILocation(line: 1016, column: 27, scope: !995)
!1010 = !DILocation(line: 1016, column: 21, scope: !995)
!1011 = !DILocalVariable(name: "ex", scope: !995, file: !1, line: 1017, type: !54)
!1012 = !DILocation(line: 1017, column: 19, scope: !995)
!1013 = !DILocalVariable(name: "stat_ex", scope: !995, file: !1, line: 1018, type: !42)
!1014 = !DILocation(line: 1018, column: 9, scope: !995)
!1015 = !DILocalVariable(name: "Ma", scope: !995, file: !1, line: 1020, type: !52)
!1016 = !DILocation(line: 1020, column: 12, scope: !995)
!1017 = !DILocalVariable(name: "Map1", scope: !995, file: !1, line: 1021, type: !52)
!1018 = !DILocation(line: 1021, column: 12, scope: !995)
!1019 = !DILocation(line: 1021, column: 19, scope: !995)
!1020 = !DILocation(line: 1021, column: 24, scope: !995)
!1021 = !DILocation(line: 1021, column: 22, scope: !995)
!1022 = !DILocalVariable(name: "Mnm1", scope: !995, file: !1, line: 1022, type: !52)
!1023 = !DILocation(line: 1022, column: 12, scope: !995)
!1024 = !DILocation(line: 1022, column: 19, scope: !995)
!1025 = !DILocalVariable(name: "Mn", scope: !995, file: !1, line: 1023, type: !52)
!1026 = !DILocation(line: 1023, column: 12, scope: !995)
!1027 = !DILocation(line: 1023, column: 19, scope: !995)
!1028 = !DILocalVariable(name: "Mnp1", scope: !995, file: !1, line: 1024, type: !52)
!1029 = !DILocation(line: 1024, column: 12, scope: !995)
!1030 = !DILocalVariable(name: "n", scope: !995, file: !1, line: 1025, type: !42)
!1031 = !DILocation(line: 1025, column: 9, scope: !995)
!1032 = !DILocation(line: 1026, column: 11, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !995, file: !1, line: 1026, column: 5)
!1034 = !DILocation(line: 1026, column: 12, scope: !1033)
!1035 = !DILocation(line: 1026, column: 10, scope: !1033)
!1036 = !DILocation(line: 1026, column: 9, scope: !1033)
!1037 = !DILocation(line: 1026, column: 16, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1039, file: !1, discriminator: 1)
!1039 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 1026, column: 5)
!1040 = !DILocation(line: 1026, column: 18, scope: !1038)
!1041 = !DILocation(line: 1026, column: 17, scope: !1038)
!1042 = !DILocation(line: 1026, column: 5, scope: !1038)
!1043 = !DILocation(line: 1027, column: 16, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 1026, column: 26)
!1045 = !DILocation(line: 1027, column: 18, scope: !1044)
!1046 = !DILocation(line: 1027, column: 17, scope: !1044)
!1047 = !DILocation(line: 1027, column: 15, scope: !1044)
!1048 = !DILocation(line: 1027, column: 21, scope: !1044)
!1049 = !DILocation(line: 1027, column: 20, scope: !1044)
!1050 = !DILocation(line: 1027, column: 31, scope: !1044)
!1051 = !DILocation(line: 1027, column: 30, scope: !1044)
!1052 = !DILocation(line: 1027, column: 33, scope: !1044)
!1053 = !DILocation(line: 1027, column: 32, scope: !1044)
!1054 = !DILocation(line: 1027, column: 29, scope: !1044)
!1055 = !DILocation(line: 1027, column: 35, scope: !1044)
!1056 = !DILocation(line: 1027, column: 34, scope: !1044)
!1057 = !DILocation(line: 1027, column: 38, scope: !1044)
!1058 = !DILocation(line: 1027, column: 37, scope: !1044)
!1059 = !DILocation(line: 1027, column: 26, scope: !1044)
!1060 = !DILocation(line: 1027, column: 42, scope: !1044)
!1061 = !DILocation(line: 1027, column: 41, scope: !1044)
!1062 = !DILocation(line: 1027, column: 12, scope: !1044)
!1063 = !DILocation(line: 1028, column: 14, scope: !1044)
!1064 = !DILocation(line: 1028, column: 12, scope: !1044)
!1065 = !DILocation(line: 1029, column: 14, scope: !1044)
!1066 = !DILocation(line: 1029, column: 12, scope: !1044)
!1067 = !DILocation(line: 1030, column: 5, scope: !1044)
!1068 = !DILocation(line: 1026, column: 22, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1039, file: !1, discriminator: 2)
!1070 = !DILocation(line: 1026, column: 5, scope: !1069)
!1071 = distinct !{!1071, !1072}
!1072 = !DILocation(line: 1026, column: 5, scope: !995)
!1073 = !DILocation(line: 1032, column: 28, scope: !995)
!1074 = !DILocation(line: 1032, column: 15, scope: !995)
!1075 = !DILocation(line: 1032, column: 13, scope: !995)
!1076 = !DILocation(line: 1033, column: 23, scope: !995)
!1077 = !DILocation(line: 1033, column: 29, scope: !995)
!1078 = !DILocation(line: 1033, column: 27, scope: !995)
!1079 = !DILocation(line: 1033, column: 32, scope: !995)
!1080 = !DILocation(line: 1033, column: 31, scope: !995)
!1081 = !DILocation(line: 1033, column: 5, scope: !995)
!1082 = !DILocation(line: 1033, column: 13, scope: !995)
!1083 = !DILocation(line: 1033, column: 18, scope: !995)
!1084 = !DILocation(line: 1034, column: 23, scope: !995)
!1085 = !DILocation(line: 1034, column: 34, scope: !995)
!1086 = !DILocation(line: 1034, column: 37, scope: !995)
!1087 = !DILocation(line: 1034, column: 36, scope: !995)
!1088 = !DILocation(line: 1034, column: 29, scope: !995)
!1089 = !DILocation(line: 1034, column: 27, scope: !995)
!1090 = !DILocation(line: 1034, column: 5, scope: !995)
!1091 = !DILocation(line: 1034, column: 13, scope: !995)
!1092 = !DILocation(line: 1034, column: 18, scope: !995)
!1093 = !DILocation(line: 1035, column: 50, scope: !995)
!1094 = !DILocation(line: 1035, column: 52, scope: !995)
!1095 = !DILocation(line: 1035, column: 51, scope: !995)
!1096 = !DILocation(line: 1035, column: 45, scope: !995)
!1097 = !DILocation(line: 1035, column: 54, scope: !995)
!1098 = !DILocation(line: 1035, column: 42, scope: !995)
!1099 = !DILocation(line: 1035, column: 67, scope: !995)
!1100 = !DILocation(line: 1035, column: 75, scope: !995)
!1101 = !DILocation(line: 1035, column: 62, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 1)
!1103 = !DILocation(line: 1035, column: 60, scope: !995)
!1104 = !DILocation(line: 1035, column: 5, scope: !995)
!1105 = !DILocation(line: 1035, column: 13, scope: !995)
!1106 = !DILocation(line: 1035, column: 17, scope: !995)
!1107 = !DILocation(line: 1036, column: 12, scope: !995)
!1108 = !DILocation(line: 1036, column: 12, scope: !1102)
!1109 = !DILocation(line: 1036, column: 12, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 2)
!1111 = !DILocation(line: 1036, column: 12, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 3)
!1113 = !DILocation(line: 1036, column: 12, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 4)
!1115 = !DILocation(line: 1036, column: 12, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 5)
!1117 = !DILocation(line: 1036, column: 12, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 6)
!1119 = !DILocation(line: 1036, column: 5, scope: !1118)
!1120 = !DILocation(line: 1038, column: 11, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !976, file: !1, line: 1038, column: 11)
!1122 = !DILocation(line: 1038, column: 13, scope: !1121)
!1123 = !DILocation(line: 1038, column: 11, scope: !976)
!1124 = !DILocation(line: 1040, column: 8, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 1040, column: 8)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 1038, column: 21)
!1127 = !DILocation(line: 1040, column: 12, scope: !1125)
!1128 = !DILocation(line: 1040, column: 10, scope: !1125)
!1129 = !DILocation(line: 1040, column: 8, scope: !1126)
!1130 = !DILocation(line: 1045, column: 10, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !1, line: 1045, column: 10)
!1132 = distinct !DILexicalBlock(scope: !1125, file: !1, line: 1040, column: 15)
!1133 = !DILocation(line: 1045, column: 23, scope: !1131)
!1134 = !DILocation(line: 1045, column: 25, scope: !1131)
!1135 = !DILocation(line: 1045, column: 24, scope: !1131)
!1136 = !DILocation(line: 1045, column: 18, scope: !1131)
!1137 = !DILocation(line: 1045, column: 14, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1131, file: !1, discriminator: 1)
!1139 = !DILocation(line: 1045, column: 12, scope: !1131)
!1140 = !DILocation(line: 1045, column: 29, scope: !1131)
!1141 = !DILocation(line: 1045, column: 10, scope: !1132)
!1142 = !DILocalVariable(name: "ex", scope: !1143, file: !1, line: 1046, type: !52)
!1143 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 1045, column: 52)
!1144 = !DILocation(line: 1046, column: 16, scope: !1143)
!1145 = !DILocation(line: 1046, column: 25, scope: !1143)
!1146 = !DILocation(line: 1046, column: 21, scope: !1143)
!1147 = !DILocalVariable(name: "n", scope: !1143, file: !1, line: 1047, type: !42)
!1148 = !DILocation(line: 1047, column: 13, scope: !1143)
!1149 = !DILocalVariable(name: "Mnm1", scope: !1143, file: !1, line: 1048, type: !52)
!1150 = !DILocation(line: 1048, column: 16, scope: !1143)
!1151 = !DILocation(line: 1048, column: 23, scope: !1143)
!1152 = !DILocalVariable(name: "Mn", scope: !1143, file: !1, line: 1049, type: !52)
!1153 = !DILocation(line: 1049, column: 16, scope: !1143)
!1154 = !DILocation(line: 1049, column: 23, scope: !1143)
!1155 = !DILocation(line: 1049, column: 35, scope: !1143)
!1156 = !DILocation(line: 1049, column: 37, scope: !1143)
!1157 = !DILocation(line: 1049, column: 36, scope: !1143)
!1158 = !DILocation(line: 1049, column: 33, scope: !1143)
!1159 = !DILocation(line: 1049, column: 26, scope: !1143)
!1160 = !DILocalVariable(name: "Mnp1", scope: !1143, file: !1, line: 1050, type: !52)
!1161 = !DILocation(line: 1050, column: 16, scope: !1143)
!1162 = !DILocation(line: 1051, column: 15, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1143, file: !1, line: 1051, column: 9)
!1164 = !DILocation(line: 1051, column: 16, scope: !1163)
!1165 = !DILocation(line: 1051, column: 14, scope: !1163)
!1166 = !DILocation(line: 1051, column: 13, scope: !1163)
!1167 = !DILocation(line: 1051, column: 20, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !1169, file: !1, discriminator: 1)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 1051, column: 9)
!1170 = !DILocation(line: 1051, column: 22, scope: !1168)
!1171 = !DILocation(line: 1051, column: 21, scope: !1168)
!1172 = !DILocation(line: 1051, column: 9, scope: !1168)
!1173 = !DILocation(line: 1052, column: 20, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 1051, column: 30)
!1175 = !DILocation(line: 1052, column: 22, scope: !1174)
!1176 = !DILocation(line: 1052, column: 21, scope: !1174)
!1177 = !DILocation(line: 1052, column: 19, scope: !1174)
!1178 = !DILocation(line: 1052, column: 25, scope: !1174)
!1179 = !DILocation(line: 1052, column: 24, scope: !1174)
!1180 = !DILocation(line: 1052, column: 35, scope: !1174)
!1181 = !DILocation(line: 1052, column: 34, scope: !1174)
!1182 = !DILocation(line: 1052, column: 37, scope: !1174)
!1183 = !DILocation(line: 1052, column: 36, scope: !1174)
!1184 = !DILocation(line: 1052, column: 33, scope: !1174)
!1185 = !DILocation(line: 1052, column: 39, scope: !1174)
!1186 = !DILocation(line: 1052, column: 38, scope: !1174)
!1187 = !DILocation(line: 1052, column: 42, scope: !1174)
!1188 = !DILocation(line: 1052, column: 41, scope: !1174)
!1189 = !DILocation(line: 1052, column: 30, scope: !1174)
!1190 = !DILocation(line: 1052, column: 46, scope: !1174)
!1191 = !DILocation(line: 1052, column: 45, scope: !1174)
!1192 = !DILocation(line: 1052, column: 16, scope: !1174)
!1193 = !DILocation(line: 1053, column: 18, scope: !1174)
!1194 = !DILocation(line: 1053, column: 16, scope: !1174)
!1195 = !DILocation(line: 1054, column: 18, scope: !1174)
!1196 = !DILocation(line: 1054, column: 16, scope: !1174)
!1197 = !DILocation(line: 1055, column: 9, scope: !1174)
!1198 = !DILocation(line: 1051, column: 26, scope: !1199)
!1199 = !DILexicalBlockFile(scope: !1169, file: !1, discriminator: 2)
!1200 = !DILocation(line: 1051, column: 9, scope: !1199)
!1201 = distinct !{!1201, !1202}
!1202 = !DILocation(line: 1051, column: 9, scope: !1143)
!1203 = !DILocation(line: 1056, column: 24, scope: !1143)
!1204 = !DILocation(line: 1056, column: 9, scope: !1143)
!1205 = !DILocation(line: 1056, column: 17, scope: !1143)
!1206 = !DILocation(line: 1056, column: 22, scope: !1143)
!1207 = !DILocation(line: 1057, column: 25, scope: !1143)
!1208 = !DILocation(line: 1057, column: 27, scope: !1143)
!1209 = !DILocation(line: 1057, column: 34, scope: !1143)
!1210 = !DILocation(line: 1057, column: 59, scope: !1143)
!1211 = !DILocation(line: 1057, column: 54, scope: !1143)
!1212 = !DILocation(line: 1057, column: 52, scope: !1143)
!1213 = !DILocation(line: 1057, column: 9, scope: !1143)
!1214 = !DILocation(line: 1057, column: 17, scope: !1143)
!1215 = !DILocation(line: 1057, column: 22, scope: !1143)
!1216 = !DILocation(line: 1058, column: 29, scope: !1143)
!1217 = !DILocation(line: 1058, column: 31, scope: !1143)
!1218 = !DILocation(line: 1058, column: 30, scope: !1143)
!1219 = !DILocation(line: 1058, column: 24, scope: !1143)
!1220 = !DILocation(line: 1058, column: 33, scope: !1143)
!1221 = !DILocation(line: 1058, column: 9, scope: !1143)
!1222 = !DILocation(line: 1058, column: 17, scope: !1143)
!1223 = !DILocation(line: 1058, column: 21, scope: !1143)
!1224 = !DILocation(line: 1059, column: 9, scope: !1143)
!1225 = !DILocation(line: 1062, column: 9, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1131, file: !1, line: 1061, column: 12)
!1227 = distinct !{!1227, !1225}
!1228 = !DILocation(line: 1062, column: 9, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1230, file: !1, discriminator: 1)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !1, line: 1062, column: 9)
!1231 = distinct !{!1231, !1232}
!1232 = !DILocation(line: 1062, column: 9, scope: !1230)
!1233 = !DILocation(line: 1062, column: 9, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1235, file: !1, discriminator: 2)
!1235 = distinct !DILexicalBlock(scope: !1230, file: !1, line: 1062, column: 9)
!1236 = !DILocation(line: 1062, column: 9, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1230, file: !1, discriminator: 3)
!1238 = !DILocation(line: 1064, column: 5, scope: !1132)
!1239 = !DILocalVariable(name: "r_Mn", scope: !1240, file: !1, line: 1074, type: !54)
!1240 = distinct !DILexicalBlock(scope: !1125, file: !1, line: 1065, column: 10)
!1241 = !DILocation(line: 1074, column: 21, scope: !1240)
!1242 = !DILocalVariable(name: "Mnm1", scope: !1240, file: !1, line: 1075, type: !52)
!1243 = !DILocation(line: 1075, column: 14, scope: !1240)
!1244 = !DILocalVariable(name: "Mn", scope: !1240, file: !1, line: 1076, type: !52)
!1245 = !DILocation(line: 1076, column: 14, scope: !1240)
!1246 = !DILocalVariable(name: "Mnp1", scope: !1240, file: !1, line: 1077, type: !52)
!1247 = !DILocation(line: 1077, column: 14, scope: !1240)
!1248 = !DILocalVariable(name: "n", scope: !1240, file: !1, line: 1078, type: !42)
!1249 = !DILocation(line: 1078, column: 11, scope: !1240)
!1250 = !DILocation(line: 1079, column: 25, scope: !1240)
!1251 = !DILocation(line: 1079, column: 26, scope: !1240)
!1252 = !DILocation(line: 1079, column: 30, scope: !1240)
!1253 = !DILocation(line: 1079, column: 7, scope: !1240)
!1254 = !DILocation(line: 1080, column: 17, scope: !1240)
!1255 = !DILocation(line: 1080, column: 10, scope: !1240)
!1256 = !DILocation(line: 1081, column: 12, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 1081, column: 7)
!1258 = !DILocation(line: 1081, column: 11, scope: !1257)
!1259 = !DILocation(line: 1081, column: 16, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1261, file: !1, discriminator: 1)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !1, line: 1081, column: 7)
!1262 = !DILocation(line: 1081, column: 18, scope: !1260)
!1263 = !DILocation(line: 1081, column: 17, scope: !1260)
!1264 = !DILocation(line: 1081, column: 7, scope: !1260)
!1265 = !DILocation(line: 1082, column: 18, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 1081, column: 26)
!1267 = !DILocation(line: 1082, column: 20, scope: !1266)
!1268 = !DILocation(line: 1082, column: 19, scope: !1266)
!1269 = !DILocation(line: 1082, column: 17, scope: !1266)
!1270 = !DILocation(line: 1082, column: 23, scope: !1266)
!1271 = !DILocation(line: 1082, column: 22, scope: !1266)
!1272 = !DILocation(line: 1082, column: 33, scope: !1266)
!1273 = !DILocation(line: 1082, column: 32, scope: !1266)
!1274 = !DILocation(line: 1082, column: 35, scope: !1266)
!1275 = !DILocation(line: 1082, column: 34, scope: !1266)
!1276 = !DILocation(line: 1082, column: 31, scope: !1266)
!1277 = !DILocation(line: 1082, column: 37, scope: !1266)
!1278 = !DILocation(line: 1082, column: 36, scope: !1266)
!1279 = !DILocation(line: 1082, column: 40, scope: !1266)
!1280 = !DILocation(line: 1082, column: 39, scope: !1266)
!1281 = !DILocation(line: 1082, column: 28, scope: !1266)
!1282 = !DILocation(line: 1082, column: 44, scope: !1266)
!1283 = !DILocation(line: 1082, column: 43, scope: !1266)
!1284 = !DILocation(line: 1082, column: 14, scope: !1266)
!1285 = !DILocation(line: 1083, column: 16, scope: !1266)
!1286 = !DILocation(line: 1083, column: 14, scope: !1266)
!1287 = !DILocation(line: 1084, column: 16, scope: !1266)
!1288 = !DILocation(line: 1084, column: 14, scope: !1266)
!1289 = !DILocation(line: 1085, column: 7, scope: !1266)
!1290 = !DILocation(line: 1081, column: 22, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1261, file: !1, discriminator: 2)
!1292 = !DILocation(line: 1081, column: 7, scope: !1291)
!1293 = distinct !{!1293, !1294}
!1294 = !DILocation(line: 1081, column: 7, scope: !1240)
!1295 = !DILocation(line: 1086, column: 22, scope: !1240)
!1296 = !DILocation(line: 1086, column: 7, scope: !1240)
!1297 = !DILocation(line: 1086, column: 15, scope: !1240)
!1298 = !DILocation(line: 1086, column: 20, scope: !1240)
!1299 = !DILocation(line: 1087, column: 27, scope: !1240)
!1300 = !DILocation(line: 1087, column: 22, scope: !1240)
!1301 = !DILocation(line: 1087, column: 45, scope: !1240)
!1302 = !DILocation(line: 1087, column: 40, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 1)
!1304 = !DILocation(line: 1087, column: 38, scope: !1240)
!1305 = !DILocation(line: 1087, column: 31, scope: !1240)
!1306 = !DILocation(line: 1087, column: 61, scope: !1240)
!1307 = !DILocation(line: 1087, column: 72, scope: !1240)
!1308 = !DILocation(line: 1087, column: 65, scope: !1240)
!1309 = !DILocation(line: 1087, column: 51, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1240, file: !1, discriminator: 2)
!1311 = !DILocation(line: 1087, column: 49, scope: !1240)
!1312 = !DILocation(line: 1087, column: 7, scope: !1240)
!1313 = !DILocation(line: 1087, column: 15, scope: !1240)
!1314 = !DILocation(line: 1087, column: 20, scope: !1240)
!1315 = !DILocation(line: 1088, column: 51, scope: !1240)
!1316 = !DILocation(line: 1088, column: 46, scope: !1240)
!1317 = !DILocation(line: 1088, column: 44, scope: !1240)
!1318 = !DILocation(line: 1088, column: 7, scope: !1240)
!1319 = !DILocation(line: 1088, column: 15, scope: !1240)
!1320 = !DILocation(line: 1088, column: 19, scope: !1240)
!1321 = !DILocation(line: 1089, column: 7, scope: !1240)
!1322 = !DILocation(line: 1091, column: 3, scope: !1126)
!1323 = !DILocation(line: 1097, column: 8, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 1097, column: 8)
!1325 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 1092, column: 8)
!1326 = !DILocation(line: 1097, column: 18, scope: !1324)
!1327 = !DILocation(line: 1097, column: 20, scope: !1324)
!1328 = !DILocation(line: 1097, column: 19, scope: !1324)
!1329 = !DILocation(line: 1097, column: 16, scope: !1324)
!1330 = !DILocation(line: 1097, column: 10, scope: !1324)
!1331 = !DILocation(line: 1097, column: 23, scope: !1324)
!1332 = !DILocation(line: 1097, column: 26, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1324, file: !1, discriminator: 1)
!1334 = !DILocation(line: 1097, column: 32, scope: !1333)
!1335 = !DILocation(line: 1097, column: 31, scope: !1333)
!1336 = !DILocation(line: 1097, column: 28, scope: !1333)
!1337 = !DILocation(line: 1097, column: 8, scope: !1333)
!1338 = !DILocalVariable(name: "ex", scope: !1339, file: !1, line: 1102, type: !52)
!1339 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 1097, column: 35)
!1340 = !DILocation(line: 1102, column: 14, scope: !1339)
!1341 = !DILocation(line: 1102, column: 23, scope: !1339)
!1342 = !DILocation(line: 1102, column: 19, scope: !1339)
!1343 = !DILocalVariable(name: "Manp1", scope: !1339, file: !1, line: 1103, type: !52)
!1344 = !DILocation(line: 1103, column: 14, scope: !1339)
!1345 = !DILocation(line: 1103, column: 22, scope: !1339)
!1346 = !DILocalVariable(name: "Man", scope: !1339, file: !1, line: 1104, type: !52)
!1347 = !DILocation(line: 1104, column: 14, scope: !1339)
!1348 = !DILocation(line: 1104, column: 22, scope: !1339)
!1349 = !DILocation(line: 1104, column: 34, scope: !1339)
!1350 = !DILocation(line: 1104, column: 37, scope: !1339)
!1351 = !DILocation(line: 1104, column: 38, scope: !1339)
!1352 = !DILocation(line: 1104, column: 35, scope: !1339)
!1353 = !DILocation(line: 1104, column: 32, scope: !1339)
!1354 = !DILocation(line: 1104, column: 25, scope: !1339)
!1355 = !DILocalVariable(name: "Manm1", scope: !1339, file: !1, line: 1105, type: !52)
!1356 = !DILocation(line: 1105, column: 14, scope: !1339)
!1357 = !DILocalVariable(name: "n", scope: !1339, file: !1, line: 1106, type: !42)
!1358 = !DILocation(line: 1106, column: 11, scope: !1339)
!1359 = !DILocation(line: 1107, column: 13, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 1107, column: 7)
!1361 = !DILocation(line: 1107, column: 14, scope: !1360)
!1362 = !DILocation(line: 1107, column: 12, scope: !1360)
!1363 = !DILocation(line: 1107, column: 11, scope: !1360)
!1364 = !DILocation(line: 1107, column: 18, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1366, file: !1, discriminator: 1)
!1366 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 1107, column: 7)
!1367 = !DILocation(line: 1107, column: 20, scope: !1365)
!1368 = !DILocation(line: 1107, column: 19, scope: !1365)
!1369 = !DILocation(line: 1107, column: 7, scope: !1365)
!1370 = !DILocation(line: 1108, column: 19, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 1107, column: 28)
!1372 = !DILocation(line: 1108, column: 18, scope: !1371)
!1373 = !DILocation(line: 1108, column: 24, scope: !1371)
!1374 = !DILocation(line: 1108, column: 23, scope: !1371)
!1375 = !DILocation(line: 1108, column: 22, scope: !1371)
!1376 = !DILocation(line: 1108, column: 26, scope: !1371)
!1377 = !DILocation(line: 1108, column: 25, scope: !1371)
!1378 = !DILocation(line: 1108, column: 20, scope: !1371)
!1379 = !DILocation(line: 1108, column: 29, scope: !1371)
!1380 = !DILocation(line: 1108, column: 28, scope: !1371)
!1381 = !DILocation(line: 1108, column: 35, scope: !1371)
!1382 = !DILocation(line: 1108, column: 38, scope: !1371)
!1383 = !DILocation(line: 1108, column: 40, scope: !1371)
!1384 = !DILocation(line: 1108, column: 39, scope: !1371)
!1385 = !DILocation(line: 1108, column: 37, scope: !1371)
!1386 = !DILocation(line: 1108, column: 36, scope: !1371)
!1387 = !DILocation(line: 1108, column: 43, scope: !1371)
!1388 = !DILocation(line: 1108, column: 42, scope: !1371)
!1389 = !DILocation(line: 1108, column: 33, scope: !1371)
!1390 = !DILocation(line: 1108, column: 51, scope: !1371)
!1391 = !DILocation(line: 1108, column: 54, scope: !1371)
!1392 = !DILocation(line: 1108, column: 55, scope: !1371)
!1393 = !DILocation(line: 1108, column: 52, scope: !1371)
!1394 = !DILocation(line: 1108, column: 49, scope: !1371)
!1395 = !DILocation(line: 1108, column: 15, scope: !1371)
!1396 = !DILocation(line: 1109, column: 17, scope: !1371)
!1397 = !DILocation(line: 1109, column: 15, scope: !1371)
!1398 = !DILocation(line: 1110, column: 15, scope: !1371)
!1399 = !DILocation(line: 1110, column: 13, scope: !1371)
!1400 = !DILocation(line: 1111, column: 7, scope: !1371)
!1401 = !DILocation(line: 1107, column: 24, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1366, file: !1, discriminator: 2)
!1403 = !DILocation(line: 1107, column: 7, scope: !1402)
!1404 = distinct !{!1404, !1405}
!1405 = !DILocation(line: 1107, column: 7, scope: !1339)
!1406 = !DILocation(line: 1112, column: 22, scope: !1339)
!1407 = !DILocation(line: 1112, column: 7, scope: !1339)
!1408 = !DILocation(line: 1112, column: 15, scope: !1339)
!1409 = !DILocation(line: 1112, column: 20, scope: !1339)
!1410 = !DILocation(line: 1113, column: 28, scope: !1339)
!1411 = !DILocation(line: 1113, column: 23, scope: !1339)
!1412 = !DILocation(line: 1113, column: 31, scope: !1339)
!1413 = !DILocation(line: 1113, column: 38, scope: !1339)
!1414 = !DILocation(line: 1113, column: 63, scope: !1339)
!1415 = !DILocation(line: 1113, column: 58, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1339, file: !1, discriminator: 1)
!1417 = !DILocation(line: 1113, column: 56, scope: !1339)
!1418 = !DILocation(line: 1113, column: 7, scope: !1339)
!1419 = !DILocation(line: 1113, column: 15, scope: !1339)
!1420 = !DILocation(line: 1113, column: 20, scope: !1339)
!1421 = !DILocation(line: 1114, column: 27, scope: !1339)
!1422 = !DILocation(line: 1114, column: 29, scope: !1339)
!1423 = !DILocation(line: 1114, column: 28, scope: !1339)
!1424 = !DILocation(line: 1114, column: 22, scope: !1339)
!1425 = !DILocation(line: 1114, column: 31, scope: !1339)
!1426 = !DILocation(line: 1114, column: 7, scope: !1339)
!1427 = !DILocation(line: 1114, column: 15, scope: !1339)
!1428 = !DILocation(line: 1114, column: 19, scope: !1339)
!1429 = !DILocation(line: 1115, column: 7, scope: !1339)
!1430 = !DILocalVariable(name: "a0", scope: !1431, file: !1, line: 1123, type: !42)
!1431 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 1117, column: 10)
!1432 = !DILocation(line: 1123, column: 11, scope: !1431)
!1433 = !DILocation(line: 1123, column: 32, scope: !1431)
!1434 = !DILocation(line: 1123, column: 34, scope: !1431)
!1435 = !DILocation(line: 1123, column: 33, scope: !1431)
!1436 = !DILocation(line: 1123, column: 30, scope: !1431)
!1437 = !DILocation(line: 1123, column: 22, scope: !1431)
!1438 = !DILocation(line: 1123, column: 16, scope: !1431)
!1439 = !DILocalVariable(name: "Ma0b", scope: !1431, file: !1, line: 1124, type: !52)
!1440 = !DILocation(line: 1124, column: 14, scope: !1431)
!1441 = !DILocalVariable(name: "Ma0bp1", scope: !1431, file: !1, line: 1125, type: !52)
!1442 = !DILocation(line: 1125, column: 14, scope: !1431)
!1443 = !DILocalVariable(name: "Ma0p1b", scope: !1431, file: !1, line: 1126, type: !52)
!1444 = !DILocation(line: 1126, column: 14, scope: !1431)
!1445 = !DILocalVariable(name: "Mnm1", scope: !1431, file: !1, line: 1127, type: !52)
!1446 = !DILocation(line: 1127, column: 14, scope: !1431)
!1447 = !DILocalVariable(name: "Mn", scope: !1431, file: !1, line: 1128, type: !52)
!1448 = !DILocation(line: 1128, column: 14, scope: !1431)
!1449 = !DILocalVariable(name: "Mnp1", scope: !1431, file: !1, line: 1129, type: !52)
!1450 = !DILocation(line: 1129, column: 14, scope: !1431)
!1451 = !DILocalVariable(name: "n", scope: !1431, file: !1, line: 1130, type: !42)
!1452 = !DILocation(line: 1130, column: 11, scope: !1431)
!1453 = !DILocalVariable(name: "ex", scope: !1454, file: !1, line: 1132, type: !52)
!1454 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 1131, column: 7)
!1455 = !DILocation(line: 1132, column: 16, scope: !1454)
!1456 = !DILocation(line: 1132, column: 25, scope: !1454)
!1457 = !DILocation(line: 1132, column: 21, scope: !1454)
!1458 = !DILocalVariable(name: "Ma0np1", scope: !1454, file: !1, line: 1133, type: !52)
!1459 = !DILocation(line: 1133, column: 16, scope: !1454)
!1460 = !DILocation(line: 1133, column: 25, scope: !1454)
!1461 = !DILocalVariable(name: "Ma0n", scope: !1454, file: !1, line: 1134, type: !52)
!1462 = !DILocation(line: 1134, column: 16, scope: !1454)
!1463 = !DILocation(line: 1134, column: 25, scope: !1454)
!1464 = !DILocation(line: 1134, column: 37, scope: !1454)
!1465 = !DILocation(line: 1134, column: 40, scope: !1454)
!1466 = !DILocation(line: 1134, column: 42, scope: !1454)
!1467 = !DILocation(line: 1134, column: 38, scope: !1454)
!1468 = !DILocation(line: 1134, column: 35, scope: !1454)
!1469 = !DILocation(line: 1134, column: 28, scope: !1454)
!1470 = !DILocalVariable(name: "Ma0nm1", scope: !1454, file: !1, line: 1135, type: !52)
!1471 = !DILocation(line: 1135, column: 16, scope: !1454)
!1472 = !DILocation(line: 1136, column: 15, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1454, file: !1, line: 1136, column: 9)
!1474 = !DILocation(line: 1136, column: 17, scope: !1473)
!1475 = !DILocation(line: 1136, column: 14, scope: !1473)
!1476 = !DILocation(line: 1136, column: 13, scope: !1473)
!1477 = !DILocation(line: 1136, column: 21, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1479, file: !1, discriminator: 1)
!1479 = distinct !DILexicalBlock(scope: !1473, file: !1, line: 1136, column: 9)
!1480 = !DILocation(line: 1136, column: 23, scope: !1478)
!1481 = !DILocation(line: 1136, column: 22, scope: !1478)
!1482 = !DILocation(line: 1136, column: 9, scope: !1478)
!1483 = !DILocation(line: 1137, column: 22, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1479, file: !1, line: 1136, column: 31)
!1485 = !DILocation(line: 1137, column: 21, scope: !1484)
!1486 = !DILocation(line: 1137, column: 27, scope: !1484)
!1487 = !DILocation(line: 1137, column: 26, scope: !1484)
!1488 = !DILocation(line: 1137, column: 25, scope: !1484)
!1489 = !DILocation(line: 1137, column: 29, scope: !1484)
!1490 = !DILocation(line: 1137, column: 28, scope: !1484)
!1491 = !DILocation(line: 1137, column: 23, scope: !1484)
!1492 = !DILocation(line: 1137, column: 32, scope: !1484)
!1493 = !DILocation(line: 1137, column: 31, scope: !1484)
!1494 = !DILocation(line: 1137, column: 39, scope: !1484)
!1495 = !DILocation(line: 1137, column: 42, scope: !1484)
!1496 = !DILocation(line: 1137, column: 44, scope: !1484)
!1497 = !DILocation(line: 1137, column: 43, scope: !1484)
!1498 = !DILocation(line: 1137, column: 41, scope: !1484)
!1499 = !DILocation(line: 1137, column: 40, scope: !1484)
!1500 = !DILocation(line: 1137, column: 48, scope: !1484)
!1501 = !DILocation(line: 1137, column: 47, scope: !1484)
!1502 = !DILocation(line: 1137, column: 37, scope: !1484)
!1503 = !DILocation(line: 1137, column: 57, scope: !1484)
!1504 = !DILocation(line: 1137, column: 60, scope: !1484)
!1505 = !DILocation(line: 1137, column: 61, scope: !1484)
!1506 = !DILocation(line: 1137, column: 58, scope: !1484)
!1507 = !DILocation(line: 1137, column: 55, scope: !1484)
!1508 = !DILocation(line: 1137, column: 18, scope: !1484)
!1509 = !DILocation(line: 1138, column: 20, scope: !1484)
!1510 = !DILocation(line: 1138, column: 18, scope: !1484)
!1511 = !DILocation(line: 1139, column: 18, scope: !1484)
!1512 = !DILocation(line: 1139, column: 16, scope: !1484)
!1513 = !DILocation(line: 1140, column: 9, scope: !1484)
!1514 = !DILocation(line: 1136, column: 27, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1479, file: !1, discriminator: 2)
!1516 = !DILocation(line: 1136, column: 9, scope: !1515)
!1517 = distinct !{!1517, !1518}
!1518 = !DILocation(line: 1136, column: 9, scope: !1454)
!1519 = !DILocation(line: 1141, column: 18, scope: !1454)
!1520 = !DILocation(line: 1141, column: 16, scope: !1454)
!1521 = !DILocation(line: 1142, column: 18, scope: !1454)
!1522 = !DILocation(line: 1142, column: 16, scope: !1454)
!1523 = !DILocation(line: 1143, column: 19, scope: !1454)
!1524 = !DILocation(line: 1143, column: 22, scope: !1454)
!1525 = !DILocation(line: 1143, column: 25, scope: !1454)
!1526 = !DILocation(line: 1143, column: 24, scope: !1454)
!1527 = !DILocation(line: 1143, column: 20, scope: !1454)
!1528 = !DILocation(line: 1143, column: 28, scope: !1454)
!1529 = !DILocation(line: 1143, column: 27, scope: !1454)
!1530 = !DILocation(line: 1143, column: 35, scope: !1454)
!1531 = !DILocation(line: 1143, column: 38, scope: !1454)
!1532 = !DILocation(line: 1143, column: 41, scope: !1454)
!1533 = !DILocation(line: 1143, column: 40, scope: !1454)
!1534 = !DILocation(line: 1143, column: 37, scope: !1454)
!1535 = !DILocation(line: 1143, column: 36, scope: !1454)
!1536 = !DILocation(line: 1143, column: 44, scope: !1454)
!1537 = !DILocation(line: 1143, column: 43, scope: !1454)
!1538 = !DILocation(line: 1143, column: 33, scope: !1454)
!1539 = !DILocation(line: 1143, column: 53, scope: !1454)
!1540 = !DILocation(line: 1143, column: 56, scope: !1454)
!1541 = !DILocation(line: 1143, column: 55, scope: !1454)
!1542 = !DILocation(line: 1143, column: 52, scope: !1454)
!1543 = !DILocation(line: 1143, column: 51, scope: !1454)
!1544 = !DILocation(line: 1143, column: 16, scope: !1454)
!1545 = !DILocation(line: 1148, column: 11, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 1148, column: 11)
!1547 = !DILocation(line: 1148, column: 17, scope: !1546)
!1548 = !DILocation(line: 1148, column: 14, scope: !1546)
!1549 = !DILocation(line: 1148, column: 11, scope: !1431)
!1550 = !DILocation(line: 1150, column: 16, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1546, file: !1, line: 1149, column: 9)
!1552 = !DILocation(line: 1150, column: 14, scope: !1551)
!1553 = !DILocation(line: 1151, column: 9, scope: !1551)
!1554 = !DILocation(line: 1152, column: 16, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1546, file: !1, line: 1152, column: 16)
!1556 = !DILocation(line: 1152, column: 19, scope: !1555)
!1557 = !DILocation(line: 1152, column: 25, scope: !1555)
!1558 = !DILocation(line: 1152, column: 22, scope: !1555)
!1559 = !DILocation(line: 1152, column: 16, scope: !1546)
!1560 = !DILocation(line: 1154, column: 16, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 1153, column: 9)
!1562 = !DILocation(line: 1154, column: 14, scope: !1561)
!1563 = !DILocation(line: 1155, column: 9, scope: !1561)
!1564 = !DILocation(line: 1158, column: 18, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 1157, column: 9)
!1566 = !DILocation(line: 1158, column: 16, scope: !1565)
!1567 = !DILocation(line: 1159, column: 18, scope: !1565)
!1568 = !DILocation(line: 1159, column: 16, scope: !1565)
!1569 = !DILocation(line: 1161, column: 17, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !1, line: 1161, column: 11)
!1571 = !DILocation(line: 1161, column: 19, scope: !1570)
!1572 = !DILocation(line: 1161, column: 16, scope: !1570)
!1573 = !DILocation(line: 1161, column: 15, scope: !1570)
!1574 = !DILocation(line: 1161, column: 23, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1576, file: !1, discriminator: 1)
!1576 = distinct !DILexicalBlock(scope: !1570, file: !1, line: 1161, column: 11)
!1577 = !DILocation(line: 1161, column: 25, scope: !1575)
!1578 = !DILocation(line: 1161, column: 24, scope: !1575)
!1579 = !DILocation(line: 1161, column: 11, scope: !1575)
!1580 = !DILocation(line: 1162, column: 22, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !1, line: 1161, column: 33)
!1582 = !DILocation(line: 1162, column: 24, scope: !1581)
!1583 = !DILocation(line: 1162, column: 23, scope: !1581)
!1584 = !DILocation(line: 1162, column: 21, scope: !1581)
!1585 = !DILocation(line: 1162, column: 27, scope: !1581)
!1586 = !DILocation(line: 1162, column: 26, scope: !1581)
!1587 = !DILocation(line: 1162, column: 37, scope: !1581)
!1588 = !DILocation(line: 1162, column: 36, scope: !1581)
!1589 = !DILocation(line: 1162, column: 39, scope: !1581)
!1590 = !DILocation(line: 1162, column: 38, scope: !1581)
!1591 = !DILocation(line: 1162, column: 35, scope: !1581)
!1592 = !DILocation(line: 1162, column: 41, scope: !1581)
!1593 = !DILocation(line: 1162, column: 40, scope: !1581)
!1594 = !DILocation(line: 1162, column: 44, scope: !1581)
!1595 = !DILocation(line: 1162, column: 43, scope: !1581)
!1596 = !DILocation(line: 1162, column: 32, scope: !1581)
!1597 = !DILocation(line: 1162, column: 48, scope: !1581)
!1598 = !DILocation(line: 1162, column: 47, scope: !1581)
!1599 = !DILocation(line: 1162, column: 18, scope: !1581)
!1600 = !DILocation(line: 1163, column: 20, scope: !1581)
!1601 = !DILocation(line: 1163, column: 18, scope: !1581)
!1602 = !DILocation(line: 1164, column: 20, scope: !1581)
!1603 = !DILocation(line: 1164, column: 18, scope: !1581)
!1604 = !DILocation(line: 1165, column: 11, scope: !1581)
!1605 = !DILocation(line: 1161, column: 29, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1576, file: !1, discriminator: 2)
!1607 = !DILocation(line: 1161, column: 11, scope: !1606)
!1608 = distinct !{!1608, !1609}
!1609 = !DILocation(line: 1161, column: 11, scope: !1565)
!1610 = !DILocation(line: 1168, column: 22, scope: !1431)
!1611 = !DILocation(line: 1168, column: 7, scope: !1431)
!1612 = !DILocation(line: 1168, column: 15, scope: !1431)
!1613 = !DILocation(line: 1168, column: 20, scope: !1431)
!1614 = !DILocation(line: 1169, column: 28, scope: !1431)
!1615 = !DILocation(line: 1169, column: 23, scope: !1431)
!1616 = !DILocation(line: 1169, column: 31, scope: !1431)
!1617 = !DILocation(line: 1169, column: 38, scope: !1431)
!1618 = !DILocation(line: 1169, column: 64, scope: !1431)
!1619 = !DILocation(line: 1169, column: 59, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1431, file: !1, discriminator: 1)
!1621 = !DILocation(line: 1169, column: 56, scope: !1431)
!1622 = !DILocation(line: 1169, column: 7, scope: !1431)
!1623 = !DILocation(line: 1169, column: 15, scope: !1431)
!1624 = !DILocation(line: 1169, column: 20, scope: !1431)
!1625 = !DILocation(line: 1170, column: 27, scope: !1431)
!1626 = !DILocation(line: 1170, column: 29, scope: !1431)
!1627 = !DILocation(line: 1170, column: 28, scope: !1431)
!1628 = !DILocation(line: 1170, column: 22, scope: !1431)
!1629 = !DILocation(line: 1170, column: 31, scope: !1431)
!1630 = !DILocation(line: 1170, column: 7, scope: !1431)
!1631 = !DILocation(line: 1170, column: 15, scope: !1431)
!1632 = !DILocation(line: 1170, column: 19, scope: !1431)
!1633 = !DILocation(line: 1171, column: 7, scope: !1431)
!1634 = !DILocation(line: 1174, column: 1, scope: !632)
!1635 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_e", scope: !1, file: !1, line: 1844, type: !279, isLocal: false, isDefinition: true, scopeLine: 1847, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!1636 = !DILocalVariable(name: "a", arg: 1, scope: !1635, file: !1, line: 1844, type: !51)
!1637 = !DILocation(line: 1844, column: 34, scope: !1635)
!1638 = !DILocalVariable(name: "b", arg: 2, scope: !1635, file: !1, line: 1844, type: !51)
!1639 = !DILocation(line: 1844, column: 50, scope: !1635)
!1640 = !DILocalVariable(name: "x", arg: 3, scope: !1635, file: !1, line: 1844, type: !51)
!1641 = !DILocation(line: 1844, column: 66, scope: !1635)
!1642 = !DILocalVariable(name: "result", arg: 4, scope: !1635, file: !1, line: 1845, type: !53)
!1643 = !DILocation(line: 1845, column: 40, scope: !1635)
!1644 = !DILocalVariable(name: "bma", scope: !1635, file: !1, line: 1848, type: !51)
!1645 = !DILocation(line: 1848, column: 16, scope: !1635)
!1646 = !DILocation(line: 1848, column: 22, scope: !1635)
!1647 = !DILocation(line: 1848, column: 26, scope: !1635)
!1648 = !DILocation(line: 1848, column: 24, scope: !1635)
!1649 = !DILocalVariable(name: "rinta", scope: !1635, file: !1, line: 1849, type: !51)
!1650 = !DILocation(line: 1849, column: 16, scope: !1635)
!1651 = !DILocation(line: 1849, column: 30, scope: !1635)
!1652 = !DILocation(line: 1849, column: 32, scope: !1635)
!1653 = !DILocation(line: 1849, column: 24, scope: !1635)
!1654 = !DILocalVariable(name: "rintb", scope: !1635, file: !1, line: 1850, type: !51)
!1655 = !DILocation(line: 1850, column: 16, scope: !1635)
!1656 = !DILocation(line: 1850, column: 30, scope: !1635)
!1657 = !DILocation(line: 1850, column: 32, scope: !1635)
!1658 = !DILocation(line: 1850, column: 24, scope: !1635)
!1659 = !DILocalVariable(name: "rintbma", scope: !1635, file: !1, line: 1851, type: !51)
!1660 = !DILocation(line: 1851, column: 16, scope: !1635)
!1661 = !DILocation(line: 1851, column: 32, scope: !1635)
!1662 = !DILocation(line: 1851, column: 36, scope: !1635)
!1663 = !DILocation(line: 1851, column: 26, scope: !1635)
!1664 = !DILocalVariable(name: "a_integer", scope: !1635, file: !1, line: 1852, type: !50)
!1665 = !DILocation(line: 1852, column: 13, scope: !1635)
!1666 = !DILocation(line: 1852, column: 34, scope: !1635)
!1667 = !DILocation(line: 1852, column: 36, scope: !1635)
!1668 = !DILocation(line: 1852, column: 35, scope: !1635)
!1669 = !DILocation(line: 1852, column: 29, scope: !1635)
!1670 = !DILocation(line: 1852, column: 43, scope: !1635)
!1671 = !DILocation(line: 1852, column: 64, scope: !1635)
!1672 = !DILocation(line: 1852, column: 67, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1635, file: !1, discriminator: 1)
!1674 = !DILocation(line: 1852, column: 73, scope: !1673)
!1675 = !DILocation(line: 1852, column: 83, scope: !1673)
!1676 = !DILocation(line: 1852, column: 86, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1635, file: !1, discriminator: 2)
!1678 = !DILocation(line: 1852, column: 92, scope: !1677)
!1679 = !DILocation(line: 1852, column: 83, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1635, file: !1, discriminator: 3)
!1681 = !DILocation(line: 1852, column: 13, scope: !1680)
!1682 = !DILocalVariable(name: "b_integer", scope: !1635, file: !1, line: 1853, type: !50)
!1683 = !DILocation(line: 1853, column: 13, scope: !1635)
!1684 = !DILocation(line: 1853, column: 34, scope: !1635)
!1685 = !DILocation(line: 1853, column: 36, scope: !1635)
!1686 = !DILocation(line: 1853, column: 35, scope: !1635)
!1687 = !DILocation(line: 1853, column: 29, scope: !1635)
!1688 = !DILocation(line: 1853, column: 43, scope: !1635)
!1689 = !DILocation(line: 1853, column: 64, scope: !1635)
!1690 = !DILocation(line: 1853, column: 67, scope: !1673)
!1691 = !DILocation(line: 1853, column: 73, scope: !1673)
!1692 = !DILocation(line: 1853, column: 83, scope: !1673)
!1693 = !DILocation(line: 1853, column: 86, scope: !1677)
!1694 = !DILocation(line: 1853, column: 92, scope: !1677)
!1695 = !DILocation(line: 1853, column: 83, scope: !1680)
!1696 = !DILocation(line: 1853, column: 13, scope: !1680)
!1697 = !DILocalVariable(name: "bma_integer", scope: !1635, file: !1, line: 1854, type: !50)
!1698 = !DILocation(line: 1854, column: 13, scope: !1635)
!1699 = !DILocation(line: 1854, column: 34, scope: !1635)
!1700 = !DILocation(line: 1854, column: 38, scope: !1635)
!1701 = !DILocation(line: 1854, column: 37, scope: !1635)
!1702 = !DILocation(line: 1854, column: 29, scope: !1635)
!1703 = !DILocation(line: 1854, column: 47, scope: !1635)
!1704 = !DILocation(line: 1854, column: 68, scope: !1635)
!1705 = !DILocation(line: 1854, column: 71, scope: !1673)
!1706 = !DILocation(line: 1854, column: 79, scope: !1673)
!1707 = !DILocation(line: 1854, column: 89, scope: !1673)
!1708 = !DILocation(line: 1854, column: 92, scope: !1677)
!1709 = !DILocation(line: 1854, column: 100, scope: !1677)
!1710 = !DILocation(line: 1854, column: 89, scope: !1680)
!1711 = !DILocation(line: 1854, column: 13, scope: !1680)
!1712 = !DILocalVariable(name: "b_neg_integer", scope: !1635, file: !1, line: 1855, type: !50)
!1713 = !DILocation(line: 1855, column: 13, scope: !1635)
!1714 = !DILocation(line: 1855, column: 33, scope: !1635)
!1715 = !DILocation(line: 1855, column: 35, scope: !1635)
!1716 = !DILocation(line: 1855, column: 42, scope: !1635)
!1717 = !DILocation(line: 1855, column: 45, scope: !1673)
!1718 = !DILocation(line: 1855, column: 42, scope: !1673)
!1719 = !DILocation(line: 1855, column: 42, scope: !1677)
!1720 = !DILocation(line: 1855, column: 13, scope: !1677)
!1721 = !DILocalVariable(name: "a_neg_integer", scope: !1635, file: !1, line: 1856, type: !50)
!1722 = !DILocation(line: 1856, column: 13, scope: !1635)
!1723 = !DILocation(line: 1856, column: 33, scope: !1635)
!1724 = !DILocation(line: 1856, column: 35, scope: !1635)
!1725 = !DILocation(line: 1856, column: 42, scope: !1635)
!1726 = !DILocation(line: 1856, column: 45, scope: !1673)
!1727 = !DILocation(line: 1856, column: 42, scope: !1673)
!1728 = !DILocation(line: 1856, column: 42, scope: !1677)
!1729 = !DILocation(line: 1856, column: 13, scope: !1677)
!1730 = !DILocalVariable(name: "bma_neg_integer", scope: !1635, file: !1, line: 1857, type: !50)
!1731 = !DILocation(line: 1857, column: 13, scope: !1635)
!1732 = !DILocation(line: 1857, column: 33, scope: !1635)
!1733 = !DILocation(line: 1857, column: 37, scope: !1635)
!1734 = !DILocation(line: 1857, column: 44, scope: !1635)
!1735 = !DILocation(line: 1857, column: 48, scope: !1673)
!1736 = !DILocation(line: 1857, column: 44, scope: !1673)
!1737 = !DILocation(line: 1857, column: 44, scope: !1677)
!1738 = !DILocation(line: 1857, column: 13, scope: !1677)
!1739 = !DILocation(line: 1861, column: 6, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 1861, column: 6)
!1741 = !DILocation(line: 1861, column: 8, scope: !1740)
!1742 = !DILocation(line: 1861, column: 6, scope: !1635)
!1743 = !DILocation(line: 1866, column: 5, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 1861, column: 16)
!1745 = !DILocation(line: 1866, column: 13, scope: !1744)
!1746 = !DILocation(line: 1866, column: 17, scope: !1744)
!1747 = !DILocation(line: 1867, column: 5, scope: !1744)
!1748 = !DILocation(line: 1867, column: 13, scope: !1744)
!1749 = !DILocation(line: 1867, column: 17, scope: !1744)
!1750 = !DILocation(line: 1868, column: 5, scope: !1744)
!1751 = !DILocation(line: 1870, column: 11, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 1870, column: 11)
!1753 = !DILocation(line: 1870, column: 13, scope: !1752)
!1754 = !DILocation(line: 1870, column: 11, scope: !1740)
!1755 = !DILocation(line: 1871, column: 5, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !1, line: 1870, column: 21)
!1757 = distinct !{!1757, !1755}
!1758 = !DILocation(line: 1871, column: 5, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1760, file: !1, discriminator: 1)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 1871, column: 5)
!1761 = distinct !{!1761, !1762}
!1762 = !DILocation(line: 1871, column: 5, scope: !1760)
!1763 = !DILocation(line: 1871, column: 5, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1765, file: !1, discriminator: 2)
!1765 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 1871, column: 5)
!1766 = !DILocation(line: 1871, column: 5, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1760, file: !1, discriminator: 3)
!1768 = !DILocation(line: 1872, column: 3, scope: !1756)
!1769 = !DILocation(line: 1873, column: 11, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1752, file: !1, line: 1873, column: 11)
!1771 = !DILocation(line: 1873, column: 13, scope: !1770)
!1772 = !DILocation(line: 1873, column: 11, scope: !1752)
!1773 = !DILocation(line: 1874, column: 5, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 1873, column: 21)
!1775 = !DILocation(line: 1874, column: 13, scope: !1774)
!1776 = !DILocation(line: 1874, column: 17, scope: !1774)
!1777 = !DILocation(line: 1875, column: 5, scope: !1774)
!1778 = !DILocation(line: 1875, column: 13, scope: !1774)
!1779 = !DILocation(line: 1875, column: 17, scope: !1774)
!1780 = !DILocation(line: 1876, column: 5, scope: !1774)
!1781 = !DILocation(line: 1878, column: 11, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 1878, column: 11)
!1783 = !DILocation(line: 1878, column: 16, scope: !1782)
!1784 = !DILocation(line: 1878, column: 13, scope: !1782)
!1785 = !DILocation(line: 1878, column: 11, scope: !1770)
!1786 = !DILocation(line: 1883, column: 25, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !1, line: 1878, column: 19)
!1788 = !DILocation(line: 1883, column: 28, scope: !1787)
!1789 = !DILocation(line: 1883, column: 12, scope: !1787)
!1790 = !DILocation(line: 1883, column: 5, scope: !1787)
!1791 = !DILocation(line: 1884, column: 18, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1782, file: !1, line: 1884, column: 13)
!1793 = !DILocation(line: 1884, column: 13, scope: !1792)
!1794 = !DILocation(line: 1884, column: 21, scope: !1792)
!1795 = !DILocation(line: 1884, column: 42, scope: !1792)
!1796 = !DILocation(line: 1884, column: 50, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1792, file: !1, discriminator: 1)
!1798 = !DILocation(line: 1884, column: 45, scope: !1797)
!1799 = !DILocation(line: 1884, column: 53, scope: !1797)
!1800 = !DILocation(line: 1884, column: 13, scope: !1797)
!1801 = !DILocalVariable(name: "exm1", scope: !1802, file: !1, line: 1892, type: !54)
!1802 = distinct !DILexicalBlock(scope: !1792, file: !1, line: 1884, column: 75)
!1803 = !DILocation(line: 1892, column: 19, scope: !1802)
!1804 = !DILocalVariable(name: "stat_e", scope: !1802, file: !1, line: 1893, type: !42)
!1805 = !DILocation(line: 1893, column: 9, scope: !1802)
!1806 = !DILocation(line: 1893, column: 33, scope: !1802)
!1807 = !DILocation(line: 1893, column: 18, scope: !1802)
!1808 = !DILocalVariable(name: "sa", scope: !1802, file: !1, line: 1894, type: !52)
!1809 = !DILocation(line: 1894, column: 12, scope: !1802)
!1810 = !DILocation(line: 1894, column: 19, scope: !1802)
!1811 = !DILocation(line: 1894, column: 21, scope: !1802)
!1812 = !DILocalVariable(name: "sb", scope: !1802, file: !1, line: 1895, type: !52)
!1813 = !DILocation(line: 1895, column: 12, scope: !1802)
!1814 = !DILocation(line: 1895, column: 19, scope: !1802)
!1815 = !DILocation(line: 1895, column: 21, scope: !1802)
!1816 = !DILocalVariable(name: "lnab", scope: !1802, file: !1, line: 1896, type: !52)
!1817 = !DILocation(line: 1896, column: 12, scope: !1802)
!1818 = !DILocation(line: 1896, column: 28, scope: !1802)
!1819 = !DILocation(line: 1896, column: 30, scope: !1802)
!1820 = !DILocation(line: 1896, column: 29, scope: !1802)
!1821 = !DILocation(line: 1896, column: 23, scope: !1802)
!1822 = !DILocation(line: 1896, column: 19, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1802, file: !1, discriminator: 1)
!1824 = !DILocalVariable(name: "hx", scope: !1802, file: !1, line: 1897, type: !54)
!1825 = !DILocation(line: 1897, column: 19, scope: !1802)
!1826 = !DILocalVariable(name: "stat_hx", scope: !1802, file: !1, line: 1898, type: !42)
!1827 = !DILocation(line: 1898, column: 9, scope: !1802)
!1828 = !DILocation(line: 1898, column: 41, scope: !1802)
!1829 = !DILocation(line: 1898, column: 70, scope: !1802)
!1830 = !DILocation(line: 1898, column: 65, scope: !1802)
!1831 = !DILocation(line: 1898, column: 63, scope: !1802)
!1832 = !DILocation(line: 1899, column: 41, scope: !1802)
!1833 = !DILocation(line: 1899, column: 46, scope: !1802)
!1834 = !DILocation(line: 1899, column: 44, scope: !1802)
!1835 = !DILocation(line: 1899, column: 56, scope: !1802)
!1836 = !DILocation(line: 1899, column: 49, scope: !1802)
!1837 = !DILocation(line: 1899, column: 66, scope: !1802)
!1838 = !DILocation(line: 1898, column: 19, scope: !1823)
!1839 = !DILocation(line: 1901, column: 23, scope: !1802)
!1840 = !DILocation(line: 1901, column: 27, scope: !1802)
!1841 = !DILocation(line: 1901, column: 20, scope: !1802)
!1842 = !DILocation(line: 1901, column: 47, scope: !1823)
!1843 = !DILocation(line: 1901, column: 20, scope: !1823)
!1844 = !DILocation(line: 1901, column: 62, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1802, file: !1, discriminator: 2)
!1846 = !DILocation(line: 1901, column: 57, scope: !1845)
!1847 = !DILocation(line: 1901, column: 20, scope: !1845)
!1848 = !DILocation(line: 1901, column: 20, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1802, file: !1, discriminator: 3)
!1850 = !DILocation(line: 1901, column: 5, scope: !1849)
!1851 = !DILocation(line: 1901, column: 13, scope: !1849)
!1852 = !DILocation(line: 1901, column: 17, scope: !1849)
!1853 = !DILocation(line: 1902, column: 22, scope: !1802)
!1854 = !DILocation(line: 1902, column: 5, scope: !1802)
!1855 = !DILocation(line: 1902, column: 13, scope: !1802)
!1856 = !DILocation(line: 1902, column: 17, scope: !1802)
!1857 = !DILocation(line: 1903, column: 12, scope: !1802)
!1858 = !DILocation(line: 1903, column: 12, scope: !1823)
!1859 = !DILocation(line: 1903, column: 12, scope: !1845)
!1860 = !DILocation(line: 1903, column: 12, scope: !1849)
!1861 = !DILocation(line: 1903, column: 12, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1802, file: !1, discriminator: 4)
!1863 = !DILocation(line: 1903, column: 12, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1802, file: !1, discriminator: 5)
!1865 = !DILocation(line: 1903, column: 12, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1802, file: !1, discriminator: 6)
!1867 = !DILocation(line: 1903, column: 5, scope: !1866)
!1868 = !DILocation(line: 1904, column: 19, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1792, file: !1, line: 1904, column: 14)
!1870 = !DILocation(line: 1904, column: 14, scope: !1869)
!1871 = !DILocation(line: 1904, column: 22, scope: !1869)
!1872 = !DILocation(line: 1904, column: 43, scope: !1869)
!1873 = !DILocation(line: 1904, column: 51, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1869, file: !1, discriminator: 1)
!1875 = !DILocation(line: 1904, column: 53, scope: !1874)
!1876 = !DILocation(line: 1904, column: 52, scope: !1874)
!1877 = !DILocation(line: 1904, column: 46, scope: !1874)
!1878 = !DILocation(line: 1904, column: 56, scope: !1874)
!1879 = !DILocation(line: 1904, column: 14, scope: !1874)
!1880 = !DILocalVariable(name: "m_arg", scope: !1881, file: !1, line: 1907, type: !51)
!1881 = distinct !DILexicalBlock(scope: !1869, file: !1, line: 1904, column: 61)
!1882 = !DILocation(line: 1907, column: 20, scope: !1881)
!1883 = !DILocation(line: 1907, column: 37, scope: !1881)
!1884 = !DILocation(line: 1907, column: 36, scope: !1881)
!1885 = !DILocation(line: 1907, column: 31, scope: !1881)
!1886 = !DILocalVariable(name: "F_renorm", scope: !1881, file: !1, line: 1908, type: !54)
!1887 = !DILocation(line: 1908, column: 21, scope: !1881)
!1888 = !DILocalVariable(name: "stat_F", scope: !1881, file: !1, line: 1909, type: !42)
!1889 = !DILocation(line: 1909, column: 11, scope: !1881)
!1890 = !DILocation(line: 1909, column: 41, scope: !1881)
!1891 = !DILocation(line: 1909, column: 44, scope: !1881)
!1892 = !DILocation(line: 1909, column: 20, scope: !1881)
!1893 = !DILocalVariable(name: "stat_m", scope: !1881, file: !1, line: 1910, type: !42)
!1894 = !DILocation(line: 1910, column: 11, scope: !1881)
!1895 = !DILocation(line: 1910, column: 42, scope: !1881)
!1896 = !DILocation(line: 1910, column: 73, scope: !1881)
!1897 = !DILocation(line: 1910, column: 71, scope: !1881)
!1898 = !DILocation(line: 1911, column: 58, scope: !1881)
!1899 = !DILocation(line: 1911, column: 48, scope: !1881)
!1900 = !DILocation(line: 1911, column: 76, scope: !1881)
!1901 = !DILocation(line: 1911, column: 66, scope: !1881)
!1902 = !DILocation(line: 1912, column: 45, scope: !1881)
!1903 = !DILocation(line: 1910, column: 20, scope: !1881)
!1904 = !DILocation(line: 1913, column: 14, scope: !1881)
!1905 = !DILocation(line: 1913, column: 14, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1881, file: !1, discriminator: 1)
!1907 = !DILocation(line: 1913, column: 14, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1881, file: !1, discriminator: 2)
!1909 = !DILocation(line: 1913, column: 14, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1881, file: !1, discriminator: 3)
!1911 = !DILocation(line: 1913, column: 14, scope: !1912)
!1912 = !DILexicalBlockFile(scope: !1881, file: !1, discriminator: 4)
!1913 = !DILocation(line: 1913, column: 14, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1881, file: !1, discriminator: 5)
!1915 = !DILocation(line: 1913, column: 14, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1881, file: !1, discriminator: 6)
!1917 = !DILocation(line: 1913, column: 7, scope: !1916)
!1918 = !DILocation(line: 1915, column: 11, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1869, file: !1, line: 1915, column: 11)
!1920 = !DILocation(line: 1915, column: 21, scope: !1919)
!1921 = !DILocation(line: 1915, column: 24, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1919, file: !1, discriminator: 1)
!1923 = !DILocation(line: 1915, column: 11, scope: !1922)
!1924 = !DILocation(line: 1919, column: 41, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 1915, column: 35)
!1926 = !DILocation(line: 1919, column: 36, scope: !1925)
!1927 = !DILocation(line: 1919, column: 53, scope: !1925)
!1928 = !DILocation(line: 1919, column: 48, scope: !1925)
!1929 = !DILocation(line: 1919, column: 60, scope: !1925)
!1930 = !DILocation(line: 1919, column: 63, scope: !1925)
!1931 = !DILocation(line: 1919, column: 12, scope: !1925)
!1932 = !DILocation(line: 1919, column: 5, scope: !1925)
!1933 = !DILocation(line: 1921, column: 11, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 1921, column: 11)
!1935 = !DILocation(line: 1921, column: 25, scope: !1934)
!1936 = !DILocation(line: 1921, column: 30, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1934, file: !1, discriminator: 1)
!1938 = !DILocation(line: 1921, column: 44, scope: !1937)
!1939 = !DILocation(line: 1921, column: 47, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1934, file: !1, discriminator: 2)
!1941 = !DILocation(line: 1921, column: 51, scope: !1940)
!1942 = !DILocation(line: 1921, column: 49, scope: !1940)
!1943 = !DILocation(line: 1921, column: 11, scope: !1940)
!1944 = !DILocation(line: 1925, column: 5, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 1921, column: 55)
!1946 = distinct !{!1946, !1944}
!1947 = !DILocation(line: 1925, column: 5, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1949, file: !1, discriminator: 1)
!1949 = distinct !DILexicalBlock(scope: !1945, file: !1, line: 1925, column: 5)
!1950 = distinct !{!1950, !1951}
!1951 = !DILocation(line: 1925, column: 5, scope: !1949)
!1952 = !DILocation(line: 1925, column: 5, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1954, file: !1, discriminator: 2)
!1954 = distinct !DILexicalBlock(scope: !1949, file: !1, line: 1925, column: 5)
!1955 = !DILocation(line: 1925, column: 5, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1949, file: !1, discriminator: 3)
!1957 = !DILocation(line: 1926, column: 3, scope: !1945)
!1958 = !DILocation(line: 1927, column: 11, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 1927, column: 11)
!1960 = !DILocation(line: 1927, column: 11, scope: !1934)
!1961 = !DILocation(line: 1928, column: 41, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !1, line: 1927, column: 26)
!1963 = !DILocation(line: 1928, column: 36, scope: !1962)
!1964 = !DILocation(line: 1928, column: 48, scope: !1962)
!1965 = !DILocation(line: 1928, column: 51, scope: !1962)
!1966 = !DILocation(line: 1928, column: 54, scope: !1962)
!1967 = !DILocation(line: 1928, column: 12, scope: !1962)
!1968 = !DILocation(line: 1928, column: 5, scope: !1962)
!1969 = !DILocation(line: 1930, column: 11, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1959, file: !1, line: 1930, column: 11)
!1971 = !DILocation(line: 1930, column: 13, scope: !1970)
!1972 = !DILocation(line: 1930, column: 11, scope: !1959)
!1973 = !DILocation(line: 1931, column: 16, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !1, line: 1931, column: 8)
!1975 = distinct !DILexicalBlock(scope: !1970, file: !1, line: 1930, column: 20)
!1976 = !DILocation(line: 1931, column: 13, scope: !1974)
!1977 = !DILocation(line: 1931, column: 18, scope: !1974)
!1978 = !DILocation(line: 1931, column: 21, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1974, file: !1, discriminator: 1)
!1980 = !DILocation(line: 1931, column: 23, scope: !1979)
!1981 = !DILocation(line: 1931, column: 8, scope: !1979)
!1982 = !DILocation(line: 1934, column: 38, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1974, file: !1, line: 1931, column: 31)
!1984 = !DILocation(line: 1934, column: 41, scope: !1983)
!1985 = !DILocation(line: 1934, column: 44, scope: !1983)
!1986 = !DILocation(line: 1934, column: 47, scope: !1983)
!1987 = !DILocation(line: 1934, column: 14, scope: !1983)
!1988 = !DILocation(line: 1934, column: 7, scope: !1983)
!1989 = !DILocation(line: 1936, column: 13, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1974, file: !1, line: 1936, column: 13)
!1991 = !DILocation(line: 1936, column: 13, scope: !1974)
!1992 = !DILocalVariable(name: "Kummer_1F1", scope: !1993, file: !1, line: 1940, type: !54)
!1993 = distinct !DILexicalBlock(scope: !1990, file: !1, line: 1936, column: 30)
!1994 = !DILocation(line: 1940, column: 21, scope: !1993)
!1995 = !DILocalVariable(name: "stat_K", scope: !1993, file: !1, line: 1941, type: !42)
!1996 = !DILocation(line: 1941, column: 11, scope: !1993)
!1997 = !DILocation(line: 1941, column: 49, scope: !1993)
!1998 = !DILocation(line: 1941, column: 44, scope: !1993)
!1999 = !DILocation(line: 1941, column: 58, scope: !1993)
!2000 = !DILocation(line: 1941, column: 62, scope: !1993)
!2001 = !DILocation(line: 1941, column: 61, scope: !1993)
!2002 = !DILocation(line: 1941, column: 20, scope: !1993)
!2003 = !DILocalVariable(name: "stat_e", scope: !1993, file: !1, line: 1942, type: !42)
!2004 = !DILocation(line: 1942, column: 11, scope: !1993)
!2005 = !DILocation(line: 1942, column: 42, scope: !1993)
!2006 = !DILocation(line: 1942, column: 68, scope: !1993)
!2007 = !DILocation(line: 1942, column: 63, scope: !1993)
!2008 = !DILocation(line: 1942, column: 61, scope: !1993)
!2009 = !DILocation(line: 1943, column: 56, scope: !1993)
!2010 = !DILocation(line: 1943, column: 72, scope: !1993)
!2011 = !DILocation(line: 1944, column: 45, scope: !1993)
!2012 = !DILocation(line: 1942, column: 20, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !1993, file: !1, discriminator: 1)
!2014 = !DILocation(line: 1945, column: 14, scope: !1993)
!2015 = !DILocation(line: 1945, column: 14, scope: !2013)
!2016 = !DILocation(line: 1945, column: 14, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !1993, file: !1, discriminator: 2)
!2018 = !DILocation(line: 1945, column: 14, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !1993, file: !1, discriminator: 3)
!2020 = !DILocation(line: 1945, column: 14, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !1993, file: !1, discriminator: 4)
!2022 = !DILocation(line: 1945, column: 14, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !1993, file: !1, discriminator: 5)
!2024 = !DILocation(line: 1945, column: 14, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !1993, file: !1, discriminator: 6)
!2026 = !DILocation(line: 1945, column: 7, scope: !2025)
!2027 = !DILocation(line: 1947, column: 13, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1990, file: !1, line: 1947, column: 13)
!2029 = !DILocation(line: 1947, column: 15, scope: !2028)
!2030 = !DILocation(line: 1947, column: 21, scope: !2028)
!2031 = !DILocation(line: 1947, column: 29, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2028, file: !1, discriminator: 1)
!2033 = !DILocation(line: 1947, column: 24, scope: !2032)
!2034 = !DILocation(line: 1947, column: 32, scope: !2032)
!2035 = !DILocation(line: 1947, column: 13, scope: !2032)
!2036 = !DILocalVariable(name: "Kummer_1F1", scope: !2037, file: !1, line: 1953, type: !54)
!2037 = distinct !DILexicalBlock(scope: !2028, file: !1, line: 1947, column: 53)
!2038 = !DILocation(line: 1953, column: 21, scope: !2037)
!2039 = !DILocalVariable(name: "stat_K", scope: !2037, file: !1, line: 1954, type: !42)
!2040 = !DILocation(line: 1954, column: 11, scope: !2037)
!2041 = !DILocation(line: 1954, column: 38, scope: !2037)
!2042 = !DILocation(line: 1954, column: 40, scope: !2037)
!2043 = !DILocation(line: 1954, column: 39, scope: !2037)
!2044 = !DILocation(line: 1954, column: 43, scope: !2037)
!2045 = !DILocation(line: 1954, column: 47, scope: !2037)
!2046 = !DILocation(line: 1954, column: 46, scope: !2037)
!2047 = !DILocation(line: 1954, column: 20, scope: !2037)
!2048 = !DILocalVariable(name: "stat_e", scope: !2037, file: !1, line: 1955, type: !42)
!2049 = !DILocation(line: 1955, column: 11, scope: !2037)
!2050 = !DILocation(line: 1955, column: 42, scope: !2037)
!2051 = !DILocation(line: 1955, column: 68, scope: !2037)
!2052 = !DILocation(line: 1955, column: 63, scope: !2037)
!2053 = !DILocation(line: 1955, column: 61, scope: !2037)
!2054 = !DILocation(line: 1956, column: 56, scope: !2037)
!2055 = !DILocation(line: 1956, column: 72, scope: !2037)
!2056 = !DILocation(line: 1957, column: 45, scope: !2037)
!2057 = !DILocation(line: 1955, column: 20, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2037, file: !1, discriminator: 1)
!2059 = !DILocation(line: 1958, column: 14, scope: !2037)
!2060 = !DILocation(line: 1958, column: 14, scope: !2058)
!2061 = !DILocation(line: 1958, column: 14, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2037, file: !1, discriminator: 2)
!2063 = !DILocation(line: 1958, column: 14, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2037, file: !1, discriminator: 3)
!2065 = !DILocation(line: 1958, column: 14, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !2037, file: !1, discriminator: 4)
!2067 = !DILocation(line: 1958, column: 14, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2037, file: !1, discriminator: 5)
!2069 = !DILocation(line: 1958, column: 14, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2037, file: !1, discriminator: 6)
!2071 = !DILocation(line: 1958, column: 7, scope: !2070)
!2072 = !DILocation(line: 1960, column: 14, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2028, file: !1, line: 1960, column: 14)
!2074 = !DILocation(line: 1960, column: 16, scope: !2073)
!2075 = !DILocation(line: 1960, column: 14, scope: !2028)
!2076 = !DILocation(line: 1962, column: 32, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !1, line: 1960, column: 21)
!2078 = !DILocation(line: 1962, column: 35, scope: !2077)
!2079 = !DILocation(line: 1962, column: 38, scope: !2077)
!2080 = !DILocation(line: 1962, column: 41, scope: !2077)
!2081 = !DILocation(line: 1962, column: 14, scope: !2077)
!2082 = !DILocation(line: 1962, column: 7, scope: !2077)
!2083 = !DILocation(line: 1964, column: 41, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2073, file: !1, line: 1963, column: 12)
!2085 = !DILocation(line: 1964, column: 44, scope: !2084)
!2086 = !DILocation(line: 1964, column: 47, scope: !2084)
!2087 = !DILocation(line: 1964, column: 50, scope: !2084)
!2088 = !DILocation(line: 1964, column: 14, scope: !2084)
!2089 = !DILocation(line: 1964, column: 7, scope: !2084)
!2090 = !DILocation(line: 1970, column: 8, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !1, line: 1970, column: 8)
!2092 = distinct !DILexicalBlock(scope: !1970, file: !1, line: 1967, column: 8)
!2093 = !DILocation(line: 1970, column: 24, scope: !2091)
!2094 = !DILocation(line: 1970, column: 27, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2091, file: !1, discriminator: 1)
!2096 = !DILocation(line: 1970, column: 29, scope: !2095)
!2097 = !DILocation(line: 1970, column: 8, scope: !2095)
!2098 = !DILocalVariable(name: "K", scope: !2099, file: !1, line: 1974, type: !54)
!2099 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 1970, column: 36)
!2100 = !DILocation(line: 1974, column: 21, scope: !2099)
!2101 = !DILocalVariable(name: "stat_K", scope: !2099, file: !1, line: 1975, type: !42)
!2102 = !DILocation(line: 1975, column: 11, scope: !2099)
!2103 = !DILocalVariable(name: "stat_e", scope: !2099, file: !1, line: 1976, type: !42)
!2104 = !DILocation(line: 1976, column: 11, scope: !2099)
!2105 = !DILocation(line: 1977, column: 10, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2099, file: !1, line: 1977, column: 10)
!2107 = !DILocation(line: 1977, column: 12, scope: !2106)
!2108 = !DILocation(line: 1977, column: 10, scope: !2099)
!2109 = !DILocation(line: 1983, column: 48, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2106, file: !1, line: 1977, column: 19)
!2111 = !DILocation(line: 1983, column: 43, scope: !2110)
!2112 = !DILocation(line: 1983, column: 57, scope: !2110)
!2113 = !DILocation(line: 1983, column: 61, scope: !2110)
!2114 = !DILocation(line: 1983, column: 60, scope: !2110)
!2115 = !DILocation(line: 1983, column: 18, scope: !2110)
!2116 = !DILocation(line: 1983, column: 16, scope: !2110)
!2117 = !DILocation(line: 1984, column: 7, scope: !2110)
!2118 = !DILocation(line: 1987, column: 47, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2106, file: !1, line: 1985, column: 12)
!2120 = !DILocation(line: 1987, column: 42, scope: !2119)
!2121 = !DILocation(line: 1987, column: 56, scope: !2119)
!2122 = !DILocation(line: 1987, column: 60, scope: !2119)
!2123 = !DILocation(line: 1987, column: 59, scope: !2119)
!2124 = !DILocation(line: 1987, column: 18, scope: !2119)
!2125 = !DILocation(line: 1987, column: 16, scope: !2119)
!2126 = !DILocation(line: 1989, column: 38, scope: !2099)
!2127 = !DILocation(line: 1989, column: 64, scope: !2099)
!2128 = !DILocation(line: 1989, column: 59, scope: !2099)
!2129 = !DILocation(line: 1989, column: 57, scope: !2099)
!2130 = !DILocation(line: 1990, column: 43, scope: !2099)
!2131 = !DILocation(line: 1990, column: 50, scope: !2099)
!2132 = !DILocation(line: 1991, column: 41, scope: !2099)
!2133 = !DILocation(line: 1989, column: 16, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2099, file: !1, discriminator: 1)
!2135 = !DILocation(line: 1989, column: 14, scope: !2099)
!2136 = !DILocation(line: 1992, column: 14, scope: !2099)
!2137 = !DILocation(line: 1992, column: 14, scope: !2134)
!2138 = !DILocation(line: 1992, column: 14, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2099, file: !1, discriminator: 2)
!2140 = !DILocation(line: 1992, column: 14, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2099, file: !1, discriminator: 3)
!2142 = !DILocation(line: 1992, column: 14, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2099, file: !1, discriminator: 4)
!2144 = !DILocation(line: 1992, column: 14, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2099, file: !1, discriminator: 5)
!2146 = !DILocation(line: 1992, column: 14, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2099, file: !1, discriminator: 6)
!2148 = !DILocation(line: 1992, column: 7, scope: !2147)
!2149 = !DILocation(line: 1994, column: 13, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 1994, column: 13)
!2151 = !DILocation(line: 1994, column: 15, scope: !2150)
!2152 = !DILocation(line: 1994, column: 13, scope: !2091)
!2153 = !DILocalVariable(name: "K", scope: !2154, file: !1, line: 1997, type: !54)
!2154 = distinct !DILexicalBlock(scope: !2150, file: !1, line: 1994, column: 22)
!2155 = !DILocation(line: 1997, column: 21, scope: !2154)
!2156 = !DILocalVariable(name: "stat_K", scope: !2154, file: !1, line: 1998, type: !42)
!2157 = !DILocation(line: 1998, column: 11, scope: !2154)
!2158 = !DILocation(line: 1998, column: 38, scope: !2154)
!2159 = !DILocation(line: 1998, column: 40, scope: !2154)
!2160 = !DILocation(line: 1998, column: 39, scope: !2154)
!2161 = !DILocation(line: 1998, column: 43, scope: !2154)
!2162 = !DILocation(line: 1998, column: 47, scope: !2154)
!2163 = !DILocation(line: 1998, column: 46, scope: !2154)
!2164 = !DILocation(line: 1998, column: 20, scope: !2154)
!2165 = !DILocalVariable(name: "stat_e", scope: !2154, file: !1, line: 1999, type: !42)
!2166 = !DILocation(line: 1999, column: 11, scope: !2154)
!2167 = !DILocation(line: 1999, column: 42, scope: !2154)
!2168 = !DILocation(line: 1999, column: 68, scope: !2154)
!2169 = !DILocation(line: 1999, column: 63, scope: !2154)
!2170 = !DILocation(line: 1999, column: 61, scope: !2154)
!2171 = !DILocation(line: 2000, column: 47, scope: !2154)
!2172 = !DILocation(line: 2000, column: 54, scope: !2154)
!2173 = !DILocation(line: 2001, column: 45, scope: !2154)
!2174 = !DILocation(line: 1999, column: 20, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2154, file: !1, discriminator: 1)
!2176 = !DILocation(line: 2002, column: 14, scope: !2154)
!2177 = !DILocation(line: 2002, column: 14, scope: !2175)
!2178 = !DILocation(line: 2002, column: 14, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2154, file: !1, discriminator: 2)
!2180 = !DILocation(line: 2002, column: 14, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2154, file: !1, discriminator: 3)
!2182 = !DILocation(line: 2002, column: 14, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2154, file: !1, discriminator: 4)
!2184 = !DILocation(line: 2002, column: 14, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2154, file: !1, discriminator: 5)
!2186 = !DILocation(line: 2002, column: 14, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2154, file: !1, discriminator: 6)
!2188 = !DILocation(line: 2002, column: 7, scope: !2187)
!2189 = !DILocation(line: 2005, column: 32, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2150, file: !1, line: 2004, column: 10)
!2191 = !DILocation(line: 2005, column: 35, scope: !2190)
!2192 = !DILocation(line: 2005, column: 38, scope: !2190)
!2193 = !DILocation(line: 2005, column: 41, scope: !2190)
!2194 = !DILocation(line: 2005, column: 14, scope: !2190)
!2195 = !DILocation(line: 2005, column: 7, scope: !2190)
!2196 = !DILocation(line: 2008, column: 1, scope: !1635)
!2197 = distinct !DISubprogram(name: "hyperg_1F1_renorm_b0", scope: !1, file: !1, line: 416, type: !2198, isLocal: true, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!42, !51, !51, !53}
!2200 = !DILocalVariable(name: "a", arg: 1, scope: !2197, file: !1, line: 416, type: !51)
!2201 = !DILocation(line: 416, column: 35, scope: !2197)
!2202 = !DILocalVariable(name: "x", arg: 2, scope: !2197, file: !1, line: 416, type: !51)
!2203 = !DILocation(line: 416, column: 51, scope: !2197)
!2204 = !DILocalVariable(name: "result", arg: 3, scope: !2197, file: !1, line: 416, type: !53)
!2205 = !DILocation(line: 416, column: 70, scope: !2197)
!2206 = !DILocalVariable(name: "eta", scope: !2197, file: !1, line: 418, type: !52)
!2207 = !DILocation(line: 418, column: 10, scope: !2197)
!2208 = !DILocation(line: 418, column: 16, scope: !2197)
!2209 = !DILocation(line: 418, column: 18, scope: !2197)
!2210 = !DILocation(line: 418, column: 17, scope: !2197)
!2211 = !DILocation(line: 419, column: 6, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2197, file: !1, line: 419, column: 6)
!2213 = !DILocation(line: 419, column: 10, scope: !2212)
!2214 = !DILocation(line: 419, column: 6, scope: !2197)
!2215 = !DILocalVariable(name: "root_eta", scope: !2216, file: !1, line: 420, type: !52)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !1, line: 419, column: 17)
!2217 = !DILocation(line: 420, column: 12, scope: !2216)
!2218 = !DILocation(line: 420, column: 28, scope: !2216)
!2219 = !DILocation(line: 420, column: 23, scope: !2216)
!2220 = !DILocalVariable(name: "I1_scaled", scope: !2216, file: !1, line: 421, type: !54)
!2221 = !DILocation(line: 421, column: 19, scope: !2216)
!2222 = !DILocalVariable(name: "stat_I", scope: !2216, file: !1, line: 422, type: !42)
!2223 = !DILocation(line: 422, column: 9, scope: !2216)
!2224 = !DILocation(line: 422, column: 48, scope: !2216)
!2225 = !DILocation(line: 422, column: 47, scope: !2216)
!2226 = !DILocation(line: 422, column: 18, scope: !2216)
!2227 = !DILocation(line: 423, column: 18, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2216, file: !1, line: 423, column: 8)
!2229 = !DILocation(line: 423, column: 22, scope: !2228)
!2230 = !DILocation(line: 423, column: 8, scope: !2216)
!2231 = !DILocation(line: 424, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2228, file: !1, line: 423, column: 30)
!2233 = !DILocation(line: 424, column: 15, scope: !2232)
!2234 = !DILocation(line: 424, column: 19, scope: !2232)
!2235 = !DILocation(line: 425, column: 7, scope: !2232)
!2236 = !DILocation(line: 425, column: 15, scope: !2232)
!2237 = !DILocation(line: 425, column: 19, scope: !2232)
!2238 = !DILocation(line: 426, column: 14, scope: !2232)
!2239 = !DILocation(line: 426, column: 14, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2232, file: !1, discriminator: 1)
!2241 = !DILocation(line: 426, column: 14, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2232, file: !1, discriminator: 2)
!2243 = !DILocation(line: 426, column: 14, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2232, file: !1, discriminator: 3)
!2245 = !DILocation(line: 426, column: 7, scope: !2244)
!2246 = !DILocalVariable(name: "corr1", scope: !2247, file: !1, line: 435, type: !51)
!2247 = distinct !DILexicalBlock(scope: !2228, file: !1, line: 428, column: 10)
!2248 = !DILocation(line: 435, column: 20, scope: !2247)
!2249 = !DILocation(line: 435, column: 37, scope: !2247)
!2250 = !DILocation(line: 435, column: 36, scope: !2247)
!2251 = !DILocation(line: 435, column: 43, scope: !2247)
!2252 = !DILocation(line: 435, column: 50, scope: !2247)
!2253 = !DILocation(line: 435, column: 49, scope: !2247)
!2254 = !DILocation(line: 435, column: 44, scope: !2247)
!2255 = !DILocation(line: 435, column: 39, scope: !2247)
!2256 = !DILocation(line: 435, column: 38, scope: !2247)
!2257 = !DILocation(line: 435, column: 89, scope: !2247)
!2258 = !DILocation(line: 435, column: 88, scope: !2247)
!2259 = !DILocation(line: 435, column: 58, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2247, file: !1, discriminator: 1)
!2261 = !DILocation(line: 435, column: 57, scope: !2247)
!2262 = !DILocalVariable(name: "lnr_val", scope: !2247, file: !1, line: 437, type: !51)
!2263 = !DILocation(line: 437, column: 20, scope: !2247)
!2264 = !DILocation(line: 437, column: 34, scope: !2247)
!2265 = !DILocation(line: 437, column: 33, scope: !2247)
!2266 = !DILocation(line: 437, column: 46, scope: !2247)
!2267 = !DILocation(line: 437, column: 42, scope: !2247)
!2268 = !DILocation(line: 437, column: 41, scope: !2247)
!2269 = !DILocation(line: 437, column: 36, scope: !2247)
!2270 = !DILocation(line: 437, column: 62, scope: !2247)
!2271 = !DILocation(line: 437, column: 61, scope: !2247)
!2272 = !DILocation(line: 437, column: 53, scope: !2260)
!2273 = !DILocation(line: 437, column: 51, scope: !2247)
!2274 = !DILocation(line: 437, column: 88, scope: !2247)
!2275 = !DILocation(line: 437, column: 92, scope: !2247)
!2276 = !DILocation(line: 437, column: 91, scope: !2247)
!2277 = !DILocation(line: 437, column: 74, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2247, file: !1, discriminator: 2)
!2279 = !DILocation(line: 437, column: 72, scope: !2247)
!2280 = !DILocalVariable(name: "lnr_err", scope: !2247, file: !1, line: 438, type: !51)
!2281 = !DILocation(line: 438, column: 20, scope: !2247)
!2282 = !DILocation(line: 438, column: 58, scope: !2247)
!2283 = !DILocation(line: 438, column: 53, scope: !2247)
!2284 = !DILocation(line: 438, column: 52, scope: !2247)
!2285 = !DILocation(line: 438, column: 61, scope: !2247)
!2286 = !DILocation(line: 438, column: 46, scope: !2247)
!2287 = !DILocation(line: 438, column: 86, scope: !2247)
!2288 = !DILocation(line: 438, column: 90, scope: !2247)
!2289 = !DILocation(line: 438, column: 89, scope: !2247)
!2290 = !DILocation(line: 438, column: 107, scope: !2247)
!2291 = !DILocation(line: 438, column: 96, scope: !2247)
!2292 = !DILocation(line: 438, column: 70, scope: !2260)
!2293 = !DILocation(line: 438, column: 68, scope: !2247)
!2294 = !DILocation(line: 439, column: 31, scope: !2247)
!2295 = !DILocation(line: 439, column: 40, scope: !2247)
!2296 = !DILocation(line: 439, column: 49, scope: !2247)
!2297 = !DILocation(line: 439, column: 14, scope: !2247)
!2298 = !DILocation(line: 439, column: 7, scope: !2247)
!2299 = !DILocation(line: 442, column: 11, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2212, file: !1, line: 442, column: 11)
!2301 = !DILocation(line: 442, column: 15, scope: !2300)
!2302 = !DILocation(line: 442, column: 11, scope: !2212)
!2303 = !DILocation(line: 443, column: 5, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2300, file: !1, line: 442, column: 23)
!2305 = !DILocation(line: 443, column: 13, scope: !2304)
!2306 = !DILocation(line: 443, column: 17, scope: !2304)
!2307 = !DILocation(line: 444, column: 5, scope: !2304)
!2308 = !DILocation(line: 444, column: 13, scope: !2304)
!2309 = !DILocation(line: 444, column: 17, scope: !2304)
!2310 = !DILocation(line: 445, column: 5, scope: !2304)
!2311 = !DILocalVariable(name: "root_eta", scope: !2312, file: !1, line: 449, type: !52)
!2312 = distinct !DILexicalBlock(scope: !2300, file: !1, line: 447, column: 8)
!2313 = !DILocation(line: 449, column: 12, scope: !2312)
!2314 = !DILocation(line: 449, column: 29, scope: !2312)
!2315 = !DILocation(line: 449, column: 28, scope: !2312)
!2316 = !DILocation(line: 449, column: 23, scope: !2312)
!2317 = !DILocalVariable(name: "J1", scope: !2312, file: !1, line: 450, type: !54)
!2318 = !DILocation(line: 450, column: 19, scope: !2312)
!2319 = !DILocalVariable(name: "stat_J", scope: !2312, file: !1, line: 451, type: !42)
!2320 = !DILocation(line: 451, column: 9, scope: !2312)
!2321 = !DILocation(line: 451, column: 41, scope: !2312)
!2322 = !DILocation(line: 451, column: 40, scope: !2312)
!2323 = !DILocation(line: 451, column: 18, scope: !2312)
!2324 = !DILocation(line: 452, column: 11, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2312, file: !1, line: 452, column: 8)
!2326 = !DILocation(line: 452, column: 15, scope: !2325)
!2327 = !DILocation(line: 452, column: 8, scope: !2312)
!2328 = !DILocation(line: 453, column: 7, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2325, file: !1, line: 452, column: 23)
!2330 = !DILocation(line: 453, column: 15, scope: !2329)
!2331 = !DILocation(line: 453, column: 19, scope: !2329)
!2332 = !DILocation(line: 454, column: 7, scope: !2329)
!2333 = !DILocation(line: 454, column: 15, scope: !2329)
!2334 = !DILocation(line: 454, column: 19, scope: !2329)
!2335 = !DILocation(line: 455, column: 14, scope: !2329)
!2336 = !DILocation(line: 455, column: 14, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2329, file: !1, discriminator: 1)
!2338 = !DILocation(line: 455, column: 14, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2329, file: !1, discriminator: 2)
!2340 = !DILocation(line: 455, column: 14, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !2329, file: !1, discriminator: 3)
!2342 = !DILocation(line: 455, column: 7, scope: !2341)
!2343 = !DILocalVariable(name: "t1", scope: !2344, file: !1, line: 458, type: !51)
!2344 = distinct !DILexicalBlock(scope: !2325, file: !1, line: 457, column: 10)
!2345 = !DILocation(line: 458, column: 20, scope: !2344)
!2346 = !DILocation(line: 458, column: 29, scope: !2344)
!2347 = !DILocation(line: 458, column: 28, scope: !2344)
!2348 = !DILocalVariable(name: "t2", scope: !2344, file: !1, line: 459, type: !51)
!2349 = !DILocation(line: 459, column: 20, scope: !2344)
!2350 = !DILocation(line: 459, column: 34, scope: !2344)
!2351 = !DILocation(line: 459, column: 33, scope: !2344)
!2352 = !DILocation(line: 459, column: 29, scope: !2344)
!2353 = !DILocation(line: 459, column: 28, scope: !2344)
!2354 = !DILocalVariable(name: "t3", scope: !2344, file: !1, line: 460, type: !51)
!2355 = !DILocation(line: 460, column: 20, scope: !2344)
!2356 = !DILocation(line: 460, column: 30, scope: !2344)
!2357 = !DILocation(line: 460, column: 25, scope: !2344)
!2358 = !DILocalVariable(name: "t4", scope: !2344, file: !1, line: 461, type: !51)
!2359 = !DILocation(line: 461, column: 20, scope: !2344)
!2360 = !DILocation(line: 461, column: 32, scope: !2344)
!2361 = !DILocation(line: 461, column: 25, scope: !2344)
!2362 = !DILocalVariable(name: "lnr_val", scope: !2344, file: !1, line: 462, type: !51)
!2363 = !DILocation(line: 462, column: 20, scope: !2344)
!2364 = !DILocation(line: 462, column: 30, scope: !2344)
!2365 = !DILocation(line: 462, column: 35, scope: !2344)
!2366 = !DILocation(line: 462, column: 33, scope: !2344)
!2367 = !DILocation(line: 462, column: 40, scope: !2344)
!2368 = !DILocation(line: 462, column: 38, scope: !2344)
!2369 = !DILocation(line: 462, column: 45, scope: !2344)
!2370 = !DILocation(line: 462, column: 43, scope: !2344)
!2371 = !DILocalVariable(name: "lnr_err", scope: !2344, file: !1, line: 463, type: !51)
!2372 = !DILocation(line: 463, column: 20, scope: !2344)
!2373 = !DILocation(line: 463, column: 58, scope: !2344)
!2374 = !DILocation(line: 463, column: 53, scope: !2344)
!2375 = !DILocation(line: 463, column: 52, scope: !2344)
!2376 = !DILocation(line: 463, column: 61, scope: !2344)
!2377 = !DILocation(line: 463, column: 46, scope: !2344)
!2378 = !DILocation(line: 463, column: 78, scope: !2344)
!2379 = !DILocation(line: 463, column: 85, scope: !2344)
!2380 = !DILocation(line: 463, column: 81, scope: !2344)
!2381 = !DILocation(line: 463, column: 70, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2344, file: !1, discriminator: 1)
!2383 = !DILocation(line: 463, column: 68, scope: !2344)
!2384 = !DILocalVariable(name: "ex", scope: !2344, file: !1, line: 464, type: !54)
!2385 = !DILocation(line: 464, column: 21, scope: !2344)
!2386 = !DILocalVariable(name: "stat_e", scope: !2344, file: !1, line: 465, type: !42)
!2387 = !DILocation(line: 465, column: 11, scope: !2344)
!2388 = !DILocation(line: 465, column: 37, scope: !2344)
!2389 = !DILocation(line: 465, column: 46, scope: !2344)
!2390 = !DILocation(line: 465, column: 20, scope: !2344)
!2391 = !DILocation(line: 466, column: 25, scope: !2344)
!2392 = !DILocation(line: 466, column: 21, scope: !2344)
!2393 = !DILocation(line: 466, column: 7, scope: !2344)
!2394 = !DILocation(line: 466, column: 15, scope: !2344)
!2395 = !DILocation(line: 466, column: 19, scope: !2344)
!2396 = !DILocation(line: 467, column: 25, scope: !2344)
!2397 = !DILocation(line: 467, column: 7, scope: !2344)
!2398 = !DILocation(line: 467, column: 15, scope: !2344)
!2399 = !DILocation(line: 467, column: 19, scope: !2344)
!2400 = !DILocation(line: 468, column: 14, scope: !2344)
!2401 = !DILocation(line: 468, column: 7, scope: !2344)
!2402 = !DILocation(line: 472, column: 1, scope: !2197)
!2403 = distinct !DISubprogram(name: "hyperg_1F1_a_negint_lag", scope: !1, file: !1, line: 1223, type: !2404, isLocal: true, isDefinition: true, scopeLine: 1224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!42, !50, !51, !51, !53}
!2406 = !DILocalVariable(name: "a", arg: 1, scope: !2403, file: !1, line: 1223, type: !50)
!2407 = !DILocation(line: 1223, column: 35, scope: !2403)
!2408 = !DILocalVariable(name: "b", arg: 2, scope: !2403, file: !1, line: 1223, type: !51)
!2409 = !DILocation(line: 1223, column: 51, scope: !2403)
!2410 = !DILocalVariable(name: "x", arg: 3, scope: !2403, file: !1, line: 1223, type: !51)
!2411 = !DILocation(line: 1223, column: 67, scope: !2403)
!2412 = !DILocalVariable(name: "result", arg: 4, scope: !2403, file: !1, line: 1223, type: !53)
!2413 = !DILocation(line: 1223, column: 86, scope: !2403)
!2414 = !DILocalVariable(name: "n", scope: !2403, file: !1, line: 1225, type: !50)
!2415 = !DILocation(line: 1225, column: 13, scope: !2403)
!2416 = !DILocation(line: 1225, column: 18, scope: !2403)
!2417 = !DILocation(line: 1225, column: 17, scope: !2403)
!2418 = !DILocalVariable(name: "lag", scope: !2403, file: !1, line: 1227, type: !54)
!2419 = !DILocation(line: 1227, column: 17, scope: !2403)
!2420 = !DILocalVariable(name: "stat_l", scope: !2403, file: !1, line: 1228, type: !50)
!2421 = !DILocation(line: 1228, column: 13, scope: !2403)
!2422 = !DILocation(line: 1228, column: 42, scope: !2403)
!2423 = !DILocation(line: 1228, column: 45, scope: !2403)
!2424 = !DILocation(line: 1228, column: 46, scope: !2403)
!2425 = !DILocation(line: 1228, column: 52, scope: !2403)
!2426 = !DILocation(line: 1228, column: 22, scope: !2403)
!2427 = !DILocation(line: 1229, column: 6, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2403, file: !1, line: 1229, column: 6)
!2429 = !DILocation(line: 1229, column: 8, scope: !2428)
!2430 = !DILocation(line: 1229, column: 6, scope: !2403)
!2431 = !DILocalVariable(name: "lnfact", scope: !2432, file: !1, line: 1230, type: !54)
!2432 = distinct !DILexicalBlock(scope: !2428, file: !1, line: 1229, column: 15)
!2433 = !DILocation(line: 1230, column: 19, scope: !2432)
!2434 = !DILocalVariable(name: "lng1", scope: !2432, file: !1, line: 1231, type: !54)
!2435 = !DILocation(line: 1231, column: 19, scope: !2432)
!2436 = !DILocalVariable(name: "lng2", scope: !2432, file: !1, line: 1232, type: !54)
!2437 = !DILocation(line: 1232, column: 19, scope: !2432)
!2438 = !DILocalVariable(name: "s1", scope: !2432, file: !1, line: 1233, type: !52)
!2439 = !DILocation(line: 1233, column: 12, scope: !2432)
!2440 = !DILocalVariable(name: "s2", scope: !2432, file: !1, line: 1233, type: !52)
!2441 = !DILocation(line: 1233, column: 16, scope: !2432)
!2442 = !DILocalVariable(name: "stat_f", scope: !2432, file: !1, line: 1234, type: !50)
!2443 = !DILocation(line: 1234, column: 15, scope: !2432)
!2444 = !DILocation(line: 1234, column: 41, scope: !2432)
!2445 = !DILocation(line: 1234, column: 25, scope: !2432)
!2446 = !DILocalVariable(name: "stat_g1", scope: !2432, file: !1, line: 1235, type: !50)
!2447 = !DILocation(line: 1235, column: 15, scope: !2432)
!2448 = !DILocation(line: 1235, column: 46, scope: !2432)
!2449 = !DILocation(line: 1235, column: 50, scope: !2432)
!2450 = !DILocation(line: 1235, column: 48, scope: !2432)
!2451 = !DILocation(line: 1235, column: 25, scope: !2432)
!2452 = !DILocalVariable(name: "stat_g2", scope: !2432, file: !1, line: 1236, type: !50)
!2453 = !DILocation(line: 1236, column: 15, scope: !2432)
!2454 = !DILocation(line: 1236, column: 46, scope: !2432)
!2455 = !DILocation(line: 1236, column: 25, scope: !2432)
!2456 = !DILocalVariable(name: "lnpre_val", scope: !2432, file: !1, line: 1237, type: !51)
!2457 = !DILocation(line: 1237, column: 18, scope: !2432)
!2458 = !DILocation(line: 1237, column: 37, scope: !2432)
!2459 = !DILocation(line: 1237, column: 49, scope: !2432)
!2460 = !DILocation(line: 1237, column: 60, scope: !2432)
!2461 = !DILocation(line: 1237, column: 53, scope: !2432)
!2462 = !DILocation(line: 1237, column: 41, scope: !2432)
!2463 = !DILocalVariable(name: "lnpre_err", scope: !2432, file: !1, line: 1238, type: !51)
!2464 = !DILocation(line: 1238, column: 18, scope: !2432)
!2465 = !DILocation(line: 1238, column: 37, scope: !2432)
!2466 = !DILocation(line: 1238, column: 48, scope: !2432)
!2467 = !DILocation(line: 1238, column: 41, scope: !2432)
!2468 = !DILocation(line: 1238, column: 59, scope: !2432)
!2469 = !DILocation(line: 1238, column: 52, scope: !2432)
!2470 = !DILocation(line: 1239, column: 38, scope: !2432)
!2471 = !DILocation(line: 1239, column: 33, scope: !2432)
!2472 = !DILocation(line: 1239, column: 31, scope: !2432)
!2473 = !DILocation(line: 1239, column: 7, scope: !2432)
!2474 = !DILocalVariable(name: "stat_e", scope: !2432, file: !1, line: 1240, type: !50)
!2475 = !DILocation(line: 1240, column: 15, scope: !2432)
!2476 = !DILocation(line: 1240, column: 46, scope: !2432)
!2477 = !DILocation(line: 1240, column: 57, scope: !2432)
!2478 = !DILocation(line: 1241, column: 49, scope: !2432)
!2479 = !DILocation(line: 1241, column: 52, scope: !2432)
!2480 = !DILocation(line: 1241, column: 51, scope: !2432)
!2481 = !DILocation(line: 1241, column: 59, scope: !2432)
!2482 = !DILocation(line: 1241, column: 54, scope: !2432)
!2483 = !DILocation(line: 1241, column: 68, scope: !2432)
!2484 = !DILocation(line: 1242, column: 49, scope: !2432)
!2485 = !DILocation(line: 1240, column: 24, scope: !2432)
!2486 = !DILocation(line: 1243, column: 12, scope: !2432)
!2487 = !DILocation(line: 1243, column: 12, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 1)
!2489 = !DILocation(line: 1243, column: 12, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 2)
!2491 = !DILocation(line: 1243, column: 12, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 3)
!2493 = !DILocation(line: 1243, column: 12, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 4)
!2495 = !DILocation(line: 1243, column: 12, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 5)
!2497 = !DILocation(line: 1243, column: 12, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 6)
!2499 = !DILocation(line: 1243, column: 12, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 7)
!2501 = !DILocation(line: 1243, column: 12, scope: !2502)
!2502 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 8)
!2503 = !DILocation(line: 1243, column: 12, scope: !2504)
!2504 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 9)
!2505 = !DILocation(line: 1243, column: 12, scope: !2506)
!2506 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 10)
!2507 = !DILocation(line: 1243, column: 12, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 11)
!2509 = !DILocation(line: 1243, column: 12, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 12)
!2511 = !DILocation(line: 1243, column: 12, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 13)
!2513 = !DILocation(line: 1243, column: 12, scope: !2514)
!2514 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 14)
!2515 = !DILocation(line: 1243, column: 12, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !2432, file: !1, discriminator: 15)
!2517 = !DILocation(line: 1243, column: 5, scope: !2516)
!2518 = !DILocalVariable(name: "lnbeta", scope: !2519, file: !1, line: 1246, type: !54)
!2519 = distinct !DILexicalBlock(scope: !2428, file: !1, line: 1245, column: 8)
!2520 = !DILocation(line: 1246, column: 19, scope: !2519)
!2521 = !DILocation(line: 1247, column: 21, scope: !2519)
!2522 = !DILocation(line: 1247, column: 24, scope: !2519)
!2523 = !DILocation(line: 1247, column: 5, scope: !2519)
!2524 = !DILocation(line: 1248, column: 20, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 1248, column: 8)
!2526 = !DILocation(line: 1248, column: 8, scope: !2525)
!2527 = !DILocation(line: 1248, column: 25, scope: !2525)
!2528 = !DILocation(line: 1248, column: 8, scope: !2519)
!2529 = !DILocalVariable(name: "ln_term_val", scope: !2530, file: !1, line: 1253, type: !51)
!2530 = distinct !DILexicalBlock(scope: !2525, file: !1, line: 1248, column: 32)
!2531 = !DILocation(line: 1253, column: 20, scope: !2530)
!2532 = !DILocation(line: 1253, column: 43, scope: !2530)
!2533 = !DILocation(line: 1253, column: 42, scope: !2530)
!2534 = !DILocation(line: 1253, column: 34, scope: !2530)
!2535 = !DILocalVariable(name: "ln_term_err", scope: !2530, file: !1, line: 1254, type: !51)
!2536 = !DILocation(line: 1254, column: 20, scope: !2530)
!2537 = !DILocation(line: 1254, column: 58, scope: !2530)
!2538 = !DILocation(line: 1254, column: 56, scope: !2530)
!2539 = !DILocalVariable(name: "beta", scope: !2530, file: !1, line: 1255, type: !54)
!2540 = !DILocation(line: 1255, column: 21, scope: !2530)
!2541 = !DILocalVariable(name: "stat_b", scope: !2530, file: !1, line: 1256, type: !42)
!2542 = !DILocation(line: 1256, column: 11, scope: !2530)
!2543 = !DILocation(line: 1256, column: 34, scope: !2530)
!2544 = !DILocation(line: 1256, column: 37, scope: !2530)
!2545 = !DILocation(line: 1256, column: 20, scope: !2530)
!2546 = !DILocalVariable(name: "stat_e", scope: !2530, file: !1, line: 1257, type: !42)
!2547 = !DILocation(line: 1257, column: 11, scope: !2530)
!2548 = !DILocation(line: 1257, column: 42, scope: !2530)
!2549 = !DILocation(line: 1257, column: 55, scope: !2530)
!2550 = !DILocation(line: 1258, column: 49, scope: !2530)
!2551 = !DILocation(line: 1258, column: 58, scope: !2530)
!2552 = !DILocation(line: 1259, column: 45, scope: !2530)
!2553 = !DILocation(line: 1257, column: 20, scope: !2530)
!2554 = !DILocation(line: 1260, column: 27, scope: !2530)
!2555 = !DILocation(line: 1260, column: 30, scope: !2530)
!2556 = !DILocation(line: 1260, column: 7, scope: !2530)
!2557 = !DILocation(line: 1260, column: 15, scope: !2530)
!2558 = !DILocation(line: 1260, column: 19, scope: !2530)
!2559 = !DILocation(line: 1261, column: 27, scope: !2530)
!2560 = !DILocation(line: 1261, column: 30, scope: !2530)
!2561 = !DILocation(line: 1261, column: 7, scope: !2530)
!2562 = !DILocation(line: 1261, column: 15, scope: !2530)
!2563 = !DILocation(line: 1261, column: 19, scope: !2530)
!2564 = !DILocation(line: 1262, column: 14, scope: !2530)
!2565 = !DILocation(line: 1262, column: 14, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !2530, file: !1, discriminator: 1)
!2567 = !DILocation(line: 1262, column: 14, scope: !2568)
!2568 = !DILexicalBlockFile(scope: !2530, file: !1, discriminator: 2)
!2569 = !DILocation(line: 1262, column: 14, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !2530, file: !1, discriminator: 3)
!2571 = !DILocation(line: 1262, column: 14, scope: !2572)
!2572 = !DILexicalBlockFile(scope: !2530, file: !1, discriminator: 4)
!2573 = !DILocation(line: 1262, column: 14, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !2530, file: !1, discriminator: 5)
!2575 = !DILocation(line: 1262, column: 14, scope: !2576)
!2576 = !DILexicalBlockFile(scope: !2530, file: !1, discriminator: 6)
!2577 = !DILocation(line: 1262, column: 14, scope: !2578)
!2578 = !DILexicalBlockFile(scope: !2530, file: !1, discriminator: 7)
!2579 = !DILocation(line: 1262, column: 14, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !2530, file: !1, discriminator: 8)
!2581 = !DILocation(line: 1262, column: 14, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2530, file: !1, discriminator: 9)
!2583 = !DILocation(line: 1262, column: 7, scope: !2582)
!2584 = !DILocalVariable(name: "ln_n", scope: !2585, file: !1, line: 1268, type: !51)
!2585 = distinct !DILexicalBlock(scope: !2525, file: !1, line: 1264, column: 10)
!2586 = !DILocation(line: 1268, column: 20, scope: !2585)
!2587 = !DILocation(line: 1268, column: 31, scope: !2585)
!2588 = !DILocation(line: 1268, column: 27, scope: !2585)
!2589 = !DILocalVariable(name: "ln_term_val", scope: !2585, file: !1, line: 1269, type: !51)
!2590 = !DILocation(line: 1269, column: 20, scope: !2585)
!2591 = !DILocation(line: 1269, column: 41, scope: !2585)
!2592 = !DILocation(line: 1269, column: 47, scope: !2585)
!2593 = !DILocation(line: 1269, column: 45, scope: !2585)
!2594 = !DILocalVariable(name: "ln_term_err", scope: !2585, file: !1, line: 1270, type: !51)
!2595 = !DILocation(line: 1270, column: 20, scope: !2585)
!2596 = !DILocation(line: 1270, column: 41, scope: !2585)
!2597 = !DILocation(line: 1270, column: 76, scope: !2585)
!2598 = !DILocation(line: 1270, column: 71, scope: !2585)
!2599 = !DILocation(line: 1270, column: 69, scope: !2585)
!2600 = !DILocation(line: 1270, column: 45, scope: !2585)
!2601 = !DILocalVariable(name: "stat_e", scope: !2585, file: !1, line: 1271, type: !42)
!2602 = !DILocation(line: 1271, column: 11, scope: !2585)
!2603 = !DILocation(line: 1271, column: 42, scope: !2585)
!2604 = !DILocation(line: 1271, column: 55, scope: !2585)
!2605 = !DILocation(line: 1272, column: 49, scope: !2585)
!2606 = !DILocation(line: 1272, column: 58, scope: !2585)
!2607 = !DILocation(line: 1273, column: 45, scope: !2585)
!2608 = !DILocation(line: 1271, column: 20, scope: !2585)
!2609 = !DILocation(line: 1274, column: 14, scope: !2585)
!2610 = !DILocation(line: 1274, column: 14, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2585, file: !1, discriminator: 1)
!2612 = !DILocation(line: 1274, column: 14, scope: !2613)
!2613 = !DILexicalBlockFile(scope: !2585, file: !1, discriminator: 2)
!2614 = !DILocation(line: 1274, column: 14, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2585, file: !1, discriminator: 3)
!2616 = !DILocation(line: 1274, column: 14, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !2585, file: !1, discriminator: 4)
!2618 = !DILocation(line: 1274, column: 14, scope: !2619)
!2619 = !DILexicalBlockFile(scope: !2585, file: !1, discriminator: 5)
!2620 = !DILocation(line: 1274, column: 14, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2585, file: !1, discriminator: 6)
!2622 = !DILocation(line: 1274, column: 7, scope: !2621)
!2623 = !DILocation(line: 1277, column: 1, scope: !2403)
!2624 = distinct !DISubprogram(name: "hyperg_1F1_small_a_bgt0", scope: !1, file: !1, line: 716, type: !279, isLocal: true, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!2625 = !DILocalVariable(name: "a", arg: 1, scope: !2624, file: !1, line: 716, type: !51)
!2626 = !DILocation(line: 716, column: 38, scope: !2624)
!2627 = !DILocalVariable(name: "b", arg: 2, scope: !2624, file: !1, line: 716, type: !51)
!2628 = !DILocation(line: 716, column: 54, scope: !2624)
!2629 = !DILocalVariable(name: "x", arg: 3, scope: !2624, file: !1, line: 716, type: !51)
!2630 = !DILocation(line: 716, column: 70, scope: !2624)
!2631 = !DILocalVariable(name: "result", arg: 4, scope: !2624, file: !1, line: 716, type: !53)
!2632 = !DILocation(line: 716, column: 89, scope: !2624)
!2633 = !DILocalVariable(name: "bma", scope: !2624, file: !1, line: 718, type: !51)
!2634 = !DILocation(line: 718, column: 16, scope: !2624)
!2635 = !DILocation(line: 718, column: 22, scope: !2624)
!2636 = !DILocation(line: 718, column: 24, scope: !2624)
!2637 = !DILocation(line: 718, column: 23, scope: !2624)
!2638 = !DILocalVariable(name: "oma", scope: !2624, file: !1, line: 719, type: !51)
!2639 = !DILocation(line: 719, column: 16, scope: !2624)
!2640 = !DILocation(line: 719, column: 26, scope: !2624)
!2641 = !DILocation(line: 719, column: 25, scope: !2624)
!2642 = !DILocalVariable(name: "ap1mb", scope: !2624, file: !1, line: 720, type: !51)
!2643 = !DILocation(line: 720, column: 16, scope: !2624)
!2644 = !DILocation(line: 720, column: 28, scope: !2624)
!2645 = !DILocation(line: 720, column: 27, scope: !2624)
!2646 = !DILocation(line: 720, column: 30, scope: !2624)
!2647 = !DILocation(line: 720, column: 29, scope: !2624)
!2648 = !DILocalVariable(name: "abs_bma", scope: !2624, file: !1, line: 721, type: !51)
!2649 = !DILocation(line: 721, column: 16, scope: !2624)
!2650 = !DILocation(line: 721, column: 31, scope: !2624)
!2651 = !DILocation(line: 721, column: 26, scope: !2624)
!2652 = !DILocalVariable(name: "abs_oma", scope: !2624, file: !1, line: 722, type: !51)
!2653 = !DILocation(line: 722, column: 16, scope: !2624)
!2654 = !DILocation(line: 722, column: 31, scope: !2624)
!2655 = !DILocation(line: 722, column: 26, scope: !2624)
!2656 = !DILocalVariable(name: "abs_ap1mb", scope: !2624, file: !1, line: 723, type: !51)
!2657 = !DILocation(line: 723, column: 16, scope: !2624)
!2658 = !DILocation(line: 723, column: 33, scope: !2624)
!2659 = !DILocation(line: 723, column: 28, scope: !2624)
!2660 = !DILocalVariable(name: "ax", scope: !2624, file: !1, line: 725, type: !51)
!2661 = !DILocation(line: 725, column: 16, scope: !2624)
!2662 = !DILocation(line: 725, column: 26, scope: !2624)
!2663 = !DILocation(line: 725, column: 21, scope: !2624)
!2664 = !DILocation(line: 727, column: 6, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2624, file: !1, line: 727, column: 6)
!2666 = !DILocation(line: 727, column: 8, scope: !2665)
!2667 = !DILocation(line: 727, column: 6, scope: !2624)
!2668 = !DILocation(line: 728, column: 5, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2665, file: !1, line: 727, column: 16)
!2670 = !DILocation(line: 728, column: 13, scope: !2669)
!2671 = !DILocation(line: 728, column: 17, scope: !2669)
!2672 = !DILocation(line: 729, column: 5, scope: !2669)
!2673 = !DILocation(line: 729, column: 13, scope: !2669)
!2674 = !DILocation(line: 729, column: 17, scope: !2669)
!2675 = !DILocation(line: 730, column: 5, scope: !2669)
!2676 = !DILocation(line: 732, column: 11, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2665, file: !1, line: 732, column: 11)
!2678 = !DILocation(line: 732, column: 13, scope: !2677)
!2679 = !DILocation(line: 732, column: 20, scope: !2677)
!2680 = !DILocation(line: 732, column: 23, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2677, file: !1, discriminator: 1)
!2682 = !DILocation(line: 732, column: 25, scope: !2681)
!2683 = !DILocation(line: 732, column: 11, scope: !2681)
!2684 = !DILocation(line: 733, column: 25, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2677, file: !1, line: 732, column: 33)
!2686 = !DILocation(line: 733, column: 28, scope: !2685)
!2687 = !DILocation(line: 733, column: 31, scope: !2685)
!2688 = !DILocation(line: 733, column: 12, scope: !2685)
!2689 = !DILocation(line: 733, column: 5, scope: !2685)
!2690 = !DILocation(line: 735, column: 11, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2677, file: !1, line: 735, column: 11)
!2692 = !DILocation(line: 735, column: 13, scope: !2691)
!2693 = !DILocation(line: 735, column: 11, scope: !2677)
!2694 = !DILocation(line: 736, column: 26, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 735, column: 22)
!2696 = !DILocation(line: 736, column: 28, scope: !2695)
!2697 = !DILocation(line: 736, column: 27, scope: !2695)
!2698 = !DILocation(line: 736, column: 32, scope: !2695)
!2699 = !DILocation(line: 736, column: 30, scope: !2695)
!2700 = !DILocation(line: 736, column: 24, scope: !2695)
!2701 = !DILocation(line: 736, column: 5, scope: !2695)
!2702 = !DILocation(line: 736, column: 13, scope: !2695)
!2703 = !DILocation(line: 736, column: 18, scope: !2695)
!2704 = !DILocation(line: 737, column: 50, scope: !2695)
!2705 = !DILocation(line: 737, column: 52, scope: !2695)
!2706 = !DILocation(line: 737, column: 51, scope: !2695)
!2707 = !DILocation(line: 737, column: 56, scope: !2695)
!2708 = !DILocation(line: 737, column: 54, scope: !2695)
!2709 = !DILocation(line: 737, column: 45, scope: !2695)
!2710 = !DILocation(line: 737, column: 43, scope: !2695)
!2711 = !DILocation(line: 737, column: 36, scope: !2695)
!2712 = !DILocation(line: 737, column: 5, scope: !2695)
!2713 = !DILocation(line: 737, column: 13, scope: !2695)
!2714 = !DILocation(line: 737, column: 18, scope: !2695)
!2715 = !DILocation(line: 738, column: 49, scope: !2695)
!2716 = !DILocation(line: 738, column: 57, scope: !2695)
!2717 = !DILocation(line: 738, column: 44, scope: !2695)
!2718 = !DILocation(line: 738, column: 42, scope: !2695)
!2719 = !DILocation(line: 738, column: 5, scope: !2695)
!2720 = !DILocation(line: 738, column: 13, scope: !2695)
!2721 = !DILocation(line: 738, column: 17, scope: !2695)
!2722 = !DILocation(line: 739, column: 5, scope: !2695)
!2723 = !DILocation(line: 741, column: 11, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 741, column: 11)
!2725 = !DILocation(line: 741, column: 20, scope: !2724)
!2726 = !DILocation(line: 741, column: 19, scope: !2724)
!2727 = !DILocation(line: 741, column: 13, scope: !2724)
!2728 = !DILocation(line: 741, column: 11, scope: !2691)
!2729 = !DILocation(line: 742, column: 39, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2724, file: !1, line: 741, column: 24)
!2731 = !DILocation(line: 742, column: 42, scope: !2730)
!2732 = !DILocation(line: 742, column: 45, scope: !2730)
!2733 = !DILocation(line: 742, column: 48, scope: !2730)
!2734 = !DILocation(line: 742, column: 12, scope: !2730)
!2735 = !DILocation(line: 742, column: 5, scope: !2730)
!2736 = !DILocation(line: 744, column: 11, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2724, file: !1, line: 744, column: 11)
!2738 = !DILocation(line: 744, column: 13, scope: !2737)
!2739 = !DILocation(line: 744, column: 11, scope: !2724)
!2740 = !DILocation(line: 745, column: 8, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !1, line: 745, column: 8)
!2742 = distinct !DILexicalBlock(scope: !2737, file: !1, line: 744, column: 20)
!2743 = !DILocation(line: 745, column: 10, scope: !2741)
!2744 = !DILocation(line: 745, column: 18, scope: !2741)
!2745 = !DILocation(line: 745, column: 21, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !2741, file: !1, discriminator: 1)
!2747 = !DILocation(line: 745, column: 29, scope: !2746)
!2748 = !DILocation(line: 745, column: 28, scope: !2746)
!2749 = !DILocation(line: 745, column: 43, scope: !2746)
!2750 = !DILocation(line: 745, column: 42, scope: !2746)
!2751 = !DILocation(line: 745, column: 37, scope: !2746)
!2752 = !DILocation(line: 745, column: 8, scope: !2746)
!2753 = !DILocation(line: 746, column: 36, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2741, file: !1, line: 745, column: 46)
!2755 = !DILocation(line: 746, column: 39, scope: !2754)
!2756 = !DILocation(line: 746, column: 42, scope: !2754)
!2757 = !DILocation(line: 746, column: 45, scope: !2754)
!2758 = !DILocation(line: 746, column: 14, scope: !2754)
!2759 = !DILocation(line: 746, column: 7, scope: !2754)
!2760 = !DILocation(line: 748, column: 13, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2741, file: !1, line: 748, column: 13)
!2762 = !DILocation(line: 748, column: 15, scope: !2761)
!2763 = !DILocation(line: 748, column: 13, scope: !2741)
!2764 = !DILocalVariable(name: "b_del", scope: !2765, file: !1, line: 752, type: !51)
!2765 = distinct !DILexicalBlock(scope: !2761, file: !1, line: 748, column: 26)
!2766 = !DILocation(line: 752, column: 20, scope: !2765)
!2767 = !DILocation(line: 752, column: 37, scope: !2765)
!2768 = !DILocation(line: 752, column: 36, scope: !2765)
!2769 = !DILocation(line: 752, column: 39, scope: !2765)
!2770 = !DILocation(line: 752, column: 38, scope: !2765)
!2771 = !DILocation(line: 752, column: 28, scope: !2765)
!2772 = !DILocation(line: 752, column: 42, scope: !2765)
!2773 = !DILocalVariable(name: "bp", scope: !2765, file: !1, line: 753, type: !52)
!2774 = !DILocation(line: 753, column: 14, scope: !2765)
!2775 = !DILocation(line: 753, column: 19, scope: !2765)
!2776 = !DILocation(line: 753, column: 23, scope: !2765)
!2777 = !DILocation(line: 753, column: 21, scope: !2765)
!2778 = !DILocalVariable(name: "r_Mbp1", scope: !2765, file: !1, line: 754, type: !54)
!2779 = !DILocation(line: 754, column: 21, scope: !2765)
!2780 = !DILocalVariable(name: "r_Mb", scope: !2765, file: !1, line: 755, type: !54)
!2781 = !DILocation(line: 755, column: 21, scope: !2765)
!2782 = !DILocalVariable(name: "Mbp1", scope: !2765, file: !1, line: 756, type: !52)
!2783 = !DILocation(line: 756, column: 14, scope: !2765)
!2784 = !DILocalVariable(name: "Mb", scope: !2765, file: !1, line: 757, type: !52)
!2785 = !DILocation(line: 757, column: 14, scope: !2765)
!2786 = !DILocalVariable(name: "Mbm1", scope: !2765, file: !1, line: 758, type: !52)
!2787 = !DILocation(line: 758, column: 14, scope: !2765)
!2788 = !DILocalVariable(name: "stat_0", scope: !2765, file: !1, line: 759, type: !42)
!2789 = !DILocation(line: 759, column: 11, scope: !2765)
!2790 = !DILocation(line: 759, column: 47, scope: !2765)
!2791 = !DILocation(line: 759, column: 50, scope: !2765)
!2792 = !DILocation(line: 759, column: 52, scope: !2765)
!2793 = !DILocation(line: 759, column: 58, scope: !2765)
!2794 = !DILocation(line: 759, column: 20, scope: !2765)
!2795 = !DILocalVariable(name: "stat_1", scope: !2765, file: !1, line: 760, type: !42)
!2796 = !DILocation(line: 760, column: 11, scope: !2765)
!2797 = !DILocation(line: 760, column: 47, scope: !2765)
!2798 = !DILocation(line: 760, column: 50, scope: !2765)
!2799 = !DILocation(line: 760, column: 58, scope: !2765)
!2800 = !DILocation(line: 760, column: 20, scope: !2765)
!2801 = !DILocalVariable(name: "err_rat", scope: !2765, file: !1, line: 761, type: !51)
!2802 = !DILocation(line: 761, column: 20, scope: !2765)
!2803 = !DILocation(line: 761, column: 42, scope: !2765)
!2804 = !DILocation(line: 761, column: 53, scope: !2765)
!2805 = !DILocation(line: 761, column: 45, scope: !2765)
!2806 = !DILocation(line: 761, column: 30, scope: !2765)
!2807 = !DILocation(line: 761, column: 70, scope: !2765)
!2808 = !DILocation(line: 761, column: 79, scope: !2765)
!2809 = !DILocation(line: 761, column: 73, scope: !2765)
!2810 = !DILocation(line: 761, column: 60, scope: !2811)
!2811 = !DILexicalBlockFile(scope: !2765, file: !1, discriminator: 1)
!2812 = !DILocation(line: 761, column: 58, scope: !2765)
!2813 = !DILocation(line: 762, column: 21, scope: !2765)
!2814 = !DILocation(line: 762, column: 12, scope: !2765)
!2815 = !DILocation(line: 763, column: 19, scope: !2765)
!2816 = !DILocation(line: 763, column: 12, scope: !2765)
!2817 = !DILocation(line: 764, column: 7, scope: !2765)
!2818 = !DILocation(line: 764, column: 13, scope: !2811)
!2819 = !DILocation(line: 764, column: 18, scope: !2811)
!2820 = !DILocation(line: 764, column: 19, scope: !2811)
!2821 = !DILocation(line: 764, column: 16, scope: !2811)
!2822 = !DILocation(line: 764, column: 7, scope: !2811)
!2823 = !DILocation(line: 766, column: 18, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2765, file: !1, line: 764, column: 25)
!2825 = !DILocation(line: 766, column: 20, scope: !2824)
!2826 = !DILocation(line: 766, column: 19, scope: !2824)
!2827 = !DILocation(line: 766, column: 22, scope: !2824)
!2828 = !DILocation(line: 766, column: 28, scope: !2824)
!2829 = !DILocation(line: 766, column: 27, scope: !2824)
!2830 = !DILocation(line: 766, column: 33, scope: !2824)
!2831 = !DILocation(line: 766, column: 36, scope: !2824)
!2832 = !DILocation(line: 766, column: 39, scope: !2824)
!2833 = !DILocation(line: 766, column: 38, scope: !2824)
!2834 = !DILocation(line: 766, column: 34, scope: !2824)
!2835 = !DILocation(line: 766, column: 42, scope: !2824)
!2836 = !DILocation(line: 766, column: 41, scope: !2824)
!2837 = !DILocation(line: 766, column: 45, scope: !2824)
!2838 = !DILocation(line: 766, column: 44, scope: !2824)
!2839 = !DILocation(line: 766, column: 31, scope: !2824)
!2840 = !DILocation(line: 766, column: 52, scope: !2824)
!2841 = !DILocation(line: 766, column: 54, scope: !2824)
!2842 = !DILocation(line: 766, column: 50, scope: !2824)
!2843 = !DILocation(line: 766, column: 14, scope: !2824)
!2844 = !DILocation(line: 767, column: 12, scope: !2824)
!2845 = !DILocation(line: 768, column: 16, scope: !2824)
!2846 = !DILocation(line: 768, column: 14, scope: !2824)
!2847 = !DILocation(line: 769, column: 16, scope: !2824)
!2848 = !DILocation(line: 769, column: 14, scope: !2824)
!2849 = !DILocation(line: 764, column: 7, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2765, file: !1, discriminator: 2)
!2851 = distinct !{!2851, !2817}
!2852 = !DILocation(line: 771, column: 22, scope: !2765)
!2853 = !DILocation(line: 771, column: 7, scope: !2765)
!2854 = !DILocation(line: 771, column: 15, scope: !2765)
!2855 = !DILocation(line: 771, column: 20, scope: !2765)
!2856 = !DILocation(line: 772, column: 22, scope: !2765)
!2857 = !DILocation(line: 772, column: 38, scope: !2765)
!2858 = !DILocation(line: 772, column: 33, scope: !2765)
!2859 = !DILocation(line: 772, column: 44, scope: !2765)
!2860 = !DILocation(line: 772, column: 30, scope: !2765)
!2861 = !DILocation(line: 772, column: 57, scope: !2765)
!2862 = !DILocation(line: 772, column: 52, scope: !2811)
!2863 = !DILocation(line: 772, column: 50, scope: !2765)
!2864 = !DILocation(line: 772, column: 7, scope: !2765)
!2865 = !DILocation(line: 772, column: 15, scope: !2765)
!2866 = !DILocation(line: 772, column: 20, scope: !2765)
!2867 = !DILocation(line: 773, column: 51, scope: !2765)
!2868 = !DILocation(line: 773, column: 46, scope: !2765)
!2869 = !DILocation(line: 773, column: 44, scope: !2765)
!2870 = !DILocation(line: 773, column: 7, scope: !2765)
!2871 = !DILocation(line: 773, column: 15, scope: !2765)
!2872 = !DILocation(line: 773, column: 19, scope: !2765)
!2873 = !DILocation(line: 774, column: 14, scope: !2765)
!2874 = !DILocation(line: 774, column: 14, scope: !2811)
!2875 = !DILocation(line: 774, column: 14, scope: !2850)
!2876 = !DILocation(line: 774, column: 14, scope: !2877)
!2877 = !DILexicalBlockFile(scope: !2765, file: !1, discriminator: 3)
!2878 = !DILocation(line: 774, column: 14, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2765, file: !1, discriminator: 4)
!2880 = !DILocation(line: 774, column: 14, scope: !2881)
!2881 = !DILexicalBlockFile(scope: !2765, file: !1, discriminator: 5)
!2882 = !DILocation(line: 774, column: 14, scope: !2883)
!2883 = !DILexicalBlockFile(scope: !2765, file: !1, discriminator: 6)
!2884 = !DILocation(line: 774, column: 7, scope: !2883)
!2885 = !DILocation(line: 776, column: 19, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2761, file: !1, line: 776, column: 14)
!2887 = !DILocation(line: 776, column: 14, scope: !2886)
!2888 = !DILocation(line: 776, column: 29, scope: !2886)
!2889 = !DILocation(line: 776, column: 24, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !2886, file: !1, discriminator: 2)
!2891 = !DILocation(line: 776, column: 22, scope: !2886)
!2892 = !DILocation(line: 776, column: 32, scope: !2886)
!2893 = !DILocation(line: 776, column: 40, scope: !2894)
!2894 = !DILexicalBlockFile(scope: !2886, file: !1, discriminator: 1)
!2895 = !DILocation(line: 776, column: 42, scope: !2894)
!2896 = !DILocation(line: 776, column: 41, scope: !2894)
!2897 = !DILocation(line: 776, column: 35, scope: !2894)
!2898 = !DILocation(line: 776, column: 57, scope: !2894)
!2899 = !DILocation(line: 776, column: 52, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2894, file: !1, discriminator: 3)
!2901 = !DILocation(line: 776, column: 47, scope: !2902)
!2902 = !DILexicalBlockFile(scope: !2894, file: !1, discriminator: 4)
!2903 = !DILocation(line: 776, column: 68, scope: !2894)
!2904 = !DILocation(line: 776, column: 70, scope: !2894)
!2905 = !DILocation(line: 776, column: 69, scope: !2894)
!2906 = !DILocation(line: 776, column: 63, scope: !2907)
!2907 = !DILexicalBlockFile(scope: !2894, file: !1, discriminator: 5)
!2908 = !DILocation(line: 776, column: 61, scope: !2894)
!2909 = !DILocation(line: 776, column: 45, scope: !2894)
!2910 = !DILocation(line: 776, column: 14, scope: !2894)
!2911 = !DILocation(line: 777, column: 33, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2886, file: !1, line: 776, column: 74)
!2913 = !DILocation(line: 777, column: 36, scope: !2912)
!2914 = !DILocation(line: 777, column: 39, scope: !2912)
!2915 = !DILocation(line: 777, column: 42, scope: !2912)
!2916 = !DILocation(line: 777, column: 14, scope: !2912)
!2917 = !DILocation(line: 777, column: 7, scope: !2912)
!2918 = !DILocation(line: 779, column: 36, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2886, file: !1, line: 778, column: 12)
!2920 = !DILocation(line: 779, column: 39, scope: !2919)
!2921 = !DILocation(line: 779, column: 42, scope: !2919)
!2922 = !DILocation(line: 779, column: 45, scope: !2919)
!2923 = !DILocation(line: 779, column: 14, scope: !2919)
!2924 = !DILocation(line: 779, column: 7, scope: !2919)
!2925 = !DILocation(line: 785, column: 8, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !1, line: 785, column: 8)
!2927 = distinct !DILexicalBlock(scope: !2737, file: !1, line: 782, column: 8)
!2928 = !DILocation(line: 785, column: 11, scope: !2926)
!2929 = !DILocation(line: 785, column: 18, scope: !2926)
!2930 = !DILocation(line: 785, column: 21, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !2926, file: !1, discriminator: 1)
!2932 = !DILocation(line: 785, column: 23, scope: !2931)
!2933 = !DILocation(line: 785, column: 8, scope: !2931)
!2934 = !DILocation(line: 786, column: 41, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2926, file: !1, line: 785, column: 31)
!2936 = !DILocation(line: 786, column: 44, scope: !2935)
!2937 = !DILocation(line: 786, column: 47, scope: !2935)
!2938 = !DILocation(line: 786, column: 50, scope: !2935)
!2939 = !DILocation(line: 786, column: 14, scope: !2935)
!2940 = !DILocation(line: 786, column: 7, scope: !2935)
!2941 = !DILocation(line: 788, column: 13, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2926, file: !1, line: 788, column: 13)
!2943 = !DILocation(line: 788, column: 16, scope: !2942)
!2944 = !DILocation(line: 788, column: 25, scope: !2942)
!2945 = !DILocation(line: 788, column: 28, scope: !2946)
!2946 = !DILexicalBlockFile(scope: !2942, file: !1, discriminator: 1)
!2947 = !DILocation(line: 788, column: 28, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2942, file: !1, discriminator: 2)
!2949 = !DILocation(line: 788, column: 28, scope: !2950)
!2950 = !DILexicalBlockFile(scope: !2942, file: !1, discriminator: 3)
!2951 = !DILocation(line: 788, column: 28, scope: !2952)
!2952 = !DILexicalBlockFile(scope: !2942, file: !1, discriminator: 4)
!2953 = !DILocation(line: 788, column: 58, scope: !2952)
!2954 = !DILocation(line: 788, column: 57, scope: !2952)
!2955 = !DILocation(line: 788, column: 51, scope: !2952)
!2956 = !DILocation(line: 788, column: 13, scope: !2952)
!2957 = !DILocation(line: 789, column: 36, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2942, file: !1, line: 788, column: 62)
!2959 = !DILocation(line: 789, column: 39, scope: !2958)
!2960 = !DILocation(line: 789, column: 42, scope: !2958)
!2961 = !DILocation(line: 789, column: 45, scope: !2958)
!2962 = !DILocation(line: 789, column: 14, scope: !2958)
!2963 = !DILocation(line: 789, column: 7, scope: !2958)
!2964 = !DILocation(line: 792, column: 30, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2942, file: !1, line: 791, column: 10)
!2966 = !DILocation(line: 792, column: 33, scope: !2965)
!2967 = !DILocation(line: 792, column: 36, scope: !2965)
!2968 = !DILocation(line: 792, column: 39, scope: !2965)
!2969 = !DILocation(line: 792, column: 14, scope: !2965)
!2970 = !DILocation(line: 792, column: 7, scope: !2965)
!2971 = !DILocation(line: 795, column: 1, scope: !2624)
!2972 = distinct !DISubprogram(name: "hyperg_1F1_ab_pos", scope: !1, file: !1, line: 1424, type: !279, isLocal: true, isDefinition: true, scopeLine: 1427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!2973 = !DILocalVariable(name: "a", arg: 1, scope: !2972, file: !1, line: 1424, type: !51)
!2974 = !DILocation(line: 1424, column: 32, scope: !2972)
!2975 = !DILocalVariable(name: "b", arg: 2, scope: !2972, file: !1, line: 1424, type: !51)
!2976 = !DILocation(line: 1424, column: 48, scope: !2972)
!2977 = !DILocalVariable(name: "x", arg: 3, scope: !2972, file: !1, line: 1425, type: !51)
!2978 = !DILocation(line: 1425, column: 32, scope: !2972)
!2979 = !DILocalVariable(name: "result", arg: 4, scope: !2972, file: !1, line: 1426, type: !53)
!2980 = !DILocation(line: 1426, column: 35, scope: !2972)
!2981 = !DILocalVariable(name: "ax", scope: !2972, file: !1, line: 1428, type: !51)
!2982 = !DILocation(line: 1428, column: 16, scope: !2972)
!2983 = !DILocation(line: 1428, column: 26, scope: !2972)
!2984 = !DILocation(line: 1428, column: 21, scope: !2972)
!2985 = !DILocation(line: 1430, column: 11, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2972, file: !1, line: 1430, column: 9)
!2987 = !DILocation(line: 1430, column: 13, scope: !2986)
!2988 = !DILocation(line: 1430, column: 20, scope: !2986)
!2989 = !DILocation(line: 1430, column: 23, scope: !2990)
!2990 = !DILexicalBlockFile(scope: !2986, file: !1, discriminator: 1)
!2991 = !DILocation(line: 1430, column: 25, scope: !2990)
!2992 = !DILocation(line: 1430, column: 32, scope: !2990)
!2993 = !DILocation(line: 1430, column: 35, scope: !2994)
!2994 = !DILexicalBlockFile(scope: !2986, file: !1, discriminator: 2)
!2995 = !DILocation(line: 1430, column: 38, scope: !2994)
!2996 = !DILocation(line: 1431, column: 6, scope: !2986)
!2997 = !DILocation(line: 1431, column: 11, scope: !2990)
!2998 = !DILocation(line: 1431, column: 15, scope: !2990)
!2999 = !DILocation(line: 1431, column: 17, scope: !2990)
!3000 = !DILocation(line: 1431, column: 16, scope: !2990)
!3001 = !DILocation(line: 1431, column: 13, scope: !2990)
!3002 = !DILocation(line: 1432, column: 6, scope: !2986)
!3003 = !DILocation(line: 1432, column: 11, scope: !2990)
!3004 = !DILocation(line: 1432, column: 15, scope: !2990)
!3005 = !DILocation(line: 1432, column: 13, scope: !2990)
!3006 = !DILocation(line: 1432, column: 17, scope: !2990)
!3007 = !DILocation(line: 1432, column: 20, scope: !2994)
!3008 = !DILocation(line: 1432, column: 23, scope: !2994)
!3009 = !DILocation(line: 1430, column: 9, scope: !3010)
!3010 = !DILexicalBlockFile(scope: !2972, file: !1, discriminator: 3)
!3011 = !DILocation(line: 1434, column: 39, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2986, file: !1, line: 1433, column: 7)
!3013 = !DILocation(line: 1434, column: 42, scope: !3012)
!3014 = !DILocation(line: 1434, column: 45, scope: !3012)
!3015 = !DILocation(line: 1434, column: 48, scope: !3012)
!3016 = !DILocation(line: 1434, column: 12, scope: !3012)
!3017 = !DILocation(line: 1434, column: 5, scope: !3012)
!3018 = !DILocation(line: 1436, column: 14, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2986, file: !1, line: 1436, column: 14)
!3020 = !DILocation(line: 1436, column: 16, scope: !3019)
!3021 = !DILocation(line: 1437, column: 11, scope: !3019)
!3022 = !DILocation(line: 1437, column: 31, scope: !3023)
!3023 = !DILexicalBlockFile(scope: !3019, file: !1, discriminator: 1)
!3024 = !DILocation(line: 1437, column: 26, scope: !3023)
!3025 = !DILocation(line: 1437, column: 14, scope: !3026)
!3026 = !DILexicalBlockFile(scope: !3023, file: !1, discriminator: 2)
!3027 = !DILocation(line: 1437, column: 60, scope: !3023)
!3028 = !DILocation(line: 1437, column: 59, scope: !3023)
!3029 = !DILocation(line: 1437, column: 62, scope: !3023)
!3030 = !DILocation(line: 1437, column: 61, scope: !3023)
!3031 = !DILocation(line: 1437, column: 51, scope: !3032)
!3032 = !DILexicalBlockFile(scope: !3023, file: !1, discriminator: 3)
!3033 = !DILocation(line: 1437, column: 39, scope: !3034)
!3034 = !DILexicalBlockFile(scope: !3023, file: !1, discriminator: 4)
!3035 = !DILocation(line: 1437, column: 38, scope: !3023)
!3036 = !DILocation(line: 1437, column: 81, scope: !3023)
!3037 = !DILocation(line: 1437, column: 76, scope: !3038)
!3038 = !DILexicalBlockFile(scope: !3023, file: !1, discriminator: 5)
!3039 = !DILocation(line: 1437, column: 75, scope: !3023)
!3040 = !DILocation(line: 1437, column: 70, scope: !3023)
!3041 = !DILocation(line: 1436, column: 14, scope: !2990)
!3042 = !DILocation(line: 1441, column: 34, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3019, file: !1, line: 1438, column: 7)
!3044 = !DILocation(line: 1441, column: 37, scope: !3043)
!3045 = !DILocation(line: 1441, column: 40, scope: !3043)
!3046 = !DILocation(line: 1441, column: 43, scope: !3043)
!3047 = !DILocation(line: 1441, column: 12, scope: !3043)
!3048 = !DILocation(line: 1441, column: 5, scope: !3043)
!3049 = !DILocation(line: 1443, column: 14, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3019, file: !1, line: 1443, column: 14)
!3051 = !DILocation(line: 1443, column: 16, scope: !3050)
!3052 = !DILocation(line: 1444, column: 11, scope: !3050)
!3053 = !DILocation(line: 1444, column: 31, scope: !3054)
!3054 = !DILexicalBlockFile(scope: !3050, file: !1, discriminator: 1)
!3055 = !DILocation(line: 1444, column: 33, scope: !3054)
!3056 = !DILocation(line: 1444, column: 32, scope: !3054)
!3057 = !DILocation(line: 1444, column: 26, scope: !3054)
!3058 = !DILocation(line: 1444, column: 14, scope: !3059)
!3059 = !DILexicalBlockFile(scope: !3054, file: !1, discriminator: 2)
!3060 = !DILocation(line: 1444, column: 62, scope: !3054)
!3061 = !DILocation(line: 1444, column: 61, scope: !3054)
!3062 = !DILocation(line: 1444, column: 53, scope: !3063)
!3063 = !DILexicalBlockFile(scope: !3054, file: !1, discriminator: 3)
!3064 = !DILocation(line: 1444, column: 41, scope: !3065)
!3065 = !DILexicalBlockFile(scope: !3054, file: !1, discriminator: 4)
!3066 = !DILocation(line: 1444, column: 40, scope: !3054)
!3067 = !DILocation(line: 1444, column: 81, scope: !3054)
!3068 = !DILocation(line: 1444, column: 76, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !3054, file: !1, discriminator: 5)
!3070 = !DILocation(line: 1444, column: 75, scope: !3054)
!3071 = !DILocation(line: 1444, column: 70, scope: !3054)
!3072 = !DILocation(line: 1443, column: 14, scope: !3023)
!3073 = !DILocation(line: 1448, column: 34, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3050, file: !1, line: 1445, column: 7)
!3075 = !DILocation(line: 1448, column: 37, scope: !3074)
!3076 = !DILocation(line: 1448, column: 40, scope: !3074)
!3077 = !DILocation(line: 1448, column: 43, scope: !3074)
!3078 = !DILocation(line: 1448, column: 12, scope: !3074)
!3079 = !DILocation(line: 1448, column: 5, scope: !3074)
!3080 = !DILocation(line: 1450, column: 16, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3050, file: !1, line: 1450, column: 11)
!3082 = !DILocation(line: 1450, column: 18, scope: !3081)
!3083 = !DILocation(line: 1450, column: 17, scope: !3081)
!3084 = !DILocation(line: 1450, column: 11, scope: !3081)
!3085 = !DILocation(line: 1450, column: 21, scope: !3081)
!3086 = !DILocation(line: 1450, column: 11, scope: !3050)
!3087 = !DILocation(line: 1453, column: 33, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3081, file: !1, line: 1450, column: 29)
!3089 = !DILocation(line: 1453, column: 35, scope: !3088)
!3090 = !DILocation(line: 1453, column: 34, scope: !3088)
!3091 = !DILocation(line: 1453, column: 38, scope: !3088)
!3092 = !DILocation(line: 1453, column: 41, scope: !3088)
!3093 = !DILocation(line: 1453, column: 44, scope: !3088)
!3094 = !DILocation(line: 1453, column: 12, scope: !3088)
!3095 = !DILocation(line: 1453, column: 5, scope: !3088)
!3096 = !DILocation(line: 1456, column: 11, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3081, file: !1, line: 1456, column: 11)
!3098 = !DILocation(line: 1456, column: 15, scope: !3097)
!3099 = !DILocation(line: 1456, column: 13, scope: !3097)
!3100 = !DILocation(line: 1456, column: 17, scope: !3097)
!3101 = !DILocation(line: 1456, column: 20, scope: !3102)
!3102 = !DILexicalBlockFile(scope: !3097, file: !1, discriminator: 1)
!3103 = !DILocation(line: 1456, column: 27, scope: !3102)
!3104 = !DILocation(line: 1456, column: 26, scope: !3102)
!3105 = !DILocation(line: 1456, column: 31, scope: !3102)
!3106 = !DILocation(line: 1456, column: 29, scope: !3102)
!3107 = !DILocation(line: 1456, column: 22, scope: !3102)
!3108 = !DILocation(line: 1456, column: 11, scope: !3102)
!3109 = !DILocalVariable(name: "rap", scope: !3110, file: !1, line: 1461, type: !52)
!3110 = distinct !DILexicalBlock(scope: !3097, file: !1, line: 1456, column: 34)
!3111 = !DILocation(line: 1461, column: 12, scope: !3110)
!3112 = !DILocalVariable(name: "stat_CF1", scope: !3110, file: !1, line: 1462, type: !42)
!3113 = !DILocation(line: 1462, column: 9, scope: !3110)
!3114 = !DILocation(line: 1462, column: 41, scope: !3110)
!3115 = !DILocation(line: 1462, column: 44, scope: !3110)
!3116 = !DILocation(line: 1462, column: 47, scope: !3110)
!3117 = !DILocation(line: 1462, column: 20, scope: !3110)
!3118 = !DILocalVariable(name: "ra", scope: !3110, file: !1, line: 1463, type: !52)
!3119 = !DILocation(line: 1463, column: 12, scope: !3110)
!3120 = !DILocation(line: 1463, column: 23, scope: !3110)
!3121 = !DILocation(line: 1463, column: 25, scope: !3110)
!3122 = !DILocation(line: 1463, column: 24, scope: !3110)
!3123 = !DILocation(line: 1463, column: 29, scope: !3110)
!3124 = !DILocation(line: 1463, column: 27, scope: !3110)
!3125 = !DILocation(line: 1463, column: 21, scope: !3110)
!3126 = !DILocalVariable(name: "Ma", scope: !3110, file: !1, line: 1465, type: !52)
!3127 = !DILocation(line: 1465, column: 12, scope: !3110)
!3128 = !DILocalVariable(name: "Map1", scope: !3110, file: !1, line: 1466, type: !52)
!3129 = !DILocation(line: 1466, column: 12, scope: !3110)
!3130 = !DILocation(line: 1466, column: 19, scope: !3110)
!3131 = !DILocation(line: 1466, column: 24, scope: !3110)
!3132 = !DILocation(line: 1466, column: 22, scope: !3110)
!3133 = !DILocalVariable(name: "Mnp1", scope: !3110, file: !1, line: 1467, type: !52)
!3134 = !DILocation(line: 1467, column: 12, scope: !3110)
!3135 = !DILocation(line: 1467, column: 19, scope: !3110)
!3136 = !DILocalVariable(name: "Mn", scope: !3110, file: !1, line: 1468, type: !52)
!3137 = !DILocation(line: 1468, column: 12, scope: !3110)
!3138 = !DILocation(line: 1468, column: 19, scope: !3110)
!3139 = !DILocalVariable(name: "Mnm1", scope: !3110, file: !1, line: 1469, type: !52)
!3140 = !DILocation(line: 1469, column: 12, scope: !3110)
!3141 = !DILocalVariable(name: "Mn_true", scope: !3110, file: !1, line: 1470, type: !54)
!3142 = !DILocation(line: 1470, column: 19, scope: !3110)
!3143 = !DILocalVariable(name: "stat_Mt", scope: !3110, file: !1, line: 1471, type: !42)
!3144 = !DILocation(line: 1471, column: 9, scope: !3110)
!3145 = !DILocalVariable(name: "n", scope: !3110, file: !1, line: 1472, type: !52)
!3146 = !DILocation(line: 1472, column: 12, scope: !3110)
!3147 = !DILocation(line: 1473, column: 11, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3110, file: !1, line: 1473, column: 5)
!3149 = !DILocation(line: 1473, column: 10, scope: !3148)
!3150 = !DILocation(line: 1473, column: 9, scope: !3148)
!3151 = !DILocation(line: 1473, column: 14, scope: !3152)
!3152 = !DILexicalBlockFile(scope: !3153, file: !1, discriminator: 1)
!3153 = distinct !DILexicalBlock(scope: !3148, file: !1, line: 1473, column: 5)
!3154 = !DILocation(line: 1473, column: 15, scope: !3152)
!3155 = !DILocation(line: 1473, column: 5, scope: !3152)
!3156 = !DILocation(line: 1474, column: 15, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !1, line: 1473, column: 31)
!3158 = !DILocation(line: 1474, column: 19, scope: !3157)
!3159 = !DILocation(line: 1474, column: 17, scope: !3157)
!3160 = !DILocation(line: 1474, column: 31, scope: !3157)
!3161 = !DILocation(line: 1474, column: 30, scope: !3157)
!3162 = !DILocation(line: 1474, column: 33, scope: !3157)
!3163 = !DILocation(line: 1474, column: 32, scope: !3157)
!3164 = !DILocation(line: 1474, column: 35, scope: !3157)
!3165 = !DILocation(line: 1474, column: 34, scope: !3157)
!3166 = !DILocation(line: 1474, column: 40, scope: !3157)
!3167 = !DILocation(line: 1474, column: 38, scope: !3157)
!3168 = !DILocation(line: 1474, column: 24, scope: !3157)
!3169 = !DILocation(line: 1474, column: 47, scope: !3157)
!3170 = !DILocation(line: 1474, column: 49, scope: !3157)
!3171 = !DILocation(line: 1474, column: 48, scope: !3157)
!3172 = !DILocation(line: 1474, column: 44, scope: !3157)
!3173 = !DILocation(line: 1474, column: 12, scope: !3157)
!3174 = !DILocation(line: 1475, column: 14, scope: !3157)
!3175 = !DILocation(line: 1475, column: 12, scope: !3157)
!3176 = !DILocation(line: 1476, column: 14, scope: !3157)
!3177 = !DILocation(line: 1476, column: 12, scope: !3157)
!3178 = !DILocation(line: 1477, column: 5, scope: !3157)
!3179 = !DILocation(line: 1473, column: 23, scope: !3180)
!3180 = !DILexicalBlockFile(scope: !3153, file: !1, discriminator: 2)
!3181 = !DILocation(line: 1473, column: 5, scope: !3180)
!3182 = distinct !{!3182, !3183}
!3183 = !DILocation(line: 1473, column: 5, scope: !3110)
!3184 = !DILocation(line: 1479, column: 39, scope: !3110)
!3185 = !DILocation(line: 1479, column: 42, scope: !3110)
!3186 = !DILocation(line: 1479, column: 45, scope: !3110)
!3187 = !DILocation(line: 1479, column: 15, scope: !3110)
!3188 = !DILocation(line: 1479, column: 13, scope: !3110)
!3189 = !DILocation(line: 1481, column: 21, scope: !3110)
!3190 = !DILocation(line: 1481, column: 24, scope: !3110)
!3191 = !DILocation(line: 1481, column: 23, scope: !3110)
!3192 = !DILocation(line: 1481, column: 38, scope: !3110)
!3193 = !DILocation(line: 1481, column: 28, scope: !3110)
!3194 = !DILocation(line: 1481, column: 5, scope: !3110)
!3195 = !DILocation(line: 1481, column: 13, scope: !3110)
!3196 = !DILocation(line: 1481, column: 18, scope: !3110)
!3197 = !DILocation(line: 1482, column: 25, scope: !3110)
!3198 = !DILocation(line: 1482, column: 28, scope: !3110)
!3199 = !DILocation(line: 1482, column: 27, scope: !3110)
!3200 = !DILocation(line: 1482, column: 20, scope: !3110)
!3201 = !DILocation(line: 1482, column: 42, scope: !3110)
!3202 = !DILocation(line: 1482, column: 32, scope: !3110)
!3203 = !DILocation(line: 1482, column: 5, scope: !3110)
!3204 = !DILocation(line: 1482, column: 13, scope: !3110)
!3205 = !DILocation(line: 1482, column: 18, scope: !3110)
!3206 = !DILocation(line: 1483, column: 50, scope: !3110)
!3207 = !DILocation(line: 1483, column: 45, scope: !3110)
!3208 = !DILocation(line: 1483, column: 52, scope: !3110)
!3209 = !DILocation(line: 1483, column: 42, scope: !3110)
!3210 = !DILocation(line: 1483, column: 65, scope: !3110)
!3211 = !DILocation(line: 1483, column: 73, scope: !3110)
!3212 = !DILocation(line: 1483, column: 60, scope: !3213)
!3213 = !DILexicalBlockFile(scope: !3110, file: !1, discriminator: 1)
!3214 = !DILocation(line: 1483, column: 58, scope: !3110)
!3215 = !DILocation(line: 1483, column: 5, scope: !3110)
!3216 = !DILocation(line: 1483, column: 13, scope: !3110)
!3217 = !DILocation(line: 1483, column: 17, scope: !3110)
!3218 = !DILocation(line: 1484, column: 12, scope: !3110)
!3219 = !DILocation(line: 1484, column: 12, scope: !3213)
!3220 = !DILocation(line: 1484, column: 12, scope: !3221)
!3221 = !DILexicalBlockFile(scope: !3110, file: !1, discriminator: 2)
!3222 = !DILocation(line: 1484, column: 12, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !3110, file: !1, discriminator: 3)
!3224 = !DILocation(line: 1484, column: 12, scope: !3225)
!3225 = !DILexicalBlockFile(scope: !3110, file: !1, discriminator: 4)
!3226 = !DILocation(line: 1484, column: 12, scope: !3227)
!3227 = !DILexicalBlockFile(scope: !3110, file: !1, discriminator: 5)
!3228 = !DILocation(line: 1484, column: 12, scope: !3229)
!3229 = !DILexicalBlockFile(scope: !3110, file: !1, discriminator: 6)
!3230 = !DILocation(line: 1484, column: 5, scope: !3229)
!3231 = !DILocation(line: 1486, column: 11, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3097, file: !1, line: 1486, column: 11)
!3233 = !DILocation(line: 1486, column: 15, scope: !3232)
!3234 = !DILocation(line: 1486, column: 13, scope: !3232)
!3235 = !DILocation(line: 1486, column: 17, scope: !3232)
!3236 = !DILocation(line: 1486, column: 20, scope: !3237)
!3237 = !DILexicalBlockFile(scope: !3232, file: !1, discriminator: 1)
!3238 = !DILocation(line: 1486, column: 26, scope: !3237)
!3239 = !DILocation(line: 1486, column: 25, scope: !3237)
!3240 = !DILocation(line: 1486, column: 30, scope: !3237)
!3241 = !DILocation(line: 1486, column: 28, scope: !3237)
!3242 = !DILocation(line: 1486, column: 22, scope: !3237)
!3243 = !DILocation(line: 1486, column: 32, scope: !3237)
!3244 = !DILocation(line: 1486, column: 35, scope: !3245)
!3245 = !DILexicalBlockFile(scope: !3232, file: !1, discriminator: 2)
!3246 = !DILocation(line: 1486, column: 39, scope: !3245)
!3247 = !DILocation(line: 1486, column: 37, scope: !3245)
!3248 = !DILocation(line: 1486, column: 11, scope: !3245)
!3249 = !DILocalVariable(name: "Mn_true", scope: !3250, file: !1, line: 1493, type: !54)
!3250 = distinct !DILexicalBlock(scope: !3232, file: !1, line: 1486, column: 42)
!3251 = !DILocation(line: 1493, column: 19, scope: !3250)
!3252 = !DILocalVariable(name: "stat_Mt", scope: !3250, file: !1, line: 1494, type: !42)
!3253 = !DILocation(line: 1494, column: 9, scope: !3250)
!3254 = !DILocalVariable(name: "rap", scope: !3250, file: !1, line: 1495, type: !52)
!3255 = !DILocation(line: 1495, column: 12, scope: !3250)
!3256 = !DILocalVariable(name: "stat_CF1", scope: !3250, file: !1, line: 1496, type: !42)
!3257 = !DILocation(line: 1496, column: 9, scope: !3250)
!3258 = !DILocation(line: 1496, column: 41, scope: !3250)
!3259 = !DILocation(line: 1496, column: 44, scope: !3250)
!3260 = !DILocation(line: 1496, column: 47, scope: !3250)
!3261 = !DILocation(line: 1496, column: 20, scope: !3250)
!3262 = !DILocalVariable(name: "ra", scope: !3250, file: !1, line: 1497, type: !52)
!3263 = !DILocation(line: 1497, column: 12, scope: !3250)
!3264 = !DILocation(line: 1497, column: 23, scope: !3250)
!3265 = !DILocation(line: 1497, column: 25, scope: !3250)
!3266 = !DILocation(line: 1497, column: 24, scope: !3250)
!3267 = !DILocation(line: 1497, column: 29, scope: !3250)
!3268 = !DILocation(line: 1497, column: 27, scope: !3250)
!3269 = !DILocation(line: 1497, column: 21, scope: !3250)
!3270 = !DILocalVariable(name: "Ma", scope: !3250, file: !1, line: 1498, type: !52)
!3271 = !DILocation(line: 1498, column: 12, scope: !3250)
!3272 = !DILocalVariable(name: "Mnm1", scope: !3250, file: !1, line: 1499, type: !52)
!3273 = !DILocation(line: 1499, column: 12, scope: !3250)
!3274 = !DILocation(line: 1499, column: 19, scope: !3250)
!3275 = !DILocalVariable(name: "Mn", scope: !3250, file: !1, line: 1500, type: !52)
!3276 = !DILocation(line: 1500, column: 12, scope: !3250)
!3277 = !DILocation(line: 1500, column: 19, scope: !3250)
!3278 = !DILocation(line: 1500, column: 24, scope: !3250)
!3279 = !DILocation(line: 1500, column: 22, scope: !3250)
!3280 = !DILocalVariable(name: "Mnp1", scope: !3250, file: !1, line: 1501, type: !52)
!3281 = !DILocation(line: 1501, column: 12, scope: !3250)
!3282 = !DILocalVariable(name: "n", scope: !3250, file: !1, line: 1502, type: !52)
!3283 = !DILocation(line: 1502, column: 12, scope: !3250)
!3284 = !DILocation(line: 1503, column: 11, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3250, file: !1, line: 1503, column: 5)
!3286 = !DILocation(line: 1503, column: 12, scope: !3285)
!3287 = !DILocation(line: 1503, column: 10, scope: !3285)
!3288 = !DILocation(line: 1503, column: 9, scope: !3285)
!3289 = !DILocation(line: 1503, column: 18, scope: !3290)
!3290 = !DILexicalBlockFile(scope: !3291, file: !1, discriminator: 1)
!3291 = distinct !DILexicalBlock(scope: !3285, file: !1, line: 1503, column: 5)
!3292 = !DILocation(line: 1503, column: 20, scope: !3290)
!3293 = !DILocation(line: 1503, column: 21, scope: !3290)
!3294 = !DILocation(line: 1503, column: 19, scope: !3290)
!3295 = !DILocation(line: 1503, column: 5, scope: !3290)
!3296 = !DILocation(line: 1504, column: 16, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3291, file: !1, line: 1503, column: 37)
!3298 = !DILocation(line: 1504, column: 18, scope: !3297)
!3299 = !DILocation(line: 1504, column: 17, scope: !3297)
!3300 = !DILocation(line: 1504, column: 21, scope: !3297)
!3301 = !DILocation(line: 1504, column: 20, scope: !3297)
!3302 = !DILocation(line: 1504, column: 31, scope: !3297)
!3303 = !DILocation(line: 1504, column: 30, scope: !3297)
!3304 = !DILocation(line: 1504, column: 33, scope: !3297)
!3305 = !DILocation(line: 1504, column: 32, scope: !3297)
!3306 = !DILocation(line: 1504, column: 35, scope: !3297)
!3307 = !DILocation(line: 1504, column: 34, scope: !3297)
!3308 = !DILocation(line: 1504, column: 38, scope: !3297)
!3309 = !DILocation(line: 1504, column: 37, scope: !3297)
!3310 = !DILocation(line: 1504, column: 26, scope: !3297)
!3311 = !DILocation(line: 1504, column: 42, scope: !3297)
!3312 = !DILocation(line: 1504, column: 41, scope: !3297)
!3313 = !DILocation(line: 1504, column: 12, scope: !3297)
!3314 = !DILocation(line: 1505, column: 14, scope: !3297)
!3315 = !DILocation(line: 1505, column: 12, scope: !3297)
!3316 = !DILocation(line: 1506, column: 14, scope: !3297)
!3317 = !DILocation(line: 1506, column: 12, scope: !3297)
!3318 = !DILocation(line: 1507, column: 5, scope: !3297)
!3319 = !DILocation(line: 1503, column: 29, scope: !3320)
!3320 = !DILexicalBlockFile(scope: !3291, file: !1, discriminator: 2)
!3321 = !DILocation(line: 1503, column: 5, scope: !3320)
!3322 = distinct !{!3322, !3323}
!3323 = !DILocation(line: 1503, column: 5, scope: !3250)
!3324 = !DILocation(line: 1508, column: 36, scope: !3250)
!3325 = !DILocation(line: 1508, column: 38, scope: !3250)
!3326 = !DILocation(line: 1508, column: 37, scope: !3250)
!3327 = !DILocation(line: 1508, column: 41, scope: !3250)
!3328 = !DILocation(line: 1508, column: 44, scope: !3250)
!3329 = !DILocation(line: 1508, column: 15, scope: !3250)
!3330 = !DILocation(line: 1508, column: 13, scope: !3250)
!3331 = !DILocation(line: 1509, column: 20, scope: !3250)
!3332 = !DILocation(line: 1509, column: 23, scope: !3250)
!3333 = !DILocation(line: 1509, column: 22, scope: !3250)
!3334 = !DILocation(line: 1509, column: 36, scope: !3250)
!3335 = !DILocation(line: 1509, column: 26, scope: !3250)
!3336 = !DILocation(line: 1509, column: 5, scope: !3250)
!3337 = !DILocation(line: 1509, column: 13, scope: !3250)
!3338 = !DILocation(line: 1509, column: 18, scope: !3250)
!3339 = !DILocation(line: 1510, column: 25, scope: !3250)
!3340 = !DILocation(line: 1510, column: 28, scope: !3250)
!3341 = !DILocation(line: 1510, column: 27, scope: !3250)
!3342 = !DILocation(line: 1510, column: 20, scope: !3250)
!3343 = !DILocation(line: 1510, column: 42, scope: !3250)
!3344 = !DILocation(line: 1510, column: 32, scope: !3250)
!3345 = !DILocation(line: 1510, column: 5, scope: !3250)
!3346 = !DILocation(line: 1510, column: 13, scope: !3250)
!3347 = !DILocation(line: 1510, column: 18, scope: !3250)
!3348 = !DILocation(line: 1511, column: 50, scope: !3250)
!3349 = !DILocation(line: 1511, column: 52, scope: !3250)
!3350 = !DILocation(line: 1511, column: 51, scope: !3250)
!3351 = !DILocation(line: 1511, column: 45, scope: !3250)
!3352 = !DILocation(line: 1511, column: 54, scope: !3250)
!3353 = !DILocation(line: 1511, column: 42, scope: !3250)
!3354 = !DILocation(line: 1511, column: 67, scope: !3250)
!3355 = !DILocation(line: 1511, column: 75, scope: !3250)
!3356 = !DILocation(line: 1511, column: 62, scope: !3357)
!3357 = !DILexicalBlockFile(scope: !3250, file: !1, discriminator: 1)
!3358 = !DILocation(line: 1511, column: 60, scope: !3250)
!3359 = !DILocation(line: 1511, column: 5, scope: !3250)
!3360 = !DILocation(line: 1511, column: 13, scope: !3250)
!3361 = !DILocation(line: 1511, column: 17, scope: !3250)
!3362 = !DILocation(line: 1512, column: 12, scope: !3250)
!3363 = !DILocation(line: 1512, column: 12, scope: !3357)
!3364 = !DILocation(line: 1512, column: 12, scope: !3365)
!3365 = !DILexicalBlockFile(scope: !3250, file: !1, discriminator: 2)
!3366 = !DILocation(line: 1512, column: 12, scope: !3367)
!3367 = !DILexicalBlockFile(scope: !3250, file: !1, discriminator: 3)
!3368 = !DILocation(line: 1512, column: 12, scope: !3369)
!3369 = !DILexicalBlockFile(scope: !3250, file: !1, discriminator: 4)
!3370 = !DILocation(line: 1512, column: 12, scope: !3371)
!3371 = !DILexicalBlockFile(scope: !3250, file: !1, discriminator: 5)
!3372 = !DILocation(line: 1512, column: 12, scope: !3373)
!3373 = !DILexicalBlockFile(scope: !3250, file: !1, discriminator: 6)
!3374 = !DILocation(line: 1512, column: 5, scope: !3373)
!3375 = !DILocation(line: 1514, column: 11, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3232, file: !1, line: 1514, column: 11)
!3377 = !DILocation(line: 1514, column: 13, scope: !3376)
!3378 = !DILocation(line: 1514, column: 11, scope: !3232)
!3379 = !DILocation(line: 1516, column: 8, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !1, line: 1516, column: 8)
!3381 = distinct !DILexicalBlock(scope: !3376, file: !1, line: 1514, column: 21)
!3382 = !DILocation(line: 1516, column: 12, scope: !3380)
!3383 = !DILocation(line: 1516, column: 10, scope: !3380)
!3384 = !DILocation(line: 1516, column: 8, scope: !3381)
!3385 = !DILocalVariable(name: "N", scope: !3386, file: !1, line: 1519, type: !52)
!3386 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 1516, column: 15)
!3387 = !DILocation(line: 1519, column: 14, scope: !3386)
!3388 = !DILocation(line: 1519, column: 26, scope: !3386)
!3389 = !DILocation(line: 1519, column: 28, scope: !3386)
!3390 = !DILocation(line: 1519, column: 27, scope: !3386)
!3391 = !DILocation(line: 1519, column: 20, scope: !3386)
!3392 = !DILocalVariable(name: "eps", scope: !3386, file: !1, line: 1520, type: !52)
!3393 = !DILocation(line: 1520, column: 14, scope: !3386)
!3394 = !DILocation(line: 1520, column: 20, scope: !3386)
!3395 = !DILocation(line: 1520, column: 24, scope: !3386)
!3396 = !DILocation(line: 1520, column: 22, scope: !3386)
!3397 = !DILocation(line: 1520, column: 28, scope: !3386)
!3398 = !DILocation(line: 1520, column: 26, scope: !3386)
!3399 = !DILocalVariable(name: "r_M0", scope: !3386, file: !1, line: 1521, type: !54)
!3400 = !DILocation(line: 1521, column: 21, scope: !3386)
!3401 = !DILocalVariable(name: "r_M1", scope: !3386, file: !1, line: 1522, type: !54)
!3402 = !DILocation(line: 1522, column: 21, scope: !3386)
!3403 = !DILocalVariable(name: "stat_0", scope: !3386, file: !1, line: 1523, type: !42)
!3404 = !DILocation(line: 1523, column: 11, scope: !3386)
!3405 = !DILocation(line: 1523, column: 41, scope: !3386)
!3406 = !DILocation(line: 1523, column: 44, scope: !3386)
!3407 = !DILocation(line: 1523, column: 50, scope: !3386)
!3408 = !DILocation(line: 1523, column: 53, scope: !3386)
!3409 = !DILocation(line: 1523, column: 20, scope: !3386)
!3410 = !DILocalVariable(name: "stat_1", scope: !3386, file: !1, line: 1524, type: !42)
!3411 = !DILocation(line: 1524, column: 11, scope: !3386)
!3412 = !DILocation(line: 1524, column: 41, scope: !3386)
!3413 = !DILocation(line: 1524, column: 50, scope: !3386)
!3414 = !DILocation(line: 1524, column: 53, scope: !3386)
!3415 = !DILocation(line: 1524, column: 20, scope: !3386)
!3416 = !DILocalVariable(name: "M0", scope: !3386, file: !1, line: 1525, type: !52)
!3417 = !DILocation(line: 1525, column: 14, scope: !3386)
!3418 = !DILocation(line: 1525, column: 24, scope: !3386)
!3419 = !DILocalVariable(name: "M1", scope: !3386, file: !1, line: 1526, type: !52)
!3420 = !DILocation(line: 1526, column: 14, scope: !3386)
!3421 = !DILocation(line: 1526, column: 24, scope: !3386)
!3422 = !DILocalVariable(name: "Mam1", scope: !3386, file: !1, line: 1528, type: !52)
!3423 = !DILocation(line: 1528, column: 14, scope: !3386)
!3424 = !DILocation(line: 1528, column: 21, scope: !3386)
!3425 = !DILocalVariable(name: "Ma", scope: !3386, file: !1, line: 1529, type: !52)
!3426 = !DILocation(line: 1529, column: 14, scope: !3386)
!3427 = !DILocation(line: 1529, column: 21, scope: !3386)
!3428 = !DILocalVariable(name: "Map1", scope: !3386, file: !1, line: 1530, type: !52)
!3429 = !DILocation(line: 1530, column: 14, scope: !3386)
!3430 = !DILocalVariable(name: "ap", scope: !3386, file: !1, line: 1531, type: !52)
!3431 = !DILocation(line: 1531, column: 14, scope: !3386)
!3432 = !DILocalVariable(name: "start_pair", scope: !3386, file: !1, line: 1532, type: !52)
!3433 = !DILocation(line: 1532, column: 14, scope: !3386)
!3434 = !DILocation(line: 1532, column: 32, scope: !3386)
!3435 = !DILocation(line: 1532, column: 27, scope: !3386)
!3436 = !DILocation(line: 1532, column: 43, scope: !3386)
!3437 = !DILocation(line: 1532, column: 38, scope: !3438)
!3438 = !DILexicalBlockFile(scope: !3386, file: !1, discriminator: 1)
!3439 = !DILocation(line: 1532, column: 36, scope: !3386)
!3440 = !DILocalVariable(name: "minim_pair", scope: !3386, file: !1, line: 1533, type: !52)
!3441 = !DILocation(line: 1533, column: 14, scope: !3386)
!3442 = !DILocalVariable(name: "pair_ratio", scope: !3386, file: !1, line: 1534, type: !52)
!3443 = !DILocation(line: 1534, column: 14, scope: !3386)
!3444 = !DILocalVariable(name: "rat_0", scope: !3386, file: !1, line: 1535, type: !52)
!3445 = !DILocation(line: 1535, column: 14, scope: !3386)
!3446 = !DILocation(line: 1535, column: 32, scope: !3386)
!3447 = !DILocation(line: 1535, column: 41, scope: !3386)
!3448 = !DILocation(line: 1535, column: 35, scope: !3386)
!3449 = !DILocation(line: 1535, column: 22, scope: !3386)
!3450 = !DILocalVariable(name: "rat_1", scope: !3386, file: !1, line: 1536, type: !52)
!3451 = !DILocation(line: 1536, column: 14, scope: !3386)
!3452 = !DILocation(line: 1536, column: 32, scope: !3386)
!3453 = !DILocation(line: 1536, column: 41, scope: !3386)
!3454 = !DILocation(line: 1536, column: 35, scope: !3386)
!3455 = !DILocation(line: 1536, column: 22, scope: !3386)
!3456 = !DILocation(line: 1537, column: 14, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3386, file: !1, line: 1537, column: 7)
!3458 = !DILocation(line: 1537, column: 16, scope: !3457)
!3459 = !DILocation(line: 1537, column: 15, scope: !3457)
!3460 = !DILocation(line: 1537, column: 13, scope: !3457)
!3461 = !DILocation(line: 1537, column: 11, scope: !3457)
!3462 = !DILocation(line: 1537, column: 21, scope: !3463)
!3463 = !DILexicalBlockFile(scope: !3464, file: !1, discriminator: 1)
!3464 = distinct !DILexicalBlock(scope: !3457, file: !1, line: 1537, column: 7)
!3465 = !DILocation(line: 1537, column: 24, scope: !3463)
!3466 = !DILocation(line: 1537, column: 25, scope: !3463)
!3467 = !DILocation(line: 1537, column: 23, scope: !3463)
!3468 = !DILocation(line: 1537, column: 7, scope: !3463)
!3469 = !DILocation(line: 1538, column: 18, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3464, file: !1, line: 1537, column: 42)
!3471 = !DILocation(line: 1538, column: 20, scope: !3470)
!3472 = !DILocation(line: 1538, column: 19, scope: !3470)
!3473 = !DILocation(line: 1538, column: 24, scope: !3470)
!3474 = !DILocation(line: 1538, column: 23, scope: !3470)
!3475 = !DILocation(line: 1538, column: 36, scope: !3470)
!3476 = !DILocation(line: 1538, column: 35, scope: !3470)
!3477 = !DILocation(line: 1538, column: 39, scope: !3470)
!3478 = !DILocation(line: 1538, column: 38, scope: !3470)
!3479 = !DILocation(line: 1538, column: 41, scope: !3470)
!3480 = !DILocation(line: 1538, column: 40, scope: !3470)
!3481 = !DILocation(line: 1538, column: 44, scope: !3470)
!3482 = !DILocation(line: 1538, column: 43, scope: !3470)
!3483 = !DILocation(line: 1538, column: 29, scope: !3470)
!3484 = !DILocation(line: 1538, column: 48, scope: !3470)
!3485 = !DILocation(line: 1538, column: 47, scope: !3470)
!3486 = !DILocation(line: 1538, column: 14, scope: !3470)
!3487 = !DILocation(line: 1539, column: 16, scope: !3470)
!3488 = !DILocation(line: 1539, column: 14, scope: !3470)
!3489 = !DILocation(line: 1540, column: 16, scope: !3470)
!3490 = !DILocation(line: 1540, column: 14, scope: !3470)
!3491 = !DILocation(line: 1541, column: 39, scope: !3470)
!3492 = !DILocation(line: 1541, column: 34, scope: !3470)
!3493 = !DILocation(line: 1541, column: 52, scope: !3470)
!3494 = !DILocation(line: 1541, column: 47, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3470, file: !1, discriminator: 1)
!3496 = !DILocation(line: 1541, column: 45, scope: !3470)
!3497 = !DILocation(line: 1541, column: 57, scope: !3470)
!3498 = !DILocation(line: 1541, column: 22, scope: !3499)
!3499 = !DILexicalBlockFile(scope: !3470, file: !1, discriminator: 2)
!3500 = !DILocation(line: 1541, column: 20, scope: !3470)
!3501 = !DILocation(line: 1542, column: 7, scope: !3470)
!3502 = !DILocation(line: 1537, column: 34, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3464, file: !1, discriminator: 2)
!3504 = !DILocation(line: 1537, column: 7, scope: !3503)
!3505 = distinct !{!3505, !3506}
!3506 = !DILocation(line: 1537, column: 7, scope: !3386)
!3507 = !DILocation(line: 1543, column: 20, scope: !3386)
!3508 = !DILocation(line: 1543, column: 31, scope: !3386)
!3509 = !DILocation(line: 1543, column: 30, scope: !3386)
!3510 = !DILocation(line: 1543, column: 18, scope: !3386)
!3511 = !DILocation(line: 1544, column: 22, scope: !3386)
!3512 = !DILocation(line: 1544, column: 7, scope: !3386)
!3513 = !DILocation(line: 1544, column: 15, scope: !3386)
!3514 = !DILocation(line: 1544, column: 20, scope: !3386)
!3515 = !DILocation(line: 1545, column: 29, scope: !3386)
!3516 = !DILocation(line: 1545, column: 37, scope: !3386)
!3517 = !DILocation(line: 1545, column: 35, scope: !3386)
!3518 = !DILocation(line: 1545, column: 43, scope: !3386)
!3519 = !DILocation(line: 1545, column: 26, scope: !3386)
!3520 = !DILocation(line: 1545, column: 70, scope: !3386)
!3521 = !DILocation(line: 1545, column: 72, scope: !3386)
!3522 = !DILocation(line: 1545, column: 71, scope: !3386)
!3523 = !DILocation(line: 1545, column: 65, scope: !3386)
!3524 = !DILocation(line: 1545, column: 74, scope: !3386)
!3525 = !DILocation(line: 1545, column: 62, scope: !3386)
!3526 = !DILocation(line: 1545, column: 87, scope: !3386)
!3527 = !DILocation(line: 1545, column: 82, scope: !3438)
!3528 = !DILocation(line: 1545, column: 80, scope: !3386)
!3529 = !DILocation(line: 1545, column: 7, scope: !3386)
!3530 = !DILocation(line: 1545, column: 15, scope: !3386)
!3531 = !DILocation(line: 1545, column: 20, scope: !3386)
!3532 = !DILocation(line: 1546, column: 29, scope: !3386)
!3533 = !DILocation(line: 1546, column: 37, scope: !3386)
!3534 = !DILocation(line: 1546, column: 35, scope: !3386)
!3535 = !DILocation(line: 1546, column: 26, scope: !3386)
!3536 = !DILocation(line: 1546, column: 46, scope: !3386)
!3537 = !DILocation(line: 1546, column: 44, scope: !3386)
!3538 = !DILocation(line: 1546, column: 57, scope: !3386)
!3539 = !DILocation(line: 1546, column: 56, scope: !3386)
!3540 = !DILocation(line: 1546, column: 75, scope: !3386)
!3541 = !DILocation(line: 1546, column: 70, scope: !3386)
!3542 = !DILocation(line: 1546, column: 68, scope: !3386)
!3543 = !DILocation(line: 1546, column: 7, scope: !3386)
!3544 = !DILocation(line: 1546, column: 15, scope: !3386)
!3545 = !DILocation(line: 1546, column: 19, scope: !3386)
!3546 = !DILocation(line: 1547, column: 51, scope: !3386)
!3547 = !DILocation(line: 1547, column: 46, scope: !3386)
!3548 = !DILocation(line: 1547, column: 44, scope: !3386)
!3549 = !DILocation(line: 1547, column: 7, scope: !3386)
!3550 = !DILocation(line: 1547, column: 15, scope: !3386)
!3551 = !DILocation(line: 1547, column: 19, scope: !3386)
!3552 = !DILocation(line: 1548, column: 14, scope: !3386)
!3553 = !DILocation(line: 1548, column: 14, scope: !3438)
!3554 = !DILocation(line: 1548, column: 14, scope: !3555)
!3555 = !DILexicalBlockFile(scope: !3386, file: !1, discriminator: 2)
!3556 = !DILocation(line: 1548, column: 14, scope: !3557)
!3557 = !DILexicalBlockFile(scope: !3386, file: !1, discriminator: 3)
!3558 = !DILocation(line: 1548, column: 14, scope: !3559)
!3559 = !DILexicalBlockFile(scope: !3386, file: !1, discriminator: 4)
!3560 = !DILocation(line: 1548, column: 14, scope: !3561)
!3561 = !DILexicalBlockFile(scope: !3386, file: !1, discriminator: 5)
!3562 = !DILocation(line: 1548, column: 14, scope: !3563)
!3563 = !DILexicalBlockFile(scope: !3386, file: !1, discriminator: 6)
!3564 = !DILocation(line: 1548, column: 7, scope: !3563)
!3565 = !DILocalVariable(name: "eps", scope: !3566, file: !1, line: 1557, type: !52)
!3566 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 1550, column: 10)
!3567 = !DILocation(line: 1557, column: 14, scope: !3566)
!3568 = !DILocation(line: 1557, column: 20, scope: !3566)
!3569 = !DILocation(line: 1557, column: 30, scope: !3566)
!3570 = !DILocation(line: 1557, column: 24, scope: !3566)
!3571 = !DILocation(line: 1557, column: 22, scope: !3566)
!3572 = !DILocalVariable(name: "r_Mnm1", scope: !3566, file: !1, line: 1558, type: !54)
!3573 = !DILocation(line: 1558, column: 21, scope: !3566)
!3574 = !DILocalVariable(name: "r_Mn", scope: !3566, file: !1, line: 1559, type: !54)
!3575 = !DILocation(line: 1559, column: 21, scope: !3566)
!3576 = !DILocalVariable(name: "stat_0", scope: !3566, file: !1, line: 1560, type: !42)
!3577 = !DILocation(line: 1560, column: 11, scope: !3566)
!3578 = !DILocation(line: 1560, column: 44, scope: !3566)
!3579 = !DILocation(line: 1560, column: 53, scope: !3566)
!3580 = !DILocation(line: 1560, column: 56, scope: !3566)
!3581 = !DILocation(line: 1560, column: 20, scope: !3566)
!3582 = !DILocalVariable(name: "stat_1", scope: !3566, file: !1, line: 1561, type: !42)
!3583 = !DILocation(line: 1561, column: 11, scope: !3566)
!3584 = !DILocation(line: 1561, column: 44, scope: !3566)
!3585 = !DILocation(line: 1561, column: 47, scope: !3566)
!3586 = !DILocation(line: 1561, column: 53, scope: !3566)
!3587 = !DILocation(line: 1561, column: 56, scope: !3566)
!3588 = !DILocation(line: 1561, column: 20, scope: !3566)
!3589 = !DILocalVariable(name: "Mnm1", scope: !3566, file: !1, line: 1562, type: !52)
!3590 = !DILocation(line: 1562, column: 14, scope: !3566)
!3591 = !DILocation(line: 1562, column: 28, scope: !3566)
!3592 = !DILocalVariable(name: "Mn", scope: !3566, file: !1, line: 1563, type: !52)
!3593 = !DILocation(line: 1563, column: 14, scope: !3566)
!3594 = !DILocation(line: 1563, column: 26, scope: !3566)
!3595 = !DILocalVariable(name: "Mnp1", scope: !3566, file: !1, line: 1564, type: !52)
!3596 = !DILocation(line: 1564, column: 14, scope: !3566)
!3597 = !DILocalVariable(name: "n", scope: !3566, file: !1, line: 1566, type: !52)
!3598 = !DILocation(line: 1566, column: 14, scope: !3566)
!3599 = !DILocalVariable(name: "start_pair", scope: !3566, file: !1, line: 1567, type: !52)
!3600 = !DILocation(line: 1567, column: 14, scope: !3566)
!3601 = !DILocation(line: 1567, column: 32, scope: !3566)
!3602 = !DILocation(line: 1567, column: 27, scope: !3566)
!3603 = !DILocation(line: 1567, column: 43, scope: !3566)
!3604 = !DILocation(line: 1567, column: 38, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !3566, file: !1, discriminator: 1)
!3606 = !DILocation(line: 1567, column: 36, scope: !3566)
!3607 = !DILocalVariable(name: "minim_pair", scope: !3566, file: !1, line: 1568, type: !52)
!3608 = !DILocation(line: 1568, column: 14, scope: !3566)
!3609 = !DILocalVariable(name: "pair_ratio", scope: !3566, file: !1, line: 1569, type: !52)
!3610 = !DILocation(line: 1569, column: 14, scope: !3566)
!3611 = !DILocalVariable(name: "rat_0", scope: !3566, file: !1, line: 1570, type: !52)
!3612 = !DILocation(line: 1570, column: 14, scope: !3566)
!3613 = !DILocation(line: 1570, column: 34, scope: !3566)
!3614 = !DILocation(line: 1570, column: 45, scope: !3566)
!3615 = !DILocation(line: 1570, column: 37, scope: !3566)
!3616 = !DILocation(line: 1570, column: 22, scope: !3566)
!3617 = !DILocalVariable(name: "rat_1", scope: !3566, file: !1, line: 1571, type: !52)
!3618 = !DILocation(line: 1571, column: 14, scope: !3566)
!3619 = !DILocation(line: 1571, column: 32, scope: !3566)
!3620 = !DILocation(line: 1571, column: 41, scope: !3566)
!3621 = !DILocation(line: 1571, column: 35, scope: !3566)
!3622 = !DILocation(line: 1571, column: 22, scope: !3566)
!3623 = !DILocation(line: 1572, column: 13, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3566, file: !1, line: 1572, column: 7)
!3625 = !DILocation(line: 1572, column: 16, scope: !3624)
!3626 = !DILocation(line: 1572, column: 12, scope: !3624)
!3627 = !DILocation(line: 1572, column: 11, scope: !3624)
!3628 = !DILocation(line: 1572, column: 22, scope: !3629)
!3629 = !DILexicalBlockFile(scope: !3630, file: !1, discriminator: 1)
!3630 = distinct !DILexicalBlock(scope: !3624, file: !1, line: 1572, column: 7)
!3631 = !DILocation(line: 1572, column: 24, scope: !3629)
!3632 = !DILocation(line: 1572, column: 25, scope: !3629)
!3633 = !DILocation(line: 1572, column: 23, scope: !3629)
!3634 = !DILocation(line: 1572, column: 7, scope: !3629)
!3635 = !DILocation(line: 1573, column: 18, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3630, file: !1, line: 1572, column: 36)
!3637 = !DILocation(line: 1573, column: 20, scope: !3636)
!3638 = !DILocation(line: 1573, column: 19, scope: !3636)
!3639 = !DILocation(line: 1573, column: 23, scope: !3636)
!3640 = !DILocation(line: 1573, column: 22, scope: !3636)
!3641 = !DILocation(line: 1573, column: 33, scope: !3636)
!3642 = !DILocation(line: 1573, column: 32, scope: !3636)
!3643 = !DILocation(line: 1573, column: 35, scope: !3636)
!3644 = !DILocation(line: 1573, column: 34, scope: !3636)
!3645 = !DILocation(line: 1573, column: 37, scope: !3636)
!3646 = !DILocation(line: 1573, column: 36, scope: !3636)
!3647 = !DILocation(line: 1573, column: 40, scope: !3636)
!3648 = !DILocation(line: 1573, column: 39, scope: !3636)
!3649 = !DILocation(line: 1573, column: 28, scope: !3636)
!3650 = !DILocation(line: 1573, column: 44, scope: !3636)
!3651 = !DILocation(line: 1573, column: 43, scope: !3636)
!3652 = !DILocation(line: 1573, column: 14, scope: !3636)
!3653 = !DILocation(line: 1574, column: 16, scope: !3636)
!3654 = !DILocation(line: 1574, column: 14, scope: !3636)
!3655 = !DILocation(line: 1575, column: 16, scope: !3636)
!3656 = !DILocation(line: 1575, column: 14, scope: !3636)
!3657 = !DILocation(line: 1576, column: 39, scope: !3636)
!3658 = !DILocation(line: 1576, column: 34, scope: !3636)
!3659 = !DILocation(line: 1576, column: 50, scope: !3636)
!3660 = !DILocation(line: 1576, column: 45, scope: !3661)
!3661 = !DILexicalBlockFile(scope: !3636, file: !1, discriminator: 1)
!3662 = !DILocation(line: 1576, column: 43, scope: !3636)
!3663 = !DILocation(line: 1576, column: 57, scope: !3636)
!3664 = !DILocation(line: 1576, column: 22, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !3636, file: !1, discriminator: 2)
!3666 = !DILocation(line: 1576, column: 20, scope: !3636)
!3667 = !DILocation(line: 1577, column: 7, scope: !3636)
!3668 = !DILocation(line: 1572, column: 32, scope: !3669)
!3669 = !DILexicalBlockFile(scope: !3630, file: !1, discriminator: 2)
!3670 = !DILocation(line: 1572, column: 7, scope: !3669)
!3671 = distinct !{!3671, !3672}
!3672 = !DILocation(line: 1572, column: 7, scope: !3566)
!3673 = !DILocation(line: 1578, column: 20, scope: !3566)
!3674 = !DILocation(line: 1578, column: 31, scope: !3566)
!3675 = !DILocation(line: 1578, column: 30, scope: !3566)
!3676 = !DILocation(line: 1578, column: 18, scope: !3566)
!3677 = !DILocation(line: 1579, column: 22, scope: !3566)
!3678 = !DILocation(line: 1579, column: 7, scope: !3566)
!3679 = !DILocation(line: 1579, column: 15, scope: !3566)
!3680 = !DILocation(line: 1579, column: 20, scope: !3566)
!3681 = !DILocation(line: 1580, column: 29, scope: !3566)
!3682 = !DILocation(line: 1580, column: 37, scope: !3566)
!3683 = !DILocation(line: 1580, column: 35, scope: !3566)
!3684 = !DILocation(line: 1580, column: 43, scope: !3566)
!3685 = !DILocation(line: 1580, column: 26, scope: !3566)
!3686 = !DILocation(line: 1580, column: 70, scope: !3566)
!3687 = !DILocation(line: 1580, column: 65, scope: !3566)
!3688 = !DILocation(line: 1580, column: 72, scope: !3566)
!3689 = !DILocation(line: 1580, column: 62, scope: !3566)
!3690 = !DILocation(line: 1580, column: 85, scope: !3566)
!3691 = !DILocation(line: 1580, column: 80, scope: !3605)
!3692 = !DILocation(line: 1580, column: 78, scope: !3566)
!3693 = !DILocation(line: 1580, column: 7, scope: !3566)
!3694 = !DILocation(line: 1580, column: 15, scope: !3566)
!3695 = !DILocation(line: 1580, column: 20, scope: !3566)
!3696 = !DILocation(line: 1581, column: 29, scope: !3566)
!3697 = !DILocation(line: 1581, column: 37, scope: !3566)
!3698 = !DILocation(line: 1581, column: 35, scope: !3566)
!3699 = !DILocation(line: 1581, column: 26, scope: !3566)
!3700 = !DILocation(line: 1581, column: 46, scope: !3566)
!3701 = !DILocation(line: 1581, column: 44, scope: !3566)
!3702 = !DILocation(line: 1581, column: 57, scope: !3566)
!3703 = !DILocation(line: 1581, column: 56, scope: !3566)
!3704 = !DILocation(line: 1581, column: 75, scope: !3566)
!3705 = !DILocation(line: 1581, column: 70, scope: !3566)
!3706 = !DILocation(line: 1581, column: 68, scope: !3566)
!3707 = !DILocation(line: 1581, column: 7, scope: !3566)
!3708 = !DILocation(line: 1581, column: 15, scope: !3566)
!3709 = !DILocation(line: 1581, column: 19, scope: !3566)
!3710 = !DILocation(line: 1582, column: 51, scope: !3566)
!3711 = !DILocation(line: 1582, column: 46, scope: !3566)
!3712 = !DILocation(line: 1582, column: 44, scope: !3566)
!3713 = !DILocation(line: 1582, column: 7, scope: !3566)
!3714 = !DILocation(line: 1582, column: 15, scope: !3566)
!3715 = !DILocation(line: 1582, column: 19, scope: !3566)
!3716 = !DILocation(line: 1583, column: 14, scope: !3566)
!3717 = !DILocation(line: 1583, column: 14, scope: !3605)
!3718 = !DILocation(line: 1583, column: 14, scope: !3719)
!3719 = !DILexicalBlockFile(scope: !3566, file: !1, discriminator: 2)
!3720 = !DILocation(line: 1583, column: 14, scope: !3721)
!3721 = !DILexicalBlockFile(scope: !3566, file: !1, discriminator: 3)
!3722 = !DILocation(line: 1583, column: 14, scope: !3723)
!3723 = !DILexicalBlockFile(scope: !3566, file: !1, discriminator: 4)
!3724 = !DILocation(line: 1583, column: 14, scope: !3725)
!3725 = !DILexicalBlockFile(scope: !3566, file: !1, discriminator: 5)
!3726 = !DILocation(line: 1583, column: 14, scope: !3727)
!3727 = !DILexicalBlockFile(scope: !3566, file: !1, discriminator: 6)
!3728 = !DILocation(line: 1583, column: 7, scope: !3727)
!3729 = !DILocation(line: 1591, column: 8, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !1, line: 1591, column: 8)
!3731 = distinct !DILexicalBlock(scope: !3376, file: !1, line: 1586, column: 8)
!3732 = !DILocation(line: 1591, column: 18, scope: !3730)
!3733 = !DILocation(line: 1591, column: 20, scope: !3730)
!3734 = !DILocation(line: 1591, column: 19, scope: !3730)
!3735 = !DILocation(line: 1591, column: 16, scope: !3730)
!3736 = !DILocation(line: 1591, column: 10, scope: !3730)
!3737 = !DILocation(line: 1591, column: 23, scope: !3730)
!3738 = !DILocation(line: 1591, column: 26, scope: !3739)
!3739 = !DILexicalBlockFile(scope: !3730, file: !1, discriminator: 1)
!3740 = !DILocation(line: 1591, column: 32, scope: !3739)
!3741 = !DILocation(line: 1591, column: 31, scope: !3739)
!3742 = !DILocation(line: 1591, column: 28, scope: !3739)
!3743 = !DILocation(line: 1591, column: 8, scope: !3739)
!3744 = !DILocalVariable(name: "N", scope: !3745, file: !1, line: 1594, type: !52)
!3745 = distinct !DILexicalBlock(scope: !3730, file: !1, line: 1591, column: 35)
!3746 = !DILocation(line: 1594, column: 14, scope: !3745)
!3747 = !DILocation(line: 1594, column: 26, scope: !3745)
!3748 = !DILocation(line: 1594, column: 30, scope: !3745)
!3749 = !DILocation(line: 1594, column: 28, scope: !3745)
!3750 = !DILocation(line: 1594, column: 20, scope: !3745)
!3751 = !DILocalVariable(name: "eps", scope: !3745, file: !1, line: 1595, type: !52)
!3752 = !DILocation(line: 1595, column: 14, scope: !3745)
!3753 = !DILocation(line: 1595, column: 26, scope: !3745)
!3754 = !DILocation(line: 1595, column: 24, scope: !3745)
!3755 = !DILocation(line: 1595, column: 30, scope: !3745)
!3756 = !DILocation(line: 1595, column: 28, scope: !3745)
!3757 = !DILocation(line: 1595, column: 34, scope: !3745)
!3758 = !DILocation(line: 1595, column: 32, scope: !3745)
!3759 = !DILocalVariable(name: "r_Manp1", scope: !3745, file: !1, line: 1596, type: !54)
!3760 = !DILocation(line: 1596, column: 21, scope: !3745)
!3761 = !DILocalVariable(name: "r_Man", scope: !3745, file: !1, line: 1597, type: !54)
!3762 = !DILocation(line: 1597, column: 21, scope: !3745)
!3763 = !DILocalVariable(name: "stat_0", scope: !3745, file: !1, line: 1598, type: !42)
!3764 = !DILocation(line: 1598, column: 11, scope: !3745)
!3765 = !DILocation(line: 1598, column: 42, scope: !3745)
!3766 = !DILocation(line: 1598, column: 41, scope: !3745)
!3767 = !DILocation(line: 1598, column: 50, scope: !3745)
!3768 = !DILocation(line: 1598, column: 52, scope: !3745)
!3769 = !DILocation(line: 1598, column: 51, scope: !3745)
!3770 = !DILocation(line: 1598, column: 61, scope: !3745)
!3771 = !DILocation(line: 1598, column: 20, scope: !3745)
!3772 = !DILocalVariable(name: "stat_1", scope: !3745, file: !1, line: 1599, type: !42)
!3773 = !DILocation(line: 1599, column: 11, scope: !3745)
!3774 = !DILocation(line: 1599, column: 45, scope: !3745)
!3775 = !DILocation(line: 1599, column: 44, scope: !3745)
!3776 = !DILocation(line: 1599, column: 50, scope: !3745)
!3777 = !DILocation(line: 1599, column: 52, scope: !3745)
!3778 = !DILocation(line: 1599, column: 51, scope: !3745)
!3779 = !DILocation(line: 1599, column: 55, scope: !3745)
!3780 = !DILocation(line: 1599, column: 61, scope: !3745)
!3781 = !DILocation(line: 1599, column: 20, scope: !3745)
!3782 = !DILocalVariable(name: "Manp1", scope: !3745, file: !1, line: 1600, type: !52)
!3783 = !DILocation(line: 1600, column: 14, scope: !3745)
!3784 = !DILocation(line: 1600, column: 30, scope: !3745)
!3785 = !DILocalVariable(name: "Man", scope: !3745, file: !1, line: 1601, type: !52)
!3786 = !DILocation(line: 1601, column: 14, scope: !3745)
!3787 = !DILocation(line: 1601, column: 28, scope: !3745)
!3788 = !DILocalVariable(name: "Manm1", scope: !3745, file: !1, line: 1602, type: !52)
!3789 = !DILocation(line: 1602, column: 14, scope: !3745)
!3790 = !DILocalVariable(name: "n", scope: !3745, file: !1, line: 1604, type: !52)
!3791 = !DILocation(line: 1604, column: 14, scope: !3745)
!3792 = !DILocalVariable(name: "start_pair", scope: !3745, file: !1, line: 1605, type: !52)
!3793 = !DILocation(line: 1605, column: 14, scope: !3745)
!3794 = !DILocation(line: 1605, column: 32, scope: !3745)
!3795 = !DILocation(line: 1605, column: 27, scope: !3745)
!3796 = !DILocation(line: 1605, column: 46, scope: !3745)
!3797 = !DILocation(line: 1605, column: 41, scope: !3798)
!3798 = !DILexicalBlockFile(scope: !3745, file: !1, discriminator: 1)
!3799 = !DILocation(line: 1605, column: 39, scope: !3745)
!3800 = !DILocalVariable(name: "minim_pair", scope: !3745, file: !1, line: 1606, type: !52)
!3801 = !DILocation(line: 1606, column: 14, scope: !3745)
!3802 = !DILocalVariable(name: "pair_ratio", scope: !3745, file: !1, line: 1607, type: !52)
!3803 = !DILocation(line: 1607, column: 14, scope: !3745)
!3804 = !DILocalVariable(name: "rat_0", scope: !3745, file: !1, line: 1608, type: !52)
!3805 = !DILocation(line: 1608, column: 14, scope: !3745)
!3806 = !DILocation(line: 1608, column: 35, scope: !3745)
!3807 = !DILocation(line: 1608, column: 47, scope: !3745)
!3808 = !DILocation(line: 1608, column: 38, scope: !3745)
!3809 = !DILocation(line: 1608, column: 22, scope: !3745)
!3810 = !DILocalVariable(name: "rat_1", scope: !3745, file: !1, line: 1609, type: !52)
!3811 = !DILocation(line: 1609, column: 14, scope: !3745)
!3812 = !DILocation(line: 1609, column: 33, scope: !3745)
!3813 = !DILocation(line: 1609, column: 43, scope: !3745)
!3814 = !DILocation(line: 1609, column: 36, scope: !3745)
!3815 = !DILocation(line: 1609, column: 22, scope: !3745)
!3816 = !DILocation(line: 1610, column: 13, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3745, file: !1, line: 1610, column: 7)
!3818 = !DILocation(line: 1610, column: 15, scope: !3817)
!3819 = !DILocation(line: 1610, column: 14, scope: !3817)
!3820 = !DILocation(line: 1610, column: 18, scope: !3817)
!3821 = !DILocation(line: 1610, column: 12, scope: !3817)
!3822 = !DILocation(line: 1610, column: 11, scope: !3817)
!3823 = !DILocation(line: 1610, column: 24, scope: !3824)
!3824 = !DILexicalBlockFile(scope: !3825, file: !1, discriminator: 1)
!3825 = distinct !DILexicalBlock(scope: !3817, file: !1, line: 1610, column: 7)
!3826 = !DILocation(line: 1610, column: 26, scope: !3824)
!3827 = !DILocation(line: 1610, column: 27, scope: !3824)
!3828 = !DILocation(line: 1610, column: 25, scope: !3824)
!3829 = !DILocation(line: 1610, column: 7, scope: !3824)
!3830 = !DILocation(line: 1611, column: 19, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 1610, column: 43)
!3832 = !DILocation(line: 1611, column: 18, scope: !3831)
!3833 = !DILocation(line: 1611, column: 24, scope: !3831)
!3834 = !DILocation(line: 1611, column: 23, scope: !3831)
!3835 = !DILocation(line: 1611, column: 26, scope: !3831)
!3836 = !DILocation(line: 1611, column: 25, scope: !3831)
!3837 = !DILocation(line: 1611, column: 20, scope: !3831)
!3838 = !DILocation(line: 1611, column: 29, scope: !3831)
!3839 = !DILocation(line: 1611, column: 28, scope: !3831)
!3840 = !DILocation(line: 1611, column: 35, scope: !3831)
!3841 = !DILocation(line: 1611, column: 38, scope: !3831)
!3842 = !DILocation(line: 1611, column: 40, scope: !3831)
!3843 = !DILocation(line: 1611, column: 39, scope: !3831)
!3844 = !DILocation(line: 1611, column: 36, scope: !3831)
!3845 = !DILocation(line: 1611, column: 43, scope: !3831)
!3846 = !DILocation(line: 1611, column: 42, scope: !3831)
!3847 = !DILocation(line: 1611, column: 33, scope: !3831)
!3848 = !DILocation(line: 1611, column: 51, scope: !3831)
!3849 = !DILocation(line: 1611, column: 54, scope: !3831)
!3850 = !DILocation(line: 1611, column: 55, scope: !3831)
!3851 = !DILocation(line: 1611, column: 52, scope: !3831)
!3852 = !DILocation(line: 1611, column: 49, scope: !3831)
!3853 = !DILocation(line: 1611, column: 15, scope: !3831)
!3854 = !DILocation(line: 1612, column: 17, scope: !3831)
!3855 = !DILocation(line: 1612, column: 15, scope: !3831)
!3856 = !DILocation(line: 1613, column: 15, scope: !3831)
!3857 = !DILocation(line: 1613, column: 13, scope: !3831)
!3858 = !DILocation(line: 1614, column: 39, scope: !3831)
!3859 = !DILocation(line: 1614, column: 34, scope: !3831)
!3860 = !DILocation(line: 1614, column: 53, scope: !3831)
!3861 = !DILocation(line: 1614, column: 48, scope: !3862)
!3862 = !DILexicalBlockFile(scope: !3831, file: !1, discriminator: 1)
!3863 = !DILocation(line: 1614, column: 46, scope: !3831)
!3864 = !DILocation(line: 1614, column: 59, scope: !3831)
!3865 = !DILocation(line: 1614, column: 22, scope: !3866)
!3866 = !DILexicalBlockFile(scope: !3831, file: !1, discriminator: 2)
!3867 = !DILocation(line: 1614, column: 20, scope: !3831)
!3868 = !DILocation(line: 1615, column: 7, scope: !3831)
!3869 = !DILocation(line: 1610, column: 35, scope: !3870)
!3870 = !DILexicalBlockFile(scope: !3825, file: !1, discriminator: 2)
!3871 = !DILocation(line: 1610, column: 7, scope: !3870)
!3872 = distinct !{!3872, !3873}
!3873 = !DILocation(line: 1610, column: 7, scope: !3745)
!3874 = !DILocation(line: 1624, column: 20, scope: !3745)
!3875 = !DILocation(line: 1624, column: 31, scope: !3745)
!3876 = !DILocation(line: 1624, column: 30, scope: !3745)
!3877 = !DILocation(line: 1624, column: 18, scope: !3745)
!3878 = !DILocation(line: 1625, column: 22, scope: !3745)
!3879 = !DILocation(line: 1625, column: 7, scope: !3745)
!3880 = !DILocation(line: 1625, column: 15, scope: !3745)
!3881 = !DILocation(line: 1625, column: 20, scope: !3745)
!3882 = !DILocation(line: 1626, column: 29, scope: !3745)
!3883 = !DILocation(line: 1626, column: 37, scope: !3745)
!3884 = !DILocation(line: 1626, column: 35, scope: !3745)
!3885 = !DILocation(line: 1626, column: 43, scope: !3745)
!3886 = !DILocation(line: 1626, column: 26, scope: !3745)
!3887 = !DILocation(line: 1626, column: 70, scope: !3745)
!3888 = !DILocation(line: 1626, column: 72, scope: !3745)
!3889 = !DILocation(line: 1626, column: 71, scope: !3745)
!3890 = !DILocation(line: 1626, column: 65, scope: !3745)
!3891 = !DILocation(line: 1626, column: 74, scope: !3745)
!3892 = !DILocation(line: 1626, column: 62, scope: !3745)
!3893 = !DILocation(line: 1626, column: 87, scope: !3745)
!3894 = !DILocation(line: 1626, column: 82, scope: !3798)
!3895 = !DILocation(line: 1626, column: 80, scope: !3745)
!3896 = !DILocation(line: 1626, column: 7, scope: !3745)
!3897 = !DILocation(line: 1626, column: 15, scope: !3745)
!3898 = !DILocation(line: 1626, column: 20, scope: !3745)
!3899 = !DILocation(line: 1627, column: 22, scope: !3745)
!3900 = !DILocation(line: 1627, column: 33, scope: !3745)
!3901 = !DILocation(line: 1627, column: 32, scope: !3745)
!3902 = !DILocation(line: 1627, column: 44, scope: !3745)
!3903 = !DILocation(line: 1627, column: 7, scope: !3745)
!3904 = !DILocation(line: 1627, column: 15, scope: !3745)
!3905 = !DILocation(line: 1627, column: 19, scope: !3745)
!3906 = !DILocation(line: 1628, column: 14, scope: !3745)
!3907 = !DILocation(line: 1628, column: 14, scope: !3798)
!3908 = !DILocation(line: 1628, column: 14, scope: !3909)
!3909 = !DILexicalBlockFile(scope: !3745, file: !1, discriminator: 2)
!3910 = !DILocation(line: 1628, column: 14, scope: !3911)
!3911 = !DILexicalBlockFile(scope: !3745, file: !1, discriminator: 3)
!3912 = !DILocation(line: 1628, column: 14, scope: !3913)
!3913 = !DILexicalBlockFile(scope: !3745, file: !1, discriminator: 4)
!3914 = !DILocation(line: 1628, column: 14, scope: !3915)
!3915 = !DILexicalBlockFile(scope: !3745, file: !1, discriminator: 5)
!3916 = !DILocation(line: 1628, column: 14, scope: !3917)
!3917 = !DILexicalBlockFile(scope: !3745, file: !1, discriminator: 6)
!3918 = !DILocation(line: 1628, column: 7, scope: !3917)
!3919 = !DILocalVariable(name: "epsa", scope: !3920, file: !1, line: 1636, type: !52)
!3920 = distinct !DILexicalBlock(scope: !3730, file: !1, line: 1630, column: 10)
!3921 = !DILocation(line: 1636, column: 14, scope: !3920)
!3922 = !DILocation(line: 1636, column: 21, scope: !3920)
!3923 = !DILocation(line: 1636, column: 31, scope: !3920)
!3924 = !DILocation(line: 1636, column: 25, scope: !3920)
!3925 = !DILocation(line: 1636, column: 23, scope: !3920)
!3926 = !DILocalVariable(name: "a0", scope: !3920, file: !1, line: 1637, type: !52)
!3927 = !DILocation(line: 1637, column: 14, scope: !3920)
!3928 = !DILocation(line: 1637, column: 32, scope: !3920)
!3929 = !DILocation(line: 1637, column: 34, scope: !3920)
!3930 = !DILocation(line: 1637, column: 33, scope: !3920)
!3931 = !DILocation(line: 1637, column: 30, scope: !3920)
!3932 = !DILocation(line: 1637, column: 21, scope: !3920)
!3933 = !DILocation(line: 1637, column: 40, scope: !3920)
!3934 = !DILocation(line: 1637, column: 38, scope: !3920)
!3935 = !DILocalVariable(name: "N", scope: !3920, file: !1, line: 1638, type: !52)
!3936 = !DILocation(line: 1638, column: 14, scope: !3920)
!3937 = !DILocation(line: 1638, column: 27, scope: !3920)
!3938 = !DILocation(line: 1638, column: 32, scope: !3920)
!3939 = !DILocation(line: 1638, column: 30, scope: !3920)
!3940 = !DILocation(line: 1638, column: 21, scope: !3920)
!3941 = !DILocalVariable(name: "epsb", scope: !3920, file: !1, line: 1639, type: !52)
!3942 = !DILocation(line: 1639, column: 14, scope: !3920)
!3943 = !DILocation(line: 1639, column: 27, scope: !3920)
!3944 = !DILocation(line: 1639, column: 25, scope: !3920)
!3945 = !DILocation(line: 1639, column: 31, scope: !3920)
!3946 = !DILocation(line: 1639, column: 29, scope: !3920)
!3947 = !DILocation(line: 1639, column: 36, scope: !3920)
!3948 = !DILocation(line: 1639, column: 34, scope: !3920)
!3949 = !DILocalVariable(name: "Ma0b", scope: !3920, file: !1, line: 1640, type: !52)
!3950 = !DILocation(line: 1640, column: 14, scope: !3920)
!3951 = !DILocalVariable(name: "Ma0bp1", scope: !3920, file: !1, line: 1641, type: !52)
!3952 = !DILocation(line: 1641, column: 14, scope: !3920)
!3953 = !DILocalVariable(name: "Ma0p1b", scope: !3920, file: !1, line: 1642, type: !52)
!3954 = !DILocation(line: 1642, column: 14, scope: !3920)
!3955 = !DILocalVariable(name: "stat_a0", scope: !3920, file: !1, line: 1643, type: !42)
!3956 = !DILocation(line: 1643, column: 11, scope: !3920)
!3957 = !DILocalVariable(name: "Mnm1", scope: !3920, file: !1, line: 1644, type: !52)
!3958 = !DILocation(line: 1644, column: 14, scope: !3920)
!3959 = !DILocalVariable(name: "Mn", scope: !3920, file: !1, line: 1645, type: !52)
!3960 = !DILocation(line: 1645, column: 14, scope: !3920)
!3961 = !DILocalVariable(name: "Mnp1", scope: !3920, file: !1, line: 1646, type: !52)
!3962 = !DILocation(line: 1646, column: 14, scope: !3920)
!3963 = !DILocalVariable(name: "n", scope: !3920, file: !1, line: 1647, type: !52)
!3964 = !DILocation(line: 1647, column: 14, scope: !3920)
!3965 = !DILocalVariable(name: "err_rat", scope: !3920, file: !1, line: 1648, type: !52)
!3966 = !DILocation(line: 1648, column: 14, scope: !3920)
!3967 = !DILocalVariable(name: "r_Ma0np1", scope: !3968, file: !1, line: 1650, type: !54)
!3968 = distinct !DILexicalBlock(scope: !3920, file: !1, line: 1649, column: 7)
!3969 = !DILocation(line: 1650, column: 23, scope: !3968)
!3970 = !DILocalVariable(name: "r_Ma0n", scope: !3968, file: !1, line: 1651, type: !54)
!3971 = !DILocation(line: 1651, column: 23, scope: !3968)
!3972 = !DILocalVariable(name: "stat_0", scope: !3968, file: !1, line: 1652, type: !42)
!3973 = !DILocation(line: 1652, column: 13, scope: !3968)
!3974 = !DILocation(line: 1652, column: 44, scope: !3968)
!3975 = !DILocation(line: 1652, column: 43, scope: !3968)
!3976 = !DILocation(line: 1652, column: 53, scope: !3968)
!3977 = !DILocation(line: 1652, column: 56, scope: !3968)
!3978 = !DILocation(line: 1652, column: 55, scope: !3968)
!3979 = !DILocation(line: 1652, column: 66, scope: !3968)
!3980 = !DILocation(line: 1652, column: 22, scope: !3968)
!3981 = !DILocalVariable(name: "stat_1", scope: !3968, file: !1, line: 1653, type: !42)
!3982 = !DILocation(line: 1653, column: 13, scope: !3968)
!3983 = !DILocation(line: 1653, column: 47, scope: !3968)
!3984 = !DILocation(line: 1653, column: 46, scope: !3968)
!3985 = !DILocation(line: 1653, column: 53, scope: !3968)
!3986 = !DILocation(line: 1653, column: 56, scope: !3968)
!3987 = !DILocation(line: 1653, column: 55, scope: !3968)
!3988 = !DILocation(line: 1653, column: 60, scope: !3968)
!3989 = !DILocation(line: 1653, column: 66, scope: !3968)
!3990 = !DILocation(line: 1653, column: 22, scope: !3968)
!3991 = !DILocalVariable(name: "Ma0np1", scope: !3968, file: !1, line: 1654, type: !52)
!3992 = !DILocation(line: 1654, column: 16, scope: !3968)
!3993 = !DILocation(line: 1654, column: 34, scope: !3968)
!3994 = !DILocalVariable(name: "Ma0n", scope: !3968, file: !1, line: 1655, type: !52)
!3995 = !DILocation(line: 1655, column: 16, scope: !3968)
!3996 = !DILocation(line: 1655, column: 32, scope: !3968)
!3997 = !DILocalVariable(name: "Ma0nm1", scope: !3968, file: !1, line: 1656, type: !52)
!3998 = !DILocation(line: 1656, column: 16, scope: !3968)
!3999 = !DILocation(line: 1658, column: 33, scope: !3968)
!4000 = !DILocation(line: 1658, column: 46, scope: !3968)
!4001 = !DILocation(line: 1658, column: 36, scope: !3968)
!4002 = !DILocation(line: 1658, column: 19, scope: !3968)
!4003 = !DILocation(line: 1658, column: 65, scope: !3968)
!4004 = !DILocation(line: 1658, column: 76, scope: !3968)
!4005 = !DILocation(line: 1658, column: 68, scope: !3968)
!4006 = !DILocation(line: 1658, column: 53, scope: !4007)
!4007 = !DILexicalBlockFile(scope: !3968, file: !1, discriminator: 1)
!4008 = !DILocation(line: 1658, column: 51, scope: !3968)
!4009 = !DILocation(line: 1658, column: 17, scope: !3968)
!4010 = !DILocation(line: 1660, column: 15, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3968, file: !1, line: 1660, column: 9)
!4012 = !DILocation(line: 1660, column: 18, scope: !4011)
!4013 = !DILocation(line: 1660, column: 17, scope: !4011)
!4014 = !DILocation(line: 1660, column: 22, scope: !4011)
!4015 = !DILocation(line: 1660, column: 14, scope: !4011)
!4016 = !DILocation(line: 1660, column: 13, scope: !4011)
!4017 = !DILocation(line: 1660, column: 28, scope: !4018)
!4018 = !DILexicalBlockFile(scope: !4019, file: !1, discriminator: 1)
!4019 = distinct !DILexicalBlock(scope: !4011, file: !1, line: 1660, column: 9)
!4020 = !DILocation(line: 1660, column: 30, scope: !4018)
!4021 = !DILocation(line: 1660, column: 31, scope: !4018)
!4022 = !DILocation(line: 1660, column: 29, scope: !4018)
!4023 = !DILocation(line: 1660, column: 9, scope: !4018)
!4024 = !DILocation(line: 1661, column: 22, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !4019, file: !1, line: 1660, column: 47)
!4026 = !DILocation(line: 1661, column: 21, scope: !4025)
!4027 = !DILocation(line: 1661, column: 27, scope: !4025)
!4028 = !DILocation(line: 1661, column: 26, scope: !4025)
!4029 = !DILocation(line: 1661, column: 29, scope: !4025)
!4030 = !DILocation(line: 1661, column: 28, scope: !4025)
!4031 = !DILocation(line: 1661, column: 23, scope: !4025)
!4032 = !DILocation(line: 1661, column: 32, scope: !4025)
!4033 = !DILocation(line: 1661, column: 31, scope: !4025)
!4034 = !DILocation(line: 1661, column: 39, scope: !4025)
!4035 = !DILocation(line: 1661, column: 42, scope: !4025)
!4036 = !DILocation(line: 1661, column: 44, scope: !4025)
!4037 = !DILocation(line: 1661, column: 43, scope: !4025)
!4038 = !DILocation(line: 1661, column: 40, scope: !4025)
!4039 = !DILocation(line: 1661, column: 48, scope: !4025)
!4040 = !DILocation(line: 1661, column: 47, scope: !4025)
!4041 = !DILocation(line: 1661, column: 37, scope: !4025)
!4042 = !DILocation(line: 1661, column: 57, scope: !4025)
!4043 = !DILocation(line: 1661, column: 60, scope: !4025)
!4044 = !DILocation(line: 1661, column: 61, scope: !4025)
!4045 = !DILocation(line: 1661, column: 58, scope: !4025)
!4046 = !DILocation(line: 1661, column: 55, scope: !4025)
!4047 = !DILocation(line: 1661, column: 18, scope: !4025)
!4048 = !DILocation(line: 1662, column: 20, scope: !4025)
!4049 = !DILocation(line: 1662, column: 18, scope: !4025)
!4050 = !DILocation(line: 1663, column: 18, scope: !4025)
!4051 = !DILocation(line: 1663, column: 16, scope: !4025)
!4052 = !DILocation(line: 1664, column: 9, scope: !4025)
!4053 = !DILocation(line: 1660, column: 39, scope: !4054)
!4054 = !DILexicalBlockFile(scope: !4019, file: !1, discriminator: 2)
!4055 = !DILocation(line: 1660, column: 9, scope: !4054)
!4056 = distinct !{!4056, !4057}
!4057 = !DILocation(line: 1660, column: 9, scope: !3968)
!4058 = !DILocation(line: 1665, column: 18, scope: !3968)
!4059 = !DILocation(line: 1665, column: 16, scope: !3968)
!4060 = !DILocation(line: 1666, column: 18, scope: !3968)
!4061 = !DILocation(line: 1666, column: 16, scope: !3968)
!4062 = !DILocation(line: 1667, column: 19, scope: !3968)
!4063 = !DILocation(line: 1667, column: 22, scope: !3968)
!4064 = !DILocation(line: 1667, column: 25, scope: !3968)
!4065 = !DILocation(line: 1667, column: 24, scope: !3968)
!4066 = !DILocation(line: 1667, column: 20, scope: !3968)
!4067 = !DILocation(line: 1667, column: 28, scope: !3968)
!4068 = !DILocation(line: 1667, column: 27, scope: !3968)
!4069 = !DILocation(line: 1667, column: 33, scope: !3968)
!4070 = !DILocation(line: 1667, column: 36, scope: !3968)
!4071 = !DILocation(line: 1667, column: 39, scope: !3968)
!4072 = !DILocation(line: 1667, column: 38, scope: !3968)
!4073 = !DILocation(line: 1667, column: 34, scope: !3968)
!4074 = !DILocation(line: 1667, column: 42, scope: !3968)
!4075 = !DILocation(line: 1667, column: 41, scope: !3968)
!4076 = !DILocation(line: 1667, column: 32, scope: !3968)
!4077 = !DILocation(line: 1667, column: 51, scope: !3968)
!4078 = !DILocation(line: 1667, column: 54, scope: !3968)
!4079 = !DILocation(line: 1667, column: 53, scope: !3968)
!4080 = !DILocation(line: 1667, column: 49, scope: !3968)
!4081 = !DILocation(line: 1667, column: 16, scope: !3968)
!4082 = !DILocation(line: 1668, column: 19, scope: !3968)
!4083 = !DILocation(line: 1668, column: 19, scope: !4007)
!4084 = !DILocation(line: 1668, column: 19, scope: !4085)
!4085 = !DILexicalBlockFile(scope: !3968, file: !1, discriminator: 2)
!4086 = !DILocation(line: 1668, column: 19, scope: !4087)
!4087 = !DILexicalBlockFile(scope: !3968, file: !1, discriminator: 3)
!4088 = !DILocation(line: 1668, column: 19, scope: !4089)
!4089 = !DILexicalBlockFile(scope: !3968, file: !1, discriminator: 4)
!4090 = !DILocation(line: 1668, column: 19, scope: !4091)
!4091 = !DILexicalBlockFile(scope: !3968, file: !1, discriminator: 5)
!4092 = !DILocation(line: 1668, column: 19, scope: !4093)
!4093 = !DILexicalBlockFile(scope: !3968, file: !1, discriminator: 6)
!4094 = !DILocation(line: 1668, column: 17, scope: !4093)
!4095 = !DILocation(line: 1674, column: 11, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !3920, file: !1, line: 1674, column: 11)
!4097 = !DILocation(line: 1674, column: 17, scope: !4096)
!4098 = !DILocation(line: 1674, column: 19, scope: !4096)
!4099 = !DILocation(line: 1674, column: 14, scope: !4096)
!4100 = !DILocation(line: 1674, column: 11, scope: !3920)
!4101 = !DILocation(line: 1676, column: 16, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4096, file: !1, line: 1675, column: 9)
!4103 = !DILocation(line: 1676, column: 14, scope: !4102)
!4104 = !DILocation(line: 1677, column: 9, scope: !4102)
!4105 = !DILocation(line: 1678, column: 16, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4096, file: !1, line: 1678, column: 16)
!4107 = !DILocation(line: 1678, column: 19, scope: !4106)
!4108 = !DILocation(line: 1678, column: 25, scope: !4106)
!4109 = !DILocation(line: 1678, column: 27, scope: !4106)
!4110 = !DILocation(line: 1678, column: 22, scope: !4106)
!4111 = !DILocation(line: 1678, column: 16, scope: !4096)
!4112 = !DILocation(line: 1680, column: 16, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4106, file: !1, line: 1679, column: 9)
!4114 = !DILocation(line: 1680, column: 14, scope: !4113)
!4115 = !DILocation(line: 1681, column: 9, scope: !4113)
!4116 = !DILocation(line: 1684, column: 18, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4106, file: !1, line: 1683, column: 9)
!4118 = !DILocation(line: 1684, column: 16, scope: !4117)
!4119 = !DILocation(line: 1685, column: 18, scope: !4117)
!4120 = !DILocation(line: 1685, column: 16, scope: !4117)
!4121 = !DILocation(line: 1687, column: 17, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4117, file: !1, line: 1687, column: 11)
!4123 = !DILocation(line: 1687, column: 19, scope: !4122)
!4124 = !DILocation(line: 1687, column: 16, scope: !4122)
!4125 = !DILocation(line: 1687, column: 15, scope: !4122)
!4126 = !DILocation(line: 1687, column: 25, scope: !4127)
!4127 = !DILexicalBlockFile(scope: !4128, file: !1, discriminator: 1)
!4128 = distinct !DILexicalBlock(scope: !4122, file: !1, line: 1687, column: 11)
!4129 = !DILocation(line: 1687, column: 27, scope: !4127)
!4130 = !DILocation(line: 1687, column: 28, scope: !4127)
!4131 = !DILocation(line: 1687, column: 26, scope: !4127)
!4132 = !DILocation(line: 1687, column: 11, scope: !4127)
!4133 = !DILocation(line: 1688, column: 22, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4128, file: !1, line: 1687, column: 44)
!4135 = !DILocation(line: 1688, column: 24, scope: !4134)
!4136 = !DILocation(line: 1688, column: 23, scope: !4134)
!4137 = !DILocation(line: 1688, column: 27, scope: !4134)
!4138 = !DILocation(line: 1688, column: 26, scope: !4134)
!4139 = !DILocation(line: 1688, column: 37, scope: !4134)
!4140 = !DILocation(line: 1688, column: 36, scope: !4134)
!4141 = !DILocation(line: 1688, column: 39, scope: !4134)
!4142 = !DILocation(line: 1688, column: 38, scope: !4134)
!4143 = !DILocation(line: 1688, column: 41, scope: !4134)
!4144 = !DILocation(line: 1688, column: 40, scope: !4134)
!4145 = !DILocation(line: 1688, column: 44, scope: !4134)
!4146 = !DILocation(line: 1688, column: 43, scope: !4134)
!4147 = !DILocation(line: 1688, column: 32, scope: !4134)
!4148 = !DILocation(line: 1688, column: 48, scope: !4134)
!4149 = !DILocation(line: 1688, column: 47, scope: !4134)
!4150 = !DILocation(line: 1688, column: 18, scope: !4134)
!4151 = !DILocation(line: 1689, column: 20, scope: !4134)
!4152 = !DILocation(line: 1689, column: 18, scope: !4134)
!4153 = !DILocation(line: 1690, column: 20, scope: !4134)
!4154 = !DILocation(line: 1690, column: 18, scope: !4134)
!4155 = !DILocation(line: 1691, column: 11, scope: !4134)
!4156 = !DILocation(line: 1687, column: 36, scope: !4157)
!4157 = !DILexicalBlockFile(scope: !4128, file: !1, discriminator: 2)
!4158 = !DILocation(line: 1687, column: 11, scope: !4157)
!4159 = distinct !{!4159, !4160}
!4160 = !DILocation(line: 1687, column: 11, scope: !4117)
!4161 = !DILocation(line: 1694, column: 21, scope: !3920)
!4162 = !DILocation(line: 1694, column: 7, scope: !3920)
!4163 = !DILocation(line: 1694, column: 15, scope: !3920)
!4164 = !DILocation(line: 1694, column: 19, scope: !3920)
!4165 = !DILocation(line: 1695, column: 22, scope: !3920)
!4166 = !DILocation(line: 1695, column: 30, scope: !3920)
!4167 = !DILocation(line: 1695, column: 57, scope: !3920)
!4168 = !DILocation(line: 1695, column: 59, scope: !3920)
!4169 = !DILocation(line: 1695, column: 58, scope: !3920)
!4170 = !DILocation(line: 1695, column: 52, scope: !3920)
!4171 = !DILocation(line: 1695, column: 61, scope: !3920)
!4172 = !DILocation(line: 1695, column: 49, scope: !3920)
!4173 = !DILocation(line: 1695, column: 74, scope: !3920)
!4174 = !DILocation(line: 1695, column: 69, scope: !4175)
!4175 = !DILexicalBlockFile(scope: !3920, file: !1, discriminator: 1)
!4176 = !DILocation(line: 1695, column: 67, scope: !3920)
!4177 = !DILocation(line: 1695, column: 7, scope: !3920)
!4178 = !DILocation(line: 1695, column: 15, scope: !3920)
!4179 = !DILocation(line: 1695, column: 19, scope: !3920)
!4180 = !DILocation(line: 1696, column: 14, scope: !3920)
!4181 = !DILocation(line: 1696, column: 7, scope: !3920)
!4182 = !DILocation(line: 1699, column: 1, scope: !2972)
!4183 = distinct !DISubprogram(name: "hyperg_1F1_a_negint_poly", scope: !1, file: !1, line: 1183, type: !2404, isLocal: true, isDefinition: true, scopeLine: 1184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!4184 = !DILocalVariable(name: "a", arg: 1, scope: !4183, file: !1, line: 1183, type: !50)
!4185 = !DILocation(line: 1183, column: 36, scope: !4183)
!4186 = !DILocalVariable(name: "b", arg: 2, scope: !4183, file: !1, line: 1183, type: !51)
!4187 = !DILocation(line: 1183, column: 52, scope: !4183)
!4188 = !DILocalVariable(name: "x", arg: 3, scope: !4183, file: !1, line: 1183, type: !51)
!4189 = !DILocation(line: 1183, column: 68, scope: !4183)
!4190 = !DILocalVariable(name: "result", arg: 4, scope: !4183, file: !1, line: 1183, type: !53)
!4191 = !DILocation(line: 1183, column: 87, scope: !4183)
!4192 = !DILocation(line: 1185, column: 6, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4183, file: !1, line: 1185, column: 6)
!4194 = !DILocation(line: 1185, column: 8, scope: !4193)
!4195 = !DILocation(line: 1185, column: 6, scope: !4183)
!4196 = !DILocation(line: 1186, column: 5, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4193, file: !1, line: 1185, column: 14)
!4198 = !DILocation(line: 1186, column: 13, scope: !4197)
!4199 = !DILocation(line: 1186, column: 17, scope: !4197)
!4200 = !DILocation(line: 1187, column: 5, scope: !4197)
!4201 = !DILocation(line: 1187, column: 13, scope: !4197)
!4202 = !DILocation(line: 1187, column: 17, scope: !4197)
!4203 = !DILocation(line: 1188, column: 5, scope: !4197)
!4204 = !DILocalVariable(name: "N", scope: !4205, file: !1, line: 1191, type: !42)
!4205 = distinct !DILexicalBlock(scope: !4193, file: !1, line: 1190, column: 8)
!4206 = !DILocation(line: 1191, column: 9, scope: !4205)
!4207 = !DILocation(line: 1191, column: 14, scope: !4205)
!4208 = !DILocation(line: 1191, column: 13, scope: !4205)
!4209 = !DILocalVariable(name: "poly", scope: !4205, file: !1, line: 1192, type: !52)
!4210 = !DILocation(line: 1192, column: 12, scope: !4205)
!4211 = !DILocalVariable(name: "k", scope: !4205, file: !1, line: 1193, type: !42)
!4212 = !DILocation(line: 1193, column: 9, scope: !4205)
!4213 = !DILocation(line: 1194, column: 11, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4205, file: !1, line: 1194, column: 5)
!4215 = !DILocation(line: 1194, column: 12, scope: !4214)
!4216 = !DILocation(line: 1194, column: 10, scope: !4214)
!4217 = !DILocation(line: 1194, column: 9, scope: !4214)
!4218 = !DILocation(line: 1194, column: 16, scope: !4219)
!4219 = !DILexicalBlockFile(scope: !4220, file: !1, discriminator: 1)
!4220 = distinct !DILexicalBlock(scope: !4214, file: !1, line: 1194, column: 5)
!4221 = !DILocation(line: 1194, column: 17, scope: !4219)
!4222 = !DILocation(line: 1194, column: 5, scope: !4219)
!4223 = !DILocalVariable(name: "t", scope: !4224, file: !1, line: 1195, type: !52)
!4224 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 1194, column: 27)
!4225 = !DILocation(line: 1195, column: 14, scope: !4224)
!4226 = !DILocation(line: 1195, column: 19, scope: !4224)
!4227 = !DILocation(line: 1195, column: 21, scope: !4224)
!4228 = !DILocation(line: 1195, column: 20, scope: !4224)
!4229 = !DILocation(line: 1195, column: 18, scope: !4224)
!4230 = !DILocation(line: 1195, column: 25, scope: !4224)
!4231 = !DILocation(line: 1195, column: 27, scope: !4224)
!4232 = !DILocation(line: 1195, column: 26, scope: !4224)
!4233 = !DILocation(line: 1195, column: 23, scope: !4224)
!4234 = !DILocation(line: 1195, column: 33, scope: !4224)
!4235 = !DILocation(line: 1195, column: 36, scope: !4224)
!4236 = !DILocation(line: 1195, column: 37, scope: !4224)
!4237 = !DILocation(line: 1195, column: 35, scope: !4224)
!4238 = !DILocation(line: 1195, column: 34, scope: !4224)
!4239 = !DILocation(line: 1195, column: 30, scope: !4224)
!4240 = !DILocalVariable(name: "r", scope: !4224, file: !1, line: 1196, type: !52)
!4241 = !DILocation(line: 1196, column: 14, scope: !4224)
!4242 = !DILocation(line: 1196, column: 18, scope: !4224)
!4243 = !DILocation(line: 1196, column: 26, scope: !4224)
!4244 = !DILocation(line: 1196, column: 25, scope: !4224)
!4245 = !DILocation(line: 1196, column: 20, scope: !4224)
!4246 = !DILocation(line: 1197, column: 10, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4224, file: !1, line: 1197, column: 10)
!4248 = !DILocation(line: 1197, column: 30, scope: !4247)
!4249 = !DILocation(line: 1197, column: 29, scope: !4247)
!4250 = !DILocation(line: 1197, column: 12, scope: !4247)
!4251 = !DILocation(line: 1197, column: 10, scope: !4224)
!4252 = !DILocation(line: 1198, column: 9, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4247, file: !1, line: 1197, column: 36)
!4254 = distinct !{!4254, !4252}
!4255 = !DILocation(line: 1198, column: 9, scope: !4256)
!4256 = !DILexicalBlockFile(scope: !4257, file: !1, discriminator: 1)
!4257 = distinct !DILexicalBlock(scope: !4253, file: !1, line: 1198, column: 9)
!4258 = distinct !{!4258, !4259}
!4259 = !DILocation(line: 1198, column: 9, scope: !4257)
!4260 = !DILocation(line: 1198, column: 9, scope: !4261)
!4261 = !DILexicalBlockFile(scope: !4262, file: !1, discriminator: 2)
!4262 = distinct !DILexicalBlock(scope: !4257, file: !1, line: 1198, column: 9)
!4263 = !DILocation(line: 1198, column: 9, scope: !4264)
!4264 = !DILexicalBlockFile(scope: !4257, file: !1, discriminator: 3)
!4265 = !DILocation(line: 1199, column: 7, scope: !4253)
!4266 = !DILocation(line: 1201, column: 17, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4247, file: !1, line: 1200, column: 12)
!4268 = !DILocation(line: 1201, column: 14, scope: !4267)
!4269 = !DILocation(line: 1203, column: 5, scope: !4224)
!4270 = !DILocation(line: 1194, column: 23, scope: !4271)
!4271 = !DILexicalBlockFile(scope: !4220, file: !1, discriminator: 2)
!4272 = !DILocation(line: 1194, column: 5, scope: !4271)
!4273 = distinct !{!4273, !4274}
!4274 = !DILocation(line: 1194, column: 5, scope: !4205)
!4275 = !DILocation(line: 1204, column: 19, scope: !4205)
!4276 = !DILocation(line: 1204, column: 5, scope: !4205)
!4277 = !DILocation(line: 1204, column: 13, scope: !4205)
!4278 = !DILocation(line: 1204, column: 17, scope: !4205)
!4279 = !DILocation(line: 1205, column: 31, scope: !4205)
!4280 = !DILocation(line: 1205, column: 26, scope: !4205)
!4281 = !DILocation(line: 1205, column: 34, scope: !4205)
!4282 = !DILocation(line: 1205, column: 23, scope: !4205)
!4283 = !DILocation(line: 1205, column: 41, scope: !4205)
!4284 = !DILocation(line: 1205, column: 66, scope: !4205)
!4285 = !DILocation(line: 1205, column: 61, scope: !4286)
!4286 = !DILexicalBlockFile(scope: !4205, file: !1, discriminator: 1)
!4287 = !DILocation(line: 1205, column: 59, scope: !4205)
!4288 = !DILocation(line: 1205, column: 5, scope: !4205)
!4289 = !DILocation(line: 1205, column: 13, scope: !4205)
!4290 = !DILocation(line: 1205, column: 17, scope: !4205)
!4291 = !DILocation(line: 1206, column: 5, scope: !4205)
!4292 = !DILocation(line: 1208, column: 1, scope: !4183)
!4293 = distinct !DISubprogram(name: "hyperg_1F1_ab_neg", scope: !1, file: !1, line: 1708, type: !279, isLocal: true, isDefinition: true, scopeLine: 1710, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!4294 = !DILocalVariable(name: "a", arg: 1, scope: !4293, file: !1, line: 1708, type: !51)
!4295 = !DILocation(line: 1708, column: 32, scope: !4293)
!4296 = !DILocalVariable(name: "b", arg: 2, scope: !4293, file: !1, line: 1708, type: !51)
!4297 = !DILocation(line: 1708, column: 48, scope: !4293)
!4298 = !DILocalVariable(name: "x", arg: 3, scope: !4293, file: !1, line: 1708, type: !51)
!4299 = !DILocation(line: 1708, column: 64, scope: !4293)
!4300 = !DILocalVariable(name: "result", arg: 4, scope: !4293, file: !1, line: 1709, type: !53)
!4301 = !DILocation(line: 1709, column: 35, scope: !4293)
!4302 = !DILocalVariable(name: "bma", scope: !4293, file: !1, line: 1711, type: !51)
!4303 = !DILocation(line: 1711, column: 16, scope: !4293)
!4304 = !DILocation(line: 1711, column: 22, scope: !4293)
!4305 = !DILocation(line: 1711, column: 26, scope: !4293)
!4306 = !DILocation(line: 1711, column: 24, scope: !4293)
!4307 = !DILocalVariable(name: "abs_x", scope: !4293, file: !1, line: 1712, type: !51)
!4308 = !DILocation(line: 1712, column: 16, scope: !4293)
!4309 = !DILocation(line: 1712, column: 29, scope: !4293)
!4310 = !DILocation(line: 1712, column: 24, scope: !4293)
!4311 = !DILocalVariable(name: "abs_a", scope: !4293, file: !1, line: 1713, type: !51)
!4312 = !DILocation(line: 1713, column: 16, scope: !4293)
!4313 = !DILocation(line: 1713, column: 29, scope: !4293)
!4314 = !DILocation(line: 1713, column: 24, scope: !4293)
!4315 = !DILocalVariable(name: "abs_b", scope: !4293, file: !1, line: 1714, type: !51)
!4316 = !DILocation(line: 1714, column: 16, scope: !4293)
!4317 = !DILocation(line: 1714, column: 29, scope: !4293)
!4318 = !DILocation(line: 1714, column: 24, scope: !4293)
!4319 = !DILocalVariable(name: "size_a", scope: !4293, file: !1, line: 1715, type: !51)
!4320 = !DILocation(line: 1715, column: 16, scope: !4293)
!4321 = !DILocation(line: 1715, column: 25, scope: !4293)
!4322 = !DILocation(line: 1715, column: 25, scope: !4323)
!4323 = !DILexicalBlockFile(scope: !4293, file: !1, discriminator: 1)
!4324 = !DILocation(line: 1715, column: 25, scope: !4325)
!4325 = !DILexicalBlockFile(scope: !4293, file: !1, discriminator: 2)
!4326 = !DILocation(line: 1715, column: 25, scope: !4327)
!4327 = !DILexicalBlockFile(scope: !4293, file: !1, discriminator: 3)
!4328 = !DILocation(line: 1715, column: 16, scope: !4327)
!4329 = !DILocalVariable(name: "size_b", scope: !4293, file: !1, line: 1716, type: !51)
!4330 = !DILocation(line: 1716, column: 16, scope: !4293)
!4331 = !DILocation(line: 1716, column: 25, scope: !4293)
!4332 = !DILocation(line: 1716, column: 25, scope: !4323)
!4333 = !DILocation(line: 1716, column: 25, scope: !4325)
!4334 = !DILocation(line: 1716, column: 25, scope: !4327)
!4335 = !DILocation(line: 1716, column: 16, scope: !4327)
!4336 = !DILocalVariable(name: "bma_integer", scope: !4293, file: !1, line: 1717, type: !50)
!4337 = !DILocation(line: 1717, column: 13, scope: !4293)
!4338 = !DILocation(line: 1717, column: 29, scope: !4293)
!4339 = !DILocation(line: 1717, column: 41, scope: !4293)
!4340 = !DILocation(line: 1717, column: 44, scope: !4293)
!4341 = !DILocation(line: 1717, column: 35, scope: !4293)
!4342 = !DILocation(line: 1717, column: 33, scope: !4293)
!4343 = !DILocation(line: 1717, column: 50, scope: !4293)
!4344 = !DILocation(line: 1719, column: 10, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4293, file: !1, line: 1719, column: 9)
!4346 = !DILocation(line: 1719, column: 16, scope: !4345)
!4347 = !DILocation(line: 1719, column: 23, scope: !4345)
!4348 = !DILocation(line: 1719, column: 26, scope: !4349)
!4349 = !DILexicalBlockFile(scope: !4345, file: !1, discriminator: 1)
!4350 = !DILocation(line: 1719, column: 32, scope: !4349)
!4351 = !DILocation(line: 1719, column: 39, scope: !4349)
!4352 = !DILocation(line: 1719, column: 42, scope: !4353)
!4353 = !DILexicalBlockFile(scope: !4345, file: !1, discriminator: 2)
!4354 = !DILocation(line: 1719, column: 48, scope: !4353)
!4355 = !DILocation(line: 1720, column: 6, scope: !4345)
!4356 = !DILocation(line: 1720, column: 10, scope: !4349)
!4357 = !DILocation(line: 1720, column: 18, scope: !4349)
!4358 = !DILocation(line: 1720, column: 18, scope: !4353)
!4359 = !DILocation(line: 1720, column: 18, scope: !4360)
!4360 = !DILexicalBlockFile(scope: !4345, file: !1, discriminator: 3)
!4361 = !DILocation(line: 1720, column: 18, scope: !4362)
!4362 = !DILexicalBlockFile(scope: !4345, file: !1, discriminator: 4)
!4363 = !DILocation(line: 1720, column: 17, scope: !4362)
!4364 = !DILocation(line: 1720, column: 44, scope: !4362)
!4365 = !DILocation(line: 1720, column: 39, scope: !4362)
!4366 = !DILocation(line: 1720, column: 38, scope: !4362)
!4367 = !DILocation(line: 1720, column: 12, scope: !4362)
!4368 = !DILocation(line: 1719, column: 9, scope: !4327)
!4369 = !DILocation(line: 1722, column: 39, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4345, file: !1, line: 1721, column: 7)
!4371 = !DILocation(line: 1722, column: 42, scope: !4370)
!4372 = !DILocation(line: 1722, column: 45, scope: !4370)
!4373 = !DILocation(line: 1722, column: 48, scope: !4370)
!4374 = !DILocation(line: 1722, column: 12, scope: !4370)
!4375 = !DILocation(line: 1722, column: 5, scope: !4370)
!4376 = !DILocation(line: 1724, column: 14, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4345, file: !1, line: 1724, column: 14)
!4378 = !DILocation(line: 1724, column: 16, scope: !4377)
!4379 = !DILocation(line: 1725, column: 11, scope: !4377)
!4380 = !DILocation(line: 1725, column: 14, scope: !4381)
!4381 = !DILexicalBlockFile(scope: !4377, file: !1, discriminator: 1)
!4382 = !DILocation(line: 1725, column: 23, scope: !4381)
!4383 = !DILocation(line: 1725, column: 21, scope: !4381)
!4384 = !DILocation(line: 1726, column: 11, scope: !4377)
!4385 = !DILocation(line: 1726, column: 14, scope: !4381)
!4386 = !DILocation(line: 1726, column: 29, scope: !4381)
!4387 = !DILocation(line: 1726, column: 28, scope: !4381)
!4388 = !DILocation(line: 1726, column: 31, scope: !4381)
!4389 = !DILocation(line: 1726, column: 30, scope: !4381)
!4390 = !DILocation(line: 1726, column: 21, scope: !4381)
!4391 = !DILocation(line: 1726, column: 20, scope: !4381)
!4392 = !DILocation(line: 1726, column: 39, scope: !4381)
!4393 = !DILocation(line: 1724, column: 14, scope: !4349)
!4394 = !DILocation(line: 1732, column: 39, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4377, file: !1, line: 1727, column: 7)
!4396 = !DILocation(line: 1732, column: 42, scope: !4395)
!4397 = !DILocation(line: 1732, column: 45, scope: !4395)
!4398 = !DILocation(line: 1732, column: 48, scope: !4395)
!4399 = !DILocation(line: 1732, column: 12, scope: !4395)
!4400 = !DILocation(line: 1732, column: 5, scope: !4395)
!4401 = !DILocation(line: 1734, column: 15, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4377, file: !1, line: 1734, column: 14)
!4403 = !DILocation(line: 1734, column: 21, scope: !4402)
!4404 = !DILocation(line: 1734, column: 27, scope: !4402)
!4405 = !DILocation(line: 1734, column: 35, scope: !4406)
!4406 = !DILexicalBlockFile(scope: !4402, file: !1, discriminator: 1)
!4407 = !DILocation(line: 1734, column: 30, scope: !4406)
!4408 = !DILocation(line: 1734, column: 40, scope: !4406)
!4409 = !DILocation(line: 1734, column: 47, scope: !4406)
!4410 = !DILocation(line: 1734, column: 50, scope: !4411)
!4411 = !DILexicalBlockFile(scope: !4402, file: !1, discriminator: 2)
!4412 = !DILocation(line: 1734, column: 56, scope: !4411)
!4413 = !DILocation(line: 1735, column: 11, scope: !4402)
!4414 = !DILocation(line: 1735, column: 15, scope: !4406)
!4415 = !DILocation(line: 1735, column: 40, scope: !4406)
!4416 = !DILocation(line: 1735, column: 35, scope: !4406)
!4417 = !DILocation(line: 1735, column: 23, scope: !4418)
!4418 = !DILexicalBlockFile(scope: !4406, file: !1, discriminator: 2)
!4419 = !DILocation(line: 1735, column: 22, scope: !4406)
!4420 = !DILocation(line: 1735, column: 50, scope: !4406)
!4421 = !DILocation(line: 1735, column: 49, scope: !4406)
!4422 = !DILocation(line: 1735, column: 17, scope: !4406)
!4423 = !DILocation(line: 1734, column: 14, scope: !4424)
!4424 = !DILexicalBlockFile(scope: !4377, file: !1, discriminator: 3)
!4425 = !DILocalVariable(name: "Kummer_1F1", scope: !4426, file: !1, line: 1739, type: !54)
!4426 = distinct !DILexicalBlock(scope: !4402, file: !1, line: 1736, column: 7)
!4427 = !DILocation(line: 1739, column: 19, scope: !4426)
!4428 = !DILocalVariable(name: "stat_K", scope: !4426, file: !1, line: 1740, type: !42)
!4429 = !DILocation(line: 1740, column: 9, scope: !4426)
!4430 = !DILocation(line: 1740, column: 45, scope: !4426)
!4431 = !DILocation(line: 1740, column: 50, scope: !4426)
!4432 = !DILocation(line: 1740, column: 54, scope: !4426)
!4433 = !DILocation(line: 1740, column: 53, scope: !4426)
!4434 = !DILocation(line: 1740, column: 18, scope: !4426)
!4435 = !DILocalVariable(name: "stat_e", scope: !4426, file: !1, line: 1741, type: !42)
!4436 = !DILocation(line: 1741, column: 9, scope: !4426)
!4437 = !DILocation(line: 1741, column: 40, scope: !4426)
!4438 = !DILocation(line: 1741, column: 66, scope: !4426)
!4439 = !DILocation(line: 1741, column: 61, scope: !4426)
!4440 = !DILocation(line: 1741, column: 59, scope: !4426)
!4441 = !DILocation(line: 1742, column: 50, scope: !4426)
!4442 = !DILocation(line: 1742, column: 66, scope: !4426)
!4443 = !DILocation(line: 1743, column: 39, scope: !4426)
!4444 = !DILocation(line: 1741, column: 18, scope: !4445)
!4445 = !DILexicalBlockFile(scope: !4426, file: !1, discriminator: 1)
!4446 = !DILocation(line: 1744, column: 12, scope: !4426)
!4447 = !DILocation(line: 1744, column: 12, scope: !4445)
!4448 = !DILocation(line: 1744, column: 12, scope: !4449)
!4449 = !DILexicalBlockFile(scope: !4426, file: !1, discriminator: 2)
!4450 = !DILocation(line: 1744, column: 12, scope: !4451)
!4451 = !DILexicalBlockFile(scope: !4426, file: !1, discriminator: 3)
!4452 = !DILocation(line: 1744, column: 12, scope: !4453)
!4453 = !DILexicalBlockFile(scope: !4426, file: !1, discriminator: 4)
!4454 = !DILocation(line: 1744, column: 12, scope: !4455)
!4455 = !DILexicalBlockFile(scope: !4426, file: !1, discriminator: 5)
!4456 = !DILocation(line: 1744, column: 12, scope: !4457)
!4457 = !DILexicalBlockFile(scope: !4426, file: !1, discriminator: 6)
!4458 = !DILocation(line: 1744, column: 5, scope: !4457)
!4459 = !DILocation(line: 1746, column: 14, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4402, file: !1, line: 1746, column: 14)
!4461 = !DILocation(line: 1746, column: 16, scope: !4460)
!4462 = !DILocation(line: 1747, column: 11, scope: !4460)
!4463 = !DILocation(line: 1747, column: 31, scope: !4464)
!4464 = !DILexicalBlockFile(scope: !4460, file: !1, discriminator: 1)
!4465 = !DILocation(line: 1747, column: 26, scope: !4464)
!4466 = !DILocation(line: 1747, column: 14, scope: !4467)
!4467 = !DILexicalBlockFile(scope: !4464, file: !1, discriminator: 2)
!4468 = !DILocation(line: 1747, column: 60, scope: !4464)
!4469 = !DILocation(line: 1747, column: 59, scope: !4464)
!4470 = !DILocation(line: 1747, column: 62, scope: !4464)
!4471 = !DILocation(line: 1747, column: 61, scope: !4464)
!4472 = !DILocation(line: 1747, column: 51, scope: !4473)
!4473 = !DILexicalBlockFile(scope: !4464, file: !1, discriminator: 3)
!4474 = !DILocation(line: 1747, column: 39, scope: !4475)
!4475 = !DILexicalBlockFile(scope: !4464, file: !1, discriminator: 4)
!4476 = !DILocation(line: 1747, column: 38, scope: !4464)
!4477 = !DILocation(line: 1747, column: 82, scope: !4464)
!4478 = !DILocation(line: 1747, column: 77, scope: !4479)
!4479 = !DILexicalBlockFile(scope: !4464, file: !1, discriminator: 5)
!4480 = !DILocation(line: 1747, column: 76, scope: !4464)
!4481 = !DILocation(line: 1747, column: 70, scope: !4464)
!4482 = !DILocation(line: 1746, column: 14, scope: !4406)
!4483 = !DILocation(line: 1752, column: 34, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4460, file: !1, line: 1748, column: 7)
!4485 = !DILocation(line: 1752, column: 37, scope: !4484)
!4486 = !DILocation(line: 1752, column: 40, scope: !4484)
!4487 = !DILocation(line: 1752, column: 43, scope: !4484)
!4488 = !DILocation(line: 1752, column: 12, scope: !4484)
!4489 = !DILocation(line: 1752, column: 5, scope: !4484)
!4490 = !DILocation(line: 1754, column: 14, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4460, file: !1, line: 1754, column: 14)
!4492 = !DILocation(line: 1754, column: 16, scope: !4491)
!4493 = !DILocation(line: 1755, column: 11, scope: !4491)
!4494 = !DILocation(line: 1755, column: 31, scope: !4495)
!4495 = !DILexicalBlockFile(scope: !4491, file: !1, discriminator: 1)
!4496 = !DILocation(line: 1755, column: 26, scope: !4495)
!4497 = !DILocation(line: 1755, column: 14, scope: !4498)
!4498 = !DILexicalBlockFile(scope: !4495, file: !1, discriminator: 2)
!4499 = !DILocation(line: 1755, column: 62, scope: !4495)
!4500 = !DILocation(line: 1755, column: 61, scope: !4495)
!4501 = !DILocation(line: 1755, column: 53, scope: !4502)
!4502 = !DILexicalBlockFile(scope: !4495, file: !1, discriminator: 3)
!4503 = !DILocation(line: 1755, column: 41, scope: !4504)
!4504 = !DILexicalBlockFile(scope: !4495, file: !1, discriminator: 4)
!4505 = !DILocation(line: 1755, column: 40, scope: !4495)
!4506 = !DILocation(line: 1755, column: 82, scope: !4495)
!4507 = !DILocation(line: 1755, column: 77, scope: !4508)
!4508 = !DILexicalBlockFile(scope: !4495, file: !1, discriminator: 5)
!4509 = !DILocation(line: 1755, column: 76, scope: !4495)
!4510 = !DILocation(line: 1755, column: 70, scope: !4495)
!4511 = !DILocation(line: 1754, column: 14, scope: !4464)
!4512 = !DILocation(line: 1760, column: 34, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4491, file: !1, line: 1756, column: 7)
!4514 = !DILocation(line: 1760, column: 37, scope: !4513)
!4515 = !DILocation(line: 1760, column: 40, scope: !4513)
!4516 = !DILocation(line: 1760, column: 43, scope: !4513)
!4517 = !DILocation(line: 1760, column: 12, scope: !4513)
!4518 = !DILocation(line: 1760, column: 5, scope: !4513)
!4519 = !DILocation(line: 1762, column: 11, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4491, file: !1, line: 1762, column: 11)
!4521 = !DILocation(line: 1762, column: 13, scope: !4520)
!4522 = !DILocation(line: 1762, column: 19, scope: !4520)
!4523 = !DILocation(line: 1762, column: 24, scope: !4524)
!4524 = !DILexicalBlockFile(scope: !4520, file: !1, discriminator: 1)
!4525 = !DILocation(line: 1762, column: 36, scope: !4524)
!4526 = !DILocation(line: 1762, column: 39, scope: !4527)
!4527 = !DILexicalBlockFile(scope: !4520, file: !1, discriminator: 2)
!4528 = !DILocation(line: 1762, column: 43, scope: !4527)
!4529 = !DILocation(line: 1762, column: 11, scope: !4527)
!4530 = !DILocation(line: 1763, column: 25, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4520, file: !1, line: 1762, column: 51)
!4532 = !DILocation(line: 1763, column: 28, scope: !4531)
!4533 = !DILocation(line: 1763, column: 31, scope: !4531)
!4534 = !DILocation(line: 1763, column: 34, scope: !4531)
!4535 = !DILocation(line: 1763, column: 12, scope: !4531)
!4536 = !DILocation(line: 1763, column: 5, scope: !4531)
!4537 = !DILocation(line: 1767, column: 9, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4539, file: !1, line: 1767, column: 9)
!4539 = distinct !DILexicalBlock(scope: !4520, file: !1, line: 1765, column: 8)
!4540 = !DILocation(line: 1767, column: 11, scope: !4538)
!4541 = !DILocation(line: 1767, column: 9, scope: !4539)
!4542 = !DILocalVariable(name: "status", scope: !4543, file: !1, line: 1769, type: !42)
!4543 = distinct !DILexicalBlock(scope: !4538, file: !1, line: 1767, column: 18)
!4544 = !DILocation(line: 1769, column: 11, scope: !4543)
!4545 = !DILocation(line: 1769, column: 47, scope: !4543)
!4546 = !DILocation(line: 1769, column: 49, scope: !4543)
!4547 = !DILocation(line: 1769, column: 48, scope: !4543)
!4548 = !DILocation(line: 1769, column: 52, scope: !4543)
!4549 = !DILocation(line: 1769, column: 56, scope: !4543)
!4550 = !DILocation(line: 1769, column: 55, scope: !4543)
!4551 = !DILocation(line: 1769, column: 59, scope: !4543)
!4552 = !DILocation(line: 1769, column: 20, scope: !4543)
!4553 = !DILocalVariable(name: "K_factor", scope: !4543, file: !1, line: 1770, type: !52)
!4554 = !DILocation(line: 1770, column: 14, scope: !4543)
!4555 = !DILocation(line: 1770, column: 29, scope: !4543)
!4556 = !DILocation(line: 1770, column: 25, scope: !4543)
!4557 = !DILocation(line: 1771, column: 22, scope: !4543)
!4558 = !DILocation(line: 1771, column: 7, scope: !4543)
!4559 = !DILocation(line: 1771, column: 15, scope: !4543)
!4560 = !DILocation(line: 1771, column: 19, scope: !4543)
!4561 = !DILocation(line: 1772, column: 22, scope: !4543)
!4562 = !DILocation(line: 1772, column: 7, scope: !4543)
!4563 = !DILocation(line: 1772, column: 15, scope: !4543)
!4564 = !DILocation(line: 1772, column: 19, scope: !4543)
!4565 = !DILocation(line: 1773, column: 14, scope: !4543)
!4566 = !DILocation(line: 1773, column: 7, scope: !4543)
!4567 = !DILocalVariable(name: "status", scope: !4568, file: !1, line: 1775, type: !42)
!4568 = distinct !DILexicalBlock(scope: !4538, file: !1, line: 1774, column: 12)
!4569 = !DILocation(line: 1775, column: 11, scope: !4568)
!4570 = !DILocation(line: 1775, column: 47, scope: !4568)
!4571 = !DILocation(line: 1775, column: 50, scope: !4568)
!4572 = !DILocation(line: 1775, column: 53, scope: !4568)
!4573 = !DILocation(line: 1775, column: 56, scope: !4568)
!4574 = !DILocation(line: 1775, column: 20, scope: !4568)
!4575 = !DILocation(line: 1776, column: 14, scope: !4568)
!4576 = !DILocation(line: 1776, column: 7, scope: !4568)
!4577 = !DILocation(line: 1784, column: 1, scope: !4293)
!4578 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_int", scope: !1, file: !1, line: 2057, type: !4579, isLocal: false, isDefinition: true, scopeLine: 2058, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!52, !50, !50, !52}
!4581 = !DILocalVariable(name: "m", arg: 1, scope: !4578, file: !1, line: 2057, type: !50)
!4582 = !DILocation(line: 2057, column: 40, scope: !4578)
!4583 = !DILocalVariable(name: "n", arg: 2, scope: !4578, file: !1, line: 2057, type: !50)
!4584 = !DILocation(line: 2057, column: 53, scope: !4578)
!4585 = !DILocalVariable(name: "x", arg: 3, scope: !4578, file: !1, line: 2057, type: !52)
!4586 = !DILocation(line: 2057, column: 63, scope: !4578)
!4587 = !DILocalVariable(name: "result", scope: !4578, file: !1, line: 2059, type: !54)
!4588 = !DILocation(line: 2059, column: 3, scope: !4578)
!4589 = !DILocalVariable(name: "status", scope: !4578, file: !1, line: 2059, type: !42)
!4590 = !DILocation(line: 2059, column: 3, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4578, file: !1, line: 2059, column: 3)
!4592 = !DILocation(line: 2059, column: 3, scope: !4593)
!4593 = !DILexicalBlockFile(scope: !4594, file: !1, discriminator: 1)
!4594 = distinct !DILexicalBlock(scope: !4591, file: !1, line: 2059, column: 3)
!4595 = distinct !{!4595, !4596}
!4596 = !DILocation(line: 2059, column: 3, scope: !4594)
!4597 = !DILocation(line: 2059, column: 3, scope: !4598)
!4598 = !DILexicalBlockFile(scope: !4599, file: !1, discriminator: 2)
!4599 = distinct !DILexicalBlock(scope: !4594, file: !1, line: 2059, column: 3)
!4600 = !DILocation(line: 2059, column: 3, scope: !4601)
!4601 = !DILexicalBlockFile(scope: !4594, file: !1, discriminator: 3)
!4602 = !DILocation(line: 2059, column: 3, scope: !4603)
!4603 = !DILexicalBlockFile(scope: !4578, file: !1, discriminator: 4)
!4604 = !DILocation(line: 2060, column: 1, scope: !4578)
!4605 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1", scope: !1, file: !1, line: 2062, type: !4606, isLocal: false, isDefinition: true, scopeLine: 2063, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!52, !52, !52, !52}
!4608 = !DILocalVariable(name: "a", arg: 1, scope: !4605, file: !1, line: 2062, type: !52)
!4609 = !DILocation(line: 2062, column: 33, scope: !4605)
!4610 = !DILocalVariable(name: "b", arg: 2, scope: !4605, file: !1, line: 2062, type: !52)
!4611 = !DILocation(line: 2062, column: 43, scope: !4605)
!4612 = !DILocalVariable(name: "x", arg: 3, scope: !4605, file: !1, line: 2062, type: !52)
!4613 = !DILocation(line: 2062, column: 53, scope: !4605)
!4614 = !DILocalVariable(name: "result", scope: !4605, file: !1, line: 2064, type: !54)
!4615 = !DILocation(line: 2064, column: 3, scope: !4605)
!4616 = !DILocalVariable(name: "status", scope: !4605, file: !1, line: 2064, type: !42)
!4617 = !DILocation(line: 2064, column: 3, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4605, file: !1, line: 2064, column: 3)
!4619 = !DILocation(line: 2064, column: 3, scope: !4620)
!4620 = !DILexicalBlockFile(scope: !4621, file: !1, discriminator: 1)
!4621 = distinct !DILexicalBlock(scope: !4618, file: !1, line: 2064, column: 3)
!4622 = distinct !{!4622, !4623}
!4623 = !DILocation(line: 2064, column: 3, scope: !4621)
!4624 = !DILocation(line: 2064, column: 3, scope: !4625)
!4625 = !DILexicalBlockFile(scope: !4626, file: !1, discriminator: 2)
!4626 = distinct !DILexicalBlock(scope: !4621, file: !1, line: 2064, column: 3)
!4627 = !DILocation(line: 2064, column: 3, scope: !4628)
!4628 = !DILexicalBlockFile(scope: !4621, file: !1, discriminator: 3)
!4629 = !DILocation(line: 2064, column: 3, scope: !4630)
!4630 = !DILexicalBlockFile(scope: !4605, file: !1, discriminator: 4)
!4631 = !DILocation(line: 2065, column: 1, scope: !4605)
!4632 = distinct !DISubprogram(name: "hyperg_1F1_beq2a_pos", scope: !1, file: !1, line: 863, type: !2198, isLocal: true, isDefinition: true, scopeLine: 864, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!4633 = !DILocalVariable(name: "a", arg: 1, scope: !4632, file: !1, line: 863, type: !51)
!4634 = !DILocation(line: 863, column: 35, scope: !4632)
!4635 = !DILocalVariable(name: "x", arg: 2, scope: !4632, file: !1, line: 863, type: !51)
!4636 = !DILocation(line: 863, column: 51, scope: !4632)
!4637 = !DILocalVariable(name: "result", arg: 3, scope: !4632, file: !1, line: 863, type: !53)
!4638 = !DILocation(line: 863, column: 70, scope: !4632)
!4639 = !DILocation(line: 865, column: 6, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4632, file: !1, line: 865, column: 6)
!4641 = !DILocation(line: 865, column: 8, scope: !4640)
!4642 = !DILocation(line: 865, column: 6, scope: !4632)
!4643 = !DILocation(line: 866, column: 5, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4640, file: !1, line: 865, column: 16)
!4645 = !DILocation(line: 866, column: 13, scope: !4644)
!4646 = !DILocation(line: 866, column: 17, scope: !4644)
!4647 = !DILocation(line: 867, column: 5, scope: !4644)
!4648 = !DILocation(line: 867, column: 13, scope: !4644)
!4649 = !DILocation(line: 867, column: 17, scope: !4644)
!4650 = !DILocation(line: 868, column: 5, scope: !4644)
!4651 = !DILocalVariable(name: "I", scope: !4652, file: !1, line: 871, type: !54)
!4652 = distinct !DILexicalBlock(scope: !4640, file: !1, line: 870, column: 8)
!4653 = !DILocation(line: 871, column: 19, scope: !4652)
!4654 = !DILocalVariable(name: "stat_I", scope: !4652, file: !1, line: 872, type: !42)
!4655 = !DILocation(line: 872, column: 9, scope: !4652)
!4656 = !DILocation(line: 872, column: 45, scope: !4652)
!4657 = !DILocation(line: 872, column: 46, scope: !4652)
!4658 = !DILocation(line: 872, column: 61, scope: !4652)
!4659 = !DILocation(line: 872, column: 56, scope: !4652)
!4660 = !DILocation(line: 872, column: 55, scope: !4652)
!4661 = !DILocation(line: 872, column: 18, scope: !4662)
!4662 = !DILexicalBlockFile(scope: !4652, file: !1, discriminator: 1)
!4663 = !DILocalVariable(name: "lg", scope: !4652, file: !1, line: 873, type: !54)
!4664 = !DILocation(line: 873, column: 19, scope: !4652)
!4665 = !DILocalVariable(name: "stat_g", scope: !4652, file: !1, line: 874, type: !42)
!4666 = !DILocation(line: 874, column: 9, scope: !4652)
!4667 = !DILocation(line: 874, column: 35, scope: !4652)
!4668 = !DILocation(line: 874, column: 37, scope: !4652)
!4669 = !DILocation(line: 874, column: 18, scope: !4652)
!4670 = !DILocalVariable(name: "ln_term", scope: !4652, file: !1, line: 875, type: !52)
!4671 = !DILocation(line: 875, column: 12, scope: !4652)
!4672 = !DILocation(line: 875, column: 29, scope: !4652)
!4673 = !DILocation(line: 875, column: 28, scope: !4652)
!4674 = !DILocation(line: 875, column: 46, scope: !4652)
!4675 = !DILocation(line: 875, column: 41, scope: !4652)
!4676 = !DILocation(line: 875, column: 40, scope: !4652)
!4677 = !DILocation(line: 875, column: 32, scope: !4662)
!4678 = !DILocation(line: 875, column: 31, scope: !4652)
!4679 = !DILocalVariable(name: "lnpre_val", scope: !4652, file: !1, line: 876, type: !52)
!4680 = !DILocation(line: 876, column: 12, scope: !4652)
!4681 = !DILocation(line: 876, column: 27, scope: !4652)
!4682 = !DILocation(line: 876, column: 45, scope: !4652)
!4683 = !DILocation(line: 876, column: 33, scope: !4652)
!4684 = !DILocation(line: 876, column: 31, scope: !4652)
!4685 = !DILocation(line: 876, column: 54, scope: !4652)
!4686 = !DILocation(line: 876, column: 52, scope: !4652)
!4687 = !DILocalVariable(name: "lnpre_err", scope: !4652, file: !1, line: 877, type: !52)
!4688 = !DILocation(line: 877, column: 12, scope: !4652)
!4689 = !DILocation(line: 877, column: 27, scope: !4652)
!4690 = !DILocation(line: 877, column: 57, scope: !4652)
!4691 = !DILocation(line: 877, column: 52, scope: !4652)
!4692 = !DILocation(line: 877, column: 73, scope: !4652)
!4693 = !DILocation(line: 877, column: 68, scope: !4662)
!4694 = !DILocation(line: 877, column: 66, scope: !4652)
!4695 = !DILocation(line: 877, column: 49, scope: !4652)
!4696 = !DILocation(line: 877, column: 31, scope: !4652)
!4697 = !DILocalVariable(name: "stat_e", scope: !4652, file: !1, line: 878, type: !42)
!4698 = !DILocation(line: 878, column: 9, scope: !4652)
!4699 = !DILocation(line: 878, column: 40, scope: !4652)
!4700 = !DILocation(line: 878, column: 51, scope: !4652)
!4701 = !DILocation(line: 879, column: 45, scope: !4652)
!4702 = !DILocation(line: 879, column: 52, scope: !4652)
!4703 = !DILocation(line: 880, column: 43, scope: !4652)
!4704 = !DILocation(line: 878, column: 18, scope: !4652)
!4705 = !DILocation(line: 881, column: 12, scope: !4652)
!4706 = !DILocation(line: 881, column: 12, scope: !4662)
!4707 = !DILocation(line: 881, column: 12, scope: !4708)
!4708 = !DILexicalBlockFile(scope: !4652, file: !1, discriminator: 2)
!4709 = !DILocation(line: 881, column: 12, scope: !4710)
!4710 = !DILexicalBlockFile(scope: !4652, file: !1, discriminator: 3)
!4711 = !DILocation(line: 881, column: 12, scope: !4712)
!4712 = !DILexicalBlockFile(scope: !4652, file: !1, discriminator: 4)
!4713 = !DILocation(line: 881, column: 12, scope: !4714)
!4714 = !DILexicalBlockFile(scope: !4652, file: !1, discriminator: 5)
!4715 = !DILocation(line: 881, column: 12, scope: !4716)
!4716 = !DILexicalBlockFile(scope: !4652, file: !1, discriminator: 6)
!4717 = !DILocation(line: 881, column: 12, scope: !4718)
!4718 = !DILexicalBlockFile(scope: !4652, file: !1, discriminator: 7)
!4719 = !DILocation(line: 881, column: 12, scope: !4720)
!4720 = !DILexicalBlockFile(scope: !4652, file: !1, discriminator: 8)
!4721 = !DILocation(line: 881, column: 12, scope: !4722)
!4722 = !DILexicalBlockFile(scope: !4652, file: !1, discriminator: 9)
!4723 = !DILocation(line: 881, column: 5, scope: !4722)
!4724 = !DILocation(line: 883, column: 1, scope: !4632)
!4725 = distinct !DISubprogram(name: "hyperg_1F1_CF1_p_ser", scope: !1, file: !1, line: 559, type: !4726, isLocal: true, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!42, !51, !51, !51, !4728}
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!4729 = !DILocalVariable(name: "a", arg: 1, scope: !4725, file: !1, line: 559, type: !51)
!4730 = !DILocation(line: 559, column: 35, scope: !4725)
!4731 = !DILocalVariable(name: "b", arg: 2, scope: !4725, file: !1, line: 559, type: !51)
!4732 = !DILocation(line: 559, column: 51, scope: !4725)
!4733 = !DILocalVariable(name: "x", arg: 3, scope: !4725, file: !1, line: 559, type: !51)
!4734 = !DILocation(line: 559, column: 67, scope: !4725)
!4735 = !DILocalVariable(name: "result", arg: 4, scope: !4725, file: !1, line: 559, type: !4728)
!4736 = !DILocation(line: 559, column: 79, scope: !4725)
!4737 = !DILocation(line: 561, column: 6, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4725, file: !1, line: 561, column: 6)
!4739 = !DILocation(line: 561, column: 8, scope: !4738)
!4740 = !DILocation(line: 561, column: 6, scope: !4725)
!4741 = !DILocation(line: 562, column: 6, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4738, file: !1, line: 561, column: 16)
!4743 = !DILocation(line: 562, column: 13, scope: !4742)
!4744 = !DILocation(line: 563, column: 5, scope: !4742)
!4745 = !DILocalVariable(name: "maxiter", scope: !4746, file: !1, line: 566, type: !50)
!4746 = distinct !DILexicalBlock(scope: !4738, file: !1, line: 565, column: 8)
!4747 = !DILocation(line: 566, column: 15, scope: !4746)
!4748 = !DILocalVariable(name: "sum", scope: !4746, file: !1, line: 567, type: !52)
!4749 = !DILocation(line: 567, column: 12, scope: !4746)
!4750 = !DILocalVariable(name: "pk", scope: !4746, file: !1, line: 568, type: !52)
!4751 = !DILocation(line: 568, column: 12, scope: !4746)
!4752 = !DILocalVariable(name: "rhok", scope: !4746, file: !1, line: 569, type: !52)
!4753 = !DILocation(line: 569, column: 12, scope: !4746)
!4754 = !DILocalVariable(name: "k", scope: !4746, file: !1, line: 570, type: !42)
!4755 = !DILocation(line: 570, column: 9, scope: !4746)
!4756 = !DILocation(line: 571, column: 10, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4746, file: !1, line: 571, column: 5)
!4758 = !DILocation(line: 571, column: 9, scope: !4757)
!4759 = !DILocation(line: 571, column: 14, scope: !4760)
!4760 = !DILexicalBlockFile(scope: !4761, file: !1, discriminator: 1)
!4761 = distinct !DILexicalBlock(scope: !4757, file: !1, line: 571, column: 5)
!4762 = !DILocation(line: 571, column: 15, scope: !4760)
!4763 = !DILocation(line: 571, column: 5, scope: !4760)
!4764 = !DILocalVariable(name: "ak", scope: !4765, file: !1, line: 572, type: !52)
!4765 = distinct !DILexicalBlock(scope: !4761, file: !1, line: 571, column: 30)
!4766 = !DILocation(line: 572, column: 14, scope: !4765)
!4767 = !DILocation(line: 572, column: 20, scope: !4765)
!4768 = !DILocation(line: 572, column: 24, scope: !4765)
!4769 = !DILocation(line: 572, column: 22, scope: !4765)
!4770 = !DILocation(line: 572, column: 27, scope: !4765)
!4771 = !DILocation(line: 572, column: 26, scope: !4765)
!4772 = !DILocation(line: 572, column: 31, scope: !4765)
!4773 = !DILocation(line: 572, column: 33, scope: !4765)
!4774 = !DILocation(line: 572, column: 32, scope: !4765)
!4775 = !DILocation(line: 572, column: 35, scope: !4765)
!4776 = !DILocation(line: 572, column: 34, scope: !4765)
!4777 = !DILocation(line: 572, column: 36, scope: !4765)
!4778 = !DILocation(line: 572, column: 43, scope: !4765)
!4779 = !DILocation(line: 572, column: 45, scope: !4765)
!4780 = !DILocation(line: 572, column: 44, scope: !4765)
!4781 = !DILocation(line: 572, column: 47, scope: !4765)
!4782 = !DILocation(line: 572, column: 46, scope: !4765)
!4783 = !DILocation(line: 572, column: 41, scope: !4765)
!4784 = !DILocation(line: 572, column: 28, scope: !4765)
!4785 = !DILocation(line: 573, column: 15, scope: !4765)
!4786 = !DILocation(line: 573, column: 14, scope: !4765)
!4787 = !DILocation(line: 573, column: 25, scope: !4765)
!4788 = !DILocation(line: 573, column: 23, scope: !4765)
!4789 = !DILocation(line: 573, column: 17, scope: !4765)
!4790 = !DILocation(line: 573, column: 38, scope: !4765)
!4791 = !DILocation(line: 573, column: 46, scope: !4765)
!4792 = !DILocation(line: 573, column: 45, scope: !4765)
!4793 = !DILocation(line: 573, column: 40, scope: !4765)
!4794 = !DILocation(line: 573, column: 36, scope: !4765)
!4795 = !DILocation(line: 573, column: 30, scope: !4765)
!4796 = !DILocation(line: 573, column: 12, scope: !4765)
!4797 = !DILocation(line: 574, column: 14, scope: !4765)
!4798 = !DILocation(line: 574, column: 11, scope: !4765)
!4799 = !DILocation(line: 575, column: 14, scope: !4765)
!4800 = !DILocation(line: 575, column: 11, scope: !4765)
!4801 = !DILocation(line: 576, column: 15, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4765, file: !1, line: 576, column: 10)
!4803 = !DILocation(line: 576, column: 18, scope: !4802)
!4804 = !DILocation(line: 576, column: 17, scope: !4802)
!4805 = !DILocation(line: 576, column: 10, scope: !4802)
!4806 = !DILocation(line: 576, column: 23, scope: !4802)
!4807 = !DILocation(line: 576, column: 10, scope: !4765)
!4808 = !DILocation(line: 576, column: 46, scope: !4809)
!4809 = !DILexicalBlockFile(scope: !4802, file: !1, discriminator: 1)
!4810 = !DILocation(line: 577, column: 5, scope: !4765)
!4811 = !DILocation(line: 571, column: 26, scope: !4812)
!4812 = !DILexicalBlockFile(scope: !4761, file: !1, discriminator: 2)
!4813 = !DILocation(line: 571, column: 5, scope: !4812)
!4814 = distinct !{!4814, !4815}
!4815 = !DILocation(line: 571, column: 5, scope: !4746)
!4816 = !DILocation(line: 578, column: 15, scope: !4746)
!4817 = !DILocation(line: 578, column: 18, scope: !4746)
!4818 = !DILocation(line: 578, column: 20, scope: !4746)
!4819 = !DILocation(line: 578, column: 19, scope: !4746)
!4820 = !DILocation(line: 578, column: 16, scope: !4746)
!4821 = !DILocation(line: 578, column: 25, scope: !4746)
!4822 = !DILocation(line: 578, column: 23, scope: !4746)
!4823 = !DILocation(line: 578, column: 6, scope: !4746)
!4824 = !DILocation(line: 578, column: 13, scope: !4746)
!4825 = !DILocation(line: 579, column: 8, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4746, file: !1, line: 579, column: 8)
!4827 = !DILocation(line: 579, column: 10, scope: !4826)
!4828 = !DILocation(line: 579, column: 8, scope: !4746)
!4829 = !DILocation(line: 580, column: 7, scope: !4826)
!4830 = distinct !{!4830, !4829}
!4831 = !DILocation(line: 580, column: 7, scope: !4832)
!4832 = !DILexicalBlockFile(scope: !4833, file: !1, discriminator: 1)
!4833 = distinct !DILexicalBlock(scope: !4826, file: !1, line: 580, column: 7)
!4834 = !DILocation(line: 580, column: 7, scope: !4835)
!4835 = !DILexicalBlockFile(scope: !4833, file: !1, discriminator: 2)
!4836 = !DILocation(line: 582, column: 7, scope: !4826)
!4837 = !DILocation(line: 584, column: 1, scope: !4725)
!4838 = distinct !DISubprogram(name: "hyperg_1F1_1", scope: !1, file: !1, line: 346, type: !2198, isLocal: true, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!4839 = !DILocalVariable(name: "b", arg: 1, scope: !4838, file: !1, line: 346, type: !51)
!4840 = !DILocation(line: 346, column: 27, scope: !4838)
!4841 = !DILocalVariable(name: "x", arg: 2, scope: !4838, file: !1, line: 346, type: !51)
!4842 = !DILocation(line: 346, column: 43, scope: !4838)
!4843 = !DILocalVariable(name: "result", arg: 3, scope: !4838, file: !1, line: 346, type: !53)
!4844 = !DILocation(line: 346, column: 62, scope: !4838)
!4845 = !DILocalVariable(name: "ax", scope: !4838, file: !1, line: 348, type: !52)
!4846 = !DILocation(line: 348, column: 10, scope: !4838)
!4847 = !DILocation(line: 348, column: 20, scope: !4838)
!4848 = !DILocation(line: 348, column: 15, scope: !4838)
!4849 = !DILocalVariable(name: "ib", scope: !4838, file: !1, line: 349, type: !52)
!4850 = !DILocation(line: 349, column: 10, scope: !4838)
!4851 = !DILocation(line: 349, column: 21, scope: !4838)
!4852 = !DILocation(line: 349, column: 23, scope: !4838)
!4853 = !DILocation(line: 349, column: 15, scope: !4838)
!4854 = !DILocation(line: 351, column: 6, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4838, file: !1, line: 351, column: 6)
!4856 = !DILocation(line: 351, column: 8, scope: !4855)
!4857 = !DILocation(line: 351, column: 6, scope: !4838)
!4858 = !DILocation(line: 352, column: 5, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4855, file: !1, line: 351, column: 15)
!4860 = distinct !{!4860, !4858}
!4861 = !DILocation(line: 352, column: 5, scope: !4862)
!4862 = !DILexicalBlockFile(scope: !4863, file: !1, discriminator: 1)
!4863 = distinct !DILexicalBlock(scope: !4859, file: !1, line: 352, column: 5)
!4864 = distinct !{!4864, !4865}
!4865 = !DILocation(line: 352, column: 5, scope: !4863)
!4866 = !DILocation(line: 352, column: 5, scope: !4867)
!4867 = !DILexicalBlockFile(scope: !4868, file: !1, discriminator: 2)
!4868 = distinct !DILexicalBlock(scope: !4863, file: !1, line: 352, column: 5)
!4869 = !DILocation(line: 352, column: 5, scope: !4870)
!4870 = !DILexicalBlockFile(scope: !4863, file: !1, discriminator: 3)
!4871 = !DILocation(line: 353, column: 3, scope: !4859)
!4872 = !DILocation(line: 354, column: 11, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4855, file: !1, line: 354, column: 11)
!4874 = !DILocation(line: 354, column: 13, scope: !4873)
!4875 = !DILocation(line: 354, column: 11, scope: !4855)
!4876 = !DILocation(line: 355, column: 25, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4873, file: !1, line: 354, column: 21)
!4878 = !DILocation(line: 355, column: 28, scope: !4877)
!4879 = !DILocation(line: 355, column: 12, scope: !4877)
!4880 = !DILocation(line: 355, column: 5, scope: !4877)
!4881 = !DILocation(line: 357, column: 11, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4873, file: !1, line: 357, column: 11)
!4883 = !DILocation(line: 357, column: 20, scope: !4882)
!4884 = !DILocation(line: 357, column: 19, scope: !4882)
!4885 = !DILocation(line: 357, column: 13, scope: !4882)
!4886 = !DILocation(line: 357, column: 11, scope: !4873)
!4887 = !DILocation(line: 358, column: 32, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4882, file: !1, line: 357, column: 24)
!4889 = !DILocation(line: 358, column: 35, scope: !4888)
!4890 = !DILocation(line: 358, column: 38, scope: !4888)
!4891 = !DILocation(line: 358, column: 12, scope: !4888)
!4892 = !DILocation(line: 358, column: 5, scope: !4888)
!4893 = !DILocation(line: 360, column: 16, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4882, file: !1, line: 360, column: 11)
!4895 = !DILocation(line: 360, column: 20, scope: !4894)
!4896 = !DILocation(line: 360, column: 18, scope: !4894)
!4897 = !DILocation(line: 360, column: 11, scope: !4894)
!4898 = !DILocation(line: 360, column: 24, scope: !4894)
!4899 = !DILocation(line: 360, column: 45, scope: !4894)
!4900 = !DILocation(line: 360, column: 48, scope: !4901)
!4901 = !DILexicalBlockFile(scope: !4894, file: !1, discriminator: 1)
!4902 = !DILocation(line: 360, column: 51, scope: !4901)
!4903 = !DILocation(line: 360, column: 11, scope: !4901)
!4904 = !DILocation(line: 361, column: 34, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4894, file: !1, line: 360, column: 62)
!4906 = !DILocation(line: 361, column: 29, scope: !4905)
!4907 = !DILocation(line: 361, column: 38, scope: !4905)
!4908 = !DILocation(line: 361, column: 41, scope: !4905)
!4909 = !DILocation(line: 361, column: 12, scope: !4905)
!4910 = !DILocation(line: 361, column: 5, scope: !4905)
!4911 = !DILocation(line: 363, column: 11, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4894, file: !1, line: 363, column: 11)
!4913 = !DILocation(line: 363, column: 13, scope: !4912)
!4914 = !DILocation(line: 363, column: 11, scope: !4894)
!4915 = !DILocation(line: 364, column: 8, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4917, file: !1, line: 364, column: 8)
!4917 = distinct !DILexicalBlock(scope: !4912, file: !1, line: 363, column: 20)
!4918 = !DILocation(line: 364, column: 10, scope: !4916)
!4919 = !DILocation(line: 364, column: 18, scope: !4916)
!4920 = !DILocation(line: 364, column: 21, scope: !4921)
!4921 = !DILexicalBlockFile(scope: !4916, file: !1, discriminator: 1)
!4922 = !DILocation(line: 364, column: 30, scope: !4921)
!4923 = !DILocation(line: 364, column: 29, scope: !4921)
!4924 = !DILocation(line: 364, column: 23, scope: !4921)
!4925 = !DILocation(line: 364, column: 8, scope: !4921)
!4926 = !DILocation(line: 365, column: 41, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4916, file: !1, line: 364, column: 33)
!4928 = !DILocation(line: 365, column: 44, scope: !4927)
!4929 = !DILocation(line: 365, column: 47, scope: !4927)
!4930 = !DILocation(line: 365, column: 14, scope: !4927)
!4931 = !DILocation(line: 365, column: 7, scope: !4927)
!4932 = !DILocation(line: 367, column: 13, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4916, file: !1, line: 367, column: 13)
!4934 = !DILocation(line: 367, column: 15, scope: !4933)
!4935 = !DILocation(line: 367, column: 13, scope: !4916)
!4936 = !DILocalVariable(name: "off", scope: !4937, file: !1, line: 373, type: !51)
!4937 = distinct !DILexicalBlock(scope: !4933, file: !1, line: 367, column: 26)
!4938 = !DILocation(line: 373, column: 20, scope: !4937)
!4939 = !DILocation(line: 373, column: 35, scope: !4937)
!4940 = !DILocation(line: 373, column: 34, scope: !4937)
!4941 = !DILocation(line: 373, column: 37, scope: !4937)
!4942 = !DILocation(line: 373, column: 36, scope: !4937)
!4943 = !DILocation(line: 373, column: 26, scope: !4937)
!4944 = !DILocation(line: 373, column: 40, scope: !4937)
!4945 = !DILocalVariable(name: "bp", scope: !4937, file: !1, line: 374, type: !52)
!4946 = !DILocation(line: 374, column: 14, scope: !4937)
!4947 = !DILocation(line: 374, column: 19, scope: !4937)
!4948 = !DILocation(line: 374, column: 23, scope: !4937)
!4949 = !DILocation(line: 374, column: 21, scope: !4937)
!4950 = !DILocalVariable(name: "M", scope: !4937, file: !1, line: 375, type: !54)
!4951 = !DILocation(line: 375, column: 21, scope: !4937)
!4952 = !DILocalVariable(name: "stat_s", scope: !4937, file: !1, line: 376, type: !42)
!4953 = !DILocation(line: 376, column: 11, scope: !4937)
!4954 = !DILocation(line: 376, column: 40, scope: !4937)
!4955 = !DILocation(line: 376, column: 44, scope: !4937)
!4956 = !DILocation(line: 376, column: 20, scope: !4937)
!4957 = !DILocalVariable(name: "err_rat", scope: !4937, file: !1, line: 377, type: !51)
!4958 = !DILocation(line: 377, column: 20, scope: !4937)
!4959 = !DILocation(line: 377, column: 32, scope: !4937)
!4960 = !DILocation(line: 377, column: 45, scope: !4937)
!4961 = !DILocation(line: 377, column: 38, scope: !4937)
!4962 = !DILocation(line: 377, column: 36, scope: !4937)
!4963 = !DILocation(line: 378, column: 7, scope: !4937)
!4964 = !DILocation(line: 378, column: 13, scope: !4965)
!4965 = !DILexicalBlockFile(scope: !4937, file: !1, discriminator: 1)
!4966 = !DILocation(line: 378, column: 18, scope: !4965)
!4967 = !DILocation(line: 378, column: 19, scope: !4965)
!4968 = !DILocation(line: 378, column: 16, scope: !4965)
!4969 = !DILocation(line: 378, column: 7, scope: !4965)
!4970 = !DILocation(line: 380, column: 12, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4937, file: !1, line: 378, column: 25)
!4972 = !DILocation(line: 381, column: 24, scope: !4971)
!4973 = !DILocation(line: 381, column: 26, scope: !4971)
!4974 = !DILocation(line: 381, column: 25, scope: !4971)
!4975 = !DILocation(line: 381, column: 33, scope: !4971)
!4976 = !DILocation(line: 381, column: 29, scope: !4971)
!4977 = !DILocation(line: 381, column: 22, scope: !4971)
!4978 = !DILocation(line: 381, column: 11, scope: !4971)
!4979 = !DILocation(line: 381, column: 16, scope: !4971)
!4980 = !DILocation(line: 378, column: 7, scope: !4981)
!4981 = !DILexicalBlockFile(scope: !4937, file: !1, discriminator: 2)
!4982 = distinct !{!4982, !4963}
!4983 = !DILocation(line: 383, column: 24, scope: !4937)
!4984 = !DILocation(line: 383, column: 7, scope: !4937)
!4985 = !DILocation(line: 383, column: 15, scope: !4937)
!4986 = !DILocation(line: 383, column: 20, scope: !4937)
!4987 = !DILocation(line: 384, column: 22, scope: !4937)
!4988 = !DILocation(line: 384, column: 39, scope: !4937)
!4989 = !DILocation(line: 384, column: 32, scope: !4937)
!4990 = !DILocation(line: 384, column: 30, scope: !4937)
!4991 = !DILocation(line: 384, column: 7, scope: !4937)
!4992 = !DILocation(line: 384, column: 15, scope: !4937)
!4993 = !DILocation(line: 384, column: 20, scope: !4937)
!4994 = !DILocation(line: 385, column: 52, scope: !4937)
!4995 = !DILocation(line: 385, column: 47, scope: !4937)
!4996 = !DILocation(line: 385, column: 56, scope: !4937)
!4997 = !DILocation(line: 385, column: 44, scope: !4937)
!4998 = !DILocation(line: 385, column: 71, scope: !4937)
!4999 = !DILocation(line: 385, column: 64, scope: !4965)
!5000 = !DILocation(line: 385, column: 62, scope: !4937)
!5001 = !DILocation(line: 385, column: 7, scope: !4937)
!5002 = !DILocation(line: 385, column: 15, scope: !4937)
!5003 = !DILocation(line: 385, column: 19, scope: !4937)
!5004 = !DILocation(line: 386, column: 14, scope: !4937)
!5005 = !DILocation(line: 386, column: 7, scope: !4937)
!5006 = !DILocation(line: 387, column: 21, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4933, file: !1, line: 387, column: 16)
!5008 = !DILocation(line: 387, column: 16, scope: !5007)
!5009 = !DILocation(line: 387, column: 31, scope: !5007)
!5010 = !DILocation(line: 387, column: 26, scope: !5011)
!5011 = !DILexicalBlockFile(scope: !5007, file: !1, discriminator: 2)
!5012 = !DILocation(line: 387, column: 24, scope: !5007)
!5013 = !DILocation(line: 387, column: 34, scope: !5007)
!5014 = !DILocation(line: 387, column: 42, scope: !5015)
!5015 = !DILexicalBlockFile(scope: !5007, file: !1, discriminator: 1)
!5016 = !DILocation(line: 387, column: 37, scope: !5015)
!5017 = !DILocation(line: 387, column: 57, scope: !5015)
!5018 = !DILocation(line: 387, column: 52, scope: !5019)
!5019 = !DILexicalBlockFile(scope: !5015, file: !1, discriminator: 3)
!5020 = !DILocation(line: 387, column: 47, scope: !5021)
!5021 = !DILexicalBlockFile(scope: !5015, file: !1, discriminator: 4)
!5022 = !DILocation(line: 387, column: 68, scope: !5015)
!5023 = !DILocation(line: 387, column: 70, scope: !5015)
!5024 = !DILocation(line: 387, column: 69, scope: !5015)
!5025 = !DILocation(line: 387, column: 63, scope: !5026)
!5026 = !DILexicalBlockFile(scope: !5015, file: !1, discriminator: 5)
!5027 = !DILocation(line: 387, column: 61, scope: !5015)
!5028 = !DILocation(line: 387, column: 45, scope: !5015)
!5029 = !DILocation(line: 387, column: 16, scope: !5015)
!5030 = !DILocation(line: 388, column: 38, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5007, file: !1, line: 387, column: 74)
!5032 = !DILocation(line: 388, column: 41, scope: !5031)
!5033 = !DILocation(line: 388, column: 44, scope: !5031)
!5034 = !DILocation(line: 388, column: 14, scope: !5031)
!5035 = !DILocation(line: 388, column: 7, scope: !5031)
!5036 = !DILocation(line: 389, column: 21, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5007, file: !1, line: 389, column: 16)
!5038 = !DILocation(line: 389, column: 16, scope: !5037)
!5039 = !DILocation(line: 389, column: 31, scope: !5037)
!5040 = !DILocation(line: 389, column: 26, scope: !5041)
!5041 = !DILexicalBlockFile(scope: !5037, file: !1, discriminator: 1)
!5042 = !DILocation(line: 389, column: 24, scope: !5037)
!5043 = !DILocation(line: 389, column: 16, scope: !5007)
!5044 = !DILocation(line: 390, column: 34, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5037, file: !1, line: 389, column: 35)
!5046 = !DILocation(line: 390, column: 37, scope: !5045)
!5047 = !DILocation(line: 390, column: 40, scope: !5045)
!5048 = !DILocation(line: 390, column: 14, scope: !5045)
!5049 = !DILocation(line: 390, column: 7, scope: !5045)
!5050 = !DILocation(line: 392, column: 41, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5037, file: !1, line: 391, column: 12)
!5052 = !DILocation(line: 392, column: 44, scope: !5051)
!5053 = !DILocation(line: 392, column: 47, scope: !5051)
!5054 = !DILocation(line: 392, column: 14, scope: !5051)
!5055 = !DILocation(line: 392, column: 7, scope: !5051)
!5056 = !DILocation(line: 398, column: 8, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5058, file: !1, line: 398, column: 8)
!5058 = distinct !DILexicalBlock(scope: !4912, file: !1, line: 395, column: 8)
!5059 = !DILocation(line: 398, column: 11, scope: !5057)
!5060 = !DILocation(line: 398, column: 18, scope: !5057)
!5061 = !DILocation(line: 398, column: 21, scope: !5062)
!5062 = !DILexicalBlockFile(scope: !5057, file: !1, discriminator: 1)
!5063 = !DILocation(line: 398, column: 23, scope: !5062)
!5064 = !DILocation(line: 398, column: 8, scope: !5062)
!5065 = !DILocation(line: 399, column: 34, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5057, file: !1, line: 398, column: 31)
!5067 = !DILocation(line: 399, column: 37, scope: !5066)
!5068 = !DILocation(line: 399, column: 40, scope: !5066)
!5069 = !DILocation(line: 399, column: 14, scope: !5066)
!5070 = !DILocation(line: 399, column: 7, scope: !5066)
!5071 = !DILocation(line: 401, column: 13, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5057, file: !1, line: 401, column: 13)
!5073 = !DILocation(line: 401, column: 16, scope: !5072)
!5074 = !DILocation(line: 401, column: 25, scope: !5072)
!5075 = !DILocation(line: 401, column: 49, scope: !5076)
!5076 = !DILexicalBlockFile(scope: !5072, file: !1, discriminator: 1)
!5077 = !DILocation(line: 401, column: 48, scope: !5076)
!5078 = !DILocation(line: 401, column: 40, scope: !5076)
!5079 = !DILocation(line: 401, column: 28, scope: !5080)
!5080 = !DILexicalBlockFile(scope: !5076, file: !1, discriminator: 2)
!5081 = !DILocation(line: 401, column: 64, scope: !5076)
!5082 = !DILocation(line: 401, column: 63, scope: !5076)
!5083 = !DILocation(line: 401, column: 57, scope: !5076)
!5084 = !DILocation(line: 401, column: 13, scope: !5076)
!5085 = !DILocation(line: 402, column: 41, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5072, file: !1, line: 401, column: 68)
!5087 = !DILocation(line: 402, column: 44, scope: !5086)
!5088 = !DILocation(line: 402, column: 47, scope: !5086)
!5089 = !DILocation(line: 402, column: 14, scope: !5086)
!5090 = !DILocation(line: 402, column: 7, scope: !5086)
!5091 = !DILocation(line: 405, column: 35, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5072, file: !1, line: 404, column: 10)
!5093 = !DILocation(line: 405, column: 38, scope: !5092)
!5094 = !DILocation(line: 405, column: 41, scope: !5092)
!5095 = !DILocation(line: 405, column: 14, scope: !5092)
!5096 = !DILocation(line: 405, column: 7, scope: !5092)
!5097 = !DILocation(line: 408, column: 1, scope: !4838)
!5098 = distinct !DISubprogram(name: "hyperg_1F1_largebx", scope: !1, file: !1, line: 148, type: !279, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!5099 = !DILocalVariable(name: "a", arg: 1, scope: !5098, file: !1, line: 148, type: !51)
!5100 = !DILocation(line: 148, column: 33, scope: !5098)
!5101 = !DILocalVariable(name: "b", arg: 2, scope: !5098, file: !1, line: 148, type: !51)
!5102 = !DILocation(line: 148, column: 49, scope: !5098)
!5103 = !DILocalVariable(name: "x", arg: 3, scope: !5098, file: !1, line: 148, type: !51)
!5104 = !DILocation(line: 148, column: 65, scope: !5098)
!5105 = !DILocalVariable(name: "result", arg: 4, scope: !5098, file: !1, line: 148, type: !53)
!5106 = !DILocation(line: 148, column: 84, scope: !5098)
!5107 = !DILocalVariable(name: "y", scope: !5098, file: !1, line: 150, type: !52)
!5108 = !DILocation(line: 150, column: 10, scope: !5098)
!5109 = !DILocation(line: 150, column: 14, scope: !5098)
!5110 = !DILocation(line: 150, column: 16, scope: !5098)
!5111 = !DILocation(line: 150, column: 15, scope: !5098)
!5112 = !DILocalVariable(name: "f", scope: !5098, file: !1, line: 151, type: !52)
!5113 = !DILocation(line: 151, column: 10, scope: !5098)
!5114 = !DILocation(line: 151, column: 19, scope: !5098)
!5115 = !DILocation(line: 151, column: 18, scope: !5098)
!5116 = !DILocation(line: 151, column: 28, scope: !5098)
!5117 = !DILocation(line: 151, column: 27, scope: !5098)
!5118 = !DILocation(line: 151, column: 21, scope: !5098)
!5119 = !DILocation(line: 151, column: 20, scope: !5098)
!5120 = !DILocation(line: 151, column: 14, scope: !5121)
!5121 = !DILexicalBlockFile(scope: !5098, file: !1, discriminator: 1)
!5122 = !DILocalVariable(name: "t1", scope: !5098, file: !1, line: 152, type: !52)
!5123 = !DILocation(line: 152, column: 10, scope: !5098)
!5124 = !DILocation(line: 152, column: 18, scope: !5098)
!5125 = !DILocation(line: 152, column: 21, scope: !5098)
!5126 = !DILocation(line: 152, column: 22, scope: !5098)
!5127 = !DILocation(line: 152, column: 19, scope: !5098)
!5128 = !DILocation(line: 152, column: 32, scope: !5098)
!5129 = !DILocation(line: 152, column: 31, scope: !5098)
!5130 = !DILocation(line: 152, column: 28, scope: !5098)
!5131 = !DILocation(line: 152, column: 15, scope: !5098)
!5132 = !DILocation(line: 152, column: 41, scope: !5098)
!5133 = !DILocation(line: 152, column: 48, scope: !5098)
!5134 = !DILocation(line: 152, column: 47, scope: !5098)
!5135 = !DILocation(line: 152, column: 42, scope: !5098)
!5136 = !DILocation(line: 152, column: 36, scope: !5098)
!5137 = !DILocation(line: 152, column: 35, scope: !5098)
!5138 = !DILocalVariable(name: "t2", scope: !5098, file: !1, line: 153, type: !52)
!5139 = !DILocation(line: 153, column: 10, scope: !5098)
!5140 = !DILocation(line: 153, column: 22, scope: !5098)
!5141 = !DILocation(line: 153, column: 21, scope: !5098)
!5142 = !DILocation(line: 153, column: 24, scope: !5098)
!5143 = !DILocation(line: 153, column: 23, scope: !5098)
!5144 = !DILocation(line: 153, column: 17, scope: !5098)
!5145 = !DILocation(line: 153, column: 30, scope: !5098)
!5146 = !DILocation(line: 153, column: 33, scope: !5098)
!5147 = !DILocation(line: 153, column: 34, scope: !5098)
!5148 = !DILocation(line: 153, column: 31, scope: !5098)
!5149 = !DILocation(line: 153, column: 38, scope: !5098)
!5150 = !DILocation(line: 153, column: 37, scope: !5098)
!5151 = !DILocation(line: 153, column: 40, scope: !5098)
!5152 = !DILocation(line: 153, column: 39, scope: !5098)
!5153 = !DILocation(line: 153, column: 49, scope: !5098)
!5154 = !DILocation(line: 153, column: 48, scope: !5098)
!5155 = !DILocation(line: 153, column: 43, scope: !5098)
!5156 = !DILocation(line: 153, column: 42, scope: !5098)
!5157 = !DILocation(line: 153, column: 27, scope: !5098)
!5158 = !DILocation(line: 153, column: 64, scope: !5098)
!5159 = !DILocation(line: 153, column: 63, scope: !5098)
!5160 = !DILocation(line: 153, column: 65, scope: !5098)
!5161 = !DILocation(line: 153, column: 60, scope: !5098)
!5162 = !DILocation(line: 153, column: 69, scope: !5098)
!5163 = !DILocation(line: 153, column: 68, scope: !5098)
!5164 = !DILocation(line: 153, column: 58, scope: !5098)
!5165 = !DILocation(line: 153, column: 74, scope: !5098)
!5166 = !DILocation(line: 153, column: 73, scope: !5098)
!5167 = !DILocation(line: 153, column: 76, scope: !5098)
!5168 = !DILocation(line: 153, column: 75, scope: !5098)
!5169 = !DILocation(line: 153, column: 78, scope: !5098)
!5170 = !DILocation(line: 153, column: 77, scope: !5098)
!5171 = !DILocation(line: 153, column: 79, scope: !5098)
!5172 = !DILocation(line: 153, column: 83, scope: !5098)
!5173 = !DILocation(line: 153, column: 82, scope: !5098)
!5174 = !DILocation(line: 153, column: 85, scope: !5098)
!5175 = !DILocation(line: 153, column: 84, scope: !5098)
!5176 = !DILocation(line: 153, column: 70, scope: !5098)
!5177 = !DILocation(line: 153, column: 54, scope: !5098)
!5178 = !DILocalVariable(name: "t3", scope: !5098, file: !1, line: 154, type: !52)
!5179 = !DILocation(line: 154, column: 10, scope: !5098)
!5180 = !DILocation(line: 154, column: 23, scope: !5098)
!5181 = !DILocation(line: 154, column: 22, scope: !5098)
!5182 = !DILocation(line: 154, column: 25, scope: !5098)
!5183 = !DILocation(line: 154, column: 24, scope: !5098)
!5184 = !DILocation(line: 154, column: 27, scope: !5098)
!5185 = !DILocation(line: 154, column: 26, scope: !5098)
!5186 = !DILocation(line: 154, column: 35, scope: !5098)
!5187 = !DILocation(line: 154, column: 34, scope: !5098)
!5188 = !DILocation(line: 154, column: 29, scope: !5098)
!5189 = !DILocation(line: 154, column: 28, scope: !5098)
!5190 = !DILocation(line: 154, column: 18, scope: !5098)
!5191 = !DILocation(line: 154, column: 42, scope: !5098)
!5192 = !DILocation(line: 154, column: 41, scope: !5098)
!5193 = !DILocation(line: 154, column: 46, scope: !5098)
!5194 = !DILocation(line: 154, column: 48, scope: !5098)
!5195 = !DILocation(line: 154, column: 55, scope: !5098)
!5196 = !DILocation(line: 154, column: 59, scope: !5098)
!5197 = !DILocation(line: 154, column: 61, scope: !5098)
!5198 = !DILocation(line: 154, column: 67, scope: !5098)
!5199 = !DILocation(line: 154, column: 70, scope: !5098)
!5200 = !DILocation(line: 154, column: 73, scope: !5098)
!5201 = !DILocation(line: 154, column: 77, scope: !5098)
!5202 = !DILocation(line: 154, column: 80, scope: !5098)
!5203 = !DILocation(line: 154, column: 82, scope: !5098)
!5204 = !DILocation(line: 154, column: 78, scope: !5098)
!5205 = !DILocation(line: 154, column: 87, scope: !5098)
!5206 = !DILocation(line: 154, column: 94, scope: !5098)
!5207 = !DILocation(line: 154, column: 96, scope: !5098)
!5208 = !DILocation(line: 154, column: 92, scope: !5098)
!5209 = !DILocation(line: 154, column: 74, scope: !5098)
!5210 = !DILocation(line: 154, column: 102, scope: !5098)
!5211 = !DILocation(line: 154, column: 71, scope: !5098)
!5212 = !DILocation(line: 154, column: 68, scope: !5098)
!5213 = !DILocation(line: 154, column: 109, scope: !5098)
!5214 = !DILocation(line: 154, column: 65, scope: !5098)
!5215 = !DILocation(line: 154, column: 56, scope: !5098)
!5216 = !DILocation(line: 154, column: 116, scope: !5098)
!5217 = !DILocation(line: 154, column: 126, scope: !5098)
!5218 = !DILocation(line: 154, column: 122, scope: !5121)
!5219 = !DILocation(line: 154, column: 121, scope: !5098)
!5220 = !DILocation(line: 154, column: 52, scope: !5098)
!5221 = !DILocation(line: 154, column: 43, scope: !5098)
!5222 = !DILocation(line: 155, column: 17, scope: !5098)
!5223 = !DILocation(line: 155, column: 26, scope: !5098)
!5224 = !DILocation(line: 155, column: 24, scope: !5098)
!5225 = !DILocation(line: 155, column: 31, scope: !5098)
!5226 = !DILocation(line: 155, column: 29, scope: !5098)
!5227 = !DILocation(line: 155, column: 36, scope: !5098)
!5228 = !DILocation(line: 155, column: 34, scope: !5098)
!5229 = !DILocation(line: 155, column: 19, scope: !5098)
!5230 = !DILocation(line: 155, column: 3, scope: !5098)
!5231 = !DILocation(line: 155, column: 11, scope: !5098)
!5232 = !DILocation(line: 155, column: 15, scope: !5098)
!5233 = !DILocation(line: 156, column: 24, scope: !5098)
!5234 = !DILocation(line: 156, column: 26, scope: !5098)
!5235 = !DILocation(line: 156, column: 25, scope: !5098)
!5236 = !DILocation(line: 156, column: 19, scope: !5098)
!5237 = !DILocation(line: 156, column: 18, scope: !5098)
!5238 = !DILocation(line: 156, column: 55, scope: !5098)
!5239 = !DILocation(line: 156, column: 63, scope: !5098)
!5240 = !DILocation(line: 156, column: 50, scope: !5121)
!5241 = !DILocation(line: 156, column: 49, scope: !5098)
!5242 = !DILocation(line: 156, column: 30, scope: !5098)
!5243 = !DILocation(line: 156, column: 3, scope: !5098)
!5244 = !DILocation(line: 156, column: 11, scope: !5098)
!5245 = !DILocation(line: 156, column: 15, scope: !5098)
!5246 = !DILocation(line: 157, column: 3, scope: !5098)
!5247 = distinct !DISubprogram(name: "hyperg_1F1_large2bm4a", scope: !1, file: !1, line: 167, type: !279, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!5248 = !DILocalVariable(name: "a", arg: 1, scope: !5247, file: !1, line: 167, type: !51)
!5249 = !DILocation(line: 167, column: 36, scope: !5247)
!5250 = !DILocalVariable(name: "b", arg: 2, scope: !5247, file: !1, line: 167, type: !51)
!5251 = !DILocation(line: 167, column: 52, scope: !5247)
!5252 = !DILocalVariable(name: "x", arg: 3, scope: !5247, file: !1, line: 167, type: !51)
!5253 = !DILocation(line: 167, column: 68, scope: !5247)
!5254 = !DILocalVariable(name: "result", arg: 4, scope: !5247, file: !1, line: 167, type: !53)
!5255 = !DILocation(line: 167, column: 87, scope: !5247)
!5256 = !DILocalVariable(name: "eta", scope: !5247, file: !1, line: 169, type: !52)
!5257 = !DILocation(line: 169, column: 10, scope: !5247)
!5258 = !DILocation(line: 169, column: 23, scope: !5247)
!5259 = !DILocation(line: 169, column: 22, scope: !5247)
!5260 = !DILocation(line: 169, column: 31, scope: !5247)
!5261 = !DILocation(line: 169, column: 30, scope: !5247)
!5262 = !DILocation(line: 169, column: 25, scope: !5247)
!5263 = !DILocalVariable(name: "cos2th", scope: !5247, file: !1, line: 170, type: !52)
!5264 = !DILocation(line: 170, column: 10, scope: !5247)
!5265 = !DILocation(line: 170, column: 19, scope: !5247)
!5266 = !DILocation(line: 170, column: 21, scope: !5247)
!5267 = !DILocation(line: 170, column: 20, scope: !5247)
!5268 = !DILocalVariable(name: "sin2th", scope: !5247, file: !1, line: 171, type: !52)
!5269 = !DILocation(line: 171, column: 10, scope: !5247)
!5270 = !DILocation(line: 171, column: 25, scope: !5247)
!5271 = !DILocation(line: 171, column: 23, scope: !5247)
!5272 = !DILocalVariable(name: "th", scope: !5247, file: !1, line: 172, type: !52)
!5273 = !DILocation(line: 172, column: 10, scope: !5247)
!5274 = !DILocation(line: 172, column: 25, scope: !5247)
!5275 = !DILocation(line: 172, column: 20, scope: !5247)
!5276 = !DILocation(line: 172, column: 15, scope: !5277)
!5277 = !DILexicalBlockFile(scope: !5247, file: !1, discriminator: 1)
!5278 = !DILocalVariable(name: "pre_h", scope: !5247, file: !1, line: 173, type: !52)
!5279 = !DILocation(line: 173, column: 10, scope: !5247)
!5280 = !DILocation(line: 173, column: 34, scope: !5247)
!5281 = !DILocation(line: 173, column: 33, scope: !5247)
!5282 = !DILocation(line: 173, column: 38, scope: !5247)
!5283 = !DILocation(line: 173, column: 37, scope: !5247)
!5284 = !DILocation(line: 173, column: 42, scope: !5247)
!5285 = !DILocation(line: 173, column: 41, scope: !5247)
!5286 = !DILocation(line: 173, column: 49, scope: !5247)
!5287 = !DILocation(line: 173, column: 48, scope: !5247)
!5288 = !DILocalVariable(name: "lg_b", scope: !5247, file: !1, line: 174, type: !54)
!5289 = !DILocation(line: 174, column: 17, scope: !5247)
!5290 = !DILocalVariable(name: "stat_lg", scope: !5247, file: !1, line: 175, type: !42)
!5291 = !DILocation(line: 175, column: 7, scope: !5247)
!5292 = !DILocation(line: 175, column: 34, scope: !5247)
!5293 = !DILocation(line: 175, column: 17, scope: !5247)
!5294 = !DILocalVariable(name: "t1", scope: !5247, file: !1, line: 176, type: !52)
!5295 = !DILocation(line: 176, column: 10, scope: !5247)
!5296 = !DILocation(line: 176, column: 24, scope: !5247)
!5297 = !DILocation(line: 176, column: 23, scope: !5247)
!5298 = !DILocation(line: 176, column: 18, scope: !5247)
!5299 = !DILocation(line: 176, column: 36, scope: !5247)
!5300 = !DILocation(line: 176, column: 35, scope: !5247)
!5301 = !DILocation(line: 176, column: 38, scope: !5247)
!5302 = !DILocation(line: 176, column: 37, scope: !5247)
!5303 = !DILocation(line: 176, column: 27, scope: !5247)
!5304 = !DILocation(line: 176, column: 26, scope: !5247)
!5305 = !DILocalVariable(name: "t2", scope: !5247, file: !1, line: 177, type: !52)
!5306 = !DILocation(line: 177, column: 10, scope: !5247)
!5307 = !DILocation(line: 177, column: 24, scope: !5247)
!5308 = !DILocation(line: 177, column: 20, scope: !5247)
!5309 = !DILocation(line: 177, column: 19, scope: !5247)
!5310 = !DILocalVariable(name: "lnpre_val", scope: !5247, file: !1, line: 178, type: !52)
!5311 = !DILocation(line: 178, column: 10, scope: !5247)
!5312 = !DILocation(line: 178, column: 27, scope: !5247)
!5313 = !DILocation(line: 178, column: 37, scope: !5247)
!5314 = !DILocation(line: 178, column: 36, scope: !5247)
!5315 = !DILocation(line: 178, column: 31, scope: !5247)
!5316 = !DILocation(line: 178, column: 41, scope: !5247)
!5317 = !DILocation(line: 178, column: 39, scope: !5247)
!5318 = !DILocation(line: 178, column: 46, scope: !5247)
!5319 = !DILocation(line: 178, column: 44, scope: !5247)
!5320 = !DILocalVariable(name: "lnpre_err", scope: !5247, file: !1, line: 179, type: !52)
!5321 = !DILocation(line: 179, column: 10, scope: !5247)
!5322 = !DILocation(line: 179, column: 27, scope: !5247)
!5323 = !DILocation(line: 179, column: 67, scope: !5247)
!5324 = !DILocation(line: 179, column: 66, scope: !5247)
!5325 = !DILocation(line: 179, column: 58, scope: !5247)
!5326 = !DILocation(line: 179, column: 77, scope: !5247)
!5327 = !DILocation(line: 179, column: 72, scope: !5277)
!5328 = !DILocation(line: 179, column: 70, scope: !5247)
!5329 = !DILocation(line: 179, column: 88, scope: !5247)
!5330 = !DILocation(line: 179, column: 83, scope: !5331)
!5331 = !DILexicalBlockFile(scope: !5247, file: !1, discriminator: 2)
!5332 = !DILocation(line: 179, column: 81, scope: !5247)
!5333 = !DILocation(line: 179, column: 55, scope: !5247)
!5334 = !DILocation(line: 179, column: 31, scope: !5247)
!5335 = !DILocalVariable(name: "s1", scope: !5247, file: !1, line: 188, type: !52)
!5336 = !DILocation(line: 188, column: 10, scope: !5247)
!5337 = !DILocation(line: 188, column: 19, scope: !5247)
!5338 = !DILocation(line: 188, column: 20, scope: !5247)
!5339 = !DILocation(line: 188, column: 15, scope: !5247)
!5340 = !DILocalVariable(name: "s2", scope: !5247, file: !1, line: 189, type: !52)
!5341 = !DILocation(line: 189, column: 10, scope: !5247)
!5342 = !DILocation(line: 189, column: 24, scope: !5247)
!5343 = !DILocation(line: 189, column: 23, scope: !5247)
!5344 = !DILocation(line: 189, column: 33, scope: !5247)
!5345 = !DILocation(line: 189, column: 32, scope: !5247)
!5346 = !DILocation(line: 189, column: 46, scope: !5247)
!5347 = !DILocation(line: 189, column: 45, scope: !5247)
!5348 = !DILocation(line: 189, column: 38, scope: !5247)
!5349 = !DILocation(line: 189, column: 36, scope: !5247)
!5350 = !DILocation(line: 189, column: 27, scope: !5247)
!5351 = !DILocation(line: 189, column: 51, scope: !5247)
!5352 = !DILocation(line: 189, column: 15, scope: !5277)
!5353 = !DILocalVariable(name: "ser_val", scope: !5247, file: !1, line: 191, type: !52)
!5354 = !DILocation(line: 191, column: 10, scope: !5247)
!5355 = !DILocation(line: 191, column: 20, scope: !5247)
!5356 = !DILocation(line: 191, column: 25, scope: !5247)
!5357 = !DILocation(line: 191, column: 23, scope: !5247)
!5358 = !DILocalVariable(name: "ser_err", scope: !5247, file: !1, line: 192, type: !52)
!5359 = !DILocation(line: 192, column: 10, scope: !5247)
!5360 = !DILocation(line: 192, column: 50, scope: !5247)
!5361 = !DILocation(line: 192, column: 45, scope: !5247)
!5362 = !DILocation(line: 192, column: 61, scope: !5247)
!5363 = !DILocation(line: 192, column: 56, scope: !5277)
!5364 = !DILocation(line: 192, column: 54, scope: !5247)
!5365 = !DILocation(line: 192, column: 42, scope: !5247)
!5366 = !DILocalVariable(name: "stat_e", scope: !5247, file: !1, line: 193, type: !42)
!5367 = !DILocation(line: 193, column: 7, scope: !5247)
!5368 = !DILocation(line: 193, column: 38, scope: !5247)
!5369 = !DILocation(line: 193, column: 49, scope: !5247)
!5370 = !DILocation(line: 194, column: 41, scope: !5247)
!5371 = !DILocation(line: 194, column: 50, scope: !5247)
!5372 = !DILocation(line: 195, column: 41, scope: !5247)
!5373 = !DILocation(line: 193, column: 16, scope: !5247)
!5374 = !DILocation(line: 196, column: 10, scope: !5247)
!5375 = !DILocation(line: 196, column: 10, scope: !5277)
!5376 = !DILocation(line: 196, column: 10, scope: !5331)
!5377 = !DILocation(line: 196, column: 10, scope: !5378)
!5378 = !DILexicalBlockFile(scope: !5247, file: !1, discriminator: 3)
!5379 = !DILocation(line: 196, column: 10, scope: !5380)
!5380 = !DILexicalBlockFile(scope: !5247, file: !1, discriminator: 4)
!5381 = !DILocation(line: 196, column: 10, scope: !5382)
!5382 = !DILexicalBlockFile(scope: !5247, file: !1, discriminator: 5)
!5383 = !DILocation(line: 196, column: 10, scope: !5384)
!5384 = !DILexicalBlockFile(scope: !5247, file: !1, discriminator: 6)
!5385 = !DILocation(line: 196, column: 3, scope: !5384)
!5386 = distinct !DISubprogram(name: "hyperg_1F1_luke", scope: !1, file: !1, line: 209, type: !279, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!5387 = !DILocalVariable(name: "a", arg: 1, scope: !5386, file: !1, line: 209, type: !51)
!5388 = !DILocation(line: 209, column: 30, scope: !5386)
!5389 = !DILocalVariable(name: "c", arg: 2, scope: !5386, file: !1, line: 209, type: !51)
!5390 = !DILocation(line: 209, column: 46, scope: !5386)
!5391 = !DILocalVariable(name: "xin", arg: 3, scope: !5386, file: !1, line: 209, type: !51)
!5392 = !DILocation(line: 209, column: 62, scope: !5386)
!5393 = !DILocalVariable(name: "result", arg: 4, scope: !5386, file: !1, line: 210, type: !53)
!5394 = !DILocation(line: 210, column: 33, scope: !5386)
!5395 = !DILocalVariable(name: "RECUR_BIG", scope: !5386, file: !1, line: 212, type: !51)
!5396 = !DILocation(line: 212, column: 16, scope: !5386)
!5397 = !DILocalVariable(name: "nmax", scope: !5386, file: !1, line: 213, type: !50)
!5398 = !DILocation(line: 213, column: 13, scope: !5386)
!5399 = !DILocalVariable(name: "n", scope: !5386, file: !1, line: 214, type: !42)
!5400 = !DILocation(line: 214, column: 7, scope: !5386)
!5401 = !DILocalVariable(name: "x", scope: !5386, file: !1, line: 215, type: !51)
!5402 = !DILocation(line: 215, column: 16, scope: !5386)
!5403 = !DILocation(line: 215, column: 22, scope: !5386)
!5404 = !DILocation(line: 215, column: 21, scope: !5386)
!5405 = !DILocalVariable(name: "x3", scope: !5386, file: !1, line: 216, type: !51)
!5406 = !DILocation(line: 216, column: 16, scope: !5386)
!5407 = !DILocation(line: 216, column: 21, scope: !5386)
!5408 = !DILocation(line: 216, column: 23, scope: !5386)
!5409 = !DILocation(line: 216, column: 22, scope: !5386)
!5410 = !DILocation(line: 216, column: 25, scope: !5386)
!5411 = !DILocation(line: 216, column: 24, scope: !5386)
!5412 = !DILocalVariable(name: "t0", scope: !5386, file: !1, line: 217, type: !51)
!5413 = !DILocation(line: 217, column: 16, scope: !5386)
!5414 = !DILocation(line: 217, column: 21, scope: !5386)
!5415 = !DILocation(line: 217, column: 23, scope: !5386)
!5416 = !DILocation(line: 217, column: 22, scope: !5386)
!5417 = !DILocalVariable(name: "t1", scope: !5386, file: !1, line: 218, type: !51)
!5418 = !DILocation(line: 218, column: 16, scope: !5386)
!5419 = !DILocation(line: 218, column: 22, scope: !5386)
!5420 = !DILocation(line: 218, column: 23, scope: !5386)
!5421 = !DILocation(line: 218, column: 34, scope: !5386)
!5422 = !DILocation(line: 218, column: 33, scope: !5386)
!5423 = !DILocation(line: 218, column: 28, scope: !5386)
!5424 = !DILocalVariable(name: "t2", scope: !5386, file: !1, line: 219, type: !51)
!5425 = !DILocation(line: 219, column: 16, scope: !5386)
!5426 = !DILocation(line: 219, column: 22, scope: !5386)
!5427 = !DILocation(line: 219, column: 23, scope: !5386)
!5428 = !DILocation(line: 219, column: 35, scope: !5386)
!5429 = !DILocation(line: 219, column: 36, scope: !5386)
!5430 = !DILocation(line: 219, column: 33, scope: !5386)
!5431 = !DILocation(line: 219, column: 28, scope: !5386)
!5432 = !DILocalVariable(name: "F", scope: !5386, file: !1, line: 220, type: !52)
!5433 = !DILocation(line: 220, column: 10, scope: !5386)
!5434 = !DILocalVariable(name: "prec", scope: !5386, file: !1, line: 221, type: !52)
!5435 = !DILocation(line: 221, column: 10, scope: !5386)
!5436 = !DILocalVariable(name: "Bnm3", scope: !5386, file: !1, line: 223, type: !52)
!5437 = !DILocation(line: 223, column: 10, scope: !5386)
!5438 = !DILocalVariable(name: "Bnm2", scope: !5386, file: !1, line: 224, type: !52)
!5439 = !DILocation(line: 224, column: 10, scope: !5386)
!5440 = !DILocation(line: 224, column: 23, scope: !5386)
!5441 = !DILocation(line: 224, column: 28, scope: !5386)
!5442 = !DILocation(line: 224, column: 26, scope: !5386)
!5443 = !DILocation(line: 224, column: 21, scope: !5386)
!5444 = !DILocalVariable(name: "Bnm1", scope: !5386, file: !1, line: 225, type: !52)
!5445 = !DILocation(line: 225, column: 10, scope: !5386)
!5446 = !DILocation(line: 225, column: 23, scope: !5386)
!5447 = !DILocation(line: 225, column: 28, scope: !5386)
!5448 = !DILocation(line: 225, column: 26, scope: !5386)
!5449 = !DILocation(line: 225, column: 39, scope: !5386)
!5450 = !DILocation(line: 225, column: 41, scope: !5386)
!5451 = !DILocation(line: 225, column: 48, scope: !5386)
!5452 = !DILocation(line: 225, column: 46, scope: !5386)
!5453 = !DILocation(line: 225, column: 37, scope: !5386)
!5454 = !DILocation(line: 225, column: 30, scope: !5386)
!5455 = !DILocation(line: 225, column: 21, scope: !5386)
!5456 = !DILocalVariable(name: "Anm3", scope: !5386, file: !1, line: 227, type: !52)
!5457 = !DILocation(line: 227, column: 10, scope: !5386)
!5458 = !DILocalVariable(name: "Anm2", scope: !5386, file: !1, line: 228, type: !52)
!5459 = !DILocation(line: 228, column: 10, scope: !5386)
!5460 = !DILocation(line: 228, column: 17, scope: !5386)
!5461 = !DILocation(line: 228, column: 24, scope: !5386)
!5462 = !DILocation(line: 228, column: 29, scope: !5386)
!5463 = !DILocation(line: 228, column: 27, scope: !5386)
!5464 = !DILocation(line: 228, column: 22, scope: !5386)
!5465 = !DILocalVariable(name: "Anm1", scope: !5386, file: !1, line: 229, type: !52)
!5466 = !DILocation(line: 229, column: 10, scope: !5386)
!5467 = !DILocation(line: 229, column: 17, scope: !5386)
!5468 = !DILocation(line: 229, column: 24, scope: !5386)
!5469 = !DILocation(line: 229, column: 34, scope: !5386)
!5470 = !DILocation(line: 229, column: 37, scope: !5386)
!5471 = !DILocation(line: 229, column: 36, scope: !5386)
!5472 = !DILocation(line: 229, column: 32, scope: !5386)
!5473 = !DILocation(line: 229, column: 26, scope: !5386)
!5474 = !DILocation(line: 229, column: 40, scope: !5386)
!5475 = !DILocation(line: 229, column: 39, scope: !5386)
!5476 = !DILocation(line: 229, column: 22, scope: !5386)
!5477 = !DILocation(line: 229, column: 44, scope: !5386)
!5478 = !DILocation(line: 229, column: 49, scope: !5386)
!5479 = !DILocation(line: 229, column: 47, scope: !5386)
!5480 = !DILocation(line: 229, column: 55, scope: !5386)
!5481 = !DILocation(line: 229, column: 58, scope: !5386)
!5482 = !DILocation(line: 229, column: 59, scope: !5386)
!5483 = !DILocation(line: 229, column: 56, scope: !5386)
!5484 = !DILocation(line: 229, column: 52, scope: !5386)
!5485 = !DILocation(line: 229, column: 68, scope: !5386)
!5486 = !DILocation(line: 229, column: 66, scope: !5386)
!5487 = !DILocation(line: 229, column: 70, scope: !5386)
!5488 = !DILocation(line: 229, column: 69, scope: !5386)
!5489 = !DILocation(line: 229, column: 42, scope: !5386)
!5490 = !DILocation(line: 231, column: 3, scope: !5386)
!5491 = !DILocalVariable(name: "npam1", scope: !5492, file: !1, line: 232, type: !52)
!5492 = distinct !DILexicalBlock(scope: !5386, file: !1, line: 231, column: 12)
!5493 = !DILocation(line: 232, column: 12, scope: !5492)
!5494 = !DILocation(line: 232, column: 20, scope: !5492)
!5495 = !DILocation(line: 232, column: 24, scope: !5492)
!5496 = !DILocation(line: 232, column: 22, scope: !5492)
!5497 = !DILocation(line: 232, column: 26, scope: !5492)
!5498 = !DILocalVariable(name: "npcm1", scope: !5492, file: !1, line: 233, type: !52)
!5499 = !DILocation(line: 233, column: 12, scope: !5492)
!5500 = !DILocation(line: 233, column: 20, scope: !5492)
!5501 = !DILocation(line: 233, column: 24, scope: !5492)
!5502 = !DILocation(line: 233, column: 22, scope: !5492)
!5503 = !DILocation(line: 233, column: 26, scope: !5492)
!5504 = !DILocalVariable(name: "npam2", scope: !5492, file: !1, line: 234, type: !52)
!5505 = !DILocation(line: 234, column: 12, scope: !5492)
!5506 = !DILocation(line: 234, column: 20, scope: !5492)
!5507 = !DILocation(line: 234, column: 24, scope: !5492)
!5508 = !DILocation(line: 234, column: 22, scope: !5492)
!5509 = !DILocation(line: 234, column: 26, scope: !5492)
!5510 = !DILocalVariable(name: "npcm2", scope: !5492, file: !1, line: 235, type: !52)
!5511 = !DILocation(line: 235, column: 12, scope: !5492)
!5512 = !DILocation(line: 235, column: 20, scope: !5492)
!5513 = !DILocation(line: 235, column: 24, scope: !5492)
!5514 = !DILocation(line: 235, column: 22, scope: !5492)
!5515 = !DILocation(line: 235, column: 26, scope: !5492)
!5516 = !DILocalVariable(name: "tnm1", scope: !5492, file: !1, line: 236, type: !52)
!5517 = !DILocation(line: 236, column: 12, scope: !5492)
!5518 = !DILocation(line: 236, column: 22, scope: !5492)
!5519 = !DILocation(line: 236, column: 21, scope: !5492)
!5520 = !DILocation(line: 236, column: 24, scope: !5492)
!5521 = !DILocation(line: 236, column: 20, scope: !5492)
!5522 = !DILocalVariable(name: "tnm3", scope: !5492, file: !1, line: 237, type: !52)
!5523 = !DILocation(line: 237, column: 12, scope: !5492)
!5524 = !DILocation(line: 237, column: 22, scope: !5492)
!5525 = !DILocation(line: 237, column: 21, scope: !5492)
!5526 = !DILocation(line: 237, column: 24, scope: !5492)
!5527 = !DILocation(line: 237, column: 20, scope: !5492)
!5528 = !DILocalVariable(name: "tnm5", scope: !5492, file: !1, line: 238, type: !52)
!5529 = !DILocation(line: 238, column: 12, scope: !5492)
!5530 = !DILocation(line: 238, column: 22, scope: !5492)
!5531 = !DILocation(line: 238, column: 21, scope: !5492)
!5532 = !DILocation(line: 238, column: 24, scope: !5492)
!5533 = !DILocation(line: 238, column: 20, scope: !5492)
!5534 = !DILocalVariable(name: "F1", scope: !5492, file: !1, line: 239, type: !52)
!5535 = !DILocation(line: 239, column: 12, scope: !5492)
!5536 = !DILocation(line: 239, column: 19, scope: !5492)
!5537 = !DILocation(line: 239, column: 21, scope: !5492)
!5538 = !DILocation(line: 239, column: 20, scope: !5492)
!5539 = !DILocation(line: 239, column: 22, scope: !5492)
!5540 = !DILocation(line: 239, column: 31, scope: !5492)
!5541 = !DILocation(line: 239, column: 30, scope: !5492)
!5542 = !DILocation(line: 239, column: 36, scope: !5492)
!5543 = !DILocation(line: 239, column: 35, scope: !5492)
!5544 = !DILocation(line: 239, column: 26, scope: !5492)
!5545 = !DILocalVariable(name: "F2", scope: !5492, file: !1, line: 240, type: !52)
!5546 = !DILocation(line: 240, column: 12, scope: !5492)
!5547 = !DILocation(line: 240, column: 19, scope: !5492)
!5548 = !DILocation(line: 240, column: 21, scope: !5492)
!5549 = !DILocation(line: 240, column: 20, scope: !5492)
!5550 = !DILocation(line: 240, column: 24, scope: !5492)
!5551 = !DILocation(line: 240, column: 23, scope: !5492)
!5552 = !DILocation(line: 240, column: 35, scope: !5492)
!5553 = !DILocation(line: 240, column: 34, scope: !5492)
!5554 = !DILocation(line: 240, column: 40, scope: !5492)
!5555 = !DILocation(line: 240, column: 39, scope: !5492)
!5556 = !DILocation(line: 240, column: 45, scope: !5492)
!5557 = !DILocation(line: 240, column: 44, scope: !5492)
!5558 = !DILocation(line: 240, column: 51, scope: !5492)
!5559 = !DILocation(line: 240, column: 50, scope: !5492)
!5560 = !DILocation(line: 240, column: 30, scope: !5492)
!5561 = !DILocalVariable(name: "F3", scope: !5492, file: !1, line: 241, type: !52)
!5562 = !DILocation(line: 241, column: 12, scope: !5492)
!5563 = !DILocation(line: 241, column: 18, scope: !5492)
!5564 = !DILocation(line: 241, column: 17, scope: !5492)
!5565 = !DILocation(line: 241, column: 24, scope: !5492)
!5566 = !DILocation(line: 241, column: 23, scope: !5492)
!5567 = !DILocation(line: 241, column: 31, scope: !5492)
!5568 = !DILocation(line: 241, column: 33, scope: !5492)
!5569 = !DILocation(line: 241, column: 32, scope: !5492)
!5570 = !DILocation(line: 241, column: 34, scope: !5492)
!5571 = !DILocation(line: 241, column: 29, scope: !5492)
!5572 = !DILocation(line: 241, column: 43, scope: !5492)
!5573 = !DILocation(line: 241, column: 42, scope: !5492)
!5574 = !DILocation(line: 241, column: 48, scope: !5492)
!5575 = !DILocation(line: 241, column: 47, scope: !5492)
!5576 = !DILocation(line: 241, column: 53, scope: !5492)
!5577 = !DILocation(line: 241, column: 52, scope: !5492)
!5578 = !DILocation(line: 241, column: 59, scope: !5492)
!5579 = !DILocation(line: 241, column: 61, scope: !5492)
!5580 = !DILocation(line: 241, column: 60, scope: !5492)
!5581 = !DILocation(line: 241, column: 62, scope: !5492)
!5582 = !DILocation(line: 241, column: 57, scope: !5492)
!5583 = !DILocation(line: 241, column: 66, scope: !5492)
!5584 = !DILocation(line: 241, column: 65, scope: !5492)
!5585 = !DILocation(line: 241, column: 72, scope: !5492)
!5586 = !DILocation(line: 241, column: 71, scope: !5492)
!5587 = !DILocation(line: 241, column: 38, scope: !5492)
!5588 = !DILocalVariable(name: "E", scope: !5492, file: !1, line: 242, type: !52)
!5589 = !DILocation(line: 242, column: 12, scope: !5492)
!5590 = !DILocation(line: 242, column: 18, scope: !5492)
!5591 = !DILocation(line: 242, column: 17, scope: !5492)
!5592 = !DILocation(line: 242, column: 25, scope: !5492)
!5593 = !DILocation(line: 242, column: 27, scope: !5492)
!5594 = !DILocation(line: 242, column: 26, scope: !5492)
!5595 = !DILocation(line: 242, column: 28, scope: !5492)
!5596 = !DILocation(line: 242, column: 23, scope: !5492)
!5597 = !DILocation(line: 242, column: 37, scope: !5492)
!5598 = !DILocation(line: 242, column: 36, scope: !5492)
!5599 = !DILocation(line: 242, column: 42, scope: !5492)
!5600 = !DILocation(line: 242, column: 41, scope: !5492)
!5601 = !DILocation(line: 242, column: 48, scope: !5492)
!5602 = !DILocation(line: 242, column: 47, scope: !5492)
!5603 = !DILocation(line: 242, column: 32, scope: !5492)
!5604 = !DILocalVariable(name: "An", scope: !5492, file: !1, line: 244, type: !52)
!5605 = !DILocation(line: 244, column: 12, scope: !5492)
!5606 = !DILocation(line: 244, column: 22, scope: !5492)
!5607 = !DILocation(line: 244, column: 25, scope: !5492)
!5608 = !DILocation(line: 244, column: 24, scope: !5492)
!5609 = !DILocation(line: 244, column: 21, scope: !5492)
!5610 = !DILocation(line: 244, column: 28, scope: !5492)
!5611 = !DILocation(line: 244, column: 27, scope: !5492)
!5612 = !DILocation(line: 244, column: 36, scope: !5492)
!5613 = !DILocation(line: 244, column: 40, scope: !5492)
!5614 = !DILocation(line: 244, column: 43, scope: !5492)
!5615 = !DILocation(line: 244, column: 42, scope: !5492)
!5616 = !DILocation(line: 244, column: 38, scope: !5492)
!5617 = !DILocation(line: 244, column: 46, scope: !5492)
!5618 = !DILocation(line: 244, column: 45, scope: !5492)
!5619 = !DILocation(line: 244, column: 48, scope: !5492)
!5620 = !DILocation(line: 244, column: 47, scope: !5492)
!5621 = !DILocation(line: 244, column: 33, scope: !5492)
!5622 = !DILocation(line: 244, column: 55, scope: !5492)
!5623 = !DILocation(line: 244, column: 58, scope: !5492)
!5624 = !DILocation(line: 244, column: 57, scope: !5492)
!5625 = !DILocation(line: 244, column: 61, scope: !5492)
!5626 = !DILocation(line: 244, column: 60, scope: !5492)
!5627 = !DILocation(line: 244, column: 53, scope: !5492)
!5628 = !DILocalVariable(name: "Bn", scope: !5492, file: !1, line: 245, type: !52)
!5629 = !DILocation(line: 245, column: 12, scope: !5492)
!5630 = !DILocation(line: 245, column: 22, scope: !5492)
!5631 = !DILocation(line: 245, column: 25, scope: !5492)
!5632 = !DILocation(line: 245, column: 24, scope: !5492)
!5633 = !DILocation(line: 245, column: 21, scope: !5492)
!5634 = !DILocation(line: 245, column: 28, scope: !5492)
!5635 = !DILocation(line: 245, column: 27, scope: !5492)
!5636 = !DILocation(line: 245, column: 36, scope: !5492)
!5637 = !DILocation(line: 245, column: 40, scope: !5492)
!5638 = !DILocation(line: 245, column: 43, scope: !5492)
!5639 = !DILocation(line: 245, column: 42, scope: !5492)
!5640 = !DILocation(line: 245, column: 38, scope: !5492)
!5641 = !DILocation(line: 245, column: 46, scope: !5492)
!5642 = !DILocation(line: 245, column: 45, scope: !5492)
!5643 = !DILocation(line: 245, column: 48, scope: !5492)
!5644 = !DILocation(line: 245, column: 47, scope: !5492)
!5645 = !DILocation(line: 245, column: 33, scope: !5492)
!5646 = !DILocation(line: 245, column: 55, scope: !5492)
!5647 = !DILocation(line: 245, column: 58, scope: !5492)
!5648 = !DILocation(line: 245, column: 57, scope: !5492)
!5649 = !DILocation(line: 245, column: 61, scope: !5492)
!5650 = !DILocation(line: 245, column: 60, scope: !5492)
!5651 = !DILocation(line: 245, column: 53, scope: !5492)
!5652 = !DILocalVariable(name: "r", scope: !5492, file: !1, line: 246, type: !52)
!5653 = !DILocation(line: 246, column: 12, scope: !5492)
!5654 = !DILocation(line: 246, column: 16, scope: !5492)
!5655 = !DILocation(line: 246, column: 19, scope: !5492)
!5656 = !DILocation(line: 246, column: 18, scope: !5492)
!5657 = !DILocation(line: 248, column: 18, scope: !5492)
!5658 = !DILocation(line: 248, column: 22, scope: !5492)
!5659 = !DILocation(line: 248, column: 20, scope: !5492)
!5660 = !DILocation(line: 248, column: 25, scope: !5492)
!5661 = !DILocation(line: 248, column: 24, scope: !5492)
!5662 = !DILocation(line: 248, column: 12, scope: !5492)
!5663 = !DILocation(line: 248, column: 10, scope: !5492)
!5664 = !DILocation(line: 249, column: 9, scope: !5492)
!5665 = !DILocation(line: 249, column: 7, scope: !5492)
!5666 = !DILocation(line: 251, column: 8, scope: !5667)
!5667 = distinct !DILexicalBlock(scope: !5492, file: !1, line: 251, column: 8)
!5668 = !DILocation(line: 251, column: 13, scope: !5667)
!5669 = !DILocation(line: 251, column: 31, scope: !5667)
!5670 = !DILocation(line: 251, column: 34, scope: !5671)
!5671 = !DILexicalBlockFile(scope: !5667, file: !1, discriminator: 1)
!5672 = !DILocation(line: 251, column: 36, scope: !5671)
!5673 = !DILocation(line: 251, column: 8, scope: !5671)
!5674 = !DILocation(line: 251, column: 44, scope: !5675)
!5675 = !DILexicalBlockFile(scope: !5667, file: !1, discriminator: 2)
!5676 = !DILocation(line: 253, column: 13, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5492, file: !1, line: 253, column: 8)
!5678 = !DILocation(line: 253, column: 8, scope: !5677)
!5679 = !DILocation(line: 253, column: 17, scope: !5677)
!5680 = !DILocation(line: 253, column: 29, scope: !5677)
!5681 = !DILocation(line: 253, column: 37, scope: !5682)
!5682 = !DILexicalBlockFile(scope: !5677, file: !1, discriminator: 1)
!5683 = !DILocation(line: 253, column: 32, scope: !5682)
!5684 = !DILocation(line: 253, column: 41, scope: !5682)
!5685 = !DILocation(line: 253, column: 8, scope: !5682)
!5686 = !DILocation(line: 254, column: 12, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5677, file: !1, line: 253, column: 54)
!5688 = !DILocation(line: 255, column: 12, scope: !5687)
!5689 = !DILocation(line: 256, column: 12, scope: !5687)
!5690 = !DILocation(line: 257, column: 12, scope: !5687)
!5691 = !DILocation(line: 258, column: 12, scope: !5687)
!5692 = !DILocation(line: 259, column: 12, scope: !5687)
!5693 = !DILocation(line: 260, column: 12, scope: !5687)
!5694 = !DILocation(line: 261, column: 12, scope: !5687)
!5695 = !DILocation(line: 262, column: 5, scope: !5687)
!5696 = !DILocation(line: 263, column: 18, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5677, file: !1, line: 263, column: 13)
!5698 = !DILocation(line: 263, column: 13, scope: !5697)
!5699 = !DILocation(line: 263, column: 22, scope: !5697)
!5700 = !DILocation(line: 263, column: 38, scope: !5697)
!5701 = !DILocation(line: 263, column: 46, scope: !5702)
!5702 = !DILexicalBlockFile(scope: !5697, file: !1, discriminator: 1)
!5703 = !DILocation(line: 263, column: 41, scope: !5702)
!5704 = !DILocation(line: 263, column: 50, scope: !5702)
!5705 = !DILocation(line: 263, column: 13, scope: !5702)
!5706 = !DILocation(line: 264, column: 12, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5697, file: !1, line: 263, column: 67)
!5708 = !DILocation(line: 265, column: 12, scope: !5707)
!5709 = !DILocation(line: 266, column: 12, scope: !5707)
!5710 = !DILocation(line: 267, column: 12, scope: !5707)
!5711 = !DILocation(line: 268, column: 12, scope: !5707)
!5712 = !DILocation(line: 269, column: 12, scope: !5707)
!5713 = !DILocation(line: 270, column: 12, scope: !5707)
!5714 = !DILocation(line: 271, column: 12, scope: !5707)
!5715 = !DILocation(line: 272, column: 5, scope: !5707)
!5716 = !DILocation(line: 274, column: 6, scope: !5492)
!5717 = !DILocation(line: 275, column: 12, scope: !5492)
!5718 = !DILocation(line: 275, column: 10, scope: !5492)
!5719 = !DILocation(line: 276, column: 12, scope: !5492)
!5720 = !DILocation(line: 276, column: 10, scope: !5492)
!5721 = !DILocation(line: 277, column: 12, scope: !5492)
!5722 = !DILocation(line: 277, column: 10, scope: !5492)
!5723 = !DILocation(line: 278, column: 12, scope: !5492)
!5724 = !DILocation(line: 278, column: 10, scope: !5492)
!5725 = !DILocation(line: 279, column: 12, scope: !5492)
!5726 = !DILocation(line: 279, column: 10, scope: !5492)
!5727 = !DILocation(line: 280, column: 12, scope: !5492)
!5728 = !DILocation(line: 280, column: 10, scope: !5492)
!5729 = !DILocation(line: 231, column: 3, scope: !5730)
!5730 = !DILexicalBlockFile(scope: !5386, file: !1, discriminator: 1)
!5731 = distinct !{!5731, !5490}
!5732 = !DILocation(line: 283, column: 18, scope: !5386)
!5733 = !DILocation(line: 283, column: 3, scope: !5386)
!5734 = !DILocation(line: 283, column: 11, scope: !5386)
!5735 = !DILocation(line: 283, column: 16, scope: !5386)
!5736 = !DILocation(line: 284, column: 29, scope: !5386)
!5737 = !DILocation(line: 284, column: 33, scope: !5386)
!5738 = !DILocation(line: 284, column: 31, scope: !5386)
!5739 = !DILocation(line: 284, column: 24, scope: !5386)
!5740 = !DILocation(line: 284, column: 22, scope: !5386)
!5741 = !DILocation(line: 284, column: 3, scope: !5386)
!5742 = !DILocation(line: 284, column: 11, scope: !5386)
!5743 = !DILocation(line: 284, column: 16, scope: !5386)
!5744 = !DILocation(line: 285, column: 43, scope: !5386)
!5745 = !DILocation(line: 285, column: 44, scope: !5386)
!5746 = !DILocation(line: 285, column: 40, scope: !5386)
!5747 = !DILocation(line: 285, column: 57, scope: !5386)
!5748 = !DILocation(line: 285, column: 52, scope: !5386)
!5749 = !DILocation(line: 285, column: 50, scope: !5386)
!5750 = !DILocation(line: 285, column: 3, scope: !5386)
!5751 = !DILocation(line: 285, column: 11, scope: !5386)
!5752 = !DILocation(line: 285, column: 15, scope: !5386)
!5753 = !DILocation(line: 287, column: 3, scope: !5386)
!5754 = distinct !DISubprogram(name: "hyperg_1F1_1_series", scope: !1, file: !1, line: 295, type: !2198, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!5755 = !DILocalVariable(name: "b", arg: 1, scope: !5754, file: !1, line: 295, type: !51)
!5756 = !DILocation(line: 295, column: 34, scope: !5754)
!5757 = !DILocalVariable(name: "x", arg: 2, scope: !5754, file: !1, line: 295, type: !51)
!5758 = !DILocation(line: 295, column: 50, scope: !5754)
!5759 = !DILocalVariable(name: "result", arg: 3, scope: !5754, file: !1, line: 295, type: !53)
!5760 = !DILocation(line: 295, column: 69, scope: !5754)
!5761 = !DILocalVariable(name: "sum_val", scope: !5754, file: !1, line: 297, type: !52)
!5762 = !DILocation(line: 297, column: 10, scope: !5754)
!5763 = !DILocalVariable(name: "sum_err", scope: !5754, file: !1, line: 298, type: !52)
!5764 = !DILocation(line: 298, column: 10, scope: !5754)
!5765 = !DILocalVariable(name: "term", scope: !5754, file: !1, line: 299, type: !52)
!5766 = !DILocation(line: 299, column: 10, scope: !5754)
!5767 = !DILocalVariable(name: "n", scope: !5754, file: !1, line: 300, type: !52)
!5768 = !DILocation(line: 300, column: 10, scope: !5754)
!5769 = !DILocation(line: 301, column: 3, scope: !5754)
!5770 = !DILocation(line: 301, column: 14, scope: !5771)
!5771 = !DILexicalBlockFile(scope: !5754, file: !1, discriminator: 1)
!5772 = !DILocation(line: 301, column: 19, scope: !5771)
!5773 = !DILocation(line: 301, column: 18, scope: !5771)
!5774 = !DILocation(line: 301, column: 9, scope: !5771)
!5775 = !DILocation(line: 301, column: 28, scope: !5771)
!5776 = !DILocation(line: 301, column: 3, scope: !5771)
!5777 = !DILocation(line: 302, column: 13, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5754, file: !1, line: 301, column: 52)
!5779 = !DILocation(line: 302, column: 16, scope: !5778)
!5780 = !DILocation(line: 302, column: 18, scope: !5778)
!5781 = !DILocation(line: 302, column: 17, scope: !5778)
!5782 = !DILocation(line: 302, column: 19, scope: !5778)
!5783 = !DILocation(line: 302, column: 14, scope: !5778)
!5784 = !DILocation(line: 302, column: 10, scope: !5778)
!5785 = !DILocation(line: 303, column: 16, scope: !5778)
!5786 = !DILocation(line: 303, column: 13, scope: !5778)
!5787 = !DILocation(line: 304, column: 41, scope: !5778)
!5788 = !DILocation(line: 304, column: 36, scope: !5778)
!5789 = !DILocation(line: 304, column: 35, scope: !5778)
!5790 = !DILocation(line: 304, column: 70, scope: !5778)
!5791 = !DILocation(line: 304, column: 65, scope: !5792)
!5792 = !DILexicalBlockFile(scope: !5778, file: !1, discriminator: 1)
!5793 = !DILocation(line: 304, column: 64, scope: !5778)
!5794 = !DILocation(line: 304, column: 47, scope: !5778)
!5795 = !DILocation(line: 304, column: 13, scope: !5778)
!5796 = !DILocation(line: 305, column: 7, scope: !5778)
!5797 = !DILocation(line: 301, column: 3, scope: !5798)
!5798 = !DILexicalBlockFile(scope: !5754, file: !1, discriminator: 2)
!5799 = distinct !{!5799, !5769}
!5800 = !DILocation(line: 307, column: 18, scope: !5754)
!5801 = !DILocation(line: 307, column: 3, scope: !5754)
!5802 = !DILocation(line: 307, column: 11, scope: !5754)
!5803 = !DILocation(line: 307, column: 16, scope: !5754)
!5804 = !DILocation(line: 308, column: 18, scope: !5754)
!5805 = !DILocation(line: 308, column: 3, scope: !5754)
!5806 = !DILocation(line: 308, column: 11, scope: !5754)
!5807 = !DILocation(line: 308, column: 16, scope: !5754)
!5808 = !DILocation(line: 309, column: 30, scope: !5754)
!5809 = !DILocation(line: 309, column: 25, scope: !5754)
!5810 = !DILocation(line: 309, column: 22, scope: !5754)
!5811 = !DILocation(line: 309, column: 3, scope: !5754)
!5812 = !DILocation(line: 309, column: 11, scope: !5754)
!5813 = !DILocation(line: 309, column: 15, scope: !5754)
!5814 = !DILocation(line: 310, column: 3, scope: !5754)
!5815 = distinct !DISubprogram(name: "hyperg_1F1_1_int", scope: !1, file: !1, line: 319, type: !5816, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!5816 = !DISubroutineType(types: !5817)
!5817 = !{!42, !50, !51, !53}
!5818 = !DILocalVariable(name: "b", arg: 1, scope: !5815, file: !1, line: 319, type: !50)
!5819 = !DILocation(line: 319, column: 28, scope: !5815)
!5820 = !DILocalVariable(name: "x", arg: 2, scope: !5815, file: !1, line: 319, type: !51)
!5821 = !DILocation(line: 319, column: 44, scope: !5815)
!5822 = !DILocalVariable(name: "result", arg: 3, scope: !5815, file: !1, line: 319, type: !53)
!5823 = !DILocation(line: 319, column: 63, scope: !5815)
!5824 = !DILocation(line: 321, column: 6, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5815, file: !1, line: 321, column: 6)
!5826 = !DILocation(line: 321, column: 8, scope: !5825)
!5827 = !DILocation(line: 321, column: 6, scope: !5815)
!5828 = !DILocation(line: 322, column: 5, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5825, file: !1, line: 321, column: 13)
!5830 = distinct !{!5830, !5828}
!5831 = !DILocation(line: 322, column: 5, scope: !5832)
!5832 = !DILexicalBlockFile(scope: !5833, file: !1, discriminator: 1)
!5833 = distinct !DILexicalBlock(scope: !5829, file: !1, line: 322, column: 5)
!5834 = distinct !{!5834, !5835}
!5835 = !DILocation(line: 322, column: 5, scope: !5833)
!5836 = !DILocation(line: 322, column: 5, scope: !5837)
!5837 = !DILexicalBlockFile(scope: !5838, file: !1, discriminator: 2)
!5838 = distinct !DILexicalBlock(scope: !5833, file: !1, line: 322, column: 5)
!5839 = !DILocation(line: 322, column: 5, scope: !5840)
!5840 = !DILexicalBlockFile(scope: !5833, file: !1, discriminator: 3)
!5841 = !DILocation(line: 323, column: 3, scope: !5829)
!5842 = !DILocation(line: 324, column: 11, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5825, file: !1, line: 324, column: 11)
!5844 = !DILocation(line: 324, column: 13, scope: !5843)
!5845 = !DILocation(line: 324, column: 11, scope: !5825)
!5846 = !DILocation(line: 325, column: 25, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5843, file: !1, line: 324, column: 19)
!5848 = !DILocation(line: 325, column: 28, scope: !5847)
!5849 = !DILocation(line: 325, column: 12, scope: !5847)
!5850 = !DILocation(line: 325, column: 5, scope: !5847)
!5851 = !DILocation(line: 327, column: 11, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5843, file: !1, line: 327, column: 11)
!5853 = !DILocation(line: 327, column: 13, scope: !5852)
!5854 = !DILocation(line: 327, column: 11, scope: !5843)
!5855 = !DILocation(line: 328, column: 28, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5852, file: !1, line: 327, column: 19)
!5857 = !DILocation(line: 328, column: 31, scope: !5856)
!5858 = !DILocation(line: 328, column: 12, scope: !5856)
!5859 = !DILocation(line: 328, column: 5, scope: !5856)
!5860 = !DILocation(line: 330, column: 11, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5852, file: !1, line: 330, column: 11)
!5862 = !DILocation(line: 330, column: 13, scope: !5861)
!5863 = !DILocation(line: 330, column: 11, scope: !5852)
!5864 = !DILocation(line: 331, column: 30, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5861, file: !1, line: 330, column: 19)
!5866 = !DILocation(line: 331, column: 33, scope: !5865)
!5867 = !DILocation(line: 331, column: 12, scope: !5865)
!5868 = !DILocation(line: 331, column: 5, scope: !5865)
!5869 = !DILocation(line: 334, column: 30, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5861, file: !1, line: 333, column: 8)
!5871 = !DILocation(line: 334, column: 31, scope: !5870)
!5872 = !DILocation(line: 334, column: 35, scope: !5870)
!5873 = !DILocation(line: 334, column: 38, scope: !5870)
!5874 = !DILocation(line: 334, column: 12, scope: !5870)
!5875 = !DILocation(line: 334, column: 5, scope: !5870)
!5876 = !DILocation(line: 336, column: 1, scope: !5815)
!5877 = distinct !DISubprogram(name: "hyperg_1F1_beps_bgt0", scope: !1, file: !1, line: 803, type: !279, isLocal: true, isDefinition: true, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!5878 = !DILocalVariable(name: "eps", arg: 1, scope: !5877, file: !1, line: 803, type: !51)
!5879 = !DILocation(line: 803, column: 35, scope: !5877)
!5880 = !DILocalVariable(name: "b", arg: 2, scope: !5877, file: !1, line: 803, type: !51)
!5881 = !DILocation(line: 803, column: 53, scope: !5877)
!5882 = !DILocalVariable(name: "x", arg: 3, scope: !5877, file: !1, line: 803, type: !51)
!5883 = !DILocation(line: 803, column: 69, scope: !5877)
!5884 = !DILocalVariable(name: "result", arg: 4, scope: !5877, file: !1, line: 803, type: !53)
!5885 = !DILocation(line: 803, column: 88, scope: !5877)
!5886 = !DILocation(line: 805, column: 6, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5877, file: !1, line: 805, column: 6)
!5888 = !DILocation(line: 805, column: 15, scope: !5887)
!5889 = !DILocation(line: 805, column: 10, scope: !5887)
!5890 = !DILocation(line: 805, column: 8, scope: !5887)
!5891 = !DILocation(line: 805, column: 18, scope: !5887)
!5892 = !DILocation(line: 805, column: 26, scope: !5893)
!5893 = !DILexicalBlockFile(scope: !5887, file: !1, discriminator: 1)
!5894 = !DILocation(line: 805, column: 21, scope: !5893)
!5895 = !DILocation(line: 805, column: 31, scope: !5893)
!5896 = !DILocation(line: 805, column: 6, scope: !5893)
!5897 = !DILocalVariable(name: "a", scope: !5898, file: !1, line: 820, type: !52)
!5898 = distinct !DILexicalBlock(scope: !5887, file: !1, line: 805, column: 55)
!5899 = !DILocation(line: 820, column: 12, scope: !5898)
!5900 = !DILocation(line: 820, column: 16, scope: !5898)
!5901 = !DILocation(line: 820, column: 20, scope: !5898)
!5902 = !DILocation(line: 820, column: 18, scope: !5898)
!5903 = !DILocalVariable(name: "exab", scope: !5898, file: !1, line: 821, type: !54)
!5904 = !DILocation(line: 821, column: 19, scope: !5898)
!5905 = !DILocalVariable(name: "stat_e", scope: !5898, file: !1, line: 822, type: !42)
!5906 = !DILocation(line: 822, column: 9, scope: !5898)
!5907 = !DILocation(line: 822, column: 31, scope: !5898)
!5908 = !DILocation(line: 822, column: 33, scope: !5898)
!5909 = !DILocation(line: 822, column: 32, scope: !5898)
!5910 = !DILocation(line: 822, column: 35, scope: !5898)
!5911 = !DILocation(line: 822, column: 34, scope: !5898)
!5912 = !DILocation(line: 822, column: 18, scope: !5898)
!5913 = !DILocalVariable(name: "v2", scope: !5898, file: !1, line: 823, type: !52)
!5914 = !DILocation(line: 823, column: 12, scope: !5898)
!5915 = !DILocation(line: 823, column: 17, scope: !5898)
!5916 = !DILocation(line: 823, column: 24, scope: !5898)
!5917 = !DILocation(line: 823, column: 23, scope: !5898)
!5918 = !DILocation(line: 823, column: 26, scope: !5898)
!5919 = !DILocation(line: 823, column: 25, scope: !5898)
!5920 = !DILocation(line: 823, column: 29, scope: !5898)
!5921 = !DILocation(line: 823, column: 30, scope: !5898)
!5922 = !DILocation(line: 823, column: 27, scope: !5898)
!5923 = !DILocation(line: 823, column: 18, scope: !5898)
!5924 = !DILocalVariable(name: "v3", scope: !5898, file: !1, line: 824, type: !52)
!5925 = !DILocation(line: 824, column: 12, scope: !5898)
!5926 = !DILocation(line: 824, column: 17, scope: !5898)
!5927 = !DILocation(line: 824, column: 20, scope: !5898)
!5928 = !DILocation(line: 824, column: 26, scope: !5898)
!5929 = !DILocation(line: 824, column: 25, scope: !5898)
!5930 = !DILocation(line: 824, column: 21, scope: !5898)
!5931 = !DILocation(line: 824, column: 18, scope: !5898)
!5932 = !DILocation(line: 824, column: 34, scope: !5898)
!5933 = !DILocation(line: 824, column: 33, scope: !5898)
!5934 = !DILocation(line: 824, column: 36, scope: !5898)
!5935 = !DILocation(line: 824, column: 35, scope: !5898)
!5936 = !DILocation(line: 824, column: 38, scope: !5898)
!5937 = !DILocation(line: 824, column: 37, scope: !5898)
!5938 = !DILocation(line: 824, column: 41, scope: !5898)
!5939 = !DILocation(line: 824, column: 42, scope: !5898)
!5940 = !DILocation(line: 824, column: 39, scope: !5898)
!5941 = !DILocation(line: 824, column: 49, scope: !5898)
!5942 = !DILocation(line: 824, column: 50, scope: !5898)
!5943 = !DILocation(line: 824, column: 47, scope: !5898)
!5944 = !DILocation(line: 824, column: 28, scope: !5898)
!5945 = !DILocalVariable(name: "v", scope: !5898, file: !1, line: 825, type: !52)
!5946 = !DILocation(line: 825, column: 12, scope: !5898)
!5947 = !DILocation(line: 825, column: 17, scope: !5898)
!5948 = !DILocation(line: 825, column: 22, scope: !5898)
!5949 = !DILocation(line: 825, column: 27, scope: !5898)
!5950 = !DILocation(line: 825, column: 25, scope: !5898)
!5951 = !DILocation(line: 825, column: 20, scope: !5898)
!5952 = !DILocalVariable(name: "f", scope: !5898, file: !1, line: 826, type: !52)
!5953 = !DILocation(line: 826, column: 12, scope: !5898)
!5954 = !DILocation(line: 826, column: 24, scope: !5898)
!5955 = !DILocation(line: 826, column: 28, scope: !5898)
!5956 = !DILocation(line: 826, column: 27, scope: !5898)
!5957 = !DILocation(line: 826, column: 30, scope: !5898)
!5958 = !DILocation(line: 826, column: 29, scope: !5898)
!5959 = !DILocation(line: 826, column: 32, scope: !5898)
!5960 = !DILocation(line: 826, column: 31, scope: !5898)
!5961 = !DILocation(line: 826, column: 22, scope: !5898)
!5962 = !DILocation(line: 827, column: 25, scope: !5898)
!5963 = !DILocation(line: 827, column: 31, scope: !5898)
!5964 = !DILocation(line: 827, column: 29, scope: !5898)
!5965 = !DILocation(line: 827, column: 5, scope: !5898)
!5966 = !DILocation(line: 827, column: 13, scope: !5898)
!5967 = !DILocation(line: 827, column: 18, scope: !5898)
!5968 = !DILocation(line: 828, column: 25, scope: !5898)
!5969 = !DILocation(line: 828, column: 36, scope: !5898)
!5970 = !DILocation(line: 828, column: 31, scope: !5898)
!5971 = !DILocation(line: 828, column: 29, scope: !5898)
!5972 = !DILocation(line: 828, column: 5, scope: !5898)
!5973 = !DILocation(line: 828, column: 13, scope: !5898)
!5974 = !DILocation(line: 828, column: 18, scope: !5898)
!5975 = !DILocation(line: 829, column: 30, scope: !5898)
!5976 = !DILocation(line: 829, column: 20, scope: !5898)
!5977 = !DILocation(line: 829, column: 35, scope: !5898)
!5978 = !DILocation(line: 829, column: 67, scope: !5898)
!5979 = !DILocation(line: 829, column: 71, scope: !5898)
!5980 = !DILocation(line: 829, column: 70, scope: !5898)
!5981 = !DILocation(line: 829, column: 73, scope: !5898)
!5982 = !DILocation(line: 829, column: 72, scope: !5898)
!5983 = !DILocation(line: 829, column: 75, scope: !5898)
!5984 = !DILocation(line: 829, column: 74, scope: !5898)
!5985 = !DILocation(line: 829, column: 62, scope: !5986)
!5986 = !DILexicalBlockFile(scope: !5898, file: !1, discriminator: 1)
!5987 = !DILocation(line: 829, column: 60, scope: !5898)
!5988 = !DILocation(line: 829, column: 53, scope: !5898)
!5989 = !DILocation(line: 829, column: 5, scope: !5898)
!5990 = !DILocation(line: 829, column: 13, scope: !5898)
!5991 = !DILocation(line: 829, column: 17, scope: !5898)
!5992 = !DILocation(line: 830, column: 49, scope: !5898)
!5993 = !DILocation(line: 830, column: 57, scope: !5898)
!5994 = !DILocation(line: 830, column: 44, scope: !5898)
!5995 = !DILocation(line: 830, column: 42, scope: !5898)
!5996 = !DILocation(line: 830, column: 5, scope: !5898)
!5997 = !DILocation(line: 830, column: 13, scope: !5898)
!5998 = !DILocation(line: 830, column: 17, scope: !5898)
!5999 = !DILocation(line: 831, column: 12, scope: !5898)
!6000 = !DILocation(line: 831, column: 5, scope: !5898)
!6001 = !DILocalVariable(name: "Kummer_1F1", scope: !6002, file: !1, line: 837, type: !54)
!6002 = distinct !DILexicalBlock(scope: !5887, file: !1, line: 833, column: 8)
!6003 = !DILocation(line: 837, column: 19, scope: !6002)
!6004 = !DILocalVariable(name: "stat_K", scope: !6002, file: !1, line: 838, type: !42)
!6005 = !DILocation(line: 838, column: 9, scope: !6002)
!6006 = !DILocation(line: 838, column: 43, scope: !6002)
!6007 = !DILocation(line: 838, column: 42, scope: !6002)
!6008 = !DILocation(line: 838, column: 48, scope: !6002)
!6009 = !DILocation(line: 838, column: 52, scope: !6002)
!6010 = !DILocation(line: 838, column: 51, scope: !6002)
!6011 = !DILocation(line: 838, column: 18, scope: !6002)
!6012 = !DILocation(line: 839, column: 19, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !6002, file: !1, line: 839, column: 8)
!6014 = !DILocation(line: 839, column: 23, scope: !6013)
!6015 = !DILocation(line: 839, column: 8, scope: !6002)
!6016 = !DILocalVariable(name: "stat_e", scope: !6017, file: !1, line: 840, type: !42)
!6017 = distinct !DILexicalBlock(scope: !6013, file: !1, line: 839, column: 31)
!6018 = !DILocation(line: 840, column: 11, scope: !6017)
!6019 = !DILocation(line: 840, column: 42, scope: !6017)
!6020 = !DILocation(line: 840, column: 70, scope: !6017)
!6021 = !DILocation(line: 840, column: 65, scope: !6017)
!6022 = !DILocation(line: 840, column: 64, scope: !6017)
!6023 = !DILocation(line: 841, column: 56, scope: !6017)
!6024 = !DILocation(line: 841, column: 72, scope: !6017)
!6025 = !DILocation(line: 842, column: 45, scope: !6017)
!6026 = !DILocation(line: 840, column: 20, scope: !6027)
!6027 = !DILexicalBlockFile(scope: !6017, file: !1, discriminator: 1)
!6028 = !DILocation(line: 843, column: 14, scope: !6017)
!6029 = !DILocation(line: 843, column: 14, scope: !6027)
!6030 = !DILocation(line: 843, column: 14, scope: !6031)
!6031 = !DILexicalBlockFile(scope: !6017, file: !1, discriminator: 2)
!6032 = !DILocation(line: 843, column: 14, scope: !6033)
!6033 = !DILexicalBlockFile(scope: !6017, file: !1, discriminator: 3)
!6034 = !DILocation(line: 843, column: 14, scope: !6035)
!6035 = !DILexicalBlockFile(scope: !6017, file: !1, discriminator: 4)
!6036 = !DILocation(line: 843, column: 14, scope: !6037)
!6037 = !DILexicalBlockFile(scope: !6017, file: !1, discriminator: 5)
!6038 = !DILocation(line: 843, column: 14, scope: !6039)
!6039 = !DILexicalBlockFile(scope: !6017, file: !1, discriminator: 6)
!6040 = !DILocation(line: 843, column: 7, scope: !6039)
!6041 = !DILocation(line: 846, column: 7, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6013, file: !1, line: 845, column: 10)
!6043 = !DILocation(line: 846, column: 15, scope: !6042)
!6044 = !DILocation(line: 846, column: 19, scope: !6042)
!6045 = !DILocation(line: 847, column: 7, scope: !6042)
!6046 = !DILocation(line: 847, column: 15, scope: !6042)
!6047 = !DILocation(line: 847, column: 19, scope: !6042)
!6048 = !DILocation(line: 848, column: 14, scope: !6042)
!6049 = !DILocation(line: 848, column: 7, scope: !6042)
!6050 = !DILocation(line: 851, column: 1, scope: !5877)
!6051 = distinct !DISubprogram(name: "hyperg_1F1_U", scope: !1, file: !1, line: 1346, type: !279, isLocal: true, isDefinition: true, scopeLine: 1347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!6052 = !DILocalVariable(name: "a", arg: 1, scope: !6051, file: !1, line: 1346, type: !51)
!6053 = !DILocation(line: 1346, column: 27, scope: !6051)
!6054 = !DILocalVariable(name: "b", arg: 2, scope: !6051, file: !1, line: 1346, type: !51)
!6055 = !DILocation(line: 1346, column: 43, scope: !6051)
!6056 = !DILocalVariable(name: "x", arg: 3, scope: !6051, file: !1, line: 1346, type: !51)
!6057 = !DILocation(line: 1346, column: 59, scope: !6051)
!6058 = !DILocalVariable(name: "result", arg: 4, scope: !6051, file: !1, line: 1346, type: !53)
!6059 = !DILocation(line: 1346, column: 78, scope: !6051)
!6060 = !DILocalVariable(name: "bp", scope: !6051, file: !1, line: 1348, type: !51)
!6061 = !DILocation(line: 1348, column: 16, scope: !6051)
!6062 = !DILocation(line: 1348, column: 27, scope: !6051)
!6063 = !DILocation(line: 1348, column: 25, scope: !6051)
!6064 = !DILocalVariable(name: "ap", scope: !6051, file: !1, line: 1349, type: !51)
!6065 = !DILocation(line: 1349, column: 16, scope: !6051)
!6066 = !DILocation(line: 1349, column: 21, scope: !6051)
!6067 = !DILocation(line: 1349, column: 25, scope: !6051)
!6068 = !DILocation(line: 1349, column: 23, scope: !6051)
!6069 = !DILocation(line: 1349, column: 27, scope: !6051)
!6070 = !DILocalVariable(name: "lg_ap", scope: !6051, file: !1, line: 1351, type: !54)
!6071 = !DILocation(line: 1351, column: 17, scope: !6051)
!6072 = !DILocalVariable(name: "lg_bp", scope: !6051, file: !1, line: 1351, type: !54)
!6073 = !DILocation(line: 1351, column: 24, scope: !6051)
!6074 = !DILocalVariable(name: "sg_ap", scope: !6051, file: !1, line: 1352, type: !52)
!6075 = !DILocation(line: 1352, column: 10, scope: !6051)
!6076 = !DILocalVariable(name: "stat_lg0", scope: !6051, file: !1, line: 1353, type: !42)
!6077 = !DILocation(line: 1353, column: 7, scope: !6051)
!6078 = !DILocation(line: 1353, column: 39, scope: !6051)
!6079 = !DILocation(line: 1353, column: 18, scope: !6051)
!6080 = !DILocalVariable(name: "stat_lg1", scope: !6051, file: !1, line: 1354, type: !42)
!6081 = !DILocation(line: 1354, column: 7, scope: !6051)
!6082 = !DILocation(line: 1354, column: 35, scope: !6051)
!6083 = !DILocation(line: 1354, column: 18, scope: !6051)
!6084 = !DILocalVariable(name: "stat_lg2", scope: !6051, file: !1, line: 1355, type: !42)
!6085 = !DILocation(line: 1355, column: 7, scope: !6051)
!6086 = !DILocation(line: 1355, column: 18, scope: !6051)
!6087 = !DILocation(line: 1355, column: 18, scope: !6088)
!6088 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 1)
!6089 = !DILocation(line: 1355, column: 18, scope: !6090)
!6090 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 2)
!6091 = !DILocation(line: 1355, column: 18, scope: !6092)
!6092 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 3)
!6093 = !DILocation(line: 1355, column: 18, scope: !6094)
!6094 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 4)
!6095 = !DILocation(line: 1355, column: 18, scope: !6096)
!6096 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 5)
!6097 = !DILocation(line: 1355, column: 18, scope: !6098)
!6098 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 6)
!6099 = !DILocation(line: 1355, column: 7, scope: !6098)
!6100 = !DILocalVariable(name: "t1", scope: !6051, file: !1, line: 1356, type: !52)
!6101 = !DILocation(line: 1356, column: 10, scope: !6051)
!6102 = !DILocation(line: 1356, column: 16, scope: !6051)
!6103 = !DILocation(line: 1356, column: 18, scope: !6051)
!6104 = !DILocation(line: 1356, column: 30, scope: !6051)
!6105 = !DILocation(line: 1356, column: 26, scope: !6051)
!6106 = !DILocation(line: 1356, column: 24, scope: !6051)
!6107 = !DILocalVariable(name: "lnpre_val", scope: !6051, file: !1, line: 1357, type: !52)
!6108 = !DILocation(line: 1357, column: 10, scope: !6051)
!6109 = !DILocation(line: 1357, column: 28, scope: !6051)
!6110 = !DILocation(line: 1357, column: 40, scope: !6051)
!6111 = !DILocation(line: 1357, column: 32, scope: !6051)
!6112 = !DILocation(line: 1357, column: 46, scope: !6051)
!6113 = !DILocation(line: 1357, column: 44, scope: !6051)
!6114 = !DILocalVariable(name: "lnpre_err", scope: !6051, file: !1, line: 1358, type: !52)
!6115 = !DILocation(line: 1358, column: 10, scope: !6051)
!6116 = !DILocation(line: 1358, column: 28, scope: !6051)
!6117 = !DILocation(line: 1358, column: 40, scope: !6051)
!6118 = !DILocation(line: 1358, column: 32, scope: !6051)
!6119 = !DILocation(line: 1358, column: 75, scope: !6051)
!6120 = !DILocation(line: 1358, column: 70, scope: !6051)
!6121 = !DILocation(line: 1358, column: 68, scope: !6051)
!6122 = !DILocation(line: 1358, column: 44, scope: !6051)
!6123 = !DILocalVariable(name: "lg_2mbp", scope: !6051, file: !1, line: 1360, type: !54)
!6124 = !DILocation(line: 1360, column: 17, scope: !6051)
!6125 = !DILocalVariable(name: "lg_1papmbp", scope: !6051, file: !1, line: 1360, type: !54)
!6126 = !DILocation(line: 1360, column: 26, scope: !6051)
!6127 = !DILocalVariable(name: "sg_2mbp", scope: !6051, file: !1, line: 1361, type: !52)
!6128 = !DILocation(line: 1361, column: 10, scope: !6051)
!6129 = !DILocalVariable(name: "sg_1papmbp", scope: !6051, file: !1, line: 1361, type: !52)
!6130 = !DILocation(line: 1361, column: 19, scope: !6051)
!6131 = !DILocalVariable(name: "stat_lg3", scope: !6051, file: !1, line: 1362, type: !42)
!6132 = !DILocation(line: 1362, column: 7, scope: !6051)
!6133 = !DILocation(line: 1362, column: 43, scope: !6051)
!6134 = !DILocation(line: 1362, column: 42, scope: !6051)
!6135 = !DILocation(line: 1362, column: 18, scope: !6051)
!6136 = !DILocalVariable(name: "stat_lg4", scope: !6051, file: !1, line: 1363, type: !42)
!6137 = !DILocation(line: 1363, column: 7, scope: !6051)
!6138 = !DILocation(line: 1363, column: 43, scope: !6051)
!6139 = !DILocation(line: 1363, column: 42, scope: !6051)
!6140 = !DILocation(line: 1363, column: 46, scope: !6051)
!6141 = !DILocation(line: 1363, column: 45, scope: !6051)
!6142 = !DILocation(line: 1363, column: 18, scope: !6051)
!6143 = !DILocalVariable(name: "stat_lg5", scope: !6051, file: !1, line: 1364, type: !42)
!6144 = !DILocation(line: 1364, column: 7, scope: !6051)
!6145 = !DILocation(line: 1364, column: 18, scope: !6051)
!6146 = !DILocation(line: 1364, column: 18, scope: !6088)
!6147 = !DILocation(line: 1364, column: 18, scope: !6090)
!6148 = !DILocation(line: 1364, column: 18, scope: !6092)
!6149 = !DILocation(line: 1364, column: 18, scope: !6094)
!6150 = !DILocation(line: 1364, column: 18, scope: !6096)
!6151 = !DILocation(line: 1364, column: 18, scope: !6098)
!6152 = !DILocation(line: 1364, column: 7, scope: !6098)
!6153 = !DILocalVariable(name: "lnc1_val", scope: !6051, file: !1, line: 1365, type: !52)
!6154 = !DILocation(line: 1365, column: 10, scope: !6051)
!6155 = !DILocation(line: 1365, column: 29, scope: !6051)
!6156 = !DILocation(line: 1365, column: 46, scope: !6051)
!6157 = !DILocation(line: 1365, column: 33, scope: !6051)
!6158 = !DILocalVariable(name: "lnc1_err", scope: !6051, file: !1, line: 1366, type: !52)
!6159 = !DILocation(line: 1366, column: 10, scope: !6051)
!6160 = !DILocation(line: 1366, column: 29, scope: !6051)
!6161 = !DILocation(line: 1366, column: 46, scope: !6051)
!6162 = !DILocation(line: 1366, column: 33, scope: !6051)
!6163 = !DILocation(line: 1367, column: 55, scope: !6051)
!6164 = !DILocation(line: 1367, column: 42, scope: !6051)
!6165 = !DILocation(line: 1367, column: 78, scope: !6051)
!6166 = !DILocation(line: 1367, column: 62, scope: !6088)
!6167 = !DILocation(line: 1367, column: 60, scope: !6051)
!6168 = !DILocation(line: 1367, column: 39, scope: !6051)
!6169 = !DILocation(line: 1367, column: 21, scope: !6051)
!6170 = !DILocalVariable(name: "M", scope: !6051, file: !1, line: 1369, type: !54)
!6171 = !DILocation(line: 1369, column: 17, scope: !6051)
!6172 = !DILocalVariable(name: "U", scope: !6051, file: !1, line: 1370, type: !6173)
!6173 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result_e10", file: !55, line: 51, baseType: !6174)
!6174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_e10_struct", file: !55, line: 46, size: 192, align: 64, elements: !6175)
!6175 = !{!6176, !6177, !6178}
!6176 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !6174, file: !55, line: 47, baseType: !52, size: 64, align: 64)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !6174, file: !55, line: 48, baseType: !52, size: 64, align: 64, offset: 64)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "e10", scope: !6174, file: !55, line: 49, baseType: !42, size: 32, align: 32, offset: 128)
!6179 = !DILocation(line: 1370, column: 21, scope: !6051)
!6180 = !DILocalVariable(name: "stat_F", scope: !6051, file: !1, line: 1371, type: !42)
!6181 = !DILocation(line: 1371, column: 7, scope: !6051)
!6182 = !DILocation(line: 1371, column: 36, scope: !6051)
!6183 = !DILocation(line: 1371, column: 40, scope: !6051)
!6184 = !DILocation(line: 1371, column: 44, scope: !6051)
!6185 = !DILocation(line: 1371, column: 16, scope: !6051)
!6186 = !DILocalVariable(name: "stat_U", scope: !6051, file: !1, line: 1372, type: !42)
!6187 = !DILocation(line: 1372, column: 7, scope: !6051)
!6188 = !DILocation(line: 1372, column: 38, scope: !6051)
!6189 = !DILocation(line: 1372, column: 42, scope: !6051)
!6190 = !DILocation(line: 1372, column: 46, scope: !6051)
!6191 = !DILocation(line: 1372, column: 16, scope: !6051)
!6192 = !DILocalVariable(name: "stat_FU", scope: !6051, file: !1, line: 1373, type: !42)
!6193 = !DILocation(line: 1373, column: 7, scope: !6051)
!6194 = !DILocation(line: 1373, column: 17, scope: !6051)
!6195 = !DILocation(line: 1373, column: 17, scope: !6088)
!6196 = !DILocation(line: 1373, column: 17, scope: !6090)
!6197 = !DILocation(line: 1373, column: 17, scope: !6092)
!6198 = !DILocation(line: 1373, column: 17, scope: !6094)
!6199 = !DILocation(line: 1373, column: 17, scope: !6096)
!6200 = !DILocation(line: 1373, column: 17, scope: !6098)
!6201 = !DILocation(line: 1373, column: 7, scope: !6098)
!6202 = !DILocalVariable(name: "term_M", scope: !6051, file: !1, line: 1375, type: !6173)
!6203 = !DILocation(line: 1375, column: 21, scope: !6051)
!6204 = !DILocalVariable(name: "stat_e0", scope: !6051, file: !1, line: 1376, type: !42)
!6205 = !DILocation(line: 1376, column: 7, scope: !6051)
!6206 = !DILocation(line: 1376, column: 43, scope: !6051)
!6207 = !DILocation(line: 1376, column: 53, scope: !6051)
!6208 = !DILocation(line: 1377, column: 46, scope: !6051)
!6209 = !DILocation(line: 1377, column: 54, scope: !6051)
!6210 = !DILocation(line: 1377, column: 53, scope: !6051)
!6211 = !DILocation(line: 1377, column: 67, scope: !6051)
!6212 = !DILocation(line: 1377, column: 64, scope: !6051)
!6213 = !DILocation(line: 1377, column: 74, scope: !6051)
!6214 = !DILocation(line: 1376, column: 17, scope: !6051)
!6215 = !DILocalVariable(name: "ombp", scope: !6051, file: !1, line: 1380, type: !51)
!6216 = !DILocation(line: 1380, column: 16, scope: !6051)
!6217 = !DILocation(line: 1380, column: 29, scope: !6051)
!6218 = !DILocation(line: 1380, column: 27, scope: !6051)
!6219 = !DILocalVariable(name: "Uee_val", scope: !6051, file: !1, line: 1381, type: !51)
!6220 = !DILocation(line: 1381, column: 16, scope: !6051)
!6221 = !DILocation(line: 1381, column: 28, scope: !6051)
!6222 = !DILocation(line: 1381, column: 26, scope: !6051)
!6223 = !DILocation(line: 1381, column: 31, scope: !6051)
!6224 = !DILocalVariable(name: "Uee_err", scope: !6051, file: !1, line: 1382, type: !51)
!6225 = !DILocation(line: 1382, column: 16, scope: !6051)
!6226 = !DILocation(line: 1382, column: 55, scope: !6051)
!6227 = !DILocation(line: 1382, column: 50, scope: !6051)
!6228 = !DILocation(line: 1382, column: 48, scope: !6051)
!6229 = !DILocalVariable(name: "Mee_val", scope: !6051, file: !1, line: 1383, type: !51)
!6230 = !DILocation(line: 1383, column: 16, scope: !6051)
!6231 = !DILocation(line: 1383, column: 33, scope: !6051)
!6232 = !DILocation(line: 1383, column: 26, scope: !6051)
!6233 = !DILocation(line: 1383, column: 36, scope: !6051)
!6234 = !DILocalVariable(name: "Mee_err", scope: !6051, file: !1, line: 1384, type: !51)
!6235 = !DILocation(line: 1384, column: 16, scope: !6051)
!6236 = !DILocation(line: 1384, column: 55, scope: !6051)
!6237 = !DILocation(line: 1384, column: 50, scope: !6051)
!6238 = !DILocation(line: 1384, column: 48, scope: !6051)
!6239 = !DILocalVariable(name: "stat_e1", scope: !6051, file: !1, line: 1385, type: !42)
!6240 = !DILocation(line: 1385, column: 7, scope: !6051)
!6241 = !DILocation(line: 1390, column: 6, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6051, file: !1, line: 1390, column: 6)
!6243 = !DILocation(line: 1390, column: 16, scope: !6242)
!6244 = !DILocation(line: 1390, column: 14, scope: !6242)
!6245 = !DILocation(line: 1390, column: 6, scope: !6051)
!6246 = !DILocalVariable(name: "factorM_val", scope: !6247, file: !1, line: 1391, type: !51)
!6247 = distinct !DILexicalBlock(scope: !6242, file: !1, line: 1390, column: 25)
!6248 = !DILocation(line: 1391, column: 18, scope: !6247)
!6249 = !DILocation(line: 1391, column: 36, scope: !6247)
!6250 = !DILocation(line: 1391, column: 44, scope: !6247)
!6251 = !DILocation(line: 1391, column: 43, scope: !6247)
!6252 = !DILocation(line: 1391, column: 32, scope: !6247)
!6253 = !DILocalVariable(name: "factorM_err", scope: !6247, file: !1, line: 1392, type: !51)
!6254 = !DILocation(line: 1392, column: 18, scope: !6247)
!6255 = !DILocation(line: 1392, column: 62, scope: !6247)
!6256 = !DILocation(line: 1392, column: 70, scope: !6247)
!6257 = !DILocation(line: 1392, column: 69, scope: !6247)
!6258 = !DILocation(line: 1392, column: 57, scope: !6247)
!6259 = !DILocation(line: 1392, column: 78, scope: !6247)
!6260 = !DILocation(line: 1392, column: 54, scope: !6247)
!6261 = !DILocation(line: 1392, column: 86, scope: !6247)
!6262 = !DILocation(line: 1392, column: 84, scope: !6247)
!6263 = !DILocalVariable(name: "inner_val", scope: !6247, file: !1, line: 1393, type: !51)
!6264 = !DILocation(line: 1393, column: 18, scope: !6247)
!6265 = !DILocation(line: 1393, column: 37, scope: !6247)
!6266 = !DILocation(line: 1393, column: 41, scope: !6247)
!6267 = !DILocation(line: 1393, column: 40, scope: !6247)
!6268 = !DILocation(line: 1393, column: 55, scope: !6247)
!6269 = !DILocation(line: 1393, column: 62, scope: !6247)
!6270 = !DILocation(line: 1393, column: 59, scope: !6247)
!6271 = !DILocation(line: 1393, column: 53, scope: !6247)
!6272 = !DILocalVariable(name: "inner_err", scope: !6247, file: !1, line: 1394, type: !51)
!6273 = !DILocation(line: 1394, column: 18, scope: !6247)
!6274 = !DILocation(line: 1395, column: 16, scope: !6247)
!6275 = !DILocation(line: 1395, column: 20, scope: !6247)
!6276 = !DILocation(line: 1395, column: 19, scope: !6247)
!6277 = !DILocation(line: 1395, column: 39, scope: !6247)
!6278 = !DILocation(line: 1395, column: 34, scope: !6247)
!6279 = !DILocation(line: 1395, column: 49, scope: !6247)
!6280 = !DILocation(line: 1395, column: 45, scope: !6247)
!6281 = !DILocation(line: 1395, column: 32, scope: !6247)
!6282 = !DILocation(line: 1396, column: 21, scope: !6247)
!6283 = !DILocation(line: 1396, column: 9, scope: !6247)
!6284 = !DILocation(line: 1396, column: 28, scope: !6247)
!6285 = !DILocation(line: 1396, column: 26, scope: !6247)
!6286 = !DILocation(line: 1396, column: 7, scope: !6247)
!6287 = !DILocation(line: 1397, column: 40, scope: !6247)
!6288 = !DILocation(line: 1397, column: 44, scope: !6247)
!6289 = !DILocation(line: 1397, column: 43, scope: !6247)
!6290 = !DILocation(line: 1397, column: 28, scope: !6247)
!6291 = !DILocation(line: 1397, column: 64, scope: !6247)
!6292 = !DILocation(line: 1397, column: 71, scope: !6247)
!6293 = !DILocation(line: 1397, column: 68, scope: !6247)
!6294 = !DILocation(line: 1397, column: 59, scope: !6295)
!6295 = !DILexicalBlockFile(scope: !6247, file: !1, discriminator: 1)
!6296 = !DILocation(line: 1397, column: 57, scope: !6247)
!6297 = !DILocation(line: 1397, column: 25, scope: !6247)
!6298 = !DILocation(line: 1397, column: 7, scope: !6247)
!6299 = !DILocation(line: 1398, column: 37, scope: !6247)
!6300 = !DILocation(line: 1398, column: 47, scope: !6247)
!6301 = !DILocation(line: 1398, column: 46, scope: !6247)
!6302 = !DILocation(line: 1398, column: 56, scope: !6247)
!6303 = !DILocation(line: 1398, column: 66, scope: !6247)
!6304 = !DILocation(line: 1398, column: 65, scope: !6247)
!6305 = !DILocation(line: 1399, column: 40, scope: !6247)
!6306 = !DILocation(line: 1399, column: 46, scope: !6247)
!6307 = !DILocation(line: 1399, column: 45, scope: !6247)
!6308 = !DILocation(line: 1399, column: 57, scope: !6247)
!6309 = !DILocation(line: 1400, column: 40, scope: !6247)
!6310 = !DILocation(line: 1398, column: 15, scope: !6247)
!6311 = !DILocation(line: 1398, column: 13, scope: !6247)
!6312 = !DILocation(line: 1401, column: 3, scope: !6247)
!6313 = !DILocalVariable(name: "factorU_val", scope: !6314, file: !1, line: 1403, type: !51)
!6314 = distinct !DILexicalBlock(scope: !6242, file: !1, line: 1402, column: 8)
!6315 = !DILocation(line: 1403, column: 18, scope: !6314)
!6316 = !DILocation(line: 1403, column: 36, scope: !6314)
!6317 = !DILocation(line: 1403, column: 46, scope: !6314)
!6318 = !DILocation(line: 1403, column: 44, scope: !6314)
!6319 = !DILocation(line: 1403, column: 32, scope: !6314)
!6320 = !DILocalVariable(name: "factorU_err", scope: !6314, file: !1, line: 1404, type: !51)
!6321 = !DILocation(line: 1404, column: 18, scope: !6314)
!6322 = !DILocation(line: 1404, column: 62, scope: !6314)
!6323 = !DILocation(line: 1404, column: 70, scope: !6314)
!6324 = !DILocation(line: 1404, column: 69, scope: !6314)
!6325 = !DILocation(line: 1404, column: 57, scope: !6314)
!6326 = !DILocation(line: 1404, column: 78, scope: !6314)
!6327 = !DILocation(line: 1404, column: 54, scope: !6314)
!6328 = !DILocation(line: 1404, column: 86, scope: !6314)
!6329 = !DILocation(line: 1404, column: 84, scope: !6314)
!6330 = !DILocalVariable(name: "inner_val", scope: !6314, file: !1, line: 1405, type: !51)
!6331 = !DILocation(line: 1405, column: 18, scope: !6314)
!6332 = !DILocation(line: 1405, column: 37, scope: !6314)
!6333 = !DILocation(line: 1405, column: 43, scope: !6314)
!6334 = !DILocation(line: 1405, column: 48, scope: !6314)
!6335 = !DILocation(line: 1405, column: 47, scope: !6314)
!6336 = !DILocation(line: 1405, column: 62, scope: !6314)
!6337 = !DILocation(line: 1405, column: 59, scope: !6314)
!6338 = !DILocation(line: 1405, column: 41, scope: !6314)
!6339 = !DILocalVariable(name: "inner_err", scope: !6314, file: !1, line: 1406, type: !51)
!6340 = !DILocation(line: 1406, column: 18, scope: !6314)
!6341 = !DILocation(line: 1407, column: 16, scope: !6314)
!6342 = !DILocation(line: 1407, column: 27, scope: !6314)
!6343 = !DILocation(line: 1407, column: 32, scope: !6314)
!6344 = !DILocation(line: 1407, column: 31, scope: !6314)
!6345 = !DILocation(line: 1407, column: 46, scope: !6314)
!6346 = !DILocation(line: 1407, column: 43, scope: !6314)
!6347 = !DILocation(line: 1407, column: 22, scope: !6314)
!6348 = !DILocation(line: 1407, column: 20, scope: !6314)
!6349 = !DILocation(line: 1408, column: 14, scope: !6314)
!6350 = !DILocation(line: 1408, column: 19, scope: !6314)
!6351 = !DILocation(line: 1408, column: 18, scope: !6314)
!6352 = !DILocation(line: 1408, column: 33, scope: !6314)
!6353 = !DILocation(line: 1408, column: 30, scope: !6314)
!6354 = !DILocation(line: 1408, column: 9, scope: !6314)
!6355 = !DILocation(line: 1408, column: 7, scope: !6314)
!6356 = !DILocation(line: 1409, column: 40, scope: !6314)
!6357 = !DILocation(line: 1409, column: 28, scope: !6314)
!6358 = !DILocation(line: 1409, column: 52, scope: !6314)
!6359 = !DILocation(line: 1409, column: 57, scope: !6314)
!6360 = !DILocation(line: 1409, column: 56, scope: !6314)
!6361 = !DILocation(line: 1409, column: 71, scope: !6314)
!6362 = !DILocation(line: 1409, column: 68, scope: !6314)
!6363 = !DILocation(line: 1409, column: 47, scope: !6364)
!6364 = !DILexicalBlockFile(scope: !6314, file: !1, discriminator: 1)
!6365 = !DILocation(line: 1409, column: 45, scope: !6314)
!6366 = !DILocation(line: 1409, column: 25, scope: !6314)
!6367 = !DILocation(line: 1409, column: 7, scope: !6314)
!6368 = !DILocation(line: 1410, column: 37, scope: !6314)
!6369 = !DILocation(line: 1410, column: 47, scope: !6314)
!6370 = !DILocation(line: 1410, column: 46, scope: !6314)
!6371 = !DILocation(line: 1410, column: 56, scope: !6314)
!6372 = !DILocation(line: 1410, column: 66, scope: !6314)
!6373 = !DILocation(line: 1410, column: 65, scope: !6314)
!6374 = !DILocation(line: 1411, column: 40, scope: !6314)
!6375 = !DILocation(line: 1411, column: 46, scope: !6314)
!6376 = !DILocation(line: 1411, column: 45, scope: !6314)
!6377 = !DILocation(line: 1411, column: 57, scope: !6314)
!6378 = !DILocation(line: 1412, column: 40, scope: !6314)
!6379 = !DILocation(line: 1410, column: 15, scope: !6314)
!6380 = !DILocation(line: 1410, column: 13, scope: !6314)
!6381 = !DILocation(line: 1415, column: 10, scope: !6051)
!6382 = !DILocation(line: 1415, column: 10, scope: !6088)
!6383 = !DILocation(line: 1415, column: 10, scope: !6090)
!6384 = !DILocation(line: 1415, column: 10, scope: !6092)
!6385 = !DILocation(line: 1415, column: 10, scope: !6094)
!6386 = !DILocation(line: 1415, column: 10, scope: !6096)
!6387 = !DILocation(line: 1415, column: 10, scope: !6098)
!6388 = !DILocation(line: 1415, column: 10, scope: !6389)
!6389 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 7)
!6390 = !DILocation(line: 1415, column: 10, scope: !6391)
!6391 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 8)
!6392 = !DILocation(line: 1415, column: 10, scope: !6393)
!6393 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 9)
!6394 = !DILocation(line: 1415, column: 10, scope: !6395)
!6395 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 10)
!6396 = !DILocation(line: 1415, column: 10, scope: !6397)
!6397 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 11)
!6398 = !DILocation(line: 1415, column: 10, scope: !6399)
!6399 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 12)
!6400 = !DILocation(line: 1415, column: 10, scope: !6401)
!6401 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 13)
!6402 = !DILocation(line: 1415, column: 10, scope: !6403)
!6403 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 14)
!6404 = !DILocation(line: 1415, column: 10, scope: !6405)
!6405 = !DILexicalBlockFile(scope: !6051, file: !1, discriminator: 15)
!6406 = !DILocation(line: 1415, column: 3, scope: !6405)
