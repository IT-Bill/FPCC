; ModuleID = 'airy.c'
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
  br i1 %21, label %22, label %76, !dbg !137

; <label>:22:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !138, metadata !128), !dbg !140
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !141, metadata !128), !dbg !142
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !143, metadata !128), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %11, metadata !145, metadata !128), !dbg !146
  %23 = load double, double* %5, align 8, !dbg !147
  %24 = load i32, i32* %6, align 4, !dbg !148
  %25 = call i32 @airy_mod_phase(double %23, i32 %24, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !149
  store i32 %25, i32* %11, align 4, !dbg !146
  call void @llvm.dbg.declare(metadata i32* %12, metadata !150, metadata !128), !dbg !151
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !152
  %27 = load double, double* %26, align 8, !dbg !152
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !153
  %29 = load double, double* %28, align 8, !dbg !153
  %30 = call i32 @gsl_sf_cos_err_e(double %27, double %29, %struct.gsl_sf_result_struct* %10), !dbg !154
  store i32 %30, i32* %12, align 4, !dbg !151
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !155
  %32 = load double, double* %31, align 8, !dbg !155
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !156
  %34 = load double, double* %33, align 8, !dbg !156
  %35 = fmul double %32, %34, !dbg !157
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !158
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !159
  store double %35, double* %37, align 8, !dbg !160
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !161
  %39 = load double, double* %38, align 8, !dbg !161
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !162
  %41 = load double, double* %40, align 8, !dbg !162
  %42 = fmul double %39, %41, !dbg !163
  %43 = call double @fabs(double %42) #1, !dbg !164
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !165
  %45 = load double, double* %44, align 8, !dbg !165
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !166
  %47 = load double, double* %46, align 8, !dbg !166
  %48 = fmul double %45, %47, !dbg !167
  %49 = call double @fabs(double %48) #1, !dbg !168
  %50 = fadd double %43, %49, !dbg !170
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !171
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !172
  store double %50, double* %52, align 8, !dbg !173
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !174
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !175
  %55 = load double, double* %54, align 8, !dbg !175
  %56 = call double @fabs(double %55) #1, !dbg !176
  %57 = fmul double 0x3CB0000000000000, %56, !dbg !177
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !178
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !179
  %60 = load double, double* %59, align 8, !dbg !180
  %61 = fadd double %60, %57, !dbg !180
  store double %61, double* %59, align 8, !dbg !180
  %62 = load i32, i32* %11, align 4, !dbg !181
  %63 = icmp ne i32 %62, 0, !dbg !181
  br i1 %63, label %64, label %66, !dbg !181

; <label>:64:                                     ; preds = %22
  %65 = load i32, i32* %11, align 4, !dbg !182
  br label %74, !dbg !182

; <label>:66:                                     ; preds = %22
  %67 = load i32, i32* %12, align 4, !dbg !183
  %68 = icmp ne i32 %67, 0, !dbg !183
  br i1 %68, label %69, label %71, !dbg !183

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %12, align 4, !dbg !185
  br label %72, !dbg !185

; <label>:71:                                     ; preds = %66
  br label %72, !dbg !187

; <label>:72:                                     ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ], !dbg !189
  br label %74, !dbg !189

; <label>:74:                                     ; preds = %72, %64
  %75 = phi i32 [ %65, %64 ], [ %73, %72 ], !dbg !191
  store i32 %75, i32* %4, align 4, !dbg !193
  br label %171, !dbg !193

; <label>:76:                                     ; preds = %3
  %77 = load double, double* %5, align 8, !dbg !194
  %78 = fcmp ole double %77, 1.000000e+00, !dbg !196
  br i1 %78, label %79, label %121, !dbg !197

; <label>:79:                                     ; preds = %76
  call void @llvm.dbg.declare(metadata double* %13, metadata !198, metadata !128), !dbg !200
  %80 = load double, double* %5, align 8, !dbg !201
  %81 = load double, double* %5, align 8, !dbg !202
  %82 = fmul double %80, %81, !dbg !203
  %83 = load double, double* %5, align 8, !dbg !204
  %84 = fmul double %82, %83, !dbg !205
  store double %84, double* %13, align 8, !dbg !200
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !206, metadata !128), !dbg !207
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !208, metadata !128), !dbg !209
  %85 = load double, double* %13, align 8, !dbg !210
  %86 = load i32, i32* %6, align 4, !dbg !211
  %87 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aif_cs, double %85, i32 %86, %struct.gsl_sf_result_struct* %14), !dbg !212
  %88 = load double, double* %13, align 8, !dbg !213
  %89 = load i32, i32* %6, align 4, !dbg !214
  %90 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aig_cs, double %88, i32 %89, %struct.gsl_sf_result_struct* %15), !dbg !215
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !216
  %92 = load double, double* %91, align 8, !dbg !216
  %93 = load double, double* %5, align 8, !dbg !217
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !218
  %95 = load double, double* %94, align 8, !dbg !218
  %96 = fadd double 2.500000e-01, %95, !dbg !219
  %97 = fmul double %93, %96, !dbg !220
  %98 = fsub double %92, %97, !dbg !221
  %99 = fadd double 3.750000e-01, %98, !dbg !222
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !223
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 0, !dbg !224
  store double %99, double* %101, align 8, !dbg !225
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !226
  %103 = load double, double* %102, align 8, !dbg !226
  %104 = load double, double* %5, align 8, !dbg !227
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !228
  %106 = load double, double* %105, align 8, !dbg !228
  %107 = fmul double %104, %106, !dbg !229
  %108 = call double @fabs(double %107) #1, !dbg !230
  %109 = fadd double %103, %108, !dbg !231
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !232
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 1, !dbg !233
  store double %109, double* %111, align 8, !dbg !234
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !235
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !236
  %114 = load double, double* %113, align 8, !dbg !236
  %115 = call double @fabs(double %114) #1, !dbg !237
  %116 = fmul double 0x3CB0000000000000, %115, !dbg !238
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !239
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 1, !dbg !240
  %119 = load double, double* %118, align 8, !dbg !241
  %120 = fadd double %119, %116, !dbg !241
  store double %120, double* %118, align 8, !dbg !241
  store i32 0, i32* %4, align 4, !dbg !242
  br label %171, !dbg !242

; <label>:121:                                    ; preds = %76
  call void @llvm.dbg.declare(metadata double* %16, metadata !243, metadata !128), !dbg !245
  %122 = load double, double* %5, align 8, !dbg !246
  %123 = load double, double* %5, align 8, !dbg !247
  %124 = call double @sqrt(double %123) #6, !dbg !248
  %125 = fmul double %122, %124, !dbg !249
  store double %125, double* %16, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata double* %17, metadata !250, metadata !128), !dbg !251
  %126 = load double, double* %16, align 8, !dbg !252
  %127 = fmul double -2.000000e+00, %126, !dbg !253
  %128 = fdiv double %127, 3.000000e+00, !dbg !254
  %129 = call double @exp(double %128) #6, !dbg !255
  store double %129, double* %17, align 8, !dbg !251
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !256, metadata !128), !dbg !257
  call void @llvm.dbg.declare(metadata i32* %19, metadata !258, metadata !128), !dbg !259
  %130 = load double, double* %5, align 8, !dbg !260
  %131 = load i32, i32* %6, align 4, !dbg !261
  %132 = call i32 @airy_aie(double %130, i32 %131, %struct.gsl_sf_result_struct* %18), !dbg !262
  store i32 %132, i32* %19, align 4, !dbg !259
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !263
  %134 = load double, double* %133, align 8, !dbg !263
  %135 = load double, double* %17, align 8, !dbg !264
  %136 = fmul double %134, %135, !dbg !265
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !266
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 0, !dbg !267
  store double %136, double* %138, align 8, !dbg !268
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !269
  %140 = load double, double* %139, align 8, !dbg !269
  %141 = load double, double* %17, align 8, !dbg !270
  %142 = fmul double %140, %141, !dbg !271
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !272
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 0, !dbg !273
  %145 = load double, double* %144, align 8, !dbg !273
  %146 = load double, double* %16, align 8, !dbg !274
  %147 = fmul double %145, %146, !dbg !275
  %148 = fmul double %147, 0x3CB0000000000000, !dbg !276
  %149 = fadd double %142, %148, !dbg !277
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !278
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 1, !dbg !279
  store double %149, double* %151, align 8, !dbg !280
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !281
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !282
  %154 = load double, double* %153, align 8, !dbg !282
  %155 = call double @fabs(double %154) #1, !dbg !283
  %156 = fmul double 0x3CB0000000000000, %155, !dbg !284
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !285
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 1, !dbg !286
  %159 = load double, double* %158, align 8, !dbg !287
  %160 = fadd double %159, %156, !dbg !287
  store double %160, double* %158, align 8, !dbg !287
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !288
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !288
  %163 = load double, double* %162, align 8, !dbg !288
  %164 = call double @fabs(double %163) #1, !dbg !288
  %165 = fcmp olt double %164, 0x10000000000000, !dbg !288
  br i1 %165, label %166, label %169, !dbg !290

