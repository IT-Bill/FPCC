; ModuleID = 'psi.c'
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
  br i1 %13, label %14, label %23, !dbg !115

; <label>:14:                                     ; preds = %2
  br label %15, !dbg !116, !llvm.loop !118

; <label>:15:                                     ; preds = %14
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !119
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !119
  store double 0x7FF8000000000000, double* %17, align 8, !dbg !119
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !119
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !119
  store double 0x7FF8000000000000, double* %19, align 8, !dbg !119
  br label %20, !dbg !119, !llvm.loop !122

; <label>:20:                                     ; preds = %15
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 587, i32 1), !dbg !124
  store i32 1, i32* %3, align 4, !dbg !124
  br label %94, !dbg !124
                                                  ; No predecessors!
  br label %22, !dbg !127

; <label>:22:                                     ; preds = %21
  br label %94, !dbg !129

; <label>:23:                                     ; preds = %2
  %24 = load i32, i32* %4, align 4, !dbg !130
  %25 = icmp sle i32 %24, 100, !dbg !132
  br i1 %25, label %26, label %40, !dbg !133

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %4, align 4, !dbg !134
  %28 = sext i32 %27 to i64, !dbg !136
  %29 = getelementptr inbounds [101 x double], [101 x double]* @psi_table, i64 0, i64 %28, !dbg !136
  %30 = load double, double* %29, align 8, !dbg !136
  %31 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !137
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !138
  store double %30, double* %32, align 8, !dbg !139
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !140
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !141
  %35 = load double, double* %34, align 8, !dbg !141
  %36 = call double @fabs(double %35) #1, !dbg !142
  %37 = fmul double 0x3CB0000000000000, %36, !dbg !143
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !144
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !145
  store double %37, double* %39, align 8, !dbg !146
  store i32 0, i32* %3, align 4, !dbg !147
  br label %94, !dbg !147

; <label>:40:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata double* %6, metadata !148, metadata !108), !dbg !150
  store double 0xBFB5555555555555, double* %6, align 8, !dbg !150
  call void @llvm.dbg.declare(metadata double* %7, metadata !151, metadata !108), !dbg !152
  store double 0x3F81111111111111, double* %7, align 8, !dbg !152
  call void @llvm.dbg.declare(metadata double* %8, metadata !153, metadata !108), !dbg !154
  store double 0xBF70410410410410, double* %8, align 8, !dbg !154
  call void @llvm.dbg.declare(metadata double* %9, metadata !155, metadata !108), !dbg !156
  store double 0x3F71111111111111, double* %9, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata double* %10, metadata !157, metadata !108), !dbg !158
  %41 = load i32, i32* %4, align 4, !dbg !159
  %42 = sitofp i32 %41 to double, !dbg !159
  %43 = fdiv double 1.000000e+00, %42, !dbg !160
  %44 = load i32, i32* %4, align 4, !dbg !161
  %45 = sitofp i32 %44 to double, !dbg !161
  %46 = fdiv double 1.000000e+00, %45, !dbg !162
  %47 = fmul double %43, %46, !dbg !163
  store double %47, double* %10, align 8, !dbg !158
  call void @llvm.dbg.declare(metadata double* %11, metadata !164, metadata !108), !dbg !165
  %48 = load double, double* %10, align 8, !dbg !166
  %49 = load double, double* %10, align 8, !dbg !167
  %50 = load double, double* %10, align 8, !dbg !168
  %51 = load double, double* %10, align 8, !dbg !169
  %52 = fmul double %51, 0x3F71111111111111, !dbg !170
  %53 = fadd double 0xBF70410410410410, %52, !dbg !171
  %54 = fmul double %50, %53, !dbg !172
  %55 = fadd double 0x3F81111111111111, %54, !dbg !173
  %56 = fmul double %49, %55, !dbg !174
  %57 = fadd double 0xBFB5555555555555, %56, !dbg !175
  %58 = fmul double %48, %57, !dbg !176
  store double %58, double* %11, align 8, !dbg !165
  %59 = load i32, i32* %4, align 4, !dbg !177
  %60 = sitofp i32 %59 to double, !dbg !177
  %61 = call double @log(double %60) #7, !dbg !178
  %62 = load i32, i32* %4, align 4, !dbg !179
  %63 = sitofp i32 %62 to double, !dbg !179
  %64 = fdiv double 5.000000e-01, %63, !dbg !180
  %65 = fsub double %61, %64, !dbg !181
  %66 = load double, double* %11, align 8, !dbg !182
  %67 = fadd double %65, %66, !dbg !183
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !184
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !185
  store double %67, double* %69, align 8, !dbg !186
  %70 = load i32, i32* %4, align 4, !dbg !187
  %71 = sitofp i32 %70 to double, !dbg !187
  %72 = call double @log(double %71) #7, !dbg !188
  %73 = call double @fabs(double %72) #1, !dbg !189
  %74 = load i32, i32* %4, align 4, !dbg !191
  %75 = sitofp i32 %74 to double, !dbg !191
  %76 = fdiv double 5.000000e-01, %75, !dbg !192
  %77 = call double @fabs(double %76) #1, !dbg !193
  %78 = fadd double %73, %77, !dbg !195
  %79 = load double, double* %11, align 8, !dbg !196
  %80 = call double @fabs(double %79) #1, !dbg !197
  %81 = fadd double %78, %80, !dbg !199
  %82 = fmul double 0x3CB0000000000000, %81, !dbg !200
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !201
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 1, !dbg !202
  store double %82, double* %84, align 8, !dbg !203
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !204
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !205
  %87 = load double, double* %86, align 8, !dbg !205
  %88 = call double @fabs(double %87) #1, !dbg !206
  %89 = fmul double 0x3CB0000000000000, %88, !dbg !207
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !208
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 1, !dbg !209
  %92 = load double, double* %91, align 8, !dbg !210
  %93 = fadd double %92, %89, !dbg !210
  store double %93, double* %91, align 8, !dbg !210
  store i32 0, i32* %3, align 4, !dbg !211
  br label %94, !dbg !211

; <label>:94:                                     ; preds = %20, %26, %40, %22
  %95 = load i32, i32* %3, align 4, !dbg !212
  ret i32 %95, !dbg !212
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
  br i1 %24, label %31, label %25, !dbg !236

; <label>:25:                                     ; preds = %2
  %26 = load double, double* %4, align 8, !dbg !237
  %27 = fcmp oeq double %26, -1.000000e+00, !dbg !239
  br i1 %27, label %31, label %28, !dbg !240

; <label>:28:                                     ; preds = %25
  %29 = load double, double* %4, align 8, !dbg !241
  %30 = fcmp oeq double %29, -2.000000e+00, !dbg !243
  br i1 %30, label %31, label %40, !dbg !244

; <label>:31:                                     ; preds = %28, %25, %2
  br label %32, !dbg !245, !llvm.loop !247

; <label>:32:                                     ; preds = %31
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !248
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !248
  store double 0x7FF8000000000000, double* %34, align 8, !dbg !248
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !248
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !248
  store double 0x7FF8000000000000, double* %36, align 8, !dbg !248
  br label %37, !dbg !248, !llvm.loop !251

; <label>:37:                                     ; preds = %32
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 385, i32 1), !dbg !253
  store i32 1, i32* %3, align 4, !dbg !253
  br label %296, !dbg !253
                                                  ; No predecessors!
  br label %39, !dbg !256

; <label>:39:                                     ; preds = %38
  br label %296, !dbg !258

; <label>:40:                                     ; preds = %28
  %41 = load double, double* %6, align 8, !dbg !259
  %42 = fcmp oge double %41, 2.000000e+00, !dbg !261
  br i1 %42, label %43, label %139, !dbg !262

; <label>:43:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata double* %7, metadata !263, metadata !108), !dbg !265
  %44 = load double, double* %6, align 8, !dbg !266
  %45 = load double, double* %6, align 8, !dbg !267
  %46 = fmul double %44, %45, !dbg !268
  %47 = fdiv double 8.000000e+00, %46, !dbg !269
  %48 = fsub double %47, 1.000000e+00, !dbg !270
  store double %48, double* %7, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !271, metadata !108), !dbg !272
  %49 = load double, double* %7, align 8, !dbg !273
  %50 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @apsi_cs, double %49, %struct.gsl_sf_result_struct* %8), !dbg !274
  %51 = load double, double* %4, align 8, !dbg !275
  %52 = fcmp olt double %51, 0.000000e+00, !dbg !277
  br i1 %52, label %53, label %114, !dbg !278

; <label>:53:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata double* %9, metadata !279, metadata !108), !dbg !281
  %54 = load double, double* %4, align 8, !dbg !282
  %55 = fmul double 0x400921FB54442D18, %54, !dbg !283
  %56 = call double @sin(double %55) #7, !dbg !284
  store double %56, double* %9, align 8, !dbg !281
  call void @llvm.dbg.declare(metadata double* %10, metadata !285, metadata !108), !dbg !286
  %57 = load double, double* %4, align 8, !dbg !287
  %58 = fmul double 0x400921FB54442D18, %57, !dbg !288
  %59 = call double @cos(double %58) #7, !dbg !289
  store double %59, double* %10, align 8, !dbg !286
  %60 = load double, double* %9, align 8, !dbg !290
  %61 = call double @fabs(double %60) #1, !dbg !292
  %62 = fcmp olt double %61, 0x2010000000000000, !dbg !293
  br i1 %62, label %63, label %72, !dbg !294

; <label>:63:                                     ; preds = %53
  br label %64, !dbg !295, !llvm.loop !297

; <label>:64:                                     ; preds = %63
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !298
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !298
  store double 0x7FF8000000000000, double* %66, align 8, !dbg !298
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !298
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 1, !dbg !298
  store double 0x7FF8000000000000, double* %68, align 8, !dbg !298
  br label %69, !dbg !298, !llvm.loop !301

; <label>:69:                                     ; preds = %64
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 395, i32 1), !dbg !303
  store i32 1, i32* %3, align 4, !dbg !303
  br label %296, !dbg !303
                                                  ; No predecessors!
  br label %71, !dbg !306

; <label>:71:                                     ; preds = %70
  br label %113, !dbg !308

; <label>:72:                                     ; preds = %53
  %73 = load double, double* %6, align 8, !dbg !309
  %74 = call double @log(double %73) #7, !dbg !311
  %75 = load double, double* %4, align 8, !dbg !312
  %76 = fdiv double 5.000000e-01, %75, !dbg !313
  %77 = fsub double %74, %76, !dbg !314
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !315
  %79 = load double, double* %78, align 8, !dbg !315
  %80 = fadd double %77, %79, !dbg !316
  %81 = load double, double* %10, align 8, !dbg !317
  %82 = fmul double 0x400921FB54442D18, %81, !dbg !318
  %83 = load double, double* %9, align 8, !dbg !319
  %84 = fdiv double %82, %83, !dbg !320
  %85 = fsub double %80, %84, !dbg !321
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !322
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !323
  store double %85, double* %87, align 8, !dbg !324
  %88 = load double, double* %4, align 8, !dbg !325
  %89 = call double @fabs(double %88) #1, !dbg !326
  %90 = fmul double 0x400921FB54442D18, %89, !dbg !327
  %91 = fmul double %90, 0x3CB0000000000000, !dbg !328
  %92 = load double, double* %9, align 8, !dbg !329
  %93 = load double, double* %9, align 8, !dbg !330
  %94 = fmul double %92, %93, !dbg !331
  %95 = fdiv double %91, %94, !dbg !332
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !333
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 1, !dbg !334
  store double %95, double* %97, align 8, !dbg !335
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !336
  %99 = load double, double* %98, align 8, !dbg !336
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !337
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 1, !dbg !338
  %102 = load double, double* %101, align 8, !dbg !339
  %103 = fadd double %102, %99, !dbg !339
  store double %103, double* %101, align 8, !dbg !339
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !340
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 0, !dbg !341
  %106 = load double, double* %105, align 8, !dbg !341
  %107 = call double @fabs(double %106) #1, !dbg !342
  %108 = fmul double 0x3CB0000000000000, %107, !dbg !343
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !344
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 1, !dbg !345
  %111 = load double, double* %110, align 8, !dbg !346
  %112 = fadd double %111, %108, !dbg !346
  store double %112, double* %110, align 8, !dbg !346
  store i32 0, i32* %3, align 4, !dbg !347
  br label %296, !dbg !347

; <label>:113:                                    ; preds = %71
  br label %138, !dbg !348

