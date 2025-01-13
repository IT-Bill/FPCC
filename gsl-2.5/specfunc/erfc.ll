; ModuleID = 'erfc.c'
source_filename = "erfc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@erfc_xlt1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([20 x double], [20 x double]* @erfc_xlt1_data, i32 0, i32 0), i32 19, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@erfc_x15_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([25 x double], [25 x double]* @erfc_x15_data, i32 0, i32 0), i32 24, double -1.000000e+00, double 1.000000e+00, i32 16 }, align 8
@erfc_x510_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([20 x double], [20 x double]* @erfc_x510_data, i32 0, i32 0), i32 19, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"erfc.c\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"gsl_sf_erfc_e(x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"gsl_sf_log_erfc_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"gsl_sf_erf_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"gsl_sf_erf_Z_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"gsl_sf_erf_Q_e(x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gsl_sf_hazard_e(x, &result)\00", align 1
@erfc_xlt1_data = internal global [20 x double] [double 0x3FF0F8C4631109E3, double 0xBFDB40B53A48A550, double 0x3FA95EF63F0A8AE4, double 0x3F72672F067D94C9, double 0xBF552ACB22C7C2DF, double 0xBEF341851CC64FD9, double 0x3EF72F6A74668F7E, double 0xBEA18F6F4CEFAE30, double 0xBE92AB2DA3D52CD5, double 0x3E4E503F8B1F83FD, double 0x3E2769E7FC58FB7D, double 0xBDEC5C14AA8B09E2, double 0xBDB78F46D533A139, double 0x3D839D4B4DFD3F8A, double 0x3D432CED20E8D32E, double 0xBD15F8A4A69AD905, double 0xBCC8B3CB61C1BA41, double 0x3CA4D3593CAA0DEF, double 0x3C46AEFBB5AD4103, double 0xBC3125E8E9559186], align 16
@erfc_x15_data = internal global [25 x double] [double 0x3FDC3078182C9217, double 0xBFC26D3E3FEE8E3B, double 0x3FA6EE41900A6C82, double 0xBF8B53A3D08875D6, double 0x3F6F54F0E91D1D2B, double 0xBF515881A3A7959E, double 0x3F329A5EEC13417F, double 0xBF135FC25807AC75, double 0x3EF3A289AD9E2CBC, double 0xBED366637AE0DD9B, double 0x3EB2B768687F5B5F, double 0xBE91A80027C4DCBB, double 0x3E704E72AAF45371, double 0xBE4D84FDB2423994, double 0x3E2A36797B47C292, double 0xBE06DAF077B2087A, double 0x3DE3952FE3EEF698, double 0xBDC0801C60271E8A, double 0x3D9B5D0819270339, double 0xBD765754815D58DE, double 0x3D51F89F818EFF27, double 0xBD2C7FF33A7EF88B, double 0x3D064943644A7314, double 0xBCE12CEB57FEF51A, double 0x3CB9479C0104005F], align 16
@erfc_x510_data = internal global [20 x double] [double 0x3FF1DE9E00858DCB, double 0x3F6E9B76C4E9CEC1, double 0xBF4E0932F096439F, double 0x3F2A187F3AD27F3B, double 0xBF051DCE0C57BB48, double 0x3EE048E2740EBE65, double 0xBEB83CB735D92F1E, double 0x3E91894E0607D396, double 0xBE68CB628154FEE7, double 0x3E412F70212F5859, double 0xBE176A258907C7A1, double 0x3DEF6A1BE28BC98F, double 0xBDC4C831AB780227, double 0x3D9B25A89D664688, double 0xBD7185AC0F3E6236, double 0x3D465EE3FB18244F, double 0xBD1C43E84FBBA814, double 0x3CF1AE75C867A5DA, double 0xBCC5E78A09AB991A, double 0x3C9A4DCDCED8EC98], align 16
@erfc8_sum.P = internal global [6 x double] [double 0x4007D4B780645377, double 0x401DA3930A99D8DF, double 0x4018A40E0D3E694C, double 0x40141381C5862508, double 0x3FF467E6DAD8642A, double 0x3FE20DD750429B62], align 16
@erfc8_sum.Q = internal global [7 x double] [double 0x400AF3DDB3BE0AF7, double 0x402337CA4DA961C6, double 0x403114D94D02EDA4, double 0x402819103A226D88, double 0x4022CAC4F877AA8B, double 0x4002158FFA22F7A8, double 1.000000e+00], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_erfc_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !82 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !92, metadata !93), !dbg !94
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !95, metadata !93), !dbg !96
  call void @llvm.dbg.declare(metadata double* %5, metadata !97, metadata !93), !dbg !99
  %16 = load double, double* %3, align 8, !dbg !100
  %17 = call double @fabs(double %16) #1, !dbg !101
  store double %17, double* %5, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata double* %6, metadata !102, metadata !93), !dbg !103
  call void @llvm.dbg.declare(metadata double* %7, metadata !104, metadata !93), !dbg !105
  %18 = load double, double* %5, align 8, !dbg !106
  %19 = fcmp ole double %18, 1.000000e+00, !dbg !108
  br i1 %19, label %20, label %30, !dbg !109

; <label>:20:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %8, metadata !110, metadata !93), !dbg !112
  %21 = load double, double* %5, align 8, !dbg !113
  %22 = fmul double 2.000000e+00, %21, !dbg !114
  %23 = fsub double %22, 1.000000e+00, !dbg !115
  store double %23, double* %8, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !116, metadata !93), !dbg !117
  %24 = load double, double* %8, align 8, !dbg !118
  %25 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @erfc_xlt1_cs, double %24, %struct.gsl_sf_result_struct* %9), !dbg !119
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !120
  %27 = load double, double* %26, align 8, !dbg !120
  store double %27, double* %6, align 8, !dbg !121
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !122
  %29 = load double, double* %28, align 8, !dbg !122
  store double %29, double* %7, align 8, !dbg !123
  br label %101, !dbg !124

; <label>:30:                                     ; preds = %2
  %31 = load double, double* %5, align 8, !dbg !125
  %32 = fcmp ole double %31, 5.000000e+00, !dbg !127
  br i1 %32, label %33, label %57, !dbg !128

; <label>:33:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata double* %10, metadata !129, metadata !93), !dbg !131
  %34 = load double, double* %3, align 8, !dbg !132
  %35 = fsub double -0.000000e+00, %34, !dbg !133
  %36 = load double, double* %3, align 8, !dbg !134
  %37 = fmul double %35, %36, !dbg !135
  %38 = call double @exp(double %37) #6, !dbg !136
  store double %38, double* %10, align 8, !dbg !131
  call void @llvm.dbg.declare(metadata double* %11, metadata !137, metadata !93), !dbg !138
  %39 = load double, double* %5, align 8, !dbg !139
  %40 = fsub double %39, 3.000000e+00, !dbg !140
  %41 = fmul double 5.000000e-01, %40, !dbg !141
  store double %41, double* %11, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !142, metadata !93), !dbg !143
  %42 = load double, double* %11, align 8, !dbg !144
  %43 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @erfc_x15_cs, double %42, %struct.gsl_sf_result_struct* %12), !dbg !145
  %44 = load double, double* %10, align 8, !dbg !146
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !147
  %46 = load double, double* %45, align 8, !dbg !147
  %47 = fmul double %44, %46, !dbg !148
  store double %47, double* %6, align 8, !dbg !149
  %48 = load double, double* %10, align 8, !dbg !150
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !151
  %50 = load double, double* %49, align 8, !dbg !151
  %51 = load double, double* %3, align 8, !dbg !152
  %52 = call double @fabs(double %51) #1, !dbg !153
  %53 = fmul double 2.000000e+00, %52, !dbg !154
  %54 = fmul double %53, 0x3CB0000000000000, !dbg !155
  %55 = fadd double %50, %54, !dbg !156
  %56 = fmul double %48, %55, !dbg !157
  store double %56, double* %7, align 8, !dbg !158
  br label %100, !dbg !159

; <label>:57:                                     ; preds = %30
  %58 = load double, double* %5, align 8, !dbg !160
  %59 = fcmp olt double %58, 1.000000e+01, !dbg !162
  br i1 %59, label %60, label %88, !dbg !163

; <label>:60:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata double* %13, metadata !164, metadata !93), !dbg !166
  %61 = load double, double* %3, align 8, !dbg !167
  %62 = fsub double -0.000000e+00, %61, !dbg !168
  %63 = load double, double* %3, align 8, !dbg !169
  %64 = fmul double %62, %63, !dbg !170
  %65 = call double @exp(double %64) #6, !dbg !171
  %66 = load double, double* %5, align 8, !dbg !172
  %67 = fdiv double %65, %66, !dbg !173
  store double %67, double* %13, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata double* %14, metadata !174, metadata !93), !dbg !175
  %68 = load double, double* %5, align 8, !dbg !176
  %69 = fmul double 2.000000e+00, %68, !dbg !177
  %70 = fsub double %69, 1.500000e+01, !dbg !178
  %71 = fdiv double %70, 5.000000e+00, !dbg !179
  store double %71, double* %14, align 8, !dbg !175
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !180, metadata !93), !dbg !181
  %72 = load double, double* %14, align 8, !dbg !182
  %73 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @erfc_x510_cs, double %72, %struct.gsl_sf_result_struct* %15), !dbg !183
  %74 = load double, double* %13, align 8, !dbg !184
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !185
  %76 = load double, double* %75, align 8, !dbg !185
  %77 = fmul double %74, %76, !dbg !186
  store double %77, double* %6, align 8, !dbg !187
  %78 = load double, double* %13, align 8, !dbg !188
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !189
  %80 = load double, double* %79, align 8, !dbg !189
  %81 = load double, double* %3, align 8, !dbg !190
  %82 = call double @fabs(double %81) #1, !dbg !191
  %83 = fmul double 2.000000e+00, %82, !dbg !192
  %84 = fmul double %83, 0x3CB0000000000000, !dbg !193
  %85 = fadd double %80, %84, !dbg !194
  %86 = fadd double %85, 0x3CB0000000000000, !dbg !195
  %87 = fmul double %78, %86, !dbg !196
  store double %87, double* %7, align 8, !dbg !197
  br label %99, !dbg !198

; <label>:88:                                     ; preds = %57
  %89 = load double, double* %5, align 8, !dbg !199
  %90 = call double @erfc8(double %89), !dbg !201
  store double %90, double* %6, align 8, !dbg !202
  %91 = load double, double* %3, align 8, !dbg !203
  %92 = load double, double* %3, align 8, !dbg !204
  %93 = fmul double %91, %92, !dbg !205
  %94 = fadd double %93, 1.000000e+00, !dbg !206
  %95 = fmul double %94, 0x3CB0000000000000, !dbg !207
  %96 = load double, double* %6, align 8, !dbg !208
  %97 = call double @fabs(double %96) #1, !dbg !209
  %98 = fmul double %95, %97, !dbg !210
  store double %98, double* %7, align 8, !dbg !211
  br label %99

; <label>:99:                                     ; preds = %88, %60
  br label %100

; <label>:100:                                    ; preds = %99, %33
  br label %101

; <label>:101:                                    ; preds = %100, %20
  %102 = load double, double* %3, align 8, !dbg !212
  %103 = fcmp olt double %102, 0.000000e+00, !dbg !214
  br i1 %103, label %104, label %121, !dbg !215

; <label>:104:                                    ; preds = %101
  %105 = load double, double* %6, align 8, !dbg !216
  %106 = fsub double 2.000000e+00, %105, !dbg !218
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !219
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 0, !dbg !220
  store double %106, double* %108, align 8, !dbg !221
  %109 = load double, double* %7, align 8, !dbg !222
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !223
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 1, !dbg !224
  store double %109, double* %111, align 8, !dbg !225
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !226
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !227
  %114 = load double, double* %113, align 8, !dbg !227
  %115 = call double @fabs(double %114) #1, !dbg !228
  %116 = fmul double 0x3CC0000000000000, %115, !dbg !229
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !230
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 1, !dbg !231
  %119 = load double, double* %118, align 8, !dbg !232
  %120 = fadd double %119, %116, !dbg !232
  store double %120, double* %118, align 8, !dbg !232
  br label %137, !dbg !233

; <label>:121:                                    ; preds = %101
  %122 = load double, double* %6, align 8, !dbg !234
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !236
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 0, !dbg !237
  store double %122, double* %124, align 8, !dbg !238
  %125 = load double, double* %7, align 8, !dbg !239
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !240
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 1, !dbg !241
  store double %125, double* %127, align 8, !dbg !242
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !243
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 0, !dbg !244
  %130 = load double, double* %129, align 8, !dbg !244
  %131 = call double @fabs(double %130) #1, !dbg !245
  %132 = fmul double 0x3CC0000000000000, %131, !dbg !246
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !247
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 1, !dbg !248
  %135 = load double, double* %134, align 8, !dbg !249
  %136 = fadd double %135, %132, !dbg !249
  store double %136, double* %134, align 8, !dbg !249
  br label %137

