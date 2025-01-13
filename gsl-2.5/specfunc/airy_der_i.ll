; ModuleID = 'airy_der.ll'
source_filename = "airy_der.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@aif_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([8 x double], [8 x double]* @aif_data, i32 0, i32 0), i32 7, double -1.000000e+00, double 1.000000e+00, i32 7 }, align 8
@aig_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([9 x double], [9 x double]* @aig_data, i32 0, i32 0), i32 8, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@aip1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([25 x double], [25 x double]* @aip1_data, i32 0, i32 0), i32 24, double -1.000000e+00, double 1.000000e+00, i32 14 }, align 8
@aip2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([15 x double], [15 x double]* @aip2_data, i32 0, i32 0), i32 14, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"airy_der.c\00", align 1
@bif_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([8 x double], [8 x double]* @bif_data, i32 0, i32 0), i32 7, double -1.000000e+00, double 1.000000e+00, i32 7 }, align 8
@big_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([9 x double], [9 x double]* @big_data, i32 0, i32 0), i32 8, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@bif2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([10 x double], [10 x double]* @bif2_data, i32 0, i32 0), i32 9, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@big2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([10 x double], [10 x double]* @big2_data, i32 0, i32 0), i32 9, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@bip1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([24 x double], [24 x double]* @bip1_data, i32 0, i32 0), i32 23, double -1.000000e+00, double 1.000000e+00, i32 13 }, align 8
@bip2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([29 x double], [29 x double]* @bip2_data, i32 0, i32 0), i32 28, double -1.000000e+00, double 1.000000e+00, i32 14 }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"gsl_sf_airy_Ai_deriv_scaled_e(x, mode, &result)\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"gsl_sf_airy_Ai_deriv_e(x, mode, &result)\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"gsl_sf_airy_Bi_deriv_scaled_e(x, mode, &result)\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"gsl_sf_airy_Bi_deriv_e(x, mode, &result)\00", align 1
@an20_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([16 x double], [16 x double]* @an20_data, i32 0, i32 0), i32 15, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@aph0_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([15 x double], [15 x double]* @aph0_data, i32 0, i32 0), i32 14, double -1.000000e+00, double 1.000000e+00, i32 7 }, align 8
@an21_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([24 x double], [24 x double]* @an21_data, i32 0, i32 0), i32 23, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@aph1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([22 x double], [22 x double]* @aph1_data, i32 0, i32 0), i32 21, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@an22_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([33 x double], [33 x double]* @an22_data, i32 0, i32 0), i32 32, double -1.000000e+00, double 1.000000e+00, i32 18 }, align 8
@aph2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([32 x double], [32 x double]* @aph2_data, i32 0, i32 0), i32 31, double -1.000000e+00, double 1.000000e+00, i32 16 }, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"x is greater than 1.0\00", align 1
@an20_data = internal global [16 x double] [double 0x3F89F46B06647521, double 0xBF4114DA628208E0, double 0xBED6179FF769D5C7, double 0xBE85DA75C9B03772, double 0xBE438A4EB5E73C28, double 0xBE098F1A6BD65D9D, double 0xBDD5DDCBF28D9667, double 0xBDA6E18C22EB4F2D, double 0xBD7C0753A7D51F16, double -2.770648e-13, double -5.353430e-14, double -1.130620e-14, double -2.577200e-15, double -6.278000e-16, double -1.621000e-16, double -4.410000e-17], align 16
@aph0_data = internal global [15 x double] [double 0xBFB5E8E4C218AC34, double 0x3F525FA6C310CAAB, double 0x3ED1EB22B68F37D4, double 0x3E75F28E1DDBB458, double 0x3E2D205EB7A37081, double 0x3DEEF7F829C4B8FE, double 0x3DB6AE6260FCB00C, double 0x3D84FC840BFB24F3, double 3.301618e-13, double 5.270100e-14, double 9.455500e-15, double 1.870900e-15, double 4.024000e-16, double 9.300000e-17, double 2.290000e-17], align 16
@an21_data = internal global [24 x double] [double 0x3F944EA90E7D1EED, double 0xBF6810A55CDF0FA9, double 0xBF1DC95102F4D3A9, double 0xBEE51679DA394FE6, double 0xBEB5E46950F9439B, double 0xBE8C819A5BA58D50, double 0xBE6598C4AB10E804, double 0xBE4240BEDAB8A7AB, double 0xBE20C35BCB6A311A, double 0xBE006FEEB58315D0, double 0xBDE0FF5EF2F89467, double 0xBDC25E912A7BD616, double 0xBDA49B0002A99112, double 0xBD87DD29665287D7, double -8.075954e-13, double -2.463214e-13, double -7.676560e-14, double -2.438830e-14, double -7.883100e-15, double -2.588200e-15, double -8.619000e-16, double -2.908000e-16, double -9.930000e-17, double -3.430000e-17], align 16
@aph1_data = internal global [22 x double] [double 0xBFBA3805029071EF, double 0x3F7D5E011325A6D4, double 0x3F1FB7E65B8E4772, double 0x3EDEC521E8F6058E, double 0x3EA948D83C4FD9CC, double 0x3E7BF4FBC69DE1D7, double 0x3E52B8BC79EA2F55, double 0x3E2CB0B14E499F0D, double 0x3E084D8AEF971BFD, double 0x3DE641027534F65F, double 0x3DC5B0A817BD708D, double 0x3DA6409E79A860F0, double 0x3D87D4C0519C05C1, double 7.523806e-13, double 2.156369e-13, double 6.352830e-14, double 1.917570e-14, double 5.914300e-15, double 1.859700e-15, double 5.950000e-16, double 1.934000e-16, double 6.380000e-17], align 16
@an22_data = internal global [33 x double] [double 0x3FAB840DAFB447CE, double 0xBF89F0B503BEFF19, double 0xBF53896DA017956D, double 0xBF2AA35C23872AE5, double 0xBF076867AD12E3D8, double 0xBEE7C5EABA6995AD, double 0xBECA8AEDBE3136F4, double 0xBEAFB2A940BE85AF, double 0xBE93E883DE91942B, double 0xBE7A03BBFC1985E7, double 0xBE618BD094A8A634, double 0xBE484C30F30B508B, double 0xBE3132BD8D3DA713, double 0xBE18CEED08F3160F, double 0xBE022FA4B539A128, double 0xBDEB0B73ADF8F37A, double 0xBDD45CEAD0846CE6, double 0xBDBF020DB4E59AA9, double 0xBDA7D8A20CF7B6E5, double 0xBD928133926652F8, double -1.645915e-12, double -6.486827e-13, double -2.574095e-13, double -1.027889e-13, double -4.128460e-14, double -1.667110e-14, double -6.765700e-15, double -2.758500e-15, double -1.129600e-15, double -4.645000e-16, double -1.917000e-16, double -7.940000e-17, double -3.300000e-17], align 16
@aph2_data = internal global [32 x double] [double 0xBFCA54AB16D2540E, double 0x3FA59DD1EC4CE9B7, double 0x3F60C781181BD558, double 0x3F311729E31FA901, double 0x3F08E4FBC30EA0D8, double 0x3EE60AA948FC3437, double 0x3EC61B60DAA6AF00, double 0x3EA830555A1CE80D, double 0x3E8C3AAA88EB6CC4, double 0x3E71503D22BE9735, double 0x3E56190D7BD2C030, double 0x3E3D22AD5CB97976, double 0x3E23BC0A1559E350, double 0x3E0B5AD6E8B4FF7E, double 0x3DF3563228D2D1D1, double 0x3DDBCF8D12084B54, double 0x3DC44D87C00774C2, double 0x3DAE0ABE97D2AF55, double 0x3D967E296F91A8C2, double 0x3D81059CEB8069EC, double 7.393607e-13, double 2.849792e-13, double 1.107281e-13, double 4.334120e-14, double 1.708010e-14, double 6.773300e-15, double 2.701700e-15, double 1.083500e-15, double 4.367000e-16, double 1.769000e-16, double 7.190000e-17, double 2.940000e-17], align 16
@aif_data = internal global [8 x double] [double 0x3FBAF346E8C752A0, double 0x3F883D8B51EBDE69, double 0x3F2028A015BCE79A, double 0x3EA4E432D4BABD0B, double 0x3E1FD58801700D16, double 0x3D8FF5705AC91EC3, double 5.046220e-15, double 5.220000e-18], align 16
@aig_data = internal global [9 x double] [double 0x3F95BE5570E6DAF5, double 0x3FB618CD01E9DF15, double 0x3F5D73A8A245C45E, double 0x3EEDEABB5FA79163, double 0x3E6FE9188AD28E95, double 0x3DE4F2377D2D1DB9, double 0x3D529E6336575AAD, double 3.315620e-16, double 3.140000e-19], align 16
@aip1_data = internal global [25 x double] [double 0x3FA25FB773C0A3CB, double 0x3F877BEF91C29760, double 0xBF48E0B163382612, double 0x3F16CB3BE17E56F4, double 0xBEEAE4AFF3D3A0BF, double 0x3EC281ED85A65441, double 0xBE9C55D90FA6283B, double 0x3E777ACC9D97CC8B, double 0xBE54B2EB8862EFC8, double 0x3E332F596016491F, double 0xBE12898A2A412AAC, double 0x3DF28DF12940762E, double 0xBDD3250B059E1DA3, double 0x3DB448EDE1DC742C, double 0xBD9600A1A6B4C646, double 0x3D785E7EE259399E, double -3.908218e-13, double 1.121536e-13, double -3.268620e-14, double 9.661900e-15, double -2.893500e-15, double 8.770000e-16, double -2.688000e-16, double 8.320000e-17, double -2.600000e-17], align 16
@aip2_data = internal global [15 x double] [double 0x3F7ACFBC8A301CC2, double 0x3F63864B520CCA55, double 0xBF0694C493F5AE4B, double 0x3EBA38A88FB4E085, double 0xBE75E3811593552E, double 0x3E373CC4D748D991, double 0xBDFD70B9065B2980, double 0x3DC569B24E08DC2D, double 0xBD916D2BDC24B2F7, double 4.428184e-13, double -5.362970e-14, double 6.965000e-15, double -9.620000e-16, double 1.403000e-16, double -2.150000e-17], align 16
@bif_data = internal global [8 x double] [double 0x3FBD87D1972257AB, double 0x3F94FE28B0252EE1, double 0x3F2BFCD86210EF79, double 0x3EB217AD02495704, double 0x3E2B91B37BF883E9, double 0x3D9BAD557CF40EE1, double 8.740300e-15, double 9.000000e-18], align 16
@big_data = internal global [9 x double] [double 0xBFB8E1DDACE0511C, double 0x3FC322EEE696951C, double 0x3F69818936D0805E, double 0x3EF9E8A80A88240B, double 0x3E7BA2A50116C6B9, double 0x3DF223D0E0BFAC63, double 0x3D601FD00DA5423B, double 5.742830e-16, double 5.440000e-19], align 16
@bif2_data = internal global [10 x double] [double 0x3FD4B420204D6CA7, double 0x3FB6179E07F5ABF0, double 0x3F6886ED3AA0192F, double 0x3F0AF6E37FAD4768, double 0x3EA1A4EEF043E8FC, double 0x3E2E985FC5232C55, double 0x3DB2DA69C400FB0F, double 6.166352e-14, double 1.719110e-16, double 3.820000e-19], align 16
@big2_data = internal global [10 x double] [double 0x3FF9B36792931206, double 0x3FE7D64B26D45FE0, double 0x3FA81233D561FD01, double 0x3F542075C674FDA9, double 0x3EF229E75A591D73, double 0x3E846D36D9B9968B, double 0x3E0F505F53BAE897, double 0x3D9164B320CC30DC, double 1.300170e-14, double 3.350000e-17], align 16
@bip1_data = internal global [24 x double] [double 0xBFC622337C13C1EB, double 0xBF8E96AFC233046B, double 0xBF41ED7ED78EC393, double 0x3F24288EFC7272C8, double 0x3EF02F6502FA3E6A, double 0xBEDB71EF39D04E14, double 0x3E9904CBFB92C11D, double 0x3E8BCF9B6CD8B5A9, double 0xBE71AAEEC7498296, double 0x3E40172435916640, double 0x3E13126B6A961275, double 0xBE08F67C36E09364, double 0x3DE88066A1D1935F, double 0xBDB7E5C18511E0F8, double 0xBD81DB9CA30E6FE9, double 0x3D80FCA3083638BD, double -6.044953e-13, double 1.209450e-13, double -1.251090e-14, double -1.991700e-15, double 1.515400e-15, double -4.977000e-16, double 1.155000e-16, double -1.860000e-17], align 16
@bip2_data = internal global [29 x double] [double 0xBFC0FC379289999E, double 0xBF7748903D5BA1FA, double 0xBF24811F1AA044F7, double 0xBEE7D6CFB76A3069, double 0xBEB811BF388A728D, double 0xBE884A9BA381DDB9, double 0x3E43E3B6BB2A4D25, double 0x3E525C6D63A1EBC7, double 0x3E34795A0B71A809, double 0xBDF82F92E1744BE0, double 0xBE043C12BE527689, double 0xBDD25B9388A9B173, double 0x3DD1947A959BBD2C, double 0x3DB1179C80F2FE59, double -7.923970e-12, double 0xBD86B8FD675F1B6E, double 0x3D7566DB35B78921, double 0x3D5B3CDEDA74AB97, double 0xBD4FA5CFD208AE25, double -4.953477e-14, double 4.563782e-14, double 3.329980e-15, double -9.217500e-15, double 9.415700e-16, double 1.671540e-15, double -5.513400e-16, double -2.236900e-16, double 1.748700e-16, double 2.070000e-18], align 16
@0 = private unnamed_addr constant [30 x i8] c"gsl_sf_airy_Ai_deriv_scaled_e\00"
@1 = private unnamed_addr constant [12 x i8] c"airy_der.ll\00"
@2 = private unnamed_addr constant [21 x i8] c"airy_deriv_mod_phase\00"
@3 = private unnamed_addr constant [12 x i8] c"airy_der.ll\00"
@4 = private unnamed_addr constant [17 x i8] c"cheb_eval_mode_e\00"
@5 = private unnamed_addr constant [12 x i8] c"airy_der.ll\00"
@6 = private unnamed_addr constant [23 x i8] c"gsl_sf_airy_Ai_deriv_e\00"
@7 = private unnamed_addr constant [12 x i8] c"airy_der.ll\00"
@8 = private unnamed_addr constant [30 x i8] c"gsl_sf_airy_Bi_deriv_scaled_e\00"
@9 = private unnamed_addr constant [12 x i8] c"airy_der.ll\00"
@10 = private unnamed_addr constant [23 x i8] c"gsl_sf_airy_Bi_deriv_e\00"
@11 = private unnamed_addr constant [12 x i8] c"airy_der.ll\00"
@12 = private unnamed_addr constant [28 x i8] c"gsl_sf_airy_Ai_deriv_scaled\00"
@13 = private unnamed_addr constant [12 x i8] c"airy_der.ll\00"
@14 = private unnamed_addr constant [21 x i8] c"gsl_sf_airy_Ai_deriv\00"
@15 = private unnamed_addr constant [12 x i8] c"airy_der.ll\00"
@16 = private unnamed_addr constant [28 x i8] c"gsl_sf_airy_Bi_deriv_scaled\00"
@17 = private unnamed_addr constant [12 x i8] c"airy_der.ll\00"
@18 = private unnamed_addr constant [21 x i8] c"gsl_sf_airy_Bi_deriv\00"
@19 = private unnamed_addr constant [12 x i8] c"airy_der.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_airy_Ai_deriv_scaled_e(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !123 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !138, metadata !139), !dbg !140
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !141, metadata !139), !dbg !142
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !143, metadata !139), !dbg !144
  %25 = load double, double* %5, align 8, !dbg !145
  %26 = fcmp olt double %25, -1.000000e+00, !dbg !147
  %27 = call i1 @fCmpInstHandler(double %25, double -1.000000e+00, i1 %26, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677037408, i32 640, i32 8), !dbg !148
  br i1 %27, label %28, label %66, !dbg !148

; <label>:28:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !149, metadata !139), !dbg !151
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !152, metadata !139), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %10, metadata !154, metadata !139), !dbg !155
  %29 = load double, double* %5, align 8, !dbg !156
  %30 = load i32, i32* %6, align 4, !dbg !157
  %31 = call i32 @airy_deriv_mod_phase(double %29, i32 %30, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !158
  store i32 %31, i32* %10, align 4, !dbg !155
  call void @llvm.dbg.declare(metadata double* %11, metadata !159, metadata !139), !dbg !160
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !161
  %33 = load double, double* %32, align 8, !dbg !161
  %34 = call double @cos(double %33) #6, !dbg !162
  call void @callOneArgHandler(i32 2, double %33, double %34, i64 94190676982472, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677048704, i32 644, i32 19), !dbg !160
  store double %34, double* %11, align 8, !dbg !160
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !163
  %36 = load double, double* %35, align 8, !dbg !163
  %37 = load double, double* %11, align 8, !dbg !164
  %38 = fmul double %36, %37, !dbg !165
  call void @fMulHandler(double %36, double %37, double %38, i64 94190677051320, i64 94190677052968, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677053376, i32 645, i32 26), !dbg !166
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !166
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !167
  store double %38, double* %40, align 8, !dbg !168
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !169
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !170
  %43 = load double, double* %42, align 8, !dbg !170
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !171
  %45 = load double, double* %44, align 8, !dbg !171
  %46 = fmul double %43, %45, !dbg !172
  call void @fMulHandler(double %43, double %45, double %46, i64 94190677055848, i64 94190677057944, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677059616, i32 646, i32 37), !dbg !173
  %47 = call double @fabs(double %46) #1, !dbg !173
  %48 = load double, double* %11, align 8, !dbg !174
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !175
  %50 = load double, double* %49, align 8, !dbg !175
  %51 = fmul double %48, %50, !dbg !176
  call void @fMulHandler(double %48, double %50, double %51, i64 94190677060856, i64 94190677061688, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677063360, i32 646, i32 55), !dbg !177
  %52 = call double @fabs(double %51) #1, !dbg !177
  %53 = fadd double %47, %52, !dbg !179
  call void @fAddHandler(double %47, double %52, double %53, i64 94190677060368, i64 94190677063840, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677064320, i32 646, i32 46), !dbg !180
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !180
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !181
  store double %53, double* %55, align 8, !dbg !182
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !183
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !184
  %58 = load double, double* %57, align 8, !dbg !184
  %59 = call double @fabs(double %58) #1, !dbg !185
  %60 = fmul double 0x3CB0000000000000, %59, !dbg !186
  call void @fMulHandler(double 0x3CB0000000000000, double %59, double %60, i64 0, i64 94190677068528, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677069072, i32 647, i32 36), !dbg !187
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !187
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !188
  %63 = load double, double* %62, align 8, !dbg !189
  %64 = fadd double %63, %60, !dbg !189
  call void @fAddHandler(double %63, double %60, double %64, i64 94190677070296, i64 94190677069072, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677070704, i32 647, i32 17), !dbg !189
  store double %64, double* %62, align 8, !dbg !189
  %65 = load i32, i32* %10, align 4, !dbg !190
  store i32 %65, i32* %4, align 4, !dbg !191
  br label %214, !dbg !191

; <label>:66:                                     ; preds = %3
  %67 = load double, double* %5, align 8, !dbg !192
  %68 = fcmp ole double %67, 1.000000e+00, !dbg !194
  %69 = call i1 @fCmpInstHandler(double %67, double 1.000000e+00, i1 %68, i32 5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677076496, i32 650, i32 13), !dbg !195
  br i1 %69, label %70, label %137, !dbg !195

; <label>:70:                                     ; preds = %66
  call void @llvm.dbg.declare(metadata double* %12, metadata !196, metadata !139), !dbg !198
  %71 = load double, double* %5, align 8, !dbg !199
  %72 = load double, double* %5, align 8, !dbg !200
  %73 = fmul double %71, %72, !dbg !201
  call void @fMulHandler(double %71, double %72, double %73, i64 94190677078728, i64 94190677079080, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677079488, i32 651, i32 24), !dbg !202
  %74 = load double, double* %5, align 8, !dbg !202
  %75 = fmul double %73, %74, !dbg !203
  call void @fMulHandler(double %73, double %74, double %75, i64 94190677079488, i64 94190677079880, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677080288, i32 651, i32 26), !dbg !198
  store double %75, double* %12, align 8, !dbg !198
  call void @llvm.dbg.declare(metadata double* %13, metadata !204, metadata !139), !dbg !205
  %76 = load double, double* %5, align 8, !dbg !206
  %77 = load double, double* %5, align 8, !dbg !207
  %78 = fmul double %76, %77, !dbg !208
  call void @fMulHandler(double %76, double %77, double %78, i64 94190677083480, i64 94190677083832, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677084240, i32 652, i32 24), !dbg !205
  store double %78, double* %13, align 8, !dbg !205
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !209, metadata !139), !dbg !210
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !211, metadata !139), !dbg !212
  %79 = load double, double* %12, align 8, !dbg !213
  %80 = load i32, i32* %6, align 4, !dbg !214
  %81 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aif_cs, double %79, i32 %80, %struct.gsl_sf_result_struct* %14), !dbg !215
  %82 = load double, double* %12, align 8, !dbg !216
  %83 = load i32, i32* %6, align 4, !dbg !217
  %84 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aig_cs, double %82, i32 %83, %struct.gsl_sf_result_struct* %15), !dbg !218
  %85 = load double, double* %13, align 8, !dbg !219
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !220
  %87 = load double, double* %86, align 8, !dbg !220
  %88 = fadd double 1.250000e-01, %87, !dbg !221
  call void @fAddHandler(double 1.250000e-01, double %87, double %88, i64 0, i64 94190677092408, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677094176, i32 658, i32 31), !dbg !222
  %89 = fmul double %85, %88, !dbg !222
  call void @fMulHandler(double %85, double %88, double %89, i64 94190677091608, i64 94190677094176, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677094560, i32 658, i32 23), !dbg !223
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !223
  %91 = load double, double* %90, align 8, !dbg !223
  %92 = fsub double %89, %91, !dbg !224
  call void @fSubHandler(double %89, double %91, double %92, i64 94190677094560, i64 94190677095400, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677097072, i32 658, i32 48), !dbg !225
  %93 = fsub double %92, 2.500000e-01, !dbg !225
  call void @fSubHandler(double %92, double 2.500000e-01, double %93, i64 94190677097072, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677097584, i32 658, i32 65), !dbg !226
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !226
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 0, !dbg !227
  store double %93, double* %95, align 8, !dbg !228
  %96 = load double, double* %13, align 8, !dbg !229
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !230
  %98 = load double, double* %97, align 8, !dbg !230
  %99 = fmul double %96, %98, !dbg !231
  call void @fMulHandler(double %96, double %98, double %99, i64 94190677099192, i64 94190677100024, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677101696, i32 659, i32 27), !dbg !232
  %100 = call double @fabs(double %99) #1, !dbg !232
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !233
  %102 = load double, double* %101, align 8, !dbg !233
  %103 = fadd double %100, %102, !dbg !234
  call void @fAddHandler(double %100, double %102, double %103, i64 94190677102176, i64 94190677103080, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677104752, i32 659, i32 43), !dbg !235
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !235
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 1, !dbg !236
  store double %103, double* %105, align 8, !dbg !237
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !238
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !239
  %108 = load double, double* %107, align 8, !dbg !239
  %109 = call double @fabs(double %108) #1, !dbg !240
  %110 = fmul double 0x3CB0000000000000, %109, !dbg !241
  call void @fMulHandler(double 0x3CB0000000000000, double %109, double %110, i64 0, i64 94190677108960, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677109440, i32 660, i32 36), !dbg !242
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !242
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 1, !dbg !243
  %113 = load double, double* %112, align 8, !dbg !244
  %114 = fadd double %113, %110, !dbg !244
  call void @fAddHandler(double %113, double %110, double %114, i64 94190677110664, i64 94190677109440, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677111072, i32 660, i32 17), !dbg !244
  store double %114, double* %112, align 8, !dbg !244
  %115 = load double, double* %5, align 8, !dbg !245
  %116 = fcmp ogt double %115, 0x3DC428A2F98D7292, !dbg !247
  %117 = call i1 @fCmpInstHandler(double %115, double 0x3DC428A2F98D7292, i1 %116, i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677113328, i32 662, i32 10), !dbg !248
  br i1 %117, label %118, label %136, !dbg !248

; <label>:118:                                    ; preds = %70
  call void @llvm.dbg.declare(metadata double* %16, metadata !249, metadata !139), !dbg !251
  %119 = load double, double* %5, align 8, !dbg !252
  %120 = fmul double 2.000000e+00, %119, !dbg !253
  call void @fMulHandler(double 2.000000e+00, double %119, double %120, i64 0, i64 94190677115496, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677115968, i32 664, i32 25), !dbg !254
  %121 = load double, double* %5, align 8, !dbg !254
  %122 = call double @sqrt(double %121) #6, !dbg !255
  call void @callOneArgHandler(i32 14, double %121, double %122, i64 94190677116328, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677117072, i32 664, i32 28), !dbg !256
  %123 = fmul double %120, %122, !dbg !256
  call void @fMulHandler(double %120, double %122, double %123, i64 94190677115968, i64 94190677117072, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677117584, i32 664, i32 27), !dbg !257
  %124 = fdiv double %123, 3.000000e+00, !dbg !257
  call void @fDivHandler(double %123, double 3.000000e+00, double %124, i64 94190677117584, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677118096, i32 664, i32 35), !dbg !258
  %125 = call double @exp(double %124) #6, !dbg !258
  call void @callOneArgHandler(i32 11, double %124, double %125, i64 94190677118096, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677120880, i32 664, i32 18), !dbg !251
  store double %125, double* %16, align 8, !dbg !251
  %126 = load double, double* %16, align 8, !dbg !260
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !261
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 0, !dbg !262
  %129 = load double, double* %128, align 8, !dbg !263
  %130 = fmul double %129, %126, !dbg !263
  call void @fMulHandler(double %129, double %126, double %130, i64 94190677124264, i64 94190677123048, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677124672, i32 665, i32 19), !dbg !263
  store double %130, double* %128, align 8, !dbg !263
  %131 = load double, double* %16, align 8, !dbg !264
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !265
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 1, !dbg !266
  %134 = load double, double* %133, align 8, !dbg !267
  %135 = fmul double %134, %131, !dbg !267
  call void @fMulHandler(double %134, double %131, double %135, i64 94190677129736, i64 94190677126456, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677130144, i32 666, i32 19), !dbg !267
  store double %135, double* %133, align 8, !dbg !267
  br label %136, !dbg !268

; <label>:136:                                    ; preds = %118, %70
  store i32 0, i32* %4, align 4, !dbg !269
  br label %214, !dbg !269

; <label>:137:                                    ; preds = %66
  %138 = load double, double* %5, align 8, !dbg !270
  %139 = fcmp ole double %138, 4.000000e+00, !dbg !272
  %140 = call i1 @fCmpInstHandler(double %138, double 4.000000e+00, i1 %139, i32 5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677134752, i32 671, i32 13), !dbg !273
  br i1 %140, label %141, label %178, !dbg !273