; <label>:114:                                    ; preds = %43
  %115 = load double, double* %6, align 8, !dbg !349
  %116 = call double @log(double %115) #7, !dbg !351
  %117 = load double, double* %4, align 8, !dbg !352
  %118 = fdiv double 5.000000e-01, %117, !dbg !353
  %119 = fsub double %116, %118, !dbg !354
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !355
  %121 = load double, double* %120, align 8, !dbg !355
  %122 = fadd double %119, %121, !dbg !356
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !357
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 0, !dbg !358
  store double %122, double* %124, align 8, !dbg !359
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !360
  %126 = load double, double* %125, align 8, !dbg !360
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !361
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !362
  store double %126, double* %128, align 8, !dbg !363
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !364
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 0, !dbg !365
  %131 = load double, double* %130, align 8, !dbg !365
  %132 = call double @fabs(double %131) #1, !dbg !366
  %133 = fmul double 0x3CB0000000000000, %132, !dbg !367
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !368
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 1, !dbg !369
  %136 = load double, double* %135, align 8, !dbg !370
  %137 = fadd double %136, %133, !dbg !370
  store double %137, double* %135, align 8, !dbg !370
  store i32 0, i32* %3, align 4, !dbg !371
  br label %296, !dbg !371

; <label>:138:                                    ; preds = %113
  br label %295, !dbg !372

; <label>:139:                                    ; preds = %40
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !373, metadata !108), !dbg !375
  %140 = load double, double* %4, align 8, !dbg !376
  %141 = fcmp olt double %140, -1.000000e+00, !dbg !378
  br i1 %141, label %142, label %201, !dbg !379

; <label>:142:                                    ; preds = %139
  call void @llvm.dbg.declare(metadata double* %12, metadata !380, metadata !108), !dbg !382
  %143 = load double, double* %4, align 8, !dbg !383
  %144 = fadd double %143, 2.000000e+00, !dbg !384
  store double %144, double* %12, align 8, !dbg !382
  call void @llvm.dbg.declare(metadata double* %13, metadata !385, metadata !108), !dbg !386
  %145 = load double, double* %4, align 8, !dbg !387
  %146 = fdiv double 1.000000e+00, %145, !dbg !388
  store double %146, double* %13, align 8, !dbg !386
  call void @llvm.dbg.declare(metadata double* %14, metadata !389, metadata !108), !dbg !390
  %147 = load double, double* %4, align 8, !dbg !391
  %148 = fadd double %147, 1.000000e+00, !dbg !392
  %149 = fdiv double 1.000000e+00, %148, !dbg !393
  store double %149, double* %14, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata double* %15, metadata !394, metadata !108), !dbg !395
  %150 = load double, double* %12, align 8, !dbg !396
  %151 = fdiv double 1.000000e+00, %150, !dbg !397
  store double %151, double* %15, align 8, !dbg !395
  %152 = load double, double* %12, align 8, !dbg !398
  %153 = fmul double 2.000000e+00, %152, !dbg !399
  %154 = fsub double %153, 1.000000e+00, !dbg !400
  %155 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @psi_cs, double %154, %struct.gsl_sf_result_struct* %11), !dbg !401
  %156 = load double, double* %13, align 8, !dbg !402
  %157 = load double, double* %14, align 8, !dbg !403
  %158 = fadd double %156, %157, !dbg !404
  %159 = load double, double* %15, align 8, !dbg !405
  %160 = fadd double %158, %159, !dbg !406
  %161 = fsub double -0.000000e+00, %160, !dbg !407
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !408
  %163 = load double, double* %162, align 8, !dbg !408
  %164 = fadd double %161, %163, !dbg !409
  %165 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !410
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %165, i32 0, i32 0, !dbg !411
  store double %164, double* %166, align 8, !dbg !412
  %167 = load double, double* %13, align 8, !dbg !413
  %168 = call double @fabs(double %167) #1, !dbg !414
  %169 = load double, double* %4, align 8, !dbg !415
  %170 = load double, double* %14, align 8, !dbg !416
  %171 = load double, double* %14, align 8, !dbg !417
  %172 = fmul double %170, %171, !dbg !418
  %173 = fdiv double %169, %172, !dbg !419
  %174 = call double @fabs(double %173) #1, !dbg !420
  %175 = fadd double %168, %174, !dbg !422
  %176 = load double, double* %4, align 8, !dbg !423
  %177 = load double, double* %15, align 8, !dbg !424
  %178 = load double, double* %15, align 8, !dbg !425
  %179 = fmul double %177, %178, !dbg !426
  %180 = fdiv double %176, %179, !dbg !427
  %181 = call double @fabs(double %180) #1, !dbg !428
  %182 = fadd double %175, %181, !dbg !430
  %183 = fmul double 0x3CB0000000000000, %182, !dbg !431
  %184 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !432
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %184, i32 0, i32 1, !dbg !433
  store double %183, double* %185, align 8, !dbg !434
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !435
  %187 = load double, double* %186, align 8, !dbg !435
  %188 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !436
  %189 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %188, i32 0, i32 1, !dbg !437
  %190 = load double, double* %189, align 8, !dbg !438
  %191 = fadd double %190, %187, !dbg !438
  store double %191, double* %189, align 8, !dbg !438
  %192 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !439
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %192, i32 0, i32 0, !dbg !440
  %194 = load double, double* %193, align 8, !dbg !440
  %195 = call double @fabs(double %194) #1, !dbg !441
  %196 = fmul double 0x3CB0000000000000, %195, !dbg !442
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !443
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %197, i32 0, i32 1, !dbg !444
  %199 = load double, double* %198, align 8, !dbg !445
  %200 = fadd double %199, %196, !dbg !445
  store double %200, double* %198, align 8, !dbg !445
  store i32 0, i32* %3, align 4, !dbg !446
  br label %296, !dbg !446

; <label>:201:                                    ; preds = %139
  %202 = load double, double* %4, align 8, !dbg !447
  %203 = fcmp olt double %202, 0.000000e+00, !dbg !449
  br i1 %203, label %204, label %251, !dbg !450

; <label>:204:                                    ; preds = %201
  call void @llvm.dbg.declare(metadata double* %16, metadata !451, metadata !108), !dbg !453
  %205 = load double, double* %4, align 8, !dbg !454
  %206 = fadd double %205, 1.000000e+00, !dbg !455
  store double %206, double* %16, align 8, !dbg !453
  call void @llvm.dbg.declare(metadata double* %17, metadata !456, metadata !108), !dbg !457
  %207 = load double, double* %4, align 8, !dbg !458
  %208 = fdiv double 1.000000e+00, %207, !dbg !459
  store double %208, double* %17, align 8, !dbg !457
  call void @llvm.dbg.declare(metadata double* %18, metadata !460, metadata !108), !dbg !461
  %209 = load double, double* %16, align 8, !dbg !462
  %210 = fdiv double 1.000000e+00, %209, !dbg !463
  store double %210, double* %18, align 8, !dbg !461
  %211 = load double, double* %16, align 8, !dbg !464
  %212 = fmul double 2.000000e+00, %211, !dbg !465
  %213 = fsub double %212, 1.000000e+00, !dbg !466
  %214 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @psi_cs, double %213, %struct.gsl_sf_result_struct* %11), !dbg !467
  %215 = load double, double* %17, align 8, !dbg !468
  %216 = load double, double* %18, align 8, !dbg !469
  %217 = fadd double %215, %216, !dbg !470
  %218 = fsub double -0.000000e+00, %217, !dbg !471
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !472
  %220 = load double, double* %219, align 8, !dbg !472
  %221 = fadd double %218, %220, !dbg !473
  %222 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !474
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %222, i32 0, i32 0, !dbg !475
  store double %221, double* %223, align 8, !dbg !476
  %224 = load double, double* %17, align 8, !dbg !477
  %225 = call double @fabs(double %224) #1, !dbg !478
  %226 = load double, double* %4, align 8, !dbg !479
  %227 = load double, double* %18, align 8, !dbg !480
  %228 = load double, double* %18, align 8, !dbg !481
  %229 = fmul double %227, %228, !dbg !482
  %230 = fdiv double %226, %229, !dbg !483
  %231 = call double @fabs(double %230) #1, !dbg !484
  %232 = fadd double %225, %231, !dbg !486
  %233 = fmul double 0x3CB0000000000000, %232, !dbg !487
  %234 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !488
  %235 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %234, i32 0, i32 1, !dbg !489
  store double %233, double* %235, align 8, !dbg !490
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !491
  %237 = load double, double* %236, align 8, !dbg !491
  %238 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !492
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %238, i32 0, i32 1, !dbg !493
  %240 = load double, double* %239, align 8, !dbg !494
  %241 = fadd double %240, %237, !dbg !494
  store double %241, double* %239, align 8, !dbg !494
  %242 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !495
  %243 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %242, i32 0, i32 0, !dbg !496
  %244 = load double, double* %243, align 8, !dbg !496
  %245 = call double @fabs(double %244) #1, !dbg !497
  %246 = fmul double 0x3CB0000000000000, %245, !dbg !498
  %247 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !499
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %247, i32 0, i32 1, !dbg !500
  %249 = load double, double* %248, align 8, !dbg !501
  %250 = fadd double %249, %246, !dbg !501
  store double %250, double* %248, align 8, !dbg !501
  store i32 0, i32* %3, align 4, !dbg !502
  br label %296, !dbg !502

; <label>:251:                                    ; preds = %201
  %252 = load double, double* %4, align 8, !dbg !503
  %253 = fcmp olt double %252, 1.000000e+00, !dbg !505
  br i1 %253, label %254, label %287, !dbg !506

; <label>:254:                                    ; preds = %251
  call void @llvm.dbg.declare(metadata double* %19, metadata !507, metadata !108), !dbg !509
  %255 = load double, double* %4, align 8, !dbg !510
  %256 = fdiv double 1.000000e+00, %255, !dbg !511
  store double %256, double* %19, align 8, !dbg !509
  %257 = load double, double* %4, align 8, !dbg !512
  %258 = fmul double 2.000000e+00, %257, !dbg !513
  %259 = fsub double %258, 1.000000e+00, !dbg !514
  %260 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @psi_cs, double %259, %struct.gsl_sf_result_struct* %11), !dbg !515
  %261 = load double, double* %19, align 8, !dbg !516
  %262 = fsub double -0.000000e+00, %261, !dbg !517
  %263 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !518
  %264 = load double, double* %263, align 8, !dbg !518
  %265 = fadd double %262, %264, !dbg !519
  %266 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !520
  %267 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %266, i32 0, i32 0, !dbg !521
  store double %265, double* %267, align 8, !dbg !522
  %268 = load double, double* %19, align 8, !dbg !523
  %269 = fmul double 0x3CB0000000000000, %268, !dbg !524
  %270 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !525
  %271 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %270, i32 0, i32 1, !dbg !526
  store double %269, double* %271, align 8, !dbg !527
  %272 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !528
  %273 = load double, double* %272, align 8, !dbg !528
  %274 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !529
  %275 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %274, i32 0, i32 1, !dbg !530
  %276 = load double, double* %275, align 8, !dbg !531
  %277 = fadd double %276, %273, !dbg !531
  store double %277, double* %275, align 8, !dbg !531
  %278 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !532
  %279 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %278, i32 0, i32 0, !dbg !533
  %280 = load double, double* %279, align 8, !dbg !533
  %281 = call double @fabs(double %280) #1, !dbg !534
  %282 = fmul double 0x3CB0000000000000, %281, !dbg !535
  %283 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !536
  %284 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %283, i32 0, i32 1, !dbg !537
  %285 = load double, double* %284, align 8, !dbg !538
  %286 = fadd double %285, %282, !dbg !538
  store double %286, double* %284, align 8, !dbg !538
  store i32 0, i32* %3, align 4, !dbg !539
  br label %296, !dbg !539

; <label>:287:                                    ; preds = %251
  call void @llvm.dbg.declare(metadata double* %20, metadata !540, metadata !108), !dbg !542
  %288 = load double, double* %4, align 8, !dbg !543
  %289 = fsub double %288, 1.000000e+00, !dbg !544
  store double %289, double* %20, align 8, !dbg !542
  %290 = load double, double* %20, align 8, !dbg !545
  %291 = fmul double 2.000000e+00, %290, !dbg !546
  %292 = fsub double %291, 1.000000e+00, !dbg !547
  %293 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !548
  %294 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @psi_cs, double %292, %struct.gsl_sf_result_struct* %293), !dbg !549
  store i32 %294, i32* %3, align 4, !dbg !550
  br label %296, !dbg !550

; <label>:295:                                    ; preds = %138
  br label %296

; <label>:296:                                    ; preds = %37, %69, %72, %114, %142, %204, %254, %287, %295, %39
  %297 = load i32, i32* %3, align 4, !dbg !551
  ret i32 %297, !dbg !551
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
  br i1 %30, label %31, label %61, !dbg !564

