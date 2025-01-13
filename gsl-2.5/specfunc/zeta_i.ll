; ModuleID = 'zeta.ll'
source_filename = "zeta.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"zeta.c\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@hzeta_c = internal global [15 x double] [double 1.000000e+00, double 0x3FB5555555555555, double 0xBF56C16C16C16C17, double 0x3F01566ABC011567, double 0xBEABBD779334EF0B, double 0x3E566A8F2BF70EBE, double 0xBE022805D644267F, double 0x3DAD6DB2C4E09162, double 0xBD57DA4E1F79955C, double 0x3D0355871D652E9E, double 0xBCAF57D968CAACF1, double 0x3C5967E1F09C376F, double 0xBC0497D9033A2B5C, double 0x3BB0B132D7C6AD06, double 0xBB5B0F72D59F1C16], align 16
@gsl_sf_zeta_e.twopi_pow = internal constant [18 x double] [double 1.000000e+00, double 0x4196DD00C27647FF, double 0x434055D75DE0A95E, double 0x44E757AA965F2DED, double 0x4690AD7B4759B2E1, double 0x4837D4E683979E25, double 0x49E106F56347D804, double 0x4B8854C254E058A0, double 0x4D31624F8C5033BF, double 0x4ED8D74C1EF8E2BB, double 0x5081BF93D1F61206, double 0x52295C92422C84B2, double 0x53D21ECC79B693CA, double 0x5579E4A36BE79900, double 0x57228004002A44C3, double 0x58CA6F8E98555A40, double 0x5A72E3451A2CC2D7, double 0x5C1AFD6314065D22], align 16
@zeta_neg_int_table = internal global [50 x double] [double 0xBFB5555555555555, double 0x3F81111111111111, double 0xBF70410410410410, double 0x3F71111111111111, double 0xBF7F07C1F07C1F08, double 0x3F95995995995996, double 0xBFB5555555555555, double 0x3FDC5E5E5E5E5E5E, double 0xC0086E7F9B9FE6E8, double 0x403A74CA514CA515, double 0xC071975CC0ED7304, double 0x40AC2F0566566566, double 0xC0EAC572AAAAAAAB, double 0x412DC0B1A5CFBE16, double 0xC1731FAD7CBF3C00, double 0x41BC280563B8BCBD, double 0xC207892EDFDF5555, double 0x42562B8B44651D09, double 0xC2A76024C215D22B, double 0x42FB6C0DFED2955B, double 0xC351CCA39B77B027, double 0x43A97212D8CC1040, double 0xC403F0CB06B17E29, double 0x4461101D96823EE1, double 0xC4BFC474BDD53C20, double 0x452007DB56DB95DF, double 0xC5817C6DD28A9378, double 0x45E48DF88A383AD8, double 0xC649F7B3FA37F314, double 0x46B195C16C40D563, double 0xC7197922EAFB5D17, double 0x4783B0A43DEF5904, double 0xC7F035A171273534, double 0x485C5E89F1FD242E, double 0xC8CA575DD47B788A, double 0x4939E84A01AE153A, double 0xC9AAF26959307253, double 0x4A1D9890BC68EEDC, double 0xCA91231831C6CCBC, double 0x4B04E5B1C79769AD, double 0xCB7ACC2917790916, double 0x4BF20BD5E935FC86, double 0xCC697F9F572293EC, double 0x4CE2E083516087A9, double 0xCD5D41E650690E84, double 0x4DD7B59A0F58FFB7, double 0xCE5412709736939F, double 0x4ED1BC48BBC5CC50, double 0xCF50575EC3AB2234, double 0x4FCF5FE45963CAC2], align 16
@zetam1_pos_int_table = internal global [101 x double] [double -1.500000e+00, double 0.000000e+00, double 0x3FE4A34CC4A60FA6, double 0x3FC9DD002780310A, double 0x3FB51322AC7D8483, double 0x3FA2E831D94F99B7, double 0x3F91C26130249124, double 0x3F81196D0A679C47, double 0x3F70B36AF86396E9, double 0x3F6073E7B02D6AE0, double 0x3F504B8CE96EE5F8, double 0x3F40318DF2459954, double 0x3F3020A5B2CD3042, double 0x3F201593A1177BD6, double 0x3F100E4AF2B4E156, double 0x3F00097BCBF11BED, double 0x3EF0064CDEB22F0F, double 0x3EE0043073686681, double 0x3ED002C9953744CC, double 0x3EC001DB08F9BA4A, double 0x3EB0013C594466EA, double 0x3EA000D2BAB28121, double 0x3E90008C66CEC77D, double 0x3E80005D8F13858C, double 0x3E70003E59FFDE12, double 0x3E6000298EA55633, double 0x3E50001BB316CCDA, double 0x3E40001276B90845, double 0x3E30000C4ED05AE3, double 0x3E20000834601A87, double 0x3E100005782AAEBE, double 0x3E000003A56719B9, double 0x3DF000026E3F644F, double 0x3DE000019ED24201, double 0x3DD00001148AD653, double 0x3DC00000B85BE414, double 0x3DB000007AE797FF, double 0x3DA0000051EF8FFA, double 0x3D900000369F9FF9, double 0x3D800000246A5FFB, double 0x3D7000001846E551, double 0x3D600000102F40E1, double 0x3D5000000ACA29EB, double 0x3D4000000731709D, double 0x3D30000004CBA013, double 0x3D20000003326A8D, double 0x3D10000002219C49, double 0x3D000000016BBD7B, double 0x3CF0000000F27E4D, double 0x3CE0000000A1A986, double 0x3CD00000006BC658, double 0x3CC000000047D98F, double 0x3CB00000002FE65F, double 0x3CA00000001FEEEA, double 0x3C900000001549F1, double 0x3C800000000E314B, double 0x3C70000000097632, double 0x3C60000000064ECC, double 0x3C50000000043488, double 0x3C4000000002CDB0, double 0x3C3000000001DE75, double 0x3C20000000013EF9, double 0x3C1000000000D4A6, double 0x3C00000000008DC4, double 0x3BF0000000005E83, double 0x3BE0000000003F02, double 0x3BD0000000002A01, double 0x3BC0000000001C01, double 0x3BB00000000012AB, double 0x3BA0000000000C72, double 0x3B9000000000084C, double 0x3B80000000000588, double 0x3B700000000003B0, double 0x3B60000000000275, double 0x3B500000000001A4, double 0x3B40000000000118, double 0x3B300000000000BA, double 0x3B2000000000007C, double 0x3B10000000000053, double 0x3B00000000000037, double 0x3AF0000000000025, double 0x3AE0000000000019, double 0x3AD0000000000010, double 0x3AC000000000000B, double 0x3AB0000000000007, double 0x3AA0000000000005, double 0x3A90000000000003, double 0x3A80000000000002, double 0x3A70000000000001, double 0x3A60000000000001, double 0x3A50000000000001, double 0x3A40000000000000, double 0x3A30000000000000, double 0x3A20000000000000, double 0x3A10000000000000, double 0x3A00000000000000, double 0x39F0000000000000, double 0x39E0000000000000, double 0x39D0000000000000, double 0x39C0000000000000, double 0x39B0000000000000], align 16
@eta_pos_int_table = internal global [101 x double] [double 5.000000e-01, double 0x3FE62E42FEFA39EF, double 0x3FEA51A6625307D3, double 0x3FECD97007680932, double 0x3FEE4E17CADDBA7E, double 0x3FEF1B9AEBBBAA02, double 0x3FEF89A271351B65, double 0x3FEFC3541D58F7F7, double 0x3FEFE1240844E59F, double 0x3FEFF06373C87D3D, double 0x3FEFF821B3917D17, double 0x3FEFFC0B6063B242, double 0x3FEFFE03D433C2DB, double 0x3FEFFF0149247DD7, double 0x3FEFFF806E5402EA, double 0x3FEFFFC024EE9808, double 0x3FEFFFE00C59A431, double 0x3FEFFFF004206F38, double 0x3FEFFFF80160C9E9, double 0x3FEFFFFC0075C221, double 0x3FEFFFFE00274B24, double 0x3FEFFFFF000D1BAA, double 0x3FEFFFFF80045F36, double 0x3FEFFFFFC001753C, double 0x3FEFFFFFE0007C74, double 0x3FEFFFFFF000297F, double 0x3FEFFFFFF8000DD6, double 0x3FEFFFFFFC00049D, double 0x3FEFFFFFFE00018A, double 0x3FEFFFFFFF000083, double 0x3FEFFFFFFF80002C, double 0x3FEFFFFFFFC0000F, double 0x3FEFFFFFFFE00005, double 0x3FEFFFFFFFF00002, double 0x3FEFFFFFFFF80001, double 0x3FEFFFFFFFFC0000, double 0x3FEFFFFFFFFE0000, double 0x3FEFFFFFFFFF0000, double 0x3FEFFFFFFFFF8000, double 0x3FEFFFFFFFFFC000, double 0x3FEFFFFFFFFFE000, double 0x3FEFFFFFFFFFF000, double 0x3FEFFFFFFFFFF800, double 0x3FEFFFFFFFFFFC00, double 0x3FEFFFFFFFFFFE00, double 0x3FEFFFFFFFFFFF00, double 0x3FEFFFFFFFFFFF80, double 0x3FEFFFFFFFFFFFC0, double 0x3FEFFFFFFFFFFFE0, double 0x3FEFFFFFFFFFFFF0, double 0x3FEFFFFFFFFFFFF8, double 0x3FEFFFFFFFFFFFFC, double 0x3FEFFFFFFFFFFFFE, double 0x3FEFFFFFFFFFFFFF, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], align 16
@eta_neg_int_table = internal global [50 x double] [double 2.500000e-01, double -1.250000e-01, double 2.500000e-01, double -1.062500e+00, double 7.750000e+00, double -8.637500e+01, double 1.365250e+03, double 0xC0DC5E4200000000, double 0x41286E7980000000, double 0xC17A74C8AA000000, double 0x41D1975C7A900000, double 0xC22C2F054A276000, double 0x428AC572A3F94E00, double 0xC2EDC0B1A3F3B2FC, double 0x43531FAD7C72BD4A, double 0xC3BC2805639C94B7, double 0x4427892EDFD9730A, double 0xC4962B8B4463BA51, double 0x45076024C21574AA, double 0xC57B6C0DFED279EF, double 0x45F1CCA39B77ABB4, double 0xC6697212D8CC0EA9, double 0x46E3F0CB06B17DD9, double 0xC761101D96823ED0, double 0x47DFC474BDD53C18, double 0xC86007DB56DB95DE, double 0x48E17C6DD28A9378, double 0xC9648DF88A383AD8, double 0x49E9F7B3FA37F314, double 0xCA7195C16C40D563, double 0x4AF97922EAFB5D17, double 0xCB83B0A43DEF5904, double 0x4C1035A171273534, double 0xCC9C5E89F1FD242E, double 0x4D2A575DD47B788A, double 0xCDB9E84A01AE153A, double 0x4E4AF26959307253, double 0xCEDD9890BC68EEDC, double 0x4F71231831C6CCBC, double 0xD004E5B1C79769AD, double 0x509ACC2917790916, double 0xD1320BD5E935FC86, double 0x51C97F9F572293EC, double 0xD262E083516087A9, double 0x52FD41E650690E84, double 0xD397B59A0F58FFB7, double 0x543412709736939F, double 0xD4D1BC48BBC5CC50, double 0x5570575EC3AB2234, double 0xD60F5FE45963CAC2], align 16
@.str.4 = private unnamed_addr constant [26 x i8] c"gsl_sf_zeta_e(s, &result)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"gsl_sf_hzeta_e(s, a, &result)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"gsl_sf_zeta_int_e(s, &result)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"gsl_sf_zetam1_e(s, &result)\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"gsl_sf_zetam1_int_e(s, &result)\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"gsl_sf_eta_int_e(s, &result)\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"gsl_sf_eta_e(s, &result)\00", align 1
@zeta_xlt1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([14 x double], [14 x double]* @zeta_xlt1_data, i32 0, i32 0), i32 13, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@zeta_xgt1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([30 x double], [30 x double]* @zeta_xgt1_data, i32 0, i32 0), i32 29, double -1.000000e+00, double 1.000000e+00, i32 17 }, align 8
@zeta_xlt1_data = internal global [14 x double] [double 0x3FF7AED852FDCAE3, double 0x3FD001F9F0892C1F, double 0x3F844C6A3C99D0AD, double 0xBF1FADF1E674ACBA, double 0xBED3F57E55B09A59, double 0x3E8DD626CA3F922C, double 0xBE231A13C303D5D7, double 0xBDDBF6C590BBC8B3, double 0x3D933E8F614D43D8, double 0xBD31841E1B32EE6B, double 0xBCC7D224A8703D16, double 0x3C8C858EC5B28EAA, double 0xBC333D57C275128A, double 0x3BC082B84F83B91C], align 16
@zeta_xgt1_data = internal global [30 x double] [double 0x40336450627983A1, double 0x40224E18CD24FD83, double 0x3FCF13BC2C24BD9A, double 0xBFC123A330453553, double 0x3FAD95B1E494A222, double 0xBF933680A9A42CB0, double 0x3F7023B49C2A5097, double 0xBF0E7CDF366363EA, double 0xBF389DC5ABEA0138, double 0x3F28CE475CB6A634, double 0xBF0CC8FC461227EA, double 0x3EE2436B85BA5539, double 0x3EA5ADE971E22BD6, double 0xBEB03B5F0398538D, double 0x3E988D52F126AA1D, double 0xBE76B5274975D042, double 0x3E45772EB3DDE74D, double 0x3E187FA15E279FFD, double 0xBE1434F7F5D32869, double 0x3DF98143E6E46ABF, double 0xBDD48C8BC7E17869, double 0x3DA1453C81235B86, double 0x3D718FD10D3D317D, double 0xBD6A7C5239B74FB3, double 0x3D4EE621C3DDEBA1, double 0xBD279B7341440685, double 0x3CF4DEC552E8CEE8, double 0x3CB11BB751CE0F5B, double 0xBCB3A7A1114EB573, double 0x3C969E53D45F55DC], align 16
@zetam1_inter_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([24 x double], [24 x double]* @zetam1_inter_data, i32 0, i32 0), i32 22, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@zetam1_inter_data = internal global [24 x double] [double 0xC035C03DD66624A5, double 0xC016857F64863724, double 0x3FAB0924C94BFD53, double 0xBF9003748E72473C, double 0x3F70B87B1F8742F1, double 0xBF50D165BD35490C, double 0x3F3111F59E323345, double 0xBF11B9BD42924B2B, double 0x3EF2CCA183A9FD01, double 0xBED444BC4A505EEF, double 0x3EB621A772C472BB, double 0xBE98695B99CD4F19, double 0x3E7B26C228C526DD, double 0xBE5E68F5F8F73930, double 0x3E4121966337F2F5, double 0xBE23667F6B2E6152, double 0x3E0611761971071E, double 0xBDE9338AD6FAF622, double 0x3DCCE113E2B329A1, double 0xBDB0991BFA8ECB1F, double 0x3D9321A30FCB05AC, double 0xBD76186BD8BBA5CC, double 0x3D596C415674B2A9, double 0xBD3B33EA0A9F4A5E], align 16
@0 = private unnamed_addr constant [15 x i8] c"gsl_sf_hzeta_e\00"
@1 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@2 = private unnamed_addr constant [14 x i8] c"gsl_sf_zeta_e\00"
@3 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@4 = private unnamed_addr constant [18 x i8] c"riemann_zeta_sgt0\00"
@5 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@6 = private unnamed_addr constant [21 x i8] c"riemann_zeta1ms_slt0\00"
@7 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@8 = private unnamed_addr constant [18 x i8] c"gsl_sf_zeta_int_e\00"
@9 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@10 = private unnamed_addr constant [16 x i8] c"gsl_sf_zetam1_e\00"
@11 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@12 = private unnamed_addr constant [36 x i8] c"riemann_zeta_minus_1_intermediate_s\00"
@13 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@14 = private unnamed_addr constant [28 x i8] c"riemann_zeta_minus1_large_s\00"
@15 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@16 = private unnamed_addr constant [20 x i8] c"gsl_sf_zetam1_int_e\00"
@17 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@18 = private unnamed_addr constant [17 x i8] c"gsl_sf_eta_int_e\00"
@19 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@20 = private unnamed_addr constant [13 x i8] c"gsl_sf_eta_e\00"
@21 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@22 = private unnamed_addr constant [12 x i8] c"gsl_sf_zeta\00"
@23 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@24 = private unnamed_addr constant [13 x i8] c"gsl_sf_hzeta\00"
@25 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@26 = private unnamed_addr constant [16 x i8] c"gsl_sf_zeta_int\00"
@27 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@28 = private unnamed_addr constant [14 x i8] c"gsl_sf_zetam1\00"
@29 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@30 = private unnamed_addr constant [18 x i8] c"gsl_sf_zetam1_int\00"
@31 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@32 = private unnamed_addr constant [15 x i8] c"gsl_sf_eta_int\00"
@33 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@34 = private unnamed_addr constant [11 x i8] c"gsl_sf_eta\00"
@35 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"
@36 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@37 = private unnamed_addr constant [8 x i8] c"zeta.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hzeta_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !104 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !107, metadata !108), !dbg !109
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !110, metadata !108), !dbg !111
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !112, metadata !108), !dbg !113
  %22 = load double, double* %5, align 8, !dbg !114
  %23 = fcmp ole double %22, 1.000000e+00, !dbg !116
  %24 = call i1 @fCmpInstHandler(double %22, double 1.000000e+00, i1 %23, i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724196128, i32 718, i32 8), !dbg !117
  br i1 %24, label %29, label %25, !dbg !117

; <label>:25:                                     ; preds = %3
  %26 = load double, double* %6, align 8, !dbg !118
  %27 = fcmp ole double %26, 0.000000e+00, !dbg !120
  %28 = call i1 @fCmpInstHandler(double %26, double 0.000000e+00, i1 %27, i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724197552, i32 718, i32 20), !dbg !121
  br i1 %28, label %29, label %38, !dbg !121

; <label>:29:                                     ; preds = %25, %3
  br label %30, !dbg !122, !llvm.loop !124

; <label>:30:                                     ; preds = %29
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !125
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !125
  store double 0x7FF8000000000000, double* %32, align 8, !dbg !125
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !125
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !125
  store double 0x7FF8000000000000, double* %34, align 8, !dbg !125
  br label %35, !dbg !125, !llvm.loop !128

; <label>:35:                                     ; preds = %30
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 719, i32 1), !dbg !130
  store i32 1, i32* %4, align 4, !dbg !130
  br label %243, !dbg !130
                                                  ; No predecessors!
  br label %37, !dbg !133

; <label>:37:                                     ; preds = %36
  br label %243, !dbg !135

; <label>:38:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata double* %8, metadata !136, metadata !108), !dbg !138
  store double 5.400000e+01, double* %8, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata double* %9, metadata !139, metadata !108), !dbg !140
  %39 = load double, double* %5, align 8, !dbg !141
  %40 = fsub double -0.000000e+00, %39, !dbg !142
  call void @fSubHandler(double -0.000000e+00, double %39, double %40, i64 0, i64 94090724214984, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724215424, i32 723, i32 29), !dbg !143
  %41 = load double, double* %6, align 8, !dbg !143
  %42 = call double @log(double %41) #6, !dbg !144
  call void @callOneArgHandler(i32 12, double %41, double %42, i64 94090724215816, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724216560, i32 723, i32 34), !dbg !145
  %43 = fmul double %40, %42, !dbg !145
  call void @fMulHandler(double %40, double %42, double %43, i64 94090724215424, i64 94090724216560, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724217072, i32 723, i32 32), !dbg !140
  store double %43, double* %9, align 8, !dbg !140
  %44 = load double, double* %9, align 8, !dbg !146
  %45 = fcmp olt double %44, 0xC0861B2BDD7ABCD2, !dbg !148
  %46 = call i1 @fCmpInstHandler(double %44, double 0xC0861B2BDD7ABCD2, i1 %45, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724219616, i32 725, i32 17), !dbg !149
  br i1 %46, label %47, label %56, !dbg !149

; <label>:47:                                     ; preds = %38
  br label %48, !dbg !150, !llvm.loop !152

; <label>:48:                                     ; preds = %47
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !153
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !153
  store double 0.000000e+00, double* %50, align 8, !dbg !153
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !153
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !153
  store double 0x10000000000000, double* %52, align 8, !dbg !153
  br label %53, !dbg !153, !llvm.loop !156

; <label>:53:                                     ; preds = %48
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 726, i32 15), !dbg !158
  store i32 15, i32* %4, align 4, !dbg !158
  br label %243, !dbg !158
                                                  ; No predecessors!
  br label %55, !dbg !161

; <label>:55:                                     ; preds = %54
  br label %242, !dbg !163

; <label>:56:                                     ; preds = %38
  %57 = load double, double* %9, align 8, !dbg !164
  %58 = fcmp ogt double %57, 0x40862642FEFA39EF, !dbg !166
  %59 = call i1 @fCmpInstHandler(double %57, double 0x40862642FEFA39EF, i1 %58, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724228640, i32 728, i32 22), !dbg !167
  br i1 %59, label %60, label %69, !dbg !167

; <label>:60:                                     ; preds = %56
  br label %61, !dbg !168, !llvm.loop !170

; <label>:61:                                     ; preds = %60
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !171
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !171
  store double 0x7FF0000000000000, double* %63, align 8, !dbg !171
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !171
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 1, !dbg !171
  store double 0x7FF0000000000000, double* %65, align 8, !dbg !171
  br label %66, !dbg !171, !llvm.loop !174

; <label>:66:                                     ; preds = %61
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 729, i32 16), !dbg !176
  store i32 16, i32* %4, align 4, !dbg !176
  br label %243, !dbg !176
                                                  ; No predecessors!
  br label %68, !dbg !179

; <label>:68:                                     ; preds = %67
  br label %241, !dbg !181

; <label>:69:                                     ; preds = %56
  %70 = load double, double* %5, align 8, !dbg !182
  %71 = fcmp ogt double %70, 5.400000e+01, !dbg !184
  %72 = call i1 @fCmpInstHandler(double %70, double 5.400000e+01, i1 %71, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724238672, i32 731, i32 16), !dbg !185
  br i1 %72, label %73, label %77, !dbg !185

; <label>:73:                                     ; preds = %69
  %74 = load double, double* %6, align 8, !dbg !186
  %75 = fcmp olt double %74, 1.000000e+00, !dbg !188
  %76 = call i1 @fCmpInstHandler(double %74, double 1.000000e+00, i1 %75, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724240128, i32 731, i32 32), !dbg !189
  br i1 %76, label %85, label %77, !dbg !189

; <label>:77:                                     ; preds = %73, %69
  %78 = load double, double* %5, align 8, !dbg !190
  %79 = fcmp ogt double %78, 2.700000e+01, !dbg !192
  %80 = call i1 @fCmpInstHandler(double %78, double 2.700000e+01, i1 %79, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724241504, i32 731, i32 45), !dbg !193
  br i1 %80, label %81, label %99, !dbg !193

; <label>:81:                                     ; preds = %77
  %82 = load double, double* %6, align 8, !dbg !194
  %83 = fcmp olt double %82, 2.500000e-01, !dbg !196
  %84 = call i1 @fCmpInstHandler(double %82, double 2.500000e-01, i1 %83, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724242960, i32 731, i32 65), !dbg !197
  br i1 %84, label %85, label %99, !dbg !197

; <label>:85:                                     ; preds = %81, %73
  %86 = load double, double* %6, align 8, !dbg !198
  %87 = load double, double* %5, align 8, !dbg !200
  %88 = fsub double -0.000000e+00, %87, !dbg !201
  call void @fSubHandler(double -0.000000e+00, double %87, double %88, i64 0, i64 94090724244072, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724244480, i32 732, i32 28), !dbg !202
  %89 = call double @pow(double %86, double %88) #6, !dbg !202
  call void @callTwoArgsHandler(i32 15, double %86, double %88, double %89, i64 94090724243752, i64 94090724244480, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724245288, i32 732, i32 21), !dbg !203
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !203
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !204
  store double %89, double* %91, align 8, !dbg !205
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !206
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !207
  %94 = load double, double* %93, align 8, !dbg !207
  %95 = call double @fabs(double %94) #1, !dbg !208
  %96 = fmul double 0x3CC0000000000000, %95, !dbg !209
  call void @fMulHandler(double 0x3CC0000000000000, double %95, double %96, i64 0, i64 94090724249872, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724250448, i32 733, i32 43), !dbg !210
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !210
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !211
  store double %96, double* %98, align 8, !dbg !212
  store i32 0, i32* %4, align 4, !dbg !213
  br label %243, !dbg !213

; <label>:99:                                     ; preds = %81, %77
  %100 = load double, double* %5, align 8, !dbg !214
  %101 = fcmp ogt double %100, 2.700000e+01, !dbg !216
  %102 = call i1 @fCmpInstHandler(double %100, double 2.700000e+01, i1 %101, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724254528, i32 736, i32 15), !dbg !217
  br i1 %102, label %103, label %143, !dbg !217

; <label>:103:                                    ; preds = %99
  %104 = load double, double* %6, align 8, !dbg !218
  %105 = fcmp olt double %104, 1.000000e+00, !dbg !220
  %106 = call i1 @fCmpInstHandler(double %104, double 1.000000e+00, i1 %105, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724255984, i32 736, i32 35), !dbg !221
  br i1 %106, label %107, label %143, !dbg !221

; <label>:107:                                    ; preds = %103
  call void @llvm.dbg.declare(metadata double* %10, metadata !222, metadata !108), !dbg !224
  %108 = load double, double* %6, align 8, !dbg !225
  %109 = load double, double* %5, align 8, !dbg !226
  %110 = fsub double -0.000000e+00, %109, !dbg !227
  call void @fSubHandler(double -0.000000e+00, double %109, double %110, i64 0, i64 94090724258424, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724258832, i32 737, i32 32), !dbg !228
  %111 = call double @pow(double %108, double %110) #6, !dbg !228
  call void @callTwoArgsHandler(i32 15, double %108, double %110, double %111, i64 94090724258072, i64 94090724258832, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724259368, i32 737, i32 25), !dbg !224
  store double %111, double* %10, align 8, !dbg !224
  call void @llvm.dbg.declare(metadata double* %11, metadata !229, metadata !108), !dbg !230
  %112 = load double, double* %6, align 8, !dbg !231
  %113 = load double, double* %6, align 8, !dbg !232
  %114 = fadd double 1.000000e+00, %113, !dbg !233
  call void @fAddHandler(double 1.000000e+00, double %113, double %114, i64 0, i64 94090724262936, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724263376, i32 738, i32 35), !dbg !234
  %115 = fdiv double %112, %114, !dbg !234
  call void @fDivHandler(double %112, double %114, double %115, i64 94090724262584, i64 94090724263376, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724263760, i32 738, i32 30), !dbg !235
  %116 = load double, double* %5, align 8, !dbg !235
  %117 = call double @pow(double %115, double %116) #6, !dbg !236
  call void @callTwoArgsHandler(i32 15, double %115, double %116, double %117, i64 94090724263760, i64 94090724264152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724264680, i32 738, i32 25), !dbg !230
  store double %117, double* %11, align 8, !dbg !230
  call void @llvm.dbg.declare(metadata double* %12, metadata !237, metadata !108), !dbg !238
  %118 = load double, double* %6, align 8, !dbg !239
  %119 = load double, double* %6, align 8, !dbg !240
  %120 = fadd double 2.000000e+00, %119, !dbg !241
  call void @fAddHandler(double 2.000000e+00, double %119, double %120, i64 0, i64 94090724268248, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724268752, i32 739, i32 35), !dbg !242
  %121 = fdiv double %118, %120, !dbg !242
  call void @fDivHandler(double %118, double %120, double %121, i64 94090724267896, i64 94090724268752, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724269136, i32 739, i32 30), !dbg !243
  %122 = load double, double* %5, align 8, !dbg !243
  %123 = call double @pow(double %121, double %122) #6, !dbg !244
  call void @callTwoArgsHandler(i32 15, double %121, double %122, double %123, i64 94090724269136, i64 94090724269528, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724270056, i32 739, i32 25), !dbg !238
  store double %123, double* %12, align 8, !dbg !238
  %124 = load double, double* %10, align 8, !dbg !245
  %125 = load double, double* %11, align 8, !dbg !246
  %126 = fadd double 1.000000e+00, %125, !dbg !247
  call void @fAddHandler(double 1.000000e+00, double %125, double %126, i64 0, i64 94090724272536, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724272976, i32 740, i32 31), !dbg !248
  %127 = load double, double* %12, align 8, !dbg !248
  %128 = fadd double %126, %127, !dbg !249
  call void @fAddHandler(double %126, double %127, double %128, i64 94090724272976, i64 94090724273336, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724273744, i32 740, i32 36), !dbg !250
  %129 = fmul double %124, %128, !dbg !250
  call void @fMulHandler(double %124, double %128, double %129, i64 94090724272184, i64 94090724273744, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724274160, i32 740, i32 24), !dbg !251
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !251
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 0, !dbg !252
  store double %129, double* %131, align 8, !dbg !253
  %132 = load double, double* %5, align 8, !dbg !254
  %133 = fmul double 5.000000e-01, %132, !dbg !255
  call void @fMulHandler(double 5.000000e-01, double %132, double %133, i64 0, i64 94090724275800, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724276240, i32 741, i32 43), !dbg !256
  %134 = fadd double %133, 2.000000e+00, !dbg !256
  call void @fAddHandler(double %133, double 2.000000e+00, double %134, i64 94090724276240, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724276656, i32 741, i32 46), !dbg !257
  %135 = fmul double 0x3CB0000000000000, %134, !dbg !257
  call void @fMulHandler(double 0x3CB0000000000000, double %134, double %135, i64 0, i64 94090724276656, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724277104, i32 741, i32 37), !dbg !258
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !258
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 0, !dbg !259
  %138 = load double, double* %137, align 8, !dbg !259
  %139 = call double @fabs(double %138) #1, !dbg !260
  %140 = fmul double %135, %139, !dbg !261
  call void @fMulHandler(double %135, double %139, double %140, i64 94090724277104, i64 94090724282128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724282608, i32 741, i32 53), !dbg !262
  %141 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !262
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %141, i32 0, i32 1, !dbg !263
  store double %140, double* %142, align 8, !dbg !264
  store i32 0, i32* %4, align 4, !dbg !265
  br label %243, !dbg !265

; <label>:143:                                    ; preds = %103, %99
  call void @llvm.dbg.declare(metadata i32* %13, metadata !266, metadata !108), !dbg !269
  store i32 12, i32* %13, align 4, !dbg !269
  call void @llvm.dbg.declare(metadata i32* %14, metadata !270, metadata !108), !dbg !271
  store i32 10, i32* %14, align 4, !dbg !271
  call void @llvm.dbg.declare(metadata i32* %15, metadata !272, metadata !108), !dbg !273
  call void @llvm.dbg.declare(metadata i32* %16, metadata !274, metadata !108), !dbg !275
  call void @llvm.dbg.declare(metadata double* %17, metadata !276, metadata !108), !dbg !277
  %144 = load double, double* %6, align 8, !dbg !278
  %145 = fadd double 1.000000e+01, %144, !dbg !279
  call void @fAddHandler(double 1.000000e+01, double %144, double %145, i64 0, i64 94090724295144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724295616, i32 751, i32 37), !dbg !280
  %146 = load double, double* %5, align 8, !dbg !280
  %147 = fsub double -0.000000e+00, %146, !dbg !281
  call void @fSubHandler(double -0.000000e+00, double %146, double %147, i64 0, i64 94090724295976, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724296384, i32 751, i32 42), !dbg !282
  %148 = call double @pow(double %145, double %147) #6, !dbg !282
  call void @callTwoArgsHandler(i32 15, double %145, double %147, double %148, i64 94090724295616, i64 94090724296384, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724296920, i32 751, i32 28), !dbg !277
  store double %148, double* %17, align 8, !dbg !277
  call void @llvm.dbg.declare(metadata double* %18, metadata !283, metadata !108), !dbg !284
  %149 = load double, double* %5, align 8, !dbg !285
  store double %149, double* %18, align 8, !dbg !284
  call void @llvm.dbg.declare(metadata double* %19, metadata !286, metadata !108), !dbg !287
  %150 = load double, double* %17, align 8, !dbg !288
  %151 = load double, double* %6, align 8, !dbg !289
  %152 = fadd double 1.000000e+01, %151, !dbg !290
  call void @fAddHandler(double 1.000000e+01, double %151, double %152, i64 0, i64 94090724303640, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724304080, i32 753, i32 33), !dbg !291
  %153 = fdiv double %150, %152, !dbg !291
  call void @fDivHandler(double %150, double %152, double %153, i64 94090724303288, i64 94090724304080, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724304464, i32 753, i32 25), !dbg !287
  store double %153, double* %19, align 8, !dbg !287
  call void @llvm.dbg.declare(metadata double* %20, metadata !292, metadata !108), !dbg !293
  %154 = load double, double* %17, align 8, !dbg !294
  %155 = load double, double* %6, align 8, !dbg !295
  %156 = fadd double 1.000000e+01, %155, !dbg !296
  call void @fAddHandler(double 1.000000e+01, double %155, double %156, i64 0, i64 94090724308008, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724308448, i32 754, i32 31), !dbg !297
  %157 = load double, double* %5, align 8, !dbg !297
  %158 = fsub double %157, 1.000000e+00, !dbg !298
  call void @fSubHandler(double %157, double 1.000000e+00, double %158, i64 94090724308808, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724309248, i32 754, i32 37), !dbg !299
  %159 = fdiv double %156, %158, !dbg !299
  call void @fDivHandler(double %156, double %158, double %159, i64 94090724308448, i64 94090724309248, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724309632, i32 754, i32 34), !dbg !300
  %160 = fadd double %159, 5.000000e-01, !dbg !300
  call void @fAddHandler(double %159, double 5.000000e-01, double %160, i64 94090724309632, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724310080, i32 754, i32 43), !dbg !301
  %161 = fmul double %154, %160, !dbg !301
  call void @fMulHandler(double %154, double %160, double %161, i64 94090724307656, i64 94090724310080, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724310464, i32 754, i32 24), !dbg !293
  store double %161, double* %20, align 8, !dbg !293
  store i32 0, i32* %16, align 4, !dbg !302
  br label %162, !dbg !304

