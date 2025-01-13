; ModuleID = 'bessel_Y0.c'
source_filename = "bessel_Y0.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Y0.c\00", align 1
@by0_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([13 x double], [13 x double]* @by0_data, i32 0, i32 0), i32 12, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@_gsl_sf_bessel_amp_phase_bm0_cs = external constant %struct.cheb_series_struct, align 8
@_gsl_sf_bessel_amp_phase_bth0_cs = external constant %struct.cheb_series_struct, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_Y0_e(x, &result)\00", align 1
@by0_data = internal global [13 x double] [double 0xBF8718D5FAE52AD9, double 0xBFC06D9DE2F5AD77, double 0xBFBAB8927A8B99F7, double 0x3F983B0C3783AFDB, double 0xBF611FDE7868149D, double 0x3F1B41ACB26FE761, double 0xBECC447A18082B07, double 0x3E74BF97A912DBDD, double 0xBE16C34F3962C677, double 0x3DB36789230EB520, double -1.881050e-13, double 1.641000e-15, double -1.100000e-17], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Y0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !63 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !75, metadata !76), !dbg !77
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !78, metadata !76), !dbg !79
  call void @llvm.dbg.declare(metadata double* %6, metadata !80, metadata !76), !dbg !81
  store double 0x3FE45F306DC9C883, double* %6, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata double* %7, metadata !82, metadata !76), !dbg !83
  store double 0x4330000000000000, double* %7, align 8, !dbg !83
  %20 = load double, double* %4, align 8, !dbg !84
  %21 = fcmp ole double %20, 0.000000e+00, !dbg !86
  br i1 %21, label %22, label %31, !dbg !87

; <label>:22:                                     ; preds = %2
  br label %23, !dbg !88, !llvm.loop !90

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !91
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !91
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !91
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !91
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !91
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !91
  br label %28, !dbg !91, !llvm.loop !94

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 80, i32 1), !dbg !96
  store i32 1, i32* %3, align 4, !dbg !96
  br label %156, !dbg !96
                                                  ; No predecessors!
  br label %30, !dbg !99

; <label>:30:                                     ; preds = %29
  br label %156, !dbg !101

; <label>:31:                                     ; preds = %2
  %32 = load double, double* %4, align 8, !dbg !102
  %33 = fcmp olt double %32, 4.000000e+00, !dbg !104
  br i1 %33, label %34, label %67, !dbg !105

; <label>:34:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !106, metadata !76), !dbg !108
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !109, metadata !76), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %10, metadata !111, metadata !76), !dbg !112
  %35 = load double, double* %4, align 8, !dbg !113
  %36 = call i32 @gsl_sf_bessel_J0_e(double %35, %struct.gsl_sf_result_struct* %8), !dbg !114
  store i32 %36, i32* %10, align 4, !dbg !112
  %37 = load double, double* %4, align 8, !dbg !115
  %38 = fmul double 1.250000e-01, %37, !dbg !116
  %39 = load double, double* %4, align 8, !dbg !117
  %40 = fmul double %38, %39, !dbg !118
  %41 = fsub double %40, 1.000000e+00, !dbg !119
  %42 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @by0_cs, double %41, %struct.gsl_sf_result_struct* %9), !dbg !120
  %43 = load double, double* %4, align 8, !dbg !121
  %44 = call double @log(double %43) #6, !dbg !122
  %45 = fadd double 0xBFE62E42FEFA39EF, %44, !dbg !123
  %46 = fmul double 0x3FE45F306DC9C883, %45, !dbg !124
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !125
  %48 = load double, double* %47, align 8, !dbg !125
  %49 = fmul double %46, %48, !dbg !126
  %50 = fadd double %49, 3.750000e-01, !dbg !127
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !128
  %52 = load double, double* %51, align 8, !dbg !128
  %53 = fadd double %50, %52, !dbg !129
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !130
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !131
  store double %53, double* %55, align 8, !dbg !132
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !133
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !134
  %58 = load double, double* %57, align 8, !dbg !134
  %59 = call double @fabs(double %58) #1, !dbg !135
  %60 = fmul double 0x3CC0000000000000, %59, !dbg !136
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !137
  %62 = load double, double* %61, align 8, !dbg !137
  %63 = fadd double %60, %62, !dbg !138
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !139
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 1, !dbg !140
  store double %63, double* %65, align 8, !dbg !141
  %66 = load i32, i32* %10, align 4, !dbg !142
  store i32 %66, i32* %3, align 4, !dbg !143
  br label %156, !dbg !143

; <label>:67:                                     ; preds = %31
  %68 = load double, double* %4, align 8, !dbg !144
  %69 = fcmp olt double %68, 0x4330000000000000, !dbg !146
  br i1 %69, label %70, label %145, !dbg !147

