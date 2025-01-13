; ModuleID = 'bessel_K0.c'
source_filename = "bessel_K0.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_K0.c\00", align 1
@k0_poly = internal global [8 x double] [double 0x3FBDADB014541EB2, double 0x3FD1DADB014541EC, double 0x3F99DADB01454042, double 0x3F4BB90E85E098DB, double 0x3EEF47476772D4D9, double 0x3E85D6B25BE0BEE4, double 0x3E14C2029D5D2FB5, double 0x3D9D141FCB837472], align 16
@i0_poly = internal global [7 x double] [double 1.000000e+00, double 0x3FCFFFFFFFFFFFC0, double 0x3F9C71C71C7247E2, double 0x3F5C71C71BAFCBAF, double 0x3F12345703982239, double 0x3EC02E1F9FBAC1EB, double 0x3E656CF1AEB212BC], align 16
@ak0_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([24 x double], [24 x double]* @ak0_data, i32 0, i32 0), i32 23, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@ak02_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([14 x double], [14 x double]* @ak02_data, i32 0, i32 0), i32 13, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_K0_scaled_e(x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_K0_e(x, &result)\00", align 1
@ak0_data = internal global [24 x double] [double 0xBFA0D4D53DA02B79, double 0xBFA701F8595707AC, double 0x3F686CA894C99E5E, double 0xBF33E7224ACAF754, double 0x3F04810FC8BA31E0, double 0xBED89D7EA1913EC4, double 0x3EB07D69129D3737, double 0xBE8805A8CF970730, double 0x3E62B37159763CE2, double 0xBE3EBF81488E2402, double 0x3E1A75DE3FBA85CA, double 0xBDF7AD7BF4DAC0FE, double 0x3DD5EAE50EA1613C, double 0xBDB4E695C96D212F, double 0x3D9476C348F02A9A, double 0xBD7483D7327FED8A, double 0x3D55024709B62B40, double 0xBD35EF484CE45EFC, double 0x3D174F2914CBFC13, double 0xBCF92CB0F5CCFF50, double 0x3CDB993D60F2BCE6, double 0xBCBEAD78AC82AFD3, double 0x3CA145530D1B2B7C, double 0xBC83AE487D34B2AC], align 16
@ak02_data = internal global [14 x double] [double 0xBF889D425FD7DD93, double 0xBF82CA43E2075142, double 0x3F22EF1BCD47BEC8, double 0xBED0D595DD239AD5, double 0x3E850B0771F4EA8B, double 0xBE40AFA9D3CDEF4F, double 0x3DFFB014035FE5C4, double 0xBDC15D530F529E11, double 0x3D856B2C54B23E51, double 0xBD4D319102E9251A, double 0x3D15AEB434479FAD, double 0xBCE15CA386B00802, double 0x3CADB82AF887F813, double 0xBC7AFF6F40020063], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_K0_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !76 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !88, metadata !89), !dbg !90
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !91, metadata !89), !dbg !92
  %13 = load double, double* %4, align 8, !dbg !93
  %14 = fcmp ole double %13, 0.000000e+00, !dbg !95
  br i1 %14, label %15, label %24, !dbg !96

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !97, !llvm.loop !99

; <label>:16:                                     ; preds = %15
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !100
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !100
  store double 0x7FF8000000000000, double* %18, align 8, !dbg !100
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !100
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !100
  store double 0x7FF8000000000000, double* %20, align 8, !dbg !100
  br label %21, !dbg !100, !llvm.loop !103

; <label>:21:                                     ; preds = %16
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 136, i32 1), !dbg !105
  store i32 1, i32* %3, align 4, !dbg !105
  br label %132, !dbg !105
                                                  ; No predecessors!
  br label %23, !dbg !108

; <label>:23:                                     ; preds = %22
  br label %132, !dbg !110

; <label>:24:                                     ; preds = %2
  %25 = load double, double* %4, align 8, !dbg !111
  %26 = fcmp olt double %25, 1.000000e+00, !dbg !113
  br i1 %26, label %27, label %69, !dbg !114

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata double* %6, metadata !115, metadata !89), !dbg !117
  %28 = load double, double* %4, align 8, !dbg !118
  %29 = call double @log(double %28) #6, !dbg !119
  store double %29, double* %6, align 8, !dbg !117
  call void @llvm.dbg.declare(metadata double* %7, metadata !120, metadata !89), !dbg !121
  %30 = load double, double* %4, align 8, !dbg !122
  %31 = call double @exp(double %30) #6, !dbg !123
  store double %31, double* %7, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata double* %8, metadata !124, metadata !89), !dbg !125
  %32 = load double, double* %4, align 8, !dbg !126
  %33 = load double, double* %4, align 8, !dbg !127
  %34 = fmul double %32, %33, !dbg !128
  store double %34, double* %8, align 8, !dbg !125
  %35 = load double, double* %7, align 8, !dbg !129
  %36 = load double, double* %8, align 8, !dbg !130
  %37 = call double @gsl_poly_eval(double* getelementptr inbounds ([8 x double], [8 x double]* @k0_poly, i32 0, i32 0), i32 8, double %36), !dbg !131
  %38 = load double, double* %6, align 8, !dbg !132
  %39 = load double, double* %8, align 8, !dbg !133
  %40 = fmul double 2.500000e-01, %39, !dbg !134
  %41 = load double, double* %8, align 8, !dbg !135
  %42 = fmul double 2.500000e-01, %41, !dbg !136
  %43 = call double @gsl_poly_eval(double* getelementptr inbounds ([7 x double], [7 x double]* @i0_poly, i32 0, i32 0), i32 7, double %42), !dbg !137
  %44 = fmul double %40, %43, !dbg !139
  %45 = fadd double 1.000000e+00, %44, !dbg !140
  %46 = fmul double %38, %45, !dbg !141
  %47 = fsub double %37, %46, !dbg !142
  %48 = fmul double %35, %47, !dbg !143
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !144
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !145
  store double %48, double* %50, align 8, !dbg !146
  %51 = load double, double* %7, align 8, !dbg !147
  %52 = load double, double* %6, align 8, !dbg !148
  %53 = call double @fabs(double %52) #1, !dbg !149
  %54 = fmul double %53, 6.000000e-01, !dbg !150
  %55 = fadd double 1.600000e+00, %54, !dbg !151
  %56 = fmul double %51, %55, !dbg !152
  %57 = fmul double %56, 0x3CB0000000000000, !dbg !153
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !154
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !155
  store double %57, double* %59, align 8, !dbg !156
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !157
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !158
  %62 = load double, double* %61, align 8, !dbg !158
  %63 = call double @fabs(double %62) #1, !dbg !159
  %64 = fmul double 0x3CC0000000000000, %63, !dbg !160
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !161
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 1, !dbg !162
  %67 = load double, double* %66, align 8, !dbg !163
  %68 = fadd double %67, %64, !dbg !163
  store double %68, double* %66, align 8, !dbg !163
  store i32 0, i32* %3, align 4, !dbg !164
  br label %132, !dbg !164

; <label>:69:                                     ; preds = %24
  %70 = load double, double* %4, align 8, !dbg !165
  %71 = fcmp ole double %70, 8.000000e+00, !dbg !167
  br i1 %71, label %72, label %102, !dbg !168

