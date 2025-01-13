; ModuleID = 'sinint.ll'
source_filename = "sinint.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@si_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([12 x double], [12 x double]* @si_data, i32 0, i32 0), i32 11, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"sinint.c\00", align 1
@ci_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([13 x double], [13 x double]* @ci_data, i32 0, i32 0), i32 12, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"gsl_sf_Si_e(x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"gsl_sf_Ci_e(x, &result)\00", align 1
@si_data = internal global [12 x double] [double 0xBFC0D71C5B9D689C, double 0xBFD1C5257134040E, double 0x3FA225603AFAA069, double 0xBF64FF57BC32CAAC, double 0x3F1E78808907C46C, double 0xBECE1E6543B50732, double 0x3E7589A730EF41E8, double 0xBE174D11C8AE089C, double 0x3DB3BACEAB837915, double -1.908387e-13, double 1.667000e-15, double -1.220000e-17], align 16
@f1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([20 x double], [20 x double]* @f1_data, i32 0, i32 0), i32 19, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@g1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([21 x double], [21 x double]* @g1_data, i32 0, i32 0), i32 20, double -1.000000e+00, double 1.000000e+00, i32 13 }, align 8
@f2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([29 x double], [29 x double]* @f2_data, i32 0, i32 0), i32 28, double -1.000000e+00, double 1.000000e+00, i32 14 }, align 8
@g2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([34 x double], [34 x double]* @g2_data, i32 0, i32 0), i32 33, double -1.000000e+00, double 1.000000e+00, i32 20 }, align 8
@f1_data = internal global [20 x double] [double 0xBFBE7DDFF264A17C, double 0xBF996088F92E26D9, double 0x3F538388BBB38801, double 0xBF184D2D7C7F0FAF, double 0x3EE394EEAF9AA7D3, double 0xBEB28D7F9AACD36F, double 0x3E83A8EB23C2B004, double 0xBE569F86B5FD18DA, double 0x3E2BBD6A009C1181, double 0xBE01E3B63E0C590A, double 0x3DD80C69B02D5BF3, double 0xBDB0BB60FD91F868, double 0x3D87F9C623FE5AA7, double -5.007053e-13, double 9.402410e-14, double -1.800140e-14, double 3.506300e-15, double -6.935000e-16, double 1.391000e-16, double -2.820000e-17], align 16
@g1_data = internal global [21 x double] [double 0xBFD375AF2E7C38EE, double 0xBFAD065A7FD92F13, double 0x3F6FFC92A7A4CABA, double 0xBF388CDF5F9147CD, double 0x3F06D4436FA169D6, double 0xBED8152292794E61, double 0x3EABCAA87824DA42, double 0xBE812804FA476850, double 0x3E5654DD8D230BC5, double 0xBE2E5574C34D1155, double 0x3E0557194926A0B2, double 0xBDDEEDFFFEEA98D6, double 0x3DB6FD546FE64499, double 0xBD91779AEB6E6EC4, double 7.690431e-13, double -1.514697e-13, double 3.028920e-14, double -6.140000e-15, double 1.260100e-15, double -2.615000e-16, double 5.480000e-17], align 16
@f2_data = internal global [29 x double] [double 0xBFA1D6AB7638E7C4, double 0xBF9115AB16CAAF46, double 0x3F4620BE7FCC566E, double 0xBF0C0D8AEA7F8907, double 0x3EDA4BA7A7E101C5, double 0xBEAFF75206FBF7CA, double 0x3E876DEFB4317512, double 0xBE63CCAF77F6C1F7, double 0x3E42BA04957450CE, double 0xBE236A39D1648E94, double 0x3E05BB32EF3A5400, double 0xBDE9F604936D5848, double 0x3DD0676DAE061394, double 0xBDB5C673ABB76A1E, double 0x3D9E305589F31CEE, double -2.473102e-12, double 9.226360e-13, double -3.552364e-13, double 1.407606e-13, double -5.726230e-14, double 2.386540e-14, double -1.017140e-14, double 4.425900e-15, double -1.963400e-15, double 8.868000e-16, double -4.074000e-16, double 1.901000e-16, double -9.000000e-17, double 4.320000e-17], align 16
@g2_data = internal global [34 x double] [double 0xBFB8C37D5FCD1C7F, double 0xBFA72579BDFBF99F, double 0x3F6717DF63679447, double 0xBF32FFFF102F0C06, double 0x3F055CA1351F95D4, double 0xBEDDCD9EF611832D, double 0x3EB8629DB66172F8, double 0xBE96938216CDB144, double 0x3E77145310488D84, double 0xBE599A1FD80773ED, double 0x3E3E6C0CEB32B1CB, double 0xBE232BCB8AF34A01, double 0x3E096E10B6AEE975, double 0xBDF1A4371BDE1D50, double 0x3DD9791EF5314269, double 0xBDC30F464B01133A, double 0x3DAD74BF33BB46D8, double 0xBD977001683694A2, double 0x3D83275D4612436B, double -9.118621e-13, double 3.905864e-13, double -1.708459e-13, double 7.620150e-14, double -3.461510e-14, double 1.599960e-14, double -7.521300e-15, double 3.597000e-15, double -1.753000e-15, double 8.738000e-16, double -4.487000e-16, double 2.397000e-16, double -1.347000e-16, double 8.010000e-17, double -5.010000e-17], align 16
@ci_data = internal global [13 x double] [double 0xBFD5C342F43D436A, double 0xBFF08741B96FD756, double 0x3FC8D121FF4271DE, double 0xBF93A49AC9844295, double 0x3F5226D68A9FBBBC, double 0xBF05CBBEEAE511C4, double 0x3EB2557A14D2E5BF, double 0xBE56CC71A9484A3B, double 0x3DF5CE9CFC078273, double 0xBD908AFA32DB989E, double 3.622653e-14, double -2.891200e-16, double 1.940000e-18], align 16
@0 = private unnamed_addr constant [12 x i8] c"gsl_sf_Si_e\00"
@1 = private unnamed_addr constant [10 x i8] c"sinint.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [10 x i8] c"sinint.ll\00"
@4 = private unnamed_addr constant [9 x i8] c"fg_asymp\00"
@5 = private unnamed_addr constant [10 x i8] c"sinint.ll\00"
@6 = private unnamed_addr constant [12 x i8] c"gsl_sf_Ci_e\00"
@7 = private unnamed_addr constant [10 x i8] c"sinint.ll\00"
@8 = private unnamed_addr constant [10 x i8] c"gsl_sf_Si\00"
@9 = private unnamed_addr constant [10 x i8] c"sinint.ll\00"
@10 = private unnamed_addr constant [10 x i8] c"gsl_sf_Ci\00"
@11 = private unnamed_addr constant [10 x i8] c"sinint.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_Si_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !88 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !100, metadata !101), !dbg !102
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !103, metadata !101), !dbg !104
  call void @llvm.dbg.declare(metadata double* %6, metadata !105, metadata !101), !dbg !106
  %10 = load double, double* %4, align 8, !dbg !107
  %11 = call double @fabs(double %10) #1, !dbg !108
  store double %11, double* %6, align 8, !dbg !106
  %12 = load double, double* %6, align 8, !dbg !109
  %13 = fcmp olt double %12, 0x3E50000000000000, !dbg !111
  %14 = call i1 @fCmpInstHandler(double %12, double 0x3E50000000000000, i1 %13, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399061312, i32 325, i32 9), !dbg !112
  br i1 %14, label %15, label %21, !dbg !112

; <label>:15:                                     ; preds = %2
  %16 = load double, double* %4, align 8, !dbg !113
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !115
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !116
  store double %16, double* %18, align 8, !dbg !117
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !118
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !119
  store double 0.000000e+00, double* %20, align 8, !dbg !120
  store i32 0, i32* %3, align 4, !dbg !121
  br label %97, !dbg !121

; <label>:21:                                     ; preds = %2
  %22 = load double, double* %6, align 8, !dbg !122
  %23 = fcmp ole double %22, 4.000000e+00, !dbg !124
  %24 = call i1 @fCmpInstHandler(double %22, double 4.000000e+00, i1 %23, i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399067856, i32 330, i32 14), !dbg !125
  br i1 %24, label %25, label %54, !dbg !125

; <label>:25:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !126, metadata !101), !dbg !128
  %26 = load double, double* %4, align 8, !dbg !129
  %27 = load double, double* %4, align 8, !dbg !130
  %28 = fmul double %26, %27, !dbg !131
  call void @fMulHandler(double %26, double %27, double %28, i64 94133399069896, i64 94133399070248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399070656, i32 332, i32 27), !dbg !132
  %29 = fsub double %28, 8.000000e+00, !dbg !132
  call void @fSubHandler(double %28, double 8.000000e+00, double %29, i64 94133399070656, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399071168, i32 332, i32 29), !dbg !133
  %30 = fmul double %29, 1.250000e-01, !dbg !133
  call void @fMulHandler(double %29, double 1.250000e-01, double %30, i64 94133399071168, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399071648, i32 332, i32 34), !dbg !134
  %31 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @si_cs, double %30, %struct.gsl_sf_result_struct* %7), !dbg !134
  %32 = load double, double* %4, align 8, !dbg !135
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !136
  %34 = load double, double* %33, align 8, !dbg !136
  %35 = fadd double 7.500000e-01, %34, !dbg !137
  call void @fAddHandler(double 7.500000e-01, double %34, double %35, i64 0, i64 94133399073672, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399075968, i32 333, i32 31), !dbg !138
  %36 = fmul double %32, %35, !dbg !138
  call void @fMulHandler(double %32, double %35, double %36, i64 94133399072872, i64 94133399075968, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399076352, i32 333, i32 23), !dbg !139
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !139
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !140
  store double %36, double* %38, align 8, !dbg !141
  %39 = load double, double* %6, align 8, !dbg !142
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !143
  %41 = load double, double* %40, align 8, !dbg !143
  %42 = fmul double %39, %41, !dbg !144
  call void @fMulHandler(double %39, double %41, double %42, i64 94133399077992, i64 94133399078824, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399080496, i32 334, i32 23), !dbg !145
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !145
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 1, !dbg !146
  store double %42, double* %44, align 8, !dbg !147
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !148
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !149
  %47 = load double, double* %46, align 8, !dbg !149
  %48 = call double @fabs(double %47) #1, !dbg !150
  %49 = fmul double 0x3CC0000000000000, %48, !dbg !151
  call void @fMulHandler(double 0x3CC0000000000000, double %48, double %49, i64 0, i64 94133399084704, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399085248, i32 335, i32 42), !dbg !152
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !152
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 1, !dbg !153
  %52 = load double, double* %51, align 8, !dbg !154
  %53 = fadd double %52, %49, !dbg !154
  call void @fAddHandler(double %52, double %49, double %53, i64 94133399086472, i64 94133399085248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399086880, i32 335, i32 17), !dbg !154
  store double %53, double* %51, align 8, !dbg !154
  store i32 0, i32* %3, align 4, !dbg !155
  br label %97, !dbg !155

