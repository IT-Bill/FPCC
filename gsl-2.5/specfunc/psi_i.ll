; ModuleID = 'psi.ll'
source_filename = "psi.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_complex = type { [2 x double] }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"psi.c\00", align 1
@psi_table = internal global [101 x double] [double 0.000000e+00, double 0xBFE2788CFC6FB619, double 0x3FDB0EE6072093CE, double 0x3FED8773039049E7, double 0x3FF4190ED71D7A49, double 0x3FF8190ED71D7A49, double 0x3FFB4C420A50AD7C, double 0x3FFDF6ECB4FB5827, double 0x40002008A3A23E5D, double 0x40012008A3A23E5D, double 0x40020396DC85CC95, double 0x4002D063A9529962, double 0x40038A9234F5821C, double 0x4004353CDFA02CC7, double 0x4004D2C6B83DB6A0, double 0x4005650FDCCFFFC4, double 0x4005ED986558884D, double 0x40066D986558884D, double 0x4006E610DDD100C5, double 0x400757D7FA42C7E2, double 0x4007C3A215354E9E, double 0x40082A087B9BB505, double 0x40088B8E93FD3B1D, double 0x4008E8A5D9CEAF7A, double 0x400941B0FB32DC00, double 0x4009970650883155, double 0x4009E8F1D5A6E9A7, double 0x400A37B6C1F5AE93, double 0x400A8390D4EC3351, double 0x400ACCB5673557E3, double 0x400B13544CB9C1D2, double 0x400B579890FE0616, double 0x400B99A9151F0E58, double 0x400BD9A9151F0E58, double 0x400C17B899000696, double 0x400C53F4D53C42D2, double 0x400C8E787D76C67A, double 0x400CC75C0BAFAA09, double 0x400CFEB5FDD92D7E, double 0x400D349B0B5270DD, double 0x400D691E5386F425, double 0x400D9C5186BA2758, double 0x400DCE4509D95F8A, double 0x400DFF08160A2296, double 0x400E2EA8D48D1CA2, double 0x400E5D347775D6D1, double 0x400E8AB74FA359A9, double 0x400EB73CE0556FEC, double 0x400EE2CFF0AC960C, double 0x400F0D7A9B5740B7, double 0x400F37465CA59EC1, double 0x400F603C1F34FAEA, double 0x400F8864475D2312, double 0x400FAFC6BD848589, double 0x400FD66AF77ADC7A, double 0x400FFC5800F61ED9, double 0x401010CA41A4F37F, double 0x4010231366373CA4, double 0x4010350A6AB4FDC3, double 0x401046B22416183F, double 0x4010580D42758D66, double 0x4010691E53869E77, double 0x401079E7C4D65B51, double 0x40108A6BE5DE9D62, double 0x40109AACE9EEDE66, double 0x4010AAACE9EEDE66, double 0x4010BA6DE5FE9F62, double 0x4010C9F1C6F6DD71, double 0x4010D93A5FCCD5CD, double 0x4010E8496EDBE4DC, double 0x4010F7209F17419D, double 0x401105C18925E287, double 0x4011142DB46A6454, double 0x4011226697F89D38, double 0x4011306D9B7A5E18, double 0x40113E441804BEF6, double 0x40114BEB58DF3304, double 0x401159649C3D83DB, double 0x401166B113EDB90D, double 0x401173D1E5FAD9DF, double 0x401180C82D4561F9, double 0x40118D94FA122EC6, double 0x40119A3952909A3B, double 0x4011A6B633586847, double 0x4011B30C8FE01E41, double 0x4011BF3D52EC4F04, double 0x4011CB495EF85B10, double 0x4011D7318E991993, double 0x4011E2F6B4D9D5E5, double 0x4011EE999D940471, double 0x4011FA1B0DC20A32, double 0x4012057BC3CD6AE8, double 0x401210BC77D8AB9C, double 0x40121BDDDC05312D, double 0x401226E09CB55D38, double 0x401231C560CB26C0, double 0x40123C8CC9E3676C, double 0x40124737748E1217, double 0x401251C5F8838393, double 0x40125C38E8D71B16, double 0x40126690D4274475], align 16
@r1py_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([30 x double], [30 x double]* @r1py_data, i32 0, i32 0), i32 29, double -1.000000e+00, double 1.000000e+00, i32 18 }, align 8
@psi_1_table = internal global [101 x double] [double 0.000000e+00, double 0x3FFA51A6625307D3, double 0x3FE4A34CC4A60FA6, double 0x3FD94699894C1F4D, double 0x3FD22A27C22FAD85, double 0x3FCC544F845F5B0B, double 0x3FC735973273D5EC, double 0x3FC3A75E4EE59D09, double 0x3FC10AA239FFBC61, double 0x3FBE154473FF78C3, double 0x3FBAEC2E54649B87, double 0x3FB85CD22B6ED8F7, double 0x3FB63F337DF20565, double 0x3FB478170C2AE8F4, double 0x3FB2F44D947FBD06, double 0x3FB1A5EF8A0CCCB2, double 0x3FB082AA228320E4, double 0x3FAF0554450641C9, double 0x3FAD3FCAF7F56D30, double 0x3FABAB3FE827FE92, double 0x3FAA402B577DCCEE, double 0x3FA8F87D4302EBA7, double 0x3FA7CF461D476B5C, double 0x3FA6C076C6890193, double 0x3FA5C8B0D8ECB236, double 0x3FA4E522A00923FD, double 0x3FA4136B88B041E4, double 0x3FA35186CCDAABED, double 0x3FA29DBAC5D4B3A7, double 0x3FA1F68BC09B3B7D, double 0x3FA15AB17F770243, double 0x3FA0C90ECBB22C5C, double 0x3FA040AAA223A7B2, double 0x3F9F815544474F65, double 0x3F9E909CF72C46B2, double 0x3F9DADD850A3DC66, double 0x3F9CD7D991A1FAE9, double 0x3F9C0D9409BB439A, double 0x3F9B4E17AF397CD2, double 0x3F9A988D66E46400, double 0x3F99EC33DC5F6CEC, double 0x3F99485CD221FC48, double 0x3F98AC6AD4DFBD3C, double 0x3F9817CF4201FD17, double 0x3F978A0893D5681D, double 0x3F9702A0E8763338, double 0x3F96812CBA71E6DD, double 0x3F960549C3A3BF2E, double 0x3F958E9E04130032, double 0x3F951CD6E7A13915, double 0x3F94AFA8862D5319, double 0x3F9446CCFA80E20D, double 0x3F93E203CCEEEBB2, double 0x3F9381116F0420B6, double 0x3F9323BEC60CF7CB, double 0x3F92C9D8C289FBA8, double 0x3F92733002F0E40B, double 0x3F921F98805427F6, double 0x3F91CEE943BC8EB6, double 0x3F9180FC232A7219, double 0x3F9135AD85583059, double 0x3F90ECDC2B75C566, double 0x3F90A669002F8711, double 0x3F906236EB6844BC, double 0x3F90202AAA22283A, double 0x3F8FC05554445074, double 0x3F8F443DD1D01970, double 0x3F8ECBE1AB429516, double 0x3F8E57166B8F3A78, double 0x3F8DE5B4184B0552, double 0x3F8D779504058CB7, double 0x3F8D0C95A4849BF8, double 0x3F8CA4946C80F3ED, double 0x3F8C3F71A88D9846, double 0x3F8BDD0F5EDC7993, double 0x3F8B7D51319B962F, double 0x3F8B201C43ACF8CF, double 0x3F8AC5571F826C66, double 0x3F8A6CE99FEB6E6D, double 0x3F8A16BCDAA8F2E3, double 0x3F89C2BB0C9F05AD, double 0x3F8970CF87804D5B, double 0x3F8920E6A0D2FB74, double 0x3F88D2EDA231DBEE, double 0x3F8886D2BAAF042D, double 0x3F883C84F140241A, double 0x3F87F3F4181EBA68, double 0x3F87AD10C1086FEC, double 0x3F8767CC324DABD2, double 0x3F8724185C9E115F, double 0x3F86E1E7D1840D0B, double 0x3F86A12DBA81E6DD, double 0x3F8661DDD0C3FF0A, double 0x3F8623EC555CEB32, double 0x3F85E74E0A012204, double 0x3F85ABF82A38C285, double 0x3F8571E064FECF0F, double 0x3F8538FCD6C5EB81, double 0x3F85014403DB5527, double 0x3F84CAACD3216229, double 0x3F84952E891B603A], align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"singularity\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"gsl_sf_psi_int_e(n, &result)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"gsl_sf_psi_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"gsl_sf_psi_1piy_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"gsl_sf_psi_1_int_e(n, &result)\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"gsl_sf_psi_1_e(x, &result)\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"gsl_sf_psi_n_e(n, x, &result)\00", align 1
@apsi_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([16 x double], [16 x double]* @apsics_data, i32 0, i32 0), i32 15, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@psi_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([23 x double], [23 x double]* @psics_data, i32 0, i32 0), i32 22, double -1.000000e+00, double 1.000000e+00, i32 17 }, align 8
@apsics_data = internal global [16 x double] [double 0xBF94F75F944FE07A, double 0xBF84D951898BF7AF, double 0x3F0D586AE57A4255, double 0xBEB5ABE2956BBABD, double 0x3E6EC14F08E74CD9, double 0xBE30699F80005F34, double 3.397434e-10, double -3.748380e-11, double 4.899000e-12, double -7.344000e-13, double 1.233000e-13, double -2.280000e-14, double 4.500000e-15, double -9.000000e-16, double 2.000000e-16, double -0.000000e+00], align 16
@psics_data = internal global [23 x double] [double 0xBFA37C37BB231109, double 0x3FDF73598C73FB27, double 0xBFAD16F425947EBB, double 0x3F811DE7C6A62076, double 0xBF55D7FBE17975AE, double 0x3F2CE07CB9C5C359, double 0xBF036B74E4951ABC, double 0x3EDA5B2C0C29E4ED, double 0xBEB1F90B1FB29BFD, double 0x3E88943E64F65CF3, double 0xBE60D5318A2660C2, double 0x3E371377399FDA49, double 0xBE0FA6AE3F8F0DEA, double 0x3DE5B678BB7CAB1E, double 0xBDBDCB973B818CB1, double 4.648722e-12, double -7.975270e-13, double 1.368270e-13, double -2.347500e-14, double 4.027000e-15, double -6.910000e-16, double 1.180000e-16, double -2.000000e-17], align 16
@r1py_data = internal global [30 x double] [double 0x3FF99506A303E2E2, double 0x3FE5BAD42E2212DD, double 0xBFB188491C0A3890, double 0xBF77B559DC505E58, double 0x3F816E59BBCDEA3A, double 0xBF708F083E333C97, double 0x3F56281391C93817, double 0xBF346C8FCCCC56B2, double 0x3EF368161956C8A0, double 0x3EFDB9CC33FFDC01, double 0xBEF46F25471D9B64, double 0x3EE0ED12E3B8A733, double 0xBEC347AECF9A9686, double 0x3E9478FFC23E2674, double 0x3E8181477139A58A, double 0xBE808538EF7852FB, double 0x3E6EFBB8388C379F, double 0xBE539F8C28FA8569, double 0x3E2AA5794991B3C0, double 0x3E07B45D8C3425EB, double 0xBE0DF4A2A64D4C15, double 0x3DFE48B9F8D92DC3, double 0xBDE43DB6416D0FC5, double 0x3DBE55CE2494DEB4, double 0x3D926A593CD57785, double 0xBD9CE22C9F37A3F2, double 0x3D8E55FC210997F7, double 0xBD74C583682DB83E, double 0x3D50BF1F89045337, double 0x3CE3834B06E0BA6B], align 16
@psi_complex_asymp.c1 = internal constant double -1.000000e-01, align 8
@psi_complex_asymp.c2 = internal constant double 0x3FA8618618618618, align 8
@psi_complex_asymp.c3 = internal constant double -5.000000e-02, align 8
@0 = private unnamed_addr constant [17 x i8] c"gsl_sf_psi_int_e\00"
@1 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@2 = private unnamed_addr constant [13 x i8] c"gsl_sf_psi_e\00"
@3 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@4 = private unnamed_addr constant [6 x i8] c"psi_x\00"
@5 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@6 = private unnamed_addr constant [18 x i8] c"gsl_sf_psi_1piy_e\00"
@7 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@8 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@9 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@10 = private unnamed_addr constant [19 x i8] c"gsl_sf_psi_1_int_e\00"
@11 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@12 = private unnamed_addr constant [15 x i8] c"gsl_sf_psi_1_e\00"
@13 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@14 = private unnamed_addr constant [10 x i8] c"psi_n_xg0\00"
@15 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@16 = private unnamed_addr constant [15 x i8] c"gsl_sf_psi_n_e\00"
@17 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@18 = private unnamed_addr constant [21 x i8] c"gsl_sf_complex_psi_e\00"
@19 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@20 = private unnamed_addr constant [16 x i8] c"psi_complex_rhp\00"
@21 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@22 = private unnamed_addr constant [15 x i8] c"gsl_sf_psi_int\00"
@23 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@24 = private unnamed_addr constant [11 x i8] c"gsl_sf_psi\00"
@25 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@26 = private unnamed_addr constant [16 x i8] c"gsl_sf_psi_1piy\00"
@27 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@28 = private unnamed_addr constant [17 x i8] c"gsl_sf_psi_1_int\00"
@29 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@30 = private unnamed_addr constant [13 x i8] c"gsl_sf_psi_1\00"
@31 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@32 = private unnamed_addr constant [13 x i8] c"gsl_sf_psi_n\00"
@33 = private unnamed_addr constant [7 x i8] c"psi.ll\00"
@34 = private unnamed_addr constant [18 x i8] c"psi_complex_asymp\00"
@35 = private unnamed_addr constant [7 x i8] c"psi.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_psi_int_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !96 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !107, metadata !108), !dbg !109
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !110, metadata !108), !dbg !111
  %12 = load i32, i32* %4, align 4, !dbg !112
  %13 = icmp sle i32 %12, 0, !dbg !114
  %14 = sext i32 %12 to i64, !dbg !115
  %15 = call i1 @iCmpInstHandler(i64 %14, i64 0, i1 %13, i32 41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962328880, i32 586, i32 8), !dbg !115
  br i1 %15, label %16, label %25, !dbg !115

; <label>:16:                                     ; preds = %2
  br label %17, !dbg !116, !llvm.loop !118

; <label>:17:                                     ; preds = %16
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !119
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !119
  store double 0x7FF8000000000000, double* %19, align 8, !dbg !119
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !119
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !119
  store double 0x7FF8000000000000, double* %21, align 8, !dbg !119
  br label %22, !dbg !119, !llvm.loop !122

; <label>:22:                                     ; preds = %17
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 587, i32 1), !dbg !124
  store i32 1, i32* %3, align 4, !dbg !124
  br label %98, !dbg !124
                                                  ; No predecessors!
  br label %24, !dbg !127

; <label>:24:                                     ; preds = %23
  br label %98, !dbg !129

; <label>:25:                                     ; preds = %2
  %26 = load i32, i32* %4, align 4, !dbg !130
  %27 = icmp sle i32 %26, 100, !dbg !132
  %28 = sext i32 %26 to i64, !dbg !133
  %29 = call i1 @iCmpInstHandler(i64 %28, i64 100, i1 %27, i32 41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962342256, i32 589, i32 13), !dbg !133
  br i1 %29, label %30, label %44, !dbg !133

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %4, align 4, !dbg !134
  %32 = sext i32 %31 to i64, !dbg !136
  %33 = getelementptr inbounds [101 x double], [101 x double]* @psi_table, i64 0, i64 %32, !dbg !136
  %34 = load double, double* %33, align 8, !dbg !136
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !137
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !138
  store double %34, double* %36, align 8, !dbg !139
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !140
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !141
  %39 = load double, double* %38, align 8, !dbg !141
  %40 = call double @fabs(double %39) #1, !dbg !142
  %41 = fmul double 0x3CB0000000000000, %40, !dbg !143
  call void @fMulHandler(double 0x3CB0000000000000, double %40, double %41, i64 0, i64 94191962350464, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962351040, i32 591, i32 35), !dbg !144
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !144
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !145
  store double %41, double* %43, align 8, !dbg !146
  store i32 0, i32* %3, align 4, !dbg !147
  br label %98, !dbg !147

; <label>:44:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata double* %6, metadata !148, metadata !108), !dbg !150
  store double 0xBFB5555555555555, double* %6, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata double* %7, metadata !151, metadata !108), !dbg !152
  store double 0x3F81111111111111, double* %7, align 8, !dbg !152
  call void @llvm.dbg.declare(metadata double* %8, metadata !153, metadata !108), !dbg !154
  store double 0xBF70410410410410, double* %8, align 8, !dbg !154
  call void @llvm.dbg.declare(metadata double* %9, metadata !155, metadata !108), !dbg !156
  store double 0x3F71111111111111, double* %9, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata double* %10, metadata !157, metadata !108), !dbg !158
  %45 = load i32, i32* %4, align 4, !dbg !159
  %46 = sitofp i32 %45 to double, !dbg !159
  %47 = fdiv double 1.000000e+00, %46, !dbg !160
  call void @fDivHandler(double 1.000000e+00, double %46, double %47, i64 0, i64 94191962367576, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962369280, i32 600, i32 28), !dbg !161
  %48 = load i32, i32* %4, align 4, !dbg !161
  %49 = sitofp i32 %48 to double, !dbg !161
  %50 = fdiv double 1.000000e+00, %49, !dbg !162
  call void @fDivHandler(double 1.000000e+00, double %49, double %50, i64 0, i64 94191962370024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962371728, i32 600, i32 36), !dbg !163
  %51 = fmul double %47, %50, !dbg !163
  call void @fMulHandler(double %47, double %50, double %51, i64 94191962369280, i64 94191962371728, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962372112, i32 600, i32 31), !dbg !158
  store double %51, double* %10, align 8, !dbg !158
  call void @llvm.dbg.declare(metadata double* %11, metadata !164, metadata !108), !dbg !165
  %52 = load double, double* %10, align 8, !dbg !166
  %53 = load double, double* %10, align 8, !dbg !167
  %54 = load double, double* %10, align 8, !dbg !168
  %55 = load double, double* %10, align 8, !dbg !169
  %56 = fmul double %55, 0x3F71111111111111, !dbg !170
  call void @fMulHandler(double %55, double 0x3F71111111111111, double %56, i64 94191962376424, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962376832, i32 601, i32 63), !dbg !171
  %57 = fadd double 0xBF70410410410410, %56, !dbg !171
  call void @fAddHandler(double 0xBF70410410410410, double %56, double %57, i64 0, i64 94191962376832, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962377248, i32 601, i32 58), !dbg !172
  %58 = fmul double %54, %57, !dbg !172
  call void @fMulHandler(double %54, double %57, double %58, i64 94191962376040, i64 94191962377248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962377664, i32 601, i32 52), !dbg !173
  %59 = fadd double 0x3F81111111111111, %58, !dbg !173
  call void @fAddHandler(double 0x3F81111111111111, double %58, double %59, i64 0, i64 94191962377664, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962378080, i32 601, i32 46), !dbg !174
  %60 = fmul double %53, %59, !dbg !174
  call void @fMulHandler(double %53, double %59, double %60, i64 94191962375656, i64 94191962378080, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962378496, i32 601, i32 40), !dbg !175
  %61 = fadd double 0xBFB5555555555555, %60, !dbg !175
  call void @fAddHandler(double 0xBFB5555555555555, double %60, double %61, i64 0, i64 94191962378496, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962378912, i32 601, i32 34), !dbg !176
  %62 = fmul double %52, %61, !dbg !176
  call void @fMulHandler(double %52, double %61, double %62, i64 94191962375304, i64 94191962378912, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962379328, i32 601, i32 28), !dbg !165
  store double %62, double* %11, align 8, !dbg !165
  %63 = load i32, i32* %4, align 4, !dbg !177
  %64 = sitofp i32 %63 to double, !dbg !177
  %65 = call double @log(double %64) #7, !dbg !178
  call void @callOneArgHandler(i32 12, double %64, double %65, i64 94191962381784, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962384592, i32 602, i32 20), !dbg !179
  %66 = load i32, i32* %4, align 4, !dbg !179
  %67 = sitofp i32 %66 to double, !dbg !179
  %68 = fdiv double 5.000000e-01, %67, !dbg !180
  call void @fDivHandler(double 5.000000e-01, double %67, double %68, i64 0, i64 94191962385464, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962387232, i32 602, i32 32), !dbg !181
  %69 = fsub double %65, %68, !dbg !181
  call void @fSubHandler(double %65, double %68, double %69, i64 94191962384592, i64 94191962387232, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962388656, i32 602, i32 27), !dbg !182
  %70 = load double, double* %11, align 8, !dbg !182
  %71 = fadd double %69, %70, !dbg !183
  call void @fAddHandler(double %69, double %70, double %71, i64 94191962388656, i64 94191962389048, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962389456, i32 602, i32 35), !dbg !184
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !184
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !185
  store double %71, double* %73, align 8, !dbg !186
  %74 = load i32, i32* %4, align 4, !dbg !187
  %75 = sitofp i32 %74 to double, !dbg !187
  %76 = call double @log(double %75) #7, !dbg !188
  call void @callOneArgHandler(i32 12, double %75, double %76, i64 94191962391480, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962393216, i32 603, i32 44), !dbg !189
  %77 = call double @fabs(double %76) #1, !dbg !189
  %78 = load i32, i32* %4, align 4, !dbg !191
  %79 = sitofp i32 %78 to double, !dbg !191
  %80 = fdiv double 5.000000e-01, %79, !dbg !192
  call void @fDivHandler(double 5.000000e-01, double %79, double %80, i64 0, i64 94191962394600, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962396304, i32 603, i32 62), !dbg !193
  %81 = call double @fabs(double %80) #1, !dbg !193
  %82 = fadd double %77, %81, !dbg !195
  call void @fAddHandler(double %77, double %81, double %82, i64 94191962393760, i64 94191962396752, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962397232, i32 603, i32 52), !dbg !196
  %83 = load double, double* %11, align 8, !dbg !196
  %84 = call double @fabs(double %83) #1, !dbg !197
  %85 = fadd double %82, %84, !dbg !199
  call void @fAddHandler(double %82, double %84, double %85, i64 94191962397232, i64 94191962398096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962398576, i32 603, i32 66), !dbg !200
  %86 = fmul double 0x3CB0000000000000, %85, !dbg !200
  call void @fMulHandler(double 0x3CB0000000000000, double %85, double %86, i64 0, i64 94191962398576, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962398992, i32 603, i32 36), !dbg !201
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !201
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !202
  store double %86, double* %88, align 8, !dbg !203
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !204
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 0, !dbg !205
  %91 = load double, double* %90, align 8, !dbg !205
  %92 = call double @fabs(double %91) #1, !dbg !206
  %93 = fmul double 0x3CB0000000000000, %92, !dbg !207
  call void @fMulHandler(double 0x3CB0000000000000, double %92, double %93, i64 0, i64 94191962403200, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962403680, i32 604, i32 36), !dbg !208
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !208
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 1, !dbg !209
  %96 = load double, double* %95, align 8, !dbg !210
  %97 = fadd double %96, %93, !dbg !210
  call void @fAddHandler(double %96, double %93, double %97, i64 94191962404904, i64 94191962403680, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @1, i32 0, i32 0), i64 94191962405312, i32 604, i32 17), !dbg !210
  store double %97, double* %95, align 8, !dbg !210
  store i32 0, i32* %3, align 4, !dbg !211
  br label %98, !dbg !211

; <label>:98:                                     ; preds = %44, %30, %24, %22
  %99 = load i32, i32* %3, align 4, !dbg !212
  ret i32 %99, !dbg !212
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_psi_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !213 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !216, metadata !108), !dbg !217
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !218, metadata !108), !dbg !219
  %5 = load double, double* %3, align 8, !dbg !220
  %6 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !221
  %7 = call i32 @psi_x(double %5, %struct.gsl_sf_result_struct* %6), !dbg !222
  ret i32 %7, !dbg !223
}

; Function Attrs: nounwind uwtable
define internal i32 @psi_x(double, %struct.gsl_sf_result_struct*) #0 !dbg !224 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !225, metadata !108), !dbg !226
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !227, metadata !108), !dbg !228
  call void @llvm.dbg.declare(metadata double* %6, metadata !229, metadata !108), !dbg !230
  %21 = load double, double* %4, align 8, !dbg !231
  %22 = call double @fabs(double %21) #1, !dbg !232
  store double %22, double* %6, align 8, !dbg !230
  %23 = load double, double* %4, align 8, !dbg !233
  %24 = fcmp oeq double %23, 0.000000e+00, !dbg !235
  %25 = call i1 @fCmpInstHandler(double %23, double 0.000000e+00, i1 %24, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962426416, i32 384, i32 8), !dbg !236
  br i1 %25, label %34, label %26, !dbg !236

; <label>:26:                                     ; preds = %2
  %27 = load double, double* %4, align 8, !dbg !237
  %28 = fcmp oeq double %27, -1.000000e+00, !dbg !239
  %29 = call i1 @fCmpInstHandler(double %27, double -1.000000e+00, i1 %28, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962427904, i32 384, i32 20), !dbg !240
  br i1 %29, label %34, label %30, !dbg !240

; <label>:30:                                     ; preds = %26
  %31 = load double, double* %4, align 8, !dbg !241
  %32 = fcmp oeq double %31, -2.000000e+00, !dbg !243
  %33 = call i1 @fCmpInstHandler(double %31, double -2.000000e+00, i1 %32, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962429280, i32 384, i32 33), !dbg !244
  br i1 %33, label %34, label %43, !dbg !244

; <label>:34:                                     ; preds = %30, %26, %2
  br label %35, !dbg !245, !llvm.loop !247

; <label>:35:                                     ; preds = %34
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !248
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !248
  store double 0x7FF8000000000000, double* %37, align 8, !dbg !248
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !248
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !248
  store double 0x7FF8000000000000, double* %39, align 8, !dbg !248
  br label %40, !dbg !248, !llvm.loop !251

; <label>:40:                                     ; preds = %35
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 385, i32 1), !dbg !253
  store i32 1, i32* %3, align 4, !dbg !253
  br label %305, !dbg !253
                                                  ; No predecessors!
  br label %42, !dbg !256

; <label>:42:                                     ; preds = %41
  br label %305, !dbg !258

; <label>:43:                                     ; preds = %30
  %44 = load double, double* %6, align 8, !dbg !259
  %45 = fcmp oge double %44, 2.000000e+00, !dbg !261
  %46 = call i1 @fCmpInstHandler(double %44, double 2.000000e+00, i1 %45, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962437904, i32 387, i32 13), !dbg !262
  br i1 %46, label %47, label %145, !dbg !262

; <label>:47:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata double* %7, metadata !263, metadata !108), !dbg !265
  %48 = load double, double* %6, align 8, !dbg !266
  %49 = load double, double* %6, align 8, !dbg !267
  %50 = fmul double %48, %49, !dbg !268
  call void @fMulHandler(double %48, double %49, double %50, i64 94191962440040, i64 94191962440392, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962440800, i32 388, i32 28), !dbg !269
  %51 = fdiv double 8.000000e+00, %50, !dbg !269
  call void @fDivHandler(double 8.000000e+00, double %50, double %51, i64 0, i64 94191962440800, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962441312, i32 388, i32 25), !dbg !270
  %52 = fsub double %51, 1.000000e+00, !dbg !270
  call void @fSubHandler(double %51, double 1.000000e+00, double %52, i64 94191962441312, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962441728, i32 388, i32 31), !dbg !265
  store double %52, double* %7, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !271, metadata !108), !dbg !272
  %53 = load double, double* %7, align 8, !dbg !273
  %54 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @apsi_cs, double %53, %struct.gsl_sf_result_struct* %8), !dbg !274
  %55 = load double, double* %4, align 8, !dbg !275
  %56 = fcmp olt double %55, 0.000000e+00, !dbg !277
  %57 = call i1 @fCmpInstHandler(double %55, double 0.000000e+00, i1 %56, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962446480, i32 391, i32 10), !dbg !278
  br i1 %57, label %58, label %120, !dbg !278

; <label>:58:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata double* %9, metadata !279, metadata !108), !dbg !281
  %59 = load double, double* %4, align 8, !dbg !282
  %60 = fmul double 0x400921FB54442D18, %59, !dbg !283
  call void @fMulHandler(double 0x400921FB54442D18, double %59, double %60, i64 0, i64 94191962448744, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962449184, i32 392, i32 32), !dbg !284
  %61 = call double @sin(double %60) #7, !dbg !284
  call void @callOneArgHandler(i32 1, double %60, double %61, i64 94191962449184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962449936, i32 392, i32 24), !dbg !281
  store double %61, double* %9, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata double* %10, metadata !285, metadata !108), !dbg !286
  %62 = load double, double* %4, align 8, !dbg !287
  %63 = fmul double 0x400921FB54442D18, %62, !dbg !288
  call void @fMulHandler(double 0x400921FB54442D18, double %62, double %63, i64 0, i64 94191962453272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962453648, i32 393, i32 32), !dbg !289
  %64 = call double @cos(double %63) #7, !dbg !289
  call void @callOneArgHandler(i32 2, double %63, double %64, i64 94191962453648, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962454400, i32 393, i32 24), !dbg !286
  store double %64, double* %10, align 8, !dbg !286
  %65 = load double, double* %9, align 8, !dbg !290
  %66 = call double @fabs(double %65) #1, !dbg !292
  %67 = fcmp olt double %66, 0x2010000000000000, !dbg !293
  %68 = call i1 @fCmpInstHandler(double %66, double 0x2010000000000000, i1 %67, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962457584, i32 394, i32 18), !dbg !294
  br i1 %68, label %69, label %78, !dbg !294

; <label>:69:                                     ; preds = %58
  br label %70, !dbg !295, !llvm.loop !297

; <label>:70:                                     ; preds = %69
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !298
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !298
  store double 0x7FF8000000000000, double* %72, align 8, !dbg !298
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !298
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !298
  store double 0x7FF8000000000000, double* %74, align 8, !dbg !298
  br label %75, !dbg !298, !llvm.loop !301

; <label>:75:                                     ; preds = %70
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 395, i32 1), !dbg !303
  store i32 1, i32* %3, align 4, !dbg !303
  br label %305, !dbg !303
                                                  ; No predecessors!
  br label %77, !dbg !306

; <label>:77:                                     ; preds = %76
  br label %119, !dbg !308

; <label>:78:                                     ; preds = %58
  %79 = load double, double* %6, align 8, !dbg !309
  %80 = call double @log(double %79) #7, !dbg !311
  call void @callOneArgHandler(i32 12, double %79, double %80, i64 94191962465944, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962466352, i32 398, i32 24), !dbg !312
  %81 = load double, double* %4, align 8, !dbg !312
  %82 = fdiv double 5.000000e-01, %81, !dbg !313
  call void @fDivHandler(double 5.000000e-01, double %81, double %82, i64 0, i64 94191962466808, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962467248, i32 398, i32 36), !dbg !314
  %83 = fsub double %80, %82, !dbg !314
  call void @fSubHandler(double %80, double %82, double %83, i64 94191962466352, i64 94191962467248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962467632, i32 398, i32 31), !dbg !315
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !315
  %85 = load double, double* %84, align 8, !dbg !315
  %86 = fadd double %83, %85, !dbg !316
  call void @fAddHandler(double %83, double %85, double %86, i64 94191962467632, i64 94191962468472, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962470144, i32 398, i32 39), !dbg !317
  %87 = load double, double* %10, align 8, !dbg !317
  %88 = fmul double 0x400921FB54442D18, %87, !dbg !318
  call void @fMulHandler(double 0x400921FB54442D18, double %87, double %88, i64 0, i64 94191962470536, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962470944, i32 398, i32 61), !dbg !319
  %89 = load double, double* %9, align 8, !dbg !319
  %90 = fdiv double %88, %89, !dbg !320
  call void @fDivHandler(double %88, double %89, double %90, i64 94191962470944, i64 94191962471336, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962471744, i32 398, i32 64), !dbg !321
  %91 = fsub double %86, %90, !dbg !321
  call void @fSubHandler(double %86, double %90, double %91, i64 94191962470144, i64 94191962471744, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962472160, i32 398, i32 54), !dbg !322
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !322
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !323
  store double %91, double* %93, align 8, !dbg !324
  %94 = load double, double* %4, align 8, !dbg !325
  %95 = call double @fabs(double %94) #1, !dbg !326
  %96 = fmul double 0x400921FB54442D18, %95, !dbg !327
  call void @fMulHandler(double 0x400921FB54442D18, double %95, double %96, i64 0, i64 94191962474272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962474752, i32 399, i32 28), !dbg !328
  %97 = fmul double %96, 0x3CB0000000000000, !dbg !328
  call void @fMulHandler(double %96, double 0x3CB0000000000000, double %97, i64 94191962474752, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962475168, i32 399, i32 36), !dbg !329
  %98 = load double, double* %9, align 8, !dbg !329
  %99 = load double, double* %9, align 8, !dbg !330
  %100 = fmul double %98, %99, !dbg !331
  call void @fMulHandler(double %98, double %99, double %100, i64 94191962475560, i64 94191962475944, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962476352, i32 399, i32 55), !dbg !332
  %101 = fdiv double %97, %100, !dbg !332
  call void @fDivHandler(double %97, double %100, double %101, i64 94191962475168, i64 94191962476352, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962476768, i32 399, i32 52), !dbg !333
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !333
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 1, !dbg !334
  store double %101, double* %103, align 8, !dbg !335
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !336
  %105 = load double, double* %104, align 8, !dbg !336
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !337
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 1, !dbg !338
  %108 = load double, double* %107, align 8, !dbg !339
  %109 = fadd double %108, %105, !dbg !339
  call void @fAddHandler(double %108, double %105, double %109, i64 94191962481336, i64 94191962478856, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962481744, i32 400, i32 21), !dbg !339
  store double %109, double* %107, align 8, !dbg !339
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !340
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !341
  %112 = load double, double* %111, align 8, !dbg !341
  %113 = call double @fabs(double %112) #1, !dbg !342
  %114 = fmul double 0x3CB0000000000000, %113, !dbg !343
  call void @fMulHandler(double 0x3CB0000000000000, double %113, double %114, i64 0, i64 94191962486096, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962486576, i32 401, i32 40), !dbg !344
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !344
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !345
  %117 = load double, double* %116, align 8, !dbg !346
  %118 = fadd double %117, %114, !dbg !346
  call void @fAddHandler(double %117, double %114, double %118, i64 94191962487800, i64 94191962486576, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962488208, i32 401, i32 21), !dbg !346
  store double %118, double* %116, align 8, !dbg !346
  store i32 0, i32* %3, align 4, !dbg !347
  br label %305, !dbg !347

; <label>:119:                                    ; preds = %77
  br label %144, !dbg !348

; <label>:120:                                    ; preds = %47
  %121 = load double, double* %6, align 8, !dbg !349
  %122 = call double @log(double %121) #7, !dbg !351
  call void @callOneArgHandler(i32 12, double %121, double %122, i64 94191962492520, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962492928, i32 406, i32 22), !dbg !352
  %123 = load double, double* %4, align 8, !dbg !352
  %124 = fdiv double 5.000000e-01, %123, !dbg !353
  call void @fDivHandler(double 5.000000e-01, double %123, double %124, i64 0, i64 94191962493384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962493824, i32 406, i32 34), !dbg !354
  %125 = fsub double %122, %124, !dbg !354
  call void @fSubHandler(double %122, double %124, double %125, i64 94191962492928, i64 94191962493824, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962494208, i32 406, i32 29), !dbg !355
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !355
  %127 = load double, double* %126, align 8, !dbg !355
  %128 = fadd double %125, %127, !dbg !356
  call void @fAddHandler(double %125, double %127, double %128, i64 94191962494208, i64 94191962495048, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962496720, i32 406, i32 37), !dbg !357
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !357
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 0, !dbg !358
  store double %128, double* %130, align 8, !dbg !359
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !360
  %132 = load double, double* %131, align 8, !dbg !360
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !361
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 1, !dbg !362
  store double %132, double* %134, align 8, !dbg !363
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !364
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 0, !dbg !365
  %137 = load double, double* %136, align 8, !dbg !365
  %138 = call double @fabs(double %137) #1, !dbg !366
  %139 = fmul double 0x3CB0000000000000, %138, !dbg !367
  call void @fMulHandler(double 0x3CB0000000000000, double %138, double %139, i64 0, i64 94191962506336, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962506816, i32 408, i32 38), !dbg !368
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !368
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 1, !dbg !369
  %142 = load double, double* %141, align 8, !dbg !370
  %143 = fadd double %142, %139, !dbg !370
  call void @fAddHandler(double %142, double %139, double %143, i64 94191962508040, i64 94191962506816, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962508448, i32 408, i32 19), !dbg !370
  store double %143, double* %141, align 8, !dbg !370
  store i32 0, i32* %3, align 4, !dbg !371
  br label %305, !dbg !371

; <label>:144:                                    ; preds = %119
  br label %304, !dbg !372

; <label>:145:                                    ; preds = %43
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !373, metadata !108), !dbg !375
  %146 = load double, double* %4, align 8, !dbg !376
  %147 = fcmp olt double %146, -1.000000e+00, !dbg !378
  %148 = call i1 @fCmpInstHandler(double %146, double -1.000000e+00, i1 %147, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962514272, i32 415, i32 10), !dbg !379
  br i1 %148, label %149, label %208, !dbg !379