; <label>:70:                                     ; preds = %67
  call void @llvm.dbg.declare(metadata double* %11, metadata !148, metadata !76), !dbg !150
  %71 = load double, double* %4, align 8, !dbg !151
  %72 = load double, double* %4, align 8, !dbg !152
  %73 = fmul double %71, %72, !dbg !153
  %74 = fdiv double 3.200000e+01, %73, !dbg !154
  %75 = fsub double %74, 1.000000e+00, !dbg !155
  store double %75, double* %11, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !156, metadata !76), !dbg !157
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !158, metadata !76), !dbg !159
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !160, metadata !76), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %15, metadata !162, metadata !76), !dbg !164
  %76 = load double, double* %11, align 8, !dbg !165
  %77 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bm0_cs, double %76, %struct.gsl_sf_result_struct* %12), !dbg !166
  store i32 %77, i32* %15, align 4, !dbg !164
  call void @llvm.dbg.declare(metadata i32* %16, metadata !167, metadata !76), !dbg !168
  %78 = load double, double* %11, align 8, !dbg !169
  %79 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bth0_cs, double %78, %struct.gsl_sf_result_struct* %13), !dbg !170
  store i32 %79, i32* %16, align 4, !dbg !168
  call void @llvm.dbg.declare(metadata i32* %17, metadata !171, metadata !76), !dbg !172
  %80 = load double, double* %4, align 8, !dbg !173
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !174
  %82 = load double, double* %81, align 8, !dbg !174
  %83 = load double, double* %4, align 8, !dbg !175
  %84 = fdiv double %82, %83, !dbg !176
  %85 = call i32 @gsl_sf_bessel_sin_pi4_e(double %80, double %84, %struct.gsl_sf_result_struct* %14), !dbg !177
  store i32 %85, i32* %17, align 4, !dbg !172
  call void @llvm.dbg.declare(metadata double* %18, metadata !178, metadata !76), !dbg !179
  %86 = load double, double* %4, align 8, !dbg !180
  %87 = call double @sqrt(double %86) #6, !dbg !181
  store double %87, double* %18, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata double* %19, metadata !182, metadata !76), !dbg !183
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !184
  %89 = load double, double* %88, align 8, !dbg !184
  %90 = fadd double 7.500000e-01, %89, !dbg !185
  %91 = load double, double* %18, align 8, !dbg !186
  %92 = fdiv double %90, %91, !dbg !187
  store double %92, double* %19, align 8, !dbg !183
  %93 = load double, double* %19, align 8, !dbg !188
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !189
  %95 = load double, double* %94, align 8, !dbg !189
  %96 = fmul double %93, %95, !dbg !190
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !191
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 0, !dbg !192
  store double %96, double* %98, align 8, !dbg !193
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !194
  %100 = load double, double* %99, align 8, !dbg !194
  %101 = call double @fabs(double %100) #1, !dbg !195
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !196
  %103 = load double, double* %102, align 8, !dbg !196
  %104 = fmul double %101, %103, !dbg !197
  %105 = load double, double* %18, align 8, !dbg !198
  %106 = fdiv double %104, %105, !dbg !199
  %107 = load double, double* %19, align 8, !dbg !200
  %108 = call double @fabs(double %107) #1, !dbg !201
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !203
  %110 = load double, double* %109, align 8, !dbg !203
  %111 = fmul double %108, %110, !dbg !204
  %112 = fadd double %106, %111, !dbg !205
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !206
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 1, !dbg !207
  store double %112, double* %114, align 8, !dbg !208
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !209
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 0, !dbg !210
  %117 = load double, double* %116, align 8, !dbg !210
  %118 = call double @fabs(double %117) #1, !dbg !211
  %119 = fmul double 0x3CC0000000000000, %118, !dbg !212
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !213
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 1, !dbg !214
  %122 = load double, double* %121, align 8, !dbg !215
  %123 = fadd double %122, %119, !dbg !215
  store double %123, double* %121, align 8, !dbg !215
  %124 = load i32, i32* %17, align 4, !dbg !216
  %125 = icmp ne i32 %124, 0, !dbg !216
  br i1 %125, label %126, label %128, !dbg !216

; <label>:126:                                    ; preds = %70
  %127 = load i32, i32* %17, align 4, !dbg !217
  br label %143, !dbg !217

; <label>:128:                                    ; preds = %70
  %129 = load i32, i32* %15, align 4, !dbg !218
  %130 = icmp ne i32 %129, 0, !dbg !218
  br i1 %130, label %131, label %133, !dbg !218

; <label>:131:                                    ; preds = %128
  %132 = load i32, i32* %15, align 4, !dbg !220
  br label %141, !dbg !220

; <label>:133:                                    ; preds = %128
  %134 = load i32, i32* %16, align 4, !dbg !222
  %135 = icmp ne i32 %134, 0, !dbg !222
  br i1 %135, label %136, label %138, !dbg !222

; <label>:136:                                    ; preds = %133
  %137 = load i32, i32* %16, align 4, !dbg !224
  br label %139, !dbg !224

; <label>:138:                                    ; preds = %133
  br label %139, !dbg !226

; <label>:139:                                    ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 0, %138 ], !dbg !228
  br label %141, !dbg !228

; <label>:141:                                    ; preds = %139, %131
  %142 = phi i32 [ %132, %131 ], [ %140, %139 ], !dbg !230
  br label %143, !dbg !230

; <label>:143:                                    ; preds = %141, %126
  %144 = phi i32 [ %127, %126 ], [ %142, %141 ], !dbg !232
  store i32 %144, i32* %3, align 4, !dbg !234
  br label %156, !dbg !234

; <label>:145:                                    ; preds = %67
  br label %146, !dbg !235, !llvm.loop !237

; <label>:146:                                    ; preds = %145
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !238
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 0, !dbg !238
  store double 0.000000e+00, double* %148, align 8, !dbg !238
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !238
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 1, !dbg !238
  store double 0x10000000000000, double* %150, align 8, !dbg !238
  br label %151, !dbg !238, !llvm.loop !241

