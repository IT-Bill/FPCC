; ModuleID = 'expint.ll'
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
@0 = private unnamed_addr constant [19 x i8] c"gsl_sf_expint_E1_e\00"
@1 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@2 = private unnamed_addr constant [15 x i8] c"expint_E1_impl\00"
@3 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@4 = private unnamed_addr constant [26 x i8] c"gsl_sf_expint_E1_scaled_e\00"
@5 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@6 = private unnamed_addr constant [19 x i8] c"gsl_sf_expint_E2_e\00"
@7 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@8 = private unnamed_addr constant [15 x i8] c"expint_E2_impl\00"
@9 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@10 = private unnamed_addr constant [26 x i8] c"gsl_sf_expint_E2_scaled_e\00"
@11 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@12 = private unnamed_addr constant [19 x i8] c"gsl_sf_expint_En_e\00"
@13 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@14 = private unnamed_addr constant [15 x i8] c"expint_En_impl\00"
@15 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@16 = private unnamed_addr constant [26 x i8] c"gsl_sf_expint_En_scaled_e\00"
@17 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@18 = private unnamed_addr constant [19 x i8] c"gsl_sf_expint_Ei_e\00"
@19 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@20 = private unnamed_addr constant [26 x i8] c"gsl_sf_expint_Ei_scaled_e\00"
@21 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@22 = private unnamed_addr constant [17 x i8] c"gsl_sf_expint_E1\00"
@23 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@24 = private unnamed_addr constant [24 x i8] c"gsl_sf_expint_E1_scaled\00"
@25 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@26 = private unnamed_addr constant [17 x i8] c"gsl_sf_expint_E2\00"
@27 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@28 = private unnamed_addr constant [24 x i8] c"gsl_sf_expint_E2_scaled\00"
@29 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@30 = private unnamed_addr constant [17 x i8] c"gsl_sf_expint_En\00"
@31 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@32 = private unnamed_addr constant [24 x i8] c"gsl_sf_expint_En_scaled\00"
@33 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@34 = private unnamed_addr constant [17 x i8] c"gsl_sf_expint_Ei\00"
@35 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@36 = private unnamed_addr constant [24 x i8] c"gsl_sf_expint_Ei_scaled\00"
@37 = private unnamed_addr constant [10 x i8] c"expint.ll\00"
@38 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@39 = private unnamed_addr constant [10 x i8] c"expint.ll\00"

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
  call void @callOneArgHandler(i32 12, double 0x4086232BDD7ABCD2, double %24, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432184560, i32 293, i32 32), !dbg !121
  %25 = fsub double 0x4086232BDD7ABCD2, %24, !dbg !121
  call void @fSubHandler(double 0x4086232BDD7ABCD2, double %24, double %25, i64 0, i64 94865432184560, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432185072, i32 293, i32 30), !dbg !119
  store double %25, double* %9, align 8, !dbg !119
  %26 = load double, double* %5, align 8, !dbg !122
  %27 = load double, double* %9, align 8, !dbg !124
  %28 = fsub double -0.000000e+00, %27, !dbg !125
  call void @fSubHandler(double -0.000000e+00, double %27, double %28, i64 0, i64 94865432130232, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432187808, i32 297, i32 10), !dbg !126
  %29 = fcmp olt double %26, %28, !dbg !126
  %30 = call i1 @fCmpInstHandler(double %26, double %28, i1 %29, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432188224, i32 297, i32 8), !dbg !127
  br i1 %30, label %31, label %45, !dbg !127

; <label>:31:                                     ; preds = %3
  %32 = load i32, i32* %7, align 4, !dbg !128
  %33 = icmp ne i32 %32, 0, !dbg !128
  %34 = sext i32 %32 to i64, !dbg !130
  %35 = call i1 @iCmpInstHandler(i64 %34, i64 0, i1 %33, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432189680, i32 297, i32 20), !dbg !130
  br i1 %35, label %45, label %36, !dbg !130

; <label>:36:                                     ; preds = %31
  br label %37, !dbg !131, !llvm.loop !133

; <label>:37:                                     ; preds = %36
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !134
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !134
  store double 0x7FF0000000000000, double* %39, align 8, !dbg !134
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !134
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !134
  store double 0x7FF0000000000000, double* %41, align 8, !dbg !134
  br label %42, !dbg !134, !llvm.loop !137

; <label>:42:                                     ; preds = %37
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 298, i32 16), !dbg !139
  store i32 16, i32* %4, align 4, !dbg !139
  br label %389, !dbg !139
                                                  ; No predecessors!
  br label %44, !dbg !142

; <label>:44:                                     ; preds = %43
  br label %389, !dbg !144

; <label>:45:                                     ; preds = %31, %3
  %46 = load double, double* %5, align 8, !dbg !145
  %47 = fcmp ole double %46, -1.000000e+01, !dbg !147
  %48 = call i1 @fCmpInstHandler(double %46, double -1.000000e+01, i1 %47, i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432204944, i32 300, i32 13), !dbg !148
  br i1 %48, label %49, label %94, !dbg !148

; <label>:49:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata double* %10, metadata !149, metadata !98), !dbg !151
  %50 = load double, double* %5, align 8, !dbg !152
  %51 = fdiv double 1.000000e+00, %50, !dbg !153
  call void @fDivHandler(double 1.000000e+00, double %50, double %51, i64 0, i64 94865432207176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432207584, i32 301, i32 25), !dbg !154
  %52 = load i32, i32* %7, align 4, !dbg !154
  %53 = icmp ne i32 %52, 0, !dbg !154
  %54 = sext i32 %52 to i64, !dbg !154
  %55 = call i1 @iCmpInstHandler(i64 %54, i64 0, i1 %53, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432208352, i32 301, i32 32), !dbg !154
  br i1 %55, label %56, label %57, !dbg !154

; <label>:56:                                     ; preds = %49
  br label %61, !dbg !155

; <label>:57:                                     ; preds = %49
  %58 = load double, double* %5, align 8, !dbg !157
  %59 = fsub double -0.000000e+00, %58, !dbg !159
  call void @fSubHandler(double -0.000000e+00, double %58, double %59, i64 0, i64 94865432210904, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432211248, i32 301, i32 50), !dbg !160
  %60 = call double @exp(double %59) #6, !dbg !160
  call void @callOneArgHandler(i32 11, double %59, double %60, i64 94865432211248, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432212000, i32 301, i32 46), !dbg !161
  br label %61, !dbg !161

; <label>:61:                                     ; preds = %57, %56
  %62 = phi double [ 1.000000e+00, %56 ], [ %60, %57 ], !dbg !162
  %63 = fmul double %51, %62, !dbg !164
  call void @fMulHandler(double %51, double %62, double %63, i64 94865432207584, i64 94865432212888, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432213296, i32 301, i32 28), !dbg !165
  store double %63, double* %10, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !166, metadata !98), !dbg !167
  %64 = load double, double* %5, align 8, !dbg !168
  %65 = fdiv double 2.000000e+01, %64, !dbg !169
  call void @fDivHandler(double 2.000000e+01, double %64, double %65, i64 0, i64 94865432215272, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432215744, i32 303, i32 31), !dbg !170
  %66 = fadd double %65, 1.000000e+00, !dbg !170
  call void @fAddHandler(double %65, double 1.000000e+00, double %66, i64 94865432215744, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432216160, i32 303, i32 33), !dbg !171
  %67 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @AE11_cs, double %66, %struct.gsl_sf_result_struct* %11), !dbg !171
  %68 = load double, double* %10, align 8, !dbg !172
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !173
  %70 = load double, double* %69, align 8, !dbg !173
  %71 = fadd double 1.000000e+00, %70, !dbg !174
  call void @fAddHandler(double 1.000000e+00, double %70, double %71, i64 0, i64 94865432218184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432220928, i32 304, i32 29), !dbg !175
  %72 = fmul double %68, %71, !dbg !175
  call void @fMulHandler(double %68, double %71, double %72, i64 94865432217384, i64 94865432220928, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432221312, i32 304, i32 22), !dbg !176
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !176
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !177
  store double %72, double* %74, align 8, !dbg !178
  %75 = load double, double* %10, align 8, !dbg !179
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !180
  %77 = load double, double* %76, align 8, !dbg !180
  %78 = fmul double %75, %77, !dbg !181
  call void @fMulHandler(double %75, double %77, double %78, i64 94865432222952, i64 94865432223784, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432225456, i32 305, i32 22), !dbg !182
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !182
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !183
  store double %78, double* %80, align 8, !dbg !184
  %81 = load double, double* %5, align 8, !dbg !185
  %82 = call double @fabs(double %81) #1, !dbg !186
  %83 = fadd double %82, 1.000000e+00, !dbg !187
  call void @fAddHandler(double %82, double 1.000000e+00, double %83, i64 94865432227888, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432228432, i32 306, i32 53), !dbg !188
  %84 = fmul double 0x3CC0000000000000, %83, !dbg !188
  call void @fMulHandler(double 0x3CC0000000000000, double %83, double %84, i64 0, i64 94865432228432, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432228880, i32 306, i32 42), !dbg !189
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !189
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !190
  %87 = load double, double* %86, align 8, !dbg !190
  %88 = call double @fabs(double %87) #1, !dbg !191
  %89 = fmul double %84, %88, !dbg !192
  call void @fMulHandler(double %84, double %88, double %89, i64 94865432228880, i64 94865432231840, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432232320, i32 306, i32 60), !dbg !193
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !193
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 1, !dbg !194
  %92 = load double, double* %91, align 8, !dbg !195
  %93 = fadd double %92, %89, !dbg !195
  call void @fAddHandler(double %92, double %89, double %93, i64 94865432233544, i64 94865432232320, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432233952, i32 306, i32 17), !dbg !195
  store double %93, double* %91, align 8, !dbg !195
  store i32 0, i32* %4, align 4, !dbg !196
  br label %389, !dbg !196

; <label>:94:                                     ; preds = %45
  %95 = load double, double* %5, align 8, !dbg !197
  %96 = fcmp ole double %95, -4.000000e+00, !dbg !199
  %97 = call i1 @fCmpInstHandler(double %95, double -4.000000e+00, i1 %96, i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432238240, i32 309, i32 13), !dbg !200
  br i1 %97, label %98, label %140, !dbg !200

; <label>:98:                                     ; preds = %94
  call void @llvm.dbg.declare(metadata double* %12, metadata !201, metadata !98), !dbg !203
  %99 = load double, double* %5, align 8, !dbg !204
  %100 = fdiv double 1.000000e+00, %99, !dbg !205
  call void @fDivHandler(double 1.000000e+00, double %99, double %100, i64 0, i64 94865432240472, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432240880, i32 310, i32 25), !dbg !206
  %101 = load i32, i32* %7, align 4, !dbg !206
  %102 = icmp ne i32 %101, 0, !dbg !206
  %103 = sext i32 %101 to i64, !dbg !206
  %104 = call i1 @iCmpInstHandler(i64 %103, i64 0, i1 %102, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432241648, i32 310, i32 32), !dbg !206
  br i1 %104, label %105, label %106, !dbg !206

; <label>:105:                                    ; preds = %98
  br label %110, !dbg !207

; <label>:106:                                    ; preds = %98
  %107 = load double, double* %5, align 8, !dbg !209
  %108 = fsub double -0.000000e+00, %107, !dbg !211
  call void @fSubHandler(double -0.000000e+00, double %107, double %108, i64 0, i64 94865432244200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432244544, i32 310, i32 50), !dbg !212
  %109 = call double @exp(double %108) #6, !dbg !212
  call void @callOneArgHandler(i32 11, double %108, double %109, i64 94865432244544, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432245024, i32 310, i32 46), !dbg !213
  br label %110, !dbg !213

