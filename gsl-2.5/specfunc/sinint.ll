; ModuleID = 'sinint.c'
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
  br i1 %13, label %14, label %20, !dbg !112

; <label>:14:                                     ; preds = %2
  %15 = load double, double* %4, align 8, !dbg !113
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !115
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !116
  store double %15, double* %17, align 8, !dbg !117
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !118
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !119
  store double 0.000000e+00, double* %19, align 8, !dbg !120
  store i32 0, i32* %3, align 4, !dbg !121
  br label %94, !dbg !121

; <label>:20:                                     ; preds = %2
  %21 = load double, double* %6, align 8, !dbg !122
  %22 = fcmp ole double %21, 4.000000e+00, !dbg !124
  br i1 %22, label %23, label %52, !dbg !125

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !126, metadata !101), !dbg !128
  %24 = load double, double* %4, align 8, !dbg !129
  %25 = load double, double* %4, align 8, !dbg !130
  %26 = fmul double %24, %25, !dbg !131
  %27 = fsub double %26, 8.000000e+00, !dbg !132
  %28 = fmul double %27, 1.250000e-01, !dbg !133
  %29 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @si_cs, double %28, %struct.gsl_sf_result_struct* %7), !dbg !134
  %30 = load double, double* %4, align 8, !dbg !135
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !136
  %32 = load double, double* %31, align 8, !dbg !136
  %33 = fadd double 7.500000e-01, %32, !dbg !137
  %34 = fmul double %30, %33, !dbg !138
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !139
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !140
  store double %34, double* %36, align 8, !dbg !141
  %37 = load double, double* %6, align 8, !dbg !142
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !143
  %39 = load double, double* %38, align 8, !dbg !143
  %40 = fmul double %37, %39, !dbg !144
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !145
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !146
  store double %40, double* %42, align 8, !dbg !147
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !148
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !149
  %45 = load double, double* %44, align 8, !dbg !149
  %46 = call double @fabs(double %45) #1, !dbg !150
  %47 = fmul double 0x3CC0000000000000, %46, !dbg !151
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !152
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !153
  %50 = load double, double* %49, align 8, !dbg !154
  %51 = fadd double %50, %47, !dbg !154
  store double %51, double* %49, align 8, !dbg !154
  store i32 0, i32* %3, align 4, !dbg !155
  br label %94, !dbg !155

; <label>:52:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !156, metadata !101), !dbg !158
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !159, metadata !101), !dbg !160
  %53 = load double, double* %6, align 8, !dbg !161
  call void @fg_asymp(double %53, %struct.gsl_sf_result_struct* %8, %struct.gsl_sf_result_struct* %9), !dbg !162
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !163
  %55 = load double, double* %54, align 8, !dbg !163
  %56 = load double, double* %6, align 8, !dbg !164
  %57 = call double @cos(double %56) #6, !dbg !165
  %58 = fmul double %55, %57, !dbg !166
  %59 = fsub double 0x3FF921FB54442D18, %58, !dbg !167
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !168
  %61 = load double, double* %60, align 8, !dbg !168
  %62 = load double, double* %6, align 8, !dbg !169
  %63 = call double @sin(double %62) #6, !dbg !170
  %64 = fmul double %61, %63, !dbg !172
  %65 = fsub double %59, %64, !dbg !173
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !174
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !175
  store double %65, double* %67, align 8, !dbg !176
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !177
  %69 = load double, double* %68, align 8, !dbg !177
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !178
  %71 = load double, double* %70, align 8, !dbg !178
  %72 = fadd double %69, %71, !dbg !179
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !180
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !181
  store double %72, double* %74, align 8, !dbg !182
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !183
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !184
  %77 = load double, double* %76, align 8, !dbg !184
  %78 = call double @fabs(double %77) #1, !dbg !185
  %79 = fmul double 0x3CC0000000000000, %78, !dbg !186
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !187
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !188
  %82 = load double, double* %81, align 8, !dbg !189
  %83 = fadd double %82, %79, !dbg !189
  store double %83, double* %81, align 8, !dbg !189
  %84 = load double, double* %4, align 8, !dbg !190
  %85 = fcmp olt double %84, 0.000000e+00, !dbg !192
  br i1 %85, label %86, label %93, !dbg !193

