; ModuleID = 'airy.ll'
source_filename = "airy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@aif_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([9 x double], [9 x double]* @ai_data_f, i32 0, i32 0), i32 8, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@aig_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([8 x double], [8 x double]* @ai_data_g, i32 0, i32 0), i32 7, double -1.000000e+00, double 1.000000e+00, i32 7 }, align 8
@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"airy.c\00", align 1
@bif_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([9 x double], [9 x double]* @data_bif, i32 0, i32 0), i32 8, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@big_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([8 x double], [8 x double]* @data_big, i32 0, i32 0), i32 7, double -1.000000e+00, double 1.000000e+00, i32 7 }, align 8
@bif2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([10 x double], [10 x double]* @data_bif2, i32 0, i32 0), i32 9, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@big2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([10 x double], [10 x double]* @data_big2, i32 0, i32 0), i32 9, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"gsl_sf_airy_Ai_e(x, mode, &result)\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"gsl_sf_airy_Ai_scaled_e(x, mode, &result)\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"gsl_sf_airy_Bi_e(x, mode, &result)\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"gsl_sf_airy_Bi_scaled_e(x, mode, &result)\00", align 1
@am21_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([37 x double], [37 x double]* @am21_data, i32 0, i32 0), i32 36, double -1.000000e+00, double 1.000000e+00, i32 20 }, align 8
@ath1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([36 x double], [36 x double]* @ath1_data, i32 0, i32 0), i32 35, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8
@am22_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([33 x double], [33 x double]* @am22_data, i32 0, i32 0), i32 32, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8
@ath2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([32 x double], [32 x double]* @ath2_data, i32 0, i32 0), i32 31, double -1.000000e+00, double 1.000000e+00, i32 16 }, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"x is greater than 1.0\00", align 1
@am21_data = internal global [37 x double] [double 0x3F7AF4980A3A11BC, double 0x3F636536BFC3316F, double 0x3F215D186E131003, double 0x3EF086912A78217D, double 0x3EC717F568CBC411, double 0x3EA47A294ED62747, double 0x3E8568AEA7816129, double 0x3E6949D75DA33A76, double 0x3E506BD071C777C0, double 0x3E37045CB901EE7E, double 2.000091e-09, double 7.872292e-10, double 3.243103e-10, double 1.390106e-10, double 6.170110e-11, double 2.824910e-11, double 1.329790e-11, double 6.418800e-12, double 3.169700e-12, double 1.598100e-12, double 8.213000e-13, double 4.296000e-13, double 2.284000e-13, double 1.232000e-13, double 6.750000e-14, double 3.740000e-14, double 2.100000e-14, double 1.190000e-14, double 6.800000e-15, double 3.900000e-15, double 2.300000e-15, double 1.300000e-15, double 8.000000e-16, double 5.000000e-16, double 3.000000e-16, double 1.000000e-16, double 1.000000e-16], align 16
@ath1_data = internal global [36 x double] [double 0xBFB23DFD33BFBE77, double 0xBF782F8C26D0186B, double 0xBF1FC1EED2C8E5DB, double 0xBEE4BB8D3C03A634, double 0xBEB72AAAB4DCD763, double 0xBE918B457957BE7D, double 0xBE703DD35B885262, double 0xBE5160B93ED5415B, double 0xBE34C3C0BEE25B8F, double 0xBE1B15C08F8233E4, double 0xBE02FA37382BE0EC, double 0xBDEC3CC8CF02B842, double -8.043412e-11, double -3.291252e-11, double -1.399875e-11, double -6.161510e-12, double -2.796140e-12, double -1.304280e-12, double -6.237300e-13, double -3.051200e-13, double -1.523900e-13, double -7.758000e-14, double -4.020000e-14, double -2.117000e-14, double -1.132000e-14, double -6.140000e-15, double -3.370000e-15, double -1.880000e-15, double -1.050000e-15, double -6.000000e-16, double -3.400000e-16, double -2.000000e-16, double -1.100000e-16, double -7.000000e-17, double -4.000000e-17, double -2.000000e-17], align 16
@am22_data = internal global [33 x double] [double 0xBF9000E72D521FCE, double 0x3F7FE172FC6A0F0A, double 0x3F4C6968624BEDC4, double 0x3F2492EA0501F2F6, double 0x3F02AF78370F5158, double 0x3EE363E646A9BF8B, double 0x3EC5FCC5DA8303B2, double 0x3EAA923768E643A7, double 0x3E90D8DC50E61501, double 0x3E762FD17181BABF, double 0x3E5E20480FD1D738, double 0x3E44FA2177C128F7, double 0x3E2DD794BD9F332C, double 0x3E159DFAD22B13E6, double 0x3DFFD0F9C155A231, double 0x3DE7BD55C3C19752, double 6.523192e-11, double 2.490471e-11, double 9.601560e-12, double 3.734480e-12, double 1.464170e-12, double 5.782600e-13, double 2.299100e-13, double 9.197000e-14, double 3.700000e-14, double 1.496000e-14, double 6.080000e-15, double 2.480000e-15, double 1.010000e-15, double 4.100000e-16, double 1.700000e-16, double 7.000000e-17, double 2.000000e-17], align 16
@ath2_data = internal global [32 x double] [double 0x3F720B4396F64EFD, double 0xBF9F28D4AD486592, double 0xBF56B3D9E264AD5A, double 0xBF27A6B583E9C0CC, double 0xBF01B9B238964A5D, double 0xBEE01A31827832B9, double 0xBEC081E72CCB56AC, double 0xBEA2667C587104CE, double 0xBE85D10B19A826E4, double 0xBE6B20DBE83AF65F, double 0xBE5184DAD97B6067, double 0xBE3756F879AD7878, double 0xBE1FE8ECDABAEAB7, double -6.489512e-10, double 0xBDEFC1AEC6ABA941, double -8.363282e-11, double -3.071196e-11, double -1.142367e-11, double -4.298110e-12, double -1.633890e-12, double -6.269300e-13, double -2.426000e-13, double -9.461000e-14, double -3.716000e-14, double -1.469000e-14, double -5.840000e-15, double -2.330000e-15, double -9.300000e-16, double -3.700000e-16, double -1.500000e-16, double -6.000000e-17, double -2.000000e-17], align 16
@ai_data_f = internal global [9 x double] [double 0xBFA370FB5DDB1451, double 0x3FAE4E6632E97C0F, double 0x3F5028CFD615B254, double 0x3EDCB9E3DA9E0C35, double 0x3E5BDAE3C9D3830E, double 0x3DD0FA67A3B60159, double 0x3D3C686128FEBABC, double 1.201400e-16, double 1.000000e-19], align 16
@ai_data_g = internal global [8 x double] [double 0x3F929688A21082BA, double 0x3F96171E3527D823, double 0x3F30D41D08E63267, double 0x3EB7EEDCE1362561, double 0x3E33A317F0CCD43B, double 9.525170e-12, double 1.392000e-14, double 1.000000e-17], align 16
@aip_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([36 x double], [36 x double]* @data_aip, i32 0, i32 0), i32 35, double -1.000000e+00, double 1.000000e+00, i32 17 }, align 8
@data_aip = internal global [36 x double] [double 0xBF9333B4B48EB2F9, double 0xBF82BA4A8E1F9D98, double 0x3F4D8684FAB9D568, double 0xBF22461B0BD401D2, double 0x3EFCB62FF551D77C, double 0xBEDA51C6711546C1, double 0x3EBAF3CC4C4750D2, double 0xBE9E0A62176D0050, double 0x3E81E9C6216348A8, double 0xBE66968ADAEC008A, double 0x3E4DDAD092C69F01, double 0xBE348B2AD504624F, double 0x3E1D49BEAAA57E83, double 0xBE0589BBD9127D7F, double 0x3DF04909F910854C, double 0xBDD9405CC1CA7DDE, double 0x3DC406C3C4BF5369, double 0xBDB0371157FAE287, double 0x3D9AC336D9D392FD, double 0xBD8679F907D1CB83, double 0x3D732FB5C8087AFD, double 0xBD60A0AF80F5DE7A, double 0x3D4D3B11D6B0857E, double 0xBD3A0927F30B660F, double 0x3D277AFF4CF6452B, double 0xBD156CFF7766C739, double 0x3D03C4C9B4AE4205, double 0xBCF26EA04571ADDB, double 0x3CE15B9B11F598FD, double -9.160199e-16, double 4.393567e-16, double -2.125503e-16, double 1.036735e-16, double -5.096420e-17, double 2.523770e-17, double -1.257930e-17], align 16
@data_bif = internal global [9 x double] [double 0xBF9121B9D268A2B4, double 0x3FBA3EF8872837DE, double 0x3F5BFD2B174187A5, double 0x3EE8E0A7D5A866A9, double 0x3E681F881E9A9EB8, double 0x3DDD6831AB093FE3, double 0x3D489A10BD02D422, double 2.081000e-16, double 1.800000e-19], align 16
@data_big = internal global [8 x double] [double 0x3F970162B87813A5, double 0x3FA32179D12FAB23, double 0x3F3D25DF0F0797C5, double 0x3EC4BA04D2B6F238, double 0x3E410197375ECA6C, double 1.649807e-11, double 2.411000e-14, double 2.000000e-17], align 16
@data_bif2 = internal global [10 x double] [double 0x3FB98F7D53D84138, double 0x3FDEA1CAA8BE19EF, double 0x3F99C249B2C6A9FD, double 0x3F4312C07E6D492C, double 0x3EDF74CFF88B3AF0, double 0x3E7077AAC00260F6, double 0x3DF7CBBDB5EAF10A, double 1.428891e-12, double 4.496200e-15, double 1.110000e-17], align 16
@data_big2 = internal global [10 x double] [double 0x3FA10D70935F8B41, double 0x3FC4A5C7C5BFB00C, double 0x3F79E1F59BCEBE7A, double 0x3F1F23E4822735E6, double 0x3EB5E2EEF2F3371D, double 0x3E44217AF2B8D920, double 0x3DCA171F5386423D, double 1.783107e-13, double 5.167000e-16, double 1.100000e-18], align 16
@bip_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([24 x double], [24 x double]* @data_bip, i32 0, i32 0), i32 23, double -1.000000e+00, double 1.000000e+00, i32 14 }, align 8
@bip2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([29 x double], [29 x double]* @data_bip2, i32 0, i32 0), i32 28, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@data_bip = internal global [24 x double] [double 0xBFB54DEFE189070D, double 0x3F8778F6C8D4B375, double 0x3F3C1CD4199B414E, double 0xBF2389D692961C8A, double 0xBEEB6C71D7EDB4EE, double 0x3EDA8A3500CB4DEF, double 0xBE9C567DC5FBA980, double 0xBE89B2EC5162638A, double 0x3E71528A768F5F2E, double 0xBE40D8C1248C77B5, double 0xBE1081854912A917, double 0x3E080DADFF3528B7, double 0xBDE85ED19110A555, double 2.272089e-11, double 1.654040e-12, double -1.851710e-12, double 5.957600e-13, double -1.219400e-13, double 1.334000e-14, double 1.720000e-15, double -1.450000e-15, double 4.900000e-16, double -1.100000e-16, double 1.000000e-17], align 16
@data_bip2 = internal global [29 x double] [double 0xBFBD14AD00DD36AA, double 0x3F70F3297BA05425, double 0x3F21BD7E695FEB52, double 0x3EE5DE1F7D01FCDD, double 0x3EB69B72F1F21C48, double 0x3E86C5421558F801, double 0xBE45AE9C2C49DAE6, double 0xBE51F6772145B286, double 0xBE33AD73DD79DA08, double 0x3DF9ADA3AE45C323, double 0x3E03D0A543132A2D, double 0x3DD1179E16689BDD, double 0xBDD165ED812CCCF7, double 0xBDB0663677755AF4, double 0x3DA1597641EB4F12, double 0x3D85F49B9C352549, double 0xBD7556E66E978314, double -3.740493e-13, double 2.237727e-13, double 4.749020e-14, double -4.526160e-14, double -3.017200e-15, double 9.105800e-15, double -9.814000e-16, double -1.642900e-15, double 5.533000e-16, double 2.175000e-16, double -1.737000e-16, double -1.000000e-18], align 16
@0 = private unnamed_addr constant [17 x i8] c"gsl_sf_airy_Ai_e\00"
@1 = private unnamed_addr constant [8 x i8] c"airy.ll\00"
@2 = private unnamed_addr constant [15 x i8] c"airy_mod_phase\00"
@3 = private unnamed_addr constant [8 x i8] c"airy.ll\00"
@4 = private unnamed_addr constant [17 x i8] c"cheb_eval_mode_e\00"
@5 = private unnamed_addr constant [8 x i8] c"airy.ll\00"
@6 = private unnamed_addr constant [9 x i8] c"airy_aie\00"
@7 = private unnamed_addr constant [8 x i8] c"airy.ll\00"
@8 = private unnamed_addr constant [24 x i8] c"gsl_sf_airy_Ai_scaled_e\00"
@9 = private unnamed_addr constant [8 x i8] c"airy.ll\00"
@10 = private unnamed_addr constant [17 x i8] c"gsl_sf_airy_Bi_e\00"
@11 = private unnamed_addr constant [8 x i8] c"airy.ll\00"
@12 = private unnamed_addr constant [9 x i8] c"airy_bie\00"
@13 = private unnamed_addr constant [8 x i8] c"airy.ll\00"
@14 = private unnamed_addr constant [24 x i8] c"gsl_sf_airy_Bi_scaled_e\00"
@15 = private unnamed_addr constant [8 x i8] c"airy.ll\00"
@16 = private unnamed_addr constant [15 x i8] c"gsl_sf_airy_Ai\00"
@17 = private unnamed_addr constant [8 x i8] c"airy.ll\00"
@18 = private unnamed_addr constant [22 x i8] c"gsl_sf_airy_Ai_scaled\00"
@19 = private unnamed_addr constant [8 x i8] c"airy.ll\00"
@20 = private unnamed_addr constant [15 x i8] c"gsl_sf_airy_Bi\00"
@21 = private unnamed_addr constant [8 x i8] c"airy.ll\00"
@22 = private unnamed_addr constant [22 x i8] c"gsl_sf_airy_Bi_scaled\00"
@23 = private unnamed_addr constant [8 x i8] c"airy.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_airy_Ai_e(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !111 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !127, metadata !128), !dbg !129
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !130, metadata !128), !dbg !131
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !132, metadata !128), !dbg !133
  %20 = load double, double* %5, align 8, !dbg !134
  %21 = fcmp olt double %20, -1.000000e+00, !dbg !136
  %22 = call i1 @fCmpInstHandler(double %20, double -1.000000e+00, i1 %21, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830522784, i32 663, i32 8), !dbg !137
  br i1 %22, label %23, label %81, !dbg !137

; <label>:23:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !138, metadata !128), !dbg !140
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !141, metadata !128), !dbg !142
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !143, metadata !128), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %11, metadata !145, metadata !128), !dbg !146
  %24 = load double, double* %5, align 8, !dbg !147
  %25 = load i32, i32* %6, align 4, !dbg !148
  %26 = call i32 @airy_mod_phase(double %24, i32 %25, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !149
  store i32 %26, i32* %11, align 4, !dbg !146
  call void @llvm.dbg.declare(metadata i32* %12, metadata !150, metadata !128), !dbg !151
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !152
  %28 = load double, double* %27, align 8, !dbg !152
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !153
  %30 = load double, double* %29, align 8, !dbg !153
  %31 = call i32 @gsl_sf_cos_err_e(double %28, double %30, %struct.gsl_sf_result_struct* %10), !dbg !154
  store i32 %31, i32* %12, align 4, !dbg !151
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !155
  %33 = load double, double* %32, align 8, !dbg !155
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !156
  %35 = load double, double* %34, align 8, !dbg !156
  %36 = fmul double %33, %35, !dbg !157
  call void @fMulHandler(double %33, double %35, double %36, i64 94457830539384, i64 94457830542008, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830543680, i32 669, i32 28), !dbg !158
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !158
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !159
  store double %36, double* %38, align 8, !dbg !160
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !161
  %40 = load double, double* %39, align 8, !dbg !161
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !162
  %42 = load double, double* %41, align 8, !dbg !162
  %43 = fmul double %40, %42, !dbg !163
  call void @fMulHandler(double %40, double %42, double %43, i64 94457830545768, i64 94457830547864, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830549536, i32 670, i32 33), !dbg !164
  %44 = call double @fabs(double %43) #1, !dbg !164
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !165
  %46 = load double, double* %45, align 8, !dbg !165
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !166
  %48 = load double, double* %47, align 8, !dbg !166
  %49 = fmul double %46, %48, !dbg !167
  call void @fMulHandler(double %46, double %48, double %49, i64 94457830551224, i64 94457830553320, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830554992, i32 670, i32 73), !dbg !168
  %50 = call double @fabs(double %49) #1, !dbg !168
  %51 = fadd double %44, %50, !dbg !170
  call void @fAddHandler(double %44, double %50, double %51, i64 94457830550288, i64 94457830555472, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830555952, i32 670, i32 51), !dbg !171
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !171
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !172
  store double %51, double* %53, align 8, !dbg !173
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !174
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !175
  %56 = load double, double* %55, align 8, !dbg !175
  %57 = call double @fabs(double %56) #1, !dbg !176
  %58 = fmul double 0x3CB0000000000000, %57, !dbg !177
  call void @fMulHandler(double 0x3CB0000000000000, double %57, double %58, i64 0, i64 94457830560160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830560704, i32 671, i32 36), !dbg !178
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !178
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 1, !dbg !179
  %61 = load double, double* %60, align 8, !dbg !180
  %62 = fadd double %61, %58, !dbg !180
  call void @fAddHandler(double %61, double %58, double %62, i64 94457830561928, i64 94457830560704, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830562336, i32 671, i32 17), !dbg !180
  store double %62, double* %60, align 8, !dbg !180
  %63 = load i32, i32* %11, align 4, !dbg !181
  %64 = icmp ne i32 %63, 0, !dbg !181
  %65 = sext i32 %63 to i64, !dbg !181
  %66 = call i1 @iCmpInstHandler(i64 %65, i64 0, i1 %64, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830564528, i32 672, i32 12), !dbg !181
  br i1 %66, label %67, label %69, !dbg !181

; <label>:67:                                     ; preds = %23
  %68 = load i32, i32* %11, align 4, !dbg !182
  br label %79, !dbg !182

; <label>:69:                                     ; preds = %23
  %70 = load i32, i32* %12, align 4, !dbg !183
  %71 = icmp ne i32 %70, 0, !dbg !183
  %72 = sext i32 %70 to i64, !dbg !183
  %73 = call i1 @iCmpInstHandler(i64 %72, i64 0, i1 %71, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830570112, i32 672, i32 12), !dbg !183
  br i1 %73, label %74, label %76, !dbg !183

; <label>:74:                                     ; preds = %69
  %75 = load i32, i32* %12, align 4, !dbg !185
  br label %77, !dbg !185

; <label>:76:                                     ; preds = %69
  br label %77, !dbg !187

; <label>:77:                                     ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ], !dbg !189
  br label %79, !dbg !189

; <label>:79:                                     ; preds = %77, %67
  %80 = phi i32 [ %68, %67 ], [ %78, %77 ], !dbg !191
  store i32 %80, i32* %4, align 4, !dbg !193
  br label %178, !dbg !193

; <label>:81:                                     ; preds = %3
  %82 = load double, double* %5, align 8, !dbg !194
  %83 = fcmp ole double %82, 1.000000e+00, !dbg !196
  %84 = call i1 @fCmpInstHandler(double %82, double 1.000000e+00, i1 %83, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830579664, i32 674, i32 13), !dbg !197
  br i1 %84, label %85, label %127, !dbg !197

; <label>:85:                                     ; preds = %81
  call void @llvm.dbg.declare(metadata double* %13, metadata !198, metadata !128), !dbg !200
  %86 = load double, double* %5, align 8, !dbg !201
  %87 = load double, double* %5, align 8, !dbg !202
  %88 = fmul double %86, %87, !dbg !203
  call void @fMulHandler(double %86, double %87, double %88, i64 94457830581896, i64 94457830582248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830582656, i32 675, i32 23), !dbg !204
  %89 = load double, double* %5, align 8, !dbg !204
  %90 = fmul double %88, %89, !dbg !205
  call void @fMulHandler(double %88, double %89, double %90, i64 94457830582656, i64 94457830583048, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830583456, i32 675, i32 25), !dbg !200
  store double %90, double* %13, align 8, !dbg !200
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !206, metadata !128), !dbg !207
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !208, metadata !128), !dbg !209
  %91 = load double, double* %13, align 8, !dbg !210
  %92 = load i32, i32* %6, align 4, !dbg !211
  %93 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aif_cs, double %91, i32 %92, %struct.gsl_sf_result_struct* %14), !dbg !212
  %94 = load double, double* %13, align 8, !dbg !213
  %95 = load i32, i32* %6, align 4, !dbg !214
  %96 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aig_cs, double %94, i32 %95, %struct.gsl_sf_result_struct* %15), !dbg !215
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !216
  %98 = load double, double* %97, align 8, !dbg !216
  %99 = load double, double* %5, align 8, !dbg !217
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !218
  %101 = load double, double* %100, align 8, !dbg !218
  %102 = fadd double 2.500000e-01, %101, !dbg !219
  call void @fAddHandler(double 2.500000e-01, double %101, double %102, i64 0, i64 94457830593720, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830595488, i32 680, i32 53), !dbg !220
  %103 = fmul double %99, %102, !dbg !220
  call void @fMulHandler(double %99, double %102, double %103, i64 94457830592888, i64 94457830595488, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830595872, i32 680, i32 46), !dbg !221
  %104 = fsub double %98, %103, !dbg !221
  call void @fSubHandler(double %98, double %103, double %104, i64 94457830591240, i64 94457830595872, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830596288, i32 680, i32 43), !dbg !222
  %105 = fadd double 3.750000e-01, %104, !dbg !222
  call void @fAddHandler(double 3.750000e-01, double %104, double %105, i64 0, i64 94457830596288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830596800, i32 680, i32 26), !dbg !223
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !223
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !224
  store double %105, double* %107, align 8, !dbg !225
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !226
  %109 = load double, double* %108, align 8, !dbg !226
  %110 = load double, double* %5, align 8, !dbg !227
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !228
  %112 = load double, double* %111, align 8, !dbg !228
  %113 = fmul double %110, %112, !dbg !229
  call void @fMulHandler(double %110, double %112, double %113, i64 94457830600504, i64 94457830601336, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830603008, i32 681, i32 42), !dbg !230
  %114 = call double @fabs(double %113) #1, !dbg !230
  %115 = fadd double %109, %114, !dbg !231
  call void @fAddHandler(double %109, double %114, double %115, i64 94457830598856, i64 94457830603488, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830603968, i32 681, i32 34), !dbg !232
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !232
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 1, !dbg !233
  store double %115, double* %117, align 8, !dbg !234
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !235
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 0, !dbg !236
  %120 = load double, double* %119, align 8, !dbg !236
  %121 = call double @fabs(double %120) #1, !dbg !237
  %122 = fmul double 0x3CB0000000000000, %121, !dbg !238
  call void @fMulHandler(double 0x3CB0000000000000, double %121, double %122, i64 0, i64 94457830608176, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830608656, i32 682, i32 36), !dbg !239
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !239
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 1, !dbg !240
  %125 = load double, double* %124, align 8, !dbg !241
  %126 = fadd double %125, %122, !dbg !241
  call void @fAddHandler(double %125, double %122, double %126, i64 94457830609880, i64 94457830608656, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830610288, i32 682, i32 17), !dbg !241
  store double %126, double* %124, align 8, !dbg !241
  store i32 0, i32* %4, align 4, !dbg !242
  br label %178, !dbg !242

; <label>:127:                                    ; preds = %81
  call void @llvm.dbg.declare(metadata double* %16, metadata !243, metadata !128), !dbg !245
  %128 = load double, double* %5, align 8, !dbg !246
  %129 = load double, double* %5, align 8, !dbg !247
  %130 = call double @sqrt(double %129) #6, !dbg !248
  call void @callOneArgHandler(i32 14, double %129, double %130, i64 94457830615544, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830616288, i32 686, i32 22), !dbg !249
  %131 = fmul double %128, %130, !dbg !249
  call void @fMulHandler(double %128, double %130, double %131, i64 94457830615192, i64 94457830616288, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830616800, i32 686, i32 20), !dbg !245
  store double %131, double* %16, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata double* %17, metadata !250, metadata !128), !dbg !251
  %132 = load double, double* %16, align 8, !dbg !252
  %133 = fmul double -2.000000e+00, %132, !dbg !253
  call void @fMulHandler(double -2.000000e+00, double %132, double %133, i64 0, i64 94457830620040, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830620512, i32 687, i32 26), !dbg !254
  %134 = fdiv double %133, 3.000000e+00, !dbg !254
  call void @fDivHandler(double %133, double 3.000000e+00, double %134, i64 94457830620512, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830620992, i32 687, i32 30), !dbg !255
  %135 = call double @exp(double %134) #6, !dbg !255
  call void @callOneArgHandler(i32 11, double %134, double %135, i64 94457830620992, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830623776, i32 687, i32 18), !dbg !251
  store double %135, double* %17, align 8, !dbg !251
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !256, metadata !128), !dbg !257
  call void @llvm.dbg.declare(metadata i32* %19, metadata !258, metadata !128), !dbg !259
  %136 = load double, double* %5, align 8, !dbg !260
  %137 = load i32, i32* %6, align 4, !dbg !261
  %138 = call i32 @airy_aie(double %136, i32 %137, %struct.gsl_sf_result_struct* %18), !dbg !262
  store i32 %138, i32* %19, align 4, !dbg !259
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !263
  %140 = load double, double* %139, align 8, !dbg !263
  %141 = load double, double* %17, align 8, !dbg !264
  %142 = fmul double %140, %141, !dbg !265
  call void @fMulHandler(double %140, double %141, double %142, i64 94457830631896, i64 94457830633544, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830633952, i32 690, i32 35), !dbg !266
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !266
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 0, !dbg !267
  store double %142, double* %144, align 8, !dbg !268
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !269
  %146 = load double, double* %145, align 8, !dbg !269
  %147 = load double, double* %17, align 8, !dbg !270
  %148 = fmul double %146, %147, !dbg !271
  call void @fMulHandler(double %146, double %147, double %148, i64 94457830636040, i64 94457830637688, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830638096, i32 691, i32 35), !dbg !272
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !272
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 0, !dbg !273
  %151 = load double, double* %150, align 8, !dbg !273
  %152 = load double, double* %16, align 8, !dbg !274
  %153 = fmul double %151, %152, !dbg !275
  call void @fMulHandler(double %151, double %152, double %153, i64 94457830639320, i64 94457830640968, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830641376, i32 691, i32 53), !dbg !276
  %154 = fmul double %153, 0x3CB0000000000000, !dbg !276
  call void @fMulHandler(double %153, double 0x3CB0000000000000, double %154, i64 94457830641376, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830641792, i32 691, i32 59), !dbg !277
  %155 = fadd double %148, %154, !dbg !277
  call void @fAddHandler(double %148, double %154, double %155, i64 94457830638096, i64 94457830641792, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830642208, i32 691, i32 39), !dbg !278
  %156 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !278
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %156, i32 0, i32 1, !dbg !279
  store double %155, double* %157, align 8, !dbg !280
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !281
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 0, !dbg !282
  %160 = load double, double* %159, align 8, !dbg !282
  %161 = call double @fabs(double %160) #1, !dbg !283
  %162 = fmul double 0x3CB0000000000000, %161, !dbg !284
  call void @fMulHandler(double 0x3CB0000000000000, double %161, double %162, i64 0, i64 94457830646416, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830646896, i32 692, i32 36), !dbg !285
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !285
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 1, !dbg !286
  %165 = load double, double* %164, align 8, !dbg !287
  %166 = fadd double %165, %162, !dbg !287
  call void @fAddHandler(double %165, double %162, double %166, i64 94457830648120, i64 94457830646896, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830648528, i32 692, i32 17), !dbg !287
  store double %166, double* %164, align 8, !dbg !287
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !288
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 0, !dbg !288
  %169 = load double, double* %168, align 8, !dbg !288
  %170 = call double @fabs(double %169) #1, !dbg !288
  %171 = fcmp olt double %170, 0x10000000000000, !dbg !288
  %172 = call i1 @fCmpInstHandler(double %170, double 0x10000000000000, i1 %171, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94457830652880, i32 693, i32 5), !dbg !290
  br i1 %172, label %173, label %176, !dbg !290

