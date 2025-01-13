; ModuleID = 'bessel_amp_phase.ll'
source_filename = "bessel_amp_phase.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }

@bm0_data = internal global [21 x double] [double 0x3FB7C4FE11C58D54, double 0xBF576D56D14C43AF, double 0x3EFDAE474388C1BB, double 0xBEB80AB6E2A1C646, double 0x3E8025014FEDC08F, double 0xBE4E00B5C3944D1D, double 0x3E2187AECE277C17, double 0xBDF853935C75ECBD, double 7.024759e-11, double -1.554107e-11, double 3.762260e-12, double -9.828200e-13, double 2.740800e-13, double -8.091000e-14, double 2.511000e-14, double -8.140000e-15, double 2.750000e-15, double -9.600000e-16, double 3.400000e-16, double -1.200000e-16, double 4.000000e-17], align 16
@_gsl_sf_bessel_amp_phase_bm0_cs = constant %struct.cheb_series_struct { double* getelementptr inbounds ([21 x double], [21 x double]* @bm0_data, i32 0, i32 0), i32 20, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@bth0_data = internal global [24 x double] [double 0xBFCF89C2DD0E99D3, double 0x3F5C75EB1AEC8D24, double 0xBF104D12AFEF899D, double 0x3ED252287CAB15D1, double 0xBE9E9B9E50950313, double 0x3E70B22C3BEB1438, double 0xBE461EBA760D9F4A, double 0x3E210106819FDAD1, double 0xBDFD6CF222FC8F19, double 0x3DDC0C2248B4DCCB, double 0xBDBCFCC70F30FE7C, double 7.297935e-12, double -2.144188e-12, double 6.636930e-13, double -2.151260e-13, double 7.265900e-14, double -2.546500e-14, double 9.229000e-15, double -3.448000e-15, double 1.325000e-15, double -5.220000e-16, double 2.100000e-16, double -8.700000e-17, double 3.600000e-17], align 16
@_gsl_sf_bessel_amp_phase_bth0_cs = constant %struct.cheb_series_struct { double* getelementptr inbounds ([24 x double], [24 x double]* @bth0_data, i32 0, i32 0), i32 23, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@bm1_data = internal global [21 x double] [double 0x3FBACFFEB5268FC3, double 0x3F721F5C489A4653, double 0xBF0DAEEC855B63FA, double 0x3EC36830DF499FC8, double 0xBE8752C1180EAFF6, double 0x3E5454040D6949F8, double 0xBE26CC8F60BADB2D, double 0x3DFEBEC7E2C45D41, double -8.691795e-11, double 1.891492e-11, double -4.518840e-12, double 1.167650e-12, double -3.226500e-13, double 9.450000e-14, double -2.913000e-14, double 9.390000e-15, double -3.150000e-15, double 1.090000e-15, double -3.900000e-16, double 1.400000e-16, double -5.000000e-17], align 16
@_gsl_sf_bessel_amp_phase_bm1_cs = constant %struct.cheb_series_struct { double* getelementptr inbounds ([21 x double], [21 x double]* @bm1_data, i32 0, i32 0), i32 20, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@bth1_data = internal global [24 x double] [double 0x3FE7B301BA8E73FD, double 0xBF72B9D550B1F542, double 0x3F1F68E2581CC1AE, double 0xBEDD362432101948, double 0x3EA5FEAA1D8FBC04, double 0xBE7690FCBD59E4A0, double 0x3E4CBA056AC29372, double 0xBE25789A5E558B7D, double 5.294951e-10, double 0xBDE10FA52EAA1F77, double 0x3DC167411288BB9B, double -8.668640e-12, double 2.523758e-12, double -7.750850e-13, double 2.495270e-13, double -8.377300e-14, double 2.920500e-14, double -1.053400e-14, double 3.919000e-15, double -1.500000e-15, double 5.890000e-16, double -2.370000e-16, double 9.700000e-17, double -4.000000e-17], align 16
@_gsl_sf_bessel_amp_phase_bth1_cs = constant %struct.cheb_series_struct { double* getelementptr inbounds ([24 x double], [24 x double]* @bth1_data, i32 0, i32 0), i32 23, double -1.000000e+00, double 1.000000e+00, i32 12 }, align 8
@0 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_asymp_Mnu_e\00"
@1 = private unnamed_addr constant [20 x i8] c"bessel_amp_phase.ll\00"
@2 = private unnamed_addr constant [35 x i8] c"gsl_sf_bessel_asymp_thetanu_corr_e\00"
@3 = private unnamed_addr constant [20 x i8] c"bessel_amp_phase.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_asymp_Mnu_e(double, double, double*) #0 !dbg !73 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !78, metadata !79), !dbg !80
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !81, metadata !79), !dbg !82
  store double* %2, double** %6, align 8
  call void @llvm.dbg.declare(metadata double** %6, metadata !83, metadata !79), !dbg !84
  call void @llvm.dbg.declare(metadata double* %7, metadata !85, metadata !79), !dbg !86
  %13 = load double, double* %4, align 8, !dbg !87
  %14 = fmul double 2.000000e+00, %13, !dbg !88
  call void @fMulHandler(double 2.000000e+00, double %13, double %14, i64 0, i64 93883938921944, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938922416, i32 167, i32 24), !dbg !89
  %15 = load double, double* %5, align 8, !dbg !89
  %16 = fdiv double %14, %15, !dbg !90
  call void @fDivHandler(double %14, double %15, double %16, i64 93883938922416, i64 93883938922776, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938923184, i32 167, i32 27), !dbg !86
  store double %16, double* %7, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata double* %8, metadata !91, metadata !79), !dbg !92
  %17 = load double, double* %7, align 8, !dbg !93
  %18 = load double, double* %7, align 8, !dbg !94
  %19 = fmul double %17, %18, !dbg !95
  call void @fMulHandler(double %17, double %18, double %19, i64 93883938926232, i64 93883938926584, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938926992, i32 168, i32 22), !dbg !92
  store double %19, double* %8, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata double* %9, metadata !96, metadata !79), !dbg !97
  %20 = load double, double* %5, align 8, !dbg !98
  %21 = load double, double* %5, align 8, !dbg !99
  %22 = fmul double %20, %21, !dbg !100
  call void @fMulHandler(double %20, double %21, double %22, i64 93883938930184, i64 93883938930536, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938930944, i32 169, i32 22), !dbg !97
  store double %22, double* %9, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata double* %10, metadata !101, metadata !79), !dbg !102
  %23 = load double, double* %8, align 8, !dbg !103
  %24 = load double, double* %9, align 8, !dbg !104
  %25 = fdiv double 1.000000e+00, %24, !dbg !105
  call void @fDivHandler(double 1.000000e+00, double %24, double %25, i64 0, i64 93883938934488, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938934928, i32 170, i32 31), !dbg !106
  %26 = fsub double %23, %25, !dbg !106
  call void @fSubHandler(double %23, double %25, double %26, i64 93883938934136, i64 93883938934928, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938935312, i32 170, i32 27), !dbg !107
  %27 = fdiv double %26, 8.000000e+00, !dbg !107
  call void @fDivHandler(double %26, double 8.000000e+00, double %27, i64 93883938935312, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938935824, i32 170, i32 35), !dbg !102
  store double %27, double* %10, align 8, !dbg !102
  call void @llvm.dbg.declare(metadata double* %11, metadata !108, metadata !79), !dbg !109
  %28 = load double, double* %8, align 8, !dbg !110
  %29 = load double, double* %9, align 8, !dbg !111
  %30 = fdiv double 1.000000e+00, %29, !dbg !112
  call void @fDivHandler(double 1.000000e+00, double %29, double %30, i64 0, i64 93883938939336, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938939776, i32 171, i32 31), !dbg !113
  %31 = fsub double %28, %30, !dbg !113
  call void @fSubHandler(double %28, double %30, double %31, i64 93883938938984, i64 93883938939776, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938940160, i32 171, i32 27), !dbg !114
  %32 = load double, double* %8, align 8, !dbg !114
  %33 = load double, double* %9, align 8, !dbg !115
  %34 = fdiv double 9.000000e+00, %33, !dbg !116
  call void @fDivHandler(double 9.000000e+00, double %33, double %34, i64 0, i64 93883938941464, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938941968, i32 171, i32 43), !dbg !117
  %35 = fsub double %32, %34, !dbg !117
  call void @fSubHandler(double %32, double %34, double %35, i64 93883938940552, i64 93883938941968, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938942352, i32 171, i32 39), !dbg !118
  %36 = fmul double %31, %35, !dbg !118
  call void @fMulHandler(double %31, double %35, double %36, i64 93883938940160, i64 93883938942352, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938942768, i32 171, i32 35), !dbg !119
  %37 = fmul double %36, 3.000000e+00, !dbg !119
  call void @fMulHandler(double %36, double 3.000000e+00, double %37, i64 93883938942768, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938901440, i32 171, i32 47), !dbg !120
  %38 = fdiv double %37, 1.280000e+02, !dbg !120
  call void @fDivHandler(double %37, double 1.280000e+02, double %38, i64 93883938901440, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938901920, i32 171, i32 51), !dbg !109
  store double %38, double* %11, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata double* %12, metadata !121, metadata !79), !dbg !122
  %39 = load double, double* %10, align 8, !dbg !123
  %40 = fadd double 1.000000e+00, %39, !dbg !124
  call void @fAddHandler(double 1.000000e+00, double %39, double %40, i64 0, i64 93883938905080, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938951424, i32 172, i32 43), !dbg !125
  %41 = load double, double* %11, align 8, !dbg !125
  %42 = fadd double %40, %41, !dbg !126
  call void @fAddHandler(double %40, double %41, double %42, i64 93883938951424, i64 93883938951784, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938952192, i32 172, i32 51), !dbg !127
  %43 = fmul double 0x3FE45F306DC9C883, %42, !dbg !127
  call void @fMulHandler(double 0x3FE45F306DC9C883, double %42, double %43, i64 0, i64 93883938952192, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938952672, i32 172, i32 36), !dbg !122
  store double %43, double* %12, align 8, !dbg !122
  %44 = load double, double* %12, align 8, !dbg !128
  %45 = call double @sqrt(double %44) #3, !dbg !129
  call void @callOneArgHandler(i32 14, double %44, double %45, i64 93883938954744, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938955488, i32 173, i32 13), !dbg !130
  %46 = load double, double* %5, align 8, !dbg !130
  %47 = call double @sqrt(double %46) #3, !dbg !131
  call void @callOneArgHandler(i32 14, double %46, double %47, i64 93883938955976, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938956448, i32 173, i32 26), !dbg !133
  %48 = fdiv double %45, %47, !dbg !133
  call void @fDivHandler(double %45, double %47, double %48, i64 93883938955488, i64 93883938956448, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @1, i32 0, i32 0), i64 93883938956928, i32 173, i32 25), !dbg !134
  %49 = load double*, double** %6, align 8, !dbg !134
  store double %48, double* %49, align 8, !dbg !135
  ret i32 0, !dbg !136
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_asymp_thetanu_corr_e(double, double, double*) #0 !dbg !137 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !138, metadata !79), !dbg !139
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !140, metadata !79), !dbg !141
  store double* %2, double** %6, align 8
  call void @llvm.dbg.declare(metadata double** %6, metadata !142, metadata !79), !dbg !143
  call void @llvm.dbg.declare(metadata double* %7, metadata !144, metadata !79), !dbg !145
  %12 = load double, double* %4, align 8, !dbg !146
  %13 = fmul double 2.000000e+00, %12, !dbg !147
  call void @fMulHandler(double 2.000000e+00, double %12, double %13, i64 0, i64 93883938955368, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938966080, i32 181, i32 24), !dbg !148
  %14 = load double, double* %5, align 8, !dbg !148
  %15 = fdiv double %13, %14, !dbg !149
  call void @fDivHandler(double %13, double %14, double %15, i64 93883938966080, i64 93883938917736, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938966752, i32 181, i32 27), !dbg !145
  store double %15, double* %7, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata double* %8, metadata !150, metadata !79), !dbg !151
  %16 = load double, double* %7, align 8, !dbg !152
  %17 = load double, double* %7, align 8, !dbg !153
  %18 = fmul double %16, %17, !dbg !154
  call void @fMulHandler(double %16, double %17, double %18, i64 93883938969944, i64 93883938970296, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938970704, i32 182, i32 22), !dbg !151
  store double %18, double* %8, align 8, !dbg !151
  call void @llvm.dbg.declare(metadata double* %9, metadata !155, metadata !79), !dbg !156
  %19 = load double, double* %5, align 8, !dbg !157
  %20 = load double, double* %5, align 8, !dbg !158
  %21 = fmul double %19, %20, !dbg !159
  call void @fMulHandler(double %19, double %20, double %21, i64 93883938973752, i64 93883938974104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938974512, i32 183, i32 22), !dbg !156
  store double %21, double* %9, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata double* %10, metadata !160, metadata !79), !dbg !161
  %22 = load double, double* %5, align 8, !dbg !162
  %23 = load double, double* %8, align 8, !dbg !163
  %24 = load double, double* %9, align 8, !dbg !164
  %25 = fdiv double 1.000000e+00, %24, !dbg !165
  call void @fDivHandler(double 1.000000e+00, double %24, double %25, i64 0, i64 93883938978440, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938978880, i32 184, i32 35), !dbg !166
  %26 = fsub double %23, %25, !dbg !166
  call void @fSubHandler(double %23, double %25, double %26, i64 93883938978056, i64 93883938978880, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938979264, i32 184, i32 30), !dbg !167
  %27 = fmul double %22, %26, !dbg !167
  call void @fMulHandler(double %22, double %26, double %27, i64 93883938977704, i64 93883938979264, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938979680, i32 184, i32 25), !dbg !168
  %28 = fdiv double %27, 8.000000e+00, !dbg !168
  call void @fDivHandler(double %27, double 8.000000e+00, double %28, i64 93883938979680, i64 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938980128, i32 184, i32 39), !dbg !161
  store double %28, double* %10, align 8, !dbg !161
  call void @llvm.dbg.declare(metadata double* %11, metadata !169, metadata !79), !dbg !170
  %29 = load double, double* %5, align 8, !dbg !171
  %30 = load double, double* %8, align 8, !dbg !172
  %31 = load double, double* %9, align 8, !dbg !173
  %32 = fdiv double 1.000000e+00, %31, !dbg !174
  call void @fDivHandler(double 1.000000e+00, double %31, double %32, i64 0, i64 93883938984024, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938984464, i32 185, i32 35), !dbg !175
  %33 = fsub double %30, %32, !dbg !175
  call void @fSubHandler(double %30, double %32, double %33, i64 93883938983640, i64 93883938984464, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938984848, i32 185, i32 30), !dbg !176
  %34 = fmul double %29, %33, !dbg !176
  call void @fMulHandler(double %29, double %33, double %34, i64 93883938983288, i64 93883938984848, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938985264, i32 185, i32 25), !dbg !177
  %35 = load double, double* %8, align 8, !dbg !177
  %36 = load double, double* %9, align 8, !dbg !178
  %37 = fdiv double 2.500000e+01, %36, !dbg !179
  call void @fDivHandler(double 2.500000e+01, double %36, double %37, i64 0, i64 93883938986040, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938986544, i32 185, i32 50), !dbg !180
  %38 = fsub double %35, %37, !dbg !180
  call void @fSubHandler(double %35, double %37, double %38, i64 93883938985656, i64 93883938986544, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938986928, i32 185, i32 44), !dbg !181
  %39 = fmul double %34, %38, !dbg !181
  call void @fMulHandler(double %34, double %38, double %39, i64 93883938985264, i64 93883938986928, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938987344, i32 185, i32 39), !dbg !182
  %40 = fdiv double %39, 3.840000e+02, !dbg !182
  call void @fDivHandler(double %39, double 3.840000e+02, double %40, i64 93883938987344, i64 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938987856, i32 185, i32 54), !dbg !170
  store double %40, double* %11, align 8, !dbg !170
  %41 = load double, double* %10, align 8, !dbg !183
  %42 = fadd double 0xBFE921FB54442D18, %41, !dbg !184
  call void @fAddHandler(double 0xBFE921FB54442D18, double %41, double %42, i64 0, i64 93883938989896, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938990368, i32 186, i32 25), !dbg !185
  %43 = load double, double* %11, align 8, !dbg !185
  %44 = fadd double %42, %43, !dbg !186
  call void @fAddHandler(double %42, double %43, double %44, i64 93883938990368, i64 93883938990760, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0), i64 93883938991168, i32 186, i32 33), !dbg !187
  %45 = load double*, double** %6, align 8, !dbg !187
  store double %44, double* %45, align 8, !dbg !188
  ret i32 0, !dbg !189
}

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
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!69, !70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_amp_phase.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !56, !57, !58, !59, !63, !67, !68}
!42 = distinct !DIGlobalVariable(name: "_gsl_sf_bessel_amp_phase_bm0_cs", scope: !0, file: !1, line: 59, type: !43, isLocal: false, isDefinition: true, variable: %struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bm0_cs)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !45, line: 29, baseType: !46)
!45 = !DIFile(filename: "./chebyshev.h", directory: "/fpcc/gsl-2.5/specfunc")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !45, line: 22, size: 320, align: 64, elements: !47)
!47 = !{!48, !51, !53, !54, !55}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !46, file: !45, line: 23, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !46, file: !45, line: 24, baseType: !52, size: 32, align: 32, offset: 64)
!52 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !46, file: !45, line: 25, baseType: !50, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !46, file: !45, line: 26, baseType: !50, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !46, file: !45, line: 27, baseType: !52, size: 32, align: 32, offset: 256)
!56 = distinct !DIGlobalVariable(name: "_gsl_sf_bessel_amp_phase_bth0_cs", scope: !0, file: !1, line: 92, type: !43, isLocal: false, isDefinition: true, variable: %struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bth0_cs)
!57 = distinct !DIGlobalVariable(name: "_gsl_sf_bessel_amp_phase_bm1_cs", scope: !0, file: !1, line: 123, type: !43, isLocal: false, isDefinition: true, variable: %struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bm1_cs)
!58 = distinct !DIGlobalVariable(name: "_gsl_sf_bessel_amp_phase_bth1_cs", scope: !0, file: !1, line: 156, type: !43, isLocal: false, isDefinition: true, variable: %struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bth1_cs)
!59 = distinct !DIGlobalVariable(name: "bm0_data", scope: !0, file: !1, line: 36, type: !60, isLocal: true, isDefinition: true, variable: [21 x double]* @bm0_data)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1344, align: 64, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 21)
!63 = distinct !DIGlobalVariable(name: "bth0_data", scope: !0, file: !1, line: 66, type: !64, isLocal: true, isDefinition: true, variable: [24 x double]* @bth0_data)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1536, align: 64, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 24)
!67 = distinct !DIGlobalVariable(name: "bm1_data", scope: !0, file: !1, line: 100, type: !60, isLocal: true, isDefinition: true, variable: [21 x double]* @bm1_data)
!68 = distinct !DIGlobalVariable(name: "bth1_data", scope: !0, file: !1, line: 130, type: !64, isLocal: true, isDefinition: true, variable: [24 x double]* @bth1_data)
!69 = !{i32 2, !"Dwarf Version", i32 4}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"PIC Level", i32 2}
!72 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!73 = distinct !DISubprogram(name: "gsl_sf_bessel_asymp_Mnu_e", scope: !1, file: !1, line: 165, type: !74, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !77)
!74 = !DISubroutineType(types: !75)
!75 = !{!52, !76, !76, !49}
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!77 = !{}
!78 = !DILocalVariable(name: "nu", arg: 1, scope: !73, file: !1, line: 165, type: !76)
!79 = !DIExpression()
!80 = !DILocation(line: 165, column: 40, scope: !73)
!81 = !DILocalVariable(name: "x", arg: 2, scope: !73, file: !1, line: 165, type: !76)
!82 = !DILocation(line: 165, column: 57, scope: !73)
!83 = !DILocalVariable(name: "result", arg: 3, scope: !73, file: !1, line: 165, type: !49)
!84 = !DILocation(line: 165, column: 69, scope: !73)
!85 = !DILocalVariable(name: "r", scope: !73, file: !1, line: 167, type: !76)
!86 = !DILocation(line: 167, column: 16, scope: !73)
!87 = !DILocation(line: 167, column: 25, scope: !73)
!88 = !DILocation(line: 167, column: 24, scope: !73)
!89 = !DILocation(line: 167, column: 28, scope: !73)
!90 = !DILocation(line: 167, column: 27, scope: !73)
!91 = !DILocalVariable(name: "r2", scope: !73, file: !1, line: 168, type: !76)
!92 = !DILocation(line: 168, column: 16, scope: !73)
!93 = !DILocation(line: 168, column: 21, scope: !73)
!94 = !DILocation(line: 168, column: 23, scope: !73)
!95 = !DILocation(line: 168, column: 22, scope: !73)
!96 = !DILocalVariable(name: "x2", scope: !73, file: !1, line: 169, type: !76)
!97 = !DILocation(line: 169, column: 16, scope: !73)
!98 = !DILocation(line: 169, column: 21, scope: !73)
!99 = !DILocation(line: 169, column: 23, scope: !73)
!100 = !DILocation(line: 169, column: 22, scope: !73)
!101 = !DILocalVariable(name: "term1", scope: !73, file: !1, line: 170, type: !76)
!102 = !DILocation(line: 170, column: 16, scope: !73)
!103 = !DILocation(line: 170, column: 25, scope: !73)
!104 = !DILocation(line: 170, column: 32, scope: !73)
!105 = !DILocation(line: 170, column: 31, scope: !73)
!106 = !DILocation(line: 170, column: 27, scope: !73)
!107 = !DILocation(line: 170, column: 35, scope: !73)
!108 = !DILocalVariable(name: "term2", scope: !73, file: !1, line: 171, type: !76)
!109 = !DILocation(line: 171, column: 16, scope: !73)
!110 = !DILocation(line: 171, column: 25, scope: !73)
!111 = !DILocation(line: 171, column: 32, scope: !73)
!112 = !DILocation(line: 171, column: 31, scope: !73)
!113 = !DILocation(line: 171, column: 27, scope: !73)
!114 = !DILocation(line: 171, column: 37, scope: !73)
!115 = !DILocation(line: 171, column: 44, scope: !73)
!116 = !DILocation(line: 171, column: 43, scope: !73)
!117 = !DILocation(line: 171, column: 39, scope: !73)
!118 = !DILocation(line: 171, column: 35, scope: !73)
!119 = !DILocation(line: 171, column: 47, scope: !73)
!120 = !DILocation(line: 171, column: 51, scope: !73)
!121 = !DILocalVariable(name: "Mnu2_c", scope: !73, file: !1, line: 172, type: !76)
!122 = !DILocation(line: 172, column: 16, scope: !73)
!123 = !DILocation(line: 172, column: 45, scope: !73)
!124 = !DILocation(line: 172, column: 43, scope: !73)
!125 = !DILocation(line: 172, column: 53, scope: !73)
!126 = !DILocation(line: 172, column: 51, scope: !73)
!127 = !DILocation(line: 172, column: 36, scope: !73)
!128 = !DILocation(line: 173, column: 18, scope: !73)
!129 = !DILocation(line: 173, column: 13, scope: !73)
!130 = !DILocation(line: 173, column: 31, scope: !73)
!131 = !DILocation(line: 173, column: 26, scope: !132)
!132 = !DILexicalBlockFile(scope: !73, file: !1, discriminator: 1)
!133 = !DILocation(line: 173, column: 25, scope: !73)
!134 = !DILocation(line: 173, column: 4, scope: !73)
!135 = !DILocation(line: 173, column: 11, scope: !73)
!136 = !DILocation(line: 174, column: 3, scope: !73)
!137 = distinct !DISubprogram(name: "gsl_sf_bessel_asymp_thetanu_corr_e", scope: !1, file: !1, line: 179, type: !74, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !77)
!138 = !DILocalVariable(name: "nu", arg: 1, scope: !137, file: !1, line: 179, type: !76)
!139 = !DILocation(line: 179, column: 49, scope: !137)
!140 = !DILocalVariable(name: "x", arg: 2, scope: !137, file: !1, line: 179, type: !76)
!141 = !DILocation(line: 179, column: 66, scope: !137)
!142 = !DILocalVariable(name: "result", arg: 3, scope: !137, file: !1, line: 179, type: !49)
!143 = !DILocation(line: 179, column: 78, scope: !137)
!144 = !DILocalVariable(name: "r", scope: !137, file: !1, line: 181, type: !76)
!145 = !DILocation(line: 181, column: 16, scope: !137)
!146 = !DILocation(line: 181, column: 25, scope: !137)
!147 = !DILocation(line: 181, column: 24, scope: !137)
!148 = !DILocation(line: 181, column: 28, scope: !137)
!149 = !DILocation(line: 181, column: 27, scope: !137)
!150 = !DILocalVariable(name: "r2", scope: !137, file: !1, line: 182, type: !76)
!151 = !DILocation(line: 182, column: 16, scope: !137)
!152 = !DILocation(line: 182, column: 21, scope: !137)
!153 = !DILocation(line: 182, column: 23, scope: !137)
!154 = !DILocation(line: 182, column: 22, scope: !137)
!155 = !DILocalVariable(name: "x2", scope: !137, file: !1, line: 183, type: !76)
!156 = !DILocation(line: 183, column: 16, scope: !137)
!157 = !DILocation(line: 183, column: 21, scope: !137)
!158 = !DILocation(line: 183, column: 23, scope: !137)
!159 = !DILocation(line: 183, column: 22, scope: !137)
!160 = !DILocalVariable(name: "term1", scope: !137, file: !1, line: 184, type: !76)
!161 = !DILocation(line: 184, column: 16, scope: !137)
!162 = !DILocation(line: 184, column: 24, scope: !137)
!163 = !DILocation(line: 184, column: 27, scope: !137)
!164 = !DILocation(line: 184, column: 36, scope: !137)
!165 = !DILocation(line: 184, column: 35, scope: !137)
!166 = !DILocation(line: 184, column: 30, scope: !137)
!167 = !DILocation(line: 184, column: 25, scope: !137)
!168 = !DILocation(line: 184, column: 39, scope: !137)
!169 = !DILocalVariable(name: "term2", scope: !137, file: !1, line: 185, type: !76)
!170 = !DILocation(line: 185, column: 16, scope: !137)
!171 = !DILocation(line: 185, column: 24, scope: !137)
!172 = !DILocation(line: 185, column: 27, scope: !137)
!173 = !DILocation(line: 185, column: 36, scope: !137)
!174 = !DILocation(line: 185, column: 35, scope: !137)
!175 = !DILocation(line: 185, column: 30, scope: !137)
!176 = !DILocation(line: 185, column: 25, scope: !137)
!177 = !DILocation(line: 185, column: 41, scope: !137)
!178 = !DILocation(line: 185, column: 51, scope: !137)
!179 = !DILocation(line: 185, column: 50, scope: !137)
!180 = !DILocation(line: 185, column: 44, scope: !137)
!181 = !DILocation(line: 185, column: 39, scope: !137)
!182 = !DILocation(line: 185, column: 54, scope: !137)
!183 = !DILocation(line: 186, column: 27, scope: !137)
!184 = !DILocation(line: 186, column: 25, scope: !137)
!185 = !DILocation(line: 186, column: 35, scope: !137)
!186 = !DILocation(line: 186, column: 33, scope: !137)
!187 = !DILocation(line: 186, column: 4, scope: !137)
!188 = !DILocation(line: 186, column: 11, scope: !137)
!189 = !DILocation(line: 187, column: 3, scope: !137)
