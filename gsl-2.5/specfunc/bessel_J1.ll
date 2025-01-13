; ModuleID = 'bessel_J1.c'
source_filename = "bessel_J1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_J1.c\00", align 1
@bj1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([12 x double], [12 x double]* @bj1_data, i32 0, i32 0), i32 11, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@_gsl_sf_bessel_amp_phase_bm1_cs = external constant %struct.cheb_series_struct, align 8
@_gsl_sf_bessel_amp_phase_bth1_cs = external constant %struct.cheb_series_struct, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_J1_e(x, &result)\00", align 1
@bj1_data = internal global [12 x double] [double 0xBFBE04D817149007, double 0xBFD03B3B53199F79, double 0x3FA9AA41BAF1C97A, double 0xBF72F87ECA366473, double 0x3F3040AFB1E32CC6, double 0xBEE233799FEAFA80, double 0x3E8CC3153AB24D21, double 0xBE30E7C7B52E9CC8, double 0x3DCEBCE3B8C9AB8A, double -6.327610e-13, double 5.840000e-15, double -4.400000e-17], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_J1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !63 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !75, metadata !76), !dbg !77
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !78, metadata !76), !dbg !79
  call void @llvm.dbg.declare(metadata double* %6, metadata !80, metadata !76), !dbg !81
  %17 = load double, double* %4, align 8, !dbg !82
  %18 = call double @fabs(double %17) #1, !dbg !83
  store double %18, double* %6, align 8, !dbg !81
  %19 = load double, double* %6, align 8, !dbg !84
  %20 = fcmp oeq double %19, 0.000000e+00, !dbg !86
  br i1 %20, label %21, label %26, !dbg !87

; <label>:21:                                     ; preds = %2
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !88
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !90
  store double 0.000000e+00, double* %23, align 8, !dbg !91
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !92
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !93
  store double 0.000000e+00, double* %25, align 8, !dbg !94
  store i32 0, i32* %3, align 4, !dbg !95
  br label %156, !dbg !95

; <label>:26:                                     ; preds = %2
  %27 = load double, double* %6, align 8, !dbg !96
  %28 = fcmp olt double %27, 0x20000000000000, !dbg !98
  br i1 %28, label %29, label %38, !dbg !99

; <label>:29:                                     ; preds = %26
  br label %30, !dbg !100, !llvm.loop !102

; <label>:30:                                     ; preds = %29
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !103
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !103
  store double 0.000000e+00, double* %32, align 8, !dbg !103
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !103
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !103
  store double 0x10000000000000, double* %34, align 8, !dbg !103
  br label %35, !dbg !103, !llvm.loop !106

; <label>:35:                                     ; preds = %30
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 86, i32 15), !dbg !108
  store i32 15, i32* %3, align 4, !dbg !108
  br label %156, !dbg !108
                                                  ; No predecessors!
  br label %37, !dbg !111

; <label>:37:                                     ; preds = %36
  br label %155, !dbg !113

; <label>:38:                                     ; preds = %26
  %39 = load double, double* %6, align 8, !dbg !114
  %40 = fcmp olt double %39, 0x3E66A09E667F3BCD, !dbg !116
  br i1 %40, label %41, label %48, !dbg !117

; <label>:41:                                     ; preds = %38
  %42 = load double, double* %4, align 8, !dbg !118
  %43 = fmul double 5.000000e-01, %42, !dbg !120
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !121
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !122
  store double %43, double* %45, align 8, !dbg !123
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !124
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !125
  store double 0.000000e+00, double* %47, align 8, !dbg !126
  store i32 0, i32* %3, align 4, !dbg !127
  br label %156, !dbg !127

; <label>:48:                                     ; preds = %38
  %49 = load double, double* %6, align 8, !dbg !128
  %50 = fcmp olt double %49, 4.000000e+00, !dbg !130
  br i1 %50, label %51, label %72, !dbg !131

; <label>:51:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !132, metadata !76), !dbg !134
  %52 = load double, double* %6, align 8, !dbg !135
  %53 = fmul double 1.250000e-01, %52, !dbg !136
  %54 = load double, double* %6, align 8, !dbg !137
  %55 = fmul double %53, %54, !dbg !138
  %56 = fsub double %55, 1.000000e+00, !dbg !139
  %57 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @bj1_cs, double %56, %struct.gsl_sf_result_struct* %7), !dbg !140
  %58 = load double, double* %4, align 8, !dbg !141
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !142
  %60 = load double, double* %59, align 8, !dbg !142
  %61 = fadd double 2.500000e-01, %60, !dbg !143
  %62 = fmul double %58, %61, !dbg !144
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !145
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !146
  store double %62, double* %64, align 8, !dbg !147
  %65 = load double, double* %4, align 8, !dbg !148
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !149
  %67 = load double, double* %66, align 8, !dbg !149
  %68 = fmul double %65, %67, !dbg !150
  %69 = call double @fabs(double %68) #1, !dbg !151
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !152
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 1, !dbg !153
  store double %69, double* %71, align 8, !dbg !154
  store i32 0, i32* %3, align 4, !dbg !155
  br label %156, !dbg !155