; <label>:137:                                    ; preds = %121, %104
  ret i32 0, !dbg !250
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #3 !dbg !251 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !257, metadata !93), !dbg !258
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !259, metadata !93), !dbg !260
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !261, metadata !93), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %7, metadata !263, metadata !93), !dbg !264
  call void @llvm.dbg.declare(metadata double* %8, metadata !265, metadata !93), !dbg !266
  store double 0.000000e+00, double* %8, align 8, !dbg !266
  call void @llvm.dbg.declare(metadata double* %9, metadata !267, metadata !93), !dbg !268
  store double 0.000000e+00, double* %9, align 8, !dbg !268
  call void @llvm.dbg.declare(metadata double* %10, metadata !269, metadata !93), !dbg !270
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
  call void @llvm.dbg.declare(metadata double* %11, metadata !285, metadata !93), !dbg !286
  %33 = load double, double* %10, align 8, !dbg !287
  %34 = fmul double 2.000000e+00, %33, !dbg !288
  store double %34, double* %11, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata double* %12, metadata !289, metadata !93), !dbg !290
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
  call void @llvm.dbg.declare(metadata double* %13, metadata !301, metadata !93), !dbg !303
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
  call void @llvm.dbg.declare(metadata double* %14, metadata !338, metadata !93), !dbg !340
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

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: inlinehint nounwind uwtable
define internal double @erfc8(double) #3 !dbg !383 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !384, metadata !93), !dbg !385
  call void @llvm.dbg.declare(metadata double* %3, metadata !386, metadata !93), !dbg !387
  %4 = load double, double* %2, align 8, !dbg !388
  %5 = call double @erfc8_sum(double %4), !dbg !389
  store double %5, double* %3, align 8, !dbg !390
  %6 = load double, double* %2, align 8, !dbg !391
  %7 = fsub double -0.000000e+00, %6, !dbg !392
  %8 = load double, double* %2, align 8, !dbg !393
  %9 = fmul double %7, %8, !dbg !394
  %10 = call double @exp(double %9) #6, !dbg !395
  %11 = load double, double* %3, align 8, !dbg !396
  %12 = fmul double %11, %10, !dbg !396
  store double %12, double* %3, align 8, !dbg !396
  %13 = load double, double* %3, align 8, !dbg !397
  ret double %13, !dbg !398
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_log_erfc_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !399 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !400, metadata !93), !dbg !401
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !402, metadata !93), !dbg !403
  %21 = load double, double* %4, align 8, !dbg !404
  %22 = load double, double* %4, align 8, !dbg !406
  %23 = fmul double %21, %22, !dbg !407
  %24 = fcmp olt double %23, 0x3F9932CBB7F0CF30, !dbg !408
  br i1 %24, label %25, label %81, !dbg !409

; <label>:25:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !410, metadata !93), !dbg !412
  %26 = load double, double* %4, align 8, !dbg !413
  %27 = fdiv double %26, 0x3FFC5BF891B4EF6B, !dbg !414
  store double %27, double* %6, align 8, !dbg !412
  call void @llvm.dbg.declare(metadata double* %7, metadata !415, metadata !93), !dbg !416
  store double 0x3FD2500C749F87C0, double* %7, align 8, !dbg !416
  call void @llvm.dbg.declare(metadata double* %8, metadata !417, metadata !93), !dbg !418
  store double 0xBFB82A4705AE6CA0, double* %8, align 8, !dbg !418
  call void @llvm.dbg.declare(metadata double* %9, metadata !419, metadata !93), !dbg !420
  store double 0xBF5DFA96DCBD2883, double* %9, align 8, !dbg !420
  call void @llvm.dbg.declare(metadata double* %10, metadata !421, metadata !93), !dbg !422
  store double 0x3F9AED7943500FA5, double* %10, align 8, !dbg !422
  call void @llvm.dbg.declare(metadata double* %11, metadata !423, metadata !93), !dbg !424
  store double 0xBF909ADCD0CDCABE, double* %11, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata double* %12, metadata !425, metadata !93), !dbg !426
  store double 0x3F54A491DCF7AFED, double* %12, align 8, !dbg !426
  call void @llvm.dbg.declare(metadata double* %13, metadata !427, metadata !93), !dbg !428
  store double 0x3F76D032987DFC5C, double* %13, align 8, !dbg !428
  call void @llvm.dbg.declare(metadata double* %14, metadata !429, metadata !93), !dbg !430
  store double 0xBF72A9A996F42C40, double* %14, align 8, !dbg !430
  call void @llvm.dbg.declare(metadata double* %15, metadata !431, metadata !93), !dbg !432
  store double 0x3F4F00F4C5E56661, double* %15, align 8, !dbg !432
  call void @llvm.dbg.declare(metadata double* %16, metadata !433, metadata !93), !dbg !434
  store double 0x3F55A095517B6A89, double* %16, align 8, !dbg !434
  call void @llvm.dbg.declare(metadata double* %17, metadata !435, metadata !93), !dbg !436
  store double -1.429060e-03, double* %17, align 8, !dbg !436
  call void @llvm.dbg.declare(metadata double* %18, metadata !437, metadata !93), !dbg !438
  store double 4.820400e-04, double* %18, align 8, !dbg !438
  call void @llvm.dbg.declare(metadata double* %19, metadata !439, metadata !93), !dbg !440
  %28 = load double, double* %6, align 8, !dbg !441
  %29 = load double, double* %6, align 8, !dbg !442
  %30 = load double, double* %6, align 8, !dbg !443
  %31 = load double, double* %6, align 8, !dbg !444
  %32 = load double, double* %6, align 8, !dbg !445
  %33 = load double, double* %6, align 8, !dbg !446
  %34 = fmul double 4.820400e-04, %33, !dbg !447
  %35 = fadd double -1.429060e-03, %34, !dbg !448
  %36 = fmul double %32, %35, !dbg !449
  %37 = fadd double 0x3F55A095517B6A89, %36, !dbg !450
  %38 = fmul double %31, %37, !dbg !451
  %39 = fadd double 0x3F4F00F4C5E56661, %38, !dbg !452
  %40 = fmul double %30, %39, !dbg !453
  %41 = fadd double 0xBF72A9A996F42C40, %40, !dbg !454
  %42 = fmul double %29, %41, !dbg !455
  %43 = fadd double 0x3F76D032987DFC5C, %42, !dbg !456
  %44 = fmul double %28, %43, !dbg !457
  %45 = fadd double 0x3F54A491DCF7AFED, %44, !dbg !458
  store double %45, double* %19, align 8, !dbg !440
  %46 = load double, double* %6, align 8, !dbg !459
  %47 = load double, double* %6, align 8, !dbg !460
  %48 = load double, double* %6, align 8, !dbg !461
  %49 = load double, double* %6, align 8, !dbg !462
  %50 = load double, double* %6, align 8, !dbg !463
  %51 = load double, double* %6, align 8, !dbg !464
  %52 = load double, double* %6, align 8, !dbg !465
  %53 = load double, double* %6, align 8, !dbg !466
  %54 = load double, double* %19, align 8, !dbg !467
  %55 = fmul double %53, %54, !dbg !468
  %56 = fadd double 0xBF909ADCD0CDCABE, %55, !dbg !469
  %57 = fmul double %52, %56, !dbg !470
  %58 = fadd double 0x3F9AED7943500FA5, %57, !dbg !471
  %59 = fmul double %51, %58, !dbg !472
  %60 = fadd double 0xBF5DFA96DCBD2883, %59, !dbg !473
  %61 = fmul double %50, %60, !dbg !474
  %62 = fadd double 0xBFB82A4705AE6CA0, %61, !dbg !475
  %63 = fmul double %49, %62, !dbg !476
  %64 = fadd double 0x3FD2500C749F87C0, %63, !dbg !477
  %65 = fmul double %48, %64, !dbg !478
  %66 = fadd double 1.000000e+00, %65, !dbg !479
  %67 = fmul double %47, %66, !dbg !480
  %68 = fadd double 1.000000e+00, %67, !dbg !481
  %69 = fmul double %46, %68, !dbg !482
  store double %69, double* %19, align 8, !dbg !483
  %70 = load double, double* %19, align 8, !dbg !484
  %71 = fmul double -2.000000e+00, %70, !dbg !485
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !486
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !487
  store double %71, double* %73, align 8, !dbg !488
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !489
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !490
  %76 = load double, double* %75, align 8, !dbg !490
  %77 = call double @fabs(double %76) #1, !dbg !491
  %78 = fmul double 0x3CC0000000000000, %77, !dbg !492
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !493
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !494
  store double %78, double* %80, align 8, !dbg !495
  store i32 0, i32* %3, align 4, !dbg !496
  br label %121, !dbg !496

; <label>:81:                                     ; preds = %2
  %82 = load double, double* %4, align 8, !dbg !497
  %83 = fcmp ogt double %82, 8.000000e+00, !dbg !499
  br i1 %83, label %84, label %96, !dbg !500

; <label>:84:                                     ; preds = %81
  %85 = load double, double* %4, align 8, !dbg !501
  %86 = call double @log_erfc8(double %85), !dbg !503
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !504
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !505
  store double %86, double* %88, align 8, !dbg !506
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !507
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 0, !dbg !508
  %91 = load double, double* %90, align 8, !dbg !508
  %92 = call double @fabs(double %91) #1, !dbg !509
  %93 = fmul double 0x3CC0000000000000, %92, !dbg !510
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !511
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 1, !dbg !512
  store double %93, double* %95, align 8, !dbg !513
  store i32 0, i32* %3, align 4, !dbg !514
  br label %121, !dbg !514

; <label>:96:                                     ; preds = %81
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !515, metadata !93), !dbg !517
  %97 = load double, double* %4, align 8, !dbg !518
  %98 = call i32 @gsl_sf_erfc_e(double %97, %struct.gsl_sf_result_struct* %20), !dbg !519
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !520
  %100 = load double, double* %99, align 8, !dbg !520
  %101 = call double @log(double %100) #6, !dbg !521
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !522
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !523
  store double %101, double* %103, align 8, !dbg !524
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !525
  %105 = load double, double* %104, align 8, !dbg !525
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !526
  %107 = load double, double* %106, align 8, !dbg !526
  %108 = fdiv double %105, %107, !dbg !527
  %109 = call double @fabs(double %108) #1, !dbg !528
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !529
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 1, !dbg !530
  store double %109, double* %111, align 8, !dbg !531
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !532
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !533
  %114 = load double, double* %113, align 8, !dbg !533
  %115 = call double @fabs(double %114) #1, !dbg !534
  %116 = fmul double 0x3CC0000000000000, %115, !dbg !535
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !536
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 1, !dbg !537
  %119 = load double, double* %118, align 8, !dbg !538
  %120 = fadd double %119, %116, !dbg !538
  store double %120, double* %118, align 8, !dbg !538
  store i32 0, i32* %3, align 4, !dbg !539
  br label %121, !dbg !539

; <label>:121:                                    ; preds = %96, %84, %25
  %122 = load i32, i32* %3, align 4, !dbg !540
  ret i32 %122, !dbg !540
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @log_erfc8(double) #3 !dbg !541 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !542, metadata !93), !dbg !543
  call void @llvm.dbg.declare(metadata double* %3, metadata !544, metadata !93), !dbg !545
  %4 = load double, double* %2, align 8, !dbg !546
  %5 = call double @erfc8_sum(double %4), !dbg !547
  store double %5, double* %3, align 8, !dbg !548
  %6 = load double, double* %3, align 8, !dbg !549
  %7 = call double @log(double %6) #6, !dbg !550
  %8 = load double, double* %2, align 8, !dbg !551
  %9 = load double, double* %2, align 8, !dbg !552
  %10 = fmul double %8, %9, !dbg !553
  %11 = fsub double %7, %10, !dbg !554
  store double %11, double* %3, align 8, !dbg !555
  %12 = load double, double* %3, align 8, !dbg !556
  ret double %12, !dbg !557
}

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_erf_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !558 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !559, metadata !93), !dbg !560
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !561, metadata !93), !dbg !562
  %7 = load double, double* %4, align 8, !dbg !563
  %8 = call double @fabs(double %7) #1, !dbg !565
  %9 = fcmp olt double %8, 1.000000e+00, !dbg !566
  br i1 %9, label %10, label %14, !dbg !567

; <label>:10:                                     ; preds = %2
  %11 = load double, double* %4, align 8, !dbg !568
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !570
  %13 = call i32 @erfseries(double %11, %struct.gsl_sf_result_struct* %12), !dbg !571
  store i32 %13, i32* %3, align 4, !dbg !572
  br label %35, !dbg !572

; <label>:14:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !573, metadata !93), !dbg !575
  %15 = load double, double* %4, align 8, !dbg !576
  %16 = call i32 @gsl_sf_erfc_e(double %15, %struct.gsl_sf_result_struct* %6), !dbg !577
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !578
  %18 = load double, double* %17, align 8, !dbg !578
  %19 = fsub double 1.000000e+00, %18, !dbg !579
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !580
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !581
  store double %19, double* %21, align 8, !dbg !582
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !583
  %23 = load double, double* %22, align 8, !dbg !583
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !584
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !585
  store double %23, double* %25, align 8, !dbg !586
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !587
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !588
  %28 = load double, double* %27, align 8, !dbg !588
  %29 = call double @fabs(double %28) #1, !dbg !589
  %30 = fmul double 0x3CC0000000000000, %29, !dbg !590
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !591
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !592
  %33 = load double, double* %32, align 8, !dbg !593
  %34 = fadd double %33, %30, !dbg !593
  store double %34, double* %32, align 8, !dbg !593
  store i32 0, i32* %3, align 4, !dbg !594
  br label %35, !dbg !594

; <label>:35:                                     ; preds = %14, %10
  %36 = load i32, i32* %3, align 4, !dbg !595
  ret i32 %36, !dbg !595
}

; Function Attrs: nounwind uwtable
define internal i32 @erfseries(double, %struct.gsl_sf_result_struct*) #0 !dbg !596 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !597, metadata !93), !dbg !598
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !599, metadata !93), !dbg !600
  call void @llvm.dbg.declare(metadata double* %5, metadata !601, metadata !93), !dbg !602
  %9 = load double, double* %3, align 8, !dbg !603
  store double %9, double* %5, align 8, !dbg !602
  call void @llvm.dbg.declare(metadata double* %6, metadata !604, metadata !93), !dbg !605
  %10 = load double, double* %5, align 8, !dbg !606
  store double %10, double* %6, align 8, !dbg !605
  call void @llvm.dbg.declare(metadata double* %7, metadata !607, metadata !93), !dbg !608
  call void @llvm.dbg.declare(metadata i32* %8, metadata !609, metadata !93), !dbg !610
  store i32 1, i32* %8, align 4, !dbg !611
  br label %11, !dbg !613

; <label>:11:                                     ; preds = %33, %2
  %12 = load i32, i32* %8, align 4, !dbg !614
  %13 = icmp slt i32 %12, 30, !dbg !617
  br i1 %13, label %14, label %36, !dbg !618

