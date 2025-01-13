; ModuleID = 'beta_inc.c'
source_filename = "beta_inc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"beta_inc.c\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"gsl_sf_beta_inc_e(a, b, x, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_beta_inc_e(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.gsl_sf_result_struct, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !59, metadata !60), !dbg !61
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !62, metadata !60), !dbg !63
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !64, metadata !60), !dbg !65
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !66, metadata !60), !dbg !67
  %34 = load double, double* %8, align 8, !dbg !68
  %35 = fcmp olt double %34, 0.000000e+00, !dbg !70
  br i1 %35, label %39, label %36, !dbg !71

; <label>:36:                                     ; preds = %4
  %37 = load double, double* %8, align 8, !dbg !72
  %38 = fcmp ogt double %37, 1.000000e+00, !dbg !74
  br i1 %38, label %39, label %48, !dbg !75

; <label>:39:                                     ; preds = %36, %4
  br label %40, !dbg !76, !llvm.loop !78

; <label>:40:                                     ; preds = %39
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !79
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !79
  store double 0x7FF8000000000000, double* %42, align 8, !dbg !79
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !79
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !79
  store double 0x7FF8000000000000, double* %44, align 8, !dbg !79
  br label %45, !dbg !79, !llvm.loop !82

; <label>:45:                                     ; preds = %40
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 115, i32 1), !dbg !84
  store i32 1, i32* %5, align 4, !dbg !84
  br label %398, !dbg !84
                                                  ; No predecessors!
  br label %47, !dbg !87

; <label>:47:                                     ; preds = %46
  br label %398, !dbg !89

; <label>:48:                                     ; preds = %36
  %49 = load double, double* %6, align 8, !dbg !90
  %50 = call double @isnegint(double %49), !dbg !93
  %51 = fcmp une double %50, 0.000000e+00, !dbg !93
  br i1 %51, label %56, label %52, !dbg !94

; <label>:52:                                     ; preds = %48
  %53 = load double, double* %7, align 8, !dbg !95
  %54 = call double @isnegint(double %53), !dbg !97
  %55 = fcmp une double %54, 0.000000e+00, !dbg !97
  br i1 %55, label %56, label %65, !dbg !98

; <label>:56:                                     ; preds = %52, %48
  br label %57, !dbg !99, !llvm.loop !101

; <label>:57:                                     ; preds = %56
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !102
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 0, !dbg !102
  store double 0x7FF8000000000000, double* %59, align 8, !dbg !102
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !102
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !102
  store double 0x7FF8000000000000, double* %61, align 8, !dbg !102
  br label %62, !dbg !102, !llvm.loop !105

; <label>:62:                                     ; preds = %57
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 117, i32 1), !dbg !107
  store i32 1, i32* %5, align 4, !dbg !107
  br label %398, !dbg !107
                                                  ; No predecessors!
  br label %64, !dbg !110

; <label>:64:                                     ; preds = %63
  br label %397, !dbg !112

; <label>:65:                                     ; preds = %52
  %66 = load double, double* %6, align 8, !dbg !113
  %67 = load double, double* %7, align 8, !dbg !116
  %68 = fadd double %66, %67, !dbg !117
  %69 = call double @isnegint(double %68), !dbg !118
  %70 = fcmp une double %69, 0.000000e+00, !dbg !118
  br i1 %70, label %71, label %80, !dbg !118

; <label>:71:                                     ; preds = %65
  br label %72, !dbg !119, !llvm.loop !121

; <label>:72:                                     ; preds = %71
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !122
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !122
  store double 0x7FF8000000000000, double* %74, align 8, !dbg !122
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !122
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !122
  store double 0x7FF8000000000000, double* %76, align 8, !dbg !122
  br label %77, !dbg !122, !llvm.loop !125

; <label>:77:                                     ; preds = %72
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 119, i32 1), !dbg !127
  store i32 1, i32* %5, align 4, !dbg !127
  br label %398, !dbg !127
                                                  ; No predecessors!
  br label %79, !dbg !130

; <label>:79:                                     ; preds = %78
  br label %396, !dbg !132

; <label>:80:                                     ; preds = %65
  %81 = load double, double* %8, align 8, !dbg !133
  %82 = fcmp oeq double %81, 0.000000e+00, !dbg !136
  br i1 %82, label %83, label %88, !dbg !133

; <label>:83:                                     ; preds = %80
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !137
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !139
  store double 0.000000e+00, double* %85, align 8, !dbg !140
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !141
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 1, !dbg !142
  store double 0.000000e+00, double* %87, align 8, !dbg !143
  store i32 0, i32* %5, align 4, !dbg !144
  br label %398, !dbg !144

; <label>:88:                                     ; preds = %80
  %89 = load double, double* %8, align 8, !dbg !145
  %90 = fcmp oeq double %89, 1.000000e+00, !dbg !147
  br i1 %90, label %91, label %96, !dbg !148

; <label>:91:                                     ; preds = %88
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !149
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !151
  store double 1.000000e+00, double* %93, align 8, !dbg !152
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !153
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 1, !dbg !154
  store double 0.000000e+00, double* %95, align 8, !dbg !155
  store i32 0, i32* %5, align 4, !dbg !156
  br label %398, !dbg !156

; <label>:96:                                     ; preds = %88
  %97 = load double, double* %6, align 8, !dbg !157
  %98 = fcmp ole double %97, 0.000000e+00, !dbg !159
  br i1 %98, label %102, label %99, !dbg !160

; <label>:99:                                     ; preds = %96
  %100 = load double, double* %7, align 8, !dbg !161
  %101 = fcmp ole double %100, 0.000000e+00, !dbg !163
  br i1 %101, label %102, label %177, !dbg !164

; <label>:102:                                    ; preds = %99, %96
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !165, metadata !60), !dbg !167
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !168, metadata !60), !dbg !169
  call void @llvm.dbg.declare(metadata i32* %12, metadata !170, metadata !60), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %13, metadata !172, metadata !60), !dbg !174
  %103 = load double, double* %6, align 8, !dbg !175
  %104 = load double, double* %7, align 8, !dbg !176
  %105 = fsub double 1.000000e+00, %104, !dbg !177
  %106 = load double, double* %6, align 8, !dbg !178
  %107 = fadd double %106, 1.000000e+00, !dbg !179
  %108 = load double, double* %8, align 8, !dbg !180
  %109 = call i32 @gsl_sf_hyperg_2F1_e(double %103, double %105, double %107, double %108, %struct.gsl_sf_result_struct* %10), !dbg !181
  store i32 %109, i32* %13, align 4, !dbg !174
  call void @llvm.dbg.declare(metadata i32* %14, metadata !182, metadata !60), !dbg !183
  %110 = load double, double* %6, align 8, !dbg !184
  %111 = load double, double* %7, align 8, !dbg !185
  %112 = call i32 @gsl_sf_beta_e(double %110, double %111, %struct.gsl_sf_result_struct* %11), !dbg !186
  store i32 %112, i32* %14, align 4, !dbg !183
  call void @llvm.dbg.declare(metadata double* %15, metadata !187, metadata !60), !dbg !188
  %113 = load double, double* %8, align 8, !dbg !189
  %114 = load double, double* %6, align 8, !dbg !190
  %115 = call double @pow(double %113, double %114) #5, !dbg !191
  %116 = load double, double* %6, align 8, !dbg !192
  %117 = fdiv double %115, %116, !dbg !193
  store double %117, double* %15, align 8, !dbg !188
  %118 = load double, double* %15, align 8, !dbg !194
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !195
  %120 = load double, double* %119, align 8, !dbg !195
  %121 = fmul double %118, %120, !dbg !196
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !197
  %123 = load double, double* %122, align 8, !dbg !197
  %124 = fdiv double %121, %123, !dbg !198
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !199
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !200
  store double %124, double* %126, align 8, !dbg !201
  %127 = load double, double* %15, align 8, !dbg !202
  %128 = call double @fabs(double %127) #1, !dbg !203
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !204
  %130 = load double, double* %129, align 8, !dbg !204
  %131 = fmul double %128, %130, !dbg !205
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !206
  %133 = load double, double* %132, align 8, !dbg !206
  %134 = call double @fabs(double %133) #1, !dbg !207
  %135 = fdiv double %131, %134, !dbg !209
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !210
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 0, !dbg !211
  %138 = load double, double* %137, align 8, !dbg !211
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !212
  %140 = load double, double* %139, align 8, !dbg !212
  %141 = fdiv double %138, %140, !dbg !213
  %142 = call double @fabs(double %141) #1, !dbg !214
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !216
  %144 = load double, double* %143, align 8, !dbg !216
  %145 = fmul double %142, %144, !dbg !217
  %146 = fadd double %135, %145, !dbg !218
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !219
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 1, !dbg !220
  store double %146, double* %148, align 8, !dbg !221
  %149 = load i32, i32* %13, align 4, !dbg !222
  %150 = icmp ne i32 %149, 0, !dbg !222
  br i1 %150, label %151, label %153, !dbg !222

; <label>:151:                                    ; preds = %102
  %152 = load i32, i32* %13, align 4, !dbg !223
  br label %161, !dbg !223

; <label>:153:                                    ; preds = %102
  %154 = load i32, i32* %14, align 4, !dbg !224
  %155 = icmp ne i32 %154, 0, !dbg !224
  br i1 %155, label %156, label %158, !dbg !224

; <label>:156:                                    ; preds = %153
  %157 = load i32, i32* %14, align 4, !dbg !225
  br label %159, !dbg !225

; <label>:158:                                    ; preds = %153
  br label %159, !dbg !227

; <label>:159:                                    ; preds = %158, %156
  %160 = phi i32 [ %157, %156 ], [ 0, %158 ], !dbg !229
  br label %161, !dbg !229

; <label>:161:                                    ; preds = %159, %151
  %162 = phi i32 [ %152, %151 ], [ %160, %159 ], !dbg !231
  store i32 %162, i32* %12, align 4, !dbg !233
  %163 = load i32, i32* %12, align 4, !dbg !234
  %164 = icmp eq i32 %163, 0, !dbg !236
  br i1 %164, label %165, label %175, !dbg !237

; <label>:165:                                    ; preds = %161
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !238
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 0, !dbg !238
  %168 = load double, double* %167, align 8, !dbg !238
  %169 = call double @fabs(double %168) #1, !dbg !238
  %170 = fcmp olt double %169, 0x10000000000000, !dbg !238
  br i1 %170, label %171, label %174, !dbg !241

; <label>:171:                                    ; preds = %165
  br label %172, !dbg !242, !llvm.loop !244

; <label>:172:                                    ; preds = %171
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 140, i32 15), !dbg !245
  store i32 15, i32* %5, align 4, !dbg !245
  br label %398, !dbg !245
                                                  ; No predecessors!
  br label %174, !dbg !248

; <label>:174:                                    ; preds = %173, %165
  br label %175, !dbg !250

; <label>:175:                                    ; preds = %174, %161
  %176 = load i32, i32* %12, align 4, !dbg !251
  store i32 %176, i32* %5, align 4, !dbg !252
  br label %398, !dbg !252

