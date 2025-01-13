; ModuleID = 'expint.c'
source_filename = "expint.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [31 x i8] c"gsl_sf_expint_E1_e(x, &result)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"expint.c\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"gsl_sf_expint_E1_scaled_e(x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"gsl_sf_expint_E2_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"gsl_sf_expint_E2_scaled_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"gsl_sf_expint_En_e(n, x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"gsl_sf_expint_En_scaled_e(n, x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"gsl_sf_expint_Ei_e(x, &result)\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"gsl_sf_expint_Ei_scaled_e(x, &result)\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@AE11_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([39 x double], [39 x double]* @AE11_data, i32 0, i32 0), i32 38, double -1.000000e+00, double 1.000000e+00, i32 20 }, align 8
@AE12_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([25 x double], [25 x double]* @AE12_data, i32 0, i32 0), i32 24, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8
@E11_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([19 x double], [19 x double]* @E11_data, i32 0, i32 0), i32 18, double -1.000000e+00, double 1.000000e+00, i32 13 }, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@E12_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([16 x double], [16 x double]* @E12_data, i32 0, i32 0), i32 15, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@AE13_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([25 x double], [25 x double]* @AE13_data, i32 0, i32 0), i32 24, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8
@AE14_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([26 x double], [26 x double]* @AE14_data, i32 0, i32 0), i32 25, double -1.000000e+00, double 1.000000e+00, i32 13 }, align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@AE11_data = internal global [39 x double] [double 0x3FBF1AD618F044DF, double 0xBFB0A9A87F0D6293, double 0x3F740F8F46851DF9, double 0xBF454633A6CCE18E, double 0x3F18998663F01ADE, double 0x3E9C339B261640BC, double 0xBEE103D5BB9AAB3D, double 0x3EC78613786DBCF4, double 0x3E6E53896974958F, double 0xBE9723C6C96448E2, double 0x3E6F4038BD973D1B, double 0x3E64C8753A8F884E, double 0xBE4ABE3D048C8226, double 0xBE35FBDB0B4CF7A6, double 0x3E227532D4BEE2DB, double 0x3E0DD70DD6257CBA, double 0xBDF79D8E7C1D6A26, double 0xBDE8B607D41BA0A3, double 4.744206e-11, double 0x3DC6391238D631A5, double -3.543928e-12, double -8.853444e-12, double -9.601510e-13, double 1.692921e-12, double 6.079900e-13, double -2.243380e-13, double -2.003270e-13, double -6.246000e-15, double 4.557100e-14, double 1.638300e-14, double -5.561000e-15, double -6.074000e-15, double -8.620000e-16, double 1.223000e-15, double 7.160000e-16, double -2.400000e-17, double -2.010000e-16, double -8.200000e-17, double 1.700000e-17], align 16
@AE12_data = internal global [25 x double] [double 0x3FE2A32A03C719BA, double 0xBFC444C66FFFF02B, double 0xBF7BB4DB6710AAA4, double 0x3F74FED642164FBE, double 0x3F3C85FD51ED19A0, double 0xBF22D2DD6C505977, double 0xBF05EA7A701079D6, double 0xBEC6C2F917FC2887, double 0x3EB35125CD543029, double 0x3E9C3AB65C98BE9D, double 0x3E71DF79324B4BE3, double 0x3E06C0473BD28C1A, double 0xBE286E40B43F5CA9, double 0xBE1029594928050C, double 0xBDE864671E054CAB, double 0xBDB167CFB5DD2F89, double 2.905732e-12, double 1.769356e-12, double 4.927350e-13, double 9.370900e-14, double 1.070700e-14, double -5.370000e-16, double -7.160000e-16, double -2.440000e-16, double -5.800000e-17], align 16
@E11_data = internal global [19 x double] [double 0xC0301D0BD2B40793, double 0x401F2D216A1D5FE7, double 0xBFFF49579CA6CE02, double 0x3FD7E5579C3127C2, double 0xBFAD25471CC32C31, double 0x3F7D895CF3089CDB, double 0xBF4997E9FCA6E946, double 0x3F135E10C6179A12, double 0xBEDA0445B08214F5, double 0x3E9F6AED8E51A362, double 0xBE613AD021ADF608, double 0x3E214F789ACCD237, double 0xBDE00B503B5D3E9D, double 0x3D9B9A73DA68CF00, double 0xBD562735D31E6432, double 1.479904e-14, double -6.545700e-16, double 2.733000e-17, double -1.080000e-18], align 16
@E12_data = internal global [16 x double] [double 0xBFA324CF6B72236A, double 0x3FA5DFEB15C8ADAA, double 0xBFC0AE445CAF33EF, double 0x3F8D87C610FC0172, double 0xBF560E3FDE8933CC, double 0x3F1C2178C9AB7FF5, double 0xBEDF29E6B730A23C, double 0x3E9E73C3E3AE0B72, double 0xBE5A971FB1379A1F, double 0x3E14F8FC1DAFFB75, double 0xBDCE27A67D72C000, double 0x3D83E938E81DB5D9, double -8.635897e-14, double 3.062910e-15, double -1.014800e-16, double 3.150000e-18], align 16
@AE13_data = internal global [25 x double] [double 0xBFE3627E93639ECB, double 0xBFBCCF1C1668E374, double 0x3F8B826041F79E1F, double 0xBF5F91C6441CC96F, double 0x3F34422526AEBE51, double 0xBF0C154190DDAF92, double 0x3EE49C445132B1D8, double 0xBEBFA1991F1EC704, double 0x3E9929799AB5A0F3, double 0xBE749F44873ABCF5, double 0x3E51556DAD3D8637, double 0xBE2DC79424A8F98F, double 0x3E0A121296222EF5, double 0xBDE73562B1C0EAD6, double 0x3DC4F887E60BE657, double -8.733026e-12, double 2.023672e-12, double -4.741320e-13, double 1.122110e-13, double -2.680400e-14, double 6.457000e-15, double -1.568000e-15, double 3.830000e-16, double -9.400000e-17, double 2.300000e-17], align 16
@AE14_data = internal global [26 x double] [double 0xBFC83AB6B55CB8D9, double 0xBFB623A1699A5ACE, double 0x3F7D9704FDF957C5, double 0xBF4A88B9A7027465, double 0x3F1CD564E82AD33F, double 0xBEF201EE402CD659, double 0x3EC90B96158D12D3, double 0xBEA2FD9A024B975C, double 0x3E7EF1299403D73D, double 0xBE5ACA499664FCC2, double 0x3E3872C6D255FBC4, double 0xBE175D2833E46755, double 0x3DF7425C9CCBD929, double -8.737853e-11, double 2.331588e-11, double -6.411480e-12, double 1.812240e-12, double -5.253800e-13, double 1.559200e-13, double -4.729000e-14, double 1.463000e-14, double -4.610000e-15, double 1.480000e-15, double -4.800000e-16, double 1.600000e-16, double -5.000000e-17], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_expint_E1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !85 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !97, metadata !98), !dbg !99
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !100, metadata !98), !dbg !101
  %5 = load double, double* %3, align 8, !dbg !102
  %6 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !103
  %7 = call i32 @expint_E1_impl(double %5, %struct.gsl_sf_result_struct* %6, i32 0), !dbg !104
  ret i32 %7, !dbg !105
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @expint_E1_impl(double, %struct.gsl_sf_result_struct*, i32) #0 !dbg !106 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca double, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca double, align 8
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !110, metadata !98), !dbg !111
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !112, metadata !98), !dbg !113
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !114, metadata !98), !dbg !115
  call void @llvm.dbg.declare(metadata double* %8, metadata !116, metadata !98), !dbg !117
  store double 0x4086232BDD7ABCD2, double* %8, align 8, !dbg !117
  call void @llvm.dbg.declare(metadata double* %9, metadata !118, metadata !98), !dbg !119
  %24 = call double @log(double 0x4086232BDD7ABCD2) #6, !dbg !120
  %25 = fsub double 0x4086232BDD7ABCD2, %24, !dbg !121
  store double %25, double* %9, align 8, !dbg !119
  %26 = load double, double* %5, align 8, !dbg !122
  %27 = load double, double* %9, align 8, !dbg !124
  %28 = fsub double -0.000000e+00, %27, !dbg !125
  %29 = fcmp olt double %26, %28, !dbg !126
  br i1 %29, label %30, label %42, !dbg !127

; <label>:30:                                     ; preds = %3
  %31 = load i32, i32* %7, align 4, !dbg !128
  %32 = icmp ne i32 %31, 0, !dbg !128
  br i1 %32, label %42, label %33, !dbg !130

; <label>:33:                                     ; preds = %30
  br label %34, !dbg !131, !llvm.loop !133

; <label>:34:                                     ; preds = %33
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !134
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !134
  store double 0x7FF0000000000000, double* %36, align 8, !dbg !134
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !134
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !134
  store double 0x7FF0000000000000, double* %38, align 8, !dbg !134
  br label %39, !dbg !134, !llvm.loop !137

; <label>:39:                                     ; preds = %34
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 298, i32 16), !dbg !139
  store i32 16, i32* %4, align 4, !dbg !139
  br label %364, !dbg !139
                                                  ; No predecessors!
  br label %41, !dbg !142

; <label>:41:                                     ; preds = %40
  br label %364, !dbg !144

; <label>:42:                                     ; preds = %30, %3
  %43 = load double, double* %5, align 8, !dbg !145
  %44 = fcmp ole double %43, -1.000000e+01, !dbg !147
  br i1 %44, label %45, label %88, !dbg !148

; <label>:45:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata double* %10, metadata !149, metadata !98), !dbg !151
  %46 = load double, double* %5, align 8, !dbg !152
  %47 = fdiv double 1.000000e+00, %46, !dbg !153
  %48 = load i32, i32* %7, align 4, !dbg !154
  %49 = icmp ne i32 %48, 0, !dbg !154
  br i1 %49, label %50, label %51, !dbg !154

; <label>:50:                                     ; preds = %45
  br label %55, !dbg !155

; <label>:51:                                     ; preds = %45
  %52 = load double, double* %5, align 8, !dbg !157
  %53 = fsub double -0.000000e+00, %52, !dbg !159
  %54 = call double @exp(double %53) #6, !dbg !160
  br label %55, !dbg !161

; <label>:55:                                     ; preds = %51, %50
  %56 = phi double [ 1.000000e+00, %50 ], [ %54, %51 ], !dbg !162
  %57 = fmul double %47, %56, !dbg !164
  store double %57, double* %10, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !166, metadata !98), !dbg !167
  %58 = load double, double* %5, align 8, !dbg !168
  %59 = fdiv double 2.000000e+01, %58, !dbg !169
  %60 = fadd double %59, 1.000000e+00, !dbg !170
  %61 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @AE11_cs, double %60, %struct.gsl_sf_result_struct* %11), !dbg !171
  %62 = load double, double* %10, align 8, !dbg !172
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !173
  %64 = load double, double* %63, align 8, !dbg !173
  %65 = fadd double 1.000000e+00, %64, !dbg !174
  %66 = fmul double %62, %65, !dbg !175
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !176
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !177
  store double %66, double* %68, align 8, !dbg !178
  %69 = load double, double* %10, align 8, !dbg !179
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !180
  %71 = load double, double* %70, align 8, !dbg !180
  %72 = fmul double %69, %71, !dbg !181
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !182
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !183
  store double %72, double* %74, align 8, !dbg !184
  %75 = load double, double* %5, align 8, !dbg !185
  %76 = call double @fabs(double %75) #1, !dbg !186
  %77 = fadd double %76, 1.000000e+00, !dbg !187
  %78 = fmul double 0x3CC0000000000000, %77, !dbg !188
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !189
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !190
  %81 = load double, double* %80, align 8, !dbg !190
  %82 = call double @fabs(double %81) #1, !dbg !191
  %83 = fmul double %78, %82, !dbg !192
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !193
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !194
  %86 = load double, double* %85, align 8, !dbg !195
  %87 = fadd double %86, %83, !dbg !195
  store double %87, double* %85, align 8, !dbg !195
  store i32 0, i32* %4, align 4, !dbg !196
  br label %364, !dbg !196

; <label>:88:                                     ; preds = %42
  %89 = load double, double* %5, align 8, !dbg !197
  %90 = fcmp ole double %89, -4.000000e+00, !dbg !199
  br i1 %90, label %91, label %131, !dbg !200

; <label>:91:                                     ; preds = %88
  call void @llvm.dbg.declare(metadata double* %12, metadata !201, metadata !98), !dbg !203
  %92 = load double, double* %5, align 8, !dbg !204
  %93 = fdiv double 1.000000e+00, %92, !dbg !205
  %94 = load i32, i32* %7, align 4, !dbg !206
  %95 = icmp ne i32 %94, 0, !dbg !206
  br i1 %95, label %96, label %97, !dbg !206

; <label>:96:                                     ; preds = %91
  br label %101, !dbg !207

; <label>:97:                                     ; preds = %91
  %98 = load double, double* %5, align 8, !dbg !209
  %99 = fsub double -0.000000e+00, %98, !dbg !211
  %100 = call double @exp(double %99) #6, !dbg !212
  br label %101, !dbg !213

; <label>:101:                                    ; preds = %97, %96
  %102 = phi double [ 1.000000e+00, %96 ], [ %100, %97 ], !dbg !214
  %103 = fmul double %93, %102, !dbg !216
  store double %103, double* %12, align 8, !dbg !217
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !218, metadata !98), !dbg !219
  %104 = load double, double* %5, align 8, !dbg !220
  %105 = fdiv double 4.000000e+01, %104, !dbg !221
  %106 = fadd double %105, 7.000000e+00, !dbg !222
  %107 = fdiv double %106, 3.000000e+00, !dbg !223
  %108 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @AE12_cs, double %107, %struct.gsl_sf_result_struct* %13), !dbg !224
  %109 = load double, double* %12, align 8, !dbg !225
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !226
  %111 = load double, double* %110, align 8, !dbg !226
  %112 = fadd double 1.000000e+00, %111, !dbg !227
  %113 = fmul double %109, %112, !dbg !228
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !229
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !230
  store double %113, double* %115, align 8, !dbg !231
  %116 = load double, double* %12, align 8, !dbg !232
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !233
  %118 = load double, double* %117, align 8, !dbg !233
  %119 = fmul double %116, %118, !dbg !234
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !235
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 1, !dbg !236
  store double %119, double* %121, align 8, !dbg !237
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !238
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 0, !dbg !239
  %124 = load double, double* %123, align 8, !dbg !239
  %125 = call double @fabs(double %124) #1, !dbg !240
  %126 = fmul double 0x3CC0000000000000, %125, !dbg !241
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !242
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !243
  %129 = load double, double* %128, align 8, !dbg !244
  %130 = fadd double %129, %126, !dbg !244
  store double %130, double* %128, align 8, !dbg !244
  store i32 0, i32* %4, align 4, !dbg !245
  br label %364, !dbg !245

; <label>:131:                                    ; preds = %88
  %132 = load double, double* %5, align 8, !dbg !246
  %133 = fcmp ole double %132, -1.000000e+00, !dbg !248
  br i1 %133, label %134, label %179, !dbg !249

; <label>:134:                                    ; preds = %131
  call void @llvm.dbg.declare(metadata double* %14, metadata !250, metadata !98), !dbg !252
  %135 = load double, double* %5, align 8, !dbg !253
  %136 = call double @fabs(double %135) #1, !dbg !254
  %137 = call double @log(double %136) #6, !dbg !255
  %138 = fsub double -0.000000e+00, %137, !dbg !257
  store double %138, double* %14, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata double* %15, metadata !258, metadata !98), !dbg !259
  %139 = load i32, i32* %7, align 4, !dbg !260
  %140 = icmp ne i32 %139, 0, !dbg !260
  br i1 %140, label %141, label %144, !dbg !260

; <label>:141:                                    ; preds = %134
  %142 = load double, double* %5, align 8, !dbg !261
  %143 = call double @exp(double %142) #6, !dbg !262
  br label %145, !dbg !263

; <label>:144:                                    ; preds = %134
  br label %145, !dbg !264

; <label>:145:                                    ; preds = %144, %141
  %146 = phi double [ %143, %141 ], [ 1.000000e+00, %144 ], !dbg !266
  store double %146, double* %15, align 8, !dbg !268
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !269, metadata !98), !dbg !270
  %147 = load double, double* %5, align 8, !dbg !271
  %148 = fmul double 2.000000e+00, %147, !dbg !272
  %149 = fadd double %148, 5.000000e+00, !dbg !273
  %150 = fdiv double %149, 3.000000e+00, !dbg !274
  %151 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @E11_cs, double %150, %struct.gsl_sf_result_struct* %16), !dbg !275
  %152 = load double, double* %15, align 8, !dbg !276
  %153 = load double, double* %14, align 8, !dbg !277
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !278
  %155 = load double, double* %154, align 8, !dbg !278
  %156 = fadd double %153, %155, !dbg !279
  %157 = fmul double %152, %156, !dbg !280
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !281
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 0, !dbg !282
  store double %157, double* %159, align 8, !dbg !283
  %160 = load double, double* %15, align 8, !dbg !284
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !285
  %162 = load double, double* %161, align 8, !dbg !285
  %163 = load double, double* %14, align 8, !dbg !286
  %164 = call double @fabs(double %163) #1, !dbg !287
  %165 = fmul double 0x3CB0000000000000, %164, !dbg !288
  %166 = fadd double %162, %165, !dbg !289
  %167 = fmul double %160, %166, !dbg !290
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !291
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 1, !dbg !292
  store double %167, double* %169, align 8, !dbg !293
  %170 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !294
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %170, i32 0, i32 0, !dbg !295
  %172 = load double, double* %171, align 8, !dbg !295
  %173 = call double @fabs(double %172) #1, !dbg !296
  %174 = fmul double 0x3CC0000000000000, %173, !dbg !297
  %175 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !298
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %175, i32 0, i32 1, !dbg !299
  %177 = load double, double* %176, align 8, !dbg !300
  %178 = fadd double %177, %174, !dbg !300
  store double %178, double* %176, align 8, !dbg !300
  store i32 0, i32* %4, align 4, !dbg !301
  br label %364, !dbg !301

; <label>:179:                                    ; preds = %131
  %180 = load double, double* %5, align 8, !dbg !302
  %181 = fcmp oeq double %180, 0.000000e+00, !dbg !304
  br i1 %181, label %182, label %191, !dbg !305

; <label>:182:                                    ; preds = %179
  br label %183, !dbg !306, !llvm.loop !308

; <label>:183:                                    ; preds = %182
  %184 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !309
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %184, i32 0, i32 0, !dbg !309
  store double 0x7FF8000000000000, double* %185, align 8, !dbg !309
  %186 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !309
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %186, i32 0, i32 1, !dbg !309
  store double 0x7FF8000000000000, double* %187, align 8, !dbg !309
  br label %188, !dbg !309, !llvm.loop !312

; <label>:188:                                    ; preds = %183
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 329, i32 1), !dbg !314
  store i32 1, i32* %4, align 4, !dbg !314
  br label %364, !dbg !314
                                                  ; No predecessors!
  br label %190, !dbg !317

; <label>:190:                                    ; preds = %189
  br label %360, !dbg !319

; <label>:191:                                    ; preds = %179
  %192 = load double, double* %5, align 8, !dbg !320
  %193 = fcmp ole double %192, 1.000000e+00, !dbg !322
  br i1 %193, label %194, label %239, !dbg !323

; <label>:194:                                    ; preds = %191
  call void @llvm.dbg.declare(metadata double* %17, metadata !324, metadata !98), !dbg !326
  %195 = load double, double* %5, align 8, !dbg !327
  %196 = call double @fabs(double %195) #1, !dbg !328
  %197 = call double @log(double %196) #6, !dbg !329
  %198 = fsub double -0.000000e+00, %197, !dbg !331
  store double %198, double* %17, align 8, !dbg !326
  call void @llvm.dbg.declare(metadata double* %18, metadata !332, metadata !98), !dbg !333
  %199 = load i32, i32* %7, align 4, !dbg !334
  %200 = icmp ne i32 %199, 0, !dbg !334
  br i1 %200, label %201, label %204, !dbg !334

; <label>:201:                                    ; preds = %194
  %202 = load double, double* %5, align 8, !dbg !335
  %203 = call double @exp(double %202) #6, !dbg !336
  br label %205, !dbg !337

; <label>:204:                                    ; preds = %194
  br label %205, !dbg !338

; <label>:205:                                    ; preds = %204, %201
  %206 = phi double [ %203, %201 ], [ 1.000000e+00, %204 ], !dbg !340
  store double %206, double* %18, align 8, !dbg !342
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !343, metadata !98), !dbg !344
  %207 = load double, double* %5, align 8, !dbg !345
  %208 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @E12_cs, double %207, %struct.gsl_sf_result_struct* %19), !dbg !346
  %209 = load double, double* %18, align 8, !dbg !347
  %210 = load double, double* %17, align 8, !dbg !348
  %211 = fsub double %210, 6.875000e-01, !dbg !349
  %212 = load double, double* %5, align 8, !dbg !350
  %213 = fadd double %211, %212, !dbg !351
  %214 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !352
  %215 = load double, double* %214, align 8, !dbg !352
  %216 = fadd double %213, %215, !dbg !353
  %217 = fmul double %209, %216, !dbg !354
  %218 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !355
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %218, i32 0, i32 0, !dbg !356
  store double %217, double* %219, align 8, !dbg !357
  %220 = load double, double* %18, align 8, !dbg !358
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !359
  %222 = load double, double* %221, align 8, !dbg !359
  %223 = load double, double* %17, align 8, !dbg !360
  %224 = call double @fabs(double %223) #1, !dbg !361
  %225 = fmul double 0x3CB0000000000000, %224, !dbg !362
  %226 = fadd double %222, %225, !dbg !363
  %227 = fmul double %220, %226, !dbg !364
  %228 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !365
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %228, i32 0, i32 1, !dbg !366
  store double %227, double* %229, align 8, !dbg !367
  %230 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !368
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %230, i32 0, i32 0, !dbg !369
  %232 = load double, double* %231, align 8, !dbg !369
  %233 = call double @fabs(double %232) #1, !dbg !370
  %234 = fmul double 0x3CC0000000000000, %233, !dbg !371
  %235 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !372
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %235, i32 0, i32 1, !dbg !373
  %237 = load double, double* %236, align 8, !dbg !374
  %238 = fadd double %237, %234, !dbg !374
  store double %238, double* %236, align 8, !dbg !374
  store i32 0, i32* %4, align 4, !dbg !375
  br label %364, !dbg !375