; <label>:166:                                    ; preds = %121
  br label %167, !dbg !291, !llvm.loop !293

; <label>:167:                                    ; preds = %166
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 693, i32 15), !dbg !294
  store i32 15, i32* %4, align 4, !dbg !294
  br label %171, !dbg !294
                                                  ; No predecessors!
  br label %169, !dbg !297

; <label>:169:                                    ; preds = %168, %121
  %170 = load i32, i32* %19, align 4, !dbg !299
  store i32 %170, i32* %4, align 4, !dbg !300
  br label %171, !dbg !300

; <label>:171:                                    ; preds = %169, %167, %79, %74
  %172 = load i32, i32* %4, align 4, !dbg !301
  ret i32 %172, !dbg !301
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
  br i1 %18, label %19, label %33, !dbg !326

; <label>:19:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata double* %15, metadata !327, metadata !128), !dbg !329
  %20 = load double, double* %6, align 8, !dbg !330
  %21 = load double, double* %6, align 8, !dbg !331
  %22 = fmul double %20, %21, !dbg !332
  %23 = load double, double* %6, align 8, !dbg !333
  %24 = fmul double %22, %23, !dbg !334
  %25 = fdiv double 1.600000e+01, %24, !dbg !335
  %26 = fadd double %25, 1.000000e+00, !dbg !336
  store double %26, double* %15, align 8, !dbg !329
  %27 = load double, double* %15, align 8, !dbg !337
  %28 = load i32, i32* %7, align 4, !dbg !338
  %29 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @am21_cs, double %27, i32 %28, %struct.gsl_sf_result_struct* %10), !dbg !339
  %30 = load double, double* %15, align 8, !dbg !340
  %31 = load i32, i32* %7, align 4, !dbg !341
  %32 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @ath1_cs, double %30, i32 %31, %struct.gsl_sf_result_struct* %11), !dbg !342
  br label %63, !dbg !343

; <label>:33:                                     ; preds = %4
  %34 = load double, double* %6, align 8, !dbg !344
  %35 = fcmp ole double %34, -1.000000e+00, !dbg !346
  br i1 %35, label %36, label %51, !dbg !347

; <label>:36:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata double* %16, metadata !348, metadata !128), !dbg !350
  %37 = load double, double* %6, align 8, !dbg !351
  %38 = load double, double* %6, align 8, !dbg !352
  %39 = fmul double %37, %38, !dbg !353
  %40 = load double, double* %6, align 8, !dbg !354
  %41 = fmul double %39, %40, !dbg !355
  %42 = fdiv double 1.600000e+01, %41, !dbg !356
  %43 = fadd double %42, 9.000000e+00, !dbg !357
  %44 = fdiv double %43, 7.000000e+00, !dbg !358
  store double %44, double* %16, align 8, !dbg !350
  %45 = load double, double* %16, align 8, !dbg !359
  %46 = load i32, i32* %7, align 4, !dbg !360
  %47 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @am22_cs, double %45, i32 %46, %struct.gsl_sf_result_struct* %10), !dbg !361
  %48 = load double, double* %16, align 8, !dbg !362
  %49 = load i32, i32* %7, align 4, !dbg !363
  %50 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @ath2_cs, double %48, i32 %49, %struct.gsl_sf_result_struct* %11), !dbg !364
  br label %62, !dbg !365

; <label>:51:                                     ; preds = %33
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !366
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !368
  store double 0.000000e+00, double* %53, align 8, !dbg !369
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !370
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !371
  store double 0.000000e+00, double* %55, align 8, !dbg !372
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !373
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !374
  store double 0.000000e+00, double* %57, align 8, !dbg !375
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !376
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !377
  store double 0.000000e+00, double* %59, align 8, !dbg !378
  br label %60, !dbg !379, !llvm.loop !380

; <label>:60:                                     ; preds = %51
  call void @gsl_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 265, i32 1), !dbg !381
  store i32 1, i32* %5, align 4, !dbg !381
  br label %115, !dbg !381
                                                  ; No predecessors!
  br label %62

; <label>:62:                                     ; preds = %61, %36
  br label %63

; <label>:63:                                     ; preds = %62, %19
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !384
  %65 = load double, double* %64, align 8, !dbg !384
  %66 = fadd double 3.125000e-01, %65, !dbg !385
  store double %66, double* %12, align 8, !dbg !386
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !387
  %68 = load double, double* %67, align 8, !dbg !387
  %69 = fadd double -6.250000e-01, %68, !dbg !388
  store double %69, double* %13, align 8, !dbg !389
  %70 = load double, double* %6, align 8, !dbg !390
  %71 = fsub double -0.000000e+00, %70, !dbg !391
  %72 = call double @sqrt(double %71) #6, !dbg !392
  store double %72, double* %14, align 8, !dbg !393
  %73 = load double, double* %12, align 8, !dbg !394
  %74 = load double, double* %14, align 8, !dbg !395
  %75 = fdiv double %73, %74, !dbg !396
  %76 = call double @sqrt(double %75) #6, !dbg !397
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !398
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 0, !dbg !399
  store double %76, double* %78, align 8, !dbg !400
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !401
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !402
  %81 = load double, double* %80, align 8, !dbg !402
  %82 = call double @fabs(double %81) #1, !dbg !403
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !404
  %84 = load double, double* %83, align 8, !dbg !404
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !405
  %86 = load double, double* %85, align 8, !dbg !405
  %87 = fdiv double %84, %86, !dbg !406
  %88 = call double @fabs(double %87) #1, !dbg !407
  %89 = fadd double 0x3CB0000000000000, %88, !dbg !409
  %90 = fmul double %82, %89, !dbg !410
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !411
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 1, !dbg !412
  store double %90, double* %92, align 8, !dbg !413
  %93 = load double, double* %6, align 8, !dbg !414
  %94 = load double, double* %14, align 8, !dbg !415
  %95 = fmul double %93, %94, !dbg !416
  %96 = load double, double* %13, align 8, !dbg !417
  %97 = fmul double %95, %96, !dbg !418
  %98 = fsub double 0x3FE921FB54442D18, %97, !dbg !419
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !420
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 0, !dbg !421
  store double %98, double* %100, align 8, !dbg !422
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !423
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 0, !dbg !424
  %103 = load double, double* %102, align 8, !dbg !424
  %104 = call double @fabs(double %103) #1, !dbg !425
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !426
  %106 = load double, double* %105, align 8, !dbg !426
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !427
  %108 = load double, double* %107, align 8, !dbg !427
  %109 = fdiv double %106, %108, !dbg !428
  %110 = call double @fabs(double %109) #1, !dbg !429
  %111 = fadd double 0x3CB0000000000000, %110, !dbg !430
  %112 = fmul double %104, %111, !dbg !431
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !432
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 1, !dbg !433
  store double %112, double* %114, align 8, !dbg !434
  store i32 0, i32* %5, align 4, !dbg !435
  br label %115, !dbg !435