; <label>:177:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !253, metadata !60), !dbg !255
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !256, metadata !60), !dbg !257
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !258, metadata !60), !dbg !259
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !260, metadata !60), !dbg !261
  call void @llvm.dbg.declare(metadata i32* %20, metadata !262, metadata !60), !dbg !263
  %178 = load double, double* %6, align 8, !dbg !264
  %179 = load double, double* %7, align 8, !dbg !265
  %180 = call i32 @gsl_sf_lnbeta_e(double %178, double %179, %struct.gsl_sf_result_struct* %16), !dbg !266
  store i32 %180, i32* %20, align 4, !dbg !263
  call void @llvm.dbg.declare(metadata i32* %21, metadata !267, metadata !60), !dbg !268
  %181 = load double, double* %8, align 8, !dbg !269
  %182 = fsub double -0.000000e+00, %181, !dbg !270
  %183 = call i32 @gsl_sf_log_1plusx_e(double %182, %struct.gsl_sf_result_struct* %18), !dbg !271
  store i32 %183, i32* %21, align 4, !dbg !268
  call void @llvm.dbg.declare(metadata i32* %22, metadata !272, metadata !60), !dbg !273
  %184 = load double, double* %8, align 8, !dbg !274
  %185 = call i32 @gsl_sf_log_e(double %184, %struct.gsl_sf_result_struct* %17), !dbg !275
  store i32 %185, i32* %22, align 4, !dbg !273
  call void @llvm.dbg.declare(metadata i32* %23, metadata !276, metadata !60), !dbg !277
  %186 = load i32, i32* %20, align 4, !dbg !278
  %187 = icmp ne i32 %186, 0, !dbg !278
  br i1 %187, label %188, label %190, !dbg !278

; <label>:188:                                    ; preds = %177
  %189 = load i32, i32* %20, align 4, !dbg !279
  br label %205, !dbg !279

; <label>:190:                                    ; preds = %177
  %191 = load i32, i32* %21, align 4, !dbg !281
  %192 = icmp ne i32 %191, 0, !dbg !281
  br i1 %192, label %193, label %195, !dbg !281

; <label>:193:                                    ; preds = %190
  %194 = load i32, i32* %21, align 4, !dbg !283
  br label %203, !dbg !283

; <label>:195:                                    ; preds = %190
  %196 = load i32, i32* %22, align 4, !dbg !285
  %197 = icmp ne i32 %196, 0, !dbg !285
  br i1 %197, label %198, label %200, !dbg !285

; <label>:198:                                    ; preds = %195
  %199 = load i32, i32* %22, align 4, !dbg !287
  br label %201, !dbg !287

; <label>:200:                                    ; preds = %195
  br label %201, !dbg !289

; <label>:201:                                    ; preds = %200, %198
  %202 = phi i32 [ %199, %198 ], [ 0, %200 ], !dbg !291
  br label %203, !dbg !291

; <label>:203:                                    ; preds = %201, %193
  %204 = phi i32 [ %194, %193 ], [ %202, %201 ], !dbg !293
  br label %205, !dbg !293

; <label>:205:                                    ; preds = %203, %188
  %206 = phi i32 [ %189, %188 ], [ %204, %203 ], !dbg !295
  store i32 %206, i32* %23, align 4, !dbg !297
  call void @llvm.dbg.declare(metadata double* %24, metadata !298, metadata !60), !dbg !299
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !300
  %208 = load double, double* %207, align 8, !dbg !300
  %209 = fsub double -0.000000e+00, %208, !dbg !301
  %210 = load double, double* %6, align 8, !dbg !302
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !303
  %212 = load double, double* %211, align 8, !dbg !303
  %213 = fmul double %210, %212, !dbg !304
  %214 = fadd double %209, %213, !dbg !305
  %215 = load double, double* %7, align 8, !dbg !306
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !307
  %217 = load double, double* %216, align 8, !dbg !307
  %218 = fmul double %215, %217, !dbg !308
  %219 = fadd double %214, %218, !dbg !309
  store double %219, double* %24, align 8, !dbg !299
  call void @llvm.dbg.declare(metadata double* %25, metadata !310, metadata !60), !dbg !311
  %220 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !312
  %221 = load double, double* %220, align 8, !dbg !312
  %222 = load double, double* %6, align 8, !dbg !313
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !314
  %224 = load double, double* %223, align 8, !dbg !314
  %225 = fmul double %222, %224, !dbg !315
  %226 = call double @fabs(double %225) #1, !dbg !316
  %227 = fadd double %221, %226, !dbg !317
  %228 = load double, double* %7, align 8, !dbg !318
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !319
  %230 = load double, double* %229, align 8, !dbg !319
  %231 = fmul double %228, %230, !dbg !320
  %232 = call double @fabs(double %231) #1, !dbg !321
  %233 = fadd double %227, %232, !dbg !322
  store double %233, double* %25, align 8, !dbg !311
  call void @llvm.dbg.declare(metadata i32* %26, metadata !323, metadata !60), !dbg !324
  %234 = load double, double* %24, align 8, !dbg !325
  %235 = load double, double* %25, align 8, !dbg !326
  %236 = call i32 @gsl_sf_exp_err_e(double %234, double %235, %struct.gsl_sf_result_struct* %19), !dbg !327
  store i32 %236, i32* %26, align 4, !dbg !324
  %237 = load i32, i32* %23, align 4, !dbg !328
  %238 = icmp ne i32 %237, 0, !dbg !330
  br i1 %238, label %239, label %246, !dbg !331

; <label>:239:                                    ; preds = %205
  %240 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !332
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %240, i32 0, i32 0, !dbg !334
  store double 0.000000e+00, double* %241, align 8, !dbg !335
  %242 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !336
  %243 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %242, i32 0, i32 1, !dbg !337
  store double 0.000000e+00, double* %243, align 8, !dbg !338
  br label %244, !dbg !339, !llvm.loop !340

; <label>:244:                                    ; preds = %239
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 160, i32 7), !dbg !341
  store i32 7, i32* %5, align 4, !dbg !341
  br label %398, !dbg !341
                                                  ; No predecessors!
  br label %246, !dbg !344

; <label>:246:                                    ; preds = %245, %205
  %247 = load double, double* %8, align 8, !dbg !345
  %248 = load double, double* %6, align 8, !dbg !347
  %249 = fadd double %248, 1.000000e+00, !dbg !348
  %250 = load double, double* %6, align 8, !dbg !349
  %251 = load double, double* %7, align 8, !dbg !350
  %252 = fadd double %250, %251, !dbg !351
  %253 = fadd double %252, 2.000000e+00, !dbg !352
  %254 = fdiv double %249, %253, !dbg !353
  %255 = fcmp olt double %247, %254, !dbg !354
  br i1 %255, label %256, label %315, !dbg !355

; <label>:256:                                    ; preds = %246
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !356, metadata !60), !dbg !358
  call void @llvm.dbg.declare(metadata i32* %28, metadata !359, metadata !60), !dbg !360
  %257 = load double, double* %6, align 8, !dbg !361
  %258 = load double, double* %7, align 8, !dbg !362
  %259 = load double, double* %8, align 8, !dbg !363
  %260 = call i32 @beta_cont_frac(double %257, double %258, double %259, %struct.gsl_sf_result_struct* %27), !dbg !364
  store i32 %260, i32* %28, align 4, !dbg !360
  call void @llvm.dbg.declare(metadata i32* %29, metadata !365, metadata !60), !dbg !366
  %261 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !367
  %262 = load double, double* %261, align 8, !dbg !367
  %263 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !368
  %264 = load double, double* %263, align 8, !dbg !368
  %265 = fmul double %262, %264, !dbg !369
  %266 = load double, double* %6, align 8, !dbg !370
  %267 = fdiv double %265, %266, !dbg !371
  %268 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !372
  %269 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %268, i32 0, i32 0, !dbg !373
  store double %267, double* %269, align 8, !dbg !374
  %270 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !375
  %271 = load double, double* %270, align 8, !dbg !375
  %272 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !376
  %273 = load double, double* %272, align 8, !dbg !376
  %274 = fmul double %271, %273, !dbg !377
  %275 = call double @fabs(double %274) #1, !dbg !378
  %276 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !379
  %277 = load double, double* %276, align 8, !dbg !379
  %278 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !380
  %279 = load double, double* %278, align 8, !dbg !380
  %280 = fmul double %277, %279, !dbg !381
  %281 = call double @fabs(double %280) #1, !dbg !382
  %282 = fadd double %275, %281, !dbg !384
  %283 = load double, double* %6, align 8, !dbg !385
  %284 = fdiv double %282, %283, !dbg !386
  %285 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !387
  %286 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %285, i32 0, i32 1, !dbg !388
  store double %284, double* %286, align 8, !dbg !389
  %287 = load i32, i32* %26, align 4, !dbg !390
  %288 = icmp ne i32 %287, 0, !dbg !390
  br i1 %288, label %289, label %291, !dbg !390

; <label>:289:                                    ; preds = %256
  %290 = load i32, i32* %26, align 4, !dbg !391
  br label %299, !dbg !391

; <label>:291:                                    ; preds = %256
  %292 = load i32, i32* %28, align 4, !dbg !392
  %293 = icmp ne i32 %292, 0, !dbg !392
  br i1 %293, label %294, label %296, !dbg !392

; <label>:294:                                    ; preds = %291
  %295 = load i32, i32* %28, align 4, !dbg !394
  br label %297, !dbg !394

; <label>:296:                                    ; preds = %291
  br label %297, !dbg !396

; <label>:297:                                    ; preds = %296, %294
  %298 = phi i32 [ %295, %294 ], [ 0, %296 ], !dbg !398
  br label %299, !dbg !398

; <label>:299:                                    ; preds = %297, %289
  %300 = phi i32 [ %290, %289 ], [ %298, %297 ], !dbg !400
  store i32 %300, i32* %29, align 4, !dbg !402
  %301 = load i32, i32* %29, align 4, !dbg !403
  %302 = icmp eq i32 %301, 0, !dbg !405
  br i1 %302, label %303, label %313, !dbg !406

; <label>:303:                                    ; preds = %299
  %304 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !407
  %305 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %304, i32 0, i32 0, !dbg !407
  %306 = load double, double* %305, align 8, !dbg !407
  %307 = call double @fabs(double %306) #1, !dbg !407
  %308 = fcmp olt double %307, 0x10000000000000, !dbg !407
  br i1 %308, label %309, label %312, !dbg !410

; <label>:309:                                    ; preds = %303
  br label %310, !dbg !411, !llvm.loop !413

; <label>:310:                                    ; preds = %309
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 173, i32 15), !dbg !414
  store i32 15, i32* %5, align 4, !dbg !414
  br label %398, !dbg !414
                                                  ; No predecessors!
  br label %312, !dbg !417

; <label>:312:                                    ; preds = %311, %303
  br label %313, !dbg !419

; <label>:313:                                    ; preds = %312, %299
  %314 = load i32, i32* %29, align 4, !dbg !420
  store i32 %314, i32* %5, align 4, !dbg !421
  br label %398, !dbg !421