; <label>:86:                                     ; preds = %52
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !194
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !196
  %89 = load double, double* %88, align 8, !dbg !196
  %90 = fsub double -0.000000e+00, %89, !dbg !197
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !198
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 0, !dbg !199
  store double %90, double* %92, align 8, !dbg !200
  br label %93, !dbg !198

; <label>:93:                                     ; preds = %86, %52
  store i32 0, i32* %3, align 4, !dbg !201
  br label %94, !dbg !201

; <label>:94:                                     ; preds = %93, %23, %14
  %95 = load i32, i32* %3, align 4, !dbg !202
  ret i32 %95, !dbg !202
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
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !225
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !226
  %19 = load double, double* %18, align 8, !dbg !226
  %20 = fsub double %16, %19, !dbg !227
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !228
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !229
  %23 = load double, double* %22, align 8, !dbg !229
  %24 = fsub double %20, %23, !dbg !230
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !231
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !232
  %27 = load double, double* %26, align 8, !dbg !232
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !233
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !234
  %30 = load double, double* %29, align 8, !dbg !234
  %31 = fsub double %27, %30, !dbg !235
  %32 = fdiv double %24, %31, !dbg !236
  store double %32, double* %10, align 8, !dbg !222
  call void @llvm.dbg.declare(metadata double* %11, metadata !237, metadata !101), !dbg !238
  %33 = load double, double* %10, align 8, !dbg !239
  %34 = fmul double 2.000000e+00, %33, !dbg !240
  store double %34, double* %11, align 8, !dbg !238
  call void @llvm.dbg.declare(metadata double* %12, metadata !241, metadata !101), !dbg !242
  store double 0.000000e+00, double* %12, align 8, !dbg !242
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !243
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !245
  %37 = load i32, i32* %36, align 8, !dbg !245
  store i32 %37, i32* %7, align 4, !dbg !246
  br label %38, !dbg !247

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !248
  %40 = icmp sge i32 %39, 1, !dbg !251
  br i1 %40, label %41, label %78, !dbg !252

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !253, metadata !101), !dbg !255
  %42 = load double, double* %8, align 8, !dbg !256
  store double %42, double* %13, align 8, !dbg !255
  %43 = load double, double* %11, align 8, !dbg !257
  %44 = load double, double* %8, align 8, !dbg !258
  %45 = fmul double %43, %44, !dbg !259
  %46 = load double, double* %9, align 8, !dbg !260
  %47 = fsub double %45, %46, !dbg !261
  %48 = load i32, i32* %7, align 4, !dbg !262
  %49 = sext i32 %48 to i64, !dbg !263
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !263
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !264
  %52 = load double*, double** %51, align 8, !dbg !264
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !263
  %54 = load double, double* %53, align 8, !dbg !263
  %55 = fadd double %47, %54, !dbg !265
  store double %55, double* %8, align 8, !dbg !266
  %56 = load double, double* %11, align 8, !dbg !267
  %57 = load double, double* %13, align 8, !dbg !268
  %58 = fmul double %56, %57, !dbg !269
  %59 = call double @fabs(double %58) #1, !dbg !270
  %60 = load double, double* %9, align 8, !dbg !271
  %61 = call double @fabs(double %60) #1, !dbg !272
  %62 = fadd double %59, %61, !dbg !274
  %63 = load i32, i32* %7, align 4, !dbg !275
  %64 = sext i32 %63 to i64, !dbg !276
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !276
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !277
  %67 = load double*, double** %66, align 8, !dbg !277
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !276
  %69 = load double, double* %68, align 8, !dbg !276
  %70 = call double @fabs(double %69) #1, !dbg !278
  %71 = fadd double %62, %70, !dbg !280
  %72 = load double, double* %12, align 8, !dbg !281
  %73 = fadd double %72, %71, !dbg !281
  store double %73, double* %12, align 8, !dbg !281
  %74 = load double, double* %13, align 8, !dbg !282
  store double %74, double* %9, align 8, !dbg !283
  br label %75, !dbg !284

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !285
  %77 = add nsw i32 %76, -1, !dbg !285
  store i32 %77, i32* %7, align 4, !dbg !285
  br label %38, !dbg !287, !llvm.loop !288

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !290, metadata !101), !dbg !292
  %79 = load double, double* %8, align 8, !dbg !293
  store double %79, double* %14, align 8, !dbg !292
  %80 = load double, double* %10, align 8, !dbg !294
  %81 = load double, double* %8, align 8, !dbg !295
  %82 = fmul double %80, %81, !dbg !296
  %83 = load double, double* %9, align 8, !dbg !297
  %84 = fsub double %82, %83, !dbg !298
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !299
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !300
  %87 = load double*, double** %86, align 8, !dbg !300
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !299
  %89 = load double, double* %88, align 8, !dbg !299
  %90 = fmul double 5.000000e-01, %89, !dbg !301
  %91 = fadd double %84, %90, !dbg !302
  store double %91, double* %8, align 8, !dbg !303
  %92 = load double, double* %10, align 8, !dbg !304
  %93 = load double, double* %14, align 8, !dbg !305
  %94 = fmul double %92, %93, !dbg !306
  %95 = call double @fabs(double %94) #1, !dbg !307
  %96 = load double, double* %9, align 8, !dbg !308
  %97 = call double @fabs(double %96) #1, !dbg !309
  %98 = fadd double %95, %97, !dbg !311
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !312
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !313
  %101 = load double*, double** %100, align 8, !dbg !313
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !312
  %103 = load double, double* %102, align 8, !dbg !312
  %104 = call double @fabs(double %103) #1, !dbg !314
  %105 = fmul double 5.000000e-01, %104, !dbg !316
  %106 = fadd double %98, %105, !dbg !317
  %107 = load double, double* %12, align 8, !dbg !318
  %108 = fadd double %107, %106, !dbg !318
  store double %108, double* %12, align 8, !dbg !318
  %109 = load double, double* %8, align 8, !dbg !319
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !320
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !321
  store double %109, double* %111, align 8, !dbg !322
  %112 = load double, double* %12, align 8, !dbg !323
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !324
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !325
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !326
  %116 = load i32, i32* %115, align 8, !dbg !326
  %117 = sext i32 %116 to i64, !dbg !327
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !327
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !328
  %120 = load double*, double** %119, align 8, !dbg !328
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !327
  %122 = load double, double* %121, align 8, !dbg !327
  %123 = call double @fabs(double %122) #1, !dbg !329
  %124 = fadd double %113, %123, !dbg !330
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !331
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !332
  store double %124, double* %126, align 8, !dbg !333
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
  store double %18, double* %11, align 8, !dbg !353
  %19 = load double, double* %4, align 8, !dbg !357
  %20 = fcmp ole double %19, 0x401C48C6001F1EA6, !dbg !359
  br i1 %20, label %21, label %70, !dbg !360