; <label>:149:                                    ; preds = %145
  call void @llvm.dbg.declare(metadata double* %12, metadata !380, metadata !108), !dbg !382
  %150 = load double, double* %4, align 8, !dbg !383
  %151 = fadd double %150, 2.000000e+00, !dbg !384
  call void @fAddHandler(double %150, double 2.000000e+00, double %151, i64 94191962516408, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962516816, i32 416, i32 27), !dbg !382
  store double %151, double* %12, align 8, !dbg !382
  call void @llvm.dbg.declare(metadata double* %13, metadata !385, metadata !108), !dbg !386
  %152 = load double, double* %4, align 8, !dbg !387
  %153 = fdiv double 1.000000e+00, %152, !dbg !388
  call void @fDivHandler(double 1.000000e+00, double %152, double %153, i64 0, i64 94191962519976, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962520384, i32 417, i32 28), !dbg !386
  store double %153, double* %13, align 8, !dbg !386
  call void @llvm.dbg.declare(metadata double* %14, metadata !389, metadata !108), !dbg !390
  %154 = load double, double* %4, align 8, !dbg !391
  %155 = fadd double %154, 1.000000e+00, !dbg !392
  call void @fAddHandler(double %154, double 1.000000e+00, double %155, i64 94191962523544, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962523952, i32 418, i32 31), !dbg !393
  %156 = fdiv double 1.000000e+00, %155, !dbg !393
  call void @fDivHandler(double 1.000000e+00, double %155, double %156, i64 0, i64 94191962523952, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962524368, i32 418, i32 28), !dbg !390
  store double %156, double* %14, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata double* %15, metadata !394, metadata !108), !dbg !395
  %157 = load double, double* %12, align 8, !dbg !396
  %158 = fdiv double 1.000000e+00, %157, !dbg !397
  call void @fDivHandler(double 1.000000e+00, double %157, double %158, i64 0, i64 94191962527528, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962527936, i32 419, i32 28), !dbg !395
  store double %158, double* %15, align 8, !dbg !395
  %159 = load double, double* %12, align 8, !dbg !398
  %160 = fmul double 2.000000e+00, %159, !dbg !399
  call void @fMulHandler(double 2.000000e+00, double %159, double %160, i64 0, i64 94191962529976, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962530416, i32 420, i32 31), !dbg !400
  %161 = fsub double %160, 1.000000e+00, !dbg !400
  call void @fSubHandler(double %160, double 1.000000e+00, double %161, i64 94191962530416, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962530832, i32 420, i32 33), !dbg !401
  %162 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @psi_cs, double %161, %struct.gsl_sf_result_struct* %11), !dbg !401
  %163 = load double, double* %13, align 8, !dbg !402
  %164 = load double, double* %14, align 8, !dbg !403
  %165 = fadd double %163, %164, !dbg !404
  call void @fAddHandler(double %163, double %164, double %165, i64 94191962531784, i64 94191962532136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962532544, i32 422, i32 27), !dbg !405
  %166 = load double, double* %15, align 8, !dbg !405
  %167 = fadd double %165, %166, !dbg !406
  call void @fAddHandler(double %165, double %166, double %167, i64 94191962532544, i64 94191962532936, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962533344, i32 422, i32 32), !dbg !407
  %168 = fsub double -0.000000e+00, %167, !dbg !407
  call void @fSubHandler(double -0.000000e+00, double %167, double %168, i64 0, i64 94191962533344, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962533760, i32 422, i32 22), !dbg !408
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !408
  %170 = load double, double* %169, align 8, !dbg !408
  %171 = fadd double %168, %170, !dbg !409
  call void @fAddHandler(double %168, double %170, double %171, i64 94191962533760, i64 94191962534600, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962536272, i32 422, i32 38), !dbg !410
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !410
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 0, !dbg !411
  store double %171, double* %173, align 8, !dbg !412
  %174 = load double, double* %13, align 8, !dbg !413
  %175 = call double @fabs(double %174) #1, !dbg !414
  %176 = load double, double* %4, align 8, !dbg !415
  %177 = load double, double* %14, align 8, !dbg !416
  %178 = load double, double* %14, align 8, !dbg !417
  %179 = fmul double %177, %178, !dbg !418
  call void @fMulHandler(double %177, double %178, double %179, i64 94191962539224, i64 94191962539608, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962540016, i32 423, i32 62), !dbg !419
  %180 = fdiv double %176, %179, !dbg !419
  call void @fDivHandler(double %176, double %179, double %180, i64 94191962538840, i64 94191962540016, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962540432, i32 423, i32 58), !dbg !420
  %181 = call double @fabs(double %180) #1, !dbg !420
  %182 = fadd double %175, %181, !dbg !422
  call void @fAddHandler(double %175, double %181, double %182, i64 94191962538384, i64 94191962540912, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962541392, i32 423, i32 50), !dbg !423
  %183 = load double, double* %4, align 8, !dbg !423
  %184 = load double, double* %15, align 8, !dbg !424
  %185 = load double, double* %15, align 8, !dbg !425
  %186 = fmul double %184, %185, !dbg !426
  call void @fMulHandler(double %184, double %185, double %186, i64 94191962542168, i64 94191962542552, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962542960, i32 423, i32 80), !dbg !427
  %187 = fdiv double %183, %186, !dbg !427
  call void @fDivHandler(double %183, double %186, double %187, i64 94191962541784, i64 94191962542960, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962543376, i32 423, i32 76), !dbg !428
  %188 = call double @fabs(double %187) #1, !dbg !428
  %189 = fadd double %182, %188, !dbg !430
  call void @fAddHandler(double %182, double %188, double %189, i64 94191962541392, i64 94191962543856, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962544336, i32 423, i32 68), !dbg !431
  %190 = fmul double 0x3CB0000000000000, %189, !dbg !431
  call void @fMulHandler(double 0x3CB0000000000000, double %189, double %190, i64 0, i64 94191962544336, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962544752, i32 423, i32 38), !dbg !432
  %191 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !432
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %191, i32 0, i32 1, !dbg !433
  store double %190, double* %192, align 8, !dbg !434
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !435
  %194 = load double, double* %193, align 8, !dbg !435
  %195 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !436
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %195, i32 0, i32 1, !dbg !437
  %197 = load double, double* %196, align 8, !dbg !438
  %198 = fadd double %197, %194, !dbg !438
  call void @fAddHandler(double %197, double %194, double %198, i64 94191962549320, i64 94191962546840, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962549728, i32 424, i32 19), !dbg !438
  store double %198, double* %196, align 8, !dbg !438
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !439
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 0, !dbg !440
  %201 = load double, double* %200, align 8, !dbg !440
  %202 = call double @fabs(double %201) #1, !dbg !441
  %203 = fmul double 0x3CB0000000000000, %202, !dbg !442
  call void @fMulHandler(double 0x3CB0000000000000, double %202, double %203, i64 0, i64 94191962554080, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962554560, i32 425, i32 38), !dbg !443
  %204 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !443
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %204, i32 0, i32 1, !dbg !444
  %206 = load double, double* %205, align 8, !dbg !445
  %207 = fadd double %206, %203, !dbg !445
  call void @fAddHandler(double %206, double %203, double %207, i64 94191962555784, i64 94191962554560, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962556192, i32 425, i32 19), !dbg !445
  store double %207, double* %205, align 8, !dbg !445
  store i32 0, i32* %3, align 4, !dbg !446
  br label %305, !dbg !446

; <label>:208:                                    ; preds = %145
  %209 = load double, double* %4, align 8, !dbg !447
  %210 = fcmp olt double %209, 0.000000e+00, !dbg !449
  %211 = call i1 @fCmpInstHandler(double %209, double 0.000000e+00, i1 %210, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962560384, i32 428, i32 15), !dbg !450
  br i1 %211, label %212, label %259, !dbg !450

; <label>:212:                                    ; preds = %208
  call void @llvm.dbg.declare(metadata double* %16, metadata !451, metadata !108), !dbg !453
  %213 = load double, double* %4, align 8, !dbg !454
  %214 = fadd double %213, 1.000000e+00, !dbg !455
  call void @fAddHandler(double %213, double 1.000000e+00, double %214, i64 94191962562552, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962562960, i32 429, i32 27), !dbg !453
  store double %214, double* %16, align 8, !dbg !453
  call void @llvm.dbg.declare(metadata double* %17, metadata !456, metadata !108), !dbg !457
  %215 = load double, double* %4, align 8, !dbg !458
  %216 = fdiv double 1.000000e+00, %215, !dbg !459
  call void @fDivHandler(double 1.000000e+00, double %215, double %216, i64 0, i64 94191962568184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962568592, i32 430, i32 28), !dbg !457
  store double %216, double* %17, align 8, !dbg !457
  call void @llvm.dbg.declare(metadata double* %18, metadata !460, metadata !108), !dbg !461
  %217 = load double, double* %16, align 8, !dbg !462
  %218 = fdiv double 1.000000e+00, %217, !dbg !463
  call void @fDivHandler(double 1.000000e+00, double %217, double %218, i64 0, i64 94191962571752, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962572160, i32 431, i32 28), !dbg !461
  store double %218, double* %18, align 8, !dbg !461
  %219 = load double, double* %16, align 8, !dbg !464
  %220 = fmul double 2.000000e+00, %219, !dbg !465
  call void @fMulHandler(double 2.000000e+00, double %219, double %220, i64 0, i64 94191962574200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962574640, i32 432, i32 31), !dbg !466
  %221 = fsub double %220, 1.000000e+00, !dbg !466
  call void @fSubHandler(double %220, double 1.000000e+00, double %221, i64 94191962574640, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962575056, i32 432, i32 33), !dbg !467
  %222 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @psi_cs, double %221, %struct.gsl_sf_result_struct* %11), !dbg !467
  %223 = load double, double* %17, align 8, !dbg !468
  %224 = load double, double* %18, align 8, !dbg !469
  %225 = fadd double %223, %224, !dbg !470
  call void @fAddHandler(double %223, double %224, double %225, i64 94191962576008, i64 94191962576360, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962576768, i32 434, i32 27), !dbg !471
  %226 = fsub double -0.000000e+00, %225, !dbg !471
  call void @fSubHandler(double -0.000000e+00, double %225, double %226, i64 0, i64 94191962576768, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962577184, i32 434, i32 22), !dbg !472
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !472
  %228 = load double, double* %227, align 8, !dbg !472
  %229 = fadd double %226, %228, !dbg !473
  call void @fAddHandler(double %226, double %228, double %229, i64 94191962577184, i64 94191962578024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962579696, i32 434, i32 33), !dbg !474
  %230 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !474
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %230, i32 0, i32 0, !dbg !475
  store double %229, double* %231, align 8, !dbg !476
  %232 = load double, double* %17, align 8, !dbg !477
  %233 = call double @fabs(double %232) #1, !dbg !478
  %234 = load double, double* %4, align 8, !dbg !479
  %235 = load double, double* %18, align 8, !dbg !480
  %236 = load double, double* %18, align 8, !dbg !481
  %237 = fmul double %235, %236, !dbg !482
  call void @fMulHandler(double %235, double %236, double %237, i64 94191962582648, i64 94191962583032, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962583440, i32 435, i32 62), !dbg !483
  %238 = fdiv double %234, %237, !dbg !483
  call void @fDivHandler(double %234, double %237, double %238, i64 94191962582264, i64 94191962583440, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962583856, i32 435, i32 58), !dbg !484
  %239 = call double @fabs(double %238) #1, !dbg !484
  %240 = fadd double %233, %239, !dbg !486
  call void @fAddHandler(double %233, double %239, double %240, i64 94191962581808, i64 94191962584336, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962584816, i32 435, i32 50), !dbg !487
  %241 = fmul double 0x3CB0000000000000, %240, !dbg !487
  call void @fMulHandler(double 0x3CB0000000000000, double %240, double %241, i64 0, i64 94191962584816, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962585232, i32 435, i32 38), !dbg !488
  %242 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !488
  %243 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %242, i32 0, i32 1, !dbg !489
  store double %241, double* %243, align 8, !dbg !490
  %244 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !491
  %245 = load double, double* %244, align 8, !dbg !491
  %246 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !492
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %246, i32 0, i32 1, !dbg !493
  %248 = load double, double* %247, align 8, !dbg !494
  %249 = fadd double %248, %245, !dbg !494
  call void @fAddHandler(double %248, double %245, double %249, i64 94191962589800, i64 94191962587320, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962590208, i32 436, i32 19), !dbg !494
  store double %249, double* %247, align 8, !dbg !494
  %250 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !495
  %251 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %250, i32 0, i32 0, !dbg !496
  %252 = load double, double* %251, align 8, !dbg !496
  %253 = call double @fabs(double %252) #1, !dbg !497
  %254 = fmul double 0x3CB0000000000000, %253, !dbg !498
  call void @fMulHandler(double 0x3CB0000000000000, double %253, double %254, i64 0, i64 94191962594560, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962595040, i32 437, i32 38), !dbg !499
  %255 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !499
  %256 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %255, i32 0, i32 1, !dbg !500
  %257 = load double, double* %256, align 8, !dbg !501
  %258 = fadd double %257, %254, !dbg !501
  call void @fAddHandler(double %257, double %254, double %258, i64 94191962596264, i64 94191962595040, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962596672, i32 437, i32 19), !dbg !501
  store double %258, double* %256, align 8, !dbg !501
  store i32 0, i32* %3, align 4, !dbg !502
  br label %305, !dbg !502

; <label>:259:                                    ; preds = %208
  %260 = load double, double* %4, align 8, !dbg !503
  %261 = fcmp olt double %260, 1.000000e+00, !dbg !505
  %262 = call i1 @fCmpInstHandler(double %260, double 1.000000e+00, i1 %261, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962600896, i32 440, i32 15), !dbg !506
  br i1 %262, label %263, label %296, !dbg !506

; <label>:263:                                    ; preds = %259
  call void @llvm.dbg.declare(metadata double* %19, metadata !507, metadata !108), !dbg !509
  %264 = load double, double* %4, align 8, !dbg !510
  %265 = fdiv double 1.000000e+00, %264, !dbg !511
  call void @fDivHandler(double 1.000000e+00, double %264, double %265, i64 0, i64 94191962603032, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962603440, i32 441, i32 28), !dbg !509
  store double %265, double* %19, align 8, !dbg !509
  %266 = load double, double* %4, align 8, !dbg !512
  %267 = fmul double 2.000000e+00, %266, !dbg !513
  call void @fMulHandler(double 2.000000e+00, double %266, double %267, i64 0, i64 94191962502968, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962607968, i32 442, i32 31), !dbg !514
  %268 = fsub double %267, 1.000000e+00, !dbg !514
  call void @fSubHandler(double %267, double 1.000000e+00, double %268, i64 94191962607968, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962608384, i32 442, i32 33), !dbg !515
  %269 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @psi_cs, double %268, %struct.gsl_sf_result_struct* %11), !dbg !515
  %270 = load double, double* %19, align 8, !dbg !516
  %271 = fsub double -0.000000e+00, %270, !dbg !517
  call void @fSubHandler(double -0.000000e+00, double %270, double %271, i64 0, i64 94191962609336, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962609712, i32 444, i32 22), !dbg !518
  %272 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !518
  %273 = load double, double* %272, align 8, !dbg !518
  %274 = fadd double %271, %273, !dbg !519
  call void @fAddHandler(double %271, double %273, double %274, i64 94191962609712, i64 94191962610552, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962612224, i32 444, i32 26), !dbg !520
  %275 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !520
  %276 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %275, i32 0, i32 0, !dbg !521
  store double %274, double* %276, align 8, !dbg !522
  %277 = load double, double* %19, align 8, !dbg !523
  %278 = fmul double 0x3CB0000000000000, %277, !dbg !524
  call void @fMulHandler(double 0x3CB0000000000000, double %277, double %278, i64 0, i64 94191962613864, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962614272, i32 445, i32 38), !dbg !525
  %279 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !525
  %280 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %279, i32 0, i32 1, !dbg !526
  store double %278, double* %280, align 8, !dbg !527
  %281 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !528
  %282 = load double, double* %281, align 8, !dbg !528
  %283 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !529
  %284 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %283, i32 0, i32 1, !dbg !530
  %285 = load double, double* %284, align 8, !dbg !531
  %286 = fadd double %285, %282, !dbg !531
  call void @fAddHandler(double %285, double %282, double %286, i64 94191962618840, i64 94191962616360, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962619248, i32 446, i32 19), !dbg !531
  store double %286, double* %284, align 8, !dbg !531
  %287 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !532
  %288 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %287, i32 0, i32 0, !dbg !533
  %289 = load double, double* %288, align 8, !dbg !533
  %290 = call double @fabs(double %289) #1, !dbg !534
  %291 = fmul double 0x3CB0000000000000, %290, !dbg !535
  call void @fMulHandler(double 0x3CB0000000000000, double %290, double %291, i64 0, i64 94191962623600, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962624080, i32 447, i32 38), !dbg !536
  %292 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !536
  %293 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %292, i32 0, i32 1, !dbg !537
  %294 = load double, double* %293, align 8, !dbg !538
  %295 = fadd double %294, %291, !dbg !538
  call void @fAddHandler(double %294, double %291, double %295, i64 94191962625304, i64 94191962624080, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962625712, i32 447, i32 19), !dbg !538
  store double %295, double* %293, align 8, !dbg !538
  store i32 0, i32* %3, align 4, !dbg !539
  br label %305, !dbg !539

; <label>:296:                                    ; preds = %259
  call void @llvm.dbg.declare(metadata double* %20, metadata !540, metadata !108), !dbg !542
  %297 = load double, double* %4, align 8, !dbg !543
  %298 = fsub double %297, 1.000000e+00, !dbg !544
  call void @fSubHandler(double %297, double 1.000000e+00, double %298, i64 94191962630616, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962631024, i32 451, i32 26), !dbg !542
  store double %298, double* %20, align 8, !dbg !542
  %299 = load double, double* %20, align 8, !dbg !545
  %300 = fmul double 2.000000e+00, %299, !dbg !546
  call void @fMulHandler(double 2.000000e+00, double %299, double %300, i64 0, i64 94191962633064, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962633504, i32 452, i32 38), !dbg !547
  %301 = fsub double %300, 1.000000e+00, !dbg !547
  call void @fSubHandler(double %300, double 1.000000e+00, double %301, i64 94191962633504, i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0), i64 94191962633920, i32 452, i32 40), !dbg !548
  %302 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !548
  %303 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @psi_cs, double %301, %struct.gsl_sf_result_struct* %302), !dbg !549
  store i32 %303, i32* %3, align 4, !dbg !550
  br label %305, !dbg !550

; <label>:304:                                    ; preds = %144
  br label %305

; <label>:305:                                    ; preds = %304, %296, %263, %212, %149, %120, %78, %75, %42, %40
  %306 = load i32, i32* %3, align 4, !dbg !551
  ret i32 %306, !dbg !551
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_psi_1piy_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !552 {
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
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !553, metadata !108), !dbg !554
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !555, metadata !108), !dbg !556
  call void @llvm.dbg.declare(metadata double* %6, metadata !557, metadata !108), !dbg !558
  %27 = load double, double* %4, align 8, !dbg !559
  %28 = call double @fabs(double %27) #1, !dbg !560
  store double %28, double* %6, align 8, !dbg !558
  %29 = load double, double* %6, align 8, !dbg !561
  %30 = fcmp ogt double %29, 1.000000e+03, !dbg !563
  %31 = call i1 @fCmpInstHandler(double %29, double 1.000000e+03, i1 %30, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962645376, i32 624, i32 9), !dbg !564
  br i1 %31, label %32, label %62, !dbg !564

; <label>:32:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %7, metadata !565, metadata !108), !dbg !567
  %33 = load double, double* %6, align 8, !dbg !568
  %34 = load double, double* %6, align 8, !dbg !569
  %35 = fmul double %33, %34, !dbg !570
  call void @fMulHandler(double %33, double %34, double %35, i64 94191962647512, i64 94191962647864, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962648272, i32 626, i32 31), !dbg !571
  %36 = fdiv double 1.000000e+00, %35, !dbg !571
  call void @fDivHandler(double 1.000000e+00, double %35, double %36, i64 0, i64 94191962648272, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962648720, i32 626, i32 27), !dbg !567
  store double %36, double* %7, align 8, !dbg !567
  call void @llvm.dbg.declare(metadata double* %8, metadata !572, metadata !108), !dbg !573
  %37 = load double, double* %6, align 8, !dbg !574
  %38 = call double @log(double %37) #7, !dbg !575
  call void @callOneArgHandler(i32 12, double %37, double %38, i64 94191962651880, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962652320, i32 627, i32 24), !dbg !573
  store double %38, double* %8, align 8, !dbg !573
  call void @llvm.dbg.declare(metadata double* %9, metadata !576, metadata !108), !dbg !577
  %39 = load double, double* %7, align 8, !dbg !578
  %40 = load double, double* %7, align 8, !dbg !579
  %41 = fmul double 0x3F81111111111111, %40, !dbg !580
  call void @fMulHandler(double 0x3F81111111111111, double %40, double %41, i64 0, i64 94191962655928, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962656336, i32 628, i32 52), !dbg !581
  %42 = fadd double 0x3FB5555555555555, %41, !dbg !581
  call void @fAddHandler(double 0x3FB5555555555555, double %41, double %42, i64 0, i64 94191962656336, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962656816, i32 628, i32 40), !dbg !582
  %43 = load double, double* %7, align 8, !dbg !582
  %44 = fmul double 0x3F70410410410410, %43, !dbg !583
  call void @fMulHandler(double 0x3F70410410410410, double %43, double %44, i64 0, i64 94191962657208, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962657680, i32 628, i32 70), !dbg !584
  %45 = load double, double* %7, align 8, !dbg !584
  %46 = fmul double %44, %45, !dbg !585
  call void @fMulHandler(double %44, double %45, double %46, i64 94191962657680, i64 94191962658072, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962658480, i32 628, i32 75), !dbg !586
  %47 = fadd double %42, %46, !dbg !586
  call void @fAddHandler(double %42, double %46, double %47, i64 94191962656816, i64 94191962658480, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962658896, i32 628, i32 58), !dbg !587
  %48 = fmul double %39, %47, !dbg !587
  call void @fMulHandler(double %39, double %47, double %48, i64 94191962655576, i64 94191962658896, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962659312, i32 628, i32 28), !dbg !577
  store double %48, double* %9, align 8, !dbg !577
  %49 = load double, double* %8, align 8, !dbg !588
  %50 = load double, double* %9, align 8, !dbg !589
  %51 = fadd double %49, %50, !dbg !590
  call void @fAddHandler(double %49, double %50, double %51, i64 94191962661384, i64 94191962661768, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962662176, i32 629, i32 23), !dbg !591
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !591
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !592
  store double %51, double* %53, align 8, !dbg !593
  %54 = load double, double* %8, align 8, !dbg !594
  %55 = call double @fabs(double %54) #1, !dbg !595
  %56 = load double, double* %9, align 8, !dbg !596
  %57 = call double @fabs(double %56) #1, !dbg !597
  %58 = fadd double %55, %57, !dbg !599
  call void @fAddHandler(double %55, double %57, double %58, i64 94191962664288, i64 94191962665216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962665696, i32 630, i32 54), !dbg !600
  %59 = fmul double 0x3CC0000000000000, %58, !dbg !600
  call void @fMulHandler(double 0x3CC0000000000000, double %58, double %59, i64 0, i64 94191962665696, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962666176, i32 630, i32 41), !dbg !601
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !601
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !602
  store double %59, double* %61, align 8, !dbg !603
  store i32 0, i32* %3, align 4, !dbg !604
  br label %223, !dbg !604

; <label>:62:                                     ; preds = %2
  %63 = load double, double* %6, align 8, !dbg !605
  %64 = fcmp ogt double %63, 1.000000e+01, !dbg !607
  %65 = call i1 @fCmpInstHandler(double %63, double 1.000000e+01, i1 %64, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962670464, i32 633, i32 14), !dbg !608
  br i1 %65, label %66, label %103, !dbg !608

; <label>:66:                                     ; preds = %62
  call void @llvm.dbg.declare(metadata double* %10, metadata !609, metadata !108), !dbg !611
  %67 = load double, double* %6, align 8, !dbg !612
  %68 = load double, double* %6, align 8, !dbg !613
  %69 = fmul double %67, %68, !dbg !614
  call void @fMulHandler(double %67, double %68, double %69, i64 94191962672600, i64 94191962672952, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962673360, i32 635, i32 31), !dbg !615
  %70 = fdiv double 1.000000e+00, %69, !dbg !615
  call void @fDivHandler(double 1.000000e+00, double %69, double %70, i64 0, i64 94191962673360, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962673808, i32 635, i32 27), !dbg !611
  store double %70, double* %10, align 8, !dbg !611
  call void @llvm.dbg.declare(metadata double* %11, metadata !616, metadata !108), !dbg !617
  %71 = load double, double* %6, align 8, !dbg !618
  %72 = call double @log(double %71) #7, !dbg !619
  call void @callOneArgHandler(i32 12, double %71, double %72, i64 94191962676968, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962677408, i32 636, i32 24), !dbg !617
  store double %72, double* %11, align 8, !dbg !617
  call void @llvm.dbg.declare(metadata double* %12, metadata !620, metadata !108), !dbg !621
  %73 = load double, double* %10, align 8, !dbg !622
  %74 = load double, double* %10, align 8, !dbg !623
  %75 = load double, double* %10, align 8, !dbg !624
  %76 = load double, double* %10, align 8, !dbg !625
  %77 = load double, double* %10, align 8, !dbg !626
  %78 = load double, double* %10, align 8, !dbg !627
  %79 = fmul double 0x3F95995995995996, %78, !dbg !628
  call void @fMulHandler(double 0x3F95995995995996, double %78, double %79, i64 0, i64 94191962682552, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962683024, i32 641, i32 65), !dbg !629
  %80 = fadd double 0x3F7F07C1F07C1F08, %79, !dbg !629
  call void @fAddHandler(double 0x3F7F07C1F07C1F08, double %79, double %80, i64 0, i64 94191962683024, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962683504, i32 641, i32 49), !dbg !630
  %81 = fmul double %77, %80, !dbg !630
  call void @fMulHandler(double %77, double %80, double %81, i64 94191962682168, i64 94191962683504, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962683920, i32 641, i32 36), !dbg !631
  %82 = fadd double 0x3F71111111111111, %81, !dbg !631
  call void @fAddHandler(double 0x3F71111111111111, double %81, double %82, i64 0, i64 94191962683920, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962684336, i32 640, i32 47), !dbg !632
  %83 = fmul double %76, %82, !dbg !632
  call void @fMulHandler(double %76, double %82, double %83, i64 94191962681784, i64 94191962684336, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962684752, i32 640, i32 34), !dbg !633
  %84 = fadd double 0x3F70410410410410, %83, !dbg !633
  call void @fAddHandler(double 0x3F70410410410410, double %83, double %84, i64 0, i64 94191962684752, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962685168, i32 639, i32 45), !dbg !634
  %85 = fmul double %75, %84, !dbg !634
  call void @fMulHandler(double %75, double %84, double %85, i64 94191962681400, i64 94191962685168, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962685584, i32 639, i32 32), !dbg !635
  %86 = fadd double 0x3F81111111111111, %85, !dbg !635
  call void @fAddHandler(double 0x3F81111111111111, double %85, double %86, i64 0, i64 94191962685584, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962686000, i32 638, i32 43), !dbg !636
  %87 = fmul double %74, %86, !dbg !636
  call void @fMulHandler(double %74, double %86, double %87, i64 94191962681016, i64 94191962686000, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962686416, i32 638, i32 30), !dbg !637
  %88 = fadd double 0x3FB5555555555555, %87, !dbg !637
  call void @fAddHandler(double 0x3FB5555555555555, double %87, double %88, i64 0, i64 94191962686416, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962686832, i32 637, i32 40), !dbg !638
  %89 = fmul double %73, %88, !dbg !638
  call void @fMulHandler(double %73, double %88, double %89, i64 94191962680664, i64 94191962686832, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962687248, i32 637, i32 28), !dbg !621
  store double %89, double* %12, align 8, !dbg !621
  %90 = load double, double* %11, align 8, !dbg !639
  %91 = load double, double* %12, align 8, !dbg !640
  %92 = fadd double %90, %91, !dbg !641
  call void @fAddHandler(double %90, double %91, double %92, i64 94191962689320, i64 94191962689704, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962690112, i32 642, i32 23), !dbg !642
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !642
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 0, !dbg !643
  store double %92, double* %94, align 8, !dbg !644
  %95 = load double, double* %11, align 8, !dbg !645
  %96 = call double @fabs(double %95) #1, !dbg !646
  %97 = load double, double* %12, align 8, !dbg !647
  %98 = call double @fabs(double %97) #1, !dbg !648
  %99 = fadd double %96, %98, !dbg !650
  call void @fAddHandler(double %96, double %98, double %99, i64 94191962692224, i64 94191962693152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962693632, i32 643, i32 54), !dbg !651
  %100 = fmul double 0x3CC0000000000000, %99, !dbg !651
  call void @fMulHandler(double 0x3CC0000000000000, double %99, double %100, i64 0, i64 94191962693632, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962694048, i32 643, i32 41), !dbg !652
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !652
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !653
  store double %100, double* %102, align 8, !dbg !654
  store i32 0, i32* %3, align 4, !dbg !655
  br label %223, !dbg !655

; <label>:103:                                    ; preds = %62
  %104 = load double, double* %6, align 8, !dbg !656
  %105 = fcmp ogt double %104, 1.000000e+00, !dbg !658
  %106 = call i1 @fCmpInstHandler(double %104, double 1.000000e+00, i1 %105, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962698128, i32 646, i32 14), !dbg !659
  br i1 %106, label %107, label %162, !dbg !659

; <label>:107:                                    ; preds = %103
  call void @llvm.dbg.declare(metadata double* %13, metadata !660, metadata !108), !dbg !662
  %108 = load double, double* %6, align 8, !dbg !663
  %109 = load double, double* %6, align 8, !dbg !664
  %110 = fmul double %108, %109, !dbg !665
  call void @fMulHandler(double %108, double %109, double %110, i64 94191962700264, i64 94191962700616, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962701024, i32 647, i32 25), !dbg !662
  store double %110, double* %13, align 8, !dbg !662
  call void @llvm.dbg.declare(metadata double* %14, metadata !666, metadata !108), !dbg !667
  %111 = load double, double* %6, align 8, !dbg !668
  %112 = fmul double 2.000000e+00, %111, !dbg !669
  call void @fMulHandler(double 2.000000e+00, double %111, double %112, i64 0, i64 94191962704216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962704624, i32 648, i32 27), !dbg !670
  %113 = fsub double %112, 1.100000e+01, !dbg !670
  call void @fSubHandler(double %112, double 1.100000e+01, double %113, i64 94191962704624, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962705104, i32 648, i32 31), !dbg !671
  %114 = fdiv double %113, 9.000000e+00, !dbg !671
  call void @fDivHandler(double %113, double 9.000000e+00, double %114, i64 94191962705104, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962705584, i32 648, i32 38), !dbg !667
  store double %114, double* %14, align 8, !dbg !667
  call void @llvm.dbg.declare(metadata double* %15, metadata !672, metadata !108), !dbg !673
  %115 = load double, double* %13, align 8, !dbg !674
  %116 = load double, double* %13, align 8, !dbg !675
  %117 = fadd double 1.000000e+00, %116, !dbg !676
  call void @fAddHandler(double 1.000000e+00, double %116, double %117, i64 0, i64 94191962709096, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962709536, i32 649, i32 35), !dbg !677
  %118 = fdiv double 1.000000e+00, %117, !dbg !677
  call void @fDivHandler(double 1.000000e+00, double %117, double %118, i64 0, i64 94191962709536, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962709952, i32 649, i32 30), !dbg !678
  %119 = load double, double* %13, align 8, !dbg !678
  %120 = fadd double 4.000000e+00, %119, !dbg !679
  call void @fAddHandler(double 4.000000e+00, double %119, double %120, i64 0, i64 94191962710312, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962710816, i32 649, i32 50), !dbg !680
  %121 = fdiv double 5.000000e-01, %120, !dbg !680
  call void @fDivHandler(double 5.000000e-01, double %120, double %121, i64 0, i64 94191962710816, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962711232, i32 649, i32 45), !dbg !681
  %122 = fadd double %118, %121, !dbg !681
  call void @fAddHandler(double %118, double %121, double %122, i64 94191962709952, i64 94191962711232, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962711616, i32 649, i32 40), !dbg !682
  %123 = fmul double %115, %122, !dbg !682
  call void @fMulHandler(double %115, double %122, double %123, i64 94191962708744, i64 94191962711616, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962712032, i32 649, i32 25), !dbg !673
  store double %123, double* %15, align 8, !dbg !673
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !683, metadata !108), !dbg !684
  %124 = load double, double* %14, align 8, !dbg !685
  %125 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @r1py_cs, double %124, %struct.gsl_sf_result_struct* %16), !dbg !686
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !687
  %127 = load double, double* %126, align 8, !dbg !687
  %128 = fsub double %127, 0x3FE2788CFC6FB619, !dbg !688
  call void @fSubHandler(double %127, double 0x3FE2788CFC6FB619, double %128, i64 94191962716584, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962718320, i32 652, i32 33), !dbg !689
  %129 = load double, double* %15, align 8, !dbg !689
  %130 = fadd double %128, %129, !dbg !690
  call void @fAddHandler(double %128, double %129, double %130, i64 94191962718320, i64 94191962718712, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962719120, i32 652, i32 43), !dbg !691
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !691
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 0, !dbg !692
  store double %130, double* %132, align 8, !dbg !693
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !694
  %134 = load double, double* %133, align 8, !dbg !694
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !695
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 1, !dbg !696
  store double %134, double* %136, align 8, !dbg !697
  %137 = load double, double* %15, align 8, !dbg !698
  %138 = call double @fabs(double %137) #1, !dbg !699
  %139 = fadd double %138, 0x3FE2788CFC6FB619, !dbg !700
  call void @fAddHandler(double %138, double 0x3FE2788CFC6FB619, double %139, i64 94191962726640, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962727120, i32 654, i32 53), !dbg !701
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !701
  %141 = load double, double* %140, align 8, !dbg !701
  %142 = call double @fabs(double %141) #1, !dbg !702
  %143 = fadd double %139, %142, !dbg !704
  call void @fAddHandler(double %139, double %142, double %143, i64 94191962727120, i64 94191962729696, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962730176, i32 654, i32 63), !dbg !705
  %144 = fmul double 0x3CC0000000000000, %143, !dbg !705
  call void @fMulHandler(double 0x3CC0000000000000, double %143, double %144, i64 0, i64 94191962730176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962730592, i32 654, i32 42), !dbg !706
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !706
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 1, !dbg !707
  %147 = load double, double* %146, align 8, !dbg !708
  %148 = fadd double %147, %144, !dbg !708
  call void @fAddHandler(double %147, double %144, double %148, i64 94191962731816, i64 94191962730592, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962732224, i32 654, i32 17), !dbg !708
  store double %148, double* %146, align 8, !dbg !708
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !709
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 0, !dbg !710
  %151 = load double, double* %150, align 8, !dbg !710
  %152 = call double @fabs(double %151) #1, !dbg !711
  %153 = fmul double 0x3CC0000000000000, %152, !dbg !712
  call void @fMulHandler(double 0x3CC0000000000000, double %152, double %153, i64 0, i64 94191962736576, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962737056, i32 655, i32 42), !dbg !713
  %154 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !713
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %154, i32 0, i32 1, !dbg !714
  %156 = load double, double* %155, align 8, !dbg !715
  %157 = fadd double %156, %153, !dbg !715
  call void @fAddHandler(double %156, double %153, double %157, i64 94191962738280, i64 94191962737056, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962738688, i32 655, i32 17), !dbg !715
  store double %157, double* %155, align 8, !dbg !715
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !716
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 1, !dbg !717
  %160 = load double, double* %159, align 8, !dbg !718
  %161 = fmul double %160, 5.000000e+00, !dbg !718
  call void @fMulHandler(double %160, double 5.000000e+00, double %161, i64 94191962741304, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962741808, i32 656, i32 17), !dbg !718
  store double %161, double* %159, align 8, !dbg !718
  store i32 0, i32* %3, align 4, !dbg !719
  br label %223, !dbg !719

; <label>:162:                                    ; preds = %103
  call void @llvm.dbg.declare(metadata i32* %17, metadata !720, metadata !108), !dbg !722
  store i32 50, i32* %17, align 4, !dbg !722
  call void @llvm.dbg.declare(metadata double* %18, metadata !723, metadata !108), !dbg !724
  %163 = load double, double* %4, align 8, !dbg !725
  %164 = load double, double* %4, align 8, !dbg !726
  %165 = fmul double %163, %164, !dbg !727
  call void @fMulHandler(double %163, double %164, double %165, i64 94191962749512, i64 94191962749864, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962750272, i32 672, i32 24), !dbg !724
  store double %165, double* %18, align 8, !dbg !724
  call void @llvm.dbg.declare(metadata double* %19, metadata !728, metadata !108), !dbg !729
  store double 0x3F29B202BB4B83AC, double* %19, align 8, !dbg !729
  call void @llvm.dbg.declare(metadata double* %20, metadata !730, metadata !108), !dbg !731
  store double 0x3E64A151E0278CCF, double* %20, align 8, !dbg !731
  call void @llvm.dbg.declare(metadata double* %21, metadata !732, metadata !108), !dbg !733
  store double 0x3DA614EA0A67BC29, double* %21, align 8, !dbg !733
  call void @llvm.dbg.declare(metadata double* %22, metadata !734, metadata !108), !dbg !735
  store double 0x3CEA961904954325, double* %22, align 8, !dbg !735
  call void @llvm.dbg.declare(metadata double* %23, metadata !736, metadata !108), !dbg !737
  %166 = load double, double* %18, align 8, !dbg !738
  %167 = load double, double* %18, align 8, !dbg !739
  %168 = load double, double* %18, align 8, !dbg !740
  %169 = fmul double %168, 0x3CEA961904954325, !dbg !741
  call void @fMulHandler(double %168, double 0x3CEA961904954325, double %169, i64 94191962765528, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962765936, i32 677, i32 50), !dbg !742
  %170 = fsub double 0x3DA614EA0A67BC29, %169, !dbg !742
  call void @fSubHandler(double 0x3DA614EA0A67BC29, double %169, double %170, i64 0, i64 94191962765936, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962766352, i32 677, i32 46), !dbg !743
  %171 = fmul double %167, %170, !dbg !743
  call void @fMulHandler(double %167, double %170, double %171, i64 94191962765144, i64 94191962766352, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962766768, i32 677, i32 41), !dbg !744
  %172 = fadd double 0xBE64A151E0278CCF, %171, !dbg !744
  call void @fAddHandler(double 0xBE64A151E0278CCF, double %171, double %172, i64 0, i64 94191962766768, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962767248, i32 677, i32 37), !dbg !745
  %173 = fmul double %166, %172, !dbg !745
  call void @fMulHandler(double %166, double %172, double %173, i64 94191962764792, i64 94191962767248, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962767664, i32 677, i32 31), !dbg !746
  %174 = fadd double 0x3F29B202BB4B83AC, %173, !dbg !746
  call void @fAddHandler(double 0x3F29B202BB4B83AC, double %173, double %174, i64 0, i64 94191962767664, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962768080, i32 677, i32 26), !dbg !737
  store double %174, double* %23, align 8, !dbg !737
  call void @llvm.dbg.declare(metadata double* %24, metadata !747, metadata !108), !dbg !748
  store double 0.000000e+00, double* %24, align 8, !dbg !748
  call void @llvm.dbg.declare(metadata double* %25, metadata !749, metadata !108), !dbg !750
  call void @llvm.dbg.declare(metadata i32* %26, metadata !751, metadata !108), !dbg !752
  store i32 1, i32* %26, align 4, !dbg !753
  br label %175, !dbg !755

; <label>:175:                                    ; preds = %195, %162
  %176 = load i32, i32* %26, align 4, !dbg !756
  %177 = icmp sle i32 %176, 50, !dbg !759
  %178 = sext i32 %176 to i64, !dbg !760
  %179 = call i1 @iCmpInstHandler(i64 %178, i64 50, i1 %177, i32 41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962780496, i32 682, i32 15), !dbg !760
  br i1 %179, label %180, label %198, !dbg !760

; <label>:180:                                    ; preds = %175
  %181 = load i32, i32* %26, align 4, !dbg !761
  %182 = sitofp i32 %181 to double, !dbg !761
  %183 = load i32, i32* %26, align 4, !dbg !763
  %184 = load i32, i32* %26, align 4, !dbg !764
  %185 = mul nsw i32 %183, %184, !dbg !765
  %186 = sitofp i32 %185 to double, !dbg !763
  %187 = load double, double* %4, align 8, !dbg !766
  %188 = load double, double* %4, align 8, !dbg !767
  %189 = fmul double %187, %188, !dbg !768
  call void @fMulHandler(double %187, double %188, double %189, i64 94191962786408, i64 94191962786792, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962787200, i32 683, i32 31), !dbg !769
  %190 = fadd double %186, %189, !dbg !769
  call void @fAddHandler(double %186, double %189, double %190, i64 94191962784760, i64 94191962787200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962787616, i32 683, i32 28), !dbg !770
  %191 = fmul double %182, %190, !dbg !770
  call void @fMulHandler(double %182, double %190, double %191, i64 94191962781928, i64 94191962787616, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962788032, i32 683, i32 21), !dbg !771
  %192 = fdiv double 1.000000e+00, %191, !dbg !771
  call void @fDivHandler(double 1.000000e+00, double %191, double %192, i64 0, i64 94191962788032, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962788480, i32 683, i32 17), !dbg !772
  %193 = load double, double* %24, align 8, !dbg !772
  %194 = fadd double %193, %192, !dbg !772
  call void @fAddHandler(double %193, double %192, double %194, i64 94191962788840, i64 94191962788480, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962789248, i32 683, i32 11), !dbg !772
  store double %194, double* %24, align 8, !dbg !772
  br label %195, !dbg !773