; <label>:151:                                    ; preds = %146
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 110, i32 15), !dbg !243
  store i32 15, i32* %3, align 4, !dbg !243
  br label %156, !dbg !243
                                                  ; No predecessors!
  br label %153, !dbg !246

; <label>:153:                                    ; preds = %152
  br label %154

; <label>:154:                                    ; preds = %153
  br label %155

; <label>:155:                                    ; preds = %154
  br label %156

; <label>:156:                                    ; preds = %28, %34, %143, %151, %155, %30
  %157 = load i32, i32* %3, align 4, !dbg !248
  ret i32 %157, !dbg !248
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

declare i32 @gsl_sf_bessel_J0_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #3 !dbg !249 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !255, metadata !76), !dbg !256
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !257, metadata !76), !dbg !258
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !259, metadata !76), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %7, metadata !261, metadata !76), !dbg !262
  call void @llvm.dbg.declare(metadata double* %8, metadata !263, metadata !76), !dbg !264
  store double 0.000000e+00, double* %8, align 8, !dbg !264
  call void @llvm.dbg.declare(metadata double* %9, metadata !265, metadata !76), !dbg !266
  store double 0.000000e+00, double* %9, align 8, !dbg !266
  call void @llvm.dbg.declare(metadata double* %10, metadata !267, metadata !76), !dbg !268
  %15 = load double, double* %5, align 8, !dbg !269
  %16 = fmul double 2.000000e+00, %15, !dbg !270
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !271
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !272
  %19 = load double, double* %18, align 8, !dbg !272
  %20 = fsub double %16, %19, !dbg !273
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !274
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !275
  %23 = load double, double* %22, align 8, !dbg !275
  %24 = fsub double %20, %23, !dbg !276
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !277
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !278
  %27 = load double, double* %26, align 8, !dbg !278
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !279
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !280
  %30 = load double, double* %29, align 8, !dbg !280
  %31 = fsub double %27, %30, !dbg !281
  %32 = fdiv double %24, %31, !dbg !282
  store double %32, double* %10, align 8, !dbg !268
  call void @llvm.dbg.declare(metadata double* %11, metadata !283, metadata !76), !dbg !284
  %33 = load double, double* %10, align 8, !dbg !285
  %34 = fmul double 2.000000e+00, %33, !dbg !286
  store double %34, double* %11, align 8, !dbg !284
  call void @llvm.dbg.declare(metadata double* %12, metadata !287, metadata !76), !dbg !288
  store double 0.000000e+00, double* %12, align 8, !dbg !288
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !289
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !291
  %37 = load i32, i32* %36, align 8, !dbg !291
  store i32 %37, i32* %7, align 4, !dbg !292
  br label %38, !dbg !293

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !294
  %40 = icmp sge i32 %39, 1, !dbg !297
  br i1 %40, label %41, label %78, !dbg !298

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !299, metadata !76), !dbg !301
  %42 = load double, double* %8, align 8, !dbg !302
  store double %42, double* %13, align 8, !dbg !301
  %43 = load double, double* %11, align 8, !dbg !303
  %44 = load double, double* %8, align 8, !dbg !304
  %45 = fmul double %43, %44, !dbg !305
  %46 = load double, double* %9, align 8, !dbg !306
  %47 = fsub double %45, %46, !dbg !307
  %48 = load i32, i32* %7, align 4, !dbg !308
  %49 = sext i32 %48 to i64, !dbg !309
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !309
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !310
  %52 = load double*, double** %51, align 8, !dbg !310
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !309
  %54 = load double, double* %53, align 8, !dbg !309
  %55 = fadd double %47, %54, !dbg !311
  store double %55, double* %8, align 8, !dbg !312
  %56 = load double, double* %11, align 8, !dbg !313
  %57 = load double, double* %13, align 8, !dbg !314
  %58 = fmul double %56, %57, !dbg !315
  %59 = call double @fabs(double %58) #1, !dbg !316
  %60 = load double, double* %9, align 8, !dbg !317
  %61 = call double @fabs(double %60) #1, !dbg !318
  %62 = fadd double %59, %61, !dbg !320
  %63 = load i32, i32* %7, align 4, !dbg !321
  %64 = sext i32 %63 to i64, !dbg !322
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !322
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !323
  %67 = load double*, double** %66, align 8, !dbg !323
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !322
  %69 = load double, double* %68, align 8, !dbg !322
  %70 = call double @fabs(double %69) #1, !dbg !324
  %71 = fadd double %62, %70, !dbg !326
  %72 = load double, double* %12, align 8, !dbg !327
  %73 = fadd double %72, %71, !dbg !327
  store double %73, double* %12, align 8, !dbg !327
  %74 = load double, double* %13, align 8, !dbg !328
  store double %74, double* %9, align 8, !dbg !329
  br label %75, !dbg !330

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !331
  %77 = add nsw i32 %76, -1, !dbg !331
  store i32 %77, i32* %7, align 4, !dbg !331
  br label %38, !dbg !333, !llvm.loop !334

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !336, metadata !76), !dbg !338
  %79 = load double, double* %8, align 8, !dbg !339
  store double %79, double* %14, align 8, !dbg !338
  %80 = load double, double* %10, align 8, !dbg !340
  %81 = load double, double* %8, align 8, !dbg !341
  %82 = fmul double %80, %81, !dbg !342
  %83 = load double, double* %9, align 8, !dbg !343
  %84 = fsub double %82, %83, !dbg !344
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !345
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !346
  %87 = load double*, double** %86, align 8, !dbg !346
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !345
  %89 = load double, double* %88, align 8, !dbg !345
  %90 = fmul double 5.000000e-01, %89, !dbg !347
  %91 = fadd double %84, %90, !dbg !348
  store double %91, double* %8, align 8, !dbg !349
  %92 = load double, double* %10, align 8, !dbg !350
  %93 = load double, double* %14, align 8, !dbg !351
  %94 = fmul double %92, %93, !dbg !352
  %95 = call double @fabs(double %94) #1, !dbg !353
  %96 = load double, double* %9, align 8, !dbg !354
  %97 = call double @fabs(double %96) #1, !dbg !355
  %98 = fadd double %95, %97, !dbg !357
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !358
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !359
  %101 = load double*, double** %100, align 8, !dbg !359
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !358
  %103 = load double, double* %102, align 8, !dbg !358
  %104 = call double @fabs(double %103) #1, !dbg !360
  %105 = fmul double 5.000000e-01, %104, !dbg !362
  %106 = fadd double %98, %105, !dbg !363
  %107 = load double, double* %12, align 8, !dbg !364
  %108 = fadd double %107, %106, !dbg !364
  store double %108, double* %12, align 8, !dbg !364
  %109 = load double, double* %8, align 8, !dbg !365
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !366
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !367
  store double %109, double* %111, align 8, !dbg !368
  %112 = load double, double* %12, align 8, !dbg !369
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !370
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !371
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !372
  %116 = load i32, i32* %115, align 8, !dbg !372
  %117 = sext i32 %116 to i64, !dbg !373
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !373
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !374
  %120 = load double*, double** %119, align 8, !dbg !374
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !373
  %122 = load double, double* %121, align 8, !dbg !373
  %123 = call double @fabs(double %122) #1, !dbg !375
  %124 = fadd double %113, %123, !dbg !376
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !377
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !378
  store double %124, double* %126, align 8, !dbg !379
  ret i32 0, !dbg !380
}

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