; <label>:21:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !361, metadata !101), !dbg !363
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !364, metadata !101), !dbg !365
  %22 = load double, double* %11, align 8, !dbg !366
  %23 = fdiv double 1.000000e+00, %22, !dbg !367
  %24 = fsub double %23, 4.125000e-02, !dbg !368
  %25 = fdiv double %24, 2.125000e-02, !dbg !369
  %26 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @f1_cs, double %25, %struct.gsl_sf_result_struct* %12), !dbg !370
  %27 = load double, double* %11, align 8, !dbg !371
  %28 = fdiv double 1.000000e+00, %27, !dbg !372
  %29 = fsub double %28, 4.125000e-02, !dbg !373
  %30 = fdiv double %29, 2.125000e-02, !dbg !374
  %31 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @g1_cs, double %30, %struct.gsl_sf_result_struct* %13), !dbg !375
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !376
  %33 = load double, double* %32, align 8, !dbg !376
  %34 = fadd double 1.000000e+00, %33, !dbg !377
  %35 = load double, double* %4, align 8, !dbg !378
  %36 = fdiv double %34, %35, !dbg !379
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !380
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !381
  store double %36, double* %38, align 8, !dbg !382
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !383
  %40 = load double, double* %39, align 8, !dbg !383
  %41 = fadd double 1.000000e+00, %40, !dbg !384
  %42 = load double, double* %11, align 8, !dbg !385
  %43 = fdiv double %41, %42, !dbg !386
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !387
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !388
  store double %43, double* %45, align 8, !dbg !389
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !390
  %47 = load double, double* %46, align 8, !dbg !390
  %48 = load double, double* %4, align 8, !dbg !391
  %49 = fdiv double %47, %48, !dbg !392
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !393
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !394
  %52 = load double, double* %51, align 8, !dbg !394
  %53 = call double @fabs(double %52) #1, !dbg !395
  %54 = fmul double 0x3CC0000000000000, %53, !dbg !396
  %55 = fadd double %49, %54, !dbg !397
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !398
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 1, !dbg !399
  store double %55, double* %57, align 8, !dbg !400
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !401
  %59 = load double, double* %58, align 8, !dbg !401
  %60 = load double, double* %11, align 8, !dbg !402
  %61 = fdiv double %59, %60, !dbg !403
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !404
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !405
  %64 = load double, double* %63, align 8, !dbg !405
  %65 = call double @fabs(double %64) #1, !dbg !406
  %66 = fmul double 0x3CC0000000000000, %65, !dbg !407
  %67 = fadd double %61, %66, !dbg !408
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !409
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 1, !dbg !410
  store double %67, double* %69, align 8, !dbg !411
  br label %156, !dbg !412

