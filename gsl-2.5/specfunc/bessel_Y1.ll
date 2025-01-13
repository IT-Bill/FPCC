; ModuleID = 'bessel_Y1.c'
source_filename = "bessel_Y1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Y1.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@by1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([14 x double], [14 x double]* @by1_data, i32 0, i32 0), i32 13, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@_gsl_sf_bessel_amp_phase_bm1_cs = external constant %struct.cheb_series_struct, align 8
@_gsl_sf_bessel_amp_phase_bth1_cs = external constant %struct.cheb_series_struct, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_Y1_e(x, &result)\00", align 1
@by1_data = internal global [14 x double] [double 0x3FA06CD9FB9F847D, double 0x3FF4340D323E0B7F, double 0x3F7A9FB43C91106F, double 0xBFB6E067A0080402, double 0x3F8B23472BECCDFB, double 0xBF4D6C2E436D54C7, double 0x3F031F67DD5645CB, double 0xBEB0CCDEC6C211DA, double 0x3E556A8C824FD81B, double 0xBDF4C63BB6371A5C, double 0x3D8FC0B912F66D88, double -3.487488e-14, double 2.783800e-16, double -1.860000e-18], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Y1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !63 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !75, metadata !76), !dbg !77
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !78, metadata !76), !dbg !79
  call void @llvm.dbg.declare(metadata double* %6, metadata !80, metadata !76), !dbg !81
  store double 0x3FE45F306DC9C883, double* %6, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata double* %7, metadata !82, metadata !76), !dbg !83
  store double 0x1922D0E5604189, double* %7, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata double* %8, metadata !84, metadata !76), !dbg !85
  store double 0x3E60000000000000, double* %8, align 8, !dbg !85
  call void @llvm.dbg.declare(metadata double* %9, metadata !86, metadata !76), !dbg !87
  store double 0x4330000000000000, double* %9, align 8, !dbg !87
  %27 = load double, double* %4, align 8, !dbg !88
  %28 = fcmp ole double %27, 0.000000e+00, !dbg !90
  br i1 %28, label %29, label %38, !dbg !91

; <label>:29:                                     ; preds = %2
  br label %30, !dbg !92, !llvm.loop !94

; <label>:30:                                     ; preds = %29
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !95
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !95
  store double 0x7FF8000000000000, double* %32, align 8, !dbg !95
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !95
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !95
  store double 0x7FF8000000000000, double* %34, align 8, !dbg !95
  br label %35, !dbg !95, !llvm.loop !98

; <label>:35:                                     ; preds = %30
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 83, i32 1), !dbg !100
  store i32 1, i32* %3, align 4, !dbg !100
  br label %229, !dbg !100
                                                  ; No predecessors!
  br label %37, !dbg !103

; <label>:37:                                     ; preds = %36
  br label %229, !dbg !105

; <label>:38:                                     ; preds = %2
  %39 = load double, double* %4, align 8, !dbg !106
  %40 = fcmp olt double %39, 0x1922D0E5604189, !dbg !108
  br i1 %40, label %41, label %50, !dbg !109

; <label>:41:                                     ; preds = %38
  br label %42, !dbg !110, !llvm.loop !112

; <label>:42:                                     ; preds = %41
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !113
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !113
  store double 0x7FF0000000000000, double* %44, align 8, !dbg !113
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !113
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !113
  store double 0x7FF0000000000000, double* %46, align 8, !dbg !113
  br label %47, !dbg !113, !llvm.loop !116

; <label>:47:                                     ; preds = %42
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 86, i32 16), !dbg !118
  store i32 16, i32* %3, align 4, !dbg !118
  br label %229, !dbg !118
                                                  ; No predecessors!
  br label %49, !dbg !121

; <label>:49:                                     ; preds = %48
  br label %228, !dbg !123

; <label>:50:                                     ; preds = %38
  %51 = load double, double* %4, align 8, !dbg !124
  %52 = fcmp olt double %51, 0x3E60000000000000, !dbg !126
  br i1 %52, label %53, label %91, !dbg !127

; <label>:53:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata double* %10, metadata !128, metadata !76), !dbg !130
  %54 = load double, double* %4, align 8, !dbg !131
  %55 = fmul double 5.000000e-01, %54, !dbg !132
  %56 = call double @log(double %55) #6, !dbg !133
  store double %56, double* %10, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !134, metadata !76), !dbg !135
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !136, metadata !76), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %13, metadata !138, metadata !76), !dbg !139
  %57 = load double, double* %4, align 8, !dbg !140
  %58 = call i32 @gsl_sf_bessel_J1_e(double %57, %struct.gsl_sf_result_struct* %11), !dbg !141
  store i32 %58, i32* %13, align 4, !dbg !139
  %59 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @by1_cs, double -1.000000e+00, %struct.gsl_sf_result_struct* %12), !dbg !142
  %60 = load double, double* %10, align 8, !dbg !143
  %61 = fmul double 0x3FE45F306DC9C883, %60, !dbg !144
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !145
  %63 = load double, double* %62, align 8, !dbg !145
  %64 = fmul double %61, %63, !dbg !146
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !147
  %66 = load double, double* %65, align 8, !dbg !147
  %67 = fadd double 5.000000e-01, %66, !dbg !148
  %68 = load double, double* %4, align 8, !dbg !149
  %69 = fdiv double %67, %68, !dbg !150
  %70 = fadd double %64, %69, !dbg !151
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !152
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !153
  store double %70, double* %72, align 8, !dbg !154
  %73 = load double, double* %10, align 8, !dbg !155
  %74 = call double @fabs(double %73) #1, !dbg !156
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !157
  %76 = load double, double* %75, align 8, !dbg !157
  %77 = fmul double 0x3CB0000000000000, %76, !dbg !158
  %78 = call double @fabs(double %77) #1, !dbg !159
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !161
  %80 = load double, double* %79, align 8, !dbg !161
  %81 = fadd double %78, %80, !dbg !162
  %82 = fmul double %74, %81, !dbg !163
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !164
  %84 = load double, double* %83, align 8, !dbg !164
  %85 = load double, double* %4, align 8, !dbg !165
  %86 = fdiv double %84, %85, !dbg !166
  %87 = fadd double %82, %86, !dbg !167
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !168
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !169
  store double %87, double* %89, align 8, !dbg !170
  %90 = load i32, i32* %13, align 4, !dbg !171
  store i32 %90, i32* %3, align 4, !dbg !172
  br label %229, !dbg !172

; <label>:91:                                     ; preds = %50
  %92 = load double, double* %4, align 8, !dbg !173
  %93 = fcmp olt double %92, 4.000000e+00, !dbg !175
  br i1 %93, label %94, label %137, !dbg !176