; <label>:141:                                    ; preds = %137
  call void @llvm.dbg.declare(metadata double* %17, metadata !274, metadata !139), !dbg !276
  %142 = load double, double* %5, align 8, !dbg !277
  %143 = call double @sqrt(double %142) #6, !dbg !278
  call void @callOneArgHandler(i32 14, double %142, double %143, i64 94190677136984, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677137424, i32 672, i32 26), !dbg !276
  store double %143, double* %17, align 8, !dbg !276
  call void @llvm.dbg.declare(metadata double* %18, metadata !279, metadata !139), !dbg !280
  %144 = load double, double* %5, align 8, !dbg !281
  %145 = load double, double* %17, align 8, !dbg !282
  %146 = fmul double %144, %145, !dbg !283
  call void @fMulHandler(double %144, double %145, double %146, i64 94190677140680, i64 94190677141032, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677141440, i32 673, i32 30), !dbg !284
  %147 = fdiv double 1.600000e+01, %146, !dbg !284
  call void @fDivHandler(double 1.600000e+01, double %146, double %147, i64 0, i64 94190677141440, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677141952, i32 673, i32 27), !dbg !285
  %148 = fsub double %147, 9.000000e+00, !dbg !285
  call void @fSubHandler(double %147, double 9.000000e+00, double %148, i64 94190677141952, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677142432, i32 673, i32 38), !dbg !286
  %149 = fdiv double %148, 7.000000e+00, !dbg !286
  call void @fDivHandler(double %148, double 7.000000e+00, double %149, i64 94190677142432, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677142912, i32 673, i32 44), !dbg !280
  store double %149, double* %18, align 8, !dbg !280
  call void @llvm.dbg.declare(metadata double* %19, metadata !287, metadata !139), !dbg !288
  %150 = load double, double* %17, align 8, !dbg !289
  %151 = call double @sqrt(double %150) #6, !dbg !290
  call void @callOneArgHandler(i32 14, double %150, double %151, i64 94190677146072, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677146512, i32 674, i32 22), !dbg !288
  store double %151, double* %19, align 8, !dbg !288
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !291, metadata !139), !dbg !292
  %152 = load double, double* %18, align 8, !dbg !293
  %153 = load i32, i32* %6, align 4, !dbg !294
  %154 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aip1_cs, double %152, i32 %153, %struct.gsl_sf_result_struct* %20), !dbg !295
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !296
  %156 = load double, double* %155, align 8, !dbg !296
  %157 = fadd double 2.812500e-01, %156, !dbg !297
  call void @fAddHandler(double 2.812500e-01, double %156, double %157, i64 0, i64 94190677151528, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677153296, i32 677, i32 30), !dbg !298
  %158 = fsub double -0.000000e+00, %157, !dbg !298
  call void @fSubHandler(double -0.000000e+00, double %157, double %158, i64 0, i64 94190677153296, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677153744, i32 677, i32 20), !dbg !299
  %159 = load double, double* %19, align 8, !dbg !299
  %160 = fmul double %158, %159, !dbg !300
  call void @fMulHandler(double %158, double %159, double %160, i64 94190677153744, i64 94190677154136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677154544, i32 677, i32 47), !dbg !301
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !301
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !302
  store double %160, double* %162, align 8, !dbg !303
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !304
  %164 = load double, double* %163, align 8, !dbg !304
  %165 = load double, double* %19, align 8, !dbg !305
  %166 = fmul double %164, %165, !dbg !306
  call void @fMulHandler(double %164, double %165, double %166, i64 94190677156632, i64 94190677158280, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677158688, i32 678, i32 34), !dbg !307
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !307
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 1, !dbg !308
  store double %166, double* %168, align 8, !dbg !309
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !310
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 0, !dbg !311
  %171 = load double, double* %170, align 8, !dbg !311
  %172 = call double @fabs(double %171) #1, !dbg !312
  %173 = fmul double 0x3CB0000000000000, %172, !dbg !313
  call void @fMulHandler(double 0x3CB0000000000000, double %172, double %173, i64 0, i64 94190677162896, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677163376, i32 679, i32 36), !dbg !314
  %174 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !314
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %174, i32 0, i32 1, !dbg !315
  %176 = load double, double* %175, align 8, !dbg !316
  %177 = fadd double %176, %173, !dbg !316
  call void @fAddHandler(double %176, double %173, double %177, i64 94190677164600, i64 94190677163376, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677165008, i32 679, i32 17), !dbg !316
  store double %177, double* %175, align 8, !dbg !316
  store i32 0, i32* %4, align 4, !dbg !317
  br label %214, !dbg !317

; <label>:178:                                    ; preds = %137
  call void @llvm.dbg.declare(metadata double* %21, metadata !318, metadata !139), !dbg !320
  %179 = load double, double* %5, align 8, !dbg !321
  %180 = call double @sqrt(double %179) #6, !dbg !322
  call void @callOneArgHandler(i32 14, double %179, double %180, i64 94190677169912, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677170352, i32 683, i32 26), !dbg !320
  store double %180, double* %21, align 8, !dbg !320
  call void @llvm.dbg.declare(metadata double* %22, metadata !323, metadata !139), !dbg !324
  %181 = load double, double* %5, align 8, !dbg !325
  %182 = load double, double* %21, align 8, !dbg !326
  %183 = fmul double %181, %182, !dbg !327
  call void @fMulHandler(double %181, double %182, double %183, i64 94190677173608, i64 94190677173960, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677174368, i32 684, i32 29), !dbg !328
  %184 = fdiv double 1.600000e+01, %183, !dbg !328
  call void @fDivHandler(double 1.600000e+01, double %183, double %184, i64 0, i64 94190677174368, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677174816, i32 684, i32 26), !dbg !329
  %185 = fsub double %184, 1.000000e+00, !dbg !329
  call void @fSubHandler(double %184, double 1.000000e+00, double %185, i64 94190677174816, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677175232, i32 684, i32 37), !dbg !324
  store double %185, double* %22, align 8, !dbg !324
  call void @llvm.dbg.declare(metadata double* %23, metadata !330, metadata !139), !dbg !331
  %186 = load double, double* %21, align 8, !dbg !332
  %187 = call double @sqrt(double %186) #6, !dbg !333
  call void @callOneArgHandler(i32 14, double %186, double %187, i64 94190677178392, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677178832, i32 685, i32 22), !dbg !331
  store double %187, double* %23, align 8, !dbg !331
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !334, metadata !139), !dbg !335
  %188 = load double, double* %22, align 8, !dbg !336
  %189 = load i32, i32* %6, align 4, !dbg !337
  %190 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aip2_cs, double %188, i32 %189, %struct.gsl_sf_result_struct* %24), !dbg !338
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !339
  %192 = load double, double* %191, align 8, !dbg !339
  %193 = fadd double 2.812500e-01, %192, !dbg !340
  call void @fAddHandler(double 2.812500e-01, double %192, double %193, i64 0, i64 94190677183848, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677185552, i32 688, i32 30), !dbg !341
  %194 = fsub double -0.000000e+00, %193, !dbg !341
  call void @fSubHandler(double -0.000000e+00, double %193, double %194, i64 0, i64 94190677185552, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677185936, i32 688, i32 20), !dbg !342
  %195 = load double, double* %23, align 8, !dbg !342
  %196 = fmul double %194, %195, !dbg !343
  call void @fMulHandler(double %194, double %195, double %196, i64 94190677185936, i64 94190677186328, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677186736, i32 688, i32 47), !dbg !344
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !344
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %197, i32 0, i32 0, !dbg !345
  store double %196, double* %198, align 8, !dbg !346
  %199 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !347
  %200 = load double, double* %199, align 8, !dbg !347
  %201 = load double, double* %23, align 8, !dbg !348
  %202 = fmul double %200, %201, !dbg !349
  call void @fMulHandler(double %200, double %201, double %202, i64 94190677188824, i64 94190677190472, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677190880, i32 689, i32 34), !dbg !350
  %203 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !350
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %203, i32 0, i32 1, !dbg !351
  store double %202, double* %204, align 8, !dbg !352
  %205 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !353
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %205, i32 0, i32 0, !dbg !354
  %207 = load double, double* %206, align 8, !dbg !354
  %208 = call double @fabs(double %207) #1, !dbg !355
  %209 = fmul double 0x3CB0000000000000, %208, !dbg !356
  call void @fMulHandler(double 0x3CB0000000000000, double %208, double %209, i64 0, i64 94190677195088, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677195568, i32 690, i32 36), !dbg !357
  %210 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !357
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %210, i32 0, i32 1, !dbg !358
  %212 = load double, double* %211, align 8, !dbg !359
  %213 = fadd double %212, %209, !dbg !359
  call void @fAddHandler(double %212, double %209, double %213, i64 94190677196792, i64 94190677195568, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 94190677197200, i32 690, i32 17), !dbg !359
  store double %213, double* %211, align 8, !dbg !359
  store i32 0, i32* %4, align 4, !dbg !360
  br label %214, !dbg !360

; <label>:214:                                    ; preds = %178, %141, %136, %28
  %215 = load i32, i32* %4, align 4, !dbg !361
  ret i32 %215, !dbg !361
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal i32 @airy_deriv_mod_phase(double, i32, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !362 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !365, metadata !139), !dbg !366
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !367, metadata !139), !dbg !368
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !369, metadata !139), !dbg !370
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !371, metadata !139), !dbg !372
  call void @llvm.dbg.declare(metadata double* %10, metadata !373, metadata !139), !dbg !374
  store double 0x4002D97C7F3321D2, double* %10, align 8, !dbg !374
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !375, metadata !139), !dbg !376
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !377, metadata !139), !dbg !378
  call void @llvm.dbg.declare(metadata double* %13, metadata !379, metadata !139), !dbg !380
  call void @llvm.dbg.declare(metadata double* %14, metadata !381, metadata !139), !dbg !382
  call void @llvm.dbg.declare(metadata double* %15, metadata !383, metadata !139), !dbg !384
  %19 = load double, double* %6, align 8, !dbg !385
  %20 = fcmp ole double %19, -4.000000e+00, !dbg !387
  %21 = call i1 @fCmpInstHandler(double %19, double -4.000000e+00, i1 %20, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677219120, i32 596, i32 8), !dbg !388
  br i1 %21, label %22, label %36, !dbg !388

; <label>:22:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata double* %16, metadata !389, metadata !139), !dbg !391
  %23 = load double, double* %6, align 8, !dbg !392
  %24 = load double, double* %6, align 8, !dbg !393
  %25 = fmul double %23, %24, !dbg !394
  call void @fMulHandler(double %23, double %24, double %25, i64 94190676973816, i64 94190677221512, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677221920, i32 597, i32 24), !dbg !395
  %26 = load double, double* %6, align 8, !dbg !395
  %27 = fmul double %25, %26, !dbg !396
  call void @fMulHandler(double %25, double %26, double %27, i64 94190677221920, i64 94190677222312, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677222720, i32 597, i32 26), !dbg !397
  %28 = fdiv double 1.280000e+02, %27, !dbg !397
  call void @fDivHandler(double 1.280000e+02, double %27, double %28, i64 0, i64 94190677222720, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677223232, i32 597, i32 21), !dbg !398
  %29 = fadd double %28, 1.000000e+00, !dbg !398
  call void @fAddHandler(double %28, double 1.000000e+00, double %29, i64 94190677223232, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677223648, i32 597, i32 30), !dbg !391
  store double %29, double* %16, align 8, !dbg !391
  %30 = load double, double* %16, align 8, !dbg !399
  %31 = load i32, i32* %7, align 4, !dbg !400
  %32 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @an20_cs, double %30, i32 %31, %struct.gsl_sf_result_struct* %11), !dbg !401
  %33 = load double, double* %16, align 8, !dbg !402
  %34 = load i32, i32* %7, align 4, !dbg !403
  %35 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aph0_cs, double %33, i32 %34, %struct.gsl_sf_result_struct* %12), !dbg !404
  br label %87, !dbg !405

; <label>:36:                                     ; preds = %4
  %37 = load double, double* %6, align 8, !dbg !406
  %38 = fcmp ole double %37, -2.000000e+00, !dbg !408
  %39 = call i1 @fCmpInstHandler(double %37, double -2.000000e+00, i1 %38, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677229344, i32 601, i32 13), !dbg !409
  br i1 %39, label %40, label %55, !dbg !409

; <label>:40:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata double* %17, metadata !410, metadata !139), !dbg !412
  %41 = load double, double* %6, align 8, !dbg !413
  %42 = load double, double* %6, align 8, !dbg !414
  %43 = fmul double %41, %42, !dbg !415
  call void @fMulHandler(double %41, double %42, double %43, i64 94190677231480, i64 94190677231832, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677232240, i32 602, i32 25), !dbg !416
  %44 = load double, double* %6, align 8, !dbg !416
  %45 = fmul double %43, %44, !dbg !417
  call void @fMulHandler(double %43, double %44, double %45, i64 94190677232240, i64 94190677232632, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677233040, i32 602, i32 27), !dbg !418
  %46 = fdiv double 1.280000e+02, %45, !dbg !418
  call void @fDivHandler(double 1.280000e+02, double %45, double %46, i64 0, i64 94190677233040, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677233488, i32 602, i32 22), !dbg !419
  %47 = fadd double %46, 9.000000e+00, !dbg !419
  call void @fAddHandler(double %46, double 9.000000e+00, double %47, i64 94190677233488, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677233904, i32 602, i32 31), !dbg !420
  %48 = fdiv double %47, 7.000000e+00, !dbg !420
  call void @fDivHandler(double %47, double 7.000000e+00, double %48, i64 94190677233904, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677234320, i32 602, i32 38), !dbg !412
  store double %48, double* %17, align 8, !dbg !412
  %49 = load double, double* %17, align 8, !dbg !421
  %50 = load i32, i32* %7, align 4, !dbg !422
  %51 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @an21_cs, double %49, i32 %50, %struct.gsl_sf_result_struct* %11), !dbg !423
  %52 = load double, double* %17, align 8, !dbg !424
  %53 = load i32, i32* %7, align 4, !dbg !425
  %54 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aph1_cs, double %52, i32 %53, %struct.gsl_sf_result_struct* %12), !dbg !426
  br label %86, !dbg !427

; <label>:55:                                     ; preds = %36
  %56 = load double, double* %6, align 8, !dbg !428
  %57 = fcmp ole double %56, -1.000000e+00, !dbg !430
  %58 = call i1 @fCmpInstHandler(double %56, double -1.000000e+00, i1 %57, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677239952, i32 606, i32 13), !dbg !431
  br i1 %58, label %59, label %74, !dbg !431

; <label>:59:                                     ; preds = %55
  call void @llvm.dbg.declare(metadata double* %18, metadata !432, metadata !139), !dbg !434
  %60 = load double, double* %6, align 8, !dbg !435
  %61 = load double, double* %6, align 8, !dbg !436
  %62 = fmul double %60, %61, !dbg !437
  call void @fMulHandler(double %60, double %61, double %62, i64 94190677242088, i64 94190677242440, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677242848, i32 607, i32 24), !dbg !438
  %63 = load double, double* %6, align 8, !dbg !438
  %64 = fmul double %62, %63, !dbg !439
  call void @fMulHandler(double %62, double %63, double %64, i64 94190677242848, i64 94190677243240, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677243648, i32 607, i32 26), !dbg !440
  %65 = fdiv double 1.600000e+01, %64, !dbg !440
  call void @fDivHandler(double 1.600000e+01, double %64, double %65, i64 0, i64 94190677243648, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677244096, i32 607, i32 21), !dbg !441
  %66 = fadd double %65, 9.000000e+00, !dbg !441
  call void @fAddHandler(double %65, double 9.000000e+00, double %66, i64 94190677244096, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677244512, i32 607, i32 30), !dbg !442
  %67 = fdiv double %66, 7.000000e+00, !dbg !442
  call void @fDivHandler(double %66, double 7.000000e+00, double %67, i64 94190677244512, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677244928, i32 607, i32 37), !dbg !434
  store double %67, double* %18, align 8, !dbg !434
  %68 = load double, double* %18, align 8, !dbg !443
  %69 = load i32, i32* %7, align 4, !dbg !444
  %70 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @an22_cs, double %68, i32 %69, %struct.gsl_sf_result_struct* %11), !dbg !445
  %71 = load double, double* %18, align 8, !dbg !446
  %72 = load i32, i32* %7, align 4, !dbg !447
  %73 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aph2_cs, double %71, i32 %72, %struct.gsl_sf_result_struct* %12), !dbg !448
  br label %85, !dbg !449

; <label>:74:                                     ; preds = %55
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !450
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !452
  store double 0.000000e+00, double* %76, align 8, !dbg !453
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !454
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !455
  store double 0.000000e+00, double* %78, align 8, !dbg !456
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !457
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !458
  store double 0.000000e+00, double* %80, align 8, !dbg !459
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !460
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !461
  store double 0.000000e+00, double* %82, align 8, !dbg !462
  br label %83, !dbg !463, !llvm.loop !464

; <label>:83:                                     ; preds = %74
  call void @gsl_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 616, i32 1), !dbg !465
  store i32 1, i32* %5, align 4, !dbg !465
  br label %139, !dbg !465
                                                  ; No predecessors!
  br label %85

; <label>:85:                                     ; preds = %84, %59
  br label %86

; <label>:86:                                     ; preds = %85, %40
  br label %87

; <label>:87:                                     ; preds = %86, %22
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !468
  %89 = load double, double* %88, align 8, !dbg !468
  %90 = fadd double 3.125000e-01, %89, !dbg !469
  call void @fAddHandler(double 3.125000e-01, double %89, double %90, i64 0, i64 94190677265448, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677267152, i32 619, i32 15), !dbg !470
  store double %90, double* %13, align 8, !dbg !470
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !471
  %92 = load double, double* %91, align 8, !dbg !471
  %93 = fadd double -6.250000e-01, %92, !dbg !472
  call void @fAddHandler(double -6.250000e-01, double %92, double %93, i64 0, i64 94190677268312, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677270080, i32 620, i32 15), !dbg !473
  store double %93, double* %14, align 8, !dbg !473
  %94 = load double, double* %6, align 8, !dbg !474
  %95 = fsub double -0.000000e+00, %94, !dbg !475
  call void @fSubHandler(double -0.000000e+00, double %94, double %95, i64 0, i64 94190677270856, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677271264, i32 622, i32 14), !dbg !476
  %96 = call double @sqrt(double %95) #6, !dbg !476
  call void @callOneArgHandler(i32 14, double %95, double %96, i64 94190677271264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677271744, i32 622, i32 9), !dbg !477
  store double %96, double* %15, align 8, !dbg !477
  %97 = load double, double* %13, align 8, !dbg !478
  %98 = load double, double* %15, align 8, !dbg !479
  %99 = fmul double %97, %98, !dbg !480
  call void @fMulHandler(double %97, double %98, double %99, i64 94190677272616, i64 94190677273000, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677273408, i32 624, i32 22), !dbg !481
  %100 = call double @sqrt(double %99) #6, !dbg !481
  call void @callOneArgHandler(i32 14, double %99, double %100, i64 94190677273408, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677273888, i32 624, i32 15), !dbg !482
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !482
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 0, !dbg !483
  store double %100, double* %102, align 8, !dbg !484
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !485
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !486
  %105 = load double, double* %104, align 8, !dbg !486
  %106 = call double @fabs(double %105) #1, !dbg !487
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !488
  %108 = load double, double* %107, align 8, !dbg !488
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !489
  %110 = load double, double* %109, align 8, !dbg !489
  %111 = fdiv double %108, %110, !dbg !490
  call void @fDivHandler(double %108, double %110, double %111, i64 94190677279064, i64 94190677281160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677282832, i32 625, i32 69), !dbg !491
  %112 = call double @fabs(double %111) #1, !dbg !491
  %113 = fadd double 0x3CB0000000000000, %112, !dbg !493
  call void @fAddHandler(double 0x3CB0000000000000, double %112, double %113, i64 0, i64 94190677283312, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677283792, i32 625, i32 50), !dbg !494
  %114 = fmul double %106, %113, !dbg !494
  call void @fMulHandler(double %106, double %113, double %114, i64 94190677278160, i64 94190677283792, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677284208, i32 625, i32 31), !dbg !495
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !495
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !496
  store double %114, double* %116, align 8, !dbg !497
  %117 = load double, double* %6, align 8, !dbg !498
  %118 = load double, double* %15, align 8, !dbg !499
  %119 = fmul double %117, %118, !dbg !500
  call void @fMulHandler(double %117, double %118, double %119, i64 94190677285848, i64 94190677286232, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677286640, i32 626, i32 24), !dbg !501
  %120 = load double, double* %14, align 8, !dbg !501
  %121 = fmul double %119, %120, !dbg !502
  call void @fMulHandler(double %119, double %120, double %121, i64 94190677286640, i64 94190677287032, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677287440, i32 626, i32 30), !dbg !503
  %122 = fsub double 0x4002D97C7F3321D2, %121, !dbg !503
  call void @fSubHandler(double 0x4002D97C7F3321D2, double %121, double %122, i64 0, i64 94190677287440, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677287856, i32 626, i32 20), !dbg !504
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !504
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 0, !dbg !505
  store double %122, double* %124, align 8, !dbg !506
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !507
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 0, !dbg !508
  %127 = load double, double* %126, align 8, !dbg !508
  %128 = call double @fabs(double %127) #1, !dbg !509
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !510
  %130 = load double, double* %129, align 8, !dbg !510
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !511
  %132 = load double, double* %131, align 8, !dbg !511
  %133 = fdiv double %130, %132, !dbg !512
  call void @fDivHandler(double %130, double %132, double %133, i64 94190677292968, i64 94190677297128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677298800, i32 627, i32 67), !dbg !513
  %134 = call double @fabs(double %133) #1, !dbg !513
  %135 = fadd double 0x3CB0000000000000, %134, !dbg !514
  call void @fAddHandler(double 0x3CB0000000000000, double %134, double %135, i64 0, i64 94190677299280, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677299760, i32 627, i32 48), !dbg !515
  %136 = fmul double %128, %135, !dbg !515
  call void @fMulHandler(double %128, double %135, double %136, i64 94190677292064, i64 94190677299760, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0), i64 94190677300176, i32 627, i32 29), !dbg !516
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !516
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 1, !dbg !517
  store double %136, double* %138, align 8, !dbg !518
  store i32 0, i32* %5, align 4, !dbg !519
  br label %139, !dbg !519

; <label>:139:                                    ; preds = %87, %83
  %140 = load i32, i32* %5, align 4, !dbg !520
  ret i32 %140, !dbg !520
}

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_mode_e(%struct.cheb_series_struct*, double, i32, %struct.gsl_sf_result_struct*) #4 !dbg !521 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %5, metadata !527, metadata !139), !dbg !528
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !529, metadata !139), !dbg !530
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !531, metadata !139), !dbg !532
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !533, metadata !139), !dbg !534
  call void @llvm.dbg.declare(metadata i32* %9, metadata !535, metadata !139), !dbg !536
  call void @llvm.dbg.declare(metadata double* %10, metadata !537, metadata !139), !dbg !538
  store double 0.000000e+00, double* %10, align 8, !dbg !538
  call void @llvm.dbg.declare(metadata double* %11, metadata !539, metadata !139), !dbg !540
  store double 0.000000e+00, double* %11, align 8, !dbg !540
  call void @llvm.dbg.declare(metadata double* %12, metadata !541, metadata !139), !dbg !542
  %16 = load double, double* %6, align 8, !dbg !543
  %17 = fmul double 2.000000e+00, %16, !dbg !544
  call void @fMulHandler(double 2.000000e+00, double %16, double %17, i64 0, i64 94190677089544, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677319232, i32 11, i32 18), !dbg !545
  %18 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !545
  %19 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %18, i32 0, i32 2, !dbg !546
  %20 = load double, double* %19, align 8, !dbg !546
  %21 = fsub double %17, %20, !dbg !547
  call void @fSubHandler(double %17, double %20, double %21, i64 94190677319232, i64 94190676981624, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677321968, i32 11, i32 21), !dbg !548
  %22 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !548
  %23 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %22, i32 0, i32 3, !dbg !549
  %24 = load double, double* %23, align 8, !dbg !549
  %25 = fsub double %21, %24, !dbg !550
  call void @fSubHandler(double %21, double %24, double %25, i64 94190677321968, i64 94190677323256, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677324928, i32 11, i32 29), !dbg !551
  %26 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !551
  %27 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %26, i32 0, i32 3, !dbg !552
  %28 = load double, double* %27, align 8, !dbg !552
  %29 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !553
  %30 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %29, i32 0, i32 2, !dbg !554
  %31 = load double, double* %30, align 8, !dbg !554
  %32 = fsub double %28, %31, !dbg !555
  call void @fSubHandler(double %28, double %31, double %32, i64 94190677326152, i64 94190677328632, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677330304, i32 11, i32 47), !dbg !556
  %33 = fdiv double %25, %32, !dbg !556
  call void @fDivHandler(double %25, double %32, double %33, i64 94190677324928, i64 94190677330304, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677330720, i32 11, i32 38), !dbg !542
  store double %33, double* %12, align 8, !dbg !542
  call void @llvm.dbg.declare(metadata double* %13, metadata !557, metadata !139), !dbg !558
  %34 = load double, double* %12, align 8, !dbg !559
  %35 = fmul double 2.000000e+00, %34, !dbg !560
  call void @fMulHandler(double 2.000000e+00, double %34, double %35, i64 0, i64 94190677333768, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677334176, i32 12, i32 19), !dbg !558
  store double %35, double* %13, align 8, !dbg !558
  call void @llvm.dbg.declare(metadata i32* %14, metadata !561, metadata !139), !dbg !562
  %36 = load i32, i32* %7, align 4, !dbg !563
  %37 = call i32 @GSL_MODE_PREC(i32 %36), !dbg !565
  %38 = icmp eq i32 %37, 0, !dbg !566
  %39 = sext i32 %37 to i64, !dbg !567
  %40 = call i1 @iCmpInstHandler(i64 %39, i64 0, i1 %38, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677338496, i32 16, i32 26), !dbg !567
  br i1 %40, label %41, label %45, !dbg !567

; <label>:41:                                     ; preds = %4
  %42 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !568
  %43 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %42, i32 0, i32 1, !dbg !569
  %44 = load i32, i32* %43, align 8, !dbg !569
  store i32 %44, i32* %14, align 4, !dbg !570
  br label %49, !dbg !571

; <label>:45:                                     ; preds = %4
  %46 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !572
  %47 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %46, i32 0, i32 4, !dbg !573
  %48 = load i32, i32* %47, align 8, !dbg !573
  store i32 %48, i32* %14, align 4, !dbg !574
  br label %49

; <label>:49:                                     ; preds = %45, %41
  %50 = load i32, i32* %14, align 4, !dbg !575
  store i32 %50, i32* %9, align 4, !dbg !577
  br label %51, !dbg !578

; <label>:51:                                     ; preds = %72, %49
  %52 = load i32, i32* %9, align 4, !dbg !579
  %53 = icmp sge i32 %52, 1, !dbg !582
  %54 = sext i32 %52 to i64, !dbg !583
  %55 = call i1 @iCmpInstHandler(i64 %54, i64 1, i1 %53, i32 39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677347568, i32 21, i32 24), !dbg !583
  br i1 %55, label %56, label %75, !dbg !583

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata double* %15, metadata !584, metadata !139), !dbg !586
  %57 = load double, double* %10, align 8, !dbg !587
  store double %57, double* %15, align 8, !dbg !586
  %58 = load double, double* %13, align 8, !dbg !588
  %59 = load double, double* %10, align 8, !dbg !589
  %60 = fmul double %58, %59, !dbg !590
  call void @fMulHandler(double %58, double %59, double %60, i64 94190677351864, i64 94190677352248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677352656, i32 23, i32 11), !dbg !591
  %61 = load double, double* %11, align 8, !dbg !591
  %62 = fsub double %60, %61, !dbg !592
  call void @fSubHandler(double %60, double %61, double %62, i64 94190677352656, i64 94190677353048, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677353456, i32 23, i32 14), !dbg !593
  %63 = load i32, i32* %9, align 4, !dbg !593
  %64 = sext i32 %63 to i64, !dbg !594
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !594
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !595
  %67 = load double*, double** %66, align 8, !dbg !595
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !594
  %69 = load double, double* %68, align 8, !dbg !594
  %70 = fadd double %62, %69, !dbg !596
  call void @fAddHandler(double %62, double %69, double %70, i64 94190677353456, i64 94190677358504, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677358624, i32 23, i32 19), !dbg !597
  store double %70, double* %10, align 8, !dbg !597
  %71 = load double, double* %15, align 8, !dbg !598
  store double %71, double* %11, align 8, !dbg !599
  br label %72, !dbg !600

; <label>:72:                                     ; preds = %56
  %73 = load i32, i32* %9, align 4, !dbg !601
  %74 = add nsw i32 %73, -1, !dbg !601
  store i32 %74, i32* %9, align 4, !dbg !601
  br label %51, !dbg !603, !llvm.loop !604