; <label>:70:                                     ; preds = %3
  %71 = load double, double* %4, align 8, !dbg !413
  %72 = fcmp ole double %71, 0x4190000000000000, !dbg !415
  br i1 %72, label %73, label %120, !dbg !416

; <label>:73:                                     ; preds = %70
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !417, metadata !101), !dbg !419
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !420, metadata !101), !dbg !421
  %74 = load double, double* %11, align 8, !dbg !422
  %75 = fdiv double 1.000000e+02, %74, !dbg !423
  %76 = fsub double %75, 1.000000e+00, !dbg !424
  %77 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @f2_cs, double %76, %struct.gsl_sf_result_struct* %14), !dbg !425
  %78 = load double, double* %11, align 8, !dbg !426
  %79 = fdiv double 1.000000e+02, %78, !dbg !427
  %80 = fsub double %79, 1.000000e+00, !dbg !428
  %81 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @g2_cs, double %80, %struct.gsl_sf_result_struct* %15), !dbg !429
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !430
  %83 = load double, double* %82, align 8, !dbg !430
  %84 = fadd double 1.000000e+00, %83, !dbg !431
  %85 = load double, double* %4, align 8, !dbg !432
  %86 = fdiv double %84, %85, !dbg !433
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !434
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !435
  store double %86, double* %88, align 8, !dbg !436
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !437
  %90 = load double, double* %89, align 8, !dbg !437
  %91 = fadd double 1.000000e+00, %90, !dbg !438
  %92 = load double, double* %11, align 8, !dbg !439
  %93 = fdiv double %91, %92, !dbg !440
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !441
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 0, !dbg !442
  store double %93, double* %95, align 8, !dbg !443
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !444
  %97 = load double, double* %96, align 8, !dbg !444
  %98 = load double, double* %4, align 8, !dbg !445
  %99 = fdiv double %97, %98, !dbg !446
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !447
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 0, !dbg !448
  %102 = load double, double* %101, align 8, !dbg !448
  %103 = call double @fabs(double %102) #1, !dbg !449
  %104 = fmul double 0x3CC0000000000000, %103, !dbg !450
  %105 = fadd double %99, %104, !dbg !451
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !452
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 1, !dbg !453
  store double %105, double* %107, align 8, !dbg !454
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !455
  %109 = load double, double* %108, align 8, !dbg !455
  %110 = load double, double* %11, align 8, !dbg !456
  %111 = fdiv double %109, %110, !dbg !457
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !458
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !459
  %114 = load double, double* %113, align 8, !dbg !459
  %115 = call double @fabs(double %114) #1, !dbg !460
  %116 = fmul double 0x3CC0000000000000, %115, !dbg !461
  %117 = fadd double %111, %116, !dbg !462
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !463
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 1, !dbg !464
  store double %117, double* %119, align 8, !dbg !465
  br label %155, !dbg !466