; <label>:94:                                     ; preds = %91
  call void @llvm.dbg.declare(metadata double* %14, metadata !177, metadata !76), !dbg !179
  %95 = load double, double* %4, align 8, !dbg !180
  %96 = fmul double 5.000000e-01, %95, !dbg !181
  %97 = call double @log(double %96) #6, !dbg !182
  store double %97, double* %14, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata i32* %15, metadata !183, metadata !76), !dbg !184
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !185, metadata !76), !dbg !186
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !187, metadata !76), !dbg !188
  %98 = load double, double* %4, align 8, !dbg !189
  %99 = fmul double 1.250000e-01, %98, !dbg !190
  %100 = load double, double* %4, align 8, !dbg !191
  %101 = fmul double %99, %100, !dbg !192
  %102 = fsub double %101, 1.000000e+00, !dbg !193
  %103 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @by1_cs, double %102, %struct.gsl_sf_result_struct* %17), !dbg !194
  %104 = load double, double* %4, align 8, !dbg !195
  %105 = call i32 @gsl_sf_bessel_J1_e(double %104, %struct.gsl_sf_result_struct* %16), !dbg !196
  store i32 %105, i32* %15, align 4, !dbg !197
  %106 = load double, double* %14, align 8, !dbg !198
  %107 = fmul double 0x3FE45F306DC9C883, %106, !dbg !199
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !200
  %109 = load double, double* %108, align 8, !dbg !200
  %110 = fmul double %107, %109, !dbg !201
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !202
  %112 = load double, double* %111, align 8, !dbg !202
  %113 = fadd double 5.000000e-01, %112, !dbg !203
  %114 = load double, double* %4, align 8, !dbg !204
  %115 = fdiv double %113, %114, !dbg !205
  %116 = fadd double %110, %115, !dbg !206
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !207
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 0, !dbg !208
  store double %116, double* %118, align 8, !dbg !209
  %119 = load double, double* %14, align 8, !dbg !210
  %120 = call double @fabs(double %119) #1, !dbg !211
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !212
  %122 = load double, double* %121, align 8, !dbg !212
  %123 = fmul double 0x3CB0000000000000, %122, !dbg !213
  %124 = call double @fabs(double %123) #1, !dbg !214
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !216
  %126 = load double, double* %125, align 8, !dbg !216
  %127 = fadd double %124, %126, !dbg !217
  %128 = fmul double %120, %127, !dbg !218
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !219
  %130 = load double, double* %129, align 8, !dbg !219
  %131 = load double, double* %4, align 8, !dbg !220
  %132 = fdiv double %130, %131, !dbg !221
  %133 = fadd double %128, %132, !dbg !222
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !223
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 1, !dbg !224
  store double %133, double* %135, align 8, !dbg !225
  %136 = load i32, i32* %15, align 4, !dbg !226
  store i32 %136, i32* %3, align 4, !dbg !227
  br label %229, !dbg !227

; <label>:137:                                    ; preds = %91
  %138 = load double, double* %4, align 8, !dbg !228
  %139 = fcmp olt double %138, 0x4330000000000000, !dbg !230
  br i1 %139, label %140, label %216, !dbg !231

; <label>:140:                                    ; preds = %137
  call void @llvm.dbg.declare(metadata double* %18, metadata !232, metadata !76), !dbg !234
  %141 = load double, double* %4, align 8, !dbg !235
  %142 = load double, double* %4, align 8, !dbg !236
  %143 = fmul double %141, %142, !dbg !237
  %144 = fdiv double 3.200000e+01, %143, !dbg !238
  %145 = fsub double %144, 1.000000e+00, !dbg !239
  store double %145, double* %18, align 8, !dbg !234
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !240, metadata !76), !dbg !241
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !242, metadata !76), !dbg !243
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !244, metadata !76), !dbg !245
  call void @llvm.dbg.declare(metadata i32* %22, metadata !246, metadata !76), !dbg !248
  %146 = load double, double* %18, align 8, !dbg !249
  %147 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bm1_cs, double %146, %struct.gsl_sf_result_struct* %19), !dbg !250
  store i32 %147, i32* %22, align 4, !dbg !248
  call void @llvm.dbg.declare(metadata i32* %23, metadata !251, metadata !76), !dbg !252
  %148 = load double, double* %18, align 8, !dbg !253
  %149 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bth1_cs, double %148, %struct.gsl_sf_result_struct* %20), !dbg !254
  store i32 %149, i32* %23, align 4, !dbg !252
  call void @llvm.dbg.declare(metadata i32* %24, metadata !255, metadata !76), !dbg !256
  %150 = load double, double* %4, align 8, !dbg !257
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !258
  %152 = load double, double* %151, align 8, !dbg !258
  %153 = load double, double* %4, align 8, !dbg !259
  %154 = fdiv double %152, %153, !dbg !260
  %155 = call i32 @gsl_sf_bessel_cos_pi4_e(double %150, double %154, %struct.gsl_sf_result_struct* %21), !dbg !261
  store i32 %155, i32* %24, align 4, !dbg !256
  call void @llvm.dbg.declare(metadata double* %25, metadata !262, metadata !76), !dbg !263
  %156 = load double, double* %4, align 8, !dbg !264
  %157 = call double @sqrt(double %156) #6, !dbg !265
  store double %157, double* %25, align 8, !dbg !263
  call void @llvm.dbg.declare(metadata double* %26, metadata !266, metadata !76), !dbg !267
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !268
  %159 = load double, double* %158, align 8, !dbg !268
  %160 = fadd double 7.500000e-01, %159, !dbg !269
  %161 = load double, double* %25, align 8, !dbg !270
  %162 = fdiv double %160, %161, !dbg !271
  store double %162, double* %26, align 8, !dbg !267
  %163 = load double, double* %26, align 8, !dbg !272
  %164 = fsub double -0.000000e+00, %163, !dbg !273
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !274
  %166 = load double, double* %165, align 8, !dbg !274
  %167 = fmul double %164, %166, !dbg !275
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !276
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 0, !dbg !277
  store double %167, double* %169, align 8, !dbg !278
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !279
  %171 = load double, double* %170, align 8, !dbg !279
  %172 = call double @fabs(double %171) #1, !dbg !280
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !281
  %174 = load double, double* %173, align 8, !dbg !281
  %175 = fmul double %172, %174, !dbg !282
  %176 = load double, double* %25, align 8, !dbg !283
  %177 = fdiv double %175, %176, !dbg !284
  %178 = load double, double* %26, align 8, !dbg !285
  %179 = call double @fabs(double %178) #1, !dbg !286
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !288
  %181 = load double, double* %180, align 8, !dbg !288
  %182 = fmul double %179, %181, !dbg !289
  %183 = fadd double %177, %182, !dbg !290
  %184 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !291
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %184, i32 0, i32 1, !dbg !292
  store double %183, double* %185, align 8, !dbg !293
  %186 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !294
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %186, i32 0, i32 0, !dbg !295
  %188 = load double, double* %187, align 8, !dbg !295
  %189 = call double @fabs(double %188) #1, !dbg !296
  %190 = fmul double 0x3CB0000000000000, %189, !dbg !297
  %191 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !298
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %191, i32 0, i32 1, !dbg !299
  %193 = load double, double* %192, align 8, !dbg !300
  %194 = fadd double %193, %190, !dbg !300
  store double %194, double* %192, align 8, !dbg !300
  %195 = load i32, i32* %22, align 4, !dbg !301
  %196 = icmp ne i32 %195, 0, !dbg !301
  br i1 %196, label %197, label %199, !dbg !301