; <label>:239:                                    ; preds = %191
  %240 = load double, double* %5, align 8, !dbg !376
  %241 = fcmp ole double %240, 4.000000e+00, !dbg !378
  br i1 %241, label %242, label %282, !dbg !379

; <label>:242:                                    ; preds = %239
  call void @llvm.dbg.declare(metadata double* %20, metadata !380, metadata !98), !dbg !382
  %243 = load double, double* %5, align 8, !dbg !383
  %244 = fdiv double 1.000000e+00, %243, !dbg !384
  %245 = load i32, i32* %7, align 4, !dbg !385
  %246 = icmp ne i32 %245, 0, !dbg !385
  br i1 %246, label %247, label %248, !dbg !385

; <label>:247:                                    ; preds = %242
  br label %252, !dbg !386

; <label>:248:                                    ; preds = %242
  %249 = load double, double* %5, align 8, !dbg !388
  %250 = fsub double -0.000000e+00, %249, !dbg !390
  %251 = call double @exp(double %250) #6, !dbg !391
  br label %252, !dbg !392

; <label>:252:                                    ; preds = %248, %247
  %253 = phi double [ 1.000000e+00, %247 ], [ %251, %248 ], !dbg !393
  %254 = fmul double %244, %253, !dbg !395
  store double %254, double* %20, align 8, !dbg !396
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !397, metadata !98), !dbg !398
  %255 = load double, double* %5, align 8, !dbg !399
  %256 = fdiv double 8.000000e+00, %255, !dbg !400
  %257 = fsub double %256, 5.000000e+00, !dbg !401
  %258 = fdiv double %257, 3.000000e+00, !dbg !402
  %259 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @AE13_cs, double %258, %struct.gsl_sf_result_struct* %21), !dbg !403
  %260 = load double, double* %20, align 8, !dbg !404
  %261 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !405
  %262 = load double, double* %261, align 8, !dbg !405
  %263 = fadd double 1.000000e+00, %262, !dbg !406
  %264 = fmul double %260, %263, !dbg !407
  %265 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !408
  %266 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %265, i32 0, i32 0, !dbg !409
  store double %264, double* %266, align 8, !dbg !410
  %267 = load double, double* %20, align 8, !dbg !411
  %268 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !412
  %269 = load double, double* %268, align 8, !dbg !412
  %270 = fmul double %267, %269, !dbg !413
  %271 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !414
  %272 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %271, i32 0, i32 1, !dbg !415
  store double %270, double* %272, align 8, !dbg !416
  %273 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !417
  %274 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %273, i32 0, i32 0, !dbg !418
  %275 = load double, double* %274, align 8, !dbg !418
  %276 = call double @fabs(double %275) #1, !dbg !419
  %277 = fmul double 0x3CC0000000000000, %276, !dbg !420
  %278 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !421
  %279 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %278, i32 0, i32 1, !dbg !422
  %280 = load double, double* %279, align 8, !dbg !423
  %281 = fadd double %280, %277, !dbg !423
  store double %281, double* %279, align 8, !dbg !423
  store i32 0, i32* %4, align 4, !dbg !424
  br label %364, !dbg !424

; <label>:282:                                    ; preds = %239
  %283 = load double, double* %5, align 8, !dbg !425
  %284 = load double, double* %9, align 8, !dbg !427
  %285 = fcmp ole double %283, %284, !dbg !428
  br i1 %285, label %289, label %286, !dbg !429

; <label>:286:                                    ; preds = %282
  %287 = load i32, i32* %7, align 4, !dbg !430
  %288 = icmp ne i32 %287, 0, !dbg !430
  br i1 %288, label %289, label %348, !dbg !432

; <label>:289:                                    ; preds = %286, %282
  call void @llvm.dbg.declare(metadata double* %22, metadata !433, metadata !98), !dbg !435
  %290 = load double, double* %5, align 8, !dbg !436
  %291 = fdiv double 1.000000e+00, %290, !dbg !437
  %292 = load i32, i32* %7, align 4, !dbg !438
  %293 = icmp ne i32 %292, 0, !dbg !438
  br i1 %293, label %294, label %295, !dbg !438

; <label>:294:                                    ; preds = %289
  br label %299, !dbg !439

; <label>:295:                                    ; preds = %289
  %296 = load double, double* %5, align 8, !dbg !441
  %297 = fsub double -0.000000e+00, %296, !dbg !443
  %298 = call double @exp(double %297) #6, !dbg !444
  br label %299, !dbg !445

; <label>:299:                                    ; preds = %295, %294
  %300 = phi double [ 1.000000e+00, %294 ], [ %298, %295 ], !dbg !446
  %301 = fmul double %291, %300, !dbg !448
  store double %301, double* %22, align 8, !dbg !449
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !450, metadata !98), !dbg !451
  %302 = load double, double* %5, align 8, !dbg !452
  %303 = fdiv double 8.000000e+00, %302, !dbg !453
  %304 = fsub double %303, 1.000000e+00, !dbg !454
  %305 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @AE14_cs, double %304, %struct.gsl_sf_result_struct* %23), !dbg !455
  %306 = load double, double* %22, align 8, !dbg !456
  %307 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !457
  %308 = load double, double* %307, align 8, !dbg !457
  %309 = fadd double 1.000000e+00, %308, !dbg !458
  %310 = fmul double %306, %309, !dbg !459
  %311 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !460
  %312 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %311, i32 0, i32 0, !dbg !461
  store double %310, double* %312, align 8, !dbg !462
  %313 = load double, double* %22, align 8, !dbg !463
  %314 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !464
  %315 = load double, double* %314, align 8, !dbg !464
  %316 = fadd double 0x3CB0000000000000, %315, !dbg !465
  %317 = fmul double %313, %316, !dbg !466
  %318 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !467
  %319 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %318, i32 0, i32 1, !dbg !468
  store double %317, double* %319, align 8, !dbg !469
  %320 = load double, double* %5, align 8, !dbg !470
  %321 = fadd double %320, 1.000000e+00, !dbg !471
  %322 = fmul double 2.000000e+00, %321, !dbg !472
  %323 = fmul double %322, 0x3CB0000000000000, !dbg !473
  %324 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !474
  %325 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %324, i32 0, i32 0, !dbg !475
  %326 = load double, double* %325, align 8, !dbg !475
  %327 = call double @fabs(double %326) #1, !dbg !476
  %328 = fmul double %323, %327, !dbg !477
  %329 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !478
  %330 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %329, i32 0, i32 1, !dbg !479
  %331 = load double, double* %330, align 8, !dbg !480
  %332 = fadd double %331, %328, !dbg !480
  store double %332, double* %330, align 8, !dbg !480
  %333 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !481
  %334 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %333, i32 0, i32 0, !dbg !483
  %335 = load double, double* %334, align 8, !dbg !483
  %336 = fcmp oeq double %335, 0.000000e+00, !dbg !484
  br i1 %336, label %337, label %346, !dbg !485

; <label>:337:                                    ; preds = %299
  br label %338, !dbg !486, !llvm.loop !487

; <label>:338:                                    ; preds = %337
  %339 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !488
  %340 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %339, i32 0, i32 0, !dbg !488
  store double 0.000000e+00, double* %340, align 8, !dbg !488
  %341 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !488
  %342 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %341, i32 0, i32 1, !dbg !488
  store double 0x10000000000000, double* %342, align 8, !dbg !488
  br label %343, !dbg !488, !llvm.loop !491

; <label>:343:                                    ; preds = %338
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 358, i32 15), !dbg !493
  store i32 15, i32* %4, align 4, !dbg !493
  br label %364, !dbg !493
                                                  ; No predecessors!
  br label %345, !dbg !496

; <label>:345:                                    ; preds = %344
  br label %347, !dbg !498

; <label>:346:                                    ; preds = %299
  store i32 0, i32* %4, align 4, !dbg !500
  br label %364, !dbg !500

; <label>:347:                                    ; preds = %345
  br label %357, !dbg !501

; <label>:348:                                    ; preds = %286
  br label %349, !dbg !502, !llvm.loop !504

; <label>:349:                                    ; preds = %348
  %350 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !505
  %351 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %350, i32 0, i32 0, !dbg !505
  store double 0.000000e+00, double* %351, align 8, !dbg !505
  %352 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !505
  %353 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %352, i32 0, i32 1, !dbg !505
  store double 0x10000000000000, double* %353, align 8, !dbg !505
  br label %354, !dbg !505, !llvm.loop !508

; <label>:354:                                    ; preds = %349
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 363, i32 15), !dbg !510
  store i32 15, i32* %4, align 4, !dbg !510
  br label %364, !dbg !510
                                                  ; No predecessors!
  br label %356, !dbg !513

; <label>:356:                                    ; preds = %355
  br label %357

; <label>:357:                                    ; preds = %356, %347
  br label %358

; <label>:358:                                    ; preds = %357
  br label %359

; <label>:359:                                    ; preds = %358
  br label %360

; <label>:360:                                    ; preds = %359, %190
  br label %361

; <label>:361:                                    ; preds = %360
  br label %362

; <label>:362:                                    ; preds = %361
  br label %363

; <label>:363:                                    ; preds = %362
  br label %364

; <label>:364:                                    ; preds = %39, %55, %101, %145, %188, %205, %252, %343, %346, %354, %363, %41
  %365 = load i32, i32* %4, align 4, !dbg !515
  ret i32 %365, !dbg !515
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_expint_E1_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !516 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !517, metadata !98), !dbg !518
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !519, metadata !98), !dbg !520
  %5 = load double, double* %3, align 8, !dbg !521
  %6 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !522
  %7 = call i32 @expint_E1_impl(double %5, %struct.gsl_sf_result_struct* %6, i32 1), !dbg !523
  ret i32 %7, !dbg !524
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_expint_E2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !525 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !526, metadata !98), !dbg !527
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !528, metadata !98), !dbg !529
  %5 = load double, double* %3, align 8, !dbg !530
  %6 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !531
  %7 = call i32 @expint_E2_impl(double %5, %struct.gsl_sf_result_struct* %6, i32 0), !dbg !532
  ret i32 %7, !dbg !533
}

; Function Attrs: nounwind uwtable
define internal i32 @expint_E2_impl(double, %struct.gsl_sf_result_struct*, i32) #0 !dbg !534 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
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
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !535, metadata !98), !dbg !536
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !537, metadata !98), !dbg !538
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !539, metadata !98), !dbg !540
  call void @llvm.dbg.declare(metadata double* %8, metadata !541, metadata !98), !dbg !542
  store double 0x4086232BDD7ABCD2, double* %8, align 8, !dbg !542
  call void @llvm.dbg.declare(metadata double* %9, metadata !543, metadata !98), !dbg !544
  %30 = call double @log(double 0x4086232BDD7ABCD2) #6, !dbg !545
  %31 = fsub double 0x4086232BDD7ABCD2, %30, !dbg !546
  store double %31, double* %9, align 8, !dbg !544
  %32 = load double, double* %5, align 8, !dbg !547
  %33 = load double, double* %9, align 8, !dbg !549
  %34 = fsub double -0.000000e+00, %33, !dbg !550
  %35 = fcmp olt double %32, %34, !dbg !551
  br i1 %35, label %36, label %48, !dbg !552

; <label>:36:                                     ; preds = %3
  %37 = load i32, i32* %7, align 4, !dbg !553
  %38 = icmp ne i32 %37, 0, !dbg !553
  br i1 %38, label %48, label %39, !dbg !555

; <label>:39:                                     ; preds = %36
  br label %40, !dbg !556, !llvm.loop !558

; <label>:40:                                     ; preds = %39
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !559
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !559
  store double 0x7FF0000000000000, double* %42, align 8, !dbg !559
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !559
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !559
  store double 0x7FF0000000000000, double* %44, align 8, !dbg !559
  br label %45, !dbg !559, !llvm.loop !562

; <label>:45:                                     ; preds = %40
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 377, i32 16), !dbg !564
  store i32 16, i32* %4, align 4, !dbg !564
  br label %203, !dbg !564
                                                  ; No predecessors!
  br label %47, !dbg !567

; <label>:47:                                     ; preds = %46
  br label %203, !dbg !569

; <label>:48:                                     ; preds = %36, %3
  %49 = load double, double* %5, align 8, !dbg !570
  %50 = fcmp oeq double %49, 0.000000e+00, !dbg !572
  br i1 %50, label %51, label %56, !dbg !573

; <label>:51:                                     ; preds = %48
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !574
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !576
  store double 1.000000e+00, double* %53, align 8, !dbg !577
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !578
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !579
  store double 0.000000e+00, double* %55, align 8, !dbg !580
  store i32 0, i32* %4, align 4, !dbg !581
  br label %203, !dbg !581

; <label>:56:                                     ; preds = %48
  %57 = load double, double* %5, align 8, !dbg !582
  %58 = fcmp olt double %57, 1.000000e+02, !dbg !584
  br i1 %58, label %59, label %100, !dbg !585

; <label>:59:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata double* %10, metadata !586, metadata !98), !dbg !588
  %60 = load i32, i32* %7, align 4, !dbg !589
  %61 = icmp ne i32 %60, 0, !dbg !589
  br i1 %61, label %62, label %63, !dbg !589

; <label>:62:                                     ; preds = %59
  br label %67, !dbg !590

; <label>:63:                                     ; preds = %59
  %64 = load double, double* %5, align 8, !dbg !592
  %65 = fsub double -0.000000e+00, %64, !dbg !594
  %66 = call double @exp(double %65) #6, !dbg !595
  br label %67, !dbg !596

; <label>:67:                                     ; preds = %63, %62
  %68 = phi double [ 1.000000e+00, %62 ], [ %66, %63 ], !dbg !597
  store double %68, double* %10, align 8, !dbg !599
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !600, metadata !98), !dbg !601
  call void @llvm.dbg.declare(metadata i32* %12, metadata !602, metadata !98), !dbg !603
  %69 = load double, double* %5, align 8, !dbg !604
  %70 = load i32, i32* %7, align 4, !dbg !605
  %71 = call i32 @expint_E1_impl(double %69, %struct.gsl_sf_result_struct* %11, i32 %70), !dbg !606
  store i32 %71, i32* %12, align 4, !dbg !603
  %72 = load double, double* %10, align 8, !dbg !607
  %73 = load double, double* %5, align 8, !dbg !608
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !609
  %75 = load double, double* %74, align 8, !dbg !609
  %76 = fmul double %73, %75, !dbg !610
  %77 = fsub double %72, %76, !dbg !611
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !612
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !613
  store double %77, double* %79, align 8, !dbg !614
  %80 = load double, double* %10, align 8, !dbg !615
  %81 = fmul double 0x3CB0000000000000, %80, !dbg !616
  %82 = load double, double* %5, align 8, !dbg !617
  %83 = call double @fabs(double %82) #1, !dbg !618
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !619
  %85 = load double, double* %84, align 8, !dbg !619
  %86 = fmul double %83, %85, !dbg !620
  %87 = fadd double %81, %86, !dbg !621
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !622
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !623
  store double %87, double* %89, align 8, !dbg !624
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !625
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !626
  %92 = load double, double* %91, align 8, !dbg !626
  %93 = call double @fabs(double %92) #1, !dbg !627
  %94 = fmul double 0x3CC0000000000000, %93, !dbg !628
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !629
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !630
  %97 = load double, double* %96, align 8, !dbg !631
  %98 = fadd double %97, %94, !dbg !631
  store double %98, double* %96, align 8, !dbg !631
  %99 = load i32, i32* %12, align 4, !dbg !632
  store i32 %99, i32* %4, align 4, !dbg !633
  br label %203, !dbg !633

; <label>:100:                                    ; preds = %56
  %101 = load double, double* %5, align 8, !dbg !634
  %102 = load double, double* %9, align 8, !dbg !636
  %103 = fcmp olt double %101, %102, !dbg !637
  br i1 %103, label %107, label %104, !dbg !638

; <label>:104:                                    ; preds = %100
  %105 = load i32, i32* %7, align 4, !dbg !639
  %106 = icmp ne i32 %105, 0, !dbg !639
  br i1 %106, label %107, label %191, !dbg !641

; <label>:107:                                    ; preds = %104, %100
  call void @llvm.dbg.declare(metadata double* %13, metadata !642, metadata !98), !dbg !644
  %108 = load i32, i32* %7, align 4, !dbg !645
  %109 = icmp ne i32 %108, 0, !dbg !645
  br i1 %109, label %110, label %111, !dbg !645

; <label>:110:                                    ; preds = %107
  br label %115, !dbg !646

; <label>:111:                                    ; preds = %107
  %112 = load double, double* %5, align 8, !dbg !648
  %113 = fsub double -0.000000e+00, %112, !dbg !650
  %114 = call double @exp(double %113) #6, !dbg !651
  br label %115, !dbg !652

; <label>:115:                                    ; preds = %111, %110
  %116 = phi double [ 1.000000e+00, %110 ], [ %114, %111 ], !dbg !653
  store double %116, double* %13, align 8, !dbg !655
  call void @llvm.dbg.declare(metadata double* %14, metadata !656, metadata !98), !dbg !657
  store double -2.000000e+00, double* %14, align 8, !dbg !657
  call void @llvm.dbg.declare(metadata double* %15, metadata !658, metadata !98), !dbg !659
  store double 6.000000e+00, double* %15, align 8, !dbg !659
  call void @llvm.dbg.declare(metadata double* %16, metadata !660, metadata !98), !dbg !661
  store double -2.400000e+01, double* %16, align 8, !dbg !661
  call void @llvm.dbg.declare(metadata double* %17, metadata !662, metadata !98), !dbg !663
  store double 1.200000e+02, double* %17, align 8, !dbg !663
  call void @llvm.dbg.declare(metadata double* %18, metadata !664, metadata !98), !dbg !665
  store double -7.200000e+02, double* %18, align 8, !dbg !665
  call void @llvm.dbg.declare(metadata double* %19, metadata !666, metadata !98), !dbg !667
  store double 5.040000e+03, double* %19, align 8, !dbg !667
  call void @llvm.dbg.declare(metadata double* %20, metadata !668, metadata !98), !dbg !669
  store double -4.032000e+04, double* %20, align 8, !dbg !669
  call void @llvm.dbg.declare(metadata double* %21, metadata !670, metadata !98), !dbg !671
  store double 3.628800e+05, double* %21, align 8, !dbg !671
  call void @llvm.dbg.declare(metadata double* %22, metadata !672, metadata !98), !dbg !673
  store double -3.628800e+06, double* %22, align 8, !dbg !673
  call void @llvm.dbg.declare(metadata double* %23, metadata !674, metadata !98), !dbg !675
  store double 3.991680e+07, double* %23, align 8, !dbg !675
  call void @llvm.dbg.declare(metadata double* %24, metadata !676, metadata !98), !dbg !677
  store double -4.790016e+08, double* %24, align 8, !dbg !677
  call void @llvm.dbg.declare(metadata double* %25, metadata !678, metadata !98), !dbg !679
  store double 0x41F7328CC0000000, double* %25, align 8, !dbg !679
  call void @llvm.dbg.declare(metadata double* %26, metadata !680, metadata !98), !dbg !681
  store double 0xC2344C3B28000000, double* %26, align 8, !dbg !681
  call void @llvm.dbg.declare(metadata double* %27, metadata !682, metadata !98), !dbg !683
  %117 = load double, double* %5, align 8, !dbg !684
  %118 = fdiv double 1.000000e+00, %117, !dbg !685
  store double %118, double* %27, align 8, !dbg !683
  call void @llvm.dbg.declare(metadata double* %28, metadata !686, metadata !98), !dbg !687
  %119 = load double, double* %27, align 8, !dbg !688
  %120 = load double, double* %27, align 8, !dbg !689
  %121 = load double, double* %27, align 8, !dbg !690
  %122 = load double, double* %27, align 8, !dbg !691
  %123 = load double, double* %27, align 8, !dbg !692
  %124 = load double, double* %27, align 8, !dbg !693
  %125 = load double, double* %27, align 8, !dbg !694
  %126 = fmul double %125, 0xC2344C3B28000000, !dbg !695
  %127 = fadd double 0x41F7328CC0000000, %126, !dbg !696
  %128 = fmul double %124, %127, !dbg !697
  %129 = fadd double -4.790016e+08, %128, !dbg !698
  %130 = fmul double %123, %129, !dbg !699
  %131 = fadd double 3.991680e+07, %130, !dbg !700
  %132 = fmul double %122, %131, !dbg !701
  %133 = fadd double -3.628800e+06, %132, !dbg !702
  %134 = fmul double %121, %133, !dbg !703
  %135 = fadd double 3.628800e+05, %134, !dbg !704
  %136 = fmul double %120, %135, !dbg !705
  %137 = fadd double -4.032000e+04, %136, !dbg !706
  %138 = fmul double %119, %137, !dbg !707
  %139 = fadd double 5.040000e+03, %138, !dbg !708
  store double %139, double* %28, align 8, !dbg !687
  call void @llvm.dbg.declare(metadata double* %29, metadata !709, metadata !98), !dbg !710
  %140 = load double, double* %27, align 8, !dbg !711
  %141 = load double, double* %27, align 8, !dbg !712
  %142 = load double, double* %27, align 8, !dbg !713
  %143 = load double, double* %27, align 8, !dbg !714
  %144 = load double, double* %27, align 8, !dbg !715
  %145 = load double, double* %27, align 8, !dbg !716
  %146 = load double, double* %28, align 8, !dbg !717
  %147 = fmul double %145, %146, !dbg !718
  %148 = fadd double -7.200000e+02, %147, !dbg !719
  %149 = fmul double %144, %148, !dbg !720
  %150 = fadd double 1.200000e+02, %149, !dbg !721
  %151 = fmul double %143, %150, !dbg !722
  %152 = fadd double -2.400000e+01, %151, !dbg !723
  %153 = fmul double %142, %152, !dbg !724
  %154 = fadd double 6.000000e+00, %153, !dbg !725
  %155 = fmul double %141, %154, !dbg !726
  %156 = fadd double -2.000000e+00, %155, !dbg !727
  %157 = fmul double %140, %156, !dbg !728
  store double %157, double* %29, align 8, !dbg !710
  %158 = load double, double* %13, align 8, !dbg !729
  %159 = load double, double* %29, align 8, !dbg !730
  %160 = fadd double 1.000000e+00, %159, !dbg !731
  %161 = fmul double %158, %160, !dbg !732
  %162 = load double, double* %5, align 8, !dbg !733
  %163 = fdiv double %161, %162, !dbg !734
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !735
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %164, i32 0, i32 0, !dbg !736
  store double %163, double* %165, align 8, !dbg !737
  %166 = load double, double* %5, align 8, !dbg !738
  %167 = fadd double %166, 1.000000e+00, !dbg !739
  %168 = fmul double 2.000000e+00, %167, !dbg !740
  %169 = fmul double %168, 0x3CB0000000000000, !dbg !741
  %170 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !742
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %170, i32 0, i32 0, !dbg !743
  %172 = load double, double* %171, align 8, !dbg !743
  %173 = fmul double %169, %172, !dbg !744
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !745
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %174, i32 0, i32 1, !dbg !746
  store double %173, double* %175, align 8, !dbg !747
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !748
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %176, i32 0, i32 0, !dbg !750
  %178 = load double, double* %177, align 8, !dbg !750
  %179 = fcmp oeq double %178, 0.000000e+00, !dbg !751
  br i1 %179, label %180, label %189, !dbg !752