; <label>:54:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !156, metadata !101), !dbg !158
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !159, metadata !101), !dbg !160
  %55 = load double, double* %6, align 8, !dbg !161
  call void @fg_asymp(double %55, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !162
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !163
  %57 = load double, double* %56, align 8, !dbg !163
  %58 = load double, double* %6, align 8, !dbg !164
  %59 = call double @cos(double %58) #6, !dbg !165
  call void @callOneArgHandler(i32 2, double %58, double %59, i64 94133399096248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399097040, i32 345, i32 39), !dbg !166
  %60 = fmul double %57, %59, !dbg !166
  call void @fMulHandler(double %57, double %59, double %60, i64 94133399094600, i64 94133399097040, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399097552, i32 345, i32 38), !dbg !167
  %61 = fsub double 0x3FF921FB54442D18, %60, !dbg !167
  call void @fSubHandler(double 0x3FF921FB54442D18, double %60, double %61, i64 0, i64 94133399097552, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399098032, i32 345, i32 31), !dbg !168
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !168
  %63 = load double, double* %62, align 8, !dbg !168
  %64 = load double, double* %6, align 8, !dbg !169
  %65 = call double @sin(double %64) #6, !dbg !170
  call void @callOneArgHandler(i32 1, double %64, double %65, i64 94133399100520, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399101312, i32 345, i32 55), !dbg !172
  %66 = fmul double %63, %65, !dbg !172
  call void @fMulHandler(double %63, double %65, double %66, i64 94133399098872, i64 94133399101312, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399101824, i32 345, i32 54), !dbg !173
  %67 = fsub double %61, %66, !dbg !173
  call void @fSubHandler(double %61, double %66, double %67, i64 94133399098032, i64 94133399101824, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399103280, i32 345, i32 47), !dbg !174
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !174
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !175
  store double %67, double* %69, align 8, !dbg !176
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !177
  %71 = load double, double* %70, align 8, !dbg !177
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !178
  %73 = load double, double* %72, align 8, !dbg !178
  %74 = fadd double %71, %73, !dbg !179
  call void @fAddHandler(double %71, double %73, double %74, i64 94133399105368, i64 94133399107464, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399109136, i32 346, i32 26), !dbg !180
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !180
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !181
  store double %74, double* %76, align 8, !dbg !182
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !183
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 0, !dbg !184
  %79 = load double, double* %78, align 8, !dbg !184
  %80 = call double @fabs(double %79) #1, !dbg !185
  %81 = fmul double 0x3CC0000000000000, %80, !dbg !186
  call void @fMulHandler(double 0x3CC0000000000000, double %80, double %81, i64 0, i64 94133399113344, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399113824, i32 347, i32 42), !dbg !187
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !187
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !188
  %84 = load double, double* %83, align 8, !dbg !189
  %85 = fadd double %84, %81, !dbg !189
  call void @fAddHandler(double %84, double %81, double %85, i64 94133399115048, i64 94133399113824, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399115456, i32 347, i32 17), !dbg !189
  store double %85, double* %83, align 8, !dbg !189
  %86 = load double, double* %4, align 8, !dbg !190
  %87 = fcmp olt double %86, 0.000000e+00, !dbg !192
  %88 = call i1 @fCmpInstHandler(double %86, double 0.000000e+00, i1 %87, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399117648, i32 348, i32 10), !dbg !193
  br i1 %88, label %89, label %96, !dbg !193

; <label>:89:                                     ; preds = %54
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !194
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !196
  %92 = load double, double* %91, align 8, !dbg !196
  %93 = fsub double -0.000000e+00, %92, !dbg !197
  call void @fSubHandler(double -0.000000e+00, double %92, double %93, i64 0, i64 94133399119528, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94133399121264, i32 348, i32 31), !dbg !198
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !198
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 0, !dbg !199
  store double %93, double* %95, align 8, !dbg !200
  br label %96, !dbg !198

; <label>:96:                                     ; preds = %89, %54
  store i32 0, i32* %3, align 4, !dbg !201
  br label %97, !dbg !201

; <label>:97:                                     ; preds = %96, %25, %15
  %98 = load i32, i32* %3, align 4, !dbg !202
  ret i32 %98, !dbg !202
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #3 !dbg !203 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !209, metadata !101), !dbg !210
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !211, metadata !101), !dbg !212
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !213, metadata !101), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %7, metadata !215, metadata !101), !dbg !216
  call void @llvm.dbg.declare(metadata double* %8, metadata !217, metadata !101), !dbg !218
  store double 0.000000e+00, double* %8, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata double* %9, metadata !219, metadata !101), !dbg !220
  store double 0.000000e+00, double* %9, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata double* %10, metadata !221, metadata !101), !dbg !222
  %15 = load double, double* %5, align 8, !dbg !223
  %16 = fmul double 2.000000e+00, %15, !dbg !224
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94133399072248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399142880, i32 11, i32 19), !dbg !225
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !225
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !226
  %19 = load double, double* %18, align 8, !dbg !226
  %20 = fsub double %16, %19, !dbg !227
  call void @fSubHandler(double %16, double %19, double %20, i64 94133399142880, i64 94133399023336, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399145616, i32 11, i32 22), !dbg !228
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !228
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !229
  %23 = load double, double* %22, align 8, !dbg !229
  %24 = fsub double %20, %23, !dbg !230
  call void @fSubHandler(double %20, double %23, double %24, i64 94133399145616, i64 94133399146904, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399148576, i32 11, i32 30), !dbg !231
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !231
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !232
  %27 = load double, double* %26, align 8, !dbg !232
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !233
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !234
  %30 = load double, double* %29, align 8, !dbg !234
  %31 = fsub double %27, %30, !dbg !235
  call void @fSubHandler(double %27, double %30, double %31, i64 94133399149800, i64 94133399152280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399153952, i32 11, i32 48), !dbg !236
  %32 = fdiv double %24, %31, !dbg !236
  call void @fDivHandler(double %24, double %31, double %32, i64 94133399148576, i64 94133399153952, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399154368, i32 11, i32 39), !dbg !222
  store double %32, double* %10, align 8, !dbg !222
  call void @llvm.dbg.declare(metadata double* %11, metadata !237, metadata !101), !dbg !238
  %33 = load double, double* %10, align 8, !dbg !239
  %34 = fmul double 2.000000e+00, %33, !dbg !240
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94133399157416, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399157824, i32 12, i32 19), !dbg !238
  store double %34, double* %11, align 8, !dbg !238
  call void @llvm.dbg.declare(metadata double* %12, metadata !241, metadata !101), !dbg !242
  store double 0.000000e+00, double* %12, align 8, !dbg !242
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !243
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !245
  %37 = load i32, i32* %36, align 8, !dbg !245
  store i32 %37, i32* %7, align 4, !dbg !246
  br label %38, !dbg !247

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !248
  %40 = icmp sge i32 %39, 1, !dbg !251
  %41 = sext i32 %39 to i64, !dbg !252
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399166400, i32 16, i32 23), !dbg !252
  br i1 %42, label %43, label %80, !dbg !252

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !253, metadata !101), !dbg !255
  %44 = load double, double* %8, align 8, !dbg !256
  store double %44, double* %13, align 8, !dbg !255
  %45 = load double, double* %11, align 8, !dbg !257
  %46 = load double, double* %8, align 8, !dbg !258
  %47 = fmul double %45, %46, !dbg !259
  call void @fMulHandler(double %45, double %46, double %47, i64 94133399170600, i64 94133399170984, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399171392, i32 18, i32 11), !dbg !260
  %48 = load double, double* %9, align 8, !dbg !260
  %49 = fsub double %47, %48, !dbg !261
  call void @fSubHandler(double %47, double %48, double %49, i64 94133399171392, i64 94133399171784, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399172192, i32 18, i32 14), !dbg !262
  %50 = load i32, i32* %7, align 4, !dbg !262
  %51 = sext i32 %50 to i64, !dbg !263
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !263
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !264
  %54 = load double*, double** %53, align 8, !dbg !264
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !263
  %56 = load double, double* %55, align 8, !dbg !263
  %57 = fadd double %49, %56, !dbg !265
  call void @fAddHandler(double %49, double %56, double %57, i64 94133399172192, i64 94133399177240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399177360, i32 18, i32 19), !dbg !266
  store double %57, double* %8, align 8, !dbg !266
  %58 = load double, double* %11, align 8, !dbg !267
  %59 = load double, double* %13, align 8, !dbg !268
  %60 = fmul double %58, %59, !dbg !269
  call void @fMulHandler(double %58, double %59, double %60, i64 94133399178168, i64 94133399178552, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399178960, i32 19, i32 17), !dbg !270
  %61 = call double @fabs(double %60) #1, !dbg !270
  %62 = load double, double* %9, align 8, !dbg !271
  %63 = call double @fabs(double %62) #1, !dbg !272
  %64 = fadd double %61, %63, !dbg !274
  call void @fAddHandler(double %61, double %63, double %64, i64 94133399179440, i64 94133399180368, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399180848, i32 19, i32 24), !dbg !275
  %65 = load i32, i32* %7, align 4, !dbg !275
  %66 = sext i32 %65 to i64, !dbg !276
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !276
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !277
  %69 = load double*, double** %68, align 8, !dbg !277
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !276
  %71 = load double, double* %70, align 8, !dbg !276
  %72 = call double @fabs(double %71) #1, !dbg !278
  %73 = fadd double %64, %72, !dbg !280
  call void @fAddHandler(double %64, double %72, double %73, i64 94133399180848, i64 94133399186080, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399186560, i32 19, i32 35), !dbg !281
  %74 = load double, double* %12, align 8, !dbg !281
  %75 = fadd double %74, %73, !dbg !281
  call void @fAddHandler(double %74, double %73, double %75, i64 94133399186952, i64 94133399186560, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399187360, i32 19, i32 7), !dbg !281
  store double %75, double* %12, align 8, !dbg !281
  %76 = load double, double* %13, align 8, !dbg !282
  store double %76, double* %9, align 8, !dbg !283
  br label %77, !dbg !284

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !285
  %79 = add nsw i32 %78, -1, !dbg !285
  store i32 %79, i32* %7, align 4, !dbg !285
  br label %38, !dbg !287, !llvm.loop !288

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !290, metadata !101), !dbg !292
  %81 = load double, double* %8, align 8, !dbg !293
  store double %81, double* %14, align 8, !dbg !292
  %82 = load double, double* %10, align 8, !dbg !294
  %83 = load double, double* %8, align 8, !dbg !295
  %84 = fmul double %82, %83, !dbg !296
  call void @fMulHandler(double %82, double %83, double %84, i64 94133399200536, i64 94133399200920, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399201328, i32 25, i32 10), !dbg !297
  %85 = load double, double* %9, align 8, !dbg !297
  %86 = fsub double %84, %85, !dbg !298
  call void @fSubHandler(double %84, double %85, double %86, i64 94133399201328, i64 94133399201720, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399202128, i32 25, i32 13), !dbg !299
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !299
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !300
  %89 = load double*, double** %88, align 8, !dbg !300
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !299
  %91 = load double, double* %90, align 8, !dbg !299
  %92 = fmul double 5.000000e-01, %91, !dbg !301
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94133399206760, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399206976, i32 25, i32 24), !dbg !302
  %93 = fadd double %86, %92, !dbg !302
  call void @fAddHandler(double %86, double %92, double %93, i64 94133399202128, i64 94133399206976, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399207360, i32 25, i32 18), !dbg !303
  store double %93, double* %8, align 8, !dbg !303
  %94 = load double, double* %10, align 8, !dbg !304
  %95 = load double, double* %14, align 8, !dbg !305
  %96 = fmul double %94, %95, !dbg !306
  call void @fMulHandler(double %94, double %95, double %96, i64 94133399208168, i64 94133399208552, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399208960, i32 26, i32 16), !dbg !307
  %97 = call double @fabs(double %96) #1, !dbg !307
  %98 = load double, double* %9, align 8, !dbg !308
  %99 = call double @fabs(double %98) #1, !dbg !309
  %100 = fadd double %97, %99, !dbg !311
  call void @fAddHandler(double %97, double %99, double %100, i64 94133399209440, i64 94133399210368, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399210848, i32 26, i32 23), !dbg !312
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !312
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !313
  %103 = load double*, double** %102, align 8, !dbg !313
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !312
  %105 = load double, double* %104, align 8, !dbg !312
  %106 = call double @fabs(double %105) #1, !dbg !314
  %107 = fmul double 5.000000e-01, %106, !dbg !316
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94133399215600, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399216112, i32 26, i32 40), !dbg !317
  %108 = fadd double %100, %107, !dbg !317
  call void @fAddHandler(double %100, double %107, double %108, i64 94133399210848, i64 94133399216112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399216496, i32 26, i32 34), !dbg !318
  %109 = load double, double* %12, align 8, !dbg !318
  %110 = fadd double %109, %108, !dbg !318
  call void @fAddHandler(double %109, double %108, double %110, i64 94133399216888, i64 94133399216496, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399217296, i32 26, i32 7), !dbg !318
  store double %110, double* %12, align 8, !dbg !318
  %111 = load double, double* %8, align 8, !dbg !319
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !320
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !321
  store double %111, double* %113, align 8, !dbg !322
  %114 = load double, double* %12, align 8, !dbg !323
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !324
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94133399220712, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399221184, i32 30, i32 33), !dbg !325
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !325
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !326
  %118 = load i32, i32* %117, align 8, !dbg !326
  %119 = sext i32 %118 to i64, !dbg !327
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !327
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !328
  %122 = load double*, double** %121, align 8, !dbg !328
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !327
  %124 = load double, double* %123, align 8, !dbg !327
  %125 = call double @fabs(double %124) #1, !dbg !329
  %126 = fadd double %115, %125, !dbg !330
  call void @fAddHandler(double %115, double %125, double %126, i64 94133399221184, i64 94133399228512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94133399228992, i32 30, i32 37), !dbg !331
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !331
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !332
  store double %126, double* %128, align 8, !dbg !333
  ret i32 0, !dbg !334
}