; <label>:110:                                    ; preds = %106, %105
  %111 = phi double [ 1.000000e+00, %105 ], [ %109, %106 ], !dbg !214
  %112 = fmul double %100, %111, !dbg !216
  call void @fMulHandler(double %100, double %111, double %112, i64 94865432240880, i64 94865432245880, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432246288, i32 310, i32 28), !dbg !217
  store double %112, double* %12, align 8, !dbg !217
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !218, metadata !98), !dbg !219
  %113 = load double, double* %5, align 8, !dbg !220
  %114 = fdiv double 4.000000e+01, %113, !dbg !221
  call void @fDivHandler(double 4.000000e+01, double %113, double %114, i64 0, i64 94865432248216, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432248688, i32 312, i32 32), !dbg !222
  %115 = fadd double %114, 7.000000e+00, !dbg !222
  call void @fAddHandler(double %114, double 7.000000e+00, double %115, i64 94865432248688, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432249168, i32 312, i32 34), !dbg !223
  %116 = fdiv double %115, 3.000000e+00, !dbg !223
  call void @fDivHandler(double %115, double 3.000000e+00, double %116, i64 94865432249168, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432249648, i32 312, i32 39), !dbg !224
  %117 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @AE12_cs, double %116, %struct.gsl_sf_result_struct* %13), !dbg !224
  %118 = load double, double* %12, align 8, !dbg !225
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !226
  %120 = load double, double* %119, align 8, !dbg !226
  %121 = fadd double 1.000000e+00, %120, !dbg !227
  call void @fAddHandler(double 1.000000e+00, double %120, double %121, i64 0, i64 94865432251400, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432253104, i32 313, i32 29), !dbg !228
  %122 = fmul double %118, %121, !dbg !228
  call void @fMulHandler(double %118, double %121, double %122, i64 94865432250600, i64 94865432253104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432253488, i32 313, i32 22), !dbg !229
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !229
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 0, !dbg !230
  store double %122, double* %124, align 8, !dbg !231
  %125 = load double, double* %12, align 8, !dbg !232
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !233
  %127 = load double, double* %126, align 8, !dbg !233
  %128 = fmul double %125, %127, !dbg !234
  call void @fMulHandler(double %125, double %127, double %128, i64 94865432255128, i64 94865432255960, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432257632, i32 314, i32 22), !dbg !235
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !235
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 1, !dbg !236
  store double %128, double* %130, align 8, !dbg !237
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !238
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 0, !dbg !239
  %133 = load double, double* %132, align 8, !dbg !239
  %134 = call double @fabs(double %133) #1, !dbg !240
  %135 = fmul double 0x3CC0000000000000, %134, !dbg !241
  call void @fMulHandler(double 0x3CC0000000000000, double %134, double %135, i64 0, i64 94865432261840, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432262320, i32 315, i32 42), !dbg !242
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !242
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 1, !dbg !243
  %138 = load double, double* %137, align 8, !dbg !244
  %139 = fadd double %138, %135, !dbg !244
  call void @fAddHandler(double %138, double %135, double %139, i64 94865432265608, i64 94865432262320, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432266016, i32 315, i32 17), !dbg !244
  store double %139, double* %137, align 8, !dbg !244
  store i32 0, i32* %4, align 4, !dbg !245
  br label %389, !dbg !245

; <label>:140:                                    ; preds = %94
  %141 = load double, double* %5, align 8, !dbg !246
  %142 = fcmp ole double %141, -1.000000e+00, !dbg !248
  %143 = call i1 @fCmpInstHandler(double %141, double -1.000000e+00, i1 %142, i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432270240, i32 318, i32 13), !dbg !249
  br i1 %143, label %144, label %191, !dbg !249

; <label>:144:                                    ; preds = %140
  call void @llvm.dbg.declare(metadata double* %14, metadata !250, metadata !98), !dbg !252
  %145 = load double, double* %5, align 8, !dbg !253
  %146 = call double @fabs(double %145) #1, !dbg !254
  %147 = call double @log(double %146) #6, !dbg !255
  call void @callOneArgHandler(i32 12, double %146, double %147, i64 94865432272816, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432273360, i32 319, i32 29), !dbg !257
  %148 = fsub double -0.000000e+00, %147, !dbg !257
  call void @fSubHandler(double -0.000000e+00, double %147, double %148, i64 0, i64 94865432273360, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432273840, i32 319, i32 28), !dbg !252
  store double %148, double* %14, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata double* %15, metadata !258, metadata !98), !dbg !259
  %149 = load i32, i32* %7, align 4, !dbg !260
  %150 = icmp ne i32 %149, 0, !dbg !260
  %151 = sext i32 %149 to i64, !dbg !260
  %152 = call i1 @iCmpInstHandler(i64 %151, i64 0, i1 %150, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432277408, i32 320, i32 35), !dbg !260
  br i1 %152, label %153, label %156, !dbg !260

; <label>:153:                                    ; preds = %144
  %154 = load double, double* %5, align 8, !dbg !261
  %155 = call double @exp(double %154) #6, !dbg !262
  call void @callOneArgHandler(i32 11, double %154, double %155, i64 94865432279496, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432279904, i32 320, i32 43), !dbg !263
  br label %157, !dbg !263

; <label>:156:                                    ; preds = %144
  br label %157, !dbg !264

; <label>:157:                                    ; preds = %156, %153
  %158 = phi double [ %155, %153 ], [ 1.000000e+00, %156 ], !dbg !266
  store double %158, double* %15, align 8, !dbg !268
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !269, metadata !98), !dbg !270
  %159 = load double, double* %5, align 8, !dbg !271
  %160 = fmul double 2.000000e+00, %159, !dbg !272
  call void @fMulHandler(double 2.000000e+00, double %159, double %160, i64 0, i64 94865432283144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432283616, i32 322, i32 30), !dbg !273
  %161 = fadd double %160, 5.000000e+00, !dbg !273
  call void @fAddHandler(double %160, double 5.000000e+00, double %161, i64 94865432283616, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432284096, i32 322, i32 32), !dbg !274
  %162 = fdiv double %161, 3.000000e+00, !dbg !274
  call void @fDivHandler(double %161, double 3.000000e+00, double %162, i64 94865432284096, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432284512, i32 322, i32 37), !dbg !275
  %163 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @E11_cs, double %162, %struct.gsl_sf_result_struct* %16), !dbg !275
  %164 = load double, double* %15, align 8, !dbg !276
  %165 = load double, double* %14, align 8, !dbg !277
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !278
  %167 = load double, double* %166, align 8, !dbg !278
  %168 = fadd double %165, %167, !dbg !279
  call void @fAddHandler(double %165, double %167, double %168, i64 94865432285816, i64 94865432286648, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432288320, i32 323, i32 44), !dbg !280
  %169 = fmul double %164, %168, !dbg !280
  call void @fMulHandler(double %164, double %168, double %169, i64 94865432285464, i64 94865432288320, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432288736, i32 323, i32 33), !dbg !281
  %170 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !281
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %170, i32 0, i32 0, !dbg !282
  store double %169, double* %171, align 8, !dbg !283
  %172 = load double, double* %15, align 8, !dbg !284
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !285
  %174 = load double, double* %173, align 8, !dbg !285
  %175 = load double, double* %14, align 8, !dbg !286
  %176 = call double @fabs(double %175) #1, !dbg !287
  %177 = fmul double 0x3CB0000000000000, %176, !dbg !288
  call void @fMulHandler(double 0x3CB0000000000000, double %176, double %177, i64 0, i64 94865432293328, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432293872, i32 324, i32 67), !dbg !289
  %178 = fadd double %174, %177, !dbg !289
  call void @fAddHandler(double %174, double %177, double %178, i64 94865432291208, i64 94865432293872, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432294288, i32 324, i32 49), !dbg !290
  %179 = fmul double %172, %178, !dbg !290
  call void @fMulHandler(double %172, double %178, double %179, i64 94865432290376, i64 94865432294288, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432294704, i32 324, i32 33), !dbg !291
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !291
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 1, !dbg !292
  store double %179, double* %181, align 8, !dbg !293
  %182 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !294
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %182, i32 0, i32 0, !dbg !295
  %184 = load double, double* %183, align 8, !dbg !295
  %185 = call double @fabs(double %184) #1, !dbg !296
  %186 = fmul double 0x3CC0000000000000, %185, !dbg !297
  call void @fMulHandler(double 0x3CC0000000000000, double %185, double %186, i64 0, i64 94865432298912, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432299392, i32 325, i32 42), !dbg !298
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !298
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 1, !dbg !299
  %189 = load double, double* %188, align 8, !dbg !300
  %190 = fadd double %189, %186, !dbg !300
  call void @fAddHandler(double %189, double %186, double %190, i64 94865432300616, i64 94865432299392, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432301024, i32 325, i32 17), !dbg !300
  store double %190, double* %188, align 8, !dbg !300
  store i32 0, i32* %4, align 4, !dbg !301
  br label %389, !dbg !301

; <label>:191:                                    ; preds = %140
  %192 = load double, double* %5, align 8, !dbg !302
  %193 = fcmp oeq double %192, 0.000000e+00, !dbg !304
  %194 = call i1 @fCmpInstHandler(double %192, double 0.000000e+00, i1 %193, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432305280, i32 328, i32 13), !dbg !305
  br i1 %194, label %195, label %204, !dbg !305

; <label>:195:                                    ; preds = %191
  br label %196, !dbg !306, !llvm.loop !308

; <label>:196:                                    ; preds = %195
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !309
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %197, i32 0, i32 0, !dbg !309
  store double 0x7FF8000000000000, double* %198, align 8, !dbg !309
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !309
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 1, !dbg !309
  store double 0x7FF8000000000000, double* %200, align 8, !dbg !309
  br label %201, !dbg !309, !llvm.loop !312

; <label>:201:                                    ; preds = %196
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 329, i32 1), !dbg !314
  store i32 1, i32* %4, align 4, !dbg !314
  br label %389, !dbg !314
                                                  ; No predecessors!
  br label %203, !dbg !317

; <label>:203:                                    ; preds = %202
  br label %385, !dbg !319

; <label>:204:                                    ; preds = %191
  %205 = load double, double* %5, align 8, !dbg !320
  %206 = fcmp ole double %205, 1.000000e+00, !dbg !322
  %207 = call i1 @fCmpInstHandler(double %205, double 1.000000e+00, i1 %206, i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432314208, i32 331, i32 13), !dbg !323
  br i1 %207, label %208, label %255, !dbg !323

; <label>:208:                                    ; preds = %204
  call void @llvm.dbg.declare(metadata double* %17, metadata !324, metadata !98), !dbg !326
  %209 = load double, double* %5, align 8, !dbg !327
  %210 = call double @fabs(double %209) #1, !dbg !328
  %211 = call double @log(double %210) #6, !dbg !329
  call void @callOneArgHandler(i32 12, double %210, double %211, i64 94865432316784, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432317328, i32 332, i32 29), !dbg !331
  %212 = fsub double -0.000000e+00, %211, !dbg !331
  call void @fSubHandler(double -0.000000e+00, double %211, double %212, i64 0, i64 94865432317328, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432317808, i32 332, i32 28), !dbg !326
  store double %212, double* %17, align 8, !dbg !326
  call void @llvm.dbg.declare(metadata double* %18, metadata !332, metadata !98), !dbg !333
  %213 = load i32, i32* %7, align 4, !dbg !334
  %214 = icmp ne i32 %213, 0, !dbg !334
  %215 = sext i32 %213 to i64, !dbg !334
  %216 = call i1 @iCmpInstHandler(i64 %215, i64 0, i1 %214, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432321376, i32 333, i32 35), !dbg !334
  br i1 %216, label %217, label %220, !dbg !334

; <label>:217:                                    ; preds = %208
  %218 = load double, double* %5, align 8, !dbg !335
  %219 = call double @exp(double %218) #6, !dbg !336
  call void @callOneArgHandler(i32 11, double %218, double %219, i64 94865432323464, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432323872, i32 333, i32 43), !dbg !337
  br label %221, !dbg !337

; <label>:220:                                    ; preds = %208
  br label %221, !dbg !338