; <label>:72:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata double* %8, metadata !156, metadata !76), !dbg !158
  %73 = load double, double* %6, align 8, !dbg !159
  %74 = load double, double* %6, align 8, !dbg !160
  %75 = fmul double %73, %74, !dbg !161
  %76 = fdiv double 3.200000e+01, %75, !dbg !162
  %77 = fsub double %76, 1.000000e+00, !dbg !163
  store double %77, double* %8, align 8, !dbg !158
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !164, metadata !76), !dbg !165
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !166, metadata !76), !dbg !167
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !168, metadata !76), !dbg !169
  call void @llvm.dbg.declare(metadata i32* %12, metadata !170, metadata !76), !dbg !172
  %78 = load double, double* %8, align 8, !dbg !173
  %79 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bm1_cs, double %78, %struct.gsl_sf_result_struct* %9), !dbg !174
  store i32 %79, i32* %12, align 4, !dbg !172
  call void @llvm.dbg.declare(metadata i32* %13, metadata !175, metadata !76), !dbg !176
  %80 = load double, double* %8, align 8, !dbg !177
  %81 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bth1_cs, double %80, %struct.gsl_sf_result_struct* %10), !dbg !178
  store i32 %81, i32* %13, align 4, !dbg !176
  call void @llvm.dbg.declare(metadata i32* %14, metadata !179, metadata !76), !dbg !180
  %82 = load double, double* %6, align 8, !dbg !181
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !182
  %84 = load double, double* %83, align 8, !dbg !182
  %85 = load double, double* %6, align 8, !dbg !183
  %86 = fdiv double %84, %85, !dbg !184
  %87 = call i32 @gsl_sf_bessel_sin_pi4_e(double %82, double %86, %struct.gsl_sf_result_struct* %11), !dbg !185
  store i32 %87, i32* %14, align 4, !dbg !180
  call void @llvm.dbg.declare(metadata double* %15, metadata !186, metadata !76), !dbg !187
  %88 = load double, double* %6, align 8, !dbg !188
  %89 = call double @sqrt(double %88) #6, !dbg !189
  store double %89, double* %15, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata double* %16, metadata !190, metadata !76), !dbg !191
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !192
  %91 = load double, double* %90, align 8, !dbg !192
  %92 = fadd double 7.500000e-01, %91, !dbg !193
  %93 = load double, double* %15, align 8, !dbg !194
  %94 = fdiv double %92, %93, !dbg !195
  store double %94, double* %16, align 8, !dbg !191
  %95 = load double, double* %4, align 8, !dbg !196
  %96 = fcmp olt double %95, 0.000000e+00, !dbg !197
  br i1 %96, label %97, label %100, !dbg !196

; <label>:97:                                     ; preds = %72
  %98 = load double, double* %16, align 8, !dbg !198
  %99 = fsub double -0.000000e+00, %98, !dbg !200
  br label %102, !dbg !201

; <label>:100:                                    ; preds = %72
  %101 = load double, double* %16, align 8, !dbg !202
  br label %102, !dbg !204

; <label>:102:                                    ; preds = %100, %97
  %103 = phi double [ %99, %97 ], [ %101, %100 ], !dbg !205
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !207
  %105 = load double, double* %104, align 8, !dbg !207
  %106 = fmul double %103, %105, !dbg !208
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !209
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 0, !dbg !210
  store double %106, double* %108, align 8, !dbg !211
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !212
  %110 = load double, double* %109, align 8, !dbg !212
  %111 = call double @fabs(double %110) #1, !dbg !213
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !214
  %113 = load double, double* %112, align 8, !dbg !214
  %114 = fmul double %111, %113, !dbg !215
  %115 = load double, double* %15, align 8, !dbg !216
  %116 = fdiv double %114, %115, !dbg !217
  %117 = load double, double* %16, align 8, !dbg !218
  %118 = call double @fabs(double %117) #1, !dbg !219
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !220
  %120 = load double, double* %119, align 8, !dbg !220
  %121 = fmul double %118, %120, !dbg !221
  %122 = fadd double %116, %121, !dbg !222
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !223
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 1, !dbg !224
  store double %122, double* %124, align 8, !dbg !225
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !226
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !227
  %127 = load double, double* %126, align 8, !dbg !227
  %128 = call double @fabs(double %127) #1, !dbg !228
  %129 = fmul double 0x3CB0000000000000, %128, !dbg !229
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !230
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 1, !dbg !231
  %132 = load double, double* %131, align 8, !dbg !232
  %133 = fadd double %132, %129, !dbg !232
  store double %133, double* %131, align 8, !dbg !232
  %134 = load i32, i32* %12, align 4, !dbg !233
  %135 = icmp ne i32 %134, 0, !dbg !233
  br i1 %135, label %136, label %138, !dbg !233

; <label>:136:                                    ; preds = %102
  %137 = load i32, i32* %12, align 4, !dbg !234
  br label %153, !dbg !234

; <label>:138:                                    ; preds = %102
  %139 = load i32, i32* %13, align 4, !dbg !235
  %140 = icmp ne i32 %139, 0, !dbg !235
  br i1 %140, label %141, label %143, !dbg !235

; <label>:141:                                    ; preds = %138
  %142 = load i32, i32* %13, align 4, !dbg !236
  br label %151, !dbg !236

; <label>:143:                                    ; preds = %138
  %144 = load i32, i32* %14, align 4, !dbg !237
  %145 = icmp ne i32 %144, 0, !dbg !237
  br i1 %145, label %146, label %148, !dbg !237