; <label>:162:                                    ; preds = %177, %143
  %163 = load i32, i32* %16, align 4, !dbg !305
  %164 = icmp slt i32 %163, 10, !dbg !308
  %165 = sext i32 %163 to i64, !dbg !309
  %166 = call i1 @iCmpInstHandler(i64 %165, i64 10, i1 %164, i32 40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724313824, i32 756, i32 17), !dbg !309
  br i1 %166, label %167, label %180, !dbg !309

; <label>:167:                                    ; preds = %162
  %168 = load i32, i32* %16, align 4, !dbg !310
  %169 = sitofp i32 %168 to double, !dbg !310
  %170 = load double, double* %6, align 8, !dbg !312
  %171 = fadd double %169, %170, !dbg !313
  call void @fAddHandler(double %169, double %170, double %171, i64 94090724315256, i64 94090724316904, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724317312, i32 757, i32 22), !dbg !314
  %172 = load double, double* %5, align 8, !dbg !314
  %173 = fsub double -0.000000e+00, %172, !dbg !315
  call void @fSubHandler(double -0.000000e+00, double %172, double %173, i64 0, i64 94090724317704, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724318112, i32 757, i32 27), !dbg !316
  %174 = call double @pow(double %171, double %173) #6, !dbg !316
  call void @callTwoArgsHandler(i32 15, double %171, double %173, double %174, i64 94090724317312, i64 94090724318112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724318648, i32 757, i32 16), !dbg !317
  %175 = load double, double* %20, align 8, !dbg !317
  %176 = fadd double %175, %174, !dbg !317
  call void @fAddHandler(double %175, double %174, double %176, i64 94090724319096, i64 94090724318648, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724319472, i32 757, i32 13), !dbg !317
  store double %176, double* %20, align 8, !dbg !317
  br label %177, !dbg !318

; <label>:177:                                    ; preds = %167
  %178 = load i32, i32* %16, align 4, !dbg !319
  %179 = add nsw i32 %178, 1, !dbg !319
  store i32 %179, i32* %16, align 4, !dbg !319
  br label %162, !dbg !321, !llvm.loop !322

; <label>:180:                                    ; preds = %162
  store i32 0, i32* %15, align 4, !dbg !324
  br label %181, !dbg !326

; <label>:181:                                    ; preds = %229, %180
  %182 = load i32, i32* %15, align 4, !dbg !327
  %183 = icmp sle i32 %182, 12, !dbg !330
  %184 = sext i32 %182 to i64, !dbg !331
  %185 = call i1 @iCmpInstHandler(i64 %184, i64 12, i1 %183, i32 41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724325808, i32 760, i32 17), !dbg !331
  br i1 %185, label %186, label %232, !dbg !331

; <label>:186:                                    ; preds = %181
  call void @llvm.dbg.declare(metadata double* %21, metadata !332, metadata !108), !dbg !334
  %187 = load i32, i32* %15, align 4, !dbg !335
  %188 = add nsw i32 %187, 1, !dbg !336
  %189 = sext i32 %188 to i64, !dbg !337
  %190 = getelementptr inbounds [15 x double], [15 x double]* @hzeta_c, i64 0, i64 %189, !dbg !337
  %191 = load double, double* %190, align 8, !dbg !337
  %192 = load double, double* %18, align 8, !dbg !338
  %193 = fmul double %191, %192, !dbg !339
  call void @fMulHandler(double %191, double %192, double %193, i64 94090724330904, i64 94090724331000, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724331408, i32 761, i32 37), !dbg !340
  %194 = load double, double* %19, align 8, !dbg !340
  %195 = fmul double %193, %194, !dbg !341
  call void @fMulHandler(double %193, double %194, double %195, i64 94090724331408, i64 94090724331800, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724332208, i32 761, i32 43), !dbg !334
  store double %195, double* %21, align 8, !dbg !334
  %196 = load double, double* %21, align 8, !dbg !342
  %197 = load double, double* %20, align 8, !dbg !343
  %198 = fadd double %197, %196, !dbg !343
  call void @fAddHandler(double %197, double %196, double %198, i64 94090724334664, i64 94090724334280, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724335072, i32 762, i32 13), !dbg !343
  store double %198, double* %20, align 8, !dbg !343
  %199 = load double, double* %21, align 8, !dbg !344
  %200 = load double, double* %20, align 8, !dbg !346
  %201 = fdiv double %199, %200, !dbg !347
  call void @fDivHandler(double %199, double %200, double %201, i64 94090724336856, i64 94090724337240, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724337648, i32 763, i32 22), !dbg !348
  %202 = call double @fabs(double %201) #1, !dbg !348
  %203 = fcmp olt double %202, 0x3CA0000000000000, !dbg !349
  %204 = call i1 @fCmpInstHandler(double %202, double 0x3CA0000000000000, i1 %203, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724338672, i32 763, i32 28), !dbg !350
  br i1 %204, label %205, label %206, !dbg !350

; <label>:205:                                    ; preds = %186
  br label %232, !dbg !351

; <label>:206:                                    ; preds = %186
  %207 = load double, double* %5, align 8, !dbg !353
  %208 = load i32, i32* %15, align 4, !dbg !354
  %209 = mul nsw i32 2, %208, !dbg !355
  %210 = sitofp i32 %209 to double, !dbg !356
  %211 = fadd double %207, %210, !dbg !357
  call void @fAddHandler(double %207, double %210, double %211, i64 94090724340104, i64 94090724341288, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724341696, i32 764, i32 18), !dbg !358
  %212 = fadd double %211, 1.000000e+00, !dbg !358
  call void @fAddHandler(double %211, double 1.000000e+00, double %212, i64 94090724341696, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724342144, i32 764, i32 22), !dbg !359
  %213 = load double, double* %5, align 8, !dbg !359
  %214 = load i32, i32* %15, align 4, !dbg !360
  %215 = mul nsw i32 2, %214, !dbg !361
  %216 = sitofp i32 %215 to double, !dbg !362
  %217 = fadd double %213, %216, !dbg !363
  call void @fAddHandler(double %213, double %216, double %217, i64 94090724342504, i64 94090724343688, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724344096, i32 764, i32 28), !dbg !364
  %218 = fadd double %217, 2.000000e+00, !dbg !364
  call void @fAddHandler(double %217, double 2.000000e+00, double %218, i64 94090724344096, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724344544, i32 764, i32 32), !dbg !365
  %219 = fmul double %212, %218, !dbg !365
  call void @fMulHandler(double %212, double %218, double %219, i64 94090724342144, i64 94090724344544, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724344928, i32 764, i32 25), !dbg !366
  %220 = load double, double* %18, align 8, !dbg !366
  %221 = fmul double %220, %219, !dbg !366
  call void @fMulHandler(double %220, double %219, double %221, i64 94090724345320, i64 94090724344928, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724345728, i32 764, i32 13), !dbg !366
  store double %221, double* %18, align 8, !dbg !366
  %222 = load double, double* %6, align 8, !dbg !367
  %223 = fadd double 1.000000e+01, %222, !dbg !368
  call void @fAddHandler(double 1.000000e+01, double %222, double %223, i64 0, i64 94090724347512, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724347952, i32 765, i32 22), !dbg !369
  %224 = load double, double* %6, align 8, !dbg !369
  %225 = fadd double 1.000000e+01, %224, !dbg !370
  call void @fAddHandler(double 1.000000e+01, double %224, double %225, i64 0, i64 94090724348312, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724348752, i32 765, i32 33), !dbg !371
  %226 = fmul double %223, %225, !dbg !371
  call void @fMulHandler(double %223, double %225, double %226, i64 94090724347952, i64 94090724348752, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724349136, i32 765, i32 26), !dbg !372
  %227 = load double, double* %19, align 8, !dbg !372
  %228 = fdiv double %227, %226, !dbg !372
  call void @fDivHandler(double %227, double %226, double %228, i64 94090724349528, i64 94090724349136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724349936, i32 765, i32 13), !dbg !372
  store double %228, double* %19, align 8, !dbg !372
  br label %229, !dbg !373

; <label>:229:                                    ; preds = %206
  %230 = load i32, i32* %15, align 4, !dbg !374
  %231 = add nsw i32 %230, 1, !dbg !374
  store i32 %231, i32* %15, align 4, !dbg !374
  br label %181, !dbg !376, !llvm.loop !377

; <label>:232:                                    ; preds = %205, %181
  %233 = load double, double* %20, align 8, !dbg !379
  %234 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !380
  %235 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %234, i32 0, i32 0, !dbg !381
  store double %233, double* %235, align 8, !dbg !382
  %236 = load double, double* %20, align 8, !dbg !383
  %237 = call double @fabs(double %236) #1, !dbg !384
  %238 = fmul double 0x3CFA000000000000, %237, !dbg !385
  call void @fMulHandler(double 0x3CFA000000000000, double %237, double %238, i64 0, i64 94090724357088, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0), i64 94090724357632, i32 769, i32 58), !dbg !386
  %239 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !386
  %240 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %239, i32 0, i32 1, !dbg !387
  store double %238, double* %240, align 8, !dbg !388
  store i32 0, i32* %4, align 4, !dbg !389
  br label %243, !dbg !389

; <label>:241:                                    ; preds = %68
  br label %242

; <label>:242:                                    ; preds = %241, %55
  br label %243

; <label>:243:                                    ; preds = %242, %232, %107, %85, %66, %53, %37, %35
  %244 = load i32, i32* %4, align 4, !dbg !390
  ret i32 %244, !dbg !390
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_zeta_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !391, metadata !108), !dbg !392
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !393, metadata !108), !dbg !394
  %14 = load double, double* %4, align 8, !dbg !395
  %15 = fcmp oeq double %14, 1.000000e+00, !dbg !397
  %16 = call i1 @fCmpInstHandler(double %14, double 1.000000e+00, i1 %15, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724367568, i32 780, i32 8), !dbg !398
  br i1 %16, label %17, label %26, !dbg !398

; <label>:17:                                     ; preds = %2
  br label %18, !dbg !399, !llvm.loop !401

; <label>:18:                                     ; preds = %17
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !402
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !402
  store double 0x7FF8000000000000, double* %20, align 8, !dbg !402
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !402
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !402
  store double 0x7FF8000000000000, double* %22, align 8, !dbg !402
  br label %23, !dbg !402, !llvm.loop !405

; <label>:23:                                     ; preds = %18
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 781, i32 1), !dbg !407
  store i32 1, i32* %3, align 4, !dbg !407
  br label %163, !dbg !407
                                                  ; No predecessors!
  br label %25, !dbg !410

; <label>:25:                                     ; preds = %24
  br label %163, !dbg !412

; <label>:26:                                     ; preds = %2
  %27 = load double, double* %4, align 8, !dbg !413
  %28 = fcmp oge double %27, 0.000000e+00, !dbg !415
  %29 = call i1 @fCmpInstHandler(double %27, double 0.000000e+00, i1 %28, i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724375856, i32 783, i32 13), !dbg !416
  br i1 %29, label %30, label %34, !dbg !416

; <label>:30:                                     ; preds = %26
  %31 = load double, double* %4, align 8, !dbg !417
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !419
  %33 = call i32 @riemann_zeta_sgt0(double %31, %struct.gsl_sf_result_struct* %32), !dbg !420
  store i32 %33, i32* %3, align 4, !dbg !421
  br label %163, !dbg !421

; <label>:34:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !422, metadata !108), !dbg !424
  call void @llvm.dbg.declare(metadata i32* %7, metadata !425, metadata !108), !dbg !426
  %35 = load double, double* %4, align 8, !dbg !427
  %36 = call i32 @riemann_zeta1ms_slt0(double %35, %struct.gsl_sf_result_struct* %6), !dbg !428
  store i32 %36, i32* %7, align 4, !dbg !426
  call void @llvm.dbg.declare(metadata double* %8, metadata !429, metadata !108), !dbg !430
  %37 = load double, double* %4, align 8, !dbg !431
  %38 = call double @fmod(double %37, double 2.000000e+00) #6, !dbg !432
  %39 = fcmp oeq double %38, 0.000000e+00, !dbg !433
  %40 = call i1 @fCmpInstHandler(double %38, double 0.000000e+00, i1 %39, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724387984, i32 791, i32 42), !dbg !434
  br i1 %40, label %41, label %42, !dbg !434

; <label>:41:                                     ; preds = %34
  br label %48, !dbg !435

; <label>:42:                                     ; preds = %34
  %43 = load double, double* %4, align 8, !dbg !437
  %44 = call double @fmod(double %43, double 4.000000e+00) #6, !dbg !439
  %45 = fmul double 0x3FF921FB54442D18, %44, !dbg !440
  call void @fMulHandler(double 0x3FF921FB54442D18, double %44, double %45, i64 0, i64 94090724390088, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724390624, i32 791, i32 70), !dbg !441
  %46 = call double @sin(double %45) #6, !dbg !441
  call void @callOneArgHandler(i32 1, double %45, double %46, i64 94090724390624, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724391344, i32 791, i32 58), !dbg !443
  %47 = fdiv double %46, 0x400921FB54442D18, !dbg !443
  call void @fDivHandler(double %46, double 0x400921FB54442D18, double %47, i64 94090724391344, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724391920, i32 791, i32 83), !dbg !444
  br label %48, !dbg !444

; <label>:48:                                     ; preds = %42, %41
  %49 = phi double [ 0.000000e+00, %41 ], [ %47, %42 ], !dbg !445
  store double %49, double* %8, align 8, !dbg !447
  %50 = load double, double* %8, align 8, !dbg !448
  %51 = fcmp oeq double %50, 0.000000e+00, !dbg !450
  %52 = call i1 @fCmpInstHandler(double %50, double 0.000000e+00, i1 %51, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724393920, i32 793, i32 17), !dbg !451
  br i1 %52, label %53, label %58, !dbg !451

; <label>:53:                                     ; preds = %48
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !452
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 0, !dbg !454
  store double 0.000000e+00, double* %55, align 8, !dbg !455
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !456
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 1, !dbg !457
  store double 0.000000e+00, double* %57, align 8, !dbg !458
  store i32 0, i32* %3, align 4, !dbg !459
  br label %163, !dbg !459

; <label>:58:                                     ; preds = %48
  %59 = load double, double* %4, align 8, !dbg !460
  %60 = fcmp ogt double %59, -1.700000e+02, !dbg !462
  %61 = call i1 @fCmpInstHandler(double %59, double -1.700000e+02, i1 %60, i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724399968, i32 798, i32 15), !dbg !463
  br i1 %61, label %62, label %151, !dbg !463

; <label>:62:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata i32* %9, metadata !464, metadata !108), !dbg !466
  %63 = load double, double* %4, align 8, !dbg !467
  %64 = fsub double -0.000000e+00, %63, !dbg !468
  call void @fSubHandler(double -0.000000e+00, double %63, double %64, i64 0, i64 94090724402200, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724402576, i32 824, i32 28), !dbg !469
  %65 = fdiv double %64, 1.000000e+01, !dbg !469
  call void @fDivHandler(double %64, double 1.000000e+01, double %65, i64 94090724402576, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724403024, i32 824, i32 31), !dbg !470
  %66 = call double @floor(double %65) #1, !dbg !470
  %67 = fptosi double %66 to i32, !dbg !470
  store i32 %67, i32* %9, align 4, !dbg !466
  call void @llvm.dbg.declare(metadata double* %10, metadata !471, metadata !108), !dbg !472
  %68 = load double, double* %4, align 8, !dbg !473
  %69 = load i32, i32* %9, align 4, !dbg !474
  %70 = sitofp i32 %69 to double, !dbg !474
  %71 = fmul double 1.000000e+01, %70, !dbg !475
  call void @fMulHandler(double 1.000000e+01, double %70, double %71, i64 0, i64 94090724411528, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724413232, i32 825, i32 33), !dbg !476
  %72 = fadd double %68, %71, !dbg !476
  call void @fAddHandler(double %68, double %71, double %72, i64 94090724410792, i64 94090724413232, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724413616, i32 825, i32 27), !dbg !472
  store double %72, double* %10, align 8, !dbg !472
  call void @llvm.dbg.declare(metadata double* %11, metadata !477, metadata !108), !dbg !478
  %73 = load double, double* %10, align 8, !dbg !479
  %74 = call double @pow(double 0x401921FB54442D18, double %73) #6, !dbg !480
  call void @callTwoArgsHandler(i32 15, double 0x401921FB54442D18, double %73, double %74, i64 0, i64 94090724416808, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724417368, i32 826, i32 24), !dbg !481
  %75 = load i32, i32* %9, align 4, !dbg !481
  %76 = sext i32 %75 to i64, !dbg !482
  %77 = getelementptr inbounds [18 x double], [18 x double]* @gsl_sf_zeta_e.twopi_pow, i64 0, i64 %76, !dbg !482
  %78 = load double, double* %77, align 8, !dbg !482
  %79 = fdiv double %74, %78, !dbg !483
  call void @fDivHandler(double %74, double %78, double %79, i64 94090724417368, i64 94090724420264, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724420384, i32 826, i32 42), !dbg !478
  store double %79, double* %11, align 8, !dbg !478
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !484, metadata !108), !dbg !485
  call void @llvm.dbg.declare(metadata i32* %13, metadata !486, metadata !108), !dbg !487
  %80 = load double, double* %4, align 8, !dbg !488
  %81 = fsub double 1.000000e+00, %80, !dbg !489
  call void @fSubHandler(double 1.000000e+00, double %80, double %81, i64 0, i64 94090724424664, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724425072, i32 829, i32 44), !dbg !490
  %82 = call i32 @gsl_sf_gamma_e(double %81, %struct.gsl_sf_result_struct* %12), !dbg !490
  store i32 %82, i32* %13, align 4, !dbg !487
  %83 = load double, double* %11, align 8, !dbg !491
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !492
  %85 = load double, double* %84, align 8, !dbg !492
  %86 = fmul double %83, %85, !dbg !493
  call void @fMulHandler(double %83, double %85, double %86, i64 94090724427944, i64 94090724428744, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724430416, i32 830, i32 24), !dbg !494
  %87 = load double, double* %8, align 8, !dbg !494
  %88 = fmul double %86, %87, !dbg !495
  call void @fMulHandler(double %86, double %87, double %88, i64 94090724430416, i64 94090724430808, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724431216, i32 830, i32 32), !dbg !496
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !496
  %90 = load double, double* %89, align 8, !dbg !496
  %91 = fmul double %88, %90, !dbg !497
  call void @fMulHandler(double %88, double %90, double %91, i64 94090724431216, i64 94090724432056, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724433728, i32 830, i32 43), !dbg !498
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !498
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !499
  store double %91, double* %93, align 8, !dbg !500
  %94 = load double, double* %11, align 8, !dbg !501
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !502
  %96 = load double, double* %95, align 8, !dbg !502
  %97 = fmul double %94, %96, !dbg !503
  call void @fMulHandler(double %94, double %96, double %97, i64 94090724435368, i64 94090724436200, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724437872, i32 831, i32 29), !dbg !504
  %98 = load double, double* %8, align 8, !dbg !504
  %99 = fmul double %97, %98, !dbg !505
  call void @fMulHandler(double %97, double %98, double %99, i64 94090724437872, i64 94090724438264, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724438672, i32 831, i32 37), !dbg !506
  %100 = call double @fabs(double %99) #1, !dbg !506
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !507
  %102 = load double, double* %101, align 8, !dbg !507
  %103 = fmul double %100, %102, !dbg !508
  call void @fMulHandler(double %100, double %102, double %103, i64 94090724439152, i64 94090724440056, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724441728, i32 831, i32 49), !dbg !509
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !509
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 1, !dbg !510
  store double %103, double* %105, align 8, !dbg !511
  %106 = load double, double* %11, align 8, !dbg !512
  %107 = load double, double* %8, align 8, !dbg !513
  %108 = fmul double %106, %107, !dbg !514
  call void @fMulHandler(double %106, double %107, double %108, i64 94090724443368, i64 94090724443752, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724444160, i32 832, i32 29), !dbg !515
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !515
  %110 = load double, double* %109, align 8, !dbg !515
  %111 = fmul double %108, %110, !dbg !516
  call void @fMulHandler(double %108, double %110, double %111, i64 94090724444160, i64 94090724445000, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724446672, i32 832, i32 40), !dbg !517
  %112 = call double @fabs(double %111) #1, !dbg !517
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !518
  %114 = load double, double* %113, align 8, !dbg !518
  %115 = fmul double %112, %114, !dbg !519
  call void @fMulHandler(double %112, double %114, double %115, i64 94090724447152, i64 94090724448056, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724449728, i32 832, i32 64), !dbg !520
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !520
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 1, !dbg !521
  %118 = load double, double* %117, align 8, !dbg !522
  %119 = fadd double %118, %115, !dbg !522
  call void @fAddHandler(double %118, double %115, double %119, i64 94090724450952, i64 94090724449728, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724451360, i32 832, i32 19), !dbg !522
  store double %119, double* %117, align 8, !dbg !522
  %120 = load double, double* %4, align 8, !dbg !523
  %121 = call double @fabs(double %120) #1, !dbg !524
  %122 = fadd double %121, 2.000000e+00, !dbg !525
  call void @fAddHandler(double %121, double 2.000000e+00, double %122, i64 94090724453616, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724454128, i32 833, i32 48), !dbg !526
  %123 = fmul double 0x3CB0000000000000, %122, !dbg !526
  call void @fMulHandler(double 0x3CB0000000000000, double %122, double %123, i64 0, i64 94090724454128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724454512, i32 833, i32 38), !dbg !527
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !527
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 0, !dbg !528
  %126 = load double, double* %125, align 8, !dbg !528
  %127 = call double @fabs(double %126) #1, !dbg !529
  %128 = fmul double %123, %127, !dbg !531
  call void @fMulHandler(double %123, double %127, double %128, i64 94090724454512, i64 94090724457472, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724457952, i32 833, i32 54), !dbg !532
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !532
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 1, !dbg !533
  %131 = load double, double* %130, align 8, !dbg !534
  %132 = fadd double %131, %128, !dbg !534
  call void @fAddHandler(double %131, double %128, double %132, i64 94090724459176, i64 94090724457952, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724459584, i32 833, i32 19), !dbg !534
  store double %132, double* %130, align 8, !dbg !534
  %133 = load i32, i32* %13, align 4, !dbg !535
  %134 = icmp ne i32 %133, 0, !dbg !535
  %135 = sext i32 %133 to i64, !dbg !535
  %136 = call i1 @iCmpInstHandler(i64 %135, i64 0, i1 %134, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724463840, i32 834, i32 14), !dbg !535
  br i1 %136, label %137, label %139, !dbg !535

; <label>:137:                                    ; preds = %62
  %138 = load i32, i32* %13, align 4, !dbg !536
  br label %149, !dbg !536

; <label>:139:                                    ; preds = %62
  %140 = load i32, i32* %7, align 4, !dbg !537
  %141 = icmp ne i32 %140, 0, !dbg !537
  %142 = sext i32 %140 to i64, !dbg !537
  %143 = call i1 @iCmpInstHandler(i64 %142, i64 0, i1 %141, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i64 94090724468384, i32 834, i32 14), !dbg !537
  br i1 %143, label %144, label %146, !dbg !537

; <label>:144:                                    ; preds = %139
  %145 = load i32, i32* %7, align 4, !dbg !539
  br label %147, !dbg !539

; <label>:146:                                    ; preds = %139
  br label %147, !dbg !541

; <label>:147:                                    ; preds = %146, %144
  %148 = phi i32 [ %145, %144 ], [ 0, %146 ], !dbg !543
  br label %149, !dbg !543

; <label>:149:                                    ; preds = %147, %137
  %150 = phi i32 [ %138, %137 ], [ %148, %147 ], !dbg !545
  store i32 %150, i32* %3, align 4, !dbg !547
  br label %163, !dbg !547

; <label>:151:                                    ; preds = %58
  br label %152, !dbg !548, !llvm.loop !550

; <label>:152:                                    ; preds = %151
  %153 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !551
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %153, i32 0, i32 0, !dbg !551
  store double 0x7FF0000000000000, double* %154, align 8, !dbg !551
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !551
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %155, i32 0, i32 1, !dbg !551
  store double 0x7FF0000000000000, double* %156, align 8, !dbg !551
  br label %157, !dbg !551, !llvm.loop !554

; <label>:157:                                    ; preds = %152
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 847, i32 16), !dbg !556
  store i32 16, i32* %3, align 4, !dbg !556
  br label %163, !dbg !556
                                                  ; No predecessors!
  br label %159, !dbg !559

; <label>:159:                                    ; preds = %158
  br label %160

; <label>:160:                                    ; preds = %159
  br label %161

; <label>:161:                                    ; preds = %160
  br label %162

; <label>:162:                                    ; preds = %161
  br label %163

; <label>:163:                                    ; preds = %162, %157, %149, %53, %30, %25, %23
  %164 = load i32, i32* %3, align 4, !dbg !561
  ret i32 %164, !dbg !561
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @riemann_zeta_sgt0(double, %struct.gsl_sf_result_struct*) #5 !dbg !562 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !565, metadata !108), !dbg !566
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !567, metadata !108), !dbg !568
  %13 = load double, double* %4, align 8, !dbg !569
  %14 = fcmp olt double %13, 1.000000e+00, !dbg !571
  %15 = call i1 @fCmpInstHandler(double %13, double 1.000000e+00, i1 %14, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724489392, i32 156, i32 8), !dbg !572
  br i1 %15, label %16, label %42, !dbg !572

; <label>:16:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !573, metadata !108), !dbg !575
  %17 = load double, double* %4, align 8, !dbg !576
  %18 = fmul double 2.000000e+00, %17, !dbg !577
  call void @fMulHandler(double 2.000000e+00, double %17, double %18, i64 0, i64 94090724491528, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724491936, i32 158, i32 35), !dbg !578
  %19 = fsub double %18, 1.000000e+00, !dbg !578
  call void @fSubHandler(double %18, double 1.000000e+00, double %19, i64 94090724491936, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724492352, i32 158, i32 38), !dbg !579
  %20 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @zeta_xlt1_cs, double %19, %struct.gsl_sf_result_struct* %6), !dbg !579
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !580
  %22 = load double, double* %21, align 8, !dbg !580
  %23 = load double, double* %4, align 8, !dbg !581
  %24 = fsub double %23, 1.000000e+00, !dbg !582
  call void @fSubHandler(double %23, double 1.000000e+00, double %24, i64 94090724495640, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724496080, i32 159, i32 30), !dbg !583
  %25 = fdiv double %22, %24, !dbg !583
  call void @fDivHandler(double %22, double %24, double %25, i64 94090724493992, i64 94090724496080, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724496464, i32 159, i32 25), !dbg !584
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !584
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !585
  store double %25, double* %27, align 8, !dbg !586
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !587
  %29 = load double, double* %28, align 8, !dbg !587
  %30 = load double, double* %4, align 8, !dbg !588
  %31 = fsub double %30, 1.000000e+00, !dbg !589
  call void @fSubHandler(double %30, double 1.000000e+00, double %31, i64 94090724500200, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724500640, i32 160, i32 33), !dbg !590
  %32 = call double @fabs(double %31) #1, !dbg !590
  %33 = fdiv double %29, %32, !dbg !591
  call void @fDivHandler(double %29, double %32, double %33, i64 94090724498552, i64 94090724463232, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724501424, i32 160, i32 25), !dbg !592
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !592
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !593
  %36 = load double, double* %35, align 8, !dbg !593
  %37 = call double @fabs(double %36) #1, !dbg !594
  %38 = fmul double 0x3CB0000000000000, %37, !dbg !596
  call void @fMulHandler(double 0x3CB0000000000000, double %37, double %38, i64 0, i64 94090724504384, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724504864, i32 160, i32 57), !dbg !597
  %39 = fadd double %33, %38, !dbg !597
  call void @fAddHandler(double %33, double %38, double %39, i64 94090724501424, i64 94090724504864, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724505280, i32 160, i32 39), !dbg !598
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !598
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !599
  store double %39, double* %41, align 8, !dbg !600
  store i32 0, i32* %3, align 4, !dbg !601
  br label %107, !dbg !601

; <label>:42:                                     ; preds = %2
  %43 = load double, double* %4, align 8, !dbg !602
  %44 = fcmp ole double %43, 2.000000e+01, !dbg !604
  %45 = call i1 @fCmpInstHandler(double %43, double 2.000000e+01, i1 %44, i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724509568, i32 163, i32 13), !dbg !605
  br i1 %45, label %46, label %73, !dbg !605

; <label>:46:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata double* %7, metadata !606, metadata !108), !dbg !608
  %47 = load double, double* %4, align 8, !dbg !609
  %48 = fmul double 2.000000e+00, %47, !dbg !610
  call void @fMulHandler(double 2.000000e+00, double %47, double %48, i64 0, i64 94090724511800, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724512208, i32 164, i32 20), !dbg !611
  %49 = fsub double %48, 2.100000e+01, !dbg !611
  call void @fSubHandler(double %48, double 2.100000e+01, double %49, i64 94090724512208, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724512688, i32 164, i32 23), !dbg !612
  %50 = fdiv double %49, 1.900000e+01, !dbg !612
  call void @fDivHandler(double %49, double 1.900000e+01, double %50, i64 94090724512688, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724513168, i32 164, i32 30), !dbg !608
  store double %50, double* %7, align 8, !dbg !608
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !613, metadata !108), !dbg !614
  %51 = load double, double* %7, align 8, !dbg !615
  %52 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @zeta_xgt1_cs, double %51, %struct.gsl_sf_result_struct* %8), !dbg !616
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !617
  %54 = load double, double* %53, align 8, !dbg !617
  %55 = load double, double* %4, align 8, !dbg !618
  %56 = fsub double %55, 1.000000e+00, !dbg !619
  call void @fSubHandler(double %55, double 1.000000e+00, double %56, i64 94090724519336, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724519776, i32 167, i32 30), !dbg !620
  %57 = fdiv double %54, %56, !dbg !620
  call void @fDivHandler(double %54, double %56, double %57, i64 94090724517688, i64 94090724519776, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724520160, i32 167, i32 25), !dbg !621
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !621
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 0, !dbg !622
  store double %57, double* %59, align 8, !dbg !623
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !624
  %61 = load double, double* %60, align 8, !dbg !624
  %62 = load double, double* %4, align 8, !dbg !625
  %63 = fsub double %62, 1.000000e+00, !dbg !626
  call void @fSubHandler(double %62, double 1.000000e+00, double %63, i64 94090724523896, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724524336, i32 168, i32 30), !dbg !627
  %64 = fdiv double %61, %63, !dbg !627
  call void @fDivHandler(double %61, double %63, double %64, i64 94090724522248, i64 94090724524336, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724524720, i32 168, i32 25), !dbg !628
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !628
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !629
  %67 = load double, double* %66, align 8, !dbg !629
  %68 = call double @fabs(double %67) #1, !dbg !630
  %69 = fmul double 0x3CB0000000000000, %68, !dbg !631
  call void @fMulHandler(double 0x3CB0000000000000, double %68, double %69, i64 0, i64 94090724527680, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724528160, i32 168, i32 55), !dbg !632
  %70 = fadd double %64, %69, !dbg !632
  call void @fAddHandler(double %64, double %69, double %70, i64 94090724524720, i64 94090724528160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724528576, i32 168, i32 37), !dbg !633
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !633
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !634
  store double %70, double* %72, align 8, !dbg !635
  store i32 0, i32* %3, align 4, !dbg !636
  br label %107, !dbg !636

; <label>:73:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata double* %9, metadata !637, metadata !108), !dbg !639
  %74 = load double, double* %4, align 8, !dbg !640
  %75 = fsub double -0.000000e+00, %74, !dbg !641
  call void @fSubHandler(double -0.000000e+00, double %74, double %75, i64 0, i64 94090724533336, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724533712, i32 172, i32 31), !dbg !642
  %76 = call double @pow(double 2.000000e+00, double %75) #6, !dbg !642
  call void @callTwoArgsHandler(i32 15, double 2.000000e+00, double %75, double %76, i64 0, i64 94090724533712, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724534248, i32 172, i32 23), !dbg !643
  %77 = fsub double 1.000000e+00, %76, !dbg !643
  call void @fSubHandler(double 1.000000e+00, double %76, double %77, i64 0, i64 94090724534248, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724534720, i32 172, i32 21), !dbg !639
  store double %77, double* %9, align 8, !dbg !639
  call void @llvm.dbg.declare(metadata double* %10, metadata !644, metadata !108), !dbg !645
  %78 = load double, double* %4, align 8, !dbg !646
  %79 = fsub double -0.000000e+00, %78, !dbg !647
  call void @fSubHandler(double -0.000000e+00, double %78, double %79, i64 0, i64 94090724537880, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724538256, i32 173, i32 31), !dbg !648
  %80 = call double @pow(double 3.000000e+00, double %79) #6, !dbg !648
  call void @callTwoArgsHandler(i32 15, double 3.000000e+00, double %79, double %80, i64 0, i64 94090724538256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724538856, i32 173, i32 23), !dbg !649
  %81 = fsub double 1.000000e+00, %80, !dbg !649
  call void @fSubHandler(double 1.000000e+00, double %80, double %81, i64 0, i64 94090724538856, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724539328, i32 173, i32 21), !dbg !645
  store double %81, double* %10, align 8, !dbg !645
  call void @llvm.dbg.declare(metadata double* %11, metadata !650, metadata !108), !dbg !651
  %82 = load double, double* %4, align 8, !dbg !652
  %83 = fsub double -0.000000e+00, %82, !dbg !653
  call void @fSubHandler(double -0.000000e+00, double %82, double %83, i64 0, i64 94090724542488, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724542864, i32 174, i32 31), !dbg !654
  %84 = call double @pow(double 5.000000e+00, double %83) #6, !dbg !654
  call void @callTwoArgsHandler(i32 15, double 5.000000e+00, double %83, double %84, i64 0, i64 94090724542864, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724543464, i32 174, i32 23), !dbg !655
  %85 = fsub double 1.000000e+00, %84, !dbg !655
  call void @fSubHandler(double 1.000000e+00, double %84, double %85, i64 0, i64 94090724543464, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724543936, i32 174, i32 21), !dbg !651
  store double %85, double* %11, align 8, !dbg !651
  call void @llvm.dbg.declare(metadata double* %12, metadata !656, metadata !108), !dbg !657
  %86 = load double, double* %4, align 8, !dbg !658
  %87 = fsub double -0.000000e+00, %86, !dbg !659
  call void @fSubHandler(double -0.000000e+00, double %86, double %87, i64 0, i64 94090724547096, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724547472, i32 175, i32 31), !dbg !660
  %88 = call double @pow(double 7.000000e+00, double %87) #6, !dbg !660
  call void @callTwoArgsHandler(i32 15, double 7.000000e+00, double %87, double %88, i64 0, i64 94090724547472, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724548072, i32 175, i32 23), !dbg !661
  %89 = fsub double 1.000000e+00, %88, !dbg !661
  call void @fSubHandler(double 1.000000e+00, double %88, double %89, i64 0, i64 94090724548072, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724548544, i32 175, i32 21), !dbg !657
  store double %89, double* %12, align 8, !dbg !657
  %90 = load double, double* %9, align 8, !dbg !662
  %91 = load double, double* %10, align 8, !dbg !663
  %92 = fmul double %90, %91, !dbg !664
  call void @fMulHandler(double %90, double %91, double %92, i64 94090724550584, i64 94090724550968, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724551376, i32 176, i32 26), !dbg !665
  %93 = load double, double* %11, align 8, !dbg !665
  %94 = fmul double %92, %93, !dbg !666
  call void @fMulHandler(double %92, double %93, double %94, i64 94090724551376, i64 94090724551768, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724552176, i32 176, i32 29), !dbg !667
  %95 = load double, double* %12, align 8, !dbg !667
  %96 = fmul double %94, %95, !dbg !668
  call void @fMulHandler(double %94, double %95, double %96, i64 94090724552176, i64 94090724552568, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724552976, i32 176, i32 32), !dbg !669
  %97 = fdiv double 1.000000e+00, %96, !dbg !669
  call void @fDivHandler(double 1.000000e+00, double %96, double %97, i64 0, i64 94090724552976, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724553424, i32 176, i32 22), !dbg !670
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !670
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 0, !dbg !671
  store double %97, double* %99, align 8, !dbg !672
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !673
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 0, !dbg !674
  %102 = load double, double* %101, align 8, !dbg !674
  %103 = call double @fabs(double %102) #1, !dbg !675
  %104 = fmul double 0x3CC8000000000000, %103, !dbg !676
  call void @fMulHandler(double 0x3CC8000000000000, double %103, double %104, i64 0, i64 94090724557600, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0), i64 94090724558144, i32 177, i32 41), !dbg !677
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !677
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 1, !dbg !678
  store double %104, double* %106, align 8, !dbg !679
  store i32 0, i32* %3, align 4, !dbg !680
  br label %107, !dbg !680