; <label>:221:                                    ; preds = %220, %217
  %222 = phi double [ %219, %217 ], [ 1.000000e+00, %220 ], !dbg !340
  store double %222, double* %18, align 8, !dbg !342
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !343, metadata !98), !dbg !344
  %223 = load double, double* %5, align 8, !dbg !345
  %224 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @E12_cs, double %223, %struct.gsl_sf_result_struct* %19), !dbg !346
  %225 = load double, double* %18, align 8, !dbg !347
  %226 = load double, double* %17, align 8, !dbg !348
  %227 = fsub double %226, 6.875000e-01, !dbg !349
  call void @fSubHandler(double %226, double 6.875000e-01, double %227, i64 94865432328408, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432328912, i32 336, i32 44), !dbg !350
  %228 = load double, double* %5, align 8, !dbg !350
  %229 = fadd double %227, %228, !dbg !351
  call void @fAddHandler(double %227, double %228, double %229, i64 94865432328912, i64 94865432329272, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432329680, i32 336, i32 53), !dbg !352
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !352
  %231 = load double, double* %230, align 8, !dbg !352
  %232 = fadd double %229, %231, !dbg !353
  call void @fAddHandler(double %229, double %231, double %232, i64 94865432329680, i64 94865432330520, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432332192, i32 336, i32 57), !dbg !354
  %233 = fmul double %225, %232, !dbg !354
  call void @fMulHandler(double %225, double %232, double %233, i64 94865432328056, i64 94865432332192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432332608, i32 336, i32 33), !dbg !355
  %234 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !355
  %235 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %234, i32 0, i32 0, !dbg !356
  store double %233, double* %235, align 8, !dbg !357
  %236 = load double, double* %18, align 8, !dbg !358
  %237 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !359
  %238 = load double, double* %237, align 8, !dbg !359
  %239 = load double, double* %17, align 8, !dbg !360
  %240 = call double @fabs(double %239) #1, !dbg !361
  %241 = fmul double 0x3CB0000000000000, %240, !dbg !362
  call void @fMulHandler(double 0x3CB0000000000000, double %240, double %241, i64 0, i64 94865432337200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432337680, i32 337, i32 67), !dbg !363
  %242 = fadd double %238, %241, !dbg !363
  call void @fAddHandler(double %238, double %241, double %242, i64 94865432335080, i64 94865432337680, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432338096, i32 337, i32 49), !dbg !364
  %243 = fmul double %236, %242, !dbg !364
  call void @fMulHandler(double %236, double %242, double %243, i64 94865432334248, i64 94865432338096, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432338512, i32 337, i32 33), !dbg !365
  %244 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !365
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %244, i32 0, i32 1, !dbg !366
  store double %243, double* %245, align 8, !dbg !367
  %246 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !368
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %246, i32 0, i32 0, !dbg !369
  %248 = load double, double* %247, align 8, !dbg !369
  %249 = call double @fabs(double %248) #1, !dbg !370
  %250 = fmul double 0x3CC0000000000000, %249, !dbg !371
  call void @fMulHandler(double 0x3CC0000000000000, double %249, double %250, i64 0, i64 94865432342720, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432343200, i32 338, i32 42), !dbg !372
  %251 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !372
  %252 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %251, i32 0, i32 1, !dbg !373
  %253 = load double, double* %252, align 8, !dbg !374
  %254 = fadd double %253, %250, !dbg !374
  call void @fAddHandler(double %253, double %250, double %254, i64 94865432344424, i64 94865432343200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432344832, i32 338, i32 17), !dbg !374
  store double %254, double* %252, align 8, !dbg !374
  store i32 0, i32* %4, align 4, !dbg !375
  br label %389, !dbg !375

; <label>:255:                                    ; preds = %204
  %256 = load double, double* %5, align 8, !dbg !376
  %257 = fcmp ole double %256, 4.000000e+00, !dbg !378
  %258 = call i1 @fCmpInstHandler(double %256, double 4.000000e+00, i1 %257, i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432349120, i32 341, i32 13), !dbg !379
  br i1 %258, label %259, label %301, !dbg !379

; <label>:259:                                    ; preds = %255
  call void @llvm.dbg.declare(metadata double* %20, metadata !380, metadata !98), !dbg !382
  %260 = load double, double* %5, align 8, !dbg !383
  %261 = fdiv double 1.000000e+00, %260, !dbg !384
  call void @fDivHandler(double 1.000000e+00, double %260, double %261, i64 0, i64 94865432351256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432351664, i32 342, i32 25), !dbg !385
  %262 = load i32, i32* %7, align 4, !dbg !385
  %263 = icmp ne i32 %262, 0, !dbg !385
  %264 = sext i32 %262 to i64, !dbg !385
  %265 = call i1 @iCmpInstHandler(i64 %264, i64 0, i1 %263, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432352432, i32 342, i32 32), !dbg !385
  br i1 %265, label %266, label %267, !dbg !385

; <label>:266:                                    ; preds = %259
  br label %271, !dbg !386

; <label>:267:                                    ; preds = %259
  %268 = load double, double* %5, align 8, !dbg !388
  %269 = fsub double -0.000000e+00, %268, !dbg !390
  call void @fSubHandler(double -0.000000e+00, double %268, double %269, i64 0, i64 94865432354984, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432355328, i32 342, i32 50), !dbg !391
  %270 = call double @exp(double %269) #6, !dbg !391
  call void @callOneArgHandler(i32 11, double %269, double %270, i64 94865432355328, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432355808, i32 342, i32 46), !dbg !392
  br label %271, !dbg !392

; <label>:271:                                    ; preds = %267, %266
  %272 = phi double [ 1.000000e+00, %266 ], [ %270, %267 ], !dbg !393
  %273 = fmul double %261, %272, !dbg !395
  call void @fMulHandler(double %261, double %272, double %273, i64 94865432351664, i64 94865432356664, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432357072, i32 342, i32 28), !dbg !396
  store double %273, double* %20, align 8, !dbg !396
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !397, metadata !98), !dbg !398
  %274 = load double, double* %5, align 8, !dbg !399
  %275 = fdiv double 8.000000e+00, %274, !dbg !400
  call void @fDivHandler(double 8.000000e+00, double %274, double %275, i64 0, i64 94865432359000, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432359472, i32 344, i32 31), !dbg !401
  %276 = fsub double %275, 5.000000e+00, !dbg !401
  call void @fSubHandler(double %275, double 5.000000e+00, double %276, i64 94865432359472, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432263600, i32 344, i32 33), !dbg !402
  %277 = fdiv double %276, 3.000000e+00, !dbg !402
  call void @fDivHandler(double %276, double 3.000000e+00, double %277, i64 94865432263600, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432264016, i32 344, i32 38), !dbg !403
  %278 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @AE13_cs, double %277, %struct.gsl_sf_result_struct* %21), !dbg !403
  %279 = load double, double* %20, align 8, !dbg !404
  %280 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !405
  %281 = load double, double* %280, align 8, !dbg !405
  %282 = fadd double 1.000000e+00, %281, !dbg !406
  call void @fAddHandler(double 1.000000e+00, double %281, double %282, i64 0, i64 94865432364136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432365808, i32 345, i32 29), !dbg !407
  %283 = fmul double %279, %282, !dbg !407
  call void @fMulHandler(double %279, double %282, double %283, i64 94865432264968, i64 94865432365808, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432366192, i32 345, i32 22), !dbg !408
  %284 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !408
  %285 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %284, i32 0, i32 0, !dbg !409
  store double %283, double* %285, align 8, !dbg !410
  %286 = load double, double* %20, align 8, !dbg !411
  %287 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !412
  %288 = load double, double* %287, align 8, !dbg !412
  %289 = fmul double %286, %288, !dbg !413
  call void @fMulHandler(double %286, double %288, double %289, i64 94865432367832, i64 94865432368664, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432370336, i32 346, i32 22), !dbg !414
  %290 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !414
  %291 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %290, i32 0, i32 1, !dbg !415
  store double %289, double* %291, align 8, !dbg !416
  %292 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !417
  %293 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %292, i32 0, i32 0, !dbg !418
  %294 = load double, double* %293, align 8, !dbg !418
  %295 = call double @fabs(double %294) #1, !dbg !419
  %296 = fmul double 0x3CC0000000000000, %295, !dbg !420
  call void @fMulHandler(double 0x3CC0000000000000, double %295, double %296, i64 0, i64 94865432374544, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432375024, i32 347, i32 42), !dbg !421
  %297 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !421
  %298 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %297, i32 0, i32 1, !dbg !422
  %299 = load double, double* %298, align 8, !dbg !423
  %300 = fadd double %299, %296, !dbg !423
  call void @fAddHandler(double %299, double %296, double %300, i64 94865432376248, i64 94865432375024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432376656, i32 347, i32 17), !dbg !423
  store double %300, double* %298, align 8, !dbg !423
  store i32 0, i32* %4, align 4, !dbg !424
  br label %389, !dbg !424

; <label>:301:                                    ; preds = %255
  %302 = load double, double* %5, align 8, !dbg !425
  %303 = load double, double* %9, align 8, !dbg !427
  %304 = fcmp ole double %302, %303, !dbg !428
  %305 = call i1 @fCmpInstHandler(double %302, double %303, i1 %304, i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432381232, i32 350, i32 13), !dbg !429
  br i1 %305, label %311, label %306, !dbg !429

; <label>:306:                                    ; preds = %301
  %307 = load i32, i32* %7, align 4, !dbg !430
  %308 = icmp ne i32 %307, 0, !dbg !430
  %309 = sext i32 %307 to i64, !dbg !432
  %310 = call i1 @iCmpInstHandler(i64 %309, i64 0, i1 %308, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432382688, i32 350, i32 24), !dbg !432
  br i1 %310, label %311, label %373, !dbg !432

; <label>:311:                                    ; preds = %306, %301
  call void @llvm.dbg.declare(metadata double* %22, metadata !433, metadata !98), !dbg !435
  %312 = load double, double* %5, align 8, !dbg !436
  %313 = fdiv double 1.000000e+00, %312, !dbg !437
  call void @fDivHandler(double 1.000000e+00, double %312, double %313, i64 0, i64 94865432385976, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432386384, i32 351, i32 25), !dbg !438
  %314 = load i32, i32* %7, align 4, !dbg !438
  %315 = icmp ne i32 %314, 0, !dbg !438
  %316 = sext i32 %314 to i64, !dbg !438
  %317 = call i1 @iCmpInstHandler(i64 %316, i64 0, i1 %315, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432387152, i32 351, i32 32), !dbg !438
  br i1 %317, label %318, label %319, !dbg !438

; <label>:318:                                    ; preds = %311
  br label %323, !dbg !439

; <label>:319:                                    ; preds = %311
  %320 = load double, double* %5, align 8, !dbg !441
  %321 = fsub double -0.000000e+00, %320, !dbg !443
  call void @fSubHandler(double -0.000000e+00, double %320, double %321, i64 0, i64 94865432389704, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432390048, i32 351, i32 50), !dbg !444
  %322 = call double @exp(double %321) #6, !dbg !444
  call void @callOneArgHandler(i32 11, double %321, double %322, i64 94865432390048, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432390528, i32 351, i32 46), !dbg !445
  br label %323, !dbg !445

; <label>:323:                                    ; preds = %319, %318
  %324 = phi double [ 1.000000e+00, %318 ], [ %322, %319 ], !dbg !446
  %325 = fmul double %313, %324, !dbg !448
  call void @fMulHandler(double %313, double %324, double %325, i64 94865432386384, i64 94865432391384, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432391792, i32 351, i32 28), !dbg !449
  store double %325, double* %22, align 8, !dbg !449
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !450, metadata !98), !dbg !451
  %326 = load double, double* %5, align 8, !dbg !452
  %327 = fdiv double 8.000000e+00, %326, !dbg !453
  call void @fDivHandler(double 8.000000e+00, double %326, double %327, i64 0, i64 94865432393720, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432394128, i32 353, i32 30), !dbg !454
  %328 = fsub double %327, 1.000000e+00, !dbg !454
  call void @fSubHandler(double %327, double 1.000000e+00, double %328, i64 94865432394128, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432394544, i32 353, i32 32), !dbg !455
  %329 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @AE14_cs, double %328, %struct.gsl_sf_result_struct* %23), !dbg !455
  %330 = load double, double* %22, align 8, !dbg !456
  %331 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !457
  %332 = load double, double* %331, align 8, !dbg !457
  %333 = fadd double 1.000000e+00, %332, !dbg !458
  call void @fAddHandler(double 1.000000e+00, double %332, double %333, i64 0, i64 94865432396296, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432398000, i32 354, i32 29), !dbg !459
  %334 = fmul double %330, %333, !dbg !459
  call void @fMulHandler(double %330, double %333, double %334, i64 94865432395496, i64 94865432398000, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432398384, i32 354, i32 22), !dbg !460
  %335 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !460
  %336 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %335, i32 0, i32 0, !dbg !461
  store double %334, double* %336, align 8, !dbg !462
  %337 = load double, double* %22, align 8, !dbg !463
  %338 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !464
  %339 = load double, double* %338, align 8, !dbg !464
  %340 = fadd double 0x3CB0000000000000, %339, !dbg !465
  call void @fAddHandler(double 0x3CB0000000000000, double %339, double %340, i64 0, i64 94865432400856, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432402528, i32 355, i32 41), !dbg !466
  %341 = fmul double %337, %340, !dbg !466
  call void @fMulHandler(double %337, double %340, double %341, i64 94865432400024, i64 94865432402528, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432402944, i32 355, i32 22), !dbg !467
  %342 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !467
  %343 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %342, i32 0, i32 1, !dbg !468
  store double %341, double* %343, align 8, !dbg !469
  %344 = load double, double* %5, align 8, !dbg !470
  %345 = fadd double %344, 1.000000e+00, !dbg !471
  call void @fAddHandler(double %344, double 1.000000e+00, double %345, i64 94865432404584, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432405024, i32 356, i32 29), !dbg !472
  %346 = fmul double 2.000000e+00, %345, !dbg !472
  call void @fMulHandler(double 2.000000e+00, double %345, double %346, i64 0, i64 94865432405024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432405440, i32 356, i32 24), !dbg !473
  %347 = fmul double %346, 0x3CB0000000000000, !dbg !473
  call void @fMulHandler(double %346, double 0x3CB0000000000000, double %347, i64 94865432405440, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432405824, i32 356, i32 36), !dbg !474
  %348 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !474
  %349 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %348, i32 0, i32 0, !dbg !475
  %350 = load double, double* %349, align 8, !dbg !475
  %351 = call double @fabs(double %350) #1, !dbg !476
  %352 = fmul double %347, %351, !dbg !477
  call void @fMulHandler(double %347, double %351, double %352, i64 94865432405824, i64 94865432408784, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432409264, i32 356, i32 54), !dbg !478
  %353 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !478
  %354 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %353, i32 0, i32 1, !dbg !479
  %355 = load double, double* %354, align 8, !dbg !480
  %356 = fadd double %355, %352, !dbg !480
  call void @fAddHandler(double %355, double %352, double %356, i64 94865432410488, i64 94865432409264, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432410896, i32 356, i32 17), !dbg !480
  store double %356, double* %354, align 8, !dbg !480
  %357 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !481
  %358 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %357, i32 0, i32 0, !dbg !483
  %359 = load double, double* %358, align 8, !dbg !483
  %360 = fcmp oeq double %359, 0.000000e+00, !dbg !484
  %361 = call i1 @fCmpInstHandler(double %359, double 0.000000e+00, i1 %360, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94865432415184, i32 357, i32 20), !dbg !485
  br i1 %361, label %362, label %371, !dbg !485