; <label>:146:                                    ; preds = %143
  %147 = load i32, i32* %14, align 4, !dbg !239
  br label %149, !dbg !239

; <label>:148:                                    ; preds = %143
  br label %149, !dbg !241

; <label>:149:                                    ; preds = %148, %146
  %150 = phi i32 [ %147, %146 ], [ 0, %148 ], !dbg !243
  br label %151, !dbg !243

; <label>:151:                                    ; preds = %149, %141
  %152 = phi i32 [ %142, %141 ], [ %150, %149 ], !dbg !245
  br label %153, !dbg !245

; <label>:153:                                    ; preds = %151, %136
  %154 = phi i32 [ %137, %136 ], [ %152, %151 ], !dbg !247
  store i32 %154, i32* %3, align 4, !dbg !249
  br label %156, !dbg !249

; <label>:155:                                    ; preds = %37
  br label %156

; <label>:156:                                    ; preds = %21, %35, %41, %51, %153, %155
  %157 = load i32, i32* %3, align 4, !dbg !250
  ret i32 %157, !dbg !250
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !251 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !257, metadata !76), !dbg !258
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !259, metadata !76), !dbg !260
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !261, metadata !76), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %7, metadata !263, metadata !76), !dbg !264
  call void @llvm.dbg.declare(metadata double* %8, metadata !265, metadata !76), !dbg !266
  store double 0.000000e+00, double* %8, align 8, !dbg !266
  call void @llvm.dbg.declare(metadata double* %9, metadata !267, metadata !76), !dbg !268
  store double 0.000000e+00, double* %9, align 8, !dbg !268
  call void @llvm.dbg.declare(metadata double* %10, metadata !269, metadata !76), !dbg !270
  %15 = load double, double* %5, align 8, !dbg !271
  %16 = fmul double 2.000000e+00, %15, !dbg !272
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !273
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !274
  %19 = load double, double* %18, align 8, !dbg !274
  %20 = fsub double %16, %19, !dbg !275
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !276
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !277
  %23 = load double, double* %22, align 8, !dbg !277
  %24 = fsub double %20, %23, !dbg !278
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !279
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !280
  %27 = load double, double* %26, align 8, !dbg !280
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !281
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !282
  %30 = load double, double* %29, align 8, !dbg !282
  %31 = fsub double %27, %30, !dbg !283
  %32 = fdiv double %24, %31, !dbg !284
  store double %32, double* %10, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata double* %11, metadata !285, metadata !76), !dbg !286
  %33 = load double, double* %10, align 8, !dbg !287
  %34 = fmul double 2.000000e+00, %33, !dbg !288
  store double %34, double* %11, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata double* %12, metadata !289, metadata !76), !dbg !290
  store double 0.000000e+00, double* %12, align 8, !dbg !290
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !291
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !293
  %37 = load i32, i32* %36, align 8, !dbg !293
  store i32 %37, i32* %7, align 4, !dbg !294
  br label %38, !dbg !295

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !296
  %40 = icmp sge i32 %39, 1, !dbg !299
  br i1 %40, label %41, label %78, !dbg !300

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !301, metadata !76), !dbg !303
  %42 = load double, double* %8, align 8, !dbg !304
  store double %42, double* %13, align 8, !dbg !303
  %43 = load double, double* %11, align 8, !dbg !305
  %44 = load double, double* %8, align 8, !dbg !306
  %45 = fmul double %43, %44, !dbg !307
  %46 = load double, double* %9, align 8, !dbg !308
  %47 = fsub double %45, %46, !dbg !309
  %48 = load i32, i32* %7, align 4, !dbg !310
  %49 = sext i32 %48 to i64, !dbg !311
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !311
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !312
  %52 = load double*, double** %51, align 8, !dbg !312
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !311
  %54 = load double, double* %53, align 8, !dbg !311
  %55 = fadd double %47, %54, !dbg !313
  store double %55, double* %8, align 8, !dbg !314
  %56 = load double, double* %11, align 8, !dbg !315
  %57 = load double, double* %13, align 8, !dbg !316
  %58 = fmul double %56, %57, !dbg !317
  %59 = call double @fabs(double %58) #1, !dbg !318
  %60 = load double, double* %9, align 8, !dbg !319
  %61 = call double @fabs(double %60) #1, !dbg !320
  %62 = fadd double %59, %61, !dbg !322
  %63 = load i32, i32* %7, align 4, !dbg !323
  %64 = sext i32 %63 to i64, !dbg !324
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !324
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !325
  %67 = load double*, double** %66, align 8, !dbg !325
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !324
  %69 = load double, double* %68, align 8, !dbg !324
  %70 = call double @fabs(double %69) #1, !dbg !326
  %71 = fadd double %62, %70, !dbg !328
  %72 = load double, double* %12, align 8, !dbg !329
  %73 = fadd double %72, %71, !dbg !329
  store double %73, double* %12, align 8, !dbg !329
  %74 = load double, double* %13, align 8, !dbg !330
  store double %74, double* %9, align 8, !dbg !331
  br label %75, !dbg !332

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !333
  %77 = add nsw i32 %76, -1, !dbg !333
  store i32 %77, i32* %7, align 4, !dbg !333
  br label %38, !dbg !335, !llvm.loop !336

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !338, metadata !76), !dbg !340
  %79 = load double, double* %8, align 8, !dbg !341
  store double %79, double* %14, align 8, !dbg !340
  %80 = load double, double* %10, align 8, !dbg !342
  %81 = load double, double* %8, align 8, !dbg !343
  %82 = fmul double %80, %81, !dbg !344
  %83 = load double, double* %9, align 8, !dbg !345
  %84 = fsub double %82, %83, !dbg !346
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !347
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !348
  %87 = load double*, double** %86, align 8, !dbg !348
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !347
  %89 = load double, double* %88, align 8, !dbg !347
  %90 = fmul double 5.000000e-01, %89, !dbg !349
  %91 = fadd double %84, %90, !dbg !350
  store double %91, double* %8, align 8, !dbg !351
  %92 = load double, double* %10, align 8, !dbg !352
  %93 = load double, double* %14, align 8, !dbg !353
  %94 = fmul double %92, %93, !dbg !354
  %95 = call double @fabs(double %94) #1, !dbg !355
  %96 = load double, double* %9, align 8, !dbg !356
  %97 = call double @fabs(double %96) #1, !dbg !357
  %98 = fadd double %95, %97, !dbg !359
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !360
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !361
  %101 = load double*, double** %100, align 8, !dbg !361
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !360
  %103 = load double, double* %102, align 8, !dbg !360
  %104 = call double @fabs(double %103) #1, !dbg !362
  %105 = fmul double 5.000000e-01, %104, !dbg !364
  %106 = fadd double %98, %105, !dbg !365
  %107 = load double, double* %12, align 8, !dbg !366
  %108 = fadd double %107, %106, !dbg !366
  store double %108, double* %12, align 8, !dbg !366
  %109 = load double, double* %8, align 8, !dbg !367
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !368
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !369
  store double %109, double* %111, align 8, !dbg !370
  %112 = load double, double* %12, align 8, !dbg !371
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !372
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !373
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !374
  %116 = load i32, i32* %115, align 8, !dbg !374
  %117 = sext i32 %116 to i64, !dbg !375
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !375
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !376
  %120 = load double*, double** %119, align 8, !dbg !376
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !375
  %122 = load double, double* %121, align 8, !dbg !375
  %123 = call double @fabs(double %122) #1, !dbg !377
  %124 = fadd double %113, %123, !dbg !378
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !379
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !380
  store double %124, double* %126, align 8, !dbg !381
  ret i32 0, !dbg !382
}