; <label>:115:                                    ; preds = %63, %60
  %116 = load i32, i32* %5, align 4, !dbg !436
  ret i32 %116, !dbg !436
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
  %18 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !461
  %19 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %18, i32 0, i32 2, !dbg !462
  %20 = load double, double* %19, align 8, !dbg !462
  %21 = fsub double %17, %20, !dbg !463
  %22 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !464
  %23 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %22, i32 0, i32 3, !dbg !465
  %24 = load double, double* %23, align 8, !dbg !465
  %25 = fsub double %21, %24, !dbg !466
  %26 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !467
  %27 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %26, i32 0, i32 3, !dbg !468
  %28 = load double, double* %27, align 8, !dbg !468
  %29 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !469
  %30 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %29, i32 0, i32 2, !dbg !470
  %31 = load double, double* %30, align 8, !dbg !470
  %32 = fsub double %28, %31, !dbg !471
  %33 = fdiv double %25, %32, !dbg !472
  store double %33, double* %12, align 8, !dbg !458
  call void @llvm.dbg.declare(metadata double* %13, metadata !473, metadata !128), !dbg !474
  %34 = load double, double* %12, align 8, !dbg !475
  %35 = fmul double 2.000000e+00, %34, !dbg !476
  store double %35, double* %13, align 8, !dbg !474
  call void @llvm.dbg.declare(metadata i32* %14, metadata !477, metadata !128), !dbg !478
  %36 = load i32, i32* %7, align 4, !dbg !479
  %37 = call i32 @GSL_MODE_PREC(i32 %36), !dbg !481
  %38 = icmp eq i32 %37, 0, !dbg !482
  br i1 %38, label %39, label %43, !dbg !483

; <label>:39:                                     ; preds = %4
  %40 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !484
  %41 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %40, i32 0, i32 1, !dbg !485
  %42 = load i32, i32* %41, align 8, !dbg !485
  store i32 %42, i32* %14, align 4, !dbg !486
  br label %47, !dbg !487

; <label>:43:                                     ; preds = %4
  %44 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !488
  %45 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %44, i32 0, i32 4, !dbg !489
  %46 = load i32, i32* %45, align 8, !dbg !489
  store i32 %46, i32* %14, align 4, !dbg !490
  br label %47

; <label>:47:                                     ; preds = %43, %39
  %48 = load i32, i32* %14, align 4, !dbg !491
  store i32 %48, i32* %9, align 4, !dbg !493
  br label %49, !dbg !494

; <label>:49:                                     ; preds = %68, %47
  %50 = load i32, i32* %9, align 4, !dbg !495
  %51 = icmp sge i32 %50, 1, !dbg !498
  br i1 %51, label %52, label %71, !dbg !499

; <label>:52:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata double* %15, metadata !500, metadata !128), !dbg !502
  %53 = load double, double* %10, align 8, !dbg !503
  store double %53, double* %15, align 8, !dbg !502
  %54 = load double, double* %13, align 8, !dbg !504
  %55 = load double, double* %10, align 8, !dbg !505
  %56 = fmul double %54, %55, !dbg !506
  %57 = load double, double* %11, align 8, !dbg !507
  %58 = fsub double %56, %57, !dbg !508
  %59 = load i32, i32* %9, align 4, !dbg !509
  %60 = sext i32 %59 to i64, !dbg !510
  %61 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !510
  %62 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %61, i32 0, i32 0, !dbg !511
  %63 = load double*, double** %62, align 8, !dbg !511
  %64 = getelementptr inbounds double, double* %63, i64 %60, !dbg !510
  %65 = load double, double* %64, align 8, !dbg !510
  %66 = fadd double %58, %65, !dbg !512
  store double %66, double* %10, align 8, !dbg !513
  %67 = load double, double* %15, align 8, !dbg !514
  store double %67, double* %11, align 8, !dbg !515
  br label %68, !dbg !516

; <label>:68:                                     ; preds = %52
  %69 = load i32, i32* %9, align 4, !dbg !517
  %70 = add nsw i32 %69, -1, !dbg !517
  store i32 %70, i32* %9, align 4, !dbg !517
  br label %49, !dbg !519, !llvm.loop !520

; <label>:71:                                     ; preds = %49
  %72 = load double, double* %12, align 8, !dbg !522
  %73 = load double, double* %10, align 8, !dbg !523
  %74 = fmul double %72, %73, !dbg !524
  %75 = load double, double* %11, align 8, !dbg !525
  %76 = fsub double %74, %75, !dbg !526
  %77 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !527
  %78 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %77, i32 0, i32 0, !dbg !528
  %79 = load double*, double** %78, align 8, !dbg !528
  %80 = getelementptr inbounds double, double* %79, i64 0, !dbg !527
  %81 = load double, double* %80, align 8, !dbg !527
  %82 = fmul double 5.000000e-01, %81, !dbg !529
  %83 = fadd double %76, %82, !dbg !530
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !531
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !532
  store double %83, double* %85, align 8, !dbg !533
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !534
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !535
  %88 = load double, double* %87, align 8, !dbg !535
  %89 = call double @fabs(double %88) #1, !dbg !536
  %90 = fmul double 0x3CB0000000000000, %89, !dbg !537
  %91 = load i32, i32* %14, align 4, !dbg !538
  %92 = sext i32 %91 to i64, !dbg !539
  %93 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !539
  %94 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %93, i32 0, i32 0, !dbg !540
  %95 = load double*, double** %94, align 8, !dbg !540
  %96 = getelementptr inbounds double, double* %95, i64 %92, !dbg !539
  %97 = load double, double* %96, align 8, !dbg !539
  %98 = call double @fabs(double %97) #1, !dbg !541
  %99 = fadd double %90, %98, !dbg !543
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !544
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 1, !dbg !545
  store double %99, double* %101, align 8, !dbg !546
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
  store double %12, double* %7, align 8, !dbg !558
  call void @llvm.dbg.declare(metadata double* %8, metadata !561, metadata !128), !dbg !562
  %13 = load double, double* %4, align 8, !dbg !563
  %14 = load double, double* %7, align 8, !dbg !564
  %15 = fmul double %13, %14, !dbg !565
  %16 = fdiv double 2.000000e+00, %15, !dbg !566
  %17 = fsub double %16, 1.000000e+00, !dbg !567
  store double %17, double* %8, align 8, !dbg !562
  call void @llvm.dbg.declare(metadata double* %9, metadata !568, metadata !128), !dbg !569
  %18 = load double, double* %7, align 8, !dbg !570
  %19 = call double @sqrt(double %18) #6, !dbg !571
  store double %19, double* %9, align 8, !dbg !569
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !572, metadata !128), !dbg !573
  %20 = load double, double* %8, align 8, !dbg !574
  %21 = load i32, i32* %5, align 4, !dbg !575
  %22 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aip_cs, double %20, i32 %21, %struct.gsl_sf_result_struct* %10), !dbg !576
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !577
  %24 = load double, double* %23, align 8, !dbg !577
  %25 = fadd double 2.812500e-01, %24, !dbg !578
  %26 = load double, double* %9, align 8, !dbg !579
  %27 = fdiv double %25, %26, !dbg !580
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !581
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !582
  store double %27, double* %29, align 8, !dbg !583
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !584
  %31 = load double, double* %30, align 8, !dbg !584
  %32 = load double, double* %9, align 8, !dbg !585
  %33 = fdiv double %31, %32, !dbg !586
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !587
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !588
  %36 = load double, double* %35, align 8, !dbg !588
  %37 = call double @fabs(double %36) #1, !dbg !589
  %38 = fmul double 0x3CB0000000000000, %37, !dbg !590
  %39 = fadd double %33, %38, !dbg !591
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
  br i1 %18, label %19, label %73, !dbg !606