; <label>:120:                                    ; preds = %70
  %121 = load double, double* %4, align 8, !dbg !467
  %122 = fcmp olt double %121, 0x7FD0000000000000, !dbg !469
  br i1 %122, label %123, label %126, !dbg !467

; <label>:123:                                    ; preds = %120
  %124 = load double, double* %4, align 8, !dbg !470
  %125 = fdiv double 1.000000e+00, %124, !dbg !472
  br label %127, !dbg !473

; <label>:126:                                    ; preds = %120
  br label %127, !dbg !474

; <label>:127:                                    ; preds = %126, %123
  %128 = phi double [ %125, %123 ], [ 0.000000e+00, %126 ], !dbg !476
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !478
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 0, !dbg !479
  store double %128, double* %130, align 8, !dbg !480
  %131 = load double, double* %4, align 8, !dbg !481
  %132 = fcmp olt double %131, 0x5FE0000000000000, !dbg !482
  br i1 %132, label %133, label %136, !dbg !481

; <label>:133:                                    ; preds = %127
  %134 = load double, double* %11, align 8, !dbg !483
  %135 = fdiv double 1.000000e+00, %134, !dbg !484
  br label %137, !dbg !485

; <label>:136:                                    ; preds = %127
  br label %137, !dbg !486

; <label>:137:                                    ; preds = %136, %133
  %138 = phi double [ %135, %133 ], [ 0.000000e+00, %136 ], !dbg !487
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !488
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 0, !dbg !489
  store double %138, double* %140, align 8, !dbg !490
  %141 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !491
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %141, i32 0, i32 0, !dbg !492
  %143 = load double, double* %142, align 8, !dbg !492
  %144 = call double @fabs(double %143) #1, !dbg !493
  %145 = fmul double 0x3CC0000000000000, %144, !dbg !494
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !495
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %146, i32 0, i32 1, !dbg !496
  store double %145, double* %147, align 8, !dbg !497
  %148 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !498
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %148, i32 0, i32 0, !dbg !499
  %150 = load double, double* %149, align 8, !dbg !499
  %151 = call double @fabs(double %150) #1, !dbg !500
  %152 = fmul double 0x3CC0000000000000, %151, !dbg !501
  %153 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !502
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %153, i32 0, i32 1, !dbg !503
  store double %152, double* %154, align 8, !dbg !504
  br label %155

; <label>:155:                                    ; preds = %137, %73
  br label %156

; <label>:156:                                    ; preds = %155, %21
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
  br i1 %16, label %17, label %26, !dbg !514

; <label>:17:                                     ; preds = %2
  br label %18, !dbg !515, !llvm.loop !517

; <label>:18:                                     ; preds = %17
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !518
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !518
  store double 0x7FF8000000000000, double* %20, align 8, !dbg !518
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !518
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !518
  store double 0x7FF8000000000000, double* %22, align 8, !dbg !518
  br label %23, !dbg !518, !llvm.loop !521

; <label>:23:                                     ; preds = %18
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 359, i32 1), !dbg !523
  store i32 1, i32* %3, align 4, !dbg !523
  br label %144, !dbg !523
                                                  ; No predecessors!
  br label %25, !dbg !526

; <label>:25:                                     ; preds = %24
  br label %144, !dbg !528

; <label>:26:                                     ; preds = %2
  %27 = load double, double* %4, align 8, !dbg !529
  %28 = fcmp ole double %27, 4.000000e+00, !dbg !531
  br i1 %28, label %29, label %64, !dbg !532