; <label>:315:                                    ; preds = %246
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %30, metadata !422, metadata !60), !dbg !424
  call void @llvm.dbg.declare(metadata i32* %31, metadata !425, metadata !60), !dbg !426
  %316 = load double, double* %7, align 8, !dbg !427
  %317 = load double, double* %6, align 8, !dbg !428
  %318 = load double, double* %8, align 8, !dbg !429
  %319 = fsub double 1.000000e+00, %318, !dbg !430
  %320 = call i32 @beta_cont_frac(double %316, double %317, double %319, %struct.gsl_sf_result_struct* %30), !dbg !431
  store i32 %320, i32* %31, align 4, !dbg !426
  call void @llvm.dbg.declare(metadata i32* %32, metadata !432, metadata !60), !dbg !433
  call void @llvm.dbg.declare(metadata double* %33, metadata !434, metadata !60), !dbg !435
  %321 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !436
  %322 = load double, double* %321, align 8, !dbg !436
  %323 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !437
  %324 = load double, double* %323, align 8, !dbg !437
  %325 = fmul double %322, %324, !dbg !438
  %326 = load double, double* %7, align 8, !dbg !439
  %327 = fdiv double %325, %326, !dbg !440
  store double %327, double* %33, align 8, !dbg !435
  %328 = load double, double* %33, align 8, !dbg !441
  %329 = fsub double 1.000000e+00, %328, !dbg !442
  %330 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !443
  %331 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %330, i32 0, i32 0, !dbg !444
  store double %329, double* %331, align 8, !dbg !445
  %332 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !446
  %333 = load double, double* %332, align 8, !dbg !446
  %334 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !447
  %335 = load double, double* %334, align 8, !dbg !447
  %336 = fmul double %333, %335, !dbg !448
  %337 = call double @fabs(double %336) #1, !dbg !449
  %338 = load double, double* %7, align 8, !dbg !450
  %339 = fdiv double %337, %338, !dbg !451
  %340 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !452
  %341 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %340, i32 0, i32 1, !dbg !453
  store double %339, double* %341, align 8, !dbg !454
  %342 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !455
  %343 = load double, double* %342, align 8, !dbg !455
  %344 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !456
  %345 = load double, double* %344, align 8, !dbg !456
  %346 = fmul double %343, %345, !dbg !457
  %347 = call double @fabs(double %346) #1, !dbg !458
  %348 = load double, double* %7, align 8, !dbg !459
  %349 = fdiv double %347, %348, !dbg !460
  %350 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !461
  %351 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %350, i32 0, i32 1, !dbg !462
  %352 = load double, double* %351, align 8, !dbg !463
  %353 = fadd double %352, %349, !dbg !463
  store double %353, double* %351, align 8, !dbg !463
  %354 = load double, double* %33, align 8, !dbg !464
  %355 = call double @fabs(double %354) #1, !dbg !465
  %356 = fadd double 1.000000e+00, %355, !dbg !466
  %357 = fmul double 0x3CC0000000000000, %356, !dbg !467
  %358 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !468
  %359 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %358, i32 0, i32 1, !dbg !469
  %360 = load double, double* %359, align 8, !dbg !470
  %361 = fadd double %360, %357, !dbg !470
  store double %361, double* %359, align 8, !dbg !470
  %362 = load i32, i32* %26, align 4, !dbg !471
  %363 = icmp ne i32 %362, 15, !dbg !473
  br i1 %363, label %364, label %379, !dbg !474

; <label>:364:                                    ; preds = %315
  %365 = load i32, i32* %26, align 4, !dbg !475
  %366 = icmp ne i32 %365, 0, !dbg !475
  br i1 %366, label %367, label %369, !dbg !475

; <label>:367:                                    ; preds = %364
  %368 = load i32, i32* %26, align 4, !dbg !477
  br label %377, !dbg !477

; <label>:369:                                    ; preds = %364
  %370 = load i32, i32* %31, align 4, !dbg !479
  %371 = icmp ne i32 %370, 0, !dbg !479
  br i1 %371, label %372, label %374, !dbg !479

; <label>:372:                                    ; preds = %369
  %373 = load i32, i32* %31, align 4, !dbg !481
  br label %375, !dbg !481

; <label>:374:                                    ; preds = %369
  br label %375, !dbg !483

; <label>:375:                                    ; preds = %374, %372
  %376 = phi i32 [ %373, %372 ], [ 0, %374 ], !dbg !485
  br label %377, !dbg !485

; <label>:377:                                    ; preds = %375, %367
  %378 = phi i32 [ %368, %367 ], [ %376, %375 ], !dbg !487
  store i32 %378, i32* %32, align 4, !dbg !489
  br label %381, !dbg !490

; <label>:379:                                    ; preds = %315
  %380 = load i32, i32* %31, align 4, !dbg !491
  store i32 %380, i32* %32, align 4, !dbg !493
  br label %381

; <label>:381:                                    ; preds = %379, %377
  %382 = load i32, i32* %32, align 4, !dbg !494
  %383 = icmp eq i32 %382, 0, !dbg !496
  br i1 %383, label %384, label %394, !dbg !497

; <label>:384:                                    ; preds = %381
  %385 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !498
  %386 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %385, i32 0, i32 0, !dbg !498
  %387 = load double, double* %386, align 8, !dbg !498
  %388 = call double @fabs(double %387) #1, !dbg !498
  %389 = fcmp olt double %388, 0x10000000000000, !dbg !498
  br i1 %389, label %390, label %393, !dbg !501

; <label>:390:                                    ; preds = %384
  br label %391, !dbg !502, !llvm.loop !504

; <label>:391:                                    ; preds = %390
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 195, i32 15), !dbg !505
  store i32 15, i32* %5, align 4, !dbg !505
  br label %398, !dbg !505
                                                  ; No predecessors!
  br label %393, !dbg !508

; <label>:393:                                    ; preds = %392, %384
  br label %394, !dbg !510

; <label>:394:                                    ; preds = %393, %381
  %395 = load i32, i32* %32, align 4, !dbg !511
  store i32 %395, i32* %5, align 4, !dbg !512
  br label %398, !dbg !512

; <label>:396:                                    ; preds = %79
  br label %397

; <label>:397:                                    ; preds = %396, %64
  br label %398

; <label>:398:                                    ; preds = %45, %62, %77, %83, %91, %172, %175, %244, %310, %313, %391, %394, %397, %47
  %399 = load i32, i32* %5, align 4, !dbg !513
  ret i32 %399, !dbg !513
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal double @isnegint(double) #0 !dbg !514 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !517, metadata !60), !dbg !518
  %3 = load double, double* %2, align 8, !dbg !519
  %4 = fcmp olt double %3, 0.000000e+00, !dbg !520
  br i1 %4, label %5, label %10, !dbg !521

; <label>:5:                                      ; preds = %1
  %6 = load double, double* %2, align 8, !dbg !522
  %7 = load double, double* %2, align 8, !dbg !524
  %8 = call double @floor(double %7) #1, !dbg !525
  %9 = fcmp oeq double %6, %8, !dbg !526
  br label %10

; <label>:10:                                     ; preds = %5, %1
  %11 = phi i1 [ false, %1 ], [ %9, %5 ]
  %12 = zext i1 %11 to i32, !dbg !527
  %13 = sitofp i32 %12 to double, !dbg !529
  ret double %13, !dbg !530
}

declare i32 @gsl_sf_hyperg_2F1_e(double, double, double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_beta_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare i32 @gsl_sf_lnbeta_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_log_1plusx_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_log_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @beta_cont_frac(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !531 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !532, metadata !60), !dbg !533
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !534, metadata !60), !dbg !535
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !536, metadata !60), !dbg !537
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !538, metadata !60), !dbg !539
  call void @llvm.dbg.declare(metadata i32* %10, metadata !540, metadata !60), !dbg !543
  store i32 512, i32* %10, align 4, !dbg !543
  call void @llvm.dbg.declare(metadata double* %11, metadata !544, metadata !60), !dbg !545
  store double 0x20000000000000, double* %11, align 8, !dbg !545
  call void @llvm.dbg.declare(metadata i32* %12, metadata !546, metadata !60), !dbg !547
  store i32 0, i32* %12, align 4, !dbg !547
  call void @llvm.dbg.declare(metadata double* %13, metadata !548, metadata !60), !dbg !549
  call void @llvm.dbg.declare(metadata double* %14, metadata !550, metadata !60), !dbg !551
  store double 1.000000e+00, double* %14, align 8, !dbg !551
  call void @llvm.dbg.declare(metadata double* %15, metadata !552, metadata !60), !dbg !553
  %19 = load double, double* %6, align 8, !dbg !554
  %20 = load double, double* %7, align 8, !dbg !555
  %21 = fadd double %19, %20, !dbg !556
  %22 = load double, double* %8, align 8, !dbg !557
  %23 = fmul double %21, %22, !dbg !558
  %24 = load double, double* %6, align 8, !dbg !559
  %25 = fadd double %24, 1.000000e+00, !dbg !560
  %26 = fdiv double %23, %25, !dbg !561
  %27 = fsub double 1.000000e+00, %26, !dbg !562
  store double %27, double* %15, align 8, !dbg !553
  %28 = load double, double* %15, align 8, !dbg !563
  %29 = call double @fabs(double %28) #1, !dbg !565
  %30 = fcmp olt double %29, 0x20000000000000, !dbg !566
  br i1 %30, label %31, label %32, !dbg !567

; <label>:31:                                     ; preds = %4
  store double 0x20000000000000, double* %15, align 8, !dbg !568
  br label %32, !dbg !570

; <label>:32:                                     ; preds = %31, %4
  %33 = load double, double* %15, align 8, !dbg !571
  %34 = fdiv double 1.000000e+00, %33, !dbg !572
  store double %34, double* %15, align 8, !dbg !573
  %35 = load double, double* %15, align 8, !dbg !574
  store double %35, double* %13, align 8, !dbg !575
  br label %36, !dbg !576

; <label>:36:                                     ; preds = %148, %32
  %37 = load i32, i32* %12, align 4, !dbg !577
  %38 = icmp ult i32 %37, 512, !dbg !579
  br i1 %38, label %39, label %151, !dbg !580

; <label>:39:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata i32* %16, metadata !581, metadata !60), !dbg !583
  %40 = load i32, i32* %12, align 4, !dbg !584
  %41 = add i32 %40, 1, !dbg !585
  store i32 %41, i32* %16, align 4, !dbg !583
  call void @llvm.dbg.declare(metadata double* %17, metadata !586, metadata !60), !dbg !587
  %42 = load i32, i32* %16, align 4, !dbg !588
  %43 = sitofp i32 %42 to double, !dbg !588
  %44 = load double, double* %7, align 8, !dbg !589
  %45 = load i32, i32* %16, align 4, !dbg !590
  %46 = sitofp i32 %45 to double, !dbg !590
  %47 = fsub double %44, %46, !dbg !591
  %48 = fmul double %43, %47, !dbg !592
  %49 = load double, double* %8, align 8, !dbg !593
  %50 = fmul double %48, %49, !dbg !594
  %51 = load double, double* %6, align 8, !dbg !595
  %52 = fsub double %51, 1.000000e+00, !dbg !596
  %53 = load i32, i32* %16, align 4, !dbg !597
  %54 = mul nsw i32 2, %53, !dbg !598
  %55 = sitofp i32 %54 to double, !dbg !599
  %56 = fadd double %52, %55, !dbg !600
  %57 = load double, double* %6, align 8, !dbg !601
  %58 = load i32, i32* %16, align 4, !dbg !602
  %59 = mul nsw i32 2, %58, !dbg !603
  %60 = sitofp i32 %59 to double, !dbg !604
  %61 = fadd double %57, %60, !dbg !605
  %62 = fmul double %56, %61, !dbg !606
  %63 = fdiv double %50, %62, !dbg !607
  store double %63, double* %17, align 8, !dbg !587
  call void @llvm.dbg.declare(metadata double* %18, metadata !608, metadata !60), !dbg !609
  %64 = load double, double* %17, align 8, !dbg !610
  %65 = load double, double* %15, align 8, !dbg !611
  %66 = fmul double %64, %65, !dbg !612
  %67 = fadd double 1.000000e+00, %66, !dbg !613
  store double %67, double* %15, align 8, !dbg !614
  %68 = load double, double* %17, align 8, !dbg !615
  %69 = load double, double* %14, align 8, !dbg !616
  %70 = fdiv double %68, %69, !dbg !617
  %71 = fadd double 1.000000e+00, %70, !dbg !618
  store double %71, double* %14, align 8, !dbg !619
  %72 = load double, double* %15, align 8, !dbg !620
  %73 = call double @fabs(double %72) #1, !dbg !622
  %74 = fcmp olt double %73, 0x20000000000000, !dbg !623
  br i1 %74, label %75, label %76, !dbg !624