; <label>:19:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !607, metadata !128), !dbg !609
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !610, metadata !128), !dbg !611
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !612, metadata !128), !dbg !613
  call void @llvm.dbg.declare(metadata i32* %11, metadata !614, metadata !128), !dbg !615
  %20 = load double, double* %5, align 8, !dbg !616
  %21 = load i32, i32* %6, align 4, !dbg !617
  %22 = call i32 @airy_mod_phase(double %20, i32 %21, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !618
  store i32 %22, i32* %11, align 4, !dbg !615
  call void @llvm.dbg.declare(metadata i32* %12, metadata !619, metadata !128), !dbg !620
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !621
  %24 = load double, double* %23, align 8, !dbg !621
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !622
  %26 = load double, double* %25, align 8, !dbg !622
  %27 = call i32 @gsl_sf_cos_err_e(double %24, double %26, %struct.gsl_sf_result_struct* %10), !dbg !623
  store i32 %27, i32* %12, align 4, !dbg !620
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !624
  %29 = load double, double* %28, align 8, !dbg !624
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !625
  %31 = load double, double* %30, align 8, !dbg !625
  %32 = fmul double %29, %31, !dbg !626
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !627
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !628
  store double %32, double* %34, align 8, !dbg !629
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !630
  %36 = load double, double* %35, align 8, !dbg !630
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !631
  %38 = load double, double* %37, align 8, !dbg !631
  %39 = fmul double %36, %38, !dbg !632
  %40 = call double @fabs(double %39) #1, !dbg !633
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !634
  %42 = load double, double* %41, align 8, !dbg !634
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !635
  %44 = load double, double* %43, align 8, !dbg !635
  %45 = fmul double %42, %44, !dbg !636
  %46 = call double @fabs(double %45) #1, !dbg !637
  %47 = fadd double %40, %46, !dbg !639
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !640
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !641
  store double %47, double* %49, align 8, !dbg !642
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !643
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !644
  %52 = load double, double* %51, align 8, !dbg !644
  %53 = call double @fabs(double %52) #1, !dbg !645
  %54 = fmul double 0x3CB0000000000000, %53, !dbg !646
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !647
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !648
  %57 = load double, double* %56, align 8, !dbg !649
  %58 = fadd double %57, %54, !dbg !649
  store double %58, double* %56, align 8, !dbg !649
  %59 = load i32, i32* %11, align 4, !dbg !650
  %60 = icmp ne i32 %59, 0, !dbg !650
  br i1 %60, label %61, label %63, !dbg !650

; <label>:61:                                     ; preds = %19
  %62 = load i32, i32* %11, align 4, !dbg !651
  br label %71, !dbg !651

; <label>:63:                                     ; preds = %19
  %64 = load i32, i32* %12, align 4, !dbg !652
  %65 = icmp ne i32 %64, 0, !dbg !652
  br i1 %65, label %66, label %68, !dbg !652

; <label>:66:                                     ; preds = %63
  %67 = load i32, i32* %12, align 4, !dbg !654
  br label %69, !dbg !654

; <label>:68:                                     ; preds = %63
  br label %69, !dbg !656

; <label>:69:                                     ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ], !dbg !658
  br label %71, !dbg !658

; <label>:71:                                     ; preds = %69, %61
  %72 = phi i32 [ %62, %61 ], [ %70, %69 ], !dbg !660
  store i32 %72, i32* %4, align 4, !dbg !662
  br label %141, !dbg !662

; <label>:73:                                     ; preds = %3
  %74 = load double, double* %5, align 8, !dbg !663
  %75 = fcmp ole double %74, 1.000000e+00, !dbg !665
  br i1 %75, label %76, label %136, !dbg !666

; <label>:76:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata double* %13, metadata !667, metadata !128), !dbg !669
  %77 = load double, double* %5, align 8, !dbg !670
  %78 = load double, double* %5, align 8, !dbg !671
  %79 = fmul double %77, %78, !dbg !672
  %80 = load double, double* %5, align 8, !dbg !673
  %81 = fmul double %79, %80, !dbg !674
  store double %81, double* %13, align 8, !dbg !669
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !675, metadata !128), !dbg !676
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !677, metadata !128), !dbg !678
  %82 = load double, double* %13, align 8, !dbg !679
  %83 = load i32, i32* %6, align 4, !dbg !680
  %84 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aif_cs, double %82, i32 %83, %struct.gsl_sf_result_struct* %14), !dbg !681
  %85 = load double, double* %13, align 8, !dbg !682
  %86 = load i32, i32* %6, align 4, !dbg !683
  %87 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aig_cs, double %85, i32 %86, %struct.gsl_sf_result_struct* %15), !dbg !684
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !685
  %89 = load double, double* %88, align 8, !dbg !685
  %90 = load double, double* %5, align 8, !dbg !686
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !687
  %92 = load double, double* %91, align 8, !dbg !687
  %93 = fadd double 2.500000e-01, %92, !dbg !688
  %94 = fmul double %90, %93, !dbg !689
  %95 = fsub double %89, %94, !dbg !690
  %96 = fadd double 3.750000e-01, %95, !dbg !691
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !692
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 0, !dbg !693
  store double %96, double* %98, align 8, !dbg !694
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !695
  %100 = load double, double* %99, align 8, !dbg !695
  %101 = load double, double* %5, align 8, !dbg !696
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !697
  %103 = load double, double* %102, align 8, !dbg !697
  %104 = fmul double %101, %103, !dbg !698
  %105 = call double @fabs(double %104) #1, !dbg !699
  %106 = fadd double %100, %105, !dbg !700
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !701
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 1, !dbg !702
  store double %106, double* %108, align 8, !dbg !703
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !704
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !705
  %111 = load double, double* %110, align 8, !dbg !705
  %112 = call double @fabs(double %111) #1, !dbg !706
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !707
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !708
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 1, !dbg !709
  %116 = load double, double* %115, align 8, !dbg !710
  %117 = fadd double %116, %113, !dbg !710
  store double %117, double* %115, align 8, !dbg !710
  %118 = load double, double* %5, align 8, !dbg !711
  %119 = fcmp ogt double %118, 0.000000e+00, !dbg !713
  br i1 %119, label %120, label %135, !dbg !714

; <label>:120:                                    ; preds = %76
  call void @llvm.dbg.declare(metadata double* %16, metadata !715, metadata !128), !dbg !717
  %121 = load double, double* %13, align 8, !dbg !718
  %122 = call double @sqrt(double %121) #6, !dbg !719
  %123 = fmul double 0x3FE5555555555555, %122, !dbg !720
  %124 = call double @exp(double %123) #6, !dbg !721
  store double %124, double* %16, align 8, !dbg !717
  %125 = load double, double* %16, align 8, !dbg !723
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !724
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 0, !dbg !725
  %128 = load double, double* %127, align 8, !dbg !726
  %129 = fmul double %128, %125, !dbg !726
  store double %129, double* %127, align 8, !dbg !726
  %130 = load double, double* %16, align 8, !dbg !727
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !728
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 1, !dbg !729
  %133 = load double, double* %132, align 8, !dbg !730
  %134 = fmul double %133, %130, !dbg !730
  store double %134, double* %132, align 8, !dbg !730
  br label %135, !dbg !731

; <label>:135:                                    ; preds = %120, %76
  store i32 0, i32* %4, align 4, !dbg !732
  br label %141, !dbg !732

; <label>:136:                                    ; preds = %73
  %137 = load double, double* %5, align 8, !dbg !733
  %138 = load i32, i32* %6, align 4, !dbg !735
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !736
  %140 = call i32 @airy_aie(double %137, i32 %138, %struct.gsl_sf_result_struct* %139), !dbg !737
  store i32 %140, i32* %4, align 4, !dbg !738
  br label %141, !dbg !738

; <label>:141:                                    ; preds = %136, %135, %71
  %142 = load i32, i32* %4, align 4, !dbg !739
  ret i32 %142, !dbg !739
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
  br i1 %24, label %25, label %79, !dbg !750

