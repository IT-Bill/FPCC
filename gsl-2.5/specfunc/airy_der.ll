; ModuleID = 'airy_der.c'
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
  br i1 %26, label %27, label %65, !dbg !148

; <label>:27:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !149, metadata !139), !dbg !151
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !152, metadata !139), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %10, metadata !154, metadata !139), !dbg !155
  %28 = load double, double* %5, align 8, !dbg !156
  %29 = load i32, i32* %6, align 4, !dbg !157
  %30 = call i32 @airy_deriv_mod_phase(double %28, i32 %29, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !158
  store i32 %30, i32* %10, align 4, !dbg !155
  call void @llvm.dbg.declare(metadata double* %11, metadata !159, metadata !139), !dbg !160
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !161
  %32 = load double, double* %31, align 8, !dbg !161
  %33 = call double @cos(double %32) #6, !dbg !162
  store double %33, double* %11, align 8, !dbg !160
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !163
  %35 = load double, double* %34, align 8, !dbg !163
  %36 = load double, double* %11, align 8, !dbg !164
  %37 = fmul double %35, %36, !dbg !165
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !166
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !167
  store double %37, double* %39, align 8, !dbg !168
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !169
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !170
  %42 = load double, double* %41, align 8, !dbg !170
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !171
  %44 = load double, double* %43, align 8, !dbg !171
  %45 = fmul double %42, %44, !dbg !172
  %46 = call double @fabs(double %45) #1, !dbg !173
  %47 = load double, double* %11, align 8, !dbg !174
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !175
  %49 = load double, double* %48, align 8, !dbg !175
  %50 = fmul double %47, %49, !dbg !176
  %51 = call double @fabs(double %50) #1, !dbg !177
  %52 = fadd double %46, %51, !dbg !179
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !180
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !181
  store double %52, double* %54, align 8, !dbg !182
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !183
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !184
  %57 = load double, double* %56, align 8, !dbg !184
  %58 = call double @fabs(double %57) #1, !dbg !185
  %59 = fmul double 0x3CB0000000000000, %58, !dbg !186
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !187
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !188
  %62 = load double, double* %61, align 8, !dbg !189
  %63 = fadd double %62, %59, !dbg !189
  store double %63, double* %61, align 8, !dbg !189
  %64 = load i32, i32* %10, align 4, !dbg !190
  store i32 %64, i32* %4, align 4, !dbg !191
  br label %210, !dbg !191

; <label>:65:                                     ; preds = %3
  %66 = load double, double* %5, align 8, !dbg !192
  %67 = fcmp ole double %66, 1.000000e+00, !dbg !194
  br i1 %67, label %68, label %134, !dbg !195

; <label>:68:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata double* %12, metadata !196, metadata !139), !dbg !198
  %69 = load double, double* %5, align 8, !dbg !199
  %70 = load double, double* %5, align 8, !dbg !200
  %71 = fmul double %69, %70, !dbg !201
  %72 = load double, double* %5, align 8, !dbg !202
  %73 = fmul double %71, %72, !dbg !203
  store double %73, double* %12, align 8, !dbg !198
  call void @llvm.dbg.declare(metadata double* %13, metadata !204, metadata !139), !dbg !205
  %74 = load double, double* %5, align 8, !dbg !206
  %75 = load double, double* %5, align 8, !dbg !207
  %76 = fmul double %74, %75, !dbg !208
  store double %76, double* %13, align 8, !dbg !205
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !209, metadata !139), !dbg !210
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !211, metadata !139), !dbg !212
  %77 = load double, double* %12, align 8, !dbg !213
  %78 = load i32, i32* %6, align 4, !dbg !214
  %79 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aif_cs, double %77, i32 %78, %struct.gsl_sf_result_struct* %14), !dbg !215
  %80 = load double, double* %12, align 8, !dbg !216
  %81 = load i32, i32* %6, align 4, !dbg !217
  %82 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aig_cs, double %80, i32 %81, %struct.gsl_sf_result_struct* %15), !dbg !218
  %83 = load double, double* %13, align 8, !dbg !219
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !220
  %85 = load double, double* %84, align 8, !dbg !220
  %86 = fadd double 1.250000e-01, %85, !dbg !221
  %87 = fmul double %83, %86, !dbg !222
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !223
  %89 = load double, double* %88, align 8, !dbg !223
  %90 = fsub double %87, %89, !dbg !224
  %91 = fsub double %90, 2.500000e-01, !dbg !225
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !226
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !227
  store double %91, double* %93, align 8, !dbg !228
  %94 = load double, double* %13, align 8, !dbg !229
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !230
  %96 = load double, double* %95, align 8, !dbg !230
  %97 = fmul double %94, %96, !dbg !231
  %98 = call double @fabs(double %97) #1, !dbg !232
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !233
  %100 = load double, double* %99, align 8, !dbg !233
  %101 = fadd double %98, %100, !dbg !234
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !235
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 1, !dbg !236
  store double %101, double* %103, align 8, !dbg !237
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !238
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 0, !dbg !239
  %106 = load double, double* %105, align 8, !dbg !239
  %107 = call double @fabs(double %106) #1, !dbg !240
  %108 = fmul double 0x3CB0000000000000, %107, !dbg !241
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !242
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 1, !dbg !243
  %111 = load double, double* %110, align 8, !dbg !244
  %112 = fadd double %111, %108, !dbg !244
  store double %112, double* %110, align 8, !dbg !244
  %113 = load double, double* %5, align 8, !dbg !245
  %114 = fcmp ogt double %113, 0x3DC428A2F98D7292, !dbg !247
  br i1 %114, label %115, label %133, !dbg !248

; <label>:115:                                    ; preds = %68
  call void @llvm.dbg.declare(metadata double* %16, metadata !249, metadata !139), !dbg !251
  %116 = load double, double* %5, align 8, !dbg !252
  %117 = fmul double 2.000000e+00, %116, !dbg !253
  %118 = load double, double* %5, align 8, !dbg !254
  %119 = call double @sqrt(double %118) #6, !dbg !255
  %120 = fmul double %117, %119, !dbg !256
  %121 = fdiv double %120, 3.000000e+00, !dbg !257
  %122 = call double @exp(double %121) #6, !dbg !258
  store double %122, double* %16, align 8, !dbg !251
  %123 = load double, double* %16, align 8, !dbg !260
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !261
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 0, !dbg !262
  %126 = load double, double* %125, align 8, !dbg !263
  %127 = fmul double %126, %123, !dbg !263
  store double %127, double* %125, align 8, !dbg !263
  %128 = load double, double* %16, align 8, !dbg !264
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !265
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 1, !dbg !266
  %131 = load double, double* %130, align 8, !dbg !267
  %132 = fmul double %131, %128, !dbg !267
  store double %132, double* %130, align 8, !dbg !267
  br label %133, !dbg !268

; <label>:133:                                    ; preds = %115, %68
  store i32 0, i32* %4, align 4, !dbg !269
  br label %210, !dbg !269

; <label>:134:                                    ; preds = %65
  %135 = load double, double* %5, align 8, !dbg !270
  %136 = fcmp ole double %135, 4.000000e+00, !dbg !272
  br i1 %136, label %137, label %174, !dbg !273

; <label>:137:                                    ; preds = %134
  call void @llvm.dbg.declare(metadata double* %17, metadata !274, metadata !139), !dbg !276
  %138 = load double, double* %5, align 8, !dbg !277
  %139 = call double @sqrt(double %138) #6, !dbg !278
  store double %139, double* %17, align 8, !dbg !276
  call void @llvm.dbg.declare(metadata double* %18, metadata !279, metadata !139), !dbg !280
  %140 = load double, double* %5, align 8, !dbg !281
  %141 = load double, double* %17, align 8, !dbg !282
  %142 = fmul double %140, %141, !dbg !283
  %143 = fdiv double 1.600000e+01, %142, !dbg !284
  %144 = fsub double %143, 9.000000e+00, !dbg !285
  %145 = fdiv double %144, 7.000000e+00, !dbg !286
  store double %145, double* %18, align 8, !dbg !280
  call void @llvm.dbg.declare(metadata double* %19, metadata !287, metadata !139), !dbg !288
  %146 = load double, double* %17, align 8, !dbg !289
  %147 = call double @sqrt(double %146) #6, !dbg !290
  store double %147, double* %19, align 8, !dbg !288
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !291, metadata !139), !dbg !292
  %148 = load double, double* %18, align 8, !dbg !293
  %149 = load i32, i32* %6, align 4, !dbg !294
  %150 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aip1_cs, double %148, i32 %149, %struct.gsl_sf_result_struct* %20), !dbg !295
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !296
  %152 = load double, double* %151, align 8, !dbg !296
  %153 = fadd double 2.812500e-01, %152, !dbg !297
  %154 = fsub double -0.000000e+00, %153, !dbg !298
  %155 = load double, double* %19, align 8, !dbg !299
  %156 = fmul double %154, %155, !dbg !300
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !301
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 0, !dbg !302
  store double %156, double* %158, align 8, !dbg !303
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !304
  %160 = load double, double* %159, align 8, !dbg !304
  %161 = load double, double* %19, align 8, !dbg !305
  %162 = fmul double %160, %161, !dbg !306
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !307
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 1, !dbg !308
  store double %162, double* %164, align 8, !dbg !309
  %165 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !310
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %165, i32 0, i32 0, !dbg !311
  %167 = load double, double* %166, align 8, !dbg !311
  %168 = call double @fabs(double %167) #1, !dbg !312
  %169 = fmul double 0x3CB0000000000000, %168, !dbg !313
  %170 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !314
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %170, i32 0, i32 1, !dbg !315
  %172 = load double, double* %171, align 8, !dbg !316
  %173 = fadd double %172, %169, !dbg !316
  store double %173, double* %171, align 8, !dbg !316
  store i32 0, i32* %4, align 4, !dbg !317
  br label %210, !dbg !317