declare i32 @gsl_sf_bessel_sin_pi4_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Y0(double) #0 !dbg !381 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !384, metadata !76), !dbg !385
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !386, metadata !76), !dbg !387
  call void @llvm.dbg.declare(metadata i32* %5, metadata !388, metadata !76), !dbg !387
  %6 = load double, double* %3, align 8, !dbg !387
  %7 = call i32 @gsl_sf_bessel_Y0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !387
  store i32 %7, i32* %5, align 4, !dbg !387
  %8 = load i32, i32* %5, align 4, !dbg !389
  %9 = icmp ne i32 %8, 0, !dbg !389
  br i1 %9, label %10, label %16, !dbg !387

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !391, !llvm.loop !394

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !396
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 121, i32 %12), !dbg !396
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !396
  %14 = load double, double* %13, align 8, !dbg !396
  store double %14, double* %2, align 8, !dbg !396
  br label %19, !dbg !396
                                                  ; No predecessors!
  br label %16, !dbg !399

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !401
  %18 = load double, double* %17, align 8, !dbg !401
  store double %18, double* %2, align 8, !dbg !401
  br label %19, !dbg !401

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !403
  ret double %20, !dbg !403
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_Y0.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = distinct !DIGlobalVariable(name: "by0_cs", scope: !0, file: !1, line: 62, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @by0_cs)
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
!55 = distinct !DIGlobalVariable(name: "by0_data", scope: !0, file: !1, line: 47, type: !56, isLocal: true, isDefinition: true, variable: [13 x double]* @by0_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 832, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 13)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "gsl_sf_bessel_Y0_e", scope: !1, file: !1, line: 72, type: !64, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
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
!75 = !DILocalVariable(name: "x", arg: 1, scope: !63, file: !1, line: 72, type: !66)
!76 = !DIExpression()
!77 = !DILocation(line: 72, column: 37, scope: !63)
!78 = !DILocalVariable(name: "result", arg: 2, scope: !63, file: !1, line: 72, type: !67)
!79 = !DILocation(line: 72, column: 56, scope: !63)
!80 = !DILocalVariable(name: "two_over_pi", scope: !63, file: !1, line: 74, type: !66)
!81 = !DILocation(line: 74, column: 16, scope: !63)
!82 = !DILocalVariable(name: "xmax", scope: !63, file: !1, line: 75, type: !66)
!83 = !DILocation(line: 75, column: 16, scope: !63)
!84 = !DILocation(line: 79, column: 7, scope: !85)
!85 = distinct !DILexicalBlock(scope: !63, file: !1, line: 79, column: 7)
!86 = !DILocation(line: 79, column: 9, scope: !85)
!87 = !DILocation(line: 79, column: 7, scope: !63)
!88 = !DILocation(line: 80, column: 5, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 79, column: 17)
!90 = distinct !{!90, !88}
!91 = !DILocation(line: 80, column: 5, scope: !92)
!92 = !DILexicalBlockFile(scope: !93, file: !1, discriminator: 1)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 80, column: 5)
!94 = distinct !{!94, !95}
!95 = !DILocation(line: 80, column: 5, scope: !93)
!96 = !DILocation(line: 80, column: 5, scope: !97)
!97 = !DILexicalBlockFile(scope: !98, file: !1, discriminator: 2)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 80, column: 5)
!99 = !DILocation(line: 80, column: 5, scope: !100)
!100 = !DILexicalBlockFile(scope: !93, file: !1, discriminator: 3)
!101 = !DILocation(line: 81, column: 3, scope: !89)
!102 = !DILocation(line: 82, column: 11, scope: !103)
!103 = distinct !DILexicalBlock(scope: !85, file: !1, line: 82, column: 11)
!104 = !DILocation(line: 82, column: 13, scope: !103)
!105 = !DILocation(line: 82, column: 11, scope: !85)
!106 = !DILocalVariable(name: "J0", scope: !107, file: !1, line: 83, type: !68)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 82, column: 20)
!108 = !DILocation(line: 83, column: 19, scope: !107)
!109 = !DILocalVariable(name: "c", scope: !107, file: !1, line: 84, type: !68)
!110 = !DILocation(line: 84, column: 19, scope: !107)
!111 = !DILocalVariable(name: "stat_J0", scope: !107, file: !1, line: 85, type: !51)
!112 = !DILocation(line: 85, column: 9, scope: !107)
!113 = !DILocation(line: 85, column: 38, scope: !107)
!114 = !DILocation(line: 85, column: 19, scope: !107)
!115 = !DILocation(line: 86, column: 32, scope: !107)
!116 = !DILocation(line: 86, column: 31, scope: !107)
!117 = !DILocation(line: 86, column: 34, scope: !107)
!118 = !DILocation(line: 86, column: 33, scope: !107)
!119 = !DILocation(line: 86, column: 35, scope: !107)
!120 = !DILocation(line: 86, column: 5, scope: !107)
!121 = !DILocation(line: 87, column: 45, scope: !107)
!122 = !DILocation(line: 87, column: 41, scope: !107)
!123 = !DILocation(line: 87, column: 39, scope: !107)
!124 = !DILocation(line: 87, column: 30, scope: !107)
!125 = !DILocation(line: 87, column: 52, scope: !107)
!126 = !DILocation(line: 87, column: 48, scope: !107)
!127 = !DILocation(line: 87, column: 56, scope: !107)
!128 = !DILocation(line: 87, column: 68, scope: !107)
!129 = !DILocation(line: 87, column: 64, scope: !107)
!130 = !DILocation(line: 87, column: 5, scope: !107)
!131 = !DILocation(line: 87, column: 13, scope: !107)
!132 = !DILocation(line: 87, column: 17, scope: !107)
!133 = !DILocation(line: 88, column: 48, scope: !107)
!134 = !DILocation(line: 88, column: 56, scope: !107)
!135 = !DILocation(line: 88, column: 43, scope: !107)
!136 = !DILocation(line: 88, column: 41, scope: !107)
!137 = !DILocation(line: 88, column: 65, scope: !107)
!138 = !DILocation(line: 88, column: 61, scope: !107)
!139 = !DILocation(line: 88, column: 5, scope: !107)
!140 = !DILocation(line: 88, column: 13, scope: !107)
!141 = !DILocation(line: 88, column: 17, scope: !107)
!142 = !DILocation(line: 89, column: 12, scope: !107)
!143 = !DILocation(line: 89, column: 5, scope: !107)
!144 = !DILocation(line: 91, column: 11, scope: !145)
!145 = distinct !DILexicalBlock(scope: !103, file: !1, line: 91, column: 11)
!146 = !DILocation(line: 91, column: 13, scope: !145)
!147 = !DILocation(line: 91, column: 11, scope: !103)
!148 = !DILocalVariable(name: "z", scope: !149, file: !1, line: 95, type: !66)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 91, column: 21)
!150 = !DILocation(line: 95, column: 18, scope: !149)
!151 = !DILocation(line: 95, column: 29, scope: !149)
!152 = !DILocation(line: 95, column: 31, scope: !149)
!153 = !DILocation(line: 95, column: 30, scope: !149)
!154 = !DILocation(line: 95, column: 27, scope: !149)
!155 = !DILocation(line: 95, column: 34, scope: !149)
!156 = !DILocalVariable(name: "c1", scope: !149, file: !1, line: 96, type: !68)
!157 = !DILocation(line: 96, column: 19, scope: !149)
!158 = !DILocalVariable(name: "c2", scope: !149, file: !1, line: 97, type: !68)
!159 = !DILocation(line: 97, column: 19, scope: !149)
!160 = !DILocalVariable(name: "sp", scope: !149, file: !1, line: 98, type: !68)
!161 = !DILocation(line: 98, column: 19, scope: !149)
!162 = !DILocalVariable(name: "stat_c1", scope: !149, file: !1, line: 99, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!164 = !DILocation(line: 99, column: 15, scope: !149)
!165 = !DILocation(line: 99, column: 72, scope: !149)
!166 = !DILocation(line: 99, column: 25, scope: !149)
!167 = !DILocalVariable(name: "stat_c2", scope: !149, file: !1, line: 100, type: !163)
!168 = !DILocation(line: 100, column: 15, scope: !149)
!169 = !DILocation(line: 100, column: 72, scope: !149)
!170 = !DILocation(line: 100, column: 25, scope: !149)
!171 = !DILocalVariable(name: "stat_sp", scope: !149, file: !1, line: 101, type: !163)
!172 = !DILocation(line: 101, column: 15, scope: !149)
!173 = !DILocation(line: 101, column: 49, scope: !149)
!174 = !DILocation(line: 101, column: 55, scope: !149)
!175 = !DILocation(line: 101, column: 59, scope: !149)
!176 = !DILocation(line: 101, column: 58, scope: !149)
!177 = !DILocation(line: 101, column: 25, scope: !149)
!178 = !DILocalVariable(name: "sqrtx", scope: !149, file: !1, line: 102, type: !66)
!179 = !DILocation(line: 102, column: 18, scope: !149)
!180 = !DILocation(line: 102, column: 31, scope: !149)
!181 = !DILocation(line: 102, column: 26, scope: !149)
!182 = !DILocalVariable(name: "ampl", scope: !149, file: !1, line: 103, type: !66)
!183 = !DILocation(line: 103, column: 18, scope: !149)
!184 = !DILocation(line: 103, column: 37, scope: !149)
!185 = !DILocation(line: 103, column: 32, scope: !149)
!186 = !DILocation(line: 103, column: 44, scope: !149)
!187 = !DILocation(line: 103, column: 42, scope: !149)
!188 = !DILocation(line: 104, column: 20, scope: !149)
!189 = !DILocation(line: 104, column: 30, scope: !149)
!190 = !DILocation(line: 104, column: 25, scope: !149)
!191 = !DILocation(line: 104, column: 5, scope: !149)
!192 = !DILocation(line: 104, column: 13, scope: !149)
!193 = !DILocation(line: 104, column: 18, scope: !149)
!194 = !DILocation(line: 105, column: 28, scope: !149)
!195 = !DILocation(line: 105, column: 20, scope: !149)
!196 = !DILocation(line: 105, column: 38, scope: !149)
!197 = !DILocation(line: 105, column: 33, scope: !149)
!198 = !DILocation(line: 105, column: 42, scope: !149)
!199 = !DILocation(line: 105, column: 41, scope: !149)
!200 = !DILocation(line: 105, column: 55, scope: !149)
!201 = !DILocation(line: 105, column: 50, scope: !202)
!202 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 1)
!203 = !DILocation(line: 105, column: 66, scope: !149)
!204 = !DILocation(line: 105, column: 61, scope: !149)
!205 = !DILocation(line: 105, column: 48, scope: !149)
!206 = !DILocation(line: 105, column: 5, scope: !149)
!207 = !DILocation(line: 105, column: 13, scope: !149)
!208 = !DILocation(line: 105, column: 18, scope: !149)
!209 = !DILocation(line: 106, column: 49, scope: !149)
!210 = !DILocation(line: 106, column: 57, scope: !149)
!211 = !DILocation(line: 106, column: 44, scope: !149)
!212 = !DILocation(line: 106, column: 42, scope: !149)
!213 = !DILocation(line: 106, column: 5, scope: !149)
!214 = !DILocation(line: 106, column: 13, scope: !149)
!215 = !DILocation(line: 106, column: 17, scope: !149)
!216 = !DILocation(line: 107, column: 12, scope: !149)
!217 = !DILocation(line: 107, column: 12, scope: !202)
!218 = !DILocation(line: 107, column: 12, scope: !219)
!219 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 2)
!220 = !DILocation(line: 107, column: 12, scope: !221)
!221 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 3)
!222 = !DILocation(line: 107, column: 12, scope: !223)
!223 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 4)
!224 = !DILocation(line: 107, column: 12, scope: !225)
!225 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 5)
!226 = !DILocation(line: 107, column: 12, scope: !227)
!227 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 6)
!228 = !DILocation(line: 107, column: 12, scope: !229)
!229 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 7)
!230 = !DILocation(line: 107, column: 12, scope: !231)
!231 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 8)
!232 = !DILocation(line: 107, column: 12, scope: !233)
!233 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 9)
!234 = !DILocation(line: 107, column: 5, scope: !233)
!235 = !DILocation(line: 110, column: 5, scope: !236)
!236 = distinct !DILexicalBlock(scope: !145, file: !1, line: 109, column: 8)
!237 = distinct !{!237, !235}
!238 = !DILocation(line: 110, column: 5, scope: !239)
!239 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 1)
!240 = distinct !DILexicalBlock(scope: !236, file: !1, line: 110, column: 5)
!241 = distinct !{!241, !242}
!242 = !DILocation(line: 110, column: 5, scope: !240)
!243 = !DILocation(line: 110, column: 5, scope: !244)
!244 = !DILexicalBlockFile(scope: !245, file: !1, discriminator: 2)
!245 = distinct !DILexicalBlock(scope: !240, file: !1, line: 110, column: 5)
!246 = !DILocation(line: 110, column: 5, scope: !247)
!247 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 3)
!248 = !DILocation(line: 112, column: 1, scope: !63)
!249 = distinct !DISubprogram(name: "cheb_eval_e", scope: !250, file: !250, line: 3, type: !251, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!250 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!251 = !DISubroutineType(types: !252)
!252 = !{!51, !253, !66, !67}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!255 = !DILocalVariable(name: "cs", arg: 1, scope: !249, file: !250, line: 3, type: !253)
!256 = !DILocation(line: 3, column: 33, scope: !249)
!257 = !DILocalVariable(name: "x", arg: 2, scope: !249, file: !250, line: 4, type: !66)
!258 = !DILocation(line: 4, column: 26, scope: !249)
!259 = !DILocalVariable(name: "result", arg: 3, scope: !249, file: !250, line: 5, type: !67)
!260 = !DILocation(line: 5, column: 29, scope: !249)
!261 = !DILocalVariable(name: "j", scope: !249, file: !250, line: 7, type: !51)
!262 = !DILocation(line: 7, column: 7, scope: !249)
!263 = !DILocalVariable(name: "d", scope: !249, file: !250, line: 8, type: !49)
!264 = !DILocation(line: 8, column: 10, scope: !249)
!265 = !DILocalVariable(name: "dd", scope: !249, file: !250, line: 9, type: !49)
!266 = !DILocation(line: 9, column: 10, scope: !249)
!267 = !DILocalVariable(name: "y", scope: !249, file: !250, line: 11, type: !49)
!268 = !DILocation(line: 11, column: 10, scope: !249)
!269 = !DILocation(line: 11, column: 20, scope: !249)
!270 = !DILocation(line: 11, column: 19, scope: !249)
!271 = !DILocation(line: 11, column: 24, scope: !249)
!272 = !DILocation(line: 11, column: 28, scope: !249)
!273 = !DILocation(line: 11, column: 22, scope: !249)
!274 = !DILocation(line: 11, column: 32, scope: !249)
!275 = !DILocation(line: 11, column: 36, scope: !249)
!276 = !DILocation(line: 11, column: 30, scope: !249)
!277 = !DILocation(line: 11, column: 42, scope: !249)
!278 = !DILocation(line: 11, column: 46, scope: !249)
!279 = !DILocation(line: 11, column: 50, scope: !249)
!280 = !DILocation(line: 11, column: 54, scope: !249)
!281 = !DILocation(line: 11, column: 48, scope: !249)
!282 = !DILocation(line: 11, column: 39, scope: !249)
!283 = !DILocalVariable(name: "y2", scope: !249, file: !250, line: 12, type: !49)
!284 = !DILocation(line: 12, column: 10, scope: !249)
!285 = !DILocation(line: 12, column: 21, scope: !249)
!286 = !DILocation(line: 12, column: 19, scope: !249)
!287 = !DILocalVariable(name: "e", scope: !249, file: !250, line: 14, type: !49)
!288 = !DILocation(line: 14, column: 10, scope: !249)
!289 = !DILocation(line: 16, column: 11, scope: !290)
!290 = distinct !DILexicalBlock(scope: !249, file: !250, line: 16, column: 3)
!291 = !DILocation(line: 16, column: 15, scope: !290)
!292 = !DILocation(line: 16, column: 9, scope: !290)
!293 = !DILocation(line: 16, column: 7, scope: !290)
!294 = !DILocation(line: 16, column: 22, scope: !295)
!295 = !DILexicalBlockFile(scope: !296, file: !250, discriminator: 1)
!296 = distinct !DILexicalBlock(scope: !290, file: !250, line: 16, column: 3)
!297 = !DILocation(line: 16, column: 23, scope: !295)
!298 = !DILocation(line: 16, column: 3, scope: !295)
!299 = !DILocalVariable(name: "temp", scope: !300, file: !250, line: 17, type: !49)
!300 = distinct !DILexicalBlock(scope: !296, file: !250, line: 16, column: 33)
!301 = !DILocation(line: 17, column: 12, scope: !300)
!302 = !DILocation(line: 17, column: 19, scope: !300)
!303 = !DILocation(line: 18, column: 9, scope: !300)
!304 = !DILocation(line: 18, column: 12, scope: !300)
!305 = !DILocation(line: 18, column: 11, scope: !300)
!306 = !DILocation(line: 18, column: 16, scope: !300)
!307 = !DILocation(line: 18, column: 14, scope: !300)
!308 = !DILocation(line: 18, column: 27, scope: !300)
!309 = !DILocation(line: 18, column: 21, scope: !300)
!310 = !DILocation(line: 18, column: 25, scope: !300)
!311 = !DILocation(line: 18, column: 19, scope: !300)
!312 = !DILocation(line: 18, column: 7, scope: !300)
!313 = !DILocation(line: 19, column: 15, scope: !300)
!314 = !DILocation(line: 19, column: 18, scope: !300)
!315 = !DILocation(line: 19, column: 17, scope: !300)
!316 = !DILocation(line: 19, column: 10, scope: !300)
!317 = !DILocation(line: 19, column: 31, scope: !300)
!318 = !DILocation(line: 19, column: 26, scope: !319)
!319 = !DILexicalBlockFile(scope: !300, file: !250, discriminator: 1)
!320 = !DILocation(line: 19, column: 24, scope: !300)
!321 = !DILocation(line: 19, column: 48, scope: !300)
!322 = !DILocation(line: 19, column: 42, scope: !300)
!323 = !DILocation(line: 19, column: 46, scope: !300)
!324 = !DILocation(line: 19, column: 37, scope: !325)
!325 = !DILexicalBlockFile(scope: !300, file: !250, discriminator: 2)
!326 = !DILocation(line: 19, column: 35, scope: !300)
!327 = !DILocation(line: 19, column: 7, scope: !300)
!328 = !DILocation(line: 20, column: 10, scope: !300)
!329 = !DILocation(line: 20, column: 8, scope: !300)
!330 = !DILocation(line: 21, column: 3, scope: !300)
!331 = !DILocation(line: 16, column: 29, scope: !332)
!332 = !DILexicalBlockFile(scope: !296, file: !250, discriminator: 2)
!333 = !DILocation(line: 16, column: 3, scope: !332)
!334 = distinct !{!334, !335}
!335 = !DILocation(line: 16, column: 3, scope: !249)
!336 = !DILocalVariable(name: "temp", scope: !337, file: !250, line: 24, type: !49)
!337 = distinct !DILexicalBlock(scope: !249, file: !250, line: 23, column: 3)
!338 = !DILocation(line: 24, column: 12, scope: !337)
!339 = !DILocation(line: 24, column: 19, scope: !337)
!340 = !DILocation(line: 25, column: 9, scope: !337)
!341 = !DILocation(line: 25, column: 11, scope: !337)
!342 = !DILocation(line: 25, column: 10, scope: !337)
!343 = !DILocation(line: 25, column: 15, scope: !337)
!344 = !DILocation(line: 25, column: 13, scope: !337)
!345 = !DILocation(line: 25, column: 26, scope: !337)
!346 = !DILocation(line: 25, column: 30, scope: !337)
!347 = !DILocation(line: 25, column: 24, scope: !337)
!348 = !DILocation(line: 25, column: 18, scope: !337)
!349 = !DILocation(line: 25, column: 7, scope: !337)
!350 = !DILocation(line: 26, column: 15, scope: !337)
!351 = !DILocation(line: 26, column: 17, scope: !337)
!352 = !DILocation(line: 26, column: 16, scope: !337)
!353 = !DILocation(line: 26, column: 10, scope: !337)
!354 = !DILocation(line: 26, column: 30, scope: !337)
!355 = !DILocation(line: 26, column: 25, scope: !356)
!356 = !DILexicalBlockFile(scope: !337, file: !250, discriminator: 1)
!357 = !DILocation(line: 26, column: 23, scope: !337)
!358 = !DILocation(line: 26, column: 47, scope: !337)
!359 = !DILocation(line: 26, column: 51, scope: !337)
!360 = !DILocation(line: 26, column: 42, scope: !361)
!361 = !DILexicalBlockFile(scope: !337, file: !250, discriminator: 2)
!362 = !DILocation(line: 26, column: 40, scope: !337)
!363 = !DILocation(line: 26, column: 34, scope: !337)
!364 = !DILocation(line: 26, column: 7, scope: !337)
!365 = !DILocation(line: 29, column: 17, scope: !249)
!366 = !DILocation(line: 29, column: 3, scope: !249)
!367 = !DILocation(line: 29, column: 11, scope: !249)
!368 = !DILocation(line: 29, column: 15, scope: !249)
!369 = !DILocation(line: 30, column: 35, scope: !249)
!370 = !DILocation(line: 30, column: 33, scope: !249)
!371 = !DILocation(line: 30, column: 50, scope: !249)
!372 = !DILocation(line: 30, column: 54, scope: !249)
!373 = !DILocation(line: 30, column: 44, scope: !249)
!374 = !DILocation(line: 30, column: 48, scope: !249)
!375 = !DILocation(line: 30, column: 39, scope: !249)
!376 = !DILocation(line: 30, column: 37, scope: !249)
!377 = !DILocation(line: 30, column: 3, scope: !249)
!378 = !DILocation(line: 30, column: 11, scope: !249)
!379 = !DILocation(line: 30, column: 15, scope: !249)
!380 = !DILocation(line: 32, column: 3, scope: !249)
!381 = distinct !DISubprogram(name: "gsl_sf_bessel_Y0", scope: !1, file: !1, line: 119, type: !382, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!382 = !DISubroutineType(types: !383)
!383 = !{!49, !66}
!384 = !DILocalVariable(name: "x", arg: 1, scope: !381, file: !1, line: 119, type: !66)
!385 = !DILocation(line: 119, column: 38, scope: !381)
!386 = !DILocalVariable(name: "result", scope: !381, file: !1, line: 121, type: !68)
!387 = !DILocation(line: 121, column: 3, scope: !381)
!388 = !DILocalVariable(name: "status", scope: !381, file: !1, line: 121, type: !51)
!389 = !DILocation(line: 121, column: 3, scope: !390)
!390 = distinct !DILexicalBlock(scope: !381, file: !1, line: 121, column: 3)
!391 = !DILocation(line: 121, column: 3, scope: !392)
!392 = !DILexicalBlockFile(scope: !393, file: !1, discriminator: 1)
!393 = distinct !DILexicalBlock(scope: !390, file: !1, line: 121, column: 3)
!394 = distinct !{!394, !395}
!395 = !DILocation(line: 121, column: 3, scope: !393)
!396 = !DILocation(line: 121, column: 3, scope: !397)
!397 = !DILexicalBlockFile(scope: !398, file: !1, discriminator: 2)
!398 = distinct !DILexicalBlock(scope: !393, file: !1, line: 121, column: 3)
!399 = !DILocation(line: 121, column: 3, scope: !400)
!400 = !DILexicalBlockFile(scope: !393, file: !1, discriminator: 3)
!401 = !DILocation(line: 121, column: 3, scope: !402)
!402 = !DILexicalBlockFile(scope: !381, file: !1, discriminator: 4)
!403 = !DILocation(line: 122, column: 1, scope: !381)