; <label>:25:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !751, metadata !128), !dbg !753
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !754, metadata !128), !dbg !755
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !756, metadata !128), !dbg !757
  call void @llvm.dbg.declare(metadata i32* %11, metadata !758, metadata !128), !dbg !759
  %26 = load double, double* %5, align 8, !dbg !760
  %27 = load i32, i32* %6, align 4, !dbg !761
  %28 = call i32 @airy_mod_phase(double %26, i32 %27, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !762
  store i32 %28, i32* %11, align 4, !dbg !759
  call void @llvm.dbg.declare(metadata i32* %12, metadata !763, metadata !128), !dbg !764
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !765
  %30 = load double, double* %29, align 8, !dbg !765
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !766
  %32 = load double, double* %31, align 8, !dbg !766
  %33 = call i32 @gsl_sf_sin_err_e(double %30, double %32, %struct.gsl_sf_result_struct* %10), !dbg !767
  store i32 %33, i32* %12, align 4, !dbg !764
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !768
  %35 = load double, double* %34, align 8, !dbg !768
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !769
  %37 = load double, double* %36, align 8, !dbg !769
  %38 = fmul double %35, %37, !dbg !770
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !771
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !772
  store double %38, double* %40, align 8, !dbg !773
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !774
  %42 = load double, double* %41, align 8, !dbg !774
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !775
  %44 = load double, double* %43, align 8, !dbg !775
  %45 = fmul double %42, %44, !dbg !776
  %46 = call double @fabs(double %45) #1, !dbg !777
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !778
  %48 = load double, double* %47, align 8, !dbg !778
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !779
  %50 = load double, double* %49, align 8, !dbg !779
  %51 = fmul double %48, %50, !dbg !780
  %52 = call double @fabs(double %51) #1, !dbg !781
  %53 = fadd double %46, %52, !dbg !783
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !784
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !785
  store double %53, double* %55, align 8, !dbg !786
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !787
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !788
  %58 = load double, double* %57, align 8, !dbg !788
  %59 = call double @fabs(double %58) #1, !dbg !789
  %60 = fmul double 0x3CB0000000000000, %59, !dbg !790
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !791
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !792
  %63 = load double, double* %62, align 8, !dbg !793
  %64 = fadd double %63, %60, !dbg !793
  store double %64, double* %62, align 8, !dbg !793
  %65 = load i32, i32* %11, align 4, !dbg !794
  %66 = icmp ne i32 %65, 0, !dbg !794
  br i1 %66, label %67, label %69, !dbg !794

; <label>:67:                                     ; preds = %25
  %68 = load i32, i32* %11, align 4, !dbg !795
  br label %77, !dbg !795

; <label>:69:                                     ; preds = %25
  %70 = load i32, i32* %12, align 4, !dbg !796
  %71 = icmp ne i32 %70, 0, !dbg !796
  br i1 %71, label %72, label %74, !dbg !796

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %12, align 4, !dbg !798
  br label %75, !dbg !798

; <label>:74:                                     ; preds = %69
  br label %75, !dbg !800

; <label>:75:                                     ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ], !dbg !802
  br label %77, !dbg !802

; <label>:77:                                     ; preds = %75, %67
  %78 = phi i32 [ %68, %67 ], [ %76, %75 ], !dbg !804
  store i32 %78, i32* %4, align 4, !dbg !806
  br label %230, !dbg !806

; <label>:79:                                     ; preds = %3
  %80 = load double, double* %5, align 8, !dbg !807
  %81 = fcmp olt double %80, 1.000000e+00, !dbg !809
  br i1 %81, label %82, label %124, !dbg !810

; <label>:82:                                     ; preds = %79
  call void @llvm.dbg.declare(metadata double* %13, metadata !811, metadata !128), !dbg !813
  %83 = load double, double* %5, align 8, !dbg !814
  %84 = load double, double* %5, align 8, !dbg !815
  %85 = fmul double %83, %84, !dbg !816
  %86 = load double, double* %5, align 8, !dbg !817
  %87 = fmul double %85, %86, !dbg !818
  store double %87, double* %13, align 8, !dbg !813
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !819, metadata !128), !dbg !820
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !821, metadata !128), !dbg !822
  %88 = load double, double* %13, align 8, !dbg !823
  %89 = load i32, i32* %6, align 4, !dbg !824
  %90 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif_cs, double %88, i32 %89, %struct.gsl_sf_result_struct* %14), !dbg !825
  %91 = load double, double* %13, align 8, !dbg !826
  %92 = load i32, i32* %6, align 4, !dbg !827
  %93 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big_cs, double %91, i32 %92, %struct.gsl_sf_result_struct* %15), !dbg !828
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !829
  %95 = load double, double* %94, align 8, !dbg !829
  %96 = fadd double 6.250000e-01, %95, !dbg !830
  %97 = load double, double* %5, align 8, !dbg !831
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !832
  %99 = load double, double* %98, align 8, !dbg !832
  %100 = fadd double 4.375000e-01, %99, !dbg !833
  %101 = fmul double %97, %100, !dbg !834
  %102 = fadd double %96, %101, !dbg !835
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !836
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !837
  store double %102, double* %104, align 8, !dbg !838
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !839
  %106 = load double, double* %105, align 8, !dbg !839
  %107 = load double, double* %5, align 8, !dbg !840
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !841
  %109 = load double, double* %108, align 8, !dbg !841
  %110 = fmul double %107, %109, !dbg !842
  %111 = call double @fabs(double %110) #1, !dbg !843
  %112 = fadd double %106, %111, !dbg !844
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !845
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 1, !dbg !846
  store double %112, double* %114, align 8, !dbg !847
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !848
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 0, !dbg !849
  %117 = load double, double* %116, align 8, !dbg !849
  %118 = call double @fabs(double %117) #1, !dbg !850
  %119 = fmul double 0x3CB0000000000000, %118, !dbg !851
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !852
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 1, !dbg !853
  %122 = load double, double* %121, align 8, !dbg !854
  %123 = fadd double %122, %119, !dbg !854
  store double %123, double* %121, align 8, !dbg !854
  store i32 0, i32* %4, align 4, !dbg !855
  br label %230, !dbg !855

; <label>:124:                                    ; preds = %79
  %125 = load double, double* %5, align 8, !dbg !856
  %126 = fcmp ole double %125, 2.000000e+00, !dbg !858
  br i1 %126, label %127, label %172, !dbg !859

; <label>:127:                                    ; preds = %124
  call void @llvm.dbg.declare(metadata double* %16, metadata !860, metadata !128), !dbg !862
  %128 = load double, double* %5, align 8, !dbg !863
  %129 = fmul double 2.000000e+00, %128, !dbg !864
  %130 = load double, double* %5, align 8, !dbg !865
  %131 = fmul double %129, %130, !dbg !866
  %132 = load double, double* %5, align 8, !dbg !867
  %133 = fmul double %131, %132, !dbg !868
  %134 = fsub double %133, 9.000000e+00, !dbg !869
  %135 = fdiv double %134, 7.000000e+00, !dbg !870
  store double %135, double* %16, align 8, !dbg !862
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !871, metadata !128), !dbg !872
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !873, metadata !128), !dbg !874
  %136 = load double, double* %16, align 8, !dbg !875
  %137 = load i32, i32* %6, align 4, !dbg !876
  %138 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif2_cs, double %136, i32 %137, %struct.gsl_sf_result_struct* %17), !dbg !877
  %139 = load double, double* %16, align 8, !dbg !878
  %140 = load i32, i32* %6, align 4, !dbg !879
  %141 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big2_cs, double %139, i32 %140, %struct.gsl_sf_result_struct* %18), !dbg !880
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !881
  %143 = load double, double* %142, align 8, !dbg !881
  %144 = fadd double 1.125000e+00, %143, !dbg !882
  %145 = load double, double* %5, align 8, !dbg !883
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !884
  %147 = load double, double* %146, align 8, !dbg !884
  %148 = fadd double 6.250000e-01, %147, !dbg !885
  %149 = fmul double %145, %148, !dbg !886
  %150 = fadd double %144, %149, !dbg !887
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !888
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 0, !dbg !889
  store double %150, double* %152, align 8, !dbg !890
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !891
  %154 = load double, double* %153, align 8, !dbg !891
  %155 = load double, double* %5, align 8, !dbg !892
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !893
  %157 = load double, double* %156, align 8, !dbg !893
  %158 = fmul double %155, %157, !dbg !894
  %159 = call double @fabs(double %158) #1, !dbg !895
  %160 = fadd double %154, %159, !dbg !896
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !897
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 1, !dbg !898
  store double %160, double* %162, align 8, !dbg !899
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !900
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 0, !dbg !901
  %165 = load double, double* %164, align 8, !dbg !901
  %166 = call double @fabs(double %165) #1, !dbg !902
  %167 = fmul double 0x3CB0000000000000, %166, !dbg !903
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !904
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 1, !dbg !905
  %170 = load double, double* %169, align 8, !dbg !906
  %171 = fadd double %170, %167, !dbg !906
  store double %171, double* %169, align 8, !dbg !906
  store i32 0, i32* %4, align 4, !dbg !907
  br label %230, !dbg !907