; <label>:31:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata double* %7, metadata !565, metadata !108), !dbg !567
  %32 = load double, double* %6, align 8, !dbg !568
  %33 = load double, double* %6, align 8, !dbg !569
  %34 = fmul double %32, %33, !dbg !570
  %35 = fdiv double 1.000000e+00, %34, !dbg !571
  store double %35, double* %7, align 8, !dbg !567
  call void @llvm.dbg.declare(metadata double* %8, metadata !572, metadata !108), !dbg !573
  %36 = load double, double* %6, align 8, !dbg !574
  %37 = call double @log(double %36) #7, !dbg !575
  store double %37, double* %8, align 8, !dbg !573
  call void @llvm.dbg.declare(metadata double* %9, metadata !576, metadata !108), !dbg !577
  %38 = load double, double* %7, align 8, !dbg !578
  %39 = load double, double* %7, align 8, !dbg !579
  %40 = fmul double 0x3F81111111111111, %39, !dbg !580
  %41 = fadd double 0x3FB5555555555555, %40, !dbg !581
  %42 = load double, double* %7, align 8, !dbg !582
  %43 = fmul double 0x3F70410410410410, %42, !dbg !583
  %44 = load double, double* %7, align 8, !dbg !584
  %45 = fmul double %43, %44, !dbg !585
  %46 = fadd double %41, %45, !dbg !586
  %47 = fmul double %38, %46, !dbg !587
  store double %47, double* %9, align 8, !dbg !577
  %48 = load double, double* %8, align 8, !dbg !588
  %49 = load double, double* %9, align 8, !dbg !589
  %50 = fadd double %48, %49, !dbg !590
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !591
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !592
  store double %50, double* %52, align 8, !dbg !593
  %53 = load double, double* %8, align 8, !dbg !594
  %54 = call double @fabs(double %53) #1, !dbg !595
  %55 = load double, double* %9, align 8, !dbg !596
  %56 = call double @fabs(double %55) #1, !dbg !597
  %57 = fadd double %54, %56, !dbg !599
  %58 = fmul double 0x3CC0000000000000, %57, !dbg !600
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !601
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 1, !dbg !602
  store double %58, double* %60, align 8, !dbg !603
  store i32 0, i32* %3, align 4, !dbg !604
  br label %218, !dbg !604

; <label>:61:                                     ; preds = %2
  %62 = load double, double* %6, align 8, !dbg !605
  %63 = fcmp ogt double %62, 1.000000e+01, !dbg !607
  br i1 %63, label %64, label %101, !dbg !608

; <label>:64:                                     ; preds = %61
  call void @llvm.dbg.declare(metadata double* %10, metadata !609, metadata !108), !dbg !611
  %65 = load double, double* %6, align 8, !dbg !612
  %66 = load double, double* %6, align 8, !dbg !613
  %67 = fmul double %65, %66, !dbg !614
  %68 = fdiv double 1.000000e+00, %67, !dbg !615
  store double %68, double* %10, align 8, !dbg !611
  call void @llvm.dbg.declare(metadata double* %11, metadata !616, metadata !108), !dbg !617
  %69 = load double, double* %6, align 8, !dbg !618
  %70 = call double @log(double %69) #7, !dbg !619
  store double %70, double* %11, align 8, !dbg !617
  call void @llvm.dbg.declare(metadata double* %12, metadata !620, metadata !108), !dbg !621
  %71 = load double, double* %10, align 8, !dbg !622
  %72 = load double, double* %10, align 8, !dbg !623
  %73 = load double, double* %10, align 8, !dbg !624
  %74 = load double, double* %10, align 8, !dbg !625
  %75 = load double, double* %10, align 8, !dbg !626
  %76 = load double, double* %10, align 8, !dbg !627
  %77 = fmul double 0x3F95995995995996, %76, !dbg !628
  %78 = fadd double 0x3F7F07C1F07C1F08, %77, !dbg !629
  %79 = fmul double %75, %78, !dbg !630
  %80 = fadd double 0x3F71111111111111, %79, !dbg !631
  %81 = fmul double %74, %80, !dbg !632
  %82 = fadd double 0x3F70410410410410, %81, !dbg !633
  %83 = fmul double %73, %82, !dbg !634
  %84 = fadd double 0x3F81111111111111, %83, !dbg !635
  %85 = fmul double %72, %84, !dbg !636
  %86 = fadd double 0x3FB5555555555555, %85, !dbg !637
  %87 = fmul double %71, %86, !dbg !638
  store double %87, double* %12, align 8, !dbg !621
  %88 = load double, double* %11, align 8, !dbg !639
  %89 = load double, double* %12, align 8, !dbg !640
  %90 = fadd double %88, %89, !dbg !641
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !642
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !643
  store double %90, double* %92, align 8, !dbg !644
  %93 = load double, double* %11, align 8, !dbg !645
  %94 = call double @fabs(double %93) #1, !dbg !646
  %95 = load double, double* %12, align 8, !dbg !647
  %96 = call double @fabs(double %95) #1, !dbg !648
  %97 = fadd double %94, %96, !dbg !650
  %98 = fmul double 0x3CC0000000000000, %97, !dbg !651
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !652
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !653
  store double %98, double* %100, align 8, !dbg !654
  store i32 0, i32* %3, align 4, !dbg !655
  br label %218, !dbg !655

; <label>:101:                                    ; preds = %61
  %102 = load double, double* %6, align 8, !dbg !656
  %103 = fcmp ogt double %102, 1.000000e+00, !dbg !658
  br i1 %103, label %104, label %159, !dbg !659

; <label>:104:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata double* %13, metadata !660, metadata !108), !dbg !662
  %105 = load double, double* %6, align 8, !dbg !663
  %106 = load double, double* %6, align 8, !dbg !664
  %107 = fmul double %105, %106, !dbg !665
  store double %107, double* %13, align 8, !dbg !662
  call void @llvm.dbg.declare(metadata double* %14, metadata !666, metadata !108), !dbg !667
  %108 = load double, double* %6, align 8, !dbg !668
  %109 = fmul double 2.000000e+00, %108, !dbg !669
  %110 = fsub double %109, 1.100000e+01, !dbg !670
  %111 = fdiv double %110, 9.000000e+00, !dbg !671
  store double %111, double* %14, align 8, !dbg !667
  call void @llvm.dbg.declare(metadata double* %15, metadata !672, metadata !108), !dbg !673
  %112 = load double, double* %13, align 8, !dbg !674
  %113 = load double, double* %13, align 8, !dbg !675
  %114 = fadd double 1.000000e+00, %113, !dbg !676
  %115 = fdiv double 1.000000e+00, %114, !dbg !677
  %116 = load double, double* %13, align 8, !dbg !678
  %117 = fadd double 4.000000e+00, %116, !dbg !679
  %118 = fdiv double 5.000000e-01, %117, !dbg !680
  %119 = fadd double %115, %118, !dbg !681
  %120 = fmul double %112, %119, !dbg !682
  store double %120, double* %15, align 8, !dbg !673
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !683, metadata !108), !dbg !684
  %121 = load double, double* %14, align 8, !dbg !685
  %122 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @r1py_cs, double %121, %struct.gsl_sf_result_struct* %16), !dbg !686
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !687
  %124 = load double, double* %123, align 8, !dbg !687
  %125 = fsub double %124, 0x3FE2788CFC6FB619, !dbg !688
  %126 = load double, double* %15, align 8, !dbg !689
  %127 = fadd double %125, %126, !dbg !690
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !691
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 0, !dbg !692
  store double %127, double* %129, align 8, !dbg !693
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !694
  %131 = load double, double* %130, align 8, !dbg !694
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !695
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 1, !dbg !696
  store double %131, double* %133, align 8, !dbg !697
  %134 = load double, double* %15, align 8, !dbg !698
  %135 = call double @fabs(double %134) #1, !dbg !699
  %136 = fadd double %135, 0x3FE2788CFC6FB619, !dbg !700
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !701
  %138 = load double, double* %137, align 8, !dbg !701
  %139 = call double @fabs(double %138) #1, !dbg !702
  %140 = fadd double %136, %139, !dbg !704
  %141 = fmul double 0x3CC0000000000000, %140, !dbg !705
  %142 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !706
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %142, i32 0, i32 1, !dbg !707
  %144 = load double, double* %143, align 8, !dbg !708
  %145 = fadd double %144, %141, !dbg !708
  store double %145, double* %143, align 8, !dbg !708
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !709
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %146, i32 0, i32 0, !dbg !710
  %148 = load double, double* %147, align 8, !dbg !710
  %149 = call double @fabs(double %148) #1, !dbg !711
  %150 = fmul double 0x3CC0000000000000, %149, !dbg !712
  %151 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !713
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %151, i32 0, i32 1, !dbg !714
  %153 = load double, double* %152, align 8, !dbg !715
  %154 = fadd double %153, %150, !dbg !715
  store double %154, double* %152, align 8, !dbg !715
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !716
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %155, i32 0, i32 1, !dbg !717
  %157 = load double, double* %156, align 8, !dbg !718
  %158 = fmul double %157, 5.000000e+00, !dbg !718
  store double %158, double* %156, align 8, !dbg !718
  store i32 0, i32* %3, align 4, !dbg !719
  br label %218, !dbg !719

; <label>:159:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata i32* %17, metadata !720, metadata !108), !dbg !722
  store i32 50, i32* %17, align 4, !dbg !722
  call void @llvm.dbg.declare(metadata double* %18, metadata !723, metadata !108), !dbg !724
  %160 = load double, double* %4, align 8, !dbg !725
  %161 = load double, double* %4, align 8, !dbg !726
  %162 = fmul double %160, %161, !dbg !727
  store double %162, double* %18, align 8, !dbg !724
  call void @llvm.dbg.declare(metadata double* %19, metadata !728, metadata !108), !dbg !729
  store double 0x3F29B202BB4B83AC, double* %19, align 8, !dbg !729
  call void @llvm.dbg.declare(metadata double* %20, metadata !730, metadata !108), !dbg !731
  store double 0x3E64A151E0278CCF, double* %20, align 8, !dbg !731
  call void @llvm.dbg.declare(metadata double* %21, metadata !732, metadata !108), !dbg !733
  store double 0x3DA614EA0A67BC29, double* %21, align 8, !dbg !733
  call void @llvm.dbg.declare(metadata double* %22, metadata !734, metadata !108), !dbg !735
  store double 0x3CEA961904954325, double* %22, align 8, !dbg !735
  call void @llvm.dbg.declare(metadata double* %23, metadata !736, metadata !108), !dbg !737
  %163 = load double, double* %18, align 8, !dbg !738
  %164 = load double, double* %18, align 8, !dbg !739
  %165 = load double, double* %18, align 8, !dbg !740
  %166 = fmul double %165, 0x3CEA961904954325, !dbg !741
  %167 = fsub double 0x3DA614EA0A67BC29, %166, !dbg !742
  %168 = fmul double %164, %167, !dbg !743
  %169 = fadd double 0xBE64A151E0278CCF, %168, !dbg !744
  %170 = fmul double %163, %169, !dbg !745
  %171 = fadd double 0x3F29B202BB4B83AC, %170, !dbg !746
  store double %171, double* %23, align 8, !dbg !737
  call void @llvm.dbg.declare(metadata double* %24, metadata !747, metadata !108), !dbg !748
  store double 0.000000e+00, double* %24, align 8, !dbg !748
  call void @llvm.dbg.declare(metadata double* %25, metadata !749, metadata !108), !dbg !750
  call void @llvm.dbg.declare(metadata i32* %26, metadata !751, metadata !108), !dbg !752
  store i32 1, i32* %26, align 4, !dbg !753
  br label %172, !dbg !755

; <label>:172:                                    ; preds = %190, %159
  %173 = load i32, i32* %26, align 4, !dbg !756
  %174 = icmp sle i32 %173, 50, !dbg !759
  br i1 %174, label %175, label %193, !dbg !760

; <label>:175:                                    ; preds = %172
  %176 = load i32, i32* %26, align 4, !dbg !761
  %177 = sitofp i32 %176 to double, !dbg !761
  %178 = load i32, i32* %26, align 4, !dbg !763
  %179 = load i32, i32* %26, align 4, !dbg !764
  %180 = mul nsw i32 %178, %179, !dbg !765
  %181 = sitofp i32 %180 to double, !dbg !763
  %182 = load double, double* %4, align 8, !dbg !766
  %183 = load double, double* %4, align 8, !dbg !767
  %184 = fmul double %182, %183, !dbg !768
  %185 = fadd double %181, %184, !dbg !769
  %186 = fmul double %177, %185, !dbg !770
  %187 = fdiv double 1.000000e+00, %186, !dbg !771
  %188 = load double, double* %24, align 8, !dbg !772
  %189 = fadd double %188, %187, !dbg !772
  store double %189, double* %24, align 8, !dbg !772
  br label %190, !dbg !773