; <label>:72:                                     ; preds = %69
  call void @llvm.dbg.declare(metadata double* %9, metadata !169, metadata !89), !dbg !171
  %73 = load double, double* %4, align 8, !dbg !172
  %74 = call double @sqrt(double %73) #6, !dbg !173
  store double %74, double* %9, align 8, !dbg !171
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !174, metadata !89), !dbg !175
  %75 = load double, double* %4, align 8, !dbg !176
  %76 = fdiv double 1.600000e+01, %75, !dbg !177
  %77 = fsub double %76, 9.000000e+00, !dbg !178
  %78 = fdiv double %77, 7.000000e+00, !dbg !179
  %79 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @ak0_cs, double %78, %struct.gsl_sf_result_struct* %10), !dbg !180
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !181
  %81 = load double, double* %80, align 8, !dbg !181
  %82 = fadd double 1.203125e+00, %81, !dbg !182
  %83 = load double, double* %9, align 8, !dbg !183
  %84 = fdiv double %82, %83, !dbg !184
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !185
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !186
  store double %84, double* %86, align 8, !dbg !187
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !188
  %88 = load double, double* %87, align 8, !dbg !188
  %89 = load double, double* %9, align 8, !dbg !189
  %90 = fdiv double %88, %89, !dbg !190
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !191
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 1, !dbg !192
  store double %90, double* %92, align 8, !dbg !193
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !194
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 0, !dbg !195
  %95 = load double, double* %94, align 8, !dbg !195
  %96 = call double @fabs(double %95) #1, !dbg !196
  %97 = fmul double 0x3CC0000000000000, %96, !dbg !197
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !198
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 1, !dbg !199
  %100 = load double, double* %99, align 8, !dbg !200
  %101 = fadd double %100, %97, !dbg !200
  store double %101, double* %99, align 8, !dbg !200
  store i32 0, i32* %3, align 4, !dbg !201
  br label %132, !dbg !201

; <label>:102:                                    ; preds = %69
  call void @llvm.dbg.declare(metadata double* %11, metadata !202, metadata !89), !dbg !204
  %103 = load double, double* %4, align 8, !dbg !205
  %104 = call double @sqrt(double %103) #6, !dbg !206
  store double %104, double* %11, align 8, !dbg !204
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !207, metadata !89), !dbg !208
  %105 = load double, double* %4, align 8, !dbg !209
  %106 = fdiv double 1.600000e+01, %105, !dbg !210
  %107 = fsub double %106, 1.000000e+00, !dbg !211
  %108 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @ak02_cs, double %107, %struct.gsl_sf_result_struct* %12), !dbg !212
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !213
  %110 = load double, double* %109, align 8, !dbg !213
  %111 = fadd double 1.250000e+00, %110, !dbg !214
  %112 = load double, double* %11, align 8, !dbg !215
  %113 = fdiv double %111, %112, !dbg !216
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !217
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !218
  store double %113, double* %115, align 8, !dbg !219
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !220
  %117 = load double, double* %116, align 8, !dbg !220
  %118 = fadd double %117, 0x3CB0000000000000, !dbg !221
  %119 = load double, double* %11, align 8, !dbg !222
  %120 = fdiv double %118, %119, !dbg !223
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !224
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 1, !dbg !225
  store double %120, double* %122, align 8, !dbg !226
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !227
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 0, !dbg !228
  %125 = load double, double* %124, align 8, !dbg !228
  %126 = call double @fabs(double %125) #1, !dbg !229
  %127 = fmul double 0x3CC0000000000000, %126, !dbg !230
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !231
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 1, !dbg !232
  %130 = load double, double* %129, align 8, !dbg !233
  %131 = fadd double %130, %127, !dbg !233
  store double %131, double* %129, align 8, !dbg !233
  store i32 0, i32* %3, align 4, !dbg !234
  br label %132, !dbg !234

; <label>:132:                                    ; preds = %21, %27, %72, %102, %23
  %133 = load i32, i32* %3, align 4, !dbg !235
  ret i32 %133, !dbg !235
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind
declare double @exp(double) #3

declare double @gsl_poly_eval(double*, i32, double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #5 !dbg !236 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !242, metadata !89), !dbg !243
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !244, metadata !89), !dbg !245
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !246, metadata !89), !dbg !247
  call void @llvm.dbg.declare(metadata i32* %7, metadata !248, metadata !89), !dbg !249
  call void @llvm.dbg.declare(metadata double* %8, metadata !250, metadata !89), !dbg !251
  store double 0.000000e+00, double* %8, align 8, !dbg !251
  call void @llvm.dbg.declare(metadata double* %9, metadata !252, metadata !89), !dbg !253
  store double 0.000000e+00, double* %9, align 8, !dbg !253
  call void @llvm.dbg.declare(metadata double* %10, metadata !254, metadata !89), !dbg !255
  %15 = load double, double* %5, align 8, !dbg !256
  %16 = fmul double 2.000000e+00, %15, !dbg !257
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !258
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !259
  %19 = load double, double* %18, align 8, !dbg !259
  %20 = fsub double %16, %19, !dbg !260
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !261
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !262
  %23 = load double, double* %22, align 8, !dbg !262
  %24 = fsub double %20, %23, !dbg !263
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !264
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !265
  %27 = load double, double* %26, align 8, !dbg !265
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !266
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !267
  %30 = load double, double* %29, align 8, !dbg !267
  %31 = fsub double %27, %30, !dbg !268
  %32 = fdiv double %24, %31, !dbg !269
  store double %32, double* %10, align 8, !dbg !255
  call void @llvm.dbg.declare(metadata double* %11, metadata !270, metadata !89), !dbg !271
  %33 = load double, double* %10, align 8, !dbg !272
  %34 = fmul double 2.000000e+00, %33, !dbg !273
  store double %34, double* %11, align 8, !dbg !271
  call void @llvm.dbg.declare(metadata double* %12, metadata !274, metadata !89), !dbg !275
  store double 0.000000e+00, double* %12, align 8, !dbg !275
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !276
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !278
  %37 = load i32, i32* %36, align 8, !dbg !278
  store i32 %37, i32* %7, align 4, !dbg !279
  br label %38, !dbg !280

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !281
  %40 = icmp sge i32 %39, 1, !dbg !284
  br i1 %40, label %41, label %78, !dbg !285

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !286, metadata !89), !dbg !288
  %42 = load double, double* %8, align 8, !dbg !289
  store double %42, double* %13, align 8, !dbg !288
  %43 = load double, double* %11, align 8, !dbg !290
  %44 = load double, double* %8, align 8, !dbg !291
  %45 = fmul double %43, %44, !dbg !292
  %46 = load double, double* %9, align 8, !dbg !293
  %47 = fsub double %45, %46, !dbg !294
  %48 = load i32, i32* %7, align 4, !dbg !295
  %49 = sext i32 %48 to i64, !dbg !296
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !296
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !297
  %52 = load double*, double** %51, align 8, !dbg !297
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !296
  %54 = load double, double* %53, align 8, !dbg !296
  %55 = fadd double %47, %54, !dbg !298
  store double %55, double* %8, align 8, !dbg !299
  %56 = load double, double* %11, align 8, !dbg !300
  %57 = load double, double* %13, align 8, !dbg !301
  %58 = fmul double %56, %57, !dbg !302
  %59 = call double @fabs(double %58) #1, !dbg !303
  %60 = load double, double* %9, align 8, !dbg !304
  %61 = call double @fabs(double %60) #1, !dbg !305
  %62 = fadd double %59, %61, !dbg !307
  %63 = load i32, i32* %7, align 4, !dbg !308
  %64 = sext i32 %63 to i64, !dbg !309
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !309
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !310
  %67 = load double*, double** %66, align 8, !dbg !310
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !309
  %69 = load double, double* %68, align 8, !dbg !309
  %70 = call double @fabs(double %69) #1, !dbg !311
  %71 = fadd double %62, %70, !dbg !313
  %72 = load double, double* %12, align 8, !dbg !314
  %73 = fadd double %72, %71, !dbg !314
  store double %73, double* %12, align 8, !dbg !314
  %74 = load double, double* %13, align 8, !dbg !315
  store double %74, double* %9, align 8, !dbg !316
  br label %75, !dbg !317

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !318
  %77 = add nsw i32 %76, -1, !dbg !318
  store i32 %77, i32* %7, align 4, !dbg !318
  br label %38, !dbg !320, !llvm.loop !321

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !323, metadata !89), !dbg !325
  %79 = load double, double* %8, align 8, !dbg !326
  store double %79, double* %14, align 8, !dbg !325
  %80 = load double, double* %10, align 8, !dbg !327
  %81 = load double, double* %8, align 8, !dbg !328
  %82 = fmul double %80, %81, !dbg !329
  %83 = load double, double* %9, align 8, !dbg !330
  %84 = fsub double %82, %83, !dbg !331
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !332
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !333
  %87 = load double*, double** %86, align 8, !dbg !333
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !332
  %89 = load double, double* %88, align 8, !dbg !332
  %90 = fmul double 5.000000e-01, %89, !dbg !334
  %91 = fadd double %84, %90, !dbg !335
  store double %91, double* %8, align 8, !dbg !336
  %92 = load double, double* %10, align 8, !dbg !337
  %93 = load double, double* %14, align 8, !dbg !338
  %94 = fmul double %92, %93, !dbg !339
  %95 = call double @fabs(double %94) #1, !dbg !340
  %96 = load double, double* %9, align 8, !dbg !341
  %97 = call double @fabs(double %96) #1, !dbg !342
  %98 = fadd double %95, %97, !dbg !344
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !345
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !346
  %101 = load double*, double** %100, align 8, !dbg !346
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !345
  %103 = load double, double* %102, align 8, !dbg !345
  %104 = call double @fabs(double %103) #1, !dbg !347
  %105 = fmul double 5.000000e-01, %104, !dbg !349
  %106 = fadd double %98, %105, !dbg !350
  %107 = load double, double* %12, align 8, !dbg !351
  %108 = fadd double %107, %106, !dbg !351
  store double %108, double* %12, align 8, !dbg !351
  %109 = load double, double* %8, align 8, !dbg !352
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !353
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !354
  store double %109, double* %111, align 8, !dbg !355
  %112 = load double, double* %12, align 8, !dbg !356
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !357
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !358
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !359
  %116 = load i32, i32* %115, align 8, !dbg !359
  %117 = sext i32 %116 to i64, !dbg !360
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !360
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !361
  %120 = load double*, double** %119, align 8, !dbg !361
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !360
  %122 = load double, double* %121, align 8, !dbg !360
  %123 = call double @fabs(double %122) #1, !dbg !362
  %124 = fadd double %113, %123, !dbg !363
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !364
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !365
  store double %124, double* %126, align 8, !dbg !366
  ret i32 0, !dbg !367
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_K0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !368 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !369, metadata !89), !dbg !370
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !371, metadata !89), !dbg !372
  %11 = load double, double* %4, align 8, !dbg !373
  %12 = fcmp ole double %11, 0.000000e+00, !dbg !375
  br i1 %12, label %13, label %22, !dbg !376

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !377, !llvm.loop !379