; <label>:362:                                    ; preds = %323
  br label %363, !dbg !486, !llvm.loop !487

; <label>:363:                                    ; preds = %362
  %364 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !488
  %365 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %364, i32 0, i32 0, !dbg !488
  store double 0.000000e+00, double* %365, align 8, !dbg !488
  %366 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !488
  %367 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %366, i32 0, i32 1, !dbg !488
  store double 0x10000000000000, double* %367, align 8, !dbg !488
  br label %368, !dbg !488, !llvm.loop !491

; <label>:368:                                    ; preds = %363
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 358, i32 15), !dbg !493
  store i32 15, i32* %4, align 4, !dbg !493
  br label %389, !dbg !493
                                                  ; No predecessors!
  br label %370, !dbg !496

; <label>:370:                                    ; preds = %369
  br label %372, !dbg !498

; <label>:371:                                    ; preds = %323
  store i32 0, i32* %4, align 4, !dbg !500
  br label %389, !dbg !500

; <label>:372:                                    ; preds = %370
  br label %382, !dbg !501

; <label>:373:                                    ; preds = %306
  br label %374, !dbg !502, !llvm.loop !504

; <label>:374:                                    ; preds = %373
  %375 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !505
  %376 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %375, i32 0, i32 0, !dbg !505
  store double 0.000000e+00, double* %376, align 8, !dbg !505
  %377 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !505
  %378 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %377, i32 0, i32 1, !dbg !505
  store double 0x10000000000000, double* %378, align 8, !dbg !505
  br label %379, !dbg !505, !llvm.loop !508

; <label>:379:                                    ; preds = %374
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 363, i32 15), !dbg !510
  store i32 15, i32* %4, align 4, !dbg !510
  br label %389, !dbg !510
                                                  ; No predecessors!
  br label %381, !dbg !513

; <label>:381:                                    ; preds = %380
  br label %382

; <label>:382:                                    ; preds = %381, %372
  br label %383

; <label>:383:                                    ; preds = %382
  br label %384

; <label>:384:                                    ; preds = %383
  br label %385

; <label>:385:                                    ; preds = %384, %203
  br label %386

; <label>:386:                                    ; preds = %385
  br label %387

; <label>:387:                                    ; preds = %386
  br label %388

; <label>:388:                                    ; preds = %387
  br label %389

; <label>:389:                                    ; preds = %388, %379, %371, %368, %271, %221, %201, %157, %110, %61, %44, %42
  %390 = load i32, i32* %4, align 4, !dbg !515
  ret i32 %390, !dbg !515
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
  call void @callOneArgHandler(i32 12, double 0x4086232BDD7ABCD2, double %30, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432455936, i32 372, i32 32), !dbg !546
  %31 = fsub double 0x4086232BDD7ABCD2, %30, !dbg !546
  call void @fSubHandler(double 0x4086232BDD7ABCD2, double %30, double %31, i64 0, i64 94865432455936, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432456416, i32 372, i32 30), !dbg !544
  store double %31, double* %9, align 8, !dbg !544
  %32 = load double, double* %5, align 8, !dbg !547
  %33 = load double, double* %9, align 8, !dbg !549
  %34 = fsub double -0.000000e+00, %33, !dbg !550
  call void @fSubHandler(double -0.000000e+00, double %33, double %34, i64 0, i64 94865432458776, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432459184, i32 376, i32 10), !dbg !551
  %35 = fcmp olt double %32, %34, !dbg !551
  %36 = call i1 @fCmpInstHandler(double %32, double %34, i1 %35, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432459600, i32 376, i32 8), !dbg !552
  br i1 %36, label %37, label %51, !dbg !552

; <label>:37:                                     ; preds = %3
  %38 = load i32, i32* %7, align 4, !dbg !553
  %39 = icmp ne i32 %38, 0, !dbg !553
  %40 = sext i32 %38 to i64, !dbg !555
  %41 = call i1 @iCmpInstHandler(i64 %40, i64 0, i1 %39, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432461056, i32 376, i32 20), !dbg !555
  br i1 %41, label %51, label %42, !dbg !555

; <label>:42:                                     ; preds = %37
  br label %43, !dbg !556, !llvm.loop !558

; <label>:43:                                     ; preds = %42
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !559
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !559
  store double 0x7FF0000000000000, double* %45, align 8, !dbg !559
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !559
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !559
  store double 0x7FF0000000000000, double* %47, align 8, !dbg !559
  br label %48, !dbg !559, !llvm.loop !562

; <label>:48:                                     ; preds = %43
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 377, i32 16), !dbg !564
  store i32 16, i32* %4, align 4, !dbg !564
  br label %216, !dbg !564
                                                  ; No predecessors!
  br label %50, !dbg !567

; <label>:50:                                     ; preds = %49
  br label %216, !dbg !569

; <label>:51:                                     ; preds = %37, %3
  %52 = load double, double* %5, align 8, !dbg !570
  %53 = fcmp oeq double %52, 0.000000e+00, !dbg !572
  %54 = call i1 @fCmpInstHandler(double %52, double 0.000000e+00, i1 %53, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432470880, i32 379, i32 14), !dbg !573
  br i1 %54, label %55, label %60, !dbg !573

; <label>:55:                                     ; preds = %51
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !574
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !576
  store double 1.000000e+00, double* %57, align 8, !dbg !577
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !578
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !579
  store double 0.000000e+00, double* %59, align 8, !dbg !580
  store i32 0, i32* %4, align 4, !dbg !581
  br label %216, !dbg !581

; <label>:60:                                     ; preds = %51
  %61 = load double, double* %5, align 8, !dbg !582
  %62 = fcmp olt double %61, 1.000000e+02, !dbg !584
  %63 = call i1 @fCmpInstHandler(double %61, double 1.000000e+02, i1 %62, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432476928, i32 383, i32 15), !dbg !585
  br i1 %63, label %64, label %107, !dbg !585

; <label>:64:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata double* %10, metadata !586, metadata !98), !dbg !588
  %65 = load i32, i32* %7, align 4, !dbg !589
  %66 = icmp ne i32 %65, 0, !dbg !589
  %67 = sext i32 %65 to i64, !dbg !589
  %68 = call i1 @iCmpInstHandler(i64 %67, i64 0, i1 %66, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432479440, i32 384, i32 25), !dbg !589
  br i1 %68, label %69, label %70, !dbg !589

; <label>:69:                                     ; preds = %64
  br label %74, !dbg !590

; <label>:70:                                     ; preds = %64
  %71 = load double, double* %5, align 8, !dbg !592
  %72 = fsub double -0.000000e+00, %71, !dbg !594
  call void @fSubHandler(double -0.000000e+00, double %71, double %72, i64 0, i64 94865432481992, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432482336, i32 384, i32 43), !dbg !595
  %73 = call double @exp(double %72) #6, !dbg !595
  call void @callOneArgHandler(i32 11, double %72, double %73, i64 94865432482336, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432482816, i32 384, i32 39), !dbg !596
  br label %74, !dbg !596

; <label>:74:                                     ; preds = %70, %69
  %75 = phi double [ 1.000000e+00, %69 ], [ %73, %70 ], !dbg !597
  store double %75, double* %10, align 8, !dbg !599
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !600, metadata !98), !dbg !601
  call void @llvm.dbg.declare(metadata i32* %12, metadata !602, metadata !98), !dbg !603
  %76 = load double, double* %5, align 8, !dbg !604
  %77 = load i32, i32* %7, align 4, !dbg !605
  %78 = call i32 @expint_E1_impl(double %76, %struct.gsl_sf_result_struct* %11, i32 %77), !dbg !606
  store i32 %78, i32* %12, align 4, !dbg !603
  %79 = load double, double* %10, align 8, !dbg !607
  %80 = load double, double* %5, align 8, !dbg !608
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !609
  %82 = load double, double* %81, align 8, !dbg !609
  %83 = fmul double %80, %82, !dbg !610
  call void @fMulHandler(double %80, double %82, double %83, i64 94865432490040, i64 94865432490872, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432492544, i32 387, i32 26), !dbg !611
  %84 = fsub double %79, %83, !dbg !611
  call void @fSubHandler(double %79, double %83, double %84, i64 94865432489688, i64 94865432492544, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432492960, i32 387, i32 23), !dbg !612
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !612
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !613
  store double %84, double* %86, align 8, !dbg !614
  %87 = load double, double* %10, align 8, !dbg !615
  %88 = fmul double 0x3CB0000000000000, %87, !dbg !616
  call void @fMulHandler(double 0x3CB0000000000000, double %87, double %88, i64 0, i64 94865432494600, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432495008, i32 388, i32 35), !dbg !617
  %89 = load double, double* %5, align 8, !dbg !617
  %90 = call double @fabs(double %89) #1, !dbg !618
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !619
  %92 = load double, double* %91, align 8, !dbg !619
  %93 = fmul double %90, %92, !dbg !620
  call void @fMulHandler(double %90, double %92, double %93, i64 94865432495872, i64 94865432496776, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432498448, i32 388, i32 49), !dbg !621
  %94 = fadd double %88, %93, !dbg !621
  call void @fAddHandler(double %88, double %93, double %94, i64 94865432495008, i64 94865432498448, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432498864, i32 388, i32 39), !dbg !622
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !622
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !623
  store double %94, double* %96, align 8, !dbg !624
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !625
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 0, !dbg !626
  %99 = load double, double* %98, align 8, !dbg !626
  %100 = call double @fabs(double %99) #1, !dbg !627
  %101 = fmul double 0x3CC0000000000000, %100, !dbg !628
  call void @fMulHandler(double 0x3CC0000000000000, double %100, double %101, i64 0, i64 94865432503072, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432503552, i32 389, i32 42), !dbg !629
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !629
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 1, !dbg !630
  %104 = load double, double* %103, align 8, !dbg !631
  %105 = fadd double %104, %101, !dbg !631
  call void @fAddHandler(double %104, double %101, double %105, i64 94865432504776, i64 94865432503552, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432505184, i32 389, i32 17), !dbg !631
  store double %105, double* %103, align 8, !dbg !631
  %106 = load i32, i32* %12, align 4, !dbg !632
  store i32 %106, i32* %4, align 4, !dbg !633
  br label %216, !dbg !633

; <label>:107:                                    ; preds = %60
  %108 = load double, double* %5, align 8, !dbg !634
  %109 = load double, double* %9, align 8, !dbg !636
  %110 = fcmp olt double %108, %109, !dbg !637
  %111 = call i1 @fCmpInstHandler(double %108, double %109, i1 %110, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432510144, i32 392, i32 13), !dbg !638
  br i1 %111, label %117, label %112, !dbg !638