; <label>:75:                                     ; preds = %39
  store double 0x20000000000000, double* %15, align 8, !dbg !625
  br label %76, !dbg !627

; <label>:76:                                     ; preds = %75, %39
  %77 = load double, double* %14, align 8, !dbg !628
  %78 = call double @fabs(double %77) #1, !dbg !630
  %79 = fcmp olt double %78, 0x20000000000000, !dbg !631
  br i1 %79, label %80, label %81, !dbg !632

; <label>:80:                                     ; preds = %76
  store double 0x20000000000000, double* %14, align 8, !dbg !633
  br label %81, !dbg !635

; <label>:81:                                     ; preds = %80, %76
  %82 = load double, double* %15, align 8, !dbg !636
  %83 = fdiv double 1.000000e+00, %82, !dbg !637
  store double %83, double* %15, align 8, !dbg !638
  %84 = load double, double* %15, align 8, !dbg !639
  %85 = load double, double* %14, align 8, !dbg !640
  %86 = fmul double %84, %85, !dbg !641
  store double %86, double* %18, align 8, !dbg !642
  %87 = load double, double* %18, align 8, !dbg !643
  %88 = load double, double* %13, align 8, !dbg !644
  %89 = fmul double %88, %87, !dbg !644
  store double %89, double* %13, align 8, !dbg !644
  %90 = load double, double* %6, align 8, !dbg !645
  %91 = load i32, i32* %16, align 4, !dbg !646
  %92 = sitofp i32 %91 to double, !dbg !646
  %93 = fadd double %90, %92, !dbg !647
  %94 = fsub double -0.000000e+00, %93, !dbg !648
  %95 = load double, double* %6, align 8, !dbg !649
  %96 = load double, double* %7, align 8, !dbg !650
  %97 = fadd double %95, %96, !dbg !651
  %98 = load i32, i32* %16, align 4, !dbg !652
  %99 = sitofp i32 %98 to double, !dbg !652
  %100 = fadd double %97, %99, !dbg !653
  %101 = fmul double %94, %100, !dbg !654
  %102 = load double, double* %8, align 8, !dbg !655
  %103 = fmul double %101, %102, !dbg !656
  %104 = load double, double* %6, align 8, !dbg !657
  %105 = load i32, i32* %16, align 4, !dbg !658
  %106 = mul nsw i32 2, %105, !dbg !659
  %107 = sitofp i32 %106 to double, !dbg !660
  %108 = fadd double %104, %107, !dbg !661
  %109 = load double, double* %6, align 8, !dbg !662
  %110 = load i32, i32* %16, align 4, !dbg !663
  %111 = mul nsw i32 2, %110, !dbg !664
  %112 = sitofp i32 %111 to double, !dbg !665
  %113 = fadd double %109, %112, !dbg !666
  %114 = fadd double %113, 1.000000e+00, !dbg !667
  %115 = fmul double %108, %114, !dbg !668
  %116 = fdiv double %103, %115, !dbg !669
  store double %116, double* %17, align 8, !dbg !670
  %117 = load double, double* %17, align 8, !dbg !671
  %118 = load double, double* %15, align 8, !dbg !672
  %119 = fmul double %117, %118, !dbg !673
  %120 = fadd double 1.000000e+00, %119, !dbg !674
  store double %120, double* %15, align 8, !dbg !675
  %121 = load double, double* %17, align 8, !dbg !676
  %122 = load double, double* %14, align 8, !dbg !677
  %123 = fdiv double %121, %122, !dbg !678
  %124 = fadd double 1.000000e+00, %123, !dbg !679
  store double %124, double* %14, align 8, !dbg !680
  %125 = load double, double* %15, align 8, !dbg !681
  %126 = call double @fabs(double %125) #1, !dbg !683
  %127 = fcmp olt double %126, 0x20000000000000, !dbg !684
  br i1 %127, label %128, label %129, !dbg !685

; <label>:128:                                    ; preds = %81
  store double 0x20000000000000, double* %15, align 8, !dbg !686
  br label %129, !dbg !688

; <label>:129:                                    ; preds = %128, %81
  %130 = load double, double* %14, align 8, !dbg !689
  %131 = call double @fabs(double %130) #1, !dbg !691
  %132 = fcmp olt double %131, 0x20000000000000, !dbg !692
  br i1 %132, label %133, label %134, !dbg !693

; <label>:133:                                    ; preds = %129
  store double 0x20000000000000, double* %14, align 8, !dbg !694
  br label %134, !dbg !696

; <label>:134:                                    ; preds = %133, %129
  %135 = load double, double* %15, align 8, !dbg !697
  %136 = fdiv double 1.000000e+00, %135, !dbg !698
  store double %136, double* %15, align 8, !dbg !699
  %137 = load double, double* %15, align 8, !dbg !700
  %138 = load double, double* %14, align 8, !dbg !701
  %139 = fmul double %137, %138, !dbg !702
  store double %139, double* %18, align 8, !dbg !703
  %140 = load double, double* %18, align 8, !dbg !704
  %141 = load double, double* %13, align 8, !dbg !705
  %142 = fmul double %141, %140, !dbg !705
  store double %142, double* %13, align 8, !dbg !705
  %143 = load double, double* %18, align 8, !dbg !706
  %144 = fsub double %143, 1.000000e+00, !dbg !708
  %145 = call double @fabs(double %144) #1, !dbg !709
  %146 = fcmp olt double %145, 0x3CC0000000000000, !dbg !710
  br i1 %146, label %147, label %148, !dbg !711

; <label>:147:                                    ; preds = %134
  br label %151, !dbg !712

; <label>:148:                                    ; preds = %134
  %149 = load i32, i32* %12, align 4, !dbg !714
  %150 = add i32 %149, 1, !dbg !714
  store i32 %150, i32* %12, align 4, !dbg !714
  br label %36, !dbg !715, !llvm.loop !717

; <label>:151:                                    ; preds = %147, %36
  %152 = load double, double* %13, align 8, !dbg !718
  %153 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !719
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %153, i32 0, i32 0, !dbg !720
  store double %152, double* %154, align 8, !dbg !721
  %155 = load i32, i32* %12, align 4, !dbg !722
  %156 = uitofp i32 %155 to double, !dbg !722
  %157 = fmul double %156, 4.000000e+00, !dbg !723
  %158 = fmul double %157, 0x3CB0000000000000, !dbg !724
  %159 = load double, double* %13, align 8, !dbg !725
  %160 = call double @fabs(double %159) #1, !dbg !726
  %161 = fmul double %158, %160, !dbg !727
  %162 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !728
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %162, i32 0, i32 1, !dbg !729
  store double %161, double* %163, align 8, !dbg !730
  %164 = load i32, i32* %12, align 4, !dbg !731
  %165 = icmp uge i32 %164, 512, !dbg !733
  br i1 %165, label %166, label %169, !dbg !734

; <label>:166:                                    ; preds = %151
  br label %167, !dbg !735, !llvm.loop !736

; <label>:167:                                    ; preds = %166
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 97, i32 11), !dbg !737
  store i32 11, i32* %5, align 4, !dbg !737
  br label %170, !dbg !737
                                                  ; No predecessors!
  br label %170, !dbg !740

; <label>:169:                                    ; preds = %151
  store i32 0, i32* %5, align 4, !dbg !742
  br label %170, !dbg !742