; <label>:14:                                     ; preds = %11
  %15 = load double, double* %3, align 8, !dbg !619
  %16 = fsub double -0.000000e+00, %15, !dbg !621
  %17 = load double, double* %3, align 8, !dbg !622
  %18 = fmul double %16, %17, !dbg !623
  %19 = load i32, i32* %8, align 4, !dbg !624
  %20 = sitofp i32 %19 to double, !dbg !624
  %21 = fdiv double %18, %20, !dbg !625
  %22 = load double, double* %5, align 8, !dbg !626
  %23 = fmul double %22, %21, !dbg !626
  store double %23, double* %5, align 8, !dbg !626
  %24 = load double, double* %5, align 8, !dbg !627
  %25 = load i32, i32* %8, align 4, !dbg !628
  %26 = sitofp i32 %25 to double, !dbg !628
  %27 = fmul double 2.000000e+00, %26, !dbg !629
  %28 = fadd double %27, 1.000000e+00, !dbg !630
  %29 = fdiv double %24, %28, !dbg !631
  store double %29, double* %7, align 8, !dbg !632
  %30 = load double, double* %7, align 8, !dbg !633
  %31 = load double, double* %6, align 8, !dbg !634
  %32 = fadd double %31, %30, !dbg !634
  store double %32, double* %6, align 8, !dbg !634
  br label %33, !dbg !635

; <label>:33:                                     ; preds = %14
  %34 = load i32, i32* %8, align 4, !dbg !636
  %35 = add nsw i32 %34, 1, !dbg !636
  store i32 %35, i32* %8, align 4, !dbg !636
  br label %11, !dbg !638, !llvm.loop !639

; <label>:36:                                     ; preds = %11
  %37 = load double, double* %6, align 8, !dbg !641
  %38 = fmul double 0x3FF20DD750429B6D, %37, !dbg !642
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !643
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !644
  store double %38, double* %40, align 8, !dbg !645
  %41 = load double, double* %7, align 8, !dbg !646
  %42 = call double @fabs(double %41) #1, !dbg !647
  %43 = fadd double %42, 0x3CB0000000000000, !dbg !648
  %44 = fmul double 0x3FF20DD750429B6D, %43, !dbg !649
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !650
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !651
  store double %44, double* %46, align 8, !dbg !652
  ret i32 0, !dbg !653
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_erf_Z_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !654 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !655, metadata !93), !dbg !656
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !657, metadata !93), !dbg !658
  call void @llvm.dbg.declare(metadata double* %6, metadata !659, metadata !93), !dbg !661
  %7 = load double, double* %4, align 8, !dbg !662
  %8 = fsub double -0.000000e+00, %7, !dbg !663
  %9 = load double, double* %4, align 8, !dbg !664
  %10 = fmul double %8, %9, !dbg !665
  %11 = fdiv double %10, 2.000000e+00, !dbg !666
  %12 = call double @exp(double %11) #6, !dbg !667
  store double %12, double* %6, align 8, !dbg !661
  %13 = load double, double* %6, align 8, !dbg !668
  %14 = fdiv double %13, 0x40040D931FF62706, !dbg !669
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !670
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !671
  store double %14, double* %16, align 8, !dbg !672
  %17 = load double, double* %4, align 8, !dbg !673
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !674
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !675
  %20 = load double, double* %19, align 8, !dbg !675
  %21 = fmul double %17, %20, !dbg !676
  %22 = call double @fabs(double %21) #1, !dbg !677
  %23 = fmul double %22, 0x3CB0000000000000, !dbg !678
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !679
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !680
  store double %23, double* %25, align 8, !dbg !681
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !682
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !683
  %28 = load double, double* %27, align 8, !dbg !683
  %29 = call double @fabs(double %28) #1, !dbg !684
  %30 = fmul double 0x3CC0000000000000, %29, !dbg !685
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !686
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !687
  %33 = load double, double* %32, align 8, !dbg !688
  %34 = fadd double %33, %30, !dbg !688
  store double %34, double* %32, align 8, !dbg !688
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !689
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !689
  %37 = load double, double* %36, align 8, !dbg !689
  %38 = call double @fabs(double %37) #1, !dbg !689
  %39 = fcmp olt double %38, 0x10000000000000, !dbg !689
  br i1 %39, label %40, label %43, !dbg !691

; <label>:40:                                     ; preds = %2
  br label %41, !dbg !692, !llvm.loop !694

; <label>:41:                                     ; preds = %40
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 384, i32 15), !dbg !695
  store i32 15, i32* %3, align 4, !dbg !695
  br label %44, !dbg !695
                                                  ; No predecessors!
  br label %43, !dbg !698

; <label>:43:                                     ; preds = %42, %2
  store i32 0, i32* %3, align 4, !dbg !700
  br label %44, !dbg !700

; <label>:44:                                     ; preds = %43, %41
  %45 = load i32, i32* %3, align 4, !dbg !701
  ret i32 %45, !dbg !701
}

declare void @gsl_error(i8*, i8*, i32, i32) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_erf_Q_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !702 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca %struct.gsl_sf_result_struct, align 8
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !703, metadata !93), !dbg !704
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !705, metadata !93), !dbg !706
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %5, metadata !707, metadata !93), !dbg !709
  call void @llvm.dbg.declare(metadata i32* %6, metadata !710, metadata !93), !dbg !711
  %7 = load double, double* %3, align 8, !dbg !712
  %8 = fdiv double %7, 0x3FF6A09E667F3BCD, !dbg !713
  %9 = call i32 @gsl_sf_erfc_e(double %8, %struct.gsl_sf_result_struct* %5), !dbg !714
  store i32 %9, i32* %6, align 4, !dbg !711
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %5, i32 0, i32 0, !dbg !715
  %11 = load double, double* %10, align 8, !dbg !715
  %12 = fmul double 5.000000e-01, %11, !dbg !716
  %13 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !717
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !718
  store double %12, double* %14, align 8, !dbg !719
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %5, i32 0, i32 1, !dbg !720
  %16 = load double, double* %15, align 8, !dbg !720
  %17 = fmul double 5.000000e-01, %16, !dbg !721
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !722
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !723
  store double %17, double* %19, align 8, !dbg !724
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !725
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !726
  %22 = load double, double* %21, align 8, !dbg !726
  %23 = call double @fabs(double %22) #1, !dbg !727
  %24 = fmul double 0x3CC0000000000000, %23, !dbg !728
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !729
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !730
  %27 = load double, double* %26, align 8, !dbg !731
  %28 = fadd double %27, %24, !dbg !731
  store double %28, double* %26, align 8, !dbg !731
  %29 = load i32, i32* %6, align 4, !dbg !732
  ret i32 %29, !dbg !733
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hazard_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !734 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !735, metadata !93), !dbg !736
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !737, metadata !93), !dbg !738
  %15 = load double, double* %4, align 8, !dbg !739
  %16 = fcmp olt double %15, 2.500000e+01, !dbg !741
  br i1 %16, label %17, label %71, !dbg !742

; <label>:17:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !743, metadata !93), !dbg !745
  call void @llvm.dbg.declare(metadata i32* %7, metadata !746, metadata !93), !dbg !748
  %18 = load double, double* %4, align 8, !dbg !749
  %19 = fdiv double %18, 0x3FF6A09E667F3BCD, !dbg !750
  %20 = call i32 @gsl_sf_log_erfc_e(double %19, %struct.gsl_sf_result_struct* %6), !dbg !751
  store i32 %20, i32* %7, align 4, !dbg !748
  call void @llvm.dbg.declare(metadata double* %8, metadata !752, metadata !93), !dbg !753
  store double 0xBFCCE6BB25AA1316, double* %8, align 8, !dbg !753
  call void @llvm.dbg.declare(metadata double* %9, metadata !754, metadata !93), !dbg !755
  %21 = load double, double* %4, align 8, !dbg !756
  %22 = fmul double 5.000000e-01, %21, !dbg !757
  %23 = load double, double* %4, align 8, !dbg !758
  %24 = fmul double %22, %23, !dbg !759
  %25 = fsub double 0xBFCCE6BB25AA1316, %24, !dbg !760
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !761
  %27 = load double, double* %26, align 8, !dbg !761
  %28 = fsub double %25, %27, !dbg !762
  store double %28, double* %9, align 8, !dbg !755
  call void @llvm.dbg.declare(metadata i32* %10, metadata !763, metadata !93), !dbg !764
  %29 = load double, double* %9, align 8, !dbg !765
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !766
  %31 = call i32 @gsl_sf_exp_e(double %29, %struct.gsl_sf_result_struct* %30), !dbg !767
  store i32 %31, i32* %10, align 4, !dbg !764
  %32 = load double, double* %4, align 8, !dbg !768
  %33 = call double @fabs(double %32) #1, !dbg !769
  %34 = fadd double 1.000000e+00, %33, !dbg !770
  %35 = fmul double 3.000000e+00, %34, !dbg !771
  %36 = fmul double %35, 0x3CB0000000000000, !dbg !772
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !773
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !774
  %39 = load double, double* %38, align 8, !dbg !774
  %40 = call double @fabs(double %39) #1, !dbg !775
  %41 = fmul double %36, %40, !dbg !777
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !778
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !779
  %44 = load double, double* %43, align 8, !dbg !780
  %45 = fadd double %44, %41, !dbg !780
  store double %45, double* %43, align 8, !dbg !780
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !781
  %47 = load double, double* %46, align 8, !dbg !781
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !782
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !783
  %50 = load double, double* %49, align 8, !dbg !783
  %51 = fmul double %47, %50, !dbg !784
  %52 = call double @fabs(double %51) #1, !dbg !785
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !786
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !787
  %55 = load double, double* %54, align 8, !dbg !788
  %56 = fadd double %55, %52, !dbg !788
  store double %56, double* %54, align 8, !dbg !788
  %57 = load i32, i32* %7, align 4, !dbg !789
  %58 = icmp ne i32 %57, 0, !dbg !789
  br i1 %58, label %59, label %61, !dbg !789

; <label>:59:                                     ; preds = %17
  %60 = load i32, i32* %7, align 4, !dbg !790
  br label %69, !dbg !790

; <label>:61:                                     ; preds = %17
  %62 = load i32, i32* %10, align 4, !dbg !791
  %63 = icmp ne i32 %62, 0, !dbg !791
  br i1 %63, label %64, label %66, !dbg !791

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %10, align 4, !dbg !793
  br label %67, !dbg !793

; <label>:66:                                     ; preds = %61
  br label %67, !dbg !795

; <label>:67:                                     ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ], !dbg !797
  br label %69, !dbg !797

; <label>:69:                                     ; preds = %67, %59
  %70 = phi i32 [ %60, %59 ], [ %68, %67 ], !dbg !799
  store i32 %70, i32* %3, align 4, !dbg !801
  br label %112, !dbg !801

; <label>:71:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %11, metadata !802, metadata !93), !dbg !804
  %72 = load double, double* %4, align 8, !dbg !805
  %73 = load double, double* %4, align 8, !dbg !806
  %74 = fmul double %72, %73, !dbg !807
  %75 = fdiv double 1.000000e+00, %74, !dbg !808
  store double %75, double* %11, align 8, !dbg !804
  call void @llvm.dbg.declare(metadata double* %12, metadata !809, metadata !93), !dbg !810
  %76 = load double, double* %11, align 8, !dbg !811
  %77 = fmul double 9.000000e+00, %76, !dbg !812
  %78 = load double, double* %11, align 8, !dbg !813
  %79 = fmul double 1.100000e+01, %78, !dbg !814
  %80 = fsub double 1.000000e+00, %79, !dbg !815
  %81 = fmul double %77, %80, !dbg !816
  %82 = fsub double 1.000000e+00, %81, !dbg !817
  store double %82, double* %12, align 8, !dbg !810
  call void @llvm.dbg.declare(metadata double* %13, metadata !818, metadata !93), !dbg !819
  %83 = load double, double* %11, align 8, !dbg !820
  %84 = fmul double 5.000000e+00, %83, !dbg !821
  %85 = load double, double* %11, align 8, !dbg !822
  %86 = fmul double 7.000000e+00, %85, !dbg !823
  %87 = load double, double* %12, align 8, !dbg !824
  %88 = fmul double %86, %87, !dbg !825
  %89 = fsub double 1.000000e+00, %88, !dbg !826
  %90 = fmul double %84, %89, !dbg !827
  %91 = fsub double 1.000000e+00, %90, !dbg !828
  store double %91, double* %13, align 8, !dbg !819
  call void @llvm.dbg.declare(metadata double* %14, metadata !829, metadata !93), !dbg !830
  %92 = load double, double* %11, align 8, !dbg !831
  %93 = load double, double* %11, align 8, !dbg !832
  %94 = fmul double 3.000000e+00, %93, !dbg !833
  %95 = load double, double* %13, align 8, !dbg !834
  %96 = fmul double %94, %95, !dbg !835
  %97 = fsub double 1.000000e+00, %96, !dbg !836
  %98 = fmul double %92, %97, !dbg !837
  %99 = fsub double 1.000000e+00, %98, !dbg !838
  store double %99, double* %14, align 8, !dbg !830
  %100 = load double, double* %4, align 8, !dbg !839
  %101 = load double, double* %14, align 8, !dbg !840
  %102 = fdiv double %100, %101, !dbg !841
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !842
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !843
  store double %102, double* %104, align 8, !dbg !844
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !845
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 0, !dbg !846
  %107 = load double, double* %106, align 8, !dbg !846
  %108 = call double @fabs(double %107) #1, !dbg !847
  %109 = fmul double 0x3CC0000000000000, %108, !dbg !848
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !849
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 1, !dbg !850
  store double %109, double* %111, align 8, !dbg !851
  store i32 0, i32* %3, align 4, !dbg !852
  br label %112, !dbg !852

; <label>:112:                                    ; preds = %71, %69
  %113 = load i32, i32* %3, align 4, !dbg !853
  ret i32 %113, !dbg !853
}

declare i32 @gsl_sf_exp_e(double, %struct.gsl_sf_result_struct*) #5