; <label>:190:                                    ; preds = %175
  %191 = load i32, i32* %26, align 4, !dbg !774
  %192 = add nsw i32 %191, 1, !dbg !774
  store i32 %192, i32* %26, align 4, !dbg !774
  br label %172, !dbg !776, !llvm.loop !777

; <label>:193:                                    ; preds = %172
  %194 = load double, double* %18, align 8, !dbg !779
  %195 = load double, double* %24, align 8, !dbg !780
  %196 = load double, double* %23, align 8, !dbg !781
  %197 = fadd double %195, %196, !dbg !782
  %198 = fmul double %194, %197, !dbg !783
  store double %198, double* %25, align 8, !dbg !784
  %199 = load double, double* %25, align 8, !dbg !785
  %200 = fadd double 0xBFE2788CFC6FB619, %199, !dbg !786
  %201 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !787
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %201, i32 0, i32 0, !dbg !788
  store double %200, double* %202, align 8, !dbg !789
  %203 = load double, double* %25, align 8, !dbg !790
  %204 = call double @fabs(double %203) #1, !dbg !791
  %205 = fadd double 0x3FE2788CFC6FB619, %204, !dbg !792
  %206 = fmul double 0x3CB0000000000000, %205, !dbg !793
  %207 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !794
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %207, i32 0, i32 1, !dbg !795
  store double %206, double* %208, align 8, !dbg !796
  %209 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !797
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %209, i32 0, i32 0, !dbg !798
  %211 = load double, double* %210, align 8, !dbg !798
  %212 = call double @fabs(double %211) #1, !dbg !799
  %213 = fmul double 0x3CC0000000000000, %212, !dbg !800
  %214 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !801
  %215 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %214, i32 0, i32 1, !dbg !802
  %216 = load double, double* %215, align 8, !dbg !803
  %217 = fadd double %216, %213, !dbg !803
  store double %217, double* %215, align 8, !dbg !803
  store i32 0, i32* %3, align 4, !dbg !804
  br label %218, !dbg !804

; <label>:218:                                    ; preds = %193, %104, %64, %31
  %219 = load i32, i32* %3, align 4, !dbg !805
  ret i32 %219, !dbg !805
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
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !828
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !829
  %19 = load double, double* %18, align 8, !dbg !829
  %20 = fsub double %16, %19, !dbg !830
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !831
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !832
  %23 = load double, double* %22, align 8, !dbg !832
  %24 = fsub double %20, %23, !dbg !833
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !834
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !835
  %27 = load double, double* %26, align 8, !dbg !835
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !836
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !837
  %30 = load double, double* %29, align 8, !dbg !837
  %31 = fsub double %27, %30, !dbg !838
  %32 = fdiv double %24, %31, !dbg !839
  store double %32, double* %10, align 8, !dbg !825
  call void @llvm.dbg.declare(metadata double* %11, metadata !840, metadata !108), !dbg !841
  %33 = load double, double* %10, align 8, !dbg !842
  %34 = fmul double 2.000000e+00, %33, !dbg !843
  store double %34, double* %11, align 8, !dbg !841
  call void @llvm.dbg.declare(metadata double* %12, metadata !844, metadata !108), !dbg !845
  store double 0.000000e+00, double* %12, align 8, !dbg !845
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !846
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !848
  %37 = load i32, i32* %36, align 8, !dbg !848
  store i32 %37, i32* %7, align 4, !dbg !849
  br label %38, !dbg !850

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !851
  %40 = icmp sge i32 %39, 1, !dbg !854
  br i1 %40, label %41, label %78, !dbg !855

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !856, metadata !108), !dbg !858
  %42 = load double, double* %8, align 8, !dbg !859
  store double %42, double* %13, align 8, !dbg !858
  %43 = load double, double* %11, align 8, !dbg !860
  %44 = load double, double* %8, align 8, !dbg !861
  %45 = fmul double %43, %44, !dbg !862
  %46 = load double, double* %9, align 8, !dbg !863
  %47 = fsub double %45, %46, !dbg !864
  %48 = load i32, i32* %7, align 4, !dbg !865
  %49 = sext i32 %48 to i64, !dbg !866
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !866
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !867
  %52 = load double*, double** %51, align 8, !dbg !867
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !866
  %54 = load double, double* %53, align 8, !dbg !866
  %55 = fadd double %47, %54, !dbg !868
  store double %55, double* %8, align 8, !dbg !869
  %56 = load double, double* %11, align 8, !dbg !870
  %57 = load double, double* %13, align 8, !dbg !871
  %58 = fmul double %56, %57, !dbg !872
  %59 = call double @fabs(double %58) #1, !dbg !873
  %60 = load double, double* %9, align 8, !dbg !874
  %61 = call double @fabs(double %60) #1, !dbg !875
  %62 = fadd double %59, %61, !dbg !877
  %63 = load i32, i32* %7, align 4, !dbg !878
  %64 = sext i32 %63 to i64, !dbg !879
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !879
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !880
  %67 = load double*, double** %66, align 8, !dbg !880
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !879
  %69 = load double, double* %68, align 8, !dbg !879
  %70 = call double @fabs(double %69) #1, !dbg !881
  %71 = fadd double %62, %70, !dbg !883
  %72 = load double, double* %12, align 8, !dbg !884
  %73 = fadd double %72, %71, !dbg !884
  store double %73, double* %12, align 8, !dbg !884
  %74 = load double, double* %13, align 8, !dbg !885
  store double %74, double* %9, align 8, !dbg !886
  br label %75, !dbg !887

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !888
  %77 = add nsw i32 %76, -1, !dbg !888
  store i32 %77, i32* %7, align 4, !dbg !888
  br label %38, !dbg !890, !llvm.loop !891

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !893, metadata !108), !dbg !895
  %79 = load double, double* %8, align 8, !dbg !896
  store double %79, double* %14, align 8, !dbg !895
  %80 = load double, double* %10, align 8, !dbg !897
  %81 = load double, double* %8, align 8, !dbg !898
  %82 = fmul double %80, %81, !dbg !899
  %83 = load double, double* %9, align 8, !dbg !900
  %84 = fsub double %82, %83, !dbg !901
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !902
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !903
  %87 = load double*, double** %86, align 8, !dbg !903
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !902
  %89 = load double, double* %88, align 8, !dbg !902
  %90 = fmul double 5.000000e-01, %89, !dbg !904
  %91 = fadd double %84, %90, !dbg !905
  store double %91, double* %8, align 8, !dbg !906
  %92 = load double, double* %10, align 8, !dbg !907
  %93 = load double, double* %14, align 8, !dbg !908
  %94 = fmul double %92, %93, !dbg !909
  %95 = call double @fabs(double %94) #1, !dbg !910
  %96 = load double, double* %9, align 8, !dbg !911
  %97 = call double @fabs(double %96) #1, !dbg !912
  %98 = fadd double %95, %97, !dbg !914
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !915
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !916
  %101 = load double*, double** %100, align 8, !dbg !916
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !915
  %103 = load double, double* %102, align 8, !dbg !915
  %104 = call double @fabs(double %103) #1, !dbg !917
  %105 = fmul double 5.000000e-01, %104, !dbg !919
  %106 = fadd double %98, %105, !dbg !920
  %107 = load double, double* %12, align 8, !dbg !921
  %108 = fadd double %107, %106, !dbg !921
  store double %108, double* %12, align 8, !dbg !921
  %109 = load double, double* %8, align 8, !dbg !922
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !923
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !924
  store double %109, double* %111, align 8, !dbg !925
  %112 = load double, double* %12, align 8, !dbg !926
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !927
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !928
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !929
  %116 = load i32, i32* %115, align 8, !dbg !929
  %117 = sext i32 %116 to i64, !dbg !930
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !930
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !931
  %120 = load double*, double** %119, align 8, !dbg !931
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !930
  %122 = load double, double* %121, align 8, !dbg !930
  %123 = call double @fabs(double %122) #1, !dbg !932
  %124 = fadd double %113, %123, !dbg !933
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !934
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !935
  store double %124, double* %126, align 8, !dbg !936
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
  br i1 %12, label %13, label %22, !dbg !946

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !947, !llvm.loop !949

; <label>:14:                                     ; preds = %13
  %15 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !950
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !950
  store double 0x7FF8000000000000, double* %16, align 8, !dbg !950
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !950
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !950
  store double 0x7FF8000000000000, double* %18, align 8, !dbg !950
  br label %19, !dbg !950, !llvm.loop !953

; <label>:19:                                     ; preds = %14
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 699, i32 1), !dbg !955
  store i32 1, i32* %3, align 4, !dbg !955
  br label %81, !dbg !955
                                                  ; No predecessors!
  br label %21, !dbg !958

; <label>:21:                                     ; preds = %20
  br label %81, !dbg !960

; <label>:22:                                     ; preds = %2
  %23 = load i32, i32* %4, align 4, !dbg !961
  %24 = icmp sle i32 %23, 100, !dbg !963
  br i1 %24, label %25, label %38, !dbg !964

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %4, align 4, !dbg !965
  %27 = sext i32 %26 to i64, !dbg !967
  %28 = getelementptr inbounds [101 x double], [101 x double]* @psi_1_table, i64 0, i64 %27, !dbg !967
  %29 = load double, double* %28, align 8, !dbg !967
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !968
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !969
  store double %29, double* %31, align 8, !dbg !970
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !971
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !972
  %34 = load double, double* %33, align 8, !dbg !972
  %35 = fmul double 0x3CB0000000000000, %34, !dbg !973
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !974
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !975
  store double %35, double* %37, align 8, !dbg !976
  store i32 0, i32* %3, align 4, !dbg !977
  br label %81, !dbg !977

; <label>:38:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata double* %6, metadata !978, metadata !108), !dbg !980
  store double 0xBFA1111111111111, double* %6, align 8, !dbg !980
  call void @llvm.dbg.declare(metadata double* %7, metadata !981, metadata !108), !dbg !982
  store double 0x3F98618618618618, double* %7, align 8, !dbg !982
  call void @llvm.dbg.declare(metadata double* %8, metadata !983, metadata !108), !dbg !984
  store double 0xBFA1111111111111, double* %8, align 8, !dbg !984
  call void @llvm.dbg.declare(metadata double* %9, metadata !985, metadata !108), !dbg !986
  %39 = load i32, i32* %4, align 4, !dbg !987
  %40 = sitofp i32 %39 to double, !dbg !987
  %41 = fdiv double 1.000000e+00, %40, !dbg !988
  %42 = load i32, i32* %4, align 4, !dbg !989
  %43 = sitofp i32 %42 to double, !dbg !989
  %44 = fdiv double 1.000000e+00, %43, !dbg !990
  %45 = fmul double %41, %44, !dbg !991
  store double %45, double* %9, align 8, !dbg !986
  call void @llvm.dbg.declare(metadata double* %10, metadata !992, metadata !108), !dbg !993
  %46 = load double, double* %9, align 8, !dbg !994
  %47 = load double, double* %9, align 8, !dbg !995
  %48 = fmul double %46, %47, !dbg !996
  %49 = load double, double* %9, align 8, !dbg !997
  %50 = load double, double* %9, align 8, !dbg !998
  %51 = fmul double 0xBFA1111111111111, %50, !dbg !999
  %52 = fadd double 0x3F98618618618618, %51, !dbg !1000
  %53 = fmul double %49, %52, !dbg !1001
  %54 = fadd double 0xBFA1111111111111, %53, !dbg !1002
  %55 = fmul double %48, %54, !dbg !1003
  store double %55, double* %10, align 8, !dbg !993
  %56 = load i32, i32* %4, align 4, !dbg !1004
  %57 = sitofp i32 %56 to double, !dbg !1004
  %58 = fdiv double 5.000000e-01, %57, !dbg !1005
  %59 = fadd double 1.000000e+00, %58, !dbg !1006
  %60 = load i32, i32* %4, align 4, !dbg !1007
  %61 = sitofp i32 %60 to double, !dbg !1007
  %62 = fmul double 6.000000e+00, %61, !dbg !1008
  %63 = load i32, i32* %4, align 4, !dbg !1009
  %64 = sitofp i32 %63 to double, !dbg !1009
  %65 = fmul double %62, %64, !dbg !1010
  %66 = fdiv double 1.000000e+00, %65, !dbg !1011
  %67 = fadd double %59, %66, !dbg !1012
  %68 = load double, double* %10, align 8, !dbg !1013
  %69 = fadd double %67, %68, !dbg !1014
  %70 = load i32, i32* %4, align 4, !dbg !1015
  %71 = sitofp i32 %70 to double, !dbg !1015
  %72 = fdiv double %69, %71, !dbg !1016
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1017
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !1018
  store double %72, double* %74, align 8, !dbg !1019
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1020
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !1021
  %77 = load double, double* %76, align 8, !dbg !1021
  %78 = fmul double 0x3CB0000000000000, %77, !dbg !1022
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1023
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !1024
  store double %78, double* %80, align 8, !dbg !1025
  store i32 0, i32* %3, align 4, !dbg !1026
  br label %81, !dbg !1026