; <label>:107:                                    ; preds = %73, %46, %16
  %108 = load i32, i32* %3, align 4, !dbg !681
  ret i32 %108, !dbg !681
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @riemann_zeta1ms_slt0(double, %struct.gsl_sf_result_struct*) #5 !dbg !682 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !683, metadata !108), !dbg !684
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !685, metadata !108), !dbg !686
  %12 = load double, double* %4, align 8, !dbg !687
  %13 = fcmp ogt double %12, -1.900000e+01, !dbg !689
  %14 = call i1 @fCmpInstHandler(double %12, double -1.900000e+01, i1 %13, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724568384, i32 187, i32 8), !dbg !690
  br i1 %14, label %15, label %42, !dbg !690

; <label>:15:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %6, metadata !691, metadata !108), !dbg !693
  %16 = load double, double* %4, align 8, !dbg !694
  %17 = fmul double 2.000000e+00, %16, !dbg !695
  call void @fMulHandler(double 2.000000e+00, double %16, double %17, i64 0, i64 94090724570520, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724570928, i32 188, i32 26), !dbg !696
  %18 = fsub double -1.900000e+01, %17, !dbg !696
  call void @fSubHandler(double -1.900000e+01, double %17, double %18, i64 0, i64 94090724570928, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724571344, i32 188, i32 21), !dbg !697
  %19 = fdiv double %18, 1.900000e+01, !dbg !697
  call void @fDivHandler(double %18, double 1.900000e+01, double %19, i64 94090724571344, i64 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724571760, i32 188, i32 29), !dbg !693
  store double %19, double* %6, align 8, !dbg !693
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !698, metadata !108), !dbg !699
  %20 = load double, double* %6, align 8, !dbg !700
  %21 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @zeta_xgt1_cs, double %20, %struct.gsl_sf_result_struct* %7), !dbg !701
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !702
  %23 = load double, double* %22, align 8, !dbg !702
  %24 = load double, double* %4, align 8, !dbg !703
  %25 = fsub double -0.000000e+00, %24, !dbg !704
  call void @fSubHandler(double -0.000000e+00, double %24, double %25, i64 0, i64 94090724577784, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724578192, i32 191, i32 28), !dbg !705
  %26 = fdiv double %23, %25, !dbg !705
  call void @fDivHandler(double %23, double %25, double %26, i64 94090724576136, i64 94090724578192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724578608, i32 191, i32 25), !dbg !706
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !706
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !707
  store double %26, double* %28, align 8, !dbg !708
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !709
  %30 = load double, double* %29, align 8, !dbg !709
  %31 = load double, double* %4, align 8, !dbg !710
  %32 = fsub double -0.000000e+00, %31, !dbg !711
  call void @fSubHandler(double -0.000000e+00, double %31, double %32, i64 0, i64 94090724582344, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724582752, i32 192, i32 28), !dbg !712
  %33 = fdiv double %30, %32, !dbg !712
  call void @fDivHandler(double %30, double %32, double %33, i64 94090724580696, i64 94090724582752, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724583168, i32 192, i32 25), !dbg !713
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !713
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !714
  %36 = load double, double* %35, align 8, !dbg !714
  %37 = call double @fabs(double %36) #1, !dbg !715
  %38 = fmul double 0x3CB0000000000000, %37, !dbg !716
  call void @fMulHandler(double 0x3CB0000000000000, double %37, double %38, i64 0, i64 94090724586128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724586608, i32 192, i32 50), !dbg !717
  %39 = fadd double %33, %38, !dbg !717
  call void @fAddHandler(double %33, double %38, double %39, i64 94090724583168, i64 94090724586608, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724587024, i32 192, i32 32), !dbg !718
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !718
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !719
  store double %39, double* %41, align 8, !dbg !720
  store i32 0, i32* %3, align 4, !dbg !721
  br label %80, !dbg !721

; <label>:42:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %8, metadata !722, metadata !108), !dbg !724
  %43 = load double, double* %4, align 8, !dbg !725
  %44 = fsub double 1.000000e+00, %43, !dbg !726
  call void @fSubHandler(double 1.000000e+00, double %43, double %44, i64 0, i64 94090724591928, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724592336, i32 196, i32 36), !dbg !727
  %45 = fsub double -0.000000e+00, %44, !dbg !727
  call void @fSubHandler(double -0.000000e+00, double %44, double %45, i64 0, i64 94090724592336, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724592720, i32 196, i32 31), !dbg !728
  %46 = call double @pow(double 2.000000e+00, double %45) #6, !dbg !728
  call void @callTwoArgsHandler(i32 15, double 2.000000e+00, double %45, double %46, i64 0, i64 94090724592720, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724593256, i32 196, i32 23), !dbg !729
  %47 = fsub double 1.000000e+00, %46, !dbg !729
  call void @fSubHandler(double 1.000000e+00, double %46, double %47, i64 0, i64 94090724593256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724593728, i32 196, i32 21), !dbg !724
  store double %47, double* %8, align 8, !dbg !724
  call void @llvm.dbg.declare(metadata double* %9, metadata !730, metadata !108), !dbg !731
  %48 = load double, double* %4, align 8, !dbg !732
  %49 = fsub double 1.000000e+00, %48, !dbg !733
  call void @fSubHandler(double 1.000000e+00, double %48, double %49, i64 0, i64 94090724596888, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724597296, i32 197, i32 36), !dbg !734
  %50 = fsub double -0.000000e+00, %49, !dbg !734
  call void @fSubHandler(double -0.000000e+00, double %49, double %50, i64 0, i64 94090724597296, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724597680, i32 197, i32 31), !dbg !735
  %51 = call double @pow(double 3.000000e+00, double %50) #6, !dbg !735
  call void @callTwoArgsHandler(i32 15, double 3.000000e+00, double %50, double %51, i64 0, i64 94090724597680, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724598216, i32 197, i32 23), !dbg !736
  %52 = fsub double 1.000000e+00, %51, !dbg !736
  call void @fSubHandler(double 1.000000e+00, double %51, double %52, i64 0, i64 94090724598216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724598688, i32 197, i32 21), !dbg !731
  store double %52, double* %9, align 8, !dbg !731
  call void @llvm.dbg.declare(metadata double* %10, metadata !737, metadata !108), !dbg !738
  %53 = load double, double* %4, align 8, !dbg !739
  %54 = fsub double 1.000000e+00, %53, !dbg !740
  call void @fSubHandler(double 1.000000e+00, double %53, double %54, i64 0, i64 94090724601848, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724602256, i32 198, i32 36), !dbg !741
  %55 = fsub double -0.000000e+00, %54, !dbg !741
  call void @fSubHandler(double -0.000000e+00, double %54, double %55, i64 0, i64 94090724602256, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724602640, i32 198, i32 31), !dbg !742
  %56 = call double @pow(double 5.000000e+00, double %55) #6, !dbg !742
  call void @callTwoArgsHandler(i32 15, double 5.000000e+00, double %55, double %56, i64 0, i64 94090724602640, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724603176, i32 198, i32 23), !dbg !743
  %57 = fsub double 1.000000e+00, %56, !dbg !743
  call void @fSubHandler(double 1.000000e+00, double %56, double %57, i64 0, i64 94090724603176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724603648, i32 198, i32 21), !dbg !738
  store double %57, double* %10, align 8, !dbg !738
  call void @llvm.dbg.declare(metadata double* %11, metadata !744, metadata !108), !dbg !745
  %58 = load double, double* %4, align 8, !dbg !746
  %59 = fsub double 1.000000e+00, %58, !dbg !747
  call void @fSubHandler(double 1.000000e+00, double %58, double %59, i64 0, i64 94090724606808, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724607216, i32 199, i32 36), !dbg !748
  %60 = fsub double -0.000000e+00, %59, !dbg !748
  call void @fSubHandler(double -0.000000e+00, double %59, double %60, i64 0, i64 94090724607216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724607600, i32 199, i32 31), !dbg !749
  %61 = call double @pow(double 7.000000e+00, double %60) #6, !dbg !749
  call void @callTwoArgsHandler(i32 15, double 7.000000e+00, double %60, double %61, i64 0, i64 94090724607600, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724608136, i32 199, i32 23), !dbg !750
  %62 = fsub double 1.000000e+00, %61, !dbg !750
  call void @fSubHandler(double 1.000000e+00, double %61, double %62, i64 0, i64 94090724608136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724608608, i32 199, i32 21), !dbg !745
  store double %62, double* %11, align 8, !dbg !745
  %63 = load double, double* %8, align 8, !dbg !751
  %64 = load double, double* %9, align 8, !dbg !752
  %65 = fmul double %63, %64, !dbg !753
  call void @fMulHandler(double %63, double %64, double %65, i64 94090724610648, i64 94090724611032, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724611440, i32 200, i32 26), !dbg !754
  %66 = load double, double* %10, align 8, !dbg !754
  %67 = fmul double %65, %66, !dbg !755
  call void @fMulHandler(double %65, double %66, double %67, i64 94090724611440, i64 94090724611832, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724612240, i32 200, i32 29), !dbg !756
  %68 = load double, double* %11, align 8, !dbg !756
  %69 = fmul double %67, %68, !dbg !757
  call void @fMulHandler(double %67, double %68, double %69, i64 94090724612240, i64 94090724612632, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724613040, i32 200, i32 32), !dbg !758
  %70 = fdiv double 1.000000e+00, %69, !dbg !758
  call void @fDivHandler(double 1.000000e+00, double %69, double %70, i64 0, i64 94090724613040, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724613488, i32 200, i32 22), !dbg !759
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !759
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !760
  store double %70, double* %72, align 8, !dbg !761
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !762
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !763
  %75 = load double, double* %74, align 8, !dbg !763
  %76 = call double @fabs(double %75) #1, !dbg !764
  %77 = fmul double 0x3CC8000000000000, %76, !dbg !765
  call void @fMulHandler(double 0x3CC8000000000000, double %76, double %77, i64 0, i64 94090724617664, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @7, i32 0, i32 0), i64 94090724618144, i32 201, i32 41), !dbg !766
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !766
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !767
  store double %77, double* %79, align 8, !dbg !768
  store i32 0, i32* %3, align 4, !dbg !769
  br label %80, !dbg !769

; <label>:80:                                     ; preds = %42, %15
  %81 = load i32, i32* %3, align 4, !dbg !770
  ret i32 %81, !dbg !770
}

; Function Attrs: nounwind
declare double @fmod(double, double) #3

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #4

declare i32 @gsl_sf_gamma_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_zeta_int_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !771 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !774, metadata !108), !dbg !775
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !776, metadata !108), !dbg !777
  %6 = load i32, i32* %4, align 4, !dbg !778
  %7 = icmp slt i32 %6, 0, !dbg !780
  %8 = sext i32 %6 to i64, !dbg !781
  %9 = call i1 @iCmpInstHandler(i64 %8, i64 0, i1 %7, i32 40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94090724628688, i32 857, i32 8), !dbg !781
  br i1 %9, label %10, label %48, !dbg !781

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4, !dbg !782
  %12 = and i32 %11, 1, !dbg !782
  %13 = icmp ne i32 %12, 0, !dbg !782
  %14 = sext i32 %12 to i64, !dbg !785
  %15 = call i1 @iCmpInstHandler(i64 %14, i64 0, i1 %13, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94090724631872, i32 858, i32 9), !dbg !785
  br i1 %15, label %21, label %16, !dbg !785

; <label>:16:                                     ; preds = %10
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !786
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !788
  store double 0.000000e+00, double* %18, align 8, !dbg !789
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !790
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !791
  store double 0.000000e+00, double* %20, align 8, !dbg !792
  store i32 0, i32* %3, align 4, !dbg !793
  br label %88, !dbg !793

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* %4, align 4, !dbg !794
  %23 = icmp sgt i32 %22, -99, !dbg !796
  %24 = sext i32 %22 to i64, !dbg !797
  %25 = call i1 @iCmpInstHandler(i64 %24, i64 -99, i1 %23, i32 38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94090724637472, i32 863, i32 15), !dbg !797
  br i1 %25, label %26, label %43, !dbg !797

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %4, align 4, !dbg !798
  %28 = add nsw i32 %27, 1, !dbg !800
  %29 = sub nsw i32 0, %28, !dbg !801
  %30 = sdiv i32 %29, 2, !dbg !802
  %31 = sext i32 %30 to i64, !dbg !803
  %32 = getelementptr inbounds [50 x double], [50 x double]* @zeta_neg_int_table, i64 0, i64 %31, !dbg !803
  %33 = load double, double* %32, align 8, !dbg !803
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !804
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !805
  store double %33, double* %35, align 8, !dbg !806
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !807
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !808
  %38 = load double, double* %37, align 8, !dbg !808
  %39 = call double @fabs(double %38) #1, !dbg !809
  %40 = fmul double 0x3CC0000000000000, %39, !dbg !810
  call void @fMulHandler(double 0x3CC0000000000000, double %39, double %40, i64 0, i64 94090724646016, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94090724646496, i32 865, i32 43), !dbg !811
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !811
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !812
  store double %40, double* %42, align 8, !dbg !813
  store i32 0, i32* %3, align 4, !dbg !814
  br label %88, !dbg !814

; <label>:43:                                     ; preds = %21
  %44 = load i32, i32* %4, align 4, !dbg !815
  %45 = sitofp i32 %44 to double, !dbg !817
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !818
  %47 = call i32 @gsl_sf_zeta_e(double %45, %struct.gsl_sf_result_struct* %46), !dbg !819
  store i32 %47, i32* %3, align 4, !dbg !820
  br label %88, !dbg !820

; <label>:48:                                     ; preds = %2
  %49 = load i32, i32* %4, align 4, !dbg !821
  %50 = icmp eq i32 %49, 1, !dbg !823
  %51 = sext i32 %49 to i64, !dbg !824
  %52 = call i1 @iCmpInstHandler(i64 %51, i64 1, i1 %50, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94090724654224, i32 872, i32 13), !dbg !824
  br i1 %52, label %53, label %62, !dbg !824

; <label>:53:                                     ; preds = %48
  br label %54, !dbg !825, !llvm.loop !827

; <label>:54:                                     ; preds = %53
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !828
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !828
  store double 0x7FF8000000000000, double* %56, align 8, !dbg !828
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !828
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !828
  store double 0x7FF8000000000000, double* %58, align 8, !dbg !828
  br label %59, !dbg !828, !llvm.loop !831

; <label>:59:                                     ; preds = %54
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 873, i32 1), !dbg !833
  store i32 1, i32* %3, align 4, !dbg !833
  br label %88, !dbg !833
                                                  ; No predecessors!
  br label %61, !dbg !836

; <label>:61:                                     ; preds = %60
  br label %87, !dbg !838

; <label>:62:                                     ; preds = %48
  %63 = load i32, i32* %4, align 4, !dbg !839
  %64 = icmp sle i32 %63, 100, !dbg !841
  %65 = sext i32 %63 to i64, !dbg !842
  %66 = call i1 @iCmpInstHandler(i64 %65, i64 100, i1 %64, i32 41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94090724662992, i32 875, i32 13), !dbg !842
  br i1 %66, label %67, label %82, !dbg !842

; <label>:67:                                     ; preds = %62
  %68 = load i32, i32* %4, align 4, !dbg !843
  %69 = sext i32 %68 to i64, !dbg !845
  %70 = getelementptr inbounds [101 x double], [101 x double]* @zetam1_pos_int_table, i64 0, i64 %69, !dbg !845
  %71 = load double, double* %70, align 8, !dbg !845
  %72 = fadd double 1.000000e+00, %71, !dbg !846
  call void @fAddHandler(double 1.000000e+00, double %71, double %72, i64 0, i64 94090724666520, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94090724666672, i32 876, i32 23), !dbg !847
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !847
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !848
  store double %72, double* %74, align 8, !dbg !849
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !850
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !851
  %77 = load double, double* %76, align 8, !dbg !851
  %78 = call double @fabs(double %77) #1, !dbg !852
  %79 = fmul double 0x3CC0000000000000, %78, !dbg !853
  call void @fMulHandler(double 0x3CC0000000000000, double %78, double %79, i64 0, i64 94090724670848, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0), i64 94090724671328, i32 877, i32 41), !dbg !854
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !854
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !855
  store double %79, double* %81, align 8, !dbg !856
  store i32 0, i32* %3, align 4, !dbg !857
  br label %88, !dbg !857

; <label>:82:                                     ; preds = %62
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !858
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !860
  store double 1.000000e+00, double* %84, align 8, !dbg !861
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !862
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 1, !dbg !863
  store double 0x3CB0000000000000, double* %86, align 8, !dbg !864
  store i32 0, i32* %3, align 4, !dbg !865
  br label %88, !dbg !865

; <label>:87:                                     ; preds = %61
  br label %88

; <label>:88:                                     ; preds = %87, %82, %67, %59, %43, %26, %16
  %89 = load i32, i32* %3, align 4, !dbg !866
  ret i32 %89, !dbg !866
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_zetam1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !867 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !868, metadata !108), !dbg !869
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !870, metadata !108), !dbg !871
  %7 = load double, double* %4, align 8, !dbg !872
  %8 = fcmp ole double %7, 5.000000e+00, !dbg !874
  %9 = call i1 @fCmpInstHandler(double %7, double 5.000000e+00, i1 %8, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94090724409056, i32 890, i32 8), !dbg !875
  br i1 %9, label %10, label %21, !dbg !875

; <label>:10:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !876, metadata !108), !dbg !878
  %11 = load double, double* %4, align 8, !dbg !879
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !880
  %13 = call i32 @gsl_sf_zeta_e(double %11, %struct.gsl_sf_result_struct* %12), !dbg !881
  store i32 %13, i32* %6, align 4, !dbg !878
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !882
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !883
  %16 = load double, double* %15, align 8, !dbg !883
  %17 = fsub double %16, 1.000000e+00, !dbg !884
  call void @fSubHandler(double %16, double 1.000000e+00, double %17, i64 94090724695896, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94090724697600, i32 893, i32 31), !dbg !885
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !885
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !886
  store double %17, double* %19, align 8, !dbg !887
  %20 = load i32, i32* %6, align 4, !dbg !888
  store i32 %20, i32* %3, align 4, !dbg !889
  br label %33, !dbg !889

; <label>:21:                                     ; preds = %2
  %22 = load double, double* %4, align 8, !dbg !890
  %23 = fcmp olt double %22, 1.500000e+01, !dbg !892
  %24 = call i1 @fCmpInstHandler(double %22, double 1.500000e+01, i1 %23, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @11, i32 0, i32 0), i64 94090724702240, i32 896, i32 13), !dbg !893
  br i1 %24, label %25, label %29, !dbg !893

; <label>:25:                                     ; preds = %21
  %26 = load double, double* %4, align 8, !dbg !894
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !896
  %28 = call i32 @riemann_zeta_minus_1_intermediate_s(double %26, %struct.gsl_sf_result_struct* %27), !dbg !897
  store i32 %28, i32* %3, align 4, !dbg !898
  br label %33, !dbg !898

; <label>:29:                                     ; preds = %21
  %30 = load double, double* %4, align 8, !dbg !899
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !901
  %32 = call i32 @riemann_zeta_minus1_large_s(double %30, %struct.gsl_sf_result_struct* %31), !dbg !902
  store i32 %32, i32* %3, align 4, !dbg !903
  br label %33, !dbg !903

; <label>:33:                                     ; preds = %29, %25, %10
  %34 = load i32, i32* %3, align 4, !dbg !904
  ret i32 %34, !dbg !904
}

; Function Attrs: nounwind uwtable
define internal i32 @riemann_zeta_minus_1_intermediate_s(double, %struct.gsl_sf_result_struct*) #0 !dbg !905 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !906, metadata !108), !dbg !907
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !908, metadata !108), !dbg !909
  call void @llvm.dbg.declare(metadata double* %5, metadata !910, metadata !108), !dbg !911
  %7 = load double, double* %3, align 8, !dbg !912
  %8 = fsub double %7, 1.000000e+01, !dbg !913
  call void @fSubHandler(double %7, double 1.000000e+01, double %8, i64 94090724704184, i64 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94090724717552, i32 211, i32 17), !dbg !914
  %9 = fdiv double %8, 5.000000e+00, !dbg !914
  call void @fDivHandler(double %8, double 5.000000e+00, double %9, i64 94090724717552, i64 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94090724718112, i32 211, i32 24), !dbg !911
  store double %9, double* %5, align 8, !dbg !911
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !915, metadata !108), !dbg !916
  %10 = load double, double* %5, align 8, !dbg !917
  %11 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @zetam1_inter_cs, double %10, %struct.gsl_sf_result_struct* %6), !dbg !918
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !919
  %13 = load double, double* %12, align 8, !dbg !919
  %14 = call double @exp(double %13) #6, !dbg !920
  call void @callOneArgHandler(i32 11, double %13, double %14, i64 94090724722552, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94090724724560, i32 214, i32 17), !dbg !921
  %15 = load double, double* %3, align 8, !dbg !921
  %16 = fsub double -0.000000e+00, %15, !dbg !922
  call void @fSubHandler(double -0.000000e+00, double %15, double %16, i64 0, i64 94090724725048, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94090724725456, i32 214, i32 39), !dbg !923
  %17 = call double @pow(double 2.000000e+00, double %16) #6, !dbg !923
  call void @callTwoArgsHandler(i32 15, double 2.000000e+00, double %16, double %17, i64 0, i64 94090724725456, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94090724725992, i32 214, i32 30), !dbg !925
  %18 = fadd double %14, %17, !dbg !925
  call void @fAddHandler(double %14, double %17, double %18, i64 94090724724560, i64 94090724725992, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94090724726464, i32 214, i32 28), !dbg !926
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !926
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !927
  store double %18, double* %20, align 8, !dbg !928
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !929
  %22 = load double, double* %21, align 8, !dbg !929
  %23 = fadd double %22, 0x3CC0000000000000, !dbg !930
  call void @fAddHandler(double %22, double 0x3CC0000000000000, double %23, i64 94090724728520, i64 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94090724730192, i32 215, i32 24), !dbg !931
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !931
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !932
  %26 = load double, double* %25, align 8, !dbg !932
  %27 = fmul double %23, %26, !dbg !933
  call void @fMulHandler(double %23, double %26, double %27, i64 94090724730192, i64 94090724731416, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0), i64 94090724733088, i32 215, i32 46), !dbg !934
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !934
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !935
  store double %27, double* %29, align 8, !dbg !936
  ret i32 0, !dbg !937
}

; Function Attrs: nounwind uwtable
define internal i32 @riemann_zeta_minus1_large_s(double, %struct.gsl_sf_result_struct*) #0 !dbg !938 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !939, metadata !108), !dbg !940
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !941, metadata !108), !dbg !942
  call void @llvm.dbg.declare(metadata double* %5, metadata !943, metadata !108), !dbg !944
  %15 = load double, double* %3, align 8, !dbg !945
  %16 = fsub double -0.000000e+00, %15, !dbg !946
  call void @fSubHandler(double -0.000000e+00, double %15, double %16, i64 0, i64 94090724707912, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724740896, i32 229, i32 23), !dbg !947
  %17 = call double @pow(double 2.000000e+00, double %16) #6, !dbg !947
  call void @callTwoArgsHandler(i32 15, double 2.000000e+00, double %16, double %17, i64 0, i64 94090724740896, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724741432, i32 229, i32 14), !dbg !944
  store double %17, double* %5, align 8, !dbg !944
  call void @llvm.dbg.declare(metadata double* %6, metadata !948, metadata !108), !dbg !949
  %18 = load double, double* %3, align 8, !dbg !950
  %19 = fsub double -0.000000e+00, %18, !dbg !951
  call void @fSubHandler(double -0.000000e+00, double %18, double %19, i64 0, i64 94090724744504, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724744880, i32 230, i32 23), !dbg !952
  %20 = call double @pow(double 3.000000e+00, double %19) #6, !dbg !952
  call void @callTwoArgsHandler(i32 15, double 3.000000e+00, double %19, double %20, i64 0, i64 94090724744880, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724745416, i32 230, i32 14), !dbg !949
  store double %20, double* %6, align 8, !dbg !949
  call void @llvm.dbg.declare(metadata double* %7, metadata !953, metadata !108), !dbg !954
  %21 = load double, double* %3, align 8, !dbg !955
  %22 = fsub double -0.000000e+00, %21, !dbg !956
  call void @fSubHandler(double -0.000000e+00, double %21, double %22, i64 0, i64 94090724748632, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724749008, i32 231, i32 23), !dbg !957
  %23 = call double @pow(double 5.000000e+00, double %22) #6, !dbg !957
  call void @callTwoArgsHandler(i32 15, double 5.000000e+00, double %22, double %23, i64 0, i64 94090724749008, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724749544, i32 231, i32 14), !dbg !954
  store double %23, double* %7, align 8, !dbg !954
  call void @llvm.dbg.declare(metadata double* %8, metadata !958, metadata !108), !dbg !959
  %24 = load double, double* %3, align 8, !dbg !960
  %25 = fsub double -0.000000e+00, %24, !dbg !961
  call void @fSubHandler(double -0.000000e+00, double %24, double %25, i64 0, i64 94090724752760, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724753136, i32 232, i32 23), !dbg !962
  %26 = call double @pow(double 7.000000e+00, double %25) #6, !dbg !962
  call void @callTwoArgsHandler(i32 15, double 7.000000e+00, double %25, double %26, i64 0, i64 94090724753136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724753672, i32 232, i32 14), !dbg !959
  store double %26, double* %8, align 8, !dbg !959
  call void @llvm.dbg.declare(metadata double* %9, metadata !963, metadata !108), !dbg !964
  %27 = load double, double* %3, align 8, !dbg !965
  %28 = fsub double -0.000000e+00, %27, !dbg !966
  call void @fSubHandler(double -0.000000e+00, double %27, double %28, i64 0, i64 94090724756888, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724757264, i32 233, i32 23), !dbg !967
  %29 = call double @pow(double 1.100000e+01, double %28) #6, !dbg !967
  call void @callTwoArgsHandler(i32 15, double 1.100000e+01, double %28, double %29, i64 0, i64 94090724757264, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724757864, i32 233, i32 14), !dbg !964
  store double %29, double* %9, align 8, !dbg !964
  call void @llvm.dbg.declare(metadata double* %10, metadata !968, metadata !108), !dbg !969
  %30 = load double, double* %3, align 8, !dbg !970
  %31 = fsub double -0.000000e+00, %30, !dbg !971
  call void @fSubHandler(double -0.000000e+00, double %30, double %31, i64 0, i64 94090724761080, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724761456, i32 234, i32 23), !dbg !972
  %32 = call double @pow(double 1.300000e+01, double %31) #6, !dbg !972
  call void @callTwoArgsHandler(i32 15, double 1.300000e+01, double %31, double %32, i64 0, i64 94090724761456, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724151880, i32 234, i32 14), !dbg !969
  store double %32, double* %10, align 8, !dbg !969
  call void @llvm.dbg.declare(metadata double* %11, metadata !973, metadata !108), !dbg !974
  %33 = load double, double* %5, align 8, !dbg !975
  %34 = load double, double* %6, align 8, !dbg !976
  %35 = fadd double %33, %34, !dbg !977
  call void @fAddHandler(double %33, double %34, double %35, i64 94090724155096, i64 94090724155448, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724155856, i32 235, i32 17), !dbg !978
  %36 = load double, double* %7, align 8, !dbg !978
  %37 = fadd double %35, %36, !dbg !979
  call void @fAddHandler(double %35, double %36, double %37, i64 94090724155856, i64 94090724156248, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724156656, i32 235, i32 21), !dbg !980
  %38 = load double, double* %8, align 8, !dbg !980
  %39 = fadd double %37, %38, !dbg !981
  call void @fAddHandler(double %37, double %38, double %39, i64 94090724156656, i64 94090724157048, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724157456, i32 235, i32 25), !dbg !982
  %40 = load double, double* %9, align 8, !dbg !982
  %41 = fadd double %39, %40, !dbg !983
  call void @fAddHandler(double %39, double %40, double %41, i64 94090724157456, i64 94090724157848, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724158256, i32 235, i32 29), !dbg !984
  %42 = load double, double* %10, align 8, !dbg !984
  %43 = fadd double %41, %42, !dbg !985
  call void @fAddHandler(double %41, double %42, double %43, i64 94090724158256, i64 94090724158648, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724159056, i32 235, i32 33), !dbg !974
  store double %43, double* %11, align 8, !dbg !974
  call void @llvm.dbg.declare(metadata double* %12, metadata !986, metadata !108), !dbg !987
  %44 = load double, double* %5, align 8, !dbg !988
  %45 = load double, double* %6, align 8, !dbg !989
  %46 = load double, double* %7, align 8, !dbg !990
  %47 = fadd double %45, %46, !dbg !991
  call void @fAddHandler(double %45, double %46, double %47, i64 94090724162600, i64 94090724162984, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724163392, i32 236, i32 19), !dbg !992
  %48 = load double, double* %8, align 8, !dbg !992
  %49 = fadd double %47, %48, !dbg !993
  call void @fAddHandler(double %47, double %48, double %49, i64 94090724163392, i64 94090724163784, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724164192, i32 236, i32 21), !dbg !994
  %50 = load double, double* %9, align 8, !dbg !994
  %51 = fadd double %49, %50, !dbg !995
  call void @fAddHandler(double %49, double %50, double %51, i64 94090724164192, i64 94090724164584, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724164992, i32 236, i32 23), !dbg !996
  %52 = load double, double* %10, align 8, !dbg !996
  %53 = fadd double %51, %52, !dbg !997
  call void @fAddHandler(double %51, double %52, double %53, i64 94090724164992, i64 94090724165384, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724165792, i32 236, i32 25), !dbg !998
  %54 = fmul double %44, %53, !dbg !998
  call void @fMulHandler(double %44, double %53, double %54, i64 94090724162248, i64 94090724165792, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724166208, i32 236, i32 16), !dbg !999
  %55 = load double, double* %6, align 8, !dbg !999
  %56 = load double, double* %7, align 8, !dbg !1000
  %57 = load double, double* %8, align 8, !dbg !1001
  %58 = fadd double %56, %57, !dbg !1002
  call void @fAddHandler(double %56, double %57, double %58, i64 94090724166984, i64 94090724167368, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724167776, i32 236, i32 35), !dbg !1003
  %59 = load double, double* %9, align 8, !dbg !1003
  %60 = fadd double %58, %59, !dbg !1004
  call void @fAddHandler(double %58, double %59, double %60, i64 94090724167776, i64 94090724794792, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724795136, i32 236, i32 37), !dbg !1005
  %61 = load double, double* %10, align 8, !dbg !1005
  %62 = fadd double %60, %61, !dbg !1006
  call void @fAddHandler(double %60, double %61, double %62, i64 94090724795136, i64 94090724795528, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724795936, i32 236, i32 39), !dbg !1007
  %63 = fmul double %55, %62, !dbg !1007
  call void @fMulHandler(double %55, double %62, double %63, i64 94090724166600, i64 94090724795936, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724796352, i32 236, i32 32), !dbg !1008
  %64 = fadd double %54, %63, !dbg !1008
  call void @fAddHandler(double %54, double %63, double %64, i64 94090724166208, i64 94090724796352, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724796768, i32 236, i32 29), !dbg !1009
  %65 = load double, double* %7, align 8, !dbg !1009
  %66 = load double, double* %8, align 8, !dbg !1010
  %67 = load double, double* %9, align 8, !dbg !1011
  %68 = fadd double %66, %67, !dbg !1012
  call void @fAddHandler(double %66, double %67, double %68, i64 94090724797544, i64 94090724797928, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724798336, i32 236, i32 49), !dbg !1013
  %69 = load double, double* %10, align 8, !dbg !1013
  %70 = fadd double %68, %69, !dbg !1014
  call void @fAddHandler(double %68, double %69, double %70, i64 94090724798336, i64 94090724798728, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724799136, i32 236, i32 51), !dbg !1015
  %71 = fmul double %65, %70, !dbg !1015
  call void @fMulHandler(double %65, double %70, double %71, i64 94090724797160, i64 94090724799136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724799552, i32 236, i32 46), !dbg !1016
  %72 = fadd double %64, %71, !dbg !1016
  call void @fAddHandler(double %64, double %71, double %72, i64 94090724796768, i64 94090724799552, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724799968, i32 236, i32 43), !dbg !1017
  %73 = load double, double* %8, align 8, !dbg !1017
  %74 = load double, double* %9, align 8, !dbg !1018
  %75 = load double, double* %10, align 8, !dbg !1019
  %76 = fadd double %74, %75, !dbg !1020
  call void @fAddHandler(double %74, double %75, double %76, i64 94090724800744, i64 94090724801128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724801536, i32 236, i32 61), !dbg !1021
  %77 = fmul double %73, %76, !dbg !1021
  call void @fMulHandler(double %73, double %76, double %77, i64 94090724800360, i64 94090724801536, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724801952, i32 236, i32 58), !dbg !1022
  %78 = fadd double %72, %77, !dbg !1022
  call void @fAddHandler(double %72, double %77, double %78, i64 94090724799968, i64 94090724801952, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724802368, i32 236, i32 55), !dbg !1023
  %79 = load double, double* %9, align 8, !dbg !1023
  %80 = load double, double* %10, align 8, !dbg !1024
  %81 = fmul double %79, %80, !dbg !1025
  call void @fMulHandler(double %79, double %80, double %81, i64 94090724802760, i64 94090724803144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724803552, i32 236, i32 68), !dbg !1026
  %82 = fadd double %78, %81, !dbg !1026
  call void @fAddHandler(double %78, double %81, double %82, i64 94090724802368, i64 94090724803552, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724803968, i32 236, i32 65), !dbg !987
  store double %82, double* %12, align 8, !dbg !987
  call void @llvm.dbg.declare(metadata double* %13, metadata !1027, metadata !108), !dbg !1028
  %83 = load double, double* %11, align 8, !dbg !1029
  %84 = load double, double* %12, align 8, !dbg !1030
  %85 = fsub double %83, %84, !dbg !1031
  call void @fSubHandler(double %83, double %84, double %85, i64 94090724807160, i64 94090724807512, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724807920, i32 248, i32 20), !dbg !1028
  store double %85, double* %13, align 8, !dbg !1028
  call void @llvm.dbg.declare(metadata double* %14, metadata !1032, metadata !108), !dbg !1033
  %86 = load double, double* %5, align 8, !dbg !1034
  %87 = fsub double 1.000000e+00, %86, !dbg !1035
  call void @fSubHandler(double 1.000000e+00, double %86, double %87, i64 0, i64 94090724811112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724811520, i32 249, i32 26), !dbg !1036
  %88 = load double, double* %6, align 8, !dbg !1036
  %89 = fsub double 1.000000e+00, %88, !dbg !1037
  call void @fSubHandler(double 1.000000e+00, double %88, double %89, i64 0, i64 94090724811880, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724812320, i32 249, i32 34), !dbg !1038
  %90 = fmul double %87, %89, !dbg !1038
  call void @fMulHandler(double %87, double %89, double %90, i64 94090724811520, i64 94090724812320, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724812704, i32 249, i32 29), !dbg !1039
  %91 = load double, double* %7, align 8, !dbg !1039
  %92 = fsub double 1.000000e+00, %91, !dbg !1040
  call void @fSubHandler(double 1.000000e+00, double %91, double %92, i64 0, i64 94090724813096, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724813536, i32 249, i32 42), !dbg !1041
  %93 = fmul double %90, %92, !dbg !1041
  call void @fMulHandler(double %90, double %92, double %93, i64 94090724812704, i64 94090724813536, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724813920, i32 249, i32 37), !dbg !1042
  %94 = load double, double* %8, align 8, !dbg !1042
  %95 = fsub double 1.000000e+00, %94, !dbg !1043
  call void @fSubHandler(double 1.000000e+00, double %94, double %95, i64 0, i64 94090724814312, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724814752, i32 249, i32 50), !dbg !1044
  %96 = fmul double %93, %95, !dbg !1044
  call void @fMulHandler(double %93, double %95, double %96, i64 94090724813920, i64 94090724814752, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724815136, i32 249, i32 45), !dbg !1045
  %97 = load double, double* %9, align 8, !dbg !1045
  %98 = fsub double 1.000000e+00, %97, !dbg !1046
  call void @fSubHandler(double 1.000000e+00, double %97, double %98, i64 0, i64 94090724815528, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724815968, i32 249, i32 58), !dbg !1047
  %99 = fmul double %96, %98, !dbg !1047
  call void @fMulHandler(double %96, double %98, double %99, i64 94090724815136, i64 94090724815968, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724816352, i32 249, i32 53), !dbg !1048
  %100 = load double, double* %10, align 8, !dbg !1048
  %101 = fsub double 1.000000e+00, %100, !dbg !1049
  call void @fSubHandler(double 1.000000e+00, double %100, double %101, i64 0, i64 94090724816744, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724817184, i32 249, i32 66), !dbg !1050
  %102 = fmul double %99, %101, !dbg !1050
  call void @fMulHandler(double %99, double %101, double %102, i64 94090724816352, i64 94090724817184, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724817568, i32 249, i32 61), !dbg !1051
  %103 = fdiv double 1.000000e+00, %102, !dbg !1051
  call void @fDivHandler(double 1.000000e+00, double %102, double %103, i64 0, i64 94090724817568, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724818016, i32 249, i32 20), !dbg !1033
  store double %103, double* %14, align 8, !dbg !1033
  %104 = load double, double* %13, align 8, !dbg !1052
  %105 = load double, double* %14, align 8, !dbg !1053
  %106 = fmul double %104, %105, !dbg !1054
  call void @fMulHandler(double %104, double %105, double %106, i64 94090724820056, i64 94090724820440, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724820848, i32 250, i32 21), !dbg !1055
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1055
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 0, !dbg !1056
  store double %106, double* %108, align 8, !dbg !1057
  %109 = load double, double* %3, align 8, !dbg !1058
  %110 = fdiv double 1.500000e+01, %109, !dbg !1059
  call void @fDivHandler(double 1.500000e+01, double %109, double %110, i64 0, i64 94090724822488, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724822928, i32 251, i32 22), !dbg !1060
  %111 = fadd double %110, 1.000000e+00, !dbg !1060
  call void @fAddHandler(double %110, double 1.000000e+00, double %111, i64 94090724822928, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724823344, i32 251, i32 25), !dbg !1061
  %112 = fmul double %111, 6.000000e+00, !dbg !1061
  call void @fMulHandler(double %111, double 6.000000e+00, double %112, i64 94090724823344, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724823824, i32 251, i32 32), !dbg !1062
  %113 = fmul double %112, 0x3CB0000000000000, !dbg !1062
  call void @fMulHandler(double %112, double 0x3CB0000000000000, double %113, i64 94090724823824, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724824208, i32 251, i32 37), !dbg !1063
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1063
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !1064
  %116 = load double, double* %115, align 8, !dbg !1064
  %117 = fmul double %113, %116, !dbg !1065
  call void @fMulHandler(double %113, double %116, double %117, i64 94090724824208, i64 94090724825432, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i64 94090724827104, i32 251, i32 53), !dbg !1066
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !1066
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 1, !dbg !1067
  store double %117, double* %119, align 8, !dbg !1068
  ret i32 0, !dbg !1069
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_zetam1_int_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !1070 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1071, metadata !108), !dbg !1072
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1073, metadata !108), !dbg !1074
  %6 = load i32, i32* %4, align 4, !dbg !1075
  %7 = icmp slt i32 %6, 0, !dbg !1077
  %8 = sext i32 %6 to i64, !dbg !1078
  %9 = call i1 @iCmpInstHandler(i64 %8, i64 0, i1 %7, i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94090724833264, i32 909, i32 8), !dbg !1078
  br i1 %9, label %10, label %49, !dbg !1078

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %4, align 4, !dbg !1079
  %12 = and i32 %11, 1, !dbg !1079
  %13 = icmp ne i32 %12, 0, !dbg !1079
  %14 = sext i32 %12 to i64, !dbg !1082
  %15 = call i1 @iCmpInstHandler(i64 %14, i64 0, i1 %13, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94090724836544, i32 910, i32 9), !dbg !1082
  br i1 %15, label %21, label %16, !dbg !1082