; <label>:112:                                    ; preds = %107
  %113 = load i32, i32* %7, align 4, !dbg !639
  %114 = icmp ne i32 %113, 0, !dbg !639
  %115 = sext i32 %113 to i64, !dbg !641
  %116 = call i1 @iCmpInstHandler(i64 %115, i64 0, i1 %114, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432511600, i32 392, i32 23), !dbg !641
  br i1 %116, label %117, label %204, !dbg !641

; <label>:117:                                    ; preds = %112, %107
  call void @llvm.dbg.declare(metadata double* %13, metadata !642, metadata !98), !dbg !644
  %118 = load i32, i32* %7, align 4, !dbg !645
  %119 = icmp ne i32 %118, 0, !dbg !645
  %120 = sext i32 %118 to i64, !dbg !645
  %121 = call i1 @iCmpInstHandler(i64 %120, i64 0, i1 %119, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432515264, i32 393, i32 24), !dbg !645
  br i1 %121, label %122, label %123, !dbg !645

; <label>:122:                                    ; preds = %117
  br label %127, !dbg !646

; <label>:123:                                    ; preds = %117
  %124 = load double, double* %5, align 8, !dbg !648
  %125 = fsub double -0.000000e+00, %124, !dbg !650
  call void @fSubHandler(double -0.000000e+00, double %124, double %125, i64 0, i64 94865432517816, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432518160, i32 393, i32 42), !dbg !651
  %126 = call double @exp(double %125) #6, !dbg !651
  call void @callOneArgHandler(i32 11, double %125, double %126, i64 94865432518160, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432518640, i32 393, i32 38), !dbg !652
  br label %127, !dbg !652

; <label>:127:                                    ; preds = %123, %122
  %128 = phi double [ 1.000000e+00, %122 ], [ %126, %123 ], !dbg !653
  store double %128, double* %13, align 8, !dbg !655
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
  %129 = load double, double* %5, align 8, !dbg !684
  %130 = fdiv double 1.000000e+00, %129, !dbg !685
  call void @fDivHandler(double 1.000000e+00, double %129, double %130, i64 0, i64 94865432439560, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432439968, i32 407, i32 25), !dbg !683
  store double %130, double* %27, align 8, !dbg !683
  call void @llvm.dbg.declare(metadata double* %28, metadata !686, metadata !98), !dbg !687
  %131 = load double, double* %27, align 8, !dbg !688
  %132 = load double, double* %27, align 8, !dbg !689
  %133 = load double, double* %27, align 8, !dbg !690
  %134 = load double, double* %27, align 8, !dbg !691
  %135 = load double, double* %27, align 8, !dbg !692
  %136 = load double, double* %27, align 8, !dbg !693
  %137 = load double, double* %27, align 8, !dbg !694
  %138 = fmul double %137, 0xC2344C3B28000000, !dbg !695
  call void @fMulHandler(double %137, double 0xC2344C3B28000000, double %138, i64 94865432568200, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432568608, i32 408, i32 68), !dbg !696
  %139 = fadd double 0x41F7328CC0000000, %138, !dbg !696
  call void @fAddHandler(double 0x41F7328CC0000000, double %138, double %139, i64 0, i64 94865432568608, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432569024, i32 408, i32 66), !dbg !697
  %140 = fmul double %136, %139, !dbg !697
  call void @fMulHandler(double %136, double %139, double %140, i64 94865432567816, i64 94865432569024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432569440, i32 408, i32 61), !dbg !698
  %141 = fadd double -4.790016e+08, %140, !dbg !698
  call void @fAddHandler(double -4.790016e+08, double %140, double %141, i64 0, i64 94865432569440, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432571952, i32 408, i32 59), !dbg !699
  %142 = fmul double %135, %141, !dbg !699
  call void @fMulHandler(double %135, double %141, double %142, i64 94865432567432, i64 94865432571952, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432572336, i32 408, i32 54), !dbg !700
  %143 = fadd double 3.991680e+07, %142, !dbg !700
  call void @fAddHandler(double 3.991680e+07, double %142, double %143, i64 0, i64 94865432572336, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432572784, i32 408, i32 52), !dbg !701
  %144 = fmul double %134, %143, !dbg !701
  call void @fMulHandler(double %134, double %143, double %144, i64 94865432567048, i64 94865432572784, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432573168, i32 408, i32 47), !dbg !702
  %145 = fadd double -3.628800e+06, %144, !dbg !702
  call void @fAddHandler(double -3.628800e+06, double %144, double %145, i64 0, i64 94865432573168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432573616, i32 408, i32 45), !dbg !703
  %146 = fmul double %133, %145, !dbg !703
  call void @fMulHandler(double %133, double %145, double %146, i64 94865432566664, i64 94865432573616, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432574000, i32 408, i32 41), !dbg !704
  %147 = fadd double 3.628800e+05, %146, !dbg !704
  call void @fAddHandler(double 3.628800e+05, double %146, double %147, i64 0, i64 94865432574000, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432574448, i32 408, i32 39), !dbg !705
  %148 = fmul double %132, %147, !dbg !705
  call void @fMulHandler(double %132, double %147, double %148, i64 94865432566280, i64 94865432574448, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432574832, i32 408, i32 35), !dbg !706
  %149 = fadd double -4.032000e+04, %148, !dbg !706
  call void @fAddHandler(double -4.032000e+04, double %148, double %149, i64 0, i64 94865432574832, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432575280, i32 408, i32 33), !dbg !707
  %150 = fmul double %131, %149, !dbg !707
  call void @fMulHandler(double %131, double %149, double %150, i64 94865432565928, i64 94865432575280, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432575664, i32 408, i32 29), !dbg !708
  %151 = fadd double 5.040000e+03, %150, !dbg !708
  call void @fAddHandler(double 5.040000e+03, double %150, double %151, i64 0, i64 94865432575664, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432576112, i32 408, i32 27), !dbg !687
  store double %151, double* %28, align 8, !dbg !687
  call void @llvm.dbg.declare(metadata double* %29, metadata !709, metadata !98), !dbg !710
  %152 = load double, double* %27, align 8, !dbg !711
  %153 = load double, double* %27, align 8, !dbg !712
  %154 = load double, double* %27, align 8, !dbg !713
  %155 = load double, double* %27, align 8, !dbg !714
  %156 = load double, double* %27, align 8, !dbg !715
  %157 = load double, double* %27, align 8, !dbg !716
  %158 = load double, double* %28, align 8, !dbg !717
  %159 = fmul double %157, %158, !dbg !718
  call void @fMulHandler(double %157, double %158, double %159, i64 94865432581160, i64 94865432581544, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432581952, i32 409, i32 56), !dbg !719
  %160 = fadd double -7.200000e+02, %159, !dbg !719
  call void @fAddHandler(double -7.200000e+02, double %159, double %160, i64 0, i64 94865432581952, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432582400, i32 409, i32 54), !dbg !720
  %161 = fmul double %156, %160, !dbg !720
  call void @fMulHandler(double %156, double %160, double %161, i64 94865432580776, i64 94865432582400, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432582784, i32 409, i32 50), !dbg !721
  %162 = fadd double 1.200000e+02, %161, !dbg !721
  call void @fAddHandler(double 1.200000e+02, double %161, double %162, i64 0, i64 94865432582784, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432583232, i32 409, i32 48), !dbg !722
  %163 = fmul double %155, %162, !dbg !722
  call void @fMulHandler(double %155, double %162, double %163, i64 94865432580392, i64 94865432583232, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432583616, i32 409, i32 44), !dbg !723
  %164 = fadd double -2.400000e+01, %163, !dbg !723
  call void @fAddHandler(double -2.400000e+01, double %163, double %164, i64 0, i64 94865432583616, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432584064, i32 409, i32 42), !dbg !724
  %165 = fmul double %154, %164, !dbg !724
  call void @fMulHandler(double %154, double %164, double %165, i64 94865432580008, i64 94865432584064, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432584448, i32 409, i32 38), !dbg !725
  %166 = fadd double 6.000000e+00, %165, !dbg !725
  call void @fAddHandler(double 6.000000e+00, double %165, double %166, i64 0, i64 94865432584448, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432584896, i32 409, i32 36), !dbg !726
  %167 = fmul double %153, %166, !dbg !726
  call void @fMulHandler(double %153, double %166, double %167, i64 94865432579624, i64 94865432584896, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432585280, i32 409, i32 32), !dbg !727
  %168 = fadd double -2.000000e+00, %167, !dbg !727
  call void @fAddHandler(double -2.000000e+00, double %167, double %168, i64 0, i64 94865432585280, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432585728, i32 409, i32 30), !dbg !728
  %169 = fmul double %152, %168, !dbg !728
  call void @fMulHandler(double %152, double %168, double %169, i64 94865432579272, i64 94865432585728, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432586112, i32 409, i32 26), !dbg !710
  store double %169, double* %29, align 8, !dbg !710
  %170 = load double, double* %13, align 8, !dbg !729
  %171 = load double, double* %29, align 8, !dbg !730
  %172 = fadd double 1.000000e+00, %171, !dbg !731
  call void @fAddHandler(double 1.000000e+00, double %171, double %172, i64 0, i64 94865432588568, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432589008, i32 410, i32 28), !dbg !732
  %173 = fmul double %170, %172, !dbg !732
  call void @fMulHandler(double %170, double %172, double %173, i64 94865432588184, i64 94865432589008, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432589392, i32 410, i32 21), !dbg !733
  %174 = load double, double* %5, align 8, !dbg !733
  %175 = fdiv double %173, %174, !dbg !734
  call void @fDivHandler(double %173, double %174, double %175, i64 94865432589392, i64 94865432589784, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432590192, i32 410, i32 34), !dbg !735
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !735
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %176, i32 0, i32 0, !dbg !736
  store double %175, double* %177, align 8, !dbg !737
  %178 = load double, double* %5, align 8, !dbg !738
  %179 = fadd double %178, 1.000000e+00, !dbg !739
  call void @fAddHandler(double %178, double 1.000000e+00, double %179, i64 94865432591832, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432592272, i32 411, i32 28), !dbg !740
  %180 = fmul double 2.000000e+00, %179, !dbg !740
  call void @fMulHandler(double 2.000000e+00, double %179, double %180, i64 0, i64 94865432592272, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432592688, i32 411, i32 23), !dbg !741
  %181 = fmul double %180, 0x3CB0000000000000, !dbg !741
  call void @fMulHandler(double %180, double 0x3CB0000000000000, double %181, i64 94865432592688, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432593072, i32 411, i32 35), !dbg !742
  %182 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !742
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %182, i32 0, i32 0, !dbg !743
  %184 = load double, double* %183, align 8, !dbg !743
  %185 = fmul double %181, %184, !dbg !744
  call void @fMulHandler(double %181, double %184, double %185, i64 94865432593072, i64 94865432594296, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432595968, i32 411, i32 53), !dbg !745
  %186 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !745
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %186, i32 0, i32 1, !dbg !746
  store double %185, double* %187, align 8, !dbg !747
  %188 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !748
  %189 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %188, i32 0, i32 0, !dbg !750
  %190 = load double, double* %189, align 8, !dbg !750
  %191 = fcmp oeq double %190, 0.000000e+00, !dbg !751
  %192 = call i1 @fCmpInstHandler(double %190, double 0.000000e+00, i1 %191, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94865432600112, i32 412, i32 20), !dbg !752
  br i1 %192, label %193, label %202, !dbg !752

; <label>:193:                                    ; preds = %127
  br label %194, !dbg !753, !llvm.loop !754

; <label>:194:                                    ; preds = %193
  %195 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !755
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %195, i32 0, i32 0, !dbg !755
  store double 0.000000e+00, double* %196, align 8, !dbg !755
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !755
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %197, i32 0, i32 1, !dbg !755
  store double 0x10000000000000, double* %198, align 8, !dbg !755
  br label %199, !dbg !755, !llvm.loop !758

; <label>:199:                                    ; preds = %194
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 413, i32 15), !dbg !760
  store i32 15, i32* %4, align 4, !dbg !760
  br label %216, !dbg !760
                                                  ; No predecessors!
  br label %201, !dbg !763

; <label>:201:                                    ; preds = %200
  br label %203, !dbg !765

; <label>:202:                                    ; preds = %127
  store i32 0, i32* %4, align 4, !dbg !767
  br label %216, !dbg !767

; <label>:203:                                    ; preds = %201
  br label %213, !dbg !768

; <label>:204:                                    ; preds = %112
  br label %205, !dbg !769, !llvm.loop !771

; <label>:205:                                    ; preds = %204
  %206 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !772
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %206, i32 0, i32 0, !dbg !772
  store double 0.000000e+00, double* %207, align 8, !dbg !772
  %208 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !772
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %208, i32 0, i32 1, !dbg !772
  store double 0x10000000000000, double* %209, align 8, !dbg !772
  br label %210, !dbg !772, !llvm.loop !775