; <label>:173:                                    ; preds = %127
  br label %174, !dbg !291, !llvm.loop !293

; <label>:174:                                    ; preds = %173
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 693, i32 15), !dbg !294
  store i32 15, i32* %4, align 4, !dbg !294
  br label %178, !dbg !294
                                                  ; No predecessors!
  br label %176, !dbg !297

; <label>:176:                                    ; preds = %175, %127
  %177 = load i32, i32* %19, align 4, !dbg !299
  store i32 %177, i32* %4, align 4, !dbg !300
  br label %178, !dbg !300

; <label>:178:                                    ; preds = %176, %174, %85, %79
  %179 = load i32, i32* %4, align 4, !dbg !301
  ret i32 %179, !dbg !301
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @airy_mod_phase(double, i32, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !302 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !305, metadata !128), !dbg !306
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !307, metadata !128), !dbg !308
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !309, metadata !128), !dbg !310
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !311, metadata !128), !dbg !312
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !313, metadata !128), !dbg !314
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !315, metadata !128), !dbg !316
  call void @llvm.dbg.declare(metadata double* %12, metadata !317, metadata !128), !dbg !318
  call void @llvm.dbg.declare(metadata double* %13, metadata !319, metadata !128), !dbg !320
  call void @llvm.dbg.declare(metadata double* %14, metadata !321, metadata !128), !dbg !322
  %17 = load double, double* %6, align 8, !dbg !323
  %18 = fcmp olt double %17, -2.000000e+00, !dbg !325
  %19 = call i1 @fCmpInstHandler(double %17, double -2.000000e+00, i1 %18, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830679424, i32 250, i32 8), !dbg !326
  br i1 %19, label %20, label %34, !dbg !326

; <label>:20:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata double* %15, metadata !327, metadata !128), !dbg !329
  %21 = load double, double* %6, align 8, !dbg !330
  %22 = load double, double* %6, align 8, !dbg !331
  %23 = fmul double %21, %22, !dbg !332
  call void @fMulHandler(double %21, double %22, double %23, i64 94457830458648, i64 94457830681816, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830682224, i32 251, i32 23), !dbg !333
  %24 = load double, double* %6, align 8, !dbg !333
  %25 = fmul double %23, %24, !dbg !334
  call void @fMulHandler(double %23, double %24, double %25, i64 94457830682224, i64 94457830682616, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830683024, i32 251, i32 25), !dbg !335
  %26 = fdiv double 1.600000e+01, %25, !dbg !335
  call void @fDivHandler(double 1.600000e+01, double %25, double %26, i64 0, i64 94457830683024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830683536, i32 251, i32 20), !dbg !336
  %27 = fadd double %26, 1.000000e+00, !dbg !336
  call void @fAddHandler(double %26, double 1.000000e+00, double %27, i64 94457830683536, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830683952, i32 251, i32 29), !dbg !329
  store double %27, double* %15, align 8, !dbg !329
  %28 = load double, double* %15, align 8, !dbg !337
  %29 = load i32, i32* %7, align 4, !dbg !338
  %30 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @am21_cs, double %28, i32 %29, %struct.gsl_sf_result_struct* %10), !dbg !339
  %31 = load double, double* %15, align 8, !dbg !340
  %32 = load i32, i32* %7, align 4, !dbg !341
  %33 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @ath1_cs, double %31, i32 %32, %struct.gsl_sf_result_struct* %11), !dbg !342
  br label %65, !dbg !343

; <label>:34:                                     ; preds = %4
  %35 = load double, double* %6, align 8, !dbg !344
  %36 = fcmp ole double %35, -1.000000e+00, !dbg !346
  %37 = call i1 @fCmpInstHandler(double %35, double -1.000000e+00, i1 %36, i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830689584, i32 255, i32 13), !dbg !347
  br i1 %37, label %38, label %53, !dbg !347

; <label>:38:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata double* %16, metadata !348, metadata !128), !dbg !350
  %39 = load double, double* %6, align 8, !dbg !351
  %40 = load double, double* %6, align 8, !dbg !352
  %41 = fmul double %39, %40, !dbg !353
  call void @fMulHandler(double %39, double %40, double %41, i64 94457830691720, i64 94457830692072, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830692480, i32 256, i32 24), !dbg !354
  %42 = load double, double* %6, align 8, !dbg !354
  %43 = fmul double %41, %42, !dbg !355
  call void @fMulHandler(double %41, double %42, double %43, i64 94457830692480, i64 94457830692872, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830693280, i32 256, i32 26), !dbg !356
  %44 = fdiv double 1.600000e+01, %43, !dbg !356
  call void @fDivHandler(double 1.600000e+01, double %43, double %44, i64 0, i64 94457830693280, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830693728, i32 256, i32 21), !dbg !357
  %45 = fadd double %44, 9.000000e+00, !dbg !357
  call void @fAddHandler(double %44, double 9.000000e+00, double %45, i64 94457830693728, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830694208, i32 256, i32 30), !dbg !358
  %46 = fdiv double %45, 7.000000e+00, !dbg !358
  call void @fDivHandler(double %45, double 7.000000e+00, double %46, i64 94457830694208, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830694688, i32 256, i32 36), !dbg !350
  store double %46, double* %16, align 8, !dbg !350
  %47 = load double, double* %16, align 8, !dbg !359
  %48 = load i32, i32* %7, align 4, !dbg !360
  %49 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @am22_cs, double %47, i32 %48, %struct.gsl_sf_result_struct* %10), !dbg !361
  %50 = load double, double* %16, align 8, !dbg !362
  %51 = load i32, i32* %7, align 4, !dbg !363
  %52 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @ath2_cs, double %50, i32 %51, %struct.gsl_sf_result_struct* %11), !dbg !364
  br label %64, !dbg !365

; <label>:53:                                     ; preds = %34
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !366
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !368
  store double 0.000000e+00, double* %55, align 8, !dbg !369
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !370
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 1, !dbg !371
  store double 0.000000e+00, double* %57, align 8, !dbg !372
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !373
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 0, !dbg !374
  store double 0.000000e+00, double* %59, align 8, !dbg !375
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !376
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !377
  store double 0.000000e+00, double* %61, align 8, !dbg !378
  br label %62, !dbg !379, !llvm.loop !380

; <label>:62:                                     ; preds = %53
  call void @gsl_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 265, i32 1), !dbg !381
  store i32 1, i32* %5, align 4, !dbg !381
  br label %117, !dbg !381
                                                  ; No predecessors!
  br label %64

; <label>:64:                                     ; preds = %63, %38
  br label %65

; <label>:65:                                     ; preds = %64, %20
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !384
  %67 = load double, double* %66, align 8, !dbg !384
  %68 = fadd double 3.125000e-01, %67, !dbg !385
  call void @fAddHandler(double 3.125000e-01, double %67, double %68, i64 0, i64 94457830709032, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830710736, i32 268, i32 15), !dbg !386
  store double %68, double* %12, align 8, !dbg !386
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !387
  %70 = load double, double* %69, align 8, !dbg !387
  %71 = fadd double -6.250000e-01, %70, !dbg !388
  call void @fAddHandler(double -6.250000e-01, double %70, double %71, i64 0, i64 94457830711960, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830713728, i32 269, i32 15), !dbg !389
  store double %71, double* %13, align 8, !dbg !389
  %72 = load double, double* %6, align 8, !dbg !390
  %73 = fsub double -0.000000e+00, %72, !dbg !391
  call void @fSubHandler(double -0.000000e+00, double %72, double %73, i64 0, i64 94457830714504, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830714976, i32 271, i32 14), !dbg !392
  %74 = call double @sqrt(double %73) #6, !dbg !392
  call void @callOneArgHandler(i32 14, double %73, double %74, i64 94457830714976, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830715456, i32 271, i32 9), !dbg !393
  store double %74, double* %14, align 8, !dbg !393
  %75 = load double, double* %12, align 8, !dbg !394
  %76 = load double, double* %14, align 8, !dbg !395
  %77 = fdiv double %75, %76, !dbg !396
  call void @fDivHandler(double %75, double %76, double %77, i64 94457830716328, i64 94457830716712, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830717120, i32 273, i32 22), !dbg !397
  %78 = call double @sqrt(double %77) #6, !dbg !397
  call void @callOneArgHandler(i32 14, double %77, double %78, i64 94457830717120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830717600, i32 273, i32 16), !dbg !398
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !398
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !399
  store double %78, double* %80, align 8, !dbg !400
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !401
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !402
  %83 = load double, double* %82, align 8, !dbg !402
  %84 = call double @fabs(double %83) #1, !dbg !403
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !404
  %86 = load double, double* %85, align 8, !dbg !404
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !405
  %88 = load double, double* %87, align 8, !dbg !405
  %89 = fdiv double %86, %88, !dbg !406
  call void @fDivHandler(double %86, double %88, double %89, i64 94457830722776, i64 94457830724872, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830726544, i32 274, i32 68), !dbg !407
  %90 = call double @fabs(double %89) #1, !dbg !407
  %91 = fadd double 0x3CB0000000000000, %90, !dbg !409
  call void @fAddHandler(double 0x3CB0000000000000, double %90, double %91, i64 0, i64 94457830727024, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830727504, i32 274, i32 49), !dbg !410
  %92 = fmul double %84, %91, !dbg !410
  call void @fMulHandler(double %84, double %91, double %92, i64 94457830721872, i64 94457830727504, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830727920, i32 274, i32 30), !dbg !411
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !411
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 1, !dbg !412
  store double %92, double* %94, align 8, !dbg !413
  %95 = load double, double* %6, align 8, !dbg !414
  %96 = load double, double* %14, align 8, !dbg !415
  %97 = fmul double %95, %96, !dbg !416
  call void @fMulHandler(double %95, double %96, double %97, i64 94457830729560, i64 94457830729944, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830730352, i32 275, i32 26), !dbg !417
  %98 = load double, double* %13, align 8, !dbg !417
  %99 = fmul double %97, %98, !dbg !418
  call void @fMulHandler(double %97, double %98, double %99, i64 94457830730352, i64 94457830730744, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830731152, i32 275, i32 31), !dbg !419
  %100 = fsub double 0x3FE921FB54442D18, %99, !dbg !419
  call void @fSubHandler(double 0x3FE921FB54442D18, double %99, double %100, i64 0, i64 94457830731152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830731632, i32 275, i32 23), !dbg !420
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !420
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 0, !dbg !421
  store double %100, double* %102, align 8, !dbg !422
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !423
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !424
  %105 = load double, double* %104, align 8, !dbg !424
  %106 = call double @fabs(double %105) #1, !dbg !425
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !426
  %108 = load double, double* %107, align 8, !dbg !426
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !427
  %110 = load double, double* %109, align 8, !dbg !427
  %111 = fdiv double %108, %110, !dbg !428
  call void @fDivHandler(double %108, double %110, double %111, i64 94457830736744, i64 94457830738840, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830740512, i32 276, i32 71), !dbg !429
  %112 = call double @fabs(double %111) #1, !dbg !429
  %113 = fadd double 0x3CB0000000000000, %112, !dbg !430
  call void @fAddHandler(double 0x3CB0000000000000, double %112, double %113, i64 0, i64 94457830740992, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830741472, i32 276, i32 52), !dbg !431
  %114 = fmul double %106, %113, !dbg !431
  call void @fMulHandler(double %106, double %113, double %114, i64 94457830735840, i64 94457830741472, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94457830741888, i32 276, i32 33), !dbg !432
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !432
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !433
  store double %114, double* %116, align 8, !dbg !434
  store i32 0, i32* %5, align 4, !dbg !435
  br label %117, !dbg !435

; <label>:117:                                    ; preds = %65, %62
  %118 = load i32, i32* %5, align 4, !dbg !436
  ret i32 %118, !dbg !436
}

declare i32 @gsl_sf_cos_err_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_mode_e(%struct.cheb_series_struct*, double, i32, %struct.gsl_sf_result_struct*) #4 !dbg !437 {
  %5 = alloca %struct.cheb_series_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store %struct.cheb_series_struct* %0, %struct.cheb_series_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %5, metadata !443, metadata !128), !dbg !444
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !445, metadata !128), !dbg !446
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !447, metadata !128), !dbg !448
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !449, metadata !128), !dbg !450
  call void @llvm.dbg.declare(metadata i32* %9, metadata !451, metadata !128), !dbg !452
  call void @llvm.dbg.declare(metadata double* %10, metadata !453, metadata !128), !dbg !454
  store double 0.000000e+00, double* %10, align 8, !dbg !454
  call void @llvm.dbg.declare(metadata double* %11, metadata !455, metadata !128), !dbg !456
  store double 0.000000e+00, double* %11, align 8, !dbg !456
  call void @llvm.dbg.declare(metadata double* %12, metadata !457, metadata !128), !dbg !458
  %16 = load double, double* %6, align 8, !dbg !459
  %17 = fmul double 2.000000e+00, %16, !dbg !460
  call void @fMulHandler(double 2.000000e+00, double %16, double %17, i64 0, i64 94457830588760, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830763072, i32 11, i32 18), !dbg !461
  %18 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !461
  %19 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %18, i32 0, i32 2, !dbg !462
  %20 = load double, double* %19, align 8, !dbg !462
  %21 = fsub double %17, %20, !dbg !463
  call void @fSubHandler(double %17, double %20, double %21, i64 94457830763072, i64 94457830536632, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830765808, i32 11, i32 21), !dbg !464
  %22 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !464
  %23 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %22, i32 0, i32 3, !dbg !465
  %24 = load double, double* %23, align 8, !dbg !465
  %25 = fsub double %21, %24, !dbg !466
  call void @fSubHandler(double %21, double %24, double %25, i64 94457830765808, i64 94457830767096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830768768, i32 11, i32 29), !dbg !467
  %26 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !467
  %27 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %26, i32 0, i32 3, !dbg !468
  %28 = load double, double* %27, align 8, !dbg !468
  %29 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !469
  %30 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %29, i32 0, i32 2, !dbg !470
  %31 = load double, double* %30, align 8, !dbg !470
  %32 = fsub double %28, %31, !dbg !471
  call void @fSubHandler(double %28, double %31, double %32, i64 94457830769992, i64 94457830772472, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830774144, i32 11, i32 47), !dbg !472
  %33 = fdiv double %25, %32, !dbg !472
  call void @fDivHandler(double %25, double %32, double %33, i64 94457830768768, i64 94457830774144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830774560, i32 11, i32 38), !dbg !458
  store double %33, double* %12, align 8, !dbg !458
  call void @llvm.dbg.declare(metadata double* %13, metadata !473, metadata !128), !dbg !474
  %34 = load double, double* %12, align 8, !dbg !475
  %35 = fmul double 2.000000e+00, %34, !dbg !476
  call void @fMulHandler(double 2.000000e+00, double %34, double %35, i64 0, i64 94457830777608, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830778016, i32 12, i32 19), !dbg !474
  store double %35, double* %13, align 8, !dbg !474
  call void @llvm.dbg.declare(metadata i32* %14, metadata !477, metadata !128), !dbg !478
  %36 = load i32, i32* %7, align 4, !dbg !479
  %37 = call i32 @GSL_MODE_PREC(i32 %36), !dbg !481
  %38 = icmp eq i32 %37, 0, !dbg !482
  %39 = sext i32 %37 to i64, !dbg !483
  %40 = call i1 @iCmpInstHandler(i64 %39, i64 0, i1 %38, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830782336, i32 16, i32 26), !dbg !483
  br i1 %40, label %41, label %45, !dbg !483

; <label>:41:                                     ; preds = %4
  %42 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !484
  %43 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %42, i32 0, i32 1, !dbg !485
  %44 = load i32, i32* %43, align 8, !dbg !485
  store i32 %44, i32* %14, align 4, !dbg !486
  br label %49, !dbg !487

; <label>:45:                                     ; preds = %4
  %46 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !488
  %47 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %46, i32 0, i32 4, !dbg !489
  %48 = load i32, i32* %47, align 8, !dbg !489
  store i32 %48, i32* %14, align 4, !dbg !490
  br label %49

; <label>:49:                                     ; preds = %45, %41
  %50 = load i32, i32* %14, align 4, !dbg !491
  store i32 %50, i32* %9, align 4, !dbg !493
  br label %51, !dbg !494

; <label>:51:                                     ; preds = %72, %49
  %52 = load i32, i32* %9, align 4, !dbg !495
  %53 = icmp sge i32 %52, 1, !dbg !498
  %54 = sext i32 %52 to i64, !dbg !499
  %55 = call i1 @iCmpInstHandler(i64 %54, i64 1, i1 %53, i32 39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830791408, i32 21, i32 24), !dbg !499
  br i1 %55, label %56, label %75, !dbg !499

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata double* %15, metadata !500, metadata !128), !dbg !502
  %57 = load double, double* %10, align 8, !dbg !503
  store double %57, double* %15, align 8, !dbg !502
  %58 = load double, double* %13, align 8, !dbg !504
  %59 = load double, double* %10, align 8, !dbg !505
  %60 = fmul double %58, %59, !dbg !506
  call void @fMulHandler(double %58, double %59, double %60, i64 94457830795704, i64 94457830796088, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830796496, i32 23, i32 11), !dbg !507
  %61 = load double, double* %11, align 8, !dbg !507
  %62 = fsub double %60, %61, !dbg !508
  call void @fSubHandler(double %60, double %61, double %62, i64 94457830796496, i64 94457830796888, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830797296, i32 23, i32 14), !dbg !509
  %63 = load i32, i32* %9, align 4, !dbg !509
  %64 = sext i32 %63 to i64, !dbg !510
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !510
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !511
  %67 = load double*, double** %66, align 8, !dbg !511
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !510
  %69 = load double, double* %68, align 8, !dbg !510
  %70 = fadd double %62, %69, !dbg !512
  call void @fAddHandler(double %62, double %69, double %70, i64 94457830797296, i64 94457830802344, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830802464, i32 23, i32 19), !dbg !513
  store double %70, double* %10, align 8, !dbg !513
  %71 = load double, double* %15, align 8, !dbg !514
  store double %71, double* %11, align 8, !dbg !515
  br label %72, !dbg !516

; <label>:72:                                     ; preds = %56
  %73 = load i32, i32* %9, align 4, !dbg !517
  %74 = add nsw i32 %73, -1, !dbg !517
  store i32 %74, i32* %9, align 4, !dbg !517
  br label %51, !dbg !519, !llvm.loop !520

; <label>:75:                                     ; preds = %51
  %76 = load double, double* %12, align 8, !dbg !522
  %77 = load double, double* %10, align 8, !dbg !523
  %78 = fmul double %76, %77, !dbg !524
  call void @fMulHandler(double %76, double %77, double %78, i64 94457830807464, i64 94457830807784, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830808192, i32 27, i32 18), !dbg !525
  %79 = load double, double* %11, align 8, !dbg !525
  %80 = fsub double %78, %79, !dbg !526
  call void @fSubHandler(double %78, double %79, double %80, i64 94457830808192, i64 94457830808584, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830808992, i32 27, i32 21), !dbg !527
  %81 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !527
  %82 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %81, i32 0, i32 0, !dbg !528
  %83 = load double*, double** %82, align 8, !dbg !528
  %84 = getelementptr inbounds double, double* %83, i64 0, !dbg !527
  %85 = load double, double* %84, align 8, !dbg !527
  %86 = fmul double 5.000000e-01, %85, !dbg !529
  call void @fMulHandler(double 5.000000e-01, double %85, double %86, i64 0, i64 94457830813624, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830813840, i32 27, i32 32), !dbg !530
  %87 = fadd double %80, %86, !dbg !530
  call void @fAddHandler(double %80, double %86, double %87, i64 94457830808992, i64 94457830813840, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830814224, i32 27, i32 26), !dbg !531
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !531
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !532
  store double %87, double* %89, align 8, !dbg !533
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !534
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !535
  %92 = load double, double* %91, align 8, !dbg !535
  %93 = call double @fabs(double %92) #1, !dbg !536
  %94 = fmul double 0x3CB0000000000000, %93, !dbg !537
  call void @fMulHandler(double 0x3CB0000000000000, double %93, double %94, i64 0, i64 94457830818432, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830818912, i32 28, i32 33), !dbg !538
  %95 = load i32, i32* %14, align 4, !dbg !538
  %96 = sext i32 %95 to i64, !dbg !539
  %97 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !539
  %98 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %97, i32 0, i32 0, !dbg !540
  %99 = load double*, double** %98, align 8, !dbg !540
  %100 = getelementptr inbounds double, double* %99, i64 %96, !dbg !539
  %101 = load double, double* %100, align 8, !dbg !539
  %102 = call double @fabs(double %101) #1, !dbg !541
  %103 = fadd double %94, %102, !dbg !543
  call void @fAddHandler(double %94, double %102, double %103, i64 94457830818912, i64 94457830824144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94457830824624, i32 28, i32 53), !dbg !544
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !544
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 1, !dbg !545
  store double %103, double* %105, align 8, !dbg !546
  ret i32 0, !dbg !547
}

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind
declare double @exp(double) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @airy_aie(double, i32, %struct.gsl_sf_result_struct*) #4 !dbg !548 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !551, metadata !128), !dbg !552
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !553, metadata !128), !dbg !554
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !555, metadata !128), !dbg !556
  call void @llvm.dbg.declare(metadata double* %7, metadata !557, metadata !128), !dbg !558
  %11 = load double, double* %4, align 8, !dbg !559
  %12 = call double @sqrt(double %11) #6, !dbg !560
  call void @callOneArgHandler(i32 14, double %11, double %12, i64 94457830629176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94457830833712, i32 617, i32 16), !dbg !558
  store double %12, double* %7, align 8, !dbg !558
  call void @llvm.dbg.declare(metadata double* %8, metadata !561, metadata !128), !dbg !562
  %13 = load double, double* %4, align 8, !dbg !563
  %14 = load double, double* %7, align 8, !dbg !564
  %15 = fmul double %13, %14, !dbg !565
  call void @fMulHandler(double %13, double %14, double %15, i64 94457830623656, i64 94457830616168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94457830837536, i32 618, i32 22), !dbg !566
  %16 = fdiv double 2.000000e+00, %15, !dbg !566
  call void @fDivHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94457830837536, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94457830837984, i32 618, i32 19), !dbg !567
  %17 = fsub double %16, 1.000000e+00, !dbg !567
  call void @fSubHandler(double %16, double 1.000000e+00, double %17, i64 94457830837984, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94457830838400, i32 618, i32 28), !dbg !562
  store double %17, double* %8, align 8, !dbg !562
  call void @llvm.dbg.declare(metadata double* %9, metadata !568, metadata !128), !dbg !569
  %18 = load double, double* %7, align 8, !dbg !570
  %19 = call double @sqrt(double %18) #6, !dbg !571
  call void @callOneArgHandler(i32 14, double %18, double %19, i64 94457830841416, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94457830841856, i32 619, i32 16), !dbg !569
  store double %19, double* %9, align 8, !dbg !569
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !572, metadata !128), !dbg !573
  %20 = load double, double* %8, align 8, !dbg !574
  %21 = load i32, i32* %5, align 4, !dbg !575
  %22 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aip_cs, double %20, i32 %21, %struct.gsl_sf_result_struct* %10), !dbg !576
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !577
  %24 = load double, double* %23, align 8, !dbg !577
  %25 = fadd double 2.812500e-01, %24, !dbg !578
  call void @fAddHandler(double 2.812500e-01, double %24, double %25, i64 0, i64 94457830846872, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94457830848640, i32 622, i32 26), !dbg !579
  %26 = load double, double* %9, align 8, !dbg !579
  %27 = fdiv double %25, %26, !dbg !580
  call void @fDivHandler(double %25, double %26, double %27, i64 94457830848640, i64 94457830849000, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94457830849408, i32 622, i32 41), !dbg !581
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !581
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !582
  store double %27, double* %29, align 8, !dbg !583
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !584
  %31 = load double, double* %30, align 8, !dbg !584
  %32 = load double, double* %9, align 8, !dbg !585
  %33 = fdiv double %31, %32, !dbg !586
  call void @fDivHandler(double %31, double %32, double %33, i64 94457830851496, i64 94457830853144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94457830853552, i32 623, i32 29), !dbg !587
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !587
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !588
  %36 = load double, double* %35, align 8, !dbg !588
  %37 = call double @fabs(double %36) #1, !dbg !589
  %38 = fmul double 0x3CB0000000000000, %37, !dbg !590
  call void @fMulHandler(double 0x3CB0000000000000, double %37, double %38, i64 0, i64 94457830856512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94457830856992, i32 623, i32 50), !dbg !591
  %39 = fadd double %33, %38, !dbg !591
  call void @fAddHandler(double %33, double %38, double %39, i64 94457830853552, i64 94457830856992, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94457830857408, i32 623, i32 32), !dbg !592
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !592
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !593
  store double %39, double* %41, align 8, !dbg !594
  ret i32 0, !dbg !595
}

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_airy_Ai_scaled_e(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !596 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !597, metadata !128), !dbg !598
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !599, metadata !128), !dbg !600
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !601, metadata !128), !dbg !602
  %17 = load double, double* %5, align 8, !dbg !603
  %18 = fcmp olt double %17, -1.000000e+00, !dbg !605
  %19 = call i1 @fCmpInstHandler(double %17, double -1.000000e+00, i1 %18, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830866192, i32 704, i32 8), !dbg !606
  br i1 %19, label %20, label %78, !dbg !606