; <label>:174:                                    ; preds = %134
  call void @llvm.dbg.declare(metadata double* %21, metadata !318, metadata !139), !dbg !320
  %175 = load double, double* %5, align 8, !dbg !321
  %176 = call double @sqrt(double %175) #6, !dbg !322
  store double %176, double* %21, align 8, !dbg !320
  call void @llvm.dbg.declare(metadata double* %22, metadata !323, metadata !139), !dbg !324
  %177 = load double, double* %5, align 8, !dbg !325
  %178 = load double, double* %21, align 8, !dbg !326
  %179 = fmul double %177, %178, !dbg !327
  %180 = fdiv double 1.600000e+01, %179, !dbg !328
  %181 = fsub double %180, 1.000000e+00, !dbg !329
  store double %181, double* %22, align 8, !dbg !324
  call void @llvm.dbg.declare(metadata double* %23, metadata !330, metadata !139), !dbg !331
  %182 = load double, double* %21, align 8, !dbg !332
  %183 = call double @sqrt(double %182) #6, !dbg !333
  store double %183, double* %23, align 8, !dbg !331
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !334, metadata !139), !dbg !335
  %184 = load double, double* %22, align 8, !dbg !336
  %185 = load i32, i32* %6, align 4, !dbg !337
  %186 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aip2_cs, double %184, i32 %185, %struct.gsl_sf_result_struct* %24), !dbg !338
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !339
  %188 = load double, double* %187, align 8, !dbg !339
  %189 = fadd double 2.812500e-01, %188, !dbg !340
  %190 = fsub double -0.000000e+00, %189, !dbg !341
  %191 = load double, double* %23, align 8, !dbg !342
  %192 = fmul double %190, %191, !dbg !343
  %193 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !344
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %193, i32 0, i32 0, !dbg !345
  store double %192, double* %194, align 8, !dbg !346
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !347
  %196 = load double, double* %195, align 8, !dbg !347
  %197 = load double, double* %23, align 8, !dbg !348
  %198 = fmul double %196, %197, !dbg !349
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !350
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 1, !dbg !351
  store double %198, double* %200, align 8, !dbg !352
  %201 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !353
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %201, i32 0, i32 0, !dbg !354
  %203 = load double, double* %202, align 8, !dbg !354
  %204 = call double @fabs(double %203) #1, !dbg !355
  %205 = fmul double 0x3CB0000000000000, %204, !dbg !356
  %206 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !357
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %206, i32 0, i32 1, !dbg !358
  %208 = load double, double* %207, align 8, !dbg !359
  %209 = fadd double %208, %205, !dbg !359
  store double %209, double* %207, align 8, !dbg !359
  store i32 0, i32* %4, align 4, !dbg !360
  br label %210, !dbg !360

; <label>:210:                                    ; preds = %174, %137, %133, %27
  %211 = load i32, i32* %4, align 4, !dbg !361
  ret i32 %211, !dbg !361
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
  br i1 %20, label %21, label %35, !dbg !388

; <label>:21:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata double* %16, metadata !389, metadata !139), !dbg !391
  %22 = load double, double* %6, align 8, !dbg !392
  %23 = load double, double* %6, align 8, !dbg !393
  %24 = fmul double %22, %23, !dbg !394
  %25 = load double, double* %6, align 8, !dbg !395
  %26 = fmul double %24, %25, !dbg !396
  %27 = fdiv double 1.280000e+02, %26, !dbg !397
  %28 = fadd double %27, 1.000000e+00, !dbg !398
  store double %28, double* %16, align 8, !dbg !391
  %29 = load double, double* %16, align 8, !dbg !399
  %30 = load i32, i32* %7, align 4, !dbg !400
  %31 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @an20_cs, double %29, i32 %30, %struct.gsl_sf_result_struct* %11), !dbg !401
  %32 = load double, double* %16, align 8, !dbg !402
  %33 = load i32, i32* %7, align 4, !dbg !403
  %34 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aph0_cs, double %32, i32 %33, %struct.gsl_sf_result_struct* %12), !dbg !404
  br label %84, !dbg !405

; <label>:35:                                     ; preds = %4
  %36 = load double, double* %6, align 8, !dbg !406
  %37 = fcmp ole double %36, -2.000000e+00, !dbg !408
  br i1 %37, label %38, label %53, !dbg !409

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata double* %17, metadata !410, metadata !139), !dbg !412
  %39 = load double, double* %6, align 8, !dbg !413
  %40 = load double, double* %6, align 8, !dbg !414
  %41 = fmul double %39, %40, !dbg !415
  %42 = load double, double* %6, align 8, !dbg !416
  %43 = fmul double %41, %42, !dbg !417
  %44 = fdiv double 1.280000e+02, %43, !dbg !418
  %45 = fadd double %44, 9.000000e+00, !dbg !419
  %46 = fdiv double %45, 7.000000e+00, !dbg !420
  store double %46, double* %17, align 8, !dbg !412
  %47 = load double, double* %17, align 8, !dbg !421
  %48 = load i32, i32* %7, align 4, !dbg !422
  %49 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @an21_cs, double %47, i32 %48, %struct.gsl_sf_result_struct* %11), !dbg !423
  %50 = load double, double* %17, align 8, !dbg !424
  %51 = load i32, i32* %7, align 4, !dbg !425
  %52 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aph1_cs, double %50, i32 %51, %struct.gsl_sf_result_struct* %12), !dbg !426
  br label %83, !dbg !427

; <label>:53:                                     ; preds = %35
  %54 = load double, double* %6, align 8, !dbg !428
  %55 = fcmp ole double %54, -1.000000e+00, !dbg !430
  br i1 %55, label %56, label %71, !dbg !431

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata double* %18, metadata !432, metadata !139), !dbg !434
  %57 = load double, double* %6, align 8, !dbg !435
  %58 = load double, double* %6, align 8, !dbg !436
  %59 = fmul double %57, %58, !dbg !437
  %60 = load double, double* %6, align 8, !dbg !438
  %61 = fmul double %59, %60, !dbg !439
  %62 = fdiv double 1.600000e+01, %61, !dbg !440
  %63 = fadd double %62, 9.000000e+00, !dbg !441
  %64 = fdiv double %63, 7.000000e+00, !dbg !442
  store double %64, double* %18, align 8, !dbg !434
  %65 = load double, double* %18, align 8, !dbg !443
  %66 = load i32, i32* %7, align 4, !dbg !444
  %67 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @an22_cs, double %65, i32 %66, %struct.gsl_sf_result_struct* %11), !dbg !445
  %68 = load double, double* %18, align 8, !dbg !446
  %69 = load i32, i32* %7, align 4, !dbg !447
  %70 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aph2_cs, double %68, i32 %69, %struct.gsl_sf_result_struct* %12), !dbg !448
  br label %82, !dbg !449

; <label>:71:                                     ; preds = %53
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !450
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !452
  store double 0.000000e+00, double* %73, align 8, !dbg !453
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !454
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 1, !dbg !455
  store double 0.000000e+00, double* %75, align 8, !dbg !456
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !457
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 0, !dbg !458
  store double 0.000000e+00, double* %77, align 8, !dbg !459
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !460
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !461
  store double 0.000000e+00, double* %79, align 8, !dbg !462
  br label %80, !dbg !463, !llvm.loop !464

; <label>:80:                                     ; preds = %71
  call void @gsl_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 616, i32 1), !dbg !465
  store i32 1, i32* %5, align 4, !dbg !465
  br label %136, !dbg !465
                                                  ; No predecessors!
  br label %82