; <label>:210:                                    ; preds = %205
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 418, i32 15), !dbg !777
  store i32 15, i32* %4, align 4, !dbg !777
  br label %216, !dbg !777
                                                  ; No predecessors!
  br label %212, !dbg !780

; <label>:212:                                    ; preds = %211
  br label %213

; <label>:213:                                    ; preds = %212, %203
  br label %214

; <label>:214:                                    ; preds = %213
  br label %215

; <label>:215:                                    ; preds = %214
  br label %216

; <label>:216:                                    ; preds = %215, %210, %202, %199, %74, %55, %50, %48
  %217 = load i32, i32* %4, align 4, !dbg !782
  ret i32 %217, !dbg !782
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
  %16 = sext i32 %14 to i64, !dbg !820
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432637792, i32 425, i32 9), !dbg !820
  br i1 %17, label %18, label %27, !dbg !820

; <label>:18:                                     ; preds = %4
  br label %19, !dbg !821, !llvm.loop !823

; <label>:19:                                     ; preds = %18
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !824
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !824
  store double 0x7FF8000000000000, double* %21, align 8, !dbg !824
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !824
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !824
  store double 0x7FF8000000000000, double* %23, align 8, !dbg !824
  br label %24, !dbg !824, !llvm.loop !827

; <label>:24:                                     ; preds = %19
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 426, i32 1), !dbg !829
  store i32 1, i32* %5, align 4, !dbg !829
  br label %217, !dbg !829
                                                  ; No predecessors!
  br label %26, !dbg !832

; <label>:26:                                     ; preds = %25
  br label %217, !dbg !834

; <label>:27:                                     ; preds = %4
  %28 = load i32, i32* %6, align 4, !dbg !835
  %29 = icmp eq i32 %28, 0, !dbg !838
  %30 = sext i32 %28 to i64, !dbg !835
  %31 = call i1 @iCmpInstHandler(i64 %30, i64 0, i1 %29, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432646496, i32 427, i32 16), !dbg !835
  br i1 %31, label %32, label %79, !dbg !835

; <label>:32:                                     ; preds = %27
  %33 = load double, double* %7, align 8, !dbg !839
  %34 = fcmp oeq double %33, 0.000000e+00, !dbg !842
  %35 = call i1 @fCmpInstHandler(double %33, double 0.000000e+00, i1 %34, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432649072, i32 428, i32 11), !dbg !843
  br i1 %35, label %36, label %45, !dbg !843

; <label>:36:                                     ; preds = %32
  br label %37, !dbg !844, !llvm.loop !846

; <label>:37:                                     ; preds = %36
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !847
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !847
  store double 0x7FF8000000000000, double* %39, align 8, !dbg !847
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !847
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !847
  store double 0x7FF8000000000000, double* %41, align 8, !dbg !847
  br label %42, !dbg !847, !llvm.loop !850

; <label>:42:                                     ; preds = %37
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 429, i32 1), !dbg !852
  store i32 1, i32* %5, align 4, !dbg !852
  br label %217, !dbg !852
                                                  ; No predecessors!
  br label %44, !dbg !855

; <label>:44:                                     ; preds = %43
  br label %78, !dbg !857

; <label>:45:                                     ; preds = %32
  %46 = load i32, i32* %9, align 4, !dbg !858
  %47 = icmp ne i32 %46, 0, !dbg !858
  %48 = sext i32 %46 to i64, !dbg !858
  %49 = call i1 @iCmpInstHandler(i64 %48, i64 0, i1 %47, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432657776, i32 431, i32 22), !dbg !858
  br i1 %49, label %50, label %51, !dbg !858

; <label>:50:                                     ; preds = %45
  br label %55, !dbg !860

; <label>:51:                                     ; preds = %45
  %52 = load double, double* %7, align 8, !dbg !862
  %53 = fsub double -0.000000e+00, %52, !dbg !864
  call void @fSubHandler(double -0.000000e+00, double %52, double %53, i64 0, i64 94865432660328, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432660672, i32 431, i32 40), !dbg !865
  %54 = call double @exp(double %53) #6, !dbg !865
  call void @callOneArgHandler(i32 11, double %53, double %54, i64 94865432660672, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432661152, i32 431, i32 36), !dbg !866
  br label %55, !dbg !866

; <label>:55:                                     ; preds = %51, %50
  %56 = phi double [ 1.000000e+00, %50 ], [ %54, %51 ], !dbg !867
  %57 = load double, double* %7, align 8, !dbg !869
  %58 = fdiv double %56, %57, !dbg !870
  call void @fDivHandler(double %56, double %57, double %58, i64 94865432662008, i64 94865432662392, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432662800, i32 431, i32 45), !dbg !871
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !871
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 0, !dbg !872
  store double %58, double* %60, align 8, !dbg !873
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !874
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !875
  %63 = load double, double* %62, align 8, !dbg !875
  %64 = call double @fabs(double %63) #1, !dbg !876
  %65 = fmul double 0x3CC0000000000000, %64, !dbg !877
  call void @fMulHandler(double 0x3CC0000000000000, double %64, double %65, i64 0, i64 94865432667008, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432667488, i32 432, i32 41), !dbg !878
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !878
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 1, !dbg !879
  store double %65, double* %67, align 8, !dbg !880
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !881
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !881
  %70 = load double, double* %69, align 8, !dbg !881
  %71 = call double @fabs(double %70) #1, !dbg !881
  %72 = fcmp olt double %71, 0x10000000000000, !dbg !881
  %73 = call i1 @fCmpInstHandler(double %71, double 0x10000000000000, i1 %72, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432671632, i32 433, i32 7), !dbg !883
  br i1 %73, label %74, label %77, !dbg !883

; <label>:74:                                     ; preds = %55
  br label %75, !dbg !884, !llvm.loop !886

; <label>:75:                                     ; preds = %74
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 433, i32 15), !dbg !887
  store i32 15, i32* %5, align 4, !dbg !887
  br label %217, !dbg !887
                                                  ; No predecessors!
  br label %77, !dbg !890

; <label>:77:                                     ; preds = %76, %55
  store i32 0, i32* %5, align 4, !dbg !892
  br label %217, !dbg !892

; <label>:78:                                     ; preds = %44
  br label %216, !dbg !893

; <label>:79:                                     ; preds = %27
  %80 = load i32, i32* %6, align 4, !dbg !894
  %81 = icmp eq i32 %80, 1, !dbg !897
  %82 = sext i32 %80 to i64, !dbg !894
  %83 = call i1 @iCmpInstHandler(i64 %82, i64 1, i1 %81, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432678800, i32 436, i32 16), !dbg !894
  br i1 %83, label %84, label %89, !dbg !894

; <label>:84:                                     ; preds = %79
  %85 = load double, double* %7, align 8, !dbg !898
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !900
  %87 = load i32, i32* %9, align 4, !dbg !901
  %88 = call i32 @expint_E1_impl(double %85, %struct.gsl_sf_result_struct* %86, i32 %87), !dbg !902
  store i32 %88, i32* %5, align 4, !dbg !903
  br label %217, !dbg !903

; <label>:89:                                     ; preds = %79
  %90 = load i32, i32* %6, align 4, !dbg !904
  %91 = icmp eq i32 %90, 2, !dbg !906
  %92 = sext i32 %90 to i64, !dbg !907
  %93 = call i1 @iCmpInstHandler(i64 %92, i64 2, i1 %91, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432685296, i32 438, i32 16), !dbg !907
  br i1 %93, label %94, label %99, !dbg !907

; <label>:94:                                     ; preds = %89
  %95 = load double, double* %7, align 8, !dbg !908
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !910
  %97 = load i32, i32* %9, align 4, !dbg !911
  %98 = call i32 @expint_E2_impl(double %95, %struct.gsl_sf_result_struct* %96, i32 %97), !dbg !912
  store i32 %98, i32* %5, align 4, !dbg !913
  br label %217, !dbg !913

; <label>:99:                                     ; preds = %89
  %100 = load double, double* %7, align 8, !dbg !914
  %101 = fcmp olt double %100, 0.000000e+00, !dbg !917
  %102 = call i1 @fCmpInstHandler(double %100, double 0.000000e+00, i1 %101, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432690464, i32 441, i32 10), !dbg !918
  br i1 %102, label %103, label %112, !dbg !918

; <label>:103:                                    ; preds = %99
  br label %104, !dbg !919, !llvm.loop !921

; <label>:104:                                    ; preds = %103
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !922
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 0, !dbg !922
  store double 0x7FF8000000000000, double* %106, align 8, !dbg !922
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !922
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 1, !dbg !922
  store double 0x7FF8000000000000, double* %108, align 8, !dbg !922
  br label %109, !dbg !922, !llvm.loop !925

; <label>:109:                                    ; preds = %104
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 442, i32 1), !dbg !927
  store i32 1, i32* %5, align 4, !dbg !927
  br label %217, !dbg !927
                                                  ; No predecessors!
  br label %111, !dbg !930

; <label>:111:                                    ; preds = %110
  br label %112, !dbg !932

; <label>:112:                                    ; preds = %111, %99
  %113 = load double, double* %7, align 8, !dbg !933
  %114 = fcmp oeq double %113, 0.000000e+00, !dbg !935
  %115 = call i1 @fCmpInstHandler(double %113, double 0.000000e+00, i1 %114, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432699024, i32 444, i32 11), !dbg !936
  br i1 %115, label %116, label %151, !dbg !936

; <label>:116:                                    ; preds = %112
  %117 = load i32, i32* %9, align 4, !dbg !937
  %118 = icmp ne i32 %117, 0, !dbg !937
  %119 = sext i32 %117 to i64, !dbg !937
  %120 = call i1 @iCmpInstHandler(i64 %119, i64 0, i1 %118, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432700480, i32 445, i32 22), !dbg !937
  br i1 %120, label %121, label %124, !dbg !937

; <label>:121:                                    ; preds = %116
  %122 = load double, double* %7, align 8, !dbg !939
  %123 = call double @exp(double %122) #6, !dbg !941
  call void @callOneArgHandler(i32 11, double %122, double %123, i64 94865432702568, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432702976, i32 445, i32 30), !dbg !942
  br label %125, !dbg !942

; <label>:124:                                    ; preds = %116
  br label %125, !dbg !943

; <label>:125:                                    ; preds = %124, %121
  %126 = phi double [ %123, %121 ], [ 1.000000e+00, %124 ], !dbg !945
  %127 = load i32, i32* %6, align 4, !dbg !947
  %128 = sitofp i32 %127 to double, !dbg !947
  %129 = fsub double %128, 1.000000e+00, !dbg !948
  call void @fSubHandler(double %128, double 1.000000e+00, double %129, i64 94865432705064, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432706768, i32 445, i32 50), !dbg !949
  %130 = fdiv double 1.000000e+00, %129, !dbg !949
  call void @fDivHandler(double 1.000000e+00, double %129, double %130, i64 0, i64 94865432706768, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432707184, i32 445, i32 47), !dbg !950
  %131 = fmul double %126, %130, !dbg !950
  call void @fMulHandler(double %126, double %130, double %131, i64 94865432704296, i64 94865432707184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432707568, i32 445, i32 43), !dbg !951
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !951
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 0, !dbg !952
  store double %131, double* %133, align 8, !dbg !953
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !954
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 0, !dbg !955
  %136 = load double, double* %135, align 8, !dbg !955
  %137 = call double @fabs(double %136) #1, !dbg !956
  %138 = fmul double 0x3CC0000000000000, %137, !dbg !957
  call void @fMulHandler(double 0x3CC0000000000000, double %137, double %138, i64 0, i64 94865432711776, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432712256, i32 446, i32 41), !dbg !958
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !958
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 1, !dbg !959
  store double %138, double* %140, align 8, !dbg !960
  %141 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !961
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %141, i32 0, i32 0, !dbg !961
  %143 = load double, double* %142, align 8, !dbg !961
  %144 = call double @fabs(double %143) #1, !dbg !961
  %145 = fcmp olt double %144, 0x10000000000000, !dbg !961
  %146 = call i1 @fCmpInstHandler(double %144, double 0x10000000000000, i1 %145, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432718464, i32 447, i32 7), !dbg !963
  br i1 %146, label %147, label %150, !dbg !963

; <label>:147:                                    ; preds = %125
  br label %148, !dbg !964, !llvm.loop !966

; <label>:148:                                    ; preds = %147
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 447, i32 15), !dbg !967
  store i32 15, i32* %5, align 4, !dbg !967
  br label %217, !dbg !967
                                                  ; No predecessors!
  br label %150, !dbg !970