; <label>:180:                                    ; preds = %115
  br label %181, !dbg !753, !llvm.loop !754

; <label>:181:                                    ; preds = %180
  %182 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !755
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %182, i32 0, i32 0, !dbg !755
  store double 0.000000e+00, double* %183, align 8, !dbg !755
  %184 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !755
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %184, i32 0, i32 1, !dbg !755
  store double 0x10000000000000, double* %185, align 8, !dbg !755
  br label %186, !dbg !755, !llvm.loop !758

; <label>:186:                                    ; preds = %181
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 413, i32 15), !dbg !760
  store i32 15, i32* %4, align 4, !dbg !760
  br label %203, !dbg !760
                                                  ; No predecessors!
  br label %188, !dbg !763

; <label>:188:                                    ; preds = %187
  br label %190, !dbg !765

; <label>:189:                                    ; preds = %115
  store i32 0, i32* %4, align 4, !dbg !767
  br label %203, !dbg !767

; <label>:190:                                    ; preds = %188
  br label %200, !dbg !768

; <label>:191:                                    ; preds = %104
  br label %192, !dbg !769, !llvm.loop !771

; <label>:192:                                    ; preds = %191
  %193 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !772
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %193, i32 0, i32 0, !dbg !772
  store double 0.000000e+00, double* %194, align 8, !dbg !772
  %195 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !772
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %195, i32 0, i32 1, !dbg !772
  store double 0x10000000000000, double* %196, align 8, !dbg !772
  br label %197, !dbg !772, !llvm.loop !775

; <label>:197:                                    ; preds = %192
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 418, i32 15), !dbg !777
  store i32 15, i32* %4, align 4, !dbg !777
  br label %203, !dbg !777
                                                  ; No predecessors!
  br label %199, !dbg !780

; <label>:199:                                    ; preds = %198
  br label %200

; <label>:200:                                    ; preds = %199, %190
  br label %201

; <label>:201:                                    ; preds = %200
  br label %202

; <label>:202:                                    ; preds = %201
  br label %203

; <label>:203:                                    ; preds = %45, %51, %67, %186, %189, %197, %202, %47
  %204 = load i32, i32* %4, align 4, !dbg !782
  ret i32 %204, !dbg !782
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_expint_E2_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !783 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !784, metadata !98), !dbg !785
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !786, metadata !98), !dbg !787
  %5 = load double, double* %3, align 8, !dbg !788
  %6 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !789
  %7 = call i32 @expint_E2_impl(double %5, %struct.gsl_sf_result_struct* %6, i32 1), !dbg !790
  ret i32 %7, !dbg !791
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_expint_En_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !792 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !795, metadata !98), !dbg !796
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !797, metadata !98), !dbg !798
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !799, metadata !98), !dbg !800
  %7 = load i32, i32* %4, align 4, !dbg !801
  %8 = load double, double* %5, align 8, !dbg !802
  %9 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !803
  %10 = call i32 @expint_En_impl(i32 %7, double %8, %struct.gsl_sf_result_struct* %9, i32 0), !dbg !804
  ret i32 %10, !dbg !805
}

; Function Attrs: nounwind uwtable
define internal i32 @expint_En_impl(i32, double, %struct.gsl_sf_result_struct*, i32) #0 !dbg !806 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !809, metadata !98), !dbg !810
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !811, metadata !98), !dbg !812
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !813, metadata !98), !dbg !814
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !815, metadata !98), !dbg !816
  %14 = load i32, i32* %6, align 4, !dbg !817
  %15 = icmp slt i32 %14, 0, !dbg !819
  br i1 %15, label %16, label %25, !dbg !820

; <label>:16:                                     ; preds = %4
  br label %17, !dbg !821, !llvm.loop !823

; <label>:17:                                     ; preds = %16
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !824
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !824
  store double 0x7FF8000000000000, double* %19, align 8, !dbg !824
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !824
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !824
  store double 0x7FF8000000000000, double* %21, align 8, !dbg !824
  br label %22, !dbg !824, !llvm.loop !827

; <label>:22:                                     ; preds = %17
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 426, i32 1), !dbg !829
  store i32 1, i32* %5, align 4, !dbg !829
  br label %195, !dbg !829
                                                  ; No predecessors!
  br label %24, !dbg !832

; <label>:24:                                     ; preds = %23
  br label %195, !dbg !834

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* %6, align 4, !dbg !835
  %27 = icmp eq i32 %26, 0, !dbg !838
  br i1 %27, label %28, label %71, !dbg !835

; <label>:28:                                     ; preds = %25
  %29 = load double, double* %7, align 8, !dbg !839
  %30 = fcmp oeq double %29, 0.000000e+00, !dbg !842
  br i1 %30, label %31, label %40, !dbg !843

; <label>:31:                                     ; preds = %28
  br label %32, !dbg !844, !llvm.loop !846

; <label>:32:                                     ; preds = %31
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !847
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !847
  store double 0x7FF8000000000000, double* %34, align 8, !dbg !847
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !847
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !847
  store double 0x7FF8000000000000, double* %36, align 8, !dbg !847
  br label %37, !dbg !847, !llvm.loop !850

; <label>:37:                                     ; preds = %32
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 429, i32 1), !dbg !852
  store i32 1, i32* %5, align 4, !dbg !852
  br label %195, !dbg !852
                                                  ; No predecessors!
  br label %39, !dbg !855

; <label>:39:                                     ; preds = %38
  br label %70, !dbg !857

; <label>:40:                                     ; preds = %28
  %41 = load i32, i32* %9, align 4, !dbg !858
  %42 = icmp ne i32 %41, 0, !dbg !858
  br i1 %42, label %43, label %44, !dbg !858

; <label>:43:                                     ; preds = %40
  br label %48, !dbg !860

; <label>:44:                                     ; preds = %40
  %45 = load double, double* %7, align 8, !dbg !862
  %46 = fsub double -0.000000e+00, %45, !dbg !864
  %47 = call double @exp(double %46) #6, !dbg !865
  br label %48, !dbg !866

; <label>:48:                                     ; preds = %44, %43
  %49 = phi double [ 1.000000e+00, %43 ], [ %47, %44 ], !dbg !867
  %50 = load double, double* %7, align 8, !dbg !869
  %51 = fdiv double %49, %50, !dbg !870
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !871
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !872
  store double %51, double* %53, align 8, !dbg !873
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !874
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !875
  %56 = load double, double* %55, align 8, !dbg !875
  %57 = call double @fabs(double %56) #1, !dbg !876
  %58 = fmul double 0x3CC0000000000000, %57, !dbg !877
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !878
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 1, !dbg !879
  store double %58, double* %60, align 8, !dbg !880
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !881
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !881
  %63 = load double, double* %62, align 8, !dbg !881
  %64 = call double @fabs(double %63) #1, !dbg !881
  %65 = fcmp olt double %64, 0x10000000000000, !dbg !881
  br i1 %65, label %66, label %69, !dbg !883

; <label>:66:                                     ; preds = %48
  br label %67, !dbg !884, !llvm.loop !886

; <label>:67:                                     ; preds = %66
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 433, i32 15), !dbg !887
  store i32 15, i32* %5, align 4, !dbg !887
  br label %195, !dbg !887
                                                  ; No predecessors!
  br label %69, !dbg !890

; <label>:69:                                     ; preds = %68, %48
  store i32 0, i32* %5, align 4, !dbg !892
  br label %195, !dbg !892

; <label>:70:                                     ; preds = %39
  br label %194, !dbg !893

; <label>:71:                                     ; preds = %25
  %72 = load i32, i32* %6, align 4, !dbg !894
  %73 = icmp eq i32 %72, 1, !dbg !897
  br i1 %73, label %74, label %79, !dbg !894

; <label>:74:                                     ; preds = %71
  %75 = load double, double* %7, align 8, !dbg !898
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !900
  %77 = load i32, i32* %9, align 4, !dbg !901
  %78 = call i32 @expint_E1_impl(double %75, %struct.gsl_sf_result_struct* %76, i32 %77), !dbg !902
  store i32 %78, i32* %5, align 4, !dbg !903
  br label %195, !dbg !903

; <label>:79:                                     ; preds = %71
  %80 = load i32, i32* %6, align 4, !dbg !904
  %81 = icmp eq i32 %80, 2, !dbg !906
  br i1 %81, label %82, label %87, !dbg !907

; <label>:82:                                     ; preds = %79
  %83 = load double, double* %7, align 8, !dbg !908
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !910
  %85 = load i32, i32* %9, align 4, !dbg !911
  %86 = call i32 @expint_E2_impl(double %83, %struct.gsl_sf_result_struct* %84, i32 %85), !dbg !912
  store i32 %86, i32* %5, align 4, !dbg !913
  br label %195, !dbg !913

; <label>:87:                                     ; preds = %79
  %88 = load double, double* %7, align 8, !dbg !914
  %89 = fcmp olt double %88, 0.000000e+00, !dbg !917
  br i1 %89, label %90, label %99, !dbg !918

; <label>:90:                                     ; preds = %87
  br label %91, !dbg !919, !llvm.loop !921

; <label>:91:                                     ; preds = %90
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !922
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !922
  store double 0x7FF8000000000000, double* %93, align 8, !dbg !922
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !922
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 1, !dbg !922
  store double 0x7FF8000000000000, double* %95, align 8, !dbg !922
  br label %96, !dbg !922, !llvm.loop !925

; <label>:96:                                     ; preds = %91
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 442, i32 1), !dbg !927
  store i32 1, i32* %5, align 4, !dbg !927
  br label %195, !dbg !927
                                                  ; No predecessors!
  br label %98, !dbg !930

; <label>:98:                                     ; preds = %97
  br label %99, !dbg !932

; <label>:99:                                     ; preds = %98, %87
  %100 = load double, double* %7, align 8, !dbg !933
  %101 = fcmp oeq double %100, 0.000000e+00, !dbg !935
  br i1 %101, label %102, label %134, !dbg !936

; <label>:102:                                    ; preds = %99
  %103 = load i32, i32* %9, align 4, !dbg !937
  %104 = icmp ne i32 %103, 0, !dbg !937
  br i1 %104, label %105, label %108, !dbg !937

; <label>:105:                                    ; preds = %102
  %106 = load double, double* %7, align 8, !dbg !939
  %107 = call double @exp(double %106) #6, !dbg !941
  br label %109, !dbg !942

; <label>:108:                                    ; preds = %102
  br label %109, !dbg !943

; <label>:109:                                    ; preds = %108, %105
  %110 = phi double [ %107, %105 ], [ 1.000000e+00, %108 ], !dbg !945
  %111 = load i32, i32* %6, align 4, !dbg !947
  %112 = sitofp i32 %111 to double, !dbg !947
  %113 = fsub double %112, 1.000000e+00, !dbg !948
  %114 = fdiv double 1.000000e+00, %113, !dbg !949
  %115 = fmul double %110, %114, !dbg !950
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !951
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 0, !dbg !952
  store double %115, double* %117, align 8, !dbg !953
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !954
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 0, !dbg !955
  %120 = load double, double* %119, align 8, !dbg !955
  %121 = call double @fabs(double %120) #1, !dbg !956
  %122 = fmul double 0x3CC0000000000000, %121, !dbg !957
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !958
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 1, !dbg !959
  store double %122, double* %124, align 8, !dbg !960
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !961
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !961
  %127 = load double, double* %126, align 8, !dbg !961
  %128 = call double @fabs(double %127) #1, !dbg !961
  %129 = fcmp olt double %128, 0x10000000000000, !dbg !961
  br i1 %129, label %130, label %133, !dbg !963

; <label>:130:                                    ; preds = %109
  br label %131, !dbg !964, !llvm.loop !966

; <label>:131:                                    ; preds = %130
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 447, i32 15), !dbg !967
  store i32 15, i32* %5, align 4, !dbg !967
  br label %195, !dbg !967
                                                  ; No predecessors!
  br label %133, !dbg !970

; <label>:133:                                    ; preds = %132, %109
  store i32 0, i32* %5, align 4, !dbg !972
  br label %195, !dbg !972

; <label>:134:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !973, metadata !98), !dbg !975
  call void @llvm.dbg.declare(metadata double* %11, metadata !976, metadata !98), !dbg !977
  %135 = load double, double* %7, align 8, !dbg !978
  %136 = load i32, i32* %6, align 4, !dbg !979
  %137 = sub nsw i32 %136, 1, !dbg !980
  %138 = sitofp i32 %137 to double, !dbg !979
  %139 = call double @pow(double %135, double %138) #6, !dbg !981
  store double %139, double* %11, align 8, !dbg !977
  call void @llvm.dbg.declare(metadata i32* %12, metadata !982, metadata !98), !dbg !983
  %140 = load i32, i32* %6, align 4, !dbg !984
  %141 = sub nsw i32 1, %140, !dbg !985
  %142 = sitofp i32 %141 to double, !dbg !986
  %143 = load double, double* %7, align 8, !dbg !987
  %144 = call i32 @gsl_sf_gamma_inc_e(double %142, double %143, %struct.gsl_sf_result_struct* %10), !dbg !988
  store i32 %144, i32* %12, align 4, !dbg !983
  call void @llvm.dbg.declare(metadata double* %13, metadata !989, metadata !98), !dbg !990
  %145 = load i32, i32* %9, align 4, !dbg !991
  %146 = icmp ne i32 %145, 0, !dbg !991
  br i1 %146, label %147, label %150, !dbg !991

; <label>:147:                                    ; preds = %134
  %148 = load double, double* %7, align 8, !dbg !992
  %149 = call double @exp(double %148) #6, !dbg !994
  br label %151, !dbg !995

; <label>:150:                                    ; preds = %134
  br label %151, !dbg !996

; <label>:151:                                    ; preds = %150, %147
  %152 = phi double [ %149, %147 ], [ 1.000000e+00, %150 ], !dbg !998
  store double %152, double* %13, align 8, !dbg !1000
  %153 = load double, double* %13, align 8, !dbg !1001
  %154 = load double, double* %11, align 8, !dbg !1002
  %155 = fmul double %153, %154, !dbg !1003
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1004
  %157 = load double, double* %156, align 8, !dbg !1004
  %158 = fmul double %155, %157, !dbg !1005
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1006
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 0, !dbg !1007
  store double %158, double* %160, align 8, !dbg !1008
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1009
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !1010
  %163 = load double, double* %162, align 8, !dbg !1010
  %164 = call double @fabs(double %163) #1, !dbg !1011
  %165 = fmul double 0x3CC0000000000000, %164, !dbg !1012
  %166 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1013
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %166, i32 0, i32 1, !dbg !1014
  store double %165, double* %167, align 8, !dbg !1015
  %168 = load double, double* %13, align 8, !dbg !1016
  %169 = load double, double* %11, align 8, !dbg !1017
  %170 = fmul double %168, %169, !dbg !1018
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !1019
  %172 = load double, double* %171, align 8, !dbg !1019
  %173 = fmul double %170, %172, !dbg !1020
  %174 = call double @fabs(double %173) #1, !dbg !1021
  %175 = fmul double 2.000000e+00, %174, !dbg !1022
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1023
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %176, i32 0, i32 1, !dbg !1024
  %178 = load double, double* %177, align 8, !dbg !1025
  %179 = fadd double %178, %175, !dbg !1025
  store double %179, double* %177, align 8, !dbg !1025
  %180 = load i32, i32* %12, align 4, !dbg !1026
  %181 = icmp eq i32 %180, 0, !dbg !1028
  br i1 %181, label %182, label %192, !dbg !1029

; <label>:182:                                    ; preds = %151
  %183 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1030
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %183, i32 0, i32 0, !dbg !1030
  %185 = load double, double* %184, align 8, !dbg !1030
  %186 = call double @fabs(double %185) #1, !dbg !1030
  %187 = fcmp olt double %186, 0x10000000000000, !dbg !1030
  br i1 %187, label %188, label %191, !dbg !1030

; <label>:188:                                    ; preds = %182
  br label %189, !dbg !1033, !llvm.loop !1035

; <label>:189:                                    ; preds = %188
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 457, i32 15), !dbg !1037
  store i32 15, i32* %5, align 4, !dbg !1037
  br label %195, !dbg !1037
                                                  ; No predecessors!
  br label %191, !dbg !1040

; <label>:191:                                    ; preds = %190, %182
  br label %192, !dbg !1042

; <label>:192:                                    ; preds = %191, %151
  %193 = load i32, i32* %12, align 4, !dbg !1044
  store i32 %193, i32* %5, align 4, !dbg !1045
  br label %195, !dbg !1045

; <label>:194:                                    ; preds = %70
  br label %195