; <label>:170:                                    ; preds = %167, %169, %168
  %171 = load i32, i32* %5, align 4, !dbg !743
  ret i32 %171, !dbg !743
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_beta_inc(double, double, double) #0 !dbg !744 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !747, metadata !60), !dbg !748
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !749, metadata !60), !dbg !750
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !751, metadata !60), !dbg !752
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !753, metadata !60), !dbg !754
  call void @llvm.dbg.declare(metadata i32* %9, metadata !755, metadata !60), !dbg !754
  %10 = load double, double* %5, align 8, !dbg !754
  %11 = load double, double* %6, align 8, !dbg !754
  %12 = load double, double* %7, align 8, !dbg !754
  %13 = call i32 @gsl_sf_beta_inc_e(double %10, double %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !754
  store i32 %13, i32* %9, align 4, !dbg !754
  %14 = load i32, i32* %9, align 4, !dbg !756
  %15 = icmp ne i32 %14, 0, !dbg !756
  br i1 %15, label %16, label %22, !dbg !754

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !758, !llvm.loop !761

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !763
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 209, i32 %18), !dbg !763
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !763
  %20 = load double, double* %19, align 8, !dbg !763
  store double %20, double* %4, align 8, !dbg !763
  br label %25, !dbg !763
                                                  ; No predecessors!
  br label %22, !dbg !766

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !768
  %24 = load double, double* %23, align 8, !dbg !768
  store double %24, double* %4, align 8, !dbg !768
  br label %25, !dbg !768

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !770
  ret double %26, !dbg !770
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

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
!1 = !DIFile(filename: "beta_inc.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_beta_inc_e", scope: !1, file: !1, line: 107, type: !46, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49, !49, !51}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !53, line: 41, baseType: !54)
!53 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !53, line: 37, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !53, line: 38, baseType: !50, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !54, file: !53, line: 39, baseType: !50, size: 64, align: 64, offset: 64)
!58 = !{}
!59 = !DILocalVariable(name: "a", arg: 1, scope: !45, file: !1, line: 108, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 108, column: 16, scope: !45)
!62 = !DILocalVariable(name: "b", arg: 2, scope: !45, file: !1, line: 109, type: !49)
!63 = !DILocation(line: 109, column: 16, scope: !45)
!64 = !DILocalVariable(name: "x", arg: 3, scope: !45, file: !1, line: 110, type: !49)
!65 = !DILocation(line: 110, column: 16, scope: !45)
!66 = !DILocalVariable(name: "result", arg: 4, scope: !45, file: !1, line: 111, type: !51)
!67 = !DILocation(line: 111, column: 19, scope: !45)
!68 = !DILocation(line: 114, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !45, file: !1, line: 114, column: 6)
!70 = !DILocation(line: 114, column: 8, scope: !69)
!71 = !DILocation(line: 114, column: 14, scope: !69)
!72 = !DILocation(line: 114, column: 17, scope: !73)
!73 = !DILexicalBlockFile(scope: !69, file: !1, discriminator: 1)
!74 = !DILocation(line: 114, column: 19, scope: !73)
!75 = !DILocation(line: 114, column: 6, scope: !73)
!76 = !DILocation(line: 115, column: 5, scope: !77)
!77 = distinct !DILexicalBlock(scope: !69, file: !1, line: 114, column: 26)
!78 = distinct !{!78, !76}
!79 = !DILocation(line: 115, column: 5, scope: !80)
!80 = !DILexicalBlockFile(scope: !81, file: !1, discriminator: 1)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 115, column: 5)
!82 = distinct !{!82, !83}
!83 = !DILocation(line: 115, column: 5, scope: !81)
!84 = !DILocation(line: 115, column: 5, scope: !85)
!85 = !DILexicalBlockFile(scope: !86, file: !1, discriminator: 2)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 115, column: 5)
!87 = !DILocation(line: 115, column: 5, scope: !88)
!88 = !DILexicalBlockFile(scope: !81, file: !1, discriminator: 3)
!89 = !DILocation(line: 116, column: 3, scope: !77)
!90 = !DILocation(line: 116, column: 23, scope: !91)
!91 = !DILexicalBlockFile(scope: !92, file: !1, discriminator: 1)
!92 = distinct !DILexicalBlock(scope: !69, file: !1, line: 116, column: 14)
!93 = !DILocation(line: 116, column: 14, scope: !91)
!94 = !DILocation(line: 116, column: 26, scope: !91)
!95 = !DILocation(line: 116, column: 38, scope: !96)
!96 = !DILexicalBlockFile(scope: !92, file: !1, discriminator: 2)
!97 = !DILocation(line: 116, column: 29, scope: !96)
!98 = !DILocation(line: 116, column: 14, scope: !96)
!99 = !DILocation(line: 117, column: 5, scope: !100)
!100 = distinct !DILexicalBlock(scope: !92, file: !1, line: 116, column: 42)
!101 = distinct !{!101, !99}
!102 = !DILocation(line: 117, column: 5, scope: !103)
!103 = !DILexicalBlockFile(scope: !104, file: !1, discriminator: 1)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 117, column: 5)
!105 = distinct !{!105, !106}
!106 = !DILocation(line: 117, column: 5, scope: !104)
!107 = !DILocation(line: 117, column: 5, scope: !108)
!108 = !DILexicalBlockFile(scope: !109, file: !1, discriminator: 2)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 117, column: 5)
!110 = !DILocation(line: 117, column: 5, scope: !111)
!111 = !DILexicalBlockFile(scope: !104, file: !1, discriminator: 3)
!112 = !DILocation(line: 118, column: 3, scope: !100)
!113 = !DILocation(line: 118, column: 23, scope: !114)
!114 = !DILexicalBlockFile(scope: !115, file: !1, discriminator: 1)
!115 = distinct !DILexicalBlock(scope: !92, file: !1, line: 118, column: 14)
!116 = !DILocation(line: 118, column: 25, scope: !114)
!117 = !DILocation(line: 118, column: 24, scope: !114)
!118 = !DILocation(line: 118, column: 14, scope: !114)
!119 = !DILocation(line: 119, column: 5, scope: !120)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 118, column: 29)
!121 = distinct !{!121, !119}
!122 = !DILocation(line: 119, column: 5, scope: !123)
!123 = !DILexicalBlockFile(scope: !124, file: !1, discriminator: 1)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 119, column: 5)
!125 = distinct !{!125, !126}
!126 = !DILocation(line: 119, column: 5, scope: !124)
!127 = !DILocation(line: 119, column: 5, scope: !128)
!128 = !DILexicalBlockFile(scope: !129, file: !1, discriminator: 2)
!129 = distinct !DILexicalBlock(scope: !124, file: !1, line: 119, column: 5)
!130 = !DILocation(line: 119, column: 5, scope: !131)
!131 = !DILexicalBlockFile(scope: !124, file: !1, discriminator: 3)
!132 = !DILocation(line: 120, column: 3, scope: !120)
!133 = !DILocation(line: 120, column: 13, scope: !134)
!134 = !DILexicalBlockFile(scope: !135, file: !1, discriminator: 1)
!135 = distinct !DILexicalBlock(scope: !115, file: !1, line: 120, column: 13)
!136 = !DILocation(line: 120, column: 15, scope: !134)
!137 = !DILocation(line: 121, column: 5, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !1, line: 120, column: 23)
!139 = !DILocation(line: 121, column: 13, scope: !138)
!140 = !DILocation(line: 121, column: 17, scope: !138)
!141 = !DILocation(line: 122, column: 5, scope: !138)
!142 = !DILocation(line: 122, column: 13, scope: !138)
!143 = !DILocation(line: 122, column: 17, scope: !138)
!144 = !DILocation(line: 123, column: 5, scope: !138)
!145 = !DILocation(line: 125, column: 11, scope: !146)
!146 = distinct !DILexicalBlock(scope: !135, file: !1, line: 125, column: 11)
!147 = !DILocation(line: 125, column: 13, scope: !146)
!148 = !DILocation(line: 125, column: 11, scope: !135)
!149 = !DILocation(line: 126, column: 5, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 125, column: 21)
!151 = !DILocation(line: 126, column: 13, scope: !150)
!152 = !DILocation(line: 126, column: 17, scope: !150)
!153 = !DILocation(line: 127, column: 5, scope: !150)
!154 = !DILocation(line: 127, column: 13, scope: !150)
!155 = !DILocation(line: 127, column: 17, scope: !150)
!156 = !DILocation(line: 128, column: 5, scope: !150)
!157 = !DILocation(line: 129, column: 14, scope: !158)
!158 = distinct !DILexicalBlock(scope: !146, file: !1, line: 129, column: 14)
!159 = !DILocation(line: 129, column: 16, scope: !158)
!160 = !DILocation(line: 129, column: 21, scope: !158)
!161 = !DILocation(line: 129, column: 24, scope: !162)
!162 = !DILexicalBlockFile(scope: !158, file: !1, discriminator: 1)
!163 = !DILocation(line: 129, column: 26, scope: !162)
!164 = !DILocation(line: 129, column: 14, scope: !162)
!165 = !DILocalVariable(name: "f", scope: !166, file: !1, line: 130, type: !52)
!166 = distinct !DILexicalBlock(scope: !158, file: !1, line: 129, column: 32)
!167 = !DILocation(line: 130, column: 19, scope: !166)
!168 = !DILocalVariable(name: "beta", scope: !166, file: !1, line: 130, type: !52)
!169 = !DILocation(line: 130, column: 22, scope: !166)
!170 = !DILocalVariable(name: "stat", scope: !166, file: !1, line: 131, type: !48)
!171 = !DILocation(line: 131, column: 9, scope: !166)
!172 = !DILocalVariable(name: "stat_f", scope: !166, file: !1, line: 132, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!174 = !DILocation(line: 132, column: 15, scope: !166)
!175 = !DILocation(line: 132, column: 44, scope: !166)
!176 = !DILocation(line: 132, column: 49, scope: !166)
!177 = !DILocation(line: 132, column: 48, scope: !166)
!178 = !DILocation(line: 132, column: 52, scope: !166)
!179 = !DILocation(line: 132, column: 53, scope: !166)
!180 = !DILocation(line: 132, column: 57, scope: !166)
!181 = !DILocation(line: 132, column: 24, scope: !166)
!182 = !DILocalVariable(name: "stat_beta", scope: !166, file: !1, line: 133, type: !173)
!183 = !DILocation(line: 133, column: 15, scope: !166)
!184 = !DILocation(line: 133, column: 41, scope: !166)
!185 = !DILocation(line: 133, column: 44, scope: !166)
!186 = !DILocation(line: 133, column: 27, scope: !166)
!187 = !DILocalVariable(name: "prefactor", scope: !166, file: !1, line: 134, type: !50)
!188 = !DILocation(line: 134, column: 12, scope: !166)
!189 = !DILocation(line: 134, column: 29, scope: !166)
!190 = !DILocation(line: 134, column: 32, scope: !166)
!191 = !DILocation(line: 134, column: 25, scope: !166)
!192 = !DILocation(line: 134, column: 37, scope: !166)
!193 = !DILocation(line: 134, column: 35, scope: !166)
!194 = !DILocation(line: 135, column: 19, scope: !166)
!195 = !DILocation(line: 135, column: 33, scope: !166)
!196 = !DILocation(line: 135, column: 29, scope: !166)
!197 = !DILocation(line: 135, column: 44, scope: !166)
!198 = !DILocation(line: 135, column: 37, scope: !166)
!199 = !DILocation(line: 135, column: 5, scope: !166)
!200 = !DILocation(line: 135, column: 13, scope: !166)
!201 = !DILocation(line: 135, column: 17, scope: !166)
!202 = !DILocation(line: 136, column: 24, scope: !166)
!203 = !DILocation(line: 136, column: 19, scope: !166)
!204 = !DILocation(line: 136, column: 39, scope: !166)
!205 = !DILocation(line: 136, column: 35, scope: !166)
!206 = !DILocation(line: 136, column: 54, scope: !166)
!207 = !DILocation(line: 136, column: 44, scope: !208)
!208 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 1)
!209 = !DILocation(line: 136, column: 42, scope: !166)
!210 = !DILocation(line: 136, column: 66, scope: !166)
!211 = !DILocation(line: 136, column: 74, scope: !166)
!212 = !DILocation(line: 136, column: 83, scope: !166)
!213 = !DILocation(line: 136, column: 77, scope: !166)
!214 = !DILocation(line: 136, column: 61, scope: !215)
!215 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 2)
!216 = !DILocation(line: 136, column: 95, scope: !166)
!217 = !DILocation(line: 136, column: 88, scope: !166)
!218 = !DILocation(line: 136, column: 59, scope: !166)
!219 = !DILocation(line: 136, column: 5, scope: !166)
!220 = !DILocation(line: 136, column: 13, scope: !166)
!221 = !DILocation(line: 136, column: 17, scope: !166)
!222 = !DILocation(line: 138, column: 12, scope: !166)
!223 = !DILocation(line: 138, column: 12, scope: !208)
!224 = !DILocation(line: 138, column: 12, scope: !215)
!225 = !DILocation(line: 138, column: 12, scope: !226)
!226 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 3)
!227 = !DILocation(line: 138, column: 12, scope: !228)
!228 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 4)
!229 = !DILocation(line: 138, column: 12, scope: !230)
!230 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 5)
!231 = !DILocation(line: 138, column: 12, scope: !232)
!232 = !DILexicalBlockFile(scope: !166, file: !1, discriminator: 6)
!233 = !DILocation(line: 138, column: 10, scope: !232)
!234 = !DILocation(line: 139, column: 8, scope: !235)
!235 = distinct !DILexicalBlock(scope: !166, file: !1, line: 139, column: 8)
!236 = !DILocation(line: 139, column: 13, scope: !235)
!237 = !DILocation(line: 139, column: 8, scope: !166)
!238 = !DILocation(line: 140, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 140, column: 7)
!240 = distinct !DILexicalBlock(scope: !235, file: !1, line: 139, column: 29)
!241 = !DILocation(line: 140, column: 7, scope: !240)
!242 = !DILocation(line: 140, column: 7, scope: !243)
!243 = !DILexicalBlockFile(scope: !239, file: !1, discriminator: 1)
!244 = distinct !{!244, !238}
!245 = !DILocation(line: 140, column: 7, scope: !246)
!246 = !DILexicalBlockFile(scope: !247, file: !1, discriminator: 2)
!247 = distinct !DILexicalBlock(scope: !239, file: !1, line: 140, column: 7)
!248 = !DILocation(line: 140, column: 7, scope: !249)
!249 = !DILexicalBlockFile(scope: !247, file: !1, discriminator: 3)
!250 = !DILocation(line: 141, column: 5, scope: !240)
!251 = !DILocation(line: 142, column: 12, scope: !166)
!252 = !DILocation(line: 142, column: 5, scope: !166)
!253 = !DILocalVariable(name: "ln_beta", scope: !254, file: !1, line: 144, type: !52)
!254 = distinct !DILexicalBlock(scope: !158, file: !1, line: 143, column: 10)
!255 = !DILocation(line: 144, column: 19, scope: !254)
!256 = !DILocalVariable(name: "ln_x", scope: !254, file: !1, line: 145, type: !52)
!257 = !DILocation(line: 145, column: 19, scope: !254)
!258 = !DILocalVariable(name: "ln_1mx", scope: !254, file: !1, line: 146, type: !52)
!259 = !DILocation(line: 146, column: 19, scope: !254)
!260 = !DILocalVariable(name: "prefactor", scope: !254, file: !1, line: 147, type: !52)
!261 = !DILocation(line: 147, column: 19, scope: !254)
!262 = !DILocalVariable(name: "stat_ln_beta", scope: !254, file: !1, line: 148, type: !173)
!263 = !DILocation(line: 148, column: 15, scope: !254)
!264 = !DILocation(line: 148, column: 46, scope: !254)
!265 = !DILocation(line: 148, column: 49, scope: !254)
!266 = !DILocation(line: 148, column: 30, scope: !254)
!267 = !DILocalVariable(name: "stat_ln_1mx", scope: !254, file: !1, line: 149, type: !173)
!268 = !DILocation(line: 149, column: 15, scope: !254)
!269 = !DILocation(line: 149, column: 50, scope: !254)
!270 = !DILocation(line: 149, column: 49, scope: !254)
!271 = !DILocation(line: 149, column: 29, scope: !254)
!272 = !DILocalVariable(name: "stat_ln_x", scope: !254, file: !1, line: 150, type: !173)
!273 = !DILocation(line: 150, column: 15, scope: !254)
!274 = !DILocation(line: 150, column: 40, scope: !254)
!275 = !DILocation(line: 150, column: 27, scope: !254)
!276 = !DILocalVariable(name: "stat_ln", scope: !254, file: !1, line: 151, type: !173)
!277 = !DILocation(line: 151, column: 15, scope: !254)
!278 = !DILocation(line: 151, column: 25, scope: !254)
!279 = !DILocation(line: 151, column: 25, scope: !280)
!280 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 1)
!281 = !DILocation(line: 151, column: 25, scope: !282)
!282 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 2)
!283 = !DILocation(line: 151, column: 25, scope: !284)
!284 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 3)
!285 = !DILocation(line: 151, column: 25, scope: !286)
!286 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 4)
!287 = !DILocation(line: 151, column: 25, scope: !288)
!288 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 5)
!289 = !DILocation(line: 151, column: 25, scope: !290)
!290 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 6)
!291 = !DILocation(line: 151, column: 25, scope: !292)
!292 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 7)
!293 = !DILocation(line: 151, column: 25, scope: !294)
!294 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 8)
!295 = !DILocation(line: 151, column: 25, scope: !296)
!296 = !DILexicalBlockFile(scope: !254, file: !1, discriminator: 9)
!297 = !DILocation(line: 151, column: 15, scope: !296)
!298 = !DILocalVariable(name: "ln_pre_val", scope: !254, file: !1, line: 153, type: !49)
!299 = !DILocation(line: 153, column: 18, scope: !254)
!300 = !DILocation(line: 153, column: 40, scope: !254)
!301 = !DILocation(line: 153, column: 31, scope: !254)
!302 = !DILocation(line: 153, column: 46, scope: !254)
!303 = !DILocation(line: 153, column: 55, scope: !254)
!304 = !DILocation(line: 153, column: 48, scope: !254)
!305 = !DILocation(line: 153, column: 44, scope: !254)
!306 = !DILocation(line: 153, column: 61, scope: !254)
!307 = !DILocation(line: 153, column: 72, scope: !254)
!308 = !DILocation(line: 153, column: 63, scope: !254)
!309 = !DILocation(line: 153, column: 59, scope: !254)
!310 = !DILocalVariable(name: "ln_pre_err", scope: !254, file: !1, line: 154, type: !49)
!311 = !DILocation(line: 154, column: 18, scope: !254)
!312 = !DILocation(line: 154, column: 40, scope: !254)
!313 = !DILocation(line: 154, column: 51, scope: !254)
!314 = !DILocation(line: 154, column: 58, scope: !254)
!315 = !DILocation(line: 154, column: 52, scope: !254)
!316 = !DILocation(line: 154, column: 46, scope: !254)
!317 = !DILocation(line: 154, column: 44, scope: !254)
!318 = !DILocation(line: 154, column: 70, scope: !254)
!319 = !DILocation(line: 154, column: 79, scope: !254)
!320 = !DILocation(line: 154, column: 71, scope: !254)
!321 = !DILocation(line: 154, column: 65, scope: !280)
!322 = !DILocation(line: 154, column: 63, scope: !254)
!323 = !DILocalVariable(name: "stat_exp", scope: !254, file: !1, line: 155, type: !173)
!324 = !DILocation(line: 155, column: 15, scope: !254)
!325 = !DILocation(line: 155, column: 43, scope: !254)
!326 = !DILocation(line: 155, column: 55, scope: !254)
!327 = !DILocation(line: 155, column: 26, scope: !254)
!328 = !DILocation(line: 157, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !254, file: !1, line: 157, column: 8)
!330 = !DILocation(line: 157, column: 16, scope: !329)
!331 = !DILocation(line: 157, column: 8, scope: !254)
!332 = !DILocation(line: 158, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !1, line: 157, column: 32)
!334 = !DILocation(line: 158, column: 15, scope: !333)
!335 = !DILocation(line: 158, column: 19, scope: !333)
!336 = !DILocation(line: 159, column: 7, scope: !333)
!337 = !DILocation(line: 159, column: 15, scope: !333)
!338 = !DILocation(line: 159, column: 19, scope: !333)
!339 = !DILocation(line: 160, column: 7, scope: !333)
!340 = distinct !{!340, !339}
!341 = !DILocation(line: 160, column: 7, scope: !342)
!342 = !DILexicalBlockFile(scope: !343, file: !1, discriminator: 1)
!343 = distinct !DILexicalBlock(scope: !333, file: !1, line: 160, column: 7)
!344 = !DILocation(line: 161, column: 5, scope: !333)
!345 = !DILocation(line: 163, column: 8, scope: !346)
!346 = distinct !DILexicalBlock(scope: !254, file: !1, line: 163, column: 8)
!347 = !DILocation(line: 163, column: 13, scope: !346)
!348 = !DILocation(line: 163, column: 15, scope: !346)
!349 = !DILocation(line: 163, column: 23, scope: !346)
!350 = !DILocation(line: 163, column: 25, scope: !346)
!351 = !DILocation(line: 163, column: 24, scope: !346)
!352 = !DILocation(line: 163, column: 26, scope: !346)
!353 = !DILocation(line: 163, column: 21, scope: !346)
!354 = !DILocation(line: 163, column: 10, scope: !346)
!355 = !DILocation(line: 163, column: 8, scope: !254)
!356 = !DILocalVariable(name: "cf", scope: !357, file: !1, line: 165, type: !52)
!357 = distinct !DILexicalBlock(scope: !346, file: !1, line: 163, column: 33)
!358 = !DILocation(line: 165, column: 21, scope: !357)
!359 = !DILocalVariable(name: "stat_cf", scope: !357, file: !1, line: 166, type: !173)
!360 = !DILocation(line: 166, column: 17, scope: !357)
!361 = !DILocation(line: 166, column: 42, scope: !357)
!362 = !DILocation(line: 166, column: 45, scope: !357)
!363 = !DILocation(line: 166, column: 48, scope: !357)
!364 = !DILocation(line: 166, column: 27, scope: !357)
!365 = !DILocalVariable(name: "stat", scope: !357, file: !1, line: 167, type: !48)
!366 = !DILocation(line: 167, column: 11, scope: !357)
!367 = !DILocation(line: 168, column: 31, scope: !357)
!368 = !DILocation(line: 168, column: 40, scope: !357)
!369 = !DILocation(line: 168, column: 35, scope: !357)
!370 = !DILocation(line: 168, column: 46, scope: !357)
!371 = !DILocation(line: 168, column: 44, scope: !357)
!372 = !DILocation(line: 168, column: 7, scope: !357)
!373 = !DILocation(line: 168, column: 15, scope: !357)
!374 = !DILocation(line: 168, column: 19, scope: !357)
!375 = !DILocation(line: 169, column: 37, scope: !357)
!376 = !DILocation(line: 169, column: 46, scope: !357)
!377 = !DILocation(line: 169, column: 41, scope: !357)
!378 = !DILocation(line: 169, column: 22, scope: !357)
!379 = !DILocation(line: 169, column: 68, scope: !357)
!380 = !DILocation(line: 169, column: 77, scope: !357)
!381 = !DILocation(line: 169, column: 72, scope: !357)
!382 = !DILocation(line: 169, column: 53, scope: !383)
!383 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 1)
!384 = !DILocation(line: 169, column: 51, scope: !357)
!385 = !DILocation(line: 169, column: 83, scope: !357)
!386 = !DILocation(line: 169, column: 82, scope: !357)
!387 = !DILocation(line: 169, column: 7, scope: !357)
!388 = !DILocation(line: 169, column: 15, scope: !357)
!389 = !DILocation(line: 169, column: 19, scope: !357)
!390 = !DILocation(line: 171, column: 14, scope: !357)
!391 = !DILocation(line: 171, column: 14, scope: !383)
!392 = !DILocation(line: 171, column: 14, scope: !393)
!393 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 2)
!394 = !DILocation(line: 171, column: 14, scope: !395)
!395 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 3)
!396 = !DILocation(line: 171, column: 14, scope: !397)
!397 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 4)
!398 = !DILocation(line: 171, column: 14, scope: !399)
!399 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 5)
!400 = !DILocation(line: 171, column: 14, scope: !401)
!401 = !DILexicalBlockFile(scope: !357, file: !1, discriminator: 6)
!402 = !DILocation(line: 171, column: 12, scope: !401)
!403 = !DILocation(line: 172, column: 10, scope: !404)
!404 = distinct !DILexicalBlock(scope: !357, file: !1, line: 172, column: 10)
!405 = !DILocation(line: 172, column: 15, scope: !404)
!406 = !DILocation(line: 172, column: 10, scope: !357)
!407 = !DILocation(line: 173, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 173, column: 9)
!409 = distinct !DILexicalBlock(scope: !404, file: !1, line: 172, column: 31)
!410 = !DILocation(line: 173, column: 9, scope: !409)
!411 = !DILocation(line: 173, column: 9, scope: !412)
!412 = !DILexicalBlockFile(scope: !408, file: !1, discriminator: 1)
!413 = distinct !{!413, !407}
!414 = !DILocation(line: 173, column: 9, scope: !415)
!415 = !DILexicalBlockFile(scope: !416, file: !1, discriminator: 2)
!416 = distinct !DILexicalBlock(scope: !408, file: !1, line: 173, column: 9)
!417 = !DILocation(line: 173, column: 9, scope: !418)
!418 = !DILexicalBlockFile(scope: !416, file: !1, discriminator: 3)
!419 = !DILocation(line: 174, column: 7, scope: !409)
!420 = !DILocation(line: 175, column: 14, scope: !357)
!421 = !DILocation(line: 175, column: 7, scope: !357)
!422 = !DILocalVariable(name: "cf", scope: !423, file: !1, line: 179, type: !52)
!423 = distinct !DILexicalBlock(scope: !346, file: !1, line: 177, column: 10)
!424 = !DILocation(line: 179, column: 21, scope: !423)
!425 = !DILocalVariable(name: "stat_cf", scope: !423, file: !1, line: 180, type: !173)
!426 = !DILocation(line: 180, column: 17, scope: !423)
!427 = !DILocation(line: 180, column: 42, scope: !423)
!428 = !DILocation(line: 180, column: 45, scope: !423)
!429 = !DILocation(line: 180, column: 52, scope: !423)
!430 = !DILocation(line: 180, column: 51, scope: !423)
!431 = !DILocation(line: 180, column: 27, scope: !423)
!432 = !DILocalVariable(name: "stat", scope: !423, file: !1, line: 181, type: !48)
!433 = !DILocation(line: 181, column: 11, scope: !423)
!434 = !DILocalVariable(name: "term", scope: !423, file: !1, line: 182, type: !49)
!435 = !DILocation(line: 182, column: 20, scope: !423)
!436 = !DILocation(line: 182, column: 37, scope: !423)
!437 = !DILocation(line: 182, column: 46, scope: !423)
!438 = !DILocation(line: 182, column: 41, scope: !423)
!439 = !DILocation(line: 182, column: 52, scope: !423)
!440 = !DILocation(line: 182, column: 50, scope: !423)
!441 = !DILocation(line: 183, column: 28, scope: !423)
!442 = !DILocation(line: 183, column: 26, scope: !423)
!443 = !DILocation(line: 183, column: 7, scope: !423)
!444 = !DILocation(line: 183, column: 15, scope: !423)
!445 = !DILocation(line: 183, column: 20, scope: !423)
!446 = !DILocation(line: 184, column: 37, scope: !423)
!447 = !DILocation(line: 184, column: 46, scope: !423)
!448 = !DILocation(line: 184, column: 41, scope: !423)
!449 = !DILocation(line: 184, column: 22, scope: !423)
!450 = !DILocation(line: 184, column: 51, scope: !423)
!451 = !DILocation(line: 184, column: 50, scope: !423)
!452 = !DILocation(line: 184, column: 7, scope: !423)
!453 = !DILocation(line: 184, column: 15, scope: !423)
!454 = !DILocation(line: 184, column: 20, scope: !423)
!455 = !DILocation(line: 185, column: 37, scope: !423)
!456 = !DILocation(line: 185, column: 46, scope: !423)
!457 = !DILocation(line: 185, column: 41, scope: !423)
!458 = !DILocation(line: 185, column: 22, scope: !423)
!459 = !DILocation(line: 185, column: 51, scope: !423)
!460 = !DILocation(line: 185, column: 50, scope: !423)
!461 = !DILocation(line: 185, column: 7, scope: !423)
!462 = !DILocation(line: 185, column: 15, scope: !423)
!463 = !DILocation(line: 185, column: 19, scope: !423)
!464 = !DILocation(line: 186, column: 58, scope: !423)
!465 = !DILocation(line: 186, column: 53, scope: !423)
!466 = !DILocation(line: 186, column: 51, scope: !423)
!467 = !DILocation(line: 186, column: 44, scope: !423)
!468 = !DILocation(line: 186, column: 7, scope: !423)
!469 = !DILocation(line: 186, column: 15, scope: !423)
!470 = !DILocation(line: 186, column: 19, scope: !423)
!471 = !DILocation(line: 189, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !423, file: !1, line: 189, column: 11)
!473 = !DILocation(line: 189, column: 20, scope: !472)
!474 = !DILocation(line: 189, column: 11, scope: !423)
!475 = !DILocation(line: 190, column: 16, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !1, line: 189, column: 37)
!477 = !DILocation(line: 190, column: 16, scope: !478)
!478 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 1)
!479 = !DILocation(line: 190, column: 16, scope: !480)
!480 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 2)
!481 = !DILocation(line: 190, column: 16, scope: !482)
!482 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 3)
!483 = !DILocation(line: 190, column: 16, scope: !484)
!484 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 4)
!485 = !DILocation(line: 190, column: 16, scope: !486)
!486 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 5)
!487 = !DILocation(line: 190, column: 16, scope: !488)
!488 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 6)
!489 = !DILocation(line: 190, column: 14, scope: !488)
!490 = !DILocation(line: 191, column: 7, scope: !476)
!491 = !DILocation(line: 192, column: 16, scope: !492)
!492 = distinct !DILexicalBlock(scope: !472, file: !1, line: 191, column: 14)
!493 = !DILocation(line: 192, column: 14, scope: !492)
!494 = !DILocation(line: 194, column: 10, scope: !495)
!495 = distinct !DILexicalBlock(scope: !423, file: !1, line: 194, column: 10)
!496 = !DILocation(line: 194, column: 15, scope: !495)
!497 = !DILocation(line: 194, column: 10, scope: !423)
!498 = !DILocation(line: 195, column: 9, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !1, line: 195, column: 9)
!500 = distinct !DILexicalBlock(scope: !495, file: !1, line: 194, column: 31)
!501 = !DILocation(line: 195, column: 9, scope: !500)
!502 = !DILocation(line: 195, column: 9, scope: !503)
!503 = !DILexicalBlockFile(scope: !499, file: !1, discriminator: 1)
!504 = distinct !{!504, !498}
!505 = !DILocation(line: 195, column: 9, scope: !506)
!506 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 2)
!507 = distinct !DILexicalBlock(scope: !499, file: !1, line: 195, column: 9)
!508 = !DILocation(line: 195, column: 9, scope: !509)
!509 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 3)
!510 = !DILocation(line: 196, column: 7, scope: !500)
!511 = !DILocation(line: 197, column: 14, scope: !423)
!512 = !DILocation(line: 197, column: 7, scope: !423)
!513 = !DILocation(line: 200, column: 1, scope: !45)
!514 = distinct !DISubprogram(name: "isnegint", scope: !1, file: !1, line: 35, type: !515, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!515 = !DISubroutineType(types: !516)
!516 = !{!50, !49}
!517 = !DILocalVariable(name: "x", arg: 1, scope: !514, file: !1, line: 35, type: !49)
!518 = !DILocation(line: 35, column: 24, scope: !514)
!519 = !DILocation(line: 37, column: 11, scope: !514)
!520 = !DILocation(line: 37, column: 13, scope: !514)
!521 = !DILocation(line: 37, column: 18, scope: !514)
!522 = !DILocation(line: 37, column: 22, scope: !523)
!523 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 1)
!524 = !DILocation(line: 37, column: 33, scope: !523)
!525 = !DILocation(line: 37, column: 27, scope: !523)
!526 = !DILocation(line: 37, column: 24, scope: !523)
!527 = !DILocation(line: 37, column: 18, scope: !528)
!528 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 2)
!529 = !DILocation(line: 37, column: 10, scope: !528)
!530 = !DILocation(line: 37, column: 3, scope: !528)
!531 = distinct !DISubprogram(name: "beta_cont_frac", scope: !1, file: !1, line: 42, type: !46, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!532 = !DILocalVariable(name: "a", arg: 1, scope: !531, file: !1, line: 43, type: !49)
!533 = !DILocation(line: 43, column: 16, scope: !531)
!534 = !DILocalVariable(name: "b", arg: 2, scope: !531, file: !1, line: 44, type: !49)
!535 = !DILocation(line: 44, column: 16, scope: !531)
!536 = !DILocalVariable(name: "x", arg: 3, scope: !531, file: !1, line: 45, type: !49)
!537 = !DILocation(line: 45, column: 16, scope: !531)
!538 = !DILocalVariable(name: "result", arg: 4, scope: !531, file: !1, line: 46, type: !51)
!539 = !DILocation(line: 46, column: 19, scope: !531)
!540 = !DILocalVariable(name: "max_iter", scope: !531, file: !1, line: 49, type: !541)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!543 = !DILocation(line: 49, column: 22, scope: !531)
!544 = !DILocalVariable(name: "cutoff", scope: !531, file: !1, line: 50, type: !49)
!545 = !DILocation(line: 50, column: 16, scope: !531)
!546 = !DILocalVariable(name: "iter_count", scope: !531, file: !1, line: 51, type: !542)
!547 = !DILocation(line: 51, column: 16, scope: !531)
!548 = !DILocalVariable(name: "cf", scope: !531, file: !1, line: 52, type: !50)
!549 = !DILocation(line: 52, column: 10, scope: !531)
!550 = !DILocalVariable(name: "num_term", scope: !531, file: !1, line: 55, type: !50)
!551 = !DILocation(line: 55, column: 10, scope: !531)
!552 = !DILocalVariable(name: "den_term", scope: !531, file: !1, line: 56, type: !50)
!553 = !DILocation(line: 56, column: 10, scope: !531)
!554 = !DILocation(line: 56, column: 28, scope: !531)
!555 = !DILocation(line: 56, column: 30, scope: !531)
!556 = !DILocation(line: 56, column: 29, scope: !531)
!557 = !DILocation(line: 56, column: 33, scope: !531)
!558 = !DILocation(line: 56, column: 32, scope: !531)
!559 = !DILocation(line: 56, column: 36, scope: !531)
!560 = !DILocation(line: 56, column: 37, scope: !531)
!561 = !DILocation(line: 56, column: 34, scope: !531)
!562 = !DILocation(line: 56, column: 25, scope: !531)
!563 = !DILocation(line: 57, column: 12, scope: !564)
!564 = distinct !DILexicalBlock(scope: !531, file: !1, line: 57, column: 7)
!565 = !DILocation(line: 57, column: 7, scope: !564)
!566 = !DILocation(line: 57, column: 22, scope: !564)
!567 = !DILocation(line: 57, column: 7, scope: !531)
!568 = !DILocation(line: 57, column: 41, scope: !569)
!569 = !DILexicalBlockFile(scope: !564, file: !1, discriminator: 1)
!570 = !DILocation(line: 57, column: 32, scope: !569)
!571 = !DILocation(line: 58, column: 18, scope: !531)
!572 = !DILocation(line: 58, column: 17, scope: !531)
!573 = !DILocation(line: 58, column: 12, scope: !531)
!574 = !DILocation(line: 59, column: 8, scope: !531)
!575 = !DILocation(line: 59, column: 6, scope: !531)
!576 = !DILocation(line: 61, column: 3, scope: !531)
!577 = !DILocation(line: 61, column: 9, scope: !578)
!578 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 1)
!579 = !DILocation(line: 61, column: 20, scope: !578)
!580 = !DILocation(line: 61, column: 3, scope: !578)
!581 = !DILocalVariable(name: "k", scope: !582, file: !1, line: 62, type: !173)
!582 = distinct !DILexicalBlock(scope: !531, file: !1, line: 61, column: 32)
!583 = !DILocation(line: 62, column: 15, scope: !582)
!584 = !DILocation(line: 62, column: 20, scope: !582)
!585 = !DILocation(line: 62, column: 31, scope: !582)
!586 = !DILocalVariable(name: "coeff", scope: !582, file: !1, line: 63, type: !50)
!587 = !DILocation(line: 63, column: 12, scope: !582)
!588 = !DILocation(line: 63, column: 20, scope: !582)
!589 = !DILocation(line: 63, column: 23, scope: !582)
!590 = !DILocation(line: 63, column: 25, scope: !582)
!591 = !DILocation(line: 63, column: 24, scope: !582)
!592 = !DILocation(line: 63, column: 21, scope: !582)
!593 = !DILocation(line: 63, column: 28, scope: !582)
!594 = !DILocation(line: 63, column: 27, scope: !582)
!595 = !DILocation(line: 63, column: 33, scope: !582)
!596 = !DILocation(line: 63, column: 34, scope: !582)
!597 = !DILocation(line: 63, column: 42, scope: !582)
!598 = !DILocation(line: 63, column: 41, scope: !582)
!599 = !DILocation(line: 63, column: 40, scope: !582)
!600 = !DILocation(line: 63, column: 39, scope: !582)
!601 = !DILocation(line: 63, column: 46, scope: !582)
!602 = !DILocation(line: 63, column: 50, scope: !582)
!603 = !DILocation(line: 63, column: 49, scope: !582)
!604 = !DILocation(line: 63, column: 48, scope: !582)
!605 = !DILocation(line: 63, column: 47, scope: !582)
!606 = !DILocation(line: 63, column: 44, scope: !582)
!607 = !DILocation(line: 63, column: 29, scope: !582)
!608 = !DILocalVariable(name: "delta_frac", scope: !582, file: !1, line: 64, type: !50)
!609 = !DILocation(line: 64, column: 12, scope: !582)
!610 = !DILocation(line: 67, column: 22, scope: !582)
!611 = !DILocation(line: 67, column: 28, scope: !582)
!612 = !DILocation(line: 67, column: 27, scope: !582)
!613 = !DILocation(line: 67, column: 20, scope: !582)
!614 = !DILocation(line: 67, column: 14, scope: !582)
!615 = !DILocation(line: 68, column: 22, scope: !582)
!616 = !DILocation(line: 68, column: 28, scope: !582)
!617 = !DILocation(line: 68, column: 27, scope: !582)
!618 = !DILocation(line: 68, column: 20, scope: !582)
!619 = !DILocation(line: 68, column: 14, scope: !582)
!620 = !DILocation(line: 69, column: 13, scope: !621)
!621 = distinct !DILexicalBlock(scope: !582, file: !1, line: 69, column: 8)
!622 = !DILocation(line: 69, column: 8, scope: !621)
!623 = !DILocation(line: 69, column: 23, scope: !621)
!624 = !DILocation(line: 69, column: 8, scope: !582)
!625 = !DILocation(line: 69, column: 42, scope: !626)
!626 = !DILexicalBlockFile(scope: !621, file: !1, discriminator: 1)
!627 = !DILocation(line: 69, column: 33, scope: !626)
!628 = !DILocation(line: 70, column: 13, scope: !629)
!629 = distinct !DILexicalBlock(scope: !582, file: !1, line: 70, column: 8)
!630 = !DILocation(line: 70, column: 8, scope: !629)
!631 = !DILocation(line: 70, column: 23, scope: !629)
!632 = !DILocation(line: 70, column: 8, scope: !582)
!633 = !DILocation(line: 70, column: 42, scope: !634)
!634 = !DILexicalBlockFile(scope: !629, file: !1, discriminator: 1)
!635 = !DILocation(line: 70, column: 33, scope: !634)
!636 = !DILocation(line: 71, column: 21, scope: !582)
!637 = !DILocation(line: 71, column: 20, scope: !582)
!638 = !DILocation(line: 71, column: 15, scope: !582)
!639 = !DILocation(line: 73, column: 18, scope: !582)
!640 = !DILocation(line: 73, column: 29, scope: !582)
!641 = !DILocation(line: 73, column: 27, scope: !582)
!642 = !DILocation(line: 73, column: 16, scope: !582)
!643 = !DILocation(line: 74, column: 11, scope: !582)
!644 = !DILocation(line: 74, column: 8, scope: !582)
!645 = !DILocation(line: 76, column: 15, scope: !582)
!646 = !DILocation(line: 76, column: 17, scope: !582)
!647 = !DILocation(line: 76, column: 16, scope: !582)
!648 = !DILocation(line: 76, column: 13, scope: !582)
!649 = !DILocation(line: 76, column: 21, scope: !582)
!650 = !DILocation(line: 76, column: 23, scope: !582)
!651 = !DILocation(line: 76, column: 22, scope: !582)
!652 = !DILocation(line: 76, column: 25, scope: !582)
!653 = !DILocation(line: 76, column: 24, scope: !582)
!654 = !DILocation(line: 76, column: 19, scope: !582)
!655 = !DILocation(line: 76, column: 28, scope: !582)
!656 = !DILocation(line: 76, column: 27, scope: !582)
!657 = !DILocation(line: 76, column: 32, scope: !582)
!658 = !DILocation(line: 76, column: 36, scope: !582)
!659 = !DILocation(line: 76, column: 35, scope: !582)
!660 = !DILocation(line: 76, column: 34, scope: !582)
!661 = !DILocation(line: 76, column: 33, scope: !582)
!662 = !DILocation(line: 76, column: 40, scope: !582)
!663 = !DILocation(line: 76, column: 44, scope: !582)
!664 = !DILocation(line: 76, column: 43, scope: !582)
!665 = !DILocation(line: 76, column: 42, scope: !582)
!666 = !DILocation(line: 76, column: 41, scope: !582)
!667 = !DILocation(line: 76, column: 45, scope: !582)
!668 = !DILocation(line: 76, column: 38, scope: !582)
!669 = !DILocation(line: 76, column: 29, scope: !582)
!670 = !DILocation(line: 76, column: 11, scope: !582)
!671 = !DILocation(line: 79, column: 22, scope: !582)
!672 = !DILocation(line: 79, column: 28, scope: !582)
!673 = !DILocation(line: 79, column: 27, scope: !582)
!674 = !DILocation(line: 79, column: 20, scope: !582)
!675 = !DILocation(line: 79, column: 14, scope: !582)
!676 = !DILocation(line: 80, column: 22, scope: !582)
!677 = !DILocation(line: 80, column: 28, scope: !582)
!678 = !DILocation(line: 80, column: 27, scope: !582)
!679 = !DILocation(line: 80, column: 20, scope: !582)
!680 = !DILocation(line: 80, column: 14, scope: !582)
!681 = !DILocation(line: 81, column: 13, scope: !682)
!682 = distinct !DILexicalBlock(scope: !582, file: !1, line: 81, column: 8)
!683 = !DILocation(line: 81, column: 8, scope: !682)
!684 = !DILocation(line: 81, column: 23, scope: !682)
!685 = !DILocation(line: 81, column: 8, scope: !582)
!686 = !DILocation(line: 81, column: 42, scope: !687)
!687 = !DILexicalBlockFile(scope: !682, file: !1, discriminator: 1)
!688 = !DILocation(line: 81, column: 33, scope: !687)
!689 = !DILocation(line: 82, column: 13, scope: !690)
!690 = distinct !DILexicalBlock(scope: !582, file: !1, line: 82, column: 8)
!691 = !DILocation(line: 82, column: 8, scope: !690)
!692 = !DILocation(line: 82, column: 23, scope: !690)
!693 = !DILocation(line: 82, column: 8, scope: !582)
!694 = !DILocation(line: 82, column: 42, scope: !695)
!695 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 1)
!696 = !DILocation(line: 82, column: 33, scope: !695)
!697 = !DILocation(line: 83, column: 20, scope: !582)
!698 = !DILocation(line: 83, column: 19, scope: !582)
!699 = !DILocation(line: 83, column: 14, scope: !582)
!700 = !DILocation(line: 85, column: 18, scope: !582)
!701 = !DILocation(line: 85, column: 27, scope: !582)
!702 = !DILocation(line: 85, column: 26, scope: !582)
!703 = !DILocation(line: 85, column: 16, scope: !582)
!704 = !DILocation(line: 86, column: 11, scope: !582)
!705 = !DILocation(line: 86, column: 8, scope: !582)
!706 = !DILocation(line: 88, column: 13, scope: !707)
!707 = distinct !DILexicalBlock(scope: !582, file: !1, line: 88, column: 8)
!708 = !DILocation(line: 88, column: 23, scope: !707)
!709 = !DILocation(line: 88, column: 8, scope: !707)
!710 = !DILocation(line: 88, column: 29, scope: !707)
!711 = !DILocation(line: 88, column: 8, scope: !582)
!712 = !DILocation(line: 88, column: 52, scope: !713)
!713 = !DILexicalBlockFile(scope: !707, file: !1, discriminator: 1)
!714 = !DILocation(line: 90, column: 5, scope: !582)
!715 = !DILocation(line: 61, column: 3, scope: !716)
!716 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 2)
!717 = distinct !{!717, !576}
!718 = !DILocation(line: 93, column: 17, scope: !531)
!719 = !DILocation(line: 93, column: 3, scope: !531)
!720 = !DILocation(line: 93, column: 11, scope: !531)
!721 = !DILocation(line: 93, column: 15, scope: !531)
!722 = !DILocation(line: 94, column: 17, scope: !531)
!723 = !DILocation(line: 94, column: 28, scope: !531)
!724 = !DILocation(line: 94, column: 34, scope: !531)
!725 = !DILocation(line: 94, column: 59, scope: !531)
!726 = !DILocation(line: 94, column: 54, scope: !531)
!727 = !DILocation(line: 94, column: 52, scope: !531)
!728 = !DILocation(line: 94, column: 3, scope: !531)
!729 = !DILocation(line: 94, column: 11, scope: !531)
!730 = !DILocation(line: 94, column: 15, scope: !531)
!731 = !DILocation(line: 96, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !531, file: !1, line: 96, column: 6)
!733 = !DILocation(line: 96, column: 17, scope: !732)
!734 = !DILocation(line: 96, column: 6, scope: !531)
!735 = !DILocation(line: 97, column: 5, scope: !732)
!736 = distinct !{!736, !735}
!737 = !DILocation(line: 97, column: 5, scope: !738)
!738 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 1)
!739 = distinct !DILexicalBlock(scope: !732, file: !1, line: 97, column: 5)
!740 = !DILocation(line: 97, column: 5, scope: !741)
!741 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 2)
!742 = !DILocation(line: 99, column: 5, scope: !732)
!743 = !DILocation(line: 100, column: 1, scope: !531)
!744 = distinct !DISubprogram(name: "gsl_sf_beta_inc", scope: !1, file: !1, line: 207, type: !745, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!745 = !DISubroutineType(types: !746)
!746 = !{!50, !49, !49, !49}
!747 = !DILocalVariable(name: "a", arg: 1, scope: !744, file: !1, line: 207, type: !49)
!748 = !DILocation(line: 207, column: 37, scope: !744)
!749 = !DILocalVariable(name: "b", arg: 2, scope: !744, file: !1, line: 207, type: !49)
!750 = !DILocation(line: 207, column: 53, scope: !744)
!751 = !DILocalVariable(name: "x", arg: 3, scope: !744, file: !1, line: 207, type: !49)
!752 = !DILocation(line: 207, column: 69, scope: !744)
!753 = !DILocalVariable(name: "result", scope: !744, file: !1, line: 209, type: !52)
!754 = !DILocation(line: 209, column: 3, scope: !744)
!755 = !DILocalVariable(name: "status", scope: !744, file: !1, line: 209, type: !48)
!756 = !DILocation(line: 209, column: 3, scope: !757)
!757 = distinct !DILexicalBlock(scope: !744, file: !1, line: 209, column: 3)
!758 = !DILocation(line: 209, column: 3, scope: !759)
!759 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 1)
!760 = distinct !DILexicalBlock(scope: !757, file: !1, line: 209, column: 3)
!761 = distinct !{!761, !762}
!762 = !DILocation(line: 209, column: 3, scope: !760)
!763 = !DILocation(line: 209, column: 3, scope: !764)
!764 = !DILexicalBlockFile(scope: !765, file: !1, discriminator: 2)
!765 = distinct !DILexicalBlock(scope: !760, file: !1, line: 209, column: 3)
!766 = !DILocation(line: 209, column: 3, scope: !767)
!767 = !DILexicalBlockFile(scope: !760, file: !1, discriminator: 3)
!768 = !DILocation(line: 209, column: 3, scope: !769)
!769 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 4)
!770 = !DILocation(line: 210, column: 1, scope: !744)