; <label>:150:                                    ; preds = %149, %125
  store i32 0, i32* %5, align 4, !dbg !972
  br label %217, !dbg !972

; <label>:151:                                    ; preds = %112
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !973, metadata !98), !dbg !975
  call void @llvm.dbg.declare(metadata double* %11, metadata !976, metadata !98), !dbg !977
  %152 = load double, double* %7, align 8, !dbg !978
  %153 = load i32, i32* %6, align 4, !dbg !979
  %154 = sub nsw i32 %153, 1, !dbg !980
  %155 = sitofp i32 %154 to double, !dbg !979
  %156 = call double @pow(double %152, double %155) #6, !dbg !981
  call void @callTwoArgsHandler(i32 15, double %152, double %155, double %156, i64 94865432726968, i64 94865432728120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432730184, i32 451, i32 26), !dbg !977
  store double %156, double* %11, align 8, !dbg !977
  call void @llvm.dbg.declare(metadata i32* %12, metadata !982, metadata !98), !dbg !983
  %157 = load i32, i32* %6, align 4, !dbg !984
  %158 = sub nsw i32 1, %157, !dbg !985
  %159 = sitofp i32 %158 to double, !dbg !986
  %160 = load double, double* %7, align 8, !dbg !987
  %161 = call i32 @gsl_sf_gamma_inc_e(double %159, double %160, %struct.gsl_sf_result_struct* %10), !dbg !988
  store i32 %161, i32* %12, align 4, !dbg !983
  call void @llvm.dbg.declare(metadata double* %13, metadata !989, metadata !98), !dbg !990
  %162 = load i32, i32* %9, align 4, !dbg !991
  %163 = icmp ne i32 %162, 0, !dbg !991
  %164 = sext i32 %162 to i64, !dbg !991
  %165 = call i1 @iCmpInstHandler(i64 %164, i64 0, i1 %163, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432739152, i32 453, i32 31), !dbg !991
  br i1 %165, label %166, label %169, !dbg !991

; <label>:166:                                    ; preds = %151
  %167 = load double, double* %7, align 8, !dbg !992
  %168 = call double @exp(double %167) #6, !dbg !994
  call void @callOneArgHandler(i32 11, double %167, double %168, i64 94865432741240, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432741648, i32 453, i32 39), !dbg !995
  br label %170, !dbg !995

; <label>:169:                                    ; preds = %151
  br label %170, !dbg !996

; <label>:170:                                    ; preds = %169, %166
  %171 = phi double [ %168, %166 ], [ 1.000000e+00, %169 ], !dbg !998
  store double %171, double* %13, align 8, !dbg !1000
  %172 = load double, double* %13, align 8, !dbg !1001
  %173 = load double, double* %11, align 8, !dbg !1002
  %174 = fmul double %172, %173, !dbg !1003
  call void @fMulHandler(double %172, double %173, double %174, i64 94865432743768, i64 94865432744152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432744560, i32 454, i32 34), !dbg !1004
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1004
  %176 = load double, double* %175, align 8, !dbg !1004
  %177 = fmul double %174, %176, !dbg !1005
  call void @fMulHandler(double %174, double %176, double %177, i64 94865432744560, i64 94865432745400, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432747072, i32 454, i32 46), !dbg !1006
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1006
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !1007
  store double %177, double* %179, align 8, !dbg !1008
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1009
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 0, !dbg !1010
  %182 = load double, double* %181, align 8, !dbg !1010
  %183 = call double @fabs(double %182) #1, !dbg !1011
  %184 = fmul double 0x3CC0000000000000, %183, !dbg !1012
  call void @fMulHandler(double 0x3CC0000000000000, double %183, double %184, i64 0, i64 94865432751280, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432751760, i32 455, i32 41), !dbg !1013
  %185 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1013
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %185, i32 0, i32 1, !dbg !1014
  store double %184, double* %186, align 8, !dbg !1015
  %187 = load double, double* %13, align 8, !dbg !1016
  %188 = load double, double* %11, align 8, !dbg !1017
  %189 = fmul double %187, %188, !dbg !1018
  call void @fMulHandler(double %187, double %188, double %189, i64 94865432753400, i64 94865432753784, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432754192, i32 456, i32 44), !dbg !1019
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !1019
  %191 = load double, double* %190, align 8, !dbg !1019
  %192 = fmul double %189, %191, !dbg !1020
  call void @fMulHandler(double %189, double %191, double %192, i64 94865432754192, i64 94865432755032, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432756704, i32 456, i32 56), !dbg !1021
  %193 = call double @fabs(double %192) #1, !dbg !1021
  %194 = fmul double 2.000000e+00, %193, !dbg !1022
  call void @fMulHandler(double 2.000000e+00, double %193, double %194, i64 0, i64 94865432757184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432757696, i32 456, i32 24), !dbg !1023
  %195 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1023
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %195, i32 0, i32 1, !dbg !1024
  %197 = load double, double* %196, align 8, !dbg !1025
  %198 = fadd double %197, %194, !dbg !1025
  call void @fAddHandler(double %197, double %194, double %198, i64 94865432758888, i64 94865432757696, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432759296, i32 456, i32 19), !dbg !1025
  store double %198, double* %196, align 8, !dbg !1025
  %199 = load i32, i32* %12, align 4, !dbg !1026
  %200 = icmp eq i32 %199, 0, !dbg !1028
  %201 = sext i32 %199 to i64, !dbg !1029
  %202 = call i1 @iCmpInstHandler(i64 %201, i64 0, i1 %200, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432761488, i32 457, i32 18), !dbg !1029
  br i1 %202, label %203, label %214, !dbg !1029

; <label>:203:                                    ; preds = %170
  %204 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1030
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %204, i32 0, i32 0, !dbg !1030
  %206 = load double, double* %205, align 8, !dbg !1030
  %207 = call double @fabs(double %206) #1, !dbg !1030
  %208 = fcmp olt double %207, 0x10000000000000, !dbg !1030
  %209 = call i1 @fCmpInstHandler(double %207, double 0x10000000000000, i1 %208, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94865432765040, i32 457, i32 34), !dbg !1030
  br i1 %209, label %210, label %213, !dbg !1030

; <label>:210:                                    ; preds = %203
  br label %211, !dbg !1033, !llvm.loop !1035

; <label>:211:                                    ; preds = %210
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 457, i32 15), !dbg !1037
  store i32 15, i32* %5, align 4, !dbg !1037
  br label %217, !dbg !1037
                                                  ; No predecessors!
  br label %213, !dbg !1040

; <label>:213:                                    ; preds = %212, %203
  br label %214, !dbg !1042

; <label>:214:                                    ; preds = %213, %170
  %215 = load i32, i32* %12, align 4, !dbg !1044
  store i32 %215, i32* %5, align 4, !dbg !1045
  br label %217, !dbg !1045

; <label>:216:                                    ; preds = %78
  br label %217