; Function Attrs: nounwind uwtable
define internal void @fg_asymp(double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #0 !dbg !335 {
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !338, metadata !101), !dbg !339
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !340, metadata !101), !dbg !341
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !342, metadata !101), !dbg !343
  call void @llvm.dbg.declare(metadata double* %7, metadata !344, metadata !101), !dbg !345
  store double 0x4190000000000000, double* %7, align 8, !dbg !345
  call void @llvm.dbg.declare(metadata double* %8, metadata !346, metadata !101), !dbg !347
  store double 0x7FD0000000000000, double* %8, align 8, !dbg !347
  call void @llvm.dbg.declare(metadata double* %9, metadata !348, metadata !101), !dbg !349
  store double 0x5FE0000000000000, double* %9, align 8, !dbg !349
  call void @llvm.dbg.declare(metadata double* %10, metadata !350, metadata !101), !dbg !351
  store double 0x401C48C6001F1EA6, double* %10, align 8, !dbg !351
  call void @llvm.dbg.declare(metadata double* %11, metadata !352, metadata !101), !dbg !353
  %16 = load double, double* %4, align 8, !dbg !354
  %17 = load double, double* %4, align 8, !dbg !355
  %18 = fmul double %16, %17, !dbg !356
  call void @fMulHandler(double %16, double %17, double %18, i64 94133399093560, i64 94133399251592, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399252000, i32 223, i32 22), !dbg !353
  store double %18, double* %11, align 8, !dbg !353
  %19 = load double, double* %4, align 8, !dbg !357
  %20 = fcmp ole double %19, 0x401C48C6001F1EA6, !dbg !359
  %21 = call i1 @fCmpInstHandler(double %19, double 0x401C48C6001F1EA6, i1 %20, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399254480, i32 225, i32 8), !dbg !360
  br i1 %21, label %22, label %71, !dbg !360

; <label>:22:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !361, metadata !101), !dbg !363
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !364, metadata !101), !dbg !365
  %23 = load double, double* %11, align 8, !dbg !366
  %24 = fdiv double 1.000000e+00, %23, !dbg !367
  call void @fDivHandler(double 1.000000e+00, double %23, double %24, i64 0, i64 94133399257592, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399258000, i32 228, i32 29), !dbg !368
  %25 = fsub double %24, 4.125000e-02, !dbg !368
  call void @fSubHandler(double %24, double 4.125000e-02, double %25, i64 94133399258000, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399258480, i32 228, i32 32), !dbg !369
  %26 = fdiv double %25, 2.125000e-02, !dbg !369
  call void @fDivHandler(double %25, double 2.125000e-02, double %26, i64 94133399258480, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399258960, i32 228, i32 41), !dbg !370
  %27 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @f1_cs, double %26, %struct.gsl_sf_result_struct* %12), !dbg !370
  %28 = load double, double* %11, align 8, !dbg !371
  %29 = fdiv double 1.000000e+00, %28, !dbg !372
  call void @fDivHandler(double 1.000000e+00, double %28, double %29, i64 0, i64 94133399259912, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399260320, i32 229, i32 29), !dbg !373
  %30 = fsub double %29, 4.125000e-02, !dbg !373
  call void @fSubHandler(double %29, double 4.125000e-02, double %30, i64 94133399260320, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399260736, i32 229, i32 32), !dbg !374
  %31 = fdiv double %30, 2.125000e-02, !dbg !374
  call void @fDivHandler(double %30, double 2.125000e-02, double %31, i64 94133399260736, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399261152, i32 229, i32 41), !dbg !375
  %32 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @g1_cs, double %31, %struct.gsl_sf_result_struct* %13), !dbg !375
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !376
  %34 = load double, double* %33, align 8, !dbg !376
  %35 = fadd double 1.000000e+00, %34, !dbg !377
  call void @fAddHandler(double 1.000000e+00, double %34, double %35, i64 0, i64 94133399262520, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399264224, i32 230, i32 19), !dbg !378
  %36 = load double, double* %4, align 8, !dbg !378
  %37 = fdiv double %35, %36, !dbg !379
  call void @fDivHandler(double %35, double %36, double %37, i64 94133399264224, i64 94133399264584, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399264992, i32 230, i32 35), !dbg !380
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !380
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !381
  store double %37, double* %39, align 8, !dbg !382
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !383
  %41 = load double, double* %40, align 8, !dbg !383
  %42 = fadd double 1.000000e+00, %41, !dbg !384
  call void @fAddHandler(double 1.000000e+00, double %41, double %42, i64 0, i64 94133399267080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399268784, i32 231, i32 19), !dbg !385
  %43 = load double, double* %11, align 8, !dbg !385
  %44 = fdiv double %42, %43, !dbg !386
  call void @fDivHandler(double %42, double %43, double %44, i64 94133399268784, i64 94133399269144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399269552, i32 231, i32 35), !dbg !387
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !387
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !388
  store double %44, double* %46, align 8, !dbg !389
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !390
  %48 = load double, double* %47, align 8, !dbg !390
  %49 = load double, double* %4, align 8, !dbg !391
  %50 = fdiv double %48, %49, !dbg !392
  call void @fDivHandler(double %48, double %49, double %50, i64 94133399271640, i64 94133399273288, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399273696, i32 232, i32 27), !dbg !393
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !393
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !394
  %53 = load double, double* %52, align 8, !dbg !394
  %54 = call double @fabs(double %53) #1, !dbg !395
  %55 = fmul double 0x3CC0000000000000, %54, !dbg !396
  call void @fMulHandler(double 0x3CC0000000000000, double %54, double %55, i64 0, i64 94133399276656, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399277136, i32 232, i32 55), !dbg !397
  %56 = fadd double %50, %55, !dbg !397
  call void @fAddHandler(double %50, double %55, double %56, i64 94133399273696, i64 94133399277136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399277552, i32 232, i32 31), !dbg !398
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !398
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !399
  store double %56, double* %58, align 8, !dbg !400
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !401
  %60 = load double, double* %59, align 8, !dbg !401
  %61 = load double, double* %11, align 8, !dbg !402
  %62 = fdiv double %60, %61, !dbg !403
  call void @fDivHandler(double %60, double %61, double %62, i64 94133399279640, i64 94133399281288, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399281696, i32 233, i32 27), !dbg !404
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !404
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !405
  %65 = load double, double* %64, align 8, !dbg !405
  %66 = call double @fabs(double %65) #1, !dbg !406
  %67 = fmul double 0x3CC0000000000000, %66, !dbg !407
  call void @fMulHandler(double 0x3CC0000000000000, double %66, double %67, i64 0, i64 94133399284656, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399285136, i32 233, i32 55), !dbg !408
  %68 = fadd double %62, %67, !dbg !408
  call void @fAddHandler(double %62, double %67, double %68, i64 94133399281696, i64 94133399285136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399285552, i32 233, i32 31), !dbg !409
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !409
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !410
  store double %68, double* %70, align 8, !dbg !411
  br label %160, !dbg !412

; <label>:71:                                     ; preds = %3
  %72 = load double, double* %4, align 8, !dbg !413
  %73 = fcmp ole double %72, 0x4190000000000000, !dbg !415
  %74 = call i1 @fCmpInstHandler(double %72, double 0x4190000000000000, i1 %73, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399288064, i32 235, i32 13), !dbg !416
  br i1 %74, label %75, label %122, !dbg !416

; <label>:75:                                     ; preds = %71
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !417, metadata !101), !dbg !419
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !420, metadata !101), !dbg !421
  %76 = load double, double* %11, align 8, !dbg !422
  %77 = fdiv double 1.000000e+02, %76, !dbg !423
  call void @fDivHandler(double 1.000000e+02, double %76, double %77, i64 0, i64 94133399291320, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399291792, i32 238, i32 30), !dbg !424
  %78 = fsub double %77, 1.000000e+00, !dbg !424
  call void @fSubHandler(double %77, double 1.000000e+00, double %78, i64 94133399291792, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399292208, i32 238, i32 33), !dbg !425
  %79 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @f2_cs, double %78, %struct.gsl_sf_result_struct* %14), !dbg !425
  %80 = load double, double* %11, align 8, !dbg !426
  %81 = fdiv double 1.000000e+02, %80, !dbg !427
  call void @fDivHandler(double 1.000000e+02, double %80, double %81, i64 0, i64 94133399293160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399293568, i32 239, i32 30), !dbg !428
  %82 = fsub double %81, 1.000000e+00, !dbg !428
  call void @fSubHandler(double %81, double 1.000000e+00, double %82, i64 94133399293568, i64 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399293984, i32 239, i32 33), !dbg !429
  %83 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @g2_cs, double %82, %struct.gsl_sf_result_struct* %15), !dbg !429
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !430
  %85 = load double, double* %84, align 8, !dbg !430
  %86 = fadd double 1.000000e+00, %85, !dbg !431
  call void @fAddHandler(double 1.000000e+00, double %85, double %86, i64 0, i64 94133399295352, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399297056, i32 240, i32 19), !dbg !432
  %87 = load double, double* %4, align 8, !dbg !432
  %88 = fdiv double %86, %87, !dbg !433
  call void @fDivHandler(double %86, double %87, double %88, i64 94133399297056, i64 94133399297416, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399297824, i32 240, i32 35), !dbg !434
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !434
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 0, !dbg !435
  store double %88, double* %90, align 8, !dbg !436
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !437
  %92 = load double, double* %91, align 8, !dbg !437
  %93 = fadd double 1.000000e+00, %92, !dbg !438
  call void @fAddHandler(double 1.000000e+00, double %92, double %93, i64 0, i64 94133399299912, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399301616, i32 241, i32 19), !dbg !439
  %94 = load double, double* %11, align 8, !dbg !439
  %95 = fdiv double %93, %94, !dbg !440
  call void @fDivHandler(double %93, double %94, double %95, i64 94133399301616, i64 94133399301976, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399302384, i32 241, i32 35), !dbg !441
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !441
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 0, !dbg !442
  store double %95, double* %97, align 8, !dbg !443
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !444
  %99 = load double, double* %98, align 8, !dbg !444
  %100 = load double, double* %4, align 8, !dbg !445
  %101 = fdiv double %99, %100, !dbg !446
  call void @fDivHandler(double %99, double %100, double %101, i64 94133399304472, i64 94133399306120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399306528, i32 242, i32 27), !dbg !447
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !447
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !448
  %104 = load double, double* %103, align 8, !dbg !448
  %105 = call double @fabs(double %104) #1, !dbg !449
  %106 = fmul double 0x3CC0000000000000, %105, !dbg !450
  call void @fMulHandler(double 0x3CC0000000000000, double %105, double %106, i64 0, i64 94133399309488, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399309968, i32 242, i32 55), !dbg !451
  %107 = fadd double %101, %106, !dbg !451
  call void @fAddHandler(double %101, double %106, double %107, i64 94133399306528, i64 94133399309968, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399310384, i32 242, i32 31), !dbg !452
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !452
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 1, !dbg !453
  store double %107, double* %109, align 8, !dbg !454
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !455
  %111 = load double, double* %110, align 8, !dbg !455
  %112 = load double, double* %11, align 8, !dbg !456
  %113 = fdiv double %111, %112, !dbg !457
  call void @fDivHandler(double %111, double %112, double %113, i64 94133399312472, i64 94133399314120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399314528, i32 243, i32 27), !dbg !458
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !458
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !459
  %116 = load double, double* %115, align 8, !dbg !459
  %117 = call double @fabs(double %116) #1, !dbg !460
  %118 = fmul double 0x3CC0000000000000, %117, !dbg !461
  call void @fMulHandler(double 0x3CC0000000000000, double %117, double %118, i64 0, i64 94133399317488, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399317968, i32 243, i32 55), !dbg !462
  %119 = fadd double %113, %118, !dbg !462
  call void @fAddHandler(double %113, double %118, double %119, i64 94133399314528, i64 94133399317968, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399318384, i32 243, i32 31), !dbg !463
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !463
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 1, !dbg !464
  store double %119, double* %121, align 8, !dbg !465
  br label %159, !dbg !466

; <label>:122:                                    ; preds = %71
  %123 = load double, double* %4, align 8, !dbg !467
  %124 = fcmp olt double %123, 0x7FD0000000000000, !dbg !469
  %125 = call i1 @fCmpInstHandler(double %123, double 0x7FD0000000000000, i1 %124, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399320896, i32 246, i32 17), !dbg !467
  br i1 %125, label %126, label %129, !dbg !467

; <label>:126:                                    ; preds = %122
  %127 = load double, double* %4, align 8, !dbg !470
  %128 = fdiv double 1.000000e+00, %127, !dbg !472
  call void @fDivHandler(double 1.000000e+00, double %127, double %128, i64 0, i64 94133399323272, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399323648, i32 246, i32 30), !dbg !473
  br label %130, !dbg !473

; <label>:129:                                    ; preds = %122
  br label %130, !dbg !474