; Function Attrs: nounwind uwtable
define double @gsl_sf_erfc(double) #0 !dbg !854 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !855, metadata !93), !dbg !856
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !857, metadata !93), !dbg !858
  call void @llvm.dbg.declare(metadata i32* %5, metadata !859, metadata !93), !dbg !858
  %6 = load double, double* %3, align 8, !dbg !858
  %7 = call i32 @gsl_sf_erfc_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !858
  store i32 %7, i32* %5, align 4, !dbg !858
  %8 = load i32, i32* %5, align 4, !dbg !860
  %9 = icmp ne i32 %8, 0, !dbg !860
  br i1 %9, label %10, label %16, !dbg !858

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !862, !llvm.loop !865

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !867
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 438, i32 %12), !dbg !867
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !867
  %14 = load double, double* %13, align 8, !dbg !867
  store double %14, double* %2, align 8, !dbg !867
  br label %19, !dbg !867
                                                  ; No predecessors!
  br label %16, !dbg !870

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !872
  %18 = load double, double* %17, align 8, !dbg !872
  store double %18, double* %2, align 8, !dbg !872
  br label %19, !dbg !872

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !874
  ret double %20, !dbg !874
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_log_erfc(double) #0 !dbg !875 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !876, metadata !93), !dbg !877
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !878, metadata !93), !dbg !879
  call void @llvm.dbg.declare(metadata i32* %5, metadata !880, metadata !93), !dbg !879
  %6 = load double, double* %3, align 8, !dbg !879
  %7 = call i32 @gsl_sf_log_erfc_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !879
  store i32 %7, i32* %5, align 4, !dbg !879
  %8 = load i32, i32* %5, align 4, !dbg !881
  %9 = icmp ne i32 %8, 0, !dbg !881
  br i1 %9, label %10, label %16, !dbg !879

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !883, !llvm.loop !886

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !888
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 443, i32 %12), !dbg !888
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !888
  %14 = load double, double* %13, align 8, !dbg !888
  store double %14, double* %2, align 8, !dbg !888
  br label %19, !dbg !888
                                                  ; No predecessors!
  br label %16, !dbg !891

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !893
  %18 = load double, double* %17, align 8, !dbg !893
  store double %18, double* %2, align 8, !dbg !893
  br label %19, !dbg !893

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !895
  ret double %20, !dbg !895
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_erf(double) #0 !dbg !896 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !897, metadata !93), !dbg !898
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !899, metadata !93), !dbg !900
  call void @llvm.dbg.declare(metadata i32* %5, metadata !901, metadata !93), !dbg !900
  %6 = load double, double* %3, align 8, !dbg !900
  %7 = call i32 @gsl_sf_erf_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !900
  store i32 %7, i32* %5, align 4, !dbg !900
  %8 = load i32, i32* %5, align 4, !dbg !902
  %9 = icmp ne i32 %8, 0, !dbg !902
  br i1 %9, label %10, label %16, !dbg !900

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !904, !llvm.loop !907

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !909
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 448, i32 %12), !dbg !909
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !909
  %14 = load double, double* %13, align 8, !dbg !909
  store double %14, double* %2, align 8, !dbg !909
  br label %19, !dbg !909
                                                  ; No predecessors!
  br label %16, !dbg !912

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !914
  %18 = load double, double* %17, align 8, !dbg !914
  store double %18, double* %2, align 8, !dbg !914
  br label %19, !dbg !914

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !916
  ret double %20, !dbg !916
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_erf_Z(double) #0 !dbg !917 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !918, metadata !93), !dbg !919
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !920, metadata !93), !dbg !921
  call void @llvm.dbg.declare(metadata i32* %5, metadata !922, metadata !93), !dbg !921
  %6 = load double, double* %3, align 8, !dbg !921
  %7 = call i32 @gsl_sf_erf_Z_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !921
  store i32 %7, i32* %5, align 4, !dbg !921
  %8 = load i32, i32* %5, align 4, !dbg !923
  %9 = icmp ne i32 %8, 0, !dbg !923
  br i1 %9, label %10, label %16, !dbg !921

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !925, !llvm.loop !928

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !930
  call void @gsl_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 453, i32 %12), !dbg !930
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !930
  %14 = load double, double* %13, align 8, !dbg !930
  store double %14, double* %2, align 8, !dbg !930
  br label %19, !dbg !930
                                                  ; No predecessors!
  br label %16, !dbg !933

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !935
  %18 = load double, double* %17, align 8, !dbg !935
  store double %18, double* %2, align 8, !dbg !935
  br label %19, !dbg !935

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !937
  ret double %20, !dbg !937
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_erf_Q(double) #0 !dbg !938 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !939, metadata !93), !dbg !940
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !941, metadata !93), !dbg !942
  call void @llvm.dbg.declare(metadata i32* %5, metadata !943, metadata !93), !dbg !942
  %6 = load double, double* %3, align 8, !dbg !942
  %7 = call i32 @gsl_sf_erf_Q_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !942
  store i32 %7, i32* %5, align 4, !dbg !942
  %8 = load i32, i32* %5, align 4, !dbg !944
  %9 = icmp ne i32 %8, 0, !dbg !944
  br i1 %9, label %10, label %16, !dbg !942

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !946, !llvm.loop !949

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !951
  call void @gsl_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 458, i32 %12), !dbg !951
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !951
  %14 = load double, double* %13, align 8, !dbg !951
  store double %14, double* %2, align 8, !dbg !951
  br label %19, !dbg !951
                                                  ; No predecessors!
  br label %16, !dbg !954

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !956
  %18 = load double, double* %17, align 8, !dbg !956
  store double %18, double* %2, align 8, !dbg !956
  br label %19, !dbg !956

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !958
  ret double %20, !dbg !958
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hazard(double) #0 !dbg !959 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !960, metadata !93), !dbg !961
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !962, metadata !93), !dbg !963
  call void @llvm.dbg.declare(metadata i32* %5, metadata !964, metadata !93), !dbg !963
  %6 = load double, double* %3, align 8, !dbg !963
  %7 = call i32 @gsl_sf_hazard_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !963
  store i32 %7, i32* %5, align 4, !dbg !963
  %8 = load i32, i32* %5, align 4, !dbg !965
  %9 = icmp ne i32 %8, 0, !dbg !965
  br i1 %9, label %10, label %16, !dbg !963

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !967, !llvm.loop !970

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !972
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 463, i32 %12), !dbg !972
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !972
  %14 = load double, double* %13, align 8, !dbg !972
  store double %14, double* %2, align 8, !dbg !972
  br label %19, !dbg !972
                                                  ; No predecessors!
  br label %16, !dbg !975

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !977
  %18 = load double, double* %17, align 8, !dbg !977
  store double %18, double* %2, align 8, !dbg !977
  br label %19, !dbg !977

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !979
  ret double %20, !dbg !979
}

; Function Attrs: nounwind uwtable
define internal double @erfc8_sum(double) #0 !dbg !67 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !980, metadata !93), !dbg !981
  call void @llvm.dbg.declare(metadata double* %3, metadata !982, metadata !93), !dbg !983
  store double 0.000000e+00, double* %3, align 8, !dbg !983
  call void @llvm.dbg.declare(metadata double* %4, metadata !984, metadata !93), !dbg !985
  store double 0.000000e+00, double* %4, align 8, !dbg !985
  call void @llvm.dbg.declare(metadata i32* %5, metadata !986, metadata !93), !dbg !987
  %6 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @erfc8_sum.P, i64 0, i64 5), align 8, !dbg !988
  store double %6, double* %3, align 8, !dbg !989
  store i32 4, i32* %5, align 4, !dbg !990
  br label %7, !dbg !992

; <label>:7:                                      ; preds = %19, %1
  %8 = load i32, i32* %5, align 4, !dbg !993
  %9 = icmp sge i32 %8, 0, !dbg !996
  br i1 %9, label %10, label %22, !dbg !997

; <label>:10:                                     ; preds = %7
  %11 = load double, double* %2, align 8, !dbg !998
  %12 = load double, double* %3, align 8, !dbg !1000
  %13 = fmul double %11, %12, !dbg !1001
  %14 = load i32, i32* %5, align 4, !dbg !1002
  %15 = sext i32 %14 to i64, !dbg !1003
  %16 = getelementptr inbounds [6 x double], [6 x double]* @erfc8_sum.P, i64 0, i64 %15, !dbg !1003
  %17 = load double, double* %16, align 8, !dbg !1003
  %18 = fadd double %13, %17, !dbg !1004
  store double %18, double* %3, align 8, !dbg !1005
  br label %19, !dbg !1006

; <label>:19:                                     ; preds = %10
  %20 = load i32, i32* %5, align 4, !dbg !1007
  %21 = add nsw i32 %20, -1, !dbg !1007
  store i32 %21, i32* %5, align 4, !dbg !1007
  br label %7, !dbg !1009, !llvm.loop !1010

; <label>:22:                                     ; preds = %7
  %23 = load double, double* getelementptr inbounds ([7 x double], [7 x double]* @erfc8_sum.Q, i64 0, i64 6), align 16, !dbg !1012
  store double %23, double* %4, align 8, !dbg !1013
  store i32 5, i32* %5, align 4, !dbg !1014
  br label %24, !dbg !1016

; <label>:24:                                     ; preds = %36, %22
  %25 = load i32, i32* %5, align 4, !dbg !1017
  %26 = icmp sge i32 %25, 0, !dbg !1020
  br i1 %26, label %27, label %39, !dbg !1021

; <label>:27:                                     ; preds = %24
  %28 = load double, double* %2, align 8, !dbg !1022
  %29 = load double, double* %4, align 8, !dbg !1024
  %30 = fmul double %28, %29, !dbg !1025
  %31 = load i32, i32* %5, align 4, !dbg !1026
  %32 = sext i32 %31 to i64, !dbg !1027
  %33 = getelementptr inbounds [7 x double], [7 x double]* @erfc8_sum.Q, i64 0, i64 %32, !dbg !1027
  %34 = load double, double* %33, align 8, !dbg !1027
  %35 = fadd double %30, %34, !dbg !1028
  store double %35, double* %4, align 8, !dbg !1029
  br label %36, !dbg !1030

; <label>:36:                                     ; preds = %27
  %37 = load i32, i32* %5, align 4, !dbg !1031
  %38 = add nsw i32 %37, -1, !dbg !1031
  store i32 %38, i32* %5, align 4, !dbg !1031
  br label %24, !dbg !1033, !llvm.loop !1034

