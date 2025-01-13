; ModuleID = 'bessel_I0.c'
source_filename = "bessel_I0.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@bi0_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([12 x double], [12 x double]* @bi0_data, i32 0, i32 0), i32 11, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8
@ai0_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([21 x double], [21 x double]* @ai0_data, i32 0, i32 0), i32 20, double -1.000000e+00, double 1.000000e+00, i32 13 }, align 8
@ai02_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([22 x double], [22 x double]* @ai02_data, i32 0, i32 0), i32 21, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8
@.str = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_I0.c\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"gsl_sf_bessel_I0_scaled_e(x, &result);\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"gsl_sf_bessel_I0_e(x, &result);\00", align 1
@bi0_data = internal global [12 x double] [double 0xBFB39C6A8F343DC8, double 0x3FFED660528BE329, double 0x3FCD37C51075F0D7, double 0x3F8AB963ADF26D77, double 0x3F3C787A24F735CB, double 0x3EE3C2C03617093B, double 0x3E833F35458DE982, double 0x3E1BB9C8846672F9, double 0x3DAEB670D671AE28, double 9.579451e-14, double 5.333900e-16, double 2.450000e-18], align 16
@ai0_data = internal global [21 x double] [double 0x3FB36500F5DD7610, double 0x3F7F1823C5060387, double 0x3F3B37CC53E1FC02, double 0x3EE670EDE4880950, double 0xBEE091E9E8545094, double 0xBEAA429B27F54A32, double 0x3E92AE9E272332E6, double 0x3E41B8D84435C00F, double 0xBE49DD9C4DE920BD, double 0x3E1ACB6833C29B9B, double 0x3DEF823723C22545, double 0xBDE060A6664CCA7E, double 1.757854e-11, double 1.128220e-12, double -1.146840e-12, double 2.715500e-13, double -2.415000e-14, double -6.080000e-15, double 3.140000e-15, double -7.100000e-16, double 7.000000e-17], align 16
@ai02_data = internal global [22 x double] [double 0x3FABE62ACA809CB5, double 0x3F6B998CA2E5903F, double 0x3F120FA37899A1B5, double 0x3EC8412BC1013D6B, double 0x3E8B8007D9C3A27D, double 0x3E58569280EDF9E5, double 0x3E2D2C64A9C0B0AC, double 0x3E00F9CCB61AB9A0, double 1.188914e-11, double -3.149915e-11, double -1.321580e-11, double -1.794190e-12, double 7.180100e-13, double 3.852900e-13, double 1.539000e-14, double -4.151000e-14, double -9.540000e-15, double 3.820000e-15, double 1.760000e-15, double -3.400000e-16, double -2.700000e-16, double 3.000000e-17], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_I0_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !73 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !85, metadata !86), !dbg !87
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !88, metadata !86), !dbg !89
  call void @llvm.dbg.declare(metadata double* %6, metadata !90, metadata !86), !dbg !91
  %13 = load double, double* %4, align 8, !dbg !92
  %14 = call double @fabs(double %13) #1, !dbg !93
  store double %14, double* %6, align 8, !dbg !91
  %15 = load double, double* %6, align 8, !dbg !94
  %16 = fcmp olt double %15, 0x3E60000000000000, !dbg !96
  br i1 %16, label %17, label %28, !dbg !97

; <label>:17:                                     ; preds = %2
  %18 = load double, double* %6, align 8, !dbg !98
  %19 = fsub double 1.000000e+00, %18, !dbg !100
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !101
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !102
  store double %19, double* %21, align 8, !dbg !103
  %22 = load double, double* %6, align 8, !dbg !104
  %23 = fmul double 5.000000e-01, %22, !dbg !105
  %24 = load double, double* %6, align 8, !dbg !106
  %25 = fmul double %23, %24, !dbg !107
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !108
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !109
  store double %25, double* %27, align 8, !dbg !110
  store i32 0, i32* %3, align 4, !dbg !111
  br label %144, !dbg !111

; <label>:28:                                     ; preds = %2
  %29 = load double, double* %6, align 8, !dbg !112
  %30 = fcmp ole double %29, 3.000000e+00, !dbg !114
  br i1 %30, label %31, label %60, !dbg !115

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata double* %7, metadata !116, metadata !86), !dbg !118
  %32 = load double, double* %6, align 8, !dbg !119
  %33 = fsub double -0.000000e+00, %32, !dbg !120
  %34 = call double @exp(double %33) #6, !dbg !121
  store double %34, double* %7, align 8, !dbg !118
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !122, metadata !86), !dbg !123
  %35 = load double, double* %6, align 8, !dbg !124
  %36 = load double, double* %6, align 8, !dbg !125
  %37 = fmul double %35, %36, !dbg !126
  %38 = fdiv double %37, 4.500000e+00, !dbg !127
  %39 = fsub double %38, 1.000000e+00, !dbg !128
  %40 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @bi0_cs, double %39, %struct.gsl_sf_result_struct* %8), !dbg !129
  %41 = load double, double* %7, align 8, !dbg !130
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !131
  %43 = load double, double* %42, align 8, !dbg !131
  %44 = fadd double 2.750000e+00, %43, !dbg !132
  %45 = fmul double %41, %44, !dbg !133
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !134
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !135
  store double %45, double* %47, align 8, !dbg !136
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !137
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !138
  %50 = load double, double* %49, align 8, !dbg !138
  %51 = call double @fabs(double %50) #1, !dbg !139
  %52 = fmul double 0x3CB0000000000000, %51, !dbg !140
  %53 = load double, double* %7, align 8, !dbg !141
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !142
  %55 = load double, double* %54, align 8, !dbg !142
  %56 = fmul double %53, %55, !dbg !143
  %57 = fadd double %52, %56, !dbg !144
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !145
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !146
  store double %57, double* %59, align 8, !dbg !147
  store i32 0, i32* %3, align 4, !dbg !148
  br label %144, !dbg !148

; <label>:60:                                     ; preds = %28
  %61 = load double, double* %6, align 8, !dbg !149
  %62 = fcmp ole double %61, 8.000000e+00, !dbg !151
  br i1 %62, label %63, label %104, !dbg !152

; <label>:63:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata double* %9, metadata !153, metadata !86), !dbg !155
  %64 = load double, double* %6, align 8, !dbg !156
  %65 = call double @sqrt(double %64) #6, !dbg !157
  store double %65, double* %9, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !158, metadata !86), !dbg !159
  %66 = load double, double* %6, align 8, !dbg !160
  %67 = fdiv double 4.800000e+01, %66, !dbg !161
  %68 = fsub double %67, 1.100000e+01, !dbg !162
  %69 = fdiv double %68, 5.000000e+00, !dbg !163
  %70 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @ai0_cs, double %69, %struct.gsl_sf_result_struct* %10), !dbg !164
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !165
  %72 = load double, double* %71, align 8, !dbg !165
  %73 = fadd double 3.750000e-01, %72, !dbg !166
  %74 = load double, double* %9, align 8, !dbg !167
  %75 = fdiv double %73, %74, !dbg !168
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !169
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 0, !dbg !170
  store double %75, double* %77, align 8, !dbg !171
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !172
  %79 = load double, double* %78, align 8, !dbg !172
  %80 = call double @fabs(double %79) #1, !dbg !173
  %81 = fadd double 3.750000e-01, %80, !dbg !174
  %82 = fmul double 0x3CC0000000000000, %81, !dbg !175
  %83 = load double, double* %9, align 8, !dbg !176
  %84 = fdiv double %82, %83, !dbg !177
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !178
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !179
  store double %84, double* %86, align 8, !dbg !180
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !181
  %88 = load double, double* %87, align 8, !dbg !181
  %89 = load double, double* %9, align 8, !dbg !182
  %90 = fdiv double %88, %89, !dbg !183
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !184
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 1, !dbg !185
  %93 = load double, double* %92, align 8, !dbg !186
  %94 = fadd double %93, %90, !dbg !186
  store double %94, double* %92, align 8, !dbg !186
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !187
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 0, !dbg !188
  %97 = load double, double* %96, align 8, !dbg !188
  %98 = call double @fabs(double %97) #1, !dbg !189
  %99 = fmul double 0x3CC0000000000000, %98, !dbg !190
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !191
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 1, !dbg !192
  %102 = load double, double* %101, align 8, !dbg !193
  %103 = fadd double %102, %99, !dbg !193
  store double %103, double* %101, align 8, !dbg !193
  store i32 0, i32* %3, align 4, !dbg !194
  br label %144, !dbg !194