; <label>:20:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !607, metadata !128), !dbg !609
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !610, metadata !128), !dbg !611
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !612, metadata !128), !dbg !613
  call void @llvm.dbg.declare(metadata i32* %11, metadata !614, metadata !128), !dbg !615
  %21 = load double, double* %5, align 8, !dbg !616
  %22 = load i32, i32* %6, align 4, !dbg !617
  %23 = call i32 @airy_mod_phase(double %21, i32 %22, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !618
  store i32 %23, i32* %11, align 4, !dbg !615
  call void @llvm.dbg.declare(metadata i32* %12, metadata !619, metadata !128), !dbg !620
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !621
  %25 = load double, double* %24, align 8, !dbg !621
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !622
  %27 = load double, double* %26, align 8, !dbg !622
  %28 = call i32 @gsl_sf_cos_err_e(double %25, double %27, %struct.gsl_sf_result_struct* %10), !dbg !623
  store i32 %28, i32* %12, align 4, !dbg !620
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !624
  %30 = load double, double* %29, align 8, !dbg !624
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !625
  %32 = load double, double* %31, align 8, !dbg !625
  %33 = fmul double %30, %32, !dbg !626
  call void @fMulHandler(double %30, double %32, double %33, i64 94457830886664, i64 94457830888760, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830890432, i32 710, i32 28), !dbg !627
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !627
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !628
  store double %33, double* %35, align 8, !dbg !629
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !630
  %37 = load double, double* %36, align 8, !dbg !630
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !631
  %39 = load double, double* %38, align 8, !dbg !631
  %40 = fmul double %37, %39, !dbg !632
  call void @fMulHandler(double %37, double %39, double %40, i64 94457830892520, i64 94457830894616, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830896288, i32 711, i32 33), !dbg !633
  %41 = call double @fabs(double %40) #1, !dbg !633
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !634
  %43 = load double, double* %42, align 8, !dbg !634
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !635
  %45 = load double, double* %44, align 8, !dbg !635
  %46 = fmul double %43, %45, !dbg !636
  call void @fMulHandler(double %43, double %45, double %46, i64 94457830897672, i64 94457830899768, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830901440, i32 711, i32 73), !dbg !637
  %47 = call double @fabs(double %46) #1, !dbg !637
  %48 = fadd double %41, %47, !dbg !639
  call void @fAddHandler(double %41, double %47, double %48, i64 94457830896768, i64 94457830901920, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830902400, i32 711, i32 51), !dbg !640
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !640
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !641
  store double %48, double* %50, align 8, !dbg !642
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !643
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !644
  %53 = load double, double* %52, align 8, !dbg !644
  %54 = call double @fabs(double %53) #1, !dbg !645
  %55 = fmul double 0x3CB0000000000000, %54, !dbg !646
  call void @fMulHandler(double 0x3CB0000000000000, double %54, double %55, i64 0, i64 94457830906608, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830907088, i32 712, i32 36), !dbg !647
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !647
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 1, !dbg !648
  %58 = load double, double* %57, align 8, !dbg !649
  %59 = fadd double %58, %55, !dbg !649
  call void @fAddHandler(double %58, double %55, double %59, i64 94457830908312, i64 94457830907088, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830908720, i32 712, i32 17), !dbg !649
  store double %59, double* %57, align 8, !dbg !649
  %60 = load i32, i32* %11, align 4, !dbg !650
  %61 = icmp ne i32 %60, 0, !dbg !650
  %62 = sext i32 %60 to i64, !dbg !650
  %63 = call i1 @iCmpInstHandler(i64 %62, i64 0, i1 %61, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830910912, i32 713, i32 12), !dbg !650
  br i1 %63, label %64, label %66, !dbg !650

; <label>:64:                                     ; preds = %20
  %65 = load i32, i32* %11, align 4, !dbg !651
  br label %76, !dbg !651

; <label>:66:                                     ; preds = %20
  %67 = load i32, i32* %12, align 4, !dbg !652
  %68 = icmp ne i32 %67, 0, !dbg !652
  %69 = sext i32 %67 to i64, !dbg !652
  %70 = call i1 @iCmpInstHandler(i64 %69, i64 0, i1 %68, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830915456, i32 713, i32 12), !dbg !652
  br i1 %70, label %71, label %73, !dbg !652

; <label>:71:                                     ; preds = %66
  %72 = load i32, i32* %12, align 4, !dbg !654
  br label %74, !dbg !654

; <label>:73:                                     ; preds = %66
  br label %74, !dbg !656

; <label>:74:                                     ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ], !dbg !658
  br label %76, !dbg !658

; <label>:76:                                     ; preds = %74, %64
  %77 = phi i32 [ %65, %64 ], [ %75, %74 ], !dbg !660
  store i32 %77, i32* %4, align 4, !dbg !662
  br label %148, !dbg !662

; <label>:78:                                     ; preds = %3
  %79 = load double, double* %5, align 8, !dbg !663
  %80 = fcmp ole double %79, 1.000000e+00, !dbg !665
  %81 = call i1 @fCmpInstHandler(double %79, double 1.000000e+00, i1 %80, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830925008, i32 715, i32 13), !dbg !666
  br i1 %81, label %82, label %143, !dbg !666

; <label>:82:                                     ; preds = %78
  call void @llvm.dbg.declare(metadata double* %13, metadata !667, metadata !128), !dbg !669
  %83 = load double, double* %5, align 8, !dbg !670
  %84 = load double, double* %5, align 8, !dbg !671
  %85 = fmul double %83, %84, !dbg !672
  call void @fMulHandler(double %83, double %84, double %85, i64 94457830927144, i64 94457830927496, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830927904, i32 716, i32 23), !dbg !673
  %86 = load double, double* %5, align 8, !dbg !673
  %87 = fmul double %85, %86, !dbg !674
  call void @fMulHandler(double %85, double %86, double %87, i64 94457830927904, i64 94457830928296, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830928704, i32 716, i32 25), !dbg !669
  store double %87, double* %13, align 8, !dbg !669
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !675, metadata !128), !dbg !676
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !677, metadata !128), !dbg !678
  %88 = load double, double* %13, align 8, !dbg !679
  %89 = load i32, i32* %6, align 4, !dbg !680
  %90 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aif_cs, double %88, i32 %89, %struct.gsl_sf_result_struct* %14), !dbg !681
  %91 = load double, double* %13, align 8, !dbg !682
  %92 = load i32, i32* %6, align 4, !dbg !683
  %93 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aig_cs, double %91, i32 %92, %struct.gsl_sf_result_struct* %15), !dbg !684
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !685
  %95 = load double, double* %94, align 8, !dbg !685
  %96 = load double, double* %5, align 8, !dbg !686
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !687
  %98 = load double, double* %97, align 8, !dbg !687
  %99 = fadd double 2.500000e-01, %98, !dbg !688
  call void @fAddHandler(double 2.500000e-01, double %98, double %99, i64 0, i64 94457830938568, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830940272, i32 721, i32 53), !dbg !689
  %100 = fmul double %96, %99, !dbg !689
  call void @fMulHandler(double %96, double %99, double %100, i64 94457830937736, i64 94457830940272, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830940656, i32 721, i32 46), !dbg !690
  %101 = fsub double %95, %100, !dbg !690
  call void @fSubHandler(double %95, double %100, double %101, i64 94457830936088, i64 94457830940656, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830941072, i32 721, i32 43), !dbg !691
  %102 = fadd double 3.750000e-01, %101, !dbg !691
  call void @fAddHandler(double 3.750000e-01, double %101, double %102, i64 0, i64 94457830941072, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830941520, i32 721, i32 26), !dbg !692
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !692
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !693
  store double %102, double* %104, align 8, !dbg !694
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !695
  %106 = load double, double* %105, align 8, !dbg !695
  %107 = load double, double* %5, align 8, !dbg !696
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !697
  %109 = load double, double* %108, align 8, !dbg !697
  %110 = fmul double %107, %109, !dbg !698
  call void @fMulHandler(double %107, double %109, double %110, i64 94457830945224, i64 94457830946056, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830947728, i32 722, i32 42), !dbg !699
  %111 = call double @fabs(double %110) #1, !dbg !699
  %112 = fadd double %106, %111, !dbg !700
  call void @fAddHandler(double %106, double %111, double %112, i64 94457830943576, i64 94457830948208, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830948688, i32 722, i32 34), !dbg !701
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !701
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 1, !dbg !702
  store double %112, double* %114, align 8, !dbg !703
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !704
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 0, !dbg !705
  %117 = load double, double* %116, align 8, !dbg !705
  %118 = call double @fabs(double %117) #1, !dbg !706
  %119 = fmul double 0x3CB0000000000000, %118, !dbg !707
  call void @fMulHandler(double 0x3CB0000000000000, double %118, double %119, i64 0, i64 94457830952896, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830953376, i32 723, i32 36), !dbg !708
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !708
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 1, !dbg !709
  %122 = load double, double* %121, align 8, !dbg !710
  %123 = fadd double %122, %119, !dbg !710
  call void @fAddHandler(double %122, double %119, double %123, i64 94457830954600, i64 94457830953376, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830955008, i32 723, i32 17), !dbg !710
  store double %123, double* %121, align 8, !dbg !710
  %124 = load double, double* %5, align 8, !dbg !711
  %125 = fcmp ogt double %124, 0.000000e+00, !dbg !713
  %126 = call i1 @fCmpInstHandler(double %124, double 0.000000e+00, i1 %125, i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830957200, i32 725, i32 10), !dbg !714
  br i1 %126, label %127, label %142, !dbg !714

; <label>:127:                                    ; preds = %82
  call void @llvm.dbg.declare(metadata double* %16, metadata !715, metadata !128), !dbg !717
  %128 = load double, double* %13, align 8, !dbg !718
  %129 = call double @sqrt(double %128) #6, !dbg !719
  call void @callOneArgHandler(i32 14, double %128, double %129, i64 94457830959368, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830959808, i32 726, i32 42), !dbg !720
  %130 = fmul double 0x3FE5555555555555, %129, !dbg !720
  call void @fMulHandler(double 0x3FE5555555555555, double %129, double %130, i64 0, i64 94457830959808, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830960352, i32 726, i32 40), !dbg !721
  %131 = call double @exp(double %130) #6, !dbg !721
  call void @callOneArgHandler(i32 11, double %130, double %131, i64 94457830960352, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830960832, i32 726, i32 28), !dbg !717
  store double %131, double* %16, align 8, !dbg !717
  %132 = load double, double* %16, align 8, !dbg !723
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !724
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 0, !dbg !725
  %135 = load double, double* %134, align 8, !dbg !726
  %136 = fmul double %135, %132, !dbg !726
  call void @fMulHandler(double %135, double %132, double %136, i64 94457830964184, i64 94457830962968, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830966656, i32 727, i32 19), !dbg !726
  store double %136, double* %134, align 8, !dbg !726
  %137 = load double, double* %16, align 8, !dbg !727
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !728
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 1, !dbg !729
  %140 = load double, double* %139, align 8, !dbg !730
  %141 = fmul double %140, %137, !dbg !730
  call void @fMulHandler(double %140, double %137, double %141, i64 94457830969656, i64 94457830968440, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94457830970064, i32 728, i32 19), !dbg !730
  store double %141, double* %139, align 8, !dbg !730
  br label %142, !dbg !731

; <label>:142:                                    ; preds = %127, %82
  store i32 0, i32* %4, align 4, !dbg !732
  br label %148, !dbg !732

; <label>:143:                                    ; preds = %78
  %144 = load double, double* %5, align 8, !dbg !733
  %145 = load i32, i32* %6, align 4, !dbg !735
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !736
  %147 = call i32 @airy_aie(double %144, i32 %145, %struct.gsl_sf_result_struct* %146), !dbg !737
  store i32 %147, i32* %4, align 4, !dbg !738
  br label %148, !dbg !738

; <label>:148:                                    ; preds = %143, %142, %76
  %149 = load i32, i32* %4, align 4, !dbg !739
  ret i32 %149, !dbg !739
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_airy_Bi_e(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !740 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !741, metadata !128), !dbg !742
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !743, metadata !128), !dbg !744
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !745, metadata !128), !dbg !746
  %23 = load double, double* %5, align 8, !dbg !747
  %24 = fcmp olt double %23, -1.000000e+00, !dbg !749
  %25 = call i1 @fCmpInstHandler(double %23, double -1.000000e+00, i1 %24, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457830985008, i32 742, i32 8), !dbg !750
  br i1 %25, label %26, label %84, !dbg !750

; <label>:26:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !751, metadata !128), !dbg !753
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !754, metadata !128), !dbg !755
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !756, metadata !128), !dbg !757
  call void @llvm.dbg.declare(metadata i32* %11, metadata !758, metadata !128), !dbg !759
  %27 = load double, double* %5, align 8, !dbg !760
  %28 = load i32, i32* %6, align 4, !dbg !761
  %29 = call i32 @airy_mod_phase(double %27, i32 %28, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !762
  store i32 %29, i32* %11, align 4, !dbg !759
  call void @llvm.dbg.declare(metadata i32* %12, metadata !763, metadata !128), !dbg !764
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !765
  %31 = load double, double* %30, align 8, !dbg !765
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !766
  %33 = load double, double* %32, align 8, !dbg !766
  %34 = call i32 @gsl_sf_sin_err_e(double %31, double %33, %struct.gsl_sf_result_struct* %10), !dbg !767
  store i32 %34, i32* %12, align 4, !dbg !764
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !768
  %36 = load double, double* %35, align 8, !dbg !768
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !769
  %38 = load double, double* %37, align 8, !dbg !769
  %39 = fmul double %36, %38, !dbg !770
  call void @fMulHandler(double %36, double %38, double %39, i64 94457831003784, i64 94457831005880, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831007552, i32 748, i32 28), !dbg !771
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !771
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !772
  store double %39, double* %41, align 8, !dbg !773
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !774
  %43 = load double, double* %42, align 8, !dbg !774
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !775
  %45 = load double, double* %44, align 8, !dbg !775
  %46 = fmul double %43, %45, !dbg !776
  call void @fMulHandler(double %43, double %45, double %46, i64 94457831009640, i64 94457831011736, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831013408, i32 749, i32 33), !dbg !777
  %47 = call double @fabs(double %46) #1, !dbg !777
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !778
  %49 = load double, double* %48, align 8, !dbg !778
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !779
  %51 = load double, double* %50, align 8, !dbg !779
  %52 = fmul double %49, %51, !dbg !780
  call void @fMulHandler(double %49, double %51, double %52, i64 94457831014792, i64 94457831016888, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831018560, i32 749, i32 73), !dbg !781
  %53 = call double @fabs(double %52) #1, !dbg !781
  %54 = fadd double %47, %53, !dbg !783
  call void @fAddHandler(double %47, double %53, double %54, i64 94457831013888, i64 94457831019040, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831019520, i32 749, i32 51), !dbg !784
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !784
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !785
  store double %54, double* %56, align 8, !dbg !786
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !787
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 0, !dbg !788
  %59 = load double, double* %58, align 8, !dbg !788
  %60 = call double @fabs(double %59) #1, !dbg !789
  %61 = fmul double 0x3CB0000000000000, %60, !dbg !790
  call void @fMulHandler(double 0x3CB0000000000000, double %60, double %61, i64 0, i64 94457831023728, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831024208, i32 750, i32 36), !dbg !791
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !791
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !792
  %64 = load double, double* %63, align 8, !dbg !793
  %65 = fadd double %64, %61, !dbg !793
  call void @fAddHandler(double %64, double %61, double %65, i64 94457831025432, i64 94457831024208, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831025840, i32 750, i32 17), !dbg !793
  store double %65, double* %63, align 8, !dbg !793
  %66 = load i32, i32* %11, align 4, !dbg !794
  %67 = icmp ne i32 %66, 0, !dbg !794
  %68 = sext i32 %66 to i64, !dbg !794
  %69 = call i1 @iCmpInstHandler(i64 %68, i64 0, i1 %67, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831028032, i32 751, i32 12), !dbg !794
  br i1 %69, label %70, label %72, !dbg !794

; <label>:70:                                     ; preds = %26
  %71 = load i32, i32* %11, align 4, !dbg !795
  br label %82, !dbg !795

; <label>:72:                                     ; preds = %26
  %73 = load i32, i32* %12, align 4, !dbg !796
  %74 = icmp ne i32 %73, 0, !dbg !796
  %75 = sext i32 %73 to i64, !dbg !796
  %76 = call i1 @iCmpInstHandler(i64 %75, i64 0, i1 %74, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831032576, i32 751, i32 12), !dbg !796
  br i1 %76, label %77, label %79, !dbg !796

; <label>:77:                                     ; preds = %72
  %78 = load i32, i32* %12, align 4, !dbg !798
  br label %80, !dbg !798

; <label>:79:                                     ; preds = %72
  br label %80, !dbg !800

; <label>:80:                                     ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 0, %79 ], !dbg !802
  br label %82, !dbg !802

; <label>:82:                                     ; preds = %80, %70
  %83 = phi i32 [ %71, %70 ], [ %81, %80 ], !dbg !804
  store i32 %83, i32* %4, align 4, !dbg !806
  br label %238, !dbg !806

; <label>:84:                                     ; preds = %3
  %85 = load double, double* %5, align 8, !dbg !807
  %86 = fcmp olt double %85, 1.000000e+00, !dbg !809
  %87 = call i1 @fCmpInstHandler(double %85, double 1.000000e+00, i1 %86, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831042128, i32 753, i32 13), !dbg !810
  br i1 %87, label %88, label %130, !dbg !810

; <label>:88:                                     ; preds = %84
  call void @llvm.dbg.declare(metadata double* %13, metadata !811, metadata !128), !dbg !813
  %89 = load double, double* %5, align 8, !dbg !814
  %90 = load double, double* %5, align 8, !dbg !815
  %91 = fmul double %89, %90, !dbg !816
  call void @fMulHandler(double %89, double %90, double %91, i64 94457831044312, i64 94457831044664, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831045072, i32 754, i32 23), !dbg !817
  %92 = load double, double* %5, align 8, !dbg !817
  %93 = fmul double %91, %92, !dbg !818
  call void @fMulHandler(double %91, double %92, double %93, i64 94457831045072, i64 94457831045464, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831045872, i32 754, i32 25), !dbg !813
  store double %93, double* %13, align 8, !dbg !813
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !819, metadata !128), !dbg !820
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !821, metadata !128), !dbg !822
  %94 = load double, double* %13, align 8, !dbg !823
  %95 = load i32, i32* %6, align 4, !dbg !824
  %96 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif_cs, double %94, i32 %95, %struct.gsl_sf_result_struct* %14), !dbg !825
  %97 = load double, double* %13, align 8, !dbg !826
  %98 = load i32, i32* %6, align 4, !dbg !827
  %99 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big_cs, double %97, i32 %98, %struct.gsl_sf_result_struct* %15), !dbg !828
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !829
  %101 = load double, double* %100, align 8, !dbg !829
  %102 = fadd double 6.250000e-01, %101, !dbg !830
  call void @fAddHandler(double 6.250000e-01, double %101, double %102, i64 0, i64 94457831053256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831055024, i32 759, i32 26), !dbg !831
  %103 = load double, double* %5, align 8, !dbg !831
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !832
  %105 = load double, double* %104, align 8, !dbg !832
  %106 = fadd double 4.375000e-01, %105, !dbg !833
  call void @fAddHandler(double 4.375000e-01, double %105, double %106, i64 0, i64 94457831056216, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831057984, i32 759, i32 54), !dbg !834
  %107 = fmul double %103, %106, !dbg !834
  call void @fMulHandler(double %103, double %106, double %107, i64 94457831055384, i64 94457831057984, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831058368, i32 759, i32 45), !dbg !835
  %108 = fadd double %102, %107, !dbg !835
  call void @fAddHandler(double %102, double %107, double %108, i64 94457831055024, i64 94457831058368, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831058784, i32 759, i32 42), !dbg !836
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !836
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !837
  store double %108, double* %110, align 8, !dbg !838
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !839
  %112 = load double, double* %111, align 8, !dbg !839
  %113 = load double, double* %5, align 8, !dbg !840
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !841
  %115 = load double, double* %114, align 8, !dbg !841
  %116 = fmul double %113, %115, !dbg !842
  call void @fMulHandler(double %113, double %115, double %116, i64 94457831062520, i64 94457831063352, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831065024, i32 760, i32 43), !dbg !843
  %117 = call double @fabs(double %116) #1, !dbg !843
  %118 = fadd double %112, %117, !dbg !844
  call void @fAddHandler(double %112, double %117, double %118, i64 94457831060872, i64 94457831065504, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831065984, i32 760, i32 34), !dbg !845
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !845
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 1, !dbg !846
  store double %118, double* %120, align 8, !dbg !847
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !848
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 0, !dbg !849
  %123 = load double, double* %122, align 8, !dbg !849
  %124 = call double @fabs(double %123) #1, !dbg !850
  %125 = fmul double 0x3CB0000000000000, %124, !dbg !851
  call void @fMulHandler(double 0x3CB0000000000000, double %124, double %125, i64 0, i64 94457831070192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831070672, i32 761, i32 36), !dbg !852
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !852
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 1, !dbg !853
  %128 = load double, double* %127, align 8, !dbg !854
  %129 = fadd double %128, %125, !dbg !854
  call void @fAddHandler(double %128, double %125, double %129, i64 94457831071896, i64 94457831070672, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831072304, i32 761, i32 17), !dbg !854
  store double %129, double* %127, align 8, !dbg !854
  store i32 0, i32* %4, align 4, !dbg !855
  br label %238, !dbg !855

; <label>:130:                                    ; preds = %84
  %131 = load double, double* %5, align 8, !dbg !856
  %132 = fcmp ole double %131, 2.000000e+00, !dbg !858
  %133 = call i1 @fCmpInstHandler(double %131, double 2.000000e+00, i1 %132, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831076528, i32 764, i32 13), !dbg !859
  br i1 %133, label %134, label %179, !dbg !859

; <label>:134:                                    ; preds = %130
  call void @llvm.dbg.declare(metadata double* %16, metadata !860, metadata !128), !dbg !862
  %135 = load double, double* %5, align 8, !dbg !863
  %136 = fmul double 2.000000e+00, %135, !dbg !864
  call void @fMulHandler(double 2.000000e+00, double %135, double %136, i64 0, i64 94457831078664, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831081136, i32 765, i32 26), !dbg !865
  %137 = load double, double* %5, align 8, !dbg !865
  %138 = fmul double %136, %137, !dbg !866
  call void @fMulHandler(double %136, double %137, double %138, i64 94457831081136, i64 94457831081496, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831081904, i32 765, i32 28), !dbg !867
  %139 = load double, double* %5, align 8, !dbg !867
  %140 = fmul double %138, %139, !dbg !868
  call void @fMulHandler(double %138, double %139, double %140, i64 94457831081904, i64 94457831082296, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831082704, i32 765, i32 30), !dbg !869
  %141 = fsub double %140, 9.000000e+00, !dbg !869
  call void @fSubHandler(double %140, double 9.000000e+00, double %141, i64 94457831082704, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831083152, i32 765, i32 33), !dbg !870
  %142 = fdiv double %141, 7.000000e+00, !dbg !870
  call void @fDivHandler(double %141, double 7.000000e+00, double %142, i64 94457831083152, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831083568, i32 765, i32 39), !dbg !862
  store double %142, double* %16, align 8, !dbg !862
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !871, metadata !128), !dbg !872
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !873, metadata !128), !dbg !874
  %143 = load double, double* %16, align 8, !dbg !875
  %144 = load i32, i32* %6, align 4, !dbg !876
  %145 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif2_cs, double %143, i32 %144, %struct.gsl_sf_result_struct* %17), !dbg !877
  %146 = load double, double* %16, align 8, !dbg !878
  %147 = load i32, i32* %6, align 4, !dbg !879
  %148 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big2_cs, double %146, i32 %147, %struct.gsl_sf_result_struct* %18), !dbg !880
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !881
  %150 = load double, double* %149, align 8, !dbg !881
  %151 = fadd double 1.125000e+00, %150, !dbg !882
  call void @fAddHandler(double 1.125000e+00, double %150, double %151, i64 0, i64 94457831090920, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831092688, i32 770, i32 26), !dbg !883
  %152 = load double, double* %5, align 8, !dbg !883
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !884
  %154 = load double, double* %153, align 8, !dbg !884
  %155 = fadd double 6.250000e-01, %154, !dbg !885
  call void @fAddHandler(double 6.250000e-01, double %154, double %155, i64 0, i64 94457831093880, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831095584, i32 770, i32 53), !dbg !886
  %156 = fmul double %152, %155, !dbg !886
  call void @fMulHandler(double %152, double %155, double %156, i64 94457831093048, i64 94457831095584, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831095968, i32 770, i32 45), !dbg !887
  %157 = fadd double %151, %156, !dbg !887
  call void @fAddHandler(double %151, double %156, double %157, i64 94457831092688, i64 94457831095968, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831096384, i32 770, i32 42), !dbg !888
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !888
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 0, !dbg !889
  store double %157, double* %159, align 8, !dbg !890
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !891
  %161 = load double, double* %160, align 8, !dbg !891
  %162 = load double, double* %5, align 8, !dbg !892
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !893
  %164 = load double, double* %163, align 8, !dbg !893
  %165 = fmul double %162, %164, !dbg !894
  call void @fMulHandler(double %162, double %164, double %165, i64 94457831100120, i64 94457831100952, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831102624, i32 771, i32 43), !dbg !895
  %166 = call double @fabs(double %165) #1, !dbg !895
  %167 = fadd double %161, %166, !dbg !896
  call void @fAddHandler(double %161, double %166, double %167, i64 94457831098472, i64 94457831103104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831103584, i32 771, i32 34), !dbg !897
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !897
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 1, !dbg !898
  store double %167, double* %169, align 8, !dbg !899
  %170 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !900
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %170, i32 0, i32 0, !dbg !901
  %172 = load double, double* %171, align 8, !dbg !901
  %173 = call double @fabs(double %172) #1, !dbg !902
  %174 = fmul double 0x3CB0000000000000, %173, !dbg !903
  call void @fMulHandler(double 0x3CB0000000000000, double %173, double %174, i64 0, i64 94457831107792, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831108272, i32 772, i32 36), !dbg !904
  %175 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !904
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %175, i32 0, i32 1, !dbg !905
  %177 = load double, double* %176, align 8, !dbg !906
  %178 = fadd double %177, %174, !dbg !906
  call void @fAddHandler(double %177, double %174, double %178, i64 94457831109496, i64 94457831108272, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831109904, i32 772, i32 17), !dbg !906
  store double %178, double* %176, align 8, !dbg !906
  store i32 0, i32* %4, align 4, !dbg !907
  br label %238, !dbg !907