; <label>:81:                                     ; preds = %19, %25, %38, %21
  %82 = load i32, i32* %3, align 4, !dbg !1027
  ret i32 %82, !dbg !1027
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
  br i1 %16, label %23, label %17, !dbg !1036

; <label>:17:                                     ; preds = %2
  %18 = load double, double* %4, align 8, !dbg !1037
  %19 = fcmp oeq double %18, -1.000000e+00, !dbg !1039
  br i1 %19, label %23, label %20, !dbg !1040

; <label>:20:                                     ; preds = %17
  %21 = load double, double* %4, align 8, !dbg !1041
  %22 = fcmp oeq double %21, -2.000000e+00, !dbg !1043
  br i1 %22, label %23, label %32, !dbg !1044

; <label>:23:                                     ; preds = %20, %17, %2
  br label %24, !dbg !1045, !llvm.loop !1047

; <label>:24:                                     ; preds = %23
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1048
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !1048
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !1048
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1048
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !1048
  store double 0x7FF8000000000000, double* %28, align 8, !dbg !1048
  br label %29, !dbg !1048, !llvm.loop !1051

; <label>:29:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 727, i32 1), !dbg !1053
  store i32 1, i32* %3, align 4, !dbg !1053
  br label %127, !dbg !1053
                                                  ; No predecessors!
  br label %31, !dbg !1056

; <label>:31:                                     ; preds = %30
  br label %127, !dbg !1058

; <label>:32:                                     ; preds = %20
  %33 = load double, double* %4, align 8, !dbg !1059
  %34 = fcmp ogt double %33, 0.000000e+00, !dbg !1061
  br i1 %34, label %35, label %39, !dbg !1062

; <label>:35:                                     ; preds = %32
  %36 = load double, double* %4, align 8, !dbg !1063
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1065
  %38 = call i32 @psi_n_xg0(i32 1, double %36, %struct.gsl_sf_result_struct* %37), !dbg !1066
  store i32 %38, i32* %3, align 4, !dbg !1067
  br label %127, !dbg !1067

; <label>:39:                                     ; preds = %32
  %40 = load double, double* %4, align 8, !dbg !1068
  %41 = fcmp ogt double %40, -5.000000e+00, !dbg !1070
  br i1 %41, label %42, label %102, !dbg !1071

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1072, metadata !108), !dbg !1074
  %43 = load double, double* %4, align 8, !dbg !1075
  %44 = call double @floor(double %43) #1, !dbg !1076
  %45 = fsub double -0.000000e+00, %44, !dbg !1077
  %46 = fptosi double %45 to i32, !dbg !1077
  store i32 %46, i32* %6, align 4, !dbg !1074
  call void @llvm.dbg.declare(metadata double* %7, metadata !1078, metadata !108), !dbg !1079
  %47 = load double, double* %4, align 8, !dbg !1080
  %48 = load i32, i32* %6, align 4, !dbg !1081
  %49 = sitofp i32 %48 to double, !dbg !1081
  %50 = fadd double %47, %49, !dbg !1082
  store double %50, double* %7, align 8, !dbg !1079
  call void @llvm.dbg.declare(metadata double* %8, metadata !1083, metadata !108), !dbg !1084
  store double 0.000000e+00, double* %8, align 8, !dbg !1084
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1085, metadata !108), !dbg !1086
  %51 = load double, double* %7, align 8, !dbg !1087
  %52 = fcmp oeq double %51, 0.000000e+00, !dbg !1089
  br i1 %52, label %53, label %62, !dbg !1090

; <label>:53:                                     ; preds = %42
  br label %54, !dbg !1091, !llvm.loop !1092

; <label>:54:                                     ; preds = %53
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1093
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !1093
  store double 0x7FF8000000000000, double* %56, align 8, !dbg !1093
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1093
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !1093
  store double 0x7FF8000000000000, double* %58, align 8, !dbg !1093
  br label %59, !dbg !1093, !llvm.loop !1096

; <label>:59:                                     ; preds = %54
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 742, i32 1), !dbg !1098
  store i32 1, i32* %3, align 4, !dbg !1098
  br label %127, !dbg !1098
                                                  ; No predecessors!
  br label %61, !dbg !1101

; <label>:61:                                     ; preds = %60
  br label %62, !dbg !1103

; <label>:62:                                     ; preds = %61, %42
  store i32 0, i32* %9, align 4, !dbg !1105
  br label %63, !dbg !1107

; <label>:63:                                     ; preds = %80, %62
  %64 = load i32, i32* %9, align 4, !dbg !1108
  %65 = load i32, i32* %6, align 4, !dbg !1111
  %66 = icmp slt i32 %64, %65, !dbg !1112
  br i1 %66, label %67, label %83, !dbg !1113

; <label>:67:                                     ; preds = %63
  %68 = load double, double* %4, align 8, !dbg !1114
  %69 = load i32, i32* %9, align 4, !dbg !1115
  %70 = sitofp i32 %69 to double, !dbg !1115
  %71 = fadd double %68, %70, !dbg !1116
  %72 = load double, double* %4, align 8, !dbg !1117
  %73 = load i32, i32* %9, align 4, !dbg !1118
  %74 = sitofp i32 %73 to double, !dbg !1118
  %75 = fadd double %72, %74, !dbg !1119
  %76 = fmul double %71, %75, !dbg !1120
  %77 = fdiv double 1.000000e+00, %76, !dbg !1121
  %78 = load double, double* %8, align 8, !dbg !1122
  %79 = fadd double %78, %77, !dbg !1122
  store double %79, double* %8, align 8, !dbg !1122
  br label %80, !dbg !1123

; <label>:80:                                     ; preds = %67
  %81 = load i32, i32* %9, align 4, !dbg !1124
  %82 = add nsw i32 %81, 1, !dbg !1124
  store i32 %82, i32* %9, align 4, !dbg !1124
  br label %63, !dbg !1126, !llvm.loop !1127

; <label>:83:                                     ; preds = %63
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1129, metadata !108), !dbg !1131
  %84 = load double, double* %7, align 8, !dbg !1132
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1133
  %86 = call i32 @psi_n_xg0(i32 1, double %84, %struct.gsl_sf_result_struct* %85), !dbg !1134
  store i32 %86, i32* %10, align 4, !dbg !1131
  %87 = load double, double* %8, align 8, !dbg !1135
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1136
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !1137
  %90 = load double, double* %89, align 8, !dbg !1138
  %91 = fadd double %90, %87, !dbg !1138
  store double %91, double* %89, align 8, !dbg !1138
  %92 = load i32, i32* %6, align 4, !dbg !1139
  %93 = sitofp i32 %92 to double, !dbg !1139
  %94 = fmul double %93, 0x3CB0000000000000, !dbg !1140
  %95 = load double, double* %8, align 8, !dbg !1141
  %96 = fmul double %94, %95, !dbg !1142
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1143
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !1144
  %99 = load double, double* %98, align 8, !dbg !1145
  %100 = fadd double %99, %96, !dbg !1145
  store double %100, double* %98, align 8, !dbg !1145
  %101 = load i32, i32* %10, align 4, !dbg !1146
  store i32 %101, i32* %3, align 4, !dbg !1147
  br label %127, !dbg !1147

; <label>:102:                                    ; preds = %39
  call void @llvm.dbg.declare(metadata double* %11, metadata !1148, metadata !108), !dbg !1150
  %103 = load double, double* %4, align 8, !dbg !1151
  %104 = fmul double 0x400921FB54442D18, %103, !dbg !1152
  %105 = call double @sin(double %104) #7, !dbg !1153
  store double %105, double* %11, align 8, !dbg !1150
  call void @llvm.dbg.declare(metadata double* %12, metadata !1154, metadata !108), !dbg !1155
  %106 = load double, double* %11, align 8, !dbg !1156
  %107 = load double, double* %11, align 8, !dbg !1157
  %108 = fmul double %106, %107, !dbg !1158
  %109 = fdiv double 0x4023BD3CC9BE45DE, %108, !dbg !1159
  store double %109, double* %12, align 8, !dbg !1155
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1160, metadata !108), !dbg !1161
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1162, metadata !108), !dbg !1163
  %110 = load double, double* %4, align 8, !dbg !1164
  %111 = fsub double 1.000000e+00, %110, !dbg !1165
  %112 = call i32 @psi_n_xg0(i32 1, double %111, %struct.gsl_sf_result_struct* %13), !dbg !1166
  store i32 %112, i32* %14, align 4, !dbg !1163
  %113 = load double, double* %12, align 8, !dbg !1167
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1168
  %115 = load double, double* %114, align 8, !dbg !1168
  %116 = fsub double %113, %115, !dbg !1169
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1170
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 0, !dbg !1171
  store double %116, double* %118, align 8, !dbg !1172
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !1173
  %120 = load double, double* %119, align 8, !dbg !1173
  %121 = load double, double* %12, align 8, !dbg !1174
  %122 = fmul double 0x3CC0000000000000, %121, !dbg !1175
  %123 = fadd double %120, %122, !dbg !1176
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !1177
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 1, !dbg !1178
  store double %123, double* %125, align 8, !dbg !1179
  %126 = load i32, i32* %14, align 4, !dbg !1180
  store i32 %126, i32* %3, align 4, !dbg !1181
  br label %127, !dbg !1181

; <label>:127:                                    ; preds = %29, %35, %59, %83, %102, %31
  %128 = load i32, i32* %3, align 4, !dbg !1182
  ret i32 %128, !dbg !1182
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
  br i1 %14, label %15, label %19, !dbg !1195

; <label>:15:                                     ; preds = %3
  %16 = load double, double* %6, align 8, !dbg !1196
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1198
  %18 = call i32 @gsl_sf_psi_e(double %16, %struct.gsl_sf_result_struct* %17), !dbg !1199
  store i32 %18, i32* %4, align 4, !dbg !1200
  br label %69, !dbg !1200

; <label>:19:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1201, metadata !108), !dbg !1203
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !1204, metadata !108), !dbg !1205
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1206, metadata !108), !dbg !1207
  %20 = load i32, i32* %5, align 4, !dbg !1208
  %21 = sitofp i32 %20 to double, !dbg !1208
  %22 = fadd double %21, 1.000000e+00, !dbg !1209
  %23 = load double, double* %6, align 8, !dbg !1210
  %24 = call i32 @gsl_sf_hzeta_e(double %22, double %23, %struct.gsl_sf_result_struct* %9), !dbg !1211
  store i32 %24, i32* %10, align 4, !dbg !1207
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1212, metadata !108), !dbg !1213
  %25 = load i32, i32* %5, align 4, !dbg !1214
  %26 = call i32 @gsl_sf_lnfact_e(i32 %25, %struct.gsl_sf_result_struct* %8), !dbg !1215
  store i32 %26, i32* %11, align 4, !dbg !1213
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1216, metadata !108), !dbg !1217
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1218
  %28 = load double, double* %27, align 8, !dbg !1218
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1219
  %30 = load double, double* %29, align 8, !dbg !1219
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !1220
  %32 = load double, double* %31, align 8, !dbg !1220
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !1221
  %34 = load double, double* %33, align 8, !dbg !1221
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1222
  %36 = call i32 @gsl_sf_exp_mult_err_e(double %28, double %30, double %32, double %34, %struct.gsl_sf_result_struct* %35), !dbg !1223
  store i32 %36, i32* %12, align 4, !dbg !1217
  %37 = load i32, i32* %5, align 4, !dbg !1224
  %38 = and i32 %37, 1, !dbg !1224
  %39 = icmp ne i32 %38, 0, !dbg !1224
  br i1 %39, label %47, label %40, !dbg !1226

; <label>:40:                                     ; preds = %19
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1227
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !1229
  %43 = load double, double* %42, align 8, !dbg !1229
  %44 = fsub double -0.000000e+00, %43, !dbg !1230
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1231
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !1232
  store double %44, double* %46, align 8, !dbg !1233
  br label %47, !dbg !1231