; <label>:104:                                    ; preds = %60
  call void @llvm.dbg.declare(metadata double* %11, metadata !195, metadata !86), !dbg !197
  %105 = load double, double* %6, align 8, !dbg !198
  %106 = call double @sqrt(double %105) #6, !dbg !199
  store double %106, double* %11, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !200, metadata !86), !dbg !201
  %107 = load double, double* %6, align 8, !dbg !202
  %108 = fdiv double 1.600000e+01, %107, !dbg !203
  %109 = fsub double %108, 1.000000e+00, !dbg !204
  %110 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @ai02_cs, double %109, %struct.gsl_sf_result_struct* %12), !dbg !205
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !206
  %112 = load double, double* %111, align 8, !dbg !206
  %113 = fadd double 3.750000e-01, %112, !dbg !207
  %114 = load double, double* %11, align 8, !dbg !208
  %115 = fdiv double %113, %114, !dbg !209
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !210
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 0, !dbg !211
  store double %115, double* %117, align 8, !dbg !212
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !213
  %119 = load double, double* %118, align 8, !dbg !213
  %120 = call double @fabs(double %119) #1, !dbg !214
  %121 = fadd double 3.750000e-01, %120, !dbg !215
  %122 = fmul double 0x3CC0000000000000, %121, !dbg !216
  %123 = load double, double* %11, align 8, !dbg !217
  %124 = fdiv double %122, %123, !dbg !218
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !219
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !220
  store double %124, double* %126, align 8, !dbg !221
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !222
  %128 = load double, double* %127, align 8, !dbg !222
  %129 = load double, double* %11, align 8, !dbg !223
  %130 = fdiv double %128, %129, !dbg !224
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !225
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 1, !dbg !226
  %133 = load double, double* %132, align 8, !dbg !227
  %134 = fadd double %133, %130, !dbg !227
  store double %134, double* %132, align 8, !dbg !227
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !228
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 0, !dbg !229
  %137 = load double, double* %136, align 8, !dbg !229
  %138 = call double @fabs(double %137) #1, !dbg !230
  %139 = fmul double 0x3CC0000000000000, %138, !dbg !231
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !232
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 1, !dbg !233
  %142 = load double, double* %141, align 8, !dbg !234
  %143 = fadd double %142, %139, !dbg !234
  store double %143, double* %141, align 8, !dbg !234
  store i32 0, i32* %3, align 4, !dbg !235
  br label %144, !dbg !235

; <label>:144:                                    ; preds = %104, %63, %31, %17
  %145 = load i32, i32* %3, align 4, !dbg !236
  ret i32 %145, !dbg !236
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !237 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !243, metadata !86), !dbg !244
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !245, metadata !86), !dbg !246
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !247, metadata !86), !dbg !248
  call void @llvm.dbg.declare(metadata i32* %7, metadata !249, metadata !86), !dbg !250
  call void @llvm.dbg.declare(metadata double* %8, metadata !251, metadata !86), !dbg !252
  store double 0.000000e+00, double* %8, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata double* %9, metadata !253, metadata !86), !dbg !254
  store double 0.000000e+00, double* %9, align 8, !dbg !254
  call void @llvm.dbg.declare(metadata double* %10, metadata !255, metadata !86), !dbg !256
  %15 = load double, double* %5, align 8, !dbg !257
  %16 = fmul double 2.000000e+00, %15, !dbg !258
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !259
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !260
  %19 = load double, double* %18, align 8, !dbg !260
  %20 = fsub double %16, %19, !dbg !261
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !262
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !263
  %23 = load double, double* %22, align 8, !dbg !263
  %24 = fsub double %20, %23, !dbg !264
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !265
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !266
  %27 = load double, double* %26, align 8, !dbg !266
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !267
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !268
  %30 = load double, double* %29, align 8, !dbg !268
  %31 = fsub double %27, %30, !dbg !269
  %32 = fdiv double %24, %31, !dbg !270
  store double %32, double* %10, align 8, !dbg !256
  call void @llvm.dbg.declare(metadata double* %11, metadata !271, metadata !86), !dbg !272
  %33 = load double, double* %10, align 8, !dbg !273
  %34 = fmul double 2.000000e+00, %33, !dbg !274
  store double %34, double* %11, align 8, !dbg !272
  call void @llvm.dbg.declare(metadata double* %12, metadata !275, metadata !86), !dbg !276
  store double 0.000000e+00, double* %12, align 8, !dbg !276
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !277
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !279
  %37 = load i32, i32* %36, align 8, !dbg !279
  store i32 %37, i32* %7, align 4, !dbg !280
  br label %38, !dbg !281

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !282
  %40 = icmp sge i32 %39, 1, !dbg !285
  br i1 %40, label %41, label %78, !dbg !286

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !287, metadata !86), !dbg !289
  %42 = load double, double* %8, align 8, !dbg !290
  store double %42, double* %13, align 8, !dbg !289
  %43 = load double, double* %11, align 8, !dbg !291
  %44 = load double, double* %8, align 8, !dbg !292
  %45 = fmul double %43, %44, !dbg !293
  %46 = load double, double* %9, align 8, !dbg !294
  %47 = fsub double %45, %46, !dbg !295
  %48 = load i32, i32* %7, align 4, !dbg !296
  %49 = sext i32 %48 to i64, !dbg !297
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !297
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !298
  %52 = load double*, double** %51, align 8, !dbg !298
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !297
  %54 = load double, double* %53, align 8, !dbg !297
  %55 = fadd double %47, %54, !dbg !299
  store double %55, double* %8, align 8, !dbg !300
  %56 = load double, double* %11, align 8, !dbg !301
  %57 = load double, double* %13, align 8, !dbg !302
  %58 = fmul double %56, %57, !dbg !303
  %59 = call double @fabs(double %58) #1, !dbg !304
  %60 = load double, double* %9, align 8, !dbg !305
  %61 = call double @fabs(double %60) #1, !dbg !306
  %62 = fadd double %59, %61, !dbg !308
  %63 = load i32, i32* %7, align 4, !dbg !309
  %64 = sext i32 %63 to i64, !dbg !310
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !310
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !311
  %67 = load double*, double** %66, align 8, !dbg !311
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !310
  %69 = load double, double* %68, align 8, !dbg !310
  %70 = call double @fabs(double %69) #1, !dbg !312
  %71 = fadd double %62, %70, !dbg !314
  %72 = load double, double* %12, align 8, !dbg !315
  %73 = fadd double %72, %71, !dbg !315
  store double %73, double* %12, align 8, !dbg !315
  %74 = load double, double* %13, align 8, !dbg !316
  store double %74, double* %9, align 8, !dbg !317
  br label %75, !dbg !318

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !319
  %77 = add nsw i32 %76, -1, !dbg !319
  store i32 %77, i32* %7, align 4, !dbg !319
  br label %38, !dbg !321, !llvm.loop !322

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !324, metadata !86), !dbg !326
  %79 = load double, double* %8, align 8, !dbg !327
  store double %79, double* %14, align 8, !dbg !326
  %80 = load double, double* %10, align 8, !dbg !328
  %81 = load double, double* %8, align 8, !dbg !329
  %82 = fmul double %80, %81, !dbg !330
  %83 = load double, double* %9, align 8, !dbg !331
  %84 = fsub double %82, %83, !dbg !332
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !333
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !334
  %87 = load double*, double** %86, align 8, !dbg !334
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !333
  %89 = load double, double* %88, align 8, !dbg !333
  %90 = fmul double 5.000000e-01, %89, !dbg !335
  %91 = fadd double %84, %90, !dbg !336
  store double %91, double* %8, align 8, !dbg !337
  %92 = load double, double* %10, align 8, !dbg !338
  %93 = load double, double* %14, align 8, !dbg !339
  %94 = fmul double %92, %93, !dbg !340
  %95 = call double @fabs(double %94) #1, !dbg !341
  %96 = load double, double* %9, align 8, !dbg !342
  %97 = call double @fabs(double %96) #1, !dbg !343
  %98 = fadd double %95, %97, !dbg !345
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !346
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !347
  %101 = load double*, double** %100, align 8, !dbg !347
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !346
  %103 = load double, double* %102, align 8, !dbg !346
  %104 = call double @fabs(double %103) #1, !dbg !348
  %105 = fmul double 5.000000e-01, %104, !dbg !350
  %106 = fadd double %98, %105, !dbg !351
  %107 = load double, double* %12, align 8, !dbg !352
  %108 = fadd double %107, %106, !dbg !352
  store double %108, double* %12, align 8, !dbg !352
  %109 = load double, double* %8, align 8, !dbg !353
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !354
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !355
  store double %109, double* %111, align 8, !dbg !356
  %112 = load double, double* %12, align 8, !dbg !357
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !358
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !359
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !360
  %116 = load i32, i32* %115, align 8, !dbg !360
  %117 = sext i32 %116 to i64, !dbg !361
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !361
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !362
  %120 = load double*, double** %119, align 8, !dbg !362
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !361
  %122 = load double, double* %121, align 8, !dbg !361
  %123 = call double @fabs(double %122) #1, !dbg !363
  %124 = fadd double %113, %123, !dbg !364
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !365
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !366
  store double %124, double* %126, align 8, !dbg !367
  ret i32 0, !dbg !368
}

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_I0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !369 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !370, metadata !86), !dbg !371
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !372, metadata !86), !dbg !373
  call void @llvm.dbg.declare(metadata double* %6, metadata !374, metadata !86), !dbg !375
  %10 = load double, double* %4, align 8, !dbg !376
  %11 = call double @fabs(double %10) #1, !dbg !377
  store double %11, double* %6, align 8, !dbg !375
  %12 = load double, double* %6, align 8, !dbg !378
  %13 = fcmp olt double %12, 0x3E60000000000000, !dbg !380
  br i1 %13, label %14, label %23, !dbg !381