; <label>:82:                                     ; preds = %81, %56
  br label %83

; <label>:83:                                     ; preds = %82, %38
  br label %84

; <label>:84:                                     ; preds = %83, %21
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !468
  %86 = load double, double* %85, align 8, !dbg !468
  %87 = fadd double 3.125000e-01, %86, !dbg !469
  store double %87, double* %13, align 8, !dbg !470
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !471
  %89 = load double, double* %88, align 8, !dbg !471
  %90 = fadd double -6.250000e-01, %89, !dbg !472
  store double %90, double* %14, align 8, !dbg !473
  %91 = load double, double* %6, align 8, !dbg !474
  %92 = fsub double -0.000000e+00, %91, !dbg !475
  %93 = call double @sqrt(double %92) #6, !dbg !476
  store double %93, double* %15, align 8, !dbg !477
  %94 = load double, double* %13, align 8, !dbg !478
  %95 = load double, double* %15, align 8, !dbg !479
  %96 = fmul double %94, %95, !dbg !480
  %97 = call double @sqrt(double %96) #6, !dbg !481
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !482
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 0, !dbg !483
  store double %97, double* %99, align 8, !dbg !484
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !485
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 0, !dbg !486
  %102 = load double, double* %101, align 8, !dbg !486
  %103 = call double @fabs(double %102) #1, !dbg !487
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !488
  %105 = load double, double* %104, align 8, !dbg !488
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !489
  %107 = load double, double* %106, align 8, !dbg !489
  %108 = fdiv double %105, %107, !dbg !490
  %109 = call double @fabs(double %108) #1, !dbg !491
  %110 = fadd double 0x3CB0000000000000, %109, !dbg !493
  %111 = fmul double %103, %110, !dbg !494
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !495
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 1, !dbg !496
  store double %111, double* %113, align 8, !dbg !497
  %114 = load double, double* %6, align 8, !dbg !498
  %115 = load double, double* %15, align 8, !dbg !499
  %116 = fmul double %114, %115, !dbg !500
  %117 = load double, double* %14, align 8, !dbg !501
  %118 = fmul double %116, %117, !dbg !502
  %119 = fsub double 0x4002D97C7F3321D2, %118, !dbg !503
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !504
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 0, !dbg !505
  store double %119, double* %121, align 8, !dbg !506
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !507
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 0, !dbg !508
  %124 = load double, double* %123, align 8, !dbg !508
  %125 = call double @fabs(double %124) #1, !dbg !509
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !510
  %127 = load double, double* %126, align 8, !dbg !510
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !511
  %129 = load double, double* %128, align 8, !dbg !511
  %130 = fdiv double %127, %129, !dbg !512
  %131 = call double @fabs(double %130) #1, !dbg !513
  %132 = fadd double 0x3CB0000000000000, %131, !dbg !514
  %133 = fmul double %125, %132, !dbg !515
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !516
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 1, !dbg !517
  store double %133, double* %135, align 8, !dbg !518
  store i32 0, i32* %5, align 4, !dbg !519
  br label %136, !dbg !519

; <label>:136:                                    ; preds = %84, %80
  %137 = load i32, i32* %5, align 4, !dbg !520
  ret i32 %137, !dbg !520
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
  %18 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !545
  %19 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %18, i32 0, i32 2, !dbg !546
  %20 = load double, double* %19, align 8, !dbg !546
  %21 = fsub double %17, %20, !dbg !547
  %22 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !548
  %23 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %22, i32 0, i32 3, !dbg !549
  %24 = load double, double* %23, align 8, !dbg !549
  %25 = fsub double %21, %24, !dbg !550
  %26 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !551
  %27 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %26, i32 0, i32 3, !dbg !552
  %28 = load double, double* %27, align 8, !dbg !552
  %29 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !553
  %30 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %29, i32 0, i32 2, !dbg !554
  %31 = load double, double* %30, align 8, !dbg !554
  %32 = fsub double %28, %31, !dbg !555
  %33 = fdiv double %25, %32, !dbg !556
  store double %33, double* %12, align 8, !dbg !542
  call void @llvm.dbg.declare(metadata double* %13, metadata !557, metadata !139), !dbg !558
  %34 = load double, double* %12, align 8, !dbg !559
  %35 = fmul double 2.000000e+00, %34, !dbg !560
  store double %35, double* %13, align 8, !dbg !558
  call void @llvm.dbg.declare(metadata i32* %14, metadata !561, metadata !139), !dbg !562
  %36 = load i32, i32* %7, align 4, !dbg !563
  %37 = call i32 @GSL_MODE_PREC(i32 %36), !dbg !565
  %38 = icmp eq i32 %37, 0, !dbg !566
  br i1 %38, label %39, label %43, !dbg !567

; <label>:39:                                     ; preds = %4
  %40 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !568
  %41 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %40, i32 0, i32 1, !dbg !569
  %42 = load i32, i32* %41, align 8, !dbg !569
  store i32 %42, i32* %14, align 4, !dbg !570
  br label %47, !dbg !571

; <label>:43:                                     ; preds = %4
  %44 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !572
  %45 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %44, i32 0, i32 4, !dbg !573
  %46 = load i32, i32* %45, align 8, !dbg !573
  store i32 %46, i32* %14, align 4, !dbg !574
  br label %47

; <label>:47:                                     ; preds = %43, %39
  %48 = load i32, i32* %14, align 4, !dbg !575
  store i32 %48, i32* %9, align 4, !dbg !577
  br label %49, !dbg !578

; <label>:49:                                     ; preds = %68, %47
  %50 = load i32, i32* %9, align 4, !dbg !579
  %51 = icmp sge i32 %50, 1, !dbg !582
  br i1 %51, label %52, label %71, !dbg !583

; <label>:52:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata double* %15, metadata !584, metadata !139), !dbg !586
  %53 = load double, double* %10, align 8, !dbg !587
  store double %53, double* %15, align 8, !dbg !586
  %54 = load double, double* %13, align 8, !dbg !588
  %55 = load double, double* %10, align 8, !dbg !589
  %56 = fmul double %54, %55, !dbg !590
  %57 = load double, double* %11, align 8, !dbg !591
  %58 = fsub double %56, %57, !dbg !592
  %59 = load i32, i32* %9, align 4, !dbg !593
  %60 = sext i32 %59 to i64, !dbg !594
  %61 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !594
  %62 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %61, i32 0, i32 0, !dbg !595
  %63 = load double*, double** %62, align 8, !dbg !595
  %64 = getelementptr inbounds double, double* %63, i64 %60, !dbg !594
  %65 = load double, double* %64, align 8, !dbg !594
  %66 = fadd double %58, %65, !dbg !596
  store double %66, double* %10, align 8, !dbg !597
  %67 = load double, double* %15, align 8, !dbg !598
  store double %67, double* %11, align 8, !dbg !599
  br label %68, !dbg !600

; <label>:68:                                     ; preds = %52
  %69 = load i32, i32* %9, align 4, !dbg !601
  %70 = add nsw i32 %69, -1, !dbg !601
  store i32 %70, i32* %9, align 4, !dbg !601
  br label %49, !dbg !603, !llvm.loop !604

; <label>:71:                                     ; preds = %49
  %72 = load double, double* %12, align 8, !dbg !606
  %73 = load double, double* %10, align 8, !dbg !607
  %74 = fmul double %72, %73, !dbg !608
  %75 = load double, double* %11, align 8, !dbg !609
  %76 = fsub double %74, %75, !dbg !610
  %77 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !611
  %78 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %77, i32 0, i32 0, !dbg !612
  %79 = load double*, double** %78, align 8, !dbg !612
  %80 = getelementptr inbounds double, double* %79, i64 0, !dbg !611
  %81 = load double, double* %80, align 8, !dbg !611
  %82 = fmul double 5.000000e-01, %81, !dbg !613
  %83 = fadd double %76, %82, !dbg !614
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !615
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !616
  store double %83, double* %85, align 8, !dbg !617
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !618
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !619
  %88 = load double, double* %87, align 8, !dbg !619
  %89 = call double @fabs(double %88) #1, !dbg !620
  %90 = fmul double 0x3CB0000000000000, %89, !dbg !621
  %91 = load i32, i32* %14, align 4, !dbg !622
  %92 = sext i32 %91 to i64, !dbg !623
  %93 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %5, align 8, !dbg !623
  %94 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %93, i32 0, i32 0, !dbg !624
  %95 = load double*, double** %94, align 8, !dbg !624
  %96 = getelementptr inbounds double, double* %95, i64 %92, !dbg !623
  %97 = load double, double* %96, align 8, !dbg !623
  %98 = call double @fabs(double %97) #1, !dbg !625
  %99 = fadd double %90, %98, !dbg !627
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !628
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 1, !dbg !629
  store double %99, double* %101, align 8, !dbg !630
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
  br i1 %20, label %21, label %59, !dbg !642