; <label>:195:                                    ; preds = %180
  %196 = load i32, i32* %26, align 4, !dbg !774
  %197 = add nsw i32 %196, 1, !dbg !774
  store i32 %197, i32* %26, align 4, !dbg !774
  br label %175, !dbg !776, !llvm.loop !777

; <label>:198:                                    ; preds = %175
  %199 = load double, double* %18, align 8, !dbg !779
  %200 = load double, double* %24, align 8, !dbg !780
  %201 = load double, double* %23, align 8, !dbg !781
  %202 = fadd double %200, %201, !dbg !782
  call void @fAddHandler(double %200, double %201, double %202, i64 94191962794680, i64 94191962795064, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962795472, i32 686, i32 19), !dbg !783
  %203 = fmul double %199, %202, !dbg !783
  call void @fMulHandler(double %199, double %202, double %203, i64 94191962794360, i64 94191962795472, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962795888, i32 686, i32 12), !dbg !784
  store double %203, double* %25, align 8, !dbg !784
  %204 = load double, double* %25, align 8, !dbg !785
  %205 = fadd double 0xBFE2788CFC6FB619, %204, !dbg !786
  call void @fAddHandler(double 0xBFE2788CFC6FB619, double %204, double %205, i64 0, i64 94191962796696, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962797104, i32 687, i32 29), !dbg !787
  %206 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !787
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %206, i32 0, i32 0, !dbg !788
  store double %205, double* %207, align 8, !dbg !789
  %208 = load double, double* %25, align 8, !dbg !790
  %209 = call double @fabs(double %208) #1, !dbg !791
  %210 = fadd double 0x3FE2788CFC6FB619, %209, !dbg !792
  call void @fAddHandler(double 0x3FE2788CFC6FB619, double %209, double %210, i64 0, i64 94191962799216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962799696, i32 688, i32 47), !dbg !793
  %211 = fmul double 0x3CB0000000000000, %210, !dbg !793
  call void @fMulHandler(double 0x3CB0000000000000, double %210, double %211, i64 0, i64 94191962799696, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962800112, i32 688, i32 36), !dbg !794
  %212 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !794
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %212, i32 0, i32 1, !dbg !795
  store double %211, double* %213, align 8, !dbg !796
  %214 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !797
  %215 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %214, i32 0, i32 0, !dbg !798
  %216 = load double, double* %215, align 8, !dbg !798
  %217 = call double @fabs(double %216) #1, !dbg !799
  %218 = fmul double 0x3CC0000000000000, %217, !dbg !800
  call void @fMulHandler(double 0x3CC0000000000000, double %217, double %218, i64 0, i64 94191962804320, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962804800, i32 689, i32 42), !dbg !801
  %219 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !801
  %220 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %219, i32 0, i32 1, !dbg !802
  %221 = load double, double* %220, align 8, !dbg !803
  %222 = fadd double %221, %218, !dbg !803
  call void @fAddHandler(double %221, double %218, double %222, i64 94191962806024, i64 94191962804800, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0), i64 94191962806432, i32 689, i32 17), !dbg !803
  store double %222, double* %220, align 8, !dbg !803
  store i32 0, i32* %3, align 4, !dbg !804
  br label %223, !dbg !804

; <label>:223:                                    ; preds = %198, %107, %66, %32
  %224 = load i32, i32* %3, align 4, !dbg !805
  ret i32 %224, !dbg !805
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #5 !dbg !806 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !812, metadata !108), !dbg !813
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !814, metadata !108), !dbg !815
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !816, metadata !108), !dbg !817
  call void @llvm.dbg.declare(metadata i32* %7, metadata !818, metadata !108), !dbg !819
  call void @llvm.dbg.declare(metadata double* %8, metadata !820, metadata !108), !dbg !821
  store double 0.000000e+00, double* %8, align 8, !dbg !821
  call void @llvm.dbg.declare(metadata double* %9, metadata !822, metadata !108), !dbg !823
  store double 0.000000e+00, double* %9, align 8, !dbg !823
  call void @llvm.dbg.declare(metadata double* %10, metadata !824, metadata !108), !dbg !825
  %15 = load double, double* %5, align 8, !dbg !826
  %16 = fmul double 2.000000e+00, %15, !dbg !827
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94191962445480, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962823936, i32 11, i32 19), !dbg !828
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !828
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !829
  %19 = load double, double* %18, align 8, !dbg !829
  %20 = fsub double %16, %19, !dbg !830
  call void @fSubHandler(double %16, double %19, double %20, i64 94191962823936, i64 94191962825192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962826864, i32 11, i32 22), !dbg !831
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !831
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !832
  %23 = load double, double* %22, align 8, !dbg !832
  %24 = fsub double %20, %23, !dbg !833
  call void @fSubHandler(double %20, double %23, double %24, i64 94191962826864, i64 94191962828152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962829824, i32 11, i32 30), !dbg !834
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !834
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !835
  %27 = load double, double* %26, align 8, !dbg !835
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !836
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !837
  %30 = load double, double* %29, align 8, !dbg !837
  %31 = fsub double %27, %30, !dbg !838
  call void @fSubHandler(double %27, double %30, double %31, i64 94191962831048, i64 94191962833528, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962835200, i32 11, i32 48), !dbg !839
  %32 = fdiv double %24, %31, !dbg !839
  call void @fDivHandler(double %24, double %31, double %32, i64 94191962829824, i64 94191962835200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962835616, i32 11, i32 39), !dbg !825
  store double %32, double* %10, align 8, !dbg !825
  call void @llvm.dbg.declare(metadata double* %11, metadata !840, metadata !108), !dbg !841
  %33 = load double, double* %10, align 8, !dbg !842
  %34 = fmul double 2.000000e+00, %33, !dbg !843
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94191962838664, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962839072, i32 12, i32 19), !dbg !841
  store double %34, double* %11, align 8, !dbg !841
  call void @llvm.dbg.declare(metadata double* %12, metadata !844, metadata !108), !dbg !845
  store double 0.000000e+00, double* %12, align 8, !dbg !845
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !846
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !848
  %37 = load i32, i32* %36, align 8, !dbg !848
  store i32 %37, i32* %7, align 4, !dbg !849
  br label %38, !dbg !850

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !851
  %40 = icmp sge i32 %39, 1, !dbg !854
  %41 = sext i32 %39 to i64, !dbg !855
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962847648, i32 16, i32 23), !dbg !855
  br i1 %42, label %43, label %80, !dbg !855

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !856, metadata !108), !dbg !858
  %44 = load double, double* %8, align 8, !dbg !859
  store double %44, double* %13, align 8, !dbg !858
  %45 = load double, double* %11, align 8, !dbg !860
  %46 = load double, double* %8, align 8, !dbg !861
  %47 = fmul double %45, %46, !dbg !862
  call void @fMulHandler(double %45, double %46, double %47, i64 94191962851848, i64 94191962852232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962852640, i32 18, i32 11), !dbg !863
  %48 = load double, double* %9, align 8, !dbg !863
  %49 = fsub double %47, %48, !dbg !864
  call void @fSubHandler(double %47, double %48, double %49, i64 94191962852640, i64 94191962853032, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962853440, i32 18, i32 14), !dbg !865
  %50 = load i32, i32* %7, align 4, !dbg !865
  %51 = sext i32 %50 to i64, !dbg !866
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !866
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !867
  %54 = load double*, double** %53, align 8, !dbg !867
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !866
  %56 = load double, double* %55, align 8, !dbg !866
  %57 = fadd double %49, %56, !dbg !868
  call void @fAddHandler(double %49, double %56, double %57, i64 94191962853440, i64 94191962858488, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962858608, i32 18, i32 19), !dbg !869
  store double %57, double* %8, align 8, !dbg !869
  %58 = load double, double* %11, align 8, !dbg !870
  %59 = load double, double* %13, align 8, !dbg !871
  %60 = fmul double %58, %59, !dbg !872
  call void @fMulHandler(double %58, double %59, double %60, i64 94191962859416, i64 94191962859800, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962860208, i32 19, i32 17), !dbg !873
  %61 = call double @fabs(double %60) #1, !dbg !873
  %62 = load double, double* %9, align 8, !dbg !874
  %63 = call double @fabs(double %62) #1, !dbg !875
  %64 = fadd double %61, %63, !dbg !877
  call void @fAddHandler(double %61, double %63, double %64, i64 94191962860688, i64 94191962861616, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962862096, i32 19, i32 24), !dbg !878
  %65 = load i32, i32* %7, align 4, !dbg !878
  %66 = sext i32 %65 to i64, !dbg !879
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !879
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !880
  %69 = load double*, double** %68, align 8, !dbg !880
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !879
  %71 = load double, double* %70, align 8, !dbg !879
  %72 = call double @fabs(double %71) #1, !dbg !881
  %73 = fadd double %64, %72, !dbg !883
  call void @fAddHandler(double %64, double %72, double %73, i64 94191962862096, i64 94191962867328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962867808, i32 19, i32 35), !dbg !884
  %74 = load double, double* %12, align 8, !dbg !884
  %75 = fadd double %74, %73, !dbg !884
  call void @fAddHandler(double %74, double %73, double %75, i64 94191962868200, i64 94191962867808, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962868608, i32 19, i32 7), !dbg !884
  store double %75, double* %12, align 8, !dbg !884
  %76 = load double, double* %13, align 8, !dbg !885
  store double %76, double* %9, align 8, !dbg !886
  br label %77, !dbg !887

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !888
  %79 = add nsw i32 %78, -1, !dbg !888
  store i32 %79, i32* %7, align 4, !dbg !888
  br label %38, !dbg !890, !llvm.loop !891

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !893, metadata !108), !dbg !895
  %81 = load double, double* %8, align 8, !dbg !896
  store double %81, double* %14, align 8, !dbg !895
  %82 = load double, double* %10, align 8, !dbg !897
  %83 = load double, double* %8, align 8, !dbg !898
  %84 = fmul double %82, %83, !dbg !899
  call void @fMulHandler(double %82, double %83, double %84, i64 94191962877672, i64 94191962878056, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962878464, i32 25, i32 10), !dbg !900
  %85 = load double, double* %9, align 8, !dbg !900
  %86 = fsub double %84, %85, !dbg !901
  call void @fSubHandler(double %84, double %85, double %86, i64 94191962878464, i64 94191962878856, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962879264, i32 25, i32 13), !dbg !902
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !902
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !903
  %89 = load double*, double** %88, align 8, !dbg !903
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !902
  %91 = load double, double* %90, align 8, !dbg !902
  %92 = fmul double 5.000000e-01, %91, !dbg !904
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94191962883832, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962883984, i32 25, i32 24), !dbg !905
  %93 = fadd double %86, %92, !dbg !905
  call void @fAddHandler(double %86, double %92, double %93, i64 94191962879264, i64 94191962883984, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962884368, i32 25, i32 18), !dbg !906
  store double %93, double* %8, align 8, !dbg !906
  %94 = load double, double* %10, align 8, !dbg !907
  %95 = load double, double* %14, align 8, !dbg !908
  %96 = fmul double %94, %95, !dbg !909
  call void @fMulHandler(double %94, double %95, double %96, i64 94191962885176, i64 94191962885560, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962885968, i32 26, i32 16), !dbg !910
  %97 = call double @fabs(double %96) #1, !dbg !910
  %98 = load double, double* %9, align 8, !dbg !911
  %99 = call double @fabs(double %98) #1, !dbg !912
  %100 = fadd double %97, %99, !dbg !914
  call void @fAddHandler(double %97, double %99, double %100, i64 94191962886448, i64 94191962887376, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962887856, i32 26, i32 23), !dbg !915
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !915
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !916
  %103 = load double*, double** %102, align 8, !dbg !916
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !915
  %105 = load double, double* %104, align 8, !dbg !915
  %106 = call double @fabs(double %105) #1, !dbg !917
  %107 = fmul double 5.000000e-01, %106, !dbg !919
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94191962892608, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962893120, i32 26, i32 40), !dbg !920
  %108 = fadd double %100, %107, !dbg !920
  call void @fAddHandler(double %100, double %107, double %108, i64 94191962887856, i64 94191962893120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962893504, i32 26, i32 34), !dbg !921
  %109 = load double, double* %12, align 8, !dbg !921
  %110 = fadd double %109, %108, !dbg !921
  call void @fAddHandler(double %109, double %108, double %110, i64 94191962893896, i64 94191962893504, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962894304, i32 26, i32 7), !dbg !921
  store double %110, double* %12, align 8, !dbg !921
  %111 = load double, double* %8, align 8, !dbg !922
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !923
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !924
  store double %111, double* %113, align 8, !dbg !925
  %114 = load double, double* %12, align 8, !dbg !926
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !927
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94191962897720, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962898128, i32 30, i32 33), !dbg !928
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !928
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !929
  %118 = load i32, i32* %117, align 8, !dbg !929
  %119 = sext i32 %118 to i64, !dbg !930
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !930
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !931
  %122 = load double*, double** %121, align 8, !dbg !931
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !930
  %124 = load double, double* %123, align 8, !dbg !930
  %125 = call double @fabs(double %124) #1, !dbg !932
  %126 = fadd double %115, %125, !dbg !933
  call void @fAddHandler(double %115, double %125, double %126, i64 94191962898128, i64 94191962905456, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @9, i32 0, i32 0), i64 94191962905936, i32 30, i32 37), !dbg !934
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !934
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !935
  store double %126, double* %128, align 8, !dbg !936
  ret i32 0, !dbg !937
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_psi_1_int_e(i32, %struct.gsl_sf_result_struct*) #0 !dbg !938 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !939, metadata !108), !dbg !940
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !941, metadata !108), !dbg !942
  %11 = load i32, i32* %4, align 4, !dbg !943
  %12 = icmp sle i32 %11, 0, !dbg !945
  %13 = sext i32 %11 to i64, !dbg !946
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962912720, i32 698, i32 8), !dbg !946
  br i1 %14, label %15, label %24, !dbg !946

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !947, !llvm.loop !949

; <label>:16:                                     ; preds = %15
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !950
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !950
  store double 0x7FF8000000000000, double* %18, align 8, !dbg !950
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !950
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !950
  store double 0x7FF8000000000000, double* %20, align 8, !dbg !950
  br label %21, !dbg !950, !llvm.loop !953

; <label>:21:                                     ; preds = %16
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 699, i32 1), !dbg !955
  store i32 1, i32* %3, align 4, !dbg !955
  br label %85, !dbg !955
                                                  ; No predecessors!
  br label %23, !dbg !958

; <label>:23:                                     ; preds = %22
  br label %85, !dbg !960

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* %4, align 4, !dbg !961
  %26 = icmp sle i32 %25, 100, !dbg !963
  %27 = sext i32 %25 to i64, !dbg !964
  %28 = call i1 @iCmpInstHandler(i64 %27, i64 100, i1 %26, i32 41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962921424, i32 701, i32 13), !dbg !964
  br i1 %28, label %29, label %42, !dbg !964

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %4, align 4, !dbg !965
  %31 = sext i32 %30 to i64, !dbg !967
  %32 = getelementptr inbounds [101 x double], [101 x double]* @psi_1_table, i64 0, i64 %31, !dbg !967
  %33 = load double, double* %32, align 8, !dbg !967
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !968
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !969
  store double %33, double* %35, align 8, !dbg !970
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !971
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !972
  %38 = load double, double* %37, align 8, !dbg !972
  %39 = fmul double 0x3CB0000000000000, %38, !dbg !973
  call void @fMulHandler(double 0x3CB0000000000000, double %38, double %39, i64 0, i64 94191962926984, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962928656, i32 703, i32 35), !dbg !974
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !974
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !975
  store double %39, double* %41, align 8, !dbg !976
  store i32 0, i32* %3, align 4, !dbg !977
  br label %85, !dbg !977

; <label>:42:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata double* %6, metadata !978, metadata !108), !dbg !980
  store double 0xBFA1111111111111, double* %6, align 8, !dbg !980
  call void @llvm.dbg.declare(metadata double* %7, metadata !981, metadata !108), !dbg !982
  store double 0x3F98618618618618, double* %7, align 8, !dbg !982
  call void @llvm.dbg.declare(metadata double* %8, metadata !983, metadata !108), !dbg !984
  store double 0xBFA1111111111111, double* %8, align 8, !dbg !984
  call void @llvm.dbg.declare(metadata double* %9, metadata !985, metadata !108), !dbg !986
  %43 = load i32, i32* %4, align 4, !dbg !987
  %44 = sitofp i32 %43 to double, !dbg !987
  %45 = fdiv double 1.000000e+00, %44, !dbg !988
  call void @fDivHandler(double 1.000000e+00, double %44, double %45, i64 0, i64 94191962942200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962943904, i32 713, i32 28), !dbg !989
  %46 = load i32, i32* %4, align 4, !dbg !989
  %47 = sitofp i32 %46 to double, !dbg !989
  %48 = fdiv double 1.000000e+00, %47, !dbg !990
  call void @fDivHandler(double 1.000000e+00, double %47, double %48, i64 0, i64 94191962944648, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962946352, i32 713, i32 36), !dbg !991
  %49 = fmul double %45, %48, !dbg !991
  call void @fMulHandler(double %45, double %48, double %49, i64 94191962943904, i64 94191962946352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962946736, i32 713, i32 31), !dbg !986
  store double %49, double* %9, align 8, !dbg !986
  call void @llvm.dbg.declare(metadata double* %10, metadata !992, metadata !108), !dbg !993
  %50 = load double, double* %9, align 8, !dbg !994
  %51 = load double, double* %9, align 8, !dbg !995
  %52 = fmul double %50, %51, !dbg !996
  call void @fMulHandler(double %50, double %51, double %52, i64 94191962949928, i64 94191962950280, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962950688, i32 714, i32 28), !dbg !997
  %53 = load double, double* %9, align 8, !dbg !997
  %54 = load double, double* %9, align 8, !dbg !998
  %55 = fmul double 0xBFA1111111111111, %54, !dbg !999
  call void @fMulHandler(double 0xBFA1111111111111, double %54, double %55, i64 0, i64 94191962951464, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962951872, i32 714, i32 53), !dbg !1000
  %56 = fadd double 0x3F98618618618618, %55, !dbg !1000
  call void @fAddHandler(double 0x3F98618618618618, double %55, double %56, i64 0, i64 94191962951872, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962952288, i32 714, i32 49), !dbg !1001
  %57 = fmul double %53, %56, !dbg !1001
  call void @fMulHandler(double %53, double %56, double %57, i64 94191962951080, i64 94191962952288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962952704, i32 714, i32 44), !dbg !1002
  %58 = fadd double 0xBFA1111111111111, %57, !dbg !1002
  call void @fAddHandler(double 0xBFA1111111111111, double %57, double %58, i64 0, i64 94191962952704, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962953120, i32 714, i32 39), !dbg !1003
  %59 = fmul double %52, %58, !dbg !1003
  call void @fMulHandler(double %52, double %58, double %59, i64 94191962950688, i64 94191962953120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962953536, i32 714, i32 33), !dbg !993
  store double %59, double* %10, align 8, !dbg !993
  %60 = load i32, i32* %4, align 4, !dbg !1004
  %61 = sitofp i32 %60 to double, !dbg !1004
  %62 = fdiv double 5.000000e-01, %61, !dbg !1005
  call void @fDivHandler(double 5.000000e-01, double %61, double %62, i64 0, i64 94191962955992, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962957696, i32 715, i32 29), !dbg !1006
  %63 = fadd double 1.000000e+00, %62, !dbg !1006
  call void @fAddHandler(double 1.000000e+00, double %62, double %63, i64 0, i64 94191962957696, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962958112, i32 715, i32 24), !dbg !1007
  %64 = load i32, i32* %4, align 4, !dbg !1007
  %65 = sitofp i32 %64 to double, !dbg !1007
  %66 = fmul double 6.000000e+00, %65, !dbg !1008
  call void @fMulHandler(double 6.000000e+00, double %65, double %66, i64 0, i64 94191962958856, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962960624, i32 715, i32 42), !dbg !1009
  %67 = load i32, i32* %4, align 4, !dbg !1009
  %68 = sitofp i32 %67 to double, !dbg !1009
  %69 = fmul double %66, %68, !dbg !1010
  call void @fMulHandler(double %66, double %68, double %69, i64 94191962960624, i64 94191962961368, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962963040, i32 715, i32 44), !dbg !1011
  %70 = fdiv double 1.000000e+00, %69, !dbg !1011
  call void @fDivHandler(double 1.000000e+00, double %69, double %70, i64 0, i64 94191962963040, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962963488, i32 715, i32 37), !dbg !1012
  %71 = fadd double %63, %70, !dbg !1012
  call void @fAddHandler(double %63, double %70, double %71, i64 94191962958112, i64 94191962963488, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962963872, i32 715, i32 32), !dbg !1013
  %72 = load double, double* %10, align 8, !dbg !1013
  %73 = fadd double %71, %72, !dbg !1014
  call void @fAddHandler(double %71, double %72, double %73, i64 94191962963872, i64 94191962964264, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962964672, i32 715, i32 48), !dbg !1015
  %74 = load i32, i32* %4, align 4, !dbg !1015
  %75 = sitofp i32 %74 to double, !dbg !1015
  %76 = fdiv double %73, %75, !dbg !1016
  call void @fDivHandler(double %73, double %75, double %76, i64 94191962964672, i64 94191962965448, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962967120, i32 715, i32 55), !dbg !1017
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1017
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 0, !dbg !1018
  store double %76, double* %78, align 8, !dbg !1019
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1020
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !1021
  %81 = load double, double* %80, align 8, !dbg !1021
  %82 = fmul double 0x3CB0000000000000, %81, !dbg !1022
  call void @fMulHandler(double 0x3CB0000000000000, double %81, double %82, i64 0, i64 94191962969592, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @11, i32 0, i32 0), i64 94191962971264, i32 716, i32 35), !dbg !1023
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1023
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 1, !dbg !1024
  store double %82, double* %84, align 8, !dbg !1025
  store i32 0, i32* %3, align 4, !dbg !1026
  br label %85, !dbg !1026

; <label>:85:                                     ; preds = %42, %29, %23, %21
  %86 = load i32, i32* %3, align 4, !dbg !1027
  ret i32 %86, !dbg !1027
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_psi_1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !1028 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1029, metadata !108), !dbg !1030
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !1031, metadata !108), !dbg !1032
  %15 = load double, double* %4, align 8, !dbg !1033
  %16 = fcmp oeq double %15, 0.000000e+00, !dbg !1035
  %17 = call i1 @fCmpInstHandler(double %15, double 0.000000e+00, i1 %16, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191962982144, i32 726, i32 8), !dbg !1036
  br i1 %17, label %26, label %18, !dbg !1036

; <label>:18:                                     ; preds = %2
  %19 = load double, double* %4, align 8, !dbg !1037
  %20 = fcmp oeq double %19, -1.000000e+00, !dbg !1039
  %21 = call i1 @fCmpInstHandler(double %19, double -1.000000e+00, i1 %20, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191962983488, i32 726, i32 20), !dbg !1040
  br i1 %21, label %26, label %22, !dbg !1040

; <label>:22:                                     ; preds = %18
  %23 = load double, double* %4, align 8, !dbg !1041
  %24 = fcmp oeq double %23, -2.000000e+00, !dbg !1043
  %25 = call i1 @fCmpInstHandler(double %23, double -2.000000e+00, i1 %24, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191962984800, i32 726, i32 33), !dbg !1044
  br i1 %25, label %26, label %35, !dbg !1044

; <label>:26:                                     ; preds = %22, %18, %2
  br label %27, !dbg !1045, !llvm.loop !1047

; <label>:27:                                     ; preds = %26
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1048
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !1048
  store double 0x7FF8000000000000, double* %29, align 8, !dbg !1048
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1048
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !1048
  store double 0x7FF8000000000000, double* %31, align 8, !dbg !1048
  br label %32, !dbg !1048, !llvm.loop !1051

; <label>:32:                                     ; preds = %27
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 727, i32 1), !dbg !1053
  store i32 1, i32* %3, align 4, !dbg !1053
  br label %136, !dbg !1053
                                                  ; No predecessors!
  br label %34, !dbg !1056

; <label>:34:                                     ; preds = %33
  br label %136, !dbg !1058

; <label>:35:                                     ; preds = %22
  %36 = load double, double* %4, align 8, !dbg !1059
  %37 = fcmp ogt double %36, 0.000000e+00, !dbg !1061
  %38 = call i1 @fCmpInstHandler(double %36, double 0.000000e+00, i1 %37, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191962993328, i32 729, i32 13), !dbg !1062
  br i1 %38, label %39, label %43, !dbg !1062

; <label>:39:                                     ; preds = %35
  %40 = load double, double* %4, align 8, !dbg !1063
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1065
  %42 = call i32 @psi_n_xg0(i32 1, double %40, %struct.gsl_sf_result_struct* %41), !dbg !1066
  store i32 %42, i32* %3, align 4, !dbg !1067
  br label %136, !dbg !1067

; <label>:43:                                     ; preds = %35
  %44 = load double, double* %4, align 8, !dbg !1068
  %45 = fcmp ogt double %44, -5.000000e+00, !dbg !1070
  %46 = call i1 @fCmpInstHandler(double %44, double -5.000000e+00, i1 %45, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191962998480, i32 733, i32 13), !dbg !1071
  br i1 %46, label %47, label %111, !dbg !1071

; <label>:47:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1072, metadata !108), !dbg !1074
  %48 = load double, double* %4, align 8, !dbg !1075
  %49 = call double @floor(double %48) #1, !dbg !1076
  %50 = fsub double -0.000000e+00, %49, !dbg !1077
  call void @fSubHandler(double -0.000000e+00, double %49, double %50, i64 0, i64 94191963001424, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963001936, i32 736, i32 13), !dbg !1077
  %51 = fptosi double %50 to i32, !dbg !1077
  store i32 %51, i32* %6, align 4, !dbg !1074
  call void @llvm.dbg.declare(metadata double* %7, metadata !1078, metadata !108), !dbg !1079
  %52 = load double, double* %4, align 8, !dbg !1080
  %53 = load i32, i32* %6, align 4, !dbg !1081
  %54 = sitofp i32 %53 to double, !dbg !1081
  %55 = fadd double %52, %54, !dbg !1082
  call void @fAddHandler(double %52, double %54, double %55, i64 94191963006824, i64 94191963007560, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963009232, i32 737, i32 19), !dbg !1079
  store double %55, double* %7, align 8, !dbg !1079
  call void @llvm.dbg.declare(metadata double* %8, metadata !1083, metadata !108), !dbg !1084
  store double 0.000000e+00, double* %8, align 8, !dbg !1084
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1085, metadata !108), !dbg !1086
  %56 = load double, double* %7, align 8, !dbg !1087
  %57 = fcmp oeq double %56, 0.000000e+00, !dbg !1089
  %58 = call i1 @fCmpInstHandler(double %56, double 0.000000e+00, i1 %57, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963015568, i32 741, i32 11), !dbg !1090
  br i1 %58, label %59, label %68, !dbg !1090

; <label>:59:                                     ; preds = %47
  br label %60, !dbg !1091, !llvm.loop !1092

; <label>:60:                                     ; preds = %59
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1093
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !1093
  store double 0x7FF8000000000000, double* %62, align 8, !dbg !1093
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1093
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !1093
  store double 0x7FF8000000000000, double* %64, align 8, !dbg !1093
  br label %65, !dbg !1093, !llvm.loop !1096

; <label>:65:                                     ; preds = %60
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 742, i32 1), !dbg !1098
  store i32 1, i32* %3, align 4, !dbg !1098
  br label %136, !dbg !1098
                                                  ; No predecessors!
  br label %67, !dbg !1101

; <label>:67:                                     ; preds = %66
  br label %68, !dbg !1103

; <label>:68:                                     ; preds = %67, %47
  store i32 0, i32* %9, align 4, !dbg !1105
  br label %69, !dbg !1107

; <label>:69:                                     ; preds = %89, %68
  %70 = load i32, i32* %9, align 4, !dbg !1108
  %71 = load i32, i32* %6, align 4, !dbg !1111
  %72 = icmp slt i32 %70, %71, !dbg !1112
  %73 = sext i32 %70 to i64, !dbg !1113
  %74 = sext i32 %71 to i64, !dbg !1113
  %75 = call i1 @iCmpInstHandler(i64 %73, i64 %74, i1 %72, i32 40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963025392, i32 744, i32 18), !dbg !1113
  br i1 %75, label %76, label %92, !dbg !1113

; <label>:76:                                     ; preds = %69
  %77 = load double, double* %4, align 8, !dbg !1114
  %78 = load i32, i32* %9, align 4, !dbg !1115
  %79 = sitofp i32 %78 to double, !dbg !1115
  %80 = fadd double %77, %79, !dbg !1116
  call void @fAddHandler(double %77, double %79, double %80, i64 94191963026504, i64 94191963027208, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963028880, i32 745, i32 21), !dbg !1117
  %81 = load double, double* %4, align 8, !dbg !1117
  %82 = load i32, i32* %9, align 4, !dbg !1118
  %83 = sitofp i32 %82 to double, !dbg !1118
  %84 = fadd double %81, %83, !dbg !1119
  call void @fAddHandler(double %81, double %83, double %84, i64 94191963029272, i64 94191963030040, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963031712, i32 745, i32 27), !dbg !1120
  %85 = fmul double %80, %84, !dbg !1120
  call void @fMulHandler(double %80, double %84, double %85, i64 94191963028880, i64 94191963031712, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963032128, i32 745, i32 24), !dbg !1121
  %86 = fdiv double 1.000000e+00, %85, !dbg !1121
  call void @fDivHandler(double 1.000000e+00, double %85, double %86, i64 0, i64 94191963032128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963032576, i32 745, i32 17), !dbg !1122
  %87 = load double, double* %8, align 8, !dbg !1122
  %88 = fadd double %87, %86, !dbg !1122
  call void @fAddHandler(double %87, double %86, double %88, i64 94191963032936, i64 94191963032576, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963033344, i32 745, i32 11), !dbg !1122
  store double %88, double* %8, align 8, !dbg !1122
  br label %89, !dbg !1123

; <label>:89:                                     ; preds = %76
  %90 = load i32, i32* %9, align 4, !dbg !1124
  %91 = add nsw i32 %90, 1, !dbg !1124
  store i32 %91, i32* %9, align 4, !dbg !1124
  br label %69, !dbg !1126, !llvm.loop !1127

; <label>:92:                                     ; preds = %69
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1129, metadata !108), !dbg !1131
  %93 = load double, double* %7, align 8, !dbg !1132
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1133
  %95 = call i32 @psi_n_xg0(i32 1, double %93, %struct.gsl_sf_result_struct* %94), !dbg !1134
  store i32 %95, i32* %10, align 4, !dbg !1131
  %96 = load double, double* %8, align 8, !dbg !1135
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1136
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 0, !dbg !1137
  %99 = load double, double* %98, align 8, !dbg !1138
  %100 = fadd double %99, %96, !dbg !1138
  call void @fAddHandler(double %99, double %96, double %100, i64 94191963043704, i64 94191963042520, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963044112, i32 749, i32 19), !dbg !1138
  store double %100, double* %98, align 8, !dbg !1138
  %101 = load i32, i32* %6, align 4, !dbg !1139
  %102 = sitofp i32 %101 to double, !dbg !1139
  %103 = fmul double %102, 0x3CB0000000000000, !dbg !1140
  call void @fMulHandler(double %102, double 0x3CB0000000000000, double %103, i64 94191963046280, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963047952, i32 750, i32 24), !dbg !1141
  %104 = load double, double* %8, align 8, !dbg !1141
  %105 = fmul double %103, %104, !dbg !1142
  call void @fMulHandler(double %103, double %104, double %105, i64 94191963047952, i64 94191963048344, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963048752, i32 750, i32 42), !dbg !1143
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1143
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 1, !dbg !1144
  %108 = load double, double* %107, align 8, !dbg !1145
  %109 = fadd double %108, %105, !dbg !1145
  call void @fAddHandler(double %108, double %105, double %109, i64 94191963049976, i64 94191963048752, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963050384, i32 750, i32 19), !dbg !1145
  store double %109, double* %107, align 8, !dbg !1145
  %110 = load i32, i32* %10, align 4, !dbg !1146
  store i32 %110, i32* %3, align 4, !dbg !1147
  br label %136, !dbg !1147

; <label>:111:                                    ; preds = %43
  call void @llvm.dbg.declare(metadata double* %11, metadata !1148, metadata !108), !dbg !1150
  %112 = load double, double* %4, align 8, !dbg !1151
  %113 = fmul double 0x400921FB54442D18, %112, !dbg !1152
  call void @fMulHandler(double 0x400921FB54442D18, double %112, double %113, i64 0, i64 94191963055672, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963056048, i32 757, i32 36), !dbg !1153
  %114 = call double @sin(double %113) #7, !dbg !1153
  call void @callOneArgHandler(i32 1, double %113, double %114, i64 94191963056048, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963056528, i32 757, i32 27), !dbg !1150
  store double %114, double* %11, align 8, !dbg !1150
  call void @llvm.dbg.declare(metadata double* %12, metadata !1154, metadata !108), !dbg !1155
  %115 = load double, double* %11, align 8, !dbg !1156
  %116 = load double, double* %11, align 8, !dbg !1157
  %117 = fmul double %115, %116, !dbg !1158
  call void @fMulHandler(double %115, double %116, double %117, i64 94191963059784, i64 94191963060136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963060544, i32 758, i32 39), !dbg !1159
  %118 = fdiv double 0x4023BD3CC9BE45DE, %117, !dbg !1159
  call void @fDivHandler(double 0x4023BD3CC9BE45DE, double %117, double %118, i64 0, i64 94191963060544, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963061024, i32 758, i32 31), !dbg !1155
  store double %118, double* %12, align 8, !dbg !1155
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1160, metadata !108), !dbg !1161
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1162, metadata !108), !dbg !1163
  %119 = load double, double* %4, align 8, !dbg !1164
  %120 = fsub double 1.000000e+00, %119, !dbg !1165
  call void @fSubHandler(double 1.000000e+00, double %119, double %120, i64 0, i64 94191963065304, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963065712, i32 760, i32 36), !dbg !1166
  %121 = call i32 @psi_n_xg0(i32 1, double %120, %struct.gsl_sf_result_struct* %13), !dbg !1166
  store i32 %121, i32* %14, align 4, !dbg !1163
  %122 = load double, double* %12, align 8, !dbg !1167
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1168
  %124 = load double, double* %123, align 8, !dbg !1168
  %125 = fsub double %122, %124, !dbg !1169
  call void @fSubHandler(double %122, double %124, double %125, i64 94191963068344, i64 94191963069144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963070816, i32 761, i32 21), !dbg !1170
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1170
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 0, !dbg !1171
  store double %125, double* %127, align 8, !dbg !1172
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !1173
  %129 = load double, double* %128, align 8, !dbg !1173
  %130 = load double, double* %12, align 8, !dbg !1174
  %131 = fmul double 0x3CC0000000000000, %130, !dbg !1175
  call void @fMulHandler(double 0x3CC0000000000000, double %130, double %131, i64 0, i64 94191963074552, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963074960, i32 762, i32 46), !dbg !1176
  %132 = fadd double %129, %131, !dbg !1176
  call void @fAddHandler(double %129, double %131, double %132, i64 94191963072904, i64 94191963074960, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @13, i32 0, i32 0), i64 94191963075376, i32 762, i32 25), !dbg !1177
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1177
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 1, !dbg !1178
  store double %132, double* %134, align 8, !dbg !1179
  %135 = load i32, i32* %14, align 4, !dbg !1180
  store i32 %135, i32* %3, align 4, !dbg !1181
  br label %136, !dbg !1181

; <label>:136:                                    ; preds = %111, %92, %65, %39, %34, %32
  %137 = load i32, i32* %3, align 4, !dbg !1182
  ret i32 %137, !dbg !1182
}

; Function Attrs: nounwind uwtable
define internal i32 @psi_n_xg0(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !1183 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1186, metadata !108), !dbg !1187
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1188, metadata !108), !dbg !1189
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1190, metadata !108), !dbg !1191
  %13 = load i32, i32* %5, align 4, !dbg !1192
  %14 = icmp eq i32 %13, 0, !dbg !1194
  %15 = sext i32 %13 to i64, !dbg !1195
  %16 = call i1 @iCmpInstHandler(i64 %15, i64 0, i1 %14, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94191963087216, i32 561, i32 8), !dbg !1195
  br i1 %16, label %17, label %21, !dbg !1195

; <label>:17:                                     ; preds = %3
  %18 = load double, double* %6, align 8, !dbg !1196
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1198
  %20 = call i32 @gsl_sf_psi_e(double %18, %struct.gsl_sf_result_struct* %19), !dbg !1199
  store i32 %20, i32* %4, align 4, !dbg !1200
  br label %79, !dbg !1200

; <label>:21:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1201, metadata !108), !dbg !1203
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !1204, metadata !108), !dbg !1205
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1206, metadata !108), !dbg !1207
  %22 = load i32, i32* %5, align 4, !dbg !1208
  %23 = sitofp i32 %22 to double, !dbg !1208
  %24 = fadd double %23, 1.000000e+00, !dbg !1209
  call void @fAddHandler(double %23, double 1.000000e+00, double %24, i64 94191963095208, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94191963096912, i32 568, i32 35), !dbg !1210
  %25 = load double, double* %6, align 8, !dbg !1210
  %26 = call i32 @gsl_sf_hzeta_e(double %24, double %25, %struct.gsl_sf_result_struct* %9), !dbg !1211
  store i32 %26, i32* %10, align 4, !dbg !1207
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1212, metadata !108), !dbg !1213
  %27 = load i32, i32* %5, align 4, !dbg !1214
  %28 = call i32 @gsl_sf_lnfact_e(i32 %27, %struct.gsl_sf_result_struct* %8), !dbg !1215
  store i32 %28, i32* %11, align 4, !dbg !1213
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1216, metadata !108), !dbg !1217
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1218
  %30 = load double, double* %29, align 8, !dbg !1218
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1219
  %32 = load double, double* %31, align 8, !dbg !1219
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !1220
  %34 = load double, double* %33, align 8, !dbg !1220
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !1221
  %36 = load double, double* %35, align 8, !dbg !1221
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1222
  %38 = call i32 @gsl_sf_exp_mult_err_e(double %30, double %32, double %34, double %36, %struct.gsl_sf_result_struct* %37), !dbg !1223
  store i32 %38, i32* %12, align 4, !dbg !1217
  %39 = load i32, i32* %5, align 4, !dbg !1224
  %40 = and i32 %39, 1, !dbg !1224
  %41 = icmp ne i32 %40, 0, !dbg !1224
  %42 = sext i32 %40 to i64, !dbg !1226
  %43 = call i1 @iCmpInstHandler(i64 %42, i64 0, i1 %41, i32 33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94191963118896, i32 573, i32 8), !dbg !1226
  br i1 %43, label %51, label %44, !dbg !1226