; <label>:172:                                    ; preds = %124
  call void @llvm.dbg.declare(metadata double* %19, metadata !908, metadata !128), !dbg !910
  %173 = load double, double* %5, align 8, !dbg !911
  %174 = fmul double 2.000000e+00, %173, !dbg !912
  %175 = load double, double* %5, align 8, !dbg !913
  %176 = call double @sqrt(double %175) #6, !dbg !914
  %177 = fmul double %174, %176, !dbg !915
  %178 = fdiv double %177, 3.000000e+00, !dbg !916
  store double %178, double* %19, align 8, !dbg !910
  call void @llvm.dbg.declare(metadata double* %20, metadata !917, metadata !128), !dbg !918
  %179 = load double, double* %19, align 8, !dbg !919
  %180 = call double @exp(double %179) #6, !dbg !920
  store double %180, double* %20, align 8, !dbg !918
  %181 = load double, double* %19, align 8, !dbg !921
  %182 = fcmp ogt double %181, 0x40862642FEFA39EF, !dbg !923
  br i1 %182, label %183, label %192, !dbg !924

; <label>:183:                                    ; preds = %172
  br label %184, !dbg !925, !llvm.loop !927

; <label>:184:                                    ; preds = %183
  %185 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !928
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %185, i32 0, i32 0, !dbg !928
  store double 0x7FF0000000000000, double* %186, align 8, !dbg !928
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !928
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 1, !dbg !928
  store double 0x7FF0000000000000, double* %188, align 8, !dbg !928
  br label %189, !dbg !928, !llvm.loop !931

; <label>:189:                                    ; preds = %184
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 780, i32 16), !dbg !933
  store i32 16, i32* %4, align 4, !dbg !933
  br label %230, !dbg !933
                                                  ; No predecessors!
  br label %191, !dbg !936

; <label>:191:                                    ; preds = %190
  br label %227, !dbg !938

; <label>:192:                                    ; preds = %172
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !939, metadata !128), !dbg !941
  call void @llvm.dbg.declare(metadata i32* %22, metadata !942, metadata !128), !dbg !943
  %193 = load double, double* %5, align 8, !dbg !944
  %194 = load i32, i32* %6, align 4, !dbg !945
  %195 = call i32 @airy_bie(double %193, i32 %194, %struct.gsl_sf_result_struct* %21), !dbg !946
  store i32 %195, i32* %22, align 4, !dbg !943
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !947
  %197 = load double, double* %196, align 8, !dbg !947
  %198 = load double, double* %20, align 8, !dbg !948
  %199 = fmul double %197, %198, !dbg !949
  %200 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !950
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %200, i32 0, i32 0, !dbg !951
  store double %199, double* %201, align 8, !dbg !952
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !953
  %203 = load double, double* %202, align 8, !dbg !953
  %204 = load double, double* %20, align 8, !dbg !954
  %205 = fmul double %203, %204, !dbg !955
  %206 = load double, double* %19, align 8, !dbg !956
  %207 = fmul double 1.500000e+00, %206, !dbg !957
  %208 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !958
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %208, i32 0, i32 0, !dbg !959
  %210 = load double, double* %209, align 8, !dbg !959
  %211 = fmul double 0x3CB0000000000000, %210, !dbg !960
  %212 = fmul double %207, %211, !dbg !961
  %213 = call double @fabs(double %212) #1, !dbg !962
  %214 = fadd double %205, %213, !dbg !963
  %215 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !964
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %215, i32 0, i32 1, !dbg !965
  store double %214, double* %216, align 8, !dbg !966
  %217 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !967
  %218 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %217, i32 0, i32 0, !dbg !968
  %219 = load double, double* %218, align 8, !dbg !968
  %220 = call double @fabs(double %219) #1, !dbg !969
  %221 = fmul double 0x3CB0000000000000, %220, !dbg !970
  %222 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !971
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %222, i32 0, i32 1, !dbg !972
  %224 = load double, double* %223, align 8, !dbg !973
  %225 = fadd double %224, %221, !dbg !973
  store double %225, double* %223, align 8, !dbg !973
  %226 = load i32, i32* %22, align 4, !dbg !974
  store i32 %226, i32* %4, align 4, !dbg !975
  br label %230, !dbg !975

; <label>:227:                                    ; preds = %191
  br label %228

; <label>:228:                                    ; preds = %227
  br label %229

; <label>:229:                                    ; preds = %228
  br label %230

; <label>:230:                                    ; preds = %77, %82, %127, %189, %192, %229
  %231 = load i32, i32* %4, align 4, !dbg !976
  ret i32 %231, !dbg !976
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
  br i1 %18, label %19, label %51, !dbg !991

; <label>:19:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %9, metadata !992, metadata !128), !dbg !994
  %20 = load double, double* %4, align 8, !dbg !995
  %21 = call double @sqrt(double %20) #6, !dbg !996
  store double %21, double* %9, align 8, !dbg !994
  call void @llvm.dbg.declare(metadata double* %10, metadata !997, metadata !128), !dbg !998
  %22 = load double, double* %4, align 8, !dbg !999
  %23 = load double, double* %9, align 8, !dbg !1000
  %24 = fmul double %22, %23, !dbg !1001
  %25 = fdiv double 0x4021805A83B66B50, %24, !dbg !1002
  %26 = fadd double %25, 0xC000C02D41DB35A8, !dbg !1003
  store double %26, double* %10, align 8, !dbg !998
  call void @llvm.dbg.declare(metadata double* %11, metadata !1004, metadata !128), !dbg !1005
  %27 = load double, double* %9, align 8, !dbg !1006
  %28 = call double @sqrt(double %27) #6, !dbg !1007
  store double %28, double* %11, align 8, !dbg !1005
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !1008, metadata !128), !dbg !1009
  %29 = load double, double* %10, align 8, !dbg !1010
  %30 = load i32, i32* %5, align 4, !dbg !1011
  %31 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bip_cs, double %29, i32 %30, %struct.gsl_sf_result_struct* %12), !dbg !1012
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !1013
  %33 = load double, double* %32, align 8, !dbg !1013
  %34 = fadd double 6.250000e-01, %33, !dbg !1014
  %35 = load double, double* %11, align 8, !dbg !1015
  %36 = fdiv double %34, %35, !dbg !1016
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1017
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !1018
  store double %36, double* %38, align 8, !dbg !1019
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !1020
  %40 = load double, double* %39, align 8, !dbg !1020
  %41 = load double, double* %11, align 8, !dbg !1021
  %42 = fdiv double %40, %41, !dbg !1022
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1023
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !1024
  %45 = load double, double* %44, align 8, !dbg !1024
  %46 = call double @fabs(double %45) #1, !dbg !1025
  %47 = fmul double 0x3CB0000000000000, %46, !dbg !1026
  %48 = fadd double %42, %47, !dbg !1027
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1028
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !1029
  store double %48, double* %50, align 8, !dbg !1030
  br label %83, !dbg !1031