; <label>:21:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !643, metadata !139), !dbg !645
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !646, metadata !139), !dbg !647
  call void @llvm.dbg.declare(metadata i32* %10, metadata !648, metadata !139), !dbg !649
  %22 = load double, double* %5, align 8, !dbg !650
  %23 = load i32, i32* %6, align 4, !dbg !651
  %24 = call i32 @airy_deriv_mod_phase(double %22, i32 %23, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !652
  store i32 %24, i32* %10, align 4, !dbg !649
  call void @llvm.dbg.declare(metadata double* %11, metadata !653, metadata !139), !dbg !654
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !655
  %26 = load double, double* %25, align 8, !dbg !655
  %27 = call double @cos(double %26) #6, !dbg !656
  store double %27, double* %11, align 8, !dbg !654
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !657
  %29 = load double, double* %28, align 8, !dbg !657
  %30 = load double, double* %11, align 8, !dbg !658
  %31 = fmul double %29, %30, !dbg !659
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !660
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !661
  store double %31, double* %33, align 8, !dbg !662
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !663
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !664
  %36 = load double, double* %35, align 8, !dbg !664
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !665
  %38 = load double, double* %37, align 8, !dbg !665
  %39 = fmul double %36, %38, !dbg !666
  %40 = call double @fabs(double %39) #1, !dbg !667
  %41 = load double, double* %11, align 8, !dbg !668
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !669
  %43 = load double, double* %42, align 8, !dbg !669
  %44 = fmul double %41, %43, !dbg !670
  %45 = call double @fabs(double %44) #1, !dbg !671
  %46 = fadd double %40, %45, !dbg !673
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !674
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !675
  store double %46, double* %48, align 8, !dbg !676
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !677
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !678
  %51 = load double, double* %50, align 8, !dbg !678
  %52 = call double @fabs(double %51) #1, !dbg !679
  %53 = fmul double 0x3CB0000000000000, %52, !dbg !680
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !681
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !682
  %56 = load double, double* %55, align 8, !dbg !683
  %57 = fadd double %56, %53, !dbg !683
  store double %57, double* %55, align 8, !dbg !683
  %58 = load i32, i32* %10, align 4, !dbg !684
  store i32 %58, i32* %4, align 4, !dbg !685
  br label %161, !dbg !685

; <label>:59:                                     ; preds = %3
  %60 = load double, double* %5, align 8, !dbg !686
  %61 = fcmp olt double %60, 1.000000e+00, !dbg !688
  br i1 %61, label %62, label %108, !dbg !689

; <label>:62:                                     ; preds = %59
  call void @llvm.dbg.declare(metadata double* %12, metadata !690, metadata !139), !dbg !692
  %63 = load double, double* %5, align 8, !dbg !693
  %64 = load double, double* %5, align 8, !dbg !694
  %65 = fmul double %63, %64, !dbg !695
  %66 = load double, double* %5, align 8, !dbg !696
  %67 = fmul double %65, %66, !dbg !697
  store double %67, double* %12, align 8, !dbg !692
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !698, metadata !139), !dbg !699
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !700, metadata !139), !dbg !701
  %68 = load double, double* %12, align 8, !dbg !702
  %69 = load i32, i32* %6, align 4, !dbg !703
  %70 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aif_cs, double %68, i32 %69, %struct.gsl_sf_result_struct* %13), !dbg !704
  %71 = load double, double* %12, align 8, !dbg !705
  %72 = load i32, i32* %6, align 4, !dbg !706
  %73 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @aig_cs, double %71, i32 %72, %struct.gsl_sf_result_struct* %14), !dbg !707
  %74 = load double, double* %5, align 8, !dbg !708
  %75 = load double, double* %5, align 8, !dbg !709
  %76 = fmul double %74, %75, !dbg !710
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !711
  %78 = load double, double* %77, align 8, !dbg !711
  %79 = fadd double 1.250000e-01, %78, !dbg !712
  %80 = fmul double %76, %79, !dbg !713
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !714
  %82 = load double, double* %81, align 8, !dbg !714
  %83 = fsub double %80, %82, !dbg !715
  %84 = fsub double %83, 2.500000e-01, !dbg !716
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !717
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !718
  store double %84, double* %86, align 8, !dbg !719
  %87 = load double, double* %5, align 8, !dbg !720
  %88 = load double, double* %5, align 8, !dbg !721
  %89 = fmul double %87, %88, !dbg !722
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !723
  %91 = load double, double* %90, align 8, !dbg !723
  %92 = fmul double %89, %91, !dbg !724
  %93 = call double @fabs(double %92) #1, !dbg !725
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !726
  %95 = load double, double* %94, align 8, !dbg !726
  %96 = fadd double %93, %95, !dbg !727
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !728
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !729
  store double %96, double* %98, align 8, !dbg !730
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !731
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 0, !dbg !732
  %101 = load double, double* %100, align 8, !dbg !732
  %102 = call double @fabs(double %101) #1, !dbg !733
  %103 = fmul double 0x3CB0000000000000, %102, !dbg !734
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !735
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 1, !dbg !736
  %106 = load double, double* %105, align 8, !dbg !737
  %107 = fadd double %106, %103, !dbg !737
  store double %107, double* %105, align 8, !dbg !737
  store i32 0, i32* %4, align 4, !dbg !738
  br label %161, !dbg !738

; <label>:108:                                    ; preds = %59
  %109 = load double, double* %5, align 8, !dbg !739
  %110 = load double, double* %5, align 8, !dbg !741
  %111 = fmul double %109, %110, !dbg !742
  %112 = load double, double* %5, align 8, !dbg !743
  %113 = fmul double %111, %112, !dbg !744
  %114 = fcmp olt double %113, 0x41313A9357D08D7F, !dbg !745
  br i1 %114, label %115, label %150, !dbg !746

; <label>:115:                                    ; preds = %108
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !747, metadata !139), !dbg !749
  call void @llvm.dbg.declare(metadata double* %16, metadata !750, metadata !139), !dbg !751
  %116 = load double, double* %5, align 8, !dbg !752
  %117 = fmul double -2.000000e+00, %116, !dbg !753
  %118 = load double, double* %5, align 8, !dbg !754
  %119 = call double @sqrt(double %118) #6, !dbg !755
  %120 = fmul double %117, %119, !dbg !756
  %121 = fdiv double %120, 3.000000e+00, !dbg !757
  store double %121, double* %16, align 8, !dbg !751
  call void @llvm.dbg.declare(metadata i32* %17, metadata !758, metadata !139), !dbg !760
  %122 = load double, double* %5, align 8, !dbg !761
  %123 = load i32, i32* %6, align 4, !dbg !762
  %124 = call i32 @gsl_sf_airy_Ai_deriv_scaled_e(double %122, i32 %123, %struct.gsl_sf_result_struct* %15), !dbg !763
  store i32 %124, i32* %17, align 4, !dbg !760
  call void @llvm.dbg.declare(metadata i32* %18, metadata !764, metadata !139), !dbg !765
  %125 = load double, double* %16, align 8, !dbg !766
  %126 = load double, double* %16, align 8, !dbg !767
  %127 = fmul double %126, 0x3CB0000000000000, !dbg !768
  %128 = call double @fabs(double %127) #1, !dbg !769
  %129 = fmul double 1.500000e+00, %128, !dbg !770
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !771
  %131 = load double, double* %130, align 8, !dbg !771
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !772
  %133 = load double, double* %132, align 8, !dbg !772
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !773
  %135 = call i32 @gsl_sf_exp_mult_err_e(double %125, double %129, double %131, double %133, %struct.gsl_sf_result_struct* %134), !dbg !774
  store i32 %135, i32* %18, align 4, !dbg !765
  %136 = load i32, i32* %18, align 4, !dbg !776
  %137 = icmp ne i32 %136, 0, !dbg !776
  br i1 %137, label %138, label %140, !dbg !776

; <label>:138:                                    ; preds = %115
  %139 = load i32, i32* %18, align 4, !dbg !777
  br label %148, !dbg !777

; <label>:140:                                    ; preds = %115
  %141 = load i32, i32* %17, align 4, !dbg !778
  %142 = icmp ne i32 %141, 0, !dbg !778
  br i1 %142, label %143, label %145, !dbg !778

; <label>:143:                                    ; preds = %140
  %144 = load i32, i32* %17, align 4, !dbg !780
  br label %146, !dbg !780