; <label>:39:                                     ; preds = %24
  %40 = load double, double* %3, align 8, !dbg !1036
  %41 = load double, double* %4, align 8, !dbg !1037
  %42 = fdiv double %40, %41, !dbg !1038
  ret double %42, !dbg !1039
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!78, !79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "erfc.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60, !64, !65, !66, !74}
!42 = distinct !DIGlobalVariable(name: "erfc_xlt1_cs", scope: !0, file: !1, line: 164, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @erfc_xlt1_cs)
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
!55 = distinct !DIGlobalVariable(name: "erfc_xlt1_data", scope: !0, file: !1, line: 142, type: !56, isLocal: true, isDefinition: true, variable: [20 x double]* @erfc_xlt1_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1280, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 20)
!59 = distinct !DIGlobalVariable(name: "erfc_x15_cs", scope: !0, file: !1, line: 200, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @erfc_x15_cs)
!60 = distinct !DIGlobalVariable(name: "erfc_x15_data", scope: !0, file: !1, line: 173, type: !61, isLocal: true, isDefinition: true, variable: [25 x double]* @erfc_x15_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1600, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 25)
!64 = distinct !DIGlobalVariable(name: "erfc_x510_cs", scope: !0, file: !1, line: 231, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @erfc_x510_cs)
!65 = distinct !DIGlobalVariable(name: "erfc_x510_data", scope: !0, file: !1, line: 209, type: !56, isLocal: true, isDefinition: true, variable: [20 x double]* @erfc_x510_data)
!66 = distinct !DIGlobalVariable(name: "P", scope: !67, file: !1, line: 48, type: !71, isLocal: true, isDefinition: true, variable: [6 x double]* @erfc8_sum.P)
!67 = distinct !DISubprogram(name: "erfc8_sum", scope: !1, file: !1, line: 43, type: !68, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{!49, !49}
!70 = !{}
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 384, align: 64, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 6)
!74 = distinct !DIGlobalVariable(name: "Q", scope: !67, file: !1, line: 56, type: !75, isLocal: true, isDefinition: true, variable: [7 x double]* @erfc8_sum.Q)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 448, align: 64, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 7)
!78 = !{i32 2, !"Dwarf Version", i32 4}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 1, !"PIC Level", i32 2}
!81 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!82 = distinct !DISubprogram(name: "gsl_sf_erfc_e", scope: !1, file: !1, line: 256, type: !83, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!83 = !DISubroutineType(types: !84)
!84 = !{!51, !49, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !87, line: 41, baseType: !88)
!87 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !87, line: 37, size: 128, align: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !88, file: !87, line: 38, baseType: !49, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !88, file: !87, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!92 = !DILocalVariable(name: "x", arg: 1, scope: !82, file: !1, line: 256, type: !49)
!93 = !DIExpression()
!94 = !DILocation(line: 256, column: 26, scope: !82)
!95 = !DILocalVariable(name: "result", arg: 2, scope: !82, file: !1, line: 256, type: !85)
!96 = !DILocation(line: 256, column: 45, scope: !82)
!97 = !DILocalVariable(name: "ax", scope: !82, file: !1, line: 258, type: !98)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!99 = !DILocation(line: 258, column: 16, scope: !82)
!100 = !DILocation(line: 258, column: 26, scope: !82)
!101 = !DILocation(line: 258, column: 21, scope: !82)
!102 = !DILocalVariable(name: "e_val", scope: !82, file: !1, line: 259, type: !49)
!103 = !DILocation(line: 259, column: 10, scope: !82)
!104 = !DILocalVariable(name: "e_err", scope: !82, file: !1, line: 259, type: !49)
!105 = !DILocation(line: 259, column: 17, scope: !82)
!106 = !DILocation(line: 263, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !82, file: !1, line: 263, column: 6)
!108 = !DILocation(line: 263, column: 9, scope: !107)
!109 = !DILocation(line: 263, column: 6, scope: !82)
!110 = !DILocalVariable(name: "t", scope: !111, file: !1, line: 264, type: !49)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 263, column: 17)
!112 = !DILocation(line: 264, column: 12, scope: !111)
!113 = !DILocation(line: 264, column: 20, scope: !111)
!114 = !DILocation(line: 264, column: 19, scope: !111)
!115 = !DILocation(line: 264, column: 23, scope: !111)
!116 = !DILocalVariable(name: "c", scope: !111, file: !1, line: 265, type: !86)
!117 = !DILocation(line: 265, column: 19, scope: !111)
!118 = !DILocation(line: 266, column: 32, scope: !111)
!119 = !DILocation(line: 266, column: 5, scope: !111)
!120 = !DILocation(line: 267, column: 15, scope: !111)
!121 = !DILocation(line: 267, column: 11, scope: !111)
!122 = !DILocation(line: 268, column: 15, scope: !111)
!123 = !DILocation(line: 268, column: 11, scope: !111)
!124 = !DILocation(line: 269, column: 3, scope: !111)
!125 = !DILocation(line: 270, column: 11, scope: !126)
!126 = distinct !DILexicalBlock(scope: !107, file: !1, line: 270, column: 11)
!127 = !DILocation(line: 270, column: 14, scope: !126)
!128 = !DILocation(line: 270, column: 11, scope: !107)
!129 = !DILocalVariable(name: "ex2", scope: !130, file: !1, line: 271, type: !49)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 270, column: 22)
!131 = !DILocation(line: 271, column: 12, scope: !130)
!132 = !DILocation(line: 271, column: 23, scope: !130)
!133 = !DILocation(line: 271, column: 22, scope: !130)
!134 = !DILocation(line: 271, column: 25, scope: !130)
!135 = !DILocation(line: 271, column: 24, scope: !130)
!136 = !DILocation(line: 271, column: 18, scope: !130)
!137 = !DILocalVariable(name: "t", scope: !130, file: !1, line: 272, type: !49)
!138 = !DILocation(line: 272, column: 12, scope: !130)
!139 = !DILocation(line: 272, column: 21, scope: !130)
!140 = !DILocation(line: 272, column: 23, scope: !130)
!141 = !DILocation(line: 272, column: 19, scope: !130)
!142 = !DILocalVariable(name: "c", scope: !130, file: !1, line: 273, type: !86)
!143 = !DILocation(line: 273, column: 19, scope: !130)
!144 = !DILocation(line: 274, column: 31, scope: !130)
!145 = !DILocation(line: 274, column: 5, scope: !130)
!146 = !DILocation(line: 275, column: 13, scope: !130)
!147 = !DILocation(line: 275, column: 21, scope: !130)
!148 = !DILocation(line: 275, column: 17, scope: !130)
!149 = !DILocation(line: 275, column: 11, scope: !130)
!150 = !DILocation(line: 276, column: 13, scope: !130)
!151 = !DILocation(line: 276, column: 22, scope: !130)
!152 = !DILocation(line: 276, column: 37, scope: !130)
!153 = !DILocation(line: 276, column: 32, scope: !130)
!154 = !DILocation(line: 276, column: 31, scope: !130)
!155 = !DILocation(line: 276, column: 39, scope: !130)
!156 = !DILocation(line: 276, column: 26, scope: !130)
!157 = !DILocation(line: 276, column: 17, scope: !130)
!158 = !DILocation(line: 276, column: 11, scope: !130)
!159 = !DILocation(line: 277, column: 3, scope: !130)
!160 = !DILocation(line: 278, column: 11, scope: !161)
!161 = distinct !DILexicalBlock(scope: !126, file: !1, line: 278, column: 11)
!162 = !DILocation(line: 278, column: 14, scope: !161)
!163 = !DILocation(line: 278, column: 11, scope: !126)
!164 = !DILocalVariable(name: "exterm", scope: !165, file: !1, line: 279, type: !49)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 278, column: 22)
!166 = !DILocation(line: 279, column: 12, scope: !165)
!167 = !DILocation(line: 279, column: 26, scope: !165)
!168 = !DILocation(line: 279, column: 25, scope: !165)
!169 = !DILocation(line: 279, column: 28, scope: !165)
!170 = !DILocation(line: 279, column: 27, scope: !165)
!171 = !DILocation(line: 279, column: 21, scope: !165)
!172 = !DILocation(line: 279, column: 33, scope: !165)
!173 = !DILocation(line: 279, column: 31, scope: !165)
!174 = !DILocalVariable(name: "t", scope: !165, file: !1, line: 280, type: !49)
!175 = !DILocation(line: 280, column: 12, scope: !165)
!176 = !DILocation(line: 280, column: 21, scope: !165)
!177 = !DILocation(line: 280, column: 20, scope: !165)
!178 = !DILocation(line: 280, column: 24, scope: !165)
!179 = !DILocation(line: 280, column: 31, scope: !165)
!180 = !DILocalVariable(name: "c", scope: !165, file: !1, line: 281, type: !86)
!181 = !DILocation(line: 281, column: 19, scope: !165)
!182 = !DILocation(line: 282, column: 32, scope: !165)
!183 = !DILocation(line: 282, column: 5, scope: !165)
!184 = !DILocation(line: 283, column: 13, scope: !165)
!185 = !DILocation(line: 283, column: 24, scope: !165)
!186 = !DILocation(line: 283, column: 20, scope: !165)
!187 = !DILocation(line: 283, column: 11, scope: !165)
!188 = !DILocation(line: 284, column: 13, scope: !165)
!189 = !DILocation(line: 284, column: 25, scope: !165)
!190 = !DILocation(line: 284, column: 40, scope: !165)
!191 = !DILocation(line: 284, column: 35, scope: !165)
!192 = !DILocation(line: 284, column: 34, scope: !165)
!193 = !DILocation(line: 284, column: 42, scope: !165)
!194 = !DILocation(line: 284, column: 29, scope: !165)
!195 = !DILocation(line: 284, column: 59, scope: !165)
!196 = !DILocation(line: 284, column: 20, scope: !165)
!197 = !DILocation(line: 284, column: 11, scope: !165)
!198 = !DILocation(line: 285, column: 3, scope: !165)
!199 = !DILocation(line: 287, column: 19, scope: !200)
!200 = distinct !DILexicalBlock(scope: !161, file: !1, line: 286, column: 8)
!201 = !DILocation(line: 287, column: 13, scope: !200)
!202 = !DILocation(line: 287, column: 11, scope: !200)
!203 = !DILocation(line: 288, column: 14, scope: !200)
!204 = !DILocation(line: 288, column: 16, scope: !200)
!205 = !DILocation(line: 288, column: 15, scope: !200)
!206 = !DILocation(line: 288, column: 18, scope: !200)
!207 = !DILocation(line: 288, column: 25, scope: !200)
!208 = !DILocation(line: 288, column: 50, scope: !200)
!209 = !DILocation(line: 288, column: 45, scope: !200)
!210 = !DILocation(line: 288, column: 43, scope: !200)
!211 = !DILocation(line: 288, column: 11, scope: !200)
!212 = !DILocation(line: 291, column: 6, scope: !213)
!213 = distinct !DILexicalBlock(scope: !82, file: !1, line: 291, column: 6)
!214 = !DILocation(line: 291, column: 8, scope: !213)
!215 = !DILocation(line: 291, column: 6, scope: !82)
!216 = !DILocation(line: 292, column: 26, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 291, column: 15)
!218 = !DILocation(line: 292, column: 24, scope: !217)
!219 = !DILocation(line: 292, column: 5, scope: !217)
!220 = !DILocation(line: 292, column: 13, scope: !217)
!221 = !DILocation(line: 292, column: 18, scope: !217)
!222 = !DILocation(line: 293, column: 20, scope: !217)
!223 = !DILocation(line: 293, column: 5, scope: !217)
!224 = !DILocation(line: 293, column: 13, scope: !217)
!225 = !DILocation(line: 293, column: 18, scope: !217)
!226 = !DILocation(line: 294, column: 49, scope: !217)
!227 = !DILocation(line: 294, column: 57, scope: !217)
!228 = !DILocation(line: 294, column: 44, scope: !217)
!229 = !DILocation(line: 294, column: 42, scope: !217)
!230 = !DILocation(line: 294, column: 5, scope: !217)
!231 = !DILocation(line: 294, column: 13, scope: !217)
!232 = !DILocation(line: 294, column: 17, scope: !217)
!233 = !DILocation(line: 295, column: 3, scope: !217)
!234 = !DILocation(line: 297, column: 20, scope: !235)
!235 = distinct !DILexicalBlock(scope: !213, file: !1, line: 296, column: 8)
!236 = !DILocation(line: 297, column: 5, scope: !235)
!237 = !DILocation(line: 297, column: 13, scope: !235)
!238 = !DILocation(line: 297, column: 18, scope: !235)
!239 = !DILocation(line: 298, column: 20, scope: !235)
!240 = !DILocation(line: 298, column: 5, scope: !235)
!241 = !DILocation(line: 298, column: 13, scope: !235)
!242 = !DILocation(line: 298, column: 18, scope: !235)
!243 = !DILocation(line: 299, column: 49, scope: !235)
!244 = !DILocation(line: 299, column: 57, scope: !235)
!245 = !DILocation(line: 299, column: 44, scope: !235)
!246 = !DILocation(line: 299, column: 42, scope: !235)
!247 = !DILocation(line: 299, column: 5, scope: !235)
!248 = !DILocation(line: 299, column: 13, scope: !235)
!249 = !DILocation(line: 299, column: 17, scope: !235)
!250 = !DILocation(line: 302, column: 3, scope: !82)
!251 = distinct !DISubprogram(name: "cheb_eval_e", scope: !252, file: !252, line: 3, type: !253, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!252 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!253 = !DISubroutineType(types: !254)
!254 = !{!51, !255, !98, !85}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!257 = !DILocalVariable(name: "cs", arg: 1, scope: !251, file: !252, line: 3, type: !255)
!258 = !DILocation(line: 3, column: 33, scope: !251)
!259 = !DILocalVariable(name: "x", arg: 2, scope: !251, file: !252, line: 4, type: !98)
!260 = !DILocation(line: 4, column: 26, scope: !251)
!261 = !DILocalVariable(name: "result", arg: 3, scope: !251, file: !252, line: 5, type: !85)
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
!383 = distinct !DISubprogram(name: "erfc8", scope: !1, file: !1, line: 81, type: !68, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!384 = !DILocalVariable(name: "x", arg: 1, scope: !383, file: !1, line: 81, type: !49)
!385 = !DILocation(line: 81, column: 28, scope: !383)
!386 = !DILocalVariable(name: "e", scope: !383, file: !1, line: 83, type: !49)
!387 = !DILocation(line: 83, column: 10, scope: !383)
!388 = !DILocation(line: 84, column: 17, scope: !383)
!389 = !DILocation(line: 84, column: 7, scope: !383)
!390 = !DILocation(line: 84, column: 5, scope: !383)
!391 = !DILocation(line: 85, column: 13, scope: !383)
!392 = !DILocation(line: 85, column: 12, scope: !383)
!393 = !DILocation(line: 85, column: 15, scope: !383)
!394 = !DILocation(line: 85, column: 14, scope: !383)
!395 = !DILocation(line: 85, column: 8, scope: !383)
!396 = !DILocation(line: 85, column: 5, scope: !383)
!397 = !DILocation(line: 86, column: 10, scope: !383)
!398 = !DILocation(line: 86, column: 3, scope: !383)
!399 = distinct !DISubprogram(name: "gsl_sf_log_erfc_e", scope: !1, file: !1, line: 306, type: !83, isLocal: false, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!400 = !DILocalVariable(name: "x", arg: 1, scope: !399, file: !1, line: 306, type: !49)
!401 = !DILocation(line: 306, column: 30, scope: !399)
!402 = !DILocalVariable(name: "result", arg: 2, scope: !399, file: !1, line: 306, type: !85)
!403 = !DILocation(line: 306, column: 49, scope: !399)
!404 = !DILocation(line: 310, column: 6, scope: !405)
!405 = distinct !DILexicalBlock(scope: !399, file: !1, line: 310, column: 6)
!406 = !DILocation(line: 310, column: 8, scope: !405)
!407 = !DILocation(line: 310, column: 7, scope: !405)
!408 = !DILocation(line: 310, column: 10, scope: !405)
!409 = !DILocation(line: 310, column: 6, scope: !399)
!410 = !DILocalVariable(name: "y", scope: !411, file: !1, line: 311, type: !98)
!411 = distinct !DILexicalBlock(scope: !405, file: !1, line: 310, column: 40)
!412 = !DILocation(line: 311, column: 18, scope: !411)
!413 = !DILocation(line: 311, column: 22, scope: !411)
!414 = !DILocation(line: 311, column: 24, scope: !411)
!415 = !DILocalVariable(name: "c3", scope: !411, file: !1, line: 313, type: !98)
!416 = !DILocation(line: 313, column: 18, scope: !411)
!417 = !DILocalVariable(name: "c4", scope: !411, file: !1, line: 314, type: !98)
!418 = !DILocation(line: 314, column: 18, scope: !411)
!419 = !DILocalVariable(name: "c5", scope: !411, file: !1, line: 315, type: !98)
!420 = !DILocation(line: 315, column: 18, scope: !411)
!421 = !DILocalVariable(name: "c6", scope: !411, file: !1, line: 316, type: !98)
!422 = !DILocation(line: 316, column: 18, scope: !411)
!423 = !DILocalVariable(name: "c7", scope: !411, file: !1, line: 317, type: !98)
!424 = !DILocation(line: 317, column: 18, scope: !411)
!425 = !DILocalVariable(name: "c8", scope: !411, file: !1, line: 318, type: !98)
!426 = !DILocation(line: 318, column: 18, scope: !411)
!427 = !DILocalVariable(name: "c9", scope: !411, file: !1, line: 319, type: !98)
!428 = !DILocation(line: 319, column: 18, scope: !411)
!429 = !DILocalVariable(name: "c10", scope: !411, file: !1, line: 320, type: !98)
!430 = !DILocation(line: 320, column: 18, scope: !411)
!431 = !DILocalVariable(name: "c11", scope: !411, file: !1, line: 321, type: !98)
!432 = !DILocation(line: 321, column: 18, scope: !411)
!433 = !DILocalVariable(name: "c12", scope: !411, file: !1, line: 322, type: !98)
!434 = !DILocation(line: 322, column: 18, scope: !411)
!435 = !DILocalVariable(name: "c13", scope: !411, file: !1, line: 323, type: !98)
!436 = !DILocation(line: 323, column: 18, scope: !411)
!437 = !DILocalVariable(name: "c14", scope: !411, file: !1, line: 324, type: !98)
!438 = !DILocation(line: 324, column: 18, scope: !411)
!439 = !DILocalVariable(name: "series", scope: !411, file: !1, line: 325, type: !49)
!440 = !DILocation(line: 325, column: 12, scope: !411)
!441 = !DILocation(line: 325, column: 26, scope: !411)
!442 = !DILocation(line: 325, column: 34, scope: !411)
!443 = !DILocation(line: 325, column: 43, scope: !411)
!444 = !DILocation(line: 325, column: 52, scope: !411)
!445 = !DILocation(line: 325, column: 61, scope: !411)
!446 = !DILocation(line: 325, column: 74, scope: !411)
!447 = !DILocation(line: 325, column: 73, scope: !411)
!448 = !DILocation(line: 325, column: 68, scope: !411)
!449 = !DILocation(line: 325, column: 62, scope: !411)
!450 = !DILocation(line: 325, column: 59, scope: !411)
!451 = !DILocation(line: 325, column: 53, scope: !411)
!452 = !DILocation(line: 325, column: 50, scope: !411)
!453 = !DILocation(line: 325, column: 44, scope: !411)
!454 = !DILocation(line: 325, column: 41, scope: !411)
!455 = !DILocation(line: 325, column: 35, scope: !411)
!456 = !DILocation(line: 325, column: 32, scope: !411)
!457 = !DILocation(line: 325, column: 27, scope: !411)
!458 = !DILocation(line: 325, column: 24, scope: !411)
!459 = !DILocation(line: 326, column: 14, scope: !411)
!460 = !DILocation(line: 326, column: 23, scope: !411)
!461 = !DILocation(line: 326, column: 32, scope: !411)
!462 = !DILocation(line: 326, column: 40, scope: !411)
!463 = !DILocation(line: 326, column: 48, scope: !411)
!464 = !DILocation(line: 326, column: 56, scope: !411)
!465 = !DILocation(line: 326, column: 64, scope: !411)
!466 = !DILocation(line: 326, column: 72, scope: !411)
!467 = !DILocation(line: 326, column: 74, scope: !411)
!468 = !DILocation(line: 326, column: 73, scope: !411)
!469 = !DILocation(line: 326, column: 70, scope: !411)
!470 = !DILocation(line: 326, column: 65, scope: !411)
!471 = !DILocation(line: 326, column: 62, scope: !411)
!472 = !DILocation(line: 326, column: 57, scope: !411)
!473 = !DILocation(line: 326, column: 54, scope: !411)
!474 = !DILocation(line: 326, column: 49, scope: !411)
!475 = !DILocation(line: 326, column: 46, scope: !411)
!476 = !DILocation(line: 326, column: 41, scope: !411)
!477 = !DILocation(line: 326, column: 38, scope: !411)
!478 = !DILocation(line: 326, column: 33, scope: !411)
!479 = !DILocation(line: 326, column: 30, scope: !411)
!480 = !DILocation(line: 326, column: 24, scope: !411)
!481 = !DILocation(line: 326, column: 21, scope: !411)
!482 = !DILocation(line: 326, column: 15, scope: !411)
!483 = !DILocation(line: 326, column: 12, scope: !411)
!484 = !DILocation(line: 327, column: 26, scope: !411)
!485 = !DILocation(line: 327, column: 24, scope: !411)
!486 = !DILocation(line: 327, column: 5, scope: !411)
!487 = !DILocation(line: 327, column: 13, scope: !411)
!488 = !DILocation(line: 327, column: 17, scope: !411)
!489 = !DILocation(line: 328, column: 48, scope: !411)
!490 = !DILocation(line: 328, column: 56, scope: !411)
!491 = !DILocation(line: 328, column: 43, scope: !411)
!492 = !DILocation(line: 328, column: 41, scope: !411)
!493 = !DILocation(line: 328, column: 5, scope: !411)
!494 = !DILocation(line: 328, column: 13, scope: !411)
!495 = !DILocation(line: 328, column: 17, scope: !411)
!496 = !DILocation(line: 329, column: 5, scope: !411)
!497 = !DILocation(line: 341, column: 11, scope: !498)
!498 = distinct !DILexicalBlock(scope: !405, file: !1, line: 341, column: 11)
!499 = !DILocation(line: 341, column: 13, scope: !498)
!500 = !DILocation(line: 341, column: 11, scope: !405)
!501 = !DILocation(line: 342, column: 29, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !1, line: 341, column: 20)
!503 = !DILocation(line: 342, column: 19, scope: !502)
!504 = !DILocation(line: 342, column: 5, scope: !502)
!505 = !DILocation(line: 342, column: 13, scope: !502)
!506 = !DILocation(line: 342, column: 17, scope: !502)
!507 = !DILocation(line: 343, column: 48, scope: !502)
!508 = !DILocation(line: 343, column: 56, scope: !502)
!509 = !DILocation(line: 343, column: 43, scope: !502)
!510 = !DILocation(line: 343, column: 41, scope: !502)
!511 = !DILocation(line: 343, column: 5, scope: !502)
!512 = !DILocation(line: 343, column: 13, scope: !502)
!513 = !DILocation(line: 343, column: 17, scope: !502)
!514 = !DILocation(line: 344, column: 5, scope: !502)
!515 = !DILocalVariable(name: "result_erfc", scope: !516, file: !1, line: 347, type: !86)
!516 = distinct !DILexicalBlock(scope: !498, file: !1, line: 346, column: 8)
!517 = !DILocation(line: 347, column: 19, scope: !516)
!518 = !DILocation(line: 348, column: 19, scope: !516)
!519 = !DILocation(line: 348, column: 5, scope: !516)
!520 = !DILocation(line: 349, column: 36, scope: !516)
!521 = !DILocation(line: 349, column: 20, scope: !516)
!522 = !DILocation(line: 349, column: 5, scope: !516)
!523 = !DILocation(line: 349, column: 13, scope: !516)
!524 = !DILocation(line: 349, column: 18, scope: !516)
!525 = !DILocation(line: 350, column: 37, scope: !516)
!526 = !DILocation(line: 350, column: 55, scope: !516)
!527 = !DILocation(line: 350, column: 41, scope: !516)
!528 = !DILocation(line: 350, column: 20, scope: !516)
!529 = !DILocation(line: 350, column: 5, scope: !516)
!530 = !DILocation(line: 350, column: 13, scope: !516)
!531 = !DILocation(line: 350, column: 18, scope: !516)
!532 = !DILocation(line: 351, column: 49, scope: !516)
!533 = !DILocation(line: 351, column: 57, scope: !516)
!534 = !DILocation(line: 351, column: 44, scope: !516)
!535 = !DILocation(line: 351, column: 42, scope: !516)
!536 = !DILocation(line: 351, column: 5, scope: !516)
!537 = !DILocation(line: 351, column: 13, scope: !516)
!538 = !DILocation(line: 351, column: 17, scope: !516)
!539 = !DILocation(line: 352, column: 5, scope: !516)
!540 = !DILocation(line: 354, column: 1, scope: !399)
!541 = distinct !DISubprogram(name: "log_erfc8", scope: !1, file: !1, line: 90, type: !68, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!542 = !DILocalVariable(name: "x", arg: 1, scope: !541, file: !1, line: 90, type: !49)
!543 = !DILocation(line: 90, column: 32, scope: !541)
!544 = !DILocalVariable(name: "e", scope: !541, file: !1, line: 92, type: !49)
!545 = !DILocation(line: 92, column: 10, scope: !541)
!546 = !DILocation(line: 93, column: 17, scope: !541)
!547 = !DILocation(line: 93, column: 7, scope: !541)
!548 = !DILocation(line: 93, column: 5, scope: !541)
!549 = !DILocation(line: 94, column: 11, scope: !541)
!550 = !DILocation(line: 94, column: 7, scope: !541)
!551 = !DILocation(line: 94, column: 16, scope: !541)
!552 = !DILocation(line: 94, column: 18, scope: !541)
!553 = !DILocation(line: 94, column: 17, scope: !541)
!554 = !DILocation(line: 94, column: 14, scope: !541)
!555 = !DILocation(line: 94, column: 5, scope: !541)
!556 = !DILocation(line: 95, column: 10, scope: !541)
!557 = !DILocation(line: 95, column: 3, scope: !541)
!558 = distinct !DISubprogram(name: "gsl_sf_erf_e", scope: !1, file: !1, line: 357, type: !83, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!559 = !DILocalVariable(name: "x", arg: 1, scope: !558, file: !1, line: 357, type: !49)
!560 = !DILocation(line: 357, column: 25, scope: !558)
!561 = !DILocalVariable(name: "result", arg: 2, scope: !558, file: !1, line: 357, type: !85)
!562 = !DILocation(line: 357, column: 44, scope: !558)
!563 = !DILocation(line: 361, column: 11, scope: !564)
!564 = distinct !DILexicalBlock(scope: !558, file: !1, line: 361, column: 6)
!565 = !DILocation(line: 361, column: 6, scope: !564)
!566 = !DILocation(line: 361, column: 14, scope: !564)
!567 = !DILocation(line: 361, column: 6, scope: !558)
!568 = !DILocation(line: 362, column: 22, scope: !569)
!569 = distinct !DILexicalBlock(scope: !564, file: !1, line: 361, column: 21)
!570 = !DILocation(line: 362, column: 25, scope: !569)
!571 = !DILocation(line: 362, column: 12, scope: !569)
!572 = !DILocation(line: 362, column: 5, scope: !569)
!573 = !DILocalVariable(name: "result_erfc", scope: !574, file: !1, line: 365, type: !86)
!574 = distinct !DILexicalBlock(scope: !564, file: !1, line: 364, column: 8)
!575 = !DILocation(line: 365, column: 19, scope: !574)
!576 = !DILocation(line: 366, column: 19, scope: !574)
!577 = !DILocation(line: 366, column: 5, scope: !574)
!578 = !DILocation(line: 367, column: 38, scope: !574)
!579 = !DILocation(line: 367, column: 24, scope: !574)
!580 = !DILocation(line: 367, column: 5, scope: !574)
!581 = !DILocation(line: 367, column: 13, scope: !574)
!582 = !DILocation(line: 367, column: 18, scope: !574)
!583 = !DILocation(line: 368, column: 32, scope: !574)
!584 = !DILocation(line: 368, column: 5, scope: !574)
!585 = !DILocation(line: 368, column: 13, scope: !574)
!586 = !DILocation(line: 368, column: 18, scope: !574)
!587 = !DILocation(line: 369, column: 49, scope: !574)
!588 = !DILocation(line: 369, column: 57, scope: !574)
!589 = !DILocation(line: 369, column: 44, scope: !574)
!590 = !DILocation(line: 369, column: 42, scope: !574)
!591 = !DILocation(line: 369, column: 5, scope: !574)
!592 = !DILocation(line: 369, column: 13, scope: !574)
!593 = !DILocation(line: 369, column: 17, scope: !574)
!594 = !DILocation(line: 370, column: 5, scope: !574)
!595 = !DILocation(line: 372, column: 1, scope: !558)
!596 = distinct !DISubprogram(name: "erfseries", scope: !1, file: !1, line: 123, type: !83, isLocal: true, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!597 = !DILocalVariable(name: "x", arg: 1, scope: !596, file: !1, line: 123, type: !49)
!598 = !DILocation(line: 123, column: 29, scope: !596)
!599 = !DILocalVariable(name: "result", arg: 2, scope: !596, file: !1, line: 123, type: !85)
!600 = !DILocation(line: 123, column: 48, scope: !596)
!601 = !DILocalVariable(name: "coef", scope: !596, file: !1, line: 125, type: !49)
!602 = !DILocation(line: 125, column: 10, scope: !596)
!603 = !DILocation(line: 125, column: 17, scope: !596)
!604 = !DILocalVariable(name: "e", scope: !596, file: !1, line: 126, type: !49)
!605 = !DILocation(line: 126, column: 10, scope: !596)
!606 = !DILocation(line: 126, column: 17, scope: !596)
!607 = !DILocalVariable(name: "del", scope: !596, file: !1, line: 127, type: !49)
!608 = !DILocation(line: 127, column: 10, scope: !596)
!609 = !DILocalVariable(name: "k", scope: !596, file: !1, line: 128, type: !51)
!610 = !DILocation(line: 128, column: 7, scope: !596)
!611 = !DILocation(line: 129, column: 9, scope: !612)
!612 = distinct !DILexicalBlock(scope: !596, file: !1, line: 129, column: 3)
!613 = !DILocation(line: 129, column: 8, scope: !612)
!614 = !DILocation(line: 129, column: 13, scope: !615)
!615 = !DILexicalBlockFile(scope: !616, file: !1, discriminator: 1)
!616 = distinct !DILexicalBlock(scope: !612, file: !1, line: 129, column: 3)
!617 = !DILocation(line: 129, column: 14, scope: !615)
!618 = !DILocation(line: 129, column: 3, scope: !615)
!619 = !DILocation(line: 130, column: 14, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !1, line: 129, column: 24)
!621 = !DILocation(line: 130, column: 13, scope: !620)
!622 = !DILocation(line: 130, column: 16, scope: !620)
!623 = !DILocation(line: 130, column: 15, scope: !620)
!624 = !DILocation(line: 130, column: 18, scope: !620)
!625 = !DILocation(line: 130, column: 17, scope: !620)
!626 = !DILocation(line: 130, column: 10, scope: !620)
!627 = !DILocation(line: 131, column: 13, scope: !620)
!628 = !DILocation(line: 131, column: 23, scope: !620)
!629 = !DILocation(line: 131, column: 22, scope: !620)
!630 = !DILocation(line: 131, column: 24, scope: !620)
!631 = !DILocation(line: 131, column: 17, scope: !620)
!632 = !DILocation(line: 131, column: 11, scope: !620)
!633 = !DILocation(line: 132, column: 10, scope: !620)
!634 = !DILocation(line: 132, column: 7, scope: !620)
!635 = !DILocation(line: 133, column: 3, scope: !620)
!636 = !DILocation(line: 129, column: 19, scope: !637)
!637 = !DILexicalBlockFile(scope: !616, file: !1, discriminator: 2)
!638 = !DILocation(line: 129, column: 3, scope: !637)
!639 = distinct !{!639, !640}
!640 = !DILocation(line: 129, column: 3, scope: !596)
!641 = !DILocation(line: 134, column: 34, scope: !596)
!642 = !DILocation(line: 134, column: 32, scope: !596)
!643 = !DILocation(line: 134, column: 3, scope: !596)
!644 = !DILocation(line: 134, column: 11, scope: !596)
!645 = !DILocation(line: 134, column: 15, scope: !596)
!646 = !DILocation(line: 135, column: 40, scope: !596)
!647 = !DILocation(line: 135, column: 35, scope: !596)
!648 = !DILocation(line: 135, column: 45, scope: !596)
!649 = !DILocation(line: 135, column: 32, scope: !596)
!650 = !DILocation(line: 135, column: 3, scope: !596)
!651 = !DILocation(line: 135, column: 11, scope: !596)
!652 = !DILocation(line: 135, column: 15, scope: !596)
!653 = !DILocation(line: 136, column: 3, scope: !596)
!654 = distinct !DISubprogram(name: "gsl_sf_erf_Z_e", scope: !1, file: !1, line: 375, type: !83, isLocal: false, isDefinition: true, scopeLine: 376, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!655 = !DILocalVariable(name: "x", arg: 1, scope: !654, file: !1, line: 375, type: !49)
!656 = !DILocation(line: 375, column: 27, scope: !654)
!657 = !DILocalVariable(name: "result", arg: 2, scope: !654, file: !1, line: 375, type: !85)
!658 = !DILocation(line: 375, column: 46, scope: !654)
!659 = !DILocalVariable(name: "ex2", scope: !660, file: !1, line: 380, type: !98)
!660 = distinct !DILexicalBlock(scope: !654, file: !1, line: 379, column: 3)
!661 = !DILocation(line: 380, column: 18, scope: !660)
!662 = !DILocation(line: 380, column: 29, scope: !660)
!663 = !DILocation(line: 380, column: 28, scope: !660)
!664 = !DILocation(line: 380, column: 31, scope: !660)
!665 = !DILocation(line: 380, column: 30, scope: !660)
!666 = !DILocation(line: 380, column: 32, scope: !660)
!667 = !DILocation(line: 380, column: 24, scope: !660)
!668 = !DILocation(line: 381, column: 20, scope: !660)
!669 = !DILocation(line: 381, column: 24, scope: !660)
!670 = !DILocation(line: 381, column: 5, scope: !660)
!671 = !DILocation(line: 381, column: 13, scope: !660)
!672 = !DILocation(line: 381, column: 18, scope: !660)
!673 = !DILocation(line: 382, column: 25, scope: !660)
!674 = !DILocation(line: 382, column: 29, scope: !660)
!675 = !DILocation(line: 382, column: 37, scope: !660)
!676 = !DILocation(line: 382, column: 27, scope: !660)
!677 = !DILocation(line: 382, column: 20, scope: !660)
!678 = !DILocation(line: 382, column: 42, scope: !660)
!679 = !DILocation(line: 382, column: 5, scope: !660)
!680 = !DILocation(line: 382, column: 13, scope: !660)
!681 = !DILocation(line: 382, column: 18, scope: !660)
!682 = !DILocation(line: 383, column: 49, scope: !660)
!683 = !DILocation(line: 383, column: 57, scope: !660)
!684 = !DILocation(line: 383, column: 44, scope: !660)
!685 = !DILocation(line: 383, column: 42, scope: !660)
!686 = !DILocation(line: 383, column: 5, scope: !660)
!687 = !DILocation(line: 383, column: 13, scope: !660)
!688 = !DILocation(line: 383, column: 17, scope: !660)
!689 = !DILocation(line: 384, column: 5, scope: !690)
!690 = distinct !DILexicalBlock(scope: !660, file: !1, line: 384, column: 5)
!691 = !DILocation(line: 384, column: 5, scope: !660)
!692 = !DILocation(line: 384, column: 5, scope: !693)
!693 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 1)
!694 = distinct !{!694, !689}
!695 = !DILocation(line: 384, column: 5, scope: !696)
!696 = !DILexicalBlockFile(scope: !697, file: !1, discriminator: 2)
!697 = distinct !DILexicalBlock(scope: !690, file: !1, line: 384, column: 5)
!698 = !DILocation(line: 384, column: 5, scope: !699)
!699 = !DILexicalBlockFile(scope: !697, file: !1, discriminator: 3)
!700 = !DILocation(line: 385, column: 5, scope: !660)
!701 = !DILocation(line: 387, column: 1, scope: !654)
!702 = distinct !DISubprogram(name: "gsl_sf_erf_Q_e", scope: !1, file: !1, line: 390, type: !83, isLocal: false, isDefinition: true, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!703 = !DILocalVariable(name: "x", arg: 1, scope: !702, file: !1, line: 390, type: !49)
!704 = !DILocation(line: 390, column: 27, scope: !702)
!705 = !DILocalVariable(name: "result", arg: 2, scope: !702, file: !1, line: 390, type: !85)
!706 = !DILocation(line: 390, column: 46, scope: !702)
!707 = !DILocalVariable(name: "result_erfc", scope: !708, file: !1, line: 395, type: !86)
!708 = distinct !DILexicalBlock(scope: !702, file: !1, line: 394, column: 3)
!709 = !DILocation(line: 395, column: 19, scope: !708)
!710 = !DILocalVariable(name: "stat", scope: !708, file: !1, line: 396, type: !51)
!711 = !DILocation(line: 396, column: 9, scope: !708)
!712 = !DILocation(line: 396, column: 30, scope: !708)
!713 = !DILocation(line: 396, column: 31, scope: !708)
!714 = !DILocation(line: 396, column: 16, scope: !708)
!715 = !DILocation(line: 397, column: 38, scope: !708)
!716 = !DILocation(line: 397, column: 24, scope: !708)
!717 = !DILocation(line: 397, column: 5, scope: !708)
!718 = !DILocation(line: 397, column: 13, scope: !708)
!719 = !DILocation(line: 397, column: 18, scope: !708)
!720 = !DILocation(line: 398, column: 38, scope: !708)
!721 = !DILocation(line: 398, column: 24, scope: !708)
!722 = !DILocation(line: 398, column: 5, scope: !708)
!723 = !DILocation(line: 398, column: 13, scope: !708)
!724 = !DILocation(line: 398, column: 18, scope: !708)
!725 = !DILocation(line: 399, column: 49, scope: !708)
!726 = !DILocation(line: 399, column: 57, scope: !708)
!727 = !DILocation(line: 399, column: 44, scope: !708)
!728 = !DILocation(line: 399, column: 42, scope: !708)
!729 = !DILocation(line: 399, column: 5, scope: !708)
!730 = !DILocation(line: 399, column: 13, scope: !708)
!731 = !DILocation(line: 399, column: 17, scope: !708)
!732 = !DILocation(line: 400, column: 12, scope: !708)
!733 = !DILocation(line: 400, column: 5, scope: !708)
!734 = distinct !DISubprogram(name: "gsl_sf_hazard_e", scope: !1, file: !1, line: 405, type: !83, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!735 = !DILocalVariable(name: "x", arg: 1, scope: !734, file: !1, line: 405, type: !49)
!736 = !DILocation(line: 405, column: 28, scope: !734)
!737 = !DILocalVariable(name: "result", arg: 2, scope: !734, file: !1, line: 405, type: !85)
!738 = !DILocation(line: 405, column: 47, scope: !734)
!739 = !DILocation(line: 407, column: 6, scope: !740)
!740 = distinct !DILexicalBlock(scope: !734, file: !1, line: 407, column: 6)
!741 = !DILocation(line: 407, column: 8, scope: !740)
!742 = !DILocation(line: 407, column: 6, scope: !734)
!743 = !DILocalVariable(name: "result_ln_erfc", scope: !744, file: !1, line: 409, type: !86)
!744 = distinct !DILexicalBlock(scope: !740, file: !1, line: 408, column: 3)
!745 = !DILocation(line: 409, column: 19, scope: !744)
!746 = !DILocalVariable(name: "stat_l", scope: !744, file: !1, line: 410, type: !747)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!748 = !DILocation(line: 410, column: 15, scope: !744)
!749 = !DILocation(line: 410, column: 42, scope: !744)
!750 = !DILocation(line: 410, column: 43, scope: !744)
!751 = !DILocation(line: 410, column: 24, scope: !744)
!752 = !DILocalVariable(name: "lnc", scope: !744, file: !1, line: 411, type: !98)
!753 = !DILocation(line: 411, column: 18, scope: !744)
!754 = !DILocalVariable(name: "arg", scope: !744, file: !1, line: 412, type: !98)
!755 = !DILocation(line: 412, column: 18, scope: !744)
!756 = !DILocation(line: 412, column: 34, scope: !744)
!757 = !DILocation(line: 412, column: 33, scope: !744)
!758 = !DILocation(line: 412, column: 36, scope: !744)
!759 = !DILocation(line: 412, column: 35, scope: !744)
!760 = !DILocation(line: 412, column: 28, scope: !744)
!761 = !DILocation(line: 412, column: 55, scope: !744)
!762 = !DILocation(line: 412, column: 38, scope: !744)
!763 = !DILocalVariable(name: "stat_e", scope: !744, file: !1, line: 413, type: !747)
!764 = !DILocation(line: 413, column: 15, scope: !744)
!765 = !DILocation(line: 413, column: 37, scope: !744)
!766 = !DILocation(line: 413, column: 42, scope: !744)
!767 = !DILocation(line: 413, column: 24, scope: !744)
!768 = !DILocation(line: 414, column: 38, scope: !744)
!769 = !DILocation(line: 414, column: 33, scope: !744)
!770 = !DILocation(line: 414, column: 31, scope: !744)
!771 = !DILocation(line: 414, column: 24, scope: !744)
!772 = !DILocation(line: 414, column: 42, scope: !744)
!773 = !DILocation(line: 414, column: 67, scope: !744)
!774 = !DILocation(line: 414, column: 75, scope: !744)
!775 = !DILocation(line: 414, column: 62, scope: !776)
!776 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 1)
!777 = !DILocation(line: 414, column: 60, scope: !744)
!778 = !DILocation(line: 414, column: 5, scope: !744)
!779 = !DILocation(line: 414, column: 13, scope: !744)
!780 = !DILocation(line: 414, column: 17, scope: !744)
!781 = !DILocation(line: 415, column: 40, scope: !744)
!782 = !DILocation(line: 415, column: 46, scope: !744)
!783 = !DILocation(line: 415, column: 54, scope: !744)
!784 = !DILocation(line: 415, column: 44, scope: !744)
!785 = !DILocation(line: 415, column: 20, scope: !744)
!786 = !DILocation(line: 415, column: 5, scope: !744)
!787 = !DILocation(line: 415, column: 13, scope: !744)
!788 = !DILocation(line: 415, column: 17, scope: !744)
!789 = !DILocation(line: 416, column: 12, scope: !744)
!790 = !DILocation(line: 416, column: 12, scope: !776)
!791 = !DILocation(line: 416, column: 12, scope: !792)
!792 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 2)
!793 = !DILocation(line: 416, column: 12, scope: !794)
!794 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 3)
!795 = !DILocation(line: 416, column: 12, scope: !796)
!796 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 4)
!797 = !DILocation(line: 416, column: 12, scope: !798)
!798 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 5)
!799 = !DILocation(line: 416, column: 12, scope: !800)
!800 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 6)
!801 = !DILocation(line: 416, column: 5, scope: !800)
!802 = !DILocalVariable(name: "ix2", scope: !803, file: !1, line: 420, type: !98)
!803 = distinct !DILexicalBlock(scope: !740, file: !1, line: 419, column: 3)
!804 = !DILocation(line: 420, column: 18, scope: !803)
!805 = !DILocation(line: 420, column: 29, scope: !803)
!806 = !DILocation(line: 420, column: 31, scope: !803)
!807 = !DILocation(line: 420, column: 30, scope: !803)
!808 = !DILocation(line: 420, column: 27, scope: !803)
!809 = !DILocalVariable(name: "corrB", scope: !803, file: !1, line: 421, type: !98)
!810 = !DILocation(line: 421, column: 18, scope: !803)
!811 = !DILocation(line: 421, column: 36, scope: !803)
!812 = !DILocation(line: 421, column: 35, scope: !803)
!813 = !DILocation(line: 421, column: 54, scope: !803)
!814 = !DILocation(line: 421, column: 53, scope: !803)
!815 = !DILocation(line: 421, column: 47, scope: !803)
!816 = !DILocation(line: 421, column: 40, scope: !803)
!817 = !DILocation(line: 421, column: 30, scope: !803)
!818 = !DILocalVariable(name: "corrM", scope: !803, file: !1, line: 422, type: !98)
!819 = !DILocation(line: 422, column: 18, scope: !803)
!820 = !DILocation(line: 422, column: 36, scope: !803)
!821 = !DILocation(line: 422, column: 35, scope: !803)
!822 = !DILocation(line: 422, column: 53, scope: !803)
!823 = !DILocation(line: 422, column: 52, scope: !803)
!824 = !DILocation(line: 422, column: 59, scope: !803)
!825 = !DILocation(line: 422, column: 57, scope: !803)
!826 = !DILocation(line: 422, column: 47, scope: !803)
!827 = !DILocation(line: 422, column: 40, scope: !803)
!828 = !DILocation(line: 422, column: 30, scope: !803)
!829 = !DILocalVariable(name: "corrT", scope: !803, file: !1, line: 423, type: !98)
!830 = !DILocation(line: 423, column: 18, scope: !803)
!831 = !DILocation(line: 423, column: 32, scope: !803)
!832 = !DILocation(line: 423, column: 49, scope: !803)
!833 = !DILocation(line: 423, column: 48, scope: !803)
!834 = !DILocation(line: 423, column: 53, scope: !803)
!835 = !DILocation(line: 423, column: 52, scope: !803)
!836 = !DILocation(line: 423, column: 43, scope: !803)
!837 = !DILocation(line: 423, column: 36, scope: !803)
!838 = !DILocation(line: 423, column: 30, scope: !803)
!839 = !DILocation(line: 424, column: 19, scope: !803)
!840 = !DILocation(line: 424, column: 23, scope: !803)
!841 = !DILocation(line: 424, column: 21, scope: !803)
!842 = !DILocation(line: 424, column: 5, scope: !803)
!843 = !DILocation(line: 424, column: 13, scope: !803)
!844 = !DILocation(line: 424, column: 17, scope: !803)
!845 = !DILocation(line: 425, column: 48, scope: !803)
!846 = !DILocation(line: 425, column: 56, scope: !803)
!847 = !DILocation(line: 425, column: 43, scope: !803)
!848 = !DILocation(line: 425, column: 41, scope: !803)
!849 = !DILocation(line: 425, column: 5, scope: !803)
!850 = !DILocation(line: 425, column: 13, scope: !803)
!851 = !DILocation(line: 425, column: 17, scope: !803)
!852 = !DILocation(line: 426, column: 5, scope: !803)
!853 = !DILocation(line: 428, column: 1, scope: !734)
!854 = distinct !DISubprogram(name: "gsl_sf_erfc", scope: !1, file: !1, line: 436, type: !68, isLocal: false, isDefinition: true, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!855 = !DILocalVariable(name: "x", arg: 1, scope: !854, file: !1, line: 436, type: !49)
!856 = !DILocation(line: 436, column: 27, scope: !854)
!857 = !DILocalVariable(name: "result", scope: !854, file: !1, line: 438, type: !86)
!858 = !DILocation(line: 438, column: 3, scope: !854)
!859 = !DILocalVariable(name: "status", scope: !854, file: !1, line: 438, type: !51)
!860 = !DILocation(line: 438, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !854, file: !1, line: 438, column: 3)
!862 = !DILocation(line: 438, column: 3, scope: !863)
!863 = !DILexicalBlockFile(scope: !864, file: !1, discriminator: 1)
!864 = distinct !DILexicalBlock(scope: !861, file: !1, line: 438, column: 3)
!865 = distinct !{!865, !866}
!866 = !DILocation(line: 438, column: 3, scope: !864)
!867 = !DILocation(line: 438, column: 3, scope: !868)
!868 = !DILexicalBlockFile(scope: !869, file: !1, discriminator: 2)
!869 = distinct !DILexicalBlock(scope: !864, file: !1, line: 438, column: 3)
!870 = !DILocation(line: 438, column: 3, scope: !871)
!871 = !DILexicalBlockFile(scope: !864, file: !1, discriminator: 3)
!872 = !DILocation(line: 438, column: 3, scope: !873)
!873 = !DILexicalBlockFile(scope: !854, file: !1, discriminator: 4)
!874 = !DILocation(line: 439, column: 1, scope: !854)
!875 = distinct !DISubprogram(name: "gsl_sf_log_erfc", scope: !1, file: !1, line: 441, type: !68, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!876 = !DILocalVariable(name: "x", arg: 1, scope: !875, file: !1, line: 441, type: !49)
!877 = !DILocation(line: 441, column: 31, scope: !875)
!878 = !DILocalVariable(name: "result", scope: !875, file: !1, line: 443, type: !86)
!879 = !DILocation(line: 443, column: 3, scope: !875)
!880 = !DILocalVariable(name: "status", scope: !875, file: !1, line: 443, type: !51)
!881 = !DILocation(line: 443, column: 3, scope: !882)
!882 = distinct !DILexicalBlock(scope: !875, file: !1, line: 443, column: 3)
!883 = !DILocation(line: 443, column: 3, scope: !884)
!884 = !DILexicalBlockFile(scope: !885, file: !1, discriminator: 1)
!885 = distinct !DILexicalBlock(scope: !882, file: !1, line: 443, column: 3)
!886 = distinct !{!886, !887}
!887 = !DILocation(line: 443, column: 3, scope: !885)
!888 = !DILocation(line: 443, column: 3, scope: !889)
!889 = !DILexicalBlockFile(scope: !890, file: !1, discriminator: 2)
!890 = distinct !DILexicalBlock(scope: !885, file: !1, line: 443, column: 3)
!891 = !DILocation(line: 443, column: 3, scope: !892)
!892 = !DILexicalBlockFile(scope: !885, file: !1, discriminator: 3)
!893 = !DILocation(line: 443, column: 3, scope: !894)
!894 = !DILexicalBlockFile(scope: !875, file: !1, discriminator: 4)
!895 = !DILocation(line: 444, column: 1, scope: !875)
!896 = distinct !DISubprogram(name: "gsl_sf_erf", scope: !1, file: !1, line: 446, type: !68, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!897 = !DILocalVariable(name: "x", arg: 1, scope: !896, file: !1, line: 446, type: !49)
!898 = !DILocation(line: 446, column: 26, scope: !896)
!899 = !DILocalVariable(name: "result", scope: !896, file: !1, line: 448, type: !86)
!900 = !DILocation(line: 448, column: 3, scope: !896)
!901 = !DILocalVariable(name: "status", scope: !896, file: !1, line: 448, type: !51)
!902 = !DILocation(line: 448, column: 3, scope: !903)
!903 = distinct !DILexicalBlock(scope: !896, file: !1, line: 448, column: 3)
!904 = !DILocation(line: 448, column: 3, scope: !905)
!905 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 1)
!906 = distinct !DILexicalBlock(scope: !903, file: !1, line: 448, column: 3)
!907 = distinct !{!907, !908}
!908 = !DILocation(line: 448, column: 3, scope: !906)
!909 = !DILocation(line: 448, column: 3, scope: !910)
!910 = !DILexicalBlockFile(scope: !911, file: !1, discriminator: 2)
!911 = distinct !DILexicalBlock(scope: !906, file: !1, line: 448, column: 3)
!912 = !DILocation(line: 448, column: 3, scope: !913)
!913 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 3)
!914 = !DILocation(line: 448, column: 3, scope: !915)
!915 = !DILexicalBlockFile(scope: !896, file: !1, discriminator: 4)
!916 = !DILocation(line: 449, column: 1, scope: !896)
!917 = distinct !DISubprogram(name: "gsl_sf_erf_Z", scope: !1, file: !1, line: 451, type: !68, isLocal: false, isDefinition: true, scopeLine: 452, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!918 = !DILocalVariable(name: "x", arg: 1, scope: !917, file: !1, line: 451, type: !49)
!919 = !DILocation(line: 451, column: 28, scope: !917)
!920 = !DILocalVariable(name: "result", scope: !917, file: !1, line: 453, type: !86)
!921 = !DILocation(line: 453, column: 3, scope: !917)
!922 = !DILocalVariable(name: "status", scope: !917, file: !1, line: 453, type: !51)
!923 = !DILocation(line: 453, column: 3, scope: !924)
!924 = distinct !DILexicalBlock(scope: !917, file: !1, line: 453, column: 3)
!925 = !DILocation(line: 453, column: 3, scope: !926)
!926 = !DILexicalBlockFile(scope: !927, file: !1, discriminator: 1)
!927 = distinct !DILexicalBlock(scope: !924, file: !1, line: 453, column: 3)
!928 = distinct !{!928, !929}
!929 = !DILocation(line: 453, column: 3, scope: !927)
!930 = !DILocation(line: 453, column: 3, scope: !931)
!931 = !DILexicalBlockFile(scope: !932, file: !1, discriminator: 2)
!932 = distinct !DILexicalBlock(scope: !927, file: !1, line: 453, column: 3)
!933 = !DILocation(line: 453, column: 3, scope: !934)
!934 = !DILexicalBlockFile(scope: !927, file: !1, discriminator: 3)
!935 = !DILocation(line: 453, column: 3, scope: !936)
!936 = !DILexicalBlockFile(scope: !917, file: !1, discriminator: 4)
!937 = !DILocation(line: 454, column: 1, scope: !917)
!938 = distinct !DISubprogram(name: "gsl_sf_erf_Q", scope: !1, file: !1, line: 456, type: !68, isLocal: false, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!939 = !DILocalVariable(name: "x", arg: 1, scope: !938, file: !1, line: 456, type: !49)
!940 = !DILocation(line: 456, column: 28, scope: !938)
!941 = !DILocalVariable(name: "result", scope: !938, file: !1, line: 458, type: !86)
!942 = !DILocation(line: 458, column: 3, scope: !938)
!943 = !DILocalVariable(name: "status", scope: !938, file: !1, line: 458, type: !51)
!944 = !DILocation(line: 458, column: 3, scope: !945)
!945 = distinct !DILexicalBlock(scope: !938, file: !1, line: 458, column: 3)
!946 = !DILocation(line: 458, column: 3, scope: !947)
!947 = !DILexicalBlockFile(scope: !948, file: !1, discriminator: 1)
!948 = distinct !DILexicalBlock(scope: !945, file: !1, line: 458, column: 3)
!949 = distinct !{!949, !950}
!950 = !DILocation(line: 458, column: 3, scope: !948)
!951 = !DILocation(line: 458, column: 3, scope: !952)
!952 = !DILexicalBlockFile(scope: !953, file: !1, discriminator: 2)
!953 = distinct !DILexicalBlock(scope: !948, file: !1, line: 458, column: 3)
!954 = !DILocation(line: 458, column: 3, scope: !955)
!955 = !DILexicalBlockFile(scope: !948, file: !1, discriminator: 3)
!956 = !DILocation(line: 458, column: 3, scope: !957)
!957 = !DILexicalBlockFile(scope: !938, file: !1, discriminator: 4)
!958 = !DILocation(line: 459, column: 1, scope: !938)
!959 = distinct !DISubprogram(name: "gsl_sf_hazard", scope: !1, file: !1, line: 461, type: !68, isLocal: false, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !70)
!960 = !DILocalVariable(name: "x", arg: 1, scope: !959, file: !1, line: 461, type: !49)
!961 = !DILocation(line: 461, column: 29, scope: !959)
!962 = !DILocalVariable(name: "result", scope: !959, file: !1, line: 463, type: !86)
!963 = !DILocation(line: 463, column: 3, scope: !959)
!964 = !DILocalVariable(name: "status", scope: !959, file: !1, line: 463, type: !51)
!965 = !DILocation(line: 463, column: 3, scope: !966)
!966 = distinct !DILexicalBlock(scope: !959, file: !1, line: 463, column: 3)
!967 = !DILocation(line: 463, column: 3, scope: !968)
!968 = !DILexicalBlockFile(scope: !969, file: !1, discriminator: 1)
!969 = distinct !DILexicalBlock(scope: !966, file: !1, line: 463, column: 3)
!970 = distinct !{!970, !971}
!971 = !DILocation(line: 463, column: 3, scope: !969)
!972 = !DILocation(line: 463, column: 3, scope: !973)
!973 = !DILexicalBlockFile(scope: !974, file: !1, discriminator: 2)
!974 = distinct !DILexicalBlock(scope: !969, file: !1, line: 463, column: 3)
!975 = !DILocation(line: 463, column: 3, scope: !976)
!976 = !DILexicalBlockFile(scope: !969, file: !1, discriminator: 3)
!977 = !DILocation(line: 463, column: 3, scope: !978)
!978 = !DILexicalBlockFile(scope: !959, file: !1, discriminator: 4)
!979 = !DILocation(line: 464, column: 1, scope: !959)
!980 = !DILocalVariable(name: "x", arg: 1, scope: !67, file: !1, line: 43, type: !49)
!981 = !DILocation(line: 43, column: 32, scope: !67)
!982 = !DILocalVariable(name: "num", scope: !67, file: !1, line: 65, type: !49)
!983 = !DILocation(line: 65, column: 10, scope: !67)
!984 = !DILocalVariable(name: "den", scope: !67, file: !1, line: 65, type: !49)
!985 = !DILocation(line: 65, column: 19, scope: !67)
!986 = !DILocalVariable(name: "i", scope: !67, file: !1, line: 66, type: !51)
!987 = !DILocation(line: 66, column: 7, scope: !67)
!988 = !DILocation(line: 68, column: 9, scope: !67)
!989 = !DILocation(line: 68, column: 7, scope: !67)
!990 = !DILocation(line: 69, column: 9, scope: !991)
!991 = distinct !DILexicalBlock(scope: !67, file: !1, line: 69, column: 3)
!992 = !DILocation(line: 69, column: 8, scope: !991)
!993 = !DILocation(line: 69, column: 13, scope: !994)
!994 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 1)
!995 = distinct !DILexicalBlock(scope: !991, file: !1, line: 69, column: 3)
!996 = !DILocation(line: 69, column: 14, scope: !994)
!997 = !DILocation(line: 69, column: 3, scope: !994)
!998 = !DILocation(line: 70, column: 13, scope: !999)
!999 = distinct !DILexicalBlock(scope: !995, file: !1, line: 69, column: 24)
!1000 = !DILocation(line: 70, column: 15, scope: !999)
!1001 = !DILocation(line: 70, column: 14, scope: !999)
!1002 = !DILocation(line: 70, column: 23, scope: !999)
!1003 = !DILocation(line: 70, column: 21, scope: !999)
!1004 = !DILocation(line: 70, column: 19, scope: !999)
!1005 = !DILocation(line: 70, column: 11, scope: !999)
!1006 = !DILocation(line: 71, column: 3, scope: !999)
!1007 = !DILocation(line: 69, column: 19, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 2)
!1009 = !DILocation(line: 69, column: 3, scope: !1008)
!1010 = distinct !{!1010, !1011}
!1011 = !DILocation(line: 69, column: 3, scope: !67)
!1012 = !DILocation(line: 72, column: 9, scope: !67)
!1013 = !DILocation(line: 72, column: 7, scope: !67)
!1014 = !DILocation(line: 73, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !67, file: !1, line: 73, column: 3)
!1016 = !DILocation(line: 73, column: 8, scope: !1015)
!1017 = !DILocation(line: 73, column: 13, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1019, file: !1, discriminator: 1)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 73, column: 3)
!1020 = !DILocation(line: 73, column: 14, scope: !1018)
!1021 = !DILocation(line: 73, column: 3, scope: !1018)
!1022 = !DILocation(line: 74, column: 13, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 73, column: 24)
!1024 = !DILocation(line: 74, column: 15, scope: !1023)
!1025 = !DILocation(line: 74, column: 14, scope: !1023)
!1026 = !DILocation(line: 74, column: 23, scope: !1023)
!1027 = !DILocation(line: 74, column: 21, scope: !1023)
!1028 = !DILocation(line: 74, column: 19, scope: !1023)
!1029 = !DILocation(line: 74, column: 11, scope: !1023)
!1030 = !DILocation(line: 75, column: 3, scope: !1023)
!1031 = !DILocation(line: 73, column: 19, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1019, file: !1, discriminator: 2)
!1033 = !DILocation(line: 73, column: 3, scope: !1032)
!1034 = distinct !{!1034, !1035}
!1035 = !DILocation(line: 73, column: 3, scope: !67)
!1036 = !DILocation(line: 77, column: 10, scope: !67)
!1037 = !DILocation(line: 77, column: 14, scope: !67)
!1038 = !DILocation(line: 77, column: 13, scope: !67)
!1039 = !DILocation(line: 77, column: 3, scope: !67)