; <label>:75:                                     ; preds = %51
  %76 = load double, double* %12, align 8, !dbg !606
  %77 = load double, double* %10, align 8, !dbg !607
  %78 = fmul double %76, %77, !dbg !608
  call void @fMulHandler(double %76, double %77, double %78, i64 94190677363624, i64 94190677363944, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677364352, i32 27, i32 18), !dbg !609
  %79 = load double, double* %11, align 8, !dbg !609
  %80 = fsub double %78, %79, !dbg !610
  call void @fSubHandler(double %78, double %79, double %80, i64 94190677364352, i64 94190677364744, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677365152, i32 27, i32 21), !dbg !611
  %81 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !611
  %82 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %81, i32 0, i32 0, !dbg !612
  %83 = load double*, double** %82, align 8, !dbg !612
  %84 = getelementptr inbounds double, double* %83, i64 0, !dbg !611
  %85 = load double, double* %84, align 8, !dbg !611
  %86 = fmul double 5.000000e-01, %85, !dbg !613
  call void @fMulHandler(double 5.000000e-01, double %85, double %86, i64 0, i64 94190677369784, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677370000, i32 27, i32 32), !dbg !614
  %87 = fadd double %80, %86, !dbg !614
  call void @fAddHandler(double %80, double %86, double %87, i64 94190677365152, i64 94190677370000, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677370384, i32 27, i32 26), !dbg !615
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !615
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !616
  store double %87, double* %89, align 8, !dbg !617
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !618
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !619
  %92 = load double, double* %91, align 8, !dbg !619
  %93 = call double @fabs(double %92) #1, !dbg !620
  %94 = fmul double 0x3CB0000000000000, %93, !dbg !621
  call void @fMulHandler(double 0x3CB0000000000000, double %93, double %94, i64 0, i64 94190677374592, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677375072, i32 28, i32 33), !dbg !622
  %95 = load i32, i32* %14, align 4, !dbg !622
  %96 = sext i32 %95 to i64, !dbg !623
  %97 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !623
  %98 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %97, i32 0, i32 0, !dbg !624
  %99 = load double*, double** %98, align 8, !dbg !624
  %100 = getelementptr inbounds double, double* %99, i64 %96, !dbg !623
  %101 = load double, double* %100, align 8, !dbg !623
  %102 = call double @fabs(double %101) #1, !dbg !625
  %103 = fadd double %94, %102, !dbg !627
  call void @fAddHandler(double %94, double %102, double %103, i64 94190677375072, i64 94190677380304, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @5, i32 0, i32 0), i64 94190677380784, i32 28, i32 53), !dbg !628
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !628
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 1, !dbg !629
  store double %103, double* %105, align 8, !dbg !630
  ret i32 0, !dbg !631
}

; Function Attrs: nounwind
declare double @exp(double) #2

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_airy_Ai_deriv_e(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !632 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !633, metadata !139), !dbg !634
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !635, metadata !139), !dbg !636
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !637, metadata !139), !dbg !638
  %19 = load double, double* %5, align 8, !dbg !639
  %20 = fcmp olt double %19, -1.000000e+00, !dbg !641
  %21 = call i1 @fCmpInstHandler(double %19, double -1.000000e+00, i1 %20, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677389776, i32 701, i32 8), !dbg !642
  br i1 %21, label %22, label %60, !dbg !642

; <label>:22:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !643, metadata !139), !dbg !645
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !646, metadata !139), !dbg !647
  call void @llvm.dbg.declare(metadata i32* %10, metadata !648, metadata !139), !dbg !649
  %23 = load double, double* %5, align 8, !dbg !650
  %24 = load i32, i32* %6, align 4, !dbg !651
  %25 = call i32 @airy_deriv_mod_phase(double %23, i32 %24, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !652
  store i32 %25, i32* %10, align 4, !dbg !649
  call void @llvm.dbg.declare(metadata double* %11, metadata !653, metadata !139), !dbg !654
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !655
  %27 = load double, double* %26, align 8, !dbg !655
  %28 = call double @cos(double %27) #6, !dbg !656
  call void @callOneArgHandler(i32 2, double %27, double %28, i64 94190677402632, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677404368, i32 705, i32 19), !dbg !654
  store double %28, double* %11, align 8, !dbg !654
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !657
  %30 = load double, double* %29, align 8, !dbg !657
  %31 = load double, double* %11, align 8, !dbg !658
  %32 = fmul double %30, %31, !dbg !659
  call void @fMulHandler(double %30, double %31, double %32, i64 94190677406952, i64 94190677408600, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677409008, i32 706, i32 26), !dbg !660
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !660
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !661
  store double %32, double* %34, align 8, !dbg !662
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !663
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !664
  %37 = load double, double* %36, align 8, !dbg !664
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !665
  %39 = load double, double* %38, align 8, !dbg !665
  %40 = fmul double %37, %39, !dbg !666
  call void @fMulHandler(double %37, double %39, double %40, i64 94190677411480, i64 94190677413576, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677415248, i32 707, i32 37), !dbg !667
  %41 = call double @fabs(double %40) #1, !dbg !667
  %42 = load double, double* %11, align 8, !dbg !668
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !669
  %44 = load double, double* %43, align 8, !dbg !669
  %45 = fmul double %42, %44, !dbg !670
  call void @fMulHandler(double %42, double %44, double %45, i64 94190677416184, i64 94190677417016, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677418688, i32 707, i32 55), !dbg !671
  %46 = call double @fabs(double %45) #1, !dbg !671
  %47 = fadd double %41, %46, !dbg !673
  call void @fAddHandler(double %41, double %46, double %47, i64 94190677415728, i64 94190677419168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677419648, i32 707, i32 46), !dbg !674
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !674
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !675
  store double %47, double* %49, align 8, !dbg !676
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !677
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !678
  %52 = load double, double* %51, align 8, !dbg !678
  %53 = call double @fabs(double %52) #1, !dbg !679
  %54 = fmul double 0x3CB0000000000000, %53, !dbg !680
  call void @fMulHandler(double 0x3CB0000000000000, double %53, double %54, i64 0, i64 94190677423856, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677424336, i32 708, i32 36), !dbg !681
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !681
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !682
  %57 = load double, double* %56, align 8, !dbg !683
  %58 = fadd double %57, %54, !dbg !683
  call void @fAddHandler(double %57, double %54, double %58, i64 94190677425560, i64 94190677424336, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677425968, i32 708, i32 17), !dbg !683
  store double %58, double* %56, align 8, !dbg !683
  %59 = load i32, i32* %10, align 4, !dbg !684
  store i32 %59, i32* %4, align 4, !dbg !685
  br label %168, !dbg !685

; <label>:60:                                     ; preds = %3
  %61 = load double, double* %5, align 8, !dbg !686
  %62 = fcmp olt double %61, 1.000000e+00, !dbg !688
  %63 = call i1 @fCmpInstHandler(double %61, double 1.000000e+00, i1 %62, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677430720, i32 711, i32 13), !dbg !689
  br i1 %63, label %64, label %110, !dbg !689

; <label>:64:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata double* %12, metadata !690, metadata !139), !dbg !692
  %65 = load double, double* %5, align 8, !dbg !693
  %66 = load double, double* %5, align 8, !dbg !694
  %67 = fmul double %65, %66, !dbg !695
  call void @fMulHandler(double %65, double %66, double %67, i64 94190677432856, i64 94190677433208, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677433616, i32 712, i32 24), !dbg !696
  %68 = load double, double* %5, align 8, !dbg !696
  %69 = fmul double %67, %68, !dbg !697
  call void @fMulHandler(double %67, double %68, double %69, i64 94190677433616, i64 94190677434008, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677434416, i32 712, i32 26), !dbg !692
  store double %69, double* %12, align 8, !dbg !692
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !698, metadata !139), !dbg !699
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !700, metadata !139), !dbg !701
  %70 = load double, double* %12, align 8, !dbg !702
  %71 = load i32, i32* %6, align 4, !dbg !703
  %72 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aif_cs, double %70, i32 %71, %struct.gsl_sf_result_struct* %13), !dbg !704
  %73 = load double, double* %12, align 8, !dbg !705
  %74 = load i32, i32* %6, align 4, !dbg !706
  %75 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aig_cs, double %73, i32 %74, %struct.gsl_sf_result_struct* %14), !dbg !707
  %76 = load double, double* %5, align 8, !dbg !708
  %77 = load double, double* %5, align 8, !dbg !709
  %78 = fmul double %76, %77, !dbg !710
  call void @fMulHandler(double %76, double %77, double %78, i64 94190677441384, i64 94190677441736, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677442144, i32 717, i32 22), !dbg !711
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !711
  %80 = load double, double* %79, align 8, !dbg !711
  %81 = fadd double 1.250000e-01, %80, !dbg !712
  call void @fAddHandler(double 1.250000e-01, double %80, double %81, i64 0, i64 94190677442984, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677444688, i32 717, i32 32), !dbg !713
  %82 = fmul double %78, %81, !dbg !713
  call void @fMulHandler(double %78, double %81, double %82, i64 94190677442144, i64 94190677444688, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677445072, i32 717, i32 24), !dbg !714
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !714
  %84 = load double, double* %83, align 8, !dbg !714
  %85 = fsub double %82, %84, !dbg !715
  call void @fSubHandler(double %82, double %84, double %85, i64 94190677445072, i64 94190677445912, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677447584, i32 717, i32 49), !dbg !716
  %86 = fsub double %85, 2.500000e-01, !dbg !716
  call void @fSubHandler(double %85, double 2.500000e-01, double %86, i64 94190677447584, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677448032, i32 717, i32 66), !dbg !717
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !717
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !718
  store double %86, double* %88, align 8, !dbg !719
  %89 = load double, double* %5, align 8, !dbg !720
  %90 = load double, double* %5, align 8, !dbg !721
  %91 = fmul double %89, %90, !dbg !722
  call void @fMulHandler(double %89, double %90, double %91, i64 94190677449640, i64 94190677450024, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677450432, i32 718, i32 26), !dbg !723
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !723
  %93 = load double, double* %92, align 8, !dbg !723
  %94 = fmul double %91, %93, !dbg !724
  call void @fMulHandler(double %91, double %93, double %94, i64 94190677450432, i64 94190677451272, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677452944, i32 718, i32 28), !dbg !725
  %95 = call double @fabs(double %94) #1, !dbg !725
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !726
  %97 = load double, double* %96, align 8, !dbg !726
  %98 = fadd double %95, %97, !dbg !727
  call void @fAddHandler(double %95, double %97, double %98, i64 94190677453424, i64 94190677454328, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677456000, i32 718, i32 44), !dbg !728
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !728
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !729
  store double %98, double* %100, align 8, !dbg !730
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !731
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 0, !dbg !732
  %103 = load double, double* %102, align 8, !dbg !732
  %104 = call double @fabs(double %103) #1, !dbg !733
  %105 = fmul double 0x3CB0000000000000, %104, !dbg !734
  call void @fMulHandler(double 0x3CB0000000000000, double %104, double %105, i64 0, i64 94190677460208, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677460688, i32 719, i32 36), !dbg !735
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !735
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 1, !dbg !736
  %108 = load double, double* %107, align 8, !dbg !737
  %109 = fadd double %108, %105, !dbg !737
  call void @fAddHandler(double %108, double %105, double %109, i64 94190677461912, i64 94190677460688, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677462320, i32 719, i32 17), !dbg !737
  store double %109, double* %107, align 8, !dbg !737
  store i32 0, i32* %4, align 4, !dbg !738
  br label %168, !dbg !738

; <label>:110:                                    ; preds = %60
  %111 = load double, double* %5, align 8, !dbg !739
  %112 = load double, double* %5, align 8, !dbg !741
  %113 = fmul double %111, %112, !dbg !742
  call void @fMulHandler(double %111, double %112, double %113, i64 94190677466168, i64 94190677466488, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677466896, i32 722, i32 12), !dbg !743
  %114 = load double, double* %5, align 8, !dbg !743
  %115 = fmul double %113, %114, !dbg !744
  call void @fMulHandler(double %113, double %114, double %115, i64 94190677466896, i64 94190677467288, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677467696, i32 722, i32 14), !dbg !745
  %116 = fcmp olt double %115, 0x41313A9357D08D7F, !dbg !745
  %117 = call i1 @fCmpInstHandler(double %115, double 0x41313A9357D08D7F, i1 %116, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677468176, i32 722, i32 17), !dbg !746
  br i1 %117, label %118, label %157, !dbg !746

; <label>:118:                                    ; preds = %110
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !747, metadata !139), !dbg !749
  call void @llvm.dbg.declare(metadata double* %16, metadata !750, metadata !139), !dbg !751
  %119 = load double, double* %5, align 8, !dbg !752
  %120 = fmul double -2.000000e+00, %119, !dbg !753
  call void @fMulHandler(double -2.000000e+00, double %119, double %120, i64 0, i64 94190677471432, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677471840, i32 724, i32 28), !dbg !754
  %121 = load double, double* %5, align 8, !dbg !754
  %122 = call double @sqrt(double %121) #6, !dbg !755
  call void @callOneArgHandler(i32 14, double %121, double %122, i64 94190677472200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677472672, i32 724, i32 31), !dbg !756
  %123 = fmul double %120, %122, !dbg !756
  call void @fMulHandler(double %120, double %122, double %123, i64 94190677471840, i64 94190677472672, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677473152, i32 724, i32 30), !dbg !757
  %124 = fdiv double %123, 3.000000e+00, !dbg !757
  call void @fDivHandler(double %123, double 3.000000e+00, double %124, i64 94190677473152, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677473600, i32 724, i32 38), !dbg !751
  store double %124, double* %16, align 8, !dbg !751
  call void @llvm.dbg.declare(metadata i32* %17, metadata !758, metadata !139), !dbg !760
  %125 = load double, double* %5, align 8, !dbg !761
  %126 = load i32, i32* %6, align 4, !dbg !762
  %127 = call i32 @gsl_sf_airy_Ai_deriv_scaled_e(double %125, i32 %126, %struct.gsl_sf_result_struct* %15), !dbg !763
  store i32 %127, i32* %17, align 4, !dbg !760
  call void @llvm.dbg.declare(metadata i32* %18, metadata !764, metadata !139), !dbg !765
  %128 = load double, double* %16, align 8, !dbg !766
  %129 = load double, double* %16, align 8, !dbg !767
  %130 = fmul double %129, 0x3CB0000000000000, !dbg !768
  call void @fMulHandler(double %129, double 0x3CB0000000000000, double %130, i64 94190677481208, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677481616, i32 726, i32 63), !dbg !769
  %131 = call double @fabs(double %130) #1, !dbg !769
  %132 = fmul double 1.500000e+00, %131, !dbg !770
  call void @fMulHandler(double 1.500000e+00, double %131, double %132, i64 0, i64 94190677482096, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677484736, i32 726, i32 54), !dbg !771
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !771
  %134 = load double, double* %133, align 8, !dbg !771
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !772
  %136 = load double, double* %135, align 8, !dbg !772
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !773
  %138 = call i32 @gsl_sf_exp_mult_err_e(double %128, double %132, double %134, double %136, %struct.gsl_sf_result_struct* %137), !dbg !774
  store i32 %138, i32* %18, align 4, !dbg !765
  %139 = load i32, i32* %18, align 4, !dbg !776
  %140 = icmp ne i32 %139, 0, !dbg !776
  %141 = sext i32 %139 to i64, !dbg !776
  %142 = call i1 @iCmpInstHandler(i64 %141, i64 0, i1 %140, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677492720, i32 729, i32 12), !dbg !776
  br i1 %142, label %143, label %145, !dbg !776

; <label>:143:                                    ; preds = %118
  %144 = load i32, i32* %18, align 4, !dbg !777
  br label %155, !dbg !777

; <label>:145:                                    ; preds = %118
  %146 = load i32, i32* %17, align 4, !dbg !778
  %147 = icmp ne i32 %146, 0, !dbg !778
  %148 = sext i32 %146 to i64, !dbg !778
  %149 = call i1 @iCmpInstHandler(i64 %148, i64 0, i1 %147, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @7, i32 0, i32 0), i64 94190677497264, i32 729, i32 12), !dbg !778
  br i1 %149, label %150, label %152, !dbg !778

; <label>:150:                                    ; preds = %145
  %151 = load i32, i32* %17, align 4, !dbg !780
  br label %153, !dbg !780

; <label>:152:                                    ; preds = %145
  br label %153, !dbg !782

; <label>:153:                                    ; preds = %152, %150
  %154 = phi i32 [ %151, %150 ], [ 0, %152 ], !dbg !784
  br label %155, !dbg !784

; <label>:155:                                    ; preds = %153, %143
  %156 = phi i32 [ %144, %143 ], [ %154, %153 ], !dbg !786
  store i32 %156, i32* %4, align 4, !dbg !788
  br label %168, !dbg !788

; <label>:157:                                    ; preds = %110
  br label %158, !dbg !789, !llvm.loop !791

; <label>:158:                                    ; preds = %157
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !792
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 0, !dbg !792
  store double 0.000000e+00, double* %160, align 8, !dbg !792
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !792
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 1, !dbg !792
  store double 0x10000000000000, double* %162, align 8, !dbg !792
  br label %163, !dbg !792, !llvm.loop !795

; <label>:163:                                    ; preds = %158
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 732, i32 15), !dbg !797
  store i32 15, i32* %4, align 4, !dbg !797
  br label %168, !dbg !797
                                                  ; No predecessors!
  br label %165, !dbg !800

; <label>:165:                                    ; preds = %164
  br label %166

; <label>:166:                                    ; preds = %165
  br label %167

; <label>:167:                                    ; preds = %166
  br label %168

; <label>:168:                                    ; preds = %167, %163, %155, %64, %22
  %169 = load i32, i32* %4, align 4, !dbg !802
  ret i32 %169, !dbg !802
}

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #5

declare void @gsl_error(i8*, i8*, i32, i32) #5

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_airy_Bi_deriv_scaled_e(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !803 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca %struct.gsl_sf_result_struct, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !804, metadata !139), !dbg !805
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !806, metadata !139), !dbg !807
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !808, metadata !139), !dbg !809
  call void @llvm.dbg.declare(metadata double* %8, metadata !810, metadata !139), !dbg !811
  store double 0x4021805A83B66B50, double* %8, align 8, !dbg !811
  call void @llvm.dbg.declare(metadata double* %9, metadata !812, metadata !139), !dbg !813
  store double 0xC000C02D41DB35A8, double* %9, align 8, !dbg !813
  %31 = load double, double* %5, align 8, !dbg !814
  %32 = fcmp olt double %31, -1.000000e+00, !dbg !816
  %33 = call i1 @fCmpInstHandler(double %31, double -1.000000e+00, i1 %32, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677528016, i32 745, i32 8), !dbg !817
  br i1 %33, label %34, label %72, !dbg !817

; <label>:34:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !818, metadata !139), !dbg !820
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !821, metadata !139), !dbg !822
  call void @llvm.dbg.declare(metadata i32* %12, metadata !823, metadata !139), !dbg !824
  %35 = load double, double* %5, align 8, !dbg !825
  %36 = load i32, i32* %6, align 4, !dbg !826
  %37 = call i32 @airy_deriv_mod_phase(double %35, i32 %36, %struct.gsl_sf_result_struct* %10, %struct.gsl_sf_result_struct* %11), !dbg !827
  store i32 %37, i32* %12, align 4, !dbg !824
  call void @llvm.dbg.declare(metadata double* %13, metadata !828, metadata !139), !dbg !829
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !830
  %39 = load double, double* %38, align 8, !dbg !830
  %40 = call double @sin(double %39) #6, !dbg !831
  call void @callOneArgHandler(i32 1, double %39, double %40, i64 94190677536760, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677538768, i32 749, i32 20), !dbg !829
  store double %40, double* %13, align 8, !dbg !829
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !832
  %42 = load double, double* %41, align 8, !dbg !832
  %43 = load double, double* %13, align 8, !dbg !833
  %44 = fmul double %42, %43, !dbg !834
  call void @fMulHandler(double %42, double %43, double %44, i64 94190677541384, i64 94190677543032, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677543440, i32 750, i32 26), !dbg !835
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !835
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !836
  store double %44, double* %46, align 8, !dbg !837
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !838
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !839
  %49 = load double, double* %48, align 8, !dbg !839
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !840
  %51 = load double, double* %50, align 8, !dbg !840
  %52 = fmul double %49, %51, !dbg !841
  call void @fMulHandler(double %49, double %51, double %52, i64 94190677545912, i64 94190677548008, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677549680, i32 751, i32 37), !dbg !842
  %53 = call double @fabs(double %52) #1, !dbg !842
  %54 = load double, double* %13, align 8, !dbg !843
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !844
  %56 = load double, double* %55, align 8, !dbg !844
  %57 = fmul double %54, %56, !dbg !845
  call void @fMulHandler(double %54, double %56, double %57, i64 94190677550616, i64 94190677551448, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677553120, i32 751, i32 55), !dbg !846
  %58 = call double @fabs(double %57) #1, !dbg !846
  %59 = fadd double %53, %58, !dbg !848
  call void @fAddHandler(double %53, double %58, double %59, i64 94190677550160, i64 94190677553600, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677554080, i32 751, i32 46), !dbg !849
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !849
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !850
  store double %59, double* %61, align 8, !dbg !851
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !852
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !853
  %64 = load double, double* %63, align 8, !dbg !853
  %65 = call double @fabs(double %64) #1, !dbg !854
  %66 = fmul double 0x3CB0000000000000, %65, !dbg !855
  call void @fMulHandler(double 0x3CB0000000000000, double %65, double %66, i64 0, i64 94190677558288, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677558768, i32 752, i32 36), !dbg !856
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !856
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !857
  %69 = load double, double* %68, align 8, !dbg !858
  %70 = fadd double %69, %66, !dbg !858
  call void @fAddHandler(double %69, double %66, double %70, i64 94190677559992, i64 94190677558768, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677560400, i32 752, i32 17), !dbg !858
  store double %70, double* %68, align 8, !dbg !858
  %71 = load i32, i32* %12, align 4, !dbg !859
  store i32 %71, i32* %4, align 4, !dbg !860
  br label %279, !dbg !860

; <label>:72:                                     ; preds = %3
  %73 = load double, double* %5, align 8, !dbg !861
  %74 = fcmp olt double %73, 1.000000e+00, !dbg !863
  %75 = call i1 @fCmpInstHandler(double %73, double 1.000000e+00, i1 %74, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677565152, i32 755, i32 13), !dbg !864
  br i1 %75, label %76, label %142, !dbg !864

; <label>:76:                                     ; preds = %72
  call void @llvm.dbg.declare(metadata double* %14, metadata !865, metadata !139), !dbg !867
  %77 = load double, double* %5, align 8, !dbg !868
  %78 = load double, double* %5, align 8, !dbg !869
  %79 = fmul double %77, %78, !dbg !870
  call void @fMulHandler(double %77, double %78, double %79, i64 94190677567336, i64 94190677567688, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677568096, i32 756, i32 24), !dbg !871
  %80 = load double, double* %5, align 8, !dbg !871
  %81 = fmul double %79, %80, !dbg !872
  call void @fMulHandler(double %79, double %80, double %81, i64 94190677568096, i64 94190677568488, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677568896, i32 756, i32 26), !dbg !867
  store double %81, double* %14, align 8, !dbg !867
  call void @llvm.dbg.declare(metadata double* %15, metadata !873, metadata !139), !dbg !874
  %82 = load double, double* %5, align 8, !dbg !875
  %83 = load double, double* %5, align 8, !dbg !876
  %84 = fmul double %82, %83, !dbg !877
  call void @fMulHandler(double %82, double %83, double %84, i64 94190677572088, i64 94190677572440, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677572848, i32 757, i32 24), !dbg !874
  store double %84, double* %15, align 8, !dbg !874
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !878, metadata !139), !dbg !879
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !880, metadata !139), !dbg !881
  %85 = load double, double* %14, align 8, !dbg !882
  %86 = load i32, i32* %6, align 4, !dbg !883
  %87 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif_cs, double %85, i32 %86, %struct.gsl_sf_result_struct* %16), !dbg !884
  %88 = load double, double* %14, align 8, !dbg !885
  %89 = load i32, i32* %6, align 4, !dbg !886
  %90 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big_cs, double %88, i32 %89, %struct.gsl_sf_result_struct* %17), !dbg !887
  %91 = load double, double* %15, align 8, !dbg !888
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !889
  %93 = load double, double* %92, align 8, !dbg !889
  %94 = fadd double %93, 2.500000e-01, !dbg !890
  call void @fAddHandler(double %93, double 2.500000e-01, double %94, i64 94190677580616, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677582320, i32 762, i32 40), !dbg !891
  %95 = fmul double %91, %94, !dbg !891
  call void @fMulHandler(double %91, double %94, double %95, i64 94190677579816, i64 94190677582320, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677582704, i32 762, i32 23), !dbg !892
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !892
  %97 = load double, double* %96, align 8, !dbg !892
  %98 = fadd double %95, %97, !dbg !893
  call void @fAddHandler(double %95, double %97, double %98, i64 94190677582704, i64 94190677583544, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677585216, i32 762, i32 48), !dbg !894
  %99 = fadd double %98, 5.000000e-01, !dbg !894
  call void @fAddHandler(double %98, double 5.000000e-01, double %99, i64 94190677585216, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677585664, i32 762, i32 64), !dbg !895
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !895
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 0, !dbg !896
  store double %99, double* %101, align 8, !dbg !897
  %102 = load double, double* %15, align 8, !dbg !898
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !899
  %104 = load double, double* %103, align 8, !dbg !899
  %105 = fmul double %102, %104, !dbg !900
  call void @fMulHandler(double %102, double %104, double %105, i64 94190677587272, i64 94190677588104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677589776, i32 763, i32 23), !dbg !901
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !901
  %107 = load double, double* %106, align 8, !dbg !901
  %108 = fadd double %105, %107, !dbg !902
  call void @fAddHandler(double %105, double %107, double %108, i64 94190677589776, i64 94190677590616, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677592288, i32 763, i32 39), !dbg !903
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !903
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 1, !dbg !904
  store double %108, double* %110, align 8, !dbg !905
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !906
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 0, !dbg !907
  %113 = load double, double* %112, align 8, !dbg !907
  %114 = call double @fabs(double %113) #1, !dbg !908
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !909
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94190677596496, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677596976, i32 764, i32 36), !dbg !910
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !910
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 1, !dbg !911
  %118 = load double, double* %117, align 8, !dbg !912
  %119 = fadd double %118, %115, !dbg !912
  call void @fAddHandler(double %118, double %115, double %119, i64 94190677598200, i64 94190677596976, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677598608, i32 764, i32 17), !dbg !912
  store double %119, double* %117, align 8, !dbg !912
  %120 = load double, double* %5, align 8, !dbg !913
  %121 = fcmp ogt double %120, 0x3DC428A2F98D7292, !dbg !915
  %122 = call i1 @fCmpInstHandler(double %120, double 0x3DC428A2F98D7292, i1 %121, i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677600800, i32 766, i32 10), !dbg !916
  br i1 %122, label %123, label %141, !dbg !916