; <label>:145:                                    ; preds = %140
  br label %146, !dbg !782

; <label>:146:                                    ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 0, %145 ], !dbg !784
  br label %148, !dbg !784

; <label>:148:                                    ; preds = %146, %138
  %149 = phi i32 [ %139, %138 ], [ %147, %146 ], !dbg !786
  store i32 %149, i32* %4, align 4, !dbg !788
  br label %161, !dbg !788

; <label>:150:                                    ; preds = %108
  br label %151, !dbg !789, !llvm.loop !791

; <label>:151:                                    ; preds = %150
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !792
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !792
  store double 0.000000e+00, double* %153, align 8, !dbg !792
  %154 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !792
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %154, i32 0, i32 1, !dbg !792
  store double 0x10000000000000, double* %155, align 8, !dbg !792
  br label %156, !dbg !792, !llvm.loop !795

; <label>:156:                                    ; preds = %151
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 732, i32 15), !dbg !797
  store i32 15, i32* %4, align 4, !dbg !797
  br label %161, !dbg !797
                                                  ; No predecessors!
  br label %158, !dbg !800

; <label>:158:                                    ; preds = %157
  br label %159

; <label>:159:                                    ; preds = %158
  br label %160

; <label>:160:                                    ; preds = %159
  br label %161

; <label>:161:                                    ; preds = %21, %62, %148, %156, %160
  %162 = load i32, i32* %4, align 4, !dbg !802
  ret i32 %162, !dbg !802
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
  br i1 %32, label %33, label %71, !dbg !817

; <label>:33:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !818, metadata !139), !dbg !820
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !821, metadata !139), !dbg !822
  call void @llvm.dbg.declare(metadata i32* %12, metadata !823, metadata !139), !dbg !824
  %34 = load double, double* %5, align 8, !dbg !825
  %35 = load i32, i32* %6, align 4, !dbg !826
  %36 = call i32 @airy_deriv_mod_phase(double %34, i32 %35, %struct.gsl_sf_result_struct* %10, %struct.gsl_sf_result_struct* %11), !dbg !827
  store i32 %36, i32* %12, align 4, !dbg !824
  call void @llvm.dbg.declare(metadata double* %13, metadata !828, metadata !139), !dbg !829
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !830
  %38 = load double, double* %37, align 8, !dbg !830
  %39 = call double @sin(double %38) #6, !dbg !831
  store double %39, double* %13, align 8, !dbg !829
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !832
  %41 = load double, double* %40, align 8, !dbg !832
  %42 = load double, double* %13, align 8, !dbg !833
  %43 = fmul double %41, %42, !dbg !834
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !835
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !836
  store double %43, double* %45, align 8, !dbg !837
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !838
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !839
  %48 = load double, double* %47, align 8, !dbg !839
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !840
  %50 = load double, double* %49, align 8, !dbg !840
  %51 = fmul double %48, %50, !dbg !841
  %52 = call double @fabs(double %51) #1, !dbg !842
  %53 = load double, double* %13, align 8, !dbg !843
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !844
  %55 = load double, double* %54, align 8, !dbg !844
  %56 = fmul double %53, %55, !dbg !845
  %57 = call double @fabs(double %56) #1, !dbg !846
  %58 = fadd double %52, %57, !dbg !848
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !849
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 1, !dbg !850
  store double %58, double* %60, align 8, !dbg !851
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !852
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !853
  %63 = load double, double* %62, align 8, !dbg !853
  %64 = call double @fabs(double %63) #1, !dbg !854
  %65 = fmul double 0x3CB0000000000000, %64, !dbg !855
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !856
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 1, !dbg !857
  %68 = load double, double* %67, align 8, !dbg !858
  %69 = fadd double %68, %65, !dbg !858
  store double %69, double* %67, align 8, !dbg !858
  %70 = load i32, i32* %12, align 4, !dbg !859
  store i32 %70, i32* %4, align 4, !dbg !860
  br label %274, !dbg !860

; <label>:71:                                     ; preds = %3
  %72 = load double, double* %5, align 8, !dbg !861
  %73 = fcmp olt double %72, 1.000000e+00, !dbg !863
  br i1 %73, label %74, label %139, !dbg !864

; <label>:74:                                     ; preds = %71
  call void @llvm.dbg.declare(metadata double* %14, metadata !865, metadata !139), !dbg !867
  %75 = load double, double* %5, align 8, !dbg !868
  %76 = load double, double* %5, align 8, !dbg !869
  %77 = fmul double %75, %76, !dbg !870
  %78 = load double, double* %5, align 8, !dbg !871
  %79 = fmul double %77, %78, !dbg !872
  store double %79, double* %14, align 8, !dbg !867
  call void @llvm.dbg.declare(metadata double* %15, metadata !873, metadata !139), !dbg !874
  %80 = load double, double* %5, align 8, !dbg !875
  %81 = load double, double* %5, align 8, !dbg !876
  %82 = fmul double %80, %81, !dbg !877
  store double %82, double* %15, align 8, !dbg !874
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !878, metadata !139), !dbg !879
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !880, metadata !139), !dbg !881
  %83 = load double, double* %14, align 8, !dbg !882
  %84 = load i32, i32* %6, align 4, !dbg !883
  %85 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif_cs, double %83, i32 %84, %struct.gsl_sf_result_struct* %16), !dbg !884
  %86 = load double, double* %14, align 8, !dbg !885
  %87 = load i32, i32* %6, align 4, !dbg !886
  %88 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big_cs, double %86, i32 %87, %struct.gsl_sf_result_struct* %17), !dbg !887
  %89 = load double, double* %15, align 8, !dbg !888
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !889
  %91 = load double, double* %90, align 8, !dbg !889
  %92 = fadd double %91, 2.500000e-01, !dbg !890
  %93 = fmul double %89, %92, !dbg !891
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !892
  %95 = load double, double* %94, align 8, !dbg !892
  %96 = fadd double %93, %95, !dbg !893
  %97 = fadd double %96, 5.000000e-01, !dbg !894
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !895
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 0, !dbg !896
  store double %97, double* %99, align 8, !dbg !897
  %100 = load double, double* %15, align 8, !dbg !898
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !899
  %102 = load double, double* %101, align 8, !dbg !899
  %103 = fmul double %100, %102, !dbg !900
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !901
  %105 = load double, double* %104, align 8, !dbg !901
  %106 = fadd double %103, %105, !dbg !902
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !903
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 1, !dbg !904
  store double %106, double* %108, align 8, !dbg !905
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !906
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !907
  %111 = load double, double* %110, align 8, !dbg !907
  %112 = call double @fabs(double %111) #1, !dbg !908
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !909
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !910
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 1, !dbg !911
  %116 = load double, double* %115, align 8, !dbg !912
  %117 = fadd double %116, %113, !dbg !912
  store double %117, double* %115, align 8, !dbg !912
  %118 = load double, double* %5, align 8, !dbg !913
  %119 = fcmp ogt double %118, 0x3DC428A2F98D7292, !dbg !915
  br i1 %119, label %120, label %138, !dbg !916

; <label>:120:                                    ; preds = %74
  call void @llvm.dbg.declare(metadata double* %18, metadata !917, metadata !139), !dbg !919
  %121 = load double, double* %5, align 8, !dbg !920
  %122 = fmul double -2.000000e+00, %121, !dbg !921
  %123 = load double, double* %5, align 8, !dbg !922
  %124 = call double @sqrt(double %123) #6, !dbg !923
  %125 = fmul double %122, %124, !dbg !924
  %126 = fdiv double %125, 3.000000e+00, !dbg !925
  %127 = call double @exp(double %126) #6, !dbg !926
  store double %127, double* %18, align 8, !dbg !919
  %128 = load double, double* %18, align 8, !dbg !928
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !929
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 0, !dbg !930
  %131 = load double, double* %130, align 8, !dbg !931
  %132 = fmul double %131, %128, !dbg !931
  store double %132, double* %130, align 8, !dbg !931
  %133 = load double, double* %18, align 8, !dbg !932
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !933
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 1, !dbg !934
  %136 = load double, double* %135, align 8, !dbg !935
  %137 = fmul double %136, %133, !dbg !935
  store double %137, double* %135, align 8, !dbg !935
  br label %138, !dbg !936

; <label>:138:                                    ; preds = %120, %74
  store i32 0, i32* %4, align 4, !dbg !937
  br label %274, !dbg !937

; <label>:139:                                    ; preds = %71
  %140 = load double, double* %5, align 8, !dbg !938
  %141 = fcmp olt double %140, 2.000000e+00, !dbg !940
  br i1 %141, label %142, label %201, !dbg !941