; <label>:197:                                    ; preds = %140
  %198 = load i32, i32* %22, align 4, !dbg !302
  br label %214, !dbg !302

; <label>:199:                                    ; preds = %140
  %200 = load i32, i32* %23, align 4, !dbg !303
  %201 = icmp ne i32 %200, 0, !dbg !303
  br i1 %201, label %202, label %204, !dbg !303

; <label>:202:                                    ; preds = %199
  %203 = load i32, i32* %23, align 4, !dbg !305
  br label %212, !dbg !305

; <label>:204:                                    ; preds = %199
  %205 = load i32, i32* %24, align 4, !dbg !307
  %206 = icmp ne i32 %205, 0, !dbg !307
  br i1 %206, label %207, label %209, !dbg !307

; <label>:207:                                    ; preds = %204
  %208 = load i32, i32* %24, align 4, !dbg !309
  br label %210, !dbg !309

; <label>:209:                                    ; preds = %204
  br label %210, !dbg !311

; <label>:210:                                    ; preds = %209, %207
  %211 = phi i32 [ %208, %207 ], [ 0, %209 ], !dbg !313
  br label %212, !dbg !313

; <label>:212:                                    ; preds = %210, %202
  %213 = phi i32 [ %203, %202 ], [ %211, %210 ], !dbg !315
  br label %214, !dbg !315

; <label>:214:                                    ; preds = %212, %197
  %215 = phi i32 [ %198, %197 ], [ %213, %212 ], !dbg !317
  store i32 %215, i32* %3, align 4, !dbg !319
  br label %229, !dbg !319

; <label>:216:                                    ; preds = %137
  br label %217, !dbg !320, !llvm.loop !322

; <label>:217:                                    ; preds = %216
  %218 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !323
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %218, i32 0, i32 0, !dbg !323
  store double 0.000000e+00, double* %219, align 8, !dbg !323
  %220 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !323
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %220, i32 0, i32 1, !dbg !323
  store double 0x10000000000000, double* %221, align 8, !dbg !323
  br label %222, !dbg !323, !llvm.loop !326

; <label>:222:                                    ; preds = %217
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 125, i32 15), !dbg !328
  store i32 15, i32* %3, align 4, !dbg !328
  br label %229, !dbg !328
                                                  ; No predecessors!
  br label %224, !dbg !331

; <label>:224:                                    ; preds = %223
  br label %225

; <label>:225:                                    ; preds = %224
  br label %226

; <label>:226:                                    ; preds = %225
  br label %227

; <label>:227:                                    ; preds = %226
  br label %228

; <label>:228:                                    ; preds = %227, %49
  br label %229

; <label>:229:                                    ; preds = %35, %47, %53, %94, %214, %222, %228, %37
  %230 = load i32, i32* %3, align 4, !dbg !333
  ret i32 %230, !dbg !333
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare double @log(double) #3

declare i32 @gsl_sf_bessel_J1_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !334 {
  %4 = alloca %struct.cheb_series_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.cheb_series_struct* %0, %struct.cheb_series_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !340, metadata !76), !dbg !341
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !342, metadata !76), !dbg !343
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !344, metadata !76), !dbg !345
  call void @llvm.dbg.declare(metadata i32* %7, metadata !346, metadata !76), !dbg !347
  call void @llvm.dbg.declare(metadata double* %8, metadata !348, metadata !76), !dbg !349
  store double 0.000000e+00, double* %8, align 8, !dbg !349
  call void @llvm.dbg.declare(metadata double* %9, metadata !350, metadata !76), !dbg !351
  store double 0.000000e+00, double* %9, align 8, !dbg !351
  call void @llvm.dbg.declare(metadata double* %10, metadata !352, metadata !76), !dbg !353
  %15 = load double, double* %5, align 8, !dbg !354
  %16 = fmul double 2.000000e+00, %15, !dbg !355
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !356
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !357
  %19 = load double, double* %18, align 8, !dbg !357
  %20 = fsub double %16, %19, !dbg !358
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !359
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !360
  %23 = load double, double* %22, align 8, !dbg !360
  %24 = fsub double %20, %23, !dbg !361
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !362
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !363
  %27 = load double, double* %26, align 8, !dbg !363
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !364
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !365
  %30 = load double, double* %29, align 8, !dbg !365
  %31 = fsub double %27, %30, !dbg !366
  %32 = fdiv double %24, %31, !dbg !367
  store double %32, double* %10, align 8, !dbg !353
  call void @llvm.dbg.declare(metadata double* %11, metadata !368, metadata !76), !dbg !369
  %33 = load double, double* %10, align 8, !dbg !370
  %34 = fmul double 2.000000e+00, %33, !dbg !371
  store double %34, double* %11, align 8, !dbg !369
  call void @llvm.dbg.declare(metadata double* %12, metadata !372, metadata !76), !dbg !373
  store double 0.000000e+00, double* %12, align 8, !dbg !373
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !374
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !376
  %37 = load i32, i32* %36, align 8, !dbg !376
  store i32 %37, i32* %7, align 4, !dbg !377
  br label %38, !dbg !378

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !379
  %40 = icmp sge i32 %39, 1, !dbg !382
  br i1 %40, label %41, label %78, !dbg !383

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !384, metadata !76), !dbg !386
  %42 = load double, double* %8, align 8, !dbg !387
  store double %42, double* %13, align 8, !dbg !386
  %43 = load double, double* %11, align 8, !dbg !388
  %44 = load double, double* %8, align 8, !dbg !389
  %45 = fmul double %43, %44, !dbg !390
  %46 = load double, double* %9, align 8, !dbg !391
  %47 = fsub double %45, %46, !dbg !392
  %48 = load i32, i32* %7, align 4, !dbg !393
  %49 = sext i32 %48 to i64, !dbg !394
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !394
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !395
  %52 = load double*, double** %51, align 8, !dbg !395
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !394
  %54 = load double, double* %53, align 8, !dbg !394
  %55 = fadd double %47, %54, !dbg !396
  store double %55, double* %8, align 8, !dbg !397
  %56 = load double, double* %11, align 8, !dbg !398
  %57 = load double, double* %13, align 8, !dbg !399
  %58 = fmul double %56, %57, !dbg !400
  %59 = call double @fabs(double %58) #1, !dbg !401
  %60 = load double, double* %9, align 8, !dbg !402
  %61 = call double @fabs(double %60) #1, !dbg !403
  %62 = fadd double %59, %61, !dbg !405
  %63 = load i32, i32* %7, align 4, !dbg !406
  %64 = sext i32 %63 to i64, !dbg !407
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !407
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !408
  %67 = load double*, double** %66, align 8, !dbg !408
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !407
  %69 = load double, double* %68, align 8, !dbg !407
  %70 = call double @fabs(double %69) #1, !dbg !409
  %71 = fadd double %62, %70, !dbg !411
  %72 = load double, double* %12, align 8, !dbg !412
  %73 = fadd double %72, %71, !dbg !412
  store double %73, double* %12, align 8, !dbg !412
  %74 = load double, double* %13, align 8, !dbg !413
  store double %74, double* %9, align 8, !dbg !414
  br label %75, !dbg !415

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !416
  %77 = add nsw i32 %76, -1, !dbg !416
  store i32 %77, i32* %7, align 4, !dbg !416
  br label %38, !dbg !418, !llvm.loop !419

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !421, metadata !76), !dbg !423
  %79 = load double, double* %8, align 8, !dbg !424
  store double %79, double* %14, align 8, !dbg !423
  %80 = load double, double* %10, align 8, !dbg !425
  %81 = load double, double* %8, align 8, !dbg !426
  %82 = fmul double %80, %81, !dbg !427
  %83 = load double, double* %9, align 8, !dbg !428
  %84 = fsub double %82, %83, !dbg !429
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !430
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !431
  %87 = load double*, double** %86, align 8, !dbg !431
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !430
  %89 = load double, double* %88, align 8, !dbg !430
  %90 = fmul double 5.000000e-01, %89, !dbg !432
  %91 = fadd double %84, %90, !dbg !433
  store double %91, double* %8, align 8, !dbg !434
  %92 = load double, double* %10, align 8, !dbg !435
  %93 = load double, double* %14, align 8, !dbg !436
  %94 = fmul double %92, %93, !dbg !437
  %95 = call double @fabs(double %94) #1, !dbg !438
  %96 = load double, double* %9, align 8, !dbg !439
  %97 = call double @fabs(double %96) #1, !dbg !440
  %98 = fadd double %95, %97, !dbg !442
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !443
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !444
  %101 = load double*, double** %100, align 8, !dbg !444
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !443
  %103 = load double, double* %102, align 8, !dbg !443
  %104 = call double @fabs(double %103) #1, !dbg !445
  %105 = fmul double 5.000000e-01, %104, !dbg !447
  %106 = fadd double %98, %105, !dbg !448
  %107 = load double, double* %12, align 8, !dbg !449
  %108 = fadd double %107, %106, !dbg !449
  store double %108, double* %12, align 8, !dbg !449
  %109 = load double, double* %8, align 8, !dbg !450
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !451
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !452
  store double %109, double* %111, align 8, !dbg !453
  %112 = load double, double* %12, align 8, !dbg !454
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !455
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !456
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !457
  %116 = load i32, i32* %115, align 8, !dbg !457
  %117 = sext i32 %116 to i64, !dbg !458
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !458
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !459
  %120 = load double*, double** %119, align 8, !dbg !459
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !458
  %122 = load double, double* %121, align 8, !dbg !458
  %123 = call double @fabs(double %122) #1, !dbg !460
  %124 = fadd double %113, %123, !dbg !461
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !462
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !463
  store double %124, double* %126, align 8, !dbg !464
  ret i32 0, !dbg !465
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