; <label>:51:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %13, metadata !1032, metadata !128), !dbg !1034
  %52 = load double, double* %4, align 8, !dbg !1035
  %53 = call double @sqrt(double %52) #6, !dbg !1036
  store double %53, double* %13, align 8, !dbg !1034
  call void @llvm.dbg.declare(metadata double* %14, metadata !1037, metadata !128), !dbg !1038
  %54 = load double, double* %4, align 8, !dbg !1039
  %55 = load double, double* %13, align 8, !dbg !1040
  %56 = fmul double %54, %55, !dbg !1041
  %57 = fdiv double 1.600000e+01, %56, !dbg !1042
  %58 = fsub double %57, 1.000000e+00, !dbg !1043
  store double %58, double* %14, align 8, !dbg !1038
  call void @llvm.dbg.declare(metadata double* %15, metadata !1044, metadata !128), !dbg !1045
  %59 = load double, double* %13, align 8, !dbg !1046
  %60 = call double @sqrt(double %59) #6, !dbg !1047
  store double %60, double* %15, align 8, !dbg !1045
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !1048, metadata !128), !dbg !1049
  %61 = load double, double* %14, align 8, !dbg !1050
  %62 = load i32, i32* %5, align 4, !dbg !1051
  %63 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bip2_cs, double %61, i32 %62, %struct.gsl_sf_result_struct* %16), !dbg !1052
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !1053
  %65 = load double, double* %64, align 8, !dbg !1053
  %66 = fadd double 6.250000e-01, %65, !dbg !1054
  %67 = load double, double* %15, align 8, !dbg !1055
  %68 = fdiv double %66, %67, !dbg !1056
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1057
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !1058
  store double %68, double* %70, align 8, !dbg !1059
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1060
  %72 = load double, double* %71, align 8, !dbg !1060
  %73 = load double, double* %15, align 8, !dbg !1061
  %74 = fdiv double %72, %73, !dbg !1062
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1063
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !1064
  %77 = load double, double* %76, align 8, !dbg !1064
  %78 = call double @fabs(double %77) #1, !dbg !1065
  %79 = fmul double 0x3CB0000000000000, %78, !dbg !1066
  %80 = fadd double %74, %79, !dbg !1067
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1068
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !1069
  store double %80, double* %82, align 8, !dbg !1070
  br label %83

; <label>:83:                                     ; preds = %51, %19
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
  br i1 %23, label %24, label %78, !dbg !1082

; <label>:24:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1083, metadata !128), !dbg !1085
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !1086, metadata !128), !dbg !1087
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1088, metadata !128), !dbg !1089
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1090, metadata !128), !dbg !1091
  %25 = load double, double* %5, align 8, !dbg !1092
  %26 = load i32, i32* %6, align 4, !dbg !1093
  %27 = call i32 @airy_mod_phase(double %25, i32 %26, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !1094
  store i32 %27, i32* %11, align 4, !dbg !1091
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1095, metadata !128), !dbg !1096
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !1097
  %29 = load double, double* %28, align 8, !dbg !1097
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !1098
  %31 = load double, double* %30, align 8, !dbg !1098
  %32 = call i32 @gsl_sf_sin_err_e(double %29, double %31, %struct.gsl_sf_result_struct* %10), !dbg !1099
  store i32 %32, i32* %12, align 4, !dbg !1096
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1100
  %34 = load double, double* %33, align 8, !dbg !1100
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1101
  %36 = load double, double* %35, align 8, !dbg !1101
  %37 = fmul double %34, %36, !dbg !1102
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1103
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !1104
  store double %37, double* %39, align 8, !dbg !1105
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1106
  %41 = load double, double* %40, align 8, !dbg !1106
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !1107
  %43 = load double, double* %42, align 8, !dbg !1107
  %44 = fmul double %41, %43, !dbg !1108
  %45 = call double @fabs(double %44) #1, !dbg !1109
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1110
  %47 = load double, double* %46, align 8, !dbg !1110
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1111
  %49 = load double, double* %48, align 8, !dbg !1111
  %50 = fmul double %47, %49, !dbg !1112
  %51 = call double @fabs(double %50) #1, !dbg !1113
  %52 = fadd double %45, %51, !dbg !1115
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1116
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !1117
  store double %52, double* %54, align 8, !dbg !1118
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1119
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !1120
  %57 = load double, double* %56, align 8, !dbg !1120
  %58 = call double @fabs(double %57) #1, !dbg !1121
  %59 = fmul double 0x3CB0000000000000, %58, !dbg !1122
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1123
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !1124
  %62 = load double, double* %61, align 8, !dbg !1125
  %63 = fadd double %62, %59, !dbg !1125
  store double %63, double* %61, align 8, !dbg !1125
  %64 = load i32, i32* %11, align 4, !dbg !1126
  %65 = icmp ne i32 %64, 0, !dbg !1126
  br i1 %65, label %66, label %68, !dbg !1126

; <label>:66:                                     ; preds = %24
  %67 = load i32, i32* %11, align 4, !dbg !1127
  br label %76, !dbg !1127

; <label>:68:                                     ; preds = %24
  %69 = load i32, i32* %12, align 4, !dbg !1128
  %70 = icmp ne i32 %69, 0, !dbg !1128
  br i1 %70, label %71, label %73, !dbg !1128

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %12, align 4, !dbg !1130
  br label %74, !dbg !1130

; <label>:73:                                     ; preds = %68
  br label %74, !dbg !1132

; <label>:74:                                     ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ], !dbg !1134
  br label %76, !dbg !1134

; <label>:76:                                     ; preds = %74, %66
  %77 = phi i32 [ %67, %66 ], [ %75, %74 ], !dbg !1136
  store i32 %77, i32* %4, align 4, !dbg !1138
  br label %203, !dbg !1138

; <label>:78:                                     ; preds = %3
  %79 = load double, double* %5, align 8, !dbg !1139
  %80 = fcmp olt double %79, 1.000000e+00, !dbg !1141
  br i1 %80, label %81, label %141, !dbg !1142

; <label>:81:                                     ; preds = %78
  call void @llvm.dbg.declare(metadata double* %13, metadata !1143, metadata !128), !dbg !1145
  %82 = load double, double* %5, align 8, !dbg !1146
  %83 = load double, double* %5, align 8, !dbg !1147
  %84 = fmul double %82, %83, !dbg !1148
  %85 = load double, double* %5, align 8, !dbg !1149
  %86 = fmul double %84, %85, !dbg !1150
  store double %86, double* %13, align 8, !dbg !1145
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1151, metadata !128), !dbg !1152
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1153, metadata !128), !dbg !1154
  %87 = load double, double* %13, align 8, !dbg !1155
  %88 = load i32, i32* %6, align 4, !dbg !1156
  %89 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif_cs, double %87, i32 %88, %struct.gsl_sf_result_struct* %14), !dbg !1157
  %90 = load double, double* %13, align 8, !dbg !1158
  %91 = load i32, i32* %6, align 4, !dbg !1159
  %92 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big_cs, double %90, i32 %91, %struct.gsl_sf_result_struct* %15), !dbg !1160
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1161
  %94 = load double, double* %93, align 8, !dbg !1161
  %95 = fadd double 6.250000e-01, %94, !dbg !1162
  %96 = load double, double* %5, align 8, !dbg !1163
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1164
  %98 = load double, double* %97, align 8, !dbg !1164
  %99 = fadd double 4.375000e-01, %98, !dbg !1165
  %100 = fmul double %96, %99, !dbg !1166
  %101 = fadd double %95, %100, !dbg !1167
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1168
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !1169
  store double %101, double* %103, align 8, !dbg !1170
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1171
  %105 = load double, double* %104, align 8, !dbg !1171
  %106 = load double, double* %5, align 8, !dbg !1172
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !1173
  %108 = load double, double* %107, align 8, !dbg !1173
  %109 = fmul double %106, %108, !dbg !1174
  %110 = call double @fabs(double %109) #1, !dbg !1175
  %111 = fadd double %105, %110, !dbg !1176
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1177
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 1, !dbg !1178
  store double %111, double* %113, align 8, !dbg !1179
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1180
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !1181
  %116 = load double, double* %115, align 8, !dbg !1181
  %117 = call double @fabs(double %116) #1, !dbg !1182
  %118 = fmul double 0x3CB0000000000000, %117, !dbg !1183
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1184
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 1, !dbg !1185
  %121 = load double, double* %120, align 8, !dbg !1186
  %122 = fadd double %121, %118, !dbg !1186
  store double %122, double* %120, align 8, !dbg !1186
  %123 = load double, double* %5, align 8, !dbg !1187
  %124 = fcmp ogt double %123, 0.000000e+00, !dbg !1189
  br i1 %124, label %125, label %140, !dbg !1190