; <label>:130:                                    ; preds = %129, %126
  %131 = phi double [ %128, %126 ], [ 0.000000e+00, %129 ], !dbg !476
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !478
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 0, !dbg !479
  store double %131, double* %133, align 8, !dbg !480
  %134 = load double, double* %4, align 8, !dbg !481
  %135 = fcmp olt double %134, 0x5FE0000000000000, !dbg !482
  %136 = call i1 @fCmpInstHandler(double %134, double 0x5FE0000000000000, i1 %135, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399328976, i32 247, i32 17), !dbg !481
  br i1 %136, label %137, label %140, !dbg !481

; <label>:137:                                    ; preds = %130
  %138 = load double, double* %11, align 8, !dbg !483
  %139 = fdiv double 1.000000e+00, %138, !dbg !484
  call void @fDivHandler(double 1.000000e+00, double %138, double %139, i64 0, i64 94133399331352, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399331728, i32 247, i32 30), !dbg !485
  br label %141, !dbg !485

; <label>:140:                                    ; preds = %130
  br label %141, !dbg !486

; <label>:141:                                    ; preds = %140, %137
  %142 = phi double [ %139, %137 ], [ 0.000000e+00, %140 ], !dbg !487
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !488
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 0, !dbg !489
  store double %142, double* %144, align 8, !dbg !490
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !491
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 0, !dbg !492
  %147 = load double, double* %146, align 8, !dbg !492
  %148 = call double @fabs(double %147) #1, !dbg !493
  %149 = fmul double 0x3CC0000000000000, %148, !dbg !494
  call void @fMulHandler(double 0x3CC0000000000000, double %148, double %149, i64 0, i64 94133399337152, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399337632, i32 248, i32 36), !dbg !495
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !495
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 1, !dbg !496
  store double %149, double* %151, align 8, !dbg !497
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !498
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !499
  %154 = load double, double* %153, align 8, !dbg !499
  %155 = call double @fabs(double %154) #1, !dbg !500
  %156 = fmul double 0x3CC0000000000000, %155, !dbg !501
  call void @fMulHandler(double 0x3CC0000000000000, double %155, double %156, i64 0, i64 94133399341840, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94133399342320, i32 249, i32 36), !dbg !502
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !502
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 1, !dbg !503
  store double %156, double* %158, align 8, !dbg !504
  br label %159

; <label>:159:                                    ; preds = %141, %75
  br label %160

; <label>:160:                                    ; preds = %159, %22
  ret void, !dbg !505
}

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_Ci_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !506 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !507, metadata !101), !dbg !508
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !509, metadata !101), !dbg !510
  %15 = load double, double* %4, align 8, !dbg !511
  %16 = fcmp ole double %15, 0.000000e+00, !dbg !513
  %17 = call i1 @fCmpInstHandler(double %15, double 0.000000e+00, i1 %16, i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399347792, i32 358, i32 8), !dbg !514
  br i1 %17, label %18, label %27, !dbg !514

; <label>:18:                                     ; preds = %2
  br label %19, !dbg !515, !llvm.loop !517

; <label>:19:                                     ; preds = %18
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !518
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !518
  store double 0x7FF8000000000000, double* %21, align 8, !dbg !518
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !518
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !518
  store double 0x7FF8000000000000, double* %23, align 8, !dbg !518
  br label %24, !dbg !518, !llvm.loop !521

; <label>:24:                                     ; preds = %19
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 359, i32 1), !dbg !523
  store i32 1, i32* %3, align 4, !dbg !523
  br label %150, !dbg !523
                                                  ; No predecessors!
  br label %26, !dbg !526

; <label>:26:                                     ; preds = %25
  br label %150, !dbg !528

; <label>:27:                                     ; preds = %2
  %28 = load double, double* %4, align 8, !dbg !529
  %29 = fcmp ole double %28, 4.000000e+00, !dbg !531
  %30 = call i1 @fCmpInstHandler(double %28, double 4.000000e+00, i1 %29, i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399357680, i32 361, i32 13), !dbg !532
  br i1 %30, label %31, label %66, !dbg !532

; <label>:31:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata double* %6, metadata !533, metadata !101), !dbg !535
  %32 = load double, double* %4, align 8, !dbg !536
  %33 = call double @log(double %32) #6, !dbg !537
  call void @callOneArgHandler(i32 12, double %32, double %33, i64 94133399359912, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399360624, i32 362, i32 23), !dbg !535
  store double %33, double* %6, align 8, !dbg !535
  call void @llvm.dbg.declare(metadata double* %7, metadata !538, metadata !101), !dbg !539
  %34 = load double, double* %4, align 8, !dbg !540
  %35 = load double, double* %4, align 8, !dbg !541
  %36 = fmul double %34, %35, !dbg !542
  call void @fMulHandler(double %34, double %35, double %36, i64 94133399363960, i64 94133399364312, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399364720, i32 363, i32 25), !dbg !543
  %37 = fsub double %36, 8.000000e+00, !dbg !543
  call void @fSubHandler(double %36, double 8.000000e+00, double %37, i64 94133399364720, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399365168, i32 363, i32 27), !dbg !544
  %38 = fmul double %37, 1.250000e-01, !dbg !544
  call void @fMulHandler(double %37, double 1.250000e-01, double %38, i64 94133399365168, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399365584, i32 363, i32 32), !dbg !539
  store double %38, double* %7, align 8, !dbg !539
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !545, metadata !101), !dbg !546
  %39 = load double, double* %7, align 8, !dbg !547
  %40 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @ci_cs, double %39, %struct.gsl_sf_result_struct* %8), !dbg !548
  %41 = load double, double* %6, align 8, !dbg !549
  %42 = fsub double %41, 5.000000e-01, !dbg !550
  call void @fSubHandler(double %41, double 5.000000e-01, double %42, i64 94133399369688, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399370096, i32 366, i32 23), !dbg !551
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !551
  %44 = load double, double* %43, align 8, !dbg !551
  %45 = fadd double %42, %44, !dbg !552
  call void @fAddHandler(double %42, double %44, double %45, i64 94133399370096, i64 94133399370904, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399372576, i32 366, i32 29), !dbg !553
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !553
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !554
  store double %45, double* %47, align 8, !dbg !555
  %48 = load double, double* %6, align 8, !dbg !556
  %49 = call double @fabs(double %48) #1, !dbg !557
  %50 = fadd double %49, 5.000000e-01, !dbg !558
  call void @fAddHandler(double %49, double 5.000000e-01, double %50, i64 94133399374688, i64 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399375200, i32 367, i32 54), !dbg !559
  %51 = fmul double 0x3CC0000000000000, %50, !dbg !559
  call void @fMulHandler(double 0x3CC0000000000000, double %50, double %51, i64 0, i64 94133399375200, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399375584, i32 367, i32 42), !dbg !560
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !560
  %53 = load double, double* %52, align 8, !dbg !560
  %54 = fadd double %51, %53, !dbg !561
  call void @fAddHandler(double %51, double %53, double %54, i64 94133399375584, i64 94133399376424, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399378096, i32 367, i32 61), !dbg !562
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !562
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !563
  store double %54, double* %56, align 8, !dbg !564
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !565
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 0, !dbg !566
  %59 = load double, double* %58, align 8, !dbg !566
  %60 = call double @fabs(double %59) #1, !dbg !567
  %61 = fmul double 0x3CC0000000000000, %60, !dbg !568
  call void @fMulHandler(double 0x3CC0000000000000, double %60, double %61, i64 0, i64 94133399382304, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399382784, i32 368, i32 42), !dbg !569
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !569
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !570
  %64 = load double, double* %63, align 8, !dbg !571
  %65 = fadd double %64, %61, !dbg !571
  call void @fAddHandler(double %64, double %61, double %65, i64 94133399384008, i64 94133399382784, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399384416, i32 368, i32 17), !dbg !571
  store double %65, double* %63, align 8, !dbg !571
  store i32 0, i32* %3, align 4, !dbg !572
  br label %150, !dbg !572

; <label>:66:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !573, metadata !101), !dbg !575
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !576, metadata !101), !dbg !577
  call void @llvm.dbg.declare(metadata i32* %11, metadata !578, metadata !101), !dbg !579
  %67 = load double, double* %4, align 8, !dbg !580
  %68 = call i32 @gsl_sf_sin_e(double %67, %struct.gsl_sf_result_struct* %9), !dbg !581
  store i32 %68, i32* %11, align 4, !dbg !579
  call void @llvm.dbg.declare(metadata i32* %12, metadata !582, metadata !101), !dbg !583
  %69 = load double, double* %4, align 8, !dbg !584
  %70 = call i32 @gsl_sf_cos_e(double %69, %struct.gsl_sf_result_struct* %10), !dbg !585
  store i32 %70, i32* %12, align 4, !dbg !583
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !586, metadata !101), !dbg !587
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !588, metadata !101), !dbg !589
  %71 = load double, double* %4, align 8, !dbg !590
  call void @fg_asymp(double %71, %struct.gsl_sf_result_struct* %13, %struct.gsl_sf_result_struct* %14), !dbg !591
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !592
  %73 = load double, double* %72, align 8, !dbg !592
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !593
  %75 = load double, double* %74, align 8, !dbg !593
  %76 = fmul double %73, %75, !dbg !594
  call void @fMulHandler(double %73, double %75, double %76, i64 94133399402040, i64 94133399404136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399405808, i32 379, i32 25), !dbg !595
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !595
  %78 = load double, double* %77, align 8, !dbg !595
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !596
  %80 = load double, double* %79, align 8, !dbg !596
  %81 = fmul double %78, %80, !dbg !597
  call void @fMulHandler(double %78, double %80, double %81, i64 94133399406648, i64 94133399408744, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399410416, i32 379, i32 48), !dbg !598
  %82 = fsub double %76, %81, !dbg !598
  call void @fSubHandler(double %76, double %81, double %82, i64 94133399405808, i64 94133399410416, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399410832, i32 379, i32 41), !dbg !599
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !599
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !600
  store double %82, double* %84, align 8, !dbg !601
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !602
  %86 = load double, double* %85, align 8, !dbg !602
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !603
  %88 = load double, double* %87, align 8, !dbg !603
  %89 = fmul double %86, %88, !dbg !604
  call void @fMulHandler(double %86, double %88, double %89, i64 94133399412920, i64 94133399415016, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399416688, i32 380, i32 30), !dbg !605
  %90 = call double @fabs(double %89) #1, !dbg !605
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !606
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 1, !dbg !607
  store double %90, double* %92, align 8, !dbg !608
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !609
  %94 = load double, double* %93, align 8, !dbg !609
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !610
  %96 = load double, double* %95, align 8, !dbg !610
  %97 = fmul double %94, %96, !dbg !611
  call void @fMulHandler(double %94, double %96, double %97, i64 94133399419320, i64 94133399421416, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399423088, i32 381, i32 30), !dbg !612
  %98 = call double @fabs(double %97) #1, !dbg !612
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !613
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !614
  %101 = load double, double* %100, align 8, !dbg !615
  %102 = fadd double %101, %98, !dbg !615
  call void @fAddHandler(double %101, double %98, double %102, i64 94133399424856, i64 94133399423568, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399425264, i32 381, i32 17), !dbg !615
  store double %102, double* %100, align 8, !dbg !615
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !616
  %104 = load double, double* %103, align 8, !dbg !616
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !617
  %106 = load double, double* %105, align 8, !dbg !617
  %107 = fmul double %104, %106, !dbg !618
  call void @fMulHandler(double %104, double %106, double %107, i64 94133399427496, i64 94133399429592, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399431264, i32 382, i32 30), !dbg !619
  %108 = call double @fabs(double %107) #1, !dbg !619
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !620
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 1, !dbg !621
  %111 = load double, double* %110, align 8, !dbg !622
  %112 = fadd double %111, %108, !dbg !622
  call void @fAddHandler(double %111, double %108, double %112, i64 94133399433032, i64 94133399431744, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399433440, i32 382, i32 17), !dbg !622
  store double %112, double* %110, align 8, !dbg !622
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !623
  %114 = load double, double* %113, align 8, !dbg !623
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !624
  %116 = load double, double* %115, align 8, !dbg !624
  %117 = fmul double %114, %116, !dbg !625
  call void @fMulHandler(double %114, double %116, double %117, i64 94133399435672, i64 94133399437768, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399439440, i32 383, i32 30), !dbg !626
  %118 = call double @fabs(double %117) #1, !dbg !626
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !627
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 1, !dbg !628
  %121 = load double, double* %120, align 8, !dbg !629
  %122 = fadd double %121, %118, !dbg !629
  call void @fAddHandler(double %121, double %118, double %122, i64 94133399441208, i64 94133399439920, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399441616, i32 383, i32 17), !dbg !629
  store double %122, double* %120, align 8, !dbg !629
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !630
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 0, !dbg !631
  %125 = load double, double* %124, align 8, !dbg !631
  %126 = call double @fabs(double %125) #1, !dbg !632
  %127 = fmul double 0x3CC0000000000000, %126, !dbg !633
  call void @fMulHandler(double 0x3CC0000000000000, double %126, double %127, i64 0, i64 94133399445968, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399446448, i32 384, i32 42), !dbg !634
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !634
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 1, !dbg !635
  %130 = load double, double* %129, align 8, !dbg !636
  %131 = fadd double %130, %127, !dbg !636
  call void @fAddHandler(double %130, double %127, double %131, i64 94133399447672, i64 94133399446448, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399450144, i32 384, i32 17), !dbg !636
  store double %131, double* %129, align 8, !dbg !636
  %132 = load i32, i32* %11, align 4, !dbg !637
  %133 = icmp ne i32 %132, 0, !dbg !637
  %134 = sext i32 %132 to i64, !dbg !637
  %135 = call i1 @iCmpInstHandler(i64 %134, i64 0, i1 %133, i32 33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399452336, i32 385, i32 12), !dbg !637
  br i1 %135, label %136, label %138, !dbg !637