; <label>:142:                                    ; preds = %139
  call void @llvm.dbg.declare(metadata double* %19, metadata !942, metadata !139), !dbg !944
  %143 = load double, double* %5, align 8, !dbg !945
  %144 = fmul double 2.000000e+00, %143, !dbg !946
  %145 = load double, double* %5, align 8, !dbg !947
  %146 = fmul double %144, %145, !dbg !948
  %147 = load double, double* %5, align 8, !dbg !949
  %148 = fmul double %146, %147, !dbg !950
  %149 = fsub double %148, 9.000000e+00, !dbg !951
  %150 = fdiv double %149, 7.000000e+00, !dbg !952
  store double %150, double* %19, align 8, !dbg !944
  call void @llvm.dbg.declare(metadata double* %20, metadata !953, metadata !139), !dbg !954
  %151 = load double, double* %5, align 8, !dbg !955
  %152 = fmul double -2.000000e+00, %151, !dbg !956
  %153 = load double, double* %5, align 8, !dbg !957
  %154 = call double @sqrt(double %153) #6, !dbg !958
  %155 = fmul double %152, %154, !dbg !959
  %156 = fdiv double %155, 3.000000e+00, !dbg !960
  %157 = call double @exp(double %156) #6, !dbg !961
  store double %157, double* %20, align 8, !dbg !954
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !963, metadata !139), !dbg !964
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !965, metadata !139), !dbg !966
  %158 = load double, double* %19, align 8, !dbg !967
  %159 = load i32, i32* %6, align 4, !dbg !968
  %160 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif2_cs, double %158, i32 %159, %struct.gsl_sf_result_struct* %21), !dbg !969
  %161 = load double, double* %19, align 8, !dbg !970
  %162 = load i32, i32* %6, align 4, !dbg !971
  %163 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big2_cs, double %161, i32 %162, %struct.gsl_sf_result_struct* %22), !dbg !972
  %164 = load double, double* %20, align 8, !dbg !973
  %165 = load double, double* %5, align 8, !dbg !974
  %166 = load double, double* %5, align 8, !dbg !975
  %167 = fmul double %165, %166, !dbg !976
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !977
  %169 = load double, double* %168, align 8, !dbg !977
  %170 = fadd double 2.500000e-01, %169, !dbg !978
  %171 = fmul double %167, %170, !dbg !979
  %172 = fadd double %171, 5.000000e-01, !dbg !980
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !981
  %174 = load double, double* %173, align 8, !dbg !981
  %175 = fadd double %172, %174, !dbg !982
  %176 = fmul double %164, %175, !dbg !983
  %177 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !984
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %177, i32 0, i32 0, !dbg !985
  store double %176, double* %178, align 8, !dbg !986
  %179 = load double, double* %20, align 8, !dbg !987
  %180 = load double, double* %5, align 8, !dbg !988
  %181 = load double, double* %5, align 8, !dbg !989
  %182 = fmul double %180, %181, !dbg !990
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !991
  %184 = load double, double* %183, align 8, !dbg !991
  %185 = fmul double %182, %184, !dbg !992
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !993
  %187 = load double, double* %186, align 8, !dbg !993
  %188 = fadd double %185, %187, !dbg !994
  %189 = fmul double %179, %188, !dbg !995
  %190 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !996
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %190, i32 0, i32 1, !dbg !997
  store double %189, double* %191, align 8, !dbg !998
  %192 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !999
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %192, i32 0, i32 0, !dbg !1000
  %194 = load double, double* %193, align 8, !dbg !1000
  %195 = call double @fabs(double %194) #1, !dbg !1001
  %196 = fmul double 0x3CB0000000000000, %195, !dbg !1002
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1003
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %197, i32 0, i32 1, !dbg !1004
  %199 = load double, double* %198, align 8, !dbg !1005
  %200 = fadd double %199, %196, !dbg !1005
  store double %200, double* %198, align 8, !dbg !1005
  store i32 0, i32* %4, align 4, !dbg !1006
  br label %274, !dbg !1006

; <label>:201:                                    ; preds = %139
  %202 = load double, double* %5, align 8, !dbg !1007
  %203 = fcmp olt double %202, 4.000000e+00, !dbg !1009
  br i1 %203, label %204, label %239, !dbg !1010

; <label>:204:                                    ; preds = %201
  call void @llvm.dbg.declare(metadata double* %23, metadata !1011, metadata !139), !dbg !1013
  %205 = load double, double* %5, align 8, !dbg !1014
  %206 = call double @sqrt(double %205) #6, !dbg !1015
  store double %206, double* %23, align 8, !dbg !1013
  call void @llvm.dbg.declare(metadata double* %24, metadata !1016, metadata !139), !dbg !1017
  %207 = load double, double* %5, align 8, !dbg !1018
  %208 = load double, double* %23, align 8, !dbg !1019
  %209 = fmul double %207, %208, !dbg !1020
  %210 = fdiv double 0x4021805A83B66B50, %209, !dbg !1021
  %211 = fadd double %210, 0xC000C02D41DB35A8, !dbg !1022
  store double %211, double* %24, align 8, !dbg !1017
  call void @llvm.dbg.declare(metadata double* %25, metadata !1023, metadata !139), !dbg !1024
  %212 = load double, double* %23, align 8, !dbg !1025
  %213 = call double @sqrt(double %212) #6, !dbg !1026
  store double %213, double* %25, align 8, !dbg !1024
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %26, metadata !1027, metadata !139), !dbg !1028
  %214 = load double, double* %24, align 8, !dbg !1029
  %215 = load i32, i32* %6, align 4, !dbg !1030
  %216 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bip1_cs, double %214, i32 %215, %struct.gsl_sf_result_struct* %26), !dbg !1031
  %217 = load double, double* %25, align 8, !dbg !1032
  %218 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !1033
  %219 = load double, double* %218, align 8, !dbg !1033
  %220 = fadd double 6.250000e-01, %219, !dbg !1034
  %221 = fmul double %217, %220, !dbg !1035
  %222 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1036
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %222, i32 0, i32 0, !dbg !1037
  store double %221, double* %223, align 8, !dbg !1038
  %224 = load double, double* %25, align 8, !dbg !1039
  %225 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !1040
  %226 = load double, double* %225, align 8, !dbg !1040
  %227 = fmul double %224, %226, !dbg !1041
  %228 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1042
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %228, i32 0, i32 1, !dbg !1043
  store double %227, double* %229, align 8, !dbg !1044
  %230 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1045
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %230, i32 0, i32 0, !dbg !1046
  %232 = load double, double* %231, align 8, !dbg !1046
  %233 = call double @fabs(double %232) #1, !dbg !1047
  %234 = fmul double 0x3CB0000000000000, %233, !dbg !1048
  %235 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1049
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %235, i32 0, i32 1, !dbg !1050
  %237 = load double, double* %236, align 8, !dbg !1051
  %238 = fadd double %237, %234, !dbg !1051
  store double %238, double* %236, align 8, !dbg !1051
  store i32 0, i32* %4, align 4, !dbg !1052
  br label %274, !dbg !1052

; <label>:239:                                    ; preds = %201
  call void @llvm.dbg.declare(metadata double* %27, metadata !1053, metadata !139), !dbg !1055
  %240 = load double, double* %5, align 8, !dbg !1056
  %241 = call double @sqrt(double %240) #6, !dbg !1057
  store double %241, double* %27, align 8, !dbg !1055
  call void @llvm.dbg.declare(metadata double* %28, metadata !1058, metadata !139), !dbg !1059
  %242 = load double, double* %5, align 8, !dbg !1060
  %243 = load double, double* %27, align 8, !dbg !1061
  %244 = fmul double %242, %243, !dbg !1062
  %245 = fdiv double 1.600000e+01, %244, !dbg !1063
  %246 = fsub double %245, 1.000000e+00, !dbg !1064
  store double %246, double* %28, align 8, !dbg !1059
  call void @llvm.dbg.declare(metadata double* %29, metadata !1065, metadata !139), !dbg !1066
  %247 = load double, double* %27, align 8, !dbg !1067
  %248 = call double @sqrt(double %247) #6, !dbg !1068
  store double %248, double* %29, align 8, !dbg !1066
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %30, metadata !1069, metadata !139), !dbg !1070
  %249 = load double, double* %28, align 8, !dbg !1071
  %250 = load i32, i32* %6, align 4, !dbg !1072
  %251 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bip2_cs, double %249, i32 %250, %struct.gsl_sf_result_struct* %30), !dbg !1073
  %252 = load double, double* %29, align 8, !dbg !1074
  %253 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !1075
  %254 = load double, double* %253, align 8, !dbg !1075
  %255 = fadd double 6.250000e-01, %254, !dbg !1076
  %256 = fmul double %252, %255, !dbg !1077
  %257 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1078
  %258 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %257, i32 0, i32 0, !dbg !1079
  store double %256, double* %258, align 8, !dbg !1080
  %259 = load double, double* %29, align 8, !dbg !1081
  %260 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !1082
  %261 = load double, double* %260, align 8, !dbg !1082
  %262 = fmul double %259, %261, !dbg !1083
  %263 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1084
  %264 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %263, i32 0, i32 1, !dbg !1085
  store double %262, double* %264, align 8, !dbg !1086
  %265 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1087
  %266 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %265, i32 0, i32 0, !dbg !1088
  %267 = load double, double* %266, align 8, !dbg !1088
  %268 = call double @fabs(double %267) #1, !dbg !1089
  %269 = fmul double 0x3CB0000000000000, %268, !dbg !1090
  %270 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1091
  %271 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %270, i32 0, i32 1, !dbg !1092
  %272 = load double, double* %271, align 8, !dbg !1093
  %273 = fadd double %272, %269, !dbg !1093
  store double %273, double* %271, align 8, !dbg !1093
  store i32 0, i32* %4, align 4, !dbg !1094
  br label %274, !dbg !1094