declare i32 @gsl_sf_bessel_cos_pi4_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Y1(double) #0 !dbg !466 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !469, metadata !76), !dbg !470
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !471, metadata !76), !dbg !472
  call void @llvm.dbg.declare(metadata i32* %5, metadata !473, metadata !76), !dbg !472
  %6 = load double, double* %3, align 8, !dbg !472
  %7 = call i32 @gsl_sf_bessel_Y1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !472
  store i32 %7, i32* %5, align 4, !dbg !472
  %8 = load i32, i32* %5, align 4, !dbg !474
  %9 = icmp ne i32 %8, 0, !dbg !474
  br i1 %9, label %10, label %16, !dbg !472

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !476, !llvm.loop !479

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !481
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 136, i32 %12), !dbg !481
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !481
  %14 = load double, double* %13, align 8, !dbg !481
  store double %14, double* %2, align 8, !dbg !481
  br label %19, !dbg !481
                                                  ; No predecessors!
  br label %16, !dbg !484

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !486
  %18 = load double, double* %17, align 8, !dbg !486
  store double %18, double* %2, align 8, !dbg !486
  br label %19, !dbg !486

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !488
  ret double %20, !dbg !488
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_Y1.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55}
!42 = distinct !DIGlobalVariable(name: "by1_cs", scope: !0, file: !1, line: 63, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @by1_cs)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !44, line: 29, baseType: !45)
!44 = !DIFile(filename: "./chebyshev.h", directory: "/fpcc/gsl-2.5/specfunc")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !44, line: 22, size: 320, align: 64, elements: !46)
!46 = !{!47, !50, !52, !53, !54}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !45, file: !44, line: 23, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !45, file: !44, line: 24, baseType: !51, size: 32, align: 32, offset: 64)
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !45, file: !44, line: 25, baseType: !49, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !45, file: !44, line: 26, baseType: !49, size: 64, align: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !45, file: !44, line: 27, baseType: !51, size: 32, align: 32, offset: 256)
!55 = distinct !DIGlobalVariable(name: "by1_data", scope: !0, file: !1, line: 47, type: !56, isLocal: true, isDefinition: true, variable: [14 x double]* @by1_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 896, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 14)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "gsl_sf_bessel_Y1_e", scope: !1, file: !1, line: 73, type: !64, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!64 = !DISubroutineType(types: !65)
!65 = !{!51, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !69, line: 41, baseType: !70)
!69 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !69, line: 37, size: 128, align: 64, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !69, line: 38, baseType: !49, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !70, file: !69, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!74 = !{}
!75 = !DILocalVariable(name: "x", arg: 1, scope: !63, file: !1, line: 73, type: !66)
!76 = !DIExpression()
!77 = !DILocation(line: 73, column: 37, scope: !63)
!78 = !DILocalVariable(name: "result", arg: 2, scope: !63, file: !1, line: 73, type: !67)
!79 = !DILocation(line: 73, column: 56, scope: !63)
!80 = !DILocalVariable(name: "two_over_pi", scope: !63, file: !1, line: 75, type: !66)
!81 = !DILocation(line: 75, column: 16, scope: !63)
!82 = !DILocalVariable(name: "xmin", scope: !63, file: !1, line: 76, type: !66)
!83 = !DILocation(line: 76, column: 16, scope: !63)
!84 = !DILocalVariable(name: "x_small", scope: !63, file: !1, line: 77, type: !66)
!85 = !DILocation(line: 77, column: 16, scope: !63)
!86 = !DILocalVariable(name: "xmax", scope: !63, file: !1, line: 78, type: !66)
!87 = !DILocation(line: 78, column: 16, scope: !63)
!88 = !DILocation(line: 82, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !63, file: !1, line: 82, column: 6)
!90 = !DILocation(line: 82, column: 8, scope: !89)
!91 = !DILocation(line: 82, column: 6, scope: !63)
!92 = !DILocation(line: 83, column: 5, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 82, column: 16)
!94 = distinct !{!94, !92}
!95 = !DILocation(line: 83, column: 5, scope: !96)
!96 = !DILexicalBlockFile(scope: !97, file: !1, discriminator: 1)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 83, column: 5)
!98 = distinct !{!98, !99}
!99 = !DILocation(line: 83, column: 5, scope: !97)
!100 = !DILocation(line: 83, column: 5, scope: !101)
!101 = !DILexicalBlockFile(scope: !102, file: !1, discriminator: 2)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 83, column: 5)
!103 = !DILocation(line: 83, column: 5, scope: !104)
!104 = !DILexicalBlockFile(scope: !97, file: !1, discriminator: 3)
!105 = !DILocation(line: 84, column: 3, scope: !93)
!106 = !DILocation(line: 85, column: 11, scope: !107)
!107 = distinct !DILexicalBlock(scope: !89, file: !1, line: 85, column: 11)
!108 = !DILocation(line: 85, column: 13, scope: !107)
!109 = !DILocation(line: 85, column: 11, scope: !89)
!110 = !DILocation(line: 86, column: 5, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 85, column: 21)
!112 = distinct !{!112, !110}
!113 = !DILocation(line: 86, column: 5, scope: !114)
!114 = !DILexicalBlockFile(scope: !115, file: !1, discriminator: 1)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 86, column: 5)
!116 = distinct !{!116, !117}
!117 = !DILocation(line: 86, column: 5, scope: !115)
!118 = !DILocation(line: 86, column: 5, scope: !119)
!119 = !DILexicalBlockFile(scope: !120, file: !1, discriminator: 2)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 86, column: 5)
!121 = !DILocation(line: 86, column: 5, scope: !122)
!122 = !DILexicalBlockFile(scope: !115, file: !1, discriminator: 3)
!123 = !DILocation(line: 87, column: 3, scope: !111)
!124 = !DILocation(line: 88, column: 11, scope: !125)
!125 = distinct !DILexicalBlock(scope: !107, file: !1, line: 88, column: 11)
!126 = !DILocation(line: 88, column: 13, scope: !125)
!127 = !DILocation(line: 88, column: 11, scope: !107)
!128 = !DILocalVariable(name: "lnterm", scope: !129, file: !1, line: 89, type: !66)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 88, column: 24)
!130 = !DILocation(line: 89, column: 18, scope: !129)
!131 = !DILocation(line: 89, column: 35, scope: !129)
!132 = !DILocation(line: 89, column: 34, scope: !129)
!133 = !DILocation(line: 89, column: 27, scope: !129)
!134 = !DILocalVariable(name: "J1", scope: !129, file: !1, line: 90, type: !68)
!135 = !DILocation(line: 90, column: 19, scope: !129)
!136 = !DILocalVariable(name: "c", scope: !129, file: !1, line: 91, type: !68)
!137 = !DILocation(line: 91, column: 19, scope: !129)
!138 = !DILocalVariable(name: "status", scope: !129, file: !1, line: 92, type: !51)
!139 = !DILocation(line: 92, column: 9, scope: !129)
!140 = !DILocation(line: 92, column: 37, scope: !129)
!141 = !DILocation(line: 92, column: 18, scope: !129)
!142 = !DILocation(line: 93, column: 5, scope: !129)
!143 = !DILocation(line: 94, column: 33, scope: !129)
!144 = !DILocation(line: 94, column: 31, scope: !129)
!145 = !DILocation(line: 94, column: 45, scope: !129)
!146 = !DILocation(line: 94, column: 40, scope: !129)
!147 = !DILocation(line: 94, column: 60, scope: !129)
!148 = !DILocation(line: 94, column: 56, scope: !129)
!149 = !DILocation(line: 94, column: 65, scope: !129)
!150 = !DILocation(line: 94, column: 64, scope: !129)
!151 = !DILocation(line: 94, column: 49, scope: !129)
!152 = !DILocation(line: 94, column: 5, scope: !129)
!153 = !DILocation(line: 94, column: 13, scope: !129)
!154 = !DILocation(line: 94, column: 17, scope: !129)
!155 = !DILocation(line: 95, column: 24, scope: !129)
!156 = !DILocation(line: 95, column: 19, scope: !129)
!157 = !DILocation(line: 95, column: 61, scope: !129)
!158 = !DILocation(line: 95, column: 56, scope: !129)
!159 = !DILocation(line: 95, column: 35, scope: !160)
!160 = !DILexicalBlockFile(scope: !129, file: !1, discriminator: 1)
!161 = !DILocation(line: 95, column: 71, scope: !129)
!162 = !DILocation(line: 95, column: 66, scope: !129)
!163 = !DILocation(line: 95, column: 32, scope: !129)
!164 = !DILocation(line: 95, column: 80, scope: !129)
!165 = !DILocation(line: 95, column: 84, scope: !129)
!166 = !DILocation(line: 95, column: 83, scope: !129)
!167 = !DILocation(line: 95, column: 76, scope: !129)
!168 = !DILocation(line: 95, column: 5, scope: !129)
!169 = !DILocation(line: 95, column: 13, scope: !129)
!170 = !DILocation(line: 95, column: 17, scope: !129)
!171 = !DILocation(line: 96, column: 12, scope: !129)
!172 = !DILocation(line: 96, column: 5, scope: !129)
!173 = !DILocation(line: 98, column: 11, scope: !174)
!174 = distinct !DILexicalBlock(scope: !125, file: !1, line: 98, column: 11)
!175 = !DILocation(line: 98, column: 13, scope: !174)
!176 = !DILocation(line: 98, column: 11, scope: !125)
!177 = !DILocalVariable(name: "lnterm", scope: !178, file: !1, line: 99, type: !66)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 98, column: 20)
!179 = !DILocation(line: 99, column: 18, scope: !178)
!180 = !DILocation(line: 99, column: 35, scope: !178)
!181 = !DILocation(line: 99, column: 34, scope: !178)
!182 = !DILocation(line: 99, column: 27, scope: !178)
!183 = !DILocalVariable(name: "status", scope: !178, file: !1, line: 100, type: !51)
!184 = !DILocation(line: 100, column: 9, scope: !178)
!185 = !DILocalVariable(name: "J1", scope: !178, file: !1, line: 101, type: !68)
!186 = !DILocation(line: 101, column: 19, scope: !178)
!187 = !DILocalVariable(name: "c", scope: !178, file: !1, line: 102, type: !68)
!188 = !DILocation(line: 102, column: 19, scope: !178)
!189 = !DILocation(line: 103, column: 32, scope: !178)
!190 = !DILocation(line: 103, column: 31, scope: !178)
!191 = !DILocation(line: 103, column: 34, scope: !178)
!192 = !DILocation(line: 103, column: 33, scope: !178)
!193 = !DILocation(line: 103, column: 35, scope: !178)
!194 = !DILocation(line: 103, column: 5, scope: !178)
!195 = !DILocation(line: 104, column: 33, scope: !178)
!196 = !DILocation(line: 104, column: 14, scope: !178)
!197 = !DILocation(line: 104, column: 12, scope: !178)
!198 = !DILocation(line: 105, column: 33, scope: !178)
!199 = !DILocation(line: 105, column: 31, scope: !178)
!200 = !DILocation(line: 105, column: 45, scope: !178)
!201 = !DILocation(line: 105, column: 40, scope: !178)
!202 = !DILocation(line: 105, column: 60, scope: !178)
!203 = !DILocation(line: 105, column: 56, scope: !178)
!204 = !DILocation(line: 105, column: 65, scope: !178)
!205 = !DILocation(line: 105, column: 64, scope: !178)
!206 = !DILocation(line: 105, column: 49, scope: !178)
!207 = !DILocation(line: 105, column: 5, scope: !178)
!208 = !DILocation(line: 105, column: 13, scope: !178)
!209 = !DILocation(line: 105, column: 17, scope: !178)
!210 = !DILocation(line: 106, column: 24, scope: !178)
!211 = !DILocation(line: 106, column: 19, scope: !178)
!212 = !DILocation(line: 106, column: 61, scope: !178)
!213 = !DILocation(line: 106, column: 56, scope: !178)
!214 = !DILocation(line: 106, column: 35, scope: !215)
!215 = !DILexicalBlockFile(scope: !178, file: !1, discriminator: 1)
!216 = !DILocation(line: 106, column: 71, scope: !178)
!217 = !DILocation(line: 106, column: 66, scope: !178)
!218 = !DILocation(line: 106, column: 32, scope: !178)
!219 = !DILocation(line: 106, column: 80, scope: !178)
!220 = !DILocation(line: 106, column: 84, scope: !178)
!221 = !DILocation(line: 106, column: 83, scope: !178)
!222 = !DILocation(line: 106, column: 76, scope: !178)
!223 = !DILocation(line: 106, column: 5, scope: !178)
!224 = !DILocation(line: 106, column: 13, scope: !178)
!225 = !DILocation(line: 106, column: 17, scope: !178)
!226 = !DILocation(line: 107, column: 12, scope: !178)
!227 = !DILocation(line: 107, column: 5, scope: !178)
!228 = !DILocation(line: 109, column: 11, scope: !229)
!229 = distinct !DILexicalBlock(scope: !174, file: !1, line: 109, column: 11)
!230 = !DILocation(line: 109, column: 13, scope: !229)
!231 = !DILocation(line: 109, column: 11, scope: !174)
!232 = !DILocalVariable(name: "z", scope: !233, file: !1, line: 110, type: !66)
!233 = distinct !DILexicalBlock(scope: !229, file: !1, line: 109, column: 21)
!234 = !DILocation(line: 110, column: 18, scope: !233)
!235 = !DILocation(line: 110, column: 28, scope: !233)
!236 = !DILocation(line: 110, column: 30, scope: !233)
!237 = !DILocation(line: 110, column: 29, scope: !233)
!238 = !DILocation(line: 110, column: 26, scope: !233)
!239 = !DILocation(line: 110, column: 33, scope: !233)
!240 = !DILocalVariable(name: "ca", scope: !233, file: !1, line: 111, type: !68)
!241 = !DILocation(line: 111, column: 19, scope: !233)
!242 = !DILocalVariable(name: "ct", scope: !233, file: !1, line: 112, type: !68)
!243 = !DILocation(line: 112, column: 19, scope: !233)
!244 = !DILocalVariable(name: "cp", scope: !233, file: !1, line: 113, type: !68)
!245 = !DILocation(line: 113, column: 19, scope: !233)
!246 = !DILocalVariable(name: "stat_ca", scope: !233, file: !1, line: 114, type: !247)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!248 = !DILocation(line: 114, column: 15, scope: !233)
!249 = !DILocation(line: 114, column: 72, scope: !233)
!250 = !DILocation(line: 114, column: 25, scope: !233)
!251 = !DILocalVariable(name: "stat_ct", scope: !233, file: !1, line: 115, type: !247)
!252 = !DILocation(line: 115, column: 15, scope: !233)
!253 = !DILocation(line: 115, column: 72, scope: !233)
!254 = !DILocation(line: 115, column: 25, scope: !233)
!255 = !DILocalVariable(name: "stat_cp", scope: !233, file: !1, line: 116, type: !247)
!256 = !DILocation(line: 116, column: 15, scope: !233)
!257 = !DILocation(line: 116, column: 49, scope: !233)
!258 = !DILocation(line: 116, column: 55, scope: !233)
!259 = !DILocation(line: 116, column: 59, scope: !233)
!260 = !DILocation(line: 116, column: 58, scope: !233)
!261 = !DILocation(line: 116, column: 25, scope: !233)
!262 = !DILocalVariable(name: "sqrtx", scope: !233, file: !1, line: 117, type: !66)
!263 = !DILocation(line: 117, column: 18, scope: !233)
!264 = !DILocation(line: 117, column: 31, scope: !233)
!265 = !DILocation(line: 117, column: 26, scope: !233)
!266 = !DILocalVariable(name: "ampl", scope: !233, file: !1, line: 118, type: !66)
!267 = !DILocation(line: 118, column: 18, scope: !233)
!268 = !DILocation(line: 118, column: 37, scope: !233)
!269 = !DILocation(line: 118, column: 32, scope: !233)
!270 = !DILocation(line: 118, column: 44, scope: !233)
!271 = !DILocation(line: 118, column: 42, scope: !233)
!272 = !DILocation(line: 119, column: 21, scope: !233)
!273 = !DILocation(line: 119, column: 20, scope: !233)
!274 = !DILocation(line: 119, column: 31, scope: !233)
!275 = !DILocation(line: 119, column: 26, scope: !233)
!276 = !DILocation(line: 119, column: 5, scope: !233)
!277 = !DILocation(line: 119, column: 13, scope: !233)
!278 = !DILocation(line: 119, column: 18, scope: !233)
!279 = !DILocation(line: 120, column: 28, scope: !233)
!280 = !DILocation(line: 120, column: 20, scope: !233)
!281 = !DILocation(line: 120, column: 38, scope: !233)
!282 = !DILocation(line: 120, column: 33, scope: !233)
!283 = !DILocation(line: 120, column: 42, scope: !233)
!284 = !DILocation(line: 120, column: 41, scope: !233)
!285 = !DILocation(line: 120, column: 55, scope: !233)
!286 = !DILocation(line: 120, column: 50, scope: !287)
!287 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 1)
!288 = !DILocation(line: 120, column: 66, scope: !233)
!289 = !DILocation(line: 120, column: 61, scope: !233)
!290 = !DILocation(line: 120, column: 48, scope: !233)
!291 = !DILocation(line: 120, column: 5, scope: !233)
!292 = !DILocation(line: 120, column: 13, scope: !233)
!293 = !DILocation(line: 120, column: 18, scope: !233)
!294 = !DILocation(line: 121, column: 43, scope: !233)
!295 = !DILocation(line: 121, column: 51, scope: !233)
!296 = !DILocation(line: 121, column: 38, scope: !233)
!297 = !DILocation(line: 121, column: 36, scope: !233)
!298 = !DILocation(line: 121, column: 5, scope: !233)
!299 = !DILocation(line: 121, column: 13, scope: !233)
!300 = !DILocation(line: 121, column: 17, scope: !233)
!301 = !DILocation(line: 122, column: 12, scope: !233)
!302 = !DILocation(line: 122, column: 12, scope: !287)
!303 = !DILocation(line: 122, column: 12, scope: !304)
!304 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 2)
!305 = !DILocation(line: 122, column: 12, scope: !306)
!306 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 3)
!307 = !DILocation(line: 122, column: 12, scope: !308)
!308 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 4)
!309 = !DILocation(line: 122, column: 12, scope: !310)
!310 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 5)
!311 = !DILocation(line: 122, column: 12, scope: !312)
!312 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 6)
!313 = !DILocation(line: 122, column: 12, scope: !314)
!314 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 7)
!315 = !DILocation(line: 122, column: 12, scope: !316)
!316 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 8)
!317 = !DILocation(line: 122, column: 12, scope: !318)
!318 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 9)
!319 = !DILocation(line: 122, column: 5, scope: !318)
!320 = !DILocation(line: 125, column: 5, scope: !321)
!321 = distinct !DILexicalBlock(scope: !229, file: !1, line: 124, column: 8)
!322 = distinct !{!322, !320}
!323 = !DILocation(line: 125, column: 5, scope: !324)
!324 = !DILexicalBlockFile(scope: !325, file: !1, discriminator: 1)
!325 = distinct !DILexicalBlock(scope: !321, file: !1, line: 125, column: 5)
!326 = distinct !{!326, !327}
!327 = !DILocation(line: 125, column: 5, scope: !325)
!328 = !DILocation(line: 125, column: 5, scope: !329)
!329 = !DILexicalBlockFile(scope: !330, file: !1, discriminator: 2)
!330 = distinct !DILexicalBlock(scope: !325, file: !1, line: 125, column: 5)
!331 = !DILocation(line: 125, column: 5, scope: !332)
!332 = !DILexicalBlockFile(scope: !325, file: !1, discriminator: 3)
!333 = !DILocation(line: 127, column: 1, scope: !63)
!334 = distinct !DISubprogram(name: "cheb_eval_e", scope: !335, file: !335, line: 3, type: !336, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!335 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!336 = !DISubroutineType(types: !337)
!337 = !{!51, !338, !66, !67}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!340 = !DILocalVariable(name: "cs", arg: 1, scope: !334, file: !335, line: 3, type: !338)
!341 = !DILocation(line: 3, column: 33, scope: !334)
!342 = !DILocalVariable(name: "x", arg: 2, scope: !334, file: !335, line: 4, type: !66)
!343 = !DILocation(line: 4, column: 26, scope: !334)
!344 = !DILocalVariable(name: "result", arg: 3, scope: !334, file: !335, line: 5, type: !67)
!345 = !DILocation(line: 5, column: 29, scope: !334)
!346 = !DILocalVariable(name: "j", scope: !334, file: !335, line: 7, type: !51)
!347 = !DILocation(line: 7, column: 7, scope: !334)
!348 = !DILocalVariable(name: "d", scope: !334, file: !335, line: 8, type: !49)
!349 = !DILocation(line: 8, column: 10, scope: !334)
!350 = !DILocalVariable(name: "dd", scope: !334, file: !335, line: 9, type: !49)
!351 = !DILocation(line: 9, column: 10, scope: !334)
!352 = !DILocalVariable(name: "y", scope: !334, file: !335, line: 11, type: !49)
!353 = !DILocation(line: 11, column: 10, scope: !334)
!354 = !DILocation(line: 11, column: 20, scope: !334)
!355 = !DILocation(line: 11, column: 19, scope: !334)
!356 = !DILocation(line: 11, column: 24, scope: !334)
!357 = !DILocation(line: 11, column: 28, scope: !334)
!358 = !DILocation(line: 11, column: 22, scope: !334)
!359 = !DILocation(line: 11, column: 32, scope: !334)
!360 = !DILocation(line: 11, column: 36, scope: !334)
!361 = !DILocation(line: 11, column: 30, scope: !334)
!362 = !DILocation(line: 11, column: 42, scope: !334)
!363 = !DILocation(line: 11, column: 46, scope: !334)
!364 = !DILocation(line: 11, column: 50, scope: !334)
!365 = !DILocation(line: 11, column: 54, scope: !334)
!366 = !DILocation(line: 11, column: 48, scope: !334)
!367 = !DILocation(line: 11, column: 39, scope: !334)
!368 = !DILocalVariable(name: "y2", scope: !334, file: !335, line: 12, type: !49)
!369 = !DILocation(line: 12, column: 10, scope: !334)
!370 = !DILocation(line: 12, column: 21, scope: !334)
!371 = !DILocation(line: 12, column: 19, scope: !334)
!372 = !DILocalVariable(name: "e", scope: !334, file: !335, line: 14, type: !49)
!373 = !DILocation(line: 14, column: 10, scope: !334)
!374 = !DILocation(line: 16, column: 11, scope: !375)
!375 = distinct !DILexicalBlock(scope: !334, file: !335, line: 16, column: 3)
!376 = !DILocation(line: 16, column: 15, scope: !375)
!377 = !DILocation(line: 16, column: 9, scope: !375)
!378 = !DILocation(line: 16, column: 7, scope: !375)
!379 = !DILocation(line: 16, column: 22, scope: !380)
!380 = !DILexicalBlockFile(scope: !381, file: !335, discriminator: 1)
!381 = distinct !DILexicalBlock(scope: !375, file: !335, line: 16, column: 3)
!382 = !DILocation(line: 16, column: 23, scope: !380)
!383 = !DILocation(line: 16, column: 3, scope: !380)
!384 = !DILocalVariable(name: "temp", scope: !385, file: !335, line: 17, type: !49)
!385 = distinct !DILexicalBlock(scope: !381, file: !335, line: 16, column: 33)
!386 = !DILocation(line: 17, column: 12, scope: !385)
!387 = !DILocation(line: 17, column: 19, scope: !385)
!388 = !DILocation(line: 18, column: 9, scope: !385)
!389 = !DILocation(line: 18, column: 12, scope: !385)
!390 = !DILocation(line: 18, column: 11, scope: !385)
!391 = !DILocation(line: 18, column: 16, scope: !385)
!392 = !DILocation(line: 18, column: 14, scope: !385)
!393 = !DILocation(line: 18, column: 27, scope: !385)
!394 = !DILocation(line: 18, column: 21, scope: !385)
!395 = !DILocation(line: 18, column: 25, scope: !385)
!396 = !DILocation(line: 18, column: 19, scope: !385)
!397 = !DILocation(line: 18, column: 7, scope: !385)
!398 = !DILocation(line: 19, column: 15, scope: !385)
!399 = !DILocation(line: 19, column: 18, scope: !385)
!400 = !DILocation(line: 19, column: 17, scope: !385)
!401 = !DILocation(line: 19, column: 10, scope: !385)
!402 = !DILocation(line: 19, column: 31, scope: !385)
!403 = !DILocation(line: 19, column: 26, scope: !404)
!404 = !DILexicalBlockFile(scope: !385, file: !335, discriminator: 1)
!405 = !DILocation(line: 19, column: 24, scope: !385)
!406 = !DILocation(line: 19, column: 48, scope: !385)
!407 = !DILocation(line: 19, column: 42, scope: !385)
!408 = !DILocation(line: 19, column: 46, scope: !385)
!409 = !DILocation(line: 19, column: 37, scope: !410)
!410 = !DILexicalBlockFile(scope: !385, file: !335, discriminator: 2)
!411 = !DILocation(line: 19, column: 35, scope: !385)
!412 = !DILocation(line: 19, column: 7, scope: !385)
!413 = !DILocation(line: 20, column: 10, scope: !385)
!414 = !DILocation(line: 20, column: 8, scope: !385)
!415 = !DILocation(line: 21, column: 3, scope: !385)
!416 = !DILocation(line: 16, column: 29, scope: !417)
!417 = !DILexicalBlockFile(scope: !381, file: !335, discriminator: 2)
!418 = !DILocation(line: 16, column: 3, scope: !417)
!419 = distinct !{!419, !420}
!420 = !DILocation(line: 16, column: 3, scope: !334)
!421 = !DILocalVariable(name: "temp", scope: !422, file: !335, line: 24, type: !49)
!422 = distinct !DILexicalBlock(scope: !334, file: !335, line: 23, column: 3)
!423 = !DILocation(line: 24, column: 12, scope: !422)
!424 = !DILocation(line: 24, column: 19, scope: !422)
!425 = !DILocation(line: 25, column: 9, scope: !422)
!426 = !DILocation(line: 25, column: 11, scope: !422)
!427 = !DILocation(line: 25, column: 10, scope: !422)
!428 = !DILocation(line: 25, column: 15, scope: !422)
!429 = !DILocation(line: 25, column: 13, scope: !422)
!430 = !DILocation(line: 25, column: 26, scope: !422)
!431 = !DILocation(line: 25, column: 30, scope: !422)
!432 = !DILocation(line: 25, column: 24, scope: !422)
!433 = !DILocation(line: 25, column: 18, scope: !422)
!434 = !DILocation(line: 25, column: 7, scope: !422)
!435 = !DILocation(line: 26, column: 15, scope: !422)
!436 = !DILocation(line: 26, column: 17, scope: !422)
!437 = !DILocation(line: 26, column: 16, scope: !422)
!438 = !DILocation(line: 26, column: 10, scope: !422)
!439 = !DILocation(line: 26, column: 30, scope: !422)
!440 = !DILocation(line: 26, column: 25, scope: !441)
!441 = !DILexicalBlockFile(scope: !422, file: !335, discriminator: 1)
!442 = !DILocation(line: 26, column: 23, scope: !422)
!443 = !DILocation(line: 26, column: 47, scope: !422)
!444 = !DILocation(line: 26, column: 51, scope: !422)
!445 = !DILocation(line: 26, column: 42, scope: !446)
!446 = !DILexicalBlockFile(scope: !422, file: !335, discriminator: 2)
!447 = !DILocation(line: 26, column: 40, scope: !422)
!448 = !DILocation(line: 26, column: 34, scope: !422)
!449 = !DILocation(line: 26, column: 7, scope: !422)
!450 = !DILocation(line: 29, column: 17, scope: !334)
!451 = !DILocation(line: 29, column: 3, scope: !334)
!452 = !DILocation(line: 29, column: 11, scope: !334)
!453 = !DILocation(line: 29, column: 15, scope: !334)
!454 = !DILocation(line: 30, column: 35, scope: !334)
!455 = !DILocation(line: 30, column: 33, scope: !334)
!456 = !DILocation(line: 30, column: 50, scope: !334)
!457 = !DILocation(line: 30, column: 54, scope: !334)
!458 = !DILocation(line: 30, column: 44, scope: !334)
!459 = !DILocation(line: 30, column: 48, scope: !334)
!460 = !DILocation(line: 30, column: 39, scope: !334)
!461 = !DILocation(line: 30, column: 37, scope: !334)
!462 = !DILocation(line: 30, column: 3, scope: !334)
!463 = !DILocation(line: 30, column: 11, scope: !334)
!464 = !DILocation(line: 30, column: 15, scope: !334)
!465 = !DILocation(line: 32, column: 3, scope: !334)
!466 = distinct !DISubprogram(name: "gsl_sf_bessel_Y1", scope: !1, file: !1, line: 134, type: !467, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!467 = !DISubroutineType(types: !468)
!468 = !{!49, !66}
!469 = !DILocalVariable(name: "x", arg: 1, scope: !466, file: !1, line: 134, type: !66)
!470 = !DILocation(line: 134, column: 38, scope: !466)
!471 = !DILocalVariable(name: "result", scope: !466, file: !1, line: 136, type: !68)
!472 = !DILocation(line: 136, column: 3, scope: !466)
!473 = !DILocalVariable(name: "status", scope: !466, file: !1, line: 136, type: !51)
!474 = !DILocation(line: 136, column: 3, scope: !475)
!475 = distinct !DILexicalBlock(scope: !466, file: !1, line: 136, column: 3)
!476 = !DILocation(line: 136, column: 3, scope: !477)
!477 = !DILexicalBlockFile(scope: !478, file: !1, discriminator: 1)
!478 = distinct !DILexicalBlock(scope: !475, file: !1, line: 136, column: 3)
!479 = distinct !{!479, !480}
!480 = !DILocation(line: 136, column: 3, scope: !478)
!481 = !DILocation(line: 136, column: 3, scope: !482)
!482 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 2)
!483 = distinct !DILexicalBlock(scope: !478, file: !1, line: 136, column: 3)
!484 = !DILocation(line: 136, column: 3, scope: !485)
!485 = !DILexicalBlockFile(scope: !478, file: !1, discriminator: 3)
!486 = !DILocation(line: 136, column: 3, scope: !487)
!487 = !DILexicalBlockFile(scope: !466, file: !1, discriminator: 4)
!488 = !DILocation(line: 137, column: 1, scope: !466)