; <label>:44:                                     ; preds = %21
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1227
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !1229
  %47 = load double, double* %46, align 8, !dbg !1229
  %48 = fsub double -0.000000e+00, %47, !dbg !1230
  call void @fSubHandler(double -0.000000e+00, double %47, double %48, i64 0, i64 94191963120488, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94191963122160, i32 573, i32 38), !dbg !1231
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1231
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !1232
  store double %48, double* %50, align 8, !dbg !1233
  br label %51, !dbg !1231

; <label>:51:                                     ; preds = %44, %21
  %52 = load i32, i32* %12, align 4, !dbg !1234
  %53 = icmp ne i32 %52, 0, !dbg !1234
  %54 = sext i32 %52 to i64, !dbg !1234
  %55 = call i1 @iCmpInstHandler(i64 %54, i64 0, i1 %53, i32 33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94191963125792, i32 574, i32 12), !dbg !1234
  br i1 %55, label %56, label %58, !dbg !1234

; <label>:56:                                     ; preds = %51
  %57 = load i32, i32* %12, align 4, !dbg !1235
  br label %77, !dbg !1235

; <label>:58:                                     ; preds = %51
  %59 = load i32, i32* %11, align 4, !dbg !1237
  %60 = icmp ne i32 %59, 0, !dbg !1237
  %61 = sext i32 %59 to i64, !dbg !1237
  %62 = call i1 @iCmpInstHandler(i64 %61, i64 0, i1 %60, i32 33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94191963130336, i32 574, i32 12), !dbg !1237
  br i1 %62, label %63, label %65, !dbg !1237

; <label>:63:                                     ; preds = %58
  %64 = load i32, i32* %11, align 4, !dbg !1239
  br label %75, !dbg !1239

; <label>:65:                                     ; preds = %58
  %66 = load i32, i32* %10, align 4, !dbg !1241
  %67 = icmp ne i32 %66, 0, !dbg !1241
  %68 = sext i32 %66 to i64, !dbg !1241
  %69 = call i1 @iCmpInstHandler(i64 %68, i64 0, i1 %67, i32 33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @15, i32 0, i32 0), i64 94191963134880, i32 574, i32 12), !dbg !1241
  br i1 %69, label %70, label %72, !dbg !1241

; <label>:70:                                     ; preds = %65
  %71 = load i32, i32* %10, align 4, !dbg !1243
  br label %73, !dbg !1243

; <label>:72:                                     ; preds = %65
  br label %73, !dbg !1245

; <label>:73:                                     ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ], !dbg !1247
  br label %75, !dbg !1247

; <label>:75:                                     ; preds = %73, %63
  %76 = phi i32 [ %64, %63 ], [ %74, %73 ], !dbg !1249
  br label %77, !dbg !1249

; <label>:77:                                     ; preds = %75, %56
  %78 = phi i32 [ %57, %56 ], [ %76, %75 ], !dbg !1251
  store i32 %78, i32* %4, align 4, !dbg !1253
  br label %79, !dbg !1253

; <label>:79:                                     ; preds = %77, %17
  %80 = load i32, i32* %4, align 4, !dbg !1254
  ret i32 %80, !dbg !1254
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_psi_n_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !1255 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1256, metadata !108), !dbg !1257
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1258, metadata !108), !dbg !1259
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1260, metadata !108), !dbg !1261
  %13 = load i32, i32* %5, align 4, !dbg !1262
  %14 = icmp eq i32 %13, 0, !dbg !1264
  %15 = sext i32 %13 to i64, !dbg !1265
  %16 = call i1 @iCmpInstHandler(i64 %15, i64 0, i1 %14, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94191963154384, i32 772, i32 8), !dbg !1265
  br i1 %16, label %17, label %21, !dbg !1265

; <label>:17:                                     ; preds = %3
  %18 = load double, double* %6, align 8, !dbg !1266
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1268
  %20 = call i32 @gsl_sf_psi_e(double %18, %struct.gsl_sf_result_struct* %19), !dbg !1269
  store i32 %20, i32* %4, align 4, !dbg !1270
  br label %108, !dbg !1270

; <label>:21:                                     ; preds = %3
  %22 = load i32, i32* %5, align 4, !dbg !1271
  %23 = icmp eq i32 %22, 1, !dbg !1273
  %24 = sext i32 %22 to i64, !dbg !1274
  %25 = call i1 @iCmpInstHandler(i64 %24, i64 1, i1 %23, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94191963159184, i32 776, i32 13), !dbg !1274
  br i1 %25, label %26, label %30, !dbg !1274

; <label>:26:                                     ; preds = %21
  %27 = load double, double* %6, align 8, !dbg !1275
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1277
  %29 = call i32 @gsl_sf_psi_1_e(double %27, %struct.gsl_sf_result_struct* %28), !dbg !1278
  store i32 %29, i32* %4, align 4, !dbg !1279
  br label %108, !dbg !1279

; <label>:30:                                     ; preds = %21
  %31 = load i32, i32* %5, align 4, !dbg !1280
  %32 = icmp slt i32 %31, 0, !dbg !1282
  %33 = sext i32 %31 to i64, !dbg !1283
  %34 = call i1 @iCmpInstHandler(i64 %33, i64 0, i1 %32, i32 40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94191963163792, i32 780, i32 13), !dbg !1283
  br i1 %34, label %39, label %35, !dbg !1283

; <label>:35:                                     ; preds = %30
  %36 = load double, double* %6, align 8, !dbg !1284
  %37 = fcmp ole double %36, 0.000000e+00, !dbg !1286
  %38 = call i1 @fCmpInstHandler(double %36, double 0.000000e+00, i1 %37, i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94191963165248, i32 780, i32 22), !dbg !1287
  br i1 %38, label %39, label %48, !dbg !1287

; <label>:39:                                     ; preds = %35, %30
  br label %40, !dbg !1288, !llvm.loop !1290

; <label>:40:                                     ; preds = %39
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1291
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !1291
  store double 0x7FF8000000000000, double* %42, align 8, !dbg !1291
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1291
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !1291
  store double 0x7FF8000000000000, double* %44, align 8, !dbg !1291
  br label %45, !dbg !1291, !llvm.loop !1294

; <label>:45:                                     ; preds = %40
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 781, i32 1), !dbg !1296
  store i32 1, i32* %4, align 4, !dbg !1296
  br label %108, !dbg !1296
                                                  ; No predecessors!
  br label %47, !dbg !1299

; <label>:47:                                     ; preds = %46
  br label %106, !dbg !1301

; <label>:48:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1302, metadata !108), !dbg !1304
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !1305, metadata !108), !dbg !1306
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1307, metadata !108), !dbg !1308
  %49 = load i32, i32* %5, align 4, !dbg !1309
  %50 = sitofp i32 %49 to double, !dbg !1309
  %51 = fadd double %50, 1.000000e+00, !dbg !1310
  call void @fAddHandler(double %50, double 1.000000e+00, double %51, i64 94191963177048, i64 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94191963178752, i32 786, i32 35), !dbg !1311
  %52 = load double, double* %6, align 8, !dbg !1311
  %53 = call i32 @gsl_sf_hzeta_e(double %51, double %52, %struct.gsl_sf_result_struct* %9), !dbg !1312
  store i32 %53, i32* %10, align 4, !dbg !1308
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1313, metadata !108), !dbg !1314
  %54 = load i32, i32* %5, align 4, !dbg !1315
  %55 = call i32 @gsl_sf_lnfact_e(i32 %54, %struct.gsl_sf_result_struct* %8), !dbg !1316
  store i32 %55, i32* %11, align 4, !dbg !1314
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1317, metadata !108), !dbg !1318
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1319
  %57 = load double, double* %56, align 8, !dbg !1319
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1320
  %59 = load double, double* %58, align 8, !dbg !1320
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !1321
  %61 = load double, double* %60, align 8, !dbg !1321
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !1322
  %63 = load double, double* %62, align 8, !dbg !1322
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1323
  %65 = call i32 @gsl_sf_exp_mult_err_e(double %57, double %59, double %61, double %63, %struct.gsl_sf_result_struct* %64), !dbg !1324
  store i32 %65, i32* %12, align 4, !dbg !1318
  %66 = load i32, i32* %5, align 4, !dbg !1325
  %67 = and i32 %66, 1, !dbg !1325
  %68 = icmp ne i32 %67, 0, !dbg !1325
  %69 = sext i32 %67 to i64, !dbg !1327
  %70 = call i1 @iCmpInstHandler(i64 %69, i64 0, i1 %68, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94191963199648, i32 791, i32 8), !dbg !1327
  br i1 %70, label %78, label %71, !dbg !1327

; <label>:71:                                     ; preds = %48
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1328
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !1330
  %74 = load double, double* %73, align 8, !dbg !1330
  %75 = fsub double -0.000000e+00, %74, !dbg !1331
  call void @fSubHandler(double -0.000000e+00, double %74, double %75, i64 0, i64 94191963201240, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94191963202912, i32 791, i32 38), !dbg !1332
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1332
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 0, !dbg !1333
  store double %75, double* %77, align 8, !dbg !1334
  br label %78, !dbg !1332

; <label>:78:                                     ; preds = %71, %48
  %79 = load i32, i32* %12, align 4, !dbg !1335
  %80 = icmp ne i32 %79, 0, !dbg !1335
  %81 = sext i32 %79 to i64, !dbg !1335
  %82 = call i1 @iCmpInstHandler(i64 %81, i64 0, i1 %80, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94191963206544, i32 792, i32 12), !dbg !1335
  br i1 %82, label %83, label %85, !dbg !1335

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* %12, align 4, !dbg !1336
  br label %104, !dbg !1336

; <label>:85:                                     ; preds = %78
  %86 = load i32, i32* %11, align 4, !dbg !1338
  %87 = icmp ne i32 %86, 0, !dbg !1338
  %88 = sext i32 %86 to i64, !dbg !1338
  %89 = call i1 @iCmpInstHandler(i64 %88, i64 0, i1 %87, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94191963211088, i32 792, i32 12), !dbg !1338
  br i1 %89, label %90, label %92, !dbg !1338

; <label>:90:                                     ; preds = %85
  %91 = load i32, i32* %11, align 4, !dbg !1340
  br label %102, !dbg !1340

; <label>:92:                                     ; preds = %85
  %93 = load i32, i32* %10, align 4, !dbg !1342
  %94 = icmp ne i32 %93, 0, !dbg !1342
  %95 = sext i32 %93 to i64, !dbg !1342
  %96 = call i1 @iCmpInstHandler(i64 %95, i64 0, i1 %94, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0), i64 94191963215632, i32 792, i32 12), !dbg !1342
  br i1 %96, label %97, label %99, !dbg !1342

; <label>:97:                                     ; preds = %92
  %98 = load i32, i32* %10, align 4, !dbg !1344
  br label %100, !dbg !1344

; <label>:99:                                     ; preds = %92
  br label %100, !dbg !1346

; <label>:100:                                    ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ], !dbg !1348
  br label %102, !dbg !1348

; <label>:102:                                    ; preds = %100, %90
  %103 = phi i32 [ %91, %90 ], [ %101, %100 ], !dbg !1350
  br label %104, !dbg !1350

; <label>:104:                                    ; preds = %102, %83
  %105 = phi i32 [ %84, %83 ], [ %103, %102 ], !dbg !1352
  store i32 %105, i32* %4, align 4, !dbg !1354
  br label %108, !dbg !1354

; <label>:106:                                    ; preds = %47
  br label %107

; <label>:107:                                    ; preds = %106
  br label %108

; <label>:108:                                    ; preds = %107, %104, %45, %26, %17
  %109 = load i32, i32* %4, align 4, !dbg !1355
  ret i32 %109, !dbg !1355
}

declare i32 @gsl_sf_hzeta_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_lnfact_e(i32, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_complex_psi_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1356 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_complex, align 8
  %11 = alloca %struct.gsl_complex, align 8
  %12 = alloca %struct.gsl_complex, align 8
  %13 = alloca %struct.gsl_complex, align 8
  %14 = alloca %struct.gsl_complex, align 8
  %15 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1359, metadata !108), !dbg !1360
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1361, metadata !108), !dbg !1362
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !1363, metadata !108), !dbg !1364
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1365, metadata !108), !dbg !1366
  %16 = load double, double* %6, align 8, !dbg !1367
  %17 = fcmp oge double %16, 0.000000e+00, !dbg !1369
  %18 = call i1 @fCmpInstHandler(double %16, double 0.000000e+00, i1 %17, i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @19, i32 0, i32 0), i64 94191962775136, i32 805, i32 8), !dbg !1370
  br i1 %18, label %19, label %37, !dbg !1370

; <label>:19:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %10, metadata !1371, metadata !108), !dbg !1373
  %20 = load double, double* %6, align 8, !dbg !1374
  %21 = load double, double* %7, align 8, !dbg !1375
  %22 = call { double, double } @gsl_complex_rect(double %20, double %21), !dbg !1376
  %23 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %10, i32 0, i32 0, !dbg !1376
  %24 = bitcast [2 x double]* %23 to { double, double }*, !dbg !1376
  %25 = getelementptr inbounds { double, double }, { double, double }* %24, i32 0, i32 0, !dbg !1376
  %26 = extractvalue { double, double } %22, 0, !dbg !1376
  store double %26, double* %25, align 8, !dbg !1376
  %27 = getelementptr inbounds { double, double }, { double, double }* %24, i32 0, i32 1, !dbg !1376
  %28 = extractvalue { double, double } %22, 1, !dbg !1376
  store double %28, double* %27, align 8, !dbg !1376
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1377
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1378
  %31 = bitcast %struct.gsl_complex* %10 to { double, double }*, !dbg !1379
  %32 = getelementptr inbounds { double, double }, { double, double }* %31, i32 0, i32 0, !dbg !1379
  %33 = load double, double* %32, align 8, !dbg !1379
  %34 = getelementptr inbounds { double, double }, { double, double }* %31, i32 0, i32 1, !dbg !1379
  %35 = load double, double* %34, align 8, !dbg !1379
  %36 = call i32 @psi_complex_rhp(double %33, double %35, %struct.gsl_sf_result_struct* %29, %struct.gsl_sf_result_struct* %30), !dbg !1379
  store i32 %36, i32* %5, align 4, !dbg !1380
  br label %127, !dbg !1380

; <label>:37:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %11, metadata !1381, metadata !108), !dbg !1383
  %38 = load double, double* %6, align 8, !dbg !1384
  %39 = load double, double* %7, align 8, !dbg !1385
  %40 = call { double, double } @gsl_complex_rect(double %38, double %39), !dbg !1386
  %41 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %11, i32 0, i32 0, !dbg !1386
  %42 = bitcast [2 x double]* %41 to { double, double }*, !dbg !1386
  %43 = getelementptr inbounds { double, double }, { double, double }* %42, i32 0, i32 0, !dbg !1386
  %44 = extractvalue { double, double } %40, 0, !dbg !1386
  store double %44, double* %43, align 8, !dbg !1386
  %45 = getelementptr inbounds { double, double }, { double, double }* %42, i32 0, i32 1, !dbg !1386
  %46 = extractvalue { double, double } %40, 1, !dbg !1386
  store double %46, double* %45, align 8, !dbg !1386
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %12, metadata !1387, metadata !108), !dbg !1388
  %47 = load double, double* %6, align 8, !dbg !1389
  %48 = fsub double 1.000000e+00, %47, !dbg !1390
  call void @fSubHandler(double 1.000000e+00, double %47, double %48, i64 0, i64 94191963262424, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @19, i32 0, i32 0), i64 94191963262832, i32 814, i32 44), !dbg !1391
  %49 = load double, double* %7, align 8, !dbg !1391
  %50 = fsub double -0.000000e+00, %49, !dbg !1392
  call void @fSubHandler(double -0.000000e+00, double %49, double %50, i64 0, i64 94191963263192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @19, i32 0, i32 0), i64 94191963263600, i32 814, i32 49), !dbg !1393
  %51 = call { double, double } @gsl_complex_rect(double %48, double %50), !dbg !1393
  %52 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %12, i32 0, i32 0, !dbg !1393
  %53 = bitcast [2 x double]* %52 to { double, double }*, !dbg !1393
  %54 = getelementptr inbounds { double, double }, { double, double }* %53, i32 0, i32 0, !dbg !1393
  %55 = extractvalue { double, double } %51, 0, !dbg !1393
  store double %55, double* %54, align 8, !dbg !1393
  %56 = getelementptr inbounds { double, double }, { double, double }* %53, i32 0, i32 1, !dbg !1393
  %57 = extractvalue { double, double } %51, 1, !dbg !1393
  store double %57, double* %56, align 8, !dbg !1393
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %13, metadata !1394, metadata !108), !dbg !1395
  %58 = bitcast %struct.gsl_complex* %11 to { double, double }*, !dbg !1396
  %59 = getelementptr inbounds { double, double }, { double, double }* %58, i32 0, i32 0, !dbg !1396
  %60 = load double, double* %59, align 8, !dbg !1396
  %61 = getelementptr inbounds { double, double }, { double, double }* %58, i32 0, i32 1, !dbg !1396
  %62 = load double, double* %61, align 8, !dbg !1396
  %63 = call { double, double } @gsl_complex_mul_real(double %60, double %62, double 0x400921FB54442D18), !dbg !1396
  %64 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %13, i32 0, i32 0, !dbg !1396
  %65 = bitcast [2 x double]* %64 to { double, double }*, !dbg !1396
  %66 = getelementptr inbounds { double, double }, { double, double }* %65, i32 0, i32 0, !dbg !1396
  %67 = extractvalue { double, double } %63, 0, !dbg !1396
  store double %67, double* %66, align 8, !dbg !1396
  %68 = getelementptr inbounds { double, double }, { double, double }* %65, i32 0, i32 1, !dbg !1396
  %69 = extractvalue { double, double } %63, 1, !dbg !1396
  store double %69, double* %68, align 8, !dbg !1396
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %14, metadata !1397, metadata !108), !dbg !1398
  %70 = bitcast %struct.gsl_complex* %13 to { double, double }*, !dbg !1399
  %71 = getelementptr inbounds { double, double }, { double, double }* %70, i32 0, i32 0, !dbg !1399
  %72 = load double, double* %71, align 8, !dbg !1399
  %73 = getelementptr inbounds { double, double }, { double, double }* %70, i32 0, i32 1, !dbg !1399
  %74 = load double, double* %73, align 8, !dbg !1399
  %75 = call { double, double } @gsl_complex_cot(double %72, double %74), !dbg !1399
  %76 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %14, i32 0, i32 0, !dbg !1399
  %77 = bitcast [2 x double]* %76 to { double, double }*, !dbg !1399
  %78 = getelementptr inbounds { double, double }, { double, double }* %77, i32 0, i32 0, !dbg !1399
  %79 = extractvalue { double, double } %75, 0, !dbg !1399
  store double %79, double* %78, align 8, !dbg !1399
  %80 = getelementptr inbounds { double, double }, { double, double }* %77, i32 0, i32 1, !dbg !1399
  %81 = extractvalue { double, double } %75, 1, !dbg !1399
  store double %81, double* %80, align 8, !dbg !1399
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1400, metadata !108), !dbg !1401
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1402
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1403
  %84 = bitcast %struct.gsl_complex* %12 to { double, double }*, !dbg !1404
  %85 = getelementptr inbounds { double, double }, { double, double }* %84, i32 0, i32 0, !dbg !1404
  %86 = load double, double* %85, align 8, !dbg !1404
  %87 = getelementptr inbounds { double, double }, { double, double }* %84, i32 0, i32 1, !dbg !1404
  %88 = load double, double* %87, align 8, !dbg !1404
  %89 = call i32 @psi_complex_rhp(double %86, double %88, %struct.gsl_sf_result_struct* %82, %struct.gsl_sf_result_struct* %83), !dbg !1404
  store i32 %89, i32* %15, align 4, !dbg !1401
  %90 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %14, i32 0, i32 0, !dbg !1405
  %91 = getelementptr inbounds [2 x double], [2 x double]* %90, i64 0, i64 0, !dbg !1405
  %92 = load double, double* %91, align 8, !dbg !1405
  %93 = call i32 @gsl_finite(double %92), !dbg !1405
  %94 = icmp ne i32 %93, 0, !dbg !1405
  %95 = sext i32 %93 to i64, !dbg !1407
  %96 = call i1 @iCmpInstHandler(i64 %95, i64 0, i1 %94, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @19, i32 0, i32 0), i64 94191963286864, i32 819, i32 8), !dbg !1407
  br i1 %96, label %97, label %123, !dbg !1407

; <label>:97:                                     ; preds = %37
  %98 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %14, i32 0, i32 0, !dbg !1408
  %99 = getelementptr inbounds [2 x double], [2 x double]* %98, i64 0, i64 1, !dbg !1408
  %100 = load double, double* %99, align 8, !dbg !1408
  %101 = call i32 @gsl_finite(double %100), !dbg !1408
  %102 = icmp ne i32 %101, 0, !dbg !1408
  %103 = sext i32 %101 to i64, !dbg !1410
  %104 = call i1 @iCmpInstHandler(i64 %103, i64 0, i1 %102, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @19, i32 0, i32 0), i64 94191963290192, i32 819, i32 41), !dbg !1410
  br i1 %104, label %105, label %123, !dbg !1410

; <label>:105:                                    ; preds = %97
  %106 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %14, i32 0, i32 0, !dbg !1411
  %107 = getelementptr inbounds [2 x double], [2 x double]* %106, i64 0, i64 0, !dbg !1411
  %108 = load double, double* %107, align 8, !dbg !1411
  %109 = fmul double 0x400921FB54442D18, %108, !dbg !1413
  call void @fMulHandler(double 0x400921FB54442D18, double %108, double %109, i64 0, i64 94191963292936, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @19, i32 0, i32 0), i64 94191963293056, i32 821, i32 30), !dbg !1414
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1414
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !1415
  %112 = load double, double* %111, align 8, !dbg !1416
  %113 = fsub double %112, %109, !dbg !1416
  call void @fSubHandler(double %112, double %109, double %113, i64 94191963294280, i64 94191963293056, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @19, i32 0, i32 0), i64 94191963294688, i32 821, i32 22), !dbg !1416
  store double %113, double* %111, align 8, !dbg !1416
  %114 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %14, i32 0, i32 0, !dbg !1417
  %115 = getelementptr inbounds [2 x double], [2 x double]* %114, i64 0, i64 1, !dbg !1417
  %116 = load double, double* %115, align 8, !dbg !1417
  %117 = fmul double 0x400921FB54442D18, %116, !dbg !1418
  call void @fMulHandler(double 0x400921FB54442D18, double %116, double %117, i64 0, i64 94191963298632, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @19, i32 0, i32 0), i64 94191963298752, i32 822, i32 30), !dbg !1419
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1419
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 0, !dbg !1420
  %120 = load double, double* %119, align 8, !dbg !1421
  %121 = fsub double %120, %117, !dbg !1421
  call void @fSubHandler(double %120, double %117, double %121, i64 94191963299976, i64 94191963298752, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @19, i32 0, i32 0), i64 94191963300384, i32 822, i32 22), !dbg !1421
  store double %121, double* %119, align 8, !dbg !1421
  %122 = load i32, i32* %15, align 4, !dbg !1422
  store i32 %122, i32* %5, align 4, !dbg !1423
  br label %127, !dbg !1423

; <label>:123:                                    ; preds = %97, %37
  br label %124, !dbg !1424, !llvm.loop !1426

; <label>:124:                                    ; preds = %123
  call void @gsl_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 827, i32 1), !dbg !1427
  store i32 1, i32* %5, align 4, !dbg !1427
  br label %127, !dbg !1427
                                                  ; No predecessors!
  br label %126

; <label>:126:                                    ; preds = %125
  br label %127

; <label>:127:                                    ; preds = %126, %124, %105, %19
  %128 = load i32, i32* %5, align 4, !dbg !1430
  ret i32 %128, !dbg !1430
}

declare { double, double } @gsl_complex_rect(double, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @psi_complex_rhp(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !1431 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_complex, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gsl_complex, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_complex, align 8
  %16 = alloca %struct.gsl_complex, align 8
  %17 = alloca %struct.gsl_complex, align 8
  %18 = alloca %struct.gsl_complex, align 8
  %19 = alloca %struct.gsl_complex, align 8
  %20 = bitcast %struct.gsl_complex* %6 to { double, double }*
  %21 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 0
  store double %0, double* %21, align 8
  %22 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 1
  store double %1, double* %22, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %6, metadata !1434, metadata !108), !dbg !1435
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1436, metadata !108), !dbg !1437
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !1438, metadata !108), !dbg !1439
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1440, metadata !108), !dbg !1441
  store i32 0, i32* %9, align 4, !dbg !1441
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1442, metadata !108), !dbg !1443
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %11, metadata !1444, metadata !108), !dbg !1445
  %23 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1446
  %24 = getelementptr inbounds [2 x double], [2 x double]* %23, i64 0, i64 0, !dbg !1446
  %25 = load double, double* %24, align 8, !dbg !1446
  %26 = fcmp oeq double %25, 0.000000e+00, !dbg !1448
  %27 = call i1 @fCmpInstHandler(double %25, double 0.000000e+00, i1 %26, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963324112, i32 509, i32 18), !dbg !1449
  br i1 %27, label %28, label %43, !dbg !1449

; <label>:28:                                     ; preds = %4
  %29 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1450
  %30 = getelementptr inbounds [2 x double], [2 x double]* %29, i64 0, i64 1, !dbg !1450
  %31 = load double, double* %30, align 8, !dbg !1450
  %32 = fcmp oeq double %31, 0.000000e+00, !dbg !1452
  %33 = call i1 @fCmpInstHandler(double %31, double 0.000000e+00, i1 %32, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963327440, i32 509, i32 40), !dbg !1453
  br i1 %33, label %34, label %43, !dbg !1453

; <label>:34:                                     ; preds = %28
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1454
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !1456
  store double 0.000000e+00, double* %36, align 8, !dbg !1457
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1458
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !1459
  store double 0.000000e+00, double* %38, align 8, !dbg !1460
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1461
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !1462
  store double 0.000000e+00, double* %40, align 8, !dbg !1463
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1464
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !1465
  store double 0.000000e+00, double* %42, align 8, !dbg !1466
  store i32 1, i32* %5, align 4, !dbg !1467
  br label %228, !dbg !1467

; <label>:43:                                     ; preds = %28, %4
  %44 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1468
  %45 = getelementptr inbounds [2 x double], [2 x double]* %44, i64 0, i64 0, !dbg !1468
  %46 = load double, double* %45, align 8, !dbg !1468
  %47 = fcmp olt double %46, 2.000000e+01, !dbg !1470
  %48 = call i1 @fCmpInstHandler(double %46, double 2.000000e+01, i1 %47, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963337856, i32 519, i32 18), !dbg !1471
  br i1 %48, label %49, label %82, !dbg !1471

; <label>:49:                                     ; preds = %43
  %50 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1472
  %51 = getelementptr inbounds [2 x double], [2 x double]* %50, i64 0, i64 1, !dbg !1472
  %52 = load double, double* %51, align 8, !dbg !1472
  %53 = call double @fabs(double %52) #1, !dbg !1474
  %54 = fcmp olt double %53, 2.000000e+01, !dbg !1475
  %55 = call i1 @fCmpInstHandler(double %53, double 2.000000e+01, i1 %54, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963341728, i32 519, i32 46), !dbg !1476
  br i1 %55, label %56, label %82, !dbg !1476

; <label>:56:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata double* %12, metadata !1477, metadata !108), !dbg !1479
  %57 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1480
  %58 = getelementptr inbounds [2 x double], [2 x double]* %57, i64 0, i64 1, !dbg !1480
  %59 = load double, double* %58, align 8, !dbg !1480
  %60 = fadd double 2.000000e+01, %59, !dbg !1481
  call void @fAddHandler(double 2.000000e+01, double %59, double %60, i64 0, i64 94191963345848, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963346000, i32 521, i32 33), !dbg !1482
  %61 = call double @sqrt(double %60) #7, !dbg !1482
  call void @callOneArgHandler(i32 14, double %60, double %61, i64 94191963346000, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963346720, i32 521, i32 23), !dbg !1479
  store double %61, double* %12, align 8, !dbg !1479
  call void @llvm.dbg.declare(metadata double* %13, metadata !1483, metadata !108), !dbg !1484
  %62 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1485
  %63 = getelementptr inbounds [2 x double], [2 x double]* %62, i64 0, i64 1, !dbg !1485
  %64 = load double, double* %63, align 8, !dbg !1485
  %65 = fsub double 2.000000e+01, %64, !dbg !1486
  call void @fSubHandler(double 2.000000e+01, double %64, double %65, i64 0, i64 94191963352184, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963352336, i32 522, i32 33), !dbg !1487
  %66 = call double @sqrt(double %65) #7, !dbg !1487
  call void @callOneArgHandler(i32 14, double %65, double %66, i64 94191963352336, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963352784, i32 522, i32 23), !dbg !1484
  store double %66, double* %13, align 8, !dbg !1484
  call void @llvm.dbg.declare(metadata double* %14, metadata !1488, metadata !108), !dbg !1489
  %67 = load double, double* %12, align 8, !dbg !1490
  %68 = load double, double* %13, align 8, !dbg !1491
  %69 = fmul double %67, %68, !dbg !1492
  call void @fMulHandler(double %67, double %68, double %69, i64 94191963356040, i64 94191963356392, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963356800, i32 523, i32 26), !dbg !1493
  %70 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1493
  %71 = getelementptr inbounds [2 x double], [2 x double]* %70, i64 0, i64 0, !dbg !1493
  %72 = load double, double* %71, align 8, !dbg !1493
  %73 = fsub double %69, %72, !dbg !1494
  call void @fSubHandler(double %69, double %72, double %73, i64 94191963356800, i64 94191963359352, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963359472, i32 523, i32 30), !dbg !1489
  store double %73, double* %14, align 8, !dbg !1489
  %74 = load double, double* %14, align 8, !dbg !1495
  %75 = fcmp ogt double %74, 0.000000e+00, !dbg !1497
  %76 = call i1 @fCmpInstHandler(double %74, double 0.000000e+00, i1 %75, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963361952, i32 524, i32 12), !dbg !1498
  br i1 %76, label %77, label %81, !dbg !1498

; <label>:77:                                     ; preds = %56
  %78 = load double, double* %14, align 8, !dbg !1499
  %79 = call double @ceil(double %78) #1, !dbg !1501
  %80 = fptosi double %79 to i32, !dbg !1501
  store i32 %80, i32* %9, align 4, !dbg !1502
  br label %81, !dbg !1503

; <label>:81:                                     ; preds = %77, %56
  br label %82, !dbg !1504

; <label>:82:                                     ; preds = %81, %49, %43
  %83 = load i32, i32* %9, align 4, !dbg !1505
  %84 = sitofp i32 %83 to double, !dbg !1505
  %85 = bitcast %struct.gsl_complex* %6 to { double, double }*, !dbg !1506
  %86 = getelementptr inbounds { double, double }, { double, double }* %85, i32 0, i32 0, !dbg !1506
  %87 = load double, double* %86, align 8, !dbg !1506
  %88 = getelementptr inbounds { double, double }, { double, double }* %85, i32 0, i32 1, !dbg !1506
  %89 = load double, double* %88, align 8, !dbg !1506
  %90 = call { double, double } @gsl_complex_add_real(double %87, double %89, double %84), !dbg !1506
  %91 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %15, i32 0, i32 0, !dbg !1506
  %92 = bitcast [2 x double]* %91 to { double, double }*, !dbg !1506
  %93 = getelementptr inbounds { double, double }, { double, double }* %92, i32 0, i32 0, !dbg !1506
  %94 = extractvalue { double, double } %90, 0, !dbg !1506
  store double %94, double* %93, align 8, !dbg !1506
  %95 = getelementptr inbounds { double, double }, { double, double }* %92, i32 0, i32 1, !dbg !1506
  %96 = extractvalue { double, double } %90, 1, !dbg !1506
  store double %96, double* %95, align 8, !dbg !1506
  %97 = bitcast %struct.gsl_complex* %15 to { double, double }*, !dbg !1507
  %98 = getelementptr inbounds { double, double }, { double, double }* %97, i32 0, i32 0, !dbg !1507
  %99 = load double, double* %98, align 8, !dbg !1507
  %100 = getelementptr inbounds { double, double }, { double, double }* %97, i32 0, i32 1, !dbg !1507
  %101 = load double, double* %100, align 8, !dbg !1507
  %102 = call { double, double } @psi_complex_asymp(double %99, double %101), !dbg !1508
  %103 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %16, i32 0, i32 0, !dbg !1507
  %104 = bitcast [2 x double]* %103 to { double, double }*, !dbg !1507
  %105 = getelementptr inbounds { double, double }, { double, double }* %104, i32 0, i32 0, !dbg !1507
  %106 = extractvalue { double, double } %102, 0, !dbg !1507
  store double %106, double* %105, align 8, !dbg !1507
  %107 = getelementptr inbounds { double, double }, { double, double }* %104, i32 0, i32 1, !dbg !1507
  %108 = extractvalue { double, double } %102, 1, !dbg !1507
  store double %108, double* %107, align 8, !dbg !1507
  %109 = bitcast %struct.gsl_complex* %11 to i8*, !dbg !1507
  %110 = bitcast %struct.gsl_complex* %16 to i8*, !dbg !1507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %109, i8* %110, i64 16, i32 8, i1 false), !dbg !1510
  %111 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %11, i32 0, i32 0, !dbg !1512
  %112 = getelementptr inbounds [2 x double], [2 x double]* %111, i64 0, i64 0, !dbg !1512
  %113 = load double, double* %112, align 8, !dbg !1512
  %114 = call double @fabs(double %113) #1, !dbg !1513
  %115 = fmul double 0x3CC0000000000000, %114, !dbg !1514
  call void @fMulHandler(double 0x3CC0000000000000, double %114, double %115, i64 0, i64 94191963385664, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963386144, i32 530, i32 42), !dbg !1515
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1515
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 1, !dbg !1516
  store double %115, double* %117, align 8, !dbg !1517
  %118 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %11, i32 0, i32 0, !dbg !1518
  %119 = getelementptr inbounds [2 x double], [2 x double]* %118, i64 0, i64 1, !dbg !1518
  %120 = load double, double* %119, align 8, !dbg !1518
  %121 = call double @fabs(double %120) #1, !dbg !1519
  %122 = fmul double 0x3CC0000000000000, %121, !dbg !1520
  call void @fMulHandler(double 0x3CC0000000000000, double %121, double %122, i64 0, i64 94191963390128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963390608, i32 531, i32 42), !dbg !1521
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1521
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 1, !dbg !1522
  store double %122, double* %124, align 8, !dbg !1523
  %125 = load i32, i32* %9, align 4, !dbg !1524
  store i32 %125, i32* %10, align 4, !dbg !1526
  br label %126, !dbg !1527

; <label>:126:                                    ; preds = %196, %82
  %127 = load i32, i32* %10, align 4, !dbg !1528
  %128 = icmp sge i32 %127, 1, !dbg !1531
  %129 = sext i32 %127 to i64, !dbg !1532
  %130 = call i1 @iCmpInstHandler(i64 %129, i64 1, i1 %128, i32 39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963393920, i32 534, i32 24), !dbg !1532
  br i1 %130, label %131, label %199, !dbg !1532

; <label>:131:                                    ; preds = %126
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %17, metadata !1533, metadata !108), !dbg !1535
  %132 = load i32, i32* %10, align 4, !dbg !1536
  %133 = sitofp i32 %132 to double, !dbg !1536
  %134 = fsub double %133, 1.000000e+00, !dbg !1537
  call void @fSubHandler(double %133, double 1.000000e+00, double %134, i64 94191963396488, i64 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963398192, i32 536, i32 48), !dbg !1538
  %135 = bitcast %struct.gsl_complex* %6 to { double, double }*, !dbg !1538
  %136 = getelementptr inbounds { double, double }, { double, double }* %135, i32 0, i32 0, !dbg !1538
  %137 = load double, double* %136, align 8, !dbg !1538
  %138 = getelementptr inbounds { double, double }, { double, double }* %135, i32 0, i32 1, !dbg !1538
  %139 = load double, double* %138, align 8, !dbg !1538
  %140 = call { double, double } @gsl_complex_add_real(double %137, double %139, double %134), !dbg !1538
  %141 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %17, i32 0, i32 0, !dbg !1538
  %142 = bitcast [2 x double]* %141 to { double, double }*, !dbg !1538
  %143 = getelementptr inbounds { double, double }, { double, double }* %142, i32 0, i32 0, !dbg !1538
  %144 = extractvalue { double, double } %140, 0, !dbg !1538
  store double %144, double* %143, align 8, !dbg !1538
  %145 = getelementptr inbounds { double, double }, { double, double }* %142, i32 0, i32 1, !dbg !1538
  %146 = extractvalue { double, double } %140, 1, !dbg !1538
  store double %146, double* %145, align 8, !dbg !1538
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %18, metadata !1539, metadata !108), !dbg !1540
  %147 = bitcast %struct.gsl_complex* %17 to { double, double }*, !dbg !1541
  %148 = getelementptr inbounds { double, double }, { double, double }* %147, i32 0, i32 0, !dbg !1541
  %149 = load double, double* %148, align 8, !dbg !1541
  %150 = getelementptr inbounds { double, double }, { double, double }* %147, i32 0, i32 1, !dbg !1541
  %151 = load double, double* %150, align 8, !dbg !1541
  %152 = call { double, double } @gsl_complex_inverse(double %149, double %151), !dbg !1541
  %153 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %18, i32 0, i32 0, !dbg !1541
  %154 = bitcast [2 x double]* %153 to { double, double }*, !dbg !1541
  %155 = getelementptr inbounds { double, double }, { double, double }* %154, i32 0, i32 0, !dbg !1541
  %156 = extractvalue { double, double } %152, 0, !dbg !1541
  store double %156, double* %155, align 8, !dbg !1541
  %157 = getelementptr inbounds { double, double }, { double, double }* %154, i32 0, i32 1, !dbg !1541
  %158 = extractvalue { double, double } %152, 1, !dbg !1541
  store double %158, double* %157, align 8, !dbg !1541
  %159 = bitcast %struct.gsl_complex* %11 to { double, double }*, !dbg !1542
  %160 = getelementptr inbounds { double, double }, { double, double }* %159, i32 0, i32 0, !dbg !1542
  %161 = load double, double* %160, align 8, !dbg !1542
  %162 = getelementptr inbounds { double, double }, { double, double }* %159, i32 0, i32 1, !dbg !1542
  %163 = load double, double* %162, align 8, !dbg !1542
  %164 = bitcast %struct.gsl_complex* %18 to { double, double }*, !dbg !1542
  %165 = getelementptr inbounds { double, double }, { double, double }* %164, i32 0, i32 0, !dbg !1542
  %166 = load double, double* %165, align 8, !dbg !1542
  %167 = getelementptr inbounds { double, double }, { double, double }* %164, i32 0, i32 1, !dbg !1542
  %168 = load double, double* %167, align 8, !dbg !1542
  %169 = call { double, double } @gsl_complex_sub(double %161, double %163, double %166, double %168), !dbg !1542
  %170 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %19, i32 0, i32 0, !dbg !1542
  %171 = bitcast [2 x double]* %170 to { double, double }*, !dbg !1542
  %172 = getelementptr inbounds { double, double }, { double, double }* %171, i32 0, i32 0, !dbg !1542
  %173 = extractvalue { double, double } %169, 0, !dbg !1542
  store double %173, double* %172, align 8, !dbg !1542
  %174 = getelementptr inbounds { double, double }, { double, double }* %171, i32 0, i32 1, !dbg !1542
  %175 = extractvalue { double, double } %169, 1, !dbg !1542
  store double %175, double* %174, align 8, !dbg !1542
  %176 = bitcast %struct.gsl_complex* %11 to i8*, !dbg !1542
  %177 = bitcast %struct.gsl_complex* %19 to i8*, !dbg !1542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %176, i8* %177, i64 16, i32 8, i1 false), !dbg !1543
  %178 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %18, i32 0, i32 0, !dbg !1545
  %179 = getelementptr inbounds [2 x double], [2 x double]* %178, i64 0, i64 0, !dbg !1545
  %180 = load double, double* %179, align 8, !dbg !1545
  %181 = call double @fabs(double %180) #1, !dbg !1546
  %182 = fmul double 0x3CC0000000000000, %181, !dbg !1547
  call void @fMulHandler(double 0x3CC0000000000000, double %181, double %182, i64 0, i64 94191963417728, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963418208, i32 541, i32 45), !dbg !1548
  %183 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1548
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %183, i32 0, i32 1, !dbg !1549
  %185 = load double, double* %184, align 8, !dbg !1550
  %186 = fadd double %185, %182, !dbg !1550
  call void @fAddHandler(double %185, double %182, double %186, i64 94191963419432, i64 94191963418208, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963419840, i32 541, i32 20), !dbg !1550
  store double %186, double* %184, align 8, !dbg !1550
  %187 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %18, i32 0, i32 0, !dbg !1551
  %188 = getelementptr inbounds [2 x double], [2 x double]* %187, i64 0, i64 1, !dbg !1551
  %189 = load double, double* %188, align 8, !dbg !1551
  %190 = call double @fabs(double %189) #1, !dbg !1552
  %191 = fmul double 0x3CC0000000000000, %190, !dbg !1553
  call void @fMulHandler(double 0x3CC0000000000000, double %190, double %191, i64 0, i64 94191963423968, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963424448, i32 542, i32 45), !dbg !1554
  %192 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1554
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %192, i32 0, i32 1, !dbg !1555
  %194 = load double, double* %193, align 8, !dbg !1556
  %195 = fadd double %194, %191, !dbg !1556
  call void @fAddHandler(double %194, double %191, double %195, i64 94191963425672, i64 94191963424448, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963426080, i32 542, i32 20), !dbg !1556
  store double %195, double* %193, align 8, !dbg !1556
  br label %196, !dbg !1557