; <label>:136:                                    ; preds = %66
  %137 = load i32, i32* %11, align 4, !dbg !638
  br label %148, !dbg !638

; <label>:138:                                    ; preds = %66
  %139 = load i32, i32* %12, align 4, !dbg !640
  %140 = icmp ne i32 %139, 0, !dbg !640
  %141 = sext i32 %139 to i64, !dbg !640
  %142 = call i1 @iCmpInstHandler(i64 %141, i64 0, i1 %140, i32 33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94133399456880, i32 385, i32 12), !dbg !640
  br i1 %142, label %143, label %145, !dbg !640

; <label>:143:                                    ; preds = %138
  %144 = load i32, i32* %12, align 4, !dbg !642
  br label %146, !dbg !642

; <label>:145:                                    ; preds = %138
  br label %146, !dbg !644

; <label>:146:                                    ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 0, %145 ], !dbg !646
  br label %148, !dbg !646

; <label>:148:                                    ; preds = %146, %136
  %149 = phi i32 [ %137, %136 ], [ %147, %146 ], !dbg !648
  store i32 %149, i32* %3, align 4, !dbg !650
  br label %150, !dbg !650

; <label>:150:                                    ; preds = %148, %31, %26, %24
  %151 = load i32, i32* %3, align 4, !dbg !651
  ret i32 %151, !dbg !651
}

declare void @gsl_error(i8*, i8*, i32, i32) #5

; Function Attrs: nounwind
declare double @log(double) #4

declare i32 @gsl_sf_sin_e(double, %struct.gsl_sf_result_struct*) #5

declare i32 @gsl_sf_cos_e(double, %struct.gsl_sf_result_struct*) #5