; <label>:125:                                    ; preds = %81
  call void @llvm.dbg.declare(metadata double* %16, metadata !1191, metadata !128), !dbg !1193
  %126 = load double, double* %13, align 8, !dbg !1194
  %127 = call double @sqrt(double %126) #6, !dbg !1195
  %128 = fmul double 0xBFE5555555555555, %127, !dbg !1196
  %129 = call double @exp(double %128) #6, !dbg !1197
  store double %129, double* %16, align 8, !dbg !1193
  %130 = load double, double* %16, align 8, !dbg !1199
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1200
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 0, !dbg !1201
  %133 = load double, double* %132, align 8, !dbg !1202
  %134 = fmul double %133, %130, !dbg !1202
  store double %134, double* %132, align 8, !dbg !1202
  %135 = load double, double* %16, align 8, !dbg !1203
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1204
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 1, !dbg !1205
  %138 = load double, double* %137, align 8, !dbg !1206
  %139 = fmul double %138, %135, !dbg !1206
  store double %139, double* %137, align 8, !dbg !1206
  br label %140, !dbg !1207

; <label>:140:                                    ; preds = %125, %81
  store i32 0, i32* %4, align 4, !dbg !1208
  br label %203, !dbg !1208

; <label>:141:                                    ; preds = %78
  %142 = load double, double* %5, align 8, !dbg !1209
  %143 = fcmp ole double %142, 2.000000e+00, !dbg !1211
  br i1 %143, label %144, label %198, !dbg !1212

; <label>:144:                                    ; preds = %141
  call void @llvm.dbg.declare(metadata double* %17, metadata !1213, metadata !128), !dbg !1215
  %145 = load double, double* %5, align 8, !dbg !1216
  %146 = load double, double* %5, align 8, !dbg !1217
  %147 = fmul double %145, %146, !dbg !1218
  %148 = load double, double* %5, align 8, !dbg !1219
  %149 = fmul double %147, %148, !dbg !1220
  store double %149, double* %17, align 8, !dbg !1215
  call void @llvm.dbg.declare(metadata double* %18, metadata !1221, metadata !128), !dbg !1222
  %150 = load double, double* %17, align 8, !dbg !1223
  %151 = fmul double 2.000000e+00, %150, !dbg !1224
  %152 = fsub double %151, 9.000000e+00, !dbg !1225
  %153 = fdiv double %152, 7.000000e+00, !dbg !1226
  store double %153, double* %18, align 8, !dbg !1222
  call void @llvm.dbg.declare(metadata double* %19, metadata !1227, metadata !128), !dbg !1228
  %154 = load double, double* %17, align 8, !dbg !1229
  %155 = call double @sqrt(double %154) #6, !dbg !1230
  %156 = fmul double 0xBFE5555555555555, %155, !dbg !1231
  %157 = call double @exp(double %156) #6, !dbg !1232
  store double %157, double* %19, align 8, !dbg !1228
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !1234, metadata !128), !dbg !1235
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !1236, metadata !128), !dbg !1237
  %158 = load double, double* %18, align 8, !dbg !1238
  %159 = load i32, i32* %6, align 4, !dbg !1239
  %160 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif2_cs, double %158, i32 %159, %struct.gsl_sf_result_struct* %20), !dbg !1240
  %161 = load double, double* %18, align 8, !dbg !1241
  %162 = load i32, i32* %6, align 4, !dbg !1242
  %163 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big2_cs, double %161, i32 %162, %struct.gsl_sf_result_struct* %21), !dbg !1243
  %164 = load double, double* %19, align 8, !dbg !1244
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1245
  %166 = load double, double* %165, align 8, !dbg !1245
  %167 = fadd double 1.125000e+00, %166, !dbg !1246
  %168 = load double, double* %5, align 8, !dbg !1247
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !1248
  %170 = load double, double* %169, align 8, !dbg !1248
  %171 = fadd double 6.250000e-01, %170, !dbg !1249
  %172 = fmul double %168, %171, !dbg !1250
  %173 = fadd double %167, %172, !dbg !1251
  %174 = fmul double %164, %173, !dbg !1252
  %175 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1253
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %175, i32 0, i32 0, !dbg !1254
  store double %174, double* %176, align 8, !dbg !1255
  %177 = load double, double* %19, align 8, !dbg !1256
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !1257
  %179 = load double, double* %178, align 8, !dbg !1257
  %180 = load double, double* %5, align 8, !dbg !1258
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !1259
  %182 = load double, double* %181, align 8, !dbg !1259
  %183 = fmul double %180, %182, !dbg !1260
  %184 = call double @fabs(double %183) #1, !dbg !1261
  %185 = fadd double %179, %184, !dbg !1262
  %186 = fmul double %177, %185, !dbg !1263
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1264
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 1, !dbg !1265
  store double %186, double* %188, align 8, !dbg !1266
  %189 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1267
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %189, i32 0, i32 0, !dbg !1268
  %191 = load double, double* %190, align 8, !dbg !1268
  %192 = call double @fabs(double %191) #1, !dbg !1269
  %193 = fmul double 0x3CB0000000000000, %192, !dbg !1270
  %194 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1271
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %194, i32 0, i32 1, !dbg !1272
  %196 = load double, double* %195, align 8, !dbg !1273
  %197 = fadd double %196, %193, !dbg !1273
  store double %197, double* %195, align 8, !dbg !1273
  store i32 0, i32* %4, align 4, !dbg !1274
  br label %203, !dbg !1274

; <label>:198:                                    ; preds = %141
  %199 = load double, double* %5, align 8, !dbg !1275
  %200 = load i32, i32* %6, align 4, !dbg !1277
  %201 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1278
  %202 = call i32 @airy_bie(double %199, i32 %200, %struct.gsl_sf_result_struct* %201), !dbg !1279
  store i32 %202, i32* %4, align 4, !dbg !1280
  br label %203, !dbg !1280

; <label>:203:                                    ; preds = %198, %144, %140, %76
  %204 = load i32, i32* %4, align 4, !dbg !1281
  ret i32 %204, !dbg !1281
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
  br i1 %12, label %13, label %19, !dbg !1290

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1294, !llvm.loop !1297

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1299
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 851, i32 %15), !dbg !1299
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1299
  %17 = load double, double* %16, align 8, !dbg !1299
  store double %17, double* %3, align 8, !dbg !1299
  br label %22, !dbg !1299
                                                  ; No predecessors!
  br label %19, !dbg !1302

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1304
  %21 = load double, double* %20, align 8, !dbg !1304
  store double %21, double* %3, align 8, !dbg !1304
  br label %22, !dbg !1304

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1306
  ret double %23, !dbg !1306
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
  br i1 %12, label %13, label %19, !dbg !1313

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1317, !llvm.loop !1320

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1322
  call void @gsl_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 856, i32 %15), !dbg !1322
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1322
  %17 = load double, double* %16, align 8, !dbg !1322
  store double %17, double* %3, align 8, !dbg !1322
  br label %22, !dbg !1322
                                                  ; No predecessors!
  br label %19, !dbg !1325

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1327
  %21 = load double, double* %20, align 8, !dbg !1327
  store double %21, double* %3, align 8, !dbg !1327
  br label %22, !dbg !1327

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1329
  ret double %23, !dbg !1329
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
  br i1 %12, label %13, label %19, !dbg !1336

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1340, !llvm.loop !1343

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1345
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 861, i32 %15), !dbg !1345
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1345
  %17 = load double, double* %16, align 8, !dbg !1345
  store double %17, double* %3, align 8, !dbg !1345
  br label %22, !dbg !1345
                                                  ; No predecessors!
  br label %19, !dbg !1348

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1350
  %21 = load double, double* %20, align 8, !dbg !1350
  store double %21, double* %3, align 8, !dbg !1350
  br label %22, !dbg !1350

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1352
  ret double %23, !dbg !1352
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
  br i1 %12, label %13, label %19, !dbg !1359

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1363, !llvm.loop !1366

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1368
  call void @gsl_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 866, i32 %15), !dbg !1368
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1368
  %17 = load double, double* %16, align 8, !dbg !1368
  store double %17, double* %3, align 8, !dbg !1368
  br label %22, !dbg !1368
                                                  ; No predecessors!
  br label %19, !dbg !1371

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1373
  %21 = load double, double* %20, align 8, !dbg !1373
  store double %21, double* %3, align 8, !dbg !1373
  br label %22, !dbg !1373

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1375
  ret double %23, !dbg !1375
}

declare i32 @GSL_MODE_PREC(i32) #2

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