; <label>:196:                                    ; preds = %131
  %197 = load i32, i32* %10, align 4, !dbg !1558
  %198 = add nsw i32 %197, -1, !dbg !1558
  store i32 %198, i32* %10, align 4, !dbg !1558
  br label %126, !dbg !1560, !llvm.loop !1561

; <label>:199:                                    ; preds = %126
  %200 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %11, i32 0, i32 0, !dbg !1563
  %201 = getelementptr inbounds [2 x double], [2 x double]* %200, i64 0, i64 0, !dbg !1563
  %202 = load double, double* %201, align 8, !dbg !1563
  %203 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1564
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %203, i32 0, i32 0, !dbg !1565
  store double %202, double* %204, align 8, !dbg !1566
  %205 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %11, i32 0, i32 0, !dbg !1567
  %206 = getelementptr inbounds [2 x double], [2 x double]* %205, i64 0, i64 1, !dbg !1567
  %207 = load double, double* %206, align 8, !dbg !1567
  %208 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1568
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %208, i32 0, i32 0, !dbg !1569
  store double %207, double* %209, align 8, !dbg !1570
  %210 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1571
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %210, i32 0, i32 0, !dbg !1572
  %212 = load double, double* %211, align 8, !dbg !1572
  %213 = call double @fabs(double %212) #1, !dbg !1573
  %214 = fmul double 0x3CC0000000000000, %213, !dbg !1574
  call void @fMulHandler(double 0x3CC0000000000000, double %213, double %214, i64 0, i64 94191963440704, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963441184, i32 548, i32 43), !dbg !1575
  %215 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1575
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %215, i32 0, i32 1, !dbg !1576
  %217 = load double, double* %216, align 8, !dbg !1577
  %218 = fadd double %217, %214, !dbg !1577
  call void @fAddHandler(double %217, double %214, double %218, i64 94191963442408, i64 94191963441184, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963442816, i32 548, i32 18), !dbg !1577
  store double %218, double* %216, align 8, !dbg !1577
  %219 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1578
  %220 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %219, i32 0, i32 0, !dbg !1579
  %221 = load double, double* %220, align 8, !dbg !1579
  %222 = call double @fabs(double %221) #1, !dbg !1580
  %223 = fmul double 0x3CC0000000000000, %222, !dbg !1581
  call void @fMulHandler(double 0x3CC0000000000000, double %222, double %223, i64 0, i64 94191963447168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963447648, i32 549, i32 43), !dbg !1582
  %224 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1582
  %225 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %224, i32 0, i32 1, !dbg !1583
  %226 = load double, double* %225, align 8, !dbg !1584
  %227 = fadd double %226, %223, !dbg !1584
  call void @fAddHandler(double %226, double %223, double %227, i64 94191963448872, i64 94191963447648, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @21, i32 0, i32 0), i64 94191963449280, i32 549, i32 18), !dbg !1584
  store double %227, double* %225, align 8, !dbg !1584
  store i32 0, i32* %5, align 4, !dbg !1585
  br label %228, !dbg !1585

; <label>:228:                                    ; preds = %199, %34
  %229 = load i32, i32* %5, align 4, !dbg !1586
  ret i32 %229, !dbg !1586
}

declare { double, double } @gsl_complex_mul_real(double, double, double) #2

declare { double, double } @gsl_complex_cot(double, double) #2

declare i32 @gsl_finite(double) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_psi_int(i32) #0 !dbg !1587 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1590, metadata !108), !dbg !1591
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1592, metadata !108), !dbg !1593
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1594, metadata !108), !dbg !1593
  %6 = load i32, i32* %3, align 4, !dbg !1593
  %7 = call i32 @gsl_sf_psi_int_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !1593
  store i32 %7, i32* %5, align 4, !dbg !1593
  %8 = load i32, i32* %5, align 4, !dbg !1595
  %9 = icmp ne i32 %8, 0, !dbg !1595
  %10 = sext i32 %8 to i64, !dbg !1593
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @23, i32 0, i32 0), i64 94191963460592, i32 840, i32 3), !dbg !1593
  br i1 %11, label %12, label %18, !dbg !1593

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1597, !llvm.loop !1600

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1602
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 840, i32 %14), !dbg !1602
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1602
  %16 = load double, double* %15, align 8, !dbg !1602
  store double %16, double* %2, align 8, !dbg !1602
  br label %21, !dbg !1602
                                                  ; No predecessors!
  br label %18, !dbg !1605

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1607
  %20 = load double, double* %19, align 8, !dbg !1607
  store double %20, double* %2, align 8, !dbg !1607
  br label %21, !dbg !1607

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1609
  ret double %22, !dbg !1609
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_psi(double) #0 !dbg !1610 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1613, metadata !108), !dbg !1614
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1615, metadata !108), !dbg !1616
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1617, metadata !108), !dbg !1616
  %6 = load double, double* %3, align 8, !dbg !1616
  %7 = call i32 @gsl_sf_psi_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1616
  store i32 %7, i32* %5, align 4, !dbg !1616
  %8 = load i32, i32* %5, align 4, !dbg !1618
  %9 = icmp ne i32 %8, 0, !dbg !1618
  %10 = sext i32 %8 to i64, !dbg !1616
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @25, i32 0, i32 0), i64 94191963477792, i32 845, i32 3), !dbg !1616
  br i1 %11, label %12, label %18, !dbg !1616

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1620, !llvm.loop !1623

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1625
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 845, i32 %14), !dbg !1625
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1625
  %16 = load double, double* %15, align 8, !dbg !1625
  store double %16, double* %2, align 8, !dbg !1625
  br label %21, !dbg !1625
                                                  ; No predecessors!
  br label %18, !dbg !1628

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1630
  %20 = load double, double* %19, align 8, !dbg !1630
  store double %20, double* %2, align 8, !dbg !1630
  br label %21, !dbg !1630

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1632
  ret double %22, !dbg !1632
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_psi_1piy(double) #0 !dbg !1633 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1634, metadata !108), !dbg !1635
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1636, metadata !108), !dbg !1637
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1638, metadata !108), !dbg !1637
  %6 = load double, double* %3, align 8, !dbg !1637
  %7 = call i32 @gsl_sf_psi_1piy_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1637
  store i32 %7, i32* %5, align 4, !dbg !1637
  %8 = load i32, i32* %5, align 4, !dbg !1639
  %9 = icmp ne i32 %8, 0, !dbg !1639
  %10 = sext i32 %8 to i64, !dbg !1637
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0), i64 94191963495088, i32 850, i32 3), !dbg !1637
  br i1 %11, label %12, label %18, !dbg !1637

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1641, !llvm.loop !1644

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1646
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 850, i32 %14), !dbg !1646
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1646
  %16 = load double, double* %15, align 8, !dbg !1646
  store double %16, double* %2, align 8, !dbg !1646
  br label %21, !dbg !1646
                                                  ; No predecessors!
  br label %18, !dbg !1649

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1651
  %20 = load double, double* %19, align 8, !dbg !1651
  store double %20, double* %2, align 8, !dbg !1651
  br label %21, !dbg !1651

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1653
  ret double %22, !dbg !1653
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_psi_1_int(i32) #0 !dbg !1654 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1655, metadata !108), !dbg !1656
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1657, metadata !108), !dbg !1658
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1659, metadata !108), !dbg !1658
  %6 = load i32, i32* %3, align 4, !dbg !1658
  %7 = call i32 @gsl_sf_psi_1_int_e(i32 %6, %struct.gsl_sf_result_struct* %4), !dbg !1658
  store i32 %7, i32* %5, align 4, !dbg !1658
  %8 = load i32, i32* %5, align 4, !dbg !1660
  %9 = icmp ne i32 %8, 0, !dbg !1660
  %10 = sext i32 %8 to i64, !dbg !1658
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @29, i32 0, i32 0), i64 94191963512384, i32 855, i32 3), !dbg !1658
  br i1 %11, label %12, label %18, !dbg !1658

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1662, !llvm.loop !1665

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1667
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 855, i32 %14), !dbg !1667
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1667
  %16 = load double, double* %15, align 8, !dbg !1667
  store double %16, double* %2, align 8, !dbg !1667
  br label %21, !dbg !1667
                                                  ; No predecessors!
  br label %18, !dbg !1670

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1672
  %20 = load double, double* %19, align 8, !dbg !1672
  store double %20, double* %2, align 8, !dbg !1672
  br label %21, !dbg !1672

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1674
  ret double %22, !dbg !1674
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_psi_1(double) #0 !dbg !1675 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !1676, metadata !108), !dbg !1677
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !1678, metadata !108), !dbg !1679
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1680, metadata !108), !dbg !1679
  %6 = load double, double* %3, align 8, !dbg !1679
  %7 = call i32 @gsl_sf_psi_1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1679
  store i32 %7, i32* %5, align 4, !dbg !1679
  %8 = load i32, i32* %5, align 4, !dbg !1681
  %9 = icmp ne i32 %8, 0, !dbg !1681
  %10 = sext i32 %8 to i64, !dbg !1679
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @31, i32 0, i32 0), i64 94191963529680, i32 860, i32 3), !dbg !1679
  br i1 %11, label %12, label %18, !dbg !1679

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1683, !llvm.loop !1686

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !1688
  call void @gsl_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 860, i32 %14), !dbg !1688
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1688
  %16 = load double, double* %15, align 8, !dbg !1688
  store double %16, double* %2, align 8, !dbg !1688
  br label %21, !dbg !1688
                                                  ; No predecessors!
  br label %18, !dbg !1691

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1693
  %20 = load double, double* %19, align 8, !dbg !1693
  store double %20, double* %2, align 8, !dbg !1693
  br label %21, !dbg !1693

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !1695
  ret double %22, !dbg !1695
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_psi_n(i32, double) #0 !dbg !1696 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1699, metadata !108), !dbg !1700
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1701, metadata !108), !dbg !1702
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1703, metadata !108), !dbg !1704
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1705, metadata !108), !dbg !1704
  %8 = load i32, i32* %4, align 4, !dbg !1704
  %9 = load double, double* %5, align 8, !dbg !1704
  %10 = call i32 @gsl_sf_psi_n_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1704
  store i32 %10, i32* %7, align 4, !dbg !1704
  %11 = load i32, i32* %7, align 4, !dbg !1706
  %12 = icmp ne i32 %11, 0, !dbg !1706
  %13 = sext i32 %11 to i64, !dbg !1704
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @33, i32 0, i32 0), i64 94191963548416, i32 865, i32 3), !dbg !1704
  br i1 %14, label %15, label %21, !dbg !1704

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !1708, !llvm.loop !1711

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !1713
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 865, i32 %17), !dbg !1713
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1713
  %19 = load double, double* %18, align 8, !dbg !1713
  store double %19, double* %3, align 8, !dbg !1713
  br label %24, !dbg !1713
                                                  ; No predecessors!
  br label %21, !dbg !1716

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1718
  %23 = load double, double* %22, align 8, !dbg !1718
  store double %23, double* %3, align 8, !dbg !1718
  br label %24, !dbg !1718

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !1720
  ret double %25, !dbg !1720
}

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind uwtable
define internal { double, double } @psi_complex_asymp(double, double) #0 !dbg !77 {
  %3 = alloca %struct.gsl_complex, align 8
  %4 = alloca %struct.gsl_complex, align 8
  %5 = alloca %struct.gsl_complex, align 8
  %6 = alloca %struct.gsl_complex, align 8
  %7 = alloca %struct.gsl_complex, align 8
  %8 = alloca %struct.gsl_complex, align 8
  %9 = alloca %struct.gsl_complex, align 8
  %10 = alloca %struct.gsl_complex, align 8
  %11 = alloca %struct.gsl_complex, align 8
  %12 = alloca %struct.gsl_complex, align 8
  %13 = alloca %struct.gsl_complex, align 8
  %14 = alloca %struct.gsl_complex, align 8
  %15 = alloca %struct.gsl_complex, align 8
  %16 = alloca %struct.gsl_complex, align 8
  %17 = alloca %struct.gsl_complex, align 8
  %18 = alloca %struct.gsl_complex, align 8
  %19 = alloca %struct.gsl_complex, align 8
  %20 = alloca %struct.gsl_complex, align 8
  %21 = alloca %struct.gsl_complex, align 8
  %22 = bitcast %struct.gsl_complex* %4 to { double, double }*
  %23 = getelementptr inbounds { double, double }, { double, double }* %22, i32 0, i32 0
  store double %0, double* %23, align 8
  %24 = getelementptr inbounds { double, double }, { double, double }* %22, i32 0, i32 1
  store double %1, double* %24, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %4, metadata !1721, metadata !108), !dbg !1722
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %5, metadata !1723, metadata !108), !dbg !1724
  %25 = bitcast %struct.gsl_complex* %4 to { double, double }*, !dbg !1725
  %26 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 0, !dbg !1725
  %27 = load double, double* %26, align 8, !dbg !1725
  %28 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 1, !dbg !1725
  %29 = load double, double* %28, align 8, !dbg !1725
  %30 = call { double, double } @gsl_complex_inverse(double %27, double %29), !dbg !1725
  %31 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %5, i32 0, i32 0, !dbg !1725
  %32 = bitcast [2 x double]* %31 to { double, double }*, !dbg !1725
  %33 = getelementptr inbounds { double, double }, { double, double }* %32, i32 0, i32 0, !dbg !1725
  %34 = extractvalue { double, double } %30, 0, !dbg !1725
  store double %34, double* %33, align 8, !dbg !1725
  %35 = getelementptr inbounds { double, double }, { double, double }* %32, i32 0, i32 1, !dbg !1725
  %36 = extractvalue { double, double } %30, 1, !dbg !1725
  store double %36, double* %35, align 8, !dbg !1725
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %6, metadata !1726, metadata !108), !dbg !1727
  %37 = bitcast %struct.gsl_complex* %5 to { double, double }*, !dbg !1728
  %38 = getelementptr inbounds { double, double }, { double, double }* %37, i32 0, i32 0, !dbg !1728
  %39 = load double, double* %38, align 8, !dbg !1728
  %40 = getelementptr inbounds { double, double }, { double, double }* %37, i32 0, i32 1, !dbg !1728
  %41 = load double, double* %40, align 8, !dbg !1728
  %42 = bitcast %struct.gsl_complex* %5 to { double, double }*, !dbg !1728
  %43 = getelementptr inbounds { double, double }, { double, double }* %42, i32 0, i32 0, !dbg !1728
  %44 = load double, double* %43, align 8, !dbg !1728
  %45 = getelementptr inbounds { double, double }, { double, double }* %42, i32 0, i32 1, !dbg !1728
  %46 = load double, double* %45, align 8, !dbg !1728
  %47 = call { double, double } @gsl_complex_mul(double %39, double %41, double %44, double %46), !dbg !1728
  %48 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1728
  %49 = bitcast [2 x double]* %48 to { double, double }*, !dbg !1728
  %50 = getelementptr inbounds { double, double }, { double, double }* %49, i32 0, i32 0, !dbg !1728
  %51 = extractvalue { double, double } %47, 0, !dbg !1728
  store double %51, double* %50, align 8, !dbg !1728
  %52 = getelementptr inbounds { double, double }, { double, double }* %49, i32 0, i32 1, !dbg !1728
  %53 = extractvalue { double, double } %47, 1, !dbg !1728
  store double %53, double* %52, align 8, !dbg !1728
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %7, metadata !1729, metadata !108), !dbg !1730
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %8, metadata !1731, metadata !108), !dbg !1732
  %54 = bitcast %struct.gsl_complex* %6 to { double, double }*, !dbg !1733
  %55 = getelementptr inbounds { double, double }, { double, double }* %54, i32 0, i32 0, !dbg !1733
  %56 = load double, double* %55, align 8, !dbg !1733
  %57 = getelementptr inbounds { double, double }, { double, double }* %54, i32 0, i32 1, !dbg !1733
  %58 = load double, double* %57, align 8, !dbg !1733
  %59 = call { double, double } @gsl_complex_mul_real(double %56, double %58, double -1.050000e+00), !dbg !1733
  %60 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %9, i32 0, i32 0, !dbg !1733
  %61 = bitcast [2 x double]* %60 to { double, double }*, !dbg !1733
  %62 = getelementptr inbounds { double, double }, { double, double }* %61, i32 0, i32 0, !dbg !1733
  %63 = extractvalue { double, double } %59, 0, !dbg !1733
  store double %63, double* %62, align 8, !dbg !1733
  %64 = getelementptr inbounds { double, double }, { double, double }* %61, i32 0, i32 1, !dbg !1733
  %65 = extractvalue { double, double } %59, 1, !dbg !1733
  store double %65, double* %64, align 8, !dbg !1733
  %66 = bitcast %struct.gsl_complex* %8 to i8*, !dbg !1733
  %67 = bitcast %struct.gsl_complex* %9 to i8*, !dbg !1733
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 16, i32 8, i1 false), !dbg !1734
  %68 = bitcast %struct.gsl_complex* %8 to { double, double }*, !dbg !1736
  %69 = getelementptr inbounds { double, double }, { double, double }* %68, i32 0, i32 0, !dbg !1736
  %70 = load double, double* %69, align 8, !dbg !1736
  %71 = getelementptr inbounds { double, double }, { double, double }* %68, i32 0, i32 1, !dbg !1736
  %72 = load double, double* %71, align 8, !dbg !1736
  %73 = call { double, double } @gsl_complex_add_real(double %70, double %72, double 1.000000e+00), !dbg !1736
  %74 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %10, i32 0, i32 0, !dbg !1736
  %75 = bitcast [2 x double]* %74 to { double, double }*, !dbg !1736
  %76 = getelementptr inbounds { double, double }, { double, double }* %75, i32 0, i32 0, !dbg !1736
  %77 = extractvalue { double, double } %73, 0, !dbg !1736
  store double %77, double* %76, align 8, !dbg !1736
  %78 = getelementptr inbounds { double, double }, { double, double }* %75, i32 0, i32 1, !dbg !1736
  %79 = extractvalue { double, double } %73, 1, !dbg !1736
  store double %79, double* %78, align 8, !dbg !1736
  %80 = bitcast %struct.gsl_complex* %8 to i8*, !dbg !1736
  %81 = bitcast %struct.gsl_complex* %10 to i8*, !dbg !1736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %81, i64 16, i32 8, i1 false), !dbg !1737
  %82 = bitcast %struct.gsl_complex* %8 to { double, double }*, !dbg !1738
  %83 = getelementptr inbounds { double, double }, { double, double }* %82, i32 0, i32 0, !dbg !1738
  %84 = load double, double* %83, align 8, !dbg !1738
  %85 = getelementptr inbounds { double, double }, { double, double }* %82, i32 0, i32 1, !dbg !1738
  %86 = load double, double* %85, align 8, !dbg !1738
  %87 = call { double, double } @gsl_complex_mul_real(double %84, double %86, double 0xBFDE79E79E79E79E), !dbg !1738
  %88 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %11, i32 0, i32 0, !dbg !1738
  %89 = bitcast [2 x double]* %88 to { double, double }*, !dbg !1738
  %90 = getelementptr inbounds { double, double }, { double, double }* %89, i32 0, i32 0, !dbg !1738
  %91 = extractvalue { double, double } %87, 0, !dbg !1738
  store double %91, double* %90, align 8, !dbg !1738
  %92 = getelementptr inbounds { double, double }, { double, double }* %89, i32 0, i32 1, !dbg !1738
  %93 = extractvalue { double, double } %87, 1, !dbg !1738
  store double %93, double* %92, align 8, !dbg !1738
  %94 = bitcast %struct.gsl_complex* %8 to i8*, !dbg !1738
  %95 = bitcast %struct.gsl_complex* %11 to i8*, !dbg !1738
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %95, i64 16, i32 8, i1 false), !dbg !1739
  %96 = bitcast %struct.gsl_complex* %8 to { double, double }*, !dbg !1740
  %97 = getelementptr inbounds { double, double }, { double, double }* %96, i32 0, i32 0, !dbg !1740
  %98 = load double, double* %97, align 8, !dbg !1740
  %99 = getelementptr inbounds { double, double }, { double, double }* %96, i32 0, i32 1, !dbg !1740
  %100 = load double, double* %99, align 8, !dbg !1740
  %101 = bitcast %struct.gsl_complex* %6 to { double, double }*, !dbg !1740
  %102 = getelementptr inbounds { double, double }, { double, double }* %101, i32 0, i32 0, !dbg !1740
  %103 = load double, double* %102, align 8, !dbg !1740
  %104 = getelementptr inbounds { double, double }, { double, double }* %101, i32 0, i32 1, !dbg !1740
  %105 = load double, double* %104, align 8, !dbg !1740
  %106 = call { double, double } @gsl_complex_mul(double %98, double %100, double %103, double %105), !dbg !1740
  %107 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %12, i32 0, i32 0, !dbg !1740
  %108 = bitcast [2 x double]* %107 to { double, double }*, !dbg !1740
  %109 = getelementptr inbounds { double, double }, { double, double }* %108, i32 0, i32 0, !dbg !1740
  %110 = extractvalue { double, double } %106, 0, !dbg !1740
  store double %110, double* %109, align 8, !dbg !1740
  %111 = getelementptr inbounds { double, double }, { double, double }* %108, i32 0, i32 1, !dbg !1740
  %112 = extractvalue { double, double } %106, 1, !dbg !1740
  store double %112, double* %111, align 8, !dbg !1740
  %113 = bitcast %struct.gsl_complex* %8 to i8*, !dbg !1740
  %114 = bitcast %struct.gsl_complex* %12 to i8*, !dbg !1740
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* %114, i64 16, i32 8, i1 false), !dbg !1741
  %115 = bitcast %struct.gsl_complex* %8 to { double, double }*, !dbg !1742
  %116 = getelementptr inbounds { double, double }, { double, double }* %115, i32 0, i32 0, !dbg !1742
  %117 = load double, double* %116, align 8, !dbg !1742
  %118 = getelementptr inbounds { double, double }, { double, double }* %115, i32 0, i32 1, !dbg !1742
  %119 = load double, double* %118, align 8, !dbg !1742
  %120 = call { double, double } @gsl_complex_add_real(double %117, double %119, double 1.000000e+00), !dbg !1742
  %121 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %13, i32 0, i32 0, !dbg !1742
  %122 = bitcast [2 x double]* %121 to { double, double }*, !dbg !1742
  %123 = getelementptr inbounds { double, double }, { double, double }* %122, i32 0, i32 0, !dbg !1742
  %124 = extractvalue { double, double } %120, 0, !dbg !1742
  store double %124, double* %123, align 8, !dbg !1742
  %125 = getelementptr inbounds { double, double }, { double, double }* %122, i32 0, i32 1, !dbg !1742
  %126 = extractvalue { double, double } %120, 1, !dbg !1742
  store double %126, double* %125, align 8, !dbg !1742
  %127 = bitcast %struct.gsl_complex* %8 to i8*, !dbg !1742
  %128 = bitcast %struct.gsl_complex* %13 to i8*, !dbg !1742
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* %128, i64 16, i32 8, i1 false), !dbg !1743
  %129 = bitcast %struct.gsl_complex* %8 to { double, double }*, !dbg !1744
  %130 = getelementptr inbounds { double, double }, { double, double }* %129, i32 0, i32 0, !dbg !1744
  %131 = load double, double* %130, align 8, !dbg !1744
  %132 = getelementptr inbounds { double, double }, { double, double }* %129, i32 0, i32 1, !dbg !1744
  %133 = load double, double* %132, align 8, !dbg !1744
  %134 = call { double, double } @gsl_complex_mul_real(double %131, double %133, double -1.000000e-01), !dbg !1744
  %135 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %14, i32 0, i32 0, !dbg !1744
  %136 = bitcast [2 x double]* %135 to { double, double }*, !dbg !1744
  %137 = getelementptr inbounds { double, double }, { double, double }* %136, i32 0, i32 0, !dbg !1744
  %138 = extractvalue { double, double } %134, 0, !dbg !1744
  store double %138, double* %137, align 8, !dbg !1744
  %139 = getelementptr inbounds { double, double }, { double, double }* %136, i32 0, i32 1, !dbg !1744
  %140 = extractvalue { double, double } %134, 1, !dbg !1744
  store double %140, double* %139, align 8, !dbg !1744
  %141 = bitcast %struct.gsl_complex* %8 to i8*, !dbg !1744
  %142 = bitcast %struct.gsl_complex* %14 to i8*, !dbg !1744
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 16, i32 8, i1 false), !dbg !1745
  %143 = bitcast %struct.gsl_complex* %8 to { double, double }*, !dbg !1746
  %144 = getelementptr inbounds { double, double }, { double, double }* %143, i32 0, i32 0, !dbg !1746
  %145 = load double, double* %144, align 8, !dbg !1746
  %146 = getelementptr inbounds { double, double }, { double, double }* %143, i32 0, i32 1, !dbg !1746
  %147 = load double, double* %146, align 8, !dbg !1746
  %148 = bitcast %struct.gsl_complex* %6 to { double, double }*, !dbg !1746
  %149 = getelementptr inbounds { double, double }, { double, double }* %148, i32 0, i32 0, !dbg !1746
  %150 = load double, double* %149, align 8, !dbg !1746
  %151 = getelementptr inbounds { double, double }, { double, double }* %148, i32 0, i32 1, !dbg !1746
  %152 = load double, double* %151, align 8, !dbg !1746
  %153 = call { double, double } @gsl_complex_mul(double %145, double %147, double %150, double %152), !dbg !1746
  %154 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %15, i32 0, i32 0, !dbg !1746
  %155 = bitcast [2 x double]* %154 to { double, double }*, !dbg !1746
  %156 = getelementptr inbounds { double, double }, { double, double }* %155, i32 0, i32 0, !dbg !1746
  %157 = extractvalue { double, double } %153, 0, !dbg !1746
  store double %157, double* %156, align 8, !dbg !1746
  %158 = getelementptr inbounds { double, double }, { double, double }* %155, i32 0, i32 1, !dbg !1746
  %159 = extractvalue { double, double } %153, 1, !dbg !1746
  store double %159, double* %158, align 8, !dbg !1746
  %160 = bitcast %struct.gsl_complex* %8 to i8*, !dbg !1746
  %161 = bitcast %struct.gsl_complex* %15 to i8*, !dbg !1746
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %160, i8* %161, i64 16, i32 8, i1 false), !dbg !1747
  %162 = bitcast %struct.gsl_complex* %8 to { double, double }*, !dbg !1748
  %163 = getelementptr inbounds { double, double }, { double, double }* %162, i32 0, i32 0, !dbg !1748
  %164 = load double, double* %163, align 8, !dbg !1748
  %165 = getelementptr inbounds { double, double }, { double, double }* %162, i32 0, i32 1, !dbg !1748
  %166 = load double, double* %165, align 8, !dbg !1748
  %167 = call { double, double } @gsl_complex_add_real(double %164, double %166, double 1.000000e+00), !dbg !1748
  %168 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %16, i32 0, i32 0, !dbg !1748
  %169 = bitcast [2 x double]* %168 to { double, double }*, !dbg !1748
  %170 = getelementptr inbounds { double, double }, { double, double }* %169, i32 0, i32 0, !dbg !1748
  %171 = extractvalue { double, double } %167, 0, !dbg !1748
  store double %171, double* %170, align 8, !dbg !1748
  %172 = getelementptr inbounds { double, double }, { double, double }* %169, i32 0, i32 1, !dbg !1748
  %173 = extractvalue { double, double } %167, 1, !dbg !1748
  store double %173, double* %172, align 8, !dbg !1748
  %174 = bitcast %struct.gsl_complex* %8 to i8*, !dbg !1748
  %175 = bitcast %struct.gsl_complex* %16 to i8*, !dbg !1748
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %174, i8* %175, i64 16, i32 8, i1 false), !dbg !1749
  %176 = bitcast %struct.gsl_complex* %8 to { double, double }*, !dbg !1750
  %177 = getelementptr inbounds { double, double }, { double, double }* %176, i32 0, i32 0, !dbg !1750
  %178 = load double, double* %177, align 8, !dbg !1750
  %179 = getelementptr inbounds { double, double }, { double, double }* %176, i32 0, i32 1, !dbg !1750
  %180 = load double, double* %179, align 8, !dbg !1750
  %181 = bitcast %struct.gsl_complex* %6 to { double, double }*, !dbg !1750
  %182 = getelementptr inbounds { double, double }, { double, double }* %181, i32 0, i32 0, !dbg !1750
  %183 = load double, double* %182, align 8, !dbg !1750
  %184 = getelementptr inbounds { double, double }, { double, double }* %181, i32 0, i32 1, !dbg !1750
  %185 = load double, double* %184, align 8, !dbg !1750
  %186 = call { double, double } @gsl_complex_mul(double %178, double %180, double %183, double %185), !dbg !1750
  %187 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %17, i32 0, i32 0, !dbg !1750
  %188 = bitcast [2 x double]* %187 to { double, double }*, !dbg !1750
  %189 = getelementptr inbounds { double, double }, { double, double }* %188, i32 0, i32 0, !dbg !1750
  %190 = extractvalue { double, double } %186, 0, !dbg !1750
  store double %190, double* %189, align 8, !dbg !1750
  %191 = getelementptr inbounds { double, double }, { double, double }* %188, i32 0, i32 1, !dbg !1750
  %192 = extractvalue { double, double } %186, 1, !dbg !1750
  store double %192, double* %191, align 8, !dbg !1750
  %193 = bitcast %struct.gsl_complex* %7 to i8*, !dbg !1750
  %194 = bitcast %struct.gsl_complex* %17 to i8*, !dbg !1750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %193, i8* %194, i64 16, i32 8, i1 false), !dbg !1751
  %195 = bitcast %struct.gsl_complex* %7 to { double, double }*, !dbg !1752
  %196 = getelementptr inbounds { double, double }, { double, double }* %195, i32 0, i32 0, !dbg !1752
  %197 = load double, double* %196, align 8, !dbg !1752
  %198 = getelementptr inbounds { double, double }, { double, double }* %195, i32 0, i32 1, !dbg !1752
  %199 = load double, double* %198, align 8, !dbg !1752
  %200 = call { double, double } @gsl_complex_mul_real(double %197, double %199, double 0xBFB5555555555555), !dbg !1752
  %201 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %18, i32 0, i32 0, !dbg !1752
  %202 = bitcast [2 x double]* %201 to { double, double }*, !dbg !1752
  %203 = getelementptr inbounds { double, double }, { double, double }* %202, i32 0, i32 0, !dbg !1752
  %204 = extractvalue { double, double } %200, 0, !dbg !1752
  store double %204, double* %203, align 8, !dbg !1752
  %205 = getelementptr inbounds { double, double }, { double, double }* %202, i32 0, i32 1, !dbg !1752
  %206 = extractvalue { double, double } %200, 1, !dbg !1752
  store double %206, double* %205, align 8, !dbg !1752
  %207 = bitcast %struct.gsl_complex* %7 to i8*, !dbg !1752
  %208 = bitcast %struct.gsl_complex* %18 to i8*, !dbg !1752
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %207, i8* %208, i64 16, i32 8, i1 false), !dbg !1753
  %209 = bitcast %struct.gsl_complex* %5 to { double, double }*, !dbg !1754
  %210 = getelementptr inbounds { double, double }, { double, double }* %209, i32 0, i32 0, !dbg !1754
  %211 = load double, double* %210, align 8, !dbg !1754
  %212 = getelementptr inbounds { double, double }, { double, double }* %209, i32 0, i32 1, !dbg !1754
  %213 = load double, double* %212, align 8, !dbg !1754
  %214 = call { double, double } @gsl_complex_mul_real(double %211, double %213, double -5.000000e-01), !dbg !1754
  %215 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %19, i32 0, i32 0, !dbg !1754
  %216 = bitcast [2 x double]* %215 to { double, double }*, !dbg !1754
  %217 = getelementptr inbounds { double, double }, { double, double }* %216, i32 0, i32 0, !dbg !1754
  %218 = extractvalue { double, double } %214, 0, !dbg !1754
  store double %218, double* %217, align 8, !dbg !1754
  %219 = getelementptr inbounds { double, double }, { double, double }* %216, i32 0, i32 1, !dbg !1754
  %220 = extractvalue { double, double } %214, 1, !dbg !1754
  store double %220, double* %219, align 8, !dbg !1754
  %221 = bitcast %struct.gsl_complex* %7 to { double, double }*, !dbg !1755
  %222 = getelementptr inbounds { double, double }, { double, double }* %221, i32 0, i32 0, !dbg !1755
  %223 = load double, double* %222, align 8, !dbg !1755
  %224 = getelementptr inbounds { double, double }, { double, double }* %221, i32 0, i32 1, !dbg !1755
  %225 = load double, double* %224, align 8, !dbg !1755
  %226 = bitcast %struct.gsl_complex* %19 to { double, double }*, !dbg !1755
  %227 = getelementptr inbounds { double, double }, { double, double }* %226, i32 0, i32 0, !dbg !1755
  %228 = load double, double* %227, align 8, !dbg !1755
  %229 = getelementptr inbounds { double, double }, { double, double }* %226, i32 0, i32 1, !dbg !1755
  %230 = load double, double* %229, align 8, !dbg !1755
  %231 = call { double, double } @gsl_complex_add(double %223, double %225, double %228, double %230), !dbg !1756
  %232 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %20, i32 0, i32 0, !dbg !1755
  %233 = bitcast [2 x double]* %232 to { double, double }*, !dbg !1755
  %234 = getelementptr inbounds { double, double }, { double, double }* %233, i32 0, i32 0, !dbg !1755
  %235 = extractvalue { double, double } %231, 0, !dbg !1755
  store double %235, double* %234, align 8, !dbg !1755
  %236 = getelementptr inbounds { double, double }, { double, double }* %233, i32 0, i32 1, !dbg !1755
  %237 = extractvalue { double, double } %231, 1, !dbg !1755
  store double %237, double* %236, align 8, !dbg !1755
  %238 = bitcast %struct.gsl_complex* %7 to i8*, !dbg !1755
  %239 = bitcast %struct.gsl_complex* %20 to i8*, !dbg !1755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %238, i8* %239, i64 16, i32 8, i1 false), !dbg !1757
  %240 = bitcast %struct.gsl_complex* %4 to { double, double }*, !dbg !1759
  %241 = getelementptr inbounds { double, double }, { double, double }* %240, i32 0, i32 0, !dbg !1759
  %242 = load double, double* %241, align 8, !dbg !1759
  %243 = getelementptr inbounds { double, double }, { double, double }* %240, i32 0, i32 1, !dbg !1759
  %244 = load double, double* %243, align 8, !dbg !1759
  %245 = call { double, double } @gsl_complex_log(double %242, double %244), !dbg !1759
  %246 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %21, i32 0, i32 0, !dbg !1759
  %247 = bitcast [2 x double]* %246 to { double, double }*, !dbg !1759
  %248 = getelementptr inbounds { double, double }, { double, double }* %247, i32 0, i32 0, !dbg !1759
  %249 = extractvalue { double, double } %245, 0, !dbg !1759
  store double %249, double* %248, align 8, !dbg !1759
  %250 = getelementptr inbounds { double, double }, { double, double }* %247, i32 0, i32 1, !dbg !1759
  %251 = extractvalue { double, double } %245, 1, !dbg !1759
  store double %251, double* %250, align 8, !dbg !1759
  %252 = bitcast %struct.gsl_complex* %21 to { double, double }*, !dbg !1760
  %253 = getelementptr inbounds { double, double }, { double, double }* %252, i32 0, i32 0, !dbg !1760
  %254 = load double, double* %253, align 8, !dbg !1760
  %255 = getelementptr inbounds { double, double }, { double, double }* %252, i32 0, i32 1, !dbg !1760
  %256 = load double, double* %255, align 8, !dbg !1760
  %257 = bitcast %struct.gsl_complex* %7 to { double, double }*, !dbg !1760
  %258 = getelementptr inbounds { double, double }, { double, double }* %257, i32 0, i32 0, !dbg !1760
  %259 = load double, double* %258, align 8, !dbg !1760
  %260 = getelementptr inbounds { double, double }, { double, double }* %257, i32 0, i32 1, !dbg !1760
  %261 = load double, double* %260, align 8, !dbg !1760
  %262 = call { double, double } @gsl_complex_add(double %254, double %256, double %259, double %261), !dbg !1761
  %263 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %3, i32 0, i32 0, !dbg !1760
  %264 = bitcast [2 x double]* %263 to { double, double }*, !dbg !1760
  %265 = getelementptr inbounds { double, double }, { double, double }* %264, i32 0, i32 0, !dbg !1760
  %266 = extractvalue { double, double } %262, 0, !dbg !1760
  store double %266, double* %265, align 8, !dbg !1760
  %267 = getelementptr inbounds { double, double }, { double, double }* %264, i32 0, i32 1, !dbg !1760
  %268 = extractvalue { double, double } %262, 1, !dbg !1760
  store double %268, double* %267, align 8, !dbg !1760
  %269 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %3, i32 0, i32 0, !dbg !1762
  %270 = bitcast [2 x double]* %269 to { double, double }*, !dbg !1762
  %271 = load { double, double }, { double, double }* %270, align 8, !dbg !1762
  ret { double, double } %271, !dbg !1762
}