; <label>:29:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata double* %6, metadata !533, metadata !101), !dbg !535
  %30 = load double, double* %4, align 8, !dbg !536
  %31 = call double @log(double %30) #6, !dbg !537
  store double %31, double* %6, align 8, !dbg !535
  call void @llvm.dbg.declare(metadata double* %7, metadata !538, metadata !101), !dbg !539
  %32 = load double, double* %4, align 8, !dbg !540
  %33 = load double, double* %4, align 8, !dbg !541
  %34 = fmul double %32, %33, !dbg !542
  %35 = fsub double %34, 8.000000e+00, !dbg !543
  %36 = fmul double %35, 1.250000e-01, !dbg !544
  store double %36, double* %7, align 8, !dbg !539
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !545, metadata !101), !dbg !546
  %37 = load double, double* %7, align 8, !dbg !547
  %38 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @ci_cs, double %37, %struct.gsl_sf_result_struct* %8), !dbg !548
  %39 = load double, double* %6, align 8, !dbg !549
  %40 = fsub double %39, 5.000000e-01, !dbg !550
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !551
  %42 = load double, double* %41, align 8, !dbg !551
  %43 = fadd double %40, %42, !dbg !552
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !553
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !554
  store double %43, double* %45, align 8, !dbg !555
  %46 = load double, double* %6, align 8, !dbg !556
  %47 = call double @fabs(double %46) #1, !dbg !557
  %48 = fadd double %47, 5.000000e-01, !dbg !558
  %49 = fmul double 0x3CC0000000000000, %48, !dbg !559
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !560
  %51 = load double, double* %50, align 8, !dbg !560
  %52 = fadd double %49, %51, !dbg !561
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !562
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !563
  store double %52, double* %54, align 8, !dbg !564
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !565
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !566
  %57 = load double, double* %56, align 8, !dbg !566
  %58 = call double @fabs(double %57) #1, !dbg !567
  %59 = fmul double 0x3CC0000000000000, %58, !dbg !568
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !569
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !570
  %62 = load double, double* %61, align 8, !dbg !571
  %63 = fadd double %62, %59, !dbg !571
  store double %63, double* %61, align 8, !dbg !571
  store i32 0, i32* %3, align 4, !dbg !572
  br label %144, !dbg !572

; <label>:64:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !573, metadata !101), !dbg !575
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !576, metadata !101), !dbg !577
  call void @llvm.dbg.declare(metadata i32* %11, metadata !578, metadata !101), !dbg !579
  %65 = load double, double* %4, align 8, !dbg !580
  %66 = call i32 @gsl_sf_sin_e(double %65, %struct.gsl_sf_result_struct* %9), !dbg !581
  store i32 %66, i32* %11, align 4, !dbg !579
  call void @llvm.dbg.declare(metadata i32* %12, metadata !582, metadata !101), !dbg !583
  %67 = load double, double* %4, align 8, !dbg !584
  %68 = call i32 @gsl_sf_cos_e(double %67, %struct.gsl_sf_result_struct* %10), !dbg !585
  store i32 %68, i32* %12, align 4, !dbg !583
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !586, metadata !101), !dbg !587
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !588, metadata !101), !dbg !589
  %69 = load double, double* %4, align 8, !dbg !590
  call void @fg_asymp(double %69, %struct.gsl_sf_result_struct* %13, %struct.gsl_sf_result_struct* %14), !dbg !591
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !592
  %71 = load double, double* %70, align 8, !dbg !592
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !593
  %73 = load double, double* %72, align 8, !dbg !593
  %74 = fmul double %71, %73, !dbg !594
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !595
  %76 = load double, double* %75, align 8, !dbg !595
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !596
  %78 = load double, double* %77, align 8, !dbg !596
  %79 = fmul double %76, %78, !dbg !597
  %80 = fsub double %74, %79, !dbg !598
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !599
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !600
  store double %80, double* %82, align 8, !dbg !601
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !602
  %84 = load double, double* %83, align 8, !dbg !602
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !603
  %86 = load double, double* %85, align 8, !dbg !603
  %87 = fmul double %84, %86, !dbg !604
  %88 = call double @fabs(double %87) #1, !dbg !605
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !606
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !607
  store double %88, double* %90, align 8, !dbg !608
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !609
  %92 = load double, double* %91, align 8, !dbg !609
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !610
  %94 = load double, double* %93, align 8, !dbg !610
  %95 = fmul double %92, %94, !dbg !611
  %96 = call double @fabs(double %95) #1, !dbg !612
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !613
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !614
  %99 = load double, double* %98, align 8, !dbg !615
  %100 = fadd double %99, %96, !dbg !615
  store double %100, double* %98, align 8, !dbg !615
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !616
  %102 = load double, double* %101, align 8, !dbg !616
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !617
  %104 = load double, double* %103, align 8, !dbg !617
  %105 = fmul double %102, %104, !dbg !618
  %106 = call double @fabs(double %105) #1, !dbg !619
  %107 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !620
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %107, i32 0, i32 1, !dbg !621
  %109 = load double, double* %108, align 8, !dbg !622
  %110 = fadd double %109, %106, !dbg !622
  store double %110, double* %108, align 8, !dbg !622
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !623
  %112 = load double, double* %111, align 8, !dbg !623
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !624
  %114 = load double, double* %113, align 8, !dbg !624
  %115 = fmul double %112, %114, !dbg !625
  %116 = call double @fabs(double %115) #1, !dbg !626
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !627
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 1, !dbg !628
  %119 = load double, double* %118, align 8, !dbg !629
  %120 = fadd double %119, %116, !dbg !629
  store double %120, double* %118, align 8, !dbg !629
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !630
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 0, !dbg !631
  %123 = load double, double* %122, align 8, !dbg !631
  %124 = call double @fabs(double %123) #1, !dbg !632
  %125 = fmul double 0x3CC0000000000000, %124, !dbg !633
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !634
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 1, !dbg !635
  %128 = load double, double* %127, align 8, !dbg !636
  %129 = fadd double %128, %125, !dbg !636
  store double %129, double* %127, align 8, !dbg !636
  %130 = load i32, i32* %11, align 4, !dbg !637
  %131 = icmp ne i32 %130, 0, !dbg !637
  br i1 %131, label %132, label %134, !dbg !637