; <label>:123:                                    ; preds = %76
  call void @llvm.dbg.declare(metadata double* %18, metadata !917, metadata !139), !dbg !919
  %124 = load double, double* %5, align 8, !dbg !920
  %125 = fmul double -2.000000e+00, %124, !dbg !921
  call void @fMulHandler(double -2.000000e+00, double %124, double %125, i64 0, i64 94190677602968, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677603376, i32 768, i32 32), !dbg !922
  %126 = load double, double* %5, align 8, !dbg !922
  %127 = call double @sqrt(double %126) #6, !dbg !923
  call void @callOneArgHandler(i32 14, double %126, double %127, i64 94190677603736, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677604208, i32 768, i32 35), !dbg !924
  %128 = fmul double %125, %127, !dbg !924
  call void @fMulHandler(double %125, double %127, double %128, i64 94190677603376, i64 94190677604208, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677604688, i32 768, i32 34), !dbg !925
  %129 = fdiv double %128, 3.000000e+00, !dbg !925
  call void @fDivHandler(double %128, double 3.000000e+00, double %129, i64 94190677604688, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677605136, i32 768, i32 42), !dbg !926
  %130 = call double @exp(double %129) #6, !dbg !926
  call void @callOneArgHandler(i32 11, double %129, double %130, i64 94190677605136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677605584, i32 768, i32 24), !dbg !919
  store double %130, double* %18, align 8, !dbg !919
  %131 = load double, double* %18, align 8, !dbg !928
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !929
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 0, !dbg !930
  %134 = load double, double* %133, align 8, !dbg !931
  %135 = fmul double %134, %131, !dbg !931
  call void @fMulHandler(double %134, double %131, double %135, i64 94190677611000, i64 94190677607720, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677611408, i32 769, i32 19), !dbg !931
  store double %135, double* %133, align 8, !dbg !931
  %136 = load double, double* %18, align 8, !dbg !932
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !933
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 1, !dbg !934
  %139 = load double, double* %138, align 8, !dbg !935
  %140 = fmul double %139, %136, !dbg !935
  call void @fMulHandler(double %139, double %136, double %140, i64 94190677614408, i64 94190677613192, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677614816, i32 770, i32 19), !dbg !935
  store double %140, double* %138, align 8, !dbg !935
  br label %141, !dbg !936

; <label>:141:                                    ; preds = %123, %76
  store i32 0, i32* %4, align 4, !dbg !937
  br label %279, !dbg !937

; <label>:142:                                    ; preds = %72
  %143 = load double, double* %5, align 8, !dbg !938
  %144 = fcmp olt double %143, 2.000000e+00, !dbg !940
  %145 = call i1 @fCmpInstHandler(double %143, double 2.000000e+00, i1 %144, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677619360, i32 775, i32 13), !dbg !941
  br i1 %145, label %146, label %205, !dbg !941

; <label>:146:                                    ; preds = %142
  call void @llvm.dbg.declare(metadata double* %19, metadata !942, metadata !139), !dbg !944
  %147 = load double, double* %5, align 8, !dbg !945
  %148 = fmul double 2.000000e+00, %147, !dbg !946
  call void @fMulHandler(double 2.000000e+00, double %147, double %148, i64 0, i64 94190677621496, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677621904, i32 776, i32 26), !dbg !947
  %149 = load double, double* %5, align 8, !dbg !947
  %150 = fmul double %148, %149, !dbg !948
  call void @fMulHandler(double %148, double %149, double %150, i64 94190677621904, i64 94190677622264, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677622672, i32 776, i32 28), !dbg !949
  %151 = load double, double* %5, align 8, !dbg !949
  %152 = fmul double %150, %151, !dbg !950
  call void @fMulHandler(double %150, double %151, double %152, i64 94190677622672, i64 94190677623064, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677623472, i32 776, i32 30), !dbg !951
  %153 = fsub double %152, 9.000000e+00, !dbg !951
  call void @fSubHandler(double %152, double 9.000000e+00, double %153, i64 94190677623472, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677623920, i32 776, i32 33), !dbg !952
  %154 = fdiv double %153, 7.000000e+00, !dbg !952
  call void @fDivHandler(double %153, double 7.000000e+00, double %154, i64 94190677623920, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677624336, i32 776, i32 40), !dbg !944
  store double %154, double* %19, align 8, !dbg !944
  call void @llvm.dbg.declare(metadata double* %20, metadata !953, metadata !139), !dbg !954
  %155 = load double, double* %5, align 8, !dbg !955
  %156 = fmul double -2.000000e+00, %155, !dbg !956
  call void @fMulHandler(double -2.000000e+00, double %155, double %156, i64 0, i64 94190677627496, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677627904, i32 777, i32 30), !dbg !957
  %157 = load double, double* %5, align 8, !dbg !957
  %158 = call double @sqrt(double %157) #6, !dbg !958
  call void @callOneArgHandler(i32 14, double %157, double %158, i64 94190677628264, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677628736, i32 777, i32 33), !dbg !959
  %159 = fmul double %156, %158, !dbg !959
  call void @fMulHandler(double %156, double %158, double %159, i64 94190677627904, i64 94190677628736, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677629216, i32 777, i32 32), !dbg !960
  %160 = fdiv double %159, 3.000000e+00, !dbg !960
  call void @fDivHandler(double %159, double 3.000000e+00, double %160, i64 94190677629216, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677629664, i32 777, i32 40), !dbg !961
  %161 = call double @exp(double %160) #6, !dbg !961
  call void @callOneArgHandler(i32 11, double %160, double %161, i64 94190677629664, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677630112, i32 777, i32 22), !dbg !954
  store double %161, double* %20, align 8, !dbg !954
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !963, metadata !139), !dbg !964
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !965, metadata !139), !dbg !966
  %162 = load double, double* %19, align 8, !dbg !967
  %163 = load i32, i32* %6, align 4, !dbg !968
  %164 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif2_cs, double %162, i32 %163, %struct.gsl_sf_result_struct* %21), !dbg !969
  %165 = load double, double* %19, align 8, !dbg !970
  %166 = load i32, i32* %6, align 4, !dbg !971
  %167 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big2_cs, double %165, i32 %166, %struct.gsl_sf_result_struct* %22), !dbg !972
  %168 = load double, double* %20, align 8, !dbg !973
  %169 = load double, double* %5, align 8, !dbg !974
  %170 = load double, double* %5, align 8, !dbg !975
  %171 = fmul double %169, %170, !dbg !976
  call void @fMulHandler(double %169, double %170, double %171, i64 94190677637496, i64 94190677637880, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677638288, i32 782, i32 26), !dbg !977
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !977
  %173 = load double, double* %172, align 8, !dbg !977
  %174 = fadd double 2.500000e-01, %173, !dbg !978
  call void @fAddHandler(double 2.500000e-01, double %173, double %174, i64 0, i64 94190677639128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677640832, i32 782, i32 37), !dbg !979
  %175 = fmul double %171, %174, !dbg !979
  call void @fMulHandler(double %171, double %174, double %175, i64 94190677638288, i64 94190677640832, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677641216, i32 782, i32 29), !dbg !980
  %176 = fadd double %175, 5.000000e-01, !dbg !980
  call void @fAddHandler(double %175, double 5.000000e-01, double %176, i64 94190677641216, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677641664, i32 782, i32 54), !dbg !981
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !981
  %178 = load double, double* %177, align 8, !dbg !981
  %179 = fadd double %176, %178, !dbg !982
  call void @fAddHandler(double %176, double %178, double %179, i64 94190677641664, i64 94190677642472, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677644144, i32 782, i32 60), !dbg !983
  %180 = fmul double %168, %179, !dbg !983
  call void @fMulHandler(double %168, double %179, double %180, i64 94190677637144, i64 94190677644144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677644560, i32 782, i32 22), !dbg !984
  %181 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !984
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %181, i32 0, i32 0, !dbg !985
  store double %180, double* %182, align 8, !dbg !986
  %183 = load double, double* %20, align 8, !dbg !987
  %184 = load double, double* %5, align 8, !dbg !988
  %185 = load double, double* %5, align 8, !dbg !989
  %186 = fmul double %184, %185, !dbg !990
  call void @fMulHandler(double %184, double %185, double %186, i64 94190677646584, i64 94190677646968, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677647376, i32 783, i32 26), !dbg !991
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !991
  %188 = load double, double* %187, align 8, !dbg !991
  %189 = fmul double %186, %188, !dbg !992
  call void @fMulHandler(double %186, double %188, double %189, i64 94190677647376, i64 94190677648216, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677649888, i32 783, i32 29), !dbg !993
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !993
  %191 = load double, double* %190, align 8, !dbg !993
  %192 = fadd double %189, %191, !dbg !994
  call void @fAddHandler(double %189, double %191, double %192, i64 94190677649888, i64 94190677650728, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677652400, i32 783, i32 45), !dbg !995
  %193 = fmul double %183, %192, !dbg !995
  call void @fMulHandler(double %183, double %192, double %193, i64 94190677646200, i64 94190677652400, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677652816, i32 783, i32 22), !dbg !996
  %194 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !996
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %194, i32 0, i32 1, !dbg !997
  store double %193, double* %195, align 8, !dbg !998
  %196 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !999
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %196, i32 0, i32 0, !dbg !1000
  %198 = load double, double* %197, align 8, !dbg !1000
  %199 = call double @fabs(double %198) #1, !dbg !1001
  %200 = fmul double 0x3CB0000000000000, %199, !dbg !1002
  call void @fMulHandler(double 0x3CB0000000000000, double %199, double %200, i64 0, i64 94190677657024, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677657504, i32 784, i32 36), !dbg !1003
  %201 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1003
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %201, i32 0, i32 1, !dbg !1004
  %203 = load double, double* %202, align 8, !dbg !1005
  %204 = fadd double %203, %200, !dbg !1005
  call void @fAddHandler(double %203, double %200, double %204, i64 94190677658728, i64 94190677657504, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677659136, i32 784, i32 17), !dbg !1005
  store double %204, double* %202, align 8, !dbg !1005
  store i32 0, i32* %4, align 4, !dbg !1006
  br label %279, !dbg !1006

; <label>:205:                                    ; preds = %142
  %206 = load double, double* %5, align 8, !dbg !1007
  %207 = fcmp olt double %206, 4.000000e+00, !dbg !1009
  %208 = call i1 @fCmpInstHandler(double %206, double 4.000000e+00, i1 %207, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677663360, i32 787, i32 13), !dbg !1010
  br i1 %208, label %209, label %244, !dbg !1010

; <label>:209:                                    ; preds = %205
  call void @llvm.dbg.declare(metadata double* %23, metadata !1011, metadata !139), !dbg !1013
  %210 = load double, double* %5, align 8, !dbg !1014
  %211 = call double @sqrt(double %210) #6, !dbg !1015
  call void @callOneArgHandler(i32 14, double %210, double %211, i64 94190677665496, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677665936, i32 788, i32 26), !dbg !1013
  store double %211, double* %23, align 8, !dbg !1013
  call void @llvm.dbg.declare(metadata double* %24, metadata !1016, metadata !139), !dbg !1017
  %212 = load double, double* %5, align 8, !dbg !1018
  %213 = load double, double* %23, align 8, !dbg !1019
  %214 = fmul double %212, %213, !dbg !1020
  call void @fMulHandler(double %212, double %213, double %214, i64 94190677669192, i64 94190677669544, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677669952, i32 789, i32 28), !dbg !1021
  %215 = fdiv double 0x4021805A83B66B50, %214, !dbg !1021
  call void @fDivHandler(double 0x4021805A83B66B50, double %214, double %215, i64 0, i64 94190677669952, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677670368, i32 789, i32 25), !dbg !1022
  %216 = fadd double %215, 0xC000C02D41DB35A8, !dbg !1022
  call void @fAddHandler(double %215, double 0xC000C02D41DB35A8, double %216, i64 94190677670368, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677670784, i32 789, i32 36), !dbg !1017
  store double %216, double* %24, align 8, !dbg !1017
  call void @llvm.dbg.declare(metadata double* %25, metadata !1023, metadata !139), !dbg !1024
  %217 = load double, double* %23, align 8, !dbg !1025
  %218 = call double @sqrt(double %217) #6, !dbg !1026
  call void @callOneArgHandler(i32 14, double %217, double %218, i64 94190677673976, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677674416, i32 790, i32 22), !dbg !1024
  store double %218, double* %25, align 8, !dbg !1024
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %26, metadata !1027, metadata !139), !dbg !1028
  %219 = load double, double* %24, align 8, !dbg !1029
  %220 = load i32, i32* %6, align 4, !dbg !1030
  %221 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bip1_cs, double %219, i32 %220, %struct.gsl_sf_result_struct* %26), !dbg !1031
  %222 = load double, double* %25, align 8, !dbg !1032
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !1033
  %224 = load double, double* %223, align 8, !dbg !1033
  %225 = fadd double 6.250000e-01, %224, !dbg !1034
  call void @fAddHandler(double 6.250000e-01, double %224, double %225, i64 0, i64 94190677679816, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677681584, i32 793, i32 31), !dbg !1035
  %226 = fmul double %222, %225, !dbg !1035
  call void @fMulHandler(double %222, double %225, double %226, i64 94190677679016, i64 94190677681584, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677681968, i32 793, i32 22), !dbg !1036
  %227 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1036
  %228 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %227, i32 0, i32 0, !dbg !1037
  store double %226, double* %228, align 8, !dbg !1038
  %229 = load double, double* %25, align 8, !dbg !1039
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !1040
  %231 = load double, double* %230, align 8, !dbg !1040
  %232 = fmul double %229, %231, !dbg !1041
  call void @fMulHandler(double %229, double %231, double %232, i64 94190677683608, i64 94190677684440, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677686112, i32 794, i32 22), !dbg !1042
  %233 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1042
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %233, i32 0, i32 1, !dbg !1043
  store double %232, double* %234, align 8, !dbg !1044
  %235 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1045
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %235, i32 0, i32 0, !dbg !1046
  %237 = load double, double* %236, align 8, !dbg !1046
  %238 = call double @fabs(double %237) #1, !dbg !1047
  %239 = fmul double 0x3CB0000000000000, %238, !dbg !1048
  call void @fMulHandler(double 0x3CB0000000000000, double %238, double %239, i64 0, i64 94190677690320, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677690800, i32 795, i32 36), !dbg !1049
  %240 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1049
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %240, i32 0, i32 1, !dbg !1050
  %242 = load double, double* %241, align 8, !dbg !1051
  %243 = fadd double %242, %239, !dbg !1051
  call void @fAddHandler(double %242, double %239, double %243, i64 94190677692024, i64 94190677690800, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677692432, i32 795, i32 17), !dbg !1051
  store double %243, double* %241, align 8, !dbg !1051
  store i32 0, i32* %4, align 4, !dbg !1052
  br label %279, !dbg !1052

; <label>:244:                                    ; preds = %205
  call void @llvm.dbg.declare(metadata double* %27, metadata !1053, metadata !139), !dbg !1055
  %245 = load double, double* %5, align 8, !dbg !1056
  %246 = call double @sqrt(double %245) #6, !dbg !1057
  call void @callOneArgHandler(i32 14, double %245, double %246, i64 94190677697336, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677697776, i32 799, i32 26), !dbg !1055
  store double %246, double* %27, align 8, !dbg !1055
  call void @llvm.dbg.declare(metadata double* %28, metadata !1058, metadata !139), !dbg !1059
  %247 = load double, double* %5, align 8, !dbg !1060
  %248 = load double, double* %27, align 8, !dbg !1061
  %249 = fmul double %247, %248, !dbg !1062
  call void @fMulHandler(double %247, double %248, double %249, i64 94190677701032, i64 94190677701384, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677701792, i32 800, i32 29), !dbg !1063
  %250 = fdiv double 1.600000e+01, %249, !dbg !1063
  call void @fDivHandler(double 1.600000e+01, double %249, double %250, i64 0, i64 94190677701792, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677702240, i32 800, i32 26), !dbg !1064
  %251 = fsub double %250, 1.000000e+00, !dbg !1064
  call void @fSubHandler(double %250, double 1.000000e+00, double %251, i64 94190677702240, i64 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677702656, i32 800, i32 37), !dbg !1059
  store double %251, double* %28, align 8, !dbg !1059
  call void @llvm.dbg.declare(metadata double* %29, metadata !1065, metadata !139), !dbg !1066
  %252 = load double, double* %27, align 8, !dbg !1067
  %253 = call double @sqrt(double %252) #6, !dbg !1068
  call void @callOneArgHandler(i32 14, double %252, double %253, i64 94190677705816, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677706256, i32 801, i32 22), !dbg !1066
  store double %253, double* %29, align 8, !dbg !1066
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %30, metadata !1069, metadata !139), !dbg !1070
  %254 = load double, double* %28, align 8, !dbg !1071
  %255 = load i32, i32* %6, align 4, !dbg !1072
  %256 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bip2_cs, double %254, i32 %255, %struct.gsl_sf_result_struct* %30), !dbg !1073
  %257 = load double, double* %29, align 8, !dbg !1074
  %258 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !1075
  %259 = load double, double* %258, align 8, !dbg !1075
  %260 = fadd double 6.250000e-01, %259, !dbg !1076
  call void @fAddHandler(double 6.250000e-01, double %259, double %260, i64 0, i64 94190677711656, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677713360, i32 804, i32 31), !dbg !1077
  %261 = fmul double %257, %260, !dbg !1077
  call void @fMulHandler(double %257, double %260, double %261, i64 94190677710856, i64 94190677713360, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677713744, i32 804, i32 22), !dbg !1078
  %262 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1078
  %263 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %262, i32 0, i32 0, !dbg !1079
  store double %261, double* %263, align 8, !dbg !1080
  %264 = load double, double* %29, align 8, !dbg !1081
  %265 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !1082
  %266 = load double, double* %265, align 8, !dbg !1082
  %267 = fmul double %264, %266, !dbg !1083
  call void @fMulHandler(double %264, double %266, double %267, i64 94190677609352, i64 94190677610056, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677719952, i32 805, i32 22), !dbg !1084
  %268 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1084
  %269 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %268, i32 0, i32 1, !dbg !1085
  store double %267, double* %269, align 8, !dbg !1086
  %270 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1087
  %271 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %270, i32 0, i32 0, !dbg !1088
  %272 = load double, double* %271, align 8, !dbg !1088
  %273 = call double @fabs(double %272) #1, !dbg !1089
  %274 = fmul double 0x3CB0000000000000, %273, !dbg !1090
  call void @fMulHandler(double 0x3CB0000000000000, double %273, double %274, i64 0, i64 94190677724160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677724640, i32 806, i32 36), !dbg !1091
  %275 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1091
  %276 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %275, i32 0, i32 1, !dbg !1092
  %277 = load double, double* %276, align 8, !dbg !1093
  %278 = fadd double %277, %274, !dbg !1093
  call void @fAddHandler(double %277, double %274, double %278, i64 94190677725864, i64 94190677724640, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @9, i32 0, i32 0), i64 94190677726272, i32 806, i32 17), !dbg !1093
  store double %278, double* %276, align 8, !dbg !1093
  store i32 0, i32* %4, align 4, !dbg !1094
  br label %279, !dbg !1094

; <label>:279:                                    ; preds = %244, %209, %146, %141, %34
  %280 = load i32, i32* %4, align 4, !dbg !1095
  ret i32 %280, !dbg !1095
}

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_airy_Bi_deriv_e(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !1096 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1097, metadata !139), !dbg !1098
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1099, metadata !139), !dbg !1100
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1101, metadata !139), !dbg !1102
  %23 = load double, double* %5, align 8, !dbg !1103
  %24 = fcmp olt double %23, -1.000000e+00, !dbg !1105
  %25 = call i1 @fCmpInstHandler(double %23, double -1.000000e+00, i1 %24, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677735216, i32 817, i32 8), !dbg !1106
  br i1 %25, label %26, label %64, !dbg !1106

; <label>:26:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1107, metadata !139), !dbg !1109
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !1110, metadata !139), !dbg !1111
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1112, metadata !139), !dbg !1113
  %27 = load double, double* %5, align 8, !dbg !1114
  %28 = load i32, i32* %6, align 4, !dbg !1115
  %29 = call i32 @airy_deriv_mod_phase(double %27, i32 %28, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !1116
  store i32 %29, i32* %10, align 4, !dbg !1113
  call void @llvm.dbg.declare(metadata double* %11, metadata !1117, metadata !139), !dbg !1118
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !1119
  %31 = load double, double* %30, align 8, !dbg !1119
  %32 = call double @sin(double %31) #6, !dbg !1120
  call void @callOneArgHandler(i32 1, double %31, double %32, i64 94190677744056, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677745792, i32 821, i32 19), !dbg !1118
  store double %32, double* %11, align 8, !dbg !1118
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1121
  %34 = load double, double* %33, align 8, !dbg !1121
  %35 = load double, double* %11, align 8, !dbg !1122
  %36 = fmul double %34, %35, !dbg !1123
  call void @fMulHandler(double %34, double %35, double %36, i64 94190677748376, i64 94190677750024, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677750432, i32 822, i32 26), !dbg !1124
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1124
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !1125
  store double %36, double* %38, align 8, !dbg !1126
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1127
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !1128
  %41 = load double, double* %40, align 8, !dbg !1128
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !1129
  %43 = load double, double* %42, align 8, !dbg !1129
  %44 = fmul double %41, %43, !dbg !1130
  call void @fMulHandler(double %41, double %43, double %44, i64 94190677752904, i64 94190677755000, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677756672, i32 823, i32 37), !dbg !1131
  %45 = call double @fabs(double %44) #1, !dbg !1131
  %46 = load double, double* %11, align 8, !dbg !1132
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1133
  %48 = load double, double* %47, align 8, !dbg !1133
  %49 = fmul double %46, %48, !dbg !1134
  call void @fMulHandler(double %46, double %48, double %49, i64 94190677757608, i64 94190677758440, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677760112, i32 823, i32 55), !dbg !1135
  %50 = call double @fabs(double %49) #1, !dbg !1135
  %51 = fadd double %45, %50, !dbg !1137
  call void @fAddHandler(double %45, double %50, double %51, i64 94190677757152, i64 94190677760592, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677761072, i32 823, i32 46), !dbg !1138
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1138
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !1139
  store double %51, double* %53, align 8, !dbg !1140
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1141
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !1142
  %56 = load double, double* %55, align 8, !dbg !1142
  %57 = call double @fabs(double %56) #1, !dbg !1143
  %58 = fmul double 0x3CB0000000000000, %57, !dbg !1144
  call void @fMulHandler(double 0x3CB0000000000000, double %57, double %58, i64 0, i64 94190677765280, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677765760, i32 824, i32 36), !dbg !1145
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1145
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 1, !dbg !1146
  %61 = load double, double* %60, align 8, !dbg !1147
  %62 = fadd double %61, %58, !dbg !1147
  call void @fAddHandler(double %61, double %58, double %62, i64 94190677766984, i64 94190677765760, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677767392, i32 824, i32 17), !dbg !1147
  store double %62, double* %60, align 8, !dbg !1147
  %63 = load i32, i32* %10, align 4, !dbg !1148
  store i32 %63, i32* %4, align 4, !dbg !1149
  br label %219, !dbg !1149

; <label>:64:                                     ; preds = %3
  %65 = load double, double* %5, align 8, !dbg !1150
  %66 = fcmp olt double %65, 1.000000e+00, !dbg !1152
  %67 = call i1 @fCmpInstHandler(double %65, double 1.000000e+00, i1 %66, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677772144, i32 827, i32 13), !dbg !1153
  br i1 %67, label %68, label %112, !dbg !1153

; <label>:68:                                     ; preds = %64
  call void @llvm.dbg.declare(metadata double* %12, metadata !1154, metadata !139), !dbg !1156
  %69 = load double, double* %5, align 8, !dbg !1157
  %70 = load double, double* %5, align 8, !dbg !1158
  %71 = fmul double %69, %70, !dbg !1159
  call void @fMulHandler(double %69, double %70, double %71, i64 94190677774280, i64 94190677774632, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677775040, i32 828, i32 24), !dbg !1160
  %72 = load double, double* %5, align 8, !dbg !1160
  %73 = fmul double %71, %72, !dbg !1161
  call void @fMulHandler(double %71, double %72, double %73, i64 94190677775040, i64 94190677775432, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677775840, i32 828, i32 26), !dbg !1156
  store double %73, double* %12, align 8, !dbg !1156
  call void @llvm.dbg.declare(metadata double* %13, metadata !1162, metadata !139), !dbg !1163
  %74 = load double, double* %5, align 8, !dbg !1164
  %75 = load double, double* %5, align 8, !dbg !1165
  %76 = fmul double %74, %75, !dbg !1166
  call void @fMulHandler(double %74, double %75, double %76, i64 94190677779032, i64 94190677779384, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677779792, i32 829, i32 24), !dbg !1163
  store double %76, double* %13, align 8, !dbg !1163
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1167, metadata !139), !dbg !1168
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1169, metadata !139), !dbg !1170
  %77 = load double, double* %12, align 8, !dbg !1171
  %78 = load i32, i32* %6, align 4, !dbg !1172
  %79 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif_cs, double %77, i32 %78, %struct.gsl_sf_result_struct* %14), !dbg !1173
  %80 = load double, double* %12, align 8, !dbg !1174
  %81 = load i32, i32* %6, align 4, !dbg !1175
  %82 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big_cs, double %80, i32 %81, %struct.gsl_sf_result_struct* %15), !dbg !1176
  %83 = load double, double* %13, align 8, !dbg !1177
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1178
  %85 = load double, double* %84, align 8, !dbg !1178
  %86 = fadd double %85, 2.500000e-01, !dbg !1179
  call void @fAddHandler(double %85, double 2.500000e-01, double %86, i64 94190677787560, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677789264, i32 834, i32 40), !dbg !1180
  %87 = fmul double %83, %86, !dbg !1180
  call void @fMulHandler(double %83, double %86, double %87, i64 94190677786760, i64 94190677789264, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677789648, i32 834, i32 23), !dbg !1181
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1181
  %89 = load double, double* %88, align 8, !dbg !1181
  %90 = fadd double %87, %89, !dbg !1182
  call void @fAddHandler(double %87, double %89, double %90, i64 94190677789648, i64 94190677790488, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677792160, i32 834, i32 48), !dbg !1183
  %91 = fadd double %90, 5.000000e-01, !dbg !1183
  call void @fAddHandler(double %90, double 5.000000e-01, double %91, i64 94190677792160, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677792608, i32 834, i32 64), !dbg !1184
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1184
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !1185
  store double %91, double* %93, align 8, !dbg !1186
  %94 = load double, double* %13, align 8, !dbg !1187
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1188
  %96 = load double, double* %95, align 8, !dbg !1188
  %97 = fmul double %94, %96, !dbg !1189
  call void @fMulHandler(double %94, double %96, double %97, i64 94190677794216, i64 94190677795048, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677796720, i32 835, i32 23), !dbg !1190
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !1190
  %99 = load double, double* %98, align 8, !dbg !1190
  %100 = fadd double %97, %99, !dbg !1191
  call void @fAddHandler(double %97, double %99, double %100, i64 94190677796720, i64 94190677797560, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677799232, i32 835, i32 39), !dbg !1192
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1192
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !1193
  store double %100, double* %102, align 8, !dbg !1194
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1195
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !1196
  %105 = load double, double* %104, align 8, !dbg !1196
  %106 = call double @fabs(double %105) #1, !dbg !1197
  %107 = fmul double 0x3CB0000000000000, %106, !dbg !1198
  call void @fMulHandler(double 0x3CB0000000000000, double %106, double %107, i64 0, i64 94190677803440, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677803920, i32 836, i32 36), !dbg !1199
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1199
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 1, !dbg !1200
  %110 = load double, double* %109, align 8, !dbg !1201
  %111 = fadd double %110, %107, !dbg !1201
  call void @fAddHandler(double %110, double %107, double %111, i64 94190677805144, i64 94190677803920, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677805552, i32 836, i32 17), !dbg !1201
  store double %111, double* %109, align 8, !dbg !1201
  store i32 0, i32* %4, align 4, !dbg !1202
  br label %219, !dbg !1202

; <label>:112:                                    ; preds = %64
  %113 = load double, double* %5, align 8, !dbg !1203
  %114 = fcmp olt double %113, 2.000000e+00, !dbg !1205
  %115 = call i1 @fCmpInstHandler(double %113, double 2.000000e+00, i1 %114, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677809776, i32 839, i32 13), !dbg !1206
  br i1 %115, label %116, label %164, !dbg !1206