declare { double, double } @gsl_complex_add_real(double, double, double) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare { double, double } @gsl_complex_inverse(double, double) #2

declare { double, double } @gsl_complex_sub(double, double, double, double) #2

declare { double, double } @gsl_complex_mul(double, double, double, double) #2

declare { double, double } @gsl_complex_add(double, double, double, double) #2

declare { double, double } @gsl_complex_log(double, double) #2

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
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!92, !93, !94}
!llvm.ident = !{!95}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41, globals: !43)
!1 = !DIFile(filename: "psi.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!43 = !{!44, !49, !61, !65, !66, !70, !71, !75, !76, !90, !91}
!44 = distinct !DIGlobalVariable(name: "psi_table", scope: !0, file: !1, line: 164, type: !45, isLocal: true, isDefinition: true, variable: [101 x double]* @psi_table)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 6464, align: 64, elements: !47)
!46 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!47 = !{!48}
!48 = !DISubrange(count: 101)
!49 = distinct !DIGlobalVariable(name: "apsi_cs", scope: !0, file: !1, line: 156, type: !50, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @apsi_cs)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !51, line: 29, baseType: !52)
!51 = !DIFile(filename: "./chebyshev.h", directory: "/fpcc/gsl-2.5/specfunc")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !51, line: 22, size: 320, align: 64, elements: !53)
!53 = !{!54, !56, !58, !59, !60}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !52, file: !51, line: 23, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !52, file: !51, line: 24, baseType: !57, size: 32, align: 32, offset: 64)
!57 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !52, file: !51, line: 25, baseType: !46, size: 64, align: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !52, file: !51, line: 26, baseType: !46, size: 64, align: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !52, file: !51, line: 27, baseType: !57, size: 32, align: 32, offset: 256)
!61 = distinct !DIGlobalVariable(name: "apsics_data", scope: !0, file: !1, line: 138, type: !62, isLocal: true, isDefinition: true, variable: [16 x double]* @apsics_data)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1024, align: 64, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 16)
!65 = distinct !DIGlobalVariable(name: "psi_cs", scope: !0, file: !1, line: 131, type: !50, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @psi_cs)
!66 = distinct !DIGlobalVariable(name: "psics_data", scope: !0, file: !1, line: 106, type: !67, isLocal: true, isDefinition: true, variable: [23 x double]* @psics_data)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1472, align: 64, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 23)
!70 = distinct !DIGlobalVariable(name: "r1py_cs", scope: !0, file: !1, line: 82, type: !50, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @r1py_cs)
!71 = distinct !DIGlobalVariable(name: "r1py_data", scope: !0, file: !1, line: 50, type: !72, isLocal: true, isDefinition: true, variable: [30 x double]* @r1py_data)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1920, align: 64, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 30)
!75 = distinct !DIGlobalVariable(name: "psi_1_table", scope: !0, file: !1, line: 270, type: !45, isLocal: true, isDefinition: true, variable: [101 x double]* @psi_1_table)
!76 = distinct !DIGlobalVariable(name: "c1", scope: !77, file: !1, line: 468, type: !89, isLocal: true, isDefinition: true, variable: double* @psi_complex_asymp.c1)
!77 = distinct !DISubprogram(name: "psi_complex_asymp", scope: !1, file: !1, line: 461, type: !78, isLocal: true, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !80}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_complex", file: !81, line: 80, baseType: !82)
!81 = !DIFile(filename: "../gsl/gsl_complex.h", directory: "/fpcc/gsl-2.5/specfunc")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 76, size: 128, align: 64, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "dat", scope: !82, file: !81, line: 78, baseType: !85, size: 128, align: 64)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, align: 64, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 2)
!88 = !{}
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!90 = distinct !DIGlobalVariable(name: "c2", scope: !77, file: !1, line: 469, type: !89, isLocal: true, isDefinition: true, variable: double* @psi_complex_asymp.c2)
!91 = distinct !DIGlobalVariable(name: "c3", scope: !77, file: !1, line: 470, type: !89, isLocal: true, isDefinition: true, variable: double* @psi_complex_asymp.c3)
!92 = !{i32 2, !"Dwarf Version", i32 4}
!93 = !{i32 2, !"Debug Info Version", i32 3}
!94 = !{i32 1, !"PIC Level", i32 2}
!95 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!96 = distinct !DISubprogram(name: "gsl_sf_psi_int_e", scope: !1, file: !1, line: 582, type: !97, isLocal: false, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!97 = !DISubroutineType(types: !98)
!98 = !{!57, !99, !100}
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !102, line: 41, baseType: !103)
!102 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !102, line: 37, size: 128, align: 64, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !103, file: !102, line: 38, baseType: !46, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !103, file: !102, line: 39, baseType: !46, size: 64, align: 64, offset: 64)
!107 = !DILocalVariable(name: "n", arg: 1, scope: !96, file: !1, line: 582, type: !99)
!108 = !DIExpression()
!109 = !DILocation(line: 582, column: 32, scope: !96)
!110 = !DILocalVariable(name: "result", arg: 2, scope: !96, file: !1, line: 582, type: !100)
!111 = !DILocation(line: 582, column: 51, scope: !96)
!112 = !DILocation(line: 586, column: 6, scope: !113)
!113 = distinct !DILexicalBlock(scope: !96, file: !1, line: 586, column: 6)
!114 = !DILocation(line: 586, column: 8, scope: !113)
!115 = !DILocation(line: 586, column: 6, scope: !96)
!116 = !DILocation(line: 587, column: 5, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 586, column: 14)
!118 = distinct !{!118, !116}
!119 = !DILocation(line: 587, column: 5, scope: !120)
!120 = !DILexicalBlockFile(scope: !121, file: !1, discriminator: 1)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 587, column: 5)
!122 = distinct !{!122, !123}
!123 = !DILocation(line: 587, column: 5, scope: !121)
!124 = !DILocation(line: 587, column: 5, scope: !125)
!125 = !DILexicalBlockFile(scope: !126, file: !1, discriminator: 2)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 587, column: 5)
!127 = !DILocation(line: 587, column: 5, scope: !128)
!128 = !DILexicalBlockFile(scope: !121, file: !1, discriminator: 3)
!129 = !DILocation(line: 588, column: 3, scope: !117)
!130 = !DILocation(line: 589, column: 11, scope: !131)
!131 = distinct !DILexicalBlock(scope: !113, file: !1, line: 589, column: 11)
!132 = !DILocation(line: 589, column: 13, scope: !131)
!133 = !DILocation(line: 589, column: 11, scope: !113)
!134 = !DILocation(line: 590, column: 29, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !1, line: 589, column: 32)
!136 = !DILocation(line: 590, column: 19, scope: !135)
!137 = !DILocation(line: 590, column: 5, scope: !135)
!138 = !DILocation(line: 590, column: 13, scope: !135)
!139 = !DILocation(line: 590, column: 17, scope: !135)
!140 = !DILocation(line: 591, column: 42, scope: !135)
!141 = !DILocation(line: 591, column: 50, scope: !135)
!142 = !DILocation(line: 591, column: 37, scope: !135)
!143 = !DILocation(line: 591, column: 35, scope: !135)
!144 = !DILocation(line: 591, column: 5, scope: !135)
!145 = !DILocation(line: 591, column: 13, scope: !135)
!146 = !DILocation(line: 591, column: 17, scope: !135)
!147 = !DILocation(line: 592, column: 5, scope: !135)
!148 = !DILocalVariable(name: "c2", scope: !149, file: !1, line: 596, type: !89)
!149 = distinct !DILexicalBlock(scope: !131, file: !1, line: 594, column: 8)
!150 = !DILocation(line: 596, column: 18, scope: !149)
!151 = !DILocalVariable(name: "c3", scope: !149, file: !1, line: 597, type: !89)
!152 = !DILocation(line: 597, column: 18, scope: !149)
!153 = !DILocalVariable(name: "c4", scope: !149, file: !1, line: 598, type: !89)
!154 = !DILocation(line: 598, column: 18, scope: !149)
!155 = !DILocalVariable(name: "c5", scope: !149, file: !1, line: 599, type: !89)
!156 = !DILocation(line: 599, column: 18, scope: !149)
!157 = !DILocalVariable(name: "ni2", scope: !149, file: !1, line: 600, type: !89)
!158 = !DILocation(line: 600, column: 18, scope: !149)
!159 = !DILocation(line: 600, column: 29, scope: !149)
!160 = !DILocation(line: 600, column: 28, scope: !149)
!161 = !DILocation(line: 600, column: 37, scope: !149)
!162 = !DILocation(line: 600, column: 36, scope: !149)
!163 = !DILocation(line: 600, column: 31, scope: !149)
!164 = !DILocalVariable(name: "ser", scope: !149, file: !1, line: 601, type: !89)
!165 = !DILocation(line: 601, column: 18, scope: !149)
!166 = !DILocation(line: 601, column: 24, scope: !149)
!167 = !DILocation(line: 601, column: 36, scope: !149)
!168 = !DILocation(line: 601, column: 48, scope: !149)
!169 = !DILocation(line: 601, column: 60, scope: !149)
!170 = !DILocation(line: 601, column: 63, scope: !149)
!171 = !DILocation(line: 601, column: 58, scope: !149)
!172 = !DILocation(line: 601, column: 52, scope: !149)
!173 = !DILocation(line: 601, column: 46, scope: !149)
!174 = !DILocation(line: 601, column: 40, scope: !149)
!175 = !DILocation(line: 601, column: 34, scope: !149)
!176 = !DILocation(line: 601, column: 28, scope: !149)
!177 = !DILocation(line: 602, column: 24, scope: !149)
!178 = !DILocation(line: 602, column: 20, scope: !149)
!179 = !DILocation(line: 602, column: 33, scope: !149)
!180 = !DILocation(line: 602, column: 32, scope: !149)
!181 = !DILocation(line: 602, column: 27, scope: !149)
!182 = !DILocation(line: 602, column: 37, scope: !149)
!183 = !DILocation(line: 602, column: 35, scope: !149)
!184 = !DILocation(line: 602, column: 5, scope: !149)
!185 = !DILocation(line: 602, column: 13, scope: !149)
!186 = !DILocation(line: 602, column: 18, scope: !149)
!187 = !DILocation(line: 603, column: 48, scope: !149)
!188 = !DILocation(line: 603, column: 44, scope: !149)
!189 = !DILocation(line: 603, column: 39, scope: !190)
!190 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 1)
!191 = !DILocation(line: 603, column: 63, scope: !149)
!192 = !DILocation(line: 603, column: 62, scope: !149)
!193 = !DILocation(line: 603, column: 54, scope: !194)
!194 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 2)
!195 = !DILocation(line: 603, column: 52, scope: !149)
!196 = !DILocation(line: 603, column: 73, scope: !149)
!197 = !DILocation(line: 603, column: 68, scope: !198)
!198 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 3)
!199 = !DILocation(line: 603, column: 66, scope: !149)
!200 = !DILocation(line: 603, column: 36, scope: !149)
!201 = !DILocation(line: 603, column: 5, scope: !149)
!202 = !DILocation(line: 603, column: 13, scope: !149)
!203 = !DILocation(line: 603, column: 18, scope: !149)
!204 = !DILocation(line: 604, column: 43, scope: !149)
!205 = !DILocation(line: 604, column: 51, scope: !149)
!206 = !DILocation(line: 604, column: 38, scope: !149)
!207 = !DILocation(line: 604, column: 36, scope: !149)
!208 = !DILocation(line: 604, column: 5, scope: !149)
!209 = !DILocation(line: 604, column: 13, scope: !149)
!210 = !DILocation(line: 604, column: 17, scope: !149)
!211 = !DILocation(line: 605, column: 5, scope: !149)
!212 = !DILocation(line: 607, column: 1, scope: !96)
!213 = distinct !DISubprogram(name: "gsl_sf_psi_e", scope: !1, file: !1, line: 610, type: !214, isLocal: false, isDefinition: true, scopeLine: 611, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!214 = !DISubroutineType(types: !215)
!215 = !{!57, !89, !100}
!216 = !DILocalVariable(name: "x", arg: 1, scope: !213, file: !1, line: 610, type: !89)
!217 = !DILocation(line: 610, column: 31, scope: !213)
!218 = !DILocalVariable(name: "result", arg: 2, scope: !213, file: !1, line: 610, type: !100)
!219 = !DILocation(line: 610, column: 50, scope: !213)
!220 = !DILocation(line: 613, column: 16, scope: !213)
!221 = !DILocation(line: 613, column: 19, scope: !213)
!222 = !DILocation(line: 613, column: 10, scope: !213)
!223 = !DILocation(line: 613, column: 3, scope: !213)
!224 = distinct !DISubprogram(name: "psi_x", scope: !1, file: !1, line: 380, type: !214, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!225 = !DILocalVariable(name: "x", arg: 1, scope: !224, file: !1, line: 380, type: !89)
!226 = !DILocation(line: 380, column: 20, scope: !224)
!227 = !DILocalVariable(name: "result", arg: 2, scope: !224, file: !1, line: 380, type: !100)
!228 = !DILocation(line: 380, column: 39, scope: !224)
!229 = !DILocalVariable(name: "y", scope: !224, file: !1, line: 382, type: !89)
!230 = !DILocation(line: 382, column: 16, scope: !224)
!231 = !DILocation(line: 382, column: 25, scope: !224)
!232 = !DILocation(line: 382, column: 20, scope: !224)
!233 = !DILocation(line: 384, column: 6, scope: !234)
!234 = distinct !DILexicalBlock(scope: !224, file: !1, line: 384, column: 6)
!235 = !DILocation(line: 384, column: 8, scope: !234)
!236 = !DILocation(line: 384, column: 15, scope: !234)
!237 = !DILocation(line: 384, column: 18, scope: !238)
!238 = !DILexicalBlockFile(scope: !234, file: !1, discriminator: 1)
!239 = !DILocation(line: 384, column: 20, scope: !238)
!240 = !DILocation(line: 384, column: 28, scope: !238)
!241 = !DILocation(line: 384, column: 31, scope: !242)
!242 = !DILexicalBlockFile(scope: !234, file: !1, discriminator: 2)
!243 = !DILocation(line: 384, column: 33, scope: !242)
!244 = !DILocation(line: 384, column: 6, scope: !242)
!245 = !DILocation(line: 385, column: 5, scope: !246)
!246 = distinct !DILexicalBlock(scope: !234, file: !1, line: 384, column: 42)
!247 = distinct !{!247, !245}
!248 = !DILocation(line: 385, column: 5, scope: !249)
!249 = !DILexicalBlockFile(scope: !250, file: !1, discriminator: 1)
!250 = distinct !DILexicalBlock(scope: !246, file: !1, line: 385, column: 5)
!251 = distinct !{!251, !252}
!252 = !DILocation(line: 385, column: 5, scope: !250)
!253 = !DILocation(line: 385, column: 5, scope: !254)
!254 = !DILexicalBlockFile(scope: !255, file: !1, discriminator: 2)
!255 = distinct !DILexicalBlock(scope: !250, file: !1, line: 385, column: 5)
!256 = !DILocation(line: 385, column: 5, scope: !257)
!257 = !DILexicalBlockFile(scope: !250, file: !1, discriminator: 3)
!258 = !DILocation(line: 386, column: 3, scope: !246)
!259 = !DILocation(line: 387, column: 11, scope: !260)
!260 = distinct !DILexicalBlock(scope: !234, file: !1, line: 387, column: 11)
!261 = !DILocation(line: 387, column: 13, scope: !260)
!262 = !DILocation(line: 387, column: 11, scope: !234)
!263 = !DILocalVariable(name: "t", scope: !264, file: !1, line: 388, type: !89)
!264 = distinct !DILexicalBlock(scope: !260, file: !1, line: 387, column: 21)
!265 = !DILocation(line: 388, column: 18, scope: !264)
!266 = !DILocation(line: 388, column: 27, scope: !264)
!267 = !DILocation(line: 388, column: 29, scope: !264)
!268 = !DILocation(line: 388, column: 28, scope: !264)
!269 = !DILocation(line: 388, column: 25, scope: !264)
!270 = !DILocation(line: 388, column: 31, scope: !264)
!271 = !DILocalVariable(name: "result_c", scope: !264, file: !1, line: 389, type: !101)
!272 = !DILocation(line: 389, column: 19, scope: !264)
!273 = !DILocation(line: 390, column: 27, scope: !264)
!274 = !DILocation(line: 390, column: 5, scope: !264)
!275 = !DILocation(line: 391, column: 8, scope: !276)
!276 = distinct !DILexicalBlock(scope: !264, file: !1, line: 391, column: 8)
!277 = !DILocation(line: 391, column: 10, scope: !276)
!278 = !DILocation(line: 391, column: 8, scope: !264)
!279 = !DILocalVariable(name: "s", scope: !280, file: !1, line: 392, type: !89)
!280 = distinct !DILexicalBlock(scope: !276, file: !1, line: 391, column: 17)
!281 = !DILocation(line: 392, column: 20, scope: !280)
!282 = !DILocation(line: 392, column: 33, scope: !280)
!283 = !DILocation(line: 392, column: 32, scope: !280)
!284 = !DILocation(line: 392, column: 24, scope: !280)
!285 = !DILocalVariable(name: "c", scope: !280, file: !1, line: 393, type: !89)
!286 = !DILocation(line: 393, column: 20, scope: !280)
!287 = !DILocation(line: 393, column: 33, scope: !280)
!288 = !DILocation(line: 393, column: 32, scope: !280)
!289 = !DILocation(line: 393, column: 24, scope: !280)
!290 = !DILocation(line: 394, column: 15, scope: !291)
!291 = distinct !DILexicalBlock(scope: !280, file: !1, line: 394, column: 10)
!292 = !DILocation(line: 394, column: 10, scope: !291)
!293 = !DILocation(line: 394, column: 18, scope: !291)
!294 = !DILocation(line: 394, column: 10, scope: !280)
!295 = !DILocation(line: 395, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !291, file: !1, line: 394, column: 42)
!297 = distinct !{!297, !295}
!298 = !DILocation(line: 395, column: 9, scope: !299)
!299 = !DILexicalBlockFile(scope: !300, file: !1, discriminator: 1)
!300 = distinct !DILexicalBlock(scope: !296, file: !1, line: 395, column: 9)
!301 = distinct !{!301, !302}
!302 = !DILocation(line: 395, column: 9, scope: !300)
!303 = !DILocation(line: 395, column: 9, scope: !304)
!304 = !DILexicalBlockFile(scope: !305, file: !1, discriminator: 2)
!305 = distinct !DILexicalBlock(scope: !300, file: !1, line: 395, column: 9)
!306 = !DILocation(line: 395, column: 9, scope: !307)
!307 = !DILexicalBlockFile(scope: !300, file: !1, discriminator: 3)
!308 = !DILocation(line: 396, column: 7, scope: !296)
!309 = !DILocation(line: 398, column: 28, scope: !310)
!310 = distinct !DILexicalBlock(scope: !291, file: !1, line: 397, column: 12)
!311 = !DILocation(line: 398, column: 24, scope: !310)
!312 = !DILocation(line: 398, column: 37, scope: !310)
!313 = !DILocation(line: 398, column: 36, scope: !310)
!314 = !DILocation(line: 398, column: 31, scope: !310)
!315 = !DILocation(line: 398, column: 50, scope: !310)
!316 = !DILocation(line: 398, column: 39, scope: !310)
!317 = !DILocation(line: 398, column: 63, scope: !310)
!318 = !DILocation(line: 398, column: 61, scope: !310)
!319 = !DILocation(line: 398, column: 65, scope: !310)
!320 = !DILocation(line: 398, column: 64, scope: !310)
!321 = !DILocation(line: 398, column: 54, scope: !310)
!322 = !DILocation(line: 398, column: 9, scope: !310)
!323 = !DILocation(line: 398, column: 17, scope: !310)
!324 = !DILocation(line: 398, column: 22, scope: !310)
!325 = !DILocation(line: 399, column: 34, scope: !310)
!326 = !DILocation(line: 399, column: 29, scope: !310)
!327 = !DILocation(line: 399, column: 28, scope: !310)
!328 = !DILocation(line: 399, column: 36, scope: !310)
!329 = !DILocation(line: 399, column: 54, scope: !310)
!330 = !DILocation(line: 399, column: 56, scope: !310)
!331 = !DILocation(line: 399, column: 55, scope: !310)
!332 = !DILocation(line: 399, column: 52, scope: !310)
!333 = !DILocation(line: 399, column: 9, scope: !310)
!334 = !DILocation(line: 399, column: 17, scope: !310)
!335 = !DILocation(line: 399, column: 22, scope: !310)
!336 = !DILocation(line: 400, column: 33, scope: !310)
!337 = !DILocation(line: 400, column: 9, scope: !310)
!338 = !DILocation(line: 400, column: 17, scope: !310)
!339 = !DILocation(line: 400, column: 21, scope: !310)
!340 = !DILocation(line: 401, column: 47, scope: !310)
!341 = !DILocation(line: 401, column: 55, scope: !310)
!342 = !DILocation(line: 401, column: 42, scope: !310)
!343 = !DILocation(line: 401, column: 40, scope: !310)
!344 = !DILocation(line: 401, column: 9, scope: !310)
!345 = !DILocation(line: 401, column: 17, scope: !310)
!346 = !DILocation(line: 401, column: 21, scope: !310)
!347 = !DILocation(line: 402, column: 9, scope: !310)
!348 = !DILocation(line: 404, column: 5, scope: !280)
!349 = !DILocation(line: 406, column: 26, scope: !350)
!350 = distinct !DILexicalBlock(scope: !276, file: !1, line: 405, column: 10)
!351 = !DILocation(line: 406, column: 22, scope: !350)
!352 = !DILocation(line: 406, column: 35, scope: !350)
!353 = !DILocation(line: 406, column: 34, scope: !350)
!354 = !DILocation(line: 406, column: 29, scope: !350)
!355 = !DILocation(line: 406, column: 48, scope: !350)
!356 = !DILocation(line: 406, column: 37, scope: !350)
!357 = !DILocation(line: 406, column: 7, scope: !350)
!358 = !DILocation(line: 406, column: 15, scope: !350)
!359 = !DILocation(line: 406, column: 20, scope: !350)
!360 = !DILocation(line: 407, column: 31, scope: !350)
!361 = !DILocation(line: 407, column: 7, scope: !350)
!362 = !DILocation(line: 407, column: 15, scope: !350)
!363 = !DILocation(line: 407, column: 20, scope: !350)
!364 = !DILocation(line: 408, column: 45, scope: !350)
!365 = !DILocation(line: 408, column: 53, scope: !350)
!366 = !DILocation(line: 408, column: 40, scope: !350)
!367 = !DILocation(line: 408, column: 38, scope: !350)
!368 = !DILocation(line: 408, column: 7, scope: !350)
!369 = !DILocation(line: 408, column: 15, scope: !350)
!370 = !DILocation(line: 408, column: 19, scope: !350)
!371 = !DILocation(line: 409, column: 7, scope: !350)
!372 = !DILocation(line: 411, column: 3, scope: !264)
!373 = !DILocalVariable(name: "result_c", scope: !374, file: !1, line: 413, type: !101)
!374 = distinct !DILexicalBlock(scope: !260, file: !1, line: 412, column: 8)
!375 = !DILocation(line: 413, column: 19, scope: !374)
!376 = !DILocation(line: 415, column: 8, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !1, line: 415, column: 8)
!378 = !DILocation(line: 415, column: 10, scope: !377)
!379 = !DILocation(line: 415, column: 8, scope: !374)
!380 = !DILocalVariable(name: "v", scope: !381, file: !1, line: 416, type: !89)
!381 = distinct !DILexicalBlock(scope: !377, file: !1, line: 415, column: 18)
!382 = !DILocation(line: 416, column: 20, scope: !381)
!383 = !DILocation(line: 416, column: 25, scope: !381)
!384 = !DILocation(line: 416, column: 27, scope: !381)
!385 = !DILocalVariable(name: "t1", scope: !381, file: !1, line: 417, type: !89)
!386 = !DILocation(line: 417, column: 20, scope: !381)
!387 = !DILocation(line: 417, column: 29, scope: !381)
!388 = !DILocation(line: 417, column: 28, scope: !381)
!389 = !DILocalVariable(name: "t2", scope: !381, file: !1, line: 418, type: !89)
!390 = !DILocation(line: 418, column: 20, scope: !381)
!391 = !DILocation(line: 418, column: 30, scope: !381)
!392 = !DILocation(line: 418, column: 31, scope: !381)
!393 = !DILocation(line: 418, column: 28, scope: !381)
!394 = !DILocalVariable(name: "t3", scope: !381, file: !1, line: 419, type: !89)
!395 = !DILocation(line: 419, column: 20, scope: !381)
!396 = !DILocation(line: 419, column: 29, scope: !381)
!397 = !DILocation(line: 419, column: 28, scope: !381)
!398 = !DILocation(line: 420, column: 32, scope: !381)
!399 = !DILocation(line: 420, column: 31, scope: !381)
!400 = !DILocation(line: 420, column: 33, scope: !381)
!401 = !DILocation(line: 420, column: 7, scope: !381)
!402 = !DILocation(line: 422, column: 24, scope: !381)
!403 = !DILocation(line: 422, column: 29, scope: !381)
!404 = !DILocation(line: 422, column: 27, scope: !381)
!405 = !DILocation(line: 422, column: 34, scope: !381)
!406 = !DILocation(line: 422, column: 32, scope: !381)
!407 = !DILocation(line: 422, column: 22, scope: !381)
!408 = !DILocation(line: 422, column: 49, scope: !381)
!409 = !DILocation(line: 422, column: 38, scope: !381)
!410 = !DILocation(line: 422, column: 7, scope: !381)
!411 = !DILocation(line: 422, column: 15, scope: !381)
!412 = !DILocation(line: 422, column: 20, scope: !381)
!413 = !DILocation(line: 423, column: 46, scope: !381)
!414 = !DILocation(line: 423, column: 41, scope: !381)
!415 = !DILocation(line: 423, column: 57, scope: !381)
!416 = !DILocation(line: 423, column: 60, scope: !381)
!417 = !DILocation(line: 423, column: 63, scope: !381)
!418 = !DILocation(line: 423, column: 62, scope: !381)
!419 = !DILocation(line: 423, column: 58, scope: !381)
!420 = !DILocation(line: 423, column: 52, scope: !421)
!421 = !DILexicalBlockFile(scope: !381, file: !1, discriminator: 1)
!422 = !DILocation(line: 423, column: 50, scope: !381)
!423 = !DILocation(line: 423, column: 75, scope: !381)
!424 = !DILocation(line: 423, column: 78, scope: !381)
!425 = !DILocation(line: 423, column: 81, scope: !381)
!426 = !DILocation(line: 423, column: 80, scope: !381)
!427 = !DILocation(line: 423, column: 76, scope: !381)
!428 = !DILocation(line: 423, column: 70, scope: !429)
!429 = !DILexicalBlockFile(scope: !381, file: !1, discriminator: 2)
!430 = !DILocation(line: 423, column: 68, scope: !381)
!431 = !DILocation(line: 423, column: 38, scope: !381)
!432 = !DILocation(line: 423, column: 7, scope: !381)
!433 = !DILocation(line: 423, column: 15, scope: !381)
!434 = !DILocation(line: 423, column: 20, scope: !381)
!435 = !DILocation(line: 424, column: 31, scope: !381)
!436 = !DILocation(line: 424, column: 7, scope: !381)
!437 = !DILocation(line: 424, column: 15, scope: !381)
!438 = !DILocation(line: 424, column: 19, scope: !381)
!439 = !DILocation(line: 425, column: 45, scope: !381)
!440 = !DILocation(line: 425, column: 53, scope: !381)
!441 = !DILocation(line: 425, column: 40, scope: !381)
!442 = !DILocation(line: 425, column: 38, scope: !381)
!443 = !DILocation(line: 425, column: 7, scope: !381)
!444 = !DILocation(line: 425, column: 15, scope: !381)
!445 = !DILocation(line: 425, column: 19, scope: !381)
!446 = !DILocation(line: 426, column: 7, scope: !381)
!447 = !DILocation(line: 428, column: 13, scope: !448)
!448 = distinct !DILexicalBlock(scope: !377, file: !1, line: 428, column: 13)
!449 = !DILocation(line: 428, column: 15, scope: !448)
!450 = !DILocation(line: 428, column: 13, scope: !377)
!451 = !DILocalVariable(name: "v", scope: !452, file: !1, line: 429, type: !89)
!452 = distinct !DILexicalBlock(scope: !448, file: !1, line: 428, column: 22)
!453 = !DILocation(line: 429, column: 20, scope: !452)
!454 = !DILocation(line: 429, column: 25, scope: !452)
!455 = !DILocation(line: 429, column: 27, scope: !452)
!456 = !DILocalVariable(name: "t1", scope: !452, file: !1, line: 430, type: !89)
!457 = !DILocation(line: 430, column: 20, scope: !452)
!458 = !DILocation(line: 430, column: 29, scope: !452)
!459 = !DILocation(line: 430, column: 28, scope: !452)
!460 = !DILocalVariable(name: "t2", scope: !452, file: !1, line: 431, type: !89)
!461 = !DILocation(line: 431, column: 20, scope: !452)
!462 = !DILocation(line: 431, column: 29, scope: !452)
!463 = !DILocation(line: 431, column: 28, scope: !452)
!464 = !DILocation(line: 432, column: 32, scope: !452)
!465 = !DILocation(line: 432, column: 31, scope: !452)
!466 = !DILocation(line: 432, column: 33, scope: !452)
!467 = !DILocation(line: 432, column: 7, scope: !452)
!468 = !DILocation(line: 434, column: 24, scope: !452)
!469 = !DILocation(line: 434, column: 29, scope: !452)
!470 = !DILocation(line: 434, column: 27, scope: !452)
!471 = !DILocation(line: 434, column: 22, scope: !452)
!472 = !DILocation(line: 434, column: 44, scope: !452)
!473 = !DILocation(line: 434, column: 33, scope: !452)
!474 = !DILocation(line: 434, column: 7, scope: !452)
!475 = !DILocation(line: 434, column: 15, scope: !452)
!476 = !DILocation(line: 434, column: 20, scope: !452)
!477 = !DILocation(line: 435, column: 46, scope: !452)
!478 = !DILocation(line: 435, column: 41, scope: !452)
!479 = !DILocation(line: 435, column: 57, scope: !452)
!480 = !DILocation(line: 435, column: 60, scope: !452)
!481 = !DILocation(line: 435, column: 63, scope: !452)
!482 = !DILocation(line: 435, column: 62, scope: !452)
!483 = !DILocation(line: 435, column: 58, scope: !452)
!484 = !DILocation(line: 435, column: 52, scope: !485)
!485 = !DILexicalBlockFile(scope: !452, file: !1, discriminator: 1)
!486 = !DILocation(line: 435, column: 50, scope: !452)
!487 = !DILocation(line: 435, column: 38, scope: !452)
!488 = !DILocation(line: 435, column: 7, scope: !452)
!489 = !DILocation(line: 435, column: 15, scope: !452)
!490 = !DILocation(line: 435, column: 20, scope: !452)
!491 = !DILocation(line: 436, column: 31, scope: !452)
!492 = !DILocation(line: 436, column: 7, scope: !452)
!493 = !DILocation(line: 436, column: 15, scope: !452)
!494 = !DILocation(line: 436, column: 19, scope: !452)
!495 = !DILocation(line: 437, column: 45, scope: !452)
!496 = !DILocation(line: 437, column: 53, scope: !452)
!497 = !DILocation(line: 437, column: 40, scope: !452)
!498 = !DILocation(line: 437, column: 38, scope: !452)
!499 = !DILocation(line: 437, column: 7, scope: !452)
!500 = !DILocation(line: 437, column: 15, scope: !452)
!501 = !DILocation(line: 437, column: 19, scope: !452)
!502 = !DILocation(line: 438, column: 7, scope: !452)
!503 = !DILocation(line: 440, column: 13, scope: !504)
!504 = distinct !DILexicalBlock(scope: !448, file: !1, line: 440, column: 13)
!505 = !DILocation(line: 440, column: 15, scope: !504)
!506 = !DILocation(line: 440, column: 13, scope: !448)
!507 = !DILocalVariable(name: "t1", scope: !508, file: !1, line: 441, type: !89)
!508 = distinct !DILexicalBlock(scope: !504, file: !1, line: 440, column: 22)
!509 = !DILocation(line: 441, column: 20, scope: !508)
!510 = !DILocation(line: 441, column: 29, scope: !508)
!511 = !DILocation(line: 441, column: 28, scope: !508)
!512 = !DILocation(line: 442, column: 32, scope: !508)
!513 = !DILocation(line: 442, column: 31, scope: !508)
!514 = !DILocation(line: 442, column: 33, scope: !508)
!515 = !DILocation(line: 442, column: 7, scope: !508)
!516 = !DILocation(line: 444, column: 23, scope: !508)
!517 = !DILocation(line: 444, column: 22, scope: !508)
!518 = !DILocation(line: 444, column: 37, scope: !508)
!519 = !DILocation(line: 444, column: 26, scope: !508)
!520 = !DILocation(line: 444, column: 7, scope: !508)
!521 = !DILocation(line: 444, column: 15, scope: !508)
!522 = !DILocation(line: 444, column: 20, scope: !508)
!523 = !DILocation(line: 445, column: 40, scope: !508)
!524 = !DILocation(line: 445, column: 38, scope: !508)
!525 = !DILocation(line: 445, column: 7, scope: !508)
!526 = !DILocation(line: 445, column: 15, scope: !508)
!527 = !DILocation(line: 445, column: 20, scope: !508)
!528 = !DILocation(line: 446, column: 31, scope: !508)
!529 = !DILocation(line: 446, column: 7, scope: !508)
!530 = !DILocation(line: 446, column: 15, scope: !508)
!531 = !DILocation(line: 446, column: 19, scope: !508)
!532 = !DILocation(line: 447, column: 45, scope: !508)
!533 = !DILocation(line: 447, column: 53, scope: !508)
!534 = !DILocation(line: 447, column: 40, scope: !508)
!535 = !DILocation(line: 447, column: 38, scope: !508)
!536 = !DILocation(line: 447, column: 7, scope: !508)
!537 = !DILocation(line: 447, column: 15, scope: !508)
!538 = !DILocation(line: 447, column: 19, scope: !508)
!539 = !DILocation(line: 448, column: 7, scope: !508)
!540 = !DILocalVariable(name: "v", scope: !541, file: !1, line: 451, type: !89)
!541 = distinct !DILexicalBlock(scope: !504, file: !1, line: 450, column: 10)
!542 = !DILocation(line: 451, column: 20, scope: !541)
!543 = !DILocation(line: 451, column: 24, scope: !541)
!544 = !DILocation(line: 451, column: 26, scope: !541)
!545 = !DILocation(line: 452, column: 39, scope: !541)
!546 = !DILocation(line: 452, column: 38, scope: !541)
!547 = !DILocation(line: 452, column: 40, scope: !541)
!548 = !DILocation(line: 452, column: 46, scope: !541)
!549 = !DILocation(line: 452, column: 14, scope: !541)
!550 = !DILocation(line: 452, column: 7, scope: !541)
!551 = !DILocation(line: 455, column: 1, scope: !224)
!552 = distinct !DISubprogram(name: "gsl_sf_psi_1piy_e", scope: !1, file: !1, line: 618, type: !214, isLocal: false, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!553 = !DILocalVariable(name: "y", arg: 1, scope: !552, file: !1, line: 618, type: !89)
!554 = !DILocation(line: 618, column: 32, scope: !552)
!555 = !DILocalVariable(name: "result", arg: 2, scope: !552, file: !1, line: 618, type: !100)
!556 = !DILocation(line: 618, column: 51, scope: !552)
!557 = !DILocalVariable(name: "ay", scope: !552, file: !1, line: 620, type: !89)
!558 = !DILocation(line: 620, column: 16, scope: !552)
!559 = !DILocation(line: 620, column: 26, scope: !552)
!560 = !DILocation(line: 620, column: 21, scope: !552)
!561 = !DILocation(line: 624, column: 6, scope: !562)
!562 = distinct !DILexicalBlock(scope: !552, file: !1, line: 624, column: 6)
!563 = !DILocation(line: 624, column: 9, scope: !562)
!564 = !DILocation(line: 624, column: 6, scope: !552)
!565 = !DILocalVariable(name: "yi2", scope: !566, file: !1, line: 626, type: !89)
!566 = distinct !DILexicalBlock(scope: !562, file: !1, line: 624, column: 19)
!567 = !DILocation(line: 626, column: 18, scope: !566)
!568 = !DILocation(line: 626, column: 29, scope: !566)
!569 = !DILocation(line: 626, column: 32, scope: !566)
!570 = !DILocation(line: 626, column: 31, scope: !566)
!571 = !DILocation(line: 626, column: 27, scope: !566)
!572 = !DILocalVariable(name: "lny", scope: !566, file: !1, line: 627, type: !89)
!573 = !DILocation(line: 627, column: 18, scope: !566)
!574 = !DILocation(line: 627, column: 28, scope: !566)
!575 = !DILocation(line: 627, column: 24, scope: !566)
!576 = !DILocalVariable(name: "sum", scope: !566, file: !1, line: 628, type: !89)
!577 = !DILocation(line: 628, column: 18, scope: !566)
!578 = !DILocation(line: 628, column: 24, scope: !566)
!579 = !DILocation(line: 628, column: 54, scope: !566)
!580 = !DILocation(line: 628, column: 52, scope: !566)
!581 = !DILocation(line: 628, column: 40, scope: !566)
!582 = !DILocation(line: 628, column: 72, scope: !566)
!583 = !DILocation(line: 628, column: 70, scope: !566)
!584 = !DILocation(line: 628, column: 76, scope: !566)
!585 = !DILocation(line: 628, column: 75, scope: !566)
!586 = !DILocation(line: 628, column: 58, scope: !566)
!587 = !DILocation(line: 628, column: 28, scope: !566)
!588 = !DILocation(line: 629, column: 19, scope: !566)
!589 = !DILocation(line: 629, column: 25, scope: !566)
!590 = !DILocation(line: 629, column: 23, scope: !566)
!591 = !DILocation(line: 629, column: 5, scope: !566)
!592 = !DILocation(line: 629, column: 13, scope: !566)
!593 = !DILocation(line: 629, column: 17, scope: !566)
!594 = !DILocation(line: 630, column: 49, scope: !566)
!595 = !DILocation(line: 630, column: 44, scope: !566)
!596 = !DILocation(line: 630, column: 61, scope: !566)
!597 = !DILocation(line: 630, column: 56, scope: !598)
!598 = !DILexicalBlockFile(scope: !566, file: !1, discriminator: 1)
!599 = !DILocation(line: 630, column: 54, scope: !566)
!600 = !DILocation(line: 630, column: 41, scope: !566)
!601 = !DILocation(line: 630, column: 5, scope: !566)
!602 = !DILocation(line: 630, column: 13, scope: !566)
!603 = !DILocation(line: 630, column: 17, scope: !566)
!604 = !DILocation(line: 631, column: 5, scope: !566)
!605 = !DILocation(line: 633, column: 11, scope: !606)
!606 = distinct !DILexicalBlock(scope: !562, file: !1, line: 633, column: 11)
!607 = !DILocation(line: 633, column: 14, scope: !606)
!608 = !DILocation(line: 633, column: 11, scope: !562)
!609 = !DILocalVariable(name: "yi2", scope: !610, file: !1, line: 635, type: !89)
!610 = distinct !DILexicalBlock(scope: !606, file: !1, line: 633, column: 22)
!611 = !DILocation(line: 635, column: 18, scope: !610)
!612 = !DILocation(line: 635, column: 29, scope: !610)
!613 = !DILocation(line: 635, column: 32, scope: !610)
!614 = !DILocation(line: 635, column: 31, scope: !610)
!615 = !DILocation(line: 635, column: 27, scope: !610)
!616 = !DILocalVariable(name: "lny", scope: !610, file: !1, line: 636, type: !89)
!617 = !DILocation(line: 636, column: 18, scope: !610)
!618 = !DILocation(line: 636, column: 28, scope: !610)
!619 = !DILocation(line: 636, column: 24, scope: !610)
!620 = !DILocalVariable(name: "sum", scope: !610, file: !1, line: 637, type: !89)
!621 = !DILocation(line: 637, column: 18, scope: !610)
!622 = !DILocation(line: 637, column: 24, scope: !610)
!623 = !DILocation(line: 638, column: 26, scope: !610)
!624 = !DILocation(line: 639, column: 28, scope: !610)
!625 = !DILocation(line: 640, column: 30, scope: !610)
!626 = !DILocation(line: 641, column: 32, scope: !610)
!627 = !DILocation(line: 641, column: 67, scope: !610)
!628 = !DILocation(line: 641, column: 65, scope: !610)
!629 = !DILocation(line: 641, column: 49, scope: !610)
!630 = !DILocation(line: 641, column: 36, scope: !610)
!631 = !DILocation(line: 640, column: 47, scope: !610)
!632 = !DILocation(line: 640, column: 34, scope: !610)
!633 = !DILocation(line: 639, column: 45, scope: !610)
!634 = !DILocation(line: 639, column: 32, scope: !610)
!635 = !DILocation(line: 638, column: 43, scope: !610)
!636 = !DILocation(line: 638, column: 30, scope: !610)
!637 = !DILocation(line: 637, column: 40, scope: !610)
!638 = !DILocation(line: 637, column: 28, scope: !610)
!639 = !DILocation(line: 642, column: 19, scope: !610)
!640 = !DILocation(line: 642, column: 25, scope: !610)
!641 = !DILocation(line: 642, column: 23, scope: !610)
!642 = !DILocation(line: 642, column: 5, scope: !610)
!643 = !DILocation(line: 642, column: 13, scope: !610)
!644 = !DILocation(line: 642, column: 17, scope: !610)
!645 = !DILocation(line: 643, column: 49, scope: !610)
!646 = !DILocation(line: 643, column: 44, scope: !610)
!647 = !DILocation(line: 643, column: 61, scope: !610)
!648 = !DILocation(line: 643, column: 56, scope: !649)
!649 = !DILexicalBlockFile(scope: !610, file: !1, discriminator: 1)
!650 = !DILocation(line: 643, column: 54, scope: !610)
!651 = !DILocation(line: 643, column: 41, scope: !610)
!652 = !DILocation(line: 643, column: 5, scope: !610)
!653 = !DILocation(line: 643, column: 13, scope: !610)
!654 = !DILocation(line: 643, column: 17, scope: !610)
!655 = !DILocation(line: 644, column: 5, scope: !610)
!656 = !DILocation(line: 646, column: 11, scope: !657)
!657 = distinct !DILexicalBlock(scope: !606, file: !1, line: 646, column: 11)
!658 = !DILocation(line: 646, column: 14, scope: !657)
!659 = !DILocation(line: 646, column: 11, scope: !606)
!660 = !DILocalVariable(name: "y2", scope: !661, file: !1, line: 647, type: !89)
!661 = distinct !DILexicalBlock(scope: !657, file: !1, line: 646, column: 20)
!662 = !DILocation(line: 647, column: 18, scope: !661)
!663 = !DILocation(line: 647, column: 23, scope: !661)
!664 = !DILocation(line: 647, column: 26, scope: !661)
!665 = !DILocation(line: 647, column: 25, scope: !661)
!666 = !DILocalVariable(name: "x", scope: !661, file: !1, line: 648, type: !89)
!667 = !DILocation(line: 648, column: 18, scope: !661)
!668 = !DILocation(line: 648, column: 28, scope: !661)
!669 = !DILocation(line: 648, column: 27, scope: !661)
!670 = !DILocation(line: 648, column: 31, scope: !661)
!671 = !DILocation(line: 648, column: 38, scope: !661)
!672 = !DILocalVariable(name: "v", scope: !661, file: !1, line: 649, type: !89)
!673 = !DILocation(line: 649, column: 18, scope: !661)
!674 = !DILocation(line: 649, column: 23, scope: !661)
!675 = !DILocation(line: 649, column: 36, scope: !661)
!676 = !DILocation(line: 649, column: 35, scope: !661)
!677 = !DILocation(line: 649, column: 30, scope: !661)
!678 = !DILocation(line: 649, column: 51, scope: !661)
!679 = !DILocation(line: 649, column: 50, scope: !661)
!680 = !DILocation(line: 649, column: 45, scope: !661)
!681 = !DILocation(line: 649, column: 40, scope: !661)
!682 = !DILocation(line: 649, column: 25, scope: !661)
!683 = !DILocalVariable(name: "result_c", scope: !661, file: !1, line: 650, type: !101)
!684 = !DILocation(line: 650, column: 19, scope: !661)
!685 = !DILocation(line: 651, column: 27, scope: !661)
!686 = !DILocation(line: 651, column: 5, scope: !661)
!687 = !DILocation(line: 652, column: 29, scope: !661)
!688 = !DILocation(line: 652, column: 33, scope: !661)
!689 = !DILocation(line: 652, column: 45, scope: !661)
!690 = !DILocation(line: 652, column: 43, scope: !661)
!691 = !DILocation(line: 652, column: 5, scope: !661)
!692 = !DILocation(line: 652, column: 13, scope: !661)
!693 = !DILocation(line: 652, column: 18, scope: !661)
!694 = !DILocation(line: 653, column: 29, scope: !661)
!695 = !DILocation(line: 653, column: 5, scope: !661)
!696 = !DILocation(line: 653, column: 13, scope: !661)
!697 = !DILocation(line: 653, column: 18, scope: !661)
!698 = !DILocation(line: 654, column: 50, scope: !661)
!699 = !DILocation(line: 654, column: 45, scope: !661)
!700 = !DILocation(line: 654, column: 53, scope: !661)
!701 = !DILocation(line: 654, column: 79, scope: !661)
!702 = !DILocation(line: 654, column: 65, scope: !703)
!703 = !DILexicalBlockFile(scope: !661, file: !1, discriminator: 1)
!704 = !DILocation(line: 654, column: 63, scope: !661)
!705 = !DILocation(line: 654, column: 42, scope: !661)
!706 = !DILocation(line: 654, column: 5, scope: !661)
!707 = !DILocation(line: 654, column: 13, scope: !661)
!708 = !DILocation(line: 654, column: 17, scope: !661)
!709 = !DILocation(line: 655, column: 49, scope: !661)
!710 = !DILocation(line: 655, column: 57, scope: !661)
!711 = !DILocation(line: 655, column: 44, scope: !661)
!712 = !DILocation(line: 655, column: 42, scope: !661)
!713 = !DILocation(line: 655, column: 5, scope: !661)
!714 = !DILocation(line: 655, column: 13, scope: !661)
!715 = !DILocation(line: 655, column: 17, scope: !661)
!716 = !DILocation(line: 656, column: 5, scope: !661)
!717 = !DILocation(line: 656, column: 13, scope: !661)
!718 = !DILocation(line: 656, column: 17, scope: !661)
!719 = !DILocation(line: 657, column: 5, scope: !661)
!720 = !DILocalVariable(name: "M", scope: !721, file: !1, line: 671, type: !99)
!721 = distinct !DILexicalBlock(scope: !657, file: !1, line: 659, column: 8)
!722 = !DILocation(line: 671, column: 15, scope: !721)
!723 = !DILocalVariable(name: "y2", scope: !721, file: !1, line: 672, type: !89)
!724 = !DILocation(line: 672, column: 18, scope: !721)
!725 = !DILocation(line: 672, column: 23, scope: !721)
!726 = !DILocation(line: 672, column: 25, scope: !721)
!727 = !DILocation(line: 672, column: 24, scope: !721)
!728 = !DILocalVariable(name: "c0", scope: !721, file: !1, line: 673, type: !89)
!729 = !DILocation(line: 673, column: 18, scope: !721)
!730 = !DILocalVariable(name: "c2", scope: !721, file: !1, line: 674, type: !89)
!731 = !DILocation(line: 674, column: 18, scope: !721)
!732 = !DILocalVariable(name: "c4", scope: !721, file: !1, line: 675, type: !89)
!733 = !DILocation(line: 675, column: 18, scope: !721)
!734 = !DILocalVariable(name: "c6", scope: !721, file: !1, line: 676, type: !89)
!735 = !DILocation(line: 676, column: 18, scope: !721)
!736 = !DILocalVariable(name: "p", scope: !721, file: !1, line: 677, type: !89)
!737 = !DILocation(line: 677, column: 18, scope: !721)
!738 = !DILocation(line: 677, column: 28, scope: !721)
!739 = !DILocation(line: 677, column: 39, scope: !721)
!740 = !DILocation(line: 677, column: 48, scope: !721)
!741 = !DILocation(line: 677, column: 50, scope: !721)
!742 = !DILocation(line: 677, column: 46, scope: !721)
!743 = !DILocation(line: 677, column: 41, scope: !721)
!744 = !DILocation(line: 677, column: 37, scope: !721)
!745 = !DILocation(line: 677, column: 31, scope: !721)
!746 = !DILocation(line: 677, column: 26, scope: !721)
!747 = !DILocalVariable(name: "sum", scope: !721, file: !1, line: 678, type: !46)
!748 = !DILocation(line: 678, column: 12, scope: !721)
!749 = !DILocalVariable(name: "v", scope: !721, file: !1, line: 679, type: !46)
!750 = !DILocation(line: 679, column: 12, scope: !721)
!751 = !DILocalVariable(name: "n", scope: !721, file: !1, line: 681, type: !57)
!752 = !DILocation(line: 681, column: 9, scope: !721)
!753 = !DILocation(line: 682, column: 10, scope: !754)
!754 = distinct !DILexicalBlock(scope: !721, file: !1, line: 682, column: 5)
!755 = !DILocation(line: 682, column: 9, scope: !754)
!756 = !DILocation(line: 682, column: 14, scope: !757)
!757 = !DILexicalBlockFile(scope: !758, file: !1, discriminator: 1)
!758 = distinct !DILexicalBlock(scope: !754, file: !1, line: 682, column: 5)
!759 = !DILocation(line: 682, column: 15, scope: !757)
!760 = !DILocation(line: 682, column: 5, scope: !757)
!761 = !DILocation(line: 683, column: 19, scope: !762)
!762 = distinct !DILexicalBlock(scope: !758, file: !1, line: 682, column: 25)
!763 = !DILocation(line: 683, column: 24, scope: !762)
!764 = !DILocation(line: 683, column: 26, scope: !762)
!765 = !DILocation(line: 683, column: 25, scope: !762)
!766 = !DILocation(line: 683, column: 30, scope: !762)
!767 = !DILocation(line: 683, column: 32, scope: !762)
!768 = !DILocation(line: 683, column: 31, scope: !762)
!769 = !DILocation(line: 683, column: 28, scope: !762)
!770 = !DILocation(line: 683, column: 21, scope: !762)
!771 = !DILocation(line: 683, column: 17, scope: !762)
!772 = !DILocation(line: 683, column: 11, scope: !762)
!773 = !DILocation(line: 684, column: 5, scope: !762)
!774 = !DILocation(line: 682, column: 21, scope: !775)
!775 = !DILexicalBlockFile(scope: !758, file: !1, discriminator: 2)
!776 = !DILocation(line: 682, column: 5, scope: !775)
!777 = distinct !{!777, !778}
!778 = !DILocation(line: 682, column: 5, scope: !721)
!779 = !DILocation(line: 686, column: 9, scope: !721)
!780 = !DILocation(line: 686, column: 15, scope: !721)
!781 = !DILocation(line: 686, column: 21, scope: !721)
!782 = !DILocation(line: 686, column: 19, scope: !721)
!783 = !DILocation(line: 686, column: 12, scope: !721)
!784 = !DILocation(line: 686, column: 7, scope: !721)
!785 = !DILocation(line: 687, column: 31, scope: !721)
!786 = !DILocation(line: 687, column: 29, scope: !721)
!787 = !DILocation(line: 687, column: 5, scope: !721)
!788 = !DILocation(line: 687, column: 13, scope: !721)
!789 = !DILocation(line: 687, column: 18, scope: !721)
!790 = !DILocation(line: 688, column: 54, scope: !721)
!791 = !DILocation(line: 688, column: 49, scope: !721)
!792 = !DILocation(line: 688, column: 47, scope: !721)
!793 = !DILocation(line: 688, column: 36, scope: !721)
!794 = !DILocation(line: 688, column: 5, scope: !721)
!795 = !DILocation(line: 688, column: 13, scope: !721)
!796 = !DILocation(line: 688, column: 18, scope: !721)
!797 = !DILocation(line: 689, column: 49, scope: !721)
!798 = !DILocation(line: 689, column: 57, scope: !721)
!799 = !DILocation(line: 689, column: 44, scope: !721)
!800 = !DILocation(line: 689, column: 42, scope: !721)
!801 = !DILocation(line: 689, column: 5, scope: !721)
!802 = !DILocation(line: 689, column: 13, scope: !721)
!803 = !DILocation(line: 689, column: 17, scope: !721)
!804 = !DILocation(line: 690, column: 5, scope: !721)
!805 = !DILocation(line: 692, column: 1, scope: !552)
!806 = distinct !DISubprogram(name: "cheb_eval_e", scope: !807, file: !807, line: 3, type: !808, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!807 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!808 = !DISubroutineType(types: !809)
!809 = !{!57, !810, !89, !100}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64, align: 64)
!811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!812 = !DILocalVariable(name: "cs", arg: 1, scope: !806, file: !807, line: 3, type: !810)
!813 = !DILocation(line: 3, column: 33, scope: !806)
!814 = !DILocalVariable(name: "x", arg: 2, scope: !806, file: !807, line: 4, type: !89)
!815 = !DILocation(line: 4, column: 26, scope: !806)
!816 = !DILocalVariable(name: "result", arg: 3, scope: !806, file: !807, line: 5, type: !100)
!817 = !DILocation(line: 5, column: 29, scope: !806)
!818 = !DILocalVariable(name: "j", scope: !806, file: !807, line: 7, type: !57)
!819 = !DILocation(line: 7, column: 7, scope: !806)
!820 = !DILocalVariable(name: "d", scope: !806, file: !807, line: 8, type: !46)
!821 = !DILocation(line: 8, column: 10, scope: !806)
!822 = !DILocalVariable(name: "dd", scope: !806, file: !807, line: 9, type: !46)
!823 = !DILocation(line: 9, column: 10, scope: !806)
!824 = !DILocalVariable(name: "y", scope: !806, file: !807, line: 11, type: !46)
!825 = !DILocation(line: 11, column: 10, scope: !806)
!826 = !DILocation(line: 11, column: 20, scope: !806)
!827 = !DILocation(line: 11, column: 19, scope: !806)
!828 = !DILocation(line: 11, column: 24, scope: !806)
!829 = !DILocation(line: 11, column: 28, scope: !806)
!830 = !DILocation(line: 11, column: 22, scope: !806)
!831 = !DILocation(line: 11, column: 32, scope: !806)
!832 = !DILocation(line: 11, column: 36, scope: !806)
!833 = !DILocation(line: 11, column: 30, scope: !806)
!834 = !DILocation(line: 11, column: 42, scope: !806)
!835 = !DILocation(line: 11, column: 46, scope: !806)
!836 = !DILocation(line: 11, column: 50, scope: !806)
!837 = !DILocation(line: 11, column: 54, scope: !806)
!838 = !DILocation(line: 11, column: 48, scope: !806)
!839 = !DILocation(line: 11, column: 39, scope: !806)
!840 = !DILocalVariable(name: "y2", scope: !806, file: !807, line: 12, type: !46)
!841 = !DILocation(line: 12, column: 10, scope: !806)
!842 = !DILocation(line: 12, column: 21, scope: !806)
!843 = !DILocation(line: 12, column: 19, scope: !806)
!844 = !DILocalVariable(name: "e", scope: !806, file: !807, line: 14, type: !46)
!845 = !DILocation(line: 14, column: 10, scope: !806)
!846 = !DILocation(line: 16, column: 11, scope: !847)
!847 = distinct !DILexicalBlock(scope: !806, file: !807, line: 16, column: 3)
!848 = !DILocation(line: 16, column: 15, scope: !847)
!849 = !DILocation(line: 16, column: 9, scope: !847)
!850 = !DILocation(line: 16, column: 7, scope: !847)
!851 = !DILocation(line: 16, column: 22, scope: !852)
!852 = !DILexicalBlockFile(scope: !853, file: !807, discriminator: 1)
!853 = distinct !DILexicalBlock(scope: !847, file: !807, line: 16, column: 3)
!854 = !DILocation(line: 16, column: 23, scope: !852)
!855 = !DILocation(line: 16, column: 3, scope: !852)
!856 = !DILocalVariable(name: "temp", scope: !857, file: !807, line: 17, type: !46)
!857 = distinct !DILexicalBlock(scope: !853, file: !807, line: 16, column: 33)
!858 = !DILocation(line: 17, column: 12, scope: !857)
!859 = !DILocation(line: 17, column: 19, scope: !857)
!860 = !DILocation(line: 18, column: 9, scope: !857)
!861 = !DILocation(line: 18, column: 12, scope: !857)
!862 = !DILocation(line: 18, column: 11, scope: !857)
!863 = !DILocation(line: 18, column: 16, scope: !857)
!864 = !DILocation(line: 18, column: 14, scope: !857)
!865 = !DILocation(line: 18, column: 27, scope: !857)
!866 = !DILocation(line: 18, column: 21, scope: !857)
!867 = !DILocation(line: 18, column: 25, scope: !857)
!868 = !DILocation(line: 18, column: 19, scope: !857)
!869 = !DILocation(line: 18, column: 7, scope: !857)
!870 = !DILocation(line: 19, column: 15, scope: !857)
!871 = !DILocation(line: 19, column: 18, scope: !857)
!872 = !DILocation(line: 19, column: 17, scope: !857)
!873 = !DILocation(line: 19, column: 10, scope: !857)
!874 = !DILocation(line: 19, column: 31, scope: !857)
!875 = !DILocation(line: 19, column: 26, scope: !876)
!876 = !DILexicalBlockFile(scope: !857, file: !807, discriminator: 1)
!877 = !DILocation(line: 19, column: 24, scope: !857)
!878 = !DILocation(line: 19, column: 48, scope: !857)
!879 = !DILocation(line: 19, column: 42, scope: !857)
!880 = !DILocation(line: 19, column: 46, scope: !857)
!881 = !DILocation(line: 19, column: 37, scope: !882)
!882 = !DILexicalBlockFile(scope: !857, file: !807, discriminator: 2)
!883 = !DILocation(line: 19, column: 35, scope: !857)
!884 = !DILocation(line: 19, column: 7, scope: !857)
!885 = !DILocation(line: 20, column: 10, scope: !857)
!886 = !DILocation(line: 20, column: 8, scope: !857)
!887 = !DILocation(line: 21, column: 3, scope: !857)
!888 = !DILocation(line: 16, column: 29, scope: !889)
!889 = !DILexicalBlockFile(scope: !853, file: !807, discriminator: 2)
!890 = !DILocation(line: 16, column: 3, scope: !889)
!891 = distinct !{!891, !892}
!892 = !DILocation(line: 16, column: 3, scope: !806)
!893 = !DILocalVariable(name: "temp", scope: !894, file: !807, line: 24, type: !46)
!894 = distinct !DILexicalBlock(scope: !806, file: !807, line: 23, column: 3)
!895 = !DILocation(line: 24, column: 12, scope: !894)
!896 = !DILocation(line: 24, column: 19, scope: !894)
!897 = !DILocation(line: 25, column: 9, scope: !894)
!898 = !DILocation(line: 25, column: 11, scope: !894)
!899 = !DILocation(line: 25, column: 10, scope: !894)
!900 = !DILocation(line: 25, column: 15, scope: !894)
!901 = !DILocation(line: 25, column: 13, scope: !894)
!902 = !DILocation(line: 25, column: 26, scope: !894)
!903 = !DILocation(line: 25, column: 30, scope: !894)
!904 = !DILocation(line: 25, column: 24, scope: !894)
!905 = !DILocation(line: 25, column: 18, scope: !894)
!906 = !DILocation(line: 25, column: 7, scope: !894)
!907 = !DILocation(line: 26, column: 15, scope: !894)
!908 = !DILocation(line: 26, column: 17, scope: !894)
!909 = !DILocation(line: 26, column: 16, scope: !894)
!910 = !DILocation(line: 26, column: 10, scope: !894)
!911 = !DILocation(line: 26, column: 30, scope: !894)
!912 = !DILocation(line: 26, column: 25, scope: !913)
!913 = !DILexicalBlockFile(scope: !894, file: !807, discriminator: 1)
!914 = !DILocation(line: 26, column: 23, scope: !894)
!915 = !DILocation(line: 26, column: 47, scope: !894)
!916 = !DILocation(line: 26, column: 51, scope: !894)
!917 = !DILocation(line: 26, column: 42, scope: !918)
!918 = !DILexicalBlockFile(scope: !894, file: !807, discriminator: 2)
!919 = !DILocation(line: 26, column: 40, scope: !894)
!920 = !DILocation(line: 26, column: 34, scope: !894)
!921 = !DILocation(line: 26, column: 7, scope: !894)
!922 = !DILocation(line: 29, column: 17, scope: !806)
!923 = !DILocation(line: 29, column: 3, scope: !806)
!924 = !DILocation(line: 29, column: 11, scope: !806)
!925 = !DILocation(line: 29, column: 15, scope: !806)
!926 = !DILocation(line: 30, column: 35, scope: !806)
!927 = !DILocation(line: 30, column: 33, scope: !806)
!928 = !DILocation(line: 30, column: 50, scope: !806)
!929 = !DILocation(line: 30, column: 54, scope: !806)
!930 = !DILocation(line: 30, column: 44, scope: !806)
!931 = !DILocation(line: 30, column: 48, scope: !806)
!932 = !DILocation(line: 30, column: 39, scope: !806)
!933 = !DILocation(line: 30, column: 37, scope: !806)
!934 = !DILocation(line: 30, column: 3, scope: !806)
!935 = !DILocation(line: 30, column: 11, scope: !806)
!936 = !DILocation(line: 30, column: 15, scope: !806)
!937 = !DILocation(line: 32, column: 3, scope: !806)
!938 = distinct !DISubprogram(name: "gsl_sf_psi_1_int_e", scope: !1, file: !1, line: 695, type: !97, isLocal: false, isDefinition: true, scopeLine: 696, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!939 = !DILocalVariable(name: "n", arg: 1, scope: !938, file: !1, line: 695, type: !99)
!940 = !DILocation(line: 695, column: 34, scope: !938)
!941 = !DILocalVariable(name: "result", arg: 2, scope: !938, file: !1, line: 695, type: !100)
!942 = !DILocation(line: 695, column: 53, scope: !938)
!943 = !DILocation(line: 698, column: 6, scope: !944)
!944 = distinct !DILexicalBlock(scope: !938, file: !1, line: 698, column: 6)
!945 = !DILocation(line: 698, column: 8, scope: !944)
!946 = !DILocation(line: 698, column: 6, scope: !938)
!947 = !DILocation(line: 699, column: 5, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !1, line: 698, column: 14)
!949 = distinct !{!949, !947}
!950 = !DILocation(line: 699, column: 5, scope: !951)
!951 = !DILexicalBlockFile(scope: !952, file: !1, discriminator: 1)
!952 = distinct !DILexicalBlock(scope: !948, file: !1, line: 699, column: 5)
!953 = distinct !{!953, !954}
!954 = !DILocation(line: 699, column: 5, scope: !952)
!955 = !DILocation(line: 699, column: 5, scope: !956)
!956 = !DILexicalBlockFile(scope: !957, file: !1, discriminator: 2)
!957 = distinct !DILexicalBlock(scope: !952, file: !1, line: 699, column: 5)
!958 = !DILocation(line: 699, column: 5, scope: !959)
!959 = !DILexicalBlockFile(scope: !952, file: !1, discriminator: 3)
!960 = !DILocation(line: 700, column: 3, scope: !948)
!961 = !DILocation(line: 701, column: 11, scope: !962)
!962 = distinct !DILexicalBlock(scope: !944, file: !1, line: 701, column: 11)
!963 = !DILocation(line: 701, column: 13, scope: !962)
!964 = !DILocation(line: 701, column: 11, scope: !944)
!965 = !DILocation(line: 702, column: 31, scope: !966)
!966 = distinct !DILexicalBlock(scope: !962, file: !1, line: 701, column: 34)
!967 = !DILocation(line: 702, column: 19, scope: !966)
!968 = !DILocation(line: 702, column: 5, scope: !966)
!969 = !DILocation(line: 702, column: 13, scope: !966)
!970 = !DILocation(line: 702, column: 17, scope: !966)
!971 = !DILocation(line: 703, column: 37, scope: !966)
!972 = !DILocation(line: 703, column: 45, scope: !966)
!973 = !DILocation(line: 703, column: 35, scope: !966)
!974 = !DILocation(line: 703, column: 5, scope: !966)
!975 = !DILocation(line: 703, column: 13, scope: !966)
!976 = !DILocation(line: 703, column: 17, scope: !966)
!977 = !DILocation(line: 704, column: 5, scope: !966)
!978 = !DILocalVariable(name: "c0", scope: !979, file: !1, line: 710, type: !89)
!979 = distinct !DILexicalBlock(scope: !962, file: !1, line: 706, column: 8)
!980 = !DILocation(line: 710, column: 18, scope: !979)
!981 = !DILocalVariable(name: "c1", scope: !979, file: !1, line: 711, type: !89)
!982 = !DILocation(line: 711, column: 18, scope: !979)
!983 = !DILocalVariable(name: "c2", scope: !979, file: !1, line: 712, type: !89)
!984 = !DILocation(line: 712, column: 18, scope: !979)
!985 = !DILocalVariable(name: "ni2", scope: !979, file: !1, line: 713, type: !89)
!986 = !DILocation(line: 713, column: 18, scope: !979)
!987 = !DILocation(line: 713, column: 29, scope: !979)
!988 = !DILocation(line: 713, column: 28, scope: !979)
!989 = !DILocation(line: 713, column: 37, scope: !979)
!990 = !DILocation(line: 713, column: 36, scope: !979)
!991 = !DILocation(line: 713, column: 31, scope: !979)
!992 = !DILocalVariable(name: "ser", scope: !979, file: !1, line: 714, type: !89)
!993 = !DILocation(line: 714, column: 18, scope: !979)
!994 = !DILocation(line: 714, column: 25, scope: !979)
!995 = !DILocation(line: 714, column: 29, scope: !979)
!996 = !DILocation(line: 714, column: 28, scope: !979)
!997 = !DILocation(line: 714, column: 41, scope: !979)
!998 = !DILocation(line: 714, column: 54, scope: !979)
!999 = !DILocation(line: 714, column: 53, scope: !979)
!1000 = !DILocation(line: 714, column: 49, scope: !979)
!1001 = !DILocation(line: 714, column: 44, scope: !979)
!1002 = !DILocation(line: 714, column: 39, scope: !979)
!1003 = !DILocation(line: 714, column: 33, scope: !979)
!1004 = !DILocation(line: 715, column: 30, scope: !979)
!1005 = !DILocation(line: 715, column: 29, scope: !979)
!1006 = !DILocation(line: 715, column: 24, scope: !979)
!1007 = !DILocation(line: 715, column: 43, scope: !979)
!1008 = !DILocation(line: 715, column: 42, scope: !979)
!1009 = !DILocation(line: 715, column: 45, scope: !979)
!1010 = !DILocation(line: 715, column: 44, scope: !979)
!1011 = !DILocation(line: 715, column: 37, scope: !979)
!1012 = !DILocation(line: 715, column: 32, scope: !979)
!1013 = !DILocation(line: 715, column: 50, scope: !979)
!1014 = !DILocation(line: 715, column: 48, scope: !979)
!1015 = !DILocation(line: 715, column: 57, scope: !979)
!1016 = !DILocation(line: 715, column: 55, scope: !979)
!1017 = !DILocation(line: 715, column: 5, scope: !979)
!1018 = !DILocation(line: 715, column: 13, scope: !979)
!1019 = !DILocation(line: 715, column: 17, scope: !979)
!1020 = !DILocation(line: 716, column: 37, scope: !979)
!1021 = !DILocation(line: 716, column: 45, scope: !979)
!1022 = !DILocation(line: 716, column: 35, scope: !979)
!1023 = !DILocation(line: 716, column: 5, scope: !979)
!1024 = !DILocation(line: 716, column: 13, scope: !979)
!1025 = !DILocation(line: 716, column: 17, scope: !979)
!1026 = !DILocation(line: 717, column: 5, scope: !979)
!1027 = !DILocation(line: 719, column: 1, scope: !938)
!1028 = distinct !DISubprogram(name: "gsl_sf_psi_1_e", scope: !1, file: !1, line: 722, type: !214, isLocal: false, isDefinition: true, scopeLine: 723, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!1029 = !DILocalVariable(name: "x", arg: 1, scope: !1028, file: !1, line: 722, type: !89)
!1030 = !DILocation(line: 722, column: 33, scope: !1028)
!1031 = !DILocalVariable(name: "result", arg: 2, scope: !1028, file: !1, line: 722, type: !100)
!1032 = !DILocation(line: 722, column: 52, scope: !1028)
!1033 = !DILocation(line: 726, column: 6, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 726, column: 6)
!1035 = !DILocation(line: 726, column: 8, scope: !1034)
!1036 = !DILocation(line: 726, column: 15, scope: !1034)
!1037 = !DILocation(line: 726, column: 18, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1034, file: !1, discriminator: 1)
!1039 = !DILocation(line: 726, column: 20, scope: !1038)
!1040 = !DILocation(line: 726, column: 28, scope: !1038)
!1041 = !DILocation(line: 726, column: 31, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1034, file: !1, discriminator: 2)
!1043 = !DILocation(line: 726, column: 33, scope: !1042)
!1044 = !DILocation(line: 726, column: 6, scope: !1042)
!1045 = !DILocation(line: 727, column: 5, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 726, column: 42)
!1047 = distinct !{!1047, !1045}
!1048 = !DILocation(line: 727, column: 5, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1050, file: !1, discriminator: 1)
!1050 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 727, column: 5)
!1051 = distinct !{!1051, !1052}
!1052 = !DILocation(line: 727, column: 5, scope: !1050)
!1053 = !DILocation(line: 727, column: 5, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1055, file: !1, discriminator: 2)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 727, column: 5)
!1056 = !DILocation(line: 727, column: 5, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1050, file: !1, discriminator: 3)
!1058 = !DILocation(line: 728, column: 3, scope: !1046)
!1059 = !DILocation(line: 729, column: 11, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 729, column: 11)
!1061 = !DILocation(line: 729, column: 13, scope: !1060)
!1062 = !DILocation(line: 729, column: 11, scope: !1034)
!1063 = !DILocation(line: 731, column: 25, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 730, column: 3)
!1065 = !DILocation(line: 731, column: 28, scope: !1064)
!1066 = !DILocation(line: 731, column: 12, scope: !1064)
!1067 = !DILocation(line: 731, column: 5, scope: !1064)
!1068 = !DILocation(line: 733, column: 11, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 733, column: 11)
!1070 = !DILocation(line: 733, column: 13, scope: !1069)
!1071 = !DILocation(line: 733, column: 11, scope: !1060)
!1072 = !DILocalVariable(name: "M", scope: !1073, file: !1, line: 736, type: !57)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 734, column: 3)
!1074 = !DILocation(line: 736, column: 9, scope: !1073)
!1075 = !DILocation(line: 736, column: 20, scope: !1073)
!1076 = !DILocation(line: 736, column: 14, scope: !1073)
!1077 = !DILocation(line: 736, column: 13, scope: !1073)
!1078 = !DILocalVariable(name: "fx", scope: !1073, file: !1, line: 737, type: !46)
!1079 = !DILocation(line: 737, column: 12, scope: !1073)
!1080 = !DILocation(line: 737, column: 17, scope: !1073)
!1081 = !DILocation(line: 737, column: 21, scope: !1073)
!1082 = !DILocation(line: 737, column: 19, scope: !1073)
!1083 = !DILocalVariable(name: "sum", scope: !1073, file: !1, line: 738, type: !46)
!1084 = !DILocation(line: 738, column: 12, scope: !1073)
!1085 = !DILocalVariable(name: "m", scope: !1073, file: !1, line: 739, type: !57)
!1086 = !DILocation(line: 739, column: 9, scope: !1073)
!1087 = !DILocation(line: 741, column: 8, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1073, file: !1, line: 741, column: 8)
!1089 = !DILocation(line: 741, column: 11, scope: !1088)
!1090 = !DILocation(line: 741, column: 8, scope: !1073)
!1091 = !DILocation(line: 742, column: 7, scope: !1088)
!1092 = distinct !{!1092, !1091}
!1093 = !DILocation(line: 742, column: 7, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1095, file: !1, discriminator: 1)
!1095 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 742, column: 7)
!1096 = distinct !{!1096, !1097}
!1097 = !DILocation(line: 742, column: 7, scope: !1095)
!1098 = !DILocation(line: 742, column: 7, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1100, file: !1, discriminator: 2)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 742, column: 7)
!1101 = !DILocation(line: 742, column: 7, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1095, file: !1, discriminator: 3)
!1103 = !DILocation(line: 742, column: 7, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1095, file: !1, discriminator: 4)
!1105 = !DILocation(line: 744, column: 11, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1073, file: !1, line: 744, column: 5)
!1107 = !DILocation(line: 744, column: 9, scope: !1106)
!1108 = !DILocation(line: 744, column: 16, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1110, file: !1, discriminator: 1)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 744, column: 5)
!1111 = !DILocation(line: 744, column: 20, scope: !1109)
!1112 = !DILocation(line: 744, column: 18, scope: !1109)
!1113 = !DILocation(line: 744, column: 5, scope: !1109)
!1114 = !DILocation(line: 745, column: 20, scope: !1110)
!1115 = !DILocation(line: 745, column: 22, scope: !1110)
!1116 = !DILocation(line: 745, column: 21, scope: !1110)
!1117 = !DILocation(line: 745, column: 26, scope: !1110)
!1118 = !DILocation(line: 745, column: 28, scope: !1110)
!1119 = !DILocation(line: 745, column: 27, scope: !1110)
!1120 = !DILocation(line: 745, column: 24, scope: !1110)
!1121 = !DILocation(line: 745, column: 17, scope: !1110)
!1122 = !DILocation(line: 745, column: 11, scope: !1110)
!1123 = !DILocation(line: 745, column: 7, scope: !1110)
!1124 = !DILocation(line: 744, column: 23, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1110, file: !1, discriminator: 2)
!1126 = !DILocation(line: 744, column: 5, scope: !1125)
!1127 = distinct !{!1127, !1128}
!1128 = !DILocation(line: 744, column: 5, scope: !1073)
!1129 = !DILocalVariable(name: "stat_psi", scope: !1130, file: !1, line: 748, type: !57)
!1130 = distinct !DILexicalBlock(scope: !1073, file: !1, line: 747, column: 5)
!1131 = !DILocation(line: 748, column: 11, scope: !1130)
!1132 = !DILocation(line: 748, column: 35, scope: !1130)
!1133 = !DILocation(line: 748, column: 39, scope: !1130)
!1134 = !DILocation(line: 748, column: 22, scope: !1130)
!1135 = !DILocation(line: 749, column: 22, scope: !1130)
!1136 = !DILocation(line: 749, column: 7, scope: !1130)
!1137 = !DILocation(line: 749, column: 15, scope: !1130)
!1138 = !DILocation(line: 749, column: 19, scope: !1130)
!1139 = !DILocation(line: 750, column: 22, scope: !1130)
!1140 = !DILocation(line: 750, column: 24, scope: !1130)
!1141 = !DILocation(line: 750, column: 44, scope: !1130)
!1142 = !DILocation(line: 750, column: 42, scope: !1130)
!1143 = !DILocation(line: 750, column: 7, scope: !1130)
!1144 = !DILocation(line: 750, column: 15, scope: !1130)
!1145 = !DILocation(line: 750, column: 19, scope: !1130)
!1146 = !DILocation(line: 751, column: 14, scope: !1130)
!1147 = !DILocation(line: 751, column: 7, scope: !1130)
!1148 = !DILocalVariable(name: "sin_px", scope: !1149, file: !1, line: 757, type: !89)
!1149 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 755, column: 3)
!1150 = !DILocation(line: 757, column: 18, scope: !1149)
!1151 = !DILocation(line: 757, column: 38, scope: !1149)
!1152 = !DILocation(line: 757, column: 36, scope: !1149)
!1153 = !DILocation(line: 757, column: 27, scope: !1149)
!1154 = !DILocalVariable(name: "d", scope: !1149, file: !1, line: 758, type: !89)
!1155 = !DILocation(line: 758, column: 18, scope: !1149)
!1156 = !DILocation(line: 758, column: 33, scope: !1149)
!1157 = !DILocation(line: 758, column: 40, scope: !1149)
!1158 = !DILocation(line: 758, column: 39, scope: !1149)
!1159 = !DILocation(line: 758, column: 31, scope: !1149)
!1160 = !DILocalVariable(name: "r", scope: !1149, file: !1, line: 759, type: !101)
!1161 = !DILocation(line: 759, column: 19, scope: !1149)
!1162 = !DILocalVariable(name: "stat_psi", scope: !1149, file: !1, line: 760, type: !57)
!1163 = !DILocation(line: 760, column: 9, scope: !1149)
!1164 = !DILocation(line: 760, column: 37, scope: !1149)
!1165 = !DILocation(line: 760, column: 36, scope: !1149)
!1166 = !DILocation(line: 760, column: 20, scope: !1149)
!1167 = !DILocation(line: 761, column: 19, scope: !1149)
!1168 = !DILocation(line: 761, column: 25, scope: !1149)
!1169 = !DILocation(line: 761, column: 21, scope: !1149)
!1170 = !DILocation(line: 761, column: 5, scope: !1149)
!1171 = !DILocation(line: 761, column: 13, scope: !1149)
!1172 = !DILocation(line: 761, column: 17, scope: !1149)
!1173 = !DILocation(line: 762, column: 21, scope: !1149)
!1174 = !DILocation(line: 762, column: 47, scope: !1149)
!1175 = !DILocation(line: 762, column: 46, scope: !1149)
!1176 = !DILocation(line: 762, column: 25, scope: !1149)
!1177 = !DILocation(line: 762, column: 5, scope: !1149)
!1178 = !DILocation(line: 762, column: 13, scope: !1149)
!1179 = !DILocation(line: 762, column: 17, scope: !1149)
!1180 = !DILocation(line: 763, column: 12, scope: !1149)
!1181 = !DILocation(line: 763, column: 5, scope: !1149)
!1182 = !DILocation(line: 765, column: 1, scope: !1028)
!1183 = distinct !DISubprogram(name: "psi_n_xg0", scope: !1, file: !1, line: 559, type: !1184, isLocal: true, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!57, !99, !89, !100}
!1186 = !DILocalVariable(name: "n", arg: 1, scope: !1183, file: !1, line: 559, type: !99)
!1187 = !DILocation(line: 559, column: 21, scope: !1183)
!1188 = !DILocalVariable(name: "x", arg: 2, scope: !1183, file: !1, line: 559, type: !89)
!1189 = !DILocation(line: 559, column: 37, scope: !1183)
!1190 = !DILocalVariable(name: "result", arg: 3, scope: !1183, file: !1, line: 559, type: !100)
!1191 = !DILocation(line: 559, column: 56, scope: !1183)
!1192 = !DILocation(line: 561, column: 6, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 561, column: 6)
!1194 = !DILocation(line: 561, column: 8, scope: !1193)
!1195 = !DILocation(line: 561, column: 6, scope: !1183)
!1196 = !DILocation(line: 562, column: 25, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 561, column: 14)
!1198 = !DILocation(line: 562, column: 28, scope: !1197)
!1199 = !DILocation(line: 562, column: 12, scope: !1197)
!1200 = !DILocation(line: 562, column: 5, scope: !1197)
!1201 = !DILocalVariable(name: "ln_nf", scope: !1202, file: !1, line: 566, type: !101)
!1202 = distinct !DILexicalBlock(scope: !1193, file: !1, line: 564, column: 8)
!1203 = !DILocation(line: 566, column: 19, scope: !1202)
!1204 = !DILocalVariable(name: "hzeta", scope: !1202, file: !1, line: 567, type: !101)
!1205 = !DILocation(line: 567, column: 19, scope: !1202)
!1206 = !DILocalVariable(name: "stat_hz", scope: !1202, file: !1, line: 568, type: !57)
!1207 = !DILocation(line: 568, column: 9, scope: !1202)
!1208 = !DILocation(line: 568, column: 34, scope: !1202)
!1209 = !DILocation(line: 568, column: 35, scope: !1202)
!1210 = !DILocation(line: 568, column: 41, scope: !1202)
!1211 = !DILocation(line: 568, column: 19, scope: !1202)
!1212 = !DILocalVariable(name: "stat_nf", scope: !1202, file: !1, line: 569, type: !57)
!1213 = !DILocation(line: 569, column: 9, scope: !1202)
!1214 = !DILocation(line: 569, column: 50, scope: !1202)
!1215 = !DILocation(line: 569, column: 19, scope: !1202)
!1216 = !DILocalVariable(name: "stat_e", scope: !1202, file: !1, line: 570, type: !57)
!1217 = !DILocation(line: 570, column: 9, scope: !1202)
!1218 = !DILocation(line: 570, column: 47, scope: !1202)
!1219 = !DILocation(line: 570, column: 58, scope: !1202)
!1220 = !DILocation(line: 571, column: 50, scope: !1202)
!1221 = !DILocation(line: 571, column: 61, scope: !1202)
!1222 = !DILocation(line: 572, column: 44, scope: !1202)
!1223 = !DILocation(line: 570, column: 19, scope: !1202)
!1224 = !DILocation(line: 573, column: 8, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 573, column: 8)
!1226 = !DILocation(line: 573, column: 8, scope: !1202)
!1227 = !DILocation(line: 573, column: 39, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1225, file: !1, discriminator: 1)
!1229 = !DILocation(line: 573, column: 47, scope: !1228)
!1230 = !DILocation(line: 573, column: 38, scope: !1228)
!1231 = !DILocation(line: 573, column: 24, scope: !1228)
!1232 = !DILocation(line: 573, column: 32, scope: !1228)
!1233 = !DILocation(line: 573, column: 36, scope: !1228)
!1234 = !DILocation(line: 574, column: 12, scope: !1202)
!1235 = !DILocation(line: 574, column: 12, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1202, file: !1, discriminator: 1)
!1237 = !DILocation(line: 574, column: 12, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1202, file: !1, discriminator: 2)
!1239 = !DILocation(line: 574, column: 12, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1202, file: !1, discriminator: 3)
!1241 = !DILocation(line: 574, column: 12, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1202, file: !1, discriminator: 4)
!1243 = !DILocation(line: 574, column: 12, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1202, file: !1, discriminator: 5)
!1245 = !DILocation(line: 574, column: 12, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1202, file: !1, discriminator: 6)
!1247 = !DILocation(line: 574, column: 12, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1202, file: !1, discriminator: 7)
!1249 = !DILocation(line: 574, column: 12, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1202, file: !1, discriminator: 8)
!1251 = !DILocation(line: 574, column: 12, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1202, file: !1, discriminator: 9)
!1253 = !DILocation(line: 574, column: 5, scope: !1252)
!1254 = !DILocation(line: 576, column: 1, scope: !1183)
!1255 = distinct !DISubprogram(name: "gsl_sf_psi_n_e", scope: !1, file: !1, line: 768, type: !1184, isLocal: false, isDefinition: true, scopeLine: 769, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!1256 = !DILocalVariable(name: "n", arg: 1, scope: !1255, file: !1, line: 768, type: !99)
!1257 = !DILocation(line: 768, column: 30, scope: !1255)
!1258 = !DILocalVariable(name: "x", arg: 2, scope: !1255, file: !1, line: 768, type: !89)
!1259 = !DILocation(line: 768, column: 46, scope: !1255)
!1260 = !DILocalVariable(name: "result", arg: 3, scope: !1255, file: !1, line: 768, type: !100)
!1261 = !DILocation(line: 768, column: 65, scope: !1255)
!1262 = !DILocation(line: 772, column: 6, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 772, column: 6)
!1264 = !DILocation(line: 772, column: 8, scope: !1263)
!1265 = !DILocation(line: 772, column: 6, scope: !1255)
!1266 = !DILocation(line: 774, column: 25, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 773, column: 3)
!1268 = !DILocation(line: 774, column: 28, scope: !1267)
!1269 = !DILocation(line: 774, column: 12, scope: !1267)
!1270 = !DILocation(line: 774, column: 5, scope: !1267)
!1271 = !DILocation(line: 776, column: 11, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 776, column: 11)
!1273 = !DILocation(line: 776, column: 13, scope: !1272)
!1274 = !DILocation(line: 776, column: 11, scope: !1263)
!1275 = !DILocation(line: 778, column: 27, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 777, column: 3)
!1277 = !DILocation(line: 778, column: 30, scope: !1276)
!1278 = !DILocation(line: 778, column: 12, scope: !1276)
!1279 = !DILocation(line: 778, column: 5, scope: !1276)
!1280 = !DILocation(line: 780, column: 11, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 780, column: 11)
!1282 = !DILocation(line: 780, column: 13, scope: !1281)
!1283 = !DILocation(line: 780, column: 17, scope: !1281)
!1284 = !DILocation(line: 780, column: 20, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1281, file: !1, discriminator: 1)
!1286 = !DILocation(line: 780, column: 22, scope: !1285)
!1287 = !DILocation(line: 780, column: 11, scope: !1285)
!1288 = !DILocation(line: 781, column: 5, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1281, file: !1, line: 780, column: 30)
!1290 = distinct !{!1290, !1288}
!1291 = !DILocation(line: 781, column: 5, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1293, file: !1, discriminator: 1)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 781, column: 5)
!1294 = distinct !{!1294, !1295}
!1295 = !DILocation(line: 781, column: 5, scope: !1293)
!1296 = !DILocation(line: 781, column: 5, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1298, file: !1, discriminator: 2)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 781, column: 5)
!1299 = !DILocation(line: 781, column: 5, scope: !1300)
!1300 = !DILexicalBlockFile(scope: !1293, file: !1, discriminator: 3)
!1301 = !DILocation(line: 782, column: 3, scope: !1289)
!1302 = !DILocalVariable(name: "ln_nf", scope: !1303, file: !1, line: 784, type: !101)
!1303 = distinct !DILexicalBlock(scope: !1281, file: !1, line: 783, column: 8)
!1304 = !DILocation(line: 784, column: 19, scope: !1303)
!1305 = !DILocalVariable(name: "hzeta", scope: !1303, file: !1, line: 785, type: !101)
!1306 = !DILocation(line: 785, column: 19, scope: !1303)
!1307 = !DILocalVariable(name: "stat_hz", scope: !1303, file: !1, line: 786, type: !57)
!1308 = !DILocation(line: 786, column: 9, scope: !1303)
!1309 = !DILocation(line: 786, column: 34, scope: !1303)
!1310 = !DILocation(line: 786, column: 35, scope: !1303)
!1311 = !DILocation(line: 786, column: 41, scope: !1303)
!1312 = !DILocation(line: 786, column: 19, scope: !1303)
!1313 = !DILocalVariable(name: "stat_nf", scope: !1303, file: !1, line: 787, type: !57)
!1314 = !DILocation(line: 787, column: 9, scope: !1303)
!1315 = !DILocation(line: 787, column: 50, scope: !1303)
!1316 = !DILocation(line: 787, column: 19, scope: !1303)
!1317 = !DILocalVariable(name: "stat_e", scope: !1303, file: !1, line: 788, type: !57)
!1318 = !DILocation(line: 788, column: 9, scope: !1303)
!1319 = !DILocation(line: 788, column: 47, scope: !1303)
!1320 = !DILocation(line: 788, column: 58, scope: !1303)
!1321 = !DILocation(line: 789, column: 50, scope: !1303)
!1322 = !DILocation(line: 789, column: 61, scope: !1303)
!1323 = !DILocation(line: 790, column: 44, scope: !1303)
!1324 = !DILocation(line: 788, column: 19, scope: !1303)
!1325 = !DILocation(line: 791, column: 8, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1303, file: !1, line: 791, column: 8)
!1327 = !DILocation(line: 791, column: 8, scope: !1303)
!1328 = !DILocation(line: 791, column: 39, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1326, file: !1, discriminator: 1)
!1330 = !DILocation(line: 791, column: 47, scope: !1329)
!1331 = !DILocation(line: 791, column: 38, scope: !1329)
!1332 = !DILocation(line: 791, column: 24, scope: !1329)
!1333 = !DILocation(line: 791, column: 32, scope: !1329)
!1334 = !DILocation(line: 791, column: 36, scope: !1329)
!1335 = !DILocation(line: 792, column: 12, scope: !1303)
!1336 = !DILocation(line: 792, column: 12, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1303, file: !1, discriminator: 1)
!1338 = !DILocation(line: 792, column: 12, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1303, file: !1, discriminator: 2)
!1340 = !DILocation(line: 792, column: 12, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1303, file: !1, discriminator: 3)
!1342 = !DILocation(line: 792, column: 12, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1303, file: !1, discriminator: 4)
!1344 = !DILocation(line: 792, column: 12, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1303, file: !1, discriminator: 5)
!1346 = !DILocation(line: 792, column: 12, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !1303, file: !1, discriminator: 6)
!1348 = !DILocation(line: 792, column: 12, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1303, file: !1, discriminator: 7)
!1350 = !DILocation(line: 792, column: 12, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1303, file: !1, discriminator: 8)
!1352 = !DILocation(line: 792, column: 12, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1303, file: !1, discriminator: 9)
!1354 = !DILocation(line: 792, column: 5, scope: !1353)
!1355 = !DILocation(line: 794, column: 1, scope: !1255)
!1356 = distinct !DISubprogram(name: "gsl_sf_complex_psi_e", scope: !1, file: !1, line: 798, type: !1357, isLocal: false, isDefinition: true, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!57, !89, !89, !100, !100}
!1359 = !DILocalVariable(name: "x", arg: 1, scope: !1356, file: !1, line: 799, type: !89)
!1360 = !DILocation(line: 799, column: 16, scope: !1356)
!1361 = !DILocalVariable(name: "y", arg: 2, scope: !1356, file: !1, line: 800, type: !89)
!1362 = !DILocation(line: 800, column: 16, scope: !1356)
!1363 = !DILocalVariable(name: "result_re", arg: 3, scope: !1356, file: !1, line: 801, type: !100)
!1364 = !DILocation(line: 801, column: 19, scope: !1356)
!1365 = !DILocalVariable(name: "result_im", arg: 4, scope: !1356, file: !1, line: 802, type: !100)
!1366 = !DILocation(line: 802, column: 19, scope: !1356)
!1367 = !DILocation(line: 805, column: 6, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 805, column: 6)
!1369 = !DILocation(line: 805, column: 8, scope: !1368)
!1370 = !DILocation(line: 805, column: 6, scope: !1356)
!1371 = !DILocalVariable(name: "z", scope: !1372, file: !1, line: 807, type: !80)
!1372 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 806, column: 3)
!1373 = !DILocation(line: 807, column: 17, scope: !1372)
!1374 = !DILocation(line: 807, column: 38, scope: !1372)
!1375 = !DILocation(line: 807, column: 41, scope: !1372)
!1376 = !DILocation(line: 807, column: 21, scope: !1372)
!1377 = !DILocation(line: 808, column: 31, scope: !1372)
!1378 = !DILocation(line: 808, column: 42, scope: !1372)
!1379 = !DILocation(line: 808, column: 12, scope: !1372)
!1380 = !DILocation(line: 808, column: 5, scope: !1372)
!1381 = !DILocalVariable(name: "z", scope: !1382, file: !1, line: 813, type: !80)
!1382 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 811, column: 3)
!1383 = !DILocation(line: 813, column: 17, scope: !1382)
!1384 = !DILocation(line: 813, column: 38, scope: !1382)
!1385 = !DILocation(line: 813, column: 41, scope: !1382)
!1386 = !DILocation(line: 813, column: 21, scope: !1382)
!1387 = !DILocalVariable(name: "omz", scope: !1382, file: !1, line: 814, type: !80)
!1388 = !DILocation(line: 814, column: 17, scope: !1382)
!1389 = !DILocation(line: 814, column: 46, scope: !1382)
!1390 = !DILocation(line: 814, column: 44, scope: !1382)
!1391 = !DILocation(line: 814, column: 50, scope: !1382)
!1392 = !DILocation(line: 814, column: 49, scope: !1382)
!1393 = !DILocation(line: 814, column: 23, scope: !1382)
!1394 = !DILocalVariable(name: "zpi", scope: !1382, file: !1, line: 815, type: !80)
!1395 = !DILocation(line: 815, column: 17, scope: !1382)
!1396 = !DILocation(line: 815, column: 23, scope: !1382)
!1397 = !DILocalVariable(name: "cotzpi", scope: !1382, file: !1, line: 816, type: !80)
!1398 = !DILocation(line: 816, column: 17, scope: !1382)
!1399 = !DILocation(line: 816, column: 26, scope: !1382)
!1400 = !DILocalVariable(name: "ret_val", scope: !1382, file: !1, line: 817, type: !57)
!1401 = !DILocation(line: 817, column: 9, scope: !1382)
!1402 = !DILocation(line: 817, column: 40, scope: !1382)
!1403 = !DILocation(line: 817, column: 51, scope: !1382)
!1404 = !DILocation(line: 817, column: 19, scope: !1382)
!1405 = !DILocation(line: 819, column: 8, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 819, column: 8)
!1407 = !DILocation(line: 819, column: 38, scope: !1406)
!1408 = !DILocation(line: 819, column: 41, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1406, file: !1, discriminator: 1)
!1410 = !DILocation(line: 819, column: 8, scope: !1409)
!1411 = !DILocation(line: 821, column: 32, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 820, column: 5)
!1413 = !DILocation(line: 821, column: 30, scope: !1412)
!1414 = !DILocation(line: 821, column: 7, scope: !1412)
!1415 = !DILocation(line: 821, column: 18, scope: !1412)
!1416 = !DILocation(line: 821, column: 22, scope: !1412)
!1417 = !DILocation(line: 822, column: 32, scope: !1412)
!1418 = !DILocation(line: 822, column: 30, scope: !1412)
!1419 = !DILocation(line: 822, column: 7, scope: !1412)
!1420 = !DILocation(line: 822, column: 18, scope: !1412)
!1421 = !DILocation(line: 822, column: 22, scope: !1412)
!1422 = !DILocation(line: 823, column: 14, scope: !1412)
!1423 = !DILocation(line: 823, column: 7, scope: !1412)
!1424 = !DILocation(line: 827, column: 7, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 826, column: 5)
!1426 = distinct !{!1426, !1424}
!1427 = !DILocation(line: 827, column: 7, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1429, file: !1, discriminator: 1)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !1, line: 827, column: 7)
!1430 = !DILocation(line: 830, column: 1, scope: !1356)
!1431 = distinct !DISubprogram(name: "psi_complex_rhp", scope: !1, file: !1, line: 499, type: !1432, isLocal: true, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!57, !80, !100, !100}
!1434 = !DILocalVariable(name: "z", arg: 1, scope: !1431, file: !1, line: 500, type: !80)
!1435 = !DILocation(line: 500, column: 15, scope: !1431)
!1436 = !DILocalVariable(name: "result_re", arg: 2, scope: !1431, file: !1, line: 501, type: !100)
!1437 = !DILocation(line: 501, column: 19, scope: !1431)
!1438 = !DILocalVariable(name: "result_im", arg: 3, scope: !1431, file: !1, line: 502, type: !100)
!1439 = !DILocation(line: 502, column: 19, scope: !1431)
!1440 = !DILocalVariable(name: "n_recurse", scope: !1431, file: !1, line: 505, type: !57)
!1441 = !DILocation(line: 505, column: 7, scope: !1431)
!1442 = !DILocalVariable(name: "i", scope: !1431, file: !1, line: 506, type: !57)
!1443 = !DILocation(line: 506, column: 7, scope: !1431)
!1444 = !DILocalVariable(name: "a", scope: !1431, file: !1, line: 507, type: !80)
!1445 = !DILocation(line: 507, column: 15, scope: !1431)
!1446 = !DILocation(line: 509, column: 6, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 509, column: 6)
!1448 = !DILocation(line: 509, column: 18, scope: !1447)
!1449 = !DILocation(line: 509, column: 25, scope: !1447)
!1450 = !DILocation(line: 509, column: 28, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1447, file: !1, discriminator: 1)
!1452 = !DILocation(line: 509, column: 40, scope: !1451)
!1453 = !DILocation(line: 509, column: 6, scope: !1451)
!1454 = !DILocation(line: 511, column: 5, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1447, file: !1, line: 510, column: 3)
!1456 = !DILocation(line: 511, column: 16, scope: !1455)
!1457 = !DILocation(line: 511, column: 20, scope: !1455)
!1458 = !DILocation(line: 512, column: 5, scope: !1455)
!1459 = !DILocation(line: 512, column: 16, scope: !1455)
!1460 = !DILocation(line: 512, column: 20, scope: !1455)
!1461 = !DILocation(line: 513, column: 5, scope: !1455)
!1462 = !DILocation(line: 513, column: 16, scope: !1455)
!1463 = !DILocation(line: 513, column: 20, scope: !1455)
!1464 = !DILocation(line: 514, column: 5, scope: !1455)
!1465 = !DILocation(line: 514, column: 16, scope: !1455)
!1466 = !DILocation(line: 514, column: 20, scope: !1455)
!1467 = !DILocation(line: 515, column: 5, scope: !1455)
!1468 = !DILocation(line: 519, column: 6, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 519, column: 6)
!1470 = !DILocation(line: 519, column: 18, scope: !1469)
!1471 = !DILocation(line: 519, column: 25, scope: !1469)
!1472 = !DILocation(line: 519, column: 33, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1469, file: !1, discriminator: 1)
!1474 = !DILocation(line: 519, column: 28, scope: !1473)
!1475 = !DILocation(line: 519, column: 46, scope: !1473)
!1476 = !DILocation(line: 519, column: 6, scope: !1473)
!1477 = !DILocalVariable(name: "sp", scope: !1478, file: !1, line: 521, type: !89)
!1478 = distinct !DILexicalBlock(scope: !1469, file: !1, line: 520, column: 3)
!1479 = !DILocation(line: 521, column: 18, scope: !1478)
!1480 = !DILocation(line: 521, column: 35, scope: !1478)
!1481 = !DILocation(line: 521, column: 33, scope: !1478)
!1482 = !DILocation(line: 521, column: 23, scope: !1478)
!1483 = !DILocalVariable(name: "sn", scope: !1478, file: !1, line: 522, type: !89)
!1484 = !DILocation(line: 522, column: 18, scope: !1478)
!1485 = !DILocation(line: 522, column: 35, scope: !1478)
!1486 = !DILocation(line: 522, column: 33, scope: !1478)
!1487 = !DILocation(line: 522, column: 23, scope: !1478)
!1488 = !DILocalVariable(name: "rhs", scope: !1478, file: !1, line: 523, type: !89)
!1489 = !DILocation(line: 523, column: 18, scope: !1478)
!1490 = !DILocation(line: 523, column: 24, scope: !1478)
!1491 = !DILocation(line: 523, column: 27, scope: !1478)
!1492 = !DILocation(line: 523, column: 26, scope: !1478)
!1493 = !DILocation(line: 523, column: 32, scope: !1478)
!1494 = !DILocation(line: 523, column: 30, scope: !1478)
!1495 = !DILocation(line: 524, column: 8, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 524, column: 8)
!1497 = !DILocation(line: 524, column: 12, scope: !1496)
!1498 = !DILocation(line: 524, column: 8, scope: !1478)
!1499 = !DILocation(line: 524, column: 36, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1496, file: !1, discriminator: 1)
!1501 = !DILocation(line: 524, column: 31, scope: !1500)
!1502 = !DILocation(line: 524, column: 29, scope: !1500)
!1503 = !DILocation(line: 524, column: 19, scope: !1500)
!1504 = !DILocation(line: 525, column: 3, scope: !1478)
!1505 = !DILocation(line: 528, column: 49, scope: !1431)
!1506 = !DILocation(line: 528, column: 25, scope: !1431)
!1507 = !DILocation(line: 528, column: 7, scope: !1431)
!1508 = !DILocation(line: 528, column: 7, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1431, file: !1, discriminator: 1)
!1510 = !DILocation(line: 528, column: 7, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1431, file: !1, discriminator: 2)
!1512 = !DILocation(line: 530, column: 49, scope: !1431)
!1513 = !DILocation(line: 530, column: 44, scope: !1431)
!1514 = !DILocation(line: 530, column: 42, scope: !1431)
!1515 = !DILocation(line: 530, column: 3, scope: !1431)
!1516 = !DILocation(line: 530, column: 14, scope: !1431)
!1517 = !DILocation(line: 530, column: 18, scope: !1431)
!1518 = !DILocation(line: 531, column: 49, scope: !1431)
!1519 = !DILocation(line: 531, column: 44, scope: !1431)
!1520 = !DILocation(line: 531, column: 42, scope: !1431)
!1521 = !DILocation(line: 531, column: 3, scope: !1431)
!1522 = !DILocation(line: 531, column: 14, scope: !1431)
!1523 = !DILocation(line: 531, column: 18, scope: !1431)
!1524 = !DILocation(line: 534, column: 11, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 534, column: 3)
!1526 = !DILocation(line: 534, column: 9, scope: !1525)
!1527 = !DILocation(line: 534, column: 7, scope: !1525)
!1528 = !DILocation(line: 534, column: 22, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1530, file: !1, discriminator: 1)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !1, line: 534, column: 3)
!1531 = !DILocation(line: 534, column: 24, scope: !1529)
!1532 = !DILocation(line: 534, column: 3, scope: !1529)
!1533 = !DILocalVariable(name: "zn", scope: !1534, file: !1, line: 536, type: !80)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !1, line: 535, column: 3)
!1535 = !DILocation(line: 536, column: 17, scope: !1534)
!1536 = !DILocation(line: 536, column: 46, scope: !1534)
!1537 = !DILocation(line: 536, column: 48, scope: !1534)
!1538 = !DILocation(line: 536, column: 22, scope: !1534)
!1539 = !DILocalVariable(name: "zn_inverse", scope: !1534, file: !1, line: 537, type: !80)
!1540 = !DILocation(line: 537, column: 17, scope: !1534)
!1541 = !DILocation(line: 537, column: 30, scope: !1534)
!1542 = !DILocation(line: 538, column: 9, scope: !1534)
!1543 = !DILocation(line: 538, column: 9, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1534, file: !1, discriminator: 1)
!1545 = !DILocation(line: 541, column: 52, scope: !1534)
!1546 = !DILocation(line: 541, column: 47, scope: !1534)
!1547 = !DILocation(line: 541, column: 45, scope: !1534)
!1548 = !DILocation(line: 541, column: 5, scope: !1534)
!1549 = !DILocation(line: 541, column: 16, scope: !1534)
!1550 = !DILocation(line: 541, column: 20, scope: !1534)
!1551 = !DILocation(line: 542, column: 52, scope: !1534)
!1552 = !DILocation(line: 542, column: 47, scope: !1534)
!1553 = !DILocation(line: 542, column: 45, scope: !1534)
!1554 = !DILocation(line: 542, column: 5, scope: !1534)
!1555 = !DILocation(line: 542, column: 16, scope: !1534)
!1556 = !DILocation(line: 542, column: 20, scope: !1534)
!1557 = !DILocation(line: 543, column: 3, scope: !1534)
!1558 = !DILocation(line: 534, column: 30, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1530, file: !1, discriminator: 2)
!1560 = !DILocation(line: 534, column: 3, scope: !1559)
!1561 = distinct !{!1561, !1562}
!1562 = !DILocation(line: 534, column: 3, scope: !1431)
!1563 = !DILocation(line: 545, column: 20, scope: !1431)
!1564 = !DILocation(line: 545, column: 3, scope: !1431)
!1565 = !DILocation(line: 545, column: 14, scope: !1431)
!1566 = !DILocation(line: 545, column: 18, scope: !1431)
!1567 = !DILocation(line: 546, column: 20, scope: !1431)
!1568 = !DILocation(line: 546, column: 3, scope: !1431)
!1569 = !DILocation(line: 546, column: 14, scope: !1431)
!1570 = !DILocation(line: 546, column: 18, scope: !1431)
!1571 = !DILocation(line: 548, column: 50, scope: !1431)
!1572 = !DILocation(line: 548, column: 61, scope: !1431)
!1573 = !DILocation(line: 548, column: 45, scope: !1431)
!1574 = !DILocation(line: 548, column: 43, scope: !1431)
!1575 = !DILocation(line: 548, column: 3, scope: !1431)
!1576 = !DILocation(line: 548, column: 14, scope: !1431)
!1577 = !DILocation(line: 548, column: 18, scope: !1431)
!1578 = !DILocation(line: 549, column: 50, scope: !1431)
!1579 = !DILocation(line: 549, column: 61, scope: !1431)
!1580 = !DILocation(line: 549, column: 45, scope: !1431)
!1581 = !DILocation(line: 549, column: 43, scope: !1431)
!1582 = !DILocation(line: 549, column: 3, scope: !1431)
!1583 = !DILocation(line: 549, column: 14, scope: !1431)
!1584 = !DILocation(line: 549, column: 18, scope: !1431)
!1585 = !DILocation(line: 551, column: 3, scope: !1431)
!1586 = !DILocation(line: 552, column: 1, scope: !1431)
!1587 = distinct !DISubprogram(name: "gsl_sf_psi_int", scope: !1, file: !1, line: 838, type: !1588, isLocal: false, isDefinition: true, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!46, !99}
!1590 = !DILocalVariable(name: "n", arg: 1, scope: !1587, file: !1, line: 838, type: !99)
!1591 = !DILocation(line: 838, column: 33, scope: !1587)
!1592 = !DILocalVariable(name: "result", scope: !1587, file: !1, line: 840, type: !101)
!1593 = !DILocation(line: 840, column: 3, scope: !1587)
!1594 = !DILocalVariable(name: "status", scope: !1587, file: !1, line: 840, type: !57)
!1595 = !DILocation(line: 840, column: 3, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1587, file: !1, line: 840, column: 3)
!1597 = !DILocation(line: 840, column: 3, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1599, file: !1, discriminator: 1)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !1, line: 840, column: 3)
!1600 = distinct !{!1600, !1601}
!1601 = !DILocation(line: 840, column: 3, scope: !1599)
!1602 = !DILocation(line: 840, column: 3, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1604, file: !1, discriminator: 2)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 840, column: 3)
!1605 = !DILocation(line: 840, column: 3, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1599, file: !1, discriminator: 3)
!1607 = !DILocation(line: 840, column: 3, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1587, file: !1, discriminator: 4)
!1609 = !DILocation(line: 841, column: 1, scope: !1587)
!1610 = distinct !DISubprogram(name: "gsl_sf_psi", scope: !1, file: !1, line: 843, type: !1611, isLocal: false, isDefinition: true, scopeLine: 844, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!46, !89}
!1613 = !DILocalVariable(name: "x", arg: 1, scope: !1610, file: !1, line: 843, type: !89)
!1614 = !DILocation(line: 843, column: 32, scope: !1610)
!1615 = !DILocalVariable(name: "result", scope: !1610, file: !1, line: 845, type: !101)
!1616 = !DILocation(line: 845, column: 3, scope: !1610)
!1617 = !DILocalVariable(name: "status", scope: !1610, file: !1, line: 845, type: !57)
!1618 = !DILocation(line: 845, column: 3, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1610, file: !1, line: 845, column: 3)
!1620 = !DILocation(line: 845, column: 3, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1622, file: !1, discriminator: 1)
!1622 = distinct !DILexicalBlock(scope: !1619, file: !1, line: 845, column: 3)
!1623 = distinct !{!1623, !1624}
!1624 = !DILocation(line: 845, column: 3, scope: !1622)
!1625 = !DILocation(line: 845, column: 3, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1627, file: !1, discriminator: 2)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 845, column: 3)
!1628 = !DILocation(line: 845, column: 3, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1622, file: !1, discriminator: 3)
!1630 = !DILocation(line: 845, column: 3, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1610, file: !1, discriminator: 4)
!1632 = !DILocation(line: 846, column: 1, scope: !1610)
!1633 = distinct !DISubprogram(name: "gsl_sf_psi_1piy", scope: !1, file: !1, line: 848, type: !1611, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!1634 = !DILocalVariable(name: "x", arg: 1, scope: !1633, file: !1, line: 848, type: !89)
!1635 = !DILocation(line: 848, column: 37, scope: !1633)
!1636 = !DILocalVariable(name: "result", scope: !1633, file: !1, line: 850, type: !101)
!1637 = !DILocation(line: 850, column: 3, scope: !1633)
!1638 = !DILocalVariable(name: "status", scope: !1633, file: !1, line: 850, type: !57)
!1639 = !DILocation(line: 850, column: 3, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1633, file: !1, line: 850, column: 3)
!1641 = !DILocation(line: 850, column: 3, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1643, file: !1, discriminator: 1)
!1643 = distinct !DILexicalBlock(scope: !1640, file: !1, line: 850, column: 3)
!1644 = distinct !{!1644, !1645}
!1645 = !DILocation(line: 850, column: 3, scope: !1643)
!1646 = !DILocation(line: 850, column: 3, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1648, file: !1, discriminator: 2)
!1648 = distinct !DILexicalBlock(scope: !1643, file: !1, line: 850, column: 3)
!1649 = !DILocation(line: 850, column: 3, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1643, file: !1, discriminator: 3)
!1651 = !DILocation(line: 850, column: 3, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1633, file: !1, discriminator: 4)
!1653 = !DILocation(line: 851, column: 1, scope: !1633)
!1654 = distinct !DISubprogram(name: "gsl_sf_psi_1_int", scope: !1, file: !1, line: 853, type: !1588, isLocal: false, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!1655 = !DILocalVariable(name: "n", arg: 1, scope: !1654, file: !1, line: 853, type: !99)
!1656 = !DILocation(line: 853, column: 35, scope: !1654)
!1657 = !DILocalVariable(name: "result", scope: !1654, file: !1, line: 855, type: !101)
!1658 = !DILocation(line: 855, column: 3, scope: !1654)
!1659 = !DILocalVariable(name: "status", scope: !1654, file: !1, line: 855, type: !57)
!1660 = !DILocation(line: 855, column: 3, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1654, file: !1, line: 855, column: 3)
!1662 = !DILocation(line: 855, column: 3, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1664, file: !1, discriminator: 1)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !1, line: 855, column: 3)
!1665 = distinct !{!1665, !1666}
!1666 = !DILocation(line: 855, column: 3, scope: !1664)
!1667 = !DILocation(line: 855, column: 3, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1669, file: !1, discriminator: 2)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 855, column: 3)
!1670 = !DILocation(line: 855, column: 3, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1664, file: !1, discriminator: 3)
!1672 = !DILocation(line: 855, column: 3, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1654, file: !1, discriminator: 4)
!1674 = !DILocation(line: 856, column: 1, scope: !1654)
!1675 = distinct !DISubprogram(name: "gsl_sf_psi_1", scope: !1, file: !1, line: 858, type: !1611, isLocal: false, isDefinition: true, scopeLine: 859, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!1676 = !DILocalVariable(name: "x", arg: 1, scope: !1675, file: !1, line: 858, type: !89)
!1677 = !DILocation(line: 858, column: 34, scope: !1675)
!1678 = !DILocalVariable(name: "result", scope: !1675, file: !1, line: 860, type: !101)
!1679 = !DILocation(line: 860, column: 3, scope: !1675)
!1680 = !DILocalVariable(name: "status", scope: !1675, file: !1, line: 860, type: !57)
!1681 = !DILocation(line: 860, column: 3, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1675, file: !1, line: 860, column: 3)
!1683 = !DILocation(line: 860, column: 3, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1685, file: !1, discriminator: 1)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 860, column: 3)
!1686 = distinct !{!1686, !1687}
!1687 = !DILocation(line: 860, column: 3, scope: !1685)
!1688 = !DILocation(line: 860, column: 3, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1690, file: !1, discriminator: 2)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 860, column: 3)
!1691 = !DILocation(line: 860, column: 3, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1685, file: !1, discriminator: 3)
!1693 = !DILocation(line: 860, column: 3, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1675, file: !1, discriminator: 4)
!1695 = !DILocation(line: 861, column: 1, scope: !1675)
!1696 = distinct !DISubprogram(name: "gsl_sf_psi_n", scope: !1, file: !1, line: 863, type: !1697, isLocal: false, isDefinition: true, scopeLine: 864, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !88)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!46, !99, !89}
!1699 = !DILocalVariable(name: "n", arg: 1, scope: !1696, file: !1, line: 863, type: !99)
!1700 = !DILocation(line: 863, column: 31, scope: !1696)
!1701 = !DILocalVariable(name: "x", arg: 2, scope: !1696, file: !1, line: 863, type: !89)
!1702 = !DILocation(line: 863, column: 47, scope: !1696)
!1703 = !DILocalVariable(name: "result", scope: !1696, file: !1, line: 865, type: !101)
!1704 = !DILocation(line: 865, column: 3, scope: !1696)
!1705 = !DILocalVariable(name: "status", scope: !1696, file: !1, line: 865, type: !57)
!1706 = !DILocation(line: 865, column: 3, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1696, file: !1, line: 865, column: 3)
!1708 = !DILocation(line: 865, column: 3, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1710, file: !1, discriminator: 1)
!1710 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 865, column: 3)
!1711 = distinct !{!1711, !1712}
!1712 = !DILocation(line: 865, column: 3, scope: !1710)
!1713 = !DILocation(line: 865, column: 3, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1715, file: !1, discriminator: 2)
!1715 = distinct !DILexicalBlock(scope: !1710, file: !1, line: 865, column: 3)
!1716 = !DILocation(line: 865, column: 3, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1710, file: !1, discriminator: 3)
!1718 = !DILocation(line: 865, column: 3, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1696, file: !1, discriminator: 4)
!1720 = !DILocation(line: 866, column: 1, scope: !1696)
!1721 = !DILocalVariable(name: "z", arg: 1, scope: !77, file: !1, line: 461, type: !80)
!1722 = !DILocation(line: 461, column: 31, scope: !77)
!1723 = !DILocalVariable(name: "zi", scope: !77, file: !1, line: 472, type: !80)
!1724 = !DILocation(line: 472, column: 15, scope: !77)
!1725 = !DILocation(line: 472, column: 20, scope: !77)
!1726 = !DILocalVariable(name: "w", scope: !77, file: !1, line: 473, type: !80)
!1727 = !DILocation(line: 473, column: 15, scope: !77)
!1728 = !DILocation(line: 473, column: 20, scope: !77)
!1729 = !DILocalVariable(name: "cs", scope: !77, file: !1, line: 474, type: !80)
!1730 = !DILocation(line: 474, column: 15, scope: !77)
!1731 = !DILocalVariable(name: "sum", scope: !77, file: !1, line: 477, type: !80)
!1732 = !DILocation(line: 477, column: 15, scope: !77)
!1733 = !DILocation(line: 478, column: 9, scope: !77)
!1734 = !DILocation(line: 478, column: 9, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !77, file: !1, discriminator: 1)
!1736 = !DILocation(line: 479, column: 9, scope: !77)
!1737 = !DILocation(line: 479, column: 9, scope: !1735)
!1738 = !DILocation(line: 480, column: 9, scope: !77)
!1739 = !DILocation(line: 480, column: 9, scope: !1735)
!1740 = !DILocation(line: 481, column: 9, scope: !77)
!1741 = !DILocation(line: 481, column: 9, scope: !1735)
!1742 = !DILocation(line: 482, column: 9, scope: !77)
!1743 = !DILocation(line: 482, column: 9, scope: !1735)
!1744 = !DILocation(line: 483, column: 9, scope: !77)
!1745 = !DILocation(line: 483, column: 9, scope: !1735)
!1746 = !DILocation(line: 484, column: 9, scope: !77)
!1747 = !DILocation(line: 484, column: 9, scope: !1735)
!1748 = !DILocation(line: 485, column: 9, scope: !77)
!1749 = !DILocation(line: 485, column: 9, scope: !1735)
!1750 = !DILocation(line: 488, column: 8, scope: !77)
!1751 = !DILocation(line: 488, column: 8, scope: !1735)
!1752 = !DILocation(line: 489, column: 8, scope: !77)
!1753 = !DILocation(line: 489, column: 8, scope: !1735)
!1754 = !DILocation(line: 490, column: 28, scope: !77)
!1755 = !DILocation(line: 490, column: 8, scope: !77)
!1756 = !DILocation(line: 490, column: 8, scope: !1735)
!1757 = !DILocation(line: 490, column: 8, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !77, file: !1, discriminator: 2)
!1759 = !DILocation(line: 492, column: 26, scope: !77)
!1760 = !DILocation(line: 492, column: 10, scope: !77)
!1761 = !DILocation(line: 492, column: 10, scope: !1735)
!1762 = !DILocation(line: 492, column: 3, scope: !77)