; <label>:14:                                     ; preds = %13
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !380
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !380
  store double 0x7FF8000000000000, double* %16, align 8, !dbg !380
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !380
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !380
  store double 0x7FF8000000000000, double* %18, align 8, !dbg !380
  br label %19, !dbg !380, !llvm.loop !383

; <label>:19:                                     ; preds = %14
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 173, i32 1), !dbg !385
  store i32 1, i32* %3, align 4, !dbg !385
  br label %89, !dbg !385
                                                  ; No predecessors!
  br label %21, !dbg !388

; <label>:21:                                     ; preds = %20
  br label %89, !dbg !390

; <label>:22:                                     ; preds = %2
  %23 = load double, double* %4, align 8, !dbg !391
  %24 = fcmp olt double %23, 1.000000e+00, !dbg !393
  br i1 %24, label %25, label %61, !dbg !394

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata double* %6, metadata !395, metadata !89), !dbg !397
  %26 = load double, double* %4, align 8, !dbg !398
  %27 = call double @log(double %26) #6, !dbg !399
  store double %27, double* %6, align 8, !dbg !397
  call void @llvm.dbg.declare(metadata double* %7, metadata !400, metadata !89), !dbg !401
  %28 = load double, double* %4, align 8, !dbg !402
  %29 = load double, double* %4, align 8, !dbg !403
  %30 = fmul double %28, %29, !dbg !404
  store double %30, double* %7, align 8, !dbg !401
  %31 = load double, double* %7, align 8, !dbg !405
  %32 = call double @gsl_poly_eval(double* getelementptr inbounds ([8 x double], [8 x double]* @k0_poly, i32 0, i32 0), i32 8, double %31), !dbg !406
  %33 = load double, double* %6, align 8, !dbg !407
  %34 = load double, double* %7, align 8, !dbg !408
  %35 = fmul double 2.500000e-01, %34, !dbg !409
  %36 = load double, double* %7, align 8, !dbg !410
  %37 = fmul double 2.500000e-01, %36, !dbg !411
  %38 = call double @gsl_poly_eval(double* getelementptr inbounds ([7 x double], [7 x double]* @i0_poly, i32 0, i32 0), i32 7, double %37), !dbg !412
  %39 = fmul double %35, %38, !dbg !414
  %40 = fadd double 1.000000e+00, %39, !dbg !415
  %41 = fmul double %33, %40, !dbg !416
  %42 = fsub double %32, %41, !dbg !417
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !418
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !419
  store double %42, double* %44, align 8, !dbg !420
  %45 = load double, double* %6, align 8, !dbg !421
  %46 = call double @fabs(double %45) #1, !dbg !422
  %47 = fmul double %46, 6.000000e-01, !dbg !423
  %48 = fadd double 1.600000e+00, %47, !dbg !424
  %49 = fmul double %48, 0x3CB0000000000000, !dbg !425
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !426
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 1, !dbg !427
  store double %49, double* %51, align 8, !dbg !428
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !429
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !430
  %54 = load double, double* %53, align 8, !dbg !430
  %55 = call double @fabs(double %54) #1, !dbg !431
  %56 = fmul double 0x3CC0000000000000, %55, !dbg !432
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !433
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !434
  %59 = load double, double* %58, align 8, !dbg !435
  %60 = fadd double %59, %56, !dbg !435
  store double %60, double* %58, align 8, !dbg !435
  store i32 0, i32* %3, align 4, !dbg !436
  br label %89, !dbg !436