; <label>:179:                                    ; preds = %130
  call void @llvm.dbg.declare(metadata double* %19, metadata !908, metadata !128), !dbg !910
  %180 = load double, double* %5, align 8, !dbg !911
  %181 = fmul double 2.000000e+00, %180, !dbg !912
  call void @fMulHandler(double 2.000000e+00, double %180, double %181, i64 0, i64 94457831114808, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831115216, i32 776, i32 25), !dbg !913
  %182 = load double, double* %5, align 8, !dbg !913
  %183 = call double @sqrt(double %182) #6, !dbg !914
  call void @callOneArgHandler(i32 14, double %182, double %183, i64 94457831115576, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831116048, i32 776, i32 28), !dbg !915
  %184 = fmul double %181, %183, !dbg !915
  call void @fMulHandler(double %181, double %183, double %184, i64 94457831115216, i64 94457831116048, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831116528, i32 776, i32 27), !dbg !916
  %185 = fdiv double %184, 3.000000e+00, !dbg !916
  call void @fDivHandler(double %184, double 3.000000e+00, double %185, i64 94457831116528, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831116976, i32 776, i32 35), !dbg !910
  store double %185, double* %19, align 8, !dbg !910
  call void @llvm.dbg.declare(metadata double* %20, metadata !917, metadata !128), !dbg !918
  %186 = load double, double* %19, align 8, !dbg !919
  %187 = call double @exp(double %186) #6, !dbg !920
  call void @callOneArgHandler(i32 11, double %186, double %187, i64 94457831120136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831120576, i32 777, i32 22), !dbg !918
  store double %187, double* %20, align 8, !dbg !918
  %188 = load double, double* %19, align 8, !dbg !921
  %189 = fcmp ogt double %188, 0x40862642FEFA39EF, !dbg !923
  %190 = call i1 @fCmpInstHandler(double %188, double 0x40862642FEFA39EF, i1 %189, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831123184, i32 779, i32 10), !dbg !924
  br i1 %190, label %191, label %200, !dbg !924

; <label>:191:                                    ; preds = %179
  br label %192, !dbg !925, !llvm.loop !927

; <label>:192:                                    ; preds = %191
  %193 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !928
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %193, i32 0, i32 0, !dbg !928
  store double 0x7FF0000000000000, double* %194, align 8, !dbg !928
  %195 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !928
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %195, i32 0, i32 1, !dbg !928
  store double 0x7FF0000000000000, double* %196, align 8, !dbg !928
  br label %197, !dbg !928, !llvm.loop !931

; <label>:197:                                    ; preds = %192
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 780, i32 16), !dbg !933
  store i32 16, i32* %4, align 4, !dbg !933
  br label %238, !dbg !933
                                                  ; No predecessors!
  br label %199, !dbg !936

; <label>:199:                                    ; preds = %198
  br label %235, !dbg !938

; <label>:200:                                    ; preds = %179
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !939, metadata !128), !dbg !941
  call void @llvm.dbg.declare(metadata i32* %22, metadata !942, metadata !128), !dbg !943
  %201 = load double, double* %5, align 8, !dbg !944
  %202 = load i32, i32* %6, align 4, !dbg !945
  %203 = call i32 @airy_bie(double %201, i32 %202, %struct.gsl_sf_result_struct* %21), !dbg !946
  store i32 %203, i32* %22, align 4, !dbg !943
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !947
  %205 = load double, double* %204, align 8, !dbg !947
  %206 = load double, double* %20, align 8, !dbg !948
  %207 = fmul double %205, %206, !dbg !949
  call void @fMulHandler(double %205, double %206, double %207, i64 94457831139144, i64 94457831140792, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831141200, i32 785, i32 37), !dbg !950
  %208 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !950
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %208, i32 0, i32 0, !dbg !951
  store double %207, double* %209, align 8, !dbg !952
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !953
  %211 = load double, double* %210, align 8, !dbg !953
  %212 = load double, double* %20, align 8, !dbg !954
  %213 = fmul double %211, %212, !dbg !955
  call void @fMulHandler(double %211, double %212, double %213, i64 94457831143288, i64 94457831144936, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831145344, i32 786, i32 37), !dbg !956
  %214 = load double, double* %19, align 8, !dbg !956
  %215 = fmul double 1.500000e+00, %214, !dbg !957
  call void @fMulHandler(double 1.500000e+00, double %214, double %215, i64 0, i64 94457831145736, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831146240, i32 786, i32 51), !dbg !958
  %216 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !958
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %216, i32 0, i32 0, !dbg !959
  %218 = load double, double* %217, align 8, !dbg !959
  %219 = fmul double 0x3CB0000000000000, %218, !dbg !960
  call void @fMulHandler(double 0x3CB0000000000000, double %218, double %219, i64 0, i64 94457831147432, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831149104, i32 786, i32 73), !dbg !961
  %220 = fmul double %215, %219, !dbg !961
  call void @fMulHandler(double %215, double %219, double %220, i64 94457831146240, i64 94457831149104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831149520, i32 786, i32 54), !dbg !962
  %221 = call double @fabs(double %220) #1, !dbg !962
  %222 = fadd double %213, %221, !dbg !963
  call void @fAddHandler(double %213, double %221, double %222, i64 94457831145344, i64 94457831150000, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831150480, i32 786, i32 41), !dbg !964
  %223 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !964
  %224 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %223, i32 0, i32 1, !dbg !965
  store double %222, double* %224, align 8, !dbg !966
  %225 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !967
  %226 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %225, i32 0, i32 0, !dbg !968
  %227 = load double, double* %226, align 8, !dbg !968
  %228 = call double @fabs(double %227) #1, !dbg !969
  %229 = fmul double 0x3CB0000000000000, %228, !dbg !970
  call void @fMulHandler(double 0x3CB0000000000000, double %228, double %229, i64 0, i64 94457831154688, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831155168, i32 787, i32 38), !dbg !971
  %230 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !971
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %230, i32 0, i32 1, !dbg !972
  %232 = load double, double* %231, align 8, !dbg !973
  %233 = fadd double %232, %229, !dbg !973
  call void @fAddHandler(double %232, double %229, double %233, i64 94457831156392, i64 94457831155168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94457831156800, i32 787, i32 19), !dbg !973
  store double %233, double* %231, align 8, !dbg !973
  %234 = load i32, i32* %22, align 4, !dbg !974
  store i32 %234, i32* %4, align 4, !dbg !975
  br label %238, !dbg !975

; <label>:235:                                    ; preds = %199
  br label %236

; <label>:236:                                    ; preds = %235
  br label %237

; <label>:237:                                    ; preds = %236
  br label %238

; <label>:238:                                    ; preds = %237, %200, %197, %134, %88, %82
  %239 = load i32, i32* %4, align 4, !dbg !976
  ret i32 %239, !dbg !976
}

declare i32 @gsl_sf_sin_err_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @airy_bie(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !977 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !978, metadata !128), !dbg !979
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !980, metadata !128), !dbg !981
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !982, metadata !128), !dbg !983
  call void @llvm.dbg.declare(metadata double* %7, metadata !984, metadata !128), !dbg !985
  store double 0x4021805A83B66B50, double* %7, align 8, !dbg !985
  call void @llvm.dbg.declare(metadata double* %8, metadata !986, metadata !128), !dbg !987
  store double 0xC000C02D41DB35A8, double* %8, align 8, !dbg !987
  %17 = load double, double* %4, align 8, !dbg !988
  %18 = fcmp olt double %17, 4.000000e+00, !dbg !990
  %19 = call i1 @fCmpInstHandler(double %17, double 4.000000e+00, i1 %18, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831173536, i32 633, i32 8), !dbg !991
  br i1 %19, label %20, label %52, !dbg !991

; <label>:20:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %9, metadata !992, metadata !128), !dbg !994
  %21 = load double, double* %4, align 8, !dbg !995
  %22 = call double @sqrt(double %21) #6, !dbg !996
  call void @callOneArgHandler(i32 14, double %21, double %22, i64 94457831001032, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831176016, i32 634, i32 18), !dbg !994
  store double %22, double* %9, align 8, !dbg !994
  call void @llvm.dbg.declare(metadata double* %10, metadata !997, metadata !128), !dbg !998
  %23 = load double, double* %4, align 8, !dbg !999
  %24 = load double, double* %9, align 8, !dbg !1000
  %25 = fmul double %23, %24, !dbg !1001
  call void @fMulHandler(double %23, double %24, double %25, i64 94457831179272, i64 94457831179624, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831180032, i32 635, i32 24), !dbg !1002
  %26 = fdiv double 0x4021805A83B66B50, %25, !dbg !1002
  call void @fDivHandler(double 0x4021805A83B66B50, double %25, double %26, i64 0, i64 94457831180032, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831180448, i32 635, i32 21), !dbg !1003
  %27 = fadd double %26, 0xC000C02D41DB35A8, !dbg !1003
  call void @fAddHandler(double %26, double 0xC000C02D41DB35A8, double %27, i64 94457831180448, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831180864, i32 635, i32 30), !dbg !998
  store double %27, double* %10, align 8, !dbg !998
  call void @llvm.dbg.declare(metadata double* %11, metadata !1004, metadata !128), !dbg !1005
  %28 = load double, double* %9, align 8, !dbg !1006
  %29 = call double @sqrt(double %28) #6, !dbg !1007
  call void @callOneArgHandler(i32 14, double %28, double %29, i64 94457831184056, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831184496, i32 636, i32 18), !dbg !1005
  store double %29, double* %11, align 8, !dbg !1005
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !1008, metadata !128), !dbg !1009
  %30 = load double, double* %10, align 8, !dbg !1010
  %31 = load i32, i32* %5, align 4, !dbg !1011
  %32 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bip_cs, double %30, i32 %31, %struct.gsl_sf_result_struct* %12), !dbg !1012
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !1013
  %34 = load double, double* %33, align 8, !dbg !1013
  %35 = fadd double 6.250000e-01, %34, !dbg !1014
  call void @fAddHandler(double 6.250000e-01, double %34, double %35, i64 0, i64 94457831189512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831191216, i32 639, i32 26), !dbg !1015
  %36 = load double, double* %11, align 8, !dbg !1015
  %37 = fdiv double %35, %36, !dbg !1016
  call void @fDivHandler(double %35, double %36, double %37, i64 94457831191216, i64 94457831191576, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831191984, i32 639, i32 41), !dbg !1017
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1017
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !1018
  store double %37, double* %39, align 8, !dbg !1019
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !1020
  %41 = load double, double* %40, align 8, !dbg !1020
  %42 = load double, double* %11, align 8, !dbg !1021
  %43 = fdiv double %41, %42, !dbg !1022
  call void @fDivHandler(double %41, double %42, double %43, i64 94457831194072, i64 94457831195720, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831196128, i32 640, i32 31), !dbg !1023
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1023
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !1024
  %46 = load double, double* %45, align 8, !dbg !1024
  %47 = call double @fabs(double %46) #1, !dbg !1025
  %48 = fmul double 0x3CB0000000000000, %47, !dbg !1026
  call void @fMulHandler(double 0x3CB0000000000000, double %47, double %48, i64 0, i64 94457831199088, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831199568, i32 640, i32 52), !dbg !1027
  %49 = fadd double %43, %48, !dbg !1027
  call void @fAddHandler(double %43, double %48, double %49, i64 94457831196128, i64 94457831199568, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831199984, i32 640, i32 34), !dbg !1028
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1028
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 1, !dbg !1029
  store double %49, double* %51, align 8, !dbg !1030
  br label %84, !dbg !1031

; <label>:52:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %13, metadata !1032, metadata !128), !dbg !1034
  %53 = load double, double* %4, align 8, !dbg !1035
  %54 = call double @sqrt(double %53) #6, !dbg !1036
  call void @callOneArgHandler(i32 14, double %53, double %54, i64 94457831203208, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831203648, i32 643, i32 18), !dbg !1034
  store double %54, double* %13, align 8, !dbg !1034
  call void @llvm.dbg.declare(metadata double* %14, metadata !1037, metadata !128), !dbg !1038
  %55 = load double, double* %4, align 8, !dbg !1039
  %56 = load double, double* %13, align 8, !dbg !1040
  %57 = fmul double %55, %56, !dbg !1041
  call void @fMulHandler(double %55, double %56, double %57, i64 94457831206904, i64 94457831207256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831207664, i32 644, i32 25), !dbg !1042
  %58 = fdiv double 1.600000e+01, %57, !dbg !1042
  call void @fDivHandler(double 1.600000e+01, double %57, double %58, i64 0, i64 94457831207664, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831208112, i32 644, i32 22), !dbg !1043
  %59 = fsub double %58, 1.000000e+00, !dbg !1043
  call void @fSubHandler(double %58, double 1.000000e+00, double %59, i64 94457831208112, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831208528, i32 644, i32 31), !dbg !1038
  store double %59, double* %14, align 8, !dbg !1038
  call void @llvm.dbg.declare(metadata double* %15, metadata !1044, metadata !128), !dbg !1045
  %60 = load double, double* %13, align 8, !dbg !1046
  %61 = call double @sqrt(double %60) #6, !dbg !1047
  call void @callOneArgHandler(i32 14, double %60, double %61, i64 94457831211688, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831212128, i32 645, i32 18), !dbg !1045
  store double %61, double* %15, align 8, !dbg !1045
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !1048, metadata !128), !dbg !1049
  %62 = load double, double* %14, align 8, !dbg !1050
  %63 = load i32, i32* %5, align 4, !dbg !1051
  %64 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bip2_cs, double %62, i32 %63, %struct.gsl_sf_result_struct* %16), !dbg !1052
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !1053
  %66 = load double, double* %65, align 8, !dbg !1053
  %67 = fadd double 6.250000e-01, %66, !dbg !1054
  call void @fAddHandler(double 6.250000e-01, double %66, double %67, i64 0, i64 94457831217144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831218848, i32 648, i32 26), !dbg !1055
  %68 = load double, double* %15, align 8, !dbg !1055
  %69 = fdiv double %67, %68, !dbg !1056
  call void @fDivHandler(double %67, double %68, double %69, i64 94457831218848, i64 94457831219208, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831219616, i32 648, i32 41), !dbg !1057
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1057
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !1058
  store double %69, double* %71, align 8, !dbg !1059
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1060
  %73 = load double, double* %72, align 8, !dbg !1060
  %74 = load double, double* %15, align 8, !dbg !1061
  %75 = fdiv double %73, %74, !dbg !1062
  call void @fDivHandler(double %73, double %74, double %75, i64 94457831221704, i64 94457831223352, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831223760, i32 649, i32 31), !dbg !1063
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1063
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 0, !dbg !1064
  %78 = load double, double* %77, align 8, !dbg !1064
  %79 = call double @fabs(double %78) #1, !dbg !1065
  %80 = fmul double 0x3CB0000000000000, %79, !dbg !1066
  call void @fMulHandler(double 0x3CB0000000000000, double %79, double %80, i64 0, i64 94457831226720, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831227200, i32 649, i32 52), !dbg !1067
  %81 = fadd double %75, %80, !dbg !1067
  call void @fAddHandler(double %75, double %80, double %81, i64 94457831223760, i64 94457831227200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94457831227616, i32 649, i32 34), !dbg !1068
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1068
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !1069
  store double %81, double* %83, align 8, !dbg !1070
  br label %84

; <label>:84:                                     ; preds = %52, %20
  ret i32 0, !dbg !1071
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_airy_Bi_scaled_e(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !1072 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1073, metadata !128), !dbg !1074
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1075, metadata !128), !dbg !1076
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1077, metadata !128), !dbg !1078
  %22 = load double, double* %5, align 8, !dbg !1079
  %23 = fcmp olt double %22, -1.000000e+00, !dbg !1081
  %24 = call i1 @fCmpInstHandler(double %22, double -1.000000e+00, i1 %23, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831236720, i32 799, i32 8), !dbg !1082
  br i1 %24, label %25, label %83, !dbg !1082

; <label>:25:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1083, metadata !128), !dbg !1085
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !1086, metadata !128), !dbg !1087
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1088, metadata !128), !dbg !1089
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1090, metadata !128), !dbg !1091
  %26 = load double, double* %5, align 8, !dbg !1092
  %27 = load i32, i32* %6, align 4, !dbg !1093
  %28 = call i32 @airy_mod_phase(double %26, i32 %27, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !1094
  store i32 %28, i32* %11, align 4, !dbg !1091
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1095, metadata !128), !dbg !1096
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !1097
  %30 = load double, double* %29, align 8, !dbg !1097
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !1098
  %32 = load double, double* %31, align 8, !dbg !1098
  %33 = call i32 @gsl_sf_sin_err_e(double %30, double %32, %struct.gsl_sf_result_struct* %10), !dbg !1099
  store i32 %33, i32* %12, align 4, !dbg !1096
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1100
  %35 = load double, double* %34, align 8, !dbg !1100
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1101
  %37 = load double, double* %36, align 8, !dbg !1101
  %38 = fmul double %35, %37, !dbg !1102
  call void @fMulHandler(double %35, double %37, double %38, i64 94457831253080, i64 94457831255176, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831256848, i32 805, i32 28), !dbg !1103
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1103
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !1104
  store double %38, double* %40, align 8, !dbg !1105
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1106
  %42 = load double, double* %41, align 8, !dbg !1106
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !1107
  %44 = load double, double* %43, align 8, !dbg !1107
  %45 = fmul double %42, %44, !dbg !1108
  call void @fMulHandler(double %42, double %44, double %45, i64 94457831258936, i64 94457831261032, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831262704, i32 806, i32 33), !dbg !1109
  %46 = call double @fabs(double %45) #1, !dbg !1109
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1110
  %48 = load double, double* %47, align 8, !dbg !1110
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1111
  %50 = load double, double* %49, align 8, !dbg !1111
  %51 = fmul double %48, %50, !dbg !1112
  call void @fMulHandler(double %48, double %50, double %51, i64 94457831264088, i64 94457831266184, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831267856, i32 806, i32 73), !dbg !1113
  %52 = call double @fabs(double %51) #1, !dbg !1113
  %53 = fadd double %46, %52, !dbg !1115
  call void @fAddHandler(double %46, double %52, double %53, i64 94457831263184, i64 94457831268336, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831268816, i32 806, i32 51), !dbg !1116
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1116
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !1117
  store double %53, double* %55, align 8, !dbg !1118
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1119
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !1120
  %58 = load double, double* %57, align 8, !dbg !1120
  %59 = call double @fabs(double %58) #1, !dbg !1121
  %60 = fmul double 0x3CB0000000000000, %59, !dbg !1122
  call void @fMulHandler(double 0x3CB0000000000000, double %59, double %60, i64 0, i64 94457831273024, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831273504, i32 807, i32 36), !dbg !1123
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1123
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !1124
  %63 = load double, double* %62, align 8, !dbg !1125
  %64 = fadd double %63, %60, !dbg !1125
  call void @fAddHandler(double %63, double %60, double %64, i64 94457831274728, i64 94457831273504, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831275136, i32 807, i32 17), !dbg !1125
  store double %64, double* %62, align 8, !dbg !1125
  %65 = load i32, i32* %11, align 4, !dbg !1126
  %66 = icmp ne i32 %65, 0, !dbg !1126
  %67 = sext i32 %65 to i64, !dbg !1126
  %68 = call i1 @iCmpInstHandler(i64 %67, i64 0, i1 %66, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831277328, i32 808, i32 12), !dbg !1126
  br i1 %68, label %69, label %71, !dbg !1126

; <label>:69:                                     ; preds = %25
  %70 = load i32, i32* %11, align 4, !dbg !1127
  br label %81, !dbg !1127

; <label>:71:                                     ; preds = %25
  %72 = load i32, i32* %12, align 4, !dbg !1128
  %73 = icmp ne i32 %72, 0, !dbg !1128
  %74 = sext i32 %72 to i64, !dbg !1128
  %75 = call i1 @iCmpInstHandler(i64 %74, i64 0, i1 %73, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831281872, i32 808, i32 12), !dbg !1128
  br i1 %75, label %76, label %78, !dbg !1128

; <label>:76:                                     ; preds = %71
  %77 = load i32, i32* %12, align 4, !dbg !1130
  br label %79, !dbg !1130

; <label>:78:                                     ; preds = %71
  br label %79, !dbg !1132

; <label>:79:                                     ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ], !dbg !1134
  br label %81, !dbg !1134

; <label>:81:                                     ; preds = %79, %69
  %82 = phi i32 [ %70, %69 ], [ %80, %79 ], !dbg !1136
  store i32 %82, i32* %4, align 4, !dbg !1138
  br label %211, !dbg !1138

; <label>:83:                                     ; preds = %3
  %84 = load double, double* %5, align 8, !dbg !1139
  %85 = fcmp olt double %84, 1.000000e+00, !dbg !1141
  %86 = call i1 @fCmpInstHandler(double %84, double 1.000000e+00, i1 %85, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831291424, i32 810, i32 13), !dbg !1142
  br i1 %86, label %87, label %148, !dbg !1142

; <label>:87:                                     ; preds = %83
  call void @llvm.dbg.declare(metadata double* %13, metadata !1143, metadata !128), !dbg !1145
  %88 = load double, double* %5, align 8, !dbg !1146
  %89 = load double, double* %5, align 8, !dbg !1147
  %90 = fmul double %88, %89, !dbg !1148
  call void @fMulHandler(double %88, double %89, double %90, i64 94457830868328, i64 94457830868680, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457830869088, i32 811, i32 23), !dbg !1149
  %91 = load double, double* %5, align 8, !dbg !1149
  %92 = fmul double %90, %91, !dbg !1150
  call void @fMulHandler(double %90, double %91, double %92, i64 94457830869088, i64 94457830869672, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457830870080, i32 811, i32 25), !dbg !1145
  store double %92, double* %13, align 8, !dbg !1145
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1151, metadata !128), !dbg !1152
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1153, metadata !128), !dbg !1154
  %93 = load double, double* %13, align 8, !dbg !1155
  %94 = load i32, i32* %6, align 4, !dbg !1156
  %95 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif_cs, double %93, i32 %94, %struct.gsl_sf_result_struct* %14), !dbg !1157
  %96 = load double, double* %13, align 8, !dbg !1158
  %97 = load i32, i32* %6, align 4, !dbg !1159
  %98 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big_cs, double %96, i32 %97, %struct.gsl_sf_result_struct* %15), !dbg !1160
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1161
  %100 = load double, double* %99, align 8, !dbg !1161
  %101 = fadd double 6.250000e-01, %100, !dbg !1162
  call void @fAddHandler(double 6.250000e-01, double %100, double %101, i64 0, i64 94457831308648, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831310352, i32 816, i32 26), !dbg !1163
  %102 = load double, double* %5, align 8, !dbg !1163
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1164
  %104 = load double, double* %103, align 8, !dbg !1164
  %105 = fadd double 4.375000e-01, %104, !dbg !1165
  call void @fAddHandler(double 4.375000e-01, double %104, double %105, i64 0, i64 94457831311544, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831313248, i32 816, i32 54), !dbg !1166
  %106 = fmul double %102, %105, !dbg !1166
  call void @fMulHandler(double %102, double %105, double %106, i64 94457831310712, i64 94457831313248, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831313632, i32 816, i32 45), !dbg !1167
  %107 = fadd double %101, %106, !dbg !1167
  call void @fAddHandler(double %101, double %106, double %107, i64 94457831310352, i64 94457831313632, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831314048, i32 816, i32 42), !dbg !1168
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1168
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 0, !dbg !1169
  store double %107, double* %109, align 8, !dbg !1170
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1171
  %111 = load double, double* %110, align 8, !dbg !1171
  %112 = load double, double* %5, align 8, !dbg !1172
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !1173
  %114 = load double, double* %113, align 8, !dbg !1173
  %115 = fmul double %112, %114, !dbg !1174
  call void @fMulHandler(double %112, double %114, double %115, i64 94457831317784, i64 94457831318616, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831320288, i32 817, i32 43), !dbg !1175
  %116 = call double @fabs(double %115) #1, !dbg !1175
  %117 = fadd double %111, %116, !dbg !1176
  call void @fAddHandler(double %111, double %116, double %117, i64 94457831316136, i64 94457831320768, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831321248, i32 817, i32 34), !dbg !1177
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1177
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 1, !dbg !1178
  store double %117, double* %119, align 8, !dbg !1179
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1180
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 0, !dbg !1181
  %122 = load double, double* %121, align 8, !dbg !1181
  %123 = call double @fabs(double %122) #1, !dbg !1182
  %124 = fmul double 0x3CB0000000000000, %123, !dbg !1183
  call void @fMulHandler(double 0x3CB0000000000000, double %123, double %124, i64 0, i64 94457831325456, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831325936, i32 818, i32 36), !dbg !1184
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1184
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !1185
  %127 = load double, double* %126, align 8, !dbg !1186
  %128 = fadd double %127, %124, !dbg !1186
  call void @fAddHandler(double %127, double %124, double %128, i64 94457831327160, i64 94457831325936, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831327568, i32 818, i32 17), !dbg !1186
  store double %128, double* %126, align 8, !dbg !1186
  %129 = load double, double* %5, align 8, !dbg !1187
  %130 = fcmp ogt double %129, 0.000000e+00, !dbg !1189
  %131 = call i1 @fCmpInstHandler(double %129, double 0.000000e+00, i1 %130, i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831329760, i32 819, i32 10), !dbg !1190
  br i1 %131, label %132, label %147, !dbg !1190

; <label>:132:                                    ; preds = %87
  call void @llvm.dbg.declare(metadata double* %16, metadata !1191, metadata !128), !dbg !1193
  %133 = load double, double* %13, align 8, !dbg !1194
  %134 = call double @sqrt(double %133) #6, !dbg !1195
  call void @callOneArgHandler(i32 14, double %133, double %134, i64 94457831331928, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831332368, i32 820, i32 43), !dbg !1196
  %135 = fmul double 0xBFE5555555555555, %134, !dbg !1196
  call void @fMulHandler(double 0xBFE5555555555555, double %134, double %135, i64 0, i64 94457831332368, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831332912, i32 820, i32 41), !dbg !1197
  %136 = call double @exp(double %135) #6, !dbg !1197
  call void @callOneArgHandler(i32 11, double %135, double %136, i64 94457831332912, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831335456, i32 820, i32 28), !dbg !1193
  store double %136, double* %16, align 8, !dbg !1193
  %137 = load double, double* %16, align 8, !dbg !1199
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1200
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 0, !dbg !1201
  %140 = load double, double* %139, align 8, !dbg !1202
  %141 = fmul double %140, %137, !dbg !1202
  call void @fMulHandler(double %140, double %137, double %141, i64 94457831338808, i64 94457831337592, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831339216, i32 821, i32 19), !dbg !1202
  store double %141, double* %139, align 8, !dbg !1202
  %142 = load double, double* %16, align 8, !dbg !1203
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1204
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 1, !dbg !1205
  %145 = load double, double* %144, align 8, !dbg !1206
  %146 = fmul double %145, %142, !dbg !1206
  call void @fMulHandler(double %145, double %142, double %146, i64 94457831342216, i64 94457831341000, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831342624, i32 822, i32 19), !dbg !1206
  store double %146, double* %144, align 8, !dbg !1206
  br label %147, !dbg !1207