; <label>:116:                                    ; preds = %112
  call void @llvm.dbg.declare(metadata double* %16, metadata !1207, metadata !139), !dbg !1209
  %117 = load double, double* %5, align 8, !dbg !1210
  %118 = fmul double 2.000000e+00, %117, !dbg !1211
  call void @fMulHandler(double 2.000000e+00, double %117, double %118, i64 0, i64 94190677391912, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677392320, i32 840, i32 26), !dbg !1212
  %119 = load double, double* %5, align 8, !dbg !1212
  %120 = fmul double %118, %119, !dbg !1213
  call void @fMulHandler(double %118, double %119, double %120, i64 94190677392320, i64 94190677392680, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677393280, i32 840, i32 28), !dbg !1214
  %121 = load double, double* %5, align 8, !dbg !1214
  %122 = fmul double %120, %121, !dbg !1215
  call void @fMulHandler(double %120, double %121, double %122, i64 94190677393280, i64 94190677393672, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677394080, i32 840, i32 30), !dbg !1216
  %123 = fsub double %122, 9.000000e+00, !dbg !1216
  call void @fSubHandler(double %122, double 9.000000e+00, double %123, i64 94190677394080, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677394528, i32 840, i32 33), !dbg !1217
  %124 = fdiv double %123, 7.000000e+00, !dbg !1217
  call void @fDivHandler(double %123, double 7.000000e+00, double %124, i64 94190677394528, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677394944, i32 840, i32 40), !dbg !1209
  store double %124, double* %16, align 8, !dbg !1209
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !1218, metadata !139), !dbg !1219
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !1220, metadata !139), !dbg !1221
  %125 = load double, double* %16, align 8, !dbg !1222
  %126 = load i32, i32* %6, align 4, !dbg !1223
  %127 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif2_cs, double %125, i32 %126, %struct.gsl_sf_result_struct* %17), !dbg !1224
  %128 = load double, double* %16, align 8, !dbg !1225
  %129 = load i32, i32* %6, align 4, !dbg !1226
  %130 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big2_cs, double %128, i32 %129, %struct.gsl_sf_result_struct* %18), !dbg !1227
  %131 = load double, double* %5, align 8, !dbg !1228
  %132 = load double, double* %5, align 8, !dbg !1229
  %133 = fmul double %131, %132, !dbg !1230
  call void @fMulHandler(double %131, double %132, double %133, i64 94190677827848, i64 94190677830264, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677830672, i32 845, i32 21), !dbg !1231
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1231
  %135 = load double, double* %134, align 8, !dbg !1231
  %136 = fadd double %135, 2.500000e-01, !dbg !1232
  call void @fAddHandler(double %135, double 2.500000e-01, double %136, i64 94190677831512, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677833216, i32 845, i32 41), !dbg !1233
  %137 = fmul double %133, %136, !dbg !1233
  call void @fMulHandler(double %133, double %136, double %137, i64 94190677830672, i64 94190677833216, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677833600, i32 845, i32 24), !dbg !1234
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1234
  %139 = load double, double* %138, align 8, !dbg !1234
  %140 = fadd double %137, %139, !dbg !1235
  call void @fAddHandler(double %137, double %139, double %140, i64 94190677833600, i64 94190677834440, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677836112, i32 845, i32 49), !dbg !1236
  %141 = fadd double %140, 5.000000e-01, !dbg !1236
  call void @fAddHandler(double %140, double 5.000000e-01, double %141, i64 94190677836112, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677836560, i32 845, i32 65), !dbg !1237
  %142 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1237
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %142, i32 0, i32 0, !dbg !1238
  store double %141, double* %143, align 8, !dbg !1239
  %144 = load double, double* %5, align 8, !dbg !1240
  %145 = load double, double* %5, align 8, !dbg !1241
  %146 = fmul double %144, %145, !dbg !1242
  call void @fMulHandler(double %144, double %145, double %146, i64 94190677838168, i64 94190677838552, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677838960, i32 846, i32 21), !dbg !1243
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !1243
  %148 = load double, double* %147, align 8, !dbg !1243
  %149 = fmul double %146, %148, !dbg !1244
  call void @fMulHandler(double %146, double %148, double %149, i64 94190677838960, i64 94190677839800, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677841472, i32 846, i32 24), !dbg !1245
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !1245
  %151 = load double, double* %150, align 8, !dbg !1245
  %152 = fadd double %149, %151, !dbg !1246
  call void @fAddHandler(double %149, double %151, double %152, i64 94190677841472, i64 94190677842312, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677843984, i32 846, i32 40), !dbg !1247
  %153 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1247
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %153, i32 0, i32 1, !dbg !1248
  store double %152, double* %154, align 8, !dbg !1249
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1250
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %155, i32 0, i32 0, !dbg !1251
  %157 = load double, double* %156, align 8, !dbg !1251
  %158 = call double @fabs(double %157) #1, !dbg !1252
  %159 = fmul double 0x3CB0000000000000, %158, !dbg !1253
  call void @fMulHandler(double 0x3CB0000000000000, double %158, double %159, i64 0, i64 94190677848192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677848672, i32 847, i32 36), !dbg !1254
  %160 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1254
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %160, i32 0, i32 1, !dbg !1255
  %162 = load double, double* %161, align 8, !dbg !1256
  %163 = fadd double %162, %159, !dbg !1256
  call void @fAddHandler(double %162, double %159, double %163, i64 94190677849896, i64 94190677848672, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677850304, i32 847, i32 17), !dbg !1256
  store double %163, double* %161, align 8, !dbg !1256
  store i32 0, i32* %4, align 4, !dbg !1257
  br label %219, !dbg !1257

; <label>:164:                                    ; preds = %112
  %165 = load double, double* %5, align 8, !dbg !1258
  %166 = fcmp olt double %165, 0x6A9965FEA53D6D85, !dbg !1260
  %167 = call i1 @fCmpInstHandler(double %165, double 0x6A9965FEA53D6D85, i1 %166, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677854560, i32 850, i32 13), !dbg !1261
  br i1 %167, label %168, label %207, !dbg !1261

; <label>:168:                                    ; preds = %164
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !1262, metadata !139), !dbg !1264
  call void @llvm.dbg.declare(metadata double* %20, metadata !1265, metadata !139), !dbg !1266
  %169 = load double, double* %5, align 8, !dbg !1267
  %170 = load double, double* %5, align 8, !dbg !1268
  %171 = call double @sqrt(double %170) #6, !dbg !1269
  call void @callOneArgHandler(i32 14, double %170, double %171, i64 94190677858168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677858640, i32 852, i32 31), !dbg !1270
  %172 = fmul double %169, %171, !dbg !1270
  call void @fMulHandler(double %169, double %171, double %172, i64 94190677857816, i64 94190677858640, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677859120, i32 852, i32 30), !dbg !1271
  %173 = fdiv double %172, 3.000000e+00, !dbg !1271
  call void @fDivHandler(double %172, double 3.000000e+00, double %173, i64 94190677859120, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677859568, i32 852, i32 38), !dbg !1272
  %174 = fmul double 2.000000e+00, %173, !dbg !1272
  call void @fMulHandler(double 2.000000e+00, double %173, double %174, i64 0, i64 94190677859568, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677859984, i32 852, i32 27), !dbg !1266
  store double %174, double* %20, align 8, !dbg !1266
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1273, metadata !139), !dbg !1274
  %175 = load double, double* %5, align 8, !dbg !1275
  %176 = load i32, i32* %6, align 4, !dbg !1276
  %177 = call i32 @gsl_sf_airy_Bi_deriv_scaled_e(double %175, i32 %176, %struct.gsl_sf_result_struct* %19), !dbg !1277
  store i32 %177, i32* %21, align 4, !dbg !1274
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1278, metadata !139), !dbg !1279
  %178 = load double, double* %20, align 8, !dbg !1280
  %179 = load double, double* %20, align 8, !dbg !1281
  %180 = fmul double %179, 0x3CB0000000000000, !dbg !1282
  call void @fMulHandler(double %179, double 0x3CB0000000000000, double %180, i64 94190677867592, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677868000, i32 854, i32 57), !dbg !1283
  %181 = call double @fabs(double %180) #1, !dbg !1283
  %182 = fmul double 1.500000e+00, %181, !dbg !1284
  call void @fMulHandler(double 1.500000e+00, double %181, double %182, i64 0, i64 94190677868480, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677868992, i32 854, i32 48), !dbg !1285
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1285
  %184 = load double, double* %183, align 8, !dbg !1285
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !1286
  %186 = load double, double* %185, align 8, !dbg !1286
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1287
  %188 = call i32 @gsl_sf_exp_mult_err_e(double %178, double %182, double %184, double %186, %struct.gsl_sf_result_struct* %187), !dbg !1288
  store i32 %188, i32* %22, align 4, !dbg !1279
  %189 = load i32, i32* %22, align 4, !dbg !1290
  %190 = icmp ne i32 %189, 0, !dbg !1290
  %191 = sext i32 %189 to i64, !dbg !1290
  %192 = call i1 @iCmpInstHandler(i64 %191, i64 0, i1 %190, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677876624, i32 857, i32 12), !dbg !1290
  br i1 %192, label %193, label %195, !dbg !1290

; <label>:193:                                    ; preds = %168
  %194 = load i32, i32* %22, align 4, !dbg !1291
  br label %205, !dbg !1291

; <label>:195:                                    ; preds = %168
  %196 = load i32, i32* %21, align 4, !dbg !1292
  %197 = icmp ne i32 %196, 0, !dbg !1292
  %198 = sext i32 %196 to i64, !dbg !1292
  %199 = call i1 @iCmpInstHandler(i64 %198, i64 0, i1 %197, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @11, i32 0, i32 0), i64 94190677881168, i32 857, i32 12), !dbg !1292
  br i1 %199, label %200, label %202, !dbg !1292

; <label>:200:                                    ; preds = %195
  %201 = load i32, i32* %21, align 4, !dbg !1294
  br label %203, !dbg !1294

; <label>:202:                                    ; preds = %195
  br label %203, !dbg !1296

; <label>:203:                                    ; preds = %202, %200
  %204 = phi i32 [ %201, %200 ], [ 0, %202 ], !dbg !1298
  br label %205, !dbg !1298

; <label>:205:                                    ; preds = %203, %193
  %206 = phi i32 [ %194, %193 ], [ %204, %203 ], !dbg !1300
  store i32 %206, i32* %4, align 4, !dbg !1302
  br label %219, !dbg !1302

; <label>:207:                                    ; preds = %164
  br label %208, !dbg !1303, !llvm.loop !1305

; <label>:208:                                    ; preds = %207
  %209 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1306
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %209, i32 0, i32 0, !dbg !1306
  store double 0x7FF0000000000000, double* %210, align 8, !dbg !1306
  %211 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1306
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %211, i32 0, i32 1, !dbg !1306
  store double 0x7FF0000000000000, double* %212, align 8, !dbg !1306
  br label %213, !dbg !1306, !llvm.loop !1309

; <label>:213:                                    ; preds = %208
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 860, i32 16), !dbg !1311
  store i32 16, i32* %4, align 4, !dbg !1311
  br label %219, !dbg !1311
                                                  ; No predecessors!
  br label %215, !dbg !1314

; <label>:215:                                    ; preds = %214
  br label %216

; <label>:216:                                    ; preds = %215
  br label %217

; <label>:217:                                    ; preds = %216
  br label %218

; <label>:218:                                    ; preds = %217
  br label %219

; <label>:219:                                    ; preds = %218, %213, %205, %116, %68, %26
  %220 = load i32, i32* %4, align 4, !dbg !1316
  ret i32 %220, !dbg !1316
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_airy_Ai_deriv_scaled(double, i32) #0 !dbg !1317 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1320, metadata !139), !dbg !1321
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1322, metadata !139), !dbg !1323
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1324, metadata !139), !dbg !1325
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1326, metadata !139), !dbg !1325
  %8 = load double, double* %4, align 8, !dbg !1325
  %9 = load i32, i32* %5, align 4, !dbg !1325
  %10 = call i32 @gsl_sf_airy_Ai_deriv_scaled_e(double %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !1325
  store i32 %10, i32* %7, align 4, !dbg !1325
  %11 = load i32, i32* %7, align 4, !dbg !1327
  %12 = icmp ne i32 %11, 0, !dbg !1327
  %13 = sext i32 %11 to i64, !dbg !1325
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @13, i32 0, i32 0), i64 94190677906160, i32 870, i32 3), !dbg !1325
  br i1 %14, label %15, label %21, !dbg !1325

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1329, !llvm.loop !1332

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1334
  call void @gsl_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 870, i32 %17), !dbg !1334
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1334
  %19 = load double, double* %18, align 8, !dbg !1334
  store double %19, double* %3, align 8, !dbg !1334
  br label %24, !dbg !1334
                                                  ; No predecessors!
  br label %21, !dbg !1337

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1339
  %23 = load double, double* %22, align 8, !dbg !1339
  store double %23, double* %3, align 8, !dbg !1339
  br label %24, !dbg !1339

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1341
  ret double %25, !dbg !1341
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_airy_Ai_deriv(double, i32) #0 !dbg !1342 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1343, metadata !139), !dbg !1344
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1345, metadata !139), !dbg !1346
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1347, metadata !139), !dbg !1348
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1349, metadata !139), !dbg !1348
  %8 = load double, double* %4, align 8, !dbg !1348
  %9 = load i32, i32* %5, align 4, !dbg !1348
  %10 = call i32 @gsl_sf_airy_Ai_deriv_e(double %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !1348
  store i32 %10, i32* %7, align 4, !dbg !1348
  %11 = load i32, i32* %7, align 4, !dbg !1350
  %12 = icmp ne i32 %11, 0, !dbg !1350
  %13 = sext i32 %11 to i64, !dbg !1348
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @15, i32 0, i32 0), i64 94190677924976, i32 875, i32 3), !dbg !1348
  br i1 %14, label %15, label %21, !dbg !1348

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1352, !llvm.loop !1355

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1357
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 875, i32 %17), !dbg !1357
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1357
  %19 = load double, double* %18, align 8, !dbg !1357
  store double %19, double* %3, align 8, !dbg !1357
  br label %24, !dbg !1357
                                                  ; No predecessors!
  br label %21, !dbg !1360

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1362
  %23 = load double, double* %22, align 8, !dbg !1362
  store double %23, double* %3, align 8, !dbg !1362
  br label %24, !dbg !1362

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1364
  ret double %25, !dbg !1364
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_airy_Bi_deriv_scaled(double, i32) #0 !dbg !1365 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1366, metadata !139), !dbg !1367
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1368, metadata !139), !dbg !1369
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1370, metadata !139), !dbg !1371
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1372, metadata !139), !dbg !1371
  %8 = load double, double* %4, align 8, !dbg !1371
  %9 = load i32, i32* %5, align 4, !dbg !1371
  %10 = call i32 @gsl_sf_airy_Bi_deriv_scaled_e(double %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !1371
  store i32 %10, i32* %7, align 4, !dbg !1371
  %11 = load i32, i32* %7, align 4, !dbg !1373
  %12 = icmp ne i32 %11, 0, !dbg !1373
  %13 = sext i32 %11 to i64, !dbg !1371
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @17, i32 0, i32 0), i64 94190677943808, i32 880, i32 3), !dbg !1371
  br i1 %14, label %15, label %21, !dbg !1371

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1375, !llvm.loop !1378

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1380
  call void @gsl_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 880, i32 %17), !dbg !1380
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1380
  %19 = load double, double* %18, align 8, !dbg !1380
  store double %19, double* %3, align 8, !dbg !1380
  br label %24, !dbg !1380
                                                  ; No predecessors!
  br label %21, !dbg !1383

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1385
  %23 = load double, double* %22, align 8, !dbg !1385
  store double %23, double* %3, align 8, !dbg !1385
  br label %24, !dbg !1385

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1387
  ret double %25, !dbg !1387
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_airy_Bi_deriv(double, i32) #0 !dbg !1388 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1389, metadata !139), !dbg !1390
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1391, metadata !139), !dbg !1392
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1393, metadata !139), !dbg !1394
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1395, metadata !139), !dbg !1394
  %8 = load double, double* %4, align 8, !dbg !1394
  %9 = load i32, i32* %5, align 4, !dbg !1394
  %10 = call i32 @gsl_sf_airy_Bi_deriv_e(double %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !1394
  store i32 %10, i32* %7, align 4, !dbg !1394
  %11 = load i32, i32* %7, align 4, !dbg !1396
  %12 = icmp ne i32 %11, 0, !dbg !1396
  %13 = sext i32 %11 to i64, !dbg !1394
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @19, i32 0, i32 0), i64 94190677962624, i32 885, i32 3), !dbg !1394
  br i1 %14, label %15, label %21, !dbg !1394

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1398, !llvm.loop !1401

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1403
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 885, i32 %17), !dbg !1403
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1403
  %19 = load double, double* %18, align 8, !dbg !1403
  store double %19, double* %3, align 8, !dbg !1403
  br label %24, !dbg !1403
                                                  ; No predecessors!
  br label %21, !dbg !1406

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1408
  %23 = load double, double* %22, align 8, !dbg !1408
  store double %23, double* %3, align 8, !dbg !1408
  br label %24, !dbg !1408

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1410
  ret double %25, !dbg !1410
}