; <label>:61:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !437, metadata !89), !dbg !439
  call void @llvm.dbg.declare(metadata i32* %9, metadata !440, metadata !89), !dbg !441
  %62 = load double, double* %4, align 8, !dbg !442
  %63 = call i32 @gsl_sf_bessel_K0_scaled_e(double %62, %struct.gsl_sf_result_struct* %8), !dbg !443
  store i32 %63, i32* %9, align 4, !dbg !441
  call void @llvm.dbg.declare(metadata i32* %10, metadata !444, metadata !89), !dbg !445
  %64 = load double, double* %4, align 8, !dbg !446
  %65 = fsub double -0.000000e+00, %64, !dbg !447
  %66 = load double, double* %4, align 8, !dbg !448
  %67 = call double @fabs(double %66) #1, !dbg !449
  %68 = fmul double 0x3CB0000000000000, %67, !dbg !450
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !451
  %70 = load double, double* %69, align 8, !dbg !451
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !452
  %72 = load double, double* %71, align 8, !dbg !452
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !453
  %74 = call i32 @gsl_sf_exp_mult_err_e(double %65, double %68, double %70, double %72, %struct.gsl_sf_result_struct* %73), !dbg !454
  store i32 %74, i32* %10, align 4, !dbg !445
  %75 = load i32, i32* %10, align 4, !dbg !456
  %76 = icmp ne i32 %75, 0, !dbg !456
  br i1 %76, label %77, label %79, !dbg !456

; <label>:77:                                     ; preds = %61
  %78 = load i32, i32* %10, align 4, !dbg !457
  br label %87, !dbg !457

; <label>:79:                                     ; preds = %61
  %80 = load i32, i32* %9, align 4, !dbg !458
  %81 = icmp ne i32 %80, 0, !dbg !458
  br i1 %81, label %82, label %84, !dbg !458

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %9, align 4, !dbg !460
  br label %85, !dbg !460

; <label>:84:                                     ; preds = %79
  br label %85, !dbg !462

; <label>:85:                                     ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ], !dbg !464
  br label %87, !dbg !464

; <label>:87:                                     ; preds = %85, %77
  %88 = phi i32 [ %78, %77 ], [ %86, %85 ], !dbg !466
  store i32 %88, i32* %3, align 4, !dbg !468
  br label %89, !dbg !468