; <label>:195:                                    ; preds = %22, %37, %67, %69, %74, %82, %96, %131, %133, %189, %192, %194, %24
  %196 = load i32, i32* %5, align 4, !dbg !1046
  ret i32 %196, !dbg !1046
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_expint_En_scaled_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !1047 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1048, metadata !98), !dbg !1049
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1050, metadata !98), !dbg !1051
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !1052, metadata !98), !dbg !1053
  %7 = load i32, i32* %4, align 4, !dbg !1054
  %8 = load double, double* %5, align 8, !dbg !1055
  %9 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1056
  %10 = call i32 @expint_En_impl(i32 %7, double %8, %struct.gsl_sf_result_struct* %9, i32 1), !dbg !1057
  ret i32 %10, !dbg !1058
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_expint_Ei_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1059 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1060, metadata !98), !dbg !1061
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !1062, metadata !98), !dbg !1063
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1064, metadata !98), !dbg !1066
  %6 = load double, double* %3, align 8, !dbg !1067
  %7 = fsub double -0.000000e+00, %6, !dbg !1068
  %8 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1069
  %9 = call i32 @gsl_sf_expint_E1_e(double %7, %struct.gsl_sf_result_struct* %8), !dbg !1070
  store i32 %9, i32* %5, align 4, !dbg !1066
  %10 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1071
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1072
  %12 = load double, double* %11, align 8, !dbg !1072
  %13 = fsub double -0.000000e+00, %12, !dbg !1073
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1074
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1075
  store double %13, double* %15, align 8, !dbg !1076
  %16 = load i32, i32* %5, align 4, !dbg !1077
  ret i32 %16, !dbg !1078
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_expint_Ei_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1079 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1080, metadata !98), !dbg !1081
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !1082, metadata !98), !dbg !1083
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1084, metadata !98), !dbg !1086
  %6 = load double, double* %3, align 8, !dbg !1087
  %7 = fsub double -0.000000e+00, %6, !dbg !1088
  %8 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1089
  %9 = call i32 @gsl_sf_expint_E1_scaled_e(double %7, %struct.gsl_sf_result_struct* %8), !dbg !1090
  store i32 %9, i32* %5, align 4, !dbg !1086
  %10 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1091
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1092
  %12 = load double, double* %11, align 8, !dbg !1092
  %13 = fsub double -0.000000e+00, %12, !dbg !1093
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1094
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1095
  store double %13, double* %15, align 8, !dbg !1096
  %16 = load i32, i32* %5, align 4, !dbg !1097
  ret i32 %16, !dbg !1098
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_expint_E1(double) #0 !dbg !1099 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1102, metadata !98), !dbg !1103
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1104, metadata !98), !dbg !1105
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1106, metadata !98), !dbg !1105
  %6 = load double, double* %3, align 8, !dbg !1105
  %7 = call i32 @gsl_sf_expint_E1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1105
  store i32 %7, i32* %5, align 4, !dbg !1105
  %8 = load i32, i32* %5, align 4, !dbg !1107
  %9 = icmp ne i32 %8, 0, !dbg !1107
  br i1 %9, label %10, label %16, !dbg !1105

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1109, !llvm.loop !1112

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1114
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 545, i32 %12), !dbg !1114
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1114
  %14 = load double, double* %13, align 8, !dbg !1114
  store double %14, double* %2, align 8, !dbg !1114
  br label %19, !dbg !1114
                                                  ; No predecessors!
  br label %16, !dbg !1117

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1119
  %18 = load double, double* %17, align 8, !dbg !1119
  store double %18, double* %2, align 8, !dbg !1119
  br label %19, !dbg !1119

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1121
  ret double %20, !dbg !1121
}

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_expint_E1_scaled(double) #0 !dbg !1122 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1123, metadata !98), !dbg !1124
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1125, metadata !98), !dbg !1126
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1127, metadata !98), !dbg !1126
  %6 = load double, double* %3, align 8, !dbg !1126
  %7 = call i32 @gsl_sf_expint_E1_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1126
  store i32 %7, i32* %5, align 4, !dbg !1126
  %8 = load i32, i32* %5, align 4, !dbg !1128
  %9 = icmp ne i32 %8, 0, !dbg !1128
  br i1 %9, label %10, label %16, !dbg !1126

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1130, !llvm.loop !1133

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1135
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 550, i32 %12), !dbg !1135
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1135
  %14 = load double, double* %13, align 8, !dbg !1135
  store double %14, double* %2, align 8, !dbg !1135
  br label %19, !dbg !1135
                                                  ; No predecessors!
  br label %16, !dbg !1138

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1140
  %18 = load double, double* %17, align 8, !dbg !1140
  store double %18, double* %2, align 8, !dbg !1140
  br label %19, !dbg !1140

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1142
  ret double %20, !dbg !1142
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_expint_E2(double) #0 !dbg !1143 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1144, metadata !98), !dbg !1145
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1146, metadata !98), !dbg !1147
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1148, metadata !98), !dbg !1147
  %6 = load double, double* %3, align 8, !dbg !1147
  %7 = call i32 @gsl_sf_expint_E2_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1147
  store i32 %7, i32* %5, align 4, !dbg !1147
  %8 = load i32, i32* %5, align 4, !dbg !1149
  %9 = icmp ne i32 %8, 0, !dbg !1149
  br i1 %9, label %10, label %16, !dbg !1147

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1151, !llvm.loop !1154

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1156
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 555, i32 %12), !dbg !1156
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1156
  %14 = load double, double* %13, align 8, !dbg !1156
  store double %14, double* %2, align 8, !dbg !1156
  br label %19, !dbg !1156
                                                  ; No predecessors!
  br label %16, !dbg !1159

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1161
  %18 = load double, double* %17, align 8, !dbg !1161
  store double %18, double* %2, align 8, !dbg !1161
  br label %19, !dbg !1161

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1163
  ret double %20, !dbg !1163
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_expint_E2_scaled(double) #0 !dbg !1164 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1165, metadata !98), !dbg !1166
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1167, metadata !98), !dbg !1168
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1169, metadata !98), !dbg !1168
  %6 = load double, double* %3, align 8, !dbg !1168
  %7 = call i32 @gsl_sf_expint_E2_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1168
  store i32 %7, i32* %5, align 4, !dbg !1168
  %8 = load i32, i32* %5, align 4, !dbg !1170
  %9 = icmp ne i32 %8, 0, !dbg !1170
  br i1 %9, label %10, label %16, !dbg !1168

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1172, !llvm.loop !1175

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1177
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 560, i32 %12), !dbg !1177
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1177
  %14 = load double, double* %13, align 8, !dbg !1177
  store double %14, double* %2, align 8, !dbg !1177
  br label %19, !dbg !1177
                                                  ; No predecessors!
  br label %16, !dbg !1180

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1182
  %18 = load double, double* %17, align 8, !dbg !1182
  store double %18, double* %2, align 8, !dbg !1182
  br label %19, !dbg !1182

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1184
  ret double %20, !dbg !1184
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_expint_En(i32, double) #0 !dbg !1185 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1188, metadata !98), !dbg !1189
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1190, metadata !98), !dbg !1191
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1192, metadata !98), !dbg !1193
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1194, metadata !98), !dbg !1193
  %8 = load i32, i32* %4, align 4, !dbg !1193
  %9 = load double, double* %5, align 8, !dbg !1193
  %10 = call i32 @gsl_sf_expint_En_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1193
  store i32 %10, i32* %7, align 4, !dbg !1193
  %11 = load i32, i32* %7, align 4, !dbg !1195
  %12 = icmp ne i32 %11, 0, !dbg !1195
  br i1 %12, label %13, label %19, !dbg !1193

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1197, !llvm.loop !1200

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1202
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 565, i32 %15), !dbg !1202
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1202
  %17 = load double, double* %16, align 8, !dbg !1202
  store double %17, double* %3, align 8, !dbg !1202
  br label %22, !dbg !1202
                                                  ; No predecessors!
  br label %19, !dbg !1205

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1207
  %21 = load double, double* %20, align 8, !dbg !1207
  store double %21, double* %3, align 8, !dbg !1207
  br label %22, !dbg !1207

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1209
  ret double %23, !dbg !1209
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_expint_En_scaled(i32, double) #0 !dbg !1210 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1211, metadata !98), !dbg !1212
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1213, metadata !98), !dbg !1214
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1215, metadata !98), !dbg !1216
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1217, metadata !98), !dbg !1216
  %8 = load i32, i32* %4, align 4, !dbg !1216
  %9 = load double, double* %5, align 8, !dbg !1216
  %10 = call i32 @gsl_sf_expint_En_scaled_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1216
  store i32 %10, i32* %7, align 4, !dbg !1216
  %11 = load i32, i32* %7, align 4, !dbg !1218
  %12 = icmp ne i32 %11, 0, !dbg !1218
  br i1 %12, label %13, label %19, !dbg !1216

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1220, !llvm.loop !1223

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1225
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 570, i32 %15), !dbg !1225
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1225
  %17 = load double, double* %16, align 8, !dbg !1225
  store double %17, double* %3, align 8, !dbg !1225
  br label %22, !dbg !1225
                                                  ; No predecessors!
  br label %19, !dbg !1228

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1230
  %21 = load double, double* %20, align 8, !dbg !1230
  store double %21, double* %3, align 8, !dbg !1230
  br label %22, !dbg !1230

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1232
  ret double %23, !dbg !1232
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_expint_Ei(double) #0 !dbg !1233 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1234, metadata !98), !dbg !1235
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1236, metadata !98), !dbg !1237
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1238, metadata !98), !dbg !1237
  %6 = load double, double* %3, align 8, !dbg !1237
  %7 = call i32 @gsl_sf_expint_Ei_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1237
  store i32 %7, i32* %5, align 4, !dbg !1237
  %8 = load i32, i32* %5, align 4, !dbg !1239
  %9 = icmp ne i32 %8, 0, !dbg !1239
  br i1 %9, label %10, label %16, !dbg !1237

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1241, !llvm.loop !1244

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1246
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 575, i32 %12), !dbg !1246
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1246
  %14 = load double, double* %13, align 8, !dbg !1246
  store double %14, double* %2, align 8, !dbg !1246
  br label %19, !dbg !1246
                                                  ; No predecessors!
  br label %16, !dbg !1249

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1251
  %18 = load double, double* %17, align 8, !dbg !1251
  store double %18, double* %2, align 8, !dbg !1251
  br label %19, !dbg !1251

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1253
  ret double %20, !dbg !1253
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_expint_Ei_scaled(double) #0 !dbg !1254 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1255, metadata !98), !dbg !1256
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1257, metadata !98), !dbg !1258
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1259, metadata !98), !dbg !1258
  %6 = load double, double* %3, align 8, !dbg !1258
  %7 = call i32 @gsl_sf_expint_Ei_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1258
  store i32 %7, i32* %5, align 4, !dbg !1258
  %8 = load i32, i32* %5, align 4, !dbg !1260
  %9 = icmp ne i32 %8, 0, !dbg !1260
  br i1 %9, label %10, label %16, !dbg !1258

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1262, !llvm.loop !1265

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1267
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 580, i32 %12), !dbg !1267
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1267
  %14 = load double, double* %13, align 8, !dbg !1267
  store double %14, double* %2, align 8, !dbg !1267
  br label %19, !dbg !1267
                                                  ; No predecessors!
  br label %16, !dbg !1270

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1272
  %18 = load double, double* %17, align 8, !dbg !1272
  store double %18, double* %2, align 8, !dbg !1272
  br label %19, !dbg !1272

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1274
  ret double %20, !dbg !1274
}

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !1275 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !1281, metadata !98), !dbg !1282
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1283, metadata !98), !dbg !1284
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !1285, metadata !98), !dbg !1286
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1287, metadata !98), !dbg !1288
  call void @llvm.dbg.declare(metadata double* %8, metadata !1289, metadata !98), !dbg !1290
  store double 0.000000e+00, double* %8, align 8, !dbg !1290
  call void @llvm.dbg.declare(metadata double* %9, metadata !1291, metadata !98), !dbg !1292
  store double 0.000000e+00, double* %9, align 8, !dbg !1292
  call void @llvm.dbg.declare(metadata double* %10, metadata !1293, metadata !98), !dbg !1294
  %15 = load double, double* %5, align 8, !dbg !1295
  %16 = fmul double 2.000000e+00, %15, !dbg !1296
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1297
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !1298
  %19 = load double, double* %18, align 8, !dbg !1298
  %20 = fsub double %16, %19, !dbg !1299
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1300
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !1301
  %23 = load double, double* %22, align 8, !dbg !1301
  %24 = fsub double %20, %23, !dbg !1302
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1303
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !1304
  %27 = load double, double* %26, align 8, !dbg !1304
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1305
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !1306
  %30 = load double, double* %29, align 8, !dbg !1306
  %31 = fsub double %27, %30, !dbg !1307
  %32 = fdiv double %24, %31, !dbg !1308
  store double %32, double* %10, align 8, !dbg !1294
  call void @llvm.dbg.declare(metadata double* %11, metadata !1309, metadata !98), !dbg !1310
  %33 = load double, double* %10, align 8, !dbg !1311
  %34 = fmul double 2.000000e+00, %33, !dbg !1312
  store double %34, double* %11, align 8, !dbg !1310
  call void @llvm.dbg.declare(metadata double* %12, metadata !1313, metadata !98), !dbg !1314
  store double 0.000000e+00, double* %12, align 8, !dbg !1314
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1315
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !1317
  %37 = load i32, i32* %36, align 8, !dbg !1317
  store i32 %37, i32* %7, align 4, !dbg !1318
  br label %38, !dbg !1319

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !1320
  %40 = icmp sge i32 %39, 1, !dbg !1323
  br i1 %40, label %41, label %78, !dbg !1324

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !1325, metadata !98), !dbg !1327
  %42 = load double, double* %8, align 8, !dbg !1328
  store double %42, double* %13, align 8, !dbg !1327
  %43 = load double, double* %11, align 8, !dbg !1329
  %44 = load double, double* %8, align 8, !dbg !1330
  %45 = fmul double %43, %44, !dbg !1331
  %46 = load double, double* %9, align 8, !dbg !1332
  %47 = fsub double %45, %46, !dbg !1333
  %48 = load i32, i32* %7, align 4, !dbg !1334
  %49 = sext i32 %48 to i64, !dbg !1335
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1335
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !1336
  %52 = load double*, double** %51, align 8, !dbg !1336
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !1335
  %54 = load double, double* %53, align 8, !dbg !1335
  %55 = fadd double %47, %54, !dbg !1337
  store double %55, double* %8, align 8, !dbg !1338
  %56 = load double, double* %11, align 8, !dbg !1339
  %57 = load double, double* %13, align 8, !dbg !1340
  %58 = fmul double %56, %57, !dbg !1341
  %59 = call double @fabs(double %58) #1, !dbg !1342
  %60 = load double, double* %9, align 8, !dbg !1343
  %61 = call double @fabs(double %60) #1, !dbg !1344
  %62 = fadd double %59, %61, !dbg !1346
  %63 = load i32, i32* %7, align 4, !dbg !1347
  %64 = sext i32 %63 to i64, !dbg !1348
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1348
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !1349
  %67 = load double*, double** %66, align 8, !dbg !1349
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !1348
  %69 = load double, double* %68, align 8, !dbg !1348
  %70 = call double @fabs(double %69) #1, !dbg !1350
  %71 = fadd double %62, %70, !dbg !1352
  %72 = load double, double* %12, align 8, !dbg !1353
  %73 = fadd double %72, %71, !dbg !1353
  store double %73, double* %12, align 8, !dbg !1353
  %74 = load double, double* %13, align 8, !dbg !1354
  store double %74, double* %9, align 8, !dbg !1355
  br label %75, !dbg !1356

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !1357
  %77 = add nsw i32 %76, -1, !dbg !1357
  store i32 %77, i32* %7, align 4, !dbg !1357
  br label %38, !dbg !1359, !llvm.loop !1360

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !1362, metadata !98), !dbg !1364
  %79 = load double, double* %8, align 8, !dbg !1365
  store double %79, double* %14, align 8, !dbg !1364
  %80 = load double, double* %10, align 8, !dbg !1366
  %81 = load double, double* %8, align 8, !dbg !1367
  %82 = fmul double %80, %81, !dbg !1368
  %83 = load double, double* %9, align 8, !dbg !1369
  %84 = fsub double %82, %83, !dbg !1370
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1371
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !1372
  %87 = load double*, double** %86, align 8, !dbg !1372
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !1371
  %89 = load double, double* %88, align 8, !dbg !1371
  %90 = fmul double 5.000000e-01, %89, !dbg !1373
  %91 = fadd double %84, %90, !dbg !1374
  store double %91, double* %8, align 8, !dbg !1375
  %92 = load double, double* %10, align 8, !dbg !1376
  %93 = load double, double* %14, align 8, !dbg !1377
  %94 = fmul double %92, %93, !dbg !1378
  %95 = call double @fabs(double %94) #1, !dbg !1379
  %96 = load double, double* %9, align 8, !dbg !1380
  %97 = call double @fabs(double %96) #1, !dbg !1381
  %98 = fadd double %95, %97, !dbg !1383
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1384
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !1385
  %101 = load double*, double** %100, align 8, !dbg !1385
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !1384
  %103 = load double, double* %102, align 8, !dbg !1384
  %104 = call double @fabs(double %103) #1, !dbg !1386
  %105 = fmul double 5.000000e-01, %104, !dbg !1388
  %106 = fadd double %98, %105, !dbg !1389
  %107 = load double, double* %12, align 8, !dbg !1390
  %108 = fadd double %107, %106, !dbg !1390
  store double %108, double* %12, align 8, !dbg !1390
  %109 = load double, double* %8, align 8, !dbg !1391
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1392
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !1393
  store double %109, double* %111, align 8, !dbg !1394
  %112 = load double, double* %12, align 8, !dbg !1395
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !1396
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1397
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !1398
  %116 = load i32, i32* %115, align 8, !dbg !1398
  %117 = sext i32 %116 to i64, !dbg !1399
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1399
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !1400
  %120 = load double*, double** %119, align 8, !dbg !1400
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !1399
  %122 = load double, double* %121, align 8, !dbg !1399
  %123 = call double @fabs(double %122) #1, !dbg !1401
  %124 = fadd double %113, %123, !dbg !1402
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1403
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !1404
  store double %124, double* %126, align 8, !dbg !1405
  ret i32 0, !dbg !1406
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind
declare double @pow(double, double) #3