; <label>:16:                                     ; preds = %10
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1083
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !1085
  store double -1.000000e+00, double* %18, align 8, !dbg !1086
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1087
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !1088
  store double 0.000000e+00, double* %20, align 8, !dbg !1089
  store i32 0, i32* %3, align 4, !dbg !1090
  br label %88, !dbg !1090

; <label>:21:                                     ; preds = %10
  %22 = load i32, i32* %4, align 4, !dbg !1091
  %23 = icmp sgt i32 %22, -99, !dbg !1093
  %24 = sext i32 %22 to i64, !dbg !1094
  %25 = call i1 @iCmpInstHandler(i64 %24, i64 -99, i1 %23, i32 38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94090724842272, i32 915, i32 15), !dbg !1094
  br i1 %25, label %26, label %44, !dbg !1094

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %4, align 4, !dbg !1095
  %28 = add nsw i32 %27, 1, !dbg !1097
  %29 = sub nsw i32 0, %28, !dbg !1098
  %30 = sdiv i32 %29, 2, !dbg !1099
  %31 = sext i32 %30 to i64, !dbg !1100
  %32 = getelementptr inbounds [50 x double], [50 x double]* @zeta_neg_int_table, i64 0, i64 %31, !dbg !1100
  %33 = load double, double* %32, align 8, !dbg !1100
  %34 = fsub double %33, 1.000000e+00, !dbg !1101
  call void @fSubHandler(double %33, double 1.000000e+00, double %34, i64 94090724846904, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94090724847056, i32 916, i32 50), !dbg !1102
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1102
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !1103
  store double %34, double* %36, align 8, !dbg !1104
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1105
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !1106
  %39 = load double, double* %38, align 8, !dbg !1106
  %40 = call double @fabs(double %39) #1, !dbg !1107
  %41 = fmul double 0x3CC0000000000000, %40, !dbg !1108
  call void @fMulHandler(double 0x3CC0000000000000, double %40, double %41, i64 0, i64 94090724851232, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94090724851712, i32 917, i32 43), !dbg !1109
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1109
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !1110
  store double %41, double* %43, align 8, !dbg !1111
  store i32 0, i32* %3, align 4, !dbg !1112
  br label %88, !dbg !1112

; <label>:44:                                     ; preds = %21
  %45 = load i32, i32* %4, align 4, !dbg !1113
  %46 = sitofp i32 %45 to double, !dbg !1115
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1116
  %48 = call i32 @gsl_sf_zeta_e(double %46, %struct.gsl_sf_result_struct* %47), !dbg !1117
  store i32 %48, i32* %3, align 4, !dbg !1118
  br label %88, !dbg !1118

; <label>:49:                                     ; preds = %2
  %50 = load i32, i32* %4, align 4, !dbg !1119
  %51 = icmp eq i32 %50, 1, !dbg !1121
  %52 = sext i32 %50 to i64, !dbg !1122
  %53 = call i1 @iCmpInstHandler(i64 %52, i64 1, i1 %51, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94090724859440, i32 926, i32 13), !dbg !1122
  br i1 %53, label %54, label %63, !dbg !1122

; <label>:54:                                     ; preds = %49
  br label %55, !dbg !1123, !llvm.loop !1125

; <label>:55:                                     ; preds = %54
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1126
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !1126
  store double 0x7FF8000000000000, double* %57, align 8, !dbg !1126
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1126
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !1126
  store double 0x7FF8000000000000, double* %59, align 8, !dbg !1126
  br label %60, !dbg !1126, !llvm.loop !1129

; <label>:60:                                     ; preds = %55
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 927, i32 1), !dbg !1131
  store i32 1, i32* %3, align 4, !dbg !1131
  br label %88, !dbg !1131
                                                  ; No predecessors!
  br label %62, !dbg !1134

; <label>:62:                                     ; preds = %61
  br label %87, !dbg !1136

; <label>:63:                                     ; preds = %49
  %64 = load i32, i32* %4, align 4, !dbg !1137
  %65 = icmp sle i32 %64, 100, !dbg !1139
  %66 = sext i32 %64 to i64, !dbg !1140
  %67 = call i1 @iCmpInstHandler(i64 %66, i64 100, i1 %65, i32 41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94090724868144, i32 929, i32 13), !dbg !1140
  br i1 %67, label %68, label %82, !dbg !1140

; <label>:68:                                     ; preds = %63
  %69 = load i32, i32* %4, align 4, !dbg !1141
  %70 = sext i32 %69 to i64, !dbg !1143
  %71 = getelementptr inbounds [101 x double], [101 x double]* @zetam1_pos_int_table, i64 0, i64 %70, !dbg !1143
  %72 = load double, double* %71, align 8, !dbg !1143
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1144
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !1145
  store double %72, double* %74, align 8, !dbg !1146
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1147
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !1148
  %77 = load double, double* %76, align 8, !dbg !1148
  %78 = call double @fabs(double %77) #1, !dbg !1149
  %79 = fmul double 0x3CC0000000000000, %78, !dbg !1150
  call void @fMulHandler(double 0x3CC0000000000000, double %78, double %79, i64 0, i64 94090724875584, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @17, i32 0, i32 0), i64 94090724876064, i32 931, i32 41), !dbg !1151
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1151
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !1152
  store double %79, double* %81, align 8, !dbg !1153
  store i32 0, i32* %3, align 4, !dbg !1154
  br label %88, !dbg !1154

; <label>:82:                                     ; preds = %63
  %83 = load i32, i32* %4, align 4, !dbg !1155
  %84 = sitofp i32 %83 to double, !dbg !1155
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1157
  %86 = call i32 @gsl_sf_zetam1_e(double %84, %struct.gsl_sf_result_struct* %85), !dbg !1158
  store i32 %86, i32* %3, align 4, !dbg !1159
  br label %88, !dbg !1159

; <label>:87:                                     ; preds = %62
  br label %88

; <label>:88:                                     ; preds = %87, %82, %68, %60, %44, %26, %16
  %89 = load i32, i32* %3, align 4, !dbg !1160
  ret i32 %89, !dbg !1160
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_eta_int_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !1161 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1164, metadata !108), !dbg !1165
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1166, metadata !108), !dbg !1167
  %11 = load i32, i32* %4, align 4, !dbg !1168
  %12 = icmp sgt i32 %11, 100, !dbg !1170
  %13 = sext i32 %11 to i64, !dbg !1171
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 100, i1 %12, i32 38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724891472, i32 942, i32 8), !dbg !1171
  br i1 %14, label %15, label %20, !dbg !1171

; <label>:15:                                     ; preds = %2
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1172
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !1174
  store double 1.000000e+00, double* %17, align 8, !dbg !1175
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1176
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !1177
  store double 0x3CB0000000000000, double* %19, align 8, !dbg !1178
  store i32 0, i32* %3, align 4, !dbg !1179
  br label %143, !dbg !1179

; <label>:20:                                     ; preds = %2
  %21 = load i32, i32* %4, align 4, !dbg !1180
  %22 = icmp sge i32 %21, 0, !dbg !1182
  %23 = sext i32 %21 to i64, !dbg !1183
  %24 = call i1 @iCmpInstHandler(i64 %23, i64 0, i1 %22, i32 39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724897568, i32 947, i32 13), !dbg !1183
  br i1 %24, label %25, label %39, !dbg !1183

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %4, align 4, !dbg !1184
  %27 = sext i32 %26 to i64, !dbg !1186
  %28 = getelementptr inbounds [101 x double], [101 x double]* @eta_pos_int_table, i64 0, i64 %27, !dbg !1186
  %29 = load double, double* %28, align 8, !dbg !1186
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1187
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !1188
  store double %29, double* %31, align 8, !dbg !1189
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1190
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !1191
  %34 = load double, double* %33, align 8, !dbg !1191
  %35 = call double @fabs(double %34) #1, !dbg !1192
  %36 = fmul double 0x3CC0000000000000, %35, !dbg !1193
  call void @fMulHandler(double 0x3CC0000000000000, double %35, double %36, i64 0, i64 94090724904864, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724905344, i32 949, i32 41), !dbg !1194
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1194
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !1195
  store double %36, double* %38, align 8, !dbg !1196
  store i32 0, i32* %3, align 4, !dbg !1197
  br label %143, !dbg !1197

; <label>:39:                                     ; preds = %20
  %40 = load i32, i32* %4, align 4, !dbg !1198
  %41 = and i32 %40, 1, !dbg !1198
  %42 = icmp ne i32 %41, 0, !dbg !1198
  %43 = sext i32 %41 to i64, !dbg !1201
  %44 = call i1 @iCmpInstHandler(i64 %43, i64 0, i1 %42, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724911072, i32 955, i32 9), !dbg !1201
  br i1 %44, label %50, label %45, !dbg !1201

; <label>:45:                                     ; preds = %39
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1202
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !1204
  store double 0.000000e+00, double* %47, align 8, !dbg !1205
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1206
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !1207
  store double 0.000000e+00, double* %49, align 8, !dbg !1208
  store i32 0, i32* %3, align 4, !dbg !1209
  br label %143, !dbg !1209

; <label>:50:                                     ; preds = %39
  %51 = load i32, i32* %4, align 4, !dbg !1210
  %52 = icmp sgt i32 %51, -99, !dbg !1212
  %53 = sext i32 %51 to i64, !dbg !1213
  %54 = call i1 @iCmpInstHandler(i64 %53, i64 -99, i1 %52, i32 38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724916736, i32 961, i32 15), !dbg !1213
  br i1 %54, label %55, label %72, !dbg !1213

; <label>:55:                                     ; preds = %50
  %56 = load i32, i32* %4, align 4, !dbg !1214
  %57 = add nsw i32 %56, 1, !dbg !1216
  %58 = sub nsw i32 0, %57, !dbg !1217
  %59 = sdiv i32 %58, 2, !dbg !1218
  %60 = sext i32 %59 to i64, !dbg !1219
  %61 = getelementptr inbounds [50 x double], [50 x double]* @eta_neg_int_table, i64 0, i64 %60, !dbg !1219
  %62 = load double, double* %61, align 8, !dbg !1219
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1220
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !1221
  store double %62, double* %64, align 8, !dbg !1222
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1223
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !1224
  %67 = load double, double* %66, align 8, !dbg !1224
  %68 = call double @fabs(double %67) #1, !dbg !1225
  %69 = fmul double 0x3CC0000000000000, %68, !dbg !1226
  call void @fMulHandler(double 0x3CC0000000000000, double %68, double %69, i64 0, i64 94090724925424, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724925904, i32 963, i32 43), !dbg !1227
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1227
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 1, !dbg !1228
  store double %69, double* %71, align 8, !dbg !1229
  store i32 0, i32* %3, align 4, !dbg !1230
  br label %143, !dbg !1230

; <label>:72:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1231, metadata !108), !dbg !1233
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !1234, metadata !108), !dbg !1235
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1236, metadata !108), !dbg !1237
  %73 = load i32, i32* %4, align 4, !dbg !1238
  %74 = call i32 @gsl_sf_zeta_int_e(i32 %73, %struct.gsl_sf_result_struct* %6), !dbg !1239
  store i32 %74, i32* %8, align 4, !dbg !1237
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1240, metadata !108), !dbg !1241
  %75 = load i32, i32* %4, align 4, !dbg !1242
  %76 = sitofp i32 %75 to double, !dbg !1242
  %77 = fsub double 1.000000e+00, %76, !dbg !1243
  call void @fSubHandler(double 1.000000e+00, double %76, double %77, i64 0, i64 94090724936872, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724938576, i32 970, i32 37), !dbg !1244
  %78 = fmul double %77, 0x3FE62E42FEFA39EF, !dbg !1244
  call void @fMulHandler(double %77, double 0x3FE62E42FEFA39EF, double %78, i64 94090724938576, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724938960, i32 970, i32 40), !dbg !1245
  %79 = call i32 @gsl_sf_exp_e(double %78, %struct.gsl_sf_result_struct* %7), !dbg !1245
  store i32 %79, i32* %9, align 4, !dbg !1241
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1246, metadata !108), !dbg !1247
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !1248
  %81 = load double, double* %80, align 8, !dbg !1248
  %82 = fsub double -0.000000e+00, %81, !dbg !1249
  call void @fSubHandler(double -0.000000e+00, double %81, double %82, i64 0, i64 94090724943464, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724945136, i32 971, i32 38), !dbg !1250
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1250
  %84 = load double, double* %83, align 8, !dbg !1250
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1251
  %86 = call i32 @gsl_sf_multiply_e(double %82, double %84, %struct.gsl_sf_result_struct* %85), !dbg !1252
  store i32 %86, i32* %10, align 4, !dbg !1247
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !1253
  %88 = load double, double* %87, align 8, !dbg !1253
  %89 = load i32, i32* %4, align 4, !dbg !1254
  %90 = sitofp i32 %89 to double, !dbg !1254
  %91 = fsub double 1.000000e+00, %90, !dbg !1255
  call void @fSubHandler(double 1.000000e+00, double %90, double %91, i64 0, i64 94090724953080, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724954784, i32 972, i32 46), !dbg !1256
  %92 = fmul double 0x3FE62E42FEFA39EF, %91, !dbg !1256
  call void @fMulHandler(double 0x3FE62E42FEFA39EF, double %91, double %92, i64 0, i64 94090724954784, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724955168, i32 972, i32 41), !dbg !1257
  %93 = fmul double %88, %92, !dbg !1257
  call void @fMulHandler(double %88, double %92, double %93, i64 94090724951048, i64 94090724955168, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724955584, i32 972, i32 33), !dbg !1258
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1258
  %95 = load double, double* %94, align 8, !dbg !1258
  %96 = fmul double %93, %95, !dbg !1259
  call void @fMulHandler(double %93, double %95, double %96, i64 94090724955584, i64 94090724956424, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724958096, i32 972, i32 51), !dbg !1260
  %97 = call double @fabs(double %96) #1, !dbg !1260
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !1261
  %99 = load double, double* %98, align 8, !dbg !1261
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !1262
  %101 = load double, double* %100, align 8, !dbg !1262
  %102 = call double @fabs(double %101) #1, !dbg !1263
  %103 = fmul double %99, %102, !dbg !1265
  call void @fMulHandler(double %99, double %102, double %103, i64 94090724959480, i64 94090724963312, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724963792, i32 972, i32 68), !dbg !1266
  %104 = fadd double %97, %103, !dbg !1266
  call void @fAddHandler(double %97, double %103, double %104, i64 94090724958576, i64 94090724963792, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724964208, i32 972, i32 60), !dbg !1267
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1267
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 1, !dbg !1268
  store double %104, double* %106, align 8, !dbg !1269
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1270
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 0, !dbg !1271
  %109 = load double, double* %108, align 8, !dbg !1271
  %110 = call double @fabs(double %109) #1, !dbg !1272
  %111 = fmul double 0x3CC0000000000000, %110, !dbg !1273
  call void @fMulHandler(double 0x3CC0000000000000, double %110, double %111, i64 0, i64 94090724968416, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724968896, i32 973, i32 44), !dbg !1274
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1274
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 1, !dbg !1275
  %114 = load double, double* %113, align 8, !dbg !1276
  %115 = fadd double %114, %111, !dbg !1276
  call void @fAddHandler(double %114, double %111, double %115, i64 94090724970120, i64 94090724968896, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724970528, i32 973, i32 19), !dbg !1276
  store double %115, double* %113, align 8, !dbg !1276
  %116 = load i32, i32* %10, align 4, !dbg !1277
  %117 = icmp ne i32 %116, 0, !dbg !1277
  %118 = sext i32 %116 to i64, !dbg !1277
  %119 = call i1 @iCmpInstHandler(i64 %118, i64 0, i1 %117, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724972720, i32 974, i32 14), !dbg !1277
  br i1 %119, label %120, label %122, !dbg !1277

; <label>:120:                                    ; preds = %72
  %121 = load i32, i32* %10, align 4, !dbg !1278
  br label %141, !dbg !1278

; <label>:122:                                    ; preds = %72
  %123 = load i32, i32* %9, align 4, !dbg !1279
  %124 = icmp ne i32 %123, 0, !dbg !1279
  %125 = sext i32 %123 to i64, !dbg !1279
  %126 = call i1 @iCmpInstHandler(i64 %125, i64 0, i1 %124, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724977264, i32 974, i32 14), !dbg !1279
  br i1 %126, label %127, label %129, !dbg !1279

; <label>:127:                                    ; preds = %122
  %128 = load i32, i32* %9, align 4, !dbg !1281
  br label %139, !dbg !1281

; <label>:129:                                    ; preds = %122
  %130 = load i32, i32* %8, align 4, !dbg !1283
  %131 = icmp ne i32 %130, 0, !dbg !1283
  %132 = sext i32 %130 to i64, !dbg !1283
  %133 = call i1 @iCmpInstHandler(i64 %132, i64 0, i1 %131, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0), i64 94090724981808, i32 974, i32 14), !dbg !1283
  br i1 %133, label %134, label %136, !dbg !1283

; <label>:134:                                    ; preds = %129
  %135 = load i32, i32* %8, align 4, !dbg !1285
  br label %137, !dbg !1285

; <label>:136:                                    ; preds = %129
  br label %137, !dbg !1287

; <label>:137:                                    ; preds = %136, %134
  %138 = phi i32 [ %135, %134 ], [ 0, %136 ], !dbg !1289
  br label %139, !dbg !1289

; <label>:139:                                    ; preds = %137, %127
  %140 = phi i32 [ %128, %127 ], [ %138, %137 ], !dbg !1291
  br label %141, !dbg !1291

; <label>:141:                                    ; preds = %139, %120
  %142 = phi i32 [ %121, %120 ], [ %140, %139 ], !dbg !1293
  store i32 %142, i32* %3, align 4, !dbg !1295
  br label %143, !dbg !1295

; <label>:143:                                    ; preds = %141, %55, %45, %25, %15
  %144 = load i32, i32* %3, align 4, !dbg !1296
  ret i32 %144, !dbg !1296
}

declare i32 @gsl_sf_exp_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_multiply_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_eta_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1297 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1298, metadata !108), !dbg !1299
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1300, metadata !108), !dbg !1301
  %17 = load double, double* %4, align 8, !dbg !1302
  %18 = fcmp ogt double %17, 1.000000e+02, !dbg !1304
  %19 = call i1 @fCmpInstHandler(double %17, double 1.000000e+02, i1 %18, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725000720, i32 984, i32 8), !dbg !1305
  br i1 %19, label %20, label %25, !dbg !1305

; <label>:20:                                     ; preds = %2
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1306
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !1308
  store double 1.000000e+00, double* %22, align 8, !dbg !1309
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1310
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !1311
  store double 0x3CB0000000000000, double* %24, align 8, !dbg !1312
  store i32 0, i32* %3, align 4, !dbg !1313
  br label %129, !dbg !1313

; <label>:25:                                     ; preds = %2
  %26 = load double, double* %4, align 8, !dbg !1314
  %27 = fsub double %26, 1.000000e+00, !dbg !1316
  call void @fSubHandler(double %26, double 1.000000e+00, double %27, i64 94090725006344, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725006720, i32 989, i32 17), !dbg !1317
  %28 = call double @fabs(double %27) #1, !dbg !1317
  %29 = fcmp olt double %28, 0x3F7E5078049F59F0, !dbg !1318
  %30 = call i1 @fCmpInstHandler(double %28, double 0x3F7E5078049F59F0, i1 %29, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725007712, i32 989, i32 23), !dbg !1319
  br i1 %30, label %31, label %60, !dbg !1319

; <label>:31:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata double* %6, metadata !1320, metadata !108), !dbg !1322
  %32 = load double, double* %4, align 8, !dbg !1323
  %33 = fsub double %32, 1.000000e+00, !dbg !1324
  call void @fSubHandler(double %32, double 1.000000e+00, double %33, i64 94090725009880, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725010288, i32 990, i32 19), !dbg !1322
  store double %33, double* %6, align 8, !dbg !1322
  call void @llvm.dbg.declare(metadata double* %7, metadata !1325, metadata !108), !dbg !1326
  store double 0x3FE62E42FEFA39EF, double* %7, align 8, !dbg !1326
  call void @llvm.dbg.declare(metadata double* %8, metadata !1327, metadata !108), !dbg !1328
  store double 0x3FC47695909C4D6F, double* %8, align 8, !dbg !1328
  call void @llvm.dbg.declare(metadata double* %9, metadata !1329, metadata !108), !dbg !1330
  store double 0xBFA0BC421B185F30, double* %9, align 8, !dbg !1330
  call void @llvm.dbg.declare(metadata double* %10, metadata !1331, metadata !108), !dbg !1332
  store double 0x3F59B4D403FF42D9, double* %10, align 8, !dbg !1332
  call void @llvm.dbg.declare(metadata double* %11, metadata !1333, metadata !108), !dbg !1334
  store double 0x3F489262C32F6CAD, double* %11, align 8, !dbg !1334
  %34 = load double, double* %7, align 8, !dbg !1335
  %35 = load double, double* %6, align 8, !dbg !1336
  %36 = load double, double* %8, align 8, !dbg !1337
  %37 = load double, double* %6, align 8, !dbg !1338
  %38 = load double, double* %9, align 8, !dbg !1339
  %39 = load double, double* %6, align 8, !dbg !1340
  %40 = load double, double* %10, align 8, !dbg !1341
  %41 = load double, double* %6, align 8, !dbg !1342
  %42 = load double, double* %11, align 8, !dbg !1343
  %43 = fmul double %41, %42, !dbg !1344
  call void @fMulHandler(double %41, double %42, double %43, i64 94090725029112, i64 94090725029496, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725029904, i32 996, i32 64), !dbg !1345
  %44 = fadd double %40, %43, !dbg !1345
  call void @fAddHandler(double %40, double %43, double %44, i64 94090725028728, i64 94090725029904, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725030320, i32 996, i32 58), !dbg !1346
  %45 = fmul double %39, %44, !dbg !1346
  call void @fMulHandler(double %39, double %44, double %45, i64 94090725028344, i64 94090725030320, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725030736, i32 996, i32 52), !dbg !1347
  %46 = fadd double %38, %45, !dbg !1347
  call void @fAddHandler(double %38, double %45, double %46, i64 94090725027960, i64 94090725030736, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725031152, i32 996, i32 46), !dbg !1348
  %47 = fmul double %37, %46, !dbg !1348
  call void @fMulHandler(double %37, double %46, double %47, i64 94090725027576, i64 94090725031152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725031568, i32 996, i32 40), !dbg !1349
  %48 = fadd double %36, %47, !dbg !1349
  call void @fAddHandler(double %36, double %47, double %48, i64 94090725027192, i64 94090725031568, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725031984, i32 996, i32 34), !dbg !1350
  %49 = fmul double %35, %48, !dbg !1350
  call void @fMulHandler(double %35, double %48, double %49, i64 94090725026808, i64 94090725031984, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725032400, i32 996, i32 28), !dbg !1351
  %50 = fadd double %34, %49, !dbg !1351
  call void @fAddHandler(double %34, double %49, double %50, i64 94090725026456, i64 94090725032400, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725032816, i32 996, i32 22), !dbg !1352
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1352
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !1353
  store double %50, double* %52, align 8, !dbg !1354
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1355
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !1356
  %55 = load double, double* %54, align 8, !dbg !1356
  %56 = call double @fabs(double %55) #1, !dbg !1357
  %57 = fmul double 0x3CC0000000000000, %56, !dbg !1358
  call void @fMulHandler(double 0x3CC0000000000000, double %56, double %57, i64 0, i64 94090725037024, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725037504, i32 997, i32 41), !dbg !1359
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1359
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !1360
  store double %57, double* %59, align 8, !dbg !1361
  store i32 0, i32* %3, align 4, !dbg !1362
  br label %129, !dbg !1362

; <label>:60:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !1363, metadata !108), !dbg !1365
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1366, metadata !108), !dbg !1367
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1368, metadata !108), !dbg !1369
  %61 = load double, double* %4, align 8, !dbg !1370
  %62 = call i32 @gsl_sf_zeta_e(double %61, %struct.gsl_sf_result_struct* %12), !dbg !1371
  store i32 %62, i32* %14, align 4, !dbg !1369
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1372, metadata !108), !dbg !1373
  %63 = load double, double* %4, align 8, !dbg !1374
  %64 = fsub double 1.000000e+00, %63, !dbg !1375
  call void @fSubHandler(double 1.000000e+00, double %63, double %64, i64 0, i64 94090725048120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725048528, i32 1004, i32 35), !dbg !1376
  %65 = fmul double %64, 0x3FE62E42FEFA39EF, !dbg !1376
  call void @fMulHandler(double %64, double 0x3FE62E42FEFA39EF, double %65, i64 94090725048528, i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725048912, i32 1004, i32 38), !dbg !1377
  %66 = call i32 @gsl_sf_exp_e(double %65, %struct.gsl_sf_result_struct* %13), !dbg !1377
  store i32 %66, i32* %15, align 4, !dbg !1373
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1378, metadata !108), !dbg !1379
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1380
  %68 = load double, double* %67, align 8, !dbg !1380
  %69 = fsub double 1.000000e+00, %68, !dbg !1381
  call void @fSubHandler(double 1.000000e+00, double %68, double %69, i64 0, i64 94090725053048, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725054752, i32 1005, i32 39), !dbg !1382
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !1382
  %71 = load double, double* %70, align 8, !dbg !1382
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1383
  %73 = call i32 @gsl_sf_multiply_e(double %69, double %71, %struct.gsl_sf_result_struct* %72), !dbg !1384
  store i32 %73, i32* %16, align 4, !dbg !1379
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !1385
  %75 = load double, double* %74, align 8, !dbg !1385
  %76 = load double, double* %4, align 8, !dbg !1386
  %77 = fsub double 1.000000e+00, %76, !dbg !1387
  call void @fSubHandler(double 1.000000e+00, double %76, double %77, i64 0, i64 94090725061928, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725062368, i32 1006, i32 44), !dbg !1388
  %78 = fmul double 0x3FE62E42FEFA39EF, %77, !dbg !1388
  call void @fMulHandler(double 0x3FE62E42FEFA39EF, double %77, double %78, i64 0, i64 94090725062368, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725062752, i32 1006, i32 39), !dbg !1389
  %79 = fmul double %75, %78, !dbg !1389
  call void @fMulHandler(double %75, double %78, double %79, i64 94090725060280, i64 94090725062752, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725063168, i32 1006, i32 31), !dbg !1390
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !1390
  %81 = load double, double* %80, align 8, !dbg !1390
  %82 = fmul double %79, %81, !dbg !1391
  call void @fMulHandler(double %79, double %81, double %82, i64 94090725063168, i64 94090725064008, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725065680, i32 1006, i32 49), !dbg !1392
  %83 = call double @fabs(double %82) #1, !dbg !1392
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !1393
  %85 = load double, double* %84, align 8, !dbg !1393
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1394
  %87 = load double, double* %86, align 8, !dbg !1394
  %88 = call double @fabs(double %87) #1, !dbg !1395
  %89 = fmul double %85, %88, !dbg !1397
  call void @fMulHandler(double %85, double %88, double %89, i64 94090725067064, i64 94090725070896, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725071376, i32 1006, i32 66), !dbg !1398
  %90 = fadd double %83, %89, !dbg !1398
  call void @fAddHandler(double %83, double %89, double %90, i64 94090725066160, i64 94090725071376, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725071792, i32 1006, i32 58), !dbg !1399
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1399
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 1, !dbg !1400
  store double %90, double* %92, align 8, !dbg !1401
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1402
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 0, !dbg !1403
  %95 = load double, double* %94, align 8, !dbg !1403
  %96 = call double @fabs(double %95) #1, !dbg !1404
  %97 = fmul double 0x3CC0000000000000, %96, !dbg !1405
  call void @fMulHandler(double 0x3CC0000000000000, double %96, double %97, i64 0, i64 94090725076000, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725076480, i32 1007, i32 42), !dbg !1406
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1406
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 1, !dbg !1407
  %100 = load double, double* %99, align 8, !dbg !1408
  %101 = fadd double %100, %97, !dbg !1408
  call void @fAddHandler(double %100, double %97, double %101, i64 94090725077704, i64 94090725076480, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725078112, i32 1007, i32 17), !dbg !1408
  store double %101, double* %99, align 8, !dbg !1408
  %102 = load i32, i32* %16, align 4, !dbg !1409
  %103 = icmp ne i32 %102, 0, !dbg !1409
  %104 = sext i32 %102 to i64, !dbg !1409
  %105 = call i1 @iCmpInstHandler(i64 %104, i64 0, i1 %103, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725080304, i32 1008, i32 12), !dbg !1409
  br i1 %105, label %106, label %108, !dbg !1409