; <label>:14:                                     ; preds = %2
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !382
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !384
  store double 1.000000e+00, double* %16, align 8, !dbg !385
  %17 = load double, double* %6, align 8, !dbg !386
  %18 = fmul double 5.000000e-01, %17, !dbg !387
  %19 = load double, double* %6, align 8, !dbg !388
  %20 = fmul double %18, %19, !dbg !389
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !390
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !391
  store double %20, double* %22, align 8, !dbg !392
  store i32 0, i32* %3, align 4, !dbg !393
  br label %108, !dbg !393

; <label>:23:                                     ; preds = %2
  %24 = load double, double* %6, align 8, !dbg !394
  %25 = fcmp ole double %24, 3.000000e+00, !dbg !396
  br i1 %25, label %26, label %60, !dbg !397

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !398, metadata !86), !dbg !400
  %27 = load double, double* %6, align 8, !dbg !401
  %28 = load double, double* %6, align 8, !dbg !402
  %29 = fmul double %27, %28, !dbg !403
  %30 = fdiv double %29, 4.500000e+00, !dbg !404
  %31 = fsub double %30, 1.000000e+00, !dbg !405
  %32 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @bi0_cs, double %31, %struct.gsl_sf_result_struct* %7), !dbg !406
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !407
  %34 = load double, double* %33, align 8, !dbg !407
  %35 = fadd double 2.750000e+00, %34, !dbg !408
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !409
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !410
  store double %35, double* %37, align 8, !dbg !411
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !412
  %39 = load double, double* %38, align 8, !dbg !412
  %40 = call double @fabs(double %39) #1, !dbg !413
  %41 = fadd double 2.750000e+00, %40, !dbg !414
  %42 = fmul double 0x3CB0000000000000, %41, !dbg !415
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !416
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !417
  store double %42, double* %44, align 8, !dbg !418
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !419
  %46 = load double, double* %45, align 8, !dbg !419
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !420
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !421
  %49 = load double, double* %48, align 8, !dbg !422
  %50 = fadd double %49, %46, !dbg !422
  store double %50, double* %48, align 8, !dbg !422
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !423
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !424
  %53 = load double, double* %52, align 8, !dbg !424
  %54 = call double @fabs(double %53) #1, !dbg !425
  %55 = fmul double 0x3CC0000000000000, %54, !dbg !426
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !427
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 1, !dbg !428
  %58 = load double, double* %57, align 8, !dbg !429
  %59 = fadd double %58, %55, !dbg !429
  store double %59, double* %57, align 8, !dbg !429
  store i32 0, i32* %3, align 4, !dbg !430
  br label %108, !dbg !430

; <label>:60:                                     ; preds = %23
  %61 = load double, double* %6, align 8, !dbg !431
  %62 = fcmp olt double %61, 0x40862642FEFA39EF, !dbg !433
  br i1 %62, label %63, label %97, !dbg !434

; <label>:63:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata double* %8, metadata !435, metadata !86), !dbg !437
  %64 = load double, double* %6, align 8, !dbg !438
  %65 = call double @exp(double %64) #6, !dbg !439
  store double %65, double* %8, align 8, !dbg !437
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !440, metadata !86), !dbg !441
  %66 = load double, double* %4, align 8, !dbg !442
  %67 = call i32 @gsl_sf_bessel_I0_scaled_e(double %66, %struct.gsl_sf_result_struct* %9), !dbg !443
  %68 = load double, double* %8, align 8, !dbg !444
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !445
  %70 = load double, double* %69, align 8, !dbg !445
  %71 = fmul double %68, %70, !dbg !446
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !447
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !448
  store double %71, double* %73, align 8, !dbg !449
  %74 = load double, double* %8, align 8, !dbg !450
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !451
  %76 = load double, double* %75, align 8, !dbg !451
  %77 = fmul double %74, %76, !dbg !452
  %78 = load double, double* %6, align 8, !dbg !453
  %79 = fmul double %78, 0x3CB0000000000000, !dbg !454
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !455
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !456
  %82 = load double, double* %81, align 8, !dbg !456
  %83 = call double @fabs(double %82) #1, !dbg !457
  %84 = fmul double %79, %83, !dbg !458
  %85 = fadd double %77, %84, !dbg !459
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !460
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 1, !dbg !461
  store double %85, double* %87, align 8, !dbg !462
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !463
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !464
  %90 = load double, double* %89, align 8, !dbg !464
  %91 = call double @fabs(double %90) #1, !dbg !465
  %92 = fmul double 0x3CC0000000000000, %91, !dbg !466
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !467
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 1, !dbg !468
  %95 = load double, double* %94, align 8, !dbg !469
  %96 = fadd double %95, %92, !dbg !469
  store double %96, double* %94, align 8, !dbg !469
  store i32 0, i32* %3, align 4, !dbg !470
  br label %108, !dbg !470