; <label>:274:                                    ; preds = %239, %204, %142, %138, %33
  %275 = load i32, i32* %4, align 4, !dbg !1095
  ret i32 %275, !dbg !1095
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
  br i1 %24, label %25, label %63, !dbg !1106

; <label>:25:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1107, metadata !139), !dbg !1109
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !1110, metadata !139), !dbg !1111
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1112, metadata !139), !dbg !1113
  %26 = load double, double* %5, align 8, !dbg !1114
  %27 = load i32, i32* %6, align 4, !dbg !1115
  %28 = call i32 @airy_deriv_mod_phase(double %26, i32 %27, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !1116
  store i32 %28, i32* %10, align 4, !dbg !1113
  call void @llvm.dbg.declare(metadata double* %11, metadata !1117, metadata !139), !dbg !1118
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !1119
  %30 = load double, double* %29, align 8, !dbg !1119
  %31 = call double @sin(double %30) #6, !dbg !1120
  store double %31, double* %11, align 8, !dbg !1118
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1121
  %33 = load double, double* %32, align 8, !dbg !1121
  %34 = load double, double* %11, align 8, !dbg !1122
  %35 = fmul double %33, %34, !dbg !1123
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1124
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !1125
  store double %35, double* %37, align 8, !dbg !1126
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1127
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !1128
  %40 = load double, double* %39, align 8, !dbg !1128
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !1129
  %42 = load double, double* %41, align 8, !dbg !1129
  %43 = fmul double %40, %42, !dbg !1130
  %44 = call double @fabs(double %43) #1, !dbg !1131
  %45 = load double, double* %11, align 8, !dbg !1132
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1133
  %47 = load double, double* %46, align 8, !dbg !1133
  %48 = fmul double %45, %47, !dbg !1134
  %49 = call double @fabs(double %48) #1, !dbg !1135
  %50 = fadd double %44, %49, !dbg !1137
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1138
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !1139
  store double %50, double* %52, align 8, !dbg !1140
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1141
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !1142
  %55 = load double, double* %54, align 8, !dbg !1142
  %56 = call double @fabs(double %55) #1, !dbg !1143
  %57 = fmul double 0x3CB0000000000000, %56, !dbg !1144
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1145
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !1146
  %60 = load double, double* %59, align 8, !dbg !1147
  %61 = fadd double %60, %57, !dbg !1147
  store double %61, double* %59, align 8, !dbg !1147
  %62 = load i32, i32* %10, align 4, !dbg !1148
  store i32 %62, i32* %4, align 4, !dbg !1149
  br label %211, !dbg !1149

; <label>:63:                                     ; preds = %3
  %64 = load double, double* %5, align 8, !dbg !1150
  %65 = fcmp olt double %64, 1.000000e+00, !dbg !1152
  br i1 %65, label %66, label %110, !dbg !1153

; <label>:66:                                     ; preds = %63
  call void @llvm.dbg.declare(metadata double* %12, metadata !1154, metadata !139), !dbg !1156
  %67 = load double, double* %5, align 8, !dbg !1157
  %68 = load double, double* %5, align 8, !dbg !1158
  %69 = fmul double %67, %68, !dbg !1159
  %70 = load double, double* %5, align 8, !dbg !1160
  %71 = fmul double %69, %70, !dbg !1161
  store double %71, double* %12, align 8, !dbg !1156
  call void @llvm.dbg.declare(metadata double* %13, metadata !1162, metadata !139), !dbg !1163
  %72 = load double, double* %5, align 8, !dbg !1164
  %73 = load double, double* %5, align 8, !dbg !1165
  %74 = fmul double %72, %73, !dbg !1166
  store double %74, double* %13, align 8, !dbg !1163
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1167, metadata !139), !dbg !1168
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1169, metadata !139), !dbg !1170
  %75 = load double, double* %12, align 8, !dbg !1171
  %76 = load i32, i32* %6, align 4, !dbg !1172
  %77 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif_cs, double %75, i32 %76, %struct.gsl_sf_result_struct* %14), !dbg !1173
  %78 = load double, double* %12, align 8, !dbg !1174
  %79 = load i32, i32* %6, align 4, !dbg !1175
  %80 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big_cs, double %78, i32 %79, %struct.gsl_sf_result_struct* %15), !dbg !1176
  %81 = load double, double* %13, align 8, !dbg !1177
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1178
  %83 = load double, double* %82, align 8, !dbg !1178
  %84 = fadd double %83, 2.500000e-01, !dbg !1179
  %85 = fmul double %81, %84, !dbg !1180
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1181
  %87 = load double, double* %86, align 8, !dbg !1181
  %88 = fadd double %85, %87, !dbg !1182
  %89 = fadd double %88, 5.000000e-01, !dbg !1183
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1184
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !1185
  store double %89, double* %91, align 8, !dbg !1186
  %92 = load double, double* %13, align 8, !dbg !1187
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1188
  %94 = load double, double* %93, align 8, !dbg !1188
  %95 = fmul double %92, %94, !dbg !1189
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !1190
  %97 = load double, double* %96, align 8, !dbg !1190
  %98 = fadd double %95, %97, !dbg !1191
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1192
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !1193
  store double %98, double* %100, align 8, !dbg !1194
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1195
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 0, !dbg !1196
  %103 = load double, double* %102, align 8, !dbg !1196
  %104 = call double @fabs(double %103) #1, !dbg !1197
  %105 = fmul double 0x3CB0000000000000, %104, !dbg !1198
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1199
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 1, !dbg !1200
  %108 = load double, double* %107, align 8, !dbg !1201
  %109 = fadd double %108, %105, !dbg !1201
  store double %109, double* %107, align 8, !dbg !1201
  store i32 0, i32* %4, align 4, !dbg !1202
  br label %211, !dbg !1202

; <label>:110:                                    ; preds = %63
  %111 = load double, double* %5, align 8, !dbg !1203
  %112 = fcmp olt double %111, 2.000000e+00, !dbg !1205
  br i1 %112, label %113, label %161, !dbg !1206