; <label>:47:                                     ; preds = %40, %19
  %48 = load i32, i32* %12, align 4, !dbg !1234
  %49 = icmp ne i32 %48, 0, !dbg !1234
  br i1 %49, label %50, label %52, !dbg !1234

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %12, align 4, !dbg !1235
  br label %67, !dbg !1235

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* %11, align 4, !dbg !1237
  %54 = icmp ne i32 %53, 0, !dbg !1237
  br i1 %54, label %55, label %57, !dbg !1237

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %11, align 4, !dbg !1239
  br label %65, !dbg !1239

; <label>:57:                                     ; preds = %52
  %58 = load i32, i32* %10, align 4, !dbg !1241
  %59 = icmp ne i32 %58, 0, !dbg !1241
  br i1 %59, label %60, label %62, !dbg !1241

; <label>:60:                                     ; preds = %57
  %61 = load i32, i32* %10, align 4, !dbg !1243
  br label %63, !dbg !1243

; <label>:62:                                     ; preds = %57
  br label %63, !dbg !1245

; <label>:63:                                     ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ], !dbg !1247
  br label %65, !dbg !1247

; <label>:65:                                     ; preds = %63, %55
  %66 = phi i32 [ %56, %55 ], [ %64, %63 ], !dbg !1249
  br label %67, !dbg !1249

; <label>:67:                                     ; preds = %65, %50
  %68 = phi i32 [ %51, %50 ], [ %66, %65 ], !dbg !1251
  store i32 %68, i32* %4, align 4, !dbg !1253
  br label %69, !dbg !1253

; <label>:69:                                     ; preds = %67, %15
  %70 = load i32, i32* %4, align 4, !dbg !1254
  ret i32 %70, !dbg !1254
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
  br i1 %14, label %15, label %19, !dbg !1265

; <label>:15:                                     ; preds = %3
  %16 = load double, double* %6, align 8, !dbg !1266
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1268
  %18 = call i32 @gsl_sf_psi_e(double %16, %struct.gsl_sf_result_struct* %17), !dbg !1269
  store i32 %18, i32* %4, align 4, !dbg !1270
  br label %93, !dbg !1270

; <label>:19:                                     ; preds = %3
  %20 = load i32, i32* %5, align 4, !dbg !1271
  %21 = icmp eq i32 %20, 1, !dbg !1273
  br i1 %21, label %22, label %26, !dbg !1274

; <label>:22:                                     ; preds = %19
  %23 = load double, double* %6, align 8, !dbg !1275
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1277
  %25 = call i32 @gsl_sf_psi_1_e(double %23, %struct.gsl_sf_result_struct* %24), !dbg !1278
  store i32 %25, i32* %4, align 4, !dbg !1279
  br label %93, !dbg !1279

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %5, align 4, !dbg !1280
  %28 = icmp slt i32 %27, 0, !dbg !1282
  br i1 %28, label %32, label %29, !dbg !1283

; <label>:29:                                     ; preds = %26
  %30 = load double, double* %6, align 8, !dbg !1284
  %31 = fcmp ole double %30, 0.000000e+00, !dbg !1286
  br i1 %31, label %32, label %41, !dbg !1287

; <label>:32:                                     ; preds = %29, %26
  br label %33, !dbg !1288, !llvm.loop !1290

; <label>:33:                                     ; preds = %32
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1291
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !1291
  store double 0x7FF8000000000000, double* %35, align 8, !dbg !1291
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1291
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !1291
  store double 0x7FF8000000000000, double* %37, align 8, !dbg !1291
  br label %38, !dbg !1291, !llvm.loop !1294

; <label>:38:                                     ; preds = %33
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 781, i32 1), !dbg !1296
  store i32 1, i32* %4, align 4, !dbg !1296
  br label %93, !dbg !1296
                                                  ; No predecessors!
  br label %40, !dbg !1299

; <label>:40:                                     ; preds = %39
  br label %91, !dbg !1301

; <label>:41:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1302, metadata !108), !dbg !1304
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !1305, metadata !108), !dbg !1306
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1307, metadata !108), !dbg !1308
  %42 = load i32, i32* %5, align 4, !dbg !1309
  %43 = sitofp i32 %42 to double, !dbg !1309
  %44 = fadd double %43, 1.000000e+00, !dbg !1310
  %45 = load double, double* %6, align 8, !dbg !1311
  %46 = call i32 @gsl_sf_hzeta_e(double %44, double %45, %struct.gsl_sf_result_struct* %9), !dbg !1312
  store i32 %46, i32* %10, align 4, !dbg !1308
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1313, metadata !108), !dbg !1314
  %47 = load i32, i32* %5, align 4, !dbg !1315
  %48 = call i32 @gsl_sf_lnfact_e(i32 %47, %struct.gsl_sf_result_struct* %8), !dbg !1316
  store i32 %48, i32* %11, align 4, !dbg !1314
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1317, metadata !108), !dbg !1318
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1319
  %50 = load double, double* %49, align 8, !dbg !1319
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1320
  %52 = load double, double* %51, align 8, !dbg !1320
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !1321
  %54 = load double, double* %53, align 8, !dbg !1321
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !1322
  %56 = load double, double* %55, align 8, !dbg !1322
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1323
  %58 = call i32 @gsl_sf_exp_mult_err_e(double %50, double %52, double %54, double %56, %struct.gsl_sf_result_struct* %57), !dbg !1324
  store i32 %58, i32* %12, align 4, !dbg !1318
  %59 = load i32, i32* %5, align 4, !dbg !1325
  %60 = and i32 %59, 1, !dbg !1325
  %61 = icmp ne i32 %60, 0, !dbg !1325
  br i1 %61, label %69, label %62, !dbg !1327

; <label>:62:                                     ; preds = %41
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1328
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !1330
  %65 = load double, double* %64, align 8, !dbg !1330
  %66 = fsub double -0.000000e+00, %65, !dbg !1331
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1332
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !1333
  store double %66, double* %68, align 8, !dbg !1334
  br label %69, !dbg !1332

; <label>:69:                                     ; preds = %62, %41
  %70 = load i32, i32* %12, align 4, !dbg !1335
  %71 = icmp ne i32 %70, 0, !dbg !1335
  br i1 %71, label %72, label %74, !dbg !1335

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %12, align 4, !dbg !1336
  br label %89, !dbg !1336

; <label>:74:                                     ; preds = %69
  %75 = load i32, i32* %11, align 4, !dbg !1338
  %76 = icmp ne i32 %75, 0, !dbg !1338
  br i1 %76, label %77, label %79, !dbg !1338

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %11, align 4, !dbg !1340
  br label %87, !dbg !1340

; <label>:79:                                     ; preds = %74
  %80 = load i32, i32* %10, align 4, !dbg !1342
  %81 = icmp ne i32 %80, 0, !dbg !1342
  br i1 %81, label %82, label %84, !dbg !1342

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %10, align 4, !dbg !1344
  br label %85, !dbg !1344

; <label>:84:                                     ; preds = %79
  br label %85, !dbg !1346

; <label>:85:                                     ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ], !dbg !1348
  br label %87, !dbg !1348

; <label>:87:                                     ; preds = %85, %77
  %88 = phi i32 [ %78, %77 ], [ %86, %85 ], !dbg !1350
  br label %89, !dbg !1350

; <label>:89:                                     ; preds = %87, %72
  %90 = phi i32 [ %73, %72 ], [ %88, %87 ], !dbg !1352
  store i32 %90, i32* %4, align 4, !dbg !1354
  br label %93, !dbg !1354

; <label>:91:                                     ; preds = %40
  br label %92

; <label>:92:                                     ; preds = %91
  br label %93

; <label>:93:                                     ; preds = %15, %22, %38, %89, %92
  %94 = load i32, i32* %4, align 4, !dbg !1355
  ret i32 %94, !dbg !1355
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
  br i1 %17, label %18, label %36, !dbg !1370

; <label>:18:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %10, metadata !1371, metadata !108), !dbg !1373
  %19 = load double, double* %6, align 8, !dbg !1374
  %20 = load double, double* %7, align 8, !dbg !1375
  %21 = call { double, double } @gsl_complex_rect(double %19, double %20), !dbg !1376
  %22 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %10, i32 0, i32 0, !dbg !1376
  %23 = bitcast [2 x double]* %22 to { double, double }*, !dbg !1376
  %24 = getelementptr inbounds { double, double }, { double, double }* %23, i32 0, i32 0, !dbg !1376
  %25 = extractvalue { double, double } %21, 0, !dbg !1376
  store double %25, double* %24, align 8, !dbg !1376
  %26 = getelementptr inbounds { double, double }, { double, double }* %23, i32 0, i32 1, !dbg !1376
  %27 = extractvalue { double, double } %21, 1, !dbg !1376
  store double %27, double* %26, align 8, !dbg !1376
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1377
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1378
  %30 = bitcast %struct.gsl_complex* %10 to { double, double }*, !dbg !1379
  %31 = getelementptr inbounds { double, double }, { double, double }* %30, i32 0, i32 0, !dbg !1379
  %32 = load double, double* %31, align 8, !dbg !1379
  %33 = getelementptr inbounds { double, double }, { double, double }* %30, i32 0, i32 1, !dbg !1379
  %34 = load double, double* %33, align 8, !dbg !1379
  %35 = call i32 @psi_complex_rhp(double %32, double %34, %struct.gsl_sf_result_struct* %28, %struct.gsl_sf_result_struct* %29), !dbg !1379
  store i32 %35, i32* %5, align 4, !dbg !1380
  br label %122, !dbg !1380

; <label>:36:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %11, metadata !1381, metadata !108), !dbg !1383
  %37 = load double, double* %6, align 8, !dbg !1384
  %38 = load double, double* %7, align 8, !dbg !1385
  %39 = call { double, double } @gsl_complex_rect(double %37, double %38), !dbg !1386
  %40 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %11, i32 0, i32 0, !dbg !1386
  %41 = bitcast [2 x double]* %40 to { double, double }*, !dbg !1386
  %42 = getelementptr inbounds { double, double }, { double, double }* %41, i32 0, i32 0, !dbg !1386
  %43 = extractvalue { double, double } %39, 0, !dbg !1386
  store double %43, double* %42, align 8, !dbg !1386
  %44 = getelementptr inbounds { double, double }, { double, double }* %41, i32 0, i32 1, !dbg !1386
  %45 = extractvalue { double, double } %39, 1, !dbg !1386
  store double %45, double* %44, align 8, !dbg !1386
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %12, metadata !1387, metadata !108), !dbg !1388
  %46 = load double, double* %6, align 8, !dbg !1389
  %47 = fsub double 1.000000e+00, %46, !dbg !1390
  %48 = load double, double* %7, align 8, !dbg !1391
  %49 = fsub double -0.000000e+00, %48, !dbg !1392
  %50 = call { double, double } @gsl_complex_rect(double %47, double %49), !dbg !1393
  %51 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %12, i32 0, i32 0, !dbg !1393
  %52 = bitcast [2 x double]* %51 to { double, double }*, !dbg !1393
  %53 = getelementptr inbounds { double, double }, { double, double }* %52, i32 0, i32 0, !dbg !1393
  %54 = extractvalue { double, double } %50, 0, !dbg !1393
  store double %54, double* %53, align 8, !dbg !1393
  %55 = getelementptr inbounds { double, double }, { double, double }* %52, i32 0, i32 1, !dbg !1393
  %56 = extractvalue { double, double } %50, 1, !dbg !1393
  store double %56, double* %55, align 8, !dbg !1393
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %13, metadata !1394, metadata !108), !dbg !1395
  %57 = bitcast %struct.gsl_complex* %11 to { double, double }*, !dbg !1396
  %58 = getelementptr inbounds { double, double }, { double, double }* %57, i32 0, i32 0, !dbg !1396
  %59 = load double, double* %58, align 8, !dbg !1396
  %60 = getelementptr inbounds { double, double }, { double, double }* %57, i32 0, i32 1, !dbg !1396
  %61 = load double, double* %60, align 8, !dbg !1396
  %62 = call { double, double } @gsl_complex_mul_real(double %59, double %61, double 0x400921FB54442D18), !dbg !1396
  %63 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %13, i32 0, i32 0, !dbg !1396
  %64 = bitcast [2 x double]* %63 to { double, double }*, !dbg !1396
  %65 = getelementptr inbounds { double, double }, { double, double }* %64, i32 0, i32 0, !dbg !1396
  %66 = extractvalue { double, double } %62, 0, !dbg !1396
  store double %66, double* %65, align 8, !dbg !1396
  %67 = getelementptr inbounds { double, double }, { double, double }* %64, i32 0, i32 1, !dbg !1396
  %68 = extractvalue { double, double } %62, 1, !dbg !1396
  store double %68, double* %67, align 8, !dbg !1396
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %14, metadata !1397, metadata !108), !dbg !1398
  %69 = bitcast %struct.gsl_complex* %13 to { double, double }*, !dbg !1399
  %70 = getelementptr inbounds { double, double }, { double, double }* %69, i32 0, i32 0, !dbg !1399
  %71 = load double, double* %70, align 8, !dbg !1399
  %72 = getelementptr inbounds { double, double }, { double, double }* %69, i32 0, i32 1, !dbg !1399
  %73 = load double, double* %72, align 8, !dbg !1399
  %74 = call { double, double } @gsl_complex_cot(double %71, double %73), !dbg !1399
  %75 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %14, i32 0, i32 0, !dbg !1399
  %76 = bitcast [2 x double]* %75 to { double, double }*, !dbg !1399
  %77 = getelementptr inbounds { double, double }, { double, double }* %76, i32 0, i32 0, !dbg !1399
  %78 = extractvalue { double, double } %74, 0, !dbg !1399
  store double %78, double* %77, align 8, !dbg !1399
  %79 = getelementptr inbounds { double, double }, { double, double }* %76, i32 0, i32 1, !dbg !1399
  %80 = extractvalue { double, double } %74, 1, !dbg !1399
  store double %80, double* %79, align 8, !dbg !1399
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1400, metadata !108), !dbg !1401
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1402
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1403
  %83 = bitcast %struct.gsl_complex* %12 to { double, double }*, !dbg !1404
  %84 = getelementptr inbounds { double, double }, { double, double }* %83, i32 0, i32 0, !dbg !1404
  %85 = load double, double* %84, align 8, !dbg !1404
  %86 = getelementptr inbounds { double, double }, { double, double }* %83, i32 0, i32 1, !dbg !1404
  %87 = load double, double* %86, align 8, !dbg !1404
  %88 = call i32 @psi_complex_rhp(double %85, double %87, %struct.gsl_sf_result_struct* %81, %struct.gsl_sf_result_struct* %82), !dbg !1404
  store i32 %88, i32* %15, align 4, !dbg !1401
  %89 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %14, i32 0, i32 0, !dbg !1405
  %90 = getelementptr inbounds [2 x double], [2 x double]* %89, i64 0, i64 0, !dbg !1405
  %91 = load double, double* %90, align 8, !dbg !1405
  %92 = call i32 @gsl_finite(double %91), !dbg !1405
  %93 = icmp ne i32 %92, 0, !dbg !1405
  br i1 %93, label %94, label %118, !dbg !1407