declare i32 @gsl_sf_gamma_inc_e(double, double, %struct.gsl_sf_result_struct*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!81, !82, !83}
!llvm.ident = !{!84}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "expint.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60, !64, !65, !69, !70, !74, !75, !76, !77}
!42 = distinct !DIGlobalVariable(name: "AE11_cs", scope: !0, file: !1, line: 123, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @AE11_cs)
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
!55 = distinct !DIGlobalVariable(name: "AE11_data", scope: !0, file: !1, line: 82, type: !56, isLocal: true, isDefinition: true, variable: [39 x double]* @AE11_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2496, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 39)
!59 = distinct !DIGlobalVariable(name: "AE12_cs", scope: !0, file: !1, line: 157, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @AE12_cs)
!60 = distinct !DIGlobalVariable(name: "AE12_data", scope: !0, file: !1, line: 130, type: !61, isLocal: true, isDefinition: true, variable: [25 x double]* @AE12_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1600, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 25)
!64 = distinct !DIGlobalVariable(name: "E11_cs", scope: !0, file: !1, line: 185, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @E11_cs)
!65 = distinct !DIGlobalVariable(name: "E11_data", scope: !0, file: !1, line: 164, type: !66, isLocal: true, isDefinition: true, variable: [19 x double]* @E11_data)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1216, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 19)
!69 = distinct !DIGlobalVariable(name: "E12_cs", scope: !0, file: !1, line: 210, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @E12_cs)
!70 = distinct !DIGlobalVariable(name: "E12_data", scope: !0, file: !1, line: 192, type: !71, isLocal: true, isDefinition: true, variable: [16 x double]* @E12_data)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1024, align: 64, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 16)
!74 = distinct !DIGlobalVariable(name: "AE13_cs", scope: !0, file: !1, line: 244, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @AE13_cs)
!75 = distinct !DIGlobalVariable(name: "AE13_data", scope: !0, file: !1, line: 217, type: !61, isLocal: true, isDefinition: true, variable: [25 x double]* @AE13_data)
!76 = distinct !DIGlobalVariable(name: "AE14_cs", scope: !0, file: !1, line: 279, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @AE14_cs)
!77 = distinct !DIGlobalVariable(name: "AE14_data", scope: !0, file: !1, line: 251, type: !78, isLocal: true, isDefinition: true, variable: [26 x double]* @AE14_data)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1664, align: 64, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 26)
!81 = !{i32 2, !"Dwarf Version", i32 4}
!82 = !{i32 2, !"Debug Info Version", i32 3}
!83 = !{i32 1, !"PIC Level", i32 2}
!84 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!85 = distinct !DISubprogram(name: "gsl_sf_expint_E1_e", scope: !1, file: !1, line: 466, type: !86, isLocal: false, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!86 = !DISubroutineType(types: !87)
!87 = !{!51, !88, !89}
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !91, line: 41, baseType: !92)
!91 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !91, line: 37, size: 128, align: 64, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !92, file: !91, line: 38, baseType: !49, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !92, file: !91, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!96 = !{}
!97 = !DILocalVariable(name: "x", arg: 1, scope: !85, file: !1, line: 466, type: !88)
!98 = !DIExpression()
!99 = !DILocation(line: 466, column: 37, scope: !85)
!100 = !DILocalVariable(name: "result", arg: 2, scope: !85, file: !1, line: 466, type: !89)
!101 = !DILocation(line: 466, column: 56, scope: !85)
!102 = !DILocation(line: 468, column: 25, scope: !85)
!103 = !DILocation(line: 468, column: 28, scope: !85)
!104 = !DILocation(line: 468, column: 10, scope: !85)
!105 = !DILocation(line: 468, column: 3, scope: !85)
!106 = distinct !DISubprogram(name: "expint_E1_impl", scope: !1, file: !1, line: 290, type: !107, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!107 = !DISubroutineType(types: !108)
!108 = !{!51, !88, !89, !109}
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!110 = !DILocalVariable(name: "x", arg: 1, scope: !106, file: !1, line: 290, type: !88)
!111 = !DILocation(line: 290, column: 33, scope: !106)
!112 = !DILocalVariable(name: "result", arg: 2, scope: !106, file: !1, line: 290, type: !89)
!113 = !DILocation(line: 290, column: 52, scope: !106)
!114 = !DILocalVariable(name: "scale", arg: 3, scope: !106, file: !1, line: 290, type: !109)
!115 = !DILocation(line: 290, column: 70, scope: !106)
!116 = !DILocalVariable(name: "xmaxt", scope: !106, file: !1, line: 292, type: !88)
!117 = !DILocation(line: 292, column: 16, scope: !106)
!118 = !DILocalVariable(name: "xmax", scope: !106, file: !1, line: 293, type: !88)
!119 = !DILocation(line: 293, column: 16, scope: !106)
!120 = !DILocation(line: 293, column: 32, scope: !106)
!121 = !DILocation(line: 293, column: 30, scope: !106)
!122 = !DILocation(line: 297, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !106, file: !1, line: 297, column: 6)
!124 = !DILocation(line: 297, column: 11, scope: !123)
!125 = !DILocation(line: 297, column: 10, scope: !123)
!126 = !DILocation(line: 297, column: 8, scope: !123)
!127 = !DILocation(line: 297, column: 16, scope: !123)
!128 = !DILocation(line: 297, column: 20, scope: !129)
!129 = !DILexicalBlockFile(scope: !123, file: !1, discriminator: 1)
!130 = !DILocation(line: 297, column: 6, scope: !129)
!131 = !DILocation(line: 298, column: 7, scope: !132)
!132 = distinct !DILexicalBlock(scope: !123, file: !1, line: 297, column: 27)
!133 = distinct !{!133, !131}
!134 = !DILocation(line: 298, column: 7, scope: !135)
!135 = !DILexicalBlockFile(scope: !136, file: !1, discriminator: 1)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 298, column: 7)
!137 = distinct !{!137, !138}
!138 = !DILocation(line: 298, column: 7, scope: !136)
!139 = !DILocation(line: 298, column: 7, scope: !140)
!140 = !DILexicalBlockFile(scope: !141, file: !1, discriminator: 2)
!141 = distinct !DILexicalBlock(scope: !136, file: !1, line: 298, column: 7)
!142 = !DILocation(line: 298, column: 7, scope: !143)
!143 = !DILexicalBlockFile(scope: !136, file: !1, discriminator: 3)
!144 = !DILocation(line: 299, column: 3, scope: !132)
!145 = !DILocation(line: 300, column: 11, scope: !146)
!146 = distinct !DILexicalBlock(scope: !123, file: !1, line: 300, column: 11)
!147 = !DILocation(line: 300, column: 13, scope: !146)
!148 = !DILocation(line: 300, column: 11, scope: !123)
!149 = !DILocalVariable(name: "s", scope: !150, file: !1, line: 301, type: !88)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 300, column: 23)
!151 = !DILocation(line: 301, column: 18, scope: !150)
!152 = !DILocation(line: 301, column: 26, scope: !150)
!153 = !DILocation(line: 301, column: 25, scope: !150)
!154 = !DILocation(line: 301, column: 32, scope: !150)
!155 = !DILocation(line: 301, column: 32, scope: !156)
!156 = !DILexicalBlockFile(scope: !150, file: !1, discriminator: 1)
!157 = !DILocation(line: 301, column: 51, scope: !158)
!158 = !DILexicalBlockFile(scope: !150, file: !1, discriminator: 2)
!159 = !DILocation(line: 301, column: 50, scope: !158)
!160 = !DILocation(line: 301, column: 46, scope: !158)
!161 = !DILocation(line: 301, column: 32, scope: !158)
!162 = !DILocation(line: 301, column: 32, scope: !163)
!163 = !DILexicalBlockFile(scope: !150, file: !1, discriminator: 3)
!164 = !DILocation(line: 301, column: 28, scope: !163)
!165 = !DILocation(line: 301, column: 18, scope: !163)
!166 = !DILocalVariable(name: "result_c", scope: !150, file: !1, line: 302, type: !90)
!167 = !DILocation(line: 302, column: 19, scope: !150)
!168 = !DILocation(line: 303, column: 32, scope: !150)
!169 = !DILocation(line: 303, column: 31, scope: !150)
!170 = !DILocation(line: 303, column: 33, scope: !150)
!171 = !DILocation(line: 303, column: 5, scope: !150)
!172 = !DILocation(line: 304, column: 20, scope: !150)
!173 = !DILocation(line: 304, column: 40, scope: !150)
!174 = !DILocation(line: 304, column: 29, scope: !150)
!175 = !DILocation(line: 304, column: 22, scope: !150)
!176 = !DILocation(line: 304, column: 5, scope: !150)
!177 = !DILocation(line: 304, column: 13, scope: !150)
!178 = !DILocation(line: 304, column: 18, scope: !150)
!179 = !DILocation(line: 305, column: 20, scope: !150)
!180 = !DILocation(line: 305, column: 33, scope: !150)
!181 = !DILocation(line: 305, column: 22, scope: !150)
!182 = !DILocation(line: 305, column: 5, scope: !150)
!183 = !DILocation(line: 305, column: 13, scope: !150)
!184 = !DILocation(line: 305, column: 18, scope: !150)
!185 = !DILocation(line: 306, column: 50, scope: !150)
!186 = !DILocation(line: 306, column: 45, scope: !150)
!187 = !DILocation(line: 306, column: 53, scope: !150)
!188 = !DILocation(line: 306, column: 42, scope: !150)
!189 = !DILocation(line: 306, column: 67, scope: !150)
!190 = !DILocation(line: 306, column: 75, scope: !150)
!191 = !DILocation(line: 306, column: 62, scope: !156)
!192 = !DILocation(line: 306, column: 60, scope: !150)
!193 = !DILocation(line: 306, column: 5, scope: !150)
!194 = !DILocation(line: 306, column: 13, scope: !150)
!195 = !DILocation(line: 306, column: 17, scope: !150)
!196 = !DILocation(line: 307, column: 5, scope: !150)
!197 = !DILocation(line: 309, column: 11, scope: !198)
!198 = distinct !DILexicalBlock(scope: !146, file: !1, line: 309, column: 11)
!199 = !DILocation(line: 309, column: 13, scope: !198)
!200 = !DILocation(line: 309, column: 11, scope: !146)
!201 = !DILocalVariable(name: "s", scope: !202, file: !1, line: 310, type: !88)
!202 = distinct !DILexicalBlock(scope: !198, file: !1, line: 309, column: 22)
!203 = !DILocation(line: 310, column: 18, scope: !202)
!204 = !DILocation(line: 310, column: 26, scope: !202)
!205 = !DILocation(line: 310, column: 25, scope: !202)
!206 = !DILocation(line: 310, column: 32, scope: !202)
!207 = !DILocation(line: 310, column: 32, scope: !208)
!208 = !DILexicalBlockFile(scope: !202, file: !1, discriminator: 1)
!209 = !DILocation(line: 310, column: 51, scope: !210)
!210 = !DILexicalBlockFile(scope: !202, file: !1, discriminator: 2)
!211 = !DILocation(line: 310, column: 50, scope: !210)
!212 = !DILocation(line: 310, column: 46, scope: !210)
!213 = !DILocation(line: 310, column: 32, scope: !210)
!214 = !DILocation(line: 310, column: 32, scope: !215)
!215 = !DILexicalBlockFile(scope: !202, file: !1, discriminator: 3)
!216 = !DILocation(line: 310, column: 28, scope: !215)
!217 = !DILocation(line: 310, column: 18, scope: !215)
!218 = !DILocalVariable(name: "result_c", scope: !202, file: !1, line: 311, type: !90)
!219 = !DILocation(line: 311, column: 19, scope: !202)
!220 = !DILocation(line: 312, column: 33, scope: !202)
!221 = !DILocation(line: 312, column: 32, scope: !202)
!222 = !DILocation(line: 312, column: 34, scope: !202)
!223 = !DILocation(line: 312, column: 39, scope: !202)
!224 = !DILocation(line: 312, column: 5, scope: !202)
!225 = !DILocation(line: 313, column: 20, scope: !202)
!226 = !DILocation(line: 313, column: 40, scope: !202)
!227 = !DILocation(line: 313, column: 29, scope: !202)
!228 = !DILocation(line: 313, column: 22, scope: !202)
!229 = !DILocation(line: 313, column: 5, scope: !202)
!230 = !DILocation(line: 313, column: 13, scope: !202)
!231 = !DILocation(line: 313, column: 18, scope: !202)
!232 = !DILocation(line: 314, column: 20, scope: !202)
!233 = !DILocation(line: 314, column: 33, scope: !202)
!234 = !DILocation(line: 314, column: 22, scope: !202)
!235 = !DILocation(line: 314, column: 5, scope: !202)
!236 = !DILocation(line: 314, column: 13, scope: !202)
!237 = !DILocation(line: 314, column: 18, scope: !202)
!238 = !DILocation(line: 315, column: 49, scope: !202)
!239 = !DILocation(line: 315, column: 57, scope: !202)
!240 = !DILocation(line: 315, column: 44, scope: !202)
!241 = !DILocation(line: 315, column: 42, scope: !202)
!242 = !DILocation(line: 315, column: 5, scope: !202)
!243 = !DILocation(line: 315, column: 13, scope: !202)
!244 = !DILocation(line: 315, column: 17, scope: !202)
!245 = !DILocation(line: 316, column: 5, scope: !202)
!246 = !DILocation(line: 318, column: 11, scope: !247)
!247 = distinct !DILexicalBlock(scope: !198, file: !1, line: 318, column: 11)
!248 = !DILocation(line: 318, column: 13, scope: !247)
!249 = !DILocation(line: 318, column: 11, scope: !198)
!250 = !DILocalVariable(name: "ln_term", scope: !251, file: !1, line: 319, type: !88)
!251 = distinct !DILexicalBlock(scope: !247, file: !1, line: 318, column: 22)
!252 = !DILocation(line: 319, column: 18, scope: !251)
!253 = !DILocation(line: 319, column: 38, scope: !251)
!254 = !DILocation(line: 319, column: 33, scope: !251)
!255 = !DILocation(line: 319, column: 29, scope: !256)
!256 = !DILexicalBlockFile(scope: !251, file: !1, discriminator: 1)
!257 = !DILocation(line: 319, column: 28, scope: !251)
!258 = !DILocalVariable(name: "scale_factor", scope: !251, file: !1, line: 320, type: !88)
!259 = !DILocation(line: 320, column: 18, scope: !251)
!260 = !DILocation(line: 320, column: 35, scope: !251)
!261 = !DILocation(line: 320, column: 47, scope: !256)
!262 = !DILocation(line: 320, column: 43, scope: !256)
!263 = !DILocation(line: 320, column: 35, scope: !256)
!264 = !DILocation(line: 320, column: 35, scope: !265)
!265 = !DILexicalBlockFile(scope: !251, file: !1, discriminator: 2)
!266 = !DILocation(line: 320, column: 35, scope: !267)
!267 = !DILexicalBlockFile(scope: !251, file: !1, discriminator: 3)
!268 = !DILocation(line: 320, column: 18, scope: !267)
!269 = !DILocalVariable(name: "result_c", scope: !251, file: !1, line: 321, type: !90)
!270 = !DILocation(line: 321, column: 19, scope: !251)
!271 = !DILocation(line: 322, column: 31, scope: !251)
!272 = !DILocation(line: 322, column: 30, scope: !251)
!273 = !DILocation(line: 322, column: 32, scope: !251)
!274 = !DILocation(line: 322, column: 37, scope: !251)
!275 = !DILocation(line: 322, column: 5, scope: !251)
!276 = !DILocation(line: 323, column: 20, scope: !251)
!277 = !DILocation(line: 323, column: 36, scope: !251)
!278 = !DILocation(line: 323, column: 55, scope: !251)
!279 = !DILocation(line: 323, column: 44, scope: !251)
!280 = !DILocation(line: 323, column: 33, scope: !251)
!281 = !DILocation(line: 323, column: 5, scope: !251)
!282 = !DILocation(line: 323, column: 13, scope: !251)
!283 = !DILocation(line: 323, column: 18, scope: !251)
!284 = !DILocation(line: 324, column: 20, scope: !251)
!285 = !DILocation(line: 324, column: 45, scope: !251)
!286 = !DILocation(line: 324, column: 74, scope: !251)
!287 = !DILocation(line: 324, column: 69, scope: !251)
!288 = !DILocation(line: 324, column: 67, scope: !251)
!289 = !DILocation(line: 324, column: 49, scope: !251)
!290 = !DILocation(line: 324, column: 33, scope: !251)
!291 = !DILocation(line: 324, column: 5, scope: !251)
!292 = !DILocation(line: 324, column: 13, scope: !251)
!293 = !DILocation(line: 324, column: 18, scope: !251)
!294 = !DILocation(line: 325, column: 49, scope: !251)
!295 = !DILocation(line: 325, column: 57, scope: !251)
!296 = !DILocation(line: 325, column: 44, scope: !251)
!297 = !DILocation(line: 325, column: 42, scope: !251)
!298 = !DILocation(line: 325, column: 5, scope: !251)
!299 = !DILocation(line: 325, column: 13, scope: !251)
!300 = !DILocation(line: 325, column: 17, scope: !251)
!301 = !DILocation(line: 326, column: 5, scope: !251)
!302 = !DILocation(line: 328, column: 11, scope: !303)
!303 = distinct !DILexicalBlock(scope: !247, file: !1, line: 328, column: 11)
!304 = !DILocation(line: 328, column: 13, scope: !303)
!305 = !DILocation(line: 328, column: 11, scope: !247)
!306 = !DILocation(line: 329, column: 5, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !1, line: 328, column: 21)
!308 = distinct !{!308, !306}
!309 = !DILocation(line: 329, column: 5, scope: !310)
!310 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 1)
!311 = distinct !DILexicalBlock(scope: !307, file: !1, line: 329, column: 5)
!312 = distinct !{!312, !313}
!313 = !DILocation(line: 329, column: 5, scope: !311)
!314 = !DILocation(line: 329, column: 5, scope: !315)
!315 = !DILexicalBlockFile(scope: !316, file: !1, discriminator: 2)
!316 = distinct !DILexicalBlock(scope: !311, file: !1, line: 329, column: 5)
!317 = !DILocation(line: 329, column: 5, scope: !318)
!318 = !DILexicalBlockFile(scope: !311, file: !1, discriminator: 3)
!319 = !DILocation(line: 330, column: 3, scope: !307)
!320 = !DILocation(line: 331, column: 11, scope: !321)
!321 = distinct !DILexicalBlock(scope: !303, file: !1, line: 331, column: 11)
!322 = !DILocation(line: 331, column: 13, scope: !321)
!323 = !DILocation(line: 331, column: 11, scope: !303)
!324 = !DILocalVariable(name: "ln_term", scope: !325, file: !1, line: 332, type: !88)
!325 = distinct !DILexicalBlock(scope: !321, file: !1, line: 331, column: 21)
!326 = !DILocation(line: 332, column: 18, scope: !325)
!327 = !DILocation(line: 332, column: 38, scope: !325)
!328 = !DILocation(line: 332, column: 33, scope: !325)
!329 = !DILocation(line: 332, column: 29, scope: !330)
!330 = !DILexicalBlockFile(scope: !325, file: !1, discriminator: 1)
!331 = !DILocation(line: 332, column: 28, scope: !325)
!332 = !DILocalVariable(name: "scale_factor", scope: !325, file: !1, line: 333, type: !88)
!333 = !DILocation(line: 333, column: 18, scope: !325)
!334 = !DILocation(line: 333, column: 35, scope: !325)
!335 = !DILocation(line: 333, column: 47, scope: !330)
!336 = !DILocation(line: 333, column: 43, scope: !330)
!337 = !DILocation(line: 333, column: 35, scope: !330)
!338 = !DILocation(line: 333, column: 35, scope: !339)
!339 = !DILexicalBlockFile(scope: !325, file: !1, discriminator: 2)
!340 = !DILocation(line: 333, column: 35, scope: !341)
!341 = !DILexicalBlockFile(scope: !325, file: !1, discriminator: 3)
!342 = !DILocation(line: 333, column: 18, scope: !341)
!343 = !DILocalVariable(name: "result_c", scope: !325, file: !1, line: 334, type: !90)
!344 = !DILocation(line: 334, column: 19, scope: !325)
!345 = !DILocation(line: 335, column: 26, scope: !325)
!346 = !DILocation(line: 335, column: 5, scope: !325)
!347 = !DILocation(line: 336, column: 20, scope: !325)
!348 = !DILocation(line: 336, column: 36, scope: !325)
!349 = !DILocation(line: 336, column: 44, scope: !325)
!350 = !DILocation(line: 336, column: 55, scope: !325)
!351 = !DILocation(line: 336, column: 53, scope: !325)
!352 = !DILocation(line: 336, column: 68, scope: !325)
!353 = !DILocation(line: 336, column: 57, scope: !325)
!354 = !DILocation(line: 336, column: 33, scope: !325)
!355 = !DILocation(line: 336, column: 5, scope: !325)
!356 = !DILocation(line: 336, column: 13, scope: !325)
!357 = !DILocation(line: 336, column: 18, scope: !325)
!358 = !DILocation(line: 337, column: 20, scope: !325)
!359 = !DILocation(line: 337, column: 45, scope: !325)
!360 = !DILocation(line: 337, column: 74, scope: !325)
!361 = !DILocation(line: 337, column: 69, scope: !325)
!362 = !DILocation(line: 337, column: 67, scope: !325)
!363 = !DILocation(line: 337, column: 49, scope: !325)
!364 = !DILocation(line: 337, column: 33, scope: !325)
!365 = !DILocation(line: 337, column: 5, scope: !325)
!366 = !DILocation(line: 337, column: 13, scope: !325)
!367 = !DILocation(line: 337, column: 18, scope: !325)
!368 = !DILocation(line: 338, column: 49, scope: !325)
!369 = !DILocation(line: 338, column: 57, scope: !325)
!370 = !DILocation(line: 338, column: 44, scope: !325)
!371 = !DILocation(line: 338, column: 42, scope: !325)
!372 = !DILocation(line: 338, column: 5, scope: !325)
!373 = !DILocation(line: 338, column: 13, scope: !325)
!374 = !DILocation(line: 338, column: 17, scope: !325)
!375 = !DILocation(line: 339, column: 5, scope: !325)
!376 = !DILocation(line: 341, column: 11, scope: !377)
!377 = distinct !DILexicalBlock(scope: !321, file: !1, line: 341, column: 11)
!378 = !DILocation(line: 341, column: 13, scope: !377)
!379 = !DILocation(line: 341, column: 11, scope: !321)
!380 = !DILocalVariable(name: "s", scope: !381, file: !1, line: 342, type: !88)
!381 = distinct !DILexicalBlock(scope: !377, file: !1, line: 341, column: 21)
!382 = !DILocation(line: 342, column: 18, scope: !381)
!383 = !DILocation(line: 342, column: 26, scope: !381)
!384 = !DILocation(line: 342, column: 25, scope: !381)
!385 = !DILocation(line: 342, column: 32, scope: !381)
!386 = !DILocation(line: 342, column: 32, scope: !387)
!387 = !DILexicalBlockFile(scope: !381, file: !1, discriminator: 1)
!388 = !DILocation(line: 342, column: 51, scope: !389)
!389 = !DILexicalBlockFile(scope: !381, file: !1, discriminator: 2)
!390 = !DILocation(line: 342, column: 50, scope: !389)
!391 = !DILocation(line: 342, column: 46, scope: !389)
!392 = !DILocation(line: 342, column: 32, scope: !389)
!393 = !DILocation(line: 342, column: 32, scope: !394)
!394 = !DILexicalBlockFile(scope: !381, file: !1, discriminator: 3)
!395 = !DILocation(line: 342, column: 28, scope: !394)
!396 = !DILocation(line: 342, column: 18, scope: !394)
!397 = !DILocalVariable(name: "result_c", scope: !381, file: !1, line: 343, type: !90)
!398 = !DILocation(line: 343, column: 19, scope: !381)
!399 = !DILocation(line: 344, column: 32, scope: !381)
!400 = !DILocation(line: 344, column: 31, scope: !381)
!401 = !DILocation(line: 344, column: 33, scope: !381)
!402 = !DILocation(line: 344, column: 38, scope: !381)
!403 = !DILocation(line: 344, column: 5, scope: !381)
!404 = !DILocation(line: 345, column: 20, scope: !381)
!405 = !DILocation(line: 345, column: 40, scope: !381)
!406 = !DILocation(line: 345, column: 29, scope: !381)
!407 = !DILocation(line: 345, column: 22, scope: !381)
!408 = !DILocation(line: 345, column: 5, scope: !381)
!409 = !DILocation(line: 345, column: 13, scope: !381)
!410 = !DILocation(line: 345, column: 18, scope: !381)
!411 = !DILocation(line: 346, column: 20, scope: !381)
!412 = !DILocation(line: 346, column: 33, scope: !381)
!413 = !DILocation(line: 346, column: 22, scope: !381)
!414 = !DILocation(line: 346, column: 5, scope: !381)
!415 = !DILocation(line: 346, column: 13, scope: !381)
!416 = !DILocation(line: 346, column: 18, scope: !381)
!417 = !DILocation(line: 347, column: 49, scope: !381)
!418 = !DILocation(line: 347, column: 57, scope: !381)
!419 = !DILocation(line: 347, column: 44, scope: !381)
!420 = !DILocation(line: 347, column: 42, scope: !381)
!421 = !DILocation(line: 347, column: 5, scope: !381)
!422 = !DILocation(line: 347, column: 13, scope: !381)
!423 = !DILocation(line: 347, column: 17, scope: !381)
!424 = !DILocation(line: 348, column: 5, scope: !381)
!425 = !DILocation(line: 350, column: 11, scope: !426)
!426 = distinct !DILexicalBlock(scope: !377, file: !1, line: 350, column: 11)
!427 = !DILocation(line: 350, column: 16, scope: !426)
!428 = !DILocation(line: 350, column: 13, scope: !426)
!429 = !DILocation(line: 350, column: 21, scope: !426)
!430 = !DILocation(line: 350, column: 24, scope: !431)
!431 = !DILexicalBlockFile(scope: !426, file: !1, discriminator: 1)
!432 = !DILocation(line: 350, column: 11, scope: !431)
!433 = !DILocalVariable(name: "s", scope: !434, file: !1, line: 351, type: !88)
!434 = distinct !DILexicalBlock(scope: !426, file: !1, line: 350, column: 31)
!435 = !DILocation(line: 351, column: 18, scope: !434)
!436 = !DILocation(line: 351, column: 26, scope: !434)
!437 = !DILocation(line: 351, column: 25, scope: !434)
!438 = !DILocation(line: 351, column: 32, scope: !434)
!439 = !DILocation(line: 351, column: 32, scope: !440)
!440 = !DILexicalBlockFile(scope: !434, file: !1, discriminator: 1)
!441 = !DILocation(line: 351, column: 51, scope: !442)
!442 = !DILexicalBlockFile(scope: !434, file: !1, discriminator: 2)
!443 = !DILocation(line: 351, column: 50, scope: !442)
!444 = !DILocation(line: 351, column: 46, scope: !442)
!445 = !DILocation(line: 351, column: 32, scope: !442)
!446 = !DILocation(line: 351, column: 32, scope: !447)
!447 = !DILexicalBlockFile(scope: !434, file: !1, discriminator: 3)
!448 = !DILocation(line: 351, column: 28, scope: !447)
!449 = !DILocation(line: 351, column: 18, scope: !447)
!450 = !DILocalVariable(name: "result_c", scope: !434, file: !1, line: 352, type: !90)
!451 = !DILocation(line: 352, column: 19, scope: !434)
!452 = !DILocation(line: 353, column: 31, scope: !434)
!453 = !DILocation(line: 353, column: 30, scope: !434)
!454 = !DILocation(line: 353, column: 32, scope: !434)
!455 = !DILocation(line: 353, column: 5, scope: !434)
!456 = !DILocation(line: 354, column: 20, scope: !434)
!457 = !DILocation(line: 354, column: 41, scope: !434)
!458 = !DILocation(line: 354, column: 29, scope: !434)
!459 = !DILocation(line: 354, column: 22, scope: !434)
!460 = !DILocation(line: 354, column: 5, scope: !434)
!461 = !DILocation(line: 354, column: 13, scope: !434)
!462 = !DILocation(line: 354, column: 18, scope: !434)
!463 = !DILocation(line: 355, column: 20, scope: !434)
!464 = !DILocation(line: 355, column: 52, scope: !434)
!465 = !DILocation(line: 355, column: 41, scope: !434)
!466 = !DILocation(line: 355, column: 22, scope: !434)
!467 = !DILocation(line: 355, column: 5, scope: !434)
!468 = !DILocation(line: 355, column: 13, scope: !434)
!469 = !DILocation(line: 355, column: 18, scope: !434)
!470 = !DILocation(line: 356, column: 27, scope: !434)
!471 = !DILocation(line: 356, column: 29, scope: !434)
!472 = !DILocation(line: 356, column: 24, scope: !434)
!473 = !DILocation(line: 356, column: 36, scope: !434)
!474 = !DILocation(line: 356, column: 61, scope: !434)
!475 = !DILocation(line: 356, column: 69, scope: !434)
!476 = !DILocation(line: 356, column: 56, scope: !434)
!477 = !DILocation(line: 356, column: 54, scope: !434)
!478 = !DILocation(line: 356, column: 5, scope: !434)
!479 = !DILocation(line: 356, column: 13, scope: !434)
!480 = !DILocation(line: 356, column: 17, scope: !434)
!481 = !DILocation(line: 357, column: 8, scope: !482)
!482 = distinct !DILexicalBlock(scope: !434, file: !1, line: 357, column: 8)
!483 = !DILocation(line: 357, column: 16, scope: !482)
!484 = !DILocation(line: 357, column: 20, scope: !482)
!485 = !DILocation(line: 357, column: 8, scope: !434)
!486 = !DILocation(line: 358, column: 7, scope: !482)
!487 = distinct !{!487, !486}
!488 = !DILocation(line: 358, column: 7, scope: !489)
!489 = !DILexicalBlockFile(scope: !490, file: !1, discriminator: 1)
!490 = distinct !DILexicalBlock(scope: !482, file: !1, line: 358, column: 7)
!491 = distinct !{!491, !492}
!492 = !DILocation(line: 358, column: 7, scope: !490)
!493 = !DILocation(line: 358, column: 7, scope: !494)
!494 = !DILexicalBlockFile(scope: !495, file: !1, discriminator: 2)
!495 = distinct !DILexicalBlock(scope: !490, file: !1, line: 358, column: 7)
!496 = !DILocation(line: 358, column: 7, scope: !497)
!497 = !DILexicalBlockFile(scope: !490, file: !1, discriminator: 3)
!498 = !DILocation(line: 358, column: 7, scope: !499)
!499 = !DILexicalBlockFile(scope: !490, file: !1, discriminator: 4)
!500 = !DILocation(line: 360, column: 7, scope: !482)
!501 = !DILocation(line: 361, column: 3, scope: !434)
!502 = !DILocation(line: 363, column: 5, scope: !503)
!503 = distinct !DILexicalBlock(scope: !426, file: !1, line: 362, column: 8)
!504 = distinct !{!504, !502}
!505 = !DILocation(line: 363, column: 5, scope: !506)
!506 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 1)
!507 = distinct !DILexicalBlock(scope: !503, file: !1, line: 363, column: 5)
!508 = distinct !{!508, !509}
!509 = !DILocation(line: 363, column: 5, scope: !507)
!510 = !DILocation(line: 363, column: 5, scope: !511)
!511 = !DILexicalBlockFile(scope: !512, file: !1, discriminator: 2)
!512 = distinct !DILexicalBlock(scope: !507, file: !1, line: 363, column: 5)
!513 = !DILocation(line: 363, column: 5, scope: !514)
!514 = !DILexicalBlockFile(scope: !507, file: !1, discriminator: 3)
!515 = !DILocation(line: 365, column: 1, scope: !106)
!516 = distinct !DISubprogram(name: "gsl_sf_expint_E1_scaled_e", scope: !1, file: !1, line: 472, type: !86, isLocal: false, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!517 = !DILocalVariable(name: "x", arg: 1, scope: !516, file: !1, line: 472, type: !88)
!518 = !DILocation(line: 472, column: 44, scope: !516)
!519 = !DILocalVariable(name: "result", arg: 2, scope: !516, file: !1, line: 472, type: !89)
!520 = !DILocation(line: 472, column: 63, scope: !516)
!521 = !DILocation(line: 474, column: 25, scope: !516)
!522 = !DILocation(line: 474, column: 28, scope: !516)
!523 = !DILocation(line: 474, column: 10, scope: !516)
!524 = !DILocation(line: 474, column: 3, scope: !516)
!525 = distinct !DISubprogram(name: "gsl_sf_expint_E2_e", scope: !1, file: !1, line: 478, type: !86, isLocal: false, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!526 = !DILocalVariable(name: "x", arg: 1, scope: !525, file: !1, line: 478, type: !88)
!527 = !DILocation(line: 478, column: 37, scope: !525)
!528 = !DILocalVariable(name: "result", arg: 2, scope: !525, file: !1, line: 478, type: !89)
!529 = !DILocation(line: 478, column: 56, scope: !525)
!530 = !DILocation(line: 480, column: 25, scope: !525)
!531 = !DILocation(line: 480, column: 28, scope: !525)
!532 = !DILocation(line: 480, column: 10, scope: !525)
!533 = !DILocation(line: 480, column: 3, scope: !525)
!534 = distinct !DISubprogram(name: "expint_E2_impl", scope: !1, file: !1, line: 369, type: !107, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!535 = !DILocalVariable(name: "x", arg: 1, scope: !534, file: !1, line: 369, type: !88)
!536 = !DILocation(line: 369, column: 33, scope: !534)
!537 = !DILocalVariable(name: "result", arg: 2, scope: !534, file: !1, line: 369, type: !89)
!538 = !DILocation(line: 369, column: 52, scope: !534)
!539 = !DILocalVariable(name: "scale", arg: 3, scope: !534, file: !1, line: 369, type: !109)
!540 = !DILocation(line: 369, column: 70, scope: !534)
!541 = !DILocalVariable(name: "xmaxt", scope: !534, file: !1, line: 371, type: !88)
!542 = !DILocation(line: 371, column: 16, scope: !534)
!543 = !DILocalVariable(name: "xmax", scope: !534, file: !1, line: 372, type: !88)
!544 = !DILocation(line: 372, column: 16, scope: !534)
!545 = !DILocation(line: 372, column: 32, scope: !534)
!546 = !DILocation(line: 372, column: 30, scope: !534)
!547 = !DILocation(line: 376, column: 6, scope: !548)
!548 = distinct !DILexicalBlock(scope: !534, file: !1, line: 376, column: 6)
!549 = !DILocation(line: 376, column: 11, scope: !548)
!550 = !DILocation(line: 376, column: 10, scope: !548)
!551 = !DILocation(line: 376, column: 8, scope: !548)
!552 = !DILocation(line: 376, column: 16, scope: !548)
!553 = !DILocation(line: 376, column: 20, scope: !554)
!554 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 1)
!555 = !DILocation(line: 376, column: 6, scope: !554)
!556 = !DILocation(line: 377, column: 5, scope: !557)
!557 = distinct !DILexicalBlock(scope: !548, file: !1, line: 376, column: 27)
!558 = distinct !{!558, !556}
!559 = !DILocation(line: 377, column: 5, scope: !560)
!560 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 1)
!561 = distinct !DILexicalBlock(scope: !557, file: !1, line: 377, column: 5)
!562 = distinct !{!562, !563}
!563 = !DILocation(line: 377, column: 5, scope: !561)
!564 = !DILocation(line: 377, column: 5, scope: !565)
!565 = !DILexicalBlockFile(scope: !566, file: !1, discriminator: 2)
!566 = distinct !DILexicalBlock(scope: !561, file: !1, line: 377, column: 5)
!567 = !DILocation(line: 377, column: 5, scope: !568)
!568 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 3)
!569 = !DILocation(line: 378, column: 3, scope: !557)
!570 = !DILocation(line: 379, column: 12, scope: !571)
!571 = distinct !DILexicalBlock(scope: !548, file: !1, line: 379, column: 12)
!572 = !DILocation(line: 379, column: 14, scope: !571)
!573 = !DILocation(line: 379, column: 12, scope: !548)
!574 = !DILocation(line: 380, column: 5, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !1, line: 379, column: 22)
!576 = !DILocation(line: 380, column: 13, scope: !575)
!577 = !DILocation(line: 380, column: 17, scope: !575)
!578 = !DILocation(line: 381, column: 5, scope: !575)
!579 = !DILocation(line: 381, column: 13, scope: !575)
!580 = !DILocation(line: 381, column: 17, scope: !575)
!581 = !DILocation(line: 382, column: 5, scope: !575)
!582 = !DILocation(line: 383, column: 13, scope: !583)
!583 = distinct !DILexicalBlock(scope: !571, file: !1, line: 383, column: 13)
!584 = !DILocation(line: 383, column: 15, scope: !583)
!585 = !DILocation(line: 383, column: 13, scope: !571)
!586 = !DILocalVariable(name: "ex", scope: !587, file: !1, line: 384, type: !88)
!587 = distinct !DILexicalBlock(scope: !583, file: !1, line: 383, column: 24)
!588 = !DILocation(line: 384, column: 18, scope: !587)
!589 = !DILocation(line: 384, column: 25, scope: !587)
!590 = !DILocation(line: 384, column: 25, scope: !591)
!591 = !DILexicalBlockFile(scope: !587, file: !1, discriminator: 1)
!592 = !DILocation(line: 384, column: 44, scope: !593)
!593 = !DILexicalBlockFile(scope: !587, file: !1, discriminator: 2)
!594 = !DILocation(line: 384, column: 43, scope: !593)
!595 = !DILocation(line: 384, column: 39, scope: !593)
!596 = !DILocation(line: 384, column: 25, scope: !593)
!597 = !DILocation(line: 384, column: 25, scope: !598)
!598 = !DILexicalBlockFile(scope: !587, file: !1, discriminator: 3)
!599 = !DILocation(line: 384, column: 18, scope: !598)
!600 = !DILocalVariable(name: "result_E1", scope: !587, file: !1, line: 385, type: !90)
!601 = !DILocation(line: 385, column: 19, scope: !587)
!602 = !DILocalVariable(name: "stat_E1", scope: !587, file: !1, line: 386, type: !51)
!603 = !DILocation(line: 386, column: 9, scope: !587)
!604 = !DILocation(line: 386, column: 34, scope: !587)
!605 = !DILocation(line: 386, column: 49, scope: !587)
!606 = !DILocation(line: 386, column: 19, scope: !587)
!607 = !DILocation(line: 387, column: 20, scope: !587)
!608 = !DILocation(line: 387, column: 25, scope: !587)
!609 = !DILocation(line: 387, column: 37, scope: !587)
!610 = !DILocation(line: 387, column: 26, scope: !587)
!611 = !DILocation(line: 387, column: 23, scope: !587)
!612 = !DILocation(line: 387, column: 5, scope: !587)
!613 = !DILocation(line: 387, column: 13, scope: !587)
!614 = !DILocation(line: 387, column: 18, scope: !587)
!615 = !DILocation(line: 388, column: 36, scope: !587)
!616 = !DILocation(line: 388, column: 35, scope: !587)
!617 = !DILocation(line: 388, column: 46, scope: !587)
!618 = !DILocation(line: 388, column: 41, scope: !587)
!619 = !DILocation(line: 388, column: 61, scope: !587)
!620 = !DILocation(line: 388, column: 49, scope: !587)
!621 = !DILocation(line: 388, column: 39, scope: !587)
!622 = !DILocation(line: 388, column: 5, scope: !587)
!623 = !DILocation(line: 388, column: 13, scope: !587)
!624 = !DILocation(line: 388, column: 18, scope: !587)
!625 = !DILocation(line: 389, column: 49, scope: !587)
!626 = !DILocation(line: 389, column: 57, scope: !587)
!627 = !DILocation(line: 389, column: 44, scope: !587)
!628 = !DILocation(line: 389, column: 42, scope: !587)
!629 = !DILocation(line: 389, column: 5, scope: !587)
!630 = !DILocation(line: 389, column: 13, scope: !587)
!631 = !DILocation(line: 389, column: 17, scope: !587)
!632 = !DILocation(line: 390, column: 12, scope: !587)
!633 = !DILocation(line: 390, column: 5, scope: !587)
!634 = !DILocation(line: 392, column: 11, scope: !635)
!635 = distinct !DILexicalBlock(scope: !583, file: !1, line: 392, column: 11)
!636 = !DILocation(line: 392, column: 15, scope: !635)
!637 = !DILocation(line: 392, column: 13, scope: !635)
!638 = !DILocation(line: 392, column: 20, scope: !635)
!639 = !DILocation(line: 392, column: 23, scope: !640)
!640 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 1)
!641 = !DILocation(line: 392, column: 11, scope: !640)
!642 = !DILocalVariable(name: "s", scope: !643, file: !1, line: 393, type: !88)
!643 = distinct !DILexicalBlock(scope: !635, file: !1, line: 392, column: 30)
!644 = !DILocation(line: 393, column: 18, scope: !643)
!645 = !DILocation(line: 393, column: 24, scope: !643)
!646 = !DILocation(line: 393, column: 24, scope: !647)
!647 = !DILexicalBlockFile(scope: !643, file: !1, discriminator: 1)
!648 = !DILocation(line: 393, column: 43, scope: !649)
!649 = !DILexicalBlockFile(scope: !643, file: !1, discriminator: 2)
!650 = !DILocation(line: 393, column: 42, scope: !649)
!651 = !DILocation(line: 393, column: 38, scope: !649)
!652 = !DILocation(line: 393, column: 24, scope: !649)
!653 = !DILocation(line: 393, column: 24, scope: !654)
!654 = !DILexicalBlockFile(scope: !643, file: !1, discriminator: 3)
!655 = !DILocation(line: 393, column: 18, scope: !654)
!656 = !DILocalVariable(name: "c1", scope: !643, file: !1, line: 394, type: !88)
!657 = !DILocation(line: 394, column: 18, scope: !643)
!658 = !DILocalVariable(name: "c2", scope: !643, file: !1, line: 395, type: !88)
!659 = !DILocation(line: 395, column: 18, scope: !643)
!660 = !DILocalVariable(name: "c3", scope: !643, file: !1, line: 396, type: !88)
!661 = !DILocation(line: 396, column: 18, scope: !643)
!662 = !DILocalVariable(name: "c4", scope: !643, file: !1, line: 397, type: !88)
!663 = !DILocation(line: 397, column: 18, scope: !643)
!664 = !DILocalVariable(name: "c5", scope: !643, file: !1, line: 398, type: !88)
!665 = !DILocation(line: 398, column: 18, scope: !643)
!666 = !DILocalVariable(name: "c6", scope: !643, file: !1, line: 399, type: !88)
!667 = !DILocation(line: 399, column: 18, scope: !643)
!668 = !DILocalVariable(name: "c7", scope: !643, file: !1, line: 400, type: !88)
!669 = !DILocation(line: 400, column: 18, scope: !643)
!670 = !DILocalVariable(name: "c8", scope: !643, file: !1, line: 401, type: !88)
!671 = !DILocation(line: 401, column: 18, scope: !643)
!672 = !DILocalVariable(name: "c9", scope: !643, file: !1, line: 402, type: !88)
!673 = !DILocation(line: 402, column: 18, scope: !643)
!674 = !DILocalVariable(name: "c10", scope: !643, file: !1, line: 403, type: !88)
!675 = !DILocation(line: 403, column: 18, scope: !643)
!676 = !DILocalVariable(name: "c11", scope: !643, file: !1, line: 404, type: !88)
!677 = !DILocation(line: 404, column: 18, scope: !643)
!678 = !DILocalVariable(name: "c12", scope: !643, file: !1, line: 405, type: !88)
!679 = !DILocation(line: 405, column: 18, scope: !643)
!680 = !DILocalVariable(name: "c13", scope: !643, file: !1, line: 406, type: !88)
!681 = !DILocation(line: 406, column: 18, scope: !643)
!682 = !DILocalVariable(name: "y", scope: !643, file: !1, line: 407, type: !88)
!683 = !DILocation(line: 407, column: 18, scope: !643)
!684 = !DILocation(line: 407, column: 26, scope: !643)
!685 = !DILocation(line: 407, column: 25, scope: !643)
!686 = !DILocalVariable(name: "sum6", scope: !643, file: !1, line: 408, type: !88)
!687 = !DILocation(line: 408, column: 18, scope: !643)
!688 = !DILocation(line: 408, column: 28, scope: !643)
!689 = !DILocation(line: 408, column: 34, scope: !643)
!690 = !DILocation(line: 408, column: 40, scope: !643)
!691 = !DILocation(line: 408, column: 46, scope: !643)
!692 = !DILocation(line: 408, column: 53, scope: !643)
!693 = !DILocation(line: 408, column: 60, scope: !643)
!694 = !DILocation(line: 408, column: 67, scope: !643)
!695 = !DILocation(line: 408, column: 68, scope: !643)
!696 = !DILocation(line: 408, column: 66, scope: !643)
!697 = !DILocation(line: 408, column: 61, scope: !643)
!698 = !DILocation(line: 408, column: 59, scope: !643)
!699 = !DILocation(line: 408, column: 54, scope: !643)
!700 = !DILocation(line: 408, column: 52, scope: !643)
!701 = !DILocation(line: 408, column: 47, scope: !643)
!702 = !DILocation(line: 408, column: 45, scope: !643)
!703 = !DILocation(line: 408, column: 41, scope: !643)
!704 = !DILocation(line: 408, column: 39, scope: !643)
!705 = !DILocation(line: 408, column: 35, scope: !643)
!706 = !DILocation(line: 408, column: 33, scope: !643)
!707 = !DILocation(line: 408, column: 29, scope: !643)
!708 = !DILocation(line: 408, column: 27, scope: !643)
!709 = !DILocalVariable(name: "sum", scope: !643, file: !1, line: 409, type: !88)
!710 = !DILocation(line: 409, column: 18, scope: !643)
!711 = !DILocation(line: 409, column: 25, scope: !643)
!712 = !DILocation(line: 409, column: 31, scope: !643)
!713 = !DILocation(line: 409, column: 37, scope: !643)
!714 = !DILocation(line: 409, column: 43, scope: !643)
!715 = !DILocation(line: 409, column: 49, scope: !643)
!716 = !DILocation(line: 409, column: 55, scope: !643)
!717 = !DILocation(line: 409, column: 57, scope: !643)
!718 = !DILocation(line: 409, column: 56, scope: !643)
!719 = !DILocation(line: 409, column: 54, scope: !643)
!720 = !DILocation(line: 409, column: 50, scope: !643)
!721 = !DILocation(line: 409, column: 48, scope: !643)
!722 = !DILocation(line: 409, column: 44, scope: !643)
!723 = !DILocation(line: 409, column: 42, scope: !643)
!724 = !DILocation(line: 409, column: 38, scope: !643)
!725 = !DILocation(line: 409, column: 36, scope: !643)
!726 = !DILocation(line: 409, column: 32, scope: !643)
!727 = !DILocation(line: 409, column: 30, scope: !643)
!728 = !DILocation(line: 409, column: 26, scope: !643)
!729 = !DILocation(line: 410, column: 19, scope: !643)
!730 = !DILocation(line: 410, column: 30, scope: !643)
!731 = !DILocation(line: 410, column: 28, scope: !643)
!732 = !DILocation(line: 410, column: 21, scope: !643)
!733 = !DILocation(line: 410, column: 35, scope: !643)
!734 = !DILocation(line: 410, column: 34, scope: !643)
!735 = !DILocation(line: 410, column: 5, scope: !643)
!736 = !DILocation(line: 410, column: 13, scope: !643)
!737 = !DILocation(line: 410, column: 17, scope: !643)
!738 = !DILocation(line: 411, column: 26, scope: !643)
!739 = !DILocation(line: 411, column: 28, scope: !643)
!740 = !DILocation(line: 411, column: 23, scope: !643)
!741 = !DILocation(line: 411, column: 35, scope: !643)
!742 = !DILocation(line: 411, column: 55, scope: !643)
!743 = !DILocation(line: 411, column: 63, scope: !643)
!744 = !DILocation(line: 411, column: 53, scope: !643)
!745 = !DILocation(line: 411, column: 5, scope: !643)
!746 = !DILocation(line: 411, column: 13, scope: !643)
!747 = !DILocation(line: 411, column: 17, scope: !643)
!748 = !DILocation(line: 412, column: 8, scope: !749)
!749 = distinct !DILexicalBlock(scope: !643, file: !1, line: 412, column: 8)
!750 = !DILocation(line: 412, column: 16, scope: !749)
!751 = !DILocation(line: 412, column: 20, scope: !749)
!752 = !DILocation(line: 412, column: 8, scope: !643)
!753 = !DILocation(line: 413, column: 7, scope: !749)
!754 = distinct !{!754, !753}
!755 = !DILocation(line: 413, column: 7, scope: !756)
!756 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 1)
!757 = distinct !DILexicalBlock(scope: !749, file: !1, line: 413, column: 7)
!758 = distinct !{!758, !759}
!759 = !DILocation(line: 413, column: 7, scope: !757)
!760 = !DILocation(line: 413, column: 7, scope: !761)
!761 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 2)
!762 = distinct !DILexicalBlock(scope: !757, file: !1, line: 413, column: 7)
!763 = !DILocation(line: 413, column: 7, scope: !764)
!764 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 3)
!765 = !DILocation(line: 413, column: 7, scope: !766)
!766 = !DILexicalBlockFile(scope: !757, file: !1, discriminator: 4)
!767 = !DILocation(line: 415, column: 7, scope: !749)
!768 = !DILocation(line: 416, column: 3, scope: !643)
!769 = !DILocation(line: 418, column: 5, scope: !770)
!770 = distinct !DILexicalBlock(scope: !635, file: !1, line: 417, column: 8)
!771 = distinct !{!771, !769}
!772 = !DILocation(line: 418, column: 5, scope: !773)
!773 = !DILexicalBlockFile(scope: !774, file: !1, discriminator: 1)
!774 = distinct !DILexicalBlock(scope: !770, file: !1, line: 418, column: 5)
!775 = distinct !{!775, !776}
!776 = !DILocation(line: 418, column: 5, scope: !774)
!777 = !DILocation(line: 418, column: 5, scope: !778)
!778 = !DILexicalBlockFile(scope: !779, file: !1, discriminator: 2)
!779 = distinct !DILexicalBlock(scope: !774, file: !1, line: 418, column: 5)
!780 = !DILocation(line: 418, column: 5, scope: !781)
!781 = !DILexicalBlockFile(scope: !774, file: !1, discriminator: 3)
!782 = !DILocation(line: 420, column: 1, scope: !534)
!783 = distinct !DISubprogram(name: "gsl_sf_expint_E2_scaled_e", scope: !1, file: !1, line: 484, type: !86, isLocal: false, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!784 = !DILocalVariable(name: "x", arg: 1, scope: !783, file: !1, line: 484, type: !88)
!785 = !DILocation(line: 484, column: 44, scope: !783)
!786 = !DILocalVariable(name: "result", arg: 2, scope: !783, file: !1, line: 484, type: !89)
!787 = !DILocation(line: 484, column: 63, scope: !783)
!788 = !DILocation(line: 486, column: 25, scope: !783)
!789 = !DILocation(line: 486, column: 28, scope: !783)
!790 = !DILocation(line: 486, column: 10, scope: !783)
!791 = !DILocation(line: 486, column: 3, scope: !783)
!792 = distinct !DISubprogram(name: "gsl_sf_expint_En_e", scope: !1, file: !1, line: 489, type: !793, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!793 = !DISubroutineType(types: !794)
!794 = !{!51, !109, !88, !89}
!795 = !DILocalVariable(name: "n", arg: 1, scope: !792, file: !1, line: 489, type: !109)
!796 = !DILocation(line: 489, column: 34, scope: !792)
!797 = !DILocalVariable(name: "x", arg: 2, scope: !792, file: !1, line: 489, type: !88)
!798 = !DILocation(line: 489, column: 50, scope: !792)
!799 = !DILocalVariable(name: "result", arg: 3, scope: !792, file: !1, line: 489, type: !89)
!800 = !DILocation(line: 489, column: 69, scope: !792)
!801 = !DILocation(line: 491, column: 25, scope: !792)
!802 = !DILocation(line: 491, column: 28, scope: !792)
!803 = !DILocation(line: 491, column: 31, scope: !792)
!804 = !DILocation(line: 491, column: 10, scope: !792)
!805 = !DILocation(line: 491, column: 3, scope: !792)
!806 = distinct !DISubprogram(name: "expint_En_impl", scope: !1, file: !1, line: 423, type: !807, isLocal: true, isDefinition: true, scopeLine: 424, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!807 = !DISubroutineType(types: !808)
!808 = !{!51, !109, !88, !89, !109}
!809 = !DILocalVariable(name: "n", arg: 1, scope: !806, file: !1, line: 423, type: !109)
!810 = !DILocation(line: 423, column: 30, scope: !806)
!811 = !DILocalVariable(name: "x", arg: 2, scope: !806, file: !1, line: 423, type: !88)
!812 = !DILocation(line: 423, column: 46, scope: !806)
!813 = !DILocalVariable(name: "result", arg: 3, scope: !806, file: !1, line: 423, type: !89)
!814 = !DILocation(line: 423, column: 65, scope: !806)
!815 = !DILocalVariable(name: "scale", arg: 4, scope: !806, file: !1, line: 423, type: !109)
!816 = !DILocation(line: 423, column: 83, scope: !806)
!817 = !DILocation(line: 425, column: 7, scope: !818)
!818 = distinct !DILexicalBlock(scope: !806, file: !1, line: 425, column: 7)
!819 = !DILocation(line: 425, column: 9, scope: !818)
!820 = !DILocation(line: 425, column: 7, scope: !806)
!821 = !DILocation(line: 426, column: 5, scope: !822)
!822 = distinct !DILexicalBlock(scope: !818, file: !1, line: 425, column: 14)
!823 = distinct !{!823, !821}
!824 = !DILocation(line: 426, column: 5, scope: !825)
!825 = !DILexicalBlockFile(scope: !826, file: !1, discriminator: 1)
!826 = distinct !DILexicalBlock(scope: !822, file: !1, line: 426, column: 5)
!827 = distinct !{!827, !828}
!828 = !DILocation(line: 426, column: 5, scope: !826)
!829 = !DILocation(line: 426, column: 5, scope: !830)
!830 = !DILexicalBlockFile(scope: !831, file: !1, discriminator: 2)
!831 = distinct !DILexicalBlock(scope: !826, file: !1, line: 426, column: 5)
!832 = !DILocation(line: 426, column: 5, scope: !833)
!833 = !DILexicalBlockFile(scope: !826, file: !1, discriminator: 3)
!834 = !DILocation(line: 427, column: 3, scope: !822)
!835 = !DILocation(line: 427, column: 14, scope: !836)
!836 = !DILexicalBlockFile(scope: !837, file: !1, discriminator: 1)
!837 = distinct !DILexicalBlock(scope: !818, file: !1, line: 427, column: 14)
!838 = !DILocation(line: 427, column: 16, scope: !836)
!839 = !DILocation(line: 428, column: 9, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !1, line: 428, column: 9)
!841 = distinct !DILexicalBlock(scope: !837, file: !1, line: 427, column: 22)
!842 = !DILocation(line: 428, column: 11, scope: !840)
!843 = !DILocation(line: 428, column: 9, scope: !841)
!844 = !DILocation(line: 429, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !1, line: 428, column: 17)
!846 = distinct !{!846, !844}
!847 = !DILocation(line: 429, column: 7, scope: !848)
!848 = !DILexicalBlockFile(scope: !849, file: !1, discriminator: 1)
!849 = distinct !DILexicalBlock(scope: !845, file: !1, line: 429, column: 7)
!850 = distinct !{!850, !851}
!851 = !DILocation(line: 429, column: 7, scope: !849)
!852 = !DILocation(line: 429, column: 7, scope: !853)
!853 = !DILexicalBlockFile(scope: !854, file: !1, discriminator: 2)
!854 = distinct !DILexicalBlock(scope: !849, file: !1, line: 429, column: 7)
!855 = !DILocation(line: 429, column: 7, scope: !856)
!856 = !DILexicalBlockFile(scope: !849, file: !1, discriminator: 3)
!857 = !DILocation(line: 430, column: 5, scope: !845)
!858 = !DILocation(line: 431, column: 22, scope: !859)
!859 = distinct !DILexicalBlock(scope: !840, file: !1, line: 430, column: 12)
!860 = !DILocation(line: 431, column: 22, scope: !861)
!861 = !DILexicalBlockFile(scope: !859, file: !1, discriminator: 1)
!862 = !DILocation(line: 431, column: 41, scope: !863)
!863 = !DILexicalBlockFile(scope: !859, file: !1, discriminator: 2)
!864 = !DILocation(line: 431, column: 40, scope: !863)
!865 = !DILocation(line: 431, column: 36, scope: !863)
!866 = !DILocation(line: 431, column: 22, scope: !863)
!867 = !DILocation(line: 431, column: 22, scope: !868)
!868 = !DILexicalBlockFile(scope: !859, file: !1, discriminator: 3)
!869 = !DILocation(line: 431, column: 47, scope: !868)
!870 = !DILocation(line: 431, column: 45, scope: !868)
!871 = !DILocation(line: 431, column: 7, scope: !868)
!872 = !DILocation(line: 431, column: 15, scope: !868)
!873 = !DILocation(line: 431, column: 19, scope: !868)
!874 = !DILocation(line: 432, column: 48, scope: !859)
!875 = !DILocation(line: 432, column: 56, scope: !859)
!876 = !DILocation(line: 432, column: 43, scope: !859)
!877 = !DILocation(line: 432, column: 41, scope: !859)
!878 = !DILocation(line: 432, column: 7, scope: !859)
!879 = !DILocation(line: 432, column: 15, scope: !859)
!880 = !DILocation(line: 432, column: 19, scope: !859)
!881 = !DILocation(line: 433, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !859, file: !1, line: 433, column: 7)
!883 = !DILocation(line: 433, column: 7, scope: !859)
!884 = !DILocation(line: 433, column: 7, scope: !885)
!885 = !DILexicalBlockFile(scope: !882, file: !1, discriminator: 1)
!886 = distinct !{!886, !881}
!887 = !DILocation(line: 433, column: 7, scope: !888)
!888 = !DILexicalBlockFile(scope: !889, file: !1, discriminator: 2)
!889 = distinct !DILexicalBlock(scope: !882, file: !1, line: 433, column: 7)
!890 = !DILocation(line: 433, column: 7, scope: !891)
!891 = !DILexicalBlockFile(scope: !889, file: !1, discriminator: 3)
!892 = !DILocation(line: 434, column: 7, scope: !859)
!893 = !DILocation(line: 436, column: 3, scope: !841)
!894 = !DILocation(line: 436, column: 14, scope: !895)
!895 = !DILexicalBlockFile(scope: !896, file: !1, discriminator: 1)
!896 = distinct !DILexicalBlock(scope: !837, file: !1, line: 436, column: 14)
!897 = !DILocation(line: 436, column: 16, scope: !895)
!898 = !DILocation(line: 437, column: 27, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !1, line: 436, column: 22)
!900 = !DILocation(line: 437, column: 30, scope: !899)
!901 = !DILocation(line: 437, column: 38, scope: !899)
!902 = !DILocation(line: 437, column: 12, scope: !899)
!903 = !DILocation(line: 437, column: 5, scope: !899)
!904 = !DILocation(line: 438, column: 14, scope: !905)
!905 = distinct !DILexicalBlock(scope: !896, file: !1, line: 438, column: 14)
!906 = !DILocation(line: 438, column: 16, scope: !905)
!907 = !DILocation(line: 438, column: 14, scope: !896)
!908 = !DILocation(line: 439, column: 27, scope: !909)
!909 = distinct !DILexicalBlock(scope: !905, file: !1, line: 438, column: 22)
!910 = !DILocation(line: 439, column: 30, scope: !909)
!911 = !DILocation(line: 439, column: 38, scope: !909)
!912 = !DILocation(line: 439, column: 12, scope: !909)
!913 = !DILocation(line: 439, column: 5, scope: !909)
!914 = !DILocation(line: 441, column: 8, scope: !915)
!915 = distinct !DILexicalBlock(scope: !916, file: !1, line: 441, column: 8)
!916 = distinct !DILexicalBlock(scope: !905, file: !1, line: 440, column: 10)
!917 = !DILocation(line: 441, column: 10, scope: !915)
!918 = !DILocation(line: 441, column: 8, scope: !916)
!919 = !DILocation(line: 442, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !915, file: !1, line: 441, column: 15)
!921 = distinct !{!921, !919}
!922 = !DILocation(line: 442, column: 7, scope: !923)
!923 = !DILexicalBlockFile(scope: !924, file: !1, discriminator: 1)
!924 = distinct !DILexicalBlock(scope: !920, file: !1, line: 442, column: 7)
!925 = distinct !{!925, !926}
!926 = !DILocation(line: 442, column: 7, scope: !924)
!927 = !DILocation(line: 442, column: 7, scope: !928)
!928 = !DILexicalBlockFile(scope: !929, file: !1, discriminator: 2)
!929 = distinct !DILexicalBlock(scope: !924, file: !1, line: 442, column: 7)
!930 = !DILocation(line: 442, column: 7, scope: !931)
!931 = !DILexicalBlockFile(scope: !924, file: !1, discriminator: 3)
!932 = !DILocation(line: 443, column: 5, scope: !920)
!933 = !DILocation(line: 444, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !916, file: !1, line: 444, column: 9)
!935 = !DILocation(line: 444, column: 11, scope: !934)
!936 = !DILocation(line: 444, column: 9, scope: !916)
!937 = !DILocation(line: 445, column: 22, scope: !938)
!938 = distinct !DILexicalBlock(scope: !934, file: !1, line: 444, column: 17)
!939 = !DILocation(line: 445, column: 34, scope: !940)
!940 = !DILexicalBlockFile(scope: !938, file: !1, discriminator: 1)
!941 = !DILocation(line: 445, column: 30, scope: !940)
!942 = !DILocation(line: 445, column: 22, scope: !940)
!943 = !DILocation(line: 445, column: 22, scope: !944)
!944 = !DILexicalBlockFile(scope: !938, file: !1, discriminator: 2)
!945 = !DILocation(line: 445, column: 22, scope: !946)
!946 = !DILexicalBlockFile(scope: !938, file: !1, discriminator: 3)
!947 = !DILocation(line: 445, column: 49, scope: !946)
!948 = !DILocation(line: 445, column: 50, scope: !946)
!949 = !DILocation(line: 445, column: 47, scope: !946)
!950 = !DILocation(line: 445, column: 43, scope: !946)
!951 = !DILocation(line: 445, column: 7, scope: !946)
!952 = !DILocation(line: 445, column: 15, scope: !946)
!953 = !DILocation(line: 445, column: 19, scope: !946)
!954 = !DILocation(line: 446, column: 48, scope: !938)
!955 = !DILocation(line: 446, column: 56, scope: !938)
!956 = !DILocation(line: 446, column: 43, scope: !938)
!957 = !DILocation(line: 446, column: 41, scope: !938)
!958 = !DILocation(line: 446, column: 7, scope: !938)
!959 = !DILocation(line: 446, column: 15, scope: !938)
!960 = !DILocation(line: 446, column: 19, scope: !938)
!961 = !DILocation(line: 447, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !938, file: !1, line: 447, column: 7)
!963 = !DILocation(line: 447, column: 7, scope: !938)
!964 = !DILocation(line: 447, column: 7, scope: !965)
!965 = !DILexicalBlockFile(scope: !962, file: !1, discriminator: 1)
!966 = distinct !{!966, !961}
!967 = !DILocation(line: 447, column: 7, scope: !968)
!968 = !DILexicalBlockFile(scope: !969, file: !1, discriminator: 2)
!969 = distinct !DILexicalBlock(scope: !962, file: !1, line: 447, column: 7)
!970 = !DILocation(line: 447, column: 7, scope: !971)
!971 = !DILexicalBlockFile(scope: !969, file: !1, discriminator: 3)
!972 = !DILocation(line: 448, column: 7, scope: !938)
!973 = !DILocalVariable(name: "result_g", scope: !974, file: !1, line: 450, type: !90)
!974 = distinct !DILexicalBlock(scope: !934, file: !1, line: 449, column: 12)
!975 = !DILocation(line: 450, column: 21, scope: !974)
!976 = !DILocalVariable(name: "prefactor", scope: !974, file: !1, line: 451, type: !49)
!977 = !DILocation(line: 451, column: 14, scope: !974)
!978 = !DILocation(line: 451, column: 30, scope: !974)
!979 = !DILocation(line: 451, column: 33, scope: !974)
!980 = !DILocation(line: 451, column: 34, scope: !974)
!981 = !DILocation(line: 451, column: 26, scope: !974)
!982 = !DILocalVariable(name: "status", scope: !974, file: !1, line: 452, type: !51)
!983 = !DILocation(line: 452, column: 11, scope: !974)
!984 = !DILocation(line: 452, column: 42, scope: !974)
!985 = !DILocation(line: 452, column: 41, scope: !974)
!986 = !DILocation(line: 452, column: 40, scope: !974)
!987 = !DILocation(line: 452, column: 45, scope: !974)
!988 = !DILocation(line: 452, column: 20, scope: !974)
!989 = !DILocalVariable(name: "scale_factor", scope: !974, file: !1, line: 453, type: !49)
!990 = !DILocation(line: 453, column: 14, scope: !974)
!991 = !DILocation(line: 453, column: 31, scope: !974)
!992 = !DILocation(line: 453, column: 43, scope: !993)
!993 = !DILexicalBlockFile(scope: !974, file: !1, discriminator: 1)
!994 = !DILocation(line: 453, column: 39, scope: !993)
!995 = !DILocation(line: 453, column: 31, scope: !993)
!996 = !DILocation(line: 453, column: 31, scope: !997)
!997 = !DILexicalBlockFile(scope: !974, file: !1, discriminator: 2)
!998 = !DILocation(line: 453, column: 31, scope: !999)
!999 = !DILexicalBlockFile(scope: !974, file: !1, discriminator: 3)
!1000 = !DILocation(line: 453, column: 14, scope: !999)
!1001 = !DILocation(line: 454, column: 21, scope: !974)
!1002 = !DILocation(line: 454, column: 36, scope: !974)
!1003 = !DILocation(line: 454, column: 34, scope: !974)
!1004 = !DILocation(line: 454, column: 57, scope: !974)
!1005 = !DILocation(line: 454, column: 46, scope: !974)
!1006 = !DILocation(line: 454, column: 7, scope: !974)
!1007 = !DILocation(line: 454, column: 15, scope: !974)
!1008 = !DILocation(line: 454, column: 19, scope: !974)
!1009 = !DILocation(line: 455, column: 48, scope: !974)
!1010 = !DILocation(line: 455, column: 56, scope: !974)
!1011 = !DILocation(line: 455, column: 43, scope: !974)
!1012 = !DILocation(line: 455, column: 41, scope: !974)
!1013 = !DILocation(line: 455, column: 7, scope: !974)
!1014 = !DILocation(line: 455, column: 15, scope: !974)
!1015 = !DILocation(line: 455, column: 19, scope: !974)
!1016 = !DILocation(line: 456, column: 31, scope: !974)
!1017 = !DILocation(line: 456, column: 46, scope: !974)
!1018 = !DILocation(line: 456, column: 44, scope: !974)
!1019 = !DILocation(line: 456, column: 67, scope: !974)
!1020 = !DILocation(line: 456, column: 56, scope: !974)
!1021 = !DILocation(line: 456, column: 26, scope: !974)
!1022 = !DILocation(line: 456, column: 24, scope: !974)
!1023 = !DILocation(line: 456, column: 7, scope: !974)
!1024 = !DILocation(line: 456, column: 15, scope: !974)
!1025 = !DILocation(line: 456, column: 19, scope: !974)
!1026 = !DILocation(line: 457, column: 11, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !974, file: !1, line: 457, column: 11)
!1028 = !DILocation(line: 457, column: 18, scope: !1027)
!1029 = !DILocation(line: 457, column: 11, scope: !974)
!1030 = !DILocation(line: 457, column: 34, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1032, file: !1, discriminator: 1)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 457, column: 34)
!1033 = !DILocation(line: 457, column: 34, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1032, file: !1, discriminator: 2)
!1035 = distinct !{!1035, !1036}
!1036 = !DILocation(line: 457, column: 34, scope: !1032)
!1037 = !DILocation(line: 457, column: 34, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1039, file: !1, discriminator: 3)
!1039 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 457, column: 34)
!1040 = !DILocation(line: 457, column: 34, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1039, file: !1, discriminator: 4)
!1042 = !DILocation(line: 457, column: 34, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1032, file: !1, discriminator: 5)
!1044 = !DILocation(line: 458, column: 14, scope: !974)
!1045 = !DILocation(line: 458, column: 7, scope: !974)
!1046 = !DILocation(line: 461, column: 1, scope: !806)
!1047 = distinct !DISubprogram(name: "gsl_sf_expint_En_scaled_e", scope: !1, file: !1, line: 495, type: !793, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!1048 = !DILocalVariable(name: "n", arg: 1, scope: !1047, file: !1, line: 495, type: !109)
!1049 = !DILocation(line: 495, column: 41, scope: !1047)
!1050 = !DILocalVariable(name: "x", arg: 2, scope: !1047, file: !1, line: 495, type: !88)
!1051 = !DILocation(line: 495, column: 57, scope: !1047)
!1052 = !DILocalVariable(name: "result", arg: 3, scope: !1047, file: !1, line: 495, type: !89)
!1053 = !DILocation(line: 495, column: 76, scope: !1047)
!1054 = !DILocation(line: 497, column: 25, scope: !1047)
!1055 = !DILocation(line: 497, column: 28, scope: !1047)
!1056 = !DILocation(line: 497, column: 31, scope: !1047)
!1057 = !DILocation(line: 497, column: 10, scope: !1047)
!1058 = !DILocation(line: 497, column: 3, scope: !1047)
!1059 = distinct !DISubprogram(name: "gsl_sf_expint_Ei_e", scope: !1, file: !1, line: 501, type: !86, isLocal: false, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!1060 = !DILocalVariable(name: "x", arg: 1, scope: !1059, file: !1, line: 501, type: !88)
!1061 = !DILocation(line: 501, column: 37, scope: !1059)
!1062 = !DILocalVariable(name: "result", arg: 2, scope: !1059, file: !1, line: 501, type: !89)
!1063 = !DILocation(line: 501, column: 56, scope: !1059)
!1064 = !DILocalVariable(name: "status", scope: !1065, file: !1, line: 506, type: !51)
!1065 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 505, column: 3)
!1066 = !DILocation(line: 506, column: 9, scope: !1065)
!1067 = !DILocation(line: 506, column: 38, scope: !1065)
!1068 = !DILocation(line: 506, column: 37, scope: !1065)
!1069 = !DILocation(line: 506, column: 41, scope: !1065)
!1070 = !DILocation(line: 506, column: 18, scope: !1065)
!1071 = !DILocation(line: 507, column: 20, scope: !1065)
!1072 = !DILocation(line: 507, column: 28, scope: !1065)
!1073 = !DILocation(line: 507, column: 19, scope: !1065)
!1074 = !DILocation(line: 507, column: 5, scope: !1065)
!1075 = !DILocation(line: 507, column: 13, scope: !1065)
!1076 = !DILocation(line: 507, column: 17, scope: !1065)
!1077 = !DILocation(line: 508, column: 12, scope: !1065)
!1078 = !DILocation(line: 508, column: 5, scope: !1065)
!1079 = distinct !DISubprogram(name: "gsl_sf_expint_Ei_scaled_e", scope: !1, file: !1, line: 513, type: !86, isLocal: false, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!1080 = !DILocalVariable(name: "x", arg: 1, scope: !1079, file: !1, line: 513, type: !88)
!1081 = !DILocation(line: 513, column: 44, scope: !1079)
!1082 = !DILocalVariable(name: "result", arg: 2, scope: !1079, file: !1, line: 513, type: !89)
!1083 = !DILocation(line: 513, column: 63, scope: !1079)
!1084 = !DILocalVariable(name: "status", scope: !1085, file: !1, line: 518, type: !51)
!1085 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 517, column: 3)
!1086 = !DILocation(line: 518, column: 9, scope: !1085)
!1087 = !DILocation(line: 518, column: 45, scope: !1085)
!1088 = !DILocation(line: 518, column: 44, scope: !1085)
!1089 = !DILocation(line: 518, column: 48, scope: !1085)
!1090 = !DILocation(line: 518, column: 18, scope: !1085)
!1091 = !DILocation(line: 519, column: 20, scope: !1085)
!1092 = !DILocation(line: 519, column: 28, scope: !1085)
!1093 = !DILocation(line: 519, column: 19, scope: !1085)
!1094 = !DILocation(line: 519, column: 5, scope: !1085)
!1095 = !DILocation(line: 519, column: 13, scope: !1085)
!1096 = !DILocation(line: 519, column: 17, scope: !1085)
!1097 = !DILocation(line: 520, column: 12, scope: !1085)
!1098 = !DILocation(line: 520, column: 5, scope: !1085)
!1099 = distinct !DISubprogram(name: "gsl_sf_expint_E1", scope: !1, file: !1, line: 543, type: !1100, isLocal: false, isDefinition: true, scopeLine: 544, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!49, !88}
!1102 = !DILocalVariable(name: "x", arg: 1, scope: !1099, file: !1, line: 543, type: !88)
!1103 = !DILocation(line: 543, column: 38, scope: !1099)
!1104 = !DILocalVariable(name: "result", scope: !1099, file: !1, line: 545, type: !90)
!1105 = !DILocation(line: 545, column: 3, scope: !1099)
!1106 = !DILocalVariable(name: "status", scope: !1099, file: !1, line: 545, type: !51)
!1107 = !DILocation(line: 545, column: 3, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 545, column: 3)
!1109 = !DILocation(line: 545, column: 3, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 1)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 545, column: 3)
!1112 = distinct !{!1112, !1113}
!1113 = !DILocation(line: 545, column: 3, scope: !1111)
!1114 = !DILocation(line: 545, column: 3, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1116, file: !1, discriminator: 2)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !1, line: 545, column: 3)
!1117 = !DILocation(line: 545, column: 3, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1111, file: !1, discriminator: 3)
!1119 = !DILocation(line: 545, column: 3, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1099, file: !1, discriminator: 4)
!1121 = !DILocation(line: 546, column: 1, scope: !1099)
!1122 = distinct !DISubprogram(name: "gsl_sf_expint_E1_scaled", scope: !1, file: !1, line: 548, type: !1100, isLocal: false, isDefinition: true, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!1123 = !DILocalVariable(name: "x", arg: 1, scope: !1122, file: !1, line: 548, type: !88)
!1124 = !DILocation(line: 548, column: 45, scope: !1122)
!1125 = !DILocalVariable(name: "result", scope: !1122, file: !1, line: 550, type: !90)
!1126 = !DILocation(line: 550, column: 3, scope: !1122)
!1127 = !DILocalVariable(name: "status", scope: !1122, file: !1, line: 550, type: !51)
!1128 = !DILocation(line: 550, column: 3, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 550, column: 3)
!1130 = !DILocation(line: 550, column: 3, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1132, file: !1, discriminator: 1)
!1132 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 550, column: 3)
!1133 = distinct !{!1133, !1134}
!1134 = !DILocation(line: 550, column: 3, scope: !1132)
!1135 = !DILocation(line: 550, column: 3, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1137, file: !1, discriminator: 2)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !1, line: 550, column: 3)
!1138 = !DILocation(line: 550, column: 3, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1132, file: !1, discriminator: 3)
!1140 = !DILocation(line: 550, column: 3, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1122, file: !1, discriminator: 4)
!1142 = !DILocation(line: 551, column: 1, scope: !1122)
!1143 = distinct !DISubprogram(name: "gsl_sf_expint_E2", scope: !1, file: !1, line: 553, type: !1100, isLocal: false, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!1144 = !DILocalVariable(name: "x", arg: 1, scope: !1143, file: !1, line: 553, type: !88)
!1145 = !DILocation(line: 553, column: 38, scope: !1143)
!1146 = !DILocalVariable(name: "result", scope: !1143, file: !1, line: 555, type: !90)
!1147 = !DILocation(line: 555, column: 3, scope: !1143)
!1148 = !DILocalVariable(name: "status", scope: !1143, file: !1, line: 555, type: !51)
!1149 = !DILocation(line: 555, column: 3, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1143, file: !1, line: 555, column: 3)
!1151 = !DILocation(line: 555, column: 3, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1153, file: !1, discriminator: 1)
!1153 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 555, column: 3)
!1154 = distinct !{!1154, !1155}
!1155 = !DILocation(line: 555, column: 3, scope: !1153)
!1156 = !DILocation(line: 555, column: 3, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1158, file: !1, discriminator: 2)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !1, line: 555, column: 3)
!1159 = !DILocation(line: 555, column: 3, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1153, file: !1, discriminator: 3)
!1161 = !DILocation(line: 555, column: 3, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1143, file: !1, discriminator: 4)
!1163 = !DILocation(line: 556, column: 1, scope: !1143)
!1164 = distinct !DISubprogram(name: "gsl_sf_expint_E2_scaled", scope: !1, file: !1, line: 558, type: !1100, isLocal: false, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!1165 = !DILocalVariable(name: "x", arg: 1, scope: !1164, file: !1, line: 558, type: !88)
!1166 = !DILocation(line: 558, column: 45, scope: !1164)
!1167 = !DILocalVariable(name: "result", scope: !1164, file: !1, line: 560, type: !90)
!1168 = !DILocation(line: 560, column: 3, scope: !1164)
!1169 = !DILocalVariable(name: "status", scope: !1164, file: !1, line: 560, type: !51)
!1170 = !DILocation(line: 560, column: 3, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 560, column: 3)
!1172 = !DILocation(line: 560, column: 3, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1174, file: !1, discriminator: 1)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 560, column: 3)
!1175 = distinct !{!1175, !1176}
!1176 = !DILocation(line: 560, column: 3, scope: !1174)
!1177 = !DILocation(line: 560, column: 3, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1179, file: !1, discriminator: 2)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !1, line: 560, column: 3)
!1180 = !DILocation(line: 560, column: 3, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1174, file: !1, discriminator: 3)
!1182 = !DILocation(line: 560, column: 3, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1164, file: !1, discriminator: 4)
!1184 = !DILocation(line: 561, column: 1, scope: !1164)
!1185 = distinct !DISubprogram(name: "gsl_sf_expint_En", scope: !1, file: !1, line: 563, type: !1186, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!49, !109, !88}
!1188 = !DILocalVariable(name: "n", arg: 1, scope: !1185, file: !1, line: 563, type: !109)
!1189 = !DILocation(line: 563, column: 35, scope: !1185)
!1190 = !DILocalVariable(name: "x", arg: 2, scope: !1185, file: !1, line: 563, type: !88)
!1191 = !DILocation(line: 563, column: 51, scope: !1185)
!1192 = !DILocalVariable(name: "result", scope: !1185, file: !1, line: 565, type: !90)
!1193 = !DILocation(line: 565, column: 3, scope: !1185)
!1194 = !DILocalVariable(name: "status", scope: !1185, file: !1, line: 565, type: !51)
!1195 = !DILocation(line: 565, column: 3, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 565, column: 3)
!1197 = !DILocation(line: 565, column: 3, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1199, file: !1, discriminator: 1)
!1199 = distinct !DILexicalBlock(scope: !1196, file: !1, line: 565, column: 3)
!1200 = distinct !{!1200, !1201}
!1201 = !DILocation(line: 565, column: 3, scope: !1199)
!1202 = !DILocation(line: 565, column: 3, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !1, discriminator: 2)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 565, column: 3)
!1205 = !DILocation(line: 565, column: 3, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1199, file: !1, discriminator: 3)
!1207 = !DILocation(line: 565, column: 3, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !1185, file: !1, discriminator: 4)
!1209 = !DILocation(line: 566, column: 1, scope: !1185)
!1210 = distinct !DISubprogram(name: "gsl_sf_expint_En_scaled", scope: !1, file: !1, line: 568, type: !1186, isLocal: false, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!1211 = !DILocalVariable(name: "n", arg: 1, scope: !1210, file: !1, line: 568, type: !109)
!1212 = !DILocation(line: 568, column: 42, scope: !1210)
!1213 = !DILocalVariable(name: "x", arg: 2, scope: !1210, file: !1, line: 568, type: !88)
!1214 = !DILocation(line: 568, column: 58, scope: !1210)
!1215 = !DILocalVariable(name: "result", scope: !1210, file: !1, line: 570, type: !90)
!1216 = !DILocation(line: 570, column: 3, scope: !1210)
!1217 = !DILocalVariable(name: "status", scope: !1210, file: !1, line: 570, type: !51)
!1218 = !DILocation(line: 570, column: 3, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 570, column: 3)
!1220 = !DILocation(line: 570, column: 3, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1222, file: !1, discriminator: 1)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 570, column: 3)
!1223 = distinct !{!1223, !1224}
!1224 = !DILocation(line: 570, column: 3, scope: !1222)
!1225 = !DILocation(line: 570, column: 3, scope: !1226)
!1226 = !DILexicalBlockFile(scope: !1227, file: !1, discriminator: 2)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 570, column: 3)
!1228 = !DILocation(line: 570, column: 3, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1222, file: !1, discriminator: 3)
!1230 = !DILocation(line: 570, column: 3, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1210, file: !1, discriminator: 4)
!1232 = !DILocation(line: 571, column: 1, scope: !1210)
!1233 = distinct !DISubprogram(name: "gsl_sf_expint_Ei", scope: !1, file: !1, line: 573, type: !1100, isLocal: false, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!1234 = !DILocalVariable(name: "x", arg: 1, scope: !1233, file: !1, line: 573, type: !88)
!1235 = !DILocation(line: 573, column: 38, scope: !1233)
!1236 = !DILocalVariable(name: "result", scope: !1233, file: !1, line: 575, type: !90)
!1237 = !DILocation(line: 575, column: 3, scope: !1233)
!1238 = !DILocalVariable(name: "status", scope: !1233, file: !1, line: 575, type: !51)
!1239 = !DILocation(line: 575, column: 3, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 575, column: 3)
!1241 = !DILocation(line: 575, column: 3, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1243, file: !1, discriminator: 1)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 575, column: 3)
!1244 = distinct !{!1244, !1245}
!1245 = !DILocation(line: 575, column: 3, scope: !1243)
!1246 = !DILocation(line: 575, column: 3, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1248, file: !1, discriminator: 2)
!1248 = distinct !DILexicalBlock(scope: !1243, file: !1, line: 575, column: 3)
!1249 = !DILocation(line: 575, column: 3, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1243, file: !1, discriminator: 3)
!1251 = !DILocation(line: 575, column: 3, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1233, file: !1, discriminator: 4)
!1253 = !DILocation(line: 576, column: 1, scope: !1233)
!1254 = distinct !DISubprogram(name: "gsl_sf_expint_Ei_scaled", scope: !1, file: !1, line: 578, type: !1100, isLocal: false, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!1255 = !DILocalVariable(name: "x", arg: 1, scope: !1254, file: !1, line: 578, type: !88)
!1256 = !DILocation(line: 578, column: 45, scope: !1254)
!1257 = !DILocalVariable(name: "result", scope: !1254, file: !1, line: 580, type: !90)
!1258 = !DILocation(line: 580, column: 3, scope: !1254)
!1259 = !DILocalVariable(name: "status", scope: !1254, file: !1, line: 580, type: !51)
!1260 = !DILocation(line: 580, column: 3, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 580, column: 3)
!1262 = !DILocation(line: 580, column: 3, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1264, file: !1, discriminator: 1)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !1, line: 580, column: 3)
!1265 = distinct !{!1265, !1266}
!1266 = !DILocation(line: 580, column: 3, scope: !1264)
!1267 = !DILocation(line: 580, column: 3, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1269, file: !1, discriminator: 2)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 580, column: 3)
!1270 = !DILocation(line: 580, column: 3, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1264, file: !1, discriminator: 3)
!1272 = !DILocation(line: 580, column: 3, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1254, file: !1, discriminator: 4)
!1274 = !DILocation(line: 581, column: 1, scope: !1254)
!1275 = distinct !DISubprogram(name: "cheb_eval_e", scope: !1276, file: !1276, line: 3, type: !1277, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !96)
!1276 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!51, !1279, !88, !89}
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64, align: 64)
!1280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!1281 = !DILocalVariable(name: "cs", arg: 1, scope: !1275, file: !1276, line: 3, type: !1279)
!1282 = !DILocation(line: 3, column: 33, scope: !1275)
!1283 = !DILocalVariable(name: "x", arg: 2, scope: !1275, file: !1276, line: 4, type: !88)
!1284 = !DILocation(line: 4, column: 26, scope: !1275)
!1285 = !DILocalVariable(name: "result", arg: 3, scope: !1275, file: !1276, line: 5, type: !89)
!1286 = !DILocation(line: 5, column: 29, scope: !1275)
!1287 = !DILocalVariable(name: "j", scope: !1275, file: !1276, line: 7, type: !51)
!1288 = !DILocation(line: 7, column: 7, scope: !1275)
!1289 = !DILocalVariable(name: "d", scope: !1275, file: !1276, line: 8, type: !49)
!1290 = !DILocation(line: 8, column: 10, scope: !1275)
!1291 = !DILocalVariable(name: "dd", scope: !1275, file: !1276, line: 9, type: !49)
!1292 = !DILocation(line: 9, column: 10, scope: !1275)
!1293 = !DILocalVariable(name: "y", scope: !1275, file: !1276, line: 11, type: !49)
!1294 = !DILocation(line: 11, column: 10, scope: !1275)
!1295 = !DILocation(line: 11, column: 20, scope: !1275)
!1296 = !DILocation(line: 11, column: 19, scope: !1275)
!1297 = !DILocation(line: 11, column: 24, scope: !1275)
!1298 = !DILocation(line: 11, column: 28, scope: !1275)
!1299 = !DILocation(line: 11, column: 22, scope: !1275)
!1300 = !DILocation(line: 11, column: 32, scope: !1275)
!1301 = !DILocation(line: 11, column: 36, scope: !1275)
!1302 = !DILocation(line: 11, column: 30, scope: !1275)
!1303 = !DILocation(line: 11, column: 42, scope: !1275)
!1304 = !DILocation(line: 11, column: 46, scope: !1275)
!1305 = !DILocation(line: 11, column: 50, scope: !1275)
!1306 = !DILocation(line: 11, column: 54, scope: !1275)
!1307 = !DILocation(line: 11, column: 48, scope: !1275)
!1308 = !DILocation(line: 11, column: 39, scope: !1275)
!1309 = !DILocalVariable(name: "y2", scope: !1275, file: !1276, line: 12, type: !49)
!1310 = !DILocation(line: 12, column: 10, scope: !1275)
!1311 = !DILocation(line: 12, column: 21, scope: !1275)
!1312 = !DILocation(line: 12, column: 19, scope: !1275)
!1313 = !DILocalVariable(name: "e", scope: !1275, file: !1276, line: 14, type: !49)
!1314 = !DILocation(line: 14, column: 10, scope: !1275)
!1315 = !DILocation(line: 16, column: 11, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1275, file: !1276, line: 16, column: 3)
!1317 = !DILocation(line: 16, column: 15, scope: !1316)
!1318 = !DILocation(line: 16, column: 9, scope: !1316)
!1319 = !DILocation(line: 16, column: 7, scope: !1316)
!1320 = !DILocation(line: 16, column: 22, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1322, file: !1276, discriminator: 1)
!1322 = distinct !DILexicalBlock(scope: !1316, file: !1276, line: 16, column: 3)
!1323 = !DILocation(line: 16, column: 23, scope: !1321)
!1324 = !DILocation(line: 16, column: 3, scope: !1321)
!1325 = !DILocalVariable(name: "temp", scope: !1326, file: !1276, line: 17, type: !49)
!1326 = distinct !DILexicalBlock(scope: !1322, file: !1276, line: 16, column: 33)
!1327 = !DILocation(line: 17, column: 12, scope: !1326)
!1328 = !DILocation(line: 17, column: 19, scope: !1326)
!1329 = !DILocation(line: 18, column: 9, scope: !1326)
!1330 = !DILocation(line: 18, column: 12, scope: !1326)
!1331 = !DILocation(line: 18, column: 11, scope: !1326)
!1332 = !DILocation(line: 18, column: 16, scope: !1326)
!1333 = !DILocation(line: 18, column: 14, scope: !1326)
!1334 = !DILocation(line: 18, column: 27, scope: !1326)
!1335 = !DILocation(line: 18, column: 21, scope: !1326)
!1336 = !DILocation(line: 18, column: 25, scope: !1326)
!1337 = !DILocation(line: 18, column: 19, scope: !1326)
!1338 = !DILocation(line: 18, column: 7, scope: !1326)
!1339 = !DILocation(line: 19, column: 15, scope: !1326)
!1340 = !DILocation(line: 19, column: 18, scope: !1326)
!1341 = !DILocation(line: 19, column: 17, scope: !1326)
!1342 = !DILocation(line: 19, column: 10, scope: !1326)
!1343 = !DILocation(line: 19, column: 31, scope: !1326)
!1344 = !DILocation(line: 19, column: 26, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1326, file: !1276, discriminator: 1)
!1346 = !DILocation(line: 19, column: 24, scope: !1326)
!1347 = !DILocation(line: 19, column: 48, scope: !1326)
!1348 = !DILocation(line: 19, column: 42, scope: !1326)
!1349 = !DILocation(line: 19, column: 46, scope: !1326)
!1350 = !DILocation(line: 19, column: 37, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1326, file: !1276, discriminator: 2)
!1352 = !DILocation(line: 19, column: 35, scope: !1326)
!1353 = !DILocation(line: 19, column: 7, scope: !1326)
!1354 = !DILocation(line: 20, column: 10, scope: !1326)
!1355 = !DILocation(line: 20, column: 8, scope: !1326)
!1356 = !DILocation(line: 21, column: 3, scope: !1326)
!1357 = !DILocation(line: 16, column: 29, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1322, file: !1276, discriminator: 2)
!1359 = !DILocation(line: 16, column: 3, scope: !1358)
!1360 = distinct !{!1360, !1361}
!1361 = !DILocation(line: 16, column: 3, scope: !1275)
!1362 = !DILocalVariable(name: "temp", scope: !1363, file: !1276, line: 24, type: !49)
!1363 = distinct !DILexicalBlock(scope: !1275, file: !1276, line: 23, column: 3)
!1364 = !DILocation(line: 24, column: 12, scope: !1363)
!1365 = !DILocation(line: 24, column: 19, scope: !1363)
!1366 = !DILocation(line: 25, column: 9, scope: !1363)
!1367 = !DILocation(line: 25, column: 11, scope: !1363)
!1368 = !DILocation(line: 25, column: 10, scope: !1363)
!1369 = !DILocation(line: 25, column: 15, scope: !1363)
!1370 = !DILocation(line: 25, column: 13, scope: !1363)
!1371 = !DILocation(line: 25, column: 26, scope: !1363)
!1372 = !DILocation(line: 25, column: 30, scope: !1363)
!1373 = !DILocation(line: 25, column: 24, scope: !1363)
!1374 = !DILocation(line: 25, column: 18, scope: !1363)
!1375 = !DILocation(line: 25, column: 7, scope: !1363)
!1376 = !DILocation(line: 26, column: 15, scope: !1363)
!1377 = !DILocation(line: 26, column: 17, scope: !1363)
!1378 = !DILocation(line: 26, column: 16, scope: !1363)
!1379 = !DILocation(line: 26, column: 10, scope: !1363)
!1380 = !DILocation(line: 26, column: 30, scope: !1363)
!1381 = !DILocation(line: 26, column: 25, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1363, file: !1276, discriminator: 1)
!1383 = !DILocation(line: 26, column: 23, scope: !1363)
!1384 = !DILocation(line: 26, column: 47, scope: !1363)
!1385 = !DILocation(line: 26, column: 51, scope: !1363)
!1386 = !DILocation(line: 26, column: 42, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1363, file: !1276, discriminator: 2)
!1388 = !DILocation(line: 26, column: 40, scope: !1363)
!1389 = !DILocation(line: 26, column: 34, scope: !1363)
!1390 = !DILocation(line: 26, column: 7, scope: !1363)
!1391 = !DILocation(line: 29, column: 17, scope: !1275)
!1392 = !DILocation(line: 29, column: 3, scope: !1275)
!1393 = !DILocation(line: 29, column: 11, scope: !1275)
!1394 = !DILocation(line: 29, column: 15, scope: !1275)
!1395 = !DILocation(line: 30, column: 35, scope: !1275)
!1396 = !DILocation(line: 30, column: 33, scope: !1275)
!1397 = !DILocation(line: 30, column: 50, scope: !1275)
!1398 = !DILocation(line: 30, column: 54, scope: !1275)
!1399 = !DILocation(line: 30, column: 44, scope: !1275)
!1400 = !DILocation(line: 30, column: 48, scope: !1275)
!1401 = !DILocation(line: 30, column: 39, scope: !1275)
!1402 = !DILocation(line: 30, column: 37, scope: !1275)
!1403 = !DILocation(line: 30, column: 3, scope: !1275)
!1404 = !DILocation(line: 30, column: 11, scope: !1275)
!1405 = !DILocation(line: 30, column: 15, scope: !1275)
!1406 = !DILocation(line: 32, column: 3, scope: !1275)