; <label>:97:                                     ; preds = %60
  br label %98, !dbg !471, !llvm.loop !473

; <label>:98:                                     ; preds = %97
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !474
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 0, !dbg !474
  store double 0x7FF0000000000000, double* %100, align 8, !dbg !474
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !474
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !474
  store double 0x7FF0000000000000, double* %102, align 8, !dbg !474
  br label %103, !dbg !474, !llvm.loop !477

; <label>:103:                                    ; preds = %98
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 216, i32 16), !dbg !479
  store i32 16, i32* %3, align 4, !dbg !479
  br label %108, !dbg !479
                                                  ; No predecessors!
  br label %105, !dbg !482

; <label>:105:                                    ; preds = %104
  br label %106

; <label>:106:                                    ; preds = %105
  br label %107

; <label>:107:                                    ; preds = %106
  br label %108

; <label>:108:                                    ; preds = %14, %26, %63, %103, %107
  %109 = load i32, i32* %3, align 4, !dbg !484
  ret i32 %109, !dbg !484
}

declare void @gsl_error(i8*, i8*, i32, i32) #5

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_I0_scaled(double) #0 !dbg !485 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !488, metadata !86), !dbg !489
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !490, metadata !86), !dbg !491
  call void @llvm.dbg.declare(metadata i32* %5, metadata !492, metadata !86), !dbg !491
  %6 = load double, double* %3, align 8, !dbg !491
  %7 = call i32 @gsl_sf_bessel_I0_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !491
  store i32 %7, i32* %5, align 4, !dbg !491
  %8 = load i32, i32* %5, align 4, !dbg !493
  %9 = icmp ne i32 %8, 0, !dbg !493
  br i1 %9, label %10, label %16, !dbg !491

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !495, !llvm.loop !498

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !500
  call void @gsl_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 226, i32 %12), !dbg !500
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !500
  %14 = load double, double* %13, align 8, !dbg !500
  store double %14, double* %2, align 8, !dbg !500
  br label %19, !dbg !500
                                                  ; No predecessors!
  br label %16, !dbg !503

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !505
  %18 = load double, double* %17, align 8, !dbg !505
  store double %18, double* %2, align 8, !dbg !505
  br label %19, !dbg !505

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !507
  ret double %20, !dbg !507
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_I0(double) #0 !dbg !508 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !509, metadata !86), !dbg !510
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !511, metadata !86), !dbg !512
  call void @llvm.dbg.declare(metadata i32* %5, metadata !513, metadata !86), !dbg !512
  %6 = load double, double* %3, align 8, !dbg !512
  %7 = call i32 @gsl_sf_bessel_I0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !512
  store i32 %7, i32* %5, align 4, !dbg !512
  %8 = load i32, i32* %5, align 4, !dbg !514
  %9 = icmp ne i32 %8, 0, !dbg !514
  br i1 %9, label %10, label %16, !dbg !512

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !516, !llvm.loop !519

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !521
  call void @gsl_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 231, i32 %12), !dbg !521
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !521
  %14 = load double, double* %13, align 8, !dbg !521
  store double %14, double* %2, align 8, !dbg !521
  br label %19, !dbg !521
                                                  ; No predecessors!
  br label %16, !dbg !524

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !526
  %18 = load double, double* %17, align 8, !dbg !526
  store double %18, double* %2, align 8, !dbg !526
  br label %19, !dbg !526

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !528
  ret double %20, !dbg !528
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!69, !70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_I0.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60, !64, !65}
!42 = distinct !DIGlobalVariable(name: "bi0_cs", scope: !0, file: !1, line: 73, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bi0_cs)
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
!55 = distinct !DIGlobalVariable(name: "bi0_data", scope: !0, file: !1, line: 59, type: !56, isLocal: true, isDefinition: true, variable: [12 x double]* @bi0_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 768, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 12)
!59 = distinct !DIGlobalVariable(name: "ai0_cs", scope: !0, file: !1, line: 103, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @ai0_cs)
!60 = distinct !DIGlobalVariable(name: "ai0_data", scope: !0, file: !1, line: 80, type: !61, isLocal: true, isDefinition: true, variable: [21 x double]* @ai0_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1344, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 21)
!64 = distinct !DIGlobalVariable(name: "ai02_cs", scope: !0, file: !1, line: 134, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @ai02_cs)
!65 = distinct !DIGlobalVariable(name: "ai02_data", scope: !0, file: !1, line: 110, type: !66, isLocal: true, isDefinition: true, variable: [22 x double]* @ai02_data)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1408, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 22)
!69 = !{i32 2, !"Dwarf Version", i32 4}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"PIC Level", i32 2}
!72 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!73 = distinct !DISubprogram(name: "gsl_sf_bessel_I0_scaled_e", scope: !1, file: !1, line: 144, type: !74, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!74 = !DISubroutineType(types: !75)
!75 = !{!51, !76, !77}
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !79, line: 41, baseType: !80)
!79 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !79, line: 37, size: 128, align: 64, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !80, file: !79, line: 38, baseType: !49, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !80, file: !79, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!84 = !{}
!85 = !DILocalVariable(name: "x", arg: 1, scope: !73, file: !1, line: 144, type: !76)
!86 = !DIExpression()
!87 = !DILocation(line: 144, column: 44, scope: !73)
!88 = !DILocalVariable(name: "result", arg: 2, scope: !73, file: !1, line: 144, type: !77)
!89 = !DILocation(line: 144, column: 63, scope: !73)
!90 = !DILocalVariable(name: "y", scope: !73, file: !1, line: 146, type: !49)
!91 = !DILocation(line: 146, column: 10, scope: !73)
!92 = !DILocation(line: 146, column: 19, scope: !73)
!93 = !DILocation(line: 146, column: 14, scope: !73)
!94 = !DILocation(line: 150, column: 6, scope: !95)
!95 = distinct !DILexicalBlock(scope: !73, file: !1, line: 150, column: 6)
!96 = !DILocation(line: 150, column: 8, scope: !95)
!97 = !DILocation(line: 150, column: 6, scope: !73)
!98 = !DILocation(line: 151, column: 25, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 150, column: 38)
!100 = !DILocation(line: 151, column: 23, scope: !99)
!101 = !DILocation(line: 151, column: 5, scope: !99)
!102 = !DILocation(line: 151, column: 13, scope: !99)
!103 = !DILocation(line: 151, column: 17, scope: !99)
!104 = !DILocation(line: 152, column: 23, scope: !99)
!105 = !DILocation(line: 152, column: 22, scope: !99)
!106 = !DILocation(line: 152, column: 25, scope: !99)
!107 = !DILocation(line: 152, column: 24, scope: !99)
!108 = !DILocation(line: 152, column: 5, scope: !99)
!109 = !DILocation(line: 152, column: 13, scope: !99)
!110 = !DILocation(line: 152, column: 17, scope: !99)
!111 = !DILocation(line: 153, column: 5, scope: !99)
!112 = !DILocation(line: 155, column: 11, scope: !113)
!113 = distinct !DILexicalBlock(scope: !95, file: !1, line: 155, column: 11)
!114 = !DILocation(line: 155, column: 13, scope: !113)
!115 = !DILocation(line: 155, column: 11, scope: !95)
!116 = !DILocalVariable(name: "ey", scope: !117, file: !1, line: 156, type: !76)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 155, column: 21)
!118 = !DILocation(line: 156, column: 18, scope: !117)
!119 = !DILocation(line: 156, column: 28, scope: !117)
!120 = !DILocation(line: 156, column: 27, scope: !117)
!121 = !DILocation(line: 156, column: 23, scope: !117)
!122 = !DILocalVariable(name: "c", scope: !117, file: !1, line: 157, type: !78)
!123 = !DILocation(line: 157, column: 19, scope: !117)
!124 = !DILocation(line: 158, column: 26, scope: !117)
!125 = !DILocation(line: 158, column: 28, scope: !117)
!126 = !DILocation(line: 158, column: 27, scope: !117)
!127 = !DILocation(line: 158, column: 29, scope: !117)
!128 = !DILocation(line: 158, column: 33, scope: !117)
!129 = !DILocation(line: 158, column: 5, scope: !117)
!130 = !DILocation(line: 159, column: 19, scope: !117)
!131 = !DILocation(line: 159, column: 34, scope: !117)
!132 = !DILocation(line: 159, column: 30, scope: !117)
!133 = !DILocation(line: 159, column: 22, scope: !117)
!134 = !DILocation(line: 159, column: 5, scope: !117)
!135 = !DILocation(line: 159, column: 13, scope: !117)
!136 = !DILocation(line: 159, column: 17, scope: !117)
!137 = !DILocation(line: 160, column: 42, scope: !117)
!138 = !DILocation(line: 160, column: 50, scope: !117)
!139 = !DILocation(line: 160, column: 37, scope: !117)
!140 = !DILocation(line: 160, column: 35, scope: !117)
!141 = !DILocation(line: 160, column: 57, scope: !117)
!142 = !DILocation(line: 160, column: 64, scope: !117)
!143 = !DILocation(line: 160, column: 60, scope: !117)
!144 = !DILocation(line: 160, column: 55, scope: !117)
!145 = !DILocation(line: 160, column: 5, scope: !117)
!146 = !DILocation(line: 160, column: 13, scope: !117)
!147 = !DILocation(line: 160, column: 17, scope: !117)
!148 = !DILocation(line: 161, column: 5, scope: !117)
!149 = !DILocation(line: 163, column: 11, scope: !150)
!150 = distinct !DILexicalBlock(scope: !113, file: !1, line: 163, column: 11)
!151 = !DILocation(line: 163, column: 13, scope: !150)
!152 = !DILocation(line: 163, column: 11, scope: !113)
!153 = !DILocalVariable(name: "sy", scope: !154, file: !1, line: 164, type: !76)
!154 = distinct !DILexicalBlock(scope: !150, file: !1, line: 163, column: 21)
!155 = !DILocation(line: 164, column: 18, scope: !154)
!156 = !DILocation(line: 164, column: 28, scope: !154)
!157 = !DILocation(line: 164, column: 23, scope: !154)
!158 = !DILocalVariable(name: "c", scope: !154, file: !1, line: 165, type: !78)
!159 = !DILocation(line: 165, column: 19, scope: !154)
!160 = !DILocation(line: 166, column: 32, scope: !154)
!161 = !DILocation(line: 166, column: 31, scope: !154)
!162 = !DILocation(line: 166, column: 33, scope: !154)
!163 = !DILocation(line: 166, column: 39, scope: !154)
!164 = !DILocation(line: 166, column: 5, scope: !154)
!165 = !DILocation(line: 167, column: 31, scope: !154)
!166 = !DILocation(line: 167, column: 27, scope: !154)
!167 = !DILocation(line: 167, column: 38, scope: !154)
!168 = !DILocation(line: 167, column: 36, scope: !154)
!169 = !DILocation(line: 167, column: 5, scope: !154)
!170 = !DILocation(line: 167, column: 13, scope: !154)
!171 = !DILocation(line: 167, column: 18, scope: !154)
!172 = !DILocation(line: 168, column: 60, scope: !154)
!173 = !DILocation(line: 168, column: 53, scope: !154)
!174 = !DILocation(line: 168, column: 51, scope: !154)
!175 = !DILocation(line: 168, column: 42, scope: !154)
!176 = !DILocation(line: 168, column: 68, scope: !154)
!177 = !DILocation(line: 168, column: 66, scope: !154)
!178 = !DILocation(line: 168, column: 5, scope: !154)
!179 = !DILocation(line: 168, column: 13, scope: !154)
!180 = !DILocation(line: 168, column: 18, scope: !154)
!181 = !DILocation(line: 169, column: 22, scope: !154)
!182 = !DILocation(line: 169, column: 28, scope: !154)
!183 = !DILocation(line: 169, column: 26, scope: !154)
!184 = !DILocation(line: 169, column: 5, scope: !154)
!185 = !DILocation(line: 169, column: 13, scope: !154)
!186 = !DILocation(line: 169, column: 17, scope: !154)
!187 = !DILocation(line: 170, column: 49, scope: !154)
!188 = !DILocation(line: 170, column: 57, scope: !154)
!189 = !DILocation(line: 170, column: 44, scope: !154)
!190 = !DILocation(line: 170, column: 42, scope: !154)
!191 = !DILocation(line: 170, column: 5, scope: !154)
!192 = !DILocation(line: 170, column: 13, scope: !154)
!193 = !DILocation(line: 170, column: 17, scope: !154)
!194 = !DILocation(line: 171, column: 5, scope: !154)
!195 = !DILocalVariable(name: "sy", scope: !196, file: !1, line: 174, type: !76)
!196 = distinct !DILexicalBlock(scope: !150, file: !1, line: 173, column: 8)
!197 = !DILocation(line: 174, column: 18, scope: !196)
!198 = !DILocation(line: 174, column: 28, scope: !196)
!199 = !DILocation(line: 174, column: 23, scope: !196)
!200 = !DILocalVariable(name: "c", scope: !196, file: !1, line: 175, type: !78)
!201 = !DILocation(line: 175, column: 19, scope: !196)
!202 = !DILocation(line: 176, column: 32, scope: !196)
!203 = !DILocation(line: 176, column: 31, scope: !196)
!204 = !DILocation(line: 176, column: 33, scope: !196)
!205 = !DILocation(line: 176, column: 5, scope: !196)
!206 = !DILocation(line: 177, column: 30, scope: !196)
!207 = !DILocation(line: 177, column: 26, scope: !196)
!208 = !DILocation(line: 177, column: 37, scope: !196)
!209 = !DILocation(line: 177, column: 35, scope: !196)
!210 = !DILocation(line: 177, column: 5, scope: !196)
!211 = !DILocation(line: 177, column: 13, scope: !196)
!212 = !DILocation(line: 177, column: 17, scope: !196)
!213 = !DILocation(line: 178, column: 60, scope: !196)
!214 = !DILocation(line: 178, column: 53, scope: !196)
!215 = !DILocation(line: 178, column: 51, scope: !196)
!216 = !DILocation(line: 178, column: 42, scope: !196)
!217 = !DILocation(line: 178, column: 68, scope: !196)
!218 = !DILocation(line: 178, column: 66, scope: !196)
!219 = !DILocation(line: 178, column: 5, scope: !196)
!220 = !DILocation(line: 178, column: 13, scope: !196)
!221 = !DILocation(line: 178, column: 18, scope: !196)
!222 = !DILocation(line: 179, column: 22, scope: !196)
!223 = !DILocation(line: 179, column: 28, scope: !196)
!224 = !DILocation(line: 179, column: 26, scope: !196)
!225 = !DILocation(line: 179, column: 5, scope: !196)
!226 = !DILocation(line: 179, column: 13, scope: !196)
!227 = !DILocation(line: 179, column: 17, scope: !196)
!228 = !DILocation(line: 180, column: 49, scope: !196)
!229 = !DILocation(line: 180, column: 57, scope: !196)
!230 = !DILocation(line: 180, column: 44, scope: !196)
!231 = !DILocation(line: 180, column: 42, scope: !196)
!232 = !DILocation(line: 180, column: 5, scope: !196)
!233 = !DILocation(line: 180, column: 13, scope: !196)
!234 = !DILocation(line: 180, column: 17, scope: !196)
!235 = !DILocation(line: 181, column: 5, scope: !196)
!236 = !DILocation(line: 183, column: 1, scope: !73)
!237 = distinct !DISubprogram(name: "cheb_eval_e", scope: !238, file: !238, line: 3, type: !239, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!238 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!239 = !DISubroutineType(types: !240)
!240 = !{!51, !241, !76, !77}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!243 = !DILocalVariable(name: "cs", arg: 1, scope: !237, file: !238, line: 3, type: !241)
!244 = !DILocation(line: 3, column: 33, scope: !237)
!245 = !DILocalVariable(name: "x", arg: 2, scope: !237, file: !238, line: 4, type: !76)
!246 = !DILocation(line: 4, column: 26, scope: !237)
!247 = !DILocalVariable(name: "result", arg: 3, scope: !237, file: !238, line: 5, type: !77)
!248 = !DILocation(line: 5, column: 29, scope: !237)
!249 = !DILocalVariable(name: "j", scope: !237, file: !238, line: 7, type: !51)
!250 = !DILocation(line: 7, column: 7, scope: !237)
!251 = !DILocalVariable(name: "d", scope: !237, file: !238, line: 8, type: !49)
!252 = !DILocation(line: 8, column: 10, scope: !237)
!253 = !DILocalVariable(name: "dd", scope: !237, file: !238, line: 9, type: !49)
!254 = !DILocation(line: 9, column: 10, scope: !237)
!255 = !DILocalVariable(name: "y", scope: !237, file: !238, line: 11, type: !49)
!256 = !DILocation(line: 11, column: 10, scope: !237)
!257 = !DILocation(line: 11, column: 20, scope: !237)
!258 = !DILocation(line: 11, column: 19, scope: !237)
!259 = !DILocation(line: 11, column: 24, scope: !237)
!260 = !DILocation(line: 11, column: 28, scope: !237)
!261 = !DILocation(line: 11, column: 22, scope: !237)
!262 = !DILocation(line: 11, column: 32, scope: !237)
!263 = !DILocation(line: 11, column: 36, scope: !237)
!264 = !DILocation(line: 11, column: 30, scope: !237)
!265 = !DILocation(line: 11, column: 42, scope: !237)
!266 = !DILocation(line: 11, column: 46, scope: !237)
!267 = !DILocation(line: 11, column: 50, scope: !237)
!268 = !DILocation(line: 11, column: 54, scope: !237)
!269 = !DILocation(line: 11, column: 48, scope: !237)
!270 = !DILocation(line: 11, column: 39, scope: !237)
!271 = !DILocalVariable(name: "y2", scope: !237, file: !238, line: 12, type: !49)
!272 = !DILocation(line: 12, column: 10, scope: !237)
!273 = !DILocation(line: 12, column: 21, scope: !237)
!274 = !DILocation(line: 12, column: 19, scope: !237)
!275 = !DILocalVariable(name: "e", scope: !237, file: !238, line: 14, type: !49)
!276 = !DILocation(line: 14, column: 10, scope: !237)
!277 = !DILocation(line: 16, column: 11, scope: !278)
!278 = distinct !DILexicalBlock(scope: !237, file: !238, line: 16, column: 3)
!279 = !DILocation(line: 16, column: 15, scope: !278)
!280 = !DILocation(line: 16, column: 9, scope: !278)
!281 = !DILocation(line: 16, column: 7, scope: !278)
!282 = !DILocation(line: 16, column: 22, scope: !283)
!283 = !DILexicalBlockFile(scope: !284, file: !238, discriminator: 1)
!284 = distinct !DILexicalBlock(scope: !278, file: !238, line: 16, column: 3)
!285 = !DILocation(line: 16, column: 23, scope: !283)
!286 = !DILocation(line: 16, column: 3, scope: !283)
!287 = !DILocalVariable(name: "temp", scope: !288, file: !238, line: 17, type: !49)
!288 = distinct !DILexicalBlock(scope: !284, file: !238, line: 16, column: 33)
!289 = !DILocation(line: 17, column: 12, scope: !288)
!290 = !DILocation(line: 17, column: 19, scope: !288)
!291 = !DILocation(line: 18, column: 9, scope: !288)
!292 = !DILocation(line: 18, column: 12, scope: !288)
!293 = !DILocation(line: 18, column: 11, scope: !288)
!294 = !DILocation(line: 18, column: 16, scope: !288)
!295 = !DILocation(line: 18, column: 14, scope: !288)
!296 = !DILocation(line: 18, column: 27, scope: !288)
!297 = !DILocation(line: 18, column: 21, scope: !288)
!298 = !DILocation(line: 18, column: 25, scope: !288)
!299 = !DILocation(line: 18, column: 19, scope: !288)
!300 = !DILocation(line: 18, column: 7, scope: !288)
!301 = !DILocation(line: 19, column: 15, scope: !288)
!302 = !DILocation(line: 19, column: 18, scope: !288)
!303 = !DILocation(line: 19, column: 17, scope: !288)
!304 = !DILocation(line: 19, column: 10, scope: !288)
!305 = !DILocation(line: 19, column: 31, scope: !288)
!306 = !DILocation(line: 19, column: 26, scope: !307)
!307 = !DILexicalBlockFile(scope: !288, file: !238, discriminator: 1)
!308 = !DILocation(line: 19, column: 24, scope: !288)
!309 = !DILocation(line: 19, column: 48, scope: !288)
!310 = !DILocation(line: 19, column: 42, scope: !288)
!311 = !DILocation(line: 19, column: 46, scope: !288)
!312 = !DILocation(line: 19, column: 37, scope: !313)
!313 = !DILexicalBlockFile(scope: !288, file: !238, discriminator: 2)
!314 = !DILocation(line: 19, column: 35, scope: !288)
!315 = !DILocation(line: 19, column: 7, scope: !288)
!316 = !DILocation(line: 20, column: 10, scope: !288)
!317 = !DILocation(line: 20, column: 8, scope: !288)
!318 = !DILocation(line: 21, column: 3, scope: !288)
!319 = !DILocation(line: 16, column: 29, scope: !320)
!320 = !DILexicalBlockFile(scope: !284, file: !238, discriminator: 2)
!321 = !DILocation(line: 16, column: 3, scope: !320)
!322 = distinct !{!322, !323}
!323 = !DILocation(line: 16, column: 3, scope: !237)
!324 = !DILocalVariable(name: "temp", scope: !325, file: !238, line: 24, type: !49)
!325 = distinct !DILexicalBlock(scope: !237, file: !238, line: 23, column: 3)
!326 = !DILocation(line: 24, column: 12, scope: !325)
!327 = !DILocation(line: 24, column: 19, scope: !325)
!328 = !DILocation(line: 25, column: 9, scope: !325)
!329 = !DILocation(line: 25, column: 11, scope: !325)
!330 = !DILocation(line: 25, column: 10, scope: !325)
!331 = !DILocation(line: 25, column: 15, scope: !325)
!332 = !DILocation(line: 25, column: 13, scope: !325)
!333 = !DILocation(line: 25, column: 26, scope: !325)
!334 = !DILocation(line: 25, column: 30, scope: !325)
!335 = !DILocation(line: 25, column: 24, scope: !325)
!336 = !DILocation(line: 25, column: 18, scope: !325)
!337 = !DILocation(line: 25, column: 7, scope: !325)
!338 = !DILocation(line: 26, column: 15, scope: !325)
!339 = !DILocation(line: 26, column: 17, scope: !325)
!340 = !DILocation(line: 26, column: 16, scope: !325)
!341 = !DILocation(line: 26, column: 10, scope: !325)
!342 = !DILocation(line: 26, column: 30, scope: !325)
!343 = !DILocation(line: 26, column: 25, scope: !344)
!344 = !DILexicalBlockFile(scope: !325, file: !238, discriminator: 1)
!345 = !DILocation(line: 26, column: 23, scope: !325)
!346 = !DILocation(line: 26, column: 47, scope: !325)
!347 = !DILocation(line: 26, column: 51, scope: !325)
!348 = !DILocation(line: 26, column: 42, scope: !349)
!349 = !DILexicalBlockFile(scope: !325, file: !238, discriminator: 2)
!350 = !DILocation(line: 26, column: 40, scope: !325)
!351 = !DILocation(line: 26, column: 34, scope: !325)
!352 = !DILocation(line: 26, column: 7, scope: !325)
!353 = !DILocation(line: 29, column: 17, scope: !237)
!354 = !DILocation(line: 29, column: 3, scope: !237)
!355 = !DILocation(line: 29, column: 11, scope: !237)
!356 = !DILocation(line: 29, column: 15, scope: !237)
!357 = !DILocation(line: 30, column: 35, scope: !237)
!358 = !DILocation(line: 30, column: 33, scope: !237)
!359 = !DILocation(line: 30, column: 50, scope: !237)
!360 = !DILocation(line: 30, column: 54, scope: !237)
!361 = !DILocation(line: 30, column: 44, scope: !237)
!362 = !DILocation(line: 30, column: 48, scope: !237)
!363 = !DILocation(line: 30, column: 39, scope: !237)
!364 = !DILocation(line: 30, column: 37, scope: !237)
!365 = !DILocation(line: 30, column: 3, scope: !237)
!366 = !DILocation(line: 30, column: 11, scope: !237)
!367 = !DILocation(line: 30, column: 15, scope: !237)
!368 = !DILocation(line: 32, column: 3, scope: !237)
!369 = distinct !DISubprogram(name: "gsl_sf_bessel_I0_e", scope: !1, file: !1, line: 186, type: !74, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!370 = !DILocalVariable(name: "x", arg: 1, scope: !369, file: !1, line: 186, type: !76)
!371 = !DILocation(line: 186, column: 37, scope: !369)
!372 = !DILocalVariable(name: "result", arg: 2, scope: !369, file: !1, line: 186, type: !77)
!373 = !DILocation(line: 186, column: 56, scope: !369)
!374 = !DILocalVariable(name: "y", scope: !369, file: !1, line: 188, type: !49)
!375 = !DILocation(line: 188, column: 10, scope: !369)
!376 = !DILocation(line: 188, column: 19, scope: !369)
!377 = !DILocation(line: 188, column: 14, scope: !369)
!378 = !DILocation(line: 192, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !369, file: !1, line: 192, column: 6)
!380 = !DILocation(line: 192, column: 8, scope: !379)
!381 = !DILocation(line: 192, column: 6, scope: !369)
!382 = !DILocation(line: 193, column: 5, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !1, line: 192, column: 38)
!384 = !DILocation(line: 193, column: 13, scope: !383)
!385 = !DILocation(line: 193, column: 17, scope: !383)
!386 = !DILocation(line: 194, column: 23, scope: !383)
!387 = !DILocation(line: 194, column: 22, scope: !383)
!388 = !DILocation(line: 194, column: 25, scope: !383)
!389 = !DILocation(line: 194, column: 24, scope: !383)
!390 = !DILocation(line: 194, column: 5, scope: !383)
!391 = !DILocation(line: 194, column: 13, scope: !383)
!392 = !DILocation(line: 194, column: 17, scope: !383)
!393 = !DILocation(line: 195, column: 5, scope: !383)
!394 = !DILocation(line: 197, column: 11, scope: !395)
!395 = distinct !DILexicalBlock(scope: !379, file: !1, line: 197, column: 11)
!396 = !DILocation(line: 197, column: 13, scope: !395)
!397 = !DILocation(line: 197, column: 11, scope: !379)
!398 = !DILocalVariable(name: "c", scope: !399, file: !1, line: 198, type: !78)
!399 = distinct !DILexicalBlock(scope: !395, file: !1, line: 197, column: 21)
!400 = !DILocation(line: 198, column: 19, scope: !399)
!401 = !DILocation(line: 199, column: 26, scope: !399)
!402 = !DILocation(line: 199, column: 28, scope: !399)
!403 = !DILocation(line: 199, column: 27, scope: !399)
!404 = !DILocation(line: 199, column: 29, scope: !399)
!405 = !DILocation(line: 199, column: 33, scope: !399)
!406 = !DILocation(line: 199, column: 5, scope: !399)
!407 = !DILocation(line: 200, column: 29, scope: !399)
!408 = !DILocation(line: 200, column: 25, scope: !399)
!409 = !DILocation(line: 200, column: 5, scope: !399)
!410 = !DILocation(line: 200, column: 13, scope: !399)
!411 = !DILocation(line: 200, column: 18, scope: !399)
!412 = !DILocation(line: 201, column: 53, scope: !399)
!413 = !DILocation(line: 201, column: 46, scope: !399)
!414 = !DILocation(line: 201, column: 44, scope: !399)
!415 = !DILocation(line: 201, column: 36, scope: !399)
!416 = !DILocation(line: 201, column: 5, scope: !399)
!417 = !DILocation(line: 201, column: 13, scope: !399)
!418 = !DILocation(line: 201, column: 18, scope: !399)
!419 = !DILocation(line: 202, column: 22, scope: !399)
!420 = !DILocation(line: 202, column: 5, scope: !399)
!421 = !DILocation(line: 202, column: 13, scope: !399)
!422 = !DILocation(line: 202, column: 17, scope: !399)
!423 = !DILocation(line: 203, column: 49, scope: !399)
!424 = !DILocation(line: 203, column: 57, scope: !399)
!425 = !DILocation(line: 203, column: 44, scope: !399)
!426 = !DILocation(line: 203, column: 42, scope: !399)
!427 = !DILocation(line: 203, column: 5, scope: !399)
!428 = !DILocation(line: 203, column: 13, scope: !399)
!429 = !DILocation(line: 203, column: 17, scope: !399)
!430 = !DILocation(line: 204, column: 5, scope: !399)
!431 = !DILocation(line: 206, column: 11, scope: !432)
!432 = distinct !DILexicalBlock(scope: !395, file: !1, line: 206, column: 11)
!433 = !DILocation(line: 206, column: 13, scope: !432)
!434 = !DILocation(line: 206, column: 11, scope: !395)
!435 = !DILocalVariable(name: "ey", scope: !436, file: !1, line: 207, type: !76)
!436 = distinct !DILexicalBlock(scope: !432, file: !1, line: 206, column: 38)
!437 = !DILocation(line: 207, column: 18, scope: !436)
!438 = !DILocation(line: 207, column: 27, scope: !436)
!439 = !DILocation(line: 207, column: 23, scope: !436)
!440 = !DILocalVariable(name: "b_scaled", scope: !436, file: !1, line: 208, type: !78)
!441 = !DILocation(line: 208, column: 19, scope: !436)
!442 = !DILocation(line: 209, column: 31, scope: !436)
!443 = !DILocation(line: 209, column: 5, scope: !436)
!444 = !DILocation(line: 210, column: 20, scope: !436)
!445 = !DILocation(line: 210, column: 34, scope: !436)
!446 = !DILocation(line: 210, column: 23, scope: !436)
!447 = !DILocation(line: 210, column: 5, scope: !436)
!448 = !DILocation(line: 210, column: 13, scope: !436)
!449 = !DILocation(line: 210, column: 18, scope: !436)
!450 = !DILocation(line: 211, column: 20, scope: !436)
!451 = !DILocation(line: 211, column: 34, scope: !436)
!452 = !DILocation(line: 211, column: 23, scope: !436)
!453 = !DILocation(line: 211, column: 40, scope: !436)
!454 = !DILocation(line: 211, column: 41, scope: !436)
!455 = !DILocation(line: 211, column: 63, scope: !436)
!456 = !DILocation(line: 211, column: 71, scope: !436)
!457 = !DILocation(line: 211, column: 58, scope: !436)
!458 = !DILocation(line: 211, column: 57, scope: !436)
!459 = !DILocation(line: 211, column: 38, scope: !436)
!460 = !DILocation(line: 211, column: 5, scope: !436)
!461 = !DILocation(line: 211, column: 13, scope: !436)
!462 = !DILocation(line: 211, column: 18, scope: !436)
!463 = !DILocation(line: 212, column: 49, scope: !436)
!464 = !DILocation(line: 212, column: 57, scope: !436)
!465 = !DILocation(line: 212, column: 44, scope: !436)
!466 = !DILocation(line: 212, column: 42, scope: !436)
!467 = !DILocation(line: 212, column: 5, scope: !436)
!468 = !DILocation(line: 212, column: 13, scope: !436)
!469 = !DILocation(line: 212, column: 17, scope: !436)
!470 = !DILocation(line: 213, column: 5, scope: !436)
!471 = !DILocation(line: 216, column: 5, scope: !472)
!472 = distinct !DILexicalBlock(scope: !432, file: !1, line: 215, column: 8)
!473 = distinct !{!473, !471}
!474 = !DILocation(line: 216, column: 5, scope: !475)
!475 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 1)
!476 = distinct !DILexicalBlock(scope: !472, file: !1, line: 216, column: 5)
!477 = distinct !{!477, !478}
!478 = !DILocation(line: 216, column: 5, scope: !476)
!479 = !DILocation(line: 216, column: 5, scope: !480)
!480 = !DILexicalBlockFile(scope: !481, file: !1, discriminator: 2)
!481 = distinct !DILexicalBlock(scope: !476, file: !1, line: 216, column: 5)
!482 = !DILocation(line: 216, column: 5, scope: !483)
!483 = !DILexicalBlockFile(scope: !476, file: !1, discriminator: 3)
!484 = !DILocation(line: 218, column: 1, scope: !369)
!485 = distinct !DISubprogram(name: "gsl_sf_bessel_I0_scaled", scope: !1, file: !1, line: 224, type: !486, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!486 = !DISubroutineType(types: !487)
!487 = !{!49, !76}
!488 = !DILocalVariable(name: "x", arg: 1, scope: !485, file: !1, line: 224, type: !76)
!489 = !DILocation(line: 224, column: 45, scope: !485)
!490 = !DILocalVariable(name: "result", scope: !485, file: !1, line: 226, type: !78)
!491 = !DILocation(line: 226, column: 3, scope: !485)
!492 = !DILocalVariable(name: "status", scope: !485, file: !1, line: 226, type: !51)
!493 = !DILocation(line: 226, column: 3, scope: !494)
!494 = distinct !DILexicalBlock(scope: !485, file: !1, line: 226, column: 3)
!495 = !DILocation(line: 226, column: 3, scope: !496)
!496 = !DILexicalBlockFile(scope: !497, file: !1, discriminator: 1)
!497 = distinct !DILexicalBlock(scope: !494, file: !1, line: 226, column: 3)
!498 = distinct !{!498, !499}
!499 = !DILocation(line: 226, column: 3, scope: !497)
!500 = !DILocation(line: 226, column: 3, scope: !501)
!501 = !DILexicalBlockFile(scope: !502, file: !1, discriminator: 2)
!502 = distinct !DILexicalBlock(scope: !497, file: !1, line: 226, column: 3)
!503 = !DILocation(line: 226, column: 3, scope: !504)
!504 = !DILexicalBlockFile(scope: !497, file: !1, discriminator: 3)
!505 = !DILocation(line: 226, column: 3, scope: !506)
!506 = !DILexicalBlockFile(scope: !485, file: !1, discriminator: 4)
!507 = !DILocation(line: 227, column: 1, scope: !485)
!508 = distinct !DISubprogram(name: "gsl_sf_bessel_I0", scope: !1, file: !1, line: 229, type: !486, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!509 = !DILocalVariable(name: "x", arg: 1, scope: !508, file: !1, line: 229, type: !76)
!510 = !DILocation(line: 229, column: 38, scope: !508)
!511 = !DILocalVariable(name: "result", scope: !508, file: !1, line: 231, type: !78)
!512 = !DILocation(line: 231, column: 3, scope: !508)
!513 = !DILocalVariable(name: "status", scope: !508, file: !1, line: 231, type: !51)
!514 = !DILocation(line: 231, column: 3, scope: !515)
!515 = distinct !DILexicalBlock(scope: !508, file: !1, line: 231, column: 3)
!516 = !DILocation(line: 231, column: 3, scope: !517)
!517 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 1)
!518 = distinct !DILexicalBlock(scope: !515, file: !1, line: 231, column: 3)
!519 = distinct !{!519, !520}
!520 = !DILocation(line: 231, column: 3, scope: !518)
!521 = !DILocation(line: 231, column: 3, scope: !522)
!522 = !DILexicalBlockFile(scope: !523, file: !1, discriminator: 2)
!523 = distinct !DILexicalBlock(scope: !518, file: !1, line: 231, column: 3)
!524 = !DILocation(line: 231, column: 3, scope: !525)
!525 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 3)
!526 = !DILocation(line: 231, column: 3, scope: !527)
!527 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 4)
!528 = !DILocation(line: 232, column: 1, scope: !508)