; <label>:217:                                    ; preds = %216, %214, %211, %150, %148, %109, %94, %84, %77, %75, %42, %26, %24
  %218 = load i32, i32* %5, align 4, !dbg !1046
  ret i32 %218, !dbg !1046
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
  call void @fSubHandler(double -0.000000e+00, double %6, double %7, i64 0, i64 94865432783656, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94865432784032, i32 506, i32 37), !dbg !1069
  %8 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1069
  %9 = call i32 @gsl_sf_expint_E1_e(double %7, %struct.gsl_sf_result_struct* %8), !dbg !1070
  store i32 %9, i32* %5, align 4, !dbg !1066
  %10 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1071
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1072
  %12 = load double, double* %11, align 8, !dbg !1072
  %13 = fsub double -0.000000e+00, %12, !dbg !1073
  call void @fSubHandler(double -0.000000e+00, double %12, double %13, i64 0, i64 94865432787912, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94865432789584, i32 507, i32 19), !dbg !1074
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
  call void @fSubHandler(double -0.000000e+00, double %6, double %7, i64 0, i64 94865432796712, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94865432797088, i32 518, i32 44), !dbg !1089
  %8 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1089
  %9 = call i32 @gsl_sf_expint_E1_scaled_e(double %7, %struct.gsl_sf_result_struct* %8), !dbg !1090
  store i32 %9, i32* %5, align 4, !dbg !1086
  %10 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1091
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1092
  %12 = load double, double* %11, align 8, !dbg !1092
  %13 = fsub double -0.000000e+00, %12, !dbg !1093
  call void @fSubHandler(double -0.000000e+00, double %12, double %13, i64 0, i64 94865432800968, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94865432802640, i32 519, i32 19), !dbg !1094
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
  %10 = sext i32 %8 to i64, !dbg !1105
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94865432811952, i32 545, i32 3), !dbg !1105
  br i1 %11, label %12, label %18, !dbg !1105

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1109, !llvm.loop !1112

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1114
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 545, i32 %14), !dbg !1114
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1114
  %16 = load double, double* %15, align 8, !dbg !1114
  store double %16, double* %2, align 8, !dbg !1114
  br label %21, !dbg !1114
                                                  ; No predecessors!
  br label %18, !dbg !1117

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1119
  %20 = load double, double* %19, align 8, !dbg !1119
  store double %20, double* %2, align 8, !dbg !1119
  br label %21, !dbg !1119

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1121
  ret double %22, !dbg !1121
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
  %10 = sext i32 %8 to i64, !dbg !1126
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94865432829520, i32 550, i32 3), !dbg !1126
  br i1 %11, label %12, label %18, !dbg !1126

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1130, !llvm.loop !1133

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1135
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 550, i32 %14), !dbg !1135
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1135
  %16 = load double, double* %15, align 8, !dbg !1135
  store double %16, double* %2, align 8, !dbg !1135
  br label %21, !dbg !1135
                                                  ; No predecessors!
  br label %18, !dbg !1138

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1140
  %20 = load double, double* %19, align 8, !dbg !1140
  store double %20, double* %2, align 8, !dbg !1140
  br label %21, !dbg !1140

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1142
  ret double %22, !dbg !1142
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
  %10 = sext i32 %8 to i64, !dbg !1147
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @27, i32 0, i32 0), i64 94865432846816, i32 555, i32 3), !dbg !1147
  br i1 %11, label %12, label %18, !dbg !1147

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1151, !llvm.loop !1154

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1156
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 555, i32 %14), !dbg !1156
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1156
  %16 = load double, double* %15, align 8, !dbg !1156
  store double %16, double* %2, align 8, !dbg !1156
  br label %21, !dbg !1156
                                                  ; No predecessors!
  br label %18, !dbg !1159

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1161
  %20 = load double, double* %19, align 8, !dbg !1161
  store double %20, double* %2, align 8, !dbg !1161
  br label %21, !dbg !1161

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1163
  ret double %22, !dbg !1163
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
  %10 = sext i32 %8 to i64, !dbg !1168
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @29, i32 0, i32 0), i64 94865432864112, i32 560, i32 3), !dbg !1168
  br i1 %11, label %12, label %18, !dbg !1168

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1172, !llvm.loop !1175

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1177
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 560, i32 %14), !dbg !1177
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1177
  %16 = load double, double* %15, align 8, !dbg !1177
  store double %16, double* %2, align 8, !dbg !1177
  br label %21, !dbg !1177
                                                  ; No predecessors!
  br label %18, !dbg !1180

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1182
  %20 = load double, double* %19, align 8, !dbg !1182
  store double %20, double* %2, align 8, !dbg !1182
  br label %21, !dbg !1182

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1184
  ret double %22, !dbg !1184
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
  %13 = sext i32 %11 to i64, !dbg !1193
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @31, i32 0, i32 0), i64 94865432884912, i32 565, i32 3), !dbg !1193
  br i1 %14, label %15, label %21, !dbg !1193

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1197, !llvm.loop !1200

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1202
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 565, i32 %17), !dbg !1202
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1202
  %19 = load double, double* %18, align 8, !dbg !1202
  store double %19, double* %3, align 8, !dbg !1202
  br label %24, !dbg !1202
                                                  ; No predecessors!
  br label %21, !dbg !1205

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1207
  %23 = load double, double* %22, align 8, !dbg !1207
  store double %23, double* %3, align 8, !dbg !1207
  br label %24, !dbg !1207

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1209
  ret double %25, !dbg !1209
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
  %13 = sext i32 %11 to i64, !dbg !1216
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @33, i32 0, i32 0), i64 94865432905296, i32 570, i32 3), !dbg !1216
  br i1 %14, label %15, label %21, !dbg !1216

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1220, !llvm.loop !1223

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1225
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 570, i32 %17), !dbg !1225
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1225
  %19 = load double, double* %18, align 8, !dbg !1225
  store double %19, double* %3, align 8, !dbg !1225
  br label %24, !dbg !1225
                                                  ; No predecessors!
  br label %21, !dbg !1228

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1230
  %23 = load double, double* %22, align 8, !dbg !1230
  store double %23, double* %3, align 8, !dbg !1230
  br label %24, !dbg !1230

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1232
  ret double %25, !dbg !1232
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
  %10 = sext i32 %8 to i64, !dbg !1237
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @35, i32 0, i32 0), i64 94865432922672, i32 575, i32 3), !dbg !1237
  br i1 %11, label %12, label %18, !dbg !1237

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1241, !llvm.loop !1244

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1246
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 575, i32 %14), !dbg !1246
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1246
  %16 = load double, double* %15, align 8, !dbg !1246
  store double %16, double* %2, align 8, !dbg !1246
  br label %21, !dbg !1246
                                                  ; No predecessors!
  br label %18, !dbg !1249

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1251
  %20 = load double, double* %19, align 8, !dbg !1251
  store double %20, double* %2, align 8, !dbg !1251
  br label %21, !dbg !1251

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1253
  ret double %22, !dbg !1253
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
  %10 = sext i32 %8 to i64, !dbg !1258
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @37, i32 0, i32 0), i64 94865432562640, i32 580, i32 3), !dbg !1258
  br i1 %11, label %12, label %18, !dbg !1258

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1262, !llvm.loop !1265

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1267
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 580, i32 %14), !dbg !1267
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1267
  %16 = load double, double* %15, align 8, !dbg !1267
  store double %16, double* %2, align 8, !dbg !1267
  br label %21, !dbg !1267
                                                  ; No predecessors!
  br label %18, !dbg !1270

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1272
  %20 = load double, double* %19, align 8, !dbg !1272
  store double %20, double* %2, align 8, !dbg !1272
  br label %21, !dbg !1272

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1274
  ret double %22, !dbg !1274
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
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94865432216760, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865432970464, i32 11, i32 19), !dbg !1297
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1297
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !1298
  %19 = load double, double* %18, align 8, !dbg !1298
  %20 = fsub double %16, %19, !dbg !1299
  call void @fSubHandler(double %16, double %19, double %20, i64 94865432970464, i64 94865432137336, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865432973136, i32 11, i32 22), !dbg !1300
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1300
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !1301
  %23 = load double, double* %22, align 8, !dbg !1301
  %24 = fsub double %20, %23, !dbg !1302
  call void @fSubHandler(double %20, double %23, double %24, i64 94865432973136, i64 94865432974424, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865432976096, i32 11, i32 30), !dbg !1303
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1303
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !1304
  %27 = load double, double* %26, align 8, !dbg !1304
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1305
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !1306
  %30 = load double, double* %29, align 8, !dbg !1306
  %31 = fsub double %27, %30, !dbg !1307
  call void @fSubHandler(double %27, double %30, double %31, i64 94865432977320, i64 94865432979800, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865432981472, i32 11, i32 48), !dbg !1308
  %32 = fdiv double %24, %31, !dbg !1308
  call void @fDivHandler(double %24, double %31, double %32, i64 94865432976096, i64 94865432981472, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865432981888, i32 11, i32 39), !dbg !1294
  store double %32, double* %10, align 8, !dbg !1294
  call void @llvm.dbg.declare(metadata double* %11, metadata !1309, metadata !98), !dbg !1310
  %33 = load double, double* %10, align 8, !dbg !1311
  %34 = fmul double 2.000000e+00, %33, !dbg !1312
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94865432984936, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865432985344, i32 12, i32 19), !dbg !1310
  store double %34, double* %11, align 8, !dbg !1310
  call void @llvm.dbg.declare(metadata double* %12, metadata !1313, metadata !98), !dbg !1314
  store double 0.000000e+00, double* %12, align 8, !dbg !1314
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1315
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !1317
  %37 = load i32, i32* %36, align 8, !dbg !1317
  store i32 %37, i32* %7, align 4, !dbg !1318
  br label %38, !dbg !1319

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !1320
  %40 = icmp sge i32 %39, 1, !dbg !1323
  %41 = sext i32 %39 to i64, !dbg !1324
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865432993920, i32 16, i32 23), !dbg !1324
  br i1 %42, label %43, label %80, !dbg !1324

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !1325, metadata !98), !dbg !1327
  %44 = load double, double* %8, align 8, !dbg !1328
  store double %44, double* %13, align 8, !dbg !1327
  %45 = load double, double* %11, align 8, !dbg !1329
  %46 = load double, double* %8, align 8, !dbg !1330
  %47 = fmul double %45, %46, !dbg !1331
  call void @fMulHandler(double %45, double %46, double %47, i64 94865432998120, i64 94865432998504, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865432998912, i32 18, i32 11), !dbg !1332
  %48 = load double, double* %9, align 8, !dbg !1332
  %49 = fsub double %47, %48, !dbg !1333
  call void @fSubHandler(double %47, double %48, double %49, i64 94865432998912, i64 94865432999304, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865432999712, i32 18, i32 14), !dbg !1334
  %50 = load i32, i32* %7, align 4, !dbg !1334
  %51 = sext i32 %50 to i64, !dbg !1335
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1335
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !1336
  %54 = load double*, double** %53, align 8, !dbg !1336
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !1335
  %56 = load double, double* %55, align 8, !dbg !1335
  %57 = fadd double %49, %56, !dbg !1337
  call void @fAddHandler(double %49, double %56, double %57, i64 94865432999712, i64 94865433004760, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433004880, i32 18, i32 19), !dbg !1338
  store double %57, double* %8, align 8, !dbg !1338
  %58 = load double, double* %11, align 8, !dbg !1339
  %59 = load double, double* %13, align 8, !dbg !1340
  %60 = fmul double %58, %59, !dbg !1341
  call void @fMulHandler(double %58, double %59, double %60, i64 94865433005688, i64 94865433006072, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433006480, i32 19, i32 17), !dbg !1342
  %61 = call double @fabs(double %60) #1, !dbg !1342
  %62 = load double, double* %9, align 8, !dbg !1343
  %63 = call double @fabs(double %62) #1, !dbg !1344
  %64 = fadd double %61, %63, !dbg !1346
  call void @fAddHandler(double %61, double %63, double %64, i64 94865433006960, i64 94865433007888, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433008368, i32 19, i32 24), !dbg !1347
  %65 = load i32, i32* %7, align 4, !dbg !1347
  %66 = sext i32 %65 to i64, !dbg !1348
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1348
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !1349
  %69 = load double*, double** %68, align 8, !dbg !1349
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !1348
  %71 = load double, double* %70, align 8, !dbg !1348
  %72 = call double @fabs(double %71) #1, !dbg !1350
  %73 = fadd double %64, %72, !dbg !1352
  call void @fAddHandler(double %64, double %72, double %73, i64 94865433008368, i64 94865433013600, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433014080, i32 19, i32 35), !dbg !1353
  %74 = load double, double* %12, align 8, !dbg !1353
  %75 = fadd double %74, %73, !dbg !1353
  call void @fAddHandler(double %74, double %73, double %75, i64 94865433014472, i64 94865433014080, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433014880, i32 19, i32 7), !dbg !1353
  store double %75, double* %12, align 8, !dbg !1353
  %76 = load double, double* %13, align 8, !dbg !1354
  store double %76, double* %9, align 8, !dbg !1355
  br label %77, !dbg !1356

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !1357
  %79 = add nsw i32 %78, -1, !dbg !1357
  store i32 %79, i32* %7, align 4, !dbg !1357
  br label %38, !dbg !1359, !llvm.loop !1360

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !1362, metadata !98), !dbg !1364
  %81 = load double, double* %8, align 8, !dbg !1365
  store double %81, double* %14, align 8, !dbg !1364
  %82 = load double, double* %10, align 8, !dbg !1366
  %83 = load double, double* %8, align 8, !dbg !1367
  %84 = fmul double %82, %83, !dbg !1368
  call void @fMulHandler(double %82, double %83, double %84, i64 94865433023944, i64 94865433024328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433024736, i32 25, i32 10), !dbg !1369
  %85 = load double, double* %9, align 8, !dbg !1369
  %86 = fsub double %84, %85, !dbg !1370
  call void @fSubHandler(double %84, double %85, double %86, i64 94865433024736, i64 94865433025128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433025536, i32 25, i32 13), !dbg !1371
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1371
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !1372
  %89 = load double*, double** %88, align 8, !dbg !1372
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !1371
  %91 = load double, double* %90, align 8, !dbg !1371
  %92 = fmul double 5.000000e-01, %91, !dbg !1373
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94865433030168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433030384, i32 25, i32 24), !dbg !1374
  %93 = fadd double %86, %92, !dbg !1374
  call void @fAddHandler(double %86, double %92, double %93, i64 94865433025536, i64 94865433030384, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433030768, i32 25, i32 18), !dbg !1375
  store double %93, double* %8, align 8, !dbg !1375
  %94 = load double, double* %10, align 8, !dbg !1376
  %95 = load double, double* %14, align 8, !dbg !1377
  %96 = fmul double %94, %95, !dbg !1378
  call void @fMulHandler(double %94, double %95, double %96, i64 94865433031576, i64 94865433031960, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433032368, i32 26, i32 16), !dbg !1379
  %97 = call double @fabs(double %96) #1, !dbg !1379
  %98 = load double, double* %9, align 8, !dbg !1380
  %99 = call double @fabs(double %98) #1, !dbg !1381
  %100 = fadd double %97, %99, !dbg !1383
  call void @fAddHandler(double %97, double %99, double %100, i64 94865433032848, i64 94865433033776, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433034256, i32 26, i32 23), !dbg !1384
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1384
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !1385
  %103 = load double*, double** %102, align 8, !dbg !1385
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !1384
  %105 = load double, double* %104, align 8, !dbg !1384
  %106 = call double @fabs(double %105) #1, !dbg !1386
  %107 = fmul double 5.000000e-01, %106, !dbg !1388
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94865433039008, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433039520, i32 26, i32 40), !dbg !1389
  %108 = fadd double %100, %107, !dbg !1389
  call void @fAddHandler(double %100, double %107, double %108, i64 94865433034256, i64 94865433039520, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433039904, i32 26, i32 34), !dbg !1390
  %109 = load double, double* %12, align 8, !dbg !1390
  %110 = fadd double %109, %108, !dbg !1390
  call void @fAddHandler(double %109, double %108, double %110, i64 94865433040296, i64 94865433039904, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433040704, i32 26, i32 7), !dbg !1390
  store double %110, double* %12, align 8, !dbg !1390
  %111 = load double, double* %8, align 8, !dbg !1391
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1392
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !1393
  store double %111, double* %113, align 8, !dbg !1394
  %114 = load double, double* %12, align 8, !dbg !1395
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !1396
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94865433044120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433044528, i32 30, i32 33), !dbg !1397
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1397
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !1398
  %118 = load i32, i32* %117, align 8, !dbg !1398
  %119 = sext i32 %118 to i64, !dbg !1399
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1399
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !1400
  %122 = load double*, double** %121, align 8, !dbg !1400
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !1399
  %124 = load double, double* %123, align 8, !dbg !1399
  %125 = call double @fabs(double %124) #1, !dbg !1401
  %126 = fadd double %115, %125, !dbg !1402
  call void @fAddHandler(double %115, double %125, double %126, i64 94865433044528, i64 94865433051856, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94865433052336, i32 30, i32 37), !dbg !1403
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1403
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !1404
  store double %126, double* %128, align 8, !dbg !1405
  ret i32 0, !dbg !1406
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind
declare double @pow(double, double) #3

declare i32 @gsl_sf_gamma_inc_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i1 @fCmpInstHandler(double, double, i1, i32, i8*, i8*, i64, i32, i32)

declare i1 @iCmpInstHandler(i64, i64, i1, i32, i8*, i8*, i64, i32, i32)

declare void @fAddHandler(double, double, double, i64, i64, i8*, i8*, i64, i32, i32)

declare void @fSubHandler(double, double, double, i64, i64, i8*, i8*, i64, i32, i32)

declare void @fMulHandler(double, double, double, i64, i64, i8*, i8*, i64, i32, i32)

declare void @fDivHandler(double, double, double, i64, i64, i8*, i8*, i64, i32, i32)

declare void @callOneArgHandler(i32, double, double, i64, i8*, i8*, i64, i32, i32)

declare void @callTwoArgsHandler(i32, double, double, double, i64, i64, i8*, i8*, i64, i32, i32)

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