; <label>:94:                                     ; preds = %36
  %95 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %14, i32 0, i32 0, !dbg !1408
  %96 = getelementptr inbounds [2 x double], [2 x double]* %95, i64 0, i64 1, !dbg !1408
  %97 = load double, double* %96, align 8, !dbg !1408
  %98 = call i32 @gsl_finite(double %97), !dbg !1408
  %99 = icmp ne i32 %98, 0, !dbg !1408
  br i1 %99, label %100, label %118, !dbg !1410

; <label>:100:                                    ; preds = %94
  %101 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %14, i32 0, i32 0, !dbg !1411
  %102 = getelementptr inbounds [2 x double], [2 x double]* %101, i64 0, i64 0, !dbg !1411
  %103 = load double, double* %102, align 8, !dbg !1411
  %104 = fmul double 0x400921FB54442D18, %103, !dbg !1413
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1414
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 0, !dbg !1415
  %107 = load double, double* %106, align 8, !dbg !1416
  %108 = fsub double %107, %104, !dbg !1416
  store double %108, double* %106, align 8, !dbg !1416
  %109 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %14, i32 0, i32 0, !dbg !1417
  %110 = getelementptr inbounds [2 x double], [2 x double]* %109, i64 0, i64 1, !dbg !1417
  %111 = load double, double* %110, align 8, !dbg !1417
  %112 = fmul double 0x400921FB54442D18, %111, !dbg !1418
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1419
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 0, !dbg !1420
  %115 = load double, double* %114, align 8, !dbg !1421
  %116 = fsub double %115, %112, !dbg !1421
  store double %116, double* %114, align 8, !dbg !1421
  %117 = load i32, i32* %15, align 4, !dbg !1422
  store i32 %117, i32* %5, align 4, !dbg !1423
  br label %122, !dbg !1423

; <label>:118:                                    ; preds = %94, %36
  br label %119, !dbg !1424, !llvm.loop !1426

; <label>:119:                                    ; preds = %118
  call void @gsl_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 827, i32 1), !dbg !1427
  store i32 1, i32* %5, align 4, !dbg !1427
  br label %122, !dbg !1427
                                                  ; No predecessors!
  br label %121

; <label>:121:                                    ; preds = %120
  br label %122

; <label>:122:                                    ; preds = %18, %100, %119, %121
  %123 = load i32, i32* %5, align 4, !dbg !1430
  ret i32 %123, !dbg !1430
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
  br i1 %26, label %27, label %41, !dbg !1449

; <label>:27:                                     ; preds = %4
  %28 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1450
  %29 = getelementptr inbounds [2 x double], [2 x double]* %28, i64 0, i64 1, !dbg !1450
  %30 = load double, double* %29, align 8, !dbg !1450
  %31 = fcmp oeq double %30, 0.000000e+00, !dbg !1452
  br i1 %31, label %32, label %41, !dbg !1453

; <label>:32:                                     ; preds = %27
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1454
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !1456
  store double 0.000000e+00, double* %34, align 8, !dbg !1457
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1458
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !1459
  store double 0.000000e+00, double* %36, align 8, !dbg !1460
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1461
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !1462
  store double 0.000000e+00, double* %38, align 8, !dbg !1463
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1464
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !1465
  store double 0.000000e+00, double* %40, align 8, !dbg !1466
  store i32 1, i32* %5, align 4, !dbg !1467
  br label %221, !dbg !1467

; <label>:41:                                     ; preds = %27, %4
  %42 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1468
  %43 = getelementptr inbounds [2 x double], [2 x double]* %42, i64 0, i64 0, !dbg !1468
  %44 = load double, double* %43, align 8, !dbg !1468
  %45 = fcmp olt double %44, 2.000000e+01, !dbg !1470
  br i1 %45, label %46, label %77, !dbg !1471

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1472
  %48 = getelementptr inbounds [2 x double], [2 x double]* %47, i64 0, i64 1, !dbg !1472
  %49 = load double, double* %48, align 8, !dbg !1472
  %50 = call double @fabs(double %49) #1, !dbg !1474
  %51 = fcmp olt double %50, 2.000000e+01, !dbg !1475
  br i1 %51, label %52, label %77, !dbg !1476

; <label>:52:                                     ; preds = %46
  call void @llvm.dbg.declare(metadata double* %12, metadata !1477, metadata !108), !dbg !1479
  %53 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1480
  %54 = getelementptr inbounds [2 x double], [2 x double]* %53, i64 0, i64 1, !dbg !1480
  %55 = load double, double* %54, align 8, !dbg !1480
  %56 = fadd double 2.000000e+01, %55, !dbg !1481
  %57 = call double @sqrt(double %56) #7, !dbg !1482
  store double %57, double* %12, align 8, !dbg !1479
  call void @llvm.dbg.declare(metadata double* %13, metadata !1483, metadata !108), !dbg !1484
  %58 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1485
  %59 = getelementptr inbounds [2 x double], [2 x double]* %58, i64 0, i64 1, !dbg !1485
  %60 = load double, double* %59, align 8, !dbg !1485
  %61 = fsub double 2.000000e+01, %60, !dbg !1486
  %62 = call double @sqrt(double %61) #7, !dbg !1487
  store double %62, double* %13, align 8, !dbg !1484
  call void @llvm.dbg.declare(metadata double* %14, metadata !1488, metadata !108), !dbg !1489
  %63 = load double, double* %12, align 8, !dbg !1490
  %64 = load double, double* %13, align 8, !dbg !1491
  %65 = fmul double %63, %64, !dbg !1492
  %66 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %6, i32 0, i32 0, !dbg !1493
  %67 = getelementptr inbounds [2 x double], [2 x double]* %66, i64 0, i64 0, !dbg !1493
  %68 = load double, double* %67, align 8, !dbg !1493
  %69 = fsub double %65, %68, !dbg !1494
  store double %69, double* %14, align 8, !dbg !1489
  %70 = load double, double* %14, align 8, !dbg !1495
  %71 = fcmp ogt double %70, 0.000000e+00, !dbg !1497
  br i1 %71, label %72, label %76, !dbg !1498

; <label>:72:                                     ; preds = %52
  %73 = load double, double* %14, align 8, !dbg !1499
  %74 = call double @ceil(double %73) #1, !dbg !1501
  %75 = fptosi double %74 to i32, !dbg !1501
  store i32 %75, i32* %9, align 4, !dbg !1502
  br label %76, !dbg !1503

; <label>:76:                                     ; preds = %72, %52
  br label %77, !dbg !1504

; <label>:77:                                     ; preds = %76, %46, %41
  %78 = load i32, i32* %9, align 4, !dbg !1505
  %79 = sitofp i32 %78 to double, !dbg !1505
  %80 = bitcast %struct.gsl_complex* %6 to { double, double }*, !dbg !1506
  %81 = getelementptr inbounds { double, double }, { double, double }* %80, i32 0, i32 0, !dbg !1506
  %82 = load double, double* %81, align 8, !dbg !1506
  %83 = getelementptr inbounds { double, double }, { double, double }* %80, i32 0, i32 1, !dbg !1506
  %84 = load double, double* %83, align 8, !dbg !1506
  %85 = call { double, double } @gsl_complex_add_real(double %82, double %84, double %79), !dbg !1506
  %86 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %15, i32 0, i32 0, !dbg !1506
  %87 = bitcast [2 x double]* %86 to { double, double }*, !dbg !1506
  %88 = getelementptr inbounds { double, double }, { double, double }* %87, i32 0, i32 0, !dbg !1506
  %89 = extractvalue { double, double } %85, 0, !dbg !1506
  store double %89, double* %88, align 8, !dbg !1506
  %90 = getelementptr inbounds { double, double }, { double, double }* %87, i32 0, i32 1, !dbg !1506
  %91 = extractvalue { double, double } %85, 1, !dbg !1506
  store double %91, double* %90, align 8, !dbg !1506
  %92 = bitcast %struct.gsl_complex* %15 to { double, double }*, !dbg !1507
  %93 = getelementptr inbounds { double, double }, { double, double }* %92, i32 0, i32 0, !dbg !1507
  %94 = load double, double* %93, align 8, !dbg !1507
  %95 = getelementptr inbounds { double, double }, { double, double }* %92, i32 0, i32 1, !dbg !1507
  %96 = load double, double* %95, align 8, !dbg !1507
  %97 = call { double, double } @psi_complex_asymp(double %94, double %96), !dbg !1508
  %98 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %16, i32 0, i32 0, !dbg !1507
  %99 = bitcast [2 x double]* %98 to { double, double }*, !dbg !1507
  %100 = getelementptr inbounds { double, double }, { double, double }* %99, i32 0, i32 0, !dbg !1507
  %101 = extractvalue { double, double } %97, 0, !dbg !1507
  store double %101, double* %100, align 8, !dbg !1507
  %102 = getelementptr inbounds { double, double }, { double, double }* %99, i32 0, i32 1, !dbg !1507
  %103 = extractvalue { double, double } %97, 1, !dbg !1507
  store double %103, double* %102, align 8, !dbg !1507
  %104 = bitcast %struct.gsl_complex* %11 to i8*, !dbg !1507
  %105 = bitcast %struct.gsl_complex* %16 to i8*, !dbg !1507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 16, i32 8, i1 false), !dbg !1510
  %106 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %11, i32 0, i32 0, !dbg !1512
  %107 = getelementptr inbounds [2 x double], [2 x double]* %106, i64 0, i64 0, !dbg !1512
  %108 = load double, double* %107, align 8, !dbg !1512
  %109 = call double @fabs(double %108) #1, !dbg !1513
  %110 = fmul double 0x3CC0000000000000, %109, !dbg !1514
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1515
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 1, !dbg !1516
  store double %110, double* %112, align 8, !dbg !1517
  %113 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %11, i32 0, i32 0, !dbg !1518
  %114 = getelementptr inbounds [2 x double], [2 x double]* %113, i64 0, i64 1, !dbg !1518
  %115 = load double, double* %114, align 8, !dbg !1518
  %116 = call double @fabs(double %115) #1, !dbg !1519
  %117 = fmul double 0x3CC0000000000000, %116, !dbg !1520
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1521
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 1, !dbg !1522
  store double %117, double* %119, align 8, !dbg !1523
  %120 = load i32, i32* %9, align 4, !dbg !1524
  store i32 %120, i32* %10, align 4, !dbg !1526
  br label %121, !dbg !1527