; <label>:113:                                    ; preds = %110
  call void @llvm.dbg.declare(metadata double* %16, metadata !1207, metadata !139), !dbg !1209
  %114 = load double, double* %5, align 8, !dbg !1210
  %115 = fmul double 2.000000e+00, %114, !dbg !1211
  %116 = load double, double* %5, align 8, !dbg !1212
  %117 = fmul double %115, %116, !dbg !1213
  %118 = load double, double* %5, align 8, !dbg !1214
  %119 = fmul double %117, %118, !dbg !1215
  %120 = fsub double %119, 9.000000e+00, !dbg !1216
  %121 = fdiv double %120, 7.000000e+00, !dbg !1217
  store double %121, double* %16, align 8, !dbg !1209
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !1218, metadata !139), !dbg !1219
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !1220, metadata !139), !dbg !1221
  %122 = load double, double* %16, align 8, !dbg !1222
  %123 = load i32, i32* %6, align 4, !dbg !1223
  %124 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @bif2_cs, double %122, i32 %123, %struct.gsl_sf_result_struct* %17), !dbg !1224
  %125 = load double, double* %16, align 8, !dbg !1225
  %126 = load i32, i32* %6, align 4, !dbg !1226
  %127 = call i32 @cheb_eval_mode_e(%struct.cheb_series_struct* @big2_cs, double %125, i32 %126, %struct.gsl_sf_result_struct* %18), !dbg !1227
  %128 = load double, double* %5, align 8, !dbg !1228
  %129 = load double, double* %5, align 8, !dbg !1229
  %130 = fmul double %128, %129, !dbg !1230
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1231
  %132 = load double, double* %131, align 8, !dbg !1231
  %133 = fadd double %132, 2.500000e-01, !dbg !1232
  %134 = fmul double %130, %133, !dbg !1233
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1234
  %136 = load double, double* %135, align 8, !dbg !1234
  %137 = fadd double %134, %136, !dbg !1235
  %138 = fadd double %137, 5.000000e-01, !dbg !1236
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1237
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 0, !dbg !1238
  store double %138, double* %140, align 8, !dbg !1239
  %141 = load double, double* %5, align 8, !dbg !1240
  %142 = load double, double* %5, align 8, !dbg !1241
  %143 = fmul double %141, %142, !dbg !1242
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !1243
  %145 = load double, double* %144, align 8, !dbg !1243
  %146 = fmul double %143, %145, !dbg !1244
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !1245
  %148 = load double, double* %147, align 8, !dbg !1245
  %149 = fadd double %146, %148, !dbg !1246
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1247
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 1, !dbg !1248
  store double %149, double* %151, align 8, !dbg !1249
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1250
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !1251
  %154 = load double, double* %153, align 8, !dbg !1251
  %155 = call double @fabs(double %154) #1, !dbg !1252
  %156 = fmul double 0x3CB0000000000000, %155, !dbg !1253
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1254
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 1, !dbg !1255
  %159 = load double, double* %158, align 8, !dbg !1256
  %160 = fadd double %159, %156, !dbg !1256
  store double %160, double* %158, align 8, !dbg !1256
  store i32 0, i32* %4, align 4, !dbg !1257
  br label %211, !dbg !1257

; <label>:161:                                    ; preds = %110
  %162 = load double, double* %5, align 8, !dbg !1258
  %163 = fcmp olt double %162, 0x6A9965FEA53D6D85, !dbg !1260
  br i1 %163, label %164, label %199, !dbg !1261

; <label>:164:                                    ; preds = %161
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !1262, metadata !139), !dbg !1264
  call void @llvm.dbg.declare(metadata double* %20, metadata !1265, metadata !139), !dbg !1266
  %165 = load double, double* %5, align 8, !dbg !1267
  %166 = load double, double* %5, align 8, !dbg !1268
  %167 = call double @sqrt(double %166) #6, !dbg !1269
  %168 = fmul double %165, %167, !dbg !1270
  %169 = fdiv double %168, 3.000000e+00, !dbg !1271
  %170 = fmul double 2.000000e+00, %169, !dbg !1272
  store double %170, double* %20, align 8, !dbg !1266
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1273, metadata !139), !dbg !1274
  %171 = load double, double* %5, align 8, !dbg !1275
  %172 = load i32, i32* %6, align 4, !dbg !1276
  %173 = call i32 @gsl_sf_airy_Bi_deriv_scaled_e(double %171, i32 %172, %struct.gsl_sf_result_struct* %19), !dbg !1277
  store i32 %173, i32* %21, align 4, !dbg !1274
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1278, metadata !139), !dbg !1279
  %174 = load double, double* %20, align 8, !dbg !1280
  %175 = load double, double* %20, align 8, !dbg !1281
  %176 = fmul double %175, 0x3CB0000000000000, !dbg !1282
  %177 = call double @fabs(double %176) #1, !dbg !1283
  %178 = fmul double 1.500000e+00, %177, !dbg !1284
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1285
  %180 = load double, double* %179, align 8, !dbg !1285
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !1286
  %182 = load double, double* %181, align 8, !dbg !1286
  %183 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1287
  %184 = call i32 @gsl_sf_exp_mult_err_e(double %174, double %178, double %180, double %182, %struct.gsl_sf_result_struct* %183), !dbg !1288
  store i32 %184, i32* %22, align 4, !dbg !1279
  %185 = load i32, i32* %22, align 4, !dbg !1290
  %186 = icmp ne i32 %185, 0, !dbg !1290
  br i1 %186, label %187, label %189, !dbg !1290

; <label>:187:                                    ; preds = %164
  %188 = load i32, i32* %22, align 4, !dbg !1291
  br label %197, !dbg !1291

; <label>:189:                                    ; preds = %164
  %190 = load i32, i32* %21, align 4, !dbg !1292
  %191 = icmp ne i32 %190, 0, !dbg !1292
  br i1 %191, label %192, label %194, !dbg !1292

; <label>:192:                                    ; preds = %189
  %193 = load i32, i32* %21, align 4, !dbg !1294
  br label %195, !dbg !1294

; <label>:194:                                    ; preds = %189
  br label %195, !dbg !1296

; <label>:195:                                    ; preds = %194, %192
  %196 = phi i32 [ %193, %192 ], [ 0, %194 ], !dbg !1298
  br label %197, !dbg !1298

; <label>:197:                                    ; preds = %195, %187
  %198 = phi i32 [ %188, %187 ], [ %196, %195 ], !dbg !1300
  store i32 %198, i32* %4, align 4, !dbg !1302
  br label %211, !dbg !1302

; <label>:199:                                    ; preds = %161
  br label %200, !dbg !1303, !llvm.loop !1305

; <label>:200:                                    ; preds = %199
  %201 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1306
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %201, i32 0, i32 0, !dbg !1306
  store double 0x7FF0000000000000, double* %202, align 8, !dbg !1306
  %203 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1306
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %203, i32 0, i32 1, !dbg !1306
  store double 0x7FF0000000000000, double* %204, align 8, !dbg !1306
  br label %205, !dbg !1306, !llvm.loop !1309

; <label>:205:                                    ; preds = %200
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 860, i32 16), !dbg !1311
  store i32 16, i32* %4, align 4, !dbg !1311
  br label %211, !dbg !1311
                                                  ; No predecessors!
  br label %207, !dbg !1314

; <label>:207:                                    ; preds = %206
  br label %208

; <label>:208:                                    ; preds = %207
  br label %209

; <label>:209:                                    ; preds = %208
  br label %210

; <label>:210:                                    ; preds = %209
  br label %211

; <label>:211:                                    ; preds = %25, %66, %113, %197, %205, %210
  %212 = load i32, i32* %4, align 4, !dbg !1316
  ret i32 %212, !dbg !1316
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
  br i1 %12, label %13, label %19, !dbg !1325

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1329, !llvm.loop !1332

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1334
  call void @gsl_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 870, i32 %15), !dbg !1334
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1334
  %17 = load double, double* %16, align 8, !dbg !1334
  store double %17, double* %3, align 8, !dbg !1334
  br label %22, !dbg !1334
                                                  ; No predecessors!
  br label %19, !dbg !1337

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1339
  %21 = load double, double* %20, align 8, !dbg !1339
  store double %21, double* %3, align 8, !dbg !1339
  br label %22, !dbg !1339

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1341
  ret double %23, !dbg !1341
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
  br i1 %12, label %13, label %19, !dbg !1348

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1352, !llvm.loop !1355

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1357
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 875, i32 %15), !dbg !1357
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1357
  %17 = load double, double* %16, align 8, !dbg !1357
  store double %17, double* %3, align 8, !dbg !1357
  br label %22, !dbg !1357
                                                  ; No predecessors!
  br label %19, !dbg !1360

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1362
  %21 = load double, double* %20, align 8, !dbg !1362
  store double %21, double* %3, align 8, !dbg !1362
  br label %22, !dbg !1362

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1364
  ret double %23, !dbg !1364
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
  br i1 %12, label %13, label %19, !dbg !1371

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1375, !llvm.loop !1378

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1380
  call void @gsl_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 880, i32 %15), !dbg !1380
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1380
  %17 = load double, double* %16, align 8, !dbg !1380
  store double %17, double* %3, align 8, !dbg !1380
  br label %22, !dbg !1380
                                                  ; No predecessors!
  br label %19, !dbg !1383

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1385
  %21 = load double, double* %20, align 8, !dbg !1385
  store double %21, double* %3, align 8, !dbg !1385
  br label %22, !dbg !1385

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1387
  ret double %23, !dbg !1387
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
  br i1 %12, label %13, label %19, !dbg !1394

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1398, !llvm.loop !1401

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1403
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 885, i32 %15), !dbg !1403
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1403
  %17 = load double, double* %16, align 8, !dbg !1403
  store double %17, double* %3, align 8, !dbg !1403
  br label %22, !dbg !1403
                                                  ; No predecessors!
  br label %19, !dbg !1406

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1408
  %21 = load double, double* %20, align 8, !dbg !1408
  store double %21, double* %3, align 8, !dbg !1408
  br label %22, !dbg !1408

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1410
  ret double %23, !dbg !1410
}

declare i32 @GSL_MODE_PREC(i32) #5

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