; <label>:147:                                    ; preds = %132, %87
  store i32 0, i32* %4, align 4, !dbg !1208
  br label %211, !dbg !1208

; <label>:148:                                    ; preds = %83
  %149 = load double, double* %5, align 8, !dbg !1209
  %150 = fcmp ole double %149, 2.000000e+00, !dbg !1211
  %151 = call i1 @fCmpInstHandler(double %149, double 2.000000e+00, i1 %150, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831347168, i32 826, i32 13), !dbg !1212
  br i1 %151, label %152, label %206, !dbg !1212

; <label>:152:                                    ; preds = %148
  call void @llvm.dbg.declare(metadata double* %17, metadata !1213, metadata !128), !dbg !1215
  %153 = load double, double* %5, align 8, !dbg !1216
  %154 = load double, double* %5, align 8, !dbg !1217
  %155 = fmul double %153, %154, !dbg !1218
  call void @fMulHandler(double %153, double %154, double %155, i64 94457831349304, i64 94457831349656, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831350064, i32 827, i32 24), !dbg !1219
  %156 = load double, double* %5, align 8, !dbg !1219
  %157 = fmul double %155, %156, !dbg !1220
  call void @fMulHandler(double %155, double %156, double %157, i64 94457831350064, i64 94457831350456, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831350864, i32 827, i32 26), !dbg !1215
  store double %157, double* %17, align 8, !dbg !1215
  call void @llvm.dbg.declare(metadata double* %18, metadata !1221, metadata !128), !dbg !1222
  %158 = load double, double* %17, align 8, !dbg !1223
  %159 = fmul double 2.000000e+00, %158, !dbg !1224
  call void @fMulHandler(double 2.000000e+00, double %158, double %159, i64 0, i64 94457831354056, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831354464, i32 828, i32 27), !dbg !1225
  %160 = fsub double %159, 9.000000e+00, !dbg !1225
  call void @fSubHandler(double %159, double 9.000000e+00, double %160, i64 94457831354464, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831354880, i32 828, i32 31), !dbg !1226
  %161 = fdiv double %160, 7.000000e+00, !dbg !1226
  call void @fDivHandler(double %160, double 7.000000e+00, double %161, i64 94457831354880, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831355296, i32 828, i32 37), !dbg !1222
  store double %161, double* %18, align 8, !dbg !1222
  call void @llvm.dbg.declare(metadata double* %19, metadata !1227, metadata !128), !dbg !1228
  %162 = load double, double* %17, align 8, !dbg !1229
  %163 = call double @sqrt(double %162) #6, !dbg !1230
  call void @callOneArgHandler(i32 14, double %162, double %163, i64 94457831358456, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831358896, i32 829, i32 38), !dbg !1231
  %164 = fmul double 0xBFE5555555555555, %163, !dbg !1231
  call void @fMulHandler(double 0xBFE5555555555555, double %163, double %164, i64 0, i64 94457831358896, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831359376, i32 829, i32 36), !dbg !1232
  %165 = call double @exp(double %164) #6, !dbg !1232
  call void @callOneArgHandler(i32 11, double %164, double %165, i64 94457831359376, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831359856, i32 829, i32 23), !dbg !1228
  store double %165, double* %19, align 8, !dbg !1228
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !1234, metadata !128), !dbg !1235
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !1236, metadata !128), !dbg !1237
  %166 = load double, double* %18, align 8, !dbg !1238
  %167 = load i32, i32* %6, align 4, !dbg !1239
  %168 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif2_cs, double %166, i32 %167, %struct.gsl_sf_result_struct* %20), !dbg !1240
  %169 = load double, double* %18, align 8, !dbg !1241
  %170 = load i32, i32* %6, align 4, !dbg !1242
  %171 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big2_cs, double %169, i32 %170, %struct.gsl_sf_result_struct* %21), !dbg !1243
  %172 = load double, double* %19, align 8, !dbg !1244
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1245
  %174 = load double, double* %173, align 8, !dbg !1245
  %175 = fadd double 1.125000e+00, %174, !dbg !1246
  call void @fAddHandler(double 1.125000e+00, double %174, double %175, i64 0, i64 94457831367688, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831369392, i32 834, i32 31), !dbg !1247
  %176 = load double, double* %5, align 8, !dbg !1247
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !1248
  %178 = load double, double* %177, align 8, !dbg !1248
  %179 = fadd double 6.250000e-01, %178, !dbg !1249
  call void @fAddHandler(double 6.250000e-01, double %178, double %179, i64 0, i64 94457831370584, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831372288, i32 834, i32 58), !dbg !1250
  %180 = fmul double %176, %179, !dbg !1250
  call void @fMulHandler(double %176, double %179, double %180, i64 94457831369752, i64 94457831372288, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831372672, i32 834, i32 50), !dbg !1251
  %181 = fadd double %175, %180, !dbg !1251
  call void @fAddHandler(double %175, double %180, double %181, i64 94457831369392, i64 94457831372672, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831373088, i32 834, i32 47), !dbg !1252
  %182 = fmul double %172, %181, !dbg !1252
  call void @fMulHandler(double %172, double %181, double %182, i64 94457831366888, i64 94457831373088, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831373504, i32 834, i32 22), !dbg !1253
  %183 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1253
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %183, i32 0, i32 0, !dbg !1254
  store double %182, double* %184, align 8, !dbg !1255
  %185 = load double, double* %19, align 8, !dbg !1256
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1257
  %187 = load double, double* %186, align 8, !dbg !1257
  %188 = load double, double* %5, align 8, !dbg !1258
  %189 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !1259
  %190 = load double, double* %189, align 8, !dbg !1259
  %191 = fmul double %188, %190, !dbg !1260
  call void @fMulHandler(double %188, double %190, double %191, i64 94457831377624, i64 94457831378456, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831380128, i32 835, i32 48), !dbg !1261
  %192 = call double @fabs(double %191) #1, !dbg !1261
  %193 = fadd double %187, %192, !dbg !1262
  call void @fAddHandler(double %187, double %192, double %193, i64 94457831375976, i64 94457831380608, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831381088, i32 835, i32 39), !dbg !1263
  %194 = fmul double %185, %193, !dbg !1263
  call void @fMulHandler(double %185, double %193, double %194, i64 94457831375144, i64 94457831381088, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831381504, i32 835, i32 22), !dbg !1264
  %195 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1264
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %195, i32 0, i32 1, !dbg !1265
  store double %194, double* %196, align 8, !dbg !1266
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1267
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %197, i32 0, i32 0, !dbg !1268
  %199 = load double, double* %198, align 8, !dbg !1268
  %200 = call double @fabs(double %199) #1, !dbg !1269
  %201 = fmul double 0x3CB0000000000000, %200, !dbg !1270
  call void @fMulHandler(double 0x3CB0000000000000, double %200, double %201, i64 0, i64 94457831385712, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831386192, i32 836, i32 36), !dbg !1271
  %202 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1271
  %203 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %202, i32 0, i32 1, !dbg !1272
  %204 = load double, double* %203, align 8, !dbg !1273
  %205 = fadd double %204, %201, !dbg !1273
  call void @fAddHandler(double %204, double %201, double %205, i64 94457831387416, i64 94457831386192, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94457831387824, i32 836, i32 17), !dbg !1273
  store double %205, double* %203, align 8, !dbg !1273
  store i32 0, i32* %4, align 4, !dbg !1274
  br label %211, !dbg !1274

; <label>:206:                                    ; preds = %148
  %207 = load double, double* %5, align 8, !dbg !1275
  %208 = load i32, i32* %6, align 4, !dbg !1277
  %209 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1278
  %210 = call i32 @airy_bie(double %207, i32 %208, %struct.gsl_sf_result_struct* %209), !dbg !1279
  store i32 %210, i32* %4, align 4, !dbg !1280
  br label %211, !dbg !1280

; <label>:211:                                    ; preds = %206, %152, %147, %81
  %212 = load i32, i32* %4, align 4, !dbg !1281
  ret i32 %212, !dbg !1281
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_airy_Ai(double, i32) #0 !dbg !1282 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1285, metadata !128), !dbg !1286
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1287, metadata !128), !dbg !1288
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1289, metadata !128), !dbg !1290
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1291, metadata !128), !dbg !1290
  %8 = load double, double* %4, align 8, !dbg !1290
  %9 = load i32, i32* %5, align 4, !dbg !1290
  %10 = call i32 @gsl_sf_airy_Ai_e(double %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !1290
  store i32 %10, i32* %7, align 4, !dbg !1290
  %11 = load i32, i32* %7, align 4, !dbg !1292
  %12 = icmp ne i32 %11, 0, !dbg !1292
  %13 = sext i32 %11 to i64, !dbg !1290
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94457831403776, i32 851, i32 3), !dbg !1290
  br i1 %14, label %15, label %21, !dbg !1290

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1294, !llvm.loop !1297

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1299
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 851, i32 %17), !dbg !1299
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1299
  %19 = load double, double* %18, align 8, !dbg !1299
  store double %19, double* %3, align 8, !dbg !1299
  br label %24, !dbg !1299
                                                  ; No predecessors!
  br label %21, !dbg !1302

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1304
  %23 = load double, double* %22, align 8, !dbg !1304
  store double %23, double* %3, align 8, !dbg !1304
  br label %24, !dbg !1304

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1306
  ret double %25, !dbg !1306
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_airy_Ai_scaled(double, i32) #0 !dbg !1307 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1308, metadata !128), !dbg !1309
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1310, metadata !128), !dbg !1311
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1312, metadata !128), !dbg !1313
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1314, metadata !128), !dbg !1313
  %8 = load double, double* %4, align 8, !dbg !1313
  %9 = load i32, i32* %5, align 4, !dbg !1313
  %10 = call i32 @gsl_sf_airy_Ai_scaled_e(double %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !1313
  store i32 %10, i32* %7, align 4, !dbg !1313
  %11 = load i32, i32* %7, align 4, !dbg !1315
  %12 = icmp ne i32 %11, 0, !dbg !1315
  %13 = sext i32 %11 to i64, !dbg !1313
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94457831422592, i32 856, i32 3), !dbg !1313
  br i1 %14, label %15, label %21, !dbg !1313

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1317, !llvm.loop !1320

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1322
  call void @gsl_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 856, i32 %17), !dbg !1322
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1322
  %19 = load double, double* %18, align 8, !dbg !1322
  store double %19, double* %3, align 8, !dbg !1322
  br label %24, !dbg !1322
                                                  ; No predecessors!
  br label %21, !dbg !1325

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1327
  %23 = load double, double* %22, align 8, !dbg !1327
  store double %23, double* %3, align 8, !dbg !1327
  br label %24, !dbg !1327

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1329
  ret double %25, !dbg !1329
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_airy_Bi(double, i32) #0 !dbg !1330 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1331, metadata !128), !dbg !1332
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1333, metadata !128), !dbg !1334
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1335, metadata !128), !dbg !1336
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1337, metadata !128), !dbg !1336
  %8 = load double, double* %4, align 8, !dbg !1336
  %9 = load i32, i32* %5, align 4, !dbg !1336
  %10 = call i32 @gsl_sf_airy_Bi_e(double %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !1336
  store i32 %10, i32* %7, align 4, !dbg !1336
  %11 = load i32, i32* %7, align 4, !dbg !1338
  %12 = icmp ne i32 %11, 0, !dbg !1338
  %13 = sext i32 %11 to i64, !dbg !1336
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94457831441408, i32 861, i32 3), !dbg !1336
  br i1 %14, label %15, label %21, !dbg !1336

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1340, !llvm.loop !1343

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1345
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 861, i32 %17), !dbg !1345
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1345
  %19 = load double, double* %18, align 8, !dbg !1345
  store double %19, double* %3, align 8, !dbg !1345
  br label %24, !dbg !1345
                                                  ; No predecessors!
  br label %21, !dbg !1348

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1350
  %23 = load double, double* %22, align 8, !dbg !1350
  store double %23, double* %3, align 8, !dbg !1350
  br label %24, !dbg !1350

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1352
  ret double %25, !dbg !1352
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_airy_Bi_scaled(double, i32) #0 !dbg !1353 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1354, metadata !128), !dbg !1355
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1356, metadata !128), !dbg !1357
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1358, metadata !128), !dbg !1359
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1360, metadata !128), !dbg !1359
  %8 = load double, double* %4, align 8, !dbg !1359
  %9 = load i32, i32* %5, align 4, !dbg !1359
  %10 = call i32 @gsl_sf_airy_Bi_scaled_e(double %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !1359
  store i32 %10, i32* %7, align 4, !dbg !1359
  %11 = load i32, i32* %7, align 4, !dbg !1361
  %12 = icmp ne i32 %11, 0, !dbg !1361
  %13 = sext i32 %11 to i64, !dbg !1359
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 94457831460224, i32 866, i32 3), !dbg !1359
  br i1 %14, label %15, label %21, !dbg !1359

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1363, !llvm.loop !1366

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1368
  call void @gsl_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 866, i32 %17), !dbg !1368
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1368
  %19 = load double, double* %18, align 8, !dbg !1368
  store double %19, double* %3, align 8, !dbg !1368
  br label %24, !dbg !1368
                                                  ; No predecessors!
  br label %21, !dbg !1371

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1373
  %23 = load double, double* %22, align 8, !dbg !1373
  store double %23, double* %3, align 8, !dbg !1373
  br label %24, !dbg !1373

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1375
  ret double %25, !dbg !1375
}