; Function Attrs: nounwind uwtable
define double @gsl_sf_Si(double) #0 !dbg !652 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !655, metadata !101), !dbg !656
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !657, metadata !101), !dbg !658
  call void @llvm.dbg.declare(metadata i32* %5, metadata !659, metadata !101), !dbg !658
  %6 = load double, double* %3, align 8, !dbg !658
  %7 = call i32 @gsl_sf_Si_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !658
  store i32 %7, i32* %5, align 4, !dbg !658
  %8 = load i32, i32* %5, align 4, !dbg !660
  %9 = icmp ne i32 %8, 0, !dbg !660
  %10 = sext i32 %8 to i64, !dbg !658
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94133399473696, i32 396, i32 3), !dbg !658
  br i1 %11, label %12, label %18, !dbg !658

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !662, !llvm.loop !665

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !667
  call void @gsl_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 396, i32 %14), !dbg !667
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !667
  %16 = load double, double* %15, align 8, !dbg !667
  store double %16, double* %2, align 8, !dbg !667
  br label %21, !dbg !667
                                                  ; No predecessors!
  br label %18, !dbg !670

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !672
  %20 = load double, double* %19, align 8, !dbg !672
  store double %20, double* %2, align 8, !dbg !672
  br label %21, !dbg !672

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !674
  ret double %22, !dbg !674
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_Ci(double) #0 !dbg !675 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !676, metadata !101), !dbg !677
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !678, metadata !101), !dbg !679
  call void @llvm.dbg.declare(metadata i32* %5, metadata !680, metadata !101), !dbg !679
  %6 = load double, double* %3, align 8, !dbg !679
  %7 = call i32 @gsl_sf_Ci_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !679
  store i32 %7, i32* %5, align 4, !dbg !679
  %8 = load i32, i32* %5, align 4, !dbg !681
  %9 = icmp ne i32 %8, 0, !dbg !681
  %10 = sext i32 %8 to i64, !dbg !679
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @11, i32 0, i32 0), i64 94133399490800, i32 401, i32 3), !dbg !679
  br i1 %11, label %12, label %18, !dbg !679

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !683, !llvm.loop !686

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !688
  call void @gsl_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 401, i32 %14), !dbg !688
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !688
  %16 = load double, double* %15, align 8, !dbg !688
  store double %16, double* %2, align 8, !dbg !688
  br label %21, !dbg !688
                                                  ; No predecessors!
  br label %18, !dbg !691

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !693
  %20 = load double, double* %19, align 8, !dbg !693
  store double %20, double* %2, align 8, !dbg !693
  br label %21, !dbg !693

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !695
  ret double %22, !dbg !695
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
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!84, !85, !86}
!llvm.ident = !{!87}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "sinint.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60, !64, !65, !69, !70, !74, !75, !79, !80}
!42 = distinct !DIGlobalVariable(name: "si_cs", scope: !0, file: !1, line: 280, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @si_cs)
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
!55 = distinct !DIGlobalVariable(name: "si_data", scope: !0, file: !1, line: 265, type: !56, isLocal: true, isDefinition: true, variable: [12 x double]* @si_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 768, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 12)
!59 = distinct !DIGlobalVariable(name: "f1_cs", scope: !0, file: !1, line: 66, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @f1_cs)
!60 = distinct !DIGlobalVariable(name: "f1_data", scope: !0, file: !1, line: 44, type: !61, isLocal: true, isDefinition: true, variable: [20 x double]* @f1_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1280, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 20)
!64 = distinct !DIGlobalVariable(name: "g1_cs", scope: !0, file: !1, line: 150, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @g1_cs)
!65 = distinct !DIGlobalVariable(name: "g1_data", scope: !0, file: !1, line: 127, type: !66, isLocal: true, isDefinition: true, variable: [21 x double]* @g1_data)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1344, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 21)
!69 = distinct !DIGlobalVariable(name: "f2_cs", scope: !0, file: !1, line: 112, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @f2_cs)
!70 = distinct !DIGlobalVariable(name: "f2_data", scope: !0, file: !1, line: 81, type: !71, isLocal: true, isDefinition: true, variable: [29 x double]* @f2_data)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1856, align: 64, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 29)
!74 = distinct !DIGlobalVariable(name: "g2_cs", scope: !0, file: !1, line: 201, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @g2_cs)
!75 = distinct !DIGlobalVariable(name: "g2_data", scope: !0, file: !1, line: 165, type: !76, isLocal: true, isDefinition: true, variable: [34 x double]* @g2_data)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2176, align: 64, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 34)
!79 = distinct !DIGlobalVariable(name: "ci_cs", scope: !0, file: !1, line: 309, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @ci_cs)
!80 = distinct !DIGlobalVariable(name: "ci_data", scope: !0, file: !1, line: 294, type: !81, isLocal: true, isDefinition: true, variable: [13 x double]* @ci_data)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 832, align: 64, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 13)
!84 = !{i32 2, !"Dwarf Version", i32 4}
!85 = !{i32 2, !"Debug Info Version", i32 3}
!86 = !{i32 1, !"PIC Level", i32 2}
!87 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!88 = distinct !DISubprogram(name: "gsl_sf_Si_e", scope: !1, file: !1, line: 319, type: !89, isLocal: false, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !99)
!89 = !DISubroutineType(types: !90)
!90 = !{!51, !91, !92}
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !94, line: 41, baseType: !95)
!94 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !94, line: 37, size: 128, align: 64, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !95, file: !94, line: 38, baseType: !49, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !95, file: !94, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!99 = !{}
!100 = !DILocalVariable(name: "x", arg: 1, scope: !88, file: !1, line: 319, type: !91)
!101 = !DIExpression()
!102 = !DILocation(line: 319, column: 30, scope: !88)
!103 = !DILocalVariable(name: "result", arg: 2, scope: !88, file: !1, line: 319, type: !92)
!104 = !DILocation(line: 319, column: 49, scope: !88)
!105 = !DILocalVariable(name: "ax", scope: !88, file: !1, line: 321, type: !49)
!106 = !DILocation(line: 321, column: 10, scope: !88)
!107 = !DILocation(line: 321, column: 20, scope: !88)
!108 = !DILocation(line: 321, column: 15, scope: !88)
!109 = !DILocation(line: 325, column: 6, scope: !110)
!110 = distinct !DILexicalBlock(scope: !88, file: !1, line: 325, column: 6)
!111 = !DILocation(line: 325, column: 9, scope: !110)
!112 = !DILocation(line: 325, column: 6, scope: !88)
!113 = !DILocation(line: 326, column: 19, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 325, column: 33)
!115 = !DILocation(line: 326, column: 5, scope: !114)
!116 = !DILocation(line: 326, column: 13, scope: !114)
!117 = !DILocation(line: 326, column: 17, scope: !114)
!118 = !DILocation(line: 327, column: 5, scope: !114)
!119 = !DILocation(line: 327, column: 13, scope: !114)
!120 = !DILocation(line: 327, column: 17, scope: !114)
!121 = !DILocation(line: 328, column: 5, scope: !114)
!122 = !DILocation(line: 330, column: 11, scope: !123)
!123 = distinct !DILexicalBlock(scope: !110, file: !1, line: 330, column: 11)
!124 = !DILocation(line: 330, column: 14, scope: !123)
!125 = !DILocation(line: 330, column: 11, scope: !110)
!126 = !DILocalVariable(name: "result_c", scope: !127, file: !1, line: 331, type: !93)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 330, column: 22)
!128 = !DILocation(line: 331, column: 19, scope: !127)
!129 = !DILocation(line: 332, column: 26, scope: !127)
!130 = !DILocation(line: 332, column: 28, scope: !127)
!131 = !DILocation(line: 332, column: 27, scope: !127)
!132 = !DILocation(line: 332, column: 29, scope: !127)
!133 = !DILocation(line: 332, column: 34, scope: !127)
!134 = !DILocation(line: 332, column: 5, scope: !127)
!135 = !DILocation(line: 333, column: 21, scope: !127)
!136 = !DILocation(line: 333, column: 42, scope: !127)
!137 = !DILocation(line: 333, column: 31, scope: !127)
!138 = !DILocation(line: 333, column: 23, scope: !127)
!139 = !DILocation(line: 333, column: 5, scope: !127)
!140 = !DILocation(line: 333, column: 13, scope: !127)
!141 = !DILocation(line: 333, column: 18, scope: !127)
!142 = !DILocation(line: 334, column: 20, scope: !127)
!143 = !DILocation(line: 334, column: 34, scope: !127)
!144 = !DILocation(line: 334, column: 23, scope: !127)
!145 = !DILocation(line: 334, column: 5, scope: !127)
!146 = !DILocation(line: 334, column: 13, scope: !127)
!147 = !DILocation(line: 334, column: 18, scope: !127)
!148 = !DILocation(line: 335, column: 49, scope: !127)
!149 = !DILocation(line: 335, column: 57, scope: !127)
!150 = !DILocation(line: 335, column: 44, scope: !127)
!151 = !DILocation(line: 335, column: 42, scope: !127)
!152 = !DILocation(line: 335, column: 5, scope: !127)
!153 = !DILocation(line: 335, column: 13, scope: !127)
!154 = !DILocation(line: 335, column: 17, scope: !127)
!155 = !DILocation(line: 336, column: 5, scope: !127)
!156 = !DILocalVariable(name: "f", scope: !157, file: !1, line: 342, type: !93)
!157 = distinct !DILexicalBlock(scope: !123, file: !1, line: 338, column: 8)
!158 = !DILocation(line: 342, column: 19, scope: !157)
!159 = !DILocalVariable(name: "g", scope: !157, file: !1, line: 343, type: !93)
!160 = !DILocation(line: 343, column: 19, scope: !157)
!161 = !DILocation(line: 344, column: 14, scope: !157)
!162 = !DILocation(line: 344, column: 5, scope: !157)
!163 = !DILocation(line: 345, column: 35, scope: !157)
!164 = !DILocation(line: 345, column: 43, scope: !157)
!165 = !DILocation(line: 345, column: 39, scope: !157)
!166 = !DILocation(line: 345, column: 38, scope: !157)
!167 = !DILocation(line: 345, column: 31, scope: !157)
!168 = !DILocation(line: 345, column: 51, scope: !157)
!169 = !DILocation(line: 345, column: 59, scope: !157)
!170 = !DILocation(line: 345, column: 55, scope: !171)
!171 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 1)
!172 = !DILocation(line: 345, column: 54, scope: !157)
!173 = !DILocation(line: 345, column: 47, scope: !157)
!174 = !DILocation(line: 345, column: 5, scope: !157)
!175 = !DILocation(line: 345, column: 13, scope: !157)
!176 = !DILocation(line: 345, column: 18, scope: !157)
!177 = !DILocation(line: 346, column: 22, scope: !157)
!178 = !DILocation(line: 346, column: 30, scope: !157)
!179 = !DILocation(line: 346, column: 26, scope: !157)
!180 = !DILocation(line: 346, column: 5, scope: !157)
!181 = !DILocation(line: 346, column: 13, scope: !157)
!182 = !DILocation(line: 346, column: 18, scope: !157)
!183 = !DILocation(line: 347, column: 49, scope: !157)
!184 = !DILocation(line: 347, column: 57, scope: !157)
!185 = !DILocation(line: 347, column: 44, scope: !157)
!186 = !DILocation(line: 347, column: 42, scope: !157)
!187 = !DILocation(line: 347, column: 5, scope: !157)
!188 = !DILocation(line: 347, column: 13, scope: !157)
!189 = !DILocation(line: 347, column: 17, scope: !157)
!190 = !DILocation(line: 348, column: 8, scope: !191)
!191 = distinct !DILexicalBlock(scope: !157, file: !1, line: 348, column: 8)
!192 = !DILocation(line: 348, column: 10, scope: !191)
!193 = !DILocation(line: 348, column: 8, scope: !157)
!194 = !DILocation(line: 348, column: 32, scope: !195)
!195 = !DILexicalBlockFile(scope: !191, file: !1, discriminator: 1)
!196 = !DILocation(line: 348, column: 40, scope: !195)
!197 = !DILocation(line: 348, column: 31, scope: !195)
!198 = !DILocation(line: 348, column: 17, scope: !195)
!199 = !DILocation(line: 348, column: 25, scope: !195)
!200 = !DILocation(line: 348, column: 29, scope: !195)
!201 = !DILocation(line: 349, column: 5, scope: !157)
!202 = !DILocation(line: 351, column: 1, scope: !88)
!203 = distinct !DISubprogram(name: "cheb_eval_e", scope: !204, file: !204, line: 3, type: !205, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !99)
!204 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!205 = !DISubroutineType(types: !206)
!206 = !{!51, !207, !91, !92}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!209 = !DILocalVariable(name: "cs", arg: 1, scope: !203, file: !204, line: 3, type: !207)
!210 = !DILocation(line: 3, column: 33, scope: !203)
!211 = !DILocalVariable(name: "x", arg: 2, scope: !203, file: !204, line: 4, type: !91)
!212 = !DILocation(line: 4, column: 26, scope: !203)
!213 = !DILocalVariable(name: "result", arg: 3, scope: !203, file: !204, line: 5, type: !92)
!214 = !DILocation(line: 5, column: 29, scope: !203)
!215 = !DILocalVariable(name: "j", scope: !203, file: !204, line: 7, type: !51)
!216 = !DILocation(line: 7, column: 7, scope: !203)
!217 = !DILocalVariable(name: "d", scope: !203, file: !204, line: 8, type: !49)
!218 = !DILocation(line: 8, column: 10, scope: !203)
!219 = !DILocalVariable(name: "dd", scope: !203, file: !204, line: 9, type: !49)
!220 = !DILocation(line: 9, column: 10, scope: !203)
!221 = !DILocalVariable(name: "y", scope: !203, file: !204, line: 11, type: !49)
!222 = !DILocation(line: 11, column: 10, scope: !203)
!223 = !DILocation(line: 11, column: 20, scope: !203)
!224 = !DILocation(line: 11, column: 19, scope: !203)
!225 = !DILocation(line: 11, column: 24, scope: !203)
!226 = !DILocation(line: 11, column: 28, scope: !203)
!227 = !DILocation(line: 11, column: 22, scope: !203)
!228 = !DILocation(line: 11, column: 32, scope: !203)
!229 = !DILocation(line: 11, column: 36, scope: !203)
!230 = !DILocation(line: 11, column: 30, scope: !203)
!231 = !DILocation(line: 11, column: 42, scope: !203)
!232 = !DILocation(line: 11, column: 46, scope: !203)
!233 = !DILocation(line: 11, column: 50, scope: !203)
!234 = !DILocation(line: 11, column: 54, scope: !203)
!235 = !DILocation(line: 11, column: 48, scope: !203)
!236 = !DILocation(line: 11, column: 39, scope: !203)
!237 = !DILocalVariable(name: "y2", scope: !203, file: !204, line: 12, type: !49)
!238 = !DILocation(line: 12, column: 10, scope: !203)
!239 = !DILocation(line: 12, column: 21, scope: !203)
!240 = !DILocation(line: 12, column: 19, scope: !203)
!241 = !DILocalVariable(name: "e", scope: !203, file: !204, line: 14, type: !49)
!242 = !DILocation(line: 14, column: 10, scope: !203)
!243 = !DILocation(line: 16, column: 11, scope: !244)
!244 = distinct !DILexicalBlock(scope: !203, file: !204, line: 16, column: 3)
!245 = !DILocation(line: 16, column: 15, scope: !244)
!246 = !DILocation(line: 16, column: 9, scope: !244)
!247 = !DILocation(line: 16, column: 7, scope: !244)
!248 = !DILocation(line: 16, column: 22, scope: !249)
!249 = !DILexicalBlockFile(scope: !250, file: !204, discriminator: 1)
!250 = distinct !DILexicalBlock(scope: !244, file: !204, line: 16, column: 3)
!251 = !DILocation(line: 16, column: 23, scope: !249)
!252 = !DILocation(line: 16, column: 3, scope: !249)
!253 = !DILocalVariable(name: "temp", scope: !254, file: !204, line: 17, type: !49)
!254 = distinct !DILexicalBlock(scope: !250, file: !204, line: 16, column: 33)
!255 = !DILocation(line: 17, column: 12, scope: !254)
!256 = !DILocation(line: 17, column: 19, scope: !254)
!257 = !DILocation(line: 18, column: 9, scope: !254)
!258 = !DILocation(line: 18, column: 12, scope: !254)
!259 = !DILocation(line: 18, column: 11, scope: !254)
!260 = !DILocation(line: 18, column: 16, scope: !254)
!261 = !DILocation(line: 18, column: 14, scope: !254)
!262 = !DILocation(line: 18, column: 27, scope: !254)
!263 = !DILocation(line: 18, column: 21, scope: !254)
!264 = !DILocation(line: 18, column: 25, scope: !254)
!265 = !DILocation(line: 18, column: 19, scope: !254)
!266 = !DILocation(line: 18, column: 7, scope: !254)
!267 = !DILocation(line: 19, column: 15, scope: !254)
!268 = !DILocation(line: 19, column: 18, scope: !254)
!269 = !DILocation(line: 19, column: 17, scope: !254)
!270 = !DILocation(line: 19, column: 10, scope: !254)
!271 = !DILocation(line: 19, column: 31, scope: !254)
!272 = !DILocation(line: 19, column: 26, scope: !273)
!273 = !DILexicalBlockFile(scope: !254, file: !204, discriminator: 1)
!274 = !DILocation(line: 19, column: 24, scope: !254)
!275 = !DILocation(line: 19, column: 48, scope: !254)
!276 = !DILocation(line: 19, column: 42, scope: !254)
!277 = !DILocation(line: 19, column: 46, scope: !254)
!278 = !DILocation(line: 19, column: 37, scope: !279)
!279 = !DILexicalBlockFile(scope: !254, file: !204, discriminator: 2)
!280 = !DILocation(line: 19, column: 35, scope: !254)
!281 = !DILocation(line: 19, column: 7, scope: !254)
!282 = !DILocation(line: 20, column: 10, scope: !254)
!283 = !DILocation(line: 20, column: 8, scope: !254)
!284 = !DILocation(line: 21, column: 3, scope: !254)
!285 = !DILocation(line: 16, column: 29, scope: !286)
!286 = !DILexicalBlockFile(scope: !250, file: !204, discriminator: 2)
!287 = !DILocation(line: 16, column: 3, scope: !286)
!288 = distinct !{!288, !289}
!289 = !DILocation(line: 16, column: 3, scope: !203)
!290 = !DILocalVariable(name: "temp", scope: !291, file: !204, line: 24, type: !49)
!291 = distinct !DILexicalBlock(scope: !203, file: !204, line: 23, column: 3)
!292 = !DILocation(line: 24, column: 12, scope: !291)
!293 = !DILocation(line: 24, column: 19, scope: !291)
!294 = !DILocation(line: 25, column: 9, scope: !291)
!295 = !DILocation(line: 25, column: 11, scope: !291)
!296 = !DILocation(line: 25, column: 10, scope: !291)
!297 = !DILocation(line: 25, column: 15, scope: !291)
!298 = !DILocation(line: 25, column: 13, scope: !291)
!299 = !DILocation(line: 25, column: 26, scope: !291)
!300 = !DILocation(line: 25, column: 30, scope: !291)
!301 = !DILocation(line: 25, column: 24, scope: !291)
!302 = !DILocation(line: 25, column: 18, scope: !291)
!303 = !DILocation(line: 25, column: 7, scope: !291)
!304 = !DILocation(line: 26, column: 15, scope: !291)
!305 = !DILocation(line: 26, column: 17, scope: !291)
!306 = !DILocation(line: 26, column: 16, scope: !291)
!307 = !DILocation(line: 26, column: 10, scope: !291)
!308 = !DILocation(line: 26, column: 30, scope: !291)
!309 = !DILocation(line: 26, column: 25, scope: !310)
!310 = !DILexicalBlockFile(scope: !291, file: !204, discriminator: 1)
!311 = !DILocation(line: 26, column: 23, scope: !291)
!312 = !DILocation(line: 26, column: 47, scope: !291)
!313 = !DILocation(line: 26, column: 51, scope: !291)
!314 = !DILocation(line: 26, column: 42, scope: !315)
!315 = !DILexicalBlockFile(scope: !291, file: !204, discriminator: 2)
!316 = !DILocation(line: 26, column: 40, scope: !291)
!317 = !DILocation(line: 26, column: 34, scope: !291)
!318 = !DILocation(line: 26, column: 7, scope: !291)
!319 = !DILocation(line: 29, column: 17, scope: !203)
!320 = !DILocation(line: 29, column: 3, scope: !203)
!321 = !DILocation(line: 29, column: 11, scope: !203)
!322 = !DILocation(line: 29, column: 15, scope: !203)
!323 = !DILocation(line: 30, column: 35, scope: !203)
!324 = !DILocation(line: 30, column: 33, scope: !203)
!325 = !DILocation(line: 30, column: 50, scope: !203)
!326 = !DILocation(line: 30, column: 54, scope: !203)
!327 = !DILocation(line: 30, column: 44, scope: !203)
!328 = !DILocation(line: 30, column: 48, scope: !203)
!329 = !DILocation(line: 30, column: 39, scope: !203)
!330 = !DILocation(line: 30, column: 37, scope: !203)
!331 = !DILocation(line: 30, column: 3, scope: !203)
!332 = !DILocation(line: 30, column: 11, scope: !203)
!333 = !DILocation(line: 30, column: 15, scope: !203)
!334 = !DILocation(line: 32, column: 3, scope: !203)
!335 = distinct !DISubprogram(name: "fg_asymp", scope: !1, file: !1, line: 210, type: !336, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !99)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !91, !92, !92}
!338 = !DILocalVariable(name: "x", arg: 1, scope: !335, file: !1, line: 210, type: !91)
!339 = !DILocation(line: 210, column: 35, scope: !335)
!340 = !DILocalVariable(name: "f", arg: 2, scope: !335, file: !1, line: 210, type: !92)
!341 = !DILocation(line: 210, column: 54, scope: !335)
!342 = !DILocalVariable(name: "g", arg: 3, scope: !335, file: !1, line: 210, type: !92)
!343 = !DILocation(line: 210, column: 73, scope: !335)
!344 = !DILocalVariable(name: "xbig", scope: !335, file: !1, line: 218, type: !91)
!345 = !DILocation(line: 218, column: 16, scope: !335)
!346 = !DILocalVariable(name: "xmaxf", scope: !335, file: !1, line: 219, type: !91)
!347 = !DILocation(line: 219, column: 16, scope: !335)
!348 = !DILocalVariable(name: "xmaxg", scope: !335, file: !1, line: 220, type: !91)
!349 = !DILocation(line: 220, column: 16, scope: !335)
!350 = !DILocalVariable(name: "xbnd", scope: !335, file: !1, line: 221, type: !91)
!351 = !DILocation(line: 221, column: 16, scope: !335)
!352 = !DILocalVariable(name: "x2", scope: !335, file: !1, line: 223, type: !91)
!353 = !DILocation(line: 223, column: 16, scope: !335)
!354 = !DILocation(line: 223, column: 21, scope: !335)
!355 = !DILocation(line: 223, column: 23, scope: !335)
!356 = !DILocation(line: 223, column: 22, scope: !335)
!357 = !DILocation(line: 225, column: 6, scope: !358)
!358 = distinct !DILexicalBlock(scope: !335, file: !1, line: 225, column: 6)
!359 = !DILocation(line: 225, column: 8, scope: !358)
!360 = !DILocation(line: 225, column: 6, scope: !335)
!361 = !DILocalVariable(name: "result_c1", scope: !362, file: !1, line: 226, type: !93)
!362 = distinct !DILexicalBlock(scope: !358, file: !1, line: 225, column: 17)
!363 = !DILocation(line: 226, column: 19, scope: !362)
!364 = !DILocalVariable(name: "result_c2", scope: !362, file: !1, line: 227, type: !93)
!365 = !DILocation(line: 227, column: 19, scope: !362)
!366 = !DILocation(line: 228, column: 30, scope: !362)
!367 = !DILocation(line: 228, column: 29, scope: !362)
!368 = !DILocation(line: 228, column: 32, scope: !362)
!369 = !DILocation(line: 228, column: 41, scope: !362)
!370 = !DILocation(line: 228, column: 5, scope: !362)
!371 = !DILocation(line: 229, column: 30, scope: !362)
!372 = !DILocation(line: 229, column: 29, scope: !362)
!373 = !DILocation(line: 229, column: 32, scope: !362)
!374 = !DILocation(line: 229, column: 41, scope: !362)
!375 = !DILocation(line: 229, column: 5, scope: !362)
!376 = !DILocation(line: 230, column: 31, scope: !362)
!377 = !DILocation(line: 230, column: 19, scope: !362)
!378 = !DILocation(line: 230, column: 36, scope: !362)
!379 = !DILocation(line: 230, column: 35, scope: !362)
!380 = !DILocation(line: 230, column: 5, scope: !362)
!381 = !DILocation(line: 230, column: 8, scope: !362)
!382 = !DILocation(line: 230, column: 12, scope: !362)
!383 = !DILocation(line: 231, column: 31, scope: !362)
!384 = !DILocation(line: 231, column: 19, scope: !362)
!385 = !DILocation(line: 231, column: 36, scope: !362)
!386 = !DILocation(line: 231, column: 35, scope: !362)
!387 = !DILocation(line: 231, column: 5, scope: !362)
!388 = !DILocation(line: 231, column: 8, scope: !362)
!389 = !DILocation(line: 231, column: 12, scope: !362)
!390 = !DILocation(line: 232, column: 24, scope: !362)
!391 = !DILocation(line: 232, column: 28, scope: !362)
!392 = !DILocation(line: 232, column: 27, scope: !362)
!393 = !DILocation(line: 232, column: 62, scope: !362)
!394 = !DILocation(line: 232, column: 65, scope: !362)
!395 = !DILocation(line: 232, column: 57, scope: !362)
!396 = !DILocation(line: 232, column: 55, scope: !362)
!397 = !DILocation(line: 232, column: 31, scope: !362)
!398 = !DILocation(line: 232, column: 5, scope: !362)
!399 = !DILocation(line: 232, column: 8, scope: !362)
!400 = !DILocation(line: 232, column: 12, scope: !362)
!401 = !DILocation(line: 233, column: 24, scope: !362)
!402 = !DILocation(line: 233, column: 28, scope: !362)
!403 = !DILocation(line: 233, column: 27, scope: !362)
!404 = !DILocation(line: 233, column: 62, scope: !362)
!405 = !DILocation(line: 233, column: 65, scope: !362)
!406 = !DILocation(line: 233, column: 57, scope: !362)
!407 = !DILocation(line: 233, column: 55, scope: !362)
!408 = !DILocation(line: 233, column: 31, scope: !362)
!409 = !DILocation(line: 233, column: 5, scope: !362)
!410 = !DILocation(line: 233, column: 8, scope: !362)
!411 = !DILocation(line: 233, column: 12, scope: !362)
!412 = !DILocation(line: 234, column: 3, scope: !362)
!413 = !DILocation(line: 235, column: 11, scope: !414)
!414 = distinct !DILexicalBlock(scope: !358, file: !1, line: 235, column: 11)
!415 = !DILocation(line: 235, column: 13, scope: !414)
!416 = !DILocation(line: 235, column: 11, scope: !358)
!417 = !DILocalVariable(name: "result_c1", scope: !418, file: !1, line: 236, type: !93)
!418 = distinct !DILexicalBlock(scope: !414, file: !1, line: 235, column: 22)
!419 = !DILocation(line: 236, column: 19, scope: !418)
!420 = !DILocalVariable(name: "result_c2", scope: !418, file: !1, line: 237, type: !93)
!421 = !DILocation(line: 237, column: 19, scope: !418)
!422 = !DILocation(line: 238, column: 31, scope: !418)
!423 = !DILocation(line: 238, column: 30, scope: !418)
!424 = !DILocation(line: 238, column: 33, scope: !418)
!425 = !DILocation(line: 238, column: 5, scope: !418)
!426 = !DILocation(line: 239, column: 31, scope: !418)
!427 = !DILocation(line: 239, column: 30, scope: !418)
!428 = !DILocation(line: 239, column: 33, scope: !418)
!429 = !DILocation(line: 239, column: 5, scope: !418)
!430 = !DILocation(line: 240, column: 31, scope: !418)
!431 = !DILocation(line: 240, column: 19, scope: !418)
!432 = !DILocation(line: 240, column: 36, scope: !418)
!433 = !DILocation(line: 240, column: 35, scope: !418)
!434 = !DILocation(line: 240, column: 5, scope: !418)
!435 = !DILocation(line: 240, column: 8, scope: !418)
!436 = !DILocation(line: 240, column: 12, scope: !418)
!437 = !DILocation(line: 241, column: 31, scope: !418)
!438 = !DILocation(line: 241, column: 19, scope: !418)
!439 = !DILocation(line: 241, column: 36, scope: !418)
!440 = !DILocation(line: 241, column: 35, scope: !418)
!441 = !DILocation(line: 241, column: 5, scope: !418)
!442 = !DILocation(line: 241, column: 8, scope: !418)
!443 = !DILocation(line: 241, column: 12, scope: !418)
!444 = !DILocation(line: 242, column: 24, scope: !418)
!445 = !DILocation(line: 242, column: 28, scope: !418)
!446 = !DILocation(line: 242, column: 27, scope: !418)
!447 = !DILocation(line: 242, column: 62, scope: !418)
!448 = !DILocation(line: 242, column: 65, scope: !418)
!449 = !DILocation(line: 242, column: 57, scope: !418)
!450 = !DILocation(line: 242, column: 55, scope: !418)
!451 = !DILocation(line: 242, column: 31, scope: !418)
!452 = !DILocation(line: 242, column: 5, scope: !418)
!453 = !DILocation(line: 242, column: 8, scope: !418)
!454 = !DILocation(line: 242, column: 12, scope: !418)
!455 = !DILocation(line: 243, column: 24, scope: !418)
!456 = !DILocation(line: 243, column: 28, scope: !418)
!457 = !DILocation(line: 243, column: 27, scope: !418)
!458 = !DILocation(line: 243, column: 62, scope: !418)
!459 = !DILocation(line: 243, column: 65, scope: !418)
!460 = !DILocation(line: 243, column: 57, scope: !418)
!461 = !DILocation(line: 243, column: 55, scope: !418)
!462 = !DILocation(line: 243, column: 31, scope: !418)
!463 = !DILocation(line: 243, column: 5, scope: !418)
!464 = !DILocation(line: 243, column: 8, scope: !418)
!465 = !DILocation(line: 243, column: 12, scope: !418)
!466 = !DILocation(line: 244, column: 3, scope: !418)
!467 = !DILocation(line: 246, column: 15, scope: !468)
!468 = distinct !DILexicalBlock(scope: !414, file: !1, line: 245, column: 8)
!469 = !DILocation(line: 246, column: 17, scope: !468)
!470 = !DILocation(line: 246, column: 31, scope: !471)
!471 = !DILexicalBlockFile(scope: !468, file: !1, discriminator: 1)
!472 = !DILocation(line: 246, column: 30, scope: !471)
!473 = !DILocation(line: 246, column: 15, scope: !471)
!474 = !DILocation(line: 246, column: 15, scope: !475)
!475 = !DILexicalBlockFile(scope: !468, file: !1, discriminator: 2)
!476 = !DILocation(line: 246, column: 15, scope: !477)
!477 = !DILexicalBlockFile(scope: !468, file: !1, discriminator: 3)
!478 = !DILocation(line: 246, column: 5, scope: !477)
!479 = !DILocation(line: 246, column: 8, scope: !477)
!480 = !DILocation(line: 246, column: 12, scope: !477)
!481 = !DILocation(line: 247, column: 15, scope: !468)
!482 = !DILocation(line: 247, column: 17, scope: !468)
!483 = !DILocation(line: 247, column: 31, scope: !471)
!484 = !DILocation(line: 247, column: 30, scope: !471)
!485 = !DILocation(line: 247, column: 15, scope: !471)
!486 = !DILocation(line: 247, column: 15, scope: !475)
!487 = !DILocation(line: 247, column: 15, scope: !477)
!488 = !DILocation(line: 247, column: 5, scope: !477)
!489 = !DILocation(line: 247, column: 8, scope: !477)
!490 = !DILocation(line: 247, column: 12, scope: !477)
!491 = !DILocation(line: 248, column: 43, scope: !468)
!492 = !DILocation(line: 248, column: 46, scope: !468)
!493 = !DILocation(line: 248, column: 38, scope: !468)
!494 = !DILocation(line: 248, column: 36, scope: !468)
!495 = !DILocation(line: 248, column: 5, scope: !468)
!496 = !DILocation(line: 248, column: 8, scope: !468)
!497 = !DILocation(line: 248, column: 12, scope: !468)
!498 = !DILocation(line: 249, column: 43, scope: !468)
!499 = !DILocation(line: 249, column: 46, scope: !468)
!500 = !DILocation(line: 249, column: 38, scope: !468)
!501 = !DILocation(line: 249, column: 36, scope: !468)
!502 = !DILocation(line: 249, column: 5, scope: !468)
!503 = !DILocation(line: 249, column: 8, scope: !468)
!504 = !DILocation(line: 249, column: 12, scope: !468)
!505 = !DILocation(line: 252, column: 3, scope: !335)
!506 = distinct !DISubprogram(name: "gsl_sf_Ci_e", scope: !1, file: !1, line: 354, type: !89, isLocal: false, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !99)
!507 = !DILocalVariable(name: "x", arg: 1, scope: !506, file: !1, line: 354, type: !91)
!508 = !DILocation(line: 354, column: 30, scope: !506)
!509 = !DILocalVariable(name: "result", arg: 2, scope: !506, file: !1, line: 354, type: !92)
!510 = !DILocation(line: 354, column: 49, scope: !506)
!511 = !DILocation(line: 358, column: 6, scope: !512)
!512 = distinct !DILexicalBlock(scope: !506, file: !1, line: 358, column: 6)
!513 = !DILocation(line: 358, column: 8, scope: !512)
!514 = !DILocation(line: 358, column: 6, scope: !506)
!515 = !DILocation(line: 359, column: 5, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !1, line: 358, column: 16)
!517 = distinct !{!517, !515}
!518 = !DILocation(line: 359, column: 5, scope: !519)
!519 = !DILexicalBlockFile(scope: !520, file: !1, discriminator: 1)
!520 = distinct !DILexicalBlock(scope: !516, file: !1, line: 359, column: 5)
!521 = distinct !{!521, !522}
!522 = !DILocation(line: 359, column: 5, scope: !520)
!523 = !DILocation(line: 359, column: 5, scope: !524)
!524 = !DILexicalBlockFile(scope: !525, file: !1, discriminator: 2)
!525 = distinct !DILexicalBlock(scope: !520, file: !1, line: 359, column: 5)
!526 = !DILocation(line: 359, column: 5, scope: !527)
!527 = !DILexicalBlockFile(scope: !520, file: !1, discriminator: 3)
!528 = !DILocation(line: 360, column: 3, scope: !516)
!529 = !DILocation(line: 361, column: 11, scope: !530)
!530 = distinct !DILexicalBlock(scope: !512, file: !1, line: 361, column: 11)
!531 = !DILocation(line: 361, column: 13, scope: !530)
!532 = !DILocation(line: 361, column: 11, scope: !512)
!533 = !DILocalVariable(name: "lx", scope: !534, file: !1, line: 362, type: !91)
!534 = distinct !DILexicalBlock(scope: !530, file: !1, line: 361, column: 21)
!535 = !DILocation(line: 362, column: 18, scope: !534)
!536 = !DILocation(line: 362, column: 27, scope: !534)
!537 = !DILocation(line: 362, column: 23, scope: !534)
!538 = !DILocalVariable(name: "y", scope: !534, file: !1, line: 363, type: !91)
!539 = !DILocation(line: 363, column: 18, scope: !534)
!540 = !DILocation(line: 363, column: 24, scope: !534)
!541 = !DILocation(line: 363, column: 26, scope: !534)
!542 = !DILocation(line: 363, column: 25, scope: !534)
!543 = !DILocation(line: 363, column: 27, scope: !534)
!544 = !DILocation(line: 363, column: 32, scope: !534)
!545 = !DILocalVariable(name: "result_c", scope: !534, file: !1, line: 364, type: !93)
!546 = !DILocation(line: 364, column: 19, scope: !534)
!547 = !DILocation(line: 365, column: 25, scope: !534)
!548 = !DILocation(line: 365, column: 5, scope: !534)
!549 = !DILocation(line: 366, column: 20, scope: !534)
!550 = !DILocation(line: 366, column: 23, scope: !534)
!551 = !DILocation(line: 366, column: 40, scope: !534)
!552 = !DILocation(line: 366, column: 29, scope: !534)
!553 = !DILocation(line: 366, column: 5, scope: !534)
!554 = !DILocation(line: 366, column: 13, scope: !534)
!555 = !DILocation(line: 366, column: 18, scope: !534)
!556 = !DILocation(line: 367, column: 50, scope: !534)
!557 = !DILocation(line: 367, column: 45, scope: !534)
!558 = !DILocation(line: 367, column: 54, scope: !534)
!559 = !DILocation(line: 367, column: 42, scope: !534)
!560 = !DILocation(line: 367, column: 72, scope: !534)
!561 = !DILocation(line: 367, column: 61, scope: !534)
!562 = !DILocation(line: 367, column: 5, scope: !534)
!563 = !DILocation(line: 367, column: 13, scope: !534)
!564 = !DILocation(line: 367, column: 18, scope: !534)
!565 = !DILocation(line: 368, column: 49, scope: !534)
!566 = !DILocation(line: 368, column: 57, scope: !534)
!567 = !DILocation(line: 368, column: 44, scope: !534)
!568 = !DILocation(line: 368, column: 42, scope: !534)
!569 = !DILocation(line: 368, column: 5, scope: !534)
!570 = !DILocation(line: 368, column: 13, scope: !534)
!571 = !DILocation(line: 368, column: 17, scope: !534)
!572 = !DILocation(line: 369, column: 5, scope: !534)
!573 = !DILocalVariable(name: "sin_result", scope: !574, file: !1, line: 372, type: !93)
!574 = distinct !DILexicalBlock(scope: !530, file: !1, line: 371, column: 8)
!575 = !DILocation(line: 372, column: 19, scope: !574)
!576 = !DILocalVariable(name: "cos_result", scope: !574, file: !1, line: 373, type: !93)
!577 = !DILocation(line: 373, column: 19, scope: !574)
!578 = !DILocalVariable(name: "stat_sin", scope: !574, file: !1, line: 374, type: !51)
!579 = !DILocation(line: 374, column: 9, scope: !574)
!580 = !DILocation(line: 374, column: 33, scope: !574)
!581 = !DILocation(line: 374, column: 20, scope: !574)
!582 = !DILocalVariable(name: "stat_cos", scope: !574, file: !1, line: 375, type: !51)
!583 = !DILocation(line: 375, column: 9, scope: !574)
!584 = !DILocation(line: 375, column: 33, scope: !574)
!585 = !DILocation(line: 375, column: 20, scope: !574)
!586 = !DILocalVariable(name: "f", scope: !574, file: !1, line: 376, type: !93)
!587 = !DILocation(line: 376, column: 19, scope: !574)
!588 = !DILocalVariable(name: "g", scope: !574, file: !1, line: 377, type: !93)
!589 = !DILocation(line: 377, column: 19, scope: !574)
!590 = !DILocation(line: 378, column: 14, scope: !574)
!591 = !DILocation(line: 378, column: 5, scope: !574)
!592 = !DILocation(line: 379, column: 22, scope: !574)
!593 = !DILocation(line: 379, column: 37, scope: !574)
!594 = !DILocation(line: 379, column: 25, scope: !574)
!595 = !DILocation(line: 379, column: 45, scope: !574)
!596 = !DILocation(line: 379, column: 60, scope: !574)
!597 = !DILocation(line: 379, column: 48, scope: !574)
!598 = !DILocation(line: 379, column: 41, scope: !574)
!599 = !DILocation(line: 379, column: 5, scope: !574)
!600 = !DILocation(line: 379, column: 13, scope: !574)
!601 = !DILocation(line: 379, column: 18, scope: !574)
!602 = !DILocation(line: 380, column: 27, scope: !574)
!603 = !DILocation(line: 380, column: 42, scope: !574)
!604 = !DILocation(line: 380, column: 30, scope: !574)
!605 = !DILocation(line: 380, column: 20, scope: !574)
!606 = !DILocation(line: 380, column: 5, scope: !574)
!607 = !DILocation(line: 380, column: 13, scope: !574)
!608 = !DILocation(line: 380, column: 18, scope: !574)
!609 = !DILocation(line: 381, column: 27, scope: !574)
!610 = !DILocation(line: 381, column: 42, scope: !574)
!611 = !DILocation(line: 381, column: 30, scope: !574)
!612 = !DILocation(line: 381, column: 20, scope: !574)
!613 = !DILocation(line: 381, column: 5, scope: !574)
!614 = !DILocation(line: 381, column: 13, scope: !574)
!615 = !DILocation(line: 381, column: 17, scope: !574)
!616 = !DILocation(line: 382, column: 27, scope: !574)
!617 = !DILocation(line: 382, column: 42, scope: !574)
!618 = !DILocation(line: 382, column: 30, scope: !574)
!619 = !DILocation(line: 382, column: 20, scope: !574)
!620 = !DILocation(line: 382, column: 5, scope: !574)
!621 = !DILocation(line: 382, column: 13, scope: !574)
!622 = !DILocation(line: 382, column: 17, scope: !574)
!623 = !DILocation(line: 383, column: 27, scope: !574)
!624 = !DILocation(line: 383, column: 42, scope: !574)
!625 = !DILocation(line: 383, column: 30, scope: !574)
!626 = !DILocation(line: 383, column: 20, scope: !574)
!627 = !DILocation(line: 383, column: 5, scope: !574)
!628 = !DILocation(line: 383, column: 13, scope: !574)
!629 = !DILocation(line: 383, column: 17, scope: !574)
!630 = !DILocation(line: 384, column: 49, scope: !574)
!631 = !DILocation(line: 384, column: 57, scope: !574)
!632 = !DILocation(line: 384, column: 44, scope: !574)
!633 = !DILocation(line: 384, column: 42, scope: !574)
!634 = !DILocation(line: 384, column: 5, scope: !574)
!635 = !DILocation(line: 384, column: 13, scope: !574)
!636 = !DILocation(line: 384, column: 17, scope: !574)
!637 = !DILocation(line: 385, column: 12, scope: !574)
!638 = !DILocation(line: 385, column: 12, scope: !639)
!639 = !DILexicalBlockFile(scope: !574, file: !1, discriminator: 1)
!640 = !DILocation(line: 385, column: 12, scope: !641)
!641 = !DILexicalBlockFile(scope: !574, file: !1, discriminator: 2)
!642 = !DILocation(line: 385, column: 12, scope: !643)
!643 = !DILexicalBlockFile(scope: !574, file: !1, discriminator: 3)
!644 = !DILocation(line: 385, column: 12, scope: !645)
!645 = !DILexicalBlockFile(scope: !574, file: !1, discriminator: 4)
!646 = !DILocation(line: 385, column: 12, scope: !647)
!647 = !DILexicalBlockFile(scope: !574, file: !1, discriminator: 5)
!648 = !DILocation(line: 385, column: 12, scope: !649)
!649 = !DILexicalBlockFile(scope: !574, file: !1, discriminator: 6)
!650 = !DILocation(line: 385, column: 5, scope: !649)
!651 = !DILocation(line: 387, column: 1, scope: !506)
!652 = distinct !DISubprogram(name: "gsl_sf_Si", scope: !1, file: !1, line: 394, type: !653, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !99)
!653 = !DISubroutineType(types: !654)
!654 = !{!49, !91}
!655 = !DILocalVariable(name: "x", arg: 1, scope: !652, file: !1, line: 394, type: !91)
!656 = !DILocation(line: 394, column: 31, scope: !652)
!657 = !DILocalVariable(name: "result", scope: !652, file: !1, line: 396, type: !93)
!658 = !DILocation(line: 396, column: 3, scope: !652)
!659 = !DILocalVariable(name: "status", scope: !652, file: !1, line: 396, type: !51)
!660 = !DILocation(line: 396, column: 3, scope: !661)
!661 = distinct !DILexicalBlock(scope: !652, file: !1, line: 396, column: 3)
!662 = !DILocation(line: 396, column: 3, scope: !663)
!663 = !DILexicalBlockFile(scope: !664, file: !1, discriminator: 1)
!664 = distinct !DILexicalBlock(scope: !661, file: !1, line: 396, column: 3)
!665 = distinct !{!665, !666}
!666 = !DILocation(line: 396, column: 3, scope: !664)
!667 = !DILocation(line: 396, column: 3, scope: !668)
!668 = !DILexicalBlockFile(scope: !669, file: !1, discriminator: 2)
!669 = distinct !DILexicalBlock(scope: !664, file: !1, line: 396, column: 3)
!670 = !DILocation(line: 396, column: 3, scope: !671)
!671 = !DILexicalBlockFile(scope: !664, file: !1, discriminator: 3)
!672 = !DILocation(line: 396, column: 3, scope: !673)
!673 = !DILexicalBlockFile(scope: !652, file: !1, discriminator: 4)
!674 = !DILocation(line: 397, column: 1, scope: !652)
!675 = distinct !DISubprogram(name: "gsl_sf_Ci", scope: !1, file: !1, line: 399, type: !653, isLocal: false, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !99)
!676 = !DILocalVariable(name: "x", arg: 1, scope: !675, file: !1, line: 399, type: !91)
!677 = !DILocation(line: 399, column: 31, scope: !675)
!678 = !DILocalVariable(name: "result", scope: !675, file: !1, line: 401, type: !93)
!679 = !DILocation(line: 401, column: 3, scope: !675)
!680 = !DILocalVariable(name: "status", scope: !675, file: !1, line: 401, type: !51)
!681 = !DILocation(line: 401, column: 3, scope: !682)
!682 = distinct !DILexicalBlock(scope: !675, file: !1, line: 401, column: 3)
!683 = !DILocation(line: 401, column: 3, scope: !684)
!684 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 1)
!685 = distinct !DILexicalBlock(scope: !682, file: !1, line: 401, column: 3)
!686 = distinct !{!686, !687}
!687 = !DILocation(line: 401, column: 3, scope: !685)
!688 = !DILocation(line: 401, column: 3, scope: !689)
!689 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 2)
!690 = distinct !DILexicalBlock(scope: !685, file: !1, line: 401, column: 3)
!691 = !DILocation(line: 401, column: 3, scope: !692)
!692 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 3)
!693 = !DILocation(line: 401, column: 3, scope: !694)
!694 = !DILexicalBlockFile(scope: !675, file: !1, discriminator: 4)
!695 = !DILocation(line: 402, column: 1, scope: !675)