; <label>:121:                                    ; preds = %189, %77
  %122 = load i32, i32* %10, align 4, !dbg !1528
  %123 = icmp sge i32 %122, 1, !dbg !1531
  br i1 %123, label %124, label %192, !dbg !1532

; <label>:124:                                    ; preds = %121
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %17, metadata !1533, metadata !108), !dbg !1535
  %125 = load i32, i32* %10, align 4, !dbg !1536
  %126 = sitofp i32 %125 to double, !dbg !1536
  %127 = fsub double %126, 1.000000e+00, !dbg !1537
  %128 = bitcast %struct.gsl_complex* %6 to { double, double }*, !dbg !1538
  %129 = getelementptr inbounds { double, double }, { double, double }* %128, i32 0, i32 0, !dbg !1538
  %130 = load double, double* %129, align 8, !dbg !1538
  %131 = getelementptr inbounds { double, double }, { double, double }* %128, i32 0, i32 1, !dbg !1538
  %132 = load double, double* %131, align 8, !dbg !1538
  %133 = call { double, double } @gsl_complex_add_real(double %130, double %132, double %127), !dbg !1538
  %134 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %17, i32 0, i32 0, !dbg !1538
  %135 = bitcast [2 x double]* %134 to { double, double }*, !dbg !1538
  %136 = getelementptr inbounds { double, double }, { double, double }* %135, i32 0, i32 0, !dbg !1538
  %137 = extractvalue { double, double } %133, 0, !dbg !1538
  store double %137, double* %136, align 8, !dbg !1538
  %138 = getelementptr inbounds { double, double }, { double, double }* %135, i32 0, i32 1, !dbg !1538
  %139 = extractvalue { double, double } %133, 1, !dbg !1538
  store double %139, double* %138, align 8, !dbg !1538
  call void @llvm.dbg.declare(metadata %struct.gsl_complex* %18, metadata !1539, metadata !108), !dbg !1540
  %140 = bitcast %struct.gsl_complex* %17 to { double, double }*, !dbg !1541
  %141 = getelementptr inbounds { double, double }, { double, double }* %140, i32 0, i32 0, !dbg !1541
  %142 = load double, double* %141, align 8, !dbg !1541
  %143 = getelementptr inbounds { double, double }, { double, double }* %140, i32 0, i32 1, !dbg !1541
  %144 = load double, double* %143, align 8, !dbg !1541
  %145 = call { double, double } @gsl_complex_inverse(double %142, double %144), !dbg !1541
  %146 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %18, i32 0, i32 0, !dbg !1541
  %147 = bitcast [2 x double]* %146 to { double, double }*, !dbg !1541
  %148 = getelementptr inbounds { double, double }, { double, double }* %147, i32 0, i32 0, !dbg !1541
  %149 = extractvalue { double, double } %145, 0, !dbg !1541
  store double %149, double* %148, align 8, !dbg !1541
  %150 = getelementptr inbounds { double, double }, { double, double }* %147, i32 0, i32 1, !dbg !1541
  %151 = extractvalue { double, double } %145, 1, !dbg !1541
  store double %151, double* %150, align 8, !dbg !1541
  %152 = bitcast %struct.gsl_complex* %11 to { double, double }*, !dbg !1542
  %153 = getelementptr inbounds { double, double }, { double, double }* %152, i32 0, i32 0, !dbg !1542
  %154 = load double, double* %153, align 8, !dbg !1542
  %155 = getelementptr inbounds { double, double }, { double, double }* %152, i32 0, i32 1, !dbg !1542
  %156 = load double, double* %155, align 8, !dbg !1542
  %157 = bitcast %struct.gsl_complex* %18 to { double, double }*, !dbg !1542
  %158 = getelementptr inbounds { double, double }, { double, double }* %157, i32 0, i32 0, !dbg !1542
  %159 = load double, double* %158, align 8, !dbg !1542
  %160 = getelementptr inbounds { double, double }, { double, double }* %157, i32 0, i32 1, !dbg !1542
  %161 = load double, double* %160, align 8, !dbg !1542
  %162 = call { double, double } @gsl_complex_sub(double %154, double %156, double %159, double %161), !dbg !1542
  %163 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %19, i32 0, i32 0, !dbg !1542
  %164 = bitcast [2 x double]* %163 to { double, double }*, !dbg !1542
  %165 = getelementptr inbounds { double, double }, { double, double }* %164, i32 0, i32 0, !dbg !1542
  %166 = extractvalue { double, double } %162, 0, !dbg !1542
  store double %166, double* %165, align 8, !dbg !1542
  %167 = getelementptr inbounds { double, double }, { double, double }* %164, i32 0, i32 1, !dbg !1542
  %168 = extractvalue { double, double } %162, 1, !dbg !1542
  store double %168, double* %167, align 8, !dbg !1542
  %169 = bitcast %struct.gsl_complex* %11 to i8*, !dbg !1542
  %170 = bitcast %struct.gsl_complex* %19 to i8*, !dbg !1542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %169, i8* %170, i64 16, i32 8, i1 false), !dbg !1543
  %171 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %18, i32 0, i32 0, !dbg !1545
  %172 = getelementptr inbounds [2 x double], [2 x double]* %171, i64 0, i64 0, !dbg !1545
  %173 = load double, double* %172, align 8, !dbg !1545
  %174 = call double @fabs(double %173) #1, !dbg !1546
  %175 = fmul double 0x3CC0000000000000, %174, !dbg !1547
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1548
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %176, i32 0, i32 1, !dbg !1549
  %178 = load double, double* %177, align 8, !dbg !1550
  %179 = fadd double %178, %175, !dbg !1550
  store double %179, double* %177, align 8, !dbg !1550
  %180 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %18, i32 0, i32 0, !dbg !1551
  %181 = getelementptr inbounds [2 x double], [2 x double]* %180, i64 0, i64 1, !dbg !1551
  %182 = load double, double* %181, align 8, !dbg !1551
  %183 = call double @fabs(double %182) #1, !dbg !1552
  %184 = fmul double 0x3CC0000000000000, %183, !dbg !1553
  %185 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1554
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %185, i32 0, i32 1, !dbg !1555
  %187 = load double, double* %186, align 8, !dbg !1556
  %188 = fadd double %187, %184, !dbg !1556
  store double %188, double* %186, align 8, !dbg !1556
  br label %189, !dbg !1557

; <label>:189:                                    ; preds = %124
  %190 = load i32, i32* %10, align 4, !dbg !1558
  %191 = add nsw i32 %190, -1, !dbg !1558
  store i32 %191, i32* %10, align 4, !dbg !1558
  br label %121, !dbg !1560, !llvm.loop !1561

; <label>:192:                                    ; preds = %121
  %193 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %11, i32 0, i32 0, !dbg !1563
  %194 = getelementptr inbounds [2 x double], [2 x double]* %193, i64 0, i64 0, !dbg !1563
  %195 = load double, double* %194, align 8, !dbg !1563
  %196 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1564
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %196, i32 0, i32 0, !dbg !1565
  store double %195, double* %197, align 8, !dbg !1566
  %198 = getelementptr inbounds %struct.gsl_complex, %struct.gsl_complex* %11, i32 0, i32 0, !dbg !1567
  %199 = getelementptr inbounds [2 x double], [2 x double]* %198, i64 0, i64 1, !dbg !1567
  %200 = load double, double* %199, align 8, !dbg !1567
  %201 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1568
  %202 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %201, i32 0, i32 0, !dbg !1569
  store double %200, double* %202, align 8, !dbg !1570
  %203 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1571
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %203, i32 0, i32 0, !dbg !1572
  %205 = load double, double* %204, align 8, !dbg !1572
  %206 = call double @fabs(double %205) #1, !dbg !1573
  %207 = fmul double 0x3CC0000000000000, %206, !dbg !1574
  %208 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1575
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %208, i32 0, i32 1, !dbg !1576
  %210 = load double, double* %209, align 8, !dbg !1577
  %211 = fadd double %210, %207, !dbg !1577
  store double %211, double* %209, align 8, !dbg !1577
  %212 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1578
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %212, i32 0, i32 0, !dbg !1579
  %214 = load double, double* %213, align 8, !dbg !1579
  %215 = call double @fabs(double %214) #1, !dbg !1580
  %216 = fmul double 0x3CC0000000000000, %215, !dbg !1581
  %217 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1582
  %218 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %217, i32 0, i32 1, !dbg !1583
  %219 = load double, double* %218, align 8, !dbg !1584
  %220 = fadd double %219, %216, !dbg !1584
  store double %220, double* %218, align 8, !dbg !1584
  store i32 0, i32* %5, align 4, !dbg !1585
  br label %221, !dbg !1585

; <label>:221:                                    ; preds = %192, %32
  %222 = load i32, i32* %5, align 4, !dbg !1586
  ret i32 %222, !dbg !1586
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
  br i1 %9, label %10, label %16, !dbg !1593

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1597, !llvm.loop !1600

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1602
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 840, i32 %12), !dbg !1602
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1602
  %14 = load double, double* %13, align 8, !dbg !1602
  store double %14, double* %2, align 8, !dbg !1602
  br label %19, !dbg !1602
                                                  ; No predecessors!
  br label %16, !dbg !1605

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1607
  %18 = load double, double* %17, align 8, !dbg !1607
  store double %18, double* %2, align 8, !dbg !1607
  br label %19, !dbg !1607

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1609
  ret double %20, !dbg !1609
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
  br i1 %9, label %10, label %16, !dbg !1616

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1620, !llvm.loop !1623

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1625
  call void @gsl_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 845, i32 %12), !dbg !1625
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1625
  %14 = load double, double* %13, align 8, !dbg !1625
  store double %14, double* %2, align 8, !dbg !1625
  br label %19, !dbg !1625
                                                  ; No predecessors!
  br label %16, !dbg !1628

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1630
  %18 = load double, double* %17, align 8, !dbg !1630
  store double %18, double* %2, align 8, !dbg !1630
  br label %19, !dbg !1630

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1632
  ret double %20, !dbg !1632
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
  br i1 %9, label %10, label %16, !dbg !1637

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1641, !llvm.loop !1644

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1646
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 850, i32 %12), !dbg !1646
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1646
  %14 = load double, double* %13, align 8, !dbg !1646
  store double %14, double* %2, align 8, !dbg !1646
  br label %19, !dbg !1646
                                                  ; No predecessors!
  br label %16, !dbg !1649

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1651
  %18 = load double, double* %17, align 8, !dbg !1651
  store double %18, double* %2, align 8, !dbg !1651
  br label %19, !dbg !1651

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1653
  ret double %20, !dbg !1653
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
  br i1 %9, label %10, label %16, !dbg !1658

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1662, !llvm.loop !1665

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1667
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 855, i32 %12), !dbg !1667
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1667
  %14 = load double, double* %13, align 8, !dbg !1667
  store double %14, double* %2, align 8, !dbg !1667
  br label %19, !dbg !1667
                                                  ; No predecessors!
  br label %16, !dbg !1670

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1672
  %18 = load double, double* %17, align 8, !dbg !1672
  store double %18, double* %2, align 8, !dbg !1672
  br label %19, !dbg !1672

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1674
  ret double %20, !dbg !1674
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
  br i1 %9, label %10, label %16, !dbg !1679

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1683, !llvm.loop !1686

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1688
  call void @gsl_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 860, i32 %12), !dbg !1688
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1688
  %14 = load double, double* %13, align 8, !dbg !1688
  store double %14, double* %2, align 8, !dbg !1688
  br label %19, !dbg !1688
                                                  ; No predecessors!
  br label %16, !dbg !1691

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1693
  %18 = load double, double* %17, align 8, !dbg !1693
  store double %18, double* %2, align 8, !dbg !1693
  br label %19, !dbg !1693

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1695
  ret double %20, !dbg !1695
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
  br i1 %12, label %13, label %19, !dbg !1704

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1708, !llvm.loop !1711

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1713
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 865, i32 %15), !dbg !1713
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1713
  %17 = load double, double* %16, align 8, !dbg !1713
  store double %17, double* %3, align 8, !dbg !1713
  br label %22, !dbg !1713
                                                  ; No predecessors!
  br label %19, !dbg !1716

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1718
  %21 = load double, double* %20, align 8, !dbg !1718
  store double %21, double* %3, align 8, !dbg !1718
  br label %22, !dbg !1718

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1720
  ret double %23, !dbg !1720
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