declare i32 @GSL_MODE_PREC(i32) #5

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
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!119, !120, !121}
!llvm.ident = !{!122}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "airy_der.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60, !64, !65, !69, !70, !74, !75, !79, !80, !84, !85, !89, !90, !94, !95, !99, !100, !101, !102, !103, !104, !105, !106, !110, !111, !112, !113, !114, !115}
!42 = distinct !DIGlobalVariable(name: "an20_cs", scope: !0, file: !1, line: 460, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @an20_cs)
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
!55 = distinct !DIGlobalVariable(name: "an20_data", scope: !0, file: !1, line: 442, type: !56, isLocal: true, isDefinition: true, variable: [16 x double]* @an20_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1024, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 16)
!59 = distinct !DIGlobalVariable(name: "aph0_cs", scope: !0, file: !1, line: 577, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @aph0_cs)
!60 = distinct !DIGlobalVariable(name: "aph0_data", scope: !0, file: !1, line: 560, type: !61, isLocal: true, isDefinition: true, variable: [15 x double]* @aph0_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 960, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 15)
!64 = distinct !DIGlobalVariable(name: "an21_cs", scope: !0, file: !1, line: 428, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @an21_cs)
!65 = distinct !DIGlobalVariable(name: "an21_data", scope: !0, file: !1, line: 402, type: !66, isLocal: true, isDefinition: true, variable: [24 x double]* @an21_data)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1536, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 24)
!69 = distinct !DIGlobalVariable(name: "aph1_cs", scope: !0, file: !1, line: 546, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @aph1_cs)
!70 = distinct !DIGlobalVariable(name: "aph1_data", scope: !0, file: !1, line: 522, type: !71, isLocal: true, isDefinition: true, variable: [22 x double]* @aph1_data)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1408, align: 64, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 22)
!74 = distinct !DIGlobalVariable(name: "an22_cs", scope: !0, file: !1, line: 388, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @an22_cs)
!75 = distinct !DIGlobalVariable(name: "an22_data", scope: !0, file: !1, line: 353, type: !76, isLocal: true, isDefinition: true, variable: [33 x double]* @an22_data)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2112, align: 64, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 33)
!79 = distinct !DIGlobalVariable(name: "aph2_cs", scope: !0, file: !1, line: 508, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @aph2_cs)
!80 = distinct !DIGlobalVariable(name: "aph2_data", scope: !0, file: !1, line: 474, type: !81, isLocal: true, isDefinition: true, variable: [32 x double]* @aph2_data)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2048, align: 64, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 32)
!84 = distinct !DIGlobalVariable(name: "aif_cs", scope: !0, file: !1, line: 55, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @aif_cs)
!85 = distinct !DIGlobalVariable(name: "aif_data", scope: !0, file: !1, line: 45, type: !86, isLocal: true, isDefinition: true, variable: [8 x double]* @aif_data)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 512, align: 64, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 8)
!89 = distinct !DIGlobalVariable(name: "aig_cs", scope: !0, file: !1, line: 80, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @aig_cs)
!90 = distinct !DIGlobalVariable(name: "aig_data", scope: !0, file: !1, line: 69, type: !91, isLocal: true, isDefinition: true, variable: [9 x double]* @aig_data)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 576, align: 64, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 9)
!94 = distinct !DIGlobalVariable(name: "aip1_cs", scope: !0, file: !1, line: 152, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @aip1_cs)
!95 = distinct !DIGlobalVariable(name: "aip1_data", scope: !0, file: !1, line: 125, type: !96, isLocal: true, isDefinition: true, variable: [25 x double]* @aip1_data)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1600, align: 64, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 25)
!99 = distinct !DIGlobalVariable(name: "aip2_cs", scope: !0, file: !1, line: 111, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @aip2_cs)
!100 = distinct !DIGlobalVariable(name: "aip2_data", scope: !0, file: !1, line: 94, type: !61, isLocal: true, isDefinition: true, variable: [15 x double]* @aip2_data)
!101 = distinct !DIGlobalVariable(name: "bif_cs", scope: !0, file: !1, line: 177, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bif_cs)
!102 = distinct !DIGlobalVariable(name: "bif_data", scope: !0, file: !1, line: 167, type: !86, isLocal: true, isDefinition: true, variable: [8 x double]* @bif_data)
!103 = distinct !DIGlobalVariable(name: "big_cs", scope: !0, file: !1, line: 202, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @big_cs)
!104 = distinct !DIGlobalVariable(name: "big_data", scope: !0, file: !1, line: 191, type: !91, isLocal: true, isDefinition: true, variable: [9 x double]* @big_data)
!105 = distinct !DIGlobalVariable(name: "bif2_cs", scope: !0, file: !1, line: 228, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bif2_cs)
!106 = distinct !DIGlobalVariable(name: "bif2_data", scope: !0, file: !1, line: 216, type: !107, isLocal: true, isDefinition: true, variable: [10 x double]* @bif2_data)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 640, align: 64, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 10)
!110 = distinct !DIGlobalVariable(name: "big2_cs", scope: !0, file: !1, line: 254, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @big2_cs)
!111 = distinct !DIGlobalVariable(name: "big2_data", scope: !0, file: !1, line: 242, type: !107, isLocal: true, isDefinition: true, variable: [10 x double]* @big2_data)
!112 = distinct !DIGlobalVariable(name: "bip1_cs", scope: !0, file: !1, line: 339, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bip1_cs)
!113 = distinct !DIGlobalVariable(name: "bip1_data", scope: !0, file: !1, line: 313, type: !66, isLocal: true, isDefinition: true, variable: [24 x double]* @bip1_data)
!114 = distinct !DIGlobalVariable(name: "bip2_cs", scope: !0, file: !1, line: 299, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bip2_cs)
!115 = distinct !DIGlobalVariable(name: "bip2_data", scope: !0, file: !1, line: 268, type: !116, isLocal: true, isDefinition: true, variable: [29 x double]* @bip2_data)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1856, align: 64, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 29)
!119 = !{i32 2, !"Dwarf Version", i32 4}
!120 = !{i32 2, !"Debug Info Version", i32 3}
!121 = !{i32 1, !"PIC Level", i32 2}
!122 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!123 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_deriv_scaled_e", scope: !1, file: !1, line: 636, type: !124, isLocal: false, isDefinition: true, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !137)
!124 = !DISubroutineType(types: !125)
!125 = !{!51, !126, !127, !130}
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !128, line: 50, baseType: !129)
!128 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/fpcc/gsl-2.5/specfunc")
!129 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !132, line: 41, baseType: !133)
!132 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !132, line: 37, size: 128, align: 64, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !133, file: !132, line: 38, baseType: !49, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !133, file: !132, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!137 = !{}
!138 = !DILocalVariable(name: "x", arg: 1, scope: !123, file: !1, line: 636, type: !126)
!139 = !DIExpression()
!140 = !DILocation(line: 636, column: 44, scope: !123)
!141 = !DILocalVariable(name: "mode", arg: 2, scope: !123, file: !1, line: 636, type: !127)
!142 = !DILocation(line: 636, column: 58, scope: !123)
!143 = !DILocalVariable(name: "result", arg: 3, scope: !123, file: !1, line: 636, type: !130)
!144 = !DILocation(line: 636, column: 80, scope: !123)
!145 = !DILocation(line: 640, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !123, file: !1, line: 640, column: 6)
!147 = !DILocation(line: 640, column: 8, scope: !146)
!148 = !DILocation(line: 640, column: 6, scope: !123)
!149 = !DILocalVariable(name: "a", scope: !150, file: !1, line: 641, type: !131)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 640, column: 16)
!151 = !DILocation(line: 641, column: 19, scope: !150)
!152 = !DILocalVariable(name: "p", scope: !150, file: !1, line: 642, type: !131)
!153 = !DILocation(line: 642, column: 19, scope: !150)
!154 = !DILocalVariable(name: "status_ap", scope: !150, file: !1, line: 643, type: !51)
!155 = !DILocation(line: 643, column: 9, scope: !150)
!156 = !DILocation(line: 643, column: 42, scope: !150)
!157 = !DILocation(line: 643, column: 45, scope: !150)
!158 = !DILocation(line: 643, column: 21, scope: !150)
!159 = !DILocalVariable(name: "c", scope: !150, file: !1, line: 644, type: !49)
!160 = !DILocation(line: 644, column: 12, scope: !150)
!161 = !DILocation(line: 644, column: 25, scope: !150)
!162 = !DILocation(line: 644, column: 19, scope: !150)
!163 = !DILocation(line: 645, column: 22, scope: !150)
!164 = !DILocation(line: 645, column: 28, scope: !150)
!165 = !DILocation(line: 645, column: 26, scope: !150)
!166 = !DILocation(line: 645, column: 5, scope: !150)
!167 = !DILocation(line: 645, column: 13, scope: !150)
!168 = !DILocation(line: 645, column: 18, scope: !150)
!169 = !DILocation(line: 646, column: 25, scope: !150)
!170 = !DILocation(line: 646, column: 33, scope: !150)
!171 = !DILocation(line: 646, column: 41, scope: !150)
!172 = !DILocation(line: 646, column: 37, scope: !150)
!173 = !DILocation(line: 646, column: 20, scope: !150)
!174 = !DILocation(line: 646, column: 53, scope: !150)
!175 = !DILocation(line: 646, column: 59, scope: !150)
!176 = !DILocation(line: 646, column: 55, scope: !150)
!177 = !DILocation(line: 646, column: 48, scope: !178)
!178 = !DILexicalBlockFile(scope: !150, file: !1, discriminator: 1)
!179 = !DILocation(line: 646, column: 46, scope: !150)
!180 = !DILocation(line: 646, column: 5, scope: !150)
!181 = !DILocation(line: 646, column: 13, scope: !150)
!182 = !DILocation(line: 646, column: 18, scope: !150)
!183 = !DILocation(line: 647, column: 43, scope: !150)
!184 = !DILocation(line: 647, column: 51, scope: !150)
!185 = !DILocation(line: 647, column: 38, scope: !150)
!186 = !DILocation(line: 647, column: 36, scope: !150)
!187 = !DILocation(line: 647, column: 5, scope: !150)
!188 = !DILocation(line: 647, column: 13, scope: !150)
!189 = !DILocation(line: 647, column: 17, scope: !150)
!190 = !DILocation(line: 648, column: 12, scope: !150)
!191 = !DILocation(line: 648, column: 5, scope: !150)
!192 = !DILocation(line: 650, column: 11, scope: !193)
!193 = distinct !DILexicalBlock(scope: !146, file: !1, line: 650, column: 11)
!194 = !DILocation(line: 650, column: 13, scope: !193)
!195 = !DILocation(line: 650, column: 11, scope: !146)
!196 = !DILocalVariable(name: "x3", scope: !197, file: !1, line: 651, type: !126)
!197 = distinct !DILexicalBlock(scope: !193, file: !1, line: 650, column: 21)
!198 = !DILocation(line: 651, column: 18, scope: !197)
!199 = !DILocation(line: 651, column: 23, scope: !197)
!200 = !DILocation(line: 651, column: 25, scope: !197)
!201 = !DILocation(line: 651, column: 24, scope: !197)
!202 = !DILocation(line: 651, column: 27, scope: !197)
!203 = !DILocation(line: 651, column: 26, scope: !197)
!204 = !DILocalVariable(name: "x2", scope: !197, file: !1, line: 652, type: !126)
!205 = !DILocation(line: 652, column: 18, scope: !197)
!206 = !DILocation(line: 652, column: 23, scope: !197)
!207 = !DILocation(line: 652, column: 25, scope: !197)
!208 = !DILocation(line: 652, column: 24, scope: !197)
!209 = !DILocalVariable(name: "result_c0", scope: !197, file: !1, line: 653, type: !131)
!210 = !DILocation(line: 653, column: 19, scope: !197)
!211 = !DILocalVariable(name: "result_c1", scope: !197, file: !1, line: 654, type: !131)
!212 = !DILocation(line: 654, column: 19, scope: !197)
!213 = !DILocation(line: 655, column: 31, scope: !197)
!214 = !DILocation(line: 655, column: 35, scope: !197)
!215 = !DILocation(line: 655, column: 5, scope: !197)
!216 = !DILocation(line: 656, column: 31, scope: !197)
!217 = !DILocation(line: 656, column: 35, scope: !197)
!218 = !DILocation(line: 656, column: 5, scope: !197)
!219 = !DILocation(line: 658, column: 21, scope: !197)
!220 = !DILocation(line: 658, column: 43, scope: !197)
!221 = !DILocation(line: 658, column: 31, scope: !197)
!222 = !DILocation(line: 658, column: 23, scope: !197)
!223 = !DILocation(line: 658, column: 60, scope: !197)
!224 = !DILocation(line: 658, column: 48, scope: !197)
!225 = !DILocation(line: 658, column: 65, scope: !197)
!226 = !DILocation(line: 658, column: 5, scope: !197)
!227 = !DILocation(line: 658, column: 13, scope: !197)
!228 = !DILocation(line: 658, column: 18, scope: !197)
!229 = !DILocation(line: 659, column: 25, scope: !197)
!230 = !DILocation(line: 659, column: 38, scope: !197)
!231 = !DILocation(line: 659, column: 27, scope: !197)
!232 = !DILocation(line: 659, column: 20, scope: !197)
!233 = !DILocation(line: 659, column: 55, scope: !197)
!234 = !DILocation(line: 659, column: 43, scope: !197)
!235 = !DILocation(line: 659, column: 5, scope: !197)
!236 = !DILocation(line: 659, column: 13, scope: !197)
!237 = !DILocation(line: 659, column: 18, scope: !197)
!238 = !DILocation(line: 660, column: 43, scope: !197)
!239 = !DILocation(line: 660, column: 51, scope: !197)
!240 = !DILocation(line: 660, column: 38, scope: !197)
!241 = !DILocation(line: 660, column: 36, scope: !197)
!242 = !DILocation(line: 660, column: 5, scope: !197)
!243 = !DILocation(line: 660, column: 13, scope: !197)
!244 = !DILocation(line: 660, column: 17, scope: !197)
!245 = !DILocation(line: 662, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !197, file: !1, line: 662, column: 8)
!247 = !DILocation(line: 662, column: 10, scope: !246)
!248 = !DILocation(line: 662, column: 8, scope: !197)
!249 = !DILocalVariable(name: "s", scope: !250, file: !1, line: 664, type: !49)
!250 = distinct !DILexicalBlock(scope: !246, file: !1, line: 662, column: 57)
!251 = !DILocation(line: 664, column: 14, scope: !250)
!252 = !DILocation(line: 664, column: 26, scope: !250)
!253 = !DILocation(line: 664, column: 25, scope: !250)
!254 = !DILocation(line: 664, column: 33, scope: !250)
!255 = !DILocation(line: 664, column: 28, scope: !250)
!256 = !DILocation(line: 664, column: 27, scope: !250)
!257 = !DILocation(line: 664, column: 35, scope: !250)
!258 = !DILocation(line: 664, column: 18, scope: !259)
!259 = !DILexicalBlockFile(scope: !250, file: !1, discriminator: 1)
!260 = !DILocation(line: 665, column: 22, scope: !250)
!261 = !DILocation(line: 665, column: 7, scope: !250)
!262 = !DILocation(line: 665, column: 15, scope: !250)
!263 = !DILocation(line: 665, column: 19, scope: !250)
!264 = !DILocation(line: 666, column: 22, scope: !250)
!265 = !DILocation(line: 666, column: 7, scope: !250)
!266 = !DILocation(line: 666, column: 15, scope: !250)
!267 = !DILocation(line: 666, column: 19, scope: !250)
!268 = !DILocation(line: 667, column: 5, scope: !250)
!269 = !DILocation(line: 669, column: 5, scope: !197)
!270 = !DILocation(line: 671, column: 11, scope: !271)
!271 = distinct !DILexicalBlock(scope: !193, file: !1, line: 671, column: 11)
!272 = !DILocation(line: 671, column: 13, scope: !271)
!273 = !DILocation(line: 671, column: 11, scope: !193)
!274 = !DILocalVariable(name: "sqrtx", scope: !275, file: !1, line: 672, type: !126)
!275 = distinct !DILexicalBlock(scope: !271, file: !1, line: 671, column: 21)
!276 = !DILocation(line: 672, column: 18, scope: !275)
!277 = !DILocation(line: 672, column: 31, scope: !275)
!278 = !DILocation(line: 672, column: 26, scope: !275)
!279 = !DILocalVariable(name: "z", scope: !275, file: !1, line: 673, type: !126)
!280 = !DILocation(line: 673, column: 18, scope: !275)
!281 = !DILocation(line: 673, column: 29, scope: !275)
!282 = !DILocation(line: 673, column: 31, scope: !275)
!283 = !DILocation(line: 673, column: 30, scope: !275)
!284 = !DILocation(line: 673, column: 27, scope: !275)
!285 = !DILocation(line: 673, column: 38, scope: !275)
!286 = !DILocation(line: 673, column: 44, scope: !275)
!287 = !DILocalVariable(name: "s", scope: !275, file: !1, line: 674, type: !126)
!288 = !DILocation(line: 674, column: 18, scope: !275)
!289 = !DILocation(line: 674, column: 27, scope: !275)
!290 = !DILocation(line: 674, column: 22, scope: !275)
!291 = !DILocalVariable(name: "result_c0", scope: !275, file: !1, line: 675, type: !131)
!292 = !DILocation(line: 675, column: 19, scope: !275)
!293 = !DILocation(line: 676, column: 32, scope: !275)
!294 = !DILocation(line: 676, column: 35, scope: !275)
!295 = !DILocation(line: 676, column: 5, scope: !275)
!296 = !DILocation(line: 677, column: 42, scope: !275)
!297 = !DILocation(line: 677, column: 30, scope: !275)
!298 = !DILocation(line: 677, column: 20, scope: !275)
!299 = !DILocation(line: 677, column: 49, scope: !275)
!300 = !DILocation(line: 677, column: 47, scope: !275)
!301 = !DILocation(line: 677, column: 5, scope: !275)
!302 = !DILocation(line: 677, column: 13, scope: !275)
!303 = !DILocation(line: 677, column: 18, scope: !275)
!304 = !DILocation(line: 678, column: 30, scope: !275)
!305 = !DILocation(line: 678, column: 36, scope: !275)
!306 = !DILocation(line: 678, column: 34, scope: !275)
!307 = !DILocation(line: 678, column: 5, scope: !275)
!308 = !DILocation(line: 678, column: 13, scope: !275)
!309 = !DILocation(line: 678, column: 18, scope: !275)
!310 = !DILocation(line: 679, column: 43, scope: !275)
!311 = !DILocation(line: 679, column: 51, scope: !275)
!312 = !DILocation(line: 679, column: 38, scope: !275)
!313 = !DILocation(line: 679, column: 36, scope: !275)
!314 = !DILocation(line: 679, column: 5, scope: !275)
!315 = !DILocation(line: 679, column: 13, scope: !275)
!316 = !DILocation(line: 679, column: 17, scope: !275)
!317 = !DILocation(line: 680, column: 5, scope: !275)
!318 = !DILocalVariable(name: "sqrtx", scope: !319, file: !1, line: 683, type: !126)
!319 = distinct !DILexicalBlock(scope: !271, file: !1, line: 682, column: 8)
!320 = !DILocation(line: 683, column: 18, scope: !319)
!321 = !DILocation(line: 683, column: 31, scope: !319)
!322 = !DILocation(line: 683, column: 26, scope: !319)
!323 = !DILocalVariable(name: "z", scope: !319, file: !1, line: 684, type: !126)
!324 = !DILocation(line: 684, column: 18, scope: !319)
!325 = !DILocation(line: 684, column: 28, scope: !319)
!326 = !DILocation(line: 684, column: 30, scope: !319)
!327 = !DILocation(line: 684, column: 29, scope: !319)
!328 = !DILocation(line: 684, column: 26, scope: !319)
!329 = !DILocation(line: 684, column: 37, scope: !319)
!330 = !DILocalVariable(name: "s", scope: !319, file: !1, line: 685, type: !126)
!331 = !DILocation(line: 685, column: 18, scope: !319)
!332 = !DILocation(line: 685, column: 27, scope: !319)
!333 = !DILocation(line: 685, column: 22, scope: !319)
!334 = !DILocalVariable(name: "result_c0", scope: !319, file: !1, line: 686, type: !131)
!335 = !DILocation(line: 686, column: 19, scope: !319)
!336 = !DILocation(line: 687, column: 32, scope: !319)
!337 = !DILocation(line: 687, column: 35, scope: !319)
!338 = !DILocation(line: 687, column: 5, scope: !319)
!339 = !DILocation(line: 688, column: 42, scope: !319)
!340 = !DILocation(line: 688, column: 30, scope: !319)
!341 = !DILocation(line: 688, column: 20, scope: !319)
!342 = !DILocation(line: 688, column: 49, scope: !319)
!343 = !DILocation(line: 688, column: 47, scope: !319)
!344 = !DILocation(line: 688, column: 5, scope: !319)
!345 = !DILocation(line: 688, column: 13, scope: !319)
!346 = !DILocation(line: 688, column: 18, scope: !319)
!347 = !DILocation(line: 689, column: 30, scope: !319)
!348 = !DILocation(line: 689, column: 36, scope: !319)
!349 = !DILocation(line: 689, column: 34, scope: !319)
!350 = !DILocation(line: 689, column: 5, scope: !319)
!351 = !DILocation(line: 689, column: 13, scope: !319)
!352 = !DILocation(line: 689, column: 18, scope: !319)
!353 = !DILocation(line: 690, column: 43, scope: !319)
!354 = !DILocation(line: 690, column: 51, scope: !319)
!355 = !DILocation(line: 690, column: 38, scope: !319)
!356 = !DILocation(line: 690, column: 36, scope: !319)
!357 = !DILocation(line: 690, column: 5, scope: !319)
!358 = !DILocation(line: 690, column: 13, scope: !319)
!359 = !DILocation(line: 690, column: 17, scope: !319)
!360 = !DILocation(line: 691, column: 5, scope: !319)
!361 = !DILocation(line: 693, column: 1, scope: !123)
!362 = distinct !DISubprogram(name: "airy_deriv_mod_phase", scope: !1, file: !1, line: 587, type: !363, isLocal: true, isDefinition: true, scopeLine: 589, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !137)
!363 = !DISubroutineType(types: !364)
!364 = !{!51, !126, !127, !130, !130}
!365 = !DILocalVariable(name: "x", arg: 1, scope: !362, file: !1, line: 587, type: !126)
!366 = !DILocation(line: 587, column: 35, scope: !362)
!367 = !DILocalVariable(name: "mode", arg: 2, scope: !362, file: !1, line: 587, type: !127)
!368 = !DILocation(line: 587, column: 49, scope: !362)
!369 = !DILocalVariable(name: "ampl", arg: 3, scope: !362, file: !1, line: 588, type: !130)
!370 = !DILocation(line: 588, column: 38, scope: !362)
!371 = !DILocalVariable(name: "phi", arg: 4, scope: !362, file: !1, line: 588, type: !130)
!372 = !DILocation(line: 588, column: 60, scope: !362)
!373 = !DILocalVariable(name: "pi34", scope: !362, file: !1, line: 590, type: !126)
!374 = !DILocation(line: 590, column: 16, scope: !362)
!375 = !DILocalVariable(name: "result_a", scope: !362, file: !1, line: 591, type: !131)
!376 = !DILocation(line: 591, column: 17, scope: !362)
!377 = !DILocalVariable(name: "result_p", scope: !362, file: !1, line: 592, type: !131)
!378 = !DILocation(line: 592, column: 17, scope: !362)
!379 = !DILocalVariable(name: "a", scope: !362, file: !1, line: 593, type: !49)
!380 = !DILocation(line: 593, column: 10, scope: !362)
!381 = !DILocalVariable(name: "p", scope: !362, file: !1, line: 593, type: !49)
!382 = !DILocation(line: 593, column: 13, scope: !362)
!383 = !DILocalVariable(name: "sqx", scope: !362, file: !1, line: 594, type: !49)
!384 = !DILocation(line: 594, column: 10, scope: !362)
!385 = !DILocation(line: 596, column: 6, scope: !386)
!386 = distinct !DILexicalBlock(scope: !362, file: !1, line: 596, column: 6)
!387 = !DILocation(line: 596, column: 8, scope: !386)
!388 = !DILocation(line: 596, column: 6, scope: !362)
!389 = !DILocalVariable(name: "z", scope: !390, file: !1, line: 597, type: !49)
!390 = distinct !DILexicalBlock(scope: !386, file: !1, line: 596, column: 17)
!391 = !DILocation(line: 597, column: 12, scope: !390)
!392 = !DILocation(line: 597, column: 23, scope: !390)
!393 = !DILocation(line: 597, column: 25, scope: !390)
!394 = !DILocation(line: 597, column: 24, scope: !390)
!395 = !DILocation(line: 597, column: 27, scope: !390)
!396 = !DILocation(line: 597, column: 26, scope: !390)
!397 = !DILocation(line: 597, column: 21, scope: !390)
!398 = !DILocation(line: 597, column: 30, scope: !390)
!399 = !DILocation(line: 598, column: 32, scope: !390)
!400 = !DILocation(line: 598, column: 35, scope: !390)
!401 = !DILocation(line: 598, column: 5, scope: !390)
!402 = !DILocation(line: 599, column: 32, scope: !390)
!403 = !DILocation(line: 599, column: 35, scope: !390)
!404 = !DILocation(line: 599, column: 5, scope: !390)
!405 = !DILocation(line: 600, column: 3, scope: !390)
!406 = !DILocation(line: 601, column: 11, scope: !407)
!407 = distinct !DILexicalBlock(scope: !386, file: !1, line: 601, column: 11)
!408 = !DILocation(line: 601, column: 13, scope: !407)
!409 = !DILocation(line: 601, column: 11, scope: !386)
!410 = !DILocalVariable(name: "z", scope: !411, file: !1, line: 602, type: !49)
!411 = distinct !DILexicalBlock(scope: !407, file: !1, line: 601, column: 22)
!412 = !DILocation(line: 602, column: 12, scope: !411)
!413 = !DILocation(line: 602, column: 24, scope: !411)
!414 = !DILocation(line: 602, column: 26, scope: !411)
!415 = !DILocation(line: 602, column: 25, scope: !411)
!416 = !DILocation(line: 602, column: 28, scope: !411)
!417 = !DILocation(line: 602, column: 27, scope: !411)
!418 = !DILocation(line: 602, column: 22, scope: !411)
!419 = !DILocation(line: 602, column: 31, scope: !411)
!420 = !DILocation(line: 602, column: 38, scope: !411)
!421 = !DILocation(line: 603, column: 32, scope: !411)
!422 = !DILocation(line: 603, column: 35, scope: !411)
!423 = !DILocation(line: 603, column: 5, scope: !411)
!424 = !DILocation(line: 604, column: 32, scope: !411)
!425 = !DILocation(line: 604, column: 35, scope: !411)
!426 = !DILocation(line: 604, column: 5, scope: !411)
!427 = !DILocation(line: 605, column: 3, scope: !411)
!428 = !DILocation(line: 606, column: 11, scope: !429)
!429 = distinct !DILexicalBlock(scope: !407, file: !1, line: 606, column: 11)
!430 = !DILocation(line: 606, column: 13, scope: !429)
!431 = !DILocation(line: 606, column: 11, scope: !407)
!432 = !DILocalVariable(name: "z", scope: !433, file: !1, line: 607, type: !49)
!433 = distinct !DILexicalBlock(scope: !429, file: !1, line: 606, column: 22)
!434 = !DILocation(line: 607, column: 12, scope: !433)
!435 = !DILocation(line: 607, column: 23, scope: !433)
!436 = !DILocation(line: 607, column: 25, scope: !433)
!437 = !DILocation(line: 607, column: 24, scope: !433)
!438 = !DILocation(line: 607, column: 27, scope: !433)
!439 = !DILocation(line: 607, column: 26, scope: !433)
!440 = !DILocation(line: 607, column: 21, scope: !433)
!441 = !DILocation(line: 607, column: 30, scope: !433)
!442 = !DILocation(line: 607, column: 37, scope: !433)
!443 = !DILocation(line: 608, column: 32, scope: !433)
!444 = !DILocation(line: 608, column: 35, scope: !433)
!445 = !DILocation(line: 608, column: 5, scope: !433)
!446 = !DILocation(line: 609, column: 32, scope: !433)
!447 = !DILocation(line: 609, column: 35, scope: !433)
!448 = !DILocation(line: 609, column: 5, scope: !433)
!449 = !DILocation(line: 610, column: 3, scope: !433)
!450 = !DILocation(line: 612, column: 5, scope: !451)
!451 = distinct !DILexicalBlock(scope: !429, file: !1, line: 611, column: 8)
!452 = !DILocation(line: 612, column: 11, scope: !451)
!453 = !DILocation(line: 612, column: 15, scope: !451)
!454 = !DILocation(line: 613, column: 5, scope: !451)
!455 = !DILocation(line: 613, column: 11, scope: !451)
!456 = !DILocation(line: 613, column: 15, scope: !451)
!457 = !DILocation(line: 614, column: 5, scope: !451)
!458 = !DILocation(line: 614, column: 10, scope: !451)
!459 = !DILocation(line: 614, column: 15, scope: !451)
!460 = !DILocation(line: 615, column: 5, scope: !451)
!461 = !DILocation(line: 615, column: 10, scope: !451)
!462 = !DILocation(line: 615, column: 15, scope: !451)
!463 = !DILocation(line: 616, column: 5, scope: !451)
!464 = distinct !{!464, !463}
!465 = !DILocation(line: 616, column: 5, scope: !466)
!466 = !DILexicalBlockFile(scope: !467, file: !1, discriminator: 1)
!467 = distinct !DILexicalBlock(scope: !451, file: !1, line: 616, column: 5)
!468 = !DILocation(line: 619, column: 26, scope: !362)
!469 = !DILocation(line: 619, column: 15, scope: !362)
!470 = !DILocation(line: 619, column: 5, scope: !362)
!471 = !DILocation(line: 620, column: 26, scope: !362)
!472 = !DILocation(line: 620, column: 15, scope: !362)
!473 = !DILocation(line: 620, column: 5, scope: !362)
!474 = !DILocation(line: 622, column: 15, scope: !362)
!475 = !DILocation(line: 622, column: 14, scope: !362)
!476 = !DILocation(line: 622, column: 9, scope: !362)
!477 = !DILocation(line: 622, column: 7, scope: !362)
!478 = !DILocation(line: 624, column: 20, scope: !362)
!479 = !DILocation(line: 624, column: 24, scope: !362)
!480 = !DILocation(line: 624, column: 22, scope: !362)
!481 = !DILocation(line: 624, column: 15, scope: !362)
!482 = !DILocation(line: 624, column: 3, scope: !362)
!483 = !DILocation(line: 624, column: 9, scope: !362)
!484 = !DILocation(line: 624, column: 13, scope: !362)
!485 = !DILocation(line: 625, column: 20, scope: !362)
!486 = !DILocation(line: 625, column: 26, scope: !362)
!487 = !DILocation(line: 625, column: 15, scope: !362)
!488 = !DILocation(line: 625, column: 66, scope: !362)
!489 = !DILocation(line: 625, column: 79, scope: !362)
!490 = !DILocation(line: 625, column: 69, scope: !362)
!491 = !DILocation(line: 625, column: 52, scope: !492)
!492 = !DILexicalBlockFile(scope: !362, file: !1, discriminator: 1)
!493 = !DILocation(line: 625, column: 50, scope: !362)
!494 = !DILocation(line: 625, column: 31, scope: !362)
!495 = !DILocation(line: 625, column: 3, scope: !362)
!496 = !DILocation(line: 625, column: 9, scope: !362)
!497 = !DILocation(line: 625, column: 13, scope: !362)
!498 = !DILocation(line: 626, column: 22, scope: !362)
!499 = !DILocation(line: 626, column: 26, scope: !362)
!500 = !DILocation(line: 626, column: 24, scope: !362)
!501 = !DILocation(line: 626, column: 32, scope: !362)
!502 = !DILocation(line: 626, column: 30, scope: !362)
!503 = !DILocation(line: 626, column: 20, scope: !362)
!504 = !DILocation(line: 626, column: 3, scope: !362)
!505 = !DILocation(line: 626, column: 8, scope: !362)
!506 = !DILocation(line: 626, column: 13, scope: !362)
!507 = !DILocation(line: 627, column: 19, scope: !362)
!508 = !DILocation(line: 627, column: 24, scope: !362)
!509 = !DILocation(line: 627, column: 14, scope: !362)
!510 = !DILocation(line: 627, column: 64, scope: !362)
!511 = !DILocation(line: 627, column: 77, scope: !362)
!512 = !DILocation(line: 627, column: 67, scope: !362)
!513 = !DILocation(line: 627, column: 50, scope: !492)
!514 = !DILocation(line: 627, column: 48, scope: !362)
!515 = !DILocation(line: 627, column: 29, scope: !362)
!516 = !DILocation(line: 627, column: 3, scope: !362)
!517 = !DILocation(line: 627, column: 8, scope: !362)
!518 = !DILocation(line: 627, column: 12, scope: !362)
!519 = !DILocation(line: 629, column: 3, scope: !362)
!520 = !DILocation(line: 630, column: 1, scope: !362)
!521 = distinct !DISubprogram(name: "cheb_eval_mode_e", scope: !522, file: !522, line: 2, type: !523, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !137)
!522 = !DIFile(filename: "./cheb_eval_mode.c", directory: "/fpcc/gsl-2.5/specfunc")
!523 = !DISubroutineType(types: !524)
!524 = !{!51, !525, !126, !127, !130}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!527 = !DILocalVariable(name: "cs", arg: 1, scope: !521, file: !522, line: 2, type: !525)
!528 = !DILocation(line: 2, column: 38, scope: !521)
!529 = !DILocalVariable(name: "x", arg: 2, scope: !521, file: !522, line: 3, type: !126)
!530 = !DILocation(line: 3, column: 31, scope: !521)
!531 = !DILocalVariable(name: "mode", arg: 3, scope: !521, file: !522, line: 4, type: !127)
!532 = !DILocation(line: 4, column: 29, scope: !521)
!533 = !DILocalVariable(name: "result", arg: 4, scope: !521, file: !522, line: 5, type: !130)
!534 = !DILocation(line: 5, column: 34, scope: !521)
!535 = !DILocalVariable(name: "j", scope: !521, file: !522, line: 7, type: !51)
!536 = !DILocation(line: 7, column: 7, scope: !521)
!537 = !DILocalVariable(name: "d", scope: !521, file: !522, line: 8, type: !49)
!538 = !DILocation(line: 8, column: 10, scope: !521)
!539 = !DILocalVariable(name: "dd", scope: !521, file: !522, line: 9, type: !49)
!540 = !DILocation(line: 9, column: 10, scope: !521)
!541 = !DILocalVariable(name: "y", scope: !521, file: !522, line: 11, type: !49)
!542 = !DILocation(line: 11, column: 10, scope: !521)
!543 = !DILocation(line: 11, column: 19, scope: !521)
!544 = !DILocation(line: 11, column: 18, scope: !521)
!545 = !DILocation(line: 11, column: 23, scope: !521)
!546 = !DILocation(line: 11, column: 27, scope: !521)
!547 = !DILocation(line: 11, column: 21, scope: !521)
!548 = !DILocation(line: 11, column: 31, scope: !521)
!549 = !DILocation(line: 11, column: 35, scope: !521)
!550 = !DILocation(line: 11, column: 29, scope: !521)
!551 = !DILocation(line: 11, column: 41, scope: !521)
!552 = !DILocation(line: 11, column: 45, scope: !521)
!553 = !DILocation(line: 11, column: 49, scope: !521)
!554 = !DILocation(line: 11, column: 53, scope: !521)
!555 = !DILocation(line: 11, column: 47, scope: !521)
!556 = !DILocation(line: 11, column: 38, scope: !521)
!557 = !DILocalVariable(name: "y2", scope: !521, file: !522, line: 12, type: !49)
!558 = !DILocation(line: 12, column: 10, scope: !521)
!559 = !DILocation(line: 12, column: 21, scope: !521)
!560 = !DILocation(line: 12, column: 19, scope: !521)
!561 = !DILocalVariable(name: "eval_order", scope: !521, file: !522, line: 14, type: !51)
!562 = !DILocation(line: 14, column: 7, scope: !521)
!563 = !DILocation(line: 16, column: 20, scope: !564)
!564 = distinct !DILexicalBlock(scope: !521, file: !522, line: 16, column: 6)
!565 = !DILocation(line: 16, column: 6, scope: !564)
!566 = !DILocation(line: 16, column: 26, scope: !564)
!567 = !DILocation(line: 16, column: 6, scope: !521)
!568 = !DILocation(line: 17, column: 18, scope: !564)
!569 = !DILocation(line: 17, column: 22, scope: !564)
!570 = !DILocation(line: 17, column: 16, scope: !564)
!571 = !DILocation(line: 17, column: 5, scope: !564)
!572 = !DILocation(line: 19, column: 18, scope: !564)
!573 = !DILocation(line: 19, column: 22, scope: !564)
!574 = !DILocation(line: 19, column: 16, scope: !564)
!575 = !DILocation(line: 21, column: 11, scope: !576)
!576 = distinct !DILexicalBlock(scope: !521, file: !522, line: 21, column: 3)
!577 = !DILocation(line: 21, column: 9, scope: !576)
!578 = !DILocation(line: 21, column: 7, scope: !576)
!579 = !DILocation(line: 21, column: 23, scope: !580)
!580 = !DILexicalBlockFile(scope: !581, file: !522, discriminator: 1)
!581 = distinct !DILexicalBlock(scope: !576, file: !522, line: 21, column: 3)
!582 = !DILocation(line: 21, column: 24, scope: !580)
!583 = !DILocation(line: 21, column: 3, scope: !580)
!584 = !DILocalVariable(name: "temp", scope: !585, file: !522, line: 22, type: !49)
!585 = distinct !DILexicalBlock(scope: !581, file: !522, line: 21, column: 34)
!586 = !DILocation(line: 22, column: 12, scope: !585)
!587 = !DILocation(line: 22, column: 19, scope: !585)
!588 = !DILocation(line: 23, column: 9, scope: !585)
!589 = !DILocation(line: 23, column: 12, scope: !585)
!590 = !DILocation(line: 23, column: 11, scope: !585)
!591 = !DILocation(line: 23, column: 16, scope: !585)
!592 = !DILocation(line: 23, column: 14, scope: !585)
!593 = !DILocation(line: 23, column: 27, scope: !585)
!594 = !DILocation(line: 23, column: 21, scope: !585)
!595 = !DILocation(line: 23, column: 25, scope: !585)
!596 = !DILocation(line: 23, column: 19, scope: !585)
!597 = !DILocation(line: 23, column: 7, scope: !585)
!598 = !DILocation(line: 24, column: 10, scope: !585)
!599 = !DILocation(line: 24, column: 8, scope: !585)
!600 = !DILocation(line: 25, column: 3, scope: !585)
!601 = !DILocation(line: 21, column: 30, scope: !602)
!602 = !DILexicalBlockFile(scope: !581, file: !522, discriminator: 2)
!603 = !DILocation(line: 21, column: 3, scope: !602)
!604 = distinct !{!604, !605}
!605 = !DILocation(line: 21, column: 3, scope: !521)
!606 = !DILocation(line: 27, column: 17, scope: !521)
!607 = !DILocation(line: 27, column: 19, scope: !521)
!608 = !DILocation(line: 27, column: 18, scope: !521)
!609 = !DILocation(line: 27, column: 23, scope: !521)
!610 = !DILocation(line: 27, column: 21, scope: !521)
!611 = !DILocation(line: 27, column: 34, scope: !521)
!612 = !DILocation(line: 27, column: 38, scope: !521)
!613 = !DILocation(line: 27, column: 32, scope: !521)
!614 = !DILocation(line: 27, column: 26, scope: !521)
!615 = !DILocation(line: 27, column: 3, scope: !521)
!616 = !DILocation(line: 27, column: 11, scope: !521)
!617 = !DILocation(line: 27, column: 15, scope: !521)
!618 = !DILocation(line: 28, column: 40, scope: !521)
!619 = !DILocation(line: 28, column: 48, scope: !521)
!620 = !DILocation(line: 28, column: 35, scope: !521)
!621 = !DILocation(line: 28, column: 33, scope: !521)
!622 = !DILocation(line: 28, column: 66, scope: !521)
!623 = !DILocation(line: 28, column: 60, scope: !521)
!624 = !DILocation(line: 28, column: 64, scope: !521)
!625 = !DILocation(line: 28, column: 55, scope: !626)
!626 = !DILexicalBlockFile(scope: !521, file: !522, discriminator: 1)
!627 = !DILocation(line: 28, column: 53, scope: !521)
!628 = !DILocation(line: 28, column: 3, scope: !521)
!629 = !DILocation(line: 28, column: 11, scope: !521)
!630 = !DILocation(line: 28, column: 15, scope: !521)
!631 = !DILocation(line: 29, column: 3, scope: !521)
!632 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_deriv_e", scope: !1, file: !1, line: 697, type: !124, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !137)
!633 = !DILocalVariable(name: "x", arg: 1, scope: !632, file: !1, line: 697, type: !126)
!634 = !DILocation(line: 697, column: 37, scope: !632)
!635 = !DILocalVariable(name: "mode", arg: 2, scope: !632, file: !1, line: 697, type: !127)
!636 = !DILocation(line: 697, column: 51, scope: !632)
!637 = !DILocalVariable(name: "result", arg: 3, scope: !632, file: !1, line: 697, type: !130)
!638 = !DILocation(line: 697, column: 73, scope: !632)
!639 = !DILocation(line: 701, column: 6, scope: !640)
!640 = distinct !DILexicalBlock(scope: !632, file: !1, line: 701, column: 6)
!641 = !DILocation(line: 701, column: 8, scope: !640)
!642 = !DILocation(line: 701, column: 6, scope: !632)
!643 = !DILocalVariable(name: "a", scope: !644, file: !1, line: 702, type: !131)
!644 = distinct !DILexicalBlock(scope: !640, file: !1, line: 701, column: 16)
!645 = !DILocation(line: 702, column: 19, scope: !644)
!646 = !DILocalVariable(name: "p", scope: !644, file: !1, line: 703, type: !131)
!647 = !DILocation(line: 703, column: 19, scope: !644)
!648 = !DILocalVariable(name: "status_ap", scope: !644, file: !1, line: 704, type: !51)
!649 = !DILocation(line: 704, column: 9, scope: !644)
!650 = !DILocation(line: 704, column: 42, scope: !644)
!651 = !DILocation(line: 704, column: 45, scope: !644)
!652 = !DILocation(line: 704, column: 21, scope: !644)
!653 = !DILocalVariable(name: "c", scope: !644, file: !1, line: 705, type: !49)
!654 = !DILocation(line: 705, column: 12, scope: !644)
!655 = !DILocation(line: 705, column: 25, scope: !644)
!656 = !DILocation(line: 705, column: 19, scope: !644)
!657 = !DILocation(line: 706, column: 22, scope: !644)
!658 = !DILocation(line: 706, column: 28, scope: !644)
!659 = !DILocation(line: 706, column: 26, scope: !644)
!660 = !DILocation(line: 706, column: 5, scope: !644)
!661 = !DILocation(line: 706, column: 13, scope: !644)
!662 = !DILocation(line: 706, column: 18, scope: !644)
!663 = !DILocation(line: 707, column: 25, scope: !644)
!664 = !DILocation(line: 707, column: 33, scope: !644)
!665 = !DILocation(line: 707, column: 41, scope: !644)
!666 = !DILocation(line: 707, column: 37, scope: !644)
!667 = !DILocation(line: 707, column: 20, scope: !644)
!668 = !DILocation(line: 707, column: 53, scope: !644)
!669 = !DILocation(line: 707, column: 59, scope: !644)
!670 = !DILocation(line: 707, column: 55, scope: !644)
!671 = !DILocation(line: 707, column: 48, scope: !672)
!672 = !DILexicalBlockFile(scope: !644, file: !1, discriminator: 1)
!673 = !DILocation(line: 707, column: 46, scope: !644)
!674 = !DILocation(line: 707, column: 5, scope: !644)
!675 = !DILocation(line: 707, column: 13, scope: !644)
!676 = !DILocation(line: 707, column: 18, scope: !644)
!677 = !DILocation(line: 708, column: 43, scope: !644)
!678 = !DILocation(line: 708, column: 51, scope: !644)
!679 = !DILocation(line: 708, column: 38, scope: !644)
!680 = !DILocation(line: 708, column: 36, scope: !644)
!681 = !DILocation(line: 708, column: 5, scope: !644)
!682 = !DILocation(line: 708, column: 13, scope: !644)
!683 = !DILocation(line: 708, column: 17, scope: !644)
!684 = !DILocation(line: 709, column: 12, scope: !644)
!685 = !DILocation(line: 709, column: 5, scope: !644)
!686 = !DILocation(line: 711, column: 11, scope: !687)
!687 = distinct !DILexicalBlock(scope: !640, file: !1, line: 711, column: 11)
!688 = !DILocation(line: 711, column: 13, scope: !687)
!689 = !DILocation(line: 711, column: 11, scope: !640)
!690 = !DILocalVariable(name: "x3", scope: !691, file: !1, line: 712, type: !126)
!691 = distinct !DILexicalBlock(scope: !687, file: !1, line: 711, column: 20)
!692 = !DILocation(line: 712, column: 18, scope: !691)
!693 = !DILocation(line: 712, column: 23, scope: !691)
!694 = !DILocation(line: 712, column: 25, scope: !691)
!695 = !DILocation(line: 712, column: 24, scope: !691)
!696 = !DILocation(line: 712, column: 27, scope: !691)
!697 = !DILocation(line: 712, column: 26, scope: !691)
!698 = !DILocalVariable(name: "result_c1", scope: !691, file: !1, line: 713, type: !131)
!699 = !DILocation(line: 713, column: 19, scope: !691)
!700 = !DILocalVariable(name: "result_c2", scope: !691, file: !1, line: 714, type: !131)
!701 = !DILocation(line: 714, column: 19, scope: !691)
!702 = !DILocation(line: 715, column: 31, scope: !691)
!703 = !DILocation(line: 715, column: 35, scope: !691)
!704 = !DILocation(line: 715, column: 5, scope: !691)
!705 = !DILocation(line: 716, column: 31, scope: !691)
!706 = !DILocation(line: 716, column: 35, scope: !691)
!707 = !DILocation(line: 716, column: 5, scope: !691)
!708 = !DILocation(line: 717, column: 21, scope: !691)
!709 = !DILocation(line: 717, column: 23, scope: !691)
!710 = !DILocation(line: 717, column: 22, scope: !691)
!711 = !DILocation(line: 717, column: 44, scope: !691)
!712 = !DILocation(line: 717, column: 32, scope: !691)
!713 = !DILocation(line: 717, column: 24, scope: !691)
!714 = !DILocation(line: 717, column: 61, scope: !691)
!715 = !DILocation(line: 717, column: 49, scope: !691)
!716 = !DILocation(line: 717, column: 66, scope: !691)
!717 = !DILocation(line: 717, column: 5, scope: !691)
!718 = !DILocation(line: 717, column: 13, scope: !691)
!719 = !DILocation(line: 717, column: 18, scope: !691)
!720 = !DILocation(line: 718, column: 25, scope: !691)
!721 = !DILocation(line: 718, column: 27, scope: !691)
!722 = !DILocation(line: 718, column: 26, scope: !691)
!723 = !DILocation(line: 718, column: 39, scope: !691)
!724 = !DILocation(line: 718, column: 28, scope: !691)
!725 = !DILocation(line: 718, column: 20, scope: !691)
!726 = !DILocation(line: 718, column: 56, scope: !691)
!727 = !DILocation(line: 718, column: 44, scope: !691)
!728 = !DILocation(line: 718, column: 5, scope: !691)
!729 = !DILocation(line: 718, column: 13, scope: !691)
!730 = !DILocation(line: 718, column: 18, scope: !691)
!731 = !DILocation(line: 719, column: 43, scope: !691)
!732 = !DILocation(line: 719, column: 51, scope: !691)
!733 = !DILocation(line: 719, column: 38, scope: !691)
!734 = !DILocation(line: 719, column: 36, scope: !691)
!735 = !DILocation(line: 719, column: 5, scope: !691)
!736 = !DILocation(line: 719, column: 13, scope: !691)
!737 = !DILocation(line: 719, column: 17, scope: !691)
!738 = !DILocation(line: 720, column: 5, scope: !691)
!739 = !DILocation(line: 722, column: 11, scope: !740)
!740 = distinct !DILexicalBlock(scope: !687, file: !1, line: 722, column: 11)
!741 = !DILocation(line: 722, column: 13, scope: !740)
!742 = !DILocation(line: 722, column: 12, scope: !740)
!743 = !DILocation(line: 722, column: 15, scope: !740)
!744 = !DILocation(line: 722, column: 14, scope: !740)
!745 = !DILocation(line: 722, column: 17, scope: !740)
!746 = !DILocation(line: 722, column: 11, scope: !687)
!747 = !DILocalVariable(name: "result_aps", scope: !748, file: !1, line: 723, type: !131)
!748 = distinct !DILexicalBlock(scope: !740, file: !1, line: 722, column: 62)
!749 = !DILocation(line: 723, column: 19, scope: !748)
!750 = !DILocalVariable(name: "arg", scope: !748, file: !1, line: 724, type: !126)
!751 = !DILocation(line: 724, column: 18, scope: !748)
!752 = !DILocation(line: 724, column: 29, scope: !748)
!753 = !DILocation(line: 724, column: 28, scope: !748)
!754 = !DILocation(line: 724, column: 36, scope: !748)
!755 = !DILocation(line: 724, column: 31, scope: !748)
!756 = !DILocation(line: 724, column: 30, scope: !748)
!757 = !DILocation(line: 724, column: 38, scope: !748)
!758 = !DILocalVariable(name: "stat_a", scope: !748, file: !1, line: 725, type: !759)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!760 = !DILocation(line: 725, column: 15, scope: !748)
!761 = !DILocation(line: 725, column: 54, scope: !748)
!762 = !DILocation(line: 725, column: 57, scope: !748)
!763 = !DILocation(line: 725, column: 24, scope: !748)
!764 = !DILocalVariable(name: "stat_e", scope: !748, file: !1, line: 726, type: !759)
!765 = !DILocation(line: 726, column: 15, scope: !748)
!766 = !DILocation(line: 726, column: 46, scope: !748)
!767 = !DILocation(line: 726, column: 60, scope: !748)
!768 = !DILocation(line: 726, column: 63, scope: !748)
!769 = !DILocation(line: 726, column: 55, scope: !748)
!770 = !DILocation(line: 726, column: 54, scope: !748)
!771 = !DILocation(line: 727, column: 60, scope: !748)
!772 = !DILocation(line: 727, column: 76, scope: !748)
!773 = !DILocation(line: 728, column: 49, scope: !748)
!774 = !DILocation(line: 726, column: 24, scope: !775)
!775 = !DILexicalBlockFile(scope: !748, file: !1, discriminator: 1)
!776 = !DILocation(line: 729, column: 12, scope: !748)
!777 = !DILocation(line: 729, column: 12, scope: !775)
!778 = !DILocation(line: 729, column: 12, scope: !779)
!779 = !DILexicalBlockFile(scope: !748, file: !1, discriminator: 2)
!780 = !DILocation(line: 729, column: 12, scope: !781)
!781 = !DILexicalBlockFile(scope: !748, file: !1, discriminator: 3)
!782 = !DILocation(line: 729, column: 12, scope: !783)
!783 = !DILexicalBlockFile(scope: !748, file: !1, discriminator: 4)
!784 = !DILocation(line: 729, column: 12, scope: !785)
!785 = !DILexicalBlockFile(scope: !748, file: !1, discriminator: 5)
!786 = !DILocation(line: 729, column: 12, scope: !787)
!787 = !DILexicalBlockFile(scope: !748, file: !1, discriminator: 6)
!788 = !DILocation(line: 729, column: 5, scope: !787)
!789 = !DILocation(line: 732, column: 5, scope: !790)
!790 = distinct !DILexicalBlock(scope: !740, file: !1, line: 731, column: 8)
!791 = distinct !{!791, !789}
!792 = !DILocation(line: 732, column: 5, scope: !793)
!793 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 1)
!794 = distinct !DILexicalBlock(scope: !790, file: !1, line: 732, column: 5)
!795 = distinct !{!795, !796}
!796 = !DILocation(line: 732, column: 5, scope: !794)
!797 = !DILocation(line: 732, column: 5, scope: !798)
!798 = !DILexicalBlockFile(scope: !799, file: !1, discriminator: 2)
!799 = distinct !DILexicalBlock(scope: !794, file: !1, line: 732, column: 5)
!800 = !DILocation(line: 732, column: 5, scope: !801)
!801 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 3)
!802 = !DILocation(line: 734, column: 1, scope: !632)
!803 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_deriv_scaled_e", scope: !1, file: !1, line: 738, type: !124, isLocal: false, isDefinition: true, scopeLine: 739, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !137)
!804 = !DILocalVariable(name: "x", arg: 1, scope: !803, file: !1, line: 738, type: !126)
!805 = !DILocation(line: 738, column: 44, scope: !803)
!806 = !DILocalVariable(name: "mode", arg: 2, scope: !803, file: !1, line: 738, type: !127)
!807 = !DILocation(line: 738, column: 58, scope: !803)
!808 = !DILocalVariable(name: "result", arg: 3, scope: !803, file: !1, line: 738, type: !130)
!809 = !DILocation(line: 738, column: 80, scope: !803)
!810 = !DILocalVariable(name: "atr", scope: !803, file: !1, line: 740, type: !126)
!811 = !DILocation(line: 740, column: 16, scope: !803)
!812 = !DILocalVariable(name: "btr", scope: !803, file: !1, line: 741, type: !126)
!813 = !DILocation(line: 741, column: 16, scope: !803)
!814 = !DILocation(line: 745, column: 6, scope: !815)
!815 = distinct !DILexicalBlock(scope: !803, file: !1, line: 745, column: 6)
!816 = !DILocation(line: 745, column: 8, scope: !815)
!817 = !DILocation(line: 745, column: 6, scope: !803)
!818 = !DILocalVariable(name: "a", scope: !819, file: !1, line: 746, type: !131)
!819 = distinct !DILexicalBlock(scope: !815, file: !1, line: 745, column: 16)
!820 = !DILocation(line: 746, column: 19, scope: !819)
!821 = !DILocalVariable(name: "p", scope: !819, file: !1, line: 747, type: !131)
!822 = !DILocation(line: 747, column: 19, scope: !819)
!823 = !DILocalVariable(name: "status_ap", scope: !819, file: !1, line: 748, type: !51)
!824 = !DILocation(line: 748, column: 9, scope: !819)
!825 = !DILocation(line: 748, column: 42, scope: !819)
!826 = !DILocation(line: 748, column: 45, scope: !819)
!827 = !DILocation(line: 748, column: 21, scope: !819)
!828 = !DILocalVariable(name: "s", scope: !819, file: !1, line: 749, type: !49)
!829 = !DILocation(line: 749, column: 12, scope: !819)
!830 = !DILocation(line: 749, column: 26, scope: !819)
!831 = !DILocation(line: 749, column: 20, scope: !819)
!832 = !DILocation(line: 750, column: 22, scope: !819)
!833 = !DILocation(line: 750, column: 28, scope: !819)
!834 = !DILocation(line: 750, column: 26, scope: !819)
!835 = !DILocation(line: 750, column: 5, scope: !819)
!836 = !DILocation(line: 750, column: 13, scope: !819)
!837 = !DILocation(line: 750, column: 18, scope: !819)
!838 = !DILocation(line: 751, column: 25, scope: !819)
!839 = !DILocation(line: 751, column: 33, scope: !819)
!840 = !DILocation(line: 751, column: 41, scope: !819)
!841 = !DILocation(line: 751, column: 37, scope: !819)
!842 = !DILocation(line: 751, column: 20, scope: !819)
!843 = !DILocation(line: 751, column: 53, scope: !819)
!844 = !DILocation(line: 751, column: 59, scope: !819)
!845 = !DILocation(line: 751, column: 55, scope: !819)
!846 = !DILocation(line: 751, column: 48, scope: !847)
!847 = !DILexicalBlockFile(scope: !819, file: !1, discriminator: 1)
!848 = !DILocation(line: 751, column: 46, scope: !819)
!849 = !DILocation(line: 751, column: 5, scope: !819)
!850 = !DILocation(line: 751, column: 13, scope: !819)
!851 = !DILocation(line: 751, column: 18, scope: !819)
!852 = !DILocation(line: 752, column: 43, scope: !819)
!853 = !DILocation(line: 752, column: 51, scope: !819)
!854 = !DILocation(line: 752, column: 38, scope: !819)
!855 = !DILocation(line: 752, column: 36, scope: !819)
!856 = !DILocation(line: 752, column: 5, scope: !819)
!857 = !DILocation(line: 752, column: 13, scope: !819)
!858 = !DILocation(line: 752, column: 17, scope: !819)
!859 = !DILocation(line: 753, column: 12, scope: !819)
!860 = !DILocation(line: 753, column: 5, scope: !819)
!861 = !DILocation(line: 755, column: 11, scope: !862)
!862 = distinct !DILexicalBlock(scope: !815, file: !1, line: 755, column: 11)
!863 = !DILocation(line: 755, column: 13, scope: !862)
!864 = !DILocation(line: 755, column: 11, scope: !815)
!865 = !DILocalVariable(name: "x3", scope: !866, file: !1, line: 756, type: !126)
!866 = distinct !DILexicalBlock(scope: !862, file: !1, line: 755, column: 20)
!867 = !DILocation(line: 756, column: 18, scope: !866)
!868 = !DILocation(line: 756, column: 23, scope: !866)
!869 = !DILocation(line: 756, column: 25, scope: !866)
!870 = !DILocation(line: 756, column: 24, scope: !866)
!871 = !DILocation(line: 756, column: 27, scope: !866)
!872 = !DILocation(line: 756, column: 26, scope: !866)
!873 = !DILocalVariable(name: "x2", scope: !866, file: !1, line: 757, type: !126)
!874 = !DILocation(line: 757, column: 18, scope: !866)
!875 = !DILocation(line: 757, column: 23, scope: !866)
!876 = !DILocation(line: 757, column: 25, scope: !866)
!877 = !DILocation(line: 757, column: 24, scope: !866)
!878 = !DILocalVariable(name: "result_c1", scope: !866, file: !1, line: 758, type: !131)
!879 = !DILocation(line: 758, column: 19, scope: !866)
!880 = !DILocalVariable(name: "result_c2", scope: !866, file: !1, line: 759, type: !131)
!881 = !DILocation(line: 759, column: 19, scope: !866)
!882 = !DILocation(line: 760, column: 31, scope: !866)
!883 = !DILocation(line: 760, column: 35, scope: !866)
!884 = !DILocation(line: 760, column: 5, scope: !866)
!885 = !DILocation(line: 761, column: 31, scope: !866)
!886 = !DILocation(line: 761, column: 35, scope: !866)
!887 = !DILocation(line: 761, column: 5, scope: !866)
!888 = !DILocation(line: 762, column: 20, scope: !866)
!889 = !DILocation(line: 762, column: 36, scope: !866)
!890 = !DILocation(line: 762, column: 40, scope: !866)
!891 = !DILocation(line: 762, column: 23, scope: !866)
!892 = !DILocation(line: 762, column: 60, scope: !866)
!893 = !DILocation(line: 762, column: 48, scope: !866)
!894 = !DILocation(line: 762, column: 64, scope: !866)
!895 = !DILocation(line: 762, column: 5, scope: !866)
!896 = !DILocation(line: 762, column: 13, scope: !866)
!897 = !DILocation(line: 762, column: 18, scope: !866)
!898 = !DILocation(line: 763, column: 20, scope: !866)
!899 = !DILocation(line: 763, column: 35, scope: !866)
!900 = !DILocation(line: 763, column: 23, scope: !866)
!901 = !DILocation(line: 763, column: 51, scope: !866)
!902 = !DILocation(line: 763, column: 39, scope: !866)
!903 = !DILocation(line: 763, column: 5, scope: !866)
!904 = !DILocation(line: 763, column: 13, scope: !866)
!905 = !DILocation(line: 763, column: 18, scope: !866)
!906 = !DILocation(line: 764, column: 43, scope: !866)
!907 = !DILocation(line: 764, column: 51, scope: !866)
!908 = !DILocation(line: 764, column: 38, scope: !866)
!909 = !DILocation(line: 764, column: 36, scope: !866)
!910 = !DILocation(line: 764, column: 5, scope: !866)
!911 = !DILocation(line: 764, column: 13, scope: !866)
!912 = !DILocation(line: 764, column: 17, scope: !866)
!913 = !DILocation(line: 766, column: 8, scope: !914)
!914 = distinct !DILexicalBlock(scope: !866, file: !1, line: 766, column: 8)
!915 = !DILocation(line: 766, column: 10, scope: !914)
!916 = !DILocation(line: 766, column: 8, scope: !866)
!917 = !DILocalVariable(name: "s", scope: !918, file: !1, line: 768, type: !126)
!918 = distinct !DILexicalBlock(scope: !914, file: !1, line: 766, column: 57)
!919 = !DILocation(line: 768, column: 20, scope: !918)
!920 = !DILocation(line: 768, column: 33, scope: !918)
!921 = !DILocation(line: 768, column: 32, scope: !918)
!922 = !DILocation(line: 768, column: 40, scope: !918)
!923 = !DILocation(line: 768, column: 35, scope: !918)
!924 = !DILocation(line: 768, column: 34, scope: !918)
!925 = !DILocation(line: 768, column: 42, scope: !918)
!926 = !DILocation(line: 768, column: 24, scope: !927)
!927 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 1)
!928 = !DILocation(line: 769, column: 22, scope: !918)
!929 = !DILocation(line: 769, column: 7, scope: !918)
!930 = !DILocation(line: 769, column: 15, scope: !918)
!931 = !DILocation(line: 769, column: 19, scope: !918)
!932 = !DILocation(line: 770, column: 22, scope: !918)
!933 = !DILocation(line: 770, column: 7, scope: !918)
!934 = !DILocation(line: 770, column: 15, scope: !918)
!935 = !DILocation(line: 770, column: 19, scope: !918)
!936 = !DILocation(line: 771, column: 5, scope: !918)
!937 = !DILocation(line: 773, column: 5, scope: !866)
!938 = !DILocation(line: 775, column: 11, scope: !939)
!939 = distinct !DILexicalBlock(scope: !862, file: !1, line: 775, column: 11)
!940 = !DILocation(line: 775, column: 13, scope: !939)
!941 = !DILocation(line: 775, column: 11, scope: !862)
!942 = !DILocalVariable(name: "z", scope: !943, file: !1, line: 776, type: !126)
!943 = distinct !DILexicalBlock(scope: !939, file: !1, line: 775, column: 20)
!944 = !DILocation(line: 776, column: 18, scope: !943)
!945 = !DILocation(line: 776, column: 27, scope: !943)
!946 = !DILocation(line: 776, column: 26, scope: !943)
!947 = !DILocation(line: 776, column: 29, scope: !943)
!948 = !DILocation(line: 776, column: 28, scope: !943)
!949 = !DILocation(line: 776, column: 31, scope: !943)
!950 = !DILocation(line: 776, column: 30, scope: !943)
!951 = !DILocation(line: 776, column: 33, scope: !943)
!952 = !DILocation(line: 776, column: 40, scope: !943)
!953 = !DILocalVariable(name: "s", scope: !943, file: !1, line: 777, type: !126)
!954 = !DILocation(line: 777, column: 18, scope: !943)
!955 = !DILocation(line: 777, column: 31, scope: !943)
!956 = !DILocation(line: 777, column: 30, scope: !943)
!957 = !DILocation(line: 777, column: 38, scope: !943)
!958 = !DILocation(line: 777, column: 33, scope: !943)
!959 = !DILocation(line: 777, column: 32, scope: !943)
!960 = !DILocation(line: 777, column: 40, scope: !943)
!961 = !DILocation(line: 777, column: 22, scope: !962)
!962 = !DILexicalBlockFile(scope: !943, file: !1, discriminator: 1)
!963 = !DILocalVariable(name: "result_c0", scope: !943, file: !1, line: 778, type: !131)
!964 = !DILocation(line: 778, column: 19, scope: !943)
!965 = !DILocalVariable(name: "result_c1", scope: !943, file: !1, line: 779, type: !131)
!966 = !DILocation(line: 779, column: 19, scope: !943)
!967 = !DILocation(line: 780, column: 32, scope: !943)
!968 = !DILocation(line: 780, column: 35, scope: !943)
!969 = !DILocation(line: 780, column: 5, scope: !943)
!970 = !DILocation(line: 781, column: 32, scope: !943)
!971 = !DILocation(line: 781, column: 35, scope: !943)
!972 = !DILocation(line: 781, column: 5, scope: !943)
!973 = !DILocation(line: 782, column: 20, scope: !943)
!974 = !DILocation(line: 782, column: 25, scope: !943)
!975 = !DILocation(line: 782, column: 27, scope: !943)
!976 = !DILocation(line: 782, column: 26, scope: !943)
!977 = !DILocation(line: 782, column: 49, scope: !943)
!978 = !DILocation(line: 782, column: 37, scope: !943)
!979 = !DILocation(line: 782, column: 29, scope: !943)
!980 = !DILocation(line: 782, column: 54, scope: !943)
!981 = !DILocation(line: 782, column: 72, scope: !943)
!982 = !DILocation(line: 782, column: 60, scope: !943)
!983 = !DILocation(line: 782, column: 22, scope: !943)
!984 = !DILocation(line: 782, column: 5, scope: !943)
!985 = !DILocation(line: 782, column: 13, scope: !943)
!986 = !DILocation(line: 782, column: 18, scope: !943)
!987 = !DILocation(line: 783, column: 20, scope: !943)
!988 = !DILocation(line: 783, column: 25, scope: !943)
!989 = !DILocation(line: 783, column: 27, scope: !943)
!990 = !DILocation(line: 783, column: 26, scope: !943)
!991 = !DILocation(line: 783, column: 41, scope: !943)
!992 = !DILocation(line: 783, column: 29, scope: !943)
!993 = !DILocation(line: 783, column: 57, scope: !943)
!994 = !DILocation(line: 783, column: 45, scope: !943)
!995 = !DILocation(line: 783, column: 22, scope: !943)
!996 = !DILocation(line: 783, column: 5, scope: !943)
!997 = !DILocation(line: 783, column: 13, scope: !943)
!998 = !DILocation(line: 783, column: 18, scope: !943)
!999 = !DILocation(line: 784, column: 43, scope: !943)
!1000 = !DILocation(line: 784, column: 51, scope: !943)
!1001 = !DILocation(line: 784, column: 38, scope: !943)
!1002 = !DILocation(line: 784, column: 36, scope: !943)
!1003 = !DILocation(line: 784, column: 5, scope: !943)
!1004 = !DILocation(line: 784, column: 13, scope: !943)
!1005 = !DILocation(line: 784, column: 17, scope: !943)
!1006 = !DILocation(line: 785, column: 5, scope: !943)
!1007 = !DILocation(line: 787, column: 11, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !939, file: !1, line: 787, column: 11)
!1009 = !DILocation(line: 787, column: 13, scope: !1008)
!1010 = !DILocation(line: 787, column: 11, scope: !939)
!1011 = !DILocalVariable(name: "sqrtx", scope: !1012, file: !1, line: 788, type: !126)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 787, column: 20)
!1013 = !DILocation(line: 788, column: 18, scope: !1012)
!1014 = !DILocation(line: 788, column: 31, scope: !1012)
!1015 = !DILocation(line: 788, column: 26, scope: !1012)
!1016 = !DILocalVariable(name: "z", scope: !1012, file: !1, line: 789, type: !126)
!1017 = !DILocation(line: 789, column: 18, scope: !1012)
!1018 = !DILocation(line: 789, column: 27, scope: !1012)
!1019 = !DILocation(line: 789, column: 29, scope: !1012)
!1020 = !DILocation(line: 789, column: 28, scope: !1012)
!1021 = !DILocation(line: 789, column: 25, scope: !1012)
!1022 = !DILocation(line: 789, column: 36, scope: !1012)
!1023 = !DILocalVariable(name: "s", scope: !1012, file: !1, line: 790, type: !126)
!1024 = !DILocation(line: 790, column: 18, scope: !1012)
!1025 = !DILocation(line: 790, column: 27, scope: !1012)
!1026 = !DILocation(line: 790, column: 22, scope: !1012)
!1027 = !DILocalVariable(name: "result_c0", scope: !1012, file: !1, line: 791, type: !131)
!1028 = !DILocation(line: 791, column: 19, scope: !1012)
!1029 = !DILocation(line: 792, column: 32, scope: !1012)
!1030 = !DILocation(line: 792, column: 35, scope: !1012)
!1031 = !DILocation(line: 792, column: 5, scope: !1012)
!1032 = !DILocation(line: 793, column: 20, scope: !1012)
!1033 = !DILocation(line: 793, column: 43, scope: !1012)
!1034 = !DILocation(line: 793, column: 31, scope: !1012)
!1035 = !DILocation(line: 793, column: 22, scope: !1012)
!1036 = !DILocation(line: 793, column: 5, scope: !1012)
!1037 = !DILocation(line: 793, column: 13, scope: !1012)
!1038 = !DILocation(line: 793, column: 18, scope: !1012)
!1039 = !DILocation(line: 794, column: 20, scope: !1012)
!1040 = !DILocation(line: 794, column: 34, scope: !1012)
!1041 = !DILocation(line: 794, column: 22, scope: !1012)
!1042 = !DILocation(line: 794, column: 5, scope: !1012)
!1043 = !DILocation(line: 794, column: 13, scope: !1012)
!1044 = !DILocation(line: 794, column: 18, scope: !1012)
!1045 = !DILocation(line: 795, column: 43, scope: !1012)
!1046 = !DILocation(line: 795, column: 51, scope: !1012)
!1047 = !DILocation(line: 795, column: 38, scope: !1012)
!1048 = !DILocation(line: 795, column: 36, scope: !1012)
!1049 = !DILocation(line: 795, column: 5, scope: !1012)
!1050 = !DILocation(line: 795, column: 13, scope: !1012)
!1051 = !DILocation(line: 795, column: 17, scope: !1012)
!1052 = !DILocation(line: 796, column: 5, scope: !1012)
!1053 = !DILocalVariable(name: "sqrtx", scope: !1054, file: !1, line: 799, type: !126)
!1054 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 798, column: 8)
!1055 = !DILocation(line: 799, column: 18, scope: !1054)
!1056 = !DILocation(line: 799, column: 31, scope: !1054)
!1057 = !DILocation(line: 799, column: 26, scope: !1054)
!1058 = !DILocalVariable(name: "z", scope: !1054, file: !1, line: 800, type: !126)
!1059 = !DILocation(line: 800, column: 18, scope: !1054)
!1060 = !DILocation(line: 800, column: 28, scope: !1054)
!1061 = !DILocation(line: 800, column: 30, scope: !1054)
!1062 = !DILocation(line: 800, column: 29, scope: !1054)
!1063 = !DILocation(line: 800, column: 26, scope: !1054)
!1064 = !DILocation(line: 800, column: 37, scope: !1054)
!1065 = !DILocalVariable(name: "s", scope: !1054, file: !1, line: 801, type: !126)
!1066 = !DILocation(line: 801, column: 18, scope: !1054)
!1067 = !DILocation(line: 801, column: 27, scope: !1054)
!1068 = !DILocation(line: 801, column: 22, scope: !1054)
!1069 = !DILocalVariable(name: "result_c0", scope: !1054, file: !1, line: 802, type: !131)
!1070 = !DILocation(line: 802, column: 19, scope: !1054)
!1071 = !DILocation(line: 803, column: 32, scope: !1054)
!1072 = !DILocation(line: 803, column: 35, scope: !1054)
!1073 = !DILocation(line: 803, column: 5, scope: !1054)
!1074 = !DILocation(line: 804, column: 20, scope: !1054)
!1075 = !DILocation(line: 804, column: 43, scope: !1054)
!1076 = !DILocation(line: 804, column: 31, scope: !1054)
!1077 = !DILocation(line: 804, column: 22, scope: !1054)
!1078 = !DILocation(line: 804, column: 5, scope: !1054)
!1079 = !DILocation(line: 804, column: 13, scope: !1054)
!1080 = !DILocation(line: 804, column: 18, scope: !1054)
!1081 = !DILocation(line: 805, column: 20, scope: !1054)
!1082 = !DILocation(line: 805, column: 34, scope: !1054)
!1083 = !DILocation(line: 805, column: 22, scope: !1054)
!1084 = !DILocation(line: 805, column: 5, scope: !1054)
!1085 = !DILocation(line: 805, column: 13, scope: !1054)
!1086 = !DILocation(line: 805, column: 18, scope: !1054)
!1087 = !DILocation(line: 806, column: 43, scope: !1054)
!1088 = !DILocation(line: 806, column: 51, scope: !1054)
!1089 = !DILocation(line: 806, column: 38, scope: !1054)
!1090 = !DILocation(line: 806, column: 36, scope: !1054)
!1091 = !DILocation(line: 806, column: 5, scope: !1054)
!1092 = !DILocation(line: 806, column: 13, scope: !1054)
!1093 = !DILocation(line: 806, column: 17, scope: !1054)
!1094 = !DILocation(line: 807, column: 5, scope: !1054)
!1095 = !DILocation(line: 809, column: 1, scope: !803)
!1096 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_deriv_e", scope: !1, file: !1, line: 813, type: !124, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !137)
!1097 = !DILocalVariable(name: "x", arg: 1, scope: !1096, file: !1, line: 813, type: !126)
!1098 = !DILocation(line: 813, column: 37, scope: !1096)
!1099 = !DILocalVariable(name: "mode", arg: 2, scope: !1096, file: !1, line: 813, type: !127)
!1100 = !DILocation(line: 813, column: 51, scope: !1096)
!1101 = !DILocalVariable(name: "result", arg: 3, scope: !1096, file: !1, line: 813, type: !130)
!1102 = !DILocation(line: 813, column: 73, scope: !1096)
!1103 = !DILocation(line: 817, column: 6, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 817, column: 6)
!1105 = !DILocation(line: 817, column: 8, scope: !1104)
!1106 = !DILocation(line: 817, column: 6, scope: !1096)
!1107 = !DILocalVariable(name: "a", scope: !1108, file: !1, line: 818, type: !131)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 817, column: 16)
!1109 = !DILocation(line: 818, column: 19, scope: !1108)
!1110 = !DILocalVariable(name: "p", scope: !1108, file: !1, line: 819, type: !131)
!1111 = !DILocation(line: 819, column: 19, scope: !1108)
!1112 = !DILocalVariable(name: "status_ap", scope: !1108, file: !1, line: 820, type: !51)
!1113 = !DILocation(line: 820, column: 9, scope: !1108)
!1114 = !DILocation(line: 820, column: 42, scope: !1108)
!1115 = !DILocation(line: 820, column: 45, scope: !1108)
!1116 = !DILocation(line: 820, column: 21, scope: !1108)
!1117 = !DILocalVariable(name: "s", scope: !1108, file: !1, line: 821, type: !49)
!1118 = !DILocation(line: 821, column: 12, scope: !1108)
!1119 = !DILocation(line: 821, column: 25, scope: !1108)
!1120 = !DILocation(line: 821, column: 19, scope: !1108)
!1121 = !DILocation(line: 822, column: 22, scope: !1108)
!1122 = !DILocation(line: 822, column: 28, scope: !1108)
!1123 = !DILocation(line: 822, column: 26, scope: !1108)
!1124 = !DILocation(line: 822, column: 5, scope: !1108)
!1125 = !DILocation(line: 822, column: 13, scope: !1108)
!1126 = !DILocation(line: 822, column: 18, scope: !1108)
!1127 = !DILocation(line: 823, column: 25, scope: !1108)
!1128 = !DILocation(line: 823, column: 33, scope: !1108)
!1129 = !DILocation(line: 823, column: 41, scope: !1108)
!1130 = !DILocation(line: 823, column: 37, scope: !1108)
!1131 = !DILocation(line: 823, column: 20, scope: !1108)
!1132 = !DILocation(line: 823, column: 53, scope: !1108)
!1133 = !DILocation(line: 823, column: 59, scope: !1108)
!1134 = !DILocation(line: 823, column: 55, scope: !1108)
!1135 = !DILocation(line: 823, column: 48, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1108, file: !1, discriminator: 1)
!1137 = !DILocation(line: 823, column: 46, scope: !1108)
!1138 = !DILocation(line: 823, column: 5, scope: !1108)
!1139 = !DILocation(line: 823, column: 13, scope: !1108)
!1140 = !DILocation(line: 823, column: 18, scope: !1108)
!1141 = !DILocation(line: 824, column: 43, scope: !1108)
!1142 = !DILocation(line: 824, column: 51, scope: !1108)
!1143 = !DILocation(line: 824, column: 38, scope: !1108)
!1144 = !DILocation(line: 824, column: 36, scope: !1108)
!1145 = !DILocation(line: 824, column: 5, scope: !1108)
!1146 = !DILocation(line: 824, column: 13, scope: !1108)
!1147 = !DILocation(line: 824, column: 17, scope: !1108)
!1148 = !DILocation(line: 825, column: 12, scope: !1108)
!1149 = !DILocation(line: 825, column: 5, scope: !1108)
!1150 = !DILocation(line: 827, column: 11, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 827, column: 11)
!1152 = !DILocation(line: 827, column: 13, scope: !1151)
!1153 = !DILocation(line: 827, column: 11, scope: !1104)
!1154 = !DILocalVariable(name: "x3", scope: !1155, file: !1, line: 828, type: !126)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 827, column: 20)
!1156 = !DILocation(line: 828, column: 18, scope: !1155)
!1157 = !DILocation(line: 828, column: 23, scope: !1155)
!1158 = !DILocation(line: 828, column: 25, scope: !1155)
!1159 = !DILocation(line: 828, column: 24, scope: !1155)
!1160 = !DILocation(line: 828, column: 27, scope: !1155)
!1161 = !DILocation(line: 828, column: 26, scope: !1155)
!1162 = !DILocalVariable(name: "x2", scope: !1155, file: !1, line: 829, type: !126)
!1163 = !DILocation(line: 829, column: 18, scope: !1155)
!1164 = !DILocation(line: 829, column: 23, scope: !1155)
!1165 = !DILocation(line: 829, column: 25, scope: !1155)
!1166 = !DILocation(line: 829, column: 24, scope: !1155)
!1167 = !DILocalVariable(name: "result_c1", scope: !1155, file: !1, line: 830, type: !131)
!1168 = !DILocation(line: 830, column: 19, scope: !1155)
!1169 = !DILocalVariable(name: "result_c2", scope: !1155, file: !1, line: 831, type: !131)
!1170 = !DILocation(line: 831, column: 19, scope: !1155)
!1171 = !DILocation(line: 832, column: 31, scope: !1155)
!1172 = !DILocation(line: 832, column: 35, scope: !1155)
!1173 = !DILocation(line: 832, column: 5, scope: !1155)
!1174 = !DILocation(line: 833, column: 31, scope: !1155)
!1175 = !DILocation(line: 833, column: 35, scope: !1155)
!1176 = !DILocation(line: 833, column: 5, scope: !1155)
!1177 = !DILocation(line: 834, column: 20, scope: !1155)
!1178 = !DILocation(line: 834, column: 36, scope: !1155)
!1179 = !DILocation(line: 834, column: 40, scope: !1155)
!1180 = !DILocation(line: 834, column: 23, scope: !1155)
!1181 = !DILocation(line: 834, column: 60, scope: !1155)
!1182 = !DILocation(line: 834, column: 48, scope: !1155)
!1183 = !DILocation(line: 834, column: 64, scope: !1155)
!1184 = !DILocation(line: 834, column: 5, scope: !1155)
!1185 = !DILocation(line: 834, column: 13, scope: !1155)
!1186 = !DILocation(line: 834, column: 18, scope: !1155)
!1187 = !DILocation(line: 835, column: 20, scope: !1155)
!1188 = !DILocation(line: 835, column: 35, scope: !1155)
!1189 = !DILocation(line: 835, column: 23, scope: !1155)
!1190 = !DILocation(line: 835, column: 51, scope: !1155)
!1191 = !DILocation(line: 835, column: 39, scope: !1155)
!1192 = !DILocation(line: 835, column: 5, scope: !1155)
!1193 = !DILocation(line: 835, column: 13, scope: !1155)
!1194 = !DILocation(line: 835, column: 18, scope: !1155)
!1195 = !DILocation(line: 836, column: 43, scope: !1155)
!1196 = !DILocation(line: 836, column: 51, scope: !1155)
!1197 = !DILocation(line: 836, column: 38, scope: !1155)
!1198 = !DILocation(line: 836, column: 36, scope: !1155)
!1199 = !DILocation(line: 836, column: 5, scope: !1155)
!1200 = !DILocation(line: 836, column: 13, scope: !1155)
!1201 = !DILocation(line: 836, column: 17, scope: !1155)
!1202 = !DILocation(line: 837, column: 5, scope: !1155)
!1203 = !DILocation(line: 839, column: 11, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 839, column: 11)
!1205 = !DILocation(line: 839, column: 13, scope: !1204)
!1206 = !DILocation(line: 839, column: 11, scope: !1151)
!1207 = !DILocalVariable(name: "z", scope: !1208, file: !1, line: 840, type: !126)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 839, column: 20)
!1209 = !DILocation(line: 840, column: 18, scope: !1208)
!1210 = !DILocation(line: 840, column: 27, scope: !1208)
!1211 = !DILocation(line: 840, column: 26, scope: !1208)
!1212 = !DILocation(line: 840, column: 29, scope: !1208)
!1213 = !DILocation(line: 840, column: 28, scope: !1208)
!1214 = !DILocation(line: 840, column: 31, scope: !1208)
!1215 = !DILocation(line: 840, column: 30, scope: !1208)
!1216 = !DILocation(line: 840, column: 33, scope: !1208)
!1217 = !DILocation(line: 840, column: 40, scope: !1208)
!1218 = !DILocalVariable(name: "result_c1", scope: !1208, file: !1, line: 841, type: !131)
!1219 = !DILocation(line: 841, column: 19, scope: !1208)
!1220 = !DILocalVariable(name: "result_c2", scope: !1208, file: !1, line: 842, type: !131)
!1221 = !DILocation(line: 842, column: 19, scope: !1208)
!1222 = !DILocation(line: 843, column: 32, scope: !1208)
!1223 = !DILocation(line: 843, column: 35, scope: !1208)
!1224 = !DILocation(line: 843, column: 5, scope: !1208)
!1225 = !DILocation(line: 844, column: 32, scope: !1208)
!1226 = !DILocation(line: 844, column: 35, scope: !1208)
!1227 = !DILocation(line: 844, column: 5, scope: !1208)
!1228 = !DILocation(line: 845, column: 20, scope: !1208)
!1229 = !DILocation(line: 845, column: 22, scope: !1208)
!1230 = !DILocation(line: 845, column: 21, scope: !1208)
!1231 = !DILocation(line: 845, column: 37, scope: !1208)
!1232 = !DILocation(line: 845, column: 41, scope: !1208)
!1233 = !DILocation(line: 845, column: 24, scope: !1208)
!1234 = !DILocation(line: 845, column: 61, scope: !1208)
!1235 = !DILocation(line: 845, column: 49, scope: !1208)
!1236 = !DILocation(line: 845, column: 65, scope: !1208)
!1237 = !DILocation(line: 845, column: 5, scope: !1208)
!1238 = !DILocation(line: 845, column: 13, scope: !1208)
!1239 = !DILocation(line: 845, column: 18, scope: !1208)
!1240 = !DILocation(line: 846, column: 20, scope: !1208)
!1241 = !DILocation(line: 846, column: 22, scope: !1208)
!1242 = !DILocation(line: 846, column: 21, scope: !1208)
!1243 = !DILocation(line: 846, column: 36, scope: !1208)
!1244 = !DILocation(line: 846, column: 24, scope: !1208)
!1245 = !DILocation(line: 846, column: 52, scope: !1208)
!1246 = !DILocation(line: 846, column: 40, scope: !1208)
!1247 = !DILocation(line: 846, column: 5, scope: !1208)
!1248 = !DILocation(line: 846, column: 13, scope: !1208)
!1249 = !DILocation(line: 846, column: 18, scope: !1208)
!1250 = !DILocation(line: 847, column: 43, scope: !1208)
!1251 = !DILocation(line: 847, column: 51, scope: !1208)
!1252 = !DILocation(line: 847, column: 38, scope: !1208)
!1253 = !DILocation(line: 847, column: 36, scope: !1208)
!1254 = !DILocation(line: 847, column: 5, scope: !1208)
!1255 = !DILocation(line: 847, column: 13, scope: !1208)
!1256 = !DILocation(line: 847, column: 17, scope: !1208)
!1257 = !DILocation(line: 848, column: 5, scope: !1208)
!1258 = !DILocation(line: 850, column: 11, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 850, column: 11)
!1260 = !DILocation(line: 850, column: 13, scope: !1259)
!1261 = !DILocation(line: 850, column: 11, scope: !1204)
!1262 = !DILocalVariable(name: "result_bps", scope: !1263, file: !1, line: 851, type: !131)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !1, line: 850, column: 52)
!1264 = !DILocation(line: 851, column: 19, scope: !1263)
!1265 = !DILocalVariable(name: "arg", scope: !1263, file: !1, line: 852, type: !126)
!1266 = !DILocation(line: 852, column: 18, scope: !1263)
!1267 = !DILocation(line: 852, column: 29, scope: !1263)
!1268 = !DILocation(line: 852, column: 36, scope: !1263)
!1269 = !DILocation(line: 852, column: 31, scope: !1263)
!1270 = !DILocation(line: 852, column: 30, scope: !1263)
!1271 = !DILocation(line: 852, column: 38, scope: !1263)
!1272 = !DILocation(line: 852, column: 27, scope: !1263)
!1273 = !DILocalVariable(name: "stat_b", scope: !1263, file: !1, line: 853, type: !51)
!1274 = !DILocation(line: 853, column: 9, scope: !1263)
!1275 = !DILocation(line: 853, column: 48, scope: !1263)
!1276 = !DILocation(line: 853, column: 51, scope: !1263)
!1277 = !DILocation(line: 853, column: 18, scope: !1263)
!1278 = !DILocalVariable(name: "stat_e", scope: !1263, file: !1, line: 854, type: !51)
!1279 = !DILocation(line: 854, column: 9, scope: !1263)
!1280 = !DILocation(line: 854, column: 40, scope: !1263)
!1281 = !DILocation(line: 854, column: 54, scope: !1263)
!1282 = !DILocation(line: 854, column: 57, scope: !1263)
!1283 = !DILocation(line: 854, column: 49, scope: !1263)
!1284 = !DILocation(line: 854, column: 48, scope: !1263)
!1285 = !DILocation(line: 855, column: 54, scope: !1263)
!1286 = !DILocation(line: 855, column: 70, scope: !1263)
!1287 = !DILocation(line: 856, column: 43, scope: !1263)
!1288 = !DILocation(line: 854, column: 18, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1263, file: !1, discriminator: 1)
!1290 = !DILocation(line: 857, column: 12, scope: !1263)
!1291 = !DILocation(line: 857, column: 12, scope: !1289)
!1292 = !DILocation(line: 857, column: 12, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1263, file: !1, discriminator: 2)
!1294 = !DILocation(line: 857, column: 12, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1263, file: !1, discriminator: 3)
!1296 = !DILocation(line: 857, column: 12, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1263, file: !1, discriminator: 4)
!1298 = !DILocation(line: 857, column: 12, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1263, file: !1, discriminator: 5)
!1300 = !DILocation(line: 857, column: 12, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1263, file: !1, discriminator: 6)
!1302 = !DILocation(line: 857, column: 5, scope: !1301)
!1303 = !DILocation(line: 860, column: 5, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1259, file: !1, line: 859, column: 8)
!1305 = distinct !{!1305, !1303}
!1306 = !DILocation(line: 860, column: 5, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1308, file: !1, discriminator: 1)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !1, line: 860, column: 5)
!1309 = distinct !{!1309, !1310}
!1310 = !DILocation(line: 860, column: 5, scope: !1308)
!1311 = !DILocation(line: 860, column: 5, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1313, file: !1, discriminator: 2)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 860, column: 5)
!1314 = !DILocation(line: 860, column: 5, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1308, file: !1, discriminator: 3)
!1316 = !DILocation(line: 862, column: 1, scope: !1096)
!1317 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_deriv_scaled", scope: !1, file: !1, line: 868, type: !1318, isLocal: false, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !137)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!49, !126, !127}
!1320 = !DILocalVariable(name: "x", arg: 1, scope: !1317, file: !1, line: 868, type: !126)
!1321 = !DILocation(line: 868, column: 49, scope: !1317)
!1322 = !DILocalVariable(name: "mode", arg: 2, scope: !1317, file: !1, line: 868, type: !127)
!1323 = !DILocation(line: 868, column: 63, scope: !1317)
!1324 = !DILocalVariable(name: "result", scope: !1317, file: !1, line: 870, type: !131)
!1325 = !DILocation(line: 870, column: 3, scope: !1317)
!1326 = !DILocalVariable(name: "status", scope: !1317, file: !1, line: 870, type: !51)
!1327 = !DILocation(line: 870, column: 3, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 870, column: 3)
!1329 = !DILocation(line: 870, column: 3, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1331, file: !1, discriminator: 1)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 870, column: 3)
!1332 = distinct !{!1332, !1333}
!1333 = !DILocation(line: 870, column: 3, scope: !1331)
!1334 = !DILocation(line: 870, column: 3, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1336, file: !1, discriminator: 2)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 870, column: 3)
!1337 = !DILocation(line: 870, column: 3, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1331, file: !1, discriminator: 3)
!1339 = !DILocation(line: 870, column: 3, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1317, file: !1, discriminator: 4)
!1341 = !DILocation(line: 871, column: 1, scope: !1317)
!1342 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_deriv", scope: !1, file: !1, line: 873, type: !1318, isLocal: false, isDefinition: true, scopeLine: 874, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !137)
!1343 = !DILocalVariable(name: "x", arg: 1, scope: !1342, file: !1, line: 873, type: !126)
!1344 = !DILocation(line: 873, column: 42, scope: !1342)
!1345 = !DILocalVariable(name: "mode", arg: 2, scope: !1342, file: !1, line: 873, type: !127)
!1346 = !DILocation(line: 873, column: 56, scope: !1342)
!1347 = !DILocalVariable(name: "result", scope: !1342, file: !1, line: 875, type: !131)
!1348 = !DILocation(line: 875, column: 3, scope: !1342)
!1349 = !DILocalVariable(name: "status", scope: !1342, file: !1, line: 875, type: !51)
!1350 = !DILocation(line: 875, column: 3, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1342, file: !1, line: 875, column: 3)
!1352 = !DILocation(line: 875, column: 3, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1354, file: !1, discriminator: 1)
!1354 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 875, column: 3)
!1355 = distinct !{!1355, !1356}
!1356 = !DILocation(line: 875, column: 3, scope: !1354)
!1357 = !DILocation(line: 875, column: 3, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1359, file: !1, discriminator: 2)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !1, line: 875, column: 3)
!1360 = !DILocation(line: 875, column: 3, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1354, file: !1, discriminator: 3)
!1362 = !DILocation(line: 875, column: 3, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1342, file: !1, discriminator: 4)
!1364 = !DILocation(line: 876, column: 1, scope: !1342)
!1365 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_deriv_scaled", scope: !1, file: !1, line: 878, type: !1318, isLocal: false, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !137)
!1366 = !DILocalVariable(name: "x", arg: 1, scope: !1365, file: !1, line: 878, type: !126)
!1367 = !DILocation(line: 878, column: 49, scope: !1365)
!1368 = !DILocalVariable(name: "mode", arg: 2, scope: !1365, file: !1, line: 878, type: !127)
!1369 = !DILocation(line: 878, column: 63, scope: !1365)
!1370 = !DILocalVariable(name: "result", scope: !1365, file: !1, line: 880, type: !131)
!1371 = !DILocation(line: 880, column: 3, scope: !1365)
!1372 = !DILocalVariable(name: "status", scope: !1365, file: !1, line: 880, type: !51)
!1373 = !DILocation(line: 880, column: 3, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 880, column: 3)
!1375 = !DILocation(line: 880, column: 3, scope: !1376)
!1376 = !DILexicalBlockFile(scope: !1377, file: !1, discriminator: 1)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !1, line: 880, column: 3)
!1378 = distinct !{!1378, !1379}
!1379 = !DILocation(line: 880, column: 3, scope: !1377)
!1380 = !DILocation(line: 880, column: 3, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1382, file: !1, discriminator: 2)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 880, column: 3)
!1383 = !DILocation(line: 880, column: 3, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1377, file: !1, discriminator: 3)
!1385 = !DILocation(line: 880, column: 3, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1365, file: !1, discriminator: 4)
!1387 = !DILocation(line: 881, column: 1, scope: !1365)
!1388 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_deriv", scope: !1, file: !1, line: 883, type: !1318, isLocal: false, isDefinition: true, scopeLine: 884, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !137)
!1389 = !DILocalVariable(name: "x", arg: 1, scope: !1388, file: !1, line: 883, type: !126)
!1390 = !DILocation(line: 883, column: 42, scope: !1388)
!1391 = !DILocalVariable(name: "mode", arg: 2, scope: !1388, file: !1, line: 883, type: !127)
!1392 = !DILocation(line: 883, column: 56, scope: !1388)
!1393 = !DILocalVariable(name: "result", scope: !1388, file: !1, line: 885, type: !131)
!1394 = !DILocation(line: 885, column: 3, scope: !1388)
!1395 = !DILocalVariable(name: "status", scope: !1388, file: !1, line: 885, type: !51)
!1396 = !DILocation(line: 885, column: 3, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1388, file: !1, line: 885, column: 3)
!1398 = !DILocation(line: 885, column: 3, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1400, file: !1, discriminator: 1)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 885, column: 3)
!1401 = distinct !{!1401, !1402}
!1402 = !DILocation(line: 885, column: 3, scope: !1400)
!1403 = !DILocation(line: 885, column: 3, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1405, file: !1, discriminator: 2)
!1405 = distinct !DILexicalBlock(scope: !1400, file: !1, line: 885, column: 3)
!1406 = !DILocation(line: 885, column: 3, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1400, file: !1, discriminator: 3)
!1408 = !DILocation(line: 885, column: 3, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1388, file: !1, discriminator: 4)
!1410 = !DILocation(line: 886, column: 1, scope: !1388)