; <label>:89:                                     ; preds = %19, %25, %87, %21
  %90 = load i32, i32* %3, align 4, !dbg !469
  ret i32 %90, !dbg !469
}

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_K0_scaled(double) #0 !dbg !470 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !473, metadata !89), !dbg !474
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !475, metadata !89), !dbg !476
  call void @llvm.dbg.declare(metadata i32* %5, metadata !477, metadata !89), !dbg !476
  %6 = load double, double* %3, align 8, !dbg !476
  %7 = call i32 @gsl_sf_bessel_K0_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !476
  store i32 %7, i32* %5, align 4, !dbg !476
  %8 = load i32, i32* %5, align 4, !dbg !478
  %9 = icmp ne i32 %8, 0, !dbg !478
  br i1 %9, label %10, label %16, !dbg !476

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !480, !llvm.loop !483

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !485
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 200, i32 %12), !dbg !485
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !485
  %14 = load double, double* %13, align 8, !dbg !485
  store double %14, double* %2, align 8, !dbg !485
  br label %19, !dbg !485
                                                  ; No predecessors!
  br label %16, !dbg !488

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !490
  %18 = load double, double* %17, align 8, !dbg !490
  store double %18, double* %2, align 8, !dbg !490
  br label %19, !dbg !490

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !492
  ret double %20, !dbg !492
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_K0(double) #0 !dbg !493 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !494, metadata !89), !dbg !495
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !496, metadata !89), !dbg !497
  call void @llvm.dbg.declare(metadata i32* %5, metadata !498, metadata !89), !dbg !497
  %6 = load double, double* %3, align 8, !dbg !497
  %7 = call i32 @gsl_sf_bessel_K0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !497
  store i32 %7, i32* %5, align 4, !dbg !497
  %8 = load i32, i32* %5, align 4, !dbg !499
  %9 = icmp ne i32 %8, 0, !dbg !499
  br i1 %9, label %10, label %16, !dbg !497

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !501, !llvm.loop !504

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !506
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 205, i32 %12), !dbg !506
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !506
  %14 = load double, double* %13, align 8, !dbg !506
  store double %14, double* %2, align 8, !dbg !506
  br label %19, !dbg !506
                                                  ; No predecessors!
  br label %16, !dbg !509

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !511
  %18 = load double, double* %17, align 8, !dbg !511
  store double %18, double* %2, align 8, !dbg !511
  br label %19, !dbg !511

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !513
  ret double %20, !dbg !513
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!72, !73, !74}
!llvm.ident = !{!75}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_K0.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !47, !51, !63, !67, !68}
!42 = distinct !DIGlobalVariable(name: "k0_poly", scope: !0, file: !1, line: 41, type: !43, isLocal: true, isDefinition: true, variable: [8 x double]* @k0_poly)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 512, align: 64, elements: !45)
!44 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!45 = !{!46}
!46 = !DISubrange(count: 8)
!47 = distinct !DIGlobalVariable(name: "i0_poly", scope: !0, file: !1, line: 52, type: !48, isLocal: true, isDefinition: true, variable: [7 x double]* @i0_poly)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 448, align: 64, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 7)
!51 = distinct !DIGlobalVariable(name: "ak0_cs", scope: !0, file: !1, line: 93, type: !52, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @ak0_cs)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !53, line: 29, baseType: !54)
!53 = !DIFile(filename: "./chebyshev.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !53, line: 22, size: 320, align: 64, elements: !55)
!55 = !{!56, !58, !60, !61, !62}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !54, file: !53, line: 23, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !54, file: !53, line: 24, baseType: !59, size: 32, align: 32, offset: 64)
!59 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !54, file: !53, line: 25, baseType: !44, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !54, file: !53, line: 26, baseType: !44, size: 64, align: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !54, file: !53, line: 27, baseType: !59, size: 32, align: 32, offset: 256)
!63 = distinct !DIGlobalVariable(name: "ak0_data", scope: !0, file: !1, line: 66, type: !64, isLocal: true, isDefinition: true, variable: [24 x double]* @ak0_data)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 1536, align: 64, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 24)
!67 = distinct !DIGlobalVariable(name: "ak02_cs", scope: !0, file: !1, line: 121, type: !52, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @ak02_cs)
!68 = distinct !DIGlobalVariable(name: "ak02_data", scope: !0, file: !1, line: 104, type: !69, isLocal: true, isDefinition: true, variable: [14 x double]* @ak02_data)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 896, align: 64, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 14)
!72 = !{i32 2, !"Dwarf Version", i32 4}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"PIC Level", i32 2}
!75 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!76 = distinct !DISubprogram(name: "gsl_sf_bessel_K0_scaled_e", scope: !1, file: !1, line: 131, type: !77, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!77 = !DISubroutineType(types: !78)
!78 = !{!59, !79, !80}
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !82, line: 41, baseType: !83)
!82 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !82, line: 37, size: 128, align: 64, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !82, line: 38, baseType: !44, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !83, file: !82, line: 39, baseType: !44, size: 64, align: 64, offset: 64)
!87 = !{}
!88 = !DILocalVariable(name: "x", arg: 1, scope: !76, file: !1, line: 131, type: !79)
!89 = !DIExpression()
!90 = !DILocation(line: 131, column: 44, scope: !76)
!91 = !DILocalVariable(name: "result", arg: 2, scope: !76, file: !1, line: 131, type: !80)
!92 = !DILocation(line: 131, column: 63, scope: !76)
!93 = !DILocation(line: 135, column: 6, scope: !94)
!94 = distinct !DILexicalBlock(scope: !76, file: !1, line: 135, column: 6)
!95 = !DILocation(line: 135, column: 8, scope: !94)
!96 = !DILocation(line: 135, column: 6, scope: !76)
!97 = !DILocation(line: 136, column: 5, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 135, column: 16)
!99 = distinct !{!99, !97}
!100 = !DILocation(line: 136, column: 5, scope: !101)
!101 = !DILexicalBlockFile(scope: !102, file: !1, discriminator: 1)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 136, column: 5)
!103 = distinct !{!103, !104}
!104 = !DILocation(line: 136, column: 5, scope: !102)
!105 = !DILocation(line: 136, column: 5, scope: !106)
!106 = !DILexicalBlockFile(scope: !107, file: !1, discriminator: 2)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 136, column: 5)
!108 = !DILocation(line: 136, column: 5, scope: !109)
!109 = !DILexicalBlockFile(scope: !102, file: !1, discriminator: 3)
!110 = !DILocation(line: 137, column: 3, scope: !98)
!111 = !DILocation(line: 138, column: 11, scope: !112)
!112 = distinct !DILexicalBlock(scope: !94, file: !1, line: 138, column: 11)
!113 = !DILocation(line: 138, column: 13, scope: !112)
!114 = !DILocation(line: 138, column: 11, scope: !94)
!115 = !DILocalVariable(name: "lx", scope: !116, file: !1, line: 139, type: !79)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 138, column: 20)
!117 = !DILocation(line: 139, column: 18, scope: !116)
!118 = !DILocation(line: 139, column: 27, scope: !116)
!119 = !DILocation(line: 139, column: 23, scope: !116)
!120 = !DILocalVariable(name: "ex", scope: !116, file: !1, line: 140, type: !79)
!121 = !DILocation(line: 140, column: 18, scope: !116)
!122 = !DILocation(line: 140, column: 27, scope: !116)
!123 = !DILocation(line: 140, column: 23, scope: !116)
!124 = !DILocalVariable(name: "x2", scope: !116, file: !1, line: 141, type: !79)
!125 = !DILocation(line: 141, column: 18, scope: !116)
!126 = !DILocation(line: 141, column: 23, scope: !116)
!127 = !DILocation(line: 141, column: 25, scope: !116)
!128 = !DILocation(line: 141, column: 24, scope: !116)
!129 = !DILocation(line: 142, column: 20, scope: !116)
!130 = !DILocation(line: 142, column: 50, scope: !116)
!131 = !DILocation(line: 142, column: 26, scope: !116)
!132 = !DILocation(line: 142, column: 54, scope: !116)
!133 = !DILocation(line: 142, column: 67, scope: !116)
!134 = !DILocation(line: 142, column: 66, scope: !116)
!135 = !DILocation(line: 142, column: 99, scope: !116)
!136 = !DILocation(line: 142, column: 98, scope: !116)
!137 = !DILocation(line: 142, column: 70, scope: !138)
!138 = !DILexicalBlockFile(scope: !116, file: !1, discriminator: 1)
!139 = !DILocation(line: 142, column: 69, scope: !116)
!140 = !DILocation(line: 142, column: 61, scope: !116)
!141 = !DILocation(line: 142, column: 56, scope: !116)
!142 = !DILocation(line: 142, column: 53, scope: !116)
!143 = !DILocation(line: 142, column: 23, scope: !116)
!144 = !DILocation(line: 142, column: 5, scope: !116)
!145 = !DILocation(line: 142, column: 13, scope: !116)
!146 = !DILocation(line: 142, column: 18, scope: !116)
!147 = !DILocation(line: 143, column: 20, scope: !116)
!148 = !DILocation(line: 143, column: 35, scope: !116)
!149 = !DILocation(line: 143, column: 30, scope: !116)
!150 = !DILocation(line: 143, column: 38, scope: !116)
!151 = !DILocation(line: 143, column: 29, scope: !116)
!152 = !DILocation(line: 143, column: 23, scope: !116)
!153 = !DILocation(line: 143, column: 44, scope: !116)
!154 = !DILocation(line: 143, column: 5, scope: !116)
!155 = !DILocation(line: 143, column: 13, scope: !116)
!156 = !DILocation(line: 143, column: 18, scope: !116)
!157 = !DILocation(line: 144, column: 49, scope: !116)
!158 = !DILocation(line: 144, column: 57, scope: !116)
!159 = !DILocation(line: 144, column: 44, scope: !116)
!160 = !DILocation(line: 144, column: 42, scope: !116)
!161 = !DILocation(line: 144, column: 5, scope: !116)
!162 = !DILocation(line: 144, column: 13, scope: !116)
!163 = !DILocation(line: 144, column: 17, scope: !116)
!164 = !DILocation(line: 145, column: 5, scope: !116)
!165 = !DILocation(line: 147, column: 11, scope: !166)
!166 = distinct !DILexicalBlock(scope: !112, file: !1, line: 147, column: 11)
!167 = !DILocation(line: 147, column: 13, scope: !166)
!168 = !DILocation(line: 147, column: 11, scope: !112)
!169 = !DILocalVariable(name: "sx", scope: !170, file: !1, line: 148, type: !79)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 147, column: 21)
!171 = !DILocation(line: 148, column: 18, scope: !170)
!172 = !DILocation(line: 148, column: 28, scope: !170)
!173 = !DILocation(line: 148, column: 23, scope: !170)
!174 = !DILocalVariable(name: "c", scope: !170, file: !1, line: 149, type: !81)
!175 = !DILocation(line: 149, column: 19, scope: !170)
!176 = !DILocation(line: 150, column: 32, scope: !170)
!177 = !DILocation(line: 150, column: 31, scope: !170)
!178 = !DILocation(line: 150, column: 33, scope: !170)
!179 = !DILocation(line: 150, column: 38, scope: !170)
!180 = !DILocation(line: 150, column: 5, scope: !170)
!181 = !DILocation(line: 151, column: 34, scope: !170)
!182 = !DILocation(line: 151, column: 30, scope: !170)
!183 = !DILocation(line: 151, column: 41, scope: !170)
!184 = !DILocation(line: 151, column: 39, scope: !170)
!185 = !DILocation(line: 151, column: 5, scope: !170)
!186 = !DILocation(line: 151, column: 13, scope: !170)
!187 = !DILocation(line: 151, column: 18, scope: !170)
!188 = !DILocation(line: 152, column: 22, scope: !170)
!189 = !DILocation(line: 152, column: 28, scope: !170)
!190 = !DILocation(line: 152, column: 26, scope: !170)
!191 = !DILocation(line: 152, column: 5, scope: !170)
!192 = !DILocation(line: 152, column: 13, scope: !170)
!193 = !DILocation(line: 152, column: 18, scope: !170)
!194 = !DILocation(line: 153, column: 49, scope: !170)
!195 = !DILocation(line: 153, column: 57, scope: !170)
!196 = !DILocation(line: 153, column: 44, scope: !170)
!197 = !DILocation(line: 153, column: 42, scope: !170)
!198 = !DILocation(line: 153, column: 5, scope: !170)
!199 = !DILocation(line: 153, column: 13, scope: !170)
!200 = !DILocation(line: 153, column: 17, scope: !170)
!201 = !DILocation(line: 154, column: 5, scope: !170)
!202 = !DILocalVariable(name: "sx", scope: !203, file: !1, line: 157, type: !79)
!203 = distinct !DILexicalBlock(scope: !166, file: !1, line: 156, column: 8)
!204 = !DILocation(line: 157, column: 18, scope: !203)
!205 = !DILocation(line: 157, column: 28, scope: !203)
!206 = !DILocation(line: 157, column: 23, scope: !203)
!207 = !DILocalVariable(name: "c", scope: !203, file: !1, line: 158, type: !81)
!208 = !DILocation(line: 158, column: 19, scope: !203)
!209 = !DILocation(line: 159, column: 32, scope: !203)
!210 = !DILocation(line: 159, column: 31, scope: !203)
!211 = !DILocation(line: 159, column: 33, scope: !203)
!212 = !DILocation(line: 159, column: 5, scope: !203)
!213 = !DILocation(line: 160, column: 30, scope: !203)
!214 = !DILocation(line: 160, column: 26, scope: !203)
!215 = !DILocation(line: 160, column: 37, scope: !203)
!216 = !DILocation(line: 160, column: 35, scope: !203)
!217 = !DILocation(line: 160, column: 5, scope: !203)
!218 = !DILocation(line: 160, column: 13, scope: !203)
!219 = !DILocation(line: 160, column: 18, scope: !203)
!220 = !DILocation(line: 161, column: 23, scope: !203)
!221 = !DILocation(line: 161, column: 27, scope: !203)
!222 = !DILocation(line: 161, column: 48, scope: !203)
!223 = !DILocation(line: 161, column: 46, scope: !203)
!224 = !DILocation(line: 161, column: 5, scope: !203)
!225 = !DILocation(line: 161, column: 13, scope: !203)
!226 = !DILocation(line: 161, column: 18, scope: !203)
!227 = !DILocation(line: 162, column: 49, scope: !203)
!228 = !DILocation(line: 162, column: 57, scope: !203)
!229 = !DILocation(line: 162, column: 44, scope: !203)
!230 = !DILocation(line: 162, column: 42, scope: !203)
!231 = !DILocation(line: 162, column: 5, scope: !203)
!232 = !DILocation(line: 162, column: 13, scope: !203)
!233 = !DILocation(line: 162, column: 17, scope: !203)
!234 = !DILocation(line: 163, column: 5, scope: !203)
!235 = !DILocation(line: 165, column: 1, scope: !76)
!236 = distinct !DISubprogram(name: "cheb_eval_e", scope: !237, file: !237, line: 3, type: !238, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!237 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!238 = !DISubroutineType(types: !239)
!239 = !{!59, !240, !79, !80}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!242 = !DILocalVariable(name: "cs", arg: 1, scope: !236, file: !237, line: 3, type: !240)
!243 = !DILocation(line: 3, column: 33, scope: !236)
!244 = !DILocalVariable(name: "x", arg: 2, scope: !236, file: !237, line: 4, type: !79)
!245 = !DILocation(line: 4, column: 26, scope: !236)
!246 = !DILocalVariable(name: "result", arg: 3, scope: !236, file: !237, line: 5, type: !80)
!247 = !DILocation(line: 5, column: 29, scope: !236)
!248 = !DILocalVariable(name: "j", scope: !236, file: !237, line: 7, type: !59)
!249 = !DILocation(line: 7, column: 7, scope: !236)
!250 = !DILocalVariable(name: "d", scope: !236, file: !237, line: 8, type: !44)
!251 = !DILocation(line: 8, column: 10, scope: !236)
!252 = !DILocalVariable(name: "dd", scope: !236, file: !237, line: 9, type: !44)
!253 = !DILocation(line: 9, column: 10, scope: !236)
!254 = !DILocalVariable(name: "y", scope: !236, file: !237, line: 11, type: !44)
!255 = !DILocation(line: 11, column: 10, scope: !236)
!256 = !DILocation(line: 11, column: 20, scope: !236)
!257 = !DILocation(line: 11, column: 19, scope: !236)
!258 = !DILocation(line: 11, column: 24, scope: !236)
!259 = !DILocation(line: 11, column: 28, scope: !236)
!260 = !DILocation(line: 11, column: 22, scope: !236)
!261 = !DILocation(line: 11, column: 32, scope: !236)
!262 = !DILocation(line: 11, column: 36, scope: !236)
!263 = !DILocation(line: 11, column: 30, scope: !236)
!264 = !DILocation(line: 11, column: 42, scope: !236)
!265 = !DILocation(line: 11, column: 46, scope: !236)
!266 = !DILocation(line: 11, column: 50, scope: !236)
!267 = !DILocation(line: 11, column: 54, scope: !236)
!268 = !DILocation(line: 11, column: 48, scope: !236)
!269 = !DILocation(line: 11, column: 39, scope: !236)
!270 = !DILocalVariable(name: "y2", scope: !236, file: !237, line: 12, type: !44)
!271 = !DILocation(line: 12, column: 10, scope: !236)
!272 = !DILocation(line: 12, column: 21, scope: !236)
!273 = !DILocation(line: 12, column: 19, scope: !236)
!274 = !DILocalVariable(name: "e", scope: !236, file: !237, line: 14, type: !44)
!275 = !DILocation(line: 14, column: 10, scope: !236)
!276 = !DILocation(line: 16, column: 11, scope: !277)
!277 = distinct !DILexicalBlock(scope: !236, file: !237, line: 16, column: 3)
!278 = !DILocation(line: 16, column: 15, scope: !277)
!279 = !DILocation(line: 16, column: 9, scope: !277)
!280 = !DILocation(line: 16, column: 7, scope: !277)
!281 = !DILocation(line: 16, column: 22, scope: !282)
!282 = !DILexicalBlockFile(scope: !283, file: !237, discriminator: 1)
!283 = distinct !DILexicalBlock(scope: !277, file: !237, line: 16, column: 3)
!284 = !DILocation(line: 16, column: 23, scope: !282)
!285 = !DILocation(line: 16, column: 3, scope: !282)
!286 = !DILocalVariable(name: "temp", scope: !287, file: !237, line: 17, type: !44)
!287 = distinct !DILexicalBlock(scope: !283, file: !237, line: 16, column: 33)
!288 = !DILocation(line: 17, column: 12, scope: !287)
!289 = !DILocation(line: 17, column: 19, scope: !287)
!290 = !DILocation(line: 18, column: 9, scope: !287)
!291 = !DILocation(line: 18, column: 12, scope: !287)
!292 = !DILocation(line: 18, column: 11, scope: !287)
!293 = !DILocation(line: 18, column: 16, scope: !287)
!294 = !DILocation(line: 18, column: 14, scope: !287)
!295 = !DILocation(line: 18, column: 27, scope: !287)
!296 = !DILocation(line: 18, column: 21, scope: !287)
!297 = !DILocation(line: 18, column: 25, scope: !287)
!298 = !DILocation(line: 18, column: 19, scope: !287)
!299 = !DILocation(line: 18, column: 7, scope: !287)
!300 = !DILocation(line: 19, column: 15, scope: !287)
!301 = !DILocation(line: 19, column: 18, scope: !287)
!302 = !DILocation(line: 19, column: 17, scope: !287)
!303 = !DILocation(line: 19, column: 10, scope: !287)
!304 = !DILocation(line: 19, column: 31, scope: !287)
!305 = !DILocation(line: 19, column: 26, scope: !306)
!306 = !DILexicalBlockFile(scope: !287, file: !237, discriminator: 1)
!307 = !DILocation(line: 19, column: 24, scope: !287)
!308 = !DILocation(line: 19, column: 48, scope: !287)
!309 = !DILocation(line: 19, column: 42, scope: !287)
!310 = !DILocation(line: 19, column: 46, scope: !287)
!311 = !DILocation(line: 19, column: 37, scope: !312)
!312 = !DILexicalBlockFile(scope: !287, file: !237, discriminator: 2)
!313 = !DILocation(line: 19, column: 35, scope: !287)
!314 = !DILocation(line: 19, column: 7, scope: !287)
!315 = !DILocation(line: 20, column: 10, scope: !287)
!316 = !DILocation(line: 20, column: 8, scope: !287)
!317 = !DILocation(line: 21, column: 3, scope: !287)
!318 = !DILocation(line: 16, column: 29, scope: !319)
!319 = !DILexicalBlockFile(scope: !283, file: !237, discriminator: 2)
!320 = !DILocation(line: 16, column: 3, scope: !319)
!321 = distinct !{!321, !322}
!322 = !DILocation(line: 16, column: 3, scope: !236)
!323 = !DILocalVariable(name: "temp", scope: !324, file: !237, line: 24, type: !44)
!324 = distinct !DILexicalBlock(scope: !236, file: !237, line: 23, column: 3)
!325 = !DILocation(line: 24, column: 12, scope: !324)
!326 = !DILocation(line: 24, column: 19, scope: !324)
!327 = !DILocation(line: 25, column: 9, scope: !324)
!328 = !DILocation(line: 25, column: 11, scope: !324)
!329 = !DILocation(line: 25, column: 10, scope: !324)
!330 = !DILocation(line: 25, column: 15, scope: !324)
!331 = !DILocation(line: 25, column: 13, scope: !324)
!332 = !DILocation(line: 25, column: 26, scope: !324)
!333 = !DILocation(line: 25, column: 30, scope: !324)
!334 = !DILocation(line: 25, column: 24, scope: !324)
!335 = !DILocation(line: 25, column: 18, scope: !324)
!336 = !DILocation(line: 25, column: 7, scope: !324)
!337 = !DILocation(line: 26, column: 15, scope: !324)
!338 = !DILocation(line: 26, column: 17, scope: !324)
!339 = !DILocation(line: 26, column: 16, scope: !324)
!340 = !DILocation(line: 26, column: 10, scope: !324)
!341 = !DILocation(line: 26, column: 30, scope: !324)
!342 = !DILocation(line: 26, column: 25, scope: !343)
!343 = !DILexicalBlockFile(scope: !324, file: !237, discriminator: 1)
!344 = !DILocation(line: 26, column: 23, scope: !324)
!345 = !DILocation(line: 26, column: 47, scope: !324)
!346 = !DILocation(line: 26, column: 51, scope: !324)
!347 = !DILocation(line: 26, column: 42, scope: !348)
!348 = !DILexicalBlockFile(scope: !324, file: !237, discriminator: 2)
!349 = !DILocation(line: 26, column: 40, scope: !324)
!350 = !DILocation(line: 26, column: 34, scope: !324)
!351 = !DILocation(line: 26, column: 7, scope: !324)
!352 = !DILocation(line: 29, column: 17, scope: !236)
!353 = !DILocation(line: 29, column: 3, scope: !236)
!354 = !DILocation(line: 29, column: 11, scope: !236)
!355 = !DILocation(line: 29, column: 15, scope: !236)
!356 = !DILocation(line: 30, column: 35, scope: !236)
!357 = !DILocation(line: 30, column: 33, scope: !236)
!358 = !DILocation(line: 30, column: 50, scope: !236)
!359 = !DILocation(line: 30, column: 54, scope: !236)
!360 = !DILocation(line: 30, column: 44, scope: !236)
!361 = !DILocation(line: 30, column: 48, scope: !236)
!362 = !DILocation(line: 30, column: 39, scope: !236)
!363 = !DILocation(line: 30, column: 37, scope: !236)
!364 = !DILocation(line: 30, column: 3, scope: !236)
!365 = !DILocation(line: 30, column: 11, scope: !236)
!366 = !DILocation(line: 30, column: 15, scope: !236)
!367 = !DILocation(line: 32, column: 3, scope: !236)
!368 = distinct !DISubprogram(name: "gsl_sf_bessel_K0_e", scope: !1, file: !1, line: 168, type: !77, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!369 = !DILocalVariable(name: "x", arg: 1, scope: !368, file: !1, line: 168, type: !79)
!370 = !DILocation(line: 168, column: 37, scope: !368)
!371 = !DILocalVariable(name: "result", arg: 2, scope: !368, file: !1, line: 168, type: !80)
!372 = !DILocation(line: 168, column: 56, scope: !368)
!373 = !DILocation(line: 172, column: 6, scope: !374)
!374 = distinct !DILexicalBlock(scope: !368, file: !1, line: 172, column: 6)
!375 = !DILocation(line: 172, column: 8, scope: !374)
!376 = !DILocation(line: 172, column: 6, scope: !368)
!377 = !DILocation(line: 173, column: 5, scope: !378)
!378 = distinct !DILexicalBlock(scope: !374, file: !1, line: 172, column: 16)
!379 = distinct !{!379, !377}
!380 = !DILocation(line: 173, column: 5, scope: !381)
!381 = !DILexicalBlockFile(scope: !382, file: !1, discriminator: 1)
!382 = distinct !DILexicalBlock(scope: !378, file: !1, line: 173, column: 5)
!383 = distinct !{!383, !384}
!384 = !DILocation(line: 173, column: 5, scope: !382)
!385 = !DILocation(line: 173, column: 5, scope: !386)
!386 = !DILexicalBlockFile(scope: !387, file: !1, discriminator: 2)
!387 = distinct !DILexicalBlock(scope: !382, file: !1, line: 173, column: 5)
!388 = !DILocation(line: 173, column: 5, scope: !389)
!389 = !DILexicalBlockFile(scope: !382, file: !1, discriminator: 3)
!390 = !DILocation(line: 174, column: 3, scope: !378)
!391 = !DILocation(line: 175, column: 11, scope: !392)
!392 = distinct !DILexicalBlock(scope: !374, file: !1, line: 175, column: 11)
!393 = !DILocation(line: 175, column: 13, scope: !392)
!394 = !DILocation(line: 175, column: 11, scope: !374)
!395 = !DILocalVariable(name: "lx", scope: !396, file: !1, line: 176, type: !79)
!396 = distinct !DILexicalBlock(scope: !392, file: !1, line: 175, column: 20)
!397 = !DILocation(line: 176, column: 18, scope: !396)
!398 = !DILocation(line: 176, column: 27, scope: !396)
!399 = !DILocation(line: 176, column: 23, scope: !396)
!400 = !DILocalVariable(name: "x2", scope: !396, file: !1, line: 177, type: !79)
!401 = !DILocation(line: 177, column: 18, scope: !396)
!402 = !DILocation(line: 177, column: 23, scope: !396)
!403 = !DILocation(line: 177, column: 25, scope: !396)
!404 = !DILocation(line: 177, column: 24, scope: !396)
!405 = !DILocation(line: 178, column: 44, scope: !396)
!406 = !DILocation(line: 178, column: 20, scope: !396)
!407 = !DILocation(line: 178, column: 48, scope: !396)
!408 = !DILocation(line: 178, column: 61, scope: !396)
!409 = !DILocation(line: 178, column: 60, scope: !396)
!410 = !DILocation(line: 178, column: 93, scope: !396)
!411 = !DILocation(line: 178, column: 92, scope: !396)
!412 = !DILocation(line: 178, column: 64, scope: !413)
!413 = !DILexicalBlockFile(scope: !396, file: !1, discriminator: 1)
!414 = !DILocation(line: 178, column: 63, scope: !396)
!415 = !DILocation(line: 178, column: 55, scope: !396)
!416 = !DILocation(line: 178, column: 50, scope: !396)
!417 = !DILocation(line: 178, column: 47, scope: !396)
!418 = !DILocation(line: 178, column: 5, scope: !396)
!419 = !DILocation(line: 178, column: 13, scope: !396)
!420 = !DILocation(line: 178, column: 18, scope: !396)
!421 = !DILocation(line: 179, column: 30, scope: !396)
!422 = !DILocation(line: 179, column: 25, scope: !396)
!423 = !DILocation(line: 179, column: 33, scope: !396)
!424 = !DILocation(line: 179, column: 24, scope: !396)
!425 = !DILocation(line: 179, column: 39, scope: !396)
!426 = !DILocation(line: 179, column: 5, scope: !396)
!427 = !DILocation(line: 179, column: 13, scope: !396)
!428 = !DILocation(line: 179, column: 18, scope: !396)
!429 = !DILocation(line: 180, column: 49, scope: !396)
!430 = !DILocation(line: 180, column: 57, scope: !396)
!431 = !DILocation(line: 180, column: 44, scope: !396)
!432 = !DILocation(line: 180, column: 42, scope: !396)
!433 = !DILocation(line: 180, column: 5, scope: !396)
!434 = !DILocation(line: 180, column: 13, scope: !396)
!435 = !DILocation(line: 180, column: 17, scope: !396)
!436 = !DILocation(line: 181, column: 5, scope: !396)
!437 = !DILocalVariable(name: "K0_scaled", scope: !438, file: !1, line: 184, type: !81)
!438 = distinct !DILexicalBlock(scope: !392, file: !1, line: 183, column: 8)
!439 = !DILocation(line: 184, column: 19, scope: !438)
!440 = !DILocalVariable(name: "stat_K0", scope: !438, file: !1, line: 185, type: !59)
!441 = !DILocation(line: 185, column: 9, scope: !438)
!442 = !DILocation(line: 185, column: 45, scope: !438)
!443 = !DILocation(line: 185, column: 19, scope: !438)
!444 = !DILocalVariable(name: "stat_e", scope: !438, file: !1, line: 186, type: !59)
!445 = !DILocation(line: 186, column: 9, scope: !438)
!446 = !DILocation(line: 186, column: 42, scope: !438)
!447 = !DILocation(line: 186, column: 41, scope: !438)
!448 = !DILocation(line: 186, column: 66, scope: !438)
!449 = !DILocation(line: 186, column: 61, scope: !438)
!450 = !DILocation(line: 186, column: 60, scope: !438)
!451 = !DILocation(line: 187, column: 54, scope: !438)
!452 = !DILocation(line: 187, column: 69, scope: !438)
!453 = !DILocation(line: 188, column: 44, scope: !438)
!454 = !DILocation(line: 186, column: 19, scope: !455)
!455 = !DILexicalBlockFile(scope: !438, file: !1, discriminator: 1)
!456 = !DILocation(line: 189, column: 12, scope: !438)
!457 = !DILocation(line: 189, column: 12, scope: !455)
!458 = !DILocation(line: 189, column: 12, scope: !459)
!459 = !DILexicalBlockFile(scope: !438, file: !1, discriminator: 2)
!460 = !DILocation(line: 189, column: 12, scope: !461)
!461 = !DILexicalBlockFile(scope: !438, file: !1, discriminator: 3)
!462 = !DILocation(line: 189, column: 12, scope: !463)
!463 = !DILexicalBlockFile(scope: !438, file: !1, discriminator: 4)
!464 = !DILocation(line: 189, column: 12, scope: !465)
!465 = !DILexicalBlockFile(scope: !438, file: !1, discriminator: 5)
!466 = !DILocation(line: 189, column: 12, scope: !467)
!467 = !DILexicalBlockFile(scope: !438, file: !1, discriminator: 6)
!468 = !DILocation(line: 189, column: 5, scope: !467)
!469 = !DILocation(line: 191, column: 1, scope: !368)
!470 = distinct !DISubprogram(name: "gsl_sf_bessel_K0_scaled", scope: !1, file: !1, line: 198, type: !471, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!471 = !DISubroutineType(types: !472)
!472 = !{!44, !79}
!473 = !DILocalVariable(name: "x", arg: 1, scope: !470, file: !1, line: 198, type: !79)
!474 = !DILocation(line: 198, column: 45, scope: !470)
!475 = !DILocalVariable(name: "result", scope: !470, file: !1, line: 200, type: !81)
!476 = !DILocation(line: 200, column: 3, scope: !470)
!477 = !DILocalVariable(name: "status", scope: !470, file: !1, line: 200, type: !59)
!478 = !DILocation(line: 200, column: 3, scope: !479)
!479 = distinct !DILexicalBlock(scope: !470, file: !1, line: 200, column: 3)
!480 = !DILocation(line: 200, column: 3, scope: !481)
!481 = !DILexicalBlockFile(scope: !482, file: !1, discriminator: 1)
!482 = distinct !DILexicalBlock(scope: !479, file: !1, line: 200, column: 3)
!483 = distinct !{!483, !484}
!484 = !DILocation(line: 200, column: 3, scope: !482)
!485 = !DILocation(line: 200, column: 3, scope: !486)
!486 = !DILexicalBlockFile(scope: !487, file: !1, discriminator: 2)
!487 = distinct !DILexicalBlock(scope: !482, file: !1, line: 200, column: 3)
!488 = !DILocation(line: 200, column: 3, scope: !489)
!489 = !DILexicalBlockFile(scope: !482, file: !1, discriminator: 3)
!490 = !DILocation(line: 200, column: 3, scope: !491)
!491 = !DILexicalBlockFile(scope: !470, file: !1, discriminator: 4)
!492 = !DILocation(line: 201, column: 1, scope: !470)
!493 = distinct !DISubprogram(name: "gsl_sf_bessel_K0", scope: !1, file: !1, line: 203, type: !471, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !87)
!494 = !DILocalVariable(name: "x", arg: 1, scope: !493, file: !1, line: 203, type: !79)
!495 = !DILocation(line: 203, column: 38, scope: !493)
!496 = !DILocalVariable(name: "result", scope: !493, file: !1, line: 205, type: !81)
!497 = !DILocation(line: 205, column: 3, scope: !493)
!498 = !DILocalVariable(name: "status", scope: !493, file: !1, line: 205, type: !59)
!499 = !DILocation(line: 205, column: 3, scope: !500)
!500 = distinct !DILexicalBlock(scope: !493, file: !1, line: 205, column: 3)
!501 = !DILocation(line: 205, column: 3, scope: !502)
!502 = !DILexicalBlockFile(scope: !503, file: !1, discriminator: 1)
!503 = distinct !DILexicalBlock(scope: !500, file: !1, line: 205, column: 3)
!504 = distinct !{!504, !505}
!505 = !DILocation(line: 205, column: 3, scope: !503)
!506 = !DILocation(line: 205, column: 3, scope: !507)
!507 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 2)
!508 = distinct !DILexicalBlock(scope: !503, file: !1, line: 205, column: 3)
!509 = !DILocation(line: 205, column: 3, scope: !510)
!510 = !DILexicalBlockFile(scope: !503, file: !1, discriminator: 3)
!511 = !DILocation(line: 205, column: 3, scope: !512)
!512 = !DILexicalBlockFile(scope: !493, file: !1, discriminator: 4)
!513 = !DILocation(line: 206, column: 1, scope: !493)