declare i32 @GSL_MODE_PREC(i32) #2

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
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!107, !108, !109}
!llvm.ident = !{!110}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "airy.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60, !64, !65, !69, !70, !74, !75, !79, !80, !84, !85, !86, !87, !88, !89, !90, !91, !95, !96, !97, !98, !102, !103}
!42 = distinct !DIGlobalVariable(name: "am21_cs", scope: !0, file: !1, line: 104, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @am21_cs)
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
!55 = distinct !DIGlobalVariable(name: "am21_data", scope: !0, file: !1, line: 65, type: !56, isLocal: true, isDefinition: true, variable: [37 x double]* @am21_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2368, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 37)
!59 = distinct !DIGlobalVariable(name: "ath1_cs", scope: !0, file: !1, line: 149, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @ath1_cs)
!60 = distinct !DIGlobalVariable(name: "ath1_data", scope: !0, file: !1, line: 111, type: !61, isLocal: true, isDefinition: true, variable: [36 x double]* @ath1_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2304, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 36)
!64 = distinct !DIGlobalVariable(name: "am22_cs", scope: !0, file: !1, line: 191, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @am22_cs)
!65 = distinct !DIGlobalVariable(name: "am22_data", scope: !0, file: !1, line: 156, type: !66, isLocal: true, isDefinition: true, variable: [33 x double]* @am22_data)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2112, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 33)
!69 = distinct !DIGlobalVariable(name: "ath2_cs", scope: !0, file: !1, line: 232, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @ath2_cs)
!70 = distinct !DIGlobalVariable(name: "ath2_data", scope: !0, file: !1, line: 198, type: !71, isLocal: true, isDefinition: true, variable: [32 x double]* @ath2_data)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2048, align: 64, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 32)
!74 = distinct !DIGlobalVariable(name: "aif_cs", scope: !0, file: !1, line: 309, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @aif_cs)
!75 = distinct !DIGlobalVariable(name: "ai_data_f", scope: !0, file: !1, line: 298, type: !76, isLocal: true, isDefinition: true, variable: [9 x double]* @ai_data_f)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 576, align: 64, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 9)
!79 = distinct !DIGlobalVariable(name: "aig_cs", scope: !0, file: !1, line: 326, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @aig_cs)
!80 = distinct !DIGlobalVariable(name: "ai_data_g", scope: !0, file: !1, line: 316, type: !81, isLocal: true, isDefinition: true, variable: [8 x double]* @ai_data_g)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 512, align: 64, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 8)
!84 = distinct !DIGlobalVariable(name: "aip_cs", scope: !0, file: !1, line: 518, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @aip_cs)
!85 = distinct !DIGlobalVariable(name: "data_aip", scope: !0, file: !1, line: 444, type: !61, isLocal: true, isDefinition: true, variable: [36 x double]* @data_aip)
!86 = distinct !DIGlobalVariable(name: "bif_cs", scope: !0, file: !1, line: 360, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bif_cs)
!87 = distinct !DIGlobalVariable(name: "data_bif", scope: !0, file: !1, line: 349, type: !76, isLocal: true, isDefinition: true, variable: [9 x double]* @data_bif)
!88 = distinct !DIGlobalVariable(name: "big_cs", scope: !0, file: !1, line: 377, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @big_cs)
!89 = distinct !DIGlobalVariable(name: "data_big", scope: !0, file: !1, line: 367, type: !81, isLocal: true, isDefinition: true, variable: [8 x double]* @data_big)
!90 = distinct !DIGlobalVariable(name: "bif2_cs", scope: !0, file: !1, line: 400, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bif2_cs)
!91 = distinct !DIGlobalVariable(name: "data_bif2", scope: !0, file: !1, line: 388, type: !92, isLocal: true, isDefinition: true, variable: [10 x double]* @data_bif2)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 640, align: 64, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 10)
!95 = distinct !DIGlobalVariable(name: "big2_cs", scope: !0, file: !1, line: 419, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @big2_cs)
!96 = distinct !DIGlobalVariable(name: "data_big2", scope: !0, file: !1, line: 407, type: !92, isLocal: true, isDefinition: true, variable: [10 x double]* @data_big2)
!97 = distinct !DIGlobalVariable(name: "bip_cs", scope: !0, file: !1, line: 567, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bip_cs)
!98 = distinct !DIGlobalVariable(name: "data_bip", scope: !0, file: !1, line: 541, type: !99, isLocal: true, isDefinition: true, variable: [24 x double]* @data_bip)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1536, align: 64, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 24)
!102 = distinct !DIGlobalVariable(name: "bip2_cs", scope: !0, file: !1, line: 605, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bip2_cs)
!103 = distinct !DIGlobalVariable(name: "data_bip2", scope: !0, file: !1, line: 574, type: !104, isLocal: true, isDefinition: true, variable: [29 x double]* @data_bip2)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1856, align: 64, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 29)
!107 = !{i32 2, !"Dwarf Version", i32 4}
!108 = !{i32 2, !"Debug Info Version", i32 3}
!109 = !{i32 1, !"PIC Level", i32 2}
!110 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!111 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_e", scope: !1, file: !1, line: 659, type: !112, isLocal: false, isDefinition: true, scopeLine: 660, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!112 = !DISubroutineType(types: !113)
!113 = !{!51, !114, !115, !119}
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !117, line: 50, baseType: !118)
!117 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/fpcc/gsl-2.5/specfunc")
!118 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !121, line: 41, baseType: !122)
!121 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !121, line: 37, size: 128, align: 64, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !122, file: !121, line: 38, baseType: !49, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !122, file: !121, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!126 = !{}
!127 = !DILocalVariable(name: "x", arg: 1, scope: !111, file: !1, line: 659, type: !114)
!128 = !DIExpression()
!129 = !DILocation(line: 659, column: 31, scope: !111)
!130 = !DILocalVariable(name: "mode", arg: 2, scope: !111, file: !1, line: 659, type: !115)
!131 = !DILocation(line: 659, column: 51, scope: !111)
!132 = !DILocalVariable(name: "result", arg: 3, scope: !111, file: !1, line: 659, type: !119)
!133 = !DILocation(line: 659, column: 73, scope: !111)
!134 = !DILocation(line: 663, column: 6, scope: !135)
!135 = distinct !DILexicalBlock(scope: !111, file: !1, line: 663, column: 6)
!136 = !DILocation(line: 663, column: 8, scope: !135)
!137 = !DILocation(line: 663, column: 6, scope: !111)
!138 = !DILocalVariable(name: "mod", scope: !139, file: !1, line: 664, type: !120)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 663, column: 16)
!140 = !DILocation(line: 664, column: 19, scope: !139)
!141 = !DILocalVariable(name: "theta", scope: !139, file: !1, line: 665, type: !120)
!142 = !DILocation(line: 665, column: 19, scope: !139)
!143 = !DILocalVariable(name: "cos_result", scope: !139, file: !1, line: 666, type: !120)
!144 = !DILocation(line: 666, column: 19, scope: !139)
!145 = !DILocalVariable(name: "stat_mp", scope: !139, file: !1, line: 667, type: !51)
!146 = !DILocation(line: 667, column: 9, scope: !139)
!147 = !DILocation(line: 667, column: 35, scope: !139)
!148 = !DILocation(line: 667, column: 38, scope: !139)
!149 = !DILocation(line: 667, column: 20, scope: !139)
!150 = !DILocalVariable(name: "stat_cos", scope: !139, file: !1, line: 668, type: !51)
!151 = !DILocation(line: 668, column: 9, scope: !139)
!152 = !DILocation(line: 668, column: 43, scope: !139)
!153 = !DILocation(line: 668, column: 54, scope: !139)
!154 = !DILocation(line: 668, column: 20, scope: !139)
!155 = !DILocation(line: 669, column: 24, scope: !139)
!156 = !DILocation(line: 669, column: 41, scope: !139)
!157 = !DILocation(line: 669, column: 28, scope: !139)
!158 = !DILocation(line: 669, column: 5, scope: !139)
!159 = !DILocation(line: 669, column: 13, scope: !139)
!160 = !DILocation(line: 669, column: 18, scope: !139)
!161 = !DILocation(line: 670, column: 29, scope: !139)
!162 = !DILocation(line: 670, column: 46, scope: !139)
!163 = !DILocation(line: 670, column: 33, scope: !139)
!164 = !DILocation(line: 670, column: 20, scope: !139)
!165 = !DILocation(line: 670, column: 69, scope: !139)
!166 = !DILocation(line: 670, column: 79, scope: !139)
!167 = !DILocation(line: 670, column: 73, scope: !139)
!168 = !DILocation(line: 670, column: 53, scope: !169)
!169 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 1)
!170 = !DILocation(line: 670, column: 51, scope: !139)
!171 = !DILocation(line: 670, column: 5, scope: !139)
!172 = !DILocation(line: 670, column: 13, scope: !139)
!173 = !DILocation(line: 670, column: 18, scope: !139)
!174 = !DILocation(line: 671, column: 43, scope: !139)
!175 = !DILocation(line: 671, column: 51, scope: !139)
!176 = !DILocation(line: 671, column: 38, scope: !139)
!177 = !DILocation(line: 671, column: 36, scope: !139)
!178 = !DILocation(line: 671, column: 5, scope: !139)
!179 = !DILocation(line: 671, column: 13, scope: !139)
!180 = !DILocation(line: 671, column: 17, scope: !139)
!181 = !DILocation(line: 672, column: 12, scope: !139)
!182 = !DILocation(line: 672, column: 12, scope: !169)
!183 = !DILocation(line: 672, column: 12, scope: !184)
!184 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 2)
!185 = !DILocation(line: 672, column: 12, scope: !186)
!186 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 3)
!187 = !DILocation(line: 672, column: 12, scope: !188)
!188 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 4)
!189 = !DILocation(line: 672, column: 12, scope: !190)
!190 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 5)
!191 = !DILocation(line: 672, column: 12, scope: !192)
!192 = !DILexicalBlockFile(scope: !139, file: !1, discriminator: 6)
!193 = !DILocation(line: 672, column: 5, scope: !192)
!194 = !DILocation(line: 674, column: 11, scope: !195)
!195 = distinct !DILexicalBlock(scope: !135, file: !1, line: 674, column: 11)
!196 = !DILocation(line: 674, column: 13, scope: !195)
!197 = !DILocation(line: 674, column: 11, scope: !135)
!198 = !DILocalVariable(name: "z", scope: !199, file: !1, line: 675, type: !114)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 674, column: 21)
!200 = !DILocation(line: 675, column: 18, scope: !199)
!201 = !DILocation(line: 675, column: 22, scope: !199)
!202 = !DILocation(line: 675, column: 24, scope: !199)
!203 = !DILocation(line: 675, column: 23, scope: !199)
!204 = !DILocation(line: 675, column: 26, scope: !199)
!205 = !DILocation(line: 675, column: 25, scope: !199)
!206 = !DILocalVariable(name: "result_c0", scope: !199, file: !1, line: 676, type: !120)
!207 = !DILocation(line: 676, column: 19, scope: !199)
!208 = !DILocalVariable(name: "result_c1", scope: !199, file: !1, line: 677, type: !120)
!209 = !DILocation(line: 677, column: 19, scope: !199)
!210 = !DILocation(line: 678, column: 31, scope: !199)
!211 = !DILocation(line: 678, column: 34, scope: !199)
!212 = !DILocation(line: 678, column: 5, scope: !199)
!213 = !DILocation(line: 679, column: 31, scope: !199)
!214 = !DILocation(line: 679, column: 34, scope: !199)
!215 = !DILocation(line: 679, column: 5, scope: !199)
!216 = !DILocation(line: 680, column: 39, scope: !199)
!217 = !DILocation(line: 680, column: 45, scope: !199)
!218 = !DILocation(line: 680, column: 65, scope: !199)
!219 = !DILocation(line: 680, column: 53, scope: !199)
!220 = !DILocation(line: 680, column: 46, scope: !199)
!221 = !DILocation(line: 680, column: 43, scope: !199)
!222 = !DILocation(line: 680, column: 26, scope: !199)
!223 = !DILocation(line: 680, column: 5, scope: !199)
!224 = !DILocation(line: 680, column: 13, scope: !199)
!225 = !DILocation(line: 680, column: 18, scope: !199)
!226 = !DILocation(line: 681, column: 30, scope: !199)
!227 = !DILocation(line: 681, column: 41, scope: !199)
!228 = !DILocation(line: 681, column: 53, scope: !199)
!229 = !DILocation(line: 681, column: 42, scope: !199)
!230 = !DILocation(line: 681, column: 36, scope: !199)
!231 = !DILocation(line: 681, column: 34, scope: !199)
!232 = !DILocation(line: 681, column: 5, scope: !199)
!233 = !DILocation(line: 681, column: 13, scope: !199)
!234 = !DILocation(line: 681, column: 18, scope: !199)
!235 = !DILocation(line: 682, column: 43, scope: !199)
!236 = !DILocation(line: 682, column: 51, scope: !199)
!237 = !DILocation(line: 682, column: 38, scope: !199)
!238 = !DILocation(line: 682, column: 36, scope: !199)
!239 = !DILocation(line: 682, column: 5, scope: !199)
!240 = !DILocation(line: 682, column: 13, scope: !199)
!241 = !DILocation(line: 682, column: 17, scope: !199)
!242 = !DILocation(line: 683, column: 5, scope: !199)
!243 = !DILocalVariable(name: "x32", scope: !244, file: !1, line: 686, type: !49)
!244 = distinct !DILexicalBlock(scope: !195, file: !1, line: 685, column: 8)
!245 = !DILocation(line: 686, column: 12, scope: !244)
!246 = !DILocation(line: 686, column: 18, scope: !244)
!247 = !DILocation(line: 686, column: 27, scope: !244)
!248 = !DILocation(line: 686, column: 22, scope: !244)
!249 = !DILocation(line: 686, column: 20, scope: !244)
!250 = !DILocalVariable(name: "s", scope: !244, file: !1, line: 687, type: !49)
!251 = !DILocation(line: 687, column: 12, scope: !244)
!252 = !DILocation(line: 687, column: 27, scope: !244)
!253 = !DILocation(line: 687, column: 26, scope: !244)
!254 = !DILocation(line: 687, column: 30, scope: !244)
!255 = !DILocation(line: 687, column: 18, scope: !244)
!256 = !DILocalVariable(name: "result_aie", scope: !244, file: !1, line: 688, type: !120)
!257 = !DILocation(line: 688, column: 19, scope: !244)
!258 = !DILocalVariable(name: "stat_aie", scope: !244, file: !1, line: 689, type: !51)
!259 = !DILocation(line: 689, column: 9, scope: !244)
!260 = !DILocation(line: 689, column: 29, scope: !244)
!261 = !DILocation(line: 689, column: 32, scope: !244)
!262 = !DILocation(line: 689, column: 20, scope: !244)
!263 = !DILocation(line: 690, column: 31, scope: !244)
!264 = !DILocation(line: 690, column: 37, scope: !244)
!265 = !DILocation(line: 690, column: 35, scope: !244)
!266 = !DILocation(line: 690, column: 5, scope: !244)
!267 = !DILocation(line: 690, column: 13, scope: !244)
!268 = !DILocation(line: 690, column: 18, scope: !244)
!269 = !DILocation(line: 691, column: 31, scope: !244)
!270 = !DILocation(line: 691, column: 37, scope: !244)
!271 = !DILocation(line: 691, column: 35, scope: !244)
!272 = !DILocation(line: 691, column: 41, scope: !244)
!273 = !DILocation(line: 691, column: 49, scope: !244)
!274 = !DILocation(line: 691, column: 55, scope: !244)
!275 = !DILocation(line: 691, column: 53, scope: !244)
!276 = !DILocation(line: 691, column: 59, scope: !244)
!277 = !DILocation(line: 691, column: 39, scope: !244)
!278 = !DILocation(line: 691, column: 5, scope: !244)
!279 = !DILocation(line: 691, column: 13, scope: !244)
!280 = !DILocation(line: 691, column: 18, scope: !244)
!281 = !DILocation(line: 692, column: 43, scope: !244)
!282 = !DILocation(line: 692, column: 51, scope: !244)
!283 = !DILocation(line: 692, column: 38, scope: !244)
!284 = !DILocation(line: 692, column: 36, scope: !244)
!285 = !DILocation(line: 692, column: 5, scope: !244)
!286 = !DILocation(line: 692, column: 13, scope: !244)
!287 = !DILocation(line: 692, column: 17, scope: !244)
!288 = !DILocation(line: 693, column: 5, scope: !289)
!289 = distinct !DILexicalBlock(scope: !244, file: !1, line: 693, column: 5)
!290 = !DILocation(line: 693, column: 5, scope: !244)
!291 = !DILocation(line: 693, column: 5, scope: !292)
!292 = !DILexicalBlockFile(scope: !289, file: !1, discriminator: 1)
!293 = distinct !{!293, !288}
!294 = !DILocation(line: 693, column: 5, scope: !295)
!295 = !DILexicalBlockFile(scope: !296, file: !1, discriminator: 2)
!296 = distinct !DILexicalBlock(scope: !289, file: !1, line: 693, column: 5)
!297 = !DILocation(line: 693, column: 5, scope: !298)
!298 = !DILexicalBlockFile(scope: !296, file: !1, discriminator: 3)
!299 = !DILocation(line: 694, column: 12, scope: !244)
!300 = !DILocation(line: 694, column: 5, scope: !244)
!301 = !DILocation(line: 696, column: 1, scope: !111)
!302 = distinct !DISubprogram(name: "airy_mod_phase", scope: !1, file: !1, line: 243, type: !303, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!303 = !DISubroutineType(types: !304)
!304 = !{!51, !114, !116, !119, !119}
!305 = !DILocalVariable(name: "x", arg: 1, scope: !302, file: !1, line: 243, type: !114)
!306 = !DILocation(line: 243, column: 29, scope: !302)
!307 = !DILocalVariable(name: "mode", arg: 2, scope: !302, file: !1, line: 243, type: !116)
!308 = !DILocation(line: 243, column: 43, scope: !302)
!309 = !DILocalVariable(name: "mod", arg: 3, scope: !302, file: !1, line: 243, type: !119)
!310 = !DILocation(line: 243, column: 65, scope: !302)
!311 = !DILocalVariable(name: "phase", arg: 4, scope: !302, file: !1, line: 243, type: !119)
!312 = !DILocation(line: 243, column: 86, scope: !302)
!313 = !DILocalVariable(name: "result_m", scope: !302, file: !1, line: 245, type: !120)
!314 = !DILocation(line: 245, column: 17, scope: !302)
!315 = !DILocalVariable(name: "result_p", scope: !302, file: !1, line: 246, type: !120)
!316 = !DILocation(line: 246, column: 17, scope: !302)
!317 = !DILocalVariable(name: "m", scope: !302, file: !1, line: 247, type: !49)
!318 = !DILocation(line: 247, column: 10, scope: !302)
!319 = !DILocalVariable(name: "p", scope: !302, file: !1, line: 247, type: !49)
!320 = !DILocation(line: 247, column: 13, scope: !302)
!321 = !DILocalVariable(name: "sqx", scope: !302, file: !1, line: 248, type: !49)
!322 = !DILocation(line: 248, column: 10, scope: !302)
!323 = !DILocation(line: 250, column: 6, scope: !324)
!324 = distinct !DILexicalBlock(scope: !302, file: !1, line: 250, column: 6)
!325 = !DILocation(line: 250, column: 8, scope: !324)
!326 = !DILocation(line: 250, column: 6, scope: !302)
!327 = !DILocalVariable(name: "z", scope: !328, file: !1, line: 251, type: !49)
!328 = distinct !DILexicalBlock(scope: !324, file: !1, line: 250, column: 16)
!329 = !DILocation(line: 251, column: 12, scope: !328)
!330 = !DILocation(line: 251, column: 22, scope: !328)
!331 = !DILocation(line: 251, column: 24, scope: !328)
!332 = !DILocation(line: 251, column: 23, scope: !328)
!333 = !DILocation(line: 251, column: 26, scope: !328)
!334 = !DILocation(line: 251, column: 25, scope: !328)
!335 = !DILocation(line: 251, column: 20, scope: !328)
!336 = !DILocation(line: 251, column: 29, scope: !328)
!337 = !DILocation(line: 252, column: 32, scope: !328)
!338 = !DILocation(line: 252, column: 35, scope: !328)
!339 = !DILocation(line: 252, column: 5, scope: !328)
!340 = !DILocation(line: 253, column: 32, scope: !328)
!341 = !DILocation(line: 253, column: 35, scope: !328)
!342 = !DILocation(line: 253, column: 5, scope: !328)
!343 = !DILocation(line: 254, column: 3, scope: !328)
!344 = !DILocation(line: 255, column: 11, scope: !345)
!345 = distinct !DILexicalBlock(scope: !324, file: !1, line: 255, column: 11)
!346 = !DILocation(line: 255, column: 13, scope: !345)
!347 = !DILocation(line: 255, column: 11, scope: !324)
!348 = !DILocalVariable(name: "z", scope: !349, file: !1, line: 256, type: !49)
!349 = distinct !DILexicalBlock(scope: !345, file: !1, line: 255, column: 22)
!350 = !DILocation(line: 256, column: 12, scope: !349)
!351 = !DILocation(line: 256, column: 23, scope: !349)
!352 = !DILocation(line: 256, column: 25, scope: !349)
!353 = !DILocation(line: 256, column: 24, scope: !349)
!354 = !DILocation(line: 256, column: 27, scope: !349)
!355 = !DILocation(line: 256, column: 26, scope: !349)
!356 = !DILocation(line: 256, column: 21, scope: !349)
!357 = !DILocation(line: 256, column: 30, scope: !349)
!358 = !DILocation(line: 256, column: 36, scope: !349)
!359 = !DILocation(line: 257, column: 32, scope: !349)
!360 = !DILocation(line: 257, column: 35, scope: !349)
!361 = !DILocation(line: 257, column: 5, scope: !349)
!362 = !DILocation(line: 258, column: 32, scope: !349)
!363 = !DILocation(line: 258, column: 35, scope: !349)
!364 = !DILocation(line: 258, column: 5, scope: !349)
!365 = !DILocation(line: 259, column: 3, scope: !349)
!366 = !DILocation(line: 261, column: 5, scope: !367)
!367 = distinct !DILexicalBlock(scope: !345, file: !1, line: 260, column: 8)
!368 = !DILocation(line: 261, column: 10, scope: !367)
!369 = !DILocation(line: 261, column: 14, scope: !367)
!370 = !DILocation(line: 262, column: 5, scope: !367)
!371 = !DILocation(line: 262, column: 10, scope: !367)
!372 = !DILocation(line: 262, column: 14, scope: !367)
!373 = !DILocation(line: 263, column: 5, scope: !367)
!374 = !DILocation(line: 263, column: 12, scope: !367)
!375 = !DILocation(line: 263, column: 16, scope: !367)
!376 = !DILocation(line: 264, column: 5, scope: !367)
!377 = !DILocation(line: 264, column: 12, scope: !367)
!378 = !DILocation(line: 264, column: 16, scope: !367)
!379 = !DILocation(line: 265, column: 5, scope: !367)
!380 = distinct !{!380, !379}
!381 = !DILocation(line: 265, column: 5, scope: !382)
!382 = !DILexicalBlockFile(scope: !383, file: !1, discriminator: 1)
!383 = distinct !DILexicalBlock(scope: !367, file: !1, line: 265, column: 5)
!384 = !DILocation(line: 268, column: 26, scope: !302)
!385 = !DILocation(line: 268, column: 15, scope: !302)
!386 = !DILocation(line: 268, column: 5, scope: !302)
!387 = !DILocation(line: 269, column: 26, scope: !302)
!388 = !DILocation(line: 269, column: 15, scope: !302)
!389 = !DILocation(line: 269, column: 5, scope: !302)
!390 = !DILocation(line: 271, column: 15, scope: !302)
!391 = !DILocation(line: 271, column: 14, scope: !302)
!392 = !DILocation(line: 271, column: 9, scope: !302)
!393 = !DILocation(line: 271, column: 7, scope: !302)
!394 = !DILocation(line: 273, column: 21, scope: !302)
!395 = !DILocation(line: 273, column: 23, scope: !302)
!396 = !DILocation(line: 273, column: 22, scope: !302)
!397 = !DILocation(line: 273, column: 16, scope: !302)
!398 = !DILocation(line: 273, column: 3, scope: !302)
!399 = !DILocation(line: 273, column: 8, scope: !302)
!400 = !DILocation(line: 273, column: 14, scope: !302)
!401 = !DILocation(line: 274, column: 20, scope: !302)
!402 = !DILocation(line: 274, column: 25, scope: !302)
!403 = !DILocation(line: 274, column: 15, scope: !302)
!404 = !DILocation(line: 274, column: 65, scope: !302)
!405 = !DILocation(line: 274, column: 78, scope: !302)
!406 = !DILocation(line: 274, column: 68, scope: !302)
!407 = !DILocation(line: 274, column: 51, scope: !408)
!408 = !DILexicalBlockFile(scope: !302, file: !1, discriminator: 1)
!409 = !DILocation(line: 274, column: 49, scope: !302)
!410 = !DILocation(line: 274, column: 30, scope: !302)
!411 = !DILocation(line: 274, column: 3, scope: !302)
!412 = !DILocation(line: 274, column: 8, scope: !302)
!413 = !DILocation(line: 274, column: 13, scope: !302)
!414 = !DILocation(line: 275, column: 25, scope: !302)
!415 = !DILocation(line: 275, column: 27, scope: !302)
!416 = !DILocation(line: 275, column: 26, scope: !302)
!417 = !DILocation(line: 275, column: 33, scope: !302)
!418 = !DILocation(line: 275, column: 31, scope: !302)
!419 = !DILocation(line: 275, column: 23, scope: !302)
!420 = !DILocation(line: 275, column: 3, scope: !302)
!421 = !DILocation(line: 275, column: 10, scope: !302)
!422 = !DILocation(line: 275, column: 14, scope: !302)
!423 = !DILocation(line: 276, column: 21, scope: !302)
!424 = !DILocation(line: 276, column: 28, scope: !302)
!425 = !DILocation(line: 276, column: 16, scope: !302)
!426 = !DILocation(line: 276, column: 68, scope: !302)
!427 = !DILocation(line: 276, column: 81, scope: !302)
!428 = !DILocation(line: 276, column: 71, scope: !302)
!429 = !DILocation(line: 276, column: 54, scope: !408)
!430 = !DILocation(line: 276, column: 52, scope: !302)
!431 = !DILocation(line: 276, column: 33, scope: !302)
!432 = !DILocation(line: 276, column: 3, scope: !302)
!433 = !DILocation(line: 276, column: 10, scope: !302)
!434 = !DILocation(line: 276, column: 14, scope: !302)
!435 = !DILocation(line: 278, column: 3, scope: !302)
!436 = !DILocation(line: 279, column: 1, scope: !302)
!437 = distinct !DISubprogram(name: "cheb_eval_mode_e", scope: !438, file: !438, line: 2, type: !439, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!438 = !DIFile(filename: "./cheb_eval_mode.c", directory: "/fpcc/gsl-2.5/specfunc")
!439 = !DISubroutineType(types: !440)
!440 = !{!51, !441, !114, !116, !119}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!443 = !DILocalVariable(name: "cs", arg: 1, scope: !437, file: !438, line: 2, type: !441)
!444 = !DILocation(line: 2, column: 38, scope: !437)
!445 = !DILocalVariable(name: "x", arg: 2, scope: !437, file: !438, line: 3, type: !114)
!446 = !DILocation(line: 3, column: 31, scope: !437)
!447 = !DILocalVariable(name: "mode", arg: 3, scope: !437, file: !438, line: 4, type: !116)
!448 = !DILocation(line: 4, column: 29, scope: !437)
!449 = !DILocalVariable(name: "result", arg: 4, scope: !437, file: !438, line: 5, type: !119)
!450 = !DILocation(line: 5, column: 34, scope: !437)
!451 = !DILocalVariable(name: "j", scope: !437, file: !438, line: 7, type: !51)
!452 = !DILocation(line: 7, column: 7, scope: !437)
!453 = !DILocalVariable(name: "d", scope: !437, file: !438, line: 8, type: !49)
!454 = !DILocation(line: 8, column: 10, scope: !437)
!455 = !DILocalVariable(name: "dd", scope: !437, file: !438, line: 9, type: !49)
!456 = !DILocation(line: 9, column: 10, scope: !437)
!457 = !DILocalVariable(name: "y", scope: !437, file: !438, line: 11, type: !49)
!458 = !DILocation(line: 11, column: 10, scope: !437)
!459 = !DILocation(line: 11, column: 19, scope: !437)
!460 = !DILocation(line: 11, column: 18, scope: !437)
!461 = !DILocation(line: 11, column: 23, scope: !437)
!462 = !DILocation(line: 11, column: 27, scope: !437)
!463 = !DILocation(line: 11, column: 21, scope: !437)
!464 = !DILocation(line: 11, column: 31, scope: !437)
!465 = !DILocation(line: 11, column: 35, scope: !437)
!466 = !DILocation(line: 11, column: 29, scope: !437)
!467 = !DILocation(line: 11, column: 41, scope: !437)
!468 = !DILocation(line: 11, column: 45, scope: !437)
!469 = !DILocation(line: 11, column: 49, scope: !437)
!470 = !DILocation(line: 11, column: 53, scope: !437)
!471 = !DILocation(line: 11, column: 47, scope: !437)
!472 = !DILocation(line: 11, column: 38, scope: !437)
!473 = !DILocalVariable(name: "y2", scope: !437, file: !438, line: 12, type: !49)
!474 = !DILocation(line: 12, column: 10, scope: !437)
!475 = !DILocation(line: 12, column: 21, scope: !437)
!476 = !DILocation(line: 12, column: 19, scope: !437)
!477 = !DILocalVariable(name: "eval_order", scope: !437, file: !438, line: 14, type: !51)
!478 = !DILocation(line: 14, column: 7, scope: !437)
!479 = !DILocation(line: 16, column: 20, scope: !480)
!480 = distinct !DILexicalBlock(scope: !437, file: !438, line: 16, column: 6)
!481 = !DILocation(line: 16, column: 6, scope: !480)
!482 = !DILocation(line: 16, column: 26, scope: !480)
!483 = !DILocation(line: 16, column: 6, scope: !437)
!484 = !DILocation(line: 17, column: 18, scope: !480)
!485 = !DILocation(line: 17, column: 22, scope: !480)
!486 = !DILocation(line: 17, column: 16, scope: !480)
!487 = !DILocation(line: 17, column: 5, scope: !480)
!488 = !DILocation(line: 19, column: 18, scope: !480)
!489 = !DILocation(line: 19, column: 22, scope: !480)
!490 = !DILocation(line: 19, column: 16, scope: !480)
!491 = !DILocation(line: 21, column: 11, scope: !492)
!492 = distinct !DILexicalBlock(scope: !437, file: !438, line: 21, column: 3)
!493 = !DILocation(line: 21, column: 9, scope: !492)
!494 = !DILocation(line: 21, column: 7, scope: !492)
!495 = !DILocation(line: 21, column: 23, scope: !496)
!496 = !DILexicalBlockFile(scope: !497, file: !438, discriminator: 1)
!497 = distinct !DILexicalBlock(scope: !492, file: !438, line: 21, column: 3)
!498 = !DILocation(line: 21, column: 24, scope: !496)
!499 = !DILocation(line: 21, column: 3, scope: !496)
!500 = !DILocalVariable(name: "temp", scope: !501, file: !438, line: 22, type: !49)
!501 = distinct !DILexicalBlock(scope: !497, file: !438, line: 21, column: 34)
!502 = !DILocation(line: 22, column: 12, scope: !501)
!503 = !DILocation(line: 22, column: 19, scope: !501)
!504 = !DILocation(line: 23, column: 9, scope: !501)
!505 = !DILocation(line: 23, column: 12, scope: !501)
!506 = !DILocation(line: 23, column: 11, scope: !501)
!507 = !DILocation(line: 23, column: 16, scope: !501)
!508 = !DILocation(line: 23, column: 14, scope: !501)
!509 = !DILocation(line: 23, column: 27, scope: !501)
!510 = !DILocation(line: 23, column: 21, scope: !501)
!511 = !DILocation(line: 23, column: 25, scope: !501)
!512 = !DILocation(line: 23, column: 19, scope: !501)
!513 = !DILocation(line: 23, column: 7, scope: !501)
!514 = !DILocation(line: 24, column: 10, scope: !501)
!515 = !DILocation(line: 24, column: 8, scope: !501)
!516 = !DILocation(line: 25, column: 3, scope: !501)
!517 = !DILocation(line: 21, column: 30, scope: !518)
!518 = !DILexicalBlockFile(scope: !497, file: !438, discriminator: 2)
!519 = !DILocation(line: 21, column: 3, scope: !518)
!520 = distinct !{!520, !521}
!521 = !DILocation(line: 21, column: 3, scope: !437)
!522 = !DILocation(line: 27, column: 17, scope: !437)
!523 = !DILocation(line: 27, column: 19, scope: !437)
!524 = !DILocation(line: 27, column: 18, scope: !437)
!525 = !DILocation(line: 27, column: 23, scope: !437)
!526 = !DILocation(line: 27, column: 21, scope: !437)
!527 = !DILocation(line: 27, column: 34, scope: !437)
!528 = !DILocation(line: 27, column: 38, scope: !437)
!529 = !DILocation(line: 27, column: 32, scope: !437)
!530 = !DILocation(line: 27, column: 26, scope: !437)
!531 = !DILocation(line: 27, column: 3, scope: !437)
!532 = !DILocation(line: 27, column: 11, scope: !437)
!533 = !DILocation(line: 27, column: 15, scope: !437)
!534 = !DILocation(line: 28, column: 40, scope: !437)
!535 = !DILocation(line: 28, column: 48, scope: !437)
!536 = !DILocation(line: 28, column: 35, scope: !437)
!537 = !DILocation(line: 28, column: 33, scope: !437)
!538 = !DILocation(line: 28, column: 66, scope: !437)
!539 = !DILocation(line: 28, column: 60, scope: !437)
!540 = !DILocation(line: 28, column: 64, scope: !437)
!541 = !DILocation(line: 28, column: 55, scope: !542)
!542 = !DILexicalBlockFile(scope: !437, file: !438, discriminator: 1)
!543 = !DILocation(line: 28, column: 53, scope: !437)
!544 = !DILocation(line: 28, column: 3, scope: !437)
!545 = !DILocation(line: 28, column: 11, scope: !437)
!546 = !DILocation(line: 28, column: 15, scope: !437)
!547 = !DILocation(line: 29, column: 3, scope: !437)
!548 = distinct !DISubprogram(name: "airy_aie", scope: !1, file: !1, line: 615, type: !549, isLocal: true, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!549 = !DISubroutineType(types: !550)
!550 = !{!51, !114, !116, !119}
!551 = !DILocalVariable(name: "x", arg: 1, scope: !548, file: !1, line: 615, type: !114)
!552 = !DILocation(line: 615, column: 23, scope: !548)
!553 = !DILocalVariable(name: "mode", arg: 2, scope: !548, file: !1, line: 615, type: !116)
!554 = !DILocation(line: 615, column: 37, scope: !548)
!555 = !DILocalVariable(name: "result", arg: 3, scope: !548, file: !1, line: 615, type: !119)
!556 = !DILocation(line: 615, column: 59, scope: !548)
!557 = !DILocalVariable(name: "sqx", scope: !548, file: !1, line: 617, type: !49)
!558 = !DILocation(line: 617, column: 10, scope: !548)
!559 = !DILocation(line: 617, column: 21, scope: !548)
!560 = !DILocation(line: 617, column: 16, scope: !548)
!561 = !DILocalVariable(name: "z", scope: !548, file: !1, line: 618, type: !49)
!562 = !DILocation(line: 618, column: 10, scope: !548)
!563 = !DILocation(line: 618, column: 21, scope: !548)
!564 = !DILocation(line: 618, column: 23, scope: !548)
!565 = !DILocation(line: 618, column: 22, scope: !548)
!566 = !DILocation(line: 618, column: 19, scope: !548)
!567 = !DILocation(line: 618, column: 28, scope: !548)
!568 = !DILocalVariable(name: "y", scope: !548, file: !1, line: 619, type: !49)
!569 = !DILocation(line: 619, column: 10, scope: !548)
!570 = !DILocation(line: 619, column: 21, scope: !548)
!571 = !DILocation(line: 619, column: 16, scope: !548)
!572 = !DILocalVariable(name: "result_c", scope: !548, file: !1, line: 620, type: !120)
!573 = !DILocation(line: 620, column: 17, scope: !548)
!574 = !DILocation(line: 621, column: 29, scope: !548)
!575 = !DILocation(line: 621, column: 32, scope: !548)
!576 = !DILocation(line: 621, column: 3, scope: !548)
!577 = !DILocation(line: 622, column: 37, scope: !548)
!578 = !DILocation(line: 622, column: 26, scope: !548)
!579 = !DILocation(line: 622, column: 42, scope: !548)
!580 = !DILocation(line: 622, column: 41, scope: !548)
!581 = !DILocation(line: 622, column: 3, scope: !548)
!582 = !DILocation(line: 622, column: 11, scope: !548)
!583 = !DILocation(line: 622, column: 15, scope: !548)
!584 = !DILocation(line: 623, column: 26, scope: !548)
!585 = !DILocation(line: 623, column: 30, scope: !548)
!586 = !DILocation(line: 623, column: 29, scope: !548)
!587 = !DILocation(line: 623, column: 57, scope: !548)
!588 = !DILocation(line: 623, column: 65, scope: !548)
!589 = !DILocation(line: 623, column: 52, scope: !548)
!590 = !DILocation(line: 623, column: 50, scope: !548)
!591 = !DILocation(line: 623, column: 32, scope: !548)
!592 = !DILocation(line: 623, column: 3, scope: !548)
!593 = !DILocation(line: 623, column: 11, scope: !548)
!594 = !DILocation(line: 623, column: 15, scope: !548)
!595 = !DILocation(line: 624, column: 3, scope: !548)
!596 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_scaled_e", scope: !1, file: !1, line: 700, type: !549, isLocal: false, isDefinition: true, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!597 = !DILocalVariable(name: "x", arg: 1, scope: !596, file: !1, line: 700, type: !114)
!598 = !DILocation(line: 700, column: 38, scope: !596)
!599 = !DILocalVariable(name: "mode", arg: 2, scope: !596, file: !1, line: 700, type: !116)
!600 = !DILocation(line: 700, column: 52, scope: !596)
!601 = !DILocalVariable(name: "result", arg: 3, scope: !596, file: !1, line: 700, type: !119)
!602 = !DILocation(line: 700, column: 74, scope: !596)
!603 = !DILocation(line: 704, column: 6, scope: !604)
!604 = distinct !DILexicalBlock(scope: !596, file: !1, line: 704, column: 6)
!605 = !DILocation(line: 704, column: 8, scope: !604)
!606 = !DILocation(line: 704, column: 6, scope: !596)
!607 = !DILocalVariable(name: "mod", scope: !608, file: !1, line: 705, type: !120)
!608 = distinct !DILexicalBlock(scope: !604, file: !1, line: 704, column: 16)
!609 = !DILocation(line: 705, column: 19, scope: !608)
!610 = !DILocalVariable(name: "theta", scope: !608, file: !1, line: 706, type: !120)
!611 = !DILocation(line: 706, column: 19, scope: !608)
!612 = !DILocalVariable(name: "cos_result", scope: !608, file: !1, line: 707, type: !120)
!613 = !DILocation(line: 707, column: 19, scope: !608)
!614 = !DILocalVariable(name: "stat_mp", scope: !608, file: !1, line: 708, type: !51)
!615 = !DILocation(line: 708, column: 9, scope: !608)
!616 = !DILocation(line: 708, column: 35, scope: !608)
!617 = !DILocation(line: 708, column: 38, scope: !608)
!618 = !DILocation(line: 708, column: 20, scope: !608)
!619 = !DILocalVariable(name: "stat_cos", scope: !608, file: !1, line: 709, type: !51)
!620 = !DILocation(line: 709, column: 9, scope: !608)
!621 = !DILocation(line: 709, column: 43, scope: !608)
!622 = !DILocation(line: 709, column: 54, scope: !608)
!623 = !DILocation(line: 709, column: 20, scope: !608)
!624 = !DILocation(line: 710, column: 24, scope: !608)
!625 = !DILocation(line: 710, column: 41, scope: !608)
!626 = !DILocation(line: 710, column: 28, scope: !608)
!627 = !DILocation(line: 710, column: 5, scope: !608)
!628 = !DILocation(line: 710, column: 13, scope: !608)
!629 = !DILocation(line: 710, column: 18, scope: !608)
!630 = !DILocation(line: 711, column: 29, scope: !608)
!631 = !DILocation(line: 711, column: 46, scope: !608)
!632 = !DILocation(line: 711, column: 33, scope: !608)
!633 = !DILocation(line: 711, column: 20, scope: !608)
!634 = !DILocation(line: 711, column: 69, scope: !608)
!635 = !DILocation(line: 711, column: 79, scope: !608)
!636 = !DILocation(line: 711, column: 73, scope: !608)
!637 = !DILocation(line: 711, column: 53, scope: !638)
!638 = !DILexicalBlockFile(scope: !608, file: !1, discriminator: 1)
!639 = !DILocation(line: 711, column: 51, scope: !608)
!640 = !DILocation(line: 711, column: 5, scope: !608)
!641 = !DILocation(line: 711, column: 13, scope: !608)
!642 = !DILocation(line: 711, column: 18, scope: !608)
!643 = !DILocation(line: 712, column: 43, scope: !608)
!644 = !DILocation(line: 712, column: 51, scope: !608)
!645 = !DILocation(line: 712, column: 38, scope: !608)
!646 = !DILocation(line: 712, column: 36, scope: !608)
!647 = !DILocation(line: 712, column: 5, scope: !608)
!648 = !DILocation(line: 712, column: 13, scope: !608)
!649 = !DILocation(line: 712, column: 17, scope: !608)
!650 = !DILocation(line: 713, column: 12, scope: !608)
!651 = !DILocation(line: 713, column: 12, scope: !638)
!652 = !DILocation(line: 713, column: 12, scope: !653)
!653 = !DILexicalBlockFile(scope: !608, file: !1, discriminator: 2)
!654 = !DILocation(line: 713, column: 12, scope: !655)
!655 = !DILexicalBlockFile(scope: !608, file: !1, discriminator: 3)
!656 = !DILocation(line: 713, column: 12, scope: !657)
!657 = !DILexicalBlockFile(scope: !608, file: !1, discriminator: 4)
!658 = !DILocation(line: 713, column: 12, scope: !659)
!659 = !DILexicalBlockFile(scope: !608, file: !1, discriminator: 5)
!660 = !DILocation(line: 713, column: 12, scope: !661)
!661 = !DILexicalBlockFile(scope: !608, file: !1, discriminator: 6)
!662 = !DILocation(line: 713, column: 5, scope: !661)
!663 = !DILocation(line: 715, column: 11, scope: !664)
!664 = distinct !DILexicalBlock(scope: !604, file: !1, line: 715, column: 11)
!665 = !DILocation(line: 715, column: 13, scope: !664)
!666 = !DILocation(line: 715, column: 11, scope: !604)
!667 = !DILocalVariable(name: "z", scope: !668, file: !1, line: 716, type: !114)
!668 = distinct !DILexicalBlock(scope: !664, file: !1, line: 715, column: 21)
!669 = !DILocation(line: 716, column: 18, scope: !668)
!670 = !DILocation(line: 716, column: 22, scope: !668)
!671 = !DILocation(line: 716, column: 24, scope: !668)
!672 = !DILocation(line: 716, column: 23, scope: !668)
!673 = !DILocation(line: 716, column: 26, scope: !668)
!674 = !DILocation(line: 716, column: 25, scope: !668)
!675 = !DILocalVariable(name: "result_c0", scope: !668, file: !1, line: 717, type: !120)
!676 = !DILocation(line: 717, column: 19, scope: !668)
!677 = !DILocalVariable(name: "result_c1", scope: !668, file: !1, line: 718, type: !120)
!678 = !DILocation(line: 718, column: 19, scope: !668)
!679 = !DILocation(line: 719, column: 31, scope: !668)
!680 = !DILocation(line: 719, column: 34, scope: !668)
!681 = !DILocation(line: 719, column: 5, scope: !668)
!682 = !DILocation(line: 720, column: 31, scope: !668)
!683 = !DILocation(line: 720, column: 34, scope: !668)
!684 = !DILocation(line: 720, column: 5, scope: !668)
!685 = !DILocation(line: 721, column: 39, scope: !668)
!686 = !DILocation(line: 721, column: 45, scope: !668)
!687 = !DILocation(line: 721, column: 65, scope: !668)
!688 = !DILocation(line: 721, column: 53, scope: !668)
!689 = !DILocation(line: 721, column: 46, scope: !668)
!690 = !DILocation(line: 721, column: 43, scope: !668)
!691 = !DILocation(line: 721, column: 26, scope: !668)
!692 = !DILocation(line: 721, column: 5, scope: !668)
!693 = !DILocation(line: 721, column: 13, scope: !668)
!694 = !DILocation(line: 721, column: 18, scope: !668)
!695 = !DILocation(line: 722, column: 30, scope: !668)
!696 = !DILocation(line: 722, column: 41, scope: !668)
!697 = !DILocation(line: 722, column: 53, scope: !668)
!698 = !DILocation(line: 722, column: 42, scope: !668)
!699 = !DILocation(line: 722, column: 36, scope: !668)
!700 = !DILocation(line: 722, column: 34, scope: !668)
!701 = !DILocation(line: 722, column: 5, scope: !668)
!702 = !DILocation(line: 722, column: 13, scope: !668)
!703 = !DILocation(line: 722, column: 18, scope: !668)
!704 = !DILocation(line: 723, column: 43, scope: !668)
!705 = !DILocation(line: 723, column: 51, scope: !668)
!706 = !DILocation(line: 723, column: 38, scope: !668)
!707 = !DILocation(line: 723, column: 36, scope: !668)
!708 = !DILocation(line: 723, column: 5, scope: !668)
!709 = !DILocation(line: 723, column: 13, scope: !668)
!710 = !DILocation(line: 723, column: 17, scope: !668)
!711 = !DILocation(line: 725, column: 8, scope: !712)
!712 = distinct !DILexicalBlock(scope: !668, file: !1, line: 725, column: 8)
!713 = !DILocation(line: 725, column: 10, scope: !712)
!714 = !DILocation(line: 725, column: 8, scope: !668)
!715 = !DILocalVariable(name: "scale", scope: !716, file: !1, line: 726, type: !114)
!716 = distinct !DILexicalBlock(scope: !712, file: !1, line: 725, column: 17)
!717 = !DILocation(line: 726, column: 20, scope: !716)
!718 = !DILocation(line: 726, column: 47, scope: !716)
!719 = !DILocation(line: 726, column: 42, scope: !716)
!720 = !DILocation(line: 726, column: 40, scope: !716)
!721 = !DILocation(line: 726, column: 28, scope: !722)
!722 = !DILexicalBlockFile(scope: !716, file: !1, discriminator: 1)
!723 = !DILocation(line: 727, column: 22, scope: !716)
!724 = !DILocation(line: 727, column: 7, scope: !716)
!725 = !DILocation(line: 727, column: 15, scope: !716)
!726 = !DILocation(line: 727, column: 19, scope: !716)
!727 = !DILocation(line: 728, column: 22, scope: !716)
!728 = !DILocation(line: 728, column: 7, scope: !716)
!729 = !DILocation(line: 728, column: 15, scope: !716)
!730 = !DILocation(line: 728, column: 19, scope: !716)
!731 = !DILocation(line: 729, column: 5, scope: !716)
!732 = !DILocation(line: 731, column: 5, scope: !668)
!733 = !DILocation(line: 734, column: 21, scope: !734)
!734 = distinct !DILexicalBlock(scope: !664, file: !1, line: 733, column: 8)
!735 = !DILocation(line: 734, column: 24, scope: !734)
!736 = !DILocation(line: 734, column: 30, scope: !734)
!737 = !DILocation(line: 734, column: 12, scope: !734)
!738 = !DILocation(line: 734, column: 5, scope: !734)
!739 = !DILocation(line: 736, column: 1, scope: !596)
!740 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_e", scope: !1, file: !1, line: 739, type: !549, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!741 = !DILocalVariable(name: "x", arg: 1, scope: !740, file: !1, line: 739, type: !114)
!742 = !DILocation(line: 739, column: 35, scope: !740)
!743 = !DILocalVariable(name: "mode", arg: 2, scope: !740, file: !1, line: 739, type: !116)
!744 = !DILocation(line: 739, column: 49, scope: !740)
!745 = !DILocalVariable(name: "result", arg: 3, scope: !740, file: !1, line: 739, type: !119)
!746 = !DILocation(line: 739, column: 71, scope: !740)
!747 = !DILocation(line: 742, column: 6, scope: !748)
!748 = distinct !DILexicalBlock(scope: !740, file: !1, line: 742, column: 6)
!749 = !DILocation(line: 742, column: 8, scope: !748)
!750 = !DILocation(line: 742, column: 6, scope: !740)
!751 = !DILocalVariable(name: "mod", scope: !752, file: !1, line: 743, type: !120)
!752 = distinct !DILexicalBlock(scope: !748, file: !1, line: 742, column: 16)
!753 = !DILocation(line: 743, column: 19, scope: !752)
!754 = !DILocalVariable(name: "theta", scope: !752, file: !1, line: 744, type: !120)
!755 = !DILocation(line: 744, column: 19, scope: !752)
!756 = !DILocalVariable(name: "sin_result", scope: !752, file: !1, line: 745, type: !120)
!757 = !DILocation(line: 745, column: 19, scope: !752)
!758 = !DILocalVariable(name: "stat_mp", scope: !752, file: !1, line: 746, type: !51)
!759 = !DILocation(line: 746, column: 9, scope: !752)
!760 = !DILocation(line: 746, column: 35, scope: !752)
!761 = !DILocation(line: 746, column: 38, scope: !752)
!762 = !DILocation(line: 746, column: 20, scope: !752)
!763 = !DILocalVariable(name: "stat_sin", scope: !752, file: !1, line: 747, type: !51)
!764 = !DILocation(line: 747, column: 9, scope: !752)
!765 = !DILocation(line: 747, column: 43, scope: !752)
!766 = !DILocation(line: 747, column: 54, scope: !752)
!767 = !DILocation(line: 747, column: 20, scope: !752)
!768 = !DILocation(line: 748, column: 24, scope: !752)
!769 = !DILocation(line: 748, column: 41, scope: !752)
!770 = !DILocation(line: 748, column: 28, scope: !752)
!771 = !DILocation(line: 748, column: 5, scope: !752)
!772 = !DILocation(line: 748, column: 13, scope: !752)
!773 = !DILocation(line: 748, column: 18, scope: !752)
!774 = !DILocation(line: 749, column: 29, scope: !752)
!775 = !DILocation(line: 749, column: 46, scope: !752)
!776 = !DILocation(line: 749, column: 33, scope: !752)
!777 = !DILocation(line: 749, column: 20, scope: !752)
!778 = !DILocation(line: 749, column: 69, scope: !752)
!779 = !DILocation(line: 749, column: 79, scope: !752)
!780 = !DILocation(line: 749, column: 73, scope: !752)
!781 = !DILocation(line: 749, column: 53, scope: !782)
!782 = !DILexicalBlockFile(scope: !752, file: !1, discriminator: 1)
!783 = !DILocation(line: 749, column: 51, scope: !752)
!784 = !DILocation(line: 749, column: 5, scope: !752)
!785 = !DILocation(line: 749, column: 13, scope: !752)
!786 = !DILocation(line: 749, column: 18, scope: !752)
!787 = !DILocation(line: 750, column: 43, scope: !752)
!788 = !DILocation(line: 750, column: 51, scope: !752)
!789 = !DILocation(line: 750, column: 38, scope: !752)
!790 = !DILocation(line: 750, column: 36, scope: !752)
!791 = !DILocation(line: 750, column: 5, scope: !752)
!792 = !DILocation(line: 750, column: 13, scope: !752)
!793 = !DILocation(line: 750, column: 17, scope: !752)
!794 = !DILocation(line: 751, column: 12, scope: !752)
!795 = !DILocation(line: 751, column: 12, scope: !782)
!796 = !DILocation(line: 751, column: 12, scope: !797)
!797 = !DILexicalBlockFile(scope: !752, file: !1, discriminator: 2)
!798 = !DILocation(line: 751, column: 12, scope: !799)
!799 = !DILexicalBlockFile(scope: !752, file: !1, discriminator: 3)
!800 = !DILocation(line: 751, column: 12, scope: !801)
!801 = !DILexicalBlockFile(scope: !752, file: !1, discriminator: 4)
!802 = !DILocation(line: 751, column: 12, scope: !803)
!803 = !DILexicalBlockFile(scope: !752, file: !1, discriminator: 5)
!804 = !DILocation(line: 751, column: 12, scope: !805)
!805 = !DILexicalBlockFile(scope: !752, file: !1, discriminator: 6)
!806 = !DILocation(line: 751, column: 5, scope: !805)
!807 = !DILocation(line: 753, column: 11, scope: !808)
!808 = distinct !DILexicalBlock(scope: !748, file: !1, line: 753, column: 11)
!809 = !DILocation(line: 753, column: 13, scope: !808)
!810 = !DILocation(line: 753, column: 11, scope: !748)
!811 = !DILocalVariable(name: "z", scope: !812, file: !1, line: 754, type: !114)
!812 = distinct !DILexicalBlock(scope: !808, file: !1, line: 753, column: 20)
!813 = !DILocation(line: 754, column: 18, scope: !812)
!814 = !DILocation(line: 754, column: 22, scope: !812)
!815 = !DILocation(line: 754, column: 24, scope: !812)
!816 = !DILocation(line: 754, column: 23, scope: !812)
!817 = !DILocation(line: 754, column: 26, scope: !812)
!818 = !DILocation(line: 754, column: 25, scope: !812)
!819 = !DILocalVariable(name: "result_c0", scope: !812, file: !1, line: 755, type: !120)
!820 = !DILocation(line: 755, column: 19, scope: !812)
!821 = !DILocalVariable(name: "result_c1", scope: !812, file: !1, line: 756, type: !120)
!822 = !DILocation(line: 756, column: 19, scope: !812)
!823 = !DILocation(line: 757, column: 31, scope: !812)
!824 = !DILocation(line: 757, column: 34, scope: !812)
!825 = !DILocation(line: 757, column: 5, scope: !812)
!826 = !DILocation(line: 758, column: 31, scope: !812)
!827 = !DILocation(line: 758, column: 34, scope: !812)
!828 = !DILocation(line: 758, column: 5, scope: !812)
!829 = !DILocation(line: 759, column: 38, scope: !812)
!830 = !DILocation(line: 759, column: 26, scope: !812)
!831 = !DILocation(line: 759, column: 44, scope: !812)
!832 = !DILocation(line: 759, column: 66, scope: !812)
!833 = !DILocation(line: 759, column: 54, scope: !812)
!834 = !DILocation(line: 759, column: 45, scope: !812)
!835 = !DILocation(line: 759, column: 42, scope: !812)
!836 = !DILocation(line: 759, column: 5, scope: !812)
!837 = !DILocation(line: 759, column: 13, scope: !812)
!838 = !DILocation(line: 759, column: 18, scope: !812)
!839 = !DILocation(line: 760, column: 30, scope: !812)
!840 = !DILocation(line: 760, column: 41, scope: !812)
!841 = !DILocation(line: 760, column: 55, scope: !812)
!842 = !DILocation(line: 760, column: 43, scope: !812)
!843 = !DILocation(line: 760, column: 36, scope: !812)
!844 = !DILocation(line: 760, column: 34, scope: !812)
!845 = !DILocation(line: 760, column: 5, scope: !812)
!846 = !DILocation(line: 760, column: 13, scope: !812)
!847 = !DILocation(line: 760, column: 18, scope: !812)
!848 = !DILocation(line: 761, column: 43, scope: !812)
!849 = !DILocation(line: 761, column: 51, scope: !812)
!850 = !DILocation(line: 761, column: 38, scope: !812)
!851 = !DILocation(line: 761, column: 36, scope: !812)
!852 = !DILocation(line: 761, column: 5, scope: !812)
!853 = !DILocation(line: 761, column: 13, scope: !812)
!854 = !DILocation(line: 761, column: 17, scope: !812)
!855 = !DILocation(line: 762, column: 5, scope: !812)
!856 = !DILocation(line: 764, column: 11, scope: !857)
!857 = distinct !DILexicalBlock(scope: !808, file: !1, line: 764, column: 11)
!858 = !DILocation(line: 764, column: 13, scope: !857)
!859 = !DILocation(line: 764, column: 11, scope: !808)
!860 = !DILocalVariable(name: "z", scope: !861, file: !1, line: 765, type: !114)
!861 = distinct !DILexicalBlock(scope: !857, file: !1, line: 764, column: 21)
!862 = !DILocation(line: 765, column: 18, scope: !861)
!863 = !DILocation(line: 765, column: 27, scope: !861)
!864 = !DILocation(line: 765, column: 26, scope: !861)
!865 = !DILocation(line: 765, column: 29, scope: !861)
!866 = !DILocation(line: 765, column: 28, scope: !861)
!867 = !DILocation(line: 765, column: 31, scope: !861)
!868 = !DILocation(line: 765, column: 30, scope: !861)
!869 = !DILocation(line: 765, column: 33, scope: !861)
!870 = !DILocation(line: 765, column: 39, scope: !861)
!871 = !DILocalVariable(name: "result_c0", scope: !861, file: !1, line: 766, type: !120)
!872 = !DILocation(line: 766, column: 19, scope: !861)
!873 = !DILocalVariable(name: "result_c1", scope: !861, file: !1, line: 767, type: !120)
!874 = !DILocation(line: 767, column: 19, scope: !861)
!875 = !DILocation(line: 768, column: 32, scope: !861)
!876 = !DILocation(line: 768, column: 35, scope: !861)
!877 = !DILocation(line: 768, column: 5, scope: !861)
!878 = !DILocation(line: 769, column: 32, scope: !861)
!879 = !DILocation(line: 769, column: 35, scope: !861)
!880 = !DILocation(line: 769, column: 5, scope: !861)
!881 = !DILocation(line: 770, column: 38, scope: !861)
!882 = !DILocation(line: 770, column: 26, scope: !861)
!883 = !DILocation(line: 770, column: 44, scope: !861)
!884 = !DILocation(line: 770, column: 65, scope: !861)
!885 = !DILocation(line: 770, column: 53, scope: !861)
!886 = !DILocation(line: 770, column: 45, scope: !861)
!887 = !DILocation(line: 770, column: 42, scope: !861)
!888 = !DILocation(line: 770, column: 5, scope: !861)
!889 = !DILocation(line: 770, column: 13, scope: !861)
!890 = !DILocation(line: 770, column: 18, scope: !861)
!891 = !DILocation(line: 771, column: 30, scope: !861)
!892 = !DILocation(line: 771, column: 41, scope: !861)
!893 = !DILocation(line: 771, column: 55, scope: !861)
!894 = !DILocation(line: 771, column: 43, scope: !861)
!895 = !DILocation(line: 771, column: 36, scope: !861)
!896 = !DILocation(line: 771, column: 34, scope: !861)
!897 = !DILocation(line: 771, column: 5, scope: !861)
!898 = !DILocation(line: 771, column: 13, scope: !861)
!899 = !DILocation(line: 771, column: 18, scope: !861)
!900 = !DILocation(line: 772, column: 43, scope: !861)
!901 = !DILocation(line: 772, column: 51, scope: !861)
!902 = !DILocation(line: 772, column: 38, scope: !861)
!903 = !DILocation(line: 772, column: 36, scope: !861)
!904 = !DILocation(line: 772, column: 5, scope: !861)
!905 = !DILocation(line: 772, column: 13, scope: !861)
!906 = !DILocation(line: 772, column: 17, scope: !861)
!907 = !DILocation(line: 773, column: 5, scope: !861)
!908 = !DILocalVariable(name: "y", scope: !909, file: !1, line: 776, type: !114)
!909 = distinct !DILexicalBlock(scope: !857, file: !1, line: 775, column: 8)
!910 = !DILocation(line: 776, column: 18, scope: !909)
!911 = !DILocation(line: 776, column: 26, scope: !909)
!912 = !DILocation(line: 776, column: 25, scope: !909)
!913 = !DILocation(line: 776, column: 33, scope: !909)
!914 = !DILocation(line: 776, column: 28, scope: !909)
!915 = !DILocation(line: 776, column: 27, scope: !909)
!916 = !DILocation(line: 776, column: 35, scope: !909)
!917 = !DILocalVariable(name: "s", scope: !909, file: !1, line: 777, type: !114)
!918 = !DILocation(line: 777, column: 18, scope: !909)
!919 = !DILocation(line: 777, column: 26, scope: !909)
!920 = !DILocation(line: 777, column: 22, scope: !909)
!921 = !DILocation(line: 779, column: 8, scope: !922)
!922 = distinct !DILexicalBlock(scope: !909, file: !1, line: 779, column: 8)
!923 = !DILocation(line: 779, column: 10, scope: !922)
!924 = !DILocation(line: 779, column: 8, scope: !909)
!925 = !DILocation(line: 780, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !1, line: 779, column: 35)
!927 = distinct !{!927, !925}
!928 = !DILocation(line: 780, column: 7, scope: !929)
!929 = !DILexicalBlockFile(scope: !930, file: !1, discriminator: 1)
!930 = distinct !DILexicalBlock(scope: !926, file: !1, line: 780, column: 7)
!931 = distinct !{!931, !932}
!932 = !DILocation(line: 780, column: 7, scope: !930)
!933 = !DILocation(line: 780, column: 7, scope: !934)
!934 = !DILexicalBlockFile(scope: !935, file: !1, discriminator: 2)
!935 = distinct !DILexicalBlock(scope: !930, file: !1, line: 780, column: 7)
!936 = !DILocation(line: 780, column: 7, scope: !937)
!937 = !DILexicalBlockFile(scope: !930, file: !1, discriminator: 3)
!938 = !DILocation(line: 781, column: 5, scope: !926)
!939 = !DILocalVariable(name: "result_bie", scope: !940, file: !1, line: 783, type: !120)
!940 = distinct !DILexicalBlock(scope: !922, file: !1, line: 782, column: 10)
!941 = !DILocation(line: 783, column: 21, scope: !940)
!942 = !DILocalVariable(name: "stat_bie", scope: !940, file: !1, line: 784, type: !51)
!943 = !DILocation(line: 784, column: 11, scope: !940)
!944 = !DILocation(line: 784, column: 31, scope: !940)
!945 = !DILocation(line: 784, column: 34, scope: !940)
!946 = !DILocation(line: 784, column: 22, scope: !940)
!947 = !DILocation(line: 785, column: 33, scope: !940)
!948 = !DILocation(line: 785, column: 39, scope: !940)
!949 = !DILocation(line: 785, column: 37, scope: !940)
!950 = !DILocation(line: 785, column: 7, scope: !940)
!951 = !DILocation(line: 785, column: 15, scope: !940)
!952 = !DILocation(line: 785, column: 20, scope: !940)
!953 = !DILocation(line: 786, column: 33, scope: !940)
!954 = !DILocation(line: 786, column: 39, scope: !940)
!955 = !DILocation(line: 786, column: 37, scope: !940)
!956 = !DILocation(line: 786, column: 52, scope: !940)
!957 = !DILocation(line: 786, column: 51, scope: !940)
!958 = !DILocation(line: 786, column: 75, scope: !940)
!959 = !DILocation(line: 786, column: 83, scope: !940)
!960 = !DILocation(line: 786, column: 73, scope: !940)
!961 = !DILocation(line: 786, column: 54, scope: !940)
!962 = !DILocation(line: 786, column: 43, scope: !940)
!963 = !DILocation(line: 786, column: 41, scope: !940)
!964 = !DILocation(line: 786, column: 7, scope: !940)
!965 = !DILocation(line: 786, column: 15, scope: !940)
!966 = !DILocation(line: 786, column: 20, scope: !940)
!967 = !DILocation(line: 787, column: 45, scope: !940)
!968 = !DILocation(line: 787, column: 53, scope: !940)
!969 = !DILocation(line: 787, column: 40, scope: !940)
!970 = !DILocation(line: 787, column: 38, scope: !940)
!971 = !DILocation(line: 787, column: 7, scope: !940)
!972 = !DILocation(line: 787, column: 15, scope: !940)
!973 = !DILocation(line: 787, column: 19, scope: !940)
!974 = !DILocation(line: 788, column: 14, scope: !940)
!975 = !DILocation(line: 788, column: 7, scope: !940)
!976 = !DILocation(line: 791, column: 1, scope: !740)
!977 = distinct !DISubprogram(name: "airy_bie", scope: !1, file: !1, line: 628, type: !549, isLocal: true, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!978 = !DILocalVariable(name: "x", arg: 1, scope: !977, file: !1, line: 628, type: !114)
!979 = !DILocation(line: 628, column: 34, scope: !977)
!980 = !DILocalVariable(name: "mode", arg: 2, scope: !977, file: !1, line: 628, type: !116)
!981 = !DILocation(line: 628, column: 48, scope: !977)
!982 = !DILocalVariable(name: "result", arg: 3, scope: !977, file: !1, line: 628, type: !119)
!983 = !DILocation(line: 628, column: 70, scope: !977)
!984 = !DILocalVariable(name: "ATR", scope: !977, file: !1, line: 630, type: !114)
!985 = !DILocation(line: 630, column: 16, scope: !977)
!986 = !DILocalVariable(name: "BTR", scope: !977, file: !1, line: 631, type: !114)
!987 = !DILocation(line: 631, column: 16, scope: !977)
!988 = !DILocation(line: 633, column: 6, scope: !989)
!989 = distinct !DILexicalBlock(scope: !977, file: !1, line: 633, column: 6)
!990 = !DILocation(line: 633, column: 8, scope: !989)
!991 = !DILocation(line: 633, column: 6, scope: !977)
!992 = !DILocalVariable(name: "sqx", scope: !993, file: !1, line: 634, type: !49)
!993 = distinct !DILexicalBlock(scope: !989, file: !1, line: 633, column: 15)
!994 = !DILocation(line: 634, column: 12, scope: !993)
!995 = !DILocation(line: 634, column: 23, scope: !993)
!996 = !DILocation(line: 634, column: 18, scope: !993)
!997 = !DILocalVariable(name: "z", scope: !993, file: !1, line: 635, type: !49)
!998 = !DILocation(line: 635, column: 12, scope: !993)
!999 = !DILocation(line: 635, column: 23, scope: !993)
!1000 = !DILocation(line: 635, column: 25, scope: !993)
!1001 = !DILocation(line: 635, column: 24, scope: !993)
!1002 = !DILocation(line: 635, column: 21, scope: !993)
!1003 = !DILocation(line: 635, column: 30, scope: !993)
!1004 = !DILocalVariable(name: "y", scope: !993, file: !1, line: 636, type: !49)
!1005 = !DILocation(line: 636, column: 12, scope: !993)
!1006 = !DILocation(line: 636, column: 23, scope: !993)
!1007 = !DILocation(line: 636, column: 18, scope: !993)
!1008 = !DILocalVariable(name: "result_c", scope: !993, file: !1, line: 637, type: !120)
!1009 = !DILocation(line: 637, column: 19, scope: !993)
!1010 = !DILocation(line: 638, column: 31, scope: !993)
!1011 = !DILocation(line: 638, column: 34, scope: !993)
!1012 = !DILocation(line: 638, column: 5, scope: !993)
!1013 = !DILocation(line: 639, column: 37, scope: !993)
!1014 = !DILocation(line: 639, column: 26, scope: !993)
!1015 = !DILocation(line: 639, column: 42, scope: !993)
!1016 = !DILocation(line: 639, column: 41, scope: !993)
!1017 = !DILocation(line: 639, column: 5, scope: !993)
!1018 = !DILocation(line: 639, column: 13, scope: !993)
!1019 = !DILocation(line: 639, column: 17, scope: !993)
!1020 = !DILocation(line: 640, column: 28, scope: !993)
!1021 = !DILocation(line: 640, column: 32, scope: !993)
!1022 = !DILocation(line: 640, column: 31, scope: !993)
!1023 = !DILocation(line: 640, column: 59, scope: !993)
!1024 = !DILocation(line: 640, column: 67, scope: !993)
!1025 = !DILocation(line: 640, column: 54, scope: !993)
!1026 = !DILocation(line: 640, column: 52, scope: !993)
!1027 = !DILocation(line: 640, column: 34, scope: !993)
!1028 = !DILocation(line: 640, column: 5, scope: !993)
!1029 = !DILocation(line: 640, column: 13, scope: !993)
!1030 = !DILocation(line: 640, column: 17, scope: !993)
!1031 = !DILocation(line: 641, column: 3, scope: !993)
!1032 = !DILocalVariable(name: "sqx", scope: !1033, file: !1, line: 643, type: !49)
!1033 = distinct !DILexicalBlock(scope: !989, file: !1, line: 642, column: 8)
!1034 = !DILocation(line: 643, column: 12, scope: !1033)
!1035 = !DILocation(line: 643, column: 23, scope: !1033)
!1036 = !DILocation(line: 643, column: 18, scope: !1033)
!1037 = !DILocalVariable(name: "z", scope: !1033, file: !1, line: 644, type: !49)
!1038 = !DILocation(line: 644, column: 12, scope: !1033)
!1039 = !DILocation(line: 644, column: 24, scope: !1033)
!1040 = !DILocation(line: 644, column: 26, scope: !1033)
!1041 = !DILocation(line: 644, column: 25, scope: !1033)
!1042 = !DILocation(line: 644, column: 22, scope: !1033)
!1043 = !DILocation(line: 644, column: 31, scope: !1033)
!1044 = !DILocalVariable(name: "y", scope: !1033, file: !1, line: 645, type: !49)
!1045 = !DILocation(line: 645, column: 12, scope: !1033)
!1046 = !DILocation(line: 645, column: 23, scope: !1033)
!1047 = !DILocation(line: 645, column: 18, scope: !1033)
!1048 = !DILocalVariable(name: "result_c", scope: !1033, file: !1, line: 646, type: !120)
!1049 = !DILocation(line: 646, column: 19, scope: !1033)
!1050 = !DILocation(line: 647, column: 32, scope: !1033)
!1051 = !DILocation(line: 647, column: 35, scope: !1033)
!1052 = !DILocation(line: 647, column: 5, scope: !1033)
!1053 = !DILocation(line: 648, column: 37, scope: !1033)
!1054 = !DILocation(line: 648, column: 26, scope: !1033)
!1055 = !DILocation(line: 648, column: 42, scope: !1033)
!1056 = !DILocation(line: 648, column: 41, scope: !1033)
!1057 = !DILocation(line: 648, column: 5, scope: !1033)
!1058 = !DILocation(line: 648, column: 13, scope: !1033)
!1059 = !DILocation(line: 648, column: 17, scope: !1033)
!1060 = !DILocation(line: 649, column: 28, scope: !1033)
!1061 = !DILocation(line: 649, column: 32, scope: !1033)
!1062 = !DILocation(line: 649, column: 31, scope: !1033)
!1063 = !DILocation(line: 649, column: 59, scope: !1033)
!1064 = !DILocation(line: 649, column: 67, scope: !1033)
!1065 = !DILocation(line: 649, column: 54, scope: !1033)
!1066 = !DILocation(line: 649, column: 52, scope: !1033)
!1067 = !DILocation(line: 649, column: 34, scope: !1033)
!1068 = !DILocation(line: 649, column: 5, scope: !1033)
!1069 = !DILocation(line: 649, column: 13, scope: !1033)
!1070 = !DILocation(line: 649, column: 17, scope: !1033)
!1071 = !DILocation(line: 652, column: 3, scope: !977)
!1072 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_scaled_e", scope: !1, file: !1, line: 795, type: !549, isLocal: false, isDefinition: true, scopeLine: 796, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!1073 = !DILocalVariable(name: "x", arg: 1, scope: !1072, file: !1, line: 795, type: !114)
!1074 = !DILocation(line: 795, column: 38, scope: !1072)
!1075 = !DILocalVariable(name: "mode", arg: 2, scope: !1072, file: !1, line: 795, type: !116)
!1076 = !DILocation(line: 795, column: 52, scope: !1072)
!1077 = !DILocalVariable(name: "result", arg: 3, scope: !1072, file: !1, line: 795, type: !119)
!1078 = !DILocation(line: 795, column: 74, scope: !1072)
!1079 = !DILocation(line: 799, column: 6, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 799, column: 6)
!1081 = !DILocation(line: 799, column: 8, scope: !1080)
!1082 = !DILocation(line: 799, column: 6, scope: !1072)
!1083 = !DILocalVariable(name: "mod", scope: !1084, file: !1, line: 800, type: !120)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 799, column: 16)
!1085 = !DILocation(line: 800, column: 19, scope: !1084)
!1086 = !DILocalVariable(name: "theta", scope: !1084, file: !1, line: 801, type: !120)
!1087 = !DILocation(line: 801, column: 19, scope: !1084)
!1088 = !DILocalVariable(name: "sin_result", scope: !1084, file: !1, line: 802, type: !120)
!1089 = !DILocation(line: 802, column: 19, scope: !1084)
!1090 = !DILocalVariable(name: "stat_mp", scope: !1084, file: !1, line: 803, type: !51)
!1091 = !DILocation(line: 803, column: 9, scope: !1084)
!1092 = !DILocation(line: 803, column: 35, scope: !1084)
!1093 = !DILocation(line: 803, column: 38, scope: !1084)
!1094 = !DILocation(line: 803, column: 20, scope: !1084)
!1095 = !DILocalVariable(name: "stat_sin", scope: !1084, file: !1, line: 804, type: !51)
!1096 = !DILocation(line: 804, column: 9, scope: !1084)
!1097 = !DILocation(line: 804, column: 43, scope: !1084)
!1098 = !DILocation(line: 804, column: 54, scope: !1084)
!1099 = !DILocation(line: 804, column: 20, scope: !1084)
!1100 = !DILocation(line: 805, column: 24, scope: !1084)
!1101 = !DILocation(line: 805, column: 41, scope: !1084)
!1102 = !DILocation(line: 805, column: 28, scope: !1084)
!1103 = !DILocation(line: 805, column: 5, scope: !1084)
!1104 = !DILocation(line: 805, column: 13, scope: !1084)
!1105 = !DILocation(line: 805, column: 18, scope: !1084)
!1106 = !DILocation(line: 806, column: 29, scope: !1084)
!1107 = !DILocation(line: 806, column: 46, scope: !1084)
!1108 = !DILocation(line: 806, column: 33, scope: !1084)
!1109 = !DILocation(line: 806, column: 20, scope: !1084)
!1110 = !DILocation(line: 806, column: 69, scope: !1084)
!1111 = !DILocation(line: 806, column: 79, scope: !1084)
!1112 = !DILocation(line: 806, column: 73, scope: !1084)
!1113 = !DILocation(line: 806, column: 53, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 1)
!1115 = !DILocation(line: 806, column: 51, scope: !1084)
!1116 = !DILocation(line: 806, column: 5, scope: !1084)
!1117 = !DILocation(line: 806, column: 13, scope: !1084)
!1118 = !DILocation(line: 806, column: 18, scope: !1084)
!1119 = !DILocation(line: 807, column: 43, scope: !1084)
!1120 = !DILocation(line: 807, column: 51, scope: !1084)
!1121 = !DILocation(line: 807, column: 38, scope: !1084)
!1122 = !DILocation(line: 807, column: 36, scope: !1084)
!1123 = !DILocation(line: 807, column: 5, scope: !1084)
!1124 = !DILocation(line: 807, column: 13, scope: !1084)
!1125 = !DILocation(line: 807, column: 17, scope: !1084)
!1126 = !DILocation(line: 808, column: 12, scope: !1084)
!1127 = !DILocation(line: 808, column: 12, scope: !1114)
!1128 = !DILocation(line: 808, column: 12, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 2)
!1130 = !DILocation(line: 808, column: 12, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 3)
!1132 = !DILocation(line: 808, column: 12, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 4)
!1134 = !DILocation(line: 808, column: 12, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 5)
!1136 = !DILocation(line: 808, column: 12, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1084, file: !1, discriminator: 6)
!1138 = !DILocation(line: 808, column: 5, scope: !1137)
!1139 = !DILocation(line: 810, column: 11, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 810, column: 11)
!1141 = !DILocation(line: 810, column: 13, scope: !1140)
!1142 = !DILocation(line: 810, column: 11, scope: !1080)
!1143 = !DILocalVariable(name: "z", scope: !1144, file: !1, line: 811, type: !114)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 810, column: 20)
!1145 = !DILocation(line: 811, column: 18, scope: !1144)
!1146 = !DILocation(line: 811, column: 22, scope: !1144)
!1147 = !DILocation(line: 811, column: 24, scope: !1144)
!1148 = !DILocation(line: 811, column: 23, scope: !1144)
!1149 = !DILocation(line: 811, column: 26, scope: !1144)
!1150 = !DILocation(line: 811, column: 25, scope: !1144)
!1151 = !DILocalVariable(name: "result_c0", scope: !1144, file: !1, line: 812, type: !120)
!1152 = !DILocation(line: 812, column: 19, scope: !1144)
!1153 = !DILocalVariable(name: "result_c1", scope: !1144, file: !1, line: 813, type: !120)
!1154 = !DILocation(line: 813, column: 19, scope: !1144)
!1155 = !DILocation(line: 814, column: 31, scope: !1144)
!1156 = !DILocation(line: 814, column: 34, scope: !1144)
!1157 = !DILocation(line: 814, column: 5, scope: !1144)
!1158 = !DILocation(line: 815, column: 31, scope: !1144)
!1159 = !DILocation(line: 815, column: 34, scope: !1144)
!1160 = !DILocation(line: 815, column: 5, scope: !1144)
!1161 = !DILocation(line: 816, column: 38, scope: !1144)
!1162 = !DILocation(line: 816, column: 26, scope: !1144)
!1163 = !DILocation(line: 816, column: 44, scope: !1144)
!1164 = !DILocation(line: 816, column: 66, scope: !1144)
!1165 = !DILocation(line: 816, column: 54, scope: !1144)
!1166 = !DILocation(line: 816, column: 45, scope: !1144)
!1167 = !DILocation(line: 816, column: 42, scope: !1144)
!1168 = !DILocation(line: 816, column: 5, scope: !1144)
!1169 = !DILocation(line: 816, column: 13, scope: !1144)
!1170 = !DILocation(line: 816, column: 18, scope: !1144)
!1171 = !DILocation(line: 817, column: 30, scope: !1144)
!1172 = !DILocation(line: 817, column: 41, scope: !1144)
!1173 = !DILocation(line: 817, column: 55, scope: !1144)
!1174 = !DILocation(line: 817, column: 43, scope: !1144)
!1175 = !DILocation(line: 817, column: 36, scope: !1144)
!1176 = !DILocation(line: 817, column: 34, scope: !1144)
!1177 = !DILocation(line: 817, column: 5, scope: !1144)
!1178 = !DILocation(line: 817, column: 13, scope: !1144)
!1179 = !DILocation(line: 817, column: 18, scope: !1144)
!1180 = !DILocation(line: 818, column: 43, scope: !1144)
!1181 = !DILocation(line: 818, column: 51, scope: !1144)
!1182 = !DILocation(line: 818, column: 38, scope: !1144)
!1183 = !DILocation(line: 818, column: 36, scope: !1144)
!1184 = !DILocation(line: 818, column: 5, scope: !1144)
!1185 = !DILocation(line: 818, column: 13, scope: !1144)
!1186 = !DILocation(line: 818, column: 17, scope: !1144)
!1187 = !DILocation(line: 819, column: 8, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 819, column: 8)
!1189 = !DILocation(line: 819, column: 10, scope: !1188)
!1190 = !DILocation(line: 819, column: 8, scope: !1144)
!1191 = !DILocalVariable(name: "scale", scope: !1192, file: !1, line: 820, type: !114)
!1192 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 819, column: 17)
!1193 = !DILocation(line: 820, column: 20, scope: !1192)
!1194 = !DILocation(line: 820, column: 48, scope: !1192)
!1195 = !DILocation(line: 820, column: 43, scope: !1192)
!1196 = !DILocation(line: 820, column: 41, scope: !1192)
!1197 = !DILocation(line: 820, column: 28, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1192, file: !1, discriminator: 1)
!1199 = !DILocation(line: 821, column: 22, scope: !1192)
!1200 = !DILocation(line: 821, column: 7, scope: !1192)
!1201 = !DILocation(line: 821, column: 15, scope: !1192)
!1202 = !DILocation(line: 821, column: 19, scope: !1192)
!1203 = !DILocation(line: 822, column: 22, scope: !1192)
!1204 = !DILocation(line: 822, column: 7, scope: !1192)
!1205 = !DILocation(line: 822, column: 15, scope: !1192)
!1206 = !DILocation(line: 822, column: 19, scope: !1192)
!1207 = !DILocation(line: 823, column: 5, scope: !1192)
!1208 = !DILocation(line: 824, column: 5, scope: !1144)
!1209 = !DILocation(line: 826, column: 11, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 826, column: 11)
!1211 = !DILocation(line: 826, column: 13, scope: !1210)
!1212 = !DILocation(line: 826, column: 11, scope: !1140)
!1213 = !DILocalVariable(name: "x3", scope: !1214, file: !1, line: 827, type: !114)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 826, column: 21)
!1215 = !DILocation(line: 827, column: 18, scope: !1214)
!1216 = !DILocation(line: 827, column: 23, scope: !1214)
!1217 = !DILocation(line: 827, column: 25, scope: !1214)
!1218 = !DILocation(line: 827, column: 24, scope: !1214)
!1219 = !DILocation(line: 827, column: 27, scope: !1214)
!1220 = !DILocation(line: 827, column: 26, scope: !1214)
!1221 = !DILocalVariable(name: "z", scope: !1214, file: !1, line: 828, type: !114)
!1222 = !DILocation(line: 828, column: 18, scope: !1214)
!1223 = !DILocation(line: 828, column: 28, scope: !1214)
!1224 = !DILocation(line: 828, column: 27, scope: !1214)
!1225 = !DILocation(line: 828, column: 31, scope: !1214)
!1226 = !DILocation(line: 828, column: 37, scope: !1214)
!1227 = !DILocalVariable(name: "s", scope: !1214, file: !1, line: 829, type: !114)
!1228 = !DILocation(line: 829, column: 18, scope: !1214)
!1229 = !DILocation(line: 829, column: 43, scope: !1214)
!1230 = !DILocation(line: 829, column: 38, scope: !1214)
!1231 = !DILocation(line: 829, column: 36, scope: !1214)
!1232 = !DILocation(line: 829, column: 23, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1214, file: !1, discriminator: 1)
!1234 = !DILocalVariable(name: "result_c0", scope: !1214, file: !1, line: 830, type: !120)
!1235 = !DILocation(line: 830, column: 19, scope: !1214)
!1236 = !DILocalVariable(name: "result_c1", scope: !1214, file: !1, line: 831, type: !120)
!1237 = !DILocation(line: 831, column: 19, scope: !1214)
!1238 = !DILocation(line: 832, column: 32, scope: !1214)
!1239 = !DILocation(line: 832, column: 35, scope: !1214)
!1240 = !DILocation(line: 832, column: 5, scope: !1214)
!1241 = !DILocation(line: 833, column: 32, scope: !1214)
!1242 = !DILocation(line: 833, column: 35, scope: !1214)
!1243 = !DILocation(line: 833, column: 5, scope: !1214)
!1244 = !DILocation(line: 834, column: 20, scope: !1214)
!1245 = !DILocation(line: 834, column: 43, scope: !1214)
!1246 = !DILocation(line: 834, column: 31, scope: !1214)
!1247 = !DILocation(line: 834, column: 49, scope: !1214)
!1248 = !DILocation(line: 834, column: 70, scope: !1214)
!1249 = !DILocation(line: 834, column: 58, scope: !1214)
!1250 = !DILocation(line: 834, column: 50, scope: !1214)
!1251 = !DILocation(line: 834, column: 47, scope: !1214)
!1252 = !DILocation(line: 834, column: 22, scope: !1214)
!1253 = !DILocation(line: 834, column: 5, scope: !1214)
!1254 = !DILocation(line: 834, column: 13, scope: !1214)
!1255 = !DILocation(line: 834, column: 18, scope: !1214)
!1256 = !DILocation(line: 835, column: 20, scope: !1214)
!1257 = !DILocation(line: 835, column: 35, scope: !1214)
!1258 = !DILocation(line: 835, column: 46, scope: !1214)
!1259 = !DILocation(line: 835, column: 60, scope: !1214)
!1260 = !DILocation(line: 835, column: 48, scope: !1214)
!1261 = !DILocation(line: 835, column: 41, scope: !1214)
!1262 = !DILocation(line: 835, column: 39, scope: !1214)
!1263 = !DILocation(line: 835, column: 22, scope: !1214)
!1264 = !DILocation(line: 835, column: 5, scope: !1214)
!1265 = !DILocation(line: 835, column: 13, scope: !1214)
!1266 = !DILocation(line: 835, column: 18, scope: !1214)
!1267 = !DILocation(line: 836, column: 43, scope: !1214)
!1268 = !DILocation(line: 836, column: 51, scope: !1214)
!1269 = !DILocation(line: 836, column: 38, scope: !1214)
!1270 = !DILocation(line: 836, column: 36, scope: !1214)
!1271 = !DILocation(line: 836, column: 5, scope: !1214)
!1272 = !DILocation(line: 836, column: 13, scope: !1214)
!1273 = !DILocation(line: 836, column: 17, scope: !1214)
!1274 = !DILocation(line: 837, column: 5, scope: !1214)
!1275 = !DILocation(line: 840, column: 21, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 839, column: 8)
!1277 = !DILocation(line: 840, column: 24, scope: !1276)
!1278 = !DILocation(line: 840, column: 30, scope: !1276)
!1279 = !DILocation(line: 840, column: 12, scope: !1276)
!1280 = !DILocation(line: 840, column: 5, scope: !1276)
!1281 = !DILocation(line: 842, column: 1, scope: !1072)
!1282 = distinct !DISubprogram(name: "gsl_sf_airy_Ai", scope: !1, file: !1, line: 849, type: !1283, isLocal: false, isDefinition: true, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!49, !114, !116}
!1285 = !DILocalVariable(name: "x", arg: 1, scope: !1282, file: !1, line: 849, type: !114)
!1286 = !DILocation(line: 849, column: 36, scope: !1282)
!1287 = !DILocalVariable(name: "mode", arg: 2, scope: !1282, file: !1, line: 849, type: !116)
!1288 = !DILocation(line: 849, column: 50, scope: !1282)
!1289 = !DILocalVariable(name: "result", scope: !1282, file: !1, line: 851, type: !120)
!1290 = !DILocation(line: 851, column: 3, scope: !1282)
!1291 = !DILocalVariable(name: "status", scope: !1282, file: !1, line: 851, type: !51)
!1292 = !DILocation(line: 851, column: 3, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 851, column: 3)
!1294 = !DILocation(line: 851, column: 3, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1296, file: !1, discriminator: 1)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 851, column: 3)
!1297 = distinct !{!1297, !1298}
!1298 = !DILocation(line: 851, column: 3, scope: !1296)
!1299 = !DILocation(line: 851, column: 3, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1301, file: !1, discriminator: 2)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 851, column: 3)
!1302 = !DILocation(line: 851, column: 3, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1296, file: !1, discriminator: 3)
!1304 = !DILocation(line: 851, column: 3, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1282, file: !1, discriminator: 4)
!1306 = !DILocation(line: 852, column: 1, scope: !1282)
!1307 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_scaled", scope: !1, file: !1, line: 854, type: !1283, isLocal: false, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!1308 = !DILocalVariable(name: "x", arg: 1, scope: !1307, file: !1, line: 854, type: !114)
!1309 = !DILocation(line: 854, column: 43, scope: !1307)
!1310 = !DILocalVariable(name: "mode", arg: 2, scope: !1307, file: !1, line: 854, type: !116)
!1311 = !DILocation(line: 854, column: 57, scope: !1307)
!1312 = !DILocalVariable(name: "result", scope: !1307, file: !1, line: 856, type: !120)
!1313 = !DILocation(line: 856, column: 3, scope: !1307)
!1314 = !DILocalVariable(name: "status", scope: !1307, file: !1, line: 856, type: !51)
!1315 = !DILocation(line: 856, column: 3, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1307, file: !1, line: 856, column: 3)
!1317 = !DILocation(line: 856, column: 3, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1319, file: !1, discriminator: 1)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 856, column: 3)
!1320 = distinct !{!1320, !1321}
!1321 = !DILocation(line: 856, column: 3, scope: !1319)
!1322 = !DILocation(line: 856, column: 3, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1324, file: !1, discriminator: 2)
!1324 = distinct !DILexicalBlock(scope: !1319, file: !1, line: 856, column: 3)
!1325 = !DILocation(line: 856, column: 3, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1319, file: !1, discriminator: 3)
!1327 = !DILocation(line: 856, column: 3, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1307, file: !1, discriminator: 4)
!1329 = !DILocation(line: 857, column: 1, scope: !1307)
!1330 = distinct !DISubprogram(name: "gsl_sf_airy_Bi", scope: !1, file: !1, line: 859, type: !1283, isLocal: false, isDefinition: true, scopeLine: 860, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!1331 = !DILocalVariable(name: "x", arg: 1, scope: !1330, file: !1, line: 859, type: !114)
!1332 = !DILocation(line: 859, column: 36, scope: !1330)
!1333 = !DILocalVariable(name: "mode", arg: 2, scope: !1330, file: !1, line: 859, type: !116)
!1334 = !DILocation(line: 859, column: 50, scope: !1330)
!1335 = !DILocalVariable(name: "result", scope: !1330, file: !1, line: 861, type: !120)
!1336 = !DILocation(line: 861, column: 3, scope: !1330)
!1337 = !DILocalVariable(name: "status", scope: !1330, file: !1, line: 861, type: !51)
!1338 = !DILocation(line: 861, column: 3, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 861, column: 3)
!1340 = !DILocation(line: 861, column: 3, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1342, file: !1, discriminator: 1)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 861, column: 3)
!1343 = distinct !{!1343, !1344}
!1344 = !DILocation(line: 861, column: 3, scope: !1342)
!1345 = !DILocation(line: 861, column: 3, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1347, file: !1, discriminator: 2)
!1347 = distinct !DILexicalBlock(scope: !1342, file: !1, line: 861, column: 3)
!1348 = !DILocation(line: 861, column: 3, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1342, file: !1, discriminator: 3)
!1350 = !DILocation(line: 861, column: 3, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1330, file: !1, discriminator: 4)
!1352 = !DILocation(line: 862, column: 1, scope: !1330)
!1353 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_scaled", scope: !1, file: !1, line: 864, type: !1283, isLocal: false, isDefinition: true, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !126)
!1354 = !DILocalVariable(name: "x", arg: 1, scope: !1353, file: !1, line: 864, type: !114)
!1355 = !DILocation(line: 864, column: 43, scope: !1353)
!1356 = !DILocalVariable(name: "mode", arg: 2, scope: !1353, file: !1, line: 864, type: !116)
!1357 = !DILocation(line: 864, column: 57, scope: !1353)
!1358 = !DILocalVariable(name: "result", scope: !1353, file: !1, line: 866, type: !120)
!1359 = !DILocation(line: 866, column: 3, scope: !1353)
!1360 = !DILocalVariable(name: "status", scope: !1353, file: !1, line: 866, type: !51)
!1361 = !DILocation(line: 866, column: 3, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 866, column: 3)
!1363 = !DILocation(line: 866, column: 3, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1365, file: !1, discriminator: 1)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !1, line: 866, column: 3)
!1366 = distinct !{!1366, !1367}
!1367 = !DILocation(line: 866, column: 3, scope: !1365)
!1368 = !DILocation(line: 866, column: 3, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1370, file: !1, discriminator: 2)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 866, column: 3)
!1371 = !DILocation(line: 866, column: 3, scope: !1372)
!1372 = !DILexicalBlockFile(scope: !1365, file: !1, discriminator: 3)
!1373 = !DILocation(line: 866, column: 3, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1353, file: !1, discriminator: 4)
!1375 = !DILocation(line: 867, column: 1, scope: !1353)