; <label>:132:                                    ; preds = %64
  %133 = load i32, i32* %11, align 4, !dbg !638
  br label %142, !dbg !638

; <label>:134:                                    ; preds = %64
  %135 = load i32, i32* %12, align 4, !dbg !640
  %136 = icmp ne i32 %135, 0, !dbg !640
  br i1 %136, label %137, label %139, !dbg !640

; <label>:137:                                    ; preds = %134
  %138 = load i32, i32* %12, align 4, !dbg !642
  br label %140, !dbg !642

; <label>:139:                                    ; preds = %134
  br label %140, !dbg !644

; <label>:140:                                    ; preds = %139, %137
  %141 = phi i32 [ %138, %137 ], [ 0, %139 ], !dbg !646
  br label %142, !dbg !646

; <label>:142:                                    ; preds = %140, %132
  %143 = phi i32 [ %133, %132 ], [ %141, %140 ], !dbg !648
  store i32 %143, i32* %3, align 4, !dbg !650
  br label %144, !dbg !650

; <label>:144:                                    ; preds = %23, %29, %142, %25
  %145 = load i32, i32* %3, align 4, !dbg !651
  ret i32 %145, !dbg !651
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
  br i1 %9, label %10, label %16, !dbg !658

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !662, !llvm.loop !665

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !667
  call void @gsl_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 396, i32 %12), !dbg !667
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !667
  %14 = load double, double* %13, align 8, !dbg !667
  store double %14, double* %2, align 8, !dbg !667
  br label %19, !dbg !667
                                                  ; No predecessors!
  br label %16, !dbg !670

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !672
  %18 = load double, double* %17, align 8, !dbg !672
  store double %18, double* %2, align 8, !dbg !672
  br label %19, !dbg !672

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !674
  ret double %20, !dbg !674
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
  br i1 %9, label %10, label %16, !dbg !679

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !683, !llvm.loop !686

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !688
  call void @gsl_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 401, i32 %12), !dbg !688
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !688
  %14 = load double, double* %13, align 8, !dbg !688
  store double %14, double* %2, align 8, !dbg !688
  br label %19, !dbg !688
                                                  ; No predecessors!
  br label %16, !dbg !691

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !693
  %18 = load double, double* %17, align 8, !dbg !693
  store double %18, double* %2, align 8, !dbg !693
  br label %19, !dbg !693

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !695
  ret double %20, !dbg !695
}

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