; <label>:106:                                    ; preds = %60
  %107 = load i32, i32* %16, align 4, !dbg !1410
  br label %127, !dbg !1410

; <label>:108:                                    ; preds = %60
  %109 = load i32, i32* %15, align 4, !dbg !1411
  %110 = icmp ne i32 %109, 0, !dbg !1411
  %111 = sext i32 %109 to i64, !dbg !1411
  %112 = call i1 @iCmpInstHandler(i64 %111, i64 0, i1 %110, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725084848, i32 1008, i32 12), !dbg !1411
  br i1 %112, label %113, label %115, !dbg !1411

; <label>:113:                                    ; preds = %108
  %114 = load i32, i32* %15, align 4, !dbg !1413
  br label %125, !dbg !1413

; <label>:115:                                    ; preds = %108
  %116 = load i32, i32* %14, align 4, !dbg !1415
  %117 = icmp ne i32 %116, 0, !dbg !1415
  %118 = sext i32 %116 to i64, !dbg !1415
  %119 = call i1 @iCmpInstHandler(i64 %118, i64 0, i1 %117, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0), i64 94090725089392, i32 1008, i32 12), !dbg !1415
  br i1 %119, label %120, label %122, !dbg !1415

; <label>:120:                                    ; preds = %115
  %121 = load i32, i32* %14, align 4, !dbg !1417
  br label %123, !dbg !1417

; <label>:122:                                    ; preds = %115
  br label %123, !dbg !1419

; <label>:123:                                    ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 0, %122 ], !dbg !1421
  br label %125, !dbg !1421

; <label>:125:                                    ; preds = %123, %113
  %126 = phi i32 [ %114, %113 ], [ %124, %123 ], !dbg !1423
  br label %127, !dbg !1423

; <label>:127:                                    ; preds = %125, %106
  %128 = phi i32 [ %107, %106 ], [ %126, %125 ], !dbg !1425
  store i32 %128, i32* %3, align 4, !dbg !1427
  br label %129, !dbg !1427

; <label>:129:                                    ; preds = %127, %31, %20
  %130 = load i32, i32* %3, align 4, !dbg !1428
  ret i32 %130, !dbg !1428
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_zeta(double) #0 !dbg !1429 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1432, metadata !108), !dbg !1433
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1434, metadata !108), !dbg !1435
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1436, metadata !108), !dbg !1435
  %6 = load double, double* %3, align 8, !dbg !1435
  %7 = call i32 @gsl_sf_zeta_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1435
  store i32 %7, i32* %5, align 4, !dbg !1435
  %8 = load i32, i32* %5, align 4, !dbg !1437
  %9 = icmp ne i32 %8, 0, !dbg !1437
  %10 = sext i32 %8 to i64, !dbg !1435
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i64 94090725111552, i32 1019, i32 3), !dbg !1435
  br i1 %11, label %12, label %18, !dbg !1435

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1439, !llvm.loop !1442

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1444
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1019, i32 %14), !dbg !1444
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1444
  %16 = load double, double* %15, align 8, !dbg !1444
  store double %16, double* %2, align 8, !dbg !1444
  br label %21, !dbg !1444
                                                  ; No predecessors!
  br label %18, !dbg !1447

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1449
  %20 = load double, double* %19, align 8, !dbg !1449
  store double %20, double* %2, align 8, !dbg !1449
  br label %21, !dbg !1449

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1451
  ret double %22, !dbg !1451
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hzeta(double, double) #0 !dbg !1452 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1455, metadata !108), !dbg !1456
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1457, metadata !108), !dbg !1458
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1459, metadata !108), !dbg !1460
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1461, metadata !108), !dbg !1460
  %8 = load double, double* %4, align 8, !dbg !1460
  %9 = load double, double* %5, align 8, !dbg !1460
  %10 = call i32 @gsl_sf_hzeta_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1460
  store i32 %10, i32* %7, align 4, !dbg !1460
  %11 = load i32, i32* %7, align 4, !dbg !1462
  %12 = icmp ne i32 %11, 0, !dbg !1462
  %13 = sext i32 %11 to i64, !dbg !1460
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0), i64 94090725131856, i32 1024, i32 3), !dbg !1460
  br i1 %14, label %15, label %21, !dbg !1460

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1464, !llvm.loop !1467

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1469
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1024, i32 %17), !dbg !1469
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1469
  %19 = load double, double* %18, align 8, !dbg !1469
  store double %19, double* %3, align 8, !dbg !1469
  br label %24, !dbg !1469
                                                  ; No predecessors!
  br label %21, !dbg !1472

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1474
  %23 = load double, double* %22, align 8, !dbg !1474
  store double %23, double* %3, align 8, !dbg !1474
  br label %24, !dbg !1474

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1476
  ret double %25, !dbg !1476
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_zeta_int(i32) #0 !dbg !1477 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1480, metadata !108), !dbg !1481
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1482, metadata !108), !dbg !1483
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1484, metadata !108), !dbg !1483
  %6 = load i32, i32* %3, align 4, !dbg !1483
  %7 = call i32 @gsl_sf_zeta_int_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !1483
  store i32 %7, i32* %5, align 4, !dbg !1483
  %8 = load i32, i32* %5, align 4, !dbg !1485
  %9 = icmp ne i32 %8, 0, !dbg !1485
  %10 = sext i32 %8 to i64, !dbg !1483
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @27, i32 0, i32 0), i64 94090724688960, i32 1029, i32 3), !dbg !1483
  br i1 %11, label %12, label %18, !dbg !1483

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1487, !llvm.loop !1490

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1492
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1029, i32 %14), !dbg !1492
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1492
  %16 = load double, double* %15, align 8, !dbg !1492
  store double %16, double* %2, align 8, !dbg !1492
  br label %21, !dbg !1492
                                                  ; No predecessors!
  br label %18, !dbg !1495

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1497
  %20 = load double, double* %19, align 8, !dbg !1497
  store double %20, double* %2, align 8, !dbg !1497
  br label %21, !dbg !1497

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1499
  ret double %22, !dbg !1499
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_zetam1(double) #0 !dbg !1500 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1501, metadata !108), !dbg !1502
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1503, metadata !108), !dbg !1504
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1505, metadata !108), !dbg !1504
  %6 = load double, double* %3, align 8, !dbg !1504
  %7 = call i32 @gsl_sf_zetam1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1504
  store i32 %7, i32* %5, align 4, !dbg !1504
  %8 = load i32, i32* %5, align 4, !dbg !1506
  %9 = icmp ne i32 %8, 0, !dbg !1506
  %10 = sext i32 %8 to i64, !dbg !1504
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0), i64 94090725172704, i32 1034, i32 3), !dbg !1504
  br i1 %11, label %12, label %18, !dbg !1504

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1508, !llvm.loop !1511

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1513
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1034, i32 %14), !dbg !1513
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1513
  %16 = load double, double* %15, align 8, !dbg !1513
  store double %16, double* %2, align 8, !dbg !1513
  br label %21, !dbg !1513
                                                  ; No predecessors!
  br label %18, !dbg !1516

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1518
  %20 = load double, double* %19, align 8, !dbg !1518
  store double %20, double* %2, align 8, !dbg !1518
  br label %21, !dbg !1518

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1520
  ret double %22, !dbg !1520
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_zetam1_int(i32) #0 !dbg !1521 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1522, metadata !108), !dbg !1523
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1524, metadata !108), !dbg !1525
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1526, metadata !108), !dbg !1525
  %6 = load i32, i32* %3, align 4, !dbg !1525
  %7 = call i32 @gsl_sf_zetam1_int_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !1525
  store i32 %7, i32* %5, align 4, !dbg !1525
  %8 = load i32, i32* %5, align 4, !dbg !1527
  %9 = icmp ne i32 %8, 0, !dbg !1527
  %10 = sext i32 %8 to i64, !dbg !1525
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i64 94090725190000, i32 1039, i32 3), !dbg !1525
  br i1 %11, label %12, label %18, !dbg !1525

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1529, !llvm.loop !1532

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1534
  call void @gsl_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1039, i32 %14), !dbg !1534
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1534
  %16 = load double, double* %15, align 8, !dbg !1534
  store double %16, double* %2, align 8, !dbg !1534
  br label %21, !dbg !1534
                                                  ; No predecessors!
  br label %18, !dbg !1537

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1539
  %20 = load double, double* %19, align 8, !dbg !1539
  store double %20, double* %2, align 8, !dbg !1539
  br label %21, !dbg !1539

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1541
  ret double %22, !dbg !1541
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_eta_int(i32) #0 !dbg !1542 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1543, metadata !108), !dbg !1544
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1545, metadata !108), !dbg !1546
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1547, metadata !108), !dbg !1546
  %6 = load i32, i32* %3, align 4, !dbg !1546
  %7 = call i32 @gsl_sf_eta_int_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !1546
  store i32 %7, i32* %5, align 4, !dbg !1546
  %8 = load i32, i32* %5, align 4, !dbg !1548
  %9 = icmp ne i32 %8, 0, !dbg !1548
  %10 = sext i32 %8 to i64, !dbg !1546
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @33, i32 0, i32 0), i64 94090725207296, i32 1044, i32 3), !dbg !1546
  br i1 %11, label %12, label %18, !dbg !1546

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1550, !llvm.loop !1553

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1555
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1044, i32 %14), !dbg !1555
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1555
  %16 = load double, double* %15, align 8, !dbg !1555
  store double %16, double* %2, align 8, !dbg !1555
  br label %21, !dbg !1555
                                                  ; No predecessors!
  br label %18, !dbg !1558

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1560
  %20 = load double, double* %19, align 8, !dbg !1560
  store double %20, double* %2, align 8, !dbg !1560
  br label %21, !dbg !1560

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1562
  ret double %22, !dbg !1562
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_eta(double) #0 !dbg !1563 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1564, metadata !108), !dbg !1565
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1566, metadata !108), !dbg !1567
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1568, metadata !108), !dbg !1567
  %6 = load double, double* %3, align 8, !dbg !1567
  %7 = call i32 @gsl_sf_eta_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1567
  store i32 %7, i32* %5, align 4, !dbg !1567
  %8 = load i32, i32* %5, align 4, !dbg !1569
  %9 = icmp ne i32 %8, 0, !dbg !1569
  %10 = sext i32 %8 to i64, !dbg !1567
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @35, i32 0, i32 0), i64 94090725224592, i32 1049, i32 3), !dbg !1567
  br i1 %11, label %12, label %18, !dbg !1567

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1571, !llvm.loop !1574

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1576
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1049, i32 %14), !dbg !1576
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1576
  %16 = load double, double* %15, align 8, !dbg !1576
  store double %16, double* %2, align 8, !dbg !1576
  br label %21, !dbg !1576
                                                  ; No predecessors!
  br label %18, !dbg !1579

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1581
  %20 = load double, double* %19, align 8, !dbg !1581
  store double %20, double* %2, align 8, !dbg !1581
  br label %21, !dbg !1581

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1583
  ret double %22, !dbg !1583
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #5 !dbg !1584 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !1590, metadata !108), !dbg !1591
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1592, metadata !108), !dbg !1593
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !1594, metadata !108), !dbg !1595
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1596, metadata !108), !dbg !1597
  call void @llvm.dbg.declare(metadata double* %8, metadata !1598, metadata !108), !dbg !1599
  store double 0.000000e+00, double* %8, align 8, !dbg !1599
  call void @llvm.dbg.declare(metadata double* %9, metadata !1600, metadata !108), !dbg !1601
  store double 0.000000e+00, double* %9, align 8, !dbg !1601
  call void @llvm.dbg.declare(metadata double* %10, metadata !1602, metadata !108), !dbg !1603
  %15 = load double, double* %5, align 8, !dbg !1604
  %16 = fmul double 2.000000e+00, %15, !dbg !1605
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94090724492952, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725248592, i32 11, i32 19), !dbg !1606
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1606
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !1607
  %19 = load double, double* %18, align 8, !dbg !1607
  %20 = fsub double %16, %19, !dbg !1608
  call void @fSubHandler(double %16, double %19, double %20, i64 94090725248592, i64 94090725249784, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725251456, i32 11, i32 22), !dbg !1609
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1609
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !1610
  %23 = load double, double* %22, align 8, !dbg !1610
  %24 = fsub double %20, %23, !dbg !1611
  call void @fSubHandler(double %20, double %23, double %24, i64 94090725251456, i64 94090725252744, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725254416, i32 11, i32 30), !dbg !1612
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1612
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !1613
  %27 = load double, double* %26, align 8, !dbg !1613
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1614
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !1615
  %30 = load double, double* %29, align 8, !dbg !1615
  %31 = fsub double %27, %30, !dbg !1616
  call void @fSubHandler(double %27, double %30, double %31, i64 94090725255640, i64 94090725258120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725259792, i32 11, i32 48), !dbg !1617
  %32 = fdiv double %24, %31, !dbg !1617
  call void @fDivHandler(double %24, double %31, double %32, i64 94090725254416, i64 94090725259792, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725260208, i32 11, i32 39), !dbg !1603
  store double %32, double* %10, align 8, !dbg !1603
  call void @llvm.dbg.declare(metadata double* %11, metadata !1618, metadata !108), !dbg !1619
  %33 = load double, double* %10, align 8, !dbg !1620
  %34 = fmul double 2.000000e+00, %33, !dbg !1621
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94090725263256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725263664, i32 12, i32 19), !dbg !1619
  store double %34, double* %11, align 8, !dbg !1619
  call void @llvm.dbg.declare(metadata double* %12, metadata !1622, metadata !108), !dbg !1623
  store double 0.000000e+00, double* %12, align 8, !dbg !1623
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1624
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !1626
  %37 = load i32, i32* %36, align 8, !dbg !1626
  store i32 %37, i32* %7, align 4, !dbg !1627
  br label %38, !dbg !1628

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !1629
  %40 = icmp sge i32 %39, 1, !dbg !1632
  %41 = sext i32 %39 to i64, !dbg !1633
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725272240, i32 16, i32 23), !dbg !1633
  br i1 %42, label %43, label %80, !dbg !1633

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !1634, metadata !108), !dbg !1636
  %44 = load double, double* %8, align 8, !dbg !1637
  store double %44, double* %13, align 8, !dbg !1636
  %45 = load double, double* %11, align 8, !dbg !1638
  %46 = load double, double* %8, align 8, !dbg !1639
  %47 = fmul double %45, %46, !dbg !1640
  call void @fMulHandler(double %45, double %46, double %47, i64 94090725276440, i64 94090725276824, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725277232, i32 18, i32 11), !dbg !1641
  %48 = load double, double* %9, align 8, !dbg !1641
  %49 = fsub double %47, %48, !dbg !1642
  call void @fSubHandler(double %47, double %48, double %49, i64 94090725277232, i64 94090725277624, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725278032, i32 18, i32 14), !dbg !1643
  %50 = load i32, i32* %7, align 4, !dbg !1643
  %51 = sext i32 %50 to i64, !dbg !1644
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1644
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !1645
  %54 = load double*, double** %53, align 8, !dbg !1645
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !1644
  %56 = load double, double* %55, align 8, !dbg !1644
  %57 = fadd double %49, %56, !dbg !1646
  call void @fAddHandler(double %49, double %56, double %57, i64 94090725278032, i64 94090725283080, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725283200, i32 18, i32 19), !dbg !1647
  store double %57, double* %8, align 8, !dbg !1647
  %58 = load double, double* %11, align 8, !dbg !1648
  %59 = load double, double* %13, align 8, !dbg !1649
  %60 = fmul double %58, %59, !dbg !1650
  call void @fMulHandler(double %58, double %59, double %60, i64 94090725284008, i64 94090725284392, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725284800, i32 19, i32 17), !dbg !1651
  %61 = call double @fabs(double %60) #1, !dbg !1651
  %62 = load double, double* %9, align 8, !dbg !1652
  %63 = call double @fabs(double %62) #1, !dbg !1653
  %64 = fadd double %61, %63, !dbg !1655
  call void @fAddHandler(double %61, double %63, double %64, i64 94090725285280, i64 94090725286208, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725286688, i32 19, i32 24), !dbg !1656
  %65 = load i32, i32* %7, align 4, !dbg !1656
  %66 = sext i32 %65 to i64, !dbg !1657
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1657
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !1658
  %69 = load double*, double** %68, align 8, !dbg !1658
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !1657
  %71 = load double, double* %70, align 8, !dbg !1657
  %72 = call double @fabs(double %71) #1, !dbg !1659
  %73 = fadd double %64, %72, !dbg !1661
  call void @fAddHandler(double %64, double %72, double %73, i64 94090725286688, i64 94090725291920, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725292400, i32 19, i32 35), !dbg !1662
  %74 = load double, double* %12, align 8, !dbg !1662
  %75 = fadd double %74, %73, !dbg !1662
  call void @fAddHandler(double %74, double %73, double %75, i64 94090725292792, i64 94090725292400, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725293200, i32 19, i32 7), !dbg !1662
  store double %75, double* %12, align 8, !dbg !1662
  %76 = load double, double* %13, align 8, !dbg !1663
  store double %76, double* %9, align 8, !dbg !1664
  br label %77, !dbg !1665

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !1666
  %79 = add nsw i32 %78, -1, !dbg !1666
  store i32 %79, i32* %7, align 4, !dbg !1666
  br label %38, !dbg !1668, !llvm.loop !1669

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !1671, metadata !108), !dbg !1673
  %81 = load double, double* %8, align 8, !dbg !1674
  store double %81, double* %14, align 8, !dbg !1673
  %82 = load double, double* %10, align 8, !dbg !1675
  %83 = load double, double* %8, align 8, !dbg !1676
  %84 = fmul double %82, %83, !dbg !1677
  call void @fMulHandler(double %82, double %83, double %84, i64 94090725302264, i64 94090725302648, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725303056, i32 25, i32 10), !dbg !1678
  %85 = load double, double* %9, align 8, !dbg !1678
  %86 = fsub double %84, %85, !dbg !1679
  call void @fSubHandler(double %84, double %85, double %86, i64 94090725303056, i64 94090725303448, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725303856, i32 25, i32 13), !dbg !1680
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1680
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !1681
  %89 = load double*, double** %88, align 8, !dbg !1681
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !1680
  %91 = load double, double* %90, align 8, !dbg !1680
  %92 = fmul double 5.000000e-01, %91, !dbg !1682
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94090725308424, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725308576, i32 25, i32 24), !dbg !1683
  %93 = fadd double %86, %92, !dbg !1683
  call void @fAddHandler(double %86, double %92, double %93, i64 94090725303856, i64 94090725308576, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725308960, i32 25, i32 18), !dbg !1684
  store double %93, double* %8, align 8, !dbg !1684
  %94 = load double, double* %10, align 8, !dbg !1685
  %95 = load double, double* %14, align 8, !dbg !1686
  %96 = fmul double %94, %95, !dbg !1687
  call void @fMulHandler(double %94, double %95, double %96, i64 94090725309768, i64 94090725310152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725310560, i32 26, i32 16), !dbg !1688
  %97 = call double @fabs(double %96) #1, !dbg !1688
  %98 = load double, double* %9, align 8, !dbg !1689
  %99 = call double @fabs(double %98) #1, !dbg !1690
  %100 = fadd double %97, %99, !dbg !1692
  call void @fAddHandler(double %97, double %99, double %100, i64 94090725311040, i64 94090725311968, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725312448, i32 26, i32 23), !dbg !1693
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1693
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !1694
  %103 = load double*, double** %102, align 8, !dbg !1694
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !1693
  %105 = load double, double* %104, align 8, !dbg !1693
  %106 = call double @fabs(double %105) #1, !dbg !1695
  %107 = fmul double 5.000000e-01, %106, !dbg !1697
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94090725317200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725317712, i32 26, i32 40), !dbg !1698
  %108 = fadd double %100, %107, !dbg !1698
  call void @fAddHandler(double %100, double %107, double %108, i64 94090725312448, i64 94090725317712, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725318096, i32 26, i32 34), !dbg !1699
  %109 = load double, double* %12, align 8, !dbg !1699
  %110 = fadd double %109, %108, !dbg !1699
  call void @fAddHandler(double %109, double %108, double %110, i64 94090725318488, i64 94090725318096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725318896, i32 26, i32 7), !dbg !1699
  store double %110, double* %12, align 8, !dbg !1699
  %111 = load double, double* %8, align 8, !dbg !1700
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1701
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !1702
  store double %111, double* %113, align 8, !dbg !1703
  %114 = load double, double* %12, align 8, !dbg !1704
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !1705
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94090725322312, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725322720, i32 30, i32 33), !dbg !1706
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1706
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !1707
  %118 = load i32, i32* %117, align 8, !dbg !1707
  %119 = sext i32 %118 to i64, !dbg !1708
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !1708
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !1709
  %122 = load double*, double** %121, align 8, !dbg !1709
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !1708
  %124 = load double, double* %123, align 8, !dbg !1708
  %125 = call double @fabs(double %124) #1, !dbg !1710
  %126 = fadd double %115, %125, !dbg !1711
  call void @fAddHandler(double %115, double %125, double %126, i64 94090725322720, i64 94090725330048, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i64 94090725330528, i32 30, i32 37), !dbg !1712
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !1712
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !1713
  store double %126, double* %128, align 8, !dbg !1714
  ret i32 0, !dbg !1715
}