declare i32 @gsl_sf_bessel_sin_pi4_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_J1(double) #0 !dbg !383 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !386, metadata !76), !dbg !387
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !388, metadata !76), !dbg !389
  call void @llvm.dbg.declare(metadata i32* %5, metadata !390, metadata !76), !dbg !389
  %6 = load double, double* %3, align 8, !dbg !389
  %7 = call i32 @gsl_sf_bessel_J1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !389
  store i32 %7, i32* %5, align 4, !dbg !389
  %8 = load i32, i32* %5, align 4, !dbg !391
  %9 = icmp ne i32 %8, 0, !dbg !391
  br i1 %9, label %10, label %16, !dbg !389

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !393, !llvm.loop !396

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !398
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 127, i32 %12), !dbg !398
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !398
  %14 = load double, double* %13, align 8, !dbg !398
  store double %14, double* %2, align 8, !dbg !398
  br label %19, !dbg !398
                                                  ; No predecessors!
  br label %16, !dbg !401

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !403
  %18 = load double, double* %17, align 8, !dbg !403
  store double %18, double* %2, align 8, !dbg !403
  br label %19, !dbg !403

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !405
  ret double %20, !dbg !405
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_J1.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = distinct !DIGlobalVariable(name: "bj1_cs", scope: !0, file: !1, line: 64, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bj1_cs)
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
!55 = distinct !DIGlobalVariable(name: "bj1_data", scope: !0, file: !1, line: 50, type: !56, isLocal: true, isDefinition: true, variable: [12 x double]* @bj1_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 768, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 12)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "gsl_sf_bessel_J1_e", scope: !1, file: !1, line: 74, type: !64, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
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
!75 = !DILocalVariable(name: "x", arg: 1, scope: !63, file: !1, line: 74, type: !66)
!76 = !DIExpression()
!77 = !DILocation(line: 74, column: 37, scope: !63)
!78 = !DILocalVariable(name: "result", arg: 2, scope: !63, file: !1, line: 74, type: !67)
!79 = !DILocation(line: 74, column: 56, scope: !63)
!80 = !DILocalVariable(name: "y", scope: !63, file: !1, line: 76, type: !49)
!81 = !DILocation(line: 76, column: 10, scope: !63)
!82 = !DILocation(line: 76, column: 19, scope: !63)
!83 = !DILocation(line: 76, column: 14, scope: !63)
!84 = !DILocation(line: 80, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !63, file: !1, line: 80, column: 6)
!86 = !DILocation(line: 80, column: 8, scope: !85)
!87 = !DILocation(line: 80, column: 6, scope: !63)
!88 = !DILocation(line: 81, column: 5, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 80, column: 16)
!90 = !DILocation(line: 81, column: 13, scope: !89)
!91 = !DILocation(line: 81, column: 17, scope: !89)
!92 = !DILocation(line: 82, column: 5, scope: !89)
!93 = !DILocation(line: 82, column: 13, scope: !89)
!94 = !DILocation(line: 82, column: 17, scope: !89)
!95 = !DILocation(line: 83, column: 5, scope: !89)
!96 = !DILocation(line: 85, column: 11, scope: !97)
!97 = distinct !DILexicalBlock(scope: !85, file: !1, line: 85, column: 11)
!98 = !DILocation(line: 85, column: 13, scope: !97)
!99 = !DILocation(line: 85, column: 11, scope: !85)
!100 = !DILocation(line: 86, column: 5, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 85, column: 32)
!102 = distinct !{!102, !100}
!103 = !DILocation(line: 86, column: 5, scope: !104)
!104 = !DILexicalBlockFile(scope: !105, file: !1, discriminator: 1)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 86, column: 5)
!106 = distinct !{!106, !107}
!107 = !DILocation(line: 86, column: 5, scope: !105)
!108 = !DILocation(line: 86, column: 5, scope: !109)
!109 = !DILexicalBlockFile(scope: !110, file: !1, discriminator: 2)
!110 = distinct !DILexicalBlock(scope: !105, file: !1, line: 86, column: 5)
!111 = !DILocation(line: 86, column: 5, scope: !112)
!112 = !DILexicalBlockFile(scope: !105, file: !1, discriminator: 3)
!113 = !DILocation(line: 87, column: 3, scope: !101)
!114 = !DILocation(line: 88, column: 11, scope: !115)
!115 = distinct !DILexicalBlock(scope: !97, file: !1, line: 88, column: 11)
!116 = !DILocation(line: 88, column: 13, scope: !115)
!117 = !DILocation(line: 88, column: 11, scope: !97)
!118 = !DILocation(line: 89, column: 23, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 88, column: 50)
!120 = !DILocation(line: 89, column: 22, scope: !119)
!121 = !DILocation(line: 89, column: 5, scope: !119)
!122 = !DILocation(line: 89, column: 13, scope: !119)
!123 = !DILocation(line: 89, column: 17, scope: !119)
!124 = !DILocation(line: 90, column: 5, scope: !119)
!125 = !DILocation(line: 90, column: 13, scope: !119)
!126 = !DILocation(line: 90, column: 17, scope: !119)
!127 = !DILocation(line: 91, column: 5, scope: !119)
!128 = !DILocation(line: 93, column: 11, scope: !129)
!129 = distinct !DILexicalBlock(scope: !115, file: !1, line: 93, column: 11)
!130 = !DILocation(line: 93, column: 13, scope: !129)
!131 = !DILocation(line: 93, column: 11, scope: !115)
!132 = !DILocalVariable(name: "c", scope: !133, file: !1, line: 94, type: !68)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 93, column: 20)
!134 = !DILocation(line: 94, column: 19, scope: !133)
!135 = !DILocation(line: 95, column: 32, scope: !133)
!136 = !DILocation(line: 95, column: 31, scope: !133)
!137 = !DILocation(line: 95, column: 34, scope: !133)
!138 = !DILocation(line: 95, column: 33, scope: !133)
!139 = !DILocation(line: 95, column: 35, scope: !133)
!140 = !DILocation(line: 95, column: 5, scope: !133)
!141 = !DILocation(line: 96, column: 19, scope: !133)
!142 = !DILocation(line: 96, column: 33, scope: !133)
!143 = !DILocation(line: 96, column: 29, scope: !133)
!144 = !DILocation(line: 96, column: 21, scope: !133)
!145 = !DILocation(line: 96, column: 5, scope: !133)
!146 = !DILocation(line: 96, column: 13, scope: !133)
!147 = !DILocation(line: 96, column: 17, scope: !133)
!148 = !DILocation(line: 97, column: 24, scope: !133)
!149 = !DILocation(line: 97, column: 30, scope: !133)
!150 = !DILocation(line: 97, column: 26, scope: !133)
!151 = !DILocation(line: 97, column: 19, scope: !133)
!152 = !DILocation(line: 97, column: 5, scope: !133)
!153 = !DILocation(line: 97, column: 13, scope: !133)
!154 = !DILocation(line: 97, column: 17, scope: !133)
!155 = !DILocation(line: 98, column: 5, scope: !133)
!156 = !DILocalVariable(name: "z", scope: !157, file: !1, line: 105, type: !66)
!157 = distinct !DILexicalBlock(scope: !129, file: !1, line: 100, column: 8)
!158 = !DILocation(line: 105, column: 18, scope: !157)
!159 = !DILocation(line: 105, column: 29, scope: !157)
!160 = !DILocation(line: 105, column: 31, scope: !157)
!161 = !DILocation(line: 105, column: 30, scope: !157)
!162 = !DILocation(line: 105, column: 27, scope: !157)
!163 = !DILocation(line: 105, column: 34, scope: !157)
!164 = !DILocalVariable(name: "ca", scope: !157, file: !1, line: 106, type: !68)
!165 = !DILocation(line: 106, column: 19, scope: !157)
!166 = !DILocalVariable(name: "ct", scope: !157, file: !1, line: 107, type: !68)
!167 = !DILocation(line: 107, column: 19, scope: !157)
!168 = !DILocalVariable(name: "sp", scope: !157, file: !1, line: 108, type: !68)
!169 = !DILocation(line: 108, column: 19, scope: !157)
!170 = !DILocalVariable(name: "stat_ca", scope: !157, file: !1, line: 109, type: !171)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!172 = !DILocation(line: 109, column: 15, scope: !157)
!173 = !DILocation(line: 109, column: 72, scope: !157)
!174 = !DILocation(line: 109, column: 25, scope: !157)
!175 = !DILocalVariable(name: "stat_ct", scope: !157, file: !1, line: 110, type: !171)
!176 = !DILocation(line: 110, column: 15, scope: !157)
!177 = !DILocation(line: 110, column: 72, scope: !157)
!178 = !DILocation(line: 110, column: 25, scope: !157)
!179 = !DILocalVariable(name: "stat_sp", scope: !157, file: !1, line: 111, type: !171)
!180 = !DILocation(line: 111, column: 15, scope: !157)
!181 = !DILocation(line: 111, column: 49, scope: !157)
!182 = !DILocation(line: 111, column: 55, scope: !157)
!183 = !DILocation(line: 111, column: 59, scope: !157)
!184 = !DILocation(line: 111, column: 58, scope: !157)
!185 = !DILocation(line: 111, column: 25, scope: !157)
!186 = !DILocalVariable(name: "sqrty", scope: !157, file: !1, line: 112, type: !66)
!187 = !DILocation(line: 112, column: 18, scope: !157)
!188 = !DILocation(line: 112, column: 31, scope: !157)
!189 = !DILocation(line: 112, column: 26, scope: !157)
!190 = !DILocalVariable(name: "ampl", scope: !157, file: !1, line: 113, type: !66)
!191 = !DILocation(line: 113, column: 18, scope: !157)
!192 = !DILocation(line: 113, column: 37, scope: !157)
!193 = !DILocation(line: 113, column: 32, scope: !157)
!194 = !DILocation(line: 113, column: 44, scope: !157)
!195 = !DILocation(line: 113, column: 42, scope: !157)
!196 = !DILocation(line: 114, column: 21, scope: !157)
!197 = !DILocation(line: 114, column: 23, scope: !157)
!198 = !DILocation(line: 114, column: 32, scope: !199)
!199 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 1)
!200 = !DILocation(line: 114, column: 31, scope: !199)
!201 = !DILocation(line: 114, column: 21, scope: !199)
!202 = !DILocation(line: 114, column: 39, scope: !203)
!203 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 2)
!204 = !DILocation(line: 114, column: 21, scope: !203)
!205 = !DILocation(line: 114, column: 21, scope: !206)
!206 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 3)
!207 = !DILocation(line: 114, column: 50, scope: !206)
!208 = !DILocation(line: 114, column: 45, scope: !206)
!209 = !DILocation(line: 114, column: 5, scope: !206)
!210 = !DILocation(line: 114, column: 13, scope: !206)
!211 = !DILocation(line: 114, column: 18, scope: !206)
!212 = !DILocation(line: 115, column: 28, scope: !157)
!213 = !DILocation(line: 115, column: 20, scope: !157)
!214 = !DILocation(line: 115, column: 38, scope: !157)
!215 = !DILocation(line: 115, column: 33, scope: !157)
!216 = !DILocation(line: 115, column: 42, scope: !157)
!217 = !DILocation(line: 115, column: 41, scope: !157)
!218 = !DILocation(line: 115, column: 55, scope: !157)
!219 = !DILocation(line: 115, column: 50, scope: !199)
!220 = !DILocation(line: 115, column: 66, scope: !157)
!221 = !DILocation(line: 115, column: 61, scope: !157)
!222 = !DILocation(line: 115, column: 48, scope: !157)
!223 = !DILocation(line: 115, column: 5, scope: !157)
!224 = !DILocation(line: 115, column: 13, scope: !157)
!225 = !DILocation(line: 115, column: 18, scope: !157)
!226 = !DILocation(line: 116, column: 43, scope: !157)
!227 = !DILocation(line: 116, column: 51, scope: !157)
!228 = !DILocation(line: 116, column: 38, scope: !157)
!229 = !DILocation(line: 116, column: 36, scope: !157)
!230 = !DILocation(line: 116, column: 5, scope: !157)
!231 = !DILocation(line: 116, column: 13, scope: !157)
!232 = !DILocation(line: 116, column: 17, scope: !157)
!233 = !DILocation(line: 117, column: 12, scope: !157)
!234 = !DILocation(line: 117, column: 12, scope: !199)
!235 = !DILocation(line: 117, column: 12, scope: !203)
!236 = !DILocation(line: 117, column: 12, scope: !206)
!237 = !DILocation(line: 117, column: 12, scope: !238)
!238 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 4)
!239 = !DILocation(line: 117, column: 12, scope: !240)
!240 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 5)
!241 = !DILocation(line: 117, column: 12, scope: !242)
!242 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 6)
!243 = !DILocation(line: 117, column: 12, scope: !244)
!244 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 7)
!245 = !DILocation(line: 117, column: 12, scope: !246)
!246 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 8)
!247 = !DILocation(line: 117, column: 12, scope: !248)
!248 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 9)
!249 = !DILocation(line: 117, column: 5, scope: !248)
!250 = !DILocation(line: 119, column: 1, scope: !63)
!251 = distinct !DISubprogram(name: "cheb_eval_e", scope: !252, file: !252, line: 3, type: !253, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!252 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!253 = !DISubroutineType(types: !254)
!254 = !{!51, !255, !66, !67}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!257 = !DILocalVariable(name: "cs", arg: 1, scope: !251, file: !252, line: 3, type: !255)
!258 = !DILocation(line: 3, column: 33, scope: !251)
!259 = !DILocalVariable(name: "x", arg: 2, scope: !251, file: !252, line: 4, type: !66)
!260 = !DILocation(line: 4, column: 26, scope: !251)
!261 = !DILocalVariable(name: "result", arg: 3, scope: !251, file: !252, line: 5, type: !67)
!262 = !DILocation(line: 5, column: 29, scope: !251)
!263 = !DILocalVariable(name: "j", scope: !251, file: !252, line: 7, type: !51)
!264 = !DILocation(line: 7, column: 7, scope: !251)
!265 = !DILocalVariable(name: "d", scope: !251, file: !252, line: 8, type: !49)
!266 = !DILocation(line: 8, column: 10, scope: !251)
!267 = !DILocalVariable(name: "dd", scope: !251, file: !252, line: 9, type: !49)
!268 = !DILocation(line: 9, column: 10, scope: !251)
!269 = !DILocalVariable(name: "y", scope: !251, file: !252, line: 11, type: !49)
!270 = !DILocation(line: 11, column: 10, scope: !251)
!271 = !DILocation(line: 11, column: 20, scope: !251)
!272 = !DILocation(line: 11, column: 19, scope: !251)
!273 = !DILocation(line: 11, column: 24, scope: !251)
!274 = !DILocation(line: 11, column: 28, scope: !251)
!275 = !DILocation(line: 11, column: 22, scope: !251)
!276 = !DILocation(line: 11, column: 32, scope: !251)
!277 = !DILocation(line: 11, column: 36, scope: !251)
!278 = !DILocation(line: 11, column: 30, scope: !251)
!279 = !DILocation(line: 11, column: 42, scope: !251)
!280 = !DILocation(line: 11, column: 46, scope: !251)
!281 = !DILocation(line: 11, column: 50, scope: !251)
!282 = !DILocation(line: 11, column: 54, scope: !251)
!283 = !DILocation(line: 11, column: 48, scope: !251)
!284 = !DILocation(line: 11, column: 39, scope: !251)
!285 = !DILocalVariable(name: "y2", scope: !251, file: !252, line: 12, type: !49)
!286 = !DILocation(line: 12, column: 10, scope: !251)
!287 = !DILocation(line: 12, column: 21, scope: !251)
!288 = !DILocation(line: 12, column: 19, scope: !251)
!289 = !DILocalVariable(name: "e", scope: !251, file: !252, line: 14, type: !49)
!290 = !DILocation(line: 14, column: 10, scope: !251)
!291 = !DILocation(line: 16, column: 11, scope: !292)
!292 = distinct !DILexicalBlock(scope: !251, file: !252, line: 16, column: 3)
!293 = !DILocation(line: 16, column: 15, scope: !292)
!294 = !DILocation(line: 16, column: 9, scope: !292)
!295 = !DILocation(line: 16, column: 7, scope: !292)
!296 = !DILocation(line: 16, column: 22, scope: !297)
!297 = !DILexicalBlockFile(scope: !298, file: !252, discriminator: 1)
!298 = distinct !DILexicalBlock(scope: !292, file: !252, line: 16, column: 3)
!299 = !DILocation(line: 16, column: 23, scope: !297)
!300 = !DILocation(line: 16, column: 3, scope: !297)
!301 = !DILocalVariable(name: "temp", scope: !302, file: !252, line: 17, type: !49)
!302 = distinct !DILexicalBlock(scope: !298, file: !252, line: 16, column: 33)
!303 = !DILocation(line: 17, column: 12, scope: !302)
!304 = !DILocation(line: 17, column: 19, scope: !302)
!305 = !DILocation(line: 18, column: 9, scope: !302)
!306 = !DILocation(line: 18, column: 12, scope: !302)
!307 = !DILocation(line: 18, column: 11, scope: !302)
!308 = !DILocation(line: 18, column: 16, scope: !302)
!309 = !DILocation(line: 18, column: 14, scope: !302)
!310 = !DILocation(line: 18, column: 27, scope: !302)
!311 = !DILocation(line: 18, column: 21, scope: !302)
!312 = !DILocation(line: 18, column: 25, scope: !302)
!313 = !DILocation(line: 18, column: 19, scope: !302)
!314 = !DILocation(line: 18, column: 7, scope: !302)
!315 = !DILocation(line: 19, column: 15, scope: !302)
!316 = !DILocation(line: 19, column: 18, scope: !302)
!317 = !DILocation(line: 19, column: 17, scope: !302)
!318 = !DILocation(line: 19, column: 10, scope: !302)
!319 = !DILocation(line: 19, column: 31, scope: !302)
!320 = !DILocation(line: 19, column: 26, scope: !321)
!321 = !DILexicalBlockFile(scope: !302, file: !252, discriminator: 1)
!322 = !DILocation(line: 19, column: 24, scope: !302)
!323 = !DILocation(line: 19, column: 48, scope: !302)
!324 = !DILocation(line: 19, column: 42, scope: !302)
!325 = !DILocation(line: 19, column: 46, scope: !302)
!326 = !DILocation(line: 19, column: 37, scope: !327)
!327 = !DILexicalBlockFile(scope: !302, file: !252, discriminator: 2)
!328 = !DILocation(line: 19, column: 35, scope: !302)
!329 = !DILocation(line: 19, column: 7, scope: !302)
!330 = !DILocation(line: 20, column: 10, scope: !302)
!331 = !DILocation(line: 20, column: 8, scope: !302)
!332 = !DILocation(line: 21, column: 3, scope: !302)
!333 = !DILocation(line: 16, column: 29, scope: !334)
!334 = !DILexicalBlockFile(scope: !298, file: !252, discriminator: 2)
!335 = !DILocation(line: 16, column: 3, scope: !334)
!336 = distinct !{!336, !337}
!337 = !DILocation(line: 16, column: 3, scope: !251)
!338 = !DILocalVariable(name: "temp", scope: !339, file: !252, line: 24, type: !49)
!339 = distinct !DILexicalBlock(scope: !251, file: !252, line: 23, column: 3)
!340 = !DILocation(line: 24, column: 12, scope: !339)
!341 = !DILocation(line: 24, column: 19, scope: !339)
!342 = !DILocation(line: 25, column: 9, scope: !339)
!343 = !DILocation(line: 25, column: 11, scope: !339)
!344 = !DILocation(line: 25, column: 10, scope: !339)
!345 = !DILocation(line: 25, column: 15, scope: !339)
!346 = !DILocation(line: 25, column: 13, scope: !339)
!347 = !DILocation(line: 25, column: 26, scope: !339)
!348 = !DILocation(line: 25, column: 30, scope: !339)
!349 = !DILocation(line: 25, column: 24, scope: !339)
!350 = !DILocation(line: 25, column: 18, scope: !339)
!351 = !DILocation(line: 25, column: 7, scope: !339)
!352 = !DILocation(line: 26, column: 15, scope: !339)
!353 = !DILocation(line: 26, column: 17, scope: !339)
!354 = !DILocation(line: 26, column: 16, scope: !339)
!355 = !DILocation(line: 26, column: 10, scope: !339)
!356 = !DILocation(line: 26, column: 30, scope: !339)
!357 = !DILocation(line: 26, column: 25, scope: !358)
!358 = !DILexicalBlockFile(scope: !339, file: !252, discriminator: 1)
!359 = !DILocation(line: 26, column: 23, scope: !339)
!360 = !DILocation(line: 26, column: 47, scope: !339)
!361 = !DILocation(line: 26, column: 51, scope: !339)
!362 = !DILocation(line: 26, column: 42, scope: !363)
!363 = !DILexicalBlockFile(scope: !339, file: !252, discriminator: 2)
!364 = !DILocation(line: 26, column: 40, scope: !339)
!365 = !DILocation(line: 26, column: 34, scope: !339)
!366 = !DILocation(line: 26, column: 7, scope: !339)
!367 = !DILocation(line: 29, column: 17, scope: !251)
!368 = !DILocation(line: 29, column: 3, scope: !251)
!369 = !DILocation(line: 29, column: 11, scope: !251)
!370 = !DILocation(line: 29, column: 15, scope: !251)
!371 = !DILocation(line: 30, column: 35, scope: !251)
!372 = !DILocation(line: 30, column: 33, scope: !251)
!373 = !DILocation(line: 30, column: 50, scope: !251)
!374 = !DILocation(line: 30, column: 54, scope: !251)
!375 = !DILocation(line: 30, column: 44, scope: !251)
!376 = !DILocation(line: 30, column: 48, scope: !251)
!377 = !DILocation(line: 30, column: 39, scope: !251)
!378 = !DILocation(line: 30, column: 37, scope: !251)
!379 = !DILocation(line: 30, column: 3, scope: !251)
!380 = !DILocation(line: 30, column: 11, scope: !251)
!381 = !DILocation(line: 30, column: 15, scope: !251)
!382 = !DILocation(line: 32, column: 3, scope: !251)
!383 = distinct !DISubprogram(name: "gsl_sf_bessel_J1", scope: !1, file: !1, line: 125, type: !384, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!384 = !DISubroutineType(types: !385)
!385 = !{!49, !66}
!386 = !DILocalVariable(name: "x", arg: 1, scope: !383, file: !1, line: 125, type: !66)
!387 = !DILocation(line: 125, column: 38, scope: !383)
!388 = !DILocalVariable(name: "result", scope: !383, file: !1, line: 127, type: !68)
!389 = !DILocation(line: 127, column: 3, scope: !383)
!390 = !DILocalVariable(name: "status", scope: !383, file: !1, line: 127, type: !51)
!391 = !DILocation(line: 127, column: 3, scope: !392)
!392 = distinct !DILexicalBlock(scope: !383, file: !1, line: 127, column: 3)
!393 = !DILocation(line: 127, column: 3, scope: !394)
!394 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 1)
!395 = distinct !DILexicalBlock(scope: !392, file: !1, line: 127, column: 3)
!396 = distinct !{!396, !397}
!397 = !DILocation(line: 127, column: 3, scope: !395)
!398 = !DILocation(line: 127, column: 3, scope: !399)
!399 = !DILexicalBlockFile(scope: !400, file: !1, discriminator: 2)
!400 = distinct !DILexicalBlock(scope: !395, file: !1, line: 127, column: 3)
!401 = !DILocation(line: 127, column: 3, scope: !402)
!402 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 3)
!403 = !DILocation(line: 127, column: 3, scope: !404)
!404 = !DILexicalBlockFile(scope: !383, file: !1, discriminator: 4)
!405 = !DILocation(line: 128, column: 1, scope: !383)