; Function Attrs: nounwind
declare double @exp(double) #3

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
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!100, !101, !102}
!llvm.ident = !{!103}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41, globals: !43)
!1 = !DIFile(filename: "zeta.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42}
!42 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!43 = !{!44, !61, !65, !76, !80, !81, !85, !89, !93, !94, !98, !99}
!44 = distinct !DIGlobalVariable(name: "twopi_pow", scope: !45, file: !1, line: 805, type: !58, isLocal: true, isDefinition: true, variable: [18 x double]* @gsl_sf_zeta_e.twopi_pow)
!45 = distinct !DISubprogram(name: "gsl_sf_zeta_e", scope: !1, file: !1, line: 776, type: !46, isLocal: false, isDefinition: true, scopeLine: 777, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !50}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !52, line: 41, baseType: !53)
!52 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !52, line: 37, size: 128, align: 64, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !53, file: !52, line: 38, baseType: !42, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !53, file: !52, line: 39, baseType: !42, size: 64, align: 64, offset: 64)
!57 = !{}
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1152, align: 64, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 18)
!61 = distinct !DIGlobalVariable(name: "hzeta_c", scope: !0, file: !1, line: 531, type: !62, isLocal: true, isDefinition: true, variable: [15 x double]* @hzeta_c)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 960, align: 64, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 15)
!65 = distinct !DIGlobalVariable(name: "zeta_xlt1_cs", scope: !0, file: !1, line: 61, type: !66, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @zeta_xlt1_cs)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !67, line: 29, baseType: !68)
!67 = !DIFile(filename: "./chebyshev.h", directory: "/fpcc/gsl-2.5/specfunc")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !67, line: 22, size: 320, align: 64, elements: !69)
!69 = !{!70, !72, !73, !74, !75}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !68, file: !67, line: 23, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !68, file: !67, line: 24, baseType: !48, size: 32, align: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !68, file: !67, line: 25, baseType: !42, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !68, file: !67, line: 26, baseType: !42, size: 64, align: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !68, file: !67, line: 27, baseType: !48, size: 32, align: 32, offset: 256)
!76 = distinct !DIGlobalVariable(name: "zeta_xlt1_data", scope: !0, file: !1, line: 45, type: !77, isLocal: true, isDefinition: true, variable: [14 x double]* @zeta_xlt1_data)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 896, align: 64, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 14)
!80 = distinct !DIGlobalVariable(name: "zeta_xgt1_cs", scope: !0, file: !1, line: 104, type: !66, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @zeta_xgt1_cs)
!81 = distinct !DIGlobalVariable(name: "zeta_xgt1_data", scope: !0, file: !1, line: 72, type: !82, isLocal: true, isDefinition: true, variable: [30 x double]* @zeta_xgt1_data)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1920, align: 64, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 30)
!85 = distinct !DIGlobalVariable(name: "zeta_neg_int_table", scope: !0, file: !1, line: 474, type: !86, isLocal: true, isDefinition: true, variable: [50 x double]* @zeta_neg_int_table)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 3200, align: 64, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 50)
!89 = distinct !DIGlobalVariable(name: "zetam1_pos_int_table", scope: !0, file: !1, line: 367, type: !90, isLocal: true, isDefinition: true, variable: [101 x double]* @zetam1_pos_int_table)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 6464, align: 64, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 101)
!93 = distinct !DIGlobalVariable(name: "zetam1_inter_cs", scope: !0, file: !1, line: 142, type: !66, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @zetam1_inter_cs)
!94 = distinct !DIGlobalVariable(name: "zetam1_inter_data", scope: !0, file: !1, line: 116, type: !95, isLocal: true, isDefinition: true, variable: [24 x double]* @zetam1_inter_data)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1536, align: 64, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 24)
!98 = distinct !DIGlobalVariable(name: "eta_pos_int_table", scope: !0, file: !1, line: 550, type: !90, isLocal: true, isDefinition: true, variable: [101 x double]* @eta_pos_int_table)
!99 = distinct !DIGlobalVariable(name: "eta_neg_int_table", scope: !0, file: !1, line: 657, type: !86, isLocal: true, isDefinition: true, variable: [50 x double]* @eta_neg_int_table)
!100 = !{i32 2, !"Dwarf Version", i32 4}
!101 = !{i32 2, !"Debug Info Version", i32 3}
!102 = !{i32 1, !"PIC Level", i32 2}
!103 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!104 = distinct !DISubprogram(name: "gsl_sf_hzeta_e", scope: !1, file: !1, line: 714, type: !105, isLocal: false, isDefinition: true, scopeLine: 715, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!105 = !DISubroutineType(types: !106)
!106 = !{!48, !49, !49, !50}
!107 = !DILocalVariable(name: "s", arg: 1, scope: !104, file: !1, line: 714, type: !49)
!108 = !DIExpression()
!109 = !DILocation(line: 714, column: 33, scope: !104)
!110 = !DILocalVariable(name: "q", arg: 2, scope: !104, file: !1, line: 714, type: !49)
!111 = !DILocation(line: 714, column: 49, scope: !104)
!112 = !DILocalVariable(name: "result", arg: 3, scope: !104, file: !1, line: 714, type: !50)
!113 = !DILocation(line: 714, column: 68, scope: !104)
!114 = !DILocation(line: 718, column: 6, scope: !115)
!115 = distinct !DILexicalBlock(scope: !104, file: !1, line: 718, column: 6)
!116 = !DILocation(line: 718, column: 8, scope: !115)
!117 = !DILocation(line: 718, column: 15, scope: !115)
!118 = !DILocation(line: 718, column: 18, scope: !119)
!119 = !DILexicalBlockFile(scope: !115, file: !1, discriminator: 1)
!120 = !DILocation(line: 718, column: 20, scope: !119)
!121 = !DILocation(line: 718, column: 6, scope: !119)
!122 = !DILocation(line: 719, column: 5, scope: !123)
!123 = distinct !DILexicalBlock(scope: !115, file: !1, line: 718, column: 28)
!124 = distinct !{!124, !122}
!125 = !DILocation(line: 719, column: 5, scope: !126)
!126 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 1)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 719, column: 5)
!128 = distinct !{!128, !129}
!129 = !DILocation(line: 719, column: 5, scope: !127)
!130 = !DILocation(line: 719, column: 5, scope: !131)
!131 = !DILexicalBlockFile(scope: !132, file: !1, discriminator: 2)
!132 = distinct !DILexicalBlock(scope: !127, file: !1, line: 719, column: 5)
!133 = !DILocation(line: 719, column: 5, scope: !134)
!134 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 3)
!135 = !DILocation(line: 720, column: 3, scope: !123)
!136 = !DILocalVariable(name: "max_bits", scope: !137, file: !1, line: 722, type: !49)
!137 = distinct !DILexicalBlock(scope: !115, file: !1, line: 721, column: 8)
!138 = !DILocation(line: 722, column: 18, scope: !137)
!139 = !DILocalVariable(name: "ln_term0", scope: !137, file: !1, line: 723, type: !49)
!140 = !DILocation(line: 723, column: 18, scope: !137)
!141 = !DILocation(line: 723, column: 30, scope: !137)
!142 = !DILocation(line: 723, column: 29, scope: !137)
!143 = !DILocation(line: 723, column: 38, scope: !137)
!144 = !DILocation(line: 723, column: 34, scope: !137)
!145 = !DILocation(line: 723, column: 32, scope: !137)
!146 = !DILocation(line: 725, column: 8, scope: !147)
!147 = distinct !DILexicalBlock(scope: !137, file: !1, line: 725, column: 8)
!148 = !DILocation(line: 725, column: 17, scope: !147)
!149 = !DILocation(line: 725, column: 8, scope: !137)
!150 = !DILocation(line: 726, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 725, column: 42)
!152 = distinct !{!152, !150}
!153 = !DILocation(line: 726, column: 7, scope: !154)
!154 = !DILexicalBlockFile(scope: !155, file: !1, discriminator: 1)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 726, column: 7)
!156 = distinct !{!156, !157}
!157 = !DILocation(line: 726, column: 7, scope: !155)
!158 = !DILocation(line: 726, column: 7, scope: !159)
!159 = !DILexicalBlockFile(scope: !160, file: !1, discriminator: 2)
!160 = distinct !DILexicalBlock(scope: !155, file: !1, line: 726, column: 7)
!161 = !DILocation(line: 726, column: 7, scope: !162)
!162 = !DILexicalBlockFile(scope: !155, file: !1, discriminator: 3)
!163 = !DILocation(line: 727, column: 5, scope: !151)
!164 = !DILocation(line: 728, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !147, file: !1, line: 728, column: 13)
!166 = !DILocation(line: 728, column: 22, scope: !165)
!167 = !DILocation(line: 728, column: 13, scope: !147)
!168 = !DILocation(line: 729, column: 7, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !1, line: 728, column: 47)
!170 = distinct !{!170, !168}
!171 = !DILocation(line: 729, column: 7, scope: !172)
!172 = !DILexicalBlockFile(scope: !173, file: !1, discriminator: 1)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 729, column: 7)
!174 = distinct !{!174, !175}
!175 = !DILocation(line: 729, column: 7, scope: !173)
!176 = !DILocation(line: 729, column: 7, scope: !177)
!177 = !DILexicalBlockFile(scope: !178, file: !1, discriminator: 2)
!178 = distinct !DILexicalBlock(scope: !173, file: !1, line: 729, column: 7)
!179 = !DILocation(line: 729, column: 7, scope: !180)
!180 = !DILexicalBlockFile(scope: !173, file: !1, discriminator: 3)
!181 = !DILocation(line: 730, column: 5, scope: !169)
!182 = !DILocation(line: 731, column: 14, scope: !183)
!183 = distinct !DILexicalBlock(scope: !165, file: !1, line: 731, column: 13)
!184 = !DILocation(line: 731, column: 16, scope: !183)
!185 = !DILocation(line: 731, column: 27, scope: !183)
!186 = !DILocation(line: 731, column: 30, scope: !187)
!187 = !DILexicalBlockFile(scope: !183, file: !1, discriminator: 1)
!188 = !DILocation(line: 731, column: 32, scope: !187)
!189 = !DILocation(line: 731, column: 39, scope: !187)
!190 = !DILocation(line: 731, column: 43, scope: !191)
!191 = !DILexicalBlockFile(scope: !183, file: !1, discriminator: 2)
!192 = !DILocation(line: 731, column: 45, scope: !191)
!193 = !DILocation(line: 731, column: 60, scope: !191)
!194 = !DILocation(line: 731, column: 63, scope: !195)
!195 = !DILexicalBlockFile(scope: !183, file: !1, discriminator: 3)
!196 = !DILocation(line: 731, column: 65, scope: !195)
!197 = !DILocation(line: 731, column: 13, scope: !195)
!198 = !DILocation(line: 732, column: 25, scope: !199)
!199 = distinct !DILexicalBlock(scope: !183, file: !1, line: 731, column: 74)
!200 = !DILocation(line: 732, column: 29, scope: !199)
!201 = !DILocation(line: 732, column: 28, scope: !199)
!202 = !DILocation(line: 732, column: 21, scope: !199)
!203 = !DILocation(line: 732, column: 7, scope: !199)
!204 = !DILocation(line: 732, column: 15, scope: !199)
!205 = !DILocation(line: 732, column: 19, scope: !199)
!206 = !DILocation(line: 733, column: 50, scope: !199)
!207 = !DILocation(line: 733, column: 58, scope: !199)
!208 = !DILocation(line: 733, column: 45, scope: !199)
!209 = !DILocation(line: 733, column: 43, scope: !199)
!210 = !DILocation(line: 733, column: 7, scope: !199)
!211 = !DILocation(line: 733, column: 15, scope: !199)
!212 = !DILocation(line: 733, column: 19, scope: !199)
!213 = !DILocation(line: 734, column: 7, scope: !199)
!214 = !DILocation(line: 736, column: 13, scope: !215)
!215 = distinct !DILexicalBlock(scope: !183, file: !1, line: 736, column: 13)
!216 = !DILocation(line: 736, column: 15, scope: !215)
!217 = !DILocation(line: 736, column: 30, scope: !215)
!218 = !DILocation(line: 736, column: 33, scope: !219)
!219 = !DILexicalBlockFile(scope: !215, file: !1, discriminator: 1)
!220 = !DILocation(line: 736, column: 35, scope: !219)
!221 = !DILocation(line: 736, column: 13, scope: !219)
!222 = !DILocalVariable(name: "p1", scope: !223, file: !1, line: 737, type: !49)
!223 = distinct !DILexicalBlock(scope: !215, file: !1, line: 736, column: 42)
!224 = !DILocation(line: 737, column: 20, scope: !223)
!225 = !DILocation(line: 737, column: 29, scope: !223)
!226 = !DILocation(line: 737, column: 33, scope: !223)
!227 = !DILocation(line: 737, column: 32, scope: !223)
!228 = !DILocation(line: 737, column: 25, scope: !223)
!229 = !DILocalVariable(name: "p2", scope: !223, file: !1, line: 738, type: !49)
!230 = !DILocation(line: 738, column: 20, scope: !223)
!231 = !DILocation(line: 738, column: 29, scope: !223)
!232 = !DILocation(line: 738, column: 36, scope: !223)
!233 = !DILocation(line: 738, column: 35, scope: !223)
!234 = !DILocation(line: 738, column: 30, scope: !223)
!235 = !DILocation(line: 738, column: 40, scope: !223)
!236 = !DILocation(line: 738, column: 25, scope: !223)
!237 = !DILocalVariable(name: "p3", scope: !223, file: !1, line: 739, type: !49)
!238 = !DILocation(line: 739, column: 20, scope: !223)
!239 = !DILocation(line: 739, column: 29, scope: !223)
!240 = !DILocation(line: 739, column: 36, scope: !223)
!241 = !DILocation(line: 739, column: 35, scope: !223)
!242 = !DILocation(line: 739, column: 30, scope: !223)
!243 = !DILocation(line: 739, column: 40, scope: !223)
!244 = !DILocation(line: 739, column: 25, scope: !223)
!245 = !DILocation(line: 740, column: 21, scope: !223)
!246 = !DILocation(line: 740, column: 33, scope: !223)
!247 = !DILocation(line: 740, column: 31, scope: !223)
!248 = !DILocation(line: 740, column: 38, scope: !223)
!249 = !DILocation(line: 740, column: 36, scope: !223)
!250 = !DILocation(line: 740, column: 24, scope: !223)
!251 = !DILocation(line: 740, column: 7, scope: !223)
!252 = !DILocation(line: 740, column: 15, scope: !223)
!253 = !DILocation(line: 740, column: 19, scope: !223)
!254 = !DILocation(line: 741, column: 44, scope: !223)
!255 = !DILocation(line: 741, column: 43, scope: !223)
!256 = !DILocation(line: 741, column: 46, scope: !223)
!257 = !DILocation(line: 741, column: 37, scope: !223)
!258 = !DILocation(line: 741, column: 60, scope: !223)
!259 = !DILocation(line: 741, column: 68, scope: !223)
!260 = !DILocation(line: 741, column: 55, scope: !223)
!261 = !DILocation(line: 741, column: 53, scope: !223)
!262 = !DILocation(line: 741, column: 7, scope: !223)
!263 = !DILocation(line: 741, column: 15, scope: !223)
!264 = !DILocation(line: 741, column: 19, scope: !223)
!265 = !DILocation(line: 742, column: 7, scope: !223)
!266 = !DILocalVariable(name: "jmax", scope: !267, file: !1, line: 748, type: !268)
!267 = distinct !DILexicalBlock(scope: !215, file: !1, line: 744, column: 10)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!269 = !DILocation(line: 748, column: 17, scope: !267)
!270 = !DILocalVariable(name: "kmax", scope: !267, file: !1, line: 749, type: !268)
!271 = !DILocation(line: 749, column: 17, scope: !267)
!272 = !DILocalVariable(name: "j", scope: !267, file: !1, line: 750, type: !48)
!273 = !DILocation(line: 750, column: 11, scope: !267)
!274 = !DILocalVariable(name: "k", scope: !267, file: !1, line: 750, type: !48)
!275 = !DILocation(line: 750, column: 14, scope: !267)
!276 = !DILocalVariable(name: "pmax", scope: !267, file: !1, line: 751, type: !49)
!277 = !DILocation(line: 751, column: 20, scope: !267)
!278 = !DILocation(line: 751, column: 39, scope: !267)
!279 = !DILocation(line: 751, column: 37, scope: !267)
!280 = !DILocation(line: 751, column: 43, scope: !267)
!281 = !DILocation(line: 751, column: 42, scope: !267)
!282 = !DILocation(line: 751, column: 28, scope: !267)
!283 = !DILocalVariable(name: "scp", scope: !267, file: !1, line: 752, type: !42)
!284 = !DILocation(line: 752, column: 14, scope: !267)
!285 = !DILocation(line: 752, column: 20, scope: !267)
!286 = !DILocalVariable(name: "pcp", scope: !267, file: !1, line: 753, type: !42)
!287 = !DILocation(line: 753, column: 14, scope: !267)
!288 = !DILocation(line: 753, column: 20, scope: !267)
!289 = !DILocation(line: 753, column: 35, scope: !267)
!290 = !DILocation(line: 753, column: 33, scope: !267)
!291 = !DILocation(line: 753, column: 25, scope: !267)
!292 = !DILocalVariable(name: "ans", scope: !267, file: !1, line: 754, type: !42)
!293 = !DILocation(line: 754, column: 14, scope: !267)
!294 = !DILocation(line: 754, column: 20, scope: !267)
!295 = !DILocation(line: 754, column: 32, scope: !267)
!296 = !DILocation(line: 754, column: 31, scope: !267)
!297 = !DILocation(line: 754, column: 36, scope: !267)
!298 = !DILocation(line: 754, column: 37, scope: !267)
!299 = !DILocation(line: 754, column: 34, scope: !267)
!300 = !DILocation(line: 754, column: 43, scope: !267)
!301 = !DILocation(line: 754, column: 24, scope: !267)
!302 = !DILocation(line: 756, column: 12, scope: !303)
!303 = distinct !DILexicalBlock(scope: !267, file: !1, line: 756, column: 7)
!304 = !DILocation(line: 756, column: 11, scope: !303)
!305 = !DILocation(line: 756, column: 16, scope: !306)
!306 = !DILexicalBlockFile(scope: !307, file: !1, discriminator: 1)
!307 = distinct !DILexicalBlock(scope: !303, file: !1, line: 756, column: 7)
!308 = !DILocation(line: 756, column: 17, scope: !306)
!309 = !DILocation(line: 756, column: 7, scope: !306)
!310 = !DILocation(line: 757, column: 20, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !1, line: 756, column: 29)
!312 = !DILocation(line: 757, column: 24, scope: !311)
!313 = !DILocation(line: 757, column: 22, scope: !311)
!314 = !DILocation(line: 757, column: 28, scope: !311)
!315 = !DILocation(line: 757, column: 27, scope: !311)
!316 = !DILocation(line: 757, column: 16, scope: !311)
!317 = !DILocation(line: 757, column: 13, scope: !311)
!318 = !DILocation(line: 758, column: 7, scope: !311)
!319 = !DILocation(line: 756, column: 25, scope: !320)
!320 = !DILexicalBlockFile(scope: !307, file: !1, discriminator: 2)
!321 = !DILocation(line: 756, column: 7, scope: !320)
!322 = distinct !{!322, !323}
!323 = !DILocation(line: 756, column: 7, scope: !267)
!324 = !DILocation(line: 760, column: 12, scope: !325)
!325 = distinct !DILexicalBlock(scope: !267, file: !1, line: 760, column: 7)
!326 = !DILocation(line: 760, column: 11, scope: !325)
!327 = !DILocation(line: 760, column: 16, scope: !328)
!328 = !DILexicalBlockFile(scope: !329, file: !1, discriminator: 1)
!329 = distinct !DILexicalBlock(scope: !325, file: !1, line: 760, column: 7)
!330 = !DILocation(line: 760, column: 17, scope: !328)
!331 = !DILocation(line: 760, column: 7, scope: !328)
!332 = !DILocalVariable(name: "delta", scope: !333, file: !1, line: 761, type: !42)
!333 = distinct !DILexicalBlock(scope: !329, file: !1, line: 760, column: 30)
!334 = !DILocation(line: 761, column: 16, scope: !333)
!335 = !DILocation(line: 761, column: 32, scope: !333)
!336 = !DILocation(line: 761, column: 33, scope: !333)
!337 = !DILocation(line: 761, column: 24, scope: !333)
!338 = !DILocation(line: 761, column: 39, scope: !333)
!339 = !DILocation(line: 761, column: 37, scope: !333)
!340 = !DILocation(line: 761, column: 45, scope: !333)
!341 = !DILocation(line: 761, column: 43, scope: !333)
!342 = !DILocation(line: 762, column: 16, scope: !333)
!343 = !DILocation(line: 762, column: 13, scope: !333)
!344 = !DILocation(line: 763, column: 17, scope: !345)
!345 = distinct !DILexicalBlock(scope: !333, file: !1, line: 763, column: 12)
!346 = !DILocation(line: 763, column: 23, scope: !345)
!347 = !DILocation(line: 763, column: 22, scope: !345)
!348 = !DILocation(line: 763, column: 12, scope: !345)
!349 = !DILocation(line: 763, column: 28, scope: !345)
!350 = !DILocation(line: 763, column: 12, scope: !333)
!351 = !DILocation(line: 763, column: 51, scope: !352)
!352 = !DILexicalBlockFile(scope: !345, file: !1, discriminator: 1)
!353 = !DILocation(line: 764, column: 17, scope: !333)
!354 = !DILocation(line: 764, column: 21, scope: !333)
!355 = !DILocation(line: 764, column: 20, scope: !333)
!356 = !DILocation(line: 764, column: 19, scope: !333)
!357 = !DILocation(line: 764, column: 18, scope: !333)
!358 = !DILocation(line: 764, column: 22, scope: !333)
!359 = !DILocation(line: 764, column: 27, scope: !333)
!360 = !DILocation(line: 764, column: 31, scope: !333)
!361 = !DILocation(line: 764, column: 30, scope: !333)
!362 = !DILocation(line: 764, column: 29, scope: !333)
!363 = !DILocation(line: 764, column: 28, scope: !333)
!364 = !DILocation(line: 764, column: 32, scope: !333)
!365 = !DILocation(line: 764, column: 25, scope: !333)
!366 = !DILocation(line: 764, column: 13, scope: !333)
!367 = !DILocation(line: 765, column: 24, scope: !333)
!368 = !DILocation(line: 765, column: 22, scope: !333)
!369 = !DILocation(line: 765, column: 35, scope: !333)
!370 = !DILocation(line: 765, column: 33, scope: !333)
!371 = !DILocation(line: 765, column: 26, scope: !333)
!372 = !DILocation(line: 765, column: 13, scope: !333)
!373 = !DILocation(line: 766, column: 7, scope: !333)
!374 = !DILocation(line: 760, column: 26, scope: !375)
!375 = !DILexicalBlockFile(scope: !329, file: !1, discriminator: 2)
!376 = !DILocation(line: 760, column: 7, scope: !375)
!377 = distinct !{!377, !378}
!378 = !DILocation(line: 760, column: 7, scope: !267)
!379 = !DILocation(line: 768, column: 21, scope: !267)
!380 = !DILocation(line: 768, column: 7, scope: !267)
!381 = !DILocation(line: 768, column: 15, scope: !267)
!382 = !DILocation(line: 768, column: 19, scope: !267)
!383 = !DILocation(line: 769, column: 65, scope: !267)
!384 = !DILocation(line: 769, column: 60, scope: !267)
!385 = !DILocation(line: 769, column: 58, scope: !267)
!386 = !DILocation(line: 769, column: 7, scope: !267)
!387 = !DILocation(line: 769, column: 15, scope: !267)
!388 = !DILocation(line: 769, column: 19, scope: !267)
!389 = !DILocation(line: 770, column: 7, scope: !267)
!390 = !DILocation(line: 773, column: 1, scope: !104)
!391 = !DILocalVariable(name: "s", arg: 1, scope: !45, file: !1, line: 776, type: !49)
!392 = !DILocation(line: 776, column: 32, scope: !45)
!393 = !DILocalVariable(name: "result", arg: 2, scope: !45, file: !1, line: 776, type: !50)
!394 = !DILocation(line: 776, column: 51, scope: !45)
!395 = !DILocation(line: 780, column: 6, scope: !396)
!396 = distinct !DILexicalBlock(scope: !45, file: !1, line: 780, column: 6)
!397 = !DILocation(line: 780, column: 8, scope: !396)
!398 = !DILocation(line: 780, column: 6, scope: !45)
!399 = !DILocation(line: 781, column: 5, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !1, line: 780, column: 16)
!401 = distinct !{!401, !399}
!402 = !DILocation(line: 781, column: 5, scope: !403)
!403 = !DILexicalBlockFile(scope: !404, file: !1, discriminator: 1)
!404 = distinct !DILexicalBlock(scope: !400, file: !1, line: 781, column: 5)
!405 = distinct !{!405, !406}
!406 = !DILocation(line: 781, column: 5, scope: !404)
!407 = !DILocation(line: 781, column: 5, scope: !408)
!408 = !DILexicalBlockFile(scope: !409, file: !1, discriminator: 2)
!409 = distinct !DILexicalBlock(scope: !404, file: !1, line: 781, column: 5)
!410 = !DILocation(line: 781, column: 5, scope: !411)
!411 = !DILexicalBlockFile(scope: !404, file: !1, discriminator: 3)
!412 = !DILocation(line: 782, column: 3, scope: !400)
!413 = !DILocation(line: 783, column: 11, scope: !414)
!414 = distinct !DILexicalBlock(scope: !396, file: !1, line: 783, column: 11)
!415 = !DILocation(line: 783, column: 13, scope: !414)
!416 = !DILocation(line: 783, column: 11, scope: !396)
!417 = !DILocation(line: 784, column: 30, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !1, line: 783, column: 21)
!419 = !DILocation(line: 784, column: 33, scope: !418)
!420 = !DILocation(line: 784, column: 12, scope: !418)
!421 = !DILocation(line: 784, column: 5, scope: !418)
!422 = !DILocalVariable(name: "zeta_one_minus_s", scope: !423, file: !1, line: 789, type: !51)
!423 = distinct !DILexicalBlock(scope: !414, file: !1, line: 786, column: 8)
!424 = !DILocation(line: 789, column: 19, scope: !423)
!425 = !DILocalVariable(name: "stat_zoms", scope: !423, file: !1, line: 790, type: !268)
!426 = !DILocation(line: 790, column: 15, scope: !423)
!427 = !DILocation(line: 790, column: 48, scope: !423)
!428 = !DILocation(line: 790, column: 27, scope: !423)
!429 = !DILocalVariable(name: "sin_term", scope: !423, file: !1, line: 791, type: !49)
!430 = !DILocation(line: 791, column: 18, scope: !423)
!431 = !DILocation(line: 791, column: 35, scope: !423)
!432 = !DILocation(line: 791, column: 30, scope: !423)
!433 = !DILocation(line: 791, column: 42, scope: !423)
!434 = !DILocation(line: 791, column: 29, scope: !423)
!435 = !DILocation(line: 791, column: 29, scope: !436)
!436 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 1)
!437 = !DILocation(line: 791, column: 76, scope: !438)
!438 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 2)
!439 = !DILocation(line: 791, column: 71, scope: !438)
!440 = !DILocation(line: 791, column: 70, scope: !438)
!441 = !DILocation(line: 791, column: 58, scope: !442)
!442 = !DILexicalBlockFile(scope: !438, file: !1, discriminator: 4)
!443 = !DILocation(line: 791, column: 83, scope: !438)
!444 = !DILocation(line: 791, column: 29, scope: !438)
!445 = !DILocation(line: 791, column: 29, scope: !446)
!446 = !DILexicalBlockFile(scope: !423, file: !1, discriminator: 3)
!447 = !DILocation(line: 791, column: 18, scope: !446)
!448 = !DILocation(line: 793, column: 8, scope: !449)
!449 = distinct !DILexicalBlock(scope: !423, file: !1, line: 793, column: 8)
!450 = !DILocation(line: 793, column: 17, scope: !449)
!451 = !DILocation(line: 793, column: 8, scope: !423)
!452 = !DILocation(line: 794, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !1, line: 793, column: 25)
!454 = !DILocation(line: 794, column: 15, scope: !453)
!455 = !DILocation(line: 794, column: 19, scope: !453)
!456 = !DILocation(line: 795, column: 7, scope: !453)
!457 = !DILocation(line: 795, column: 15, scope: !453)
!458 = !DILocation(line: 795, column: 19, scope: !453)
!459 = !DILocation(line: 796, column: 7, scope: !453)
!460 = !DILocation(line: 798, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !449, file: !1, line: 798, column: 13)
!462 = !DILocation(line: 798, column: 15, scope: !461)
!463 = !DILocation(line: 798, column: 13, scope: !449)
!464 = !DILocalVariable(name: "n", scope: !465, file: !1, line: 824, type: !268)
!465 = distinct !DILexicalBlock(scope: !461, file: !1, line: 798, column: 23)
!466 = !DILocation(line: 824, column: 17, scope: !465)
!467 = !DILocation(line: 824, column: 29, scope: !465)
!468 = !DILocation(line: 824, column: 28, scope: !465)
!469 = !DILocation(line: 824, column: 31, scope: !465)
!470 = !DILocation(line: 824, column: 21, scope: !465)
!471 = !DILocalVariable(name: "fs", scope: !465, file: !1, line: 825, type: !49)
!472 = !DILocation(line: 825, column: 20, scope: !465)
!473 = !DILocation(line: 825, column: 25, scope: !465)
!474 = !DILocation(line: 825, column: 34, scope: !465)
!475 = !DILocation(line: 825, column: 33, scope: !465)
!476 = !DILocation(line: 825, column: 27, scope: !465)
!477 = !DILocalVariable(name: "p", scope: !465, file: !1, line: 826, type: !49)
!478 = !DILocation(line: 826, column: 20, scope: !465)
!479 = !DILocation(line: 826, column: 38, scope: !465)
!480 = !DILocation(line: 826, column: 24, scope: !465)
!481 = !DILocation(line: 826, column: 54, scope: !465)
!482 = !DILocation(line: 826, column: 44, scope: !465)
!483 = !DILocation(line: 826, column: 42, scope: !465)
!484 = !DILocalVariable(name: "g", scope: !465, file: !1, line: 828, type: !51)
!485 = !DILocation(line: 828, column: 21, scope: !465)
!486 = !DILocalVariable(name: "stat_g", scope: !465, file: !1, line: 829, type: !268)
!487 = !DILocation(line: 829, column: 17, scope: !465)
!488 = !DILocation(line: 829, column: 45, scope: !465)
!489 = !DILocation(line: 829, column: 44, scope: !465)
!490 = !DILocation(line: 829, column: 26, scope: !465)
!491 = !DILocation(line: 830, column: 22, scope: !465)
!492 = !DILocation(line: 830, column: 28, scope: !465)
!493 = !DILocation(line: 830, column: 24, scope: !465)
!494 = !DILocation(line: 830, column: 34, scope: !465)
!495 = !DILocation(line: 830, column: 32, scope: !465)
!496 = !DILocation(line: 830, column: 62, scope: !465)
!497 = !DILocation(line: 830, column: 43, scope: !465)
!498 = !DILocation(line: 830, column: 7, scope: !465)
!499 = !DILocation(line: 830, column: 15, scope: !465)
!500 = !DILocation(line: 830, column: 20, scope: !465)
!501 = !DILocation(line: 831, column: 27, scope: !465)
!502 = !DILocation(line: 831, column: 33, scope: !465)
!503 = !DILocation(line: 831, column: 29, scope: !465)
!504 = !DILocation(line: 831, column: 39, scope: !465)
!505 = !DILocation(line: 831, column: 37, scope: !465)
!506 = !DILocation(line: 831, column: 22, scope: !465)
!507 = !DILocation(line: 831, column: 68, scope: !465)
!508 = !DILocation(line: 831, column: 49, scope: !465)
!509 = !DILocation(line: 831, column: 7, scope: !465)
!510 = !DILocation(line: 831, column: 15, scope: !465)
!511 = !DILocation(line: 831, column: 20, scope: !465)
!512 = !DILocation(line: 832, column: 27, scope: !465)
!513 = !DILocation(line: 832, column: 31, scope: !465)
!514 = !DILocation(line: 832, column: 29, scope: !465)
!515 = !DILocation(line: 832, column: 59, scope: !465)
!516 = !DILocation(line: 832, column: 40, scope: !465)
!517 = !DILocation(line: 832, column: 22, scope: !465)
!518 = !DILocation(line: 832, column: 68, scope: !465)
!519 = !DILocation(line: 832, column: 64, scope: !465)
!520 = !DILocation(line: 832, column: 7, scope: !465)
!521 = !DILocation(line: 832, column: 15, scope: !465)
!522 = !DILocation(line: 832, column: 19, scope: !465)
!523 = !DILocation(line: 833, column: 46, scope: !465)
!524 = !DILocation(line: 833, column: 41, scope: !465)
!525 = !DILocation(line: 833, column: 48, scope: !465)
!526 = !DILocation(line: 833, column: 38, scope: !465)
!527 = !DILocation(line: 833, column: 61, scope: !465)
!528 = !DILocation(line: 833, column: 69, scope: !465)
!529 = !DILocation(line: 833, column: 56, scope: !530)
!530 = !DILexicalBlockFile(scope: !465, file: !1, discriminator: 1)
!531 = !DILocation(line: 833, column: 54, scope: !465)
!532 = !DILocation(line: 833, column: 7, scope: !465)
!533 = !DILocation(line: 833, column: 15, scope: !465)
!534 = !DILocation(line: 833, column: 19, scope: !465)
!535 = !DILocation(line: 834, column: 14, scope: !465)
!536 = !DILocation(line: 834, column: 14, scope: !530)
!537 = !DILocation(line: 834, column: 14, scope: !538)
!538 = !DILexicalBlockFile(scope: !465, file: !1, discriminator: 2)
!539 = !DILocation(line: 834, column: 14, scope: !540)
!540 = !DILexicalBlockFile(scope: !465, file: !1, discriminator: 3)
!541 = !DILocation(line: 834, column: 14, scope: !542)
!542 = !DILexicalBlockFile(scope: !465, file: !1, discriminator: 4)
!543 = !DILocation(line: 834, column: 14, scope: !544)
!544 = !DILexicalBlockFile(scope: !465, file: !1, discriminator: 5)
!545 = !DILocation(line: 834, column: 14, scope: !546)
!546 = !DILexicalBlockFile(scope: !465, file: !1, discriminator: 6)
!547 = !DILocation(line: 834, column: 7, scope: !546)
!548 = !DILocation(line: 847, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !461, file: !1, line: 836, column: 10)
!550 = distinct !{!550, !548}
!551 = !DILocation(line: 847, column: 7, scope: !552)
!552 = !DILexicalBlockFile(scope: !553, file: !1, discriminator: 1)
!553 = distinct !DILexicalBlock(scope: !549, file: !1, line: 847, column: 7)
!554 = distinct !{!554, !555}
!555 = !DILocation(line: 847, column: 7, scope: !553)
!556 = !DILocation(line: 847, column: 7, scope: !557)
!557 = !DILexicalBlockFile(scope: !558, file: !1, discriminator: 2)
!558 = distinct !DILexicalBlock(scope: !553, file: !1, line: 847, column: 7)
!559 = !DILocation(line: 847, column: 7, scope: !560)
!560 = !DILexicalBlockFile(scope: !553, file: !1, discriminator: 3)
!561 = !DILocation(line: 850, column: 1, scope: !45)
!562 = distinct !DISubprogram(name: "riemann_zeta_sgt0", scope: !1, file: !1, line: 154, type: !563, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!563 = !DISubroutineType(types: !564)
!564 = !{!48, !42, !50}
!565 = !DILocalVariable(name: "s", arg: 1, scope: !562, file: !1, line: 154, type: !42)
!566 = !DILocation(line: 154, column: 26, scope: !562)
!567 = !DILocalVariable(name: "result", arg: 2, scope: !562, file: !1, line: 154, type: !50)
!568 = !DILocation(line: 154, column: 45, scope: !562)
!569 = !DILocation(line: 156, column: 6, scope: !570)
!570 = distinct !DILexicalBlock(scope: !562, file: !1, line: 156, column: 6)
!571 = !DILocation(line: 156, column: 8, scope: !570)
!572 = !DILocation(line: 156, column: 6, scope: !562)
!573 = !DILocalVariable(name: "c", scope: !574, file: !1, line: 157, type: !51)
!574 = distinct !DILexicalBlock(scope: !570, file: !1, line: 156, column: 15)
!575 = !DILocation(line: 157, column: 19, scope: !574)
!576 = !DILocation(line: 158, column: 36, scope: !574)
!577 = !DILocation(line: 158, column: 35, scope: !574)
!578 = !DILocation(line: 158, column: 38, scope: !574)
!579 = !DILocation(line: 158, column: 5, scope: !574)
!580 = !DILocation(line: 159, column: 21, scope: !574)
!581 = !DILocation(line: 159, column: 28, scope: !574)
!582 = !DILocation(line: 159, column: 30, scope: !574)
!583 = !DILocation(line: 159, column: 25, scope: !574)
!584 = !DILocation(line: 159, column: 5, scope: !574)
!585 = !DILocation(line: 159, column: 13, scope: !574)
!586 = !DILocation(line: 159, column: 17, scope: !574)
!587 = !DILocation(line: 160, column: 21, scope: !574)
!588 = !DILocation(line: 160, column: 32, scope: !574)
!589 = !DILocation(line: 160, column: 33, scope: !574)
!590 = !DILocation(line: 160, column: 27, scope: !574)
!591 = !DILocation(line: 160, column: 25, scope: !574)
!592 = !DILocation(line: 160, column: 64, scope: !574)
!593 = !DILocation(line: 160, column: 72, scope: !574)
!594 = !DILocation(line: 160, column: 59, scope: !595)
!595 = !DILexicalBlockFile(scope: !574, file: !1, discriminator: 1)
!596 = !DILocation(line: 160, column: 57, scope: !574)
!597 = !DILocation(line: 160, column: 39, scope: !574)
!598 = !DILocation(line: 160, column: 5, scope: !574)
!599 = !DILocation(line: 160, column: 13, scope: !574)
!600 = !DILocation(line: 160, column: 17, scope: !574)
!601 = !DILocation(line: 161, column: 5, scope: !574)
!602 = !DILocation(line: 163, column: 11, scope: !603)
!603 = distinct !DILexicalBlock(scope: !570, file: !1, line: 163, column: 11)
!604 = !DILocation(line: 163, column: 13, scope: !603)
!605 = !DILocation(line: 163, column: 11, scope: !570)
!606 = !DILocalVariable(name: "x", scope: !607, file: !1, line: 164, type: !42)
!607 = distinct !DILexicalBlock(scope: !603, file: !1, line: 163, column: 22)
!608 = !DILocation(line: 164, column: 12, scope: !607)
!609 = !DILocation(line: 164, column: 21, scope: !607)
!610 = !DILocation(line: 164, column: 20, scope: !607)
!611 = !DILocation(line: 164, column: 23, scope: !607)
!612 = !DILocation(line: 164, column: 30, scope: !607)
!613 = !DILocalVariable(name: "c", scope: !607, file: !1, line: 165, type: !51)
!614 = !DILocation(line: 165, column: 19, scope: !607)
!615 = !DILocation(line: 166, column: 32, scope: !607)
!616 = !DILocation(line: 166, column: 5, scope: !607)
!617 = !DILocation(line: 167, column: 21, scope: !607)
!618 = !DILocation(line: 167, column: 28, scope: !607)
!619 = !DILocation(line: 167, column: 30, scope: !607)
!620 = !DILocation(line: 167, column: 25, scope: !607)
!621 = !DILocation(line: 167, column: 5, scope: !607)
!622 = !DILocation(line: 167, column: 13, scope: !607)
!623 = !DILocation(line: 167, column: 17, scope: !607)
!624 = !DILocation(line: 168, column: 21, scope: !607)
!625 = !DILocation(line: 168, column: 28, scope: !607)
!626 = !DILocation(line: 168, column: 30, scope: !607)
!627 = !DILocation(line: 168, column: 25, scope: !607)
!628 = !DILocation(line: 168, column: 62, scope: !607)
!629 = !DILocation(line: 168, column: 70, scope: !607)
!630 = !DILocation(line: 168, column: 57, scope: !607)
!631 = !DILocation(line: 168, column: 55, scope: !607)
!632 = !DILocation(line: 168, column: 37, scope: !607)
!633 = !DILocation(line: 168, column: 5, scope: !607)
!634 = !DILocation(line: 168, column: 13, scope: !607)
!635 = !DILocation(line: 168, column: 17, scope: !607)
!636 = !DILocation(line: 169, column: 5, scope: !607)
!637 = !DILocalVariable(name: "f2", scope: !638, file: !1, line: 172, type: !42)
!638 = distinct !DILexicalBlock(scope: !603, file: !1, line: 171, column: 8)
!639 = !DILocation(line: 172, column: 12, scope: !638)
!640 = !DILocation(line: 172, column: 32, scope: !638)
!641 = !DILocation(line: 172, column: 31, scope: !638)
!642 = !DILocation(line: 172, column: 23, scope: !638)
!643 = !DILocation(line: 172, column: 21, scope: !638)
!644 = !DILocalVariable(name: "f3", scope: !638, file: !1, line: 173, type: !42)
!645 = !DILocation(line: 173, column: 12, scope: !638)
!646 = !DILocation(line: 173, column: 32, scope: !638)
!647 = !DILocation(line: 173, column: 31, scope: !638)
!648 = !DILocation(line: 173, column: 23, scope: !638)
!649 = !DILocation(line: 173, column: 21, scope: !638)
!650 = !DILocalVariable(name: "f5", scope: !638, file: !1, line: 174, type: !42)
!651 = !DILocation(line: 174, column: 12, scope: !638)
!652 = !DILocation(line: 174, column: 32, scope: !638)
!653 = !DILocation(line: 174, column: 31, scope: !638)
!654 = !DILocation(line: 174, column: 23, scope: !638)
!655 = !DILocation(line: 174, column: 21, scope: !638)
!656 = !DILocalVariable(name: "f7", scope: !638, file: !1, line: 175, type: !42)
!657 = !DILocation(line: 175, column: 12, scope: !638)
!658 = !DILocation(line: 175, column: 32, scope: !638)
!659 = !DILocation(line: 175, column: 31, scope: !638)
!660 = !DILocation(line: 175, column: 23, scope: !638)
!661 = !DILocation(line: 175, column: 21, scope: !638)
!662 = !DILocation(line: 176, column: 24, scope: !638)
!663 = !DILocation(line: 176, column: 27, scope: !638)
!664 = !DILocation(line: 176, column: 26, scope: !638)
!665 = !DILocation(line: 176, column: 30, scope: !638)
!666 = !DILocation(line: 176, column: 29, scope: !638)
!667 = !DILocation(line: 176, column: 33, scope: !638)
!668 = !DILocation(line: 176, column: 32, scope: !638)
!669 = !DILocation(line: 176, column: 22, scope: !638)
!670 = !DILocation(line: 176, column: 5, scope: !638)
!671 = !DILocation(line: 176, column: 13, scope: !638)
!672 = !DILocation(line: 176, column: 17, scope: !638)
!673 = !DILocation(line: 177, column: 48, scope: !638)
!674 = !DILocation(line: 177, column: 56, scope: !638)
!675 = !DILocation(line: 177, column: 43, scope: !638)
!676 = !DILocation(line: 177, column: 41, scope: !638)
!677 = !DILocation(line: 177, column: 5, scope: !638)
!678 = !DILocation(line: 177, column: 13, scope: !638)
!679 = !DILocation(line: 177, column: 17, scope: !638)
!680 = !DILocation(line: 178, column: 5, scope: !638)
!681 = !DILocation(line: 180, column: 1, scope: !562)
!682 = distinct !DISubprogram(name: "riemann_zeta1ms_slt0", scope: !1, file: !1, line: 185, type: !563, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!683 = !DILocalVariable(name: "s", arg: 1, scope: !682, file: !1, line: 185, type: !42)
!684 = !DILocation(line: 185, column: 29, scope: !682)
!685 = !DILocalVariable(name: "result", arg: 2, scope: !682, file: !1, line: 185, type: !50)
!686 = !DILocation(line: 185, column: 48, scope: !682)
!687 = !DILocation(line: 187, column: 6, scope: !688)
!688 = distinct !DILexicalBlock(scope: !682, file: !1, line: 187, column: 6)
!689 = !DILocation(line: 187, column: 8, scope: !688)
!690 = !DILocation(line: 187, column: 6, scope: !682)
!691 = !DILocalVariable(name: "x", scope: !692, file: !1, line: 188, type: !42)
!692 = distinct !DILexicalBlock(scope: !688, file: !1, line: 187, column: 17)
!693 = !DILocation(line: 188, column: 12, scope: !692)
!694 = !DILocation(line: 188, column: 27, scope: !692)
!695 = !DILocation(line: 188, column: 26, scope: !692)
!696 = !DILocation(line: 188, column: 21, scope: !692)
!697 = !DILocation(line: 188, column: 29, scope: !692)
!698 = !DILocalVariable(name: "c", scope: !692, file: !1, line: 189, type: !51)
!699 = !DILocation(line: 189, column: 19, scope: !692)
!700 = !DILocation(line: 190, column: 32, scope: !692)
!701 = !DILocation(line: 190, column: 5, scope: !692)
!702 = !DILocation(line: 191, column: 21, scope: !692)
!703 = !DILocation(line: 191, column: 29, scope: !692)
!704 = !DILocation(line: 191, column: 28, scope: !692)
!705 = !DILocation(line: 191, column: 25, scope: !692)
!706 = !DILocation(line: 191, column: 5, scope: !692)
!707 = !DILocation(line: 191, column: 13, scope: !692)
!708 = !DILocation(line: 191, column: 17, scope: !692)
!709 = !DILocation(line: 192, column: 21, scope: !692)
!710 = !DILocation(line: 192, column: 29, scope: !692)
!711 = !DILocation(line: 192, column: 28, scope: !692)
!712 = !DILocation(line: 192, column: 25, scope: !692)
!713 = !DILocation(line: 192, column: 57, scope: !692)
!714 = !DILocation(line: 192, column: 65, scope: !692)
!715 = !DILocation(line: 192, column: 52, scope: !692)
!716 = !DILocation(line: 192, column: 50, scope: !692)
!717 = !DILocation(line: 192, column: 32, scope: !692)
!718 = !DILocation(line: 192, column: 5, scope: !692)
!719 = !DILocation(line: 192, column: 13, scope: !692)
!720 = !DILocation(line: 192, column: 17, scope: !692)
!721 = !DILocation(line: 193, column: 5, scope: !692)
!722 = !DILocalVariable(name: "f2", scope: !723, file: !1, line: 196, type: !42)
!723 = distinct !DILexicalBlock(scope: !688, file: !1, line: 195, column: 8)
!724 = !DILocation(line: 196, column: 12, scope: !723)
!725 = !DILocation(line: 196, column: 37, scope: !723)
!726 = !DILocation(line: 196, column: 36, scope: !723)
!727 = !DILocation(line: 196, column: 31, scope: !723)
!728 = !DILocation(line: 196, column: 23, scope: !723)
!729 = !DILocation(line: 196, column: 21, scope: !723)
!730 = !DILocalVariable(name: "f3", scope: !723, file: !1, line: 197, type: !42)
!731 = !DILocation(line: 197, column: 12, scope: !723)
!732 = !DILocation(line: 197, column: 37, scope: !723)
!733 = !DILocation(line: 197, column: 36, scope: !723)
!734 = !DILocation(line: 197, column: 31, scope: !723)
!735 = !DILocation(line: 197, column: 23, scope: !723)
!736 = !DILocation(line: 197, column: 21, scope: !723)
!737 = !DILocalVariable(name: "f5", scope: !723, file: !1, line: 198, type: !42)
!738 = !DILocation(line: 198, column: 12, scope: !723)
!739 = !DILocation(line: 198, column: 37, scope: !723)
!740 = !DILocation(line: 198, column: 36, scope: !723)
!741 = !DILocation(line: 198, column: 31, scope: !723)
!742 = !DILocation(line: 198, column: 23, scope: !723)
!743 = !DILocation(line: 198, column: 21, scope: !723)
!744 = !DILocalVariable(name: "f7", scope: !723, file: !1, line: 199, type: !42)
!745 = !DILocation(line: 199, column: 12, scope: !723)
!746 = !DILocation(line: 199, column: 37, scope: !723)
!747 = !DILocation(line: 199, column: 36, scope: !723)
!748 = !DILocation(line: 199, column: 31, scope: !723)
!749 = !DILocation(line: 199, column: 23, scope: !723)
!750 = !DILocation(line: 199, column: 21, scope: !723)
!751 = !DILocation(line: 200, column: 24, scope: !723)
!752 = !DILocation(line: 200, column: 27, scope: !723)
!753 = !DILocation(line: 200, column: 26, scope: !723)
!754 = !DILocation(line: 200, column: 30, scope: !723)
!755 = !DILocation(line: 200, column: 29, scope: !723)
!756 = !DILocation(line: 200, column: 33, scope: !723)
!757 = !DILocation(line: 200, column: 32, scope: !723)
!758 = !DILocation(line: 200, column: 22, scope: !723)
!759 = !DILocation(line: 200, column: 5, scope: !723)
!760 = !DILocation(line: 200, column: 13, scope: !723)
!761 = !DILocation(line: 200, column: 17, scope: !723)
!762 = !DILocation(line: 201, column: 48, scope: !723)
!763 = !DILocation(line: 201, column: 56, scope: !723)
!764 = !DILocation(line: 201, column: 43, scope: !723)
!765 = !DILocation(line: 201, column: 41, scope: !723)
!766 = !DILocation(line: 201, column: 5, scope: !723)
!767 = !DILocation(line: 201, column: 13, scope: !723)
!768 = !DILocation(line: 201, column: 17, scope: !723)
!769 = !DILocation(line: 202, column: 5, scope: !723)
!770 = !DILocation(line: 204, column: 1, scope: !682)
!771 = distinct !DISubprogram(name: "gsl_sf_zeta_int_e", scope: !1, file: !1, line: 853, type: !772, isLocal: false, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!772 = !DISubroutineType(types: !773)
!773 = !{!48, !268, !50}
!774 = !DILocalVariable(name: "n", arg: 1, scope: !771, file: !1, line: 853, type: !268)
!775 = !DILocation(line: 853, column: 33, scope: !771)
!776 = !DILocalVariable(name: "result", arg: 2, scope: !771, file: !1, line: 853, type: !50)
!777 = !DILocation(line: 853, column: 52, scope: !771)
!778 = !DILocation(line: 857, column: 6, scope: !779)
!779 = distinct !DILexicalBlock(scope: !771, file: !1, line: 857, column: 6)
!780 = !DILocation(line: 857, column: 8, scope: !779)
!781 = !DILocation(line: 857, column: 6, scope: !771)
!782 = !DILocation(line: 858, column: 9, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !1, line: 858, column: 8)
!784 = distinct !DILexicalBlock(scope: !779, file: !1, line: 857, column: 13)
!785 = !DILocation(line: 858, column: 8, scope: !784)
!786 = !DILocation(line: 859, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !783, file: !1, line: 858, column: 24)
!788 = !DILocation(line: 859, column: 15, scope: !787)
!789 = !DILocation(line: 859, column: 19, scope: !787)
!790 = !DILocation(line: 860, column: 7, scope: !787)
!791 = !DILocation(line: 860, column: 15, scope: !787)
!792 = !DILocation(line: 860, column: 19, scope: !787)
!793 = !DILocation(line: 861, column: 7, scope: !787)
!794 = !DILocation(line: 863, column: 13, scope: !795)
!795 = distinct !DILexicalBlock(scope: !783, file: !1, line: 863, column: 13)
!796 = !DILocation(line: 863, column: 15, scope: !795)
!797 = !DILocation(line: 863, column: 13, scope: !783)
!798 = !DILocation(line: 864, column: 42, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !1, line: 863, column: 39)
!800 = !DILocation(line: 864, column: 43, scope: !799)
!801 = !DILocation(line: 864, column: 40, scope: !799)
!802 = !DILocation(line: 864, column: 46, scope: !799)
!803 = !DILocation(line: 864, column: 21, scope: !799)
!804 = !DILocation(line: 864, column: 7, scope: !799)
!805 = !DILocation(line: 864, column: 15, scope: !799)
!806 = !DILocation(line: 864, column: 19, scope: !799)
!807 = !DILocation(line: 865, column: 50, scope: !799)
!808 = !DILocation(line: 865, column: 58, scope: !799)
!809 = !DILocation(line: 865, column: 45, scope: !799)
!810 = !DILocation(line: 865, column: 43, scope: !799)
!811 = !DILocation(line: 865, column: 7, scope: !799)
!812 = !DILocation(line: 865, column: 15, scope: !799)
!813 = !DILocation(line: 865, column: 19, scope: !799)
!814 = !DILocation(line: 866, column: 7, scope: !799)
!815 = !DILocation(line: 869, column: 36, scope: !816)
!816 = distinct !DILexicalBlock(scope: !795, file: !1, line: 868, column: 10)
!817 = !DILocation(line: 869, column: 28, scope: !816)
!818 = !DILocation(line: 869, column: 39, scope: !816)
!819 = !DILocation(line: 869, column: 14, scope: !816)
!820 = !DILocation(line: 869, column: 7, scope: !816)
!821 = !DILocation(line: 872, column: 11, scope: !822)
!822 = distinct !DILexicalBlock(scope: !779, file: !1, line: 872, column: 11)
!823 = !DILocation(line: 872, column: 13, scope: !822)
!824 = !DILocation(line: 872, column: 11, scope: !779)
!825 = !DILocation(line: 873, column: 5, scope: !826)
!826 = distinct !DILexicalBlock(scope: !822, file: !1, line: 872, column: 18)
!827 = distinct !{!827, !825}
!828 = !DILocation(line: 873, column: 5, scope: !829)
!829 = !DILexicalBlockFile(scope: !830, file: !1, discriminator: 1)
!830 = distinct !DILexicalBlock(scope: !826, file: !1, line: 873, column: 5)
!831 = distinct !{!831, !832}
!832 = !DILocation(line: 873, column: 5, scope: !830)
!833 = !DILocation(line: 873, column: 5, scope: !834)
!834 = !DILexicalBlockFile(scope: !835, file: !1, discriminator: 2)
!835 = distinct !DILexicalBlock(scope: !830, file: !1, line: 873, column: 5)
!836 = !DILocation(line: 873, column: 5, scope: !837)
!837 = !DILexicalBlockFile(scope: !830, file: !1, discriminator: 3)
!838 = !DILocation(line: 874, column: 3, scope: !826)
!839 = !DILocation(line: 875, column: 11, scope: !840)
!840 = distinct !DILexicalBlock(scope: !822, file: !1, line: 875, column: 11)
!841 = !DILocation(line: 875, column: 13, scope: !840)
!842 = !DILocation(line: 875, column: 11, scope: !822)
!843 = !DILocation(line: 876, column: 46, scope: !844)
!844 = distinct !DILexicalBlock(scope: !840, file: !1, line: 875, column: 36)
!845 = !DILocation(line: 876, column: 25, scope: !844)
!846 = !DILocation(line: 876, column: 23, scope: !844)
!847 = !DILocation(line: 876, column: 5, scope: !844)
!848 = !DILocation(line: 876, column: 13, scope: !844)
!849 = !DILocation(line: 876, column: 17, scope: !844)
!850 = !DILocation(line: 877, column: 48, scope: !844)
!851 = !DILocation(line: 877, column: 56, scope: !844)
!852 = !DILocation(line: 877, column: 43, scope: !844)
!853 = !DILocation(line: 877, column: 41, scope: !844)
!854 = !DILocation(line: 877, column: 5, scope: !844)
!855 = !DILocation(line: 877, column: 13, scope: !844)
!856 = !DILocation(line: 877, column: 17, scope: !844)
!857 = !DILocation(line: 878, column: 5, scope: !844)
!858 = !DILocation(line: 881, column: 5, scope: !859)
!859 = distinct !DILexicalBlock(scope: !840, file: !1, line: 880, column: 8)
!860 = !DILocation(line: 881, column: 13, scope: !859)
!861 = !DILocation(line: 881, column: 17, scope: !859)
!862 = !DILocation(line: 882, column: 5, scope: !859)
!863 = !DILocation(line: 882, column: 13, scope: !859)
!864 = !DILocation(line: 882, column: 17, scope: !859)
!865 = !DILocation(line: 883, column: 5, scope: !859)
!866 = !DILocation(line: 885, column: 1, scope: !771)
!867 = distinct !DISubprogram(name: "gsl_sf_zetam1_e", scope: !1, file: !1, line: 888, type: !46, isLocal: false, isDefinition: true, scopeLine: 889, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!868 = !DILocalVariable(name: "s", arg: 1, scope: !867, file: !1, line: 888, type: !49)
!869 = !DILocation(line: 888, column: 34, scope: !867)
!870 = !DILocalVariable(name: "result", arg: 2, scope: !867, file: !1, line: 888, type: !50)
!871 = !DILocation(line: 888, column: 53, scope: !867)
!872 = !DILocation(line: 890, column: 6, scope: !873)
!873 = distinct !DILexicalBlock(scope: !867, file: !1, line: 890, column: 6)
!874 = !DILocation(line: 890, column: 8, scope: !873)
!875 = !DILocation(line: 890, column: 6, scope: !867)
!876 = !DILocalVariable(name: "stat", scope: !877, file: !1, line: 892, type: !48)
!877 = distinct !DILexicalBlock(scope: !873, file: !1, line: 891, column: 3)
!878 = !DILocation(line: 892, column: 9, scope: !877)
!879 = !DILocation(line: 892, column: 30, scope: !877)
!880 = !DILocation(line: 892, column: 33, scope: !877)
!881 = !DILocation(line: 892, column: 16, scope: !877)
!882 = !DILocation(line: 893, column: 19, scope: !877)
!883 = !DILocation(line: 893, column: 27, scope: !877)
!884 = !DILocation(line: 893, column: 31, scope: !877)
!885 = !DILocation(line: 893, column: 5, scope: !877)
!886 = !DILocation(line: 893, column: 13, scope: !877)
!887 = !DILocation(line: 893, column: 17, scope: !877)
!888 = !DILocation(line: 894, column: 12, scope: !877)
!889 = !DILocation(line: 894, column: 5, scope: !877)
!890 = !DILocation(line: 896, column: 11, scope: !891)
!891 = distinct !DILexicalBlock(scope: !873, file: !1, line: 896, column: 11)
!892 = !DILocation(line: 896, column: 13, scope: !891)
!893 = !DILocation(line: 896, column: 11, scope: !873)
!894 = !DILocation(line: 898, column: 48, scope: !895)
!895 = distinct !DILexicalBlock(scope: !891, file: !1, line: 897, column: 3)
!896 = !DILocation(line: 898, column: 51, scope: !895)
!897 = !DILocation(line: 898, column: 12, scope: !895)
!898 = !DILocation(line: 898, column: 5, scope: !895)
!899 = !DILocation(line: 902, column: 40, scope: !900)
!900 = distinct !DILexicalBlock(scope: !891, file: !1, line: 901, column: 3)
!901 = !DILocation(line: 902, column: 43, scope: !900)
!902 = !DILocation(line: 902, column: 12, scope: !900)
!903 = !DILocation(line: 902, column: 5, scope: !900)
!904 = !DILocation(line: 904, column: 1, scope: !867)
!905 = distinct !DISubprogram(name: "riemann_zeta_minus_1_intermediate_s", scope: !1, file: !1, line: 209, type: !563, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!906 = !DILocalVariable(name: "s", arg: 1, scope: !905, file: !1, line: 209, type: !42)
!907 = !DILocation(line: 209, column: 44, scope: !905)
!908 = !DILocalVariable(name: "result", arg: 2, scope: !905, file: !1, line: 209, type: !50)
!909 = !DILocation(line: 209, column: 63, scope: !905)
!910 = !DILocalVariable(name: "t", scope: !905, file: !1, line: 211, type: !42)
!911 = !DILocation(line: 211, column: 10, scope: !905)
!912 = !DILocation(line: 211, column: 15, scope: !905)
!913 = !DILocation(line: 211, column: 17, scope: !905)
!914 = !DILocation(line: 211, column: 24, scope: !905)
!915 = !DILocalVariable(name: "c", scope: !905, file: !1, line: 212, type: !51)
!916 = !DILocation(line: 212, column: 17, scope: !905)
!917 = !DILocation(line: 213, column: 33, scope: !905)
!918 = !DILocation(line: 213, column: 3, scope: !905)
!919 = !DILocation(line: 214, column: 23, scope: !905)
!920 = !DILocation(line: 214, column: 17, scope: !905)
!921 = !DILocation(line: 214, column: 40, scope: !905)
!922 = !DILocation(line: 214, column: 39, scope: !905)
!923 = !DILocation(line: 214, column: 30, scope: !924)
!924 = !DILexicalBlockFile(scope: !905, file: !1, discriminator: 1)
!925 = !DILocation(line: 214, column: 28, scope: !905)
!926 = !DILocation(line: 214, column: 3, scope: !905)
!927 = !DILocation(line: 214, column: 11, scope: !905)
!928 = !DILocation(line: 214, column: 15, scope: !905)
!929 = !DILocation(line: 215, column: 20, scope: !905)
!930 = !DILocation(line: 215, column: 24, scope: !905)
!931 = !DILocation(line: 215, column: 47, scope: !905)
!932 = !DILocation(line: 215, column: 55, scope: !905)
!933 = !DILocation(line: 215, column: 46, scope: !905)
!934 = !DILocation(line: 215, column: 3, scope: !905)
!935 = !DILocation(line: 215, column: 11, scope: !905)
!936 = !DILocation(line: 215, column: 15, scope: !905)
!937 = !DILocation(line: 216, column: 3, scope: !905)
!938 = distinct !DISubprogram(name: "riemann_zeta_minus1_large_s", scope: !1, file: !1, line: 227, type: !563, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!939 = !DILocalVariable(name: "s", arg: 1, scope: !938, file: !1, line: 227, type: !42)
!940 = !DILocation(line: 227, column: 36, scope: !938)
!941 = !DILocalVariable(name: "result", arg: 2, scope: !938, file: !1, line: 227, type: !50)
!942 = !DILocation(line: 227, column: 55, scope: !938)
!943 = !DILocalVariable(name: "a", scope: !938, file: !1, line: 229, type: !42)
!944 = !DILocation(line: 229, column: 10, scope: !938)
!945 = !DILocation(line: 229, column: 24, scope: !938)
!946 = !DILocation(line: 229, column: 23, scope: !938)
!947 = !DILocation(line: 229, column: 14, scope: !938)
!948 = !DILocalVariable(name: "b", scope: !938, file: !1, line: 230, type: !42)
!949 = !DILocation(line: 230, column: 10, scope: !938)
!950 = !DILocation(line: 230, column: 24, scope: !938)
!951 = !DILocation(line: 230, column: 23, scope: !938)
!952 = !DILocation(line: 230, column: 14, scope: !938)
!953 = !DILocalVariable(name: "c", scope: !938, file: !1, line: 231, type: !42)
!954 = !DILocation(line: 231, column: 10, scope: !938)
!955 = !DILocation(line: 231, column: 24, scope: !938)
!956 = !DILocation(line: 231, column: 23, scope: !938)
!957 = !DILocation(line: 231, column: 14, scope: !938)
!958 = !DILocalVariable(name: "d", scope: !938, file: !1, line: 232, type: !42)
!959 = !DILocation(line: 232, column: 10, scope: !938)
!960 = !DILocation(line: 232, column: 24, scope: !938)
!961 = !DILocation(line: 232, column: 23, scope: !938)
!962 = !DILocation(line: 232, column: 14, scope: !938)
!963 = !DILocalVariable(name: "e", scope: !938, file: !1, line: 233, type: !42)
!964 = !DILocation(line: 233, column: 10, scope: !938)
!965 = !DILocation(line: 233, column: 24, scope: !938)
!966 = !DILocation(line: 233, column: 23, scope: !938)
!967 = !DILocation(line: 233, column: 14, scope: !938)
!968 = !DILocalVariable(name: "f", scope: !938, file: !1, line: 234, type: !42)
!969 = !DILocation(line: 234, column: 10, scope: !938)
!970 = !DILocation(line: 234, column: 24, scope: !938)
!971 = !DILocation(line: 234, column: 23, scope: !938)
!972 = !DILocation(line: 234, column: 14, scope: !938)
!973 = !DILocalVariable(name: "t1", scope: !938, file: !1, line: 235, type: !42)
!974 = !DILocation(line: 235, column: 10, scope: !938)
!975 = !DILocation(line: 235, column: 15, scope: !938)
!976 = !DILocation(line: 235, column: 19, scope: !938)
!977 = !DILocation(line: 235, column: 17, scope: !938)
!978 = !DILocation(line: 235, column: 23, scope: !938)
!979 = !DILocation(line: 235, column: 21, scope: !938)
!980 = !DILocation(line: 235, column: 27, scope: !938)
!981 = !DILocation(line: 235, column: 25, scope: !938)
!982 = !DILocation(line: 235, column: 31, scope: !938)
!983 = !DILocation(line: 235, column: 29, scope: !938)
!984 = !DILocation(line: 235, column: 35, scope: !938)
!985 = !DILocation(line: 235, column: 33, scope: !938)
!986 = !DILocalVariable(name: "t2", scope: !938, file: !1, line: 236, type: !42)
!987 = !DILocation(line: 236, column: 10, scope: !938)
!988 = !DILocation(line: 236, column: 15, scope: !938)
!989 = !DILocation(line: 236, column: 18, scope: !938)
!990 = !DILocation(line: 236, column: 20, scope: !938)
!991 = !DILocation(line: 236, column: 19, scope: !938)
!992 = !DILocation(line: 236, column: 22, scope: !938)
!993 = !DILocation(line: 236, column: 21, scope: !938)
!994 = !DILocation(line: 236, column: 24, scope: !938)
!995 = !DILocation(line: 236, column: 23, scope: !938)
!996 = !DILocation(line: 236, column: 26, scope: !938)
!997 = !DILocation(line: 236, column: 25, scope: !938)
!998 = !DILocation(line: 236, column: 16, scope: !938)
!999 = !DILocation(line: 236, column: 31, scope: !938)
!1000 = !DILocation(line: 236, column: 34, scope: !938)
!1001 = !DILocation(line: 236, column: 36, scope: !938)
!1002 = !DILocation(line: 236, column: 35, scope: !938)
!1003 = !DILocation(line: 236, column: 38, scope: !938)
!1004 = !DILocation(line: 236, column: 37, scope: !938)
!1005 = !DILocation(line: 236, column: 40, scope: !938)
!1006 = !DILocation(line: 236, column: 39, scope: !938)
!1007 = !DILocation(line: 236, column: 32, scope: !938)
!1008 = !DILocation(line: 236, column: 29, scope: !938)
!1009 = !DILocation(line: 236, column: 45, scope: !938)
!1010 = !DILocation(line: 236, column: 48, scope: !938)
!1011 = !DILocation(line: 236, column: 50, scope: !938)
!1012 = !DILocation(line: 236, column: 49, scope: !938)
!1013 = !DILocation(line: 236, column: 52, scope: !938)
!1014 = !DILocation(line: 236, column: 51, scope: !938)
!1015 = !DILocation(line: 236, column: 46, scope: !938)
!1016 = !DILocation(line: 236, column: 43, scope: !938)
!1017 = !DILocation(line: 236, column: 57, scope: !938)
!1018 = !DILocation(line: 236, column: 60, scope: !938)
!1019 = !DILocation(line: 236, column: 62, scope: !938)
!1020 = !DILocation(line: 236, column: 61, scope: !938)
!1021 = !DILocation(line: 236, column: 58, scope: !938)
!1022 = !DILocation(line: 236, column: 55, scope: !938)
!1023 = !DILocation(line: 236, column: 67, scope: !938)
!1024 = !DILocation(line: 236, column: 69, scope: !938)
!1025 = !DILocation(line: 236, column: 68, scope: !938)
!1026 = !DILocation(line: 236, column: 65, scope: !938)
!1027 = !DILocalVariable(name: "numt", scope: !938, file: !1, line: 248, type: !42)
!1028 = !DILocation(line: 248, column: 10, scope: !938)
!1029 = !DILocation(line: 248, column: 17, scope: !938)
!1030 = !DILocation(line: 248, column: 22, scope: !938)
!1031 = !DILocation(line: 248, column: 20, scope: !938)
!1032 = !DILocalVariable(name: "zeta", scope: !938, file: !1, line: 249, type: !42)
!1033 = !DILocation(line: 249, column: 10, scope: !938)
!1034 = !DILocation(line: 249, column: 27, scope: !938)
!1035 = !DILocation(line: 249, column: 26, scope: !938)
!1036 = !DILocation(line: 249, column: 35, scope: !938)
!1037 = !DILocation(line: 249, column: 34, scope: !938)
!1038 = !DILocation(line: 249, column: 29, scope: !938)
!1039 = !DILocation(line: 249, column: 43, scope: !938)
!1040 = !DILocation(line: 249, column: 42, scope: !938)
!1041 = !DILocation(line: 249, column: 37, scope: !938)
!1042 = !DILocation(line: 249, column: 51, scope: !938)
!1043 = !DILocation(line: 249, column: 50, scope: !938)
!1044 = !DILocation(line: 249, column: 45, scope: !938)
!1045 = !DILocation(line: 249, column: 59, scope: !938)
!1046 = !DILocation(line: 249, column: 58, scope: !938)
!1047 = !DILocation(line: 249, column: 53, scope: !938)
!1048 = !DILocation(line: 249, column: 67, scope: !938)
!1049 = !DILocation(line: 249, column: 66, scope: !938)
!1050 = !DILocation(line: 249, column: 61, scope: !938)
!1051 = !DILocation(line: 249, column: 20, scope: !938)
!1052 = !DILocation(line: 250, column: 17, scope: !938)
!1053 = !DILocation(line: 250, column: 22, scope: !938)
!1054 = !DILocation(line: 250, column: 21, scope: !938)
!1055 = !DILocation(line: 250, column: 3, scope: !938)
!1056 = !DILocation(line: 250, column: 11, scope: !938)
!1057 = !DILocation(line: 250, column: 15, scope: !938)
!1058 = !DILocation(line: 251, column: 23, scope: !938)
!1059 = !DILocation(line: 251, column: 22, scope: !938)
!1060 = !DILocation(line: 251, column: 25, scope: !938)
!1061 = !DILocation(line: 251, column: 32, scope: !938)
!1062 = !DILocation(line: 251, column: 37, scope: !938)
!1063 = !DILocation(line: 251, column: 54, scope: !938)
!1064 = !DILocation(line: 251, column: 62, scope: !938)
!1065 = !DILocation(line: 251, column: 53, scope: !938)
!1066 = !DILocation(line: 251, column: 3, scope: !938)
!1067 = !DILocation(line: 251, column: 11, scope: !938)
!1068 = !DILocation(line: 251, column: 15, scope: !938)
!1069 = !DILocation(line: 252, column: 3, scope: !938)
!1070 = distinct !DISubprogram(name: "gsl_sf_zetam1_int_e", scope: !1, file: !1, line: 907, type: !772, isLocal: false, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1071 = !DILocalVariable(name: "n", arg: 1, scope: !1070, file: !1, line: 907, type: !268)
!1072 = !DILocation(line: 907, column: 35, scope: !1070)
!1073 = !DILocalVariable(name: "result", arg: 2, scope: !1070, file: !1, line: 907, type: !50)
!1074 = !DILocation(line: 907, column: 54, scope: !1070)
!1075 = !DILocation(line: 909, column: 6, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 909, column: 6)
!1077 = !DILocation(line: 909, column: 8, scope: !1076)
!1078 = !DILocation(line: 909, column: 6, scope: !1070)
!1079 = !DILocation(line: 910, column: 9, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 910, column: 8)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 909, column: 13)
!1082 = !DILocation(line: 910, column: 8, scope: !1081)
!1083 = !DILocation(line: 911, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 910, column: 24)
!1085 = !DILocation(line: 911, column: 15, scope: !1084)
!1086 = !DILocation(line: 911, column: 19, scope: !1084)
!1087 = !DILocation(line: 912, column: 7, scope: !1084)
!1088 = !DILocation(line: 912, column: 15, scope: !1084)
!1089 = !DILocation(line: 912, column: 19, scope: !1084)
!1090 = !DILocation(line: 913, column: 7, scope: !1084)
!1091 = !DILocation(line: 915, column: 13, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 915, column: 13)
!1093 = !DILocation(line: 915, column: 15, scope: !1092)
!1094 = !DILocation(line: 915, column: 13, scope: !1080)
!1095 = !DILocation(line: 916, column: 42, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !1, line: 915, column: 39)
!1097 = !DILocation(line: 916, column: 43, scope: !1096)
!1098 = !DILocation(line: 916, column: 40, scope: !1096)
!1099 = !DILocation(line: 916, column: 46, scope: !1096)
!1100 = !DILocation(line: 916, column: 21, scope: !1096)
!1101 = !DILocation(line: 916, column: 50, scope: !1096)
!1102 = !DILocation(line: 916, column: 7, scope: !1096)
!1103 = !DILocation(line: 916, column: 15, scope: !1096)
!1104 = !DILocation(line: 916, column: 19, scope: !1096)
!1105 = !DILocation(line: 917, column: 50, scope: !1096)
!1106 = !DILocation(line: 917, column: 58, scope: !1096)
!1107 = !DILocation(line: 917, column: 45, scope: !1096)
!1108 = !DILocation(line: 917, column: 43, scope: !1096)
!1109 = !DILocation(line: 917, column: 7, scope: !1096)
!1110 = !DILocation(line: 917, column: 15, scope: !1096)
!1111 = !DILocation(line: 917, column: 19, scope: !1096)
!1112 = !DILocation(line: 918, column: 7, scope: !1096)
!1113 = !DILocation(line: 923, column: 36, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1092, file: !1, line: 920, column: 10)
!1115 = !DILocation(line: 923, column: 28, scope: !1114)
!1116 = !DILocation(line: 923, column: 39, scope: !1114)
!1117 = !DILocation(line: 923, column: 14, scope: !1114)
!1118 = !DILocation(line: 923, column: 7, scope: !1114)
!1119 = !DILocation(line: 926, column: 11, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1076, file: !1, line: 926, column: 11)
!1121 = !DILocation(line: 926, column: 13, scope: !1120)
!1122 = !DILocation(line: 926, column: 11, scope: !1076)
!1123 = !DILocation(line: 927, column: 5, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 926, column: 18)
!1125 = distinct !{!1125, !1123}
!1126 = !DILocation(line: 927, column: 5, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1128, file: !1, discriminator: 1)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 927, column: 5)
!1129 = distinct !{!1129, !1130}
!1130 = !DILocation(line: 927, column: 5, scope: !1128)
!1131 = !DILocation(line: 927, column: 5, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1133, file: !1, discriminator: 2)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !1, line: 927, column: 5)
!1134 = !DILocation(line: 927, column: 5, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1128, file: !1, discriminator: 3)
!1136 = !DILocation(line: 928, column: 3, scope: !1124)
!1137 = !DILocation(line: 929, column: 11, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 929, column: 11)
!1139 = !DILocation(line: 929, column: 13, scope: !1138)
!1140 = !DILocation(line: 929, column: 11, scope: !1120)
!1141 = !DILocation(line: 930, column: 40, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 929, column: 36)
!1143 = !DILocation(line: 930, column: 19, scope: !1142)
!1144 = !DILocation(line: 930, column: 5, scope: !1142)
!1145 = !DILocation(line: 930, column: 13, scope: !1142)
!1146 = !DILocation(line: 930, column: 17, scope: !1142)
!1147 = !DILocation(line: 931, column: 48, scope: !1142)
!1148 = !DILocation(line: 931, column: 56, scope: !1142)
!1149 = !DILocation(line: 931, column: 43, scope: !1142)
!1150 = !DILocation(line: 931, column: 41, scope: !1142)
!1151 = !DILocation(line: 931, column: 5, scope: !1142)
!1152 = !DILocation(line: 931, column: 13, scope: !1142)
!1153 = !DILocation(line: 931, column: 17, scope: !1142)
!1154 = !DILocation(line: 932, column: 5, scope: !1142)
!1155 = !DILocation(line: 935, column: 28, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1138, file: !1, line: 934, column: 8)
!1157 = !DILocation(line: 935, column: 31, scope: !1156)
!1158 = !DILocation(line: 935, column: 12, scope: !1156)
!1159 = !DILocation(line: 935, column: 5, scope: !1156)
!1160 = !DILocation(line: 937, column: 1, scope: !1070)
!1161 = distinct !DISubprogram(name: "gsl_sf_eta_int_e", scope: !1, file: !1, line: 940, type: !1162, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!48, !48, !50}
!1164 = !DILocalVariable(name: "n", arg: 1, scope: !1161, file: !1, line: 940, type: !48)
!1165 = !DILocation(line: 940, column: 26, scope: !1161)
!1166 = !DILocalVariable(name: "result", arg: 2, scope: !1161, file: !1, line: 940, type: !50)
!1167 = !DILocation(line: 940, column: 45, scope: !1161)
!1168 = !DILocation(line: 942, column: 6, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 942, column: 6)
!1170 = !DILocation(line: 942, column: 8, scope: !1169)
!1171 = !DILocation(line: 942, column: 6, scope: !1161)
!1172 = !DILocation(line: 943, column: 5, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 942, column: 30)
!1174 = !DILocation(line: 943, column: 13, scope: !1173)
!1175 = !DILocation(line: 943, column: 17, scope: !1173)
!1176 = !DILocation(line: 944, column: 5, scope: !1173)
!1177 = !DILocation(line: 944, column: 13, scope: !1173)
!1178 = !DILocation(line: 944, column: 17, scope: !1173)
!1179 = !DILocation(line: 945, column: 5, scope: !1173)
!1180 = !DILocation(line: 947, column: 11, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 947, column: 11)
!1182 = !DILocation(line: 947, column: 13, scope: !1181)
!1183 = !DILocation(line: 947, column: 11, scope: !1169)
!1184 = !DILocation(line: 948, column: 37, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 947, column: 19)
!1186 = !DILocation(line: 948, column: 19, scope: !1185)
!1187 = !DILocation(line: 948, column: 5, scope: !1185)
!1188 = !DILocation(line: 948, column: 13, scope: !1185)
!1189 = !DILocation(line: 948, column: 17, scope: !1185)
!1190 = !DILocation(line: 949, column: 48, scope: !1185)
!1191 = !DILocation(line: 949, column: 56, scope: !1185)
!1192 = !DILocation(line: 949, column: 43, scope: !1185)
!1193 = !DILocation(line: 949, column: 41, scope: !1185)
!1194 = !DILocation(line: 949, column: 5, scope: !1185)
!1195 = !DILocation(line: 949, column: 13, scope: !1185)
!1196 = !DILocation(line: 949, column: 17, scope: !1185)
!1197 = !DILocation(line: 950, column: 5, scope: !1185)
!1198 = !DILocation(line: 955, column: 9, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 955, column: 8)
!1200 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 952, column: 8)
!1201 = !DILocation(line: 955, column: 8, scope: !1200)
!1202 = !DILocation(line: 957, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 955, column: 24)
!1204 = !DILocation(line: 957, column: 15, scope: !1203)
!1205 = !DILocation(line: 957, column: 19, scope: !1203)
!1206 = !DILocation(line: 958, column: 7, scope: !1203)
!1207 = !DILocation(line: 958, column: 15, scope: !1203)
!1208 = !DILocation(line: 958, column: 19, scope: !1203)
!1209 = !DILocation(line: 959, column: 7, scope: !1203)
!1210 = !DILocation(line: 961, column: 13, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 961, column: 13)
!1212 = !DILocation(line: 961, column: 15, scope: !1211)
!1213 = !DILocation(line: 961, column: 13, scope: !1199)
!1214 = !DILocation(line: 962, column: 41, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 961, column: 38)
!1216 = !DILocation(line: 962, column: 42, scope: !1215)
!1217 = !DILocation(line: 962, column: 39, scope: !1215)
!1218 = !DILocation(line: 962, column: 45, scope: !1215)
!1219 = !DILocation(line: 962, column: 21, scope: !1215)
!1220 = !DILocation(line: 962, column: 7, scope: !1215)
!1221 = !DILocation(line: 962, column: 15, scope: !1215)
!1222 = !DILocation(line: 962, column: 19, scope: !1215)
!1223 = !DILocation(line: 963, column: 50, scope: !1215)
!1224 = !DILocation(line: 963, column: 58, scope: !1215)
!1225 = !DILocation(line: 963, column: 45, scope: !1215)
!1226 = !DILocation(line: 963, column: 43, scope: !1215)
!1227 = !DILocation(line: 963, column: 7, scope: !1215)
!1228 = !DILocation(line: 963, column: 15, scope: !1215)
!1229 = !DILocation(line: 963, column: 19, scope: !1215)
!1230 = !DILocation(line: 964, column: 7, scope: !1215)
!1231 = !DILocalVariable(name: "z", scope: !1232, file: !1, line: 967, type: !51)
!1232 = distinct !DILexicalBlock(scope: !1211, file: !1, line: 966, column: 10)
!1233 = !DILocation(line: 967, column: 21, scope: !1232)
!1234 = !DILocalVariable(name: "p", scope: !1232, file: !1, line: 968, type: !51)
!1235 = !DILocation(line: 968, column: 21, scope: !1232)
!1236 = !DILocalVariable(name: "stat_z", scope: !1232, file: !1, line: 969, type: !48)
!1237 = !DILocation(line: 969, column: 11, scope: !1232)
!1238 = !DILocation(line: 969, column: 38, scope: !1232)
!1239 = !DILocation(line: 969, column: 20, scope: !1232)
!1240 = !DILocalVariable(name: "stat_p", scope: !1232, file: !1, line: 970, type: !48)
!1241 = !DILocation(line: 970, column: 11, scope: !1232)
!1242 = !DILocation(line: 970, column: 38, scope: !1232)
!1243 = !DILocation(line: 970, column: 37, scope: !1232)
!1244 = !DILocation(line: 970, column: 40, scope: !1232)
!1245 = !DILocation(line: 970, column: 20, scope: !1232)
!1246 = !DILocalVariable(name: "stat_m", scope: !1232, file: !1, line: 971, type: !48)
!1247 = !DILocation(line: 971, column: 11, scope: !1232)
!1248 = !DILocation(line: 971, column: 41, scope: !1232)
!1249 = !DILocation(line: 971, column: 38, scope: !1232)
!1250 = !DILocation(line: 971, column: 48, scope: !1232)
!1251 = !DILocation(line: 971, column: 53, scope: !1232)
!1252 = !DILocation(line: 971, column: 20, scope: !1232)
!1253 = !DILocation(line: 972, column: 29, scope: !1232)
!1254 = !DILocation(line: 972, column: 47, scope: !1232)
!1255 = !DILocation(line: 972, column: 46, scope: !1232)
!1256 = !DILocation(line: 972, column: 41, scope: !1232)
!1257 = !DILocation(line: 972, column: 33, scope: !1232)
!1258 = !DILocation(line: 972, column: 55, scope: !1232)
!1259 = !DILocation(line: 972, column: 51, scope: !1232)
!1260 = !DILocation(line: 972, column: 22, scope: !1232)
!1261 = !DILocation(line: 972, column: 64, scope: !1232)
!1262 = !DILocation(line: 972, column: 77, scope: !1232)
!1263 = !DILocation(line: 972, column: 70, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1232, file: !1, discriminator: 1)
!1265 = !DILocation(line: 972, column: 68, scope: !1232)
!1266 = !DILocation(line: 972, column: 60, scope: !1232)
!1267 = !DILocation(line: 972, column: 7, scope: !1232)
!1268 = !DILocation(line: 972, column: 15, scope: !1232)
!1269 = !DILocation(line: 972, column: 20, scope: !1232)
!1270 = !DILocation(line: 973, column: 51, scope: !1232)
!1271 = !DILocation(line: 973, column: 59, scope: !1232)
!1272 = !DILocation(line: 973, column: 46, scope: !1232)
!1273 = !DILocation(line: 973, column: 44, scope: !1232)
!1274 = !DILocation(line: 973, column: 7, scope: !1232)
!1275 = !DILocation(line: 973, column: 15, scope: !1232)
!1276 = !DILocation(line: 973, column: 19, scope: !1232)
!1277 = !DILocation(line: 974, column: 14, scope: !1232)
!1278 = !DILocation(line: 974, column: 14, scope: !1264)
!1279 = !DILocation(line: 974, column: 14, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1232, file: !1, discriminator: 2)
!1281 = !DILocation(line: 974, column: 14, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1232, file: !1, discriminator: 3)
!1283 = !DILocation(line: 974, column: 14, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1232, file: !1, discriminator: 4)
!1285 = !DILocation(line: 974, column: 14, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1232, file: !1, discriminator: 5)
!1287 = !DILocation(line: 974, column: 14, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1232, file: !1, discriminator: 6)
!1289 = !DILocation(line: 974, column: 14, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1232, file: !1, discriminator: 7)
!1291 = !DILocation(line: 974, column: 14, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1232, file: !1, discriminator: 8)
!1293 = !DILocation(line: 974, column: 14, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1232, file: !1, discriminator: 9)
!1295 = !DILocation(line: 974, column: 7, scope: !1294)
!1296 = !DILocation(line: 977, column: 1, scope: !1161)
!1297 = distinct !DISubprogram(name: "gsl_sf_eta_e", scope: !1, file: !1, line: 980, type: !46, isLocal: false, isDefinition: true, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1298 = !DILocalVariable(name: "s", arg: 1, scope: !1297, file: !1, line: 980, type: !49)
!1299 = !DILocation(line: 980, column: 31, scope: !1297)
!1300 = !DILocalVariable(name: "result", arg: 2, scope: !1297, file: !1, line: 980, type: !50)
!1301 = !DILocation(line: 980, column: 50, scope: !1297)
!1302 = !DILocation(line: 984, column: 6, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 984, column: 6)
!1304 = !DILocation(line: 984, column: 8, scope: !1303)
!1305 = !DILocation(line: 984, column: 6, scope: !1297)
!1306 = !DILocation(line: 985, column: 5, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !1, line: 984, column: 17)
!1308 = !DILocation(line: 985, column: 13, scope: !1307)
!1309 = !DILocation(line: 985, column: 17, scope: !1307)
!1310 = !DILocation(line: 986, column: 5, scope: !1307)
!1311 = !DILocation(line: 986, column: 13, scope: !1307)
!1312 = !DILocation(line: 986, column: 17, scope: !1307)
!1313 = !DILocation(line: 987, column: 5, scope: !1307)
!1314 = !DILocation(line: 989, column: 16, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1303, file: !1, line: 989, column: 11)
!1316 = !DILocation(line: 989, column: 17, scope: !1315)
!1317 = !DILocation(line: 989, column: 11, scope: !1315)
!1318 = !DILocation(line: 989, column: 23, scope: !1315)
!1319 = !DILocation(line: 989, column: 11, scope: !1303)
!1320 = !DILocalVariable(name: "del", scope: !1321, file: !1, line: 990, type: !42)
!1321 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 989, column: 53)
!1322 = !DILocation(line: 990, column: 12, scope: !1321)
!1323 = !DILocation(line: 990, column: 18, scope: !1321)
!1324 = !DILocation(line: 990, column: 19, scope: !1321)
!1325 = !DILocalVariable(name: "c0", scope: !1321, file: !1, line: 991, type: !42)
!1326 = !DILocation(line: 991, column: 12, scope: !1321)
!1327 = !DILocalVariable(name: "c1", scope: !1321, file: !1, line: 992, type: !42)
!1328 = !DILocation(line: 992, column: 12, scope: !1321)
!1329 = !DILocalVariable(name: "c2", scope: !1321, file: !1, line: 993, type: !42)
!1330 = !DILocation(line: 993, column: 12, scope: !1321)
!1331 = !DILocalVariable(name: "c3", scope: !1321, file: !1, line: 994, type: !42)
!1332 = !DILocation(line: 994, column: 12, scope: !1321)
!1333 = !DILocalVariable(name: "c4", scope: !1321, file: !1, line: 995, type: !42)
!1334 = !DILocation(line: 995, column: 12, scope: !1321)
!1335 = !DILocation(line: 996, column: 19, scope: !1321)
!1336 = !DILocation(line: 996, column: 24, scope: !1321)
!1337 = !DILocation(line: 996, column: 31, scope: !1321)
!1338 = !DILocation(line: 996, column: 36, scope: !1321)
!1339 = !DILocation(line: 996, column: 43, scope: !1321)
!1340 = !DILocation(line: 996, column: 48, scope: !1321)
!1341 = !DILocation(line: 996, column: 55, scope: !1321)
!1342 = !DILocation(line: 996, column: 60, scope: !1321)
!1343 = !DILocation(line: 996, column: 66, scope: !1321)
!1344 = !DILocation(line: 996, column: 64, scope: !1321)
!1345 = !DILocation(line: 996, column: 58, scope: !1321)
!1346 = !DILocation(line: 996, column: 52, scope: !1321)
!1347 = !DILocation(line: 996, column: 46, scope: !1321)
!1348 = !DILocation(line: 996, column: 40, scope: !1321)
!1349 = !DILocation(line: 996, column: 34, scope: !1321)
!1350 = !DILocation(line: 996, column: 28, scope: !1321)
!1351 = !DILocation(line: 996, column: 22, scope: !1321)
!1352 = !DILocation(line: 996, column: 5, scope: !1321)
!1353 = !DILocation(line: 996, column: 13, scope: !1321)
!1354 = !DILocation(line: 996, column: 17, scope: !1321)
!1355 = !DILocation(line: 997, column: 48, scope: !1321)
!1356 = !DILocation(line: 997, column: 56, scope: !1321)
!1357 = !DILocation(line: 997, column: 43, scope: !1321)
!1358 = !DILocation(line: 997, column: 41, scope: !1321)
!1359 = !DILocation(line: 997, column: 5, scope: !1321)
!1360 = !DILocation(line: 997, column: 13, scope: !1321)
!1361 = !DILocation(line: 997, column: 17, scope: !1321)
!1362 = !DILocation(line: 998, column: 5, scope: !1321)
!1363 = !DILocalVariable(name: "z", scope: !1364, file: !1, line: 1001, type: !51)
!1364 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 1000, column: 8)
!1365 = !DILocation(line: 1001, column: 19, scope: !1364)
!1366 = !DILocalVariable(name: "p", scope: !1364, file: !1, line: 1002, type: !51)
!1367 = !DILocation(line: 1002, column: 19, scope: !1364)
!1368 = !DILocalVariable(name: "stat_z", scope: !1364, file: !1, line: 1003, type: !48)
!1369 = !DILocation(line: 1003, column: 9, scope: !1364)
!1370 = !DILocation(line: 1003, column: 32, scope: !1364)
!1371 = !DILocation(line: 1003, column: 18, scope: !1364)
!1372 = !DILocalVariable(name: "stat_p", scope: !1364, file: !1, line: 1004, type: !48)
!1373 = !DILocation(line: 1004, column: 9, scope: !1364)
!1374 = !DILocation(line: 1004, column: 36, scope: !1364)
!1375 = !DILocation(line: 1004, column: 35, scope: !1364)
!1376 = !DILocation(line: 1004, column: 38, scope: !1364)
!1377 = !DILocation(line: 1004, column: 18, scope: !1364)
!1378 = !DILocalVariable(name: "stat_m", scope: !1364, file: !1, line: 1005, type: !48)
!1379 = !DILocation(line: 1005, column: 9, scope: !1364)
!1380 = !DILocation(line: 1005, column: 42, scope: !1364)
!1381 = !DILocation(line: 1005, column: 39, scope: !1364)
!1382 = !DILocation(line: 1005, column: 49, scope: !1364)
!1383 = !DILocation(line: 1005, column: 54, scope: !1364)
!1384 = !DILocation(line: 1005, column: 18, scope: !1364)
!1385 = !DILocation(line: 1006, column: 27, scope: !1364)
!1386 = !DILocation(line: 1006, column: 45, scope: !1364)
!1387 = !DILocation(line: 1006, column: 44, scope: !1364)
!1388 = !DILocation(line: 1006, column: 39, scope: !1364)
!1389 = !DILocation(line: 1006, column: 31, scope: !1364)
!1390 = !DILocation(line: 1006, column: 53, scope: !1364)
!1391 = !DILocation(line: 1006, column: 49, scope: !1364)
!1392 = !DILocation(line: 1006, column: 20, scope: !1364)
!1393 = !DILocation(line: 1006, column: 62, scope: !1364)
!1394 = !DILocation(line: 1006, column: 75, scope: !1364)
!1395 = !DILocation(line: 1006, column: 68, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1364, file: !1, discriminator: 1)
!1397 = !DILocation(line: 1006, column: 66, scope: !1364)
!1398 = !DILocation(line: 1006, column: 58, scope: !1364)
!1399 = !DILocation(line: 1006, column: 5, scope: !1364)
!1400 = !DILocation(line: 1006, column: 13, scope: !1364)
!1401 = !DILocation(line: 1006, column: 18, scope: !1364)
!1402 = !DILocation(line: 1007, column: 49, scope: !1364)
!1403 = !DILocation(line: 1007, column: 57, scope: !1364)
!1404 = !DILocation(line: 1007, column: 44, scope: !1364)
!1405 = !DILocation(line: 1007, column: 42, scope: !1364)
!1406 = !DILocation(line: 1007, column: 5, scope: !1364)
!1407 = !DILocation(line: 1007, column: 13, scope: !1364)
!1408 = !DILocation(line: 1007, column: 17, scope: !1364)
!1409 = !DILocation(line: 1008, column: 12, scope: !1364)
!1410 = !DILocation(line: 1008, column: 12, scope: !1396)
!1411 = !DILocation(line: 1008, column: 12, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1364, file: !1, discriminator: 2)
!1413 = !DILocation(line: 1008, column: 12, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1364, file: !1, discriminator: 3)
!1415 = !DILocation(line: 1008, column: 12, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1364, file: !1, discriminator: 4)
!1417 = !DILocation(line: 1008, column: 12, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1364, file: !1, discriminator: 5)
!1419 = !DILocation(line: 1008, column: 12, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1364, file: !1, discriminator: 6)
!1421 = !DILocation(line: 1008, column: 12, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1364, file: !1, discriminator: 7)
!1423 = !DILocation(line: 1008, column: 12, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1364, file: !1, discriminator: 8)
!1425 = !DILocation(line: 1008, column: 12, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1364, file: !1, discriminator: 9)
!1427 = !DILocation(line: 1008, column: 5, scope: !1426)
!1428 = !DILocation(line: 1010, column: 1, scope: !1297)
!1429 = distinct !DISubprogram(name: "gsl_sf_zeta", scope: !1, file: !1, line: 1017, type: !1430, isLocal: false, isDefinition: true, scopeLine: 1018, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!42, !49}
!1432 = !DILocalVariable(name: "s", arg: 1, scope: !1429, file: !1, line: 1017, type: !49)
!1433 = !DILocation(line: 1017, column: 33, scope: !1429)
!1434 = !DILocalVariable(name: "result", scope: !1429, file: !1, line: 1019, type: !51)
!1435 = !DILocation(line: 1019, column: 3, scope: !1429)
!1436 = !DILocalVariable(name: "status", scope: !1429, file: !1, line: 1019, type: !48)
!1437 = !DILocation(line: 1019, column: 3, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 1019, column: 3)
!1439 = !DILocation(line: 1019, column: 3, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1441, file: !1, discriminator: 1)
!1441 = distinct !DILexicalBlock(scope: !1438, file: !1, line: 1019, column: 3)
!1442 = distinct !{!1442, !1443}
!1443 = !DILocation(line: 1019, column: 3, scope: !1441)
!1444 = !DILocation(line: 1019, column: 3, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1446, file: !1, discriminator: 2)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !1, line: 1019, column: 3)
!1447 = !DILocation(line: 1019, column: 3, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1441, file: !1, discriminator: 3)
!1449 = !DILocation(line: 1019, column: 3, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1429, file: !1, discriminator: 4)
!1451 = !DILocation(line: 1020, column: 1, scope: !1429)
!1452 = distinct !DISubprogram(name: "gsl_sf_hzeta", scope: !1, file: !1, line: 1022, type: !1453, isLocal: false, isDefinition: true, scopeLine: 1023, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!42, !49, !49}
!1455 = !DILocalVariable(name: "s", arg: 1, scope: !1452, file: !1, line: 1022, type: !49)
!1456 = !DILocation(line: 1022, column: 34, scope: !1452)
!1457 = !DILocalVariable(name: "a", arg: 2, scope: !1452, file: !1, line: 1022, type: !49)
!1458 = !DILocation(line: 1022, column: 50, scope: !1452)
!1459 = !DILocalVariable(name: "result", scope: !1452, file: !1, line: 1024, type: !51)
!1460 = !DILocation(line: 1024, column: 3, scope: !1452)
!1461 = !DILocalVariable(name: "status", scope: !1452, file: !1, line: 1024, type: !48)
!1462 = !DILocation(line: 1024, column: 3, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1452, file: !1, line: 1024, column: 3)
!1464 = !DILocation(line: 1024, column: 3, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1466, file: !1, discriminator: 1)
!1466 = distinct !DILexicalBlock(scope: !1463, file: !1, line: 1024, column: 3)
!1467 = distinct !{!1467, !1468}
!1468 = !DILocation(line: 1024, column: 3, scope: !1466)
!1469 = !DILocation(line: 1024, column: 3, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1471, file: !1, discriminator: 2)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !1, line: 1024, column: 3)
!1472 = !DILocation(line: 1024, column: 3, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1466, file: !1, discriminator: 3)
!1474 = !DILocation(line: 1024, column: 3, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1452, file: !1, discriminator: 4)
!1476 = !DILocation(line: 1025, column: 1, scope: !1452)
!1477 = distinct !DISubprogram(name: "gsl_sf_zeta_int", scope: !1, file: !1, line: 1027, type: !1478, isLocal: false, isDefinition: true, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!42, !268}
!1480 = !DILocalVariable(name: "s", arg: 1, scope: !1477, file: !1, line: 1027, type: !268)
!1481 = !DILocation(line: 1027, column: 34, scope: !1477)
!1482 = !DILocalVariable(name: "result", scope: !1477, file: !1, line: 1029, type: !51)
!1483 = !DILocation(line: 1029, column: 3, scope: !1477)
!1484 = !DILocalVariable(name: "status", scope: !1477, file: !1, line: 1029, type: !48)
!1485 = !DILocation(line: 1029, column: 3, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1477, file: !1, line: 1029, column: 3)
!1487 = !DILocation(line: 1029, column: 3, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 1)
!1489 = distinct !DILexicalBlock(scope: !1486, file: !1, line: 1029, column: 3)
!1490 = distinct !{!1490, !1491}
!1491 = !DILocation(line: 1029, column: 3, scope: !1489)
!1492 = !DILocation(line: 1029, column: 3, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1494, file: !1, discriminator: 2)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !1, line: 1029, column: 3)
!1495 = !DILocation(line: 1029, column: 3, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1489, file: !1, discriminator: 3)
!1497 = !DILocation(line: 1029, column: 3, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1477, file: !1, discriminator: 4)
!1499 = !DILocation(line: 1030, column: 1, scope: !1477)
!1500 = distinct !DISubprogram(name: "gsl_sf_zetam1", scope: !1, file: !1, line: 1032, type: !1430, isLocal: false, isDefinition: true, scopeLine: 1033, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1501 = !DILocalVariable(name: "s", arg: 1, scope: !1500, file: !1, line: 1032, type: !49)
!1502 = !DILocation(line: 1032, column: 35, scope: !1500)
!1503 = !DILocalVariable(name: "result", scope: !1500, file: !1, line: 1034, type: !51)
!1504 = !DILocation(line: 1034, column: 3, scope: !1500)
!1505 = !DILocalVariable(name: "status", scope: !1500, file: !1, line: 1034, type: !48)
!1506 = !DILocation(line: 1034, column: 3, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1500, file: !1, line: 1034, column: 3)
!1508 = !DILocation(line: 1034, column: 3, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1510, file: !1, discriminator: 1)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 1034, column: 3)
!1511 = distinct !{!1511, !1512}
!1512 = !DILocation(line: 1034, column: 3, scope: !1510)
!1513 = !DILocation(line: 1034, column: 3, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1515, file: !1, discriminator: 2)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !1, line: 1034, column: 3)
!1516 = !DILocation(line: 1034, column: 3, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1510, file: !1, discriminator: 3)
!1518 = !DILocation(line: 1034, column: 3, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1500, file: !1, discriminator: 4)
!1520 = !DILocation(line: 1035, column: 1, scope: !1500)
!1521 = distinct !DISubprogram(name: "gsl_sf_zetam1_int", scope: !1, file: !1, line: 1037, type: !1478, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1522 = !DILocalVariable(name: "s", arg: 1, scope: !1521, file: !1, line: 1037, type: !268)
!1523 = !DILocation(line: 1037, column: 36, scope: !1521)
!1524 = !DILocalVariable(name: "result", scope: !1521, file: !1, line: 1039, type: !51)
!1525 = !DILocation(line: 1039, column: 3, scope: !1521)
!1526 = !DILocalVariable(name: "status", scope: !1521, file: !1, line: 1039, type: !48)
!1527 = !DILocation(line: 1039, column: 3, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 1039, column: 3)
!1529 = !DILocation(line: 1039, column: 3, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1531, file: !1, discriminator: 1)
!1531 = distinct !DILexicalBlock(scope: !1528, file: !1, line: 1039, column: 3)
!1532 = distinct !{!1532, !1533}
!1533 = !DILocation(line: 1039, column: 3, scope: !1531)
!1534 = !DILocation(line: 1039, column: 3, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1536, file: !1, discriminator: 2)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !1, line: 1039, column: 3)
!1537 = !DILocation(line: 1039, column: 3, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1531, file: !1, discriminator: 3)
!1539 = !DILocation(line: 1039, column: 3, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1521, file: !1, discriminator: 4)
!1541 = !DILocation(line: 1040, column: 1, scope: !1521)
!1542 = distinct !DISubprogram(name: "gsl_sf_eta_int", scope: !1, file: !1, line: 1042, type: !1478, isLocal: false, isDefinition: true, scopeLine: 1043, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1543 = !DILocalVariable(name: "s", arg: 1, scope: !1542, file: !1, line: 1042, type: !268)
!1544 = !DILocation(line: 1042, column: 33, scope: !1542)
!1545 = !DILocalVariable(name: "result", scope: !1542, file: !1, line: 1044, type: !51)
!1546 = !DILocation(line: 1044, column: 3, scope: !1542)
!1547 = !DILocalVariable(name: "status", scope: !1542, file: !1, line: 1044, type: !48)
!1548 = !DILocation(line: 1044, column: 3, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1542, file: !1, line: 1044, column: 3)
!1550 = !DILocation(line: 1044, column: 3, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1552, file: !1, discriminator: 1)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !1, line: 1044, column: 3)
!1553 = distinct !{!1553, !1554}
!1554 = !DILocation(line: 1044, column: 3, scope: !1552)
!1555 = !DILocation(line: 1044, column: 3, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1557, file: !1, discriminator: 2)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !1, line: 1044, column: 3)
!1558 = !DILocation(line: 1044, column: 3, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1552, file: !1, discriminator: 3)
!1560 = !DILocation(line: 1044, column: 3, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1542, file: !1, discriminator: 4)
!1562 = !DILocation(line: 1045, column: 1, scope: !1542)
!1563 = distinct !DISubprogram(name: "gsl_sf_eta", scope: !1, file: !1, line: 1047, type: !1430, isLocal: false, isDefinition: true, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1564 = !DILocalVariable(name: "s", arg: 1, scope: !1563, file: !1, line: 1047, type: !49)
!1565 = !DILocation(line: 1047, column: 32, scope: !1563)
!1566 = !DILocalVariable(name: "result", scope: !1563, file: !1, line: 1049, type: !51)
!1567 = !DILocation(line: 1049, column: 3, scope: !1563)
!1568 = !DILocalVariable(name: "status", scope: !1563, file: !1, line: 1049, type: !48)
!1569 = !DILocation(line: 1049, column: 3, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 1049, column: 3)
!1571 = !DILocation(line: 1049, column: 3, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1573, file: !1, discriminator: 1)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !1, line: 1049, column: 3)
!1574 = distinct !{!1574, !1575}
!1575 = !DILocation(line: 1049, column: 3, scope: !1573)
!1576 = !DILocation(line: 1049, column: 3, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1578, file: !1, discriminator: 2)
!1578 = distinct !DILexicalBlock(scope: !1573, file: !1, line: 1049, column: 3)
!1579 = !DILocation(line: 1049, column: 3, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !1573, file: !1, discriminator: 3)
!1581 = !DILocation(line: 1049, column: 3, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1563, file: !1, discriminator: 4)
!1583 = !DILocation(line: 1050, column: 1, scope: !1563)
!1584 = distinct !DISubprogram(name: "cheb_eval_e", scope: !1585, file: !1585, line: 3, type: !1586, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!1585 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!48, !1588, !49, !50}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64, align: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!1590 = !DILocalVariable(name: "cs", arg: 1, scope: !1584, file: !1585, line: 3, type: !1588)
!1591 = !DILocation(line: 3, column: 33, scope: !1584)
!1592 = !DILocalVariable(name: "x", arg: 2, scope: !1584, file: !1585, line: 4, type: !49)
!1593 = !DILocation(line: 4, column: 26, scope: !1584)
!1594 = !DILocalVariable(name: "result", arg: 3, scope: !1584, file: !1585, line: 5, type: !50)
!1595 = !DILocation(line: 5, column: 29, scope: !1584)
!1596 = !DILocalVariable(name: "j", scope: !1584, file: !1585, line: 7, type: !48)
!1597 = !DILocation(line: 7, column: 7, scope: !1584)
!1598 = !DILocalVariable(name: "d", scope: !1584, file: !1585, line: 8, type: !42)
!1599 = !DILocation(line: 8, column: 10, scope: !1584)
!1600 = !DILocalVariable(name: "dd", scope: !1584, file: !1585, line: 9, type: !42)
!1601 = !DILocation(line: 9, column: 10, scope: !1584)
!1602 = !DILocalVariable(name: "y", scope: !1584, file: !1585, line: 11, type: !42)
!1603 = !DILocation(line: 11, column: 10, scope: !1584)
!1604 = !DILocation(line: 11, column: 20, scope: !1584)
!1605 = !DILocation(line: 11, column: 19, scope: !1584)
!1606 = !DILocation(line: 11, column: 24, scope: !1584)
!1607 = !DILocation(line: 11, column: 28, scope: !1584)
!1608 = !DILocation(line: 11, column: 22, scope: !1584)
!1609 = !DILocation(line: 11, column: 32, scope: !1584)
!1610 = !DILocation(line: 11, column: 36, scope: !1584)
!1611 = !DILocation(line: 11, column: 30, scope: !1584)
!1612 = !DILocation(line: 11, column: 42, scope: !1584)
!1613 = !DILocation(line: 11, column: 46, scope: !1584)
!1614 = !DILocation(line: 11, column: 50, scope: !1584)
!1615 = !DILocation(line: 11, column: 54, scope: !1584)
!1616 = !DILocation(line: 11, column: 48, scope: !1584)
!1617 = !DILocation(line: 11, column: 39, scope: !1584)
!1618 = !DILocalVariable(name: "y2", scope: !1584, file: !1585, line: 12, type: !42)
!1619 = !DILocation(line: 12, column: 10, scope: !1584)
!1620 = !DILocation(line: 12, column: 21, scope: !1584)
!1621 = !DILocation(line: 12, column: 19, scope: !1584)
!1622 = !DILocalVariable(name: "e", scope: !1584, file: !1585, line: 14, type: !42)
!1623 = !DILocation(line: 14, column: 10, scope: !1584)
!1624 = !DILocation(line: 16, column: 11, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1584, file: !1585, line: 16, column: 3)
!1626 = !DILocation(line: 16, column: 15, scope: !1625)
!1627 = !DILocation(line: 16, column: 9, scope: !1625)
!1628 = !DILocation(line: 16, column: 7, scope: !1625)
!1629 = !DILocation(line: 16, column: 22, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1631, file: !1585, discriminator: 1)
!1631 = distinct !DILexicalBlock(scope: !1625, file: !1585, line: 16, column: 3)
!1632 = !DILocation(line: 16, column: 23, scope: !1630)
!1633 = !DILocation(line: 16, column: 3, scope: !1630)
!1634 = !DILocalVariable(name: "temp", scope: !1635, file: !1585, line: 17, type: !42)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !1585, line: 16, column: 33)
!1636 = !DILocation(line: 17, column: 12, scope: !1635)
!1637 = !DILocation(line: 17, column: 19, scope: !1635)
!1638 = !DILocation(line: 18, column: 9, scope: !1635)
!1639 = !DILocation(line: 18, column: 12, scope: !1635)
!1640 = !DILocation(line: 18, column: 11, scope: !1635)
!1641 = !DILocation(line: 18, column: 16, scope: !1635)
!1642 = !DILocation(line: 18, column: 14, scope: !1635)
!1643 = !DILocation(line: 18, column: 27, scope: !1635)
!1644 = !DILocation(line: 18, column: 21, scope: !1635)
!1645 = !DILocation(line: 18, column: 25, scope: !1635)
!1646 = !DILocation(line: 18, column: 19, scope: !1635)
!1647 = !DILocation(line: 18, column: 7, scope: !1635)
!1648 = !DILocation(line: 19, column: 15, scope: !1635)
!1649 = !DILocation(line: 19, column: 18, scope: !1635)
!1650 = !DILocation(line: 19, column: 17, scope: !1635)
!1651 = !DILocation(line: 19, column: 10, scope: !1635)
!1652 = !DILocation(line: 19, column: 31, scope: !1635)
!1653 = !DILocation(line: 19, column: 26, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1635, file: !1585, discriminator: 1)
!1655 = !DILocation(line: 19, column: 24, scope: !1635)
!1656 = !DILocation(line: 19, column: 48, scope: !1635)
!1657 = !DILocation(line: 19, column: 42, scope: !1635)
!1658 = !DILocation(line: 19, column: 46, scope: !1635)
!1659 = !DILocation(line: 19, column: 37, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1635, file: !1585, discriminator: 2)
!1661 = !DILocation(line: 19, column: 35, scope: !1635)
!1662 = !DILocation(line: 19, column: 7, scope: !1635)
!1663 = !DILocation(line: 20, column: 10, scope: !1635)
!1664 = !DILocation(line: 20, column: 8, scope: !1635)
!1665 = !DILocation(line: 21, column: 3, scope: !1635)
!1666 = !DILocation(line: 16, column: 29, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1631, file: !1585, discriminator: 2)
!1668 = !DILocation(line: 16, column: 3, scope: !1667)
!1669 = distinct !{!1669, !1670}
!1670 = !DILocation(line: 16, column: 3, scope: !1584)
!1671 = !DILocalVariable(name: "temp", scope: !1672, file: !1585, line: 24, type: !42)
!1672 = distinct !DILexicalBlock(scope: !1584, file: !1585, line: 23, column: 3)
!1673 = !DILocation(line: 24, column: 12, scope: !1672)
!1674 = !DILocation(line: 24, column: 19, scope: !1672)
!1675 = !DILocation(line: 25, column: 9, scope: !1672)
!1676 = !DILocation(line: 25, column: 11, scope: !1672)
!1677 = !DILocation(line: 25, column: 10, scope: !1672)
!1678 = !DILocation(line: 25, column: 15, scope: !1672)
!1679 = !DILocation(line: 25, column: 13, scope: !1672)
!1680 = !DILocation(line: 25, column: 26, scope: !1672)
!1681 = !DILocation(line: 25, column: 30, scope: !1672)
!1682 = !DILocation(line: 25, column: 24, scope: !1672)
!1683 = !DILocation(line: 25, column: 18, scope: !1672)
!1684 = !DILocation(line: 25, column: 7, scope: !1672)
!1685 = !DILocation(line: 26, column: 15, scope: !1672)
!1686 = !DILocation(line: 26, column: 17, scope: !1672)
!1687 = !DILocation(line: 26, column: 16, scope: !1672)
!1688 = !DILocation(line: 26, column: 10, scope: !1672)
!1689 = !DILocation(line: 26, column: 30, scope: !1672)
!1690 = !DILocation(line: 26, column: 25, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1672, file: !1585, discriminator: 1)
!1692 = !DILocation(line: 26, column: 23, scope: !1672)
!1693 = !DILocation(line: 26, column: 47, scope: !1672)
!1694 = !DILocation(line: 26, column: 51, scope: !1672)
!1695 = !DILocation(line: 26, column: 42, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1672, file: !1585, discriminator: 2)
!1697 = !DILocation(line: 26, column: 40, scope: !1672)
!1698 = !DILocation(line: 26, column: 34, scope: !1672)
!1699 = !DILocation(line: 26, column: 7, scope: !1672)
!1700 = !DILocation(line: 29, column: 17, scope: !1584)
!1701 = !DILocation(line: 29, column: 3, scope: !1584)
!1702 = !DILocation(line: 29, column: 11, scope: !1584)
!1703 = !DILocation(line: 29, column: 15, scope: !1584)
!1704 = !DILocation(line: 30, column: 35, scope: !1584)
!1705 = !DILocation(line: 30, column: 33, scope: !1584)
!1706 = !DILocation(line: 30, column: 50, scope: !1584)
!1707 = !DILocation(line: 30, column: 54, scope: !1584)
!1708 = !DILocation(line: 30, column: 44, scope: !1584)
!1709 = !DILocation(line: 30, column: 48, scope: !1584)
!1710 = !DILocation(line: 30, column: 39, scope: !1584)
!1711 = !DILocation(line: 30, column: 37, scope: !1584)
!1712 = !DILocation(line: 30, column: 3, scope: !1584)
!1713 = !DILocation(line: 30, column: 11, scope: !1584)
!1714 = !DILocation(line: 30, column: 15, scope: !1584)
!1715 = !DILocation(line: 32, column: 3, scope: !1584)
