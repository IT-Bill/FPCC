; ModuleID = 'bessel_I1.ll'
source_filename = "bessel_I1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_I1.c\00", align 1
@bi1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([11 x double], [11 x double]* @bi1_data, i32 0, i32 0), i32 10, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@ai1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([21 x double], [21 x double]* @ai1_data, i32 0, i32 0), i32 20, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8
@ai12_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([22 x double], [22 x double]* @ai12_data, i32 0, i32 0), i32 21, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_I1_scaled_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_I1_e(x, &result)\00", align 1
@bi1_data = internal global [11 x double] [double 0xBF6026FB7F270595, double 0x3FDA120105D88A96, double 0x3FA1D66AAA49A788, double 0x3F5951DAC509D682, double 0x3F05F62EA024E03C, double 0x3EA9AA76C61912B6, double 0x3E4590EB5F26E7D5, double 0x3DDB4D2B79D27314, double 7.663800e-13, double 4.741000e-15, double 2.400000e-17], align 16
@ai1_data = internal global [21 x double] [double 0xBF9D2691AE734B64, double 0xBF93B0E811A1A674, double 0xBF4409CA29D74D42, double 0xBEF5B48969F48C07, double 0x3EE2015E82A3A13C, double 0x3EB19B8F868CF242, double 0xBE9395AB07A2DC75, double 0xBE50BE62D17D7E85, double 0x3E4C4DD980642A6E, double 0xBE18E23BC84A8F08, double 0xBDF3FCB5722DDBED, double 0x3DE167B5B7337A1C, double -1.664947e-11, double -1.666650e-12, double 1.242600e-12, double -2.731500e-13, double 2.023000e-14, double 7.300000e-15, double -3.330000e-15, double 7.100000e-16, double -6.000000e-17], align 16
@ai12_data = internal global [22 x double] [double 0x3F9D4316AB62A28A, double 0xBF83FDA053FCDB4D, double 0xBF1CFD7F804AAB76, double 0xBED048DF49C9DFFC, double 0xBE90DBFD2E996C58, double 0xBE5C415394C05F14, double 0xBE30790B9B1FA782, double 0xBE0334CA4ACA4422, double -1.897495e-11, double 3.252602e-11, double 1.412580e-11, double 2.035640e-12, double -7.198500e-13, double -4.083600e-13, double -2.101000e-14, double 4.273000e-14, double 1.041000e-14, double -3.820000e-15, double -1.860000e-15, double 3.300000e-16, double 2.800000e-16, double -3.000000e-17], align 16
@0 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_I1_scaled_e\00"
@1 = private unnamed_addr constant [13 x i8] c"bessel_I1.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [13 x i8] c"bessel_I1.ll\00"
@4 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_I1_e\00"
@5 = private unnamed_addr constant [13 x i8] c"bessel_I1.ll\00"
@6 = private unnamed_addr constant [24 x i8] c"gsl_sf_bessel_I1_scaled\00"
@7 = private unnamed_addr constant [13 x i8] c"bessel_I1.ll\00"
@8 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_I1\00"
@9 = private unnamed_addr constant [13 x i8] c"bessel_I1.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_I1_scaled_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !73 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !85, metadata !86), !dbg !87
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !88, metadata !86), !dbg !89
  call void @llvm.dbg.declare(metadata double* %6, metadata !90, metadata !86), !dbg !91
  store double 0x20000000000000, double* %6, align 8, !dbg !91
  call void @llvm.dbg.declare(metadata double* %7, metadata !92, metadata !86), !dbg !93
  store double 0x3E66A09E667F3BCD, double* %7, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata double* %8, metadata !94, metadata !86), !dbg !95
  %19 = load double, double* %4, align 8, !dbg !96
  %20 = call double @fabs(double %19) #1, !dbg !97
  store double %20, double* %8, align 8, !dbg !95
  %21 = load double, double* %8, align 8, !dbg !98
  %22 = fcmp oeq double %21, 0.000000e+00, !dbg !100
  %23 = call i1 @fCmpInstHandler(double %21, double 0.000000e+00, i1 %22, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910187632, i32 152, i32 8), !dbg !101
  br i1 %23, label %24, label %29, !dbg !101

; <label>:24:                                     ; preds = %2
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !102
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !104
  store double 0.000000e+00, double* %26, align 8, !dbg !105
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !106
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !107
  store double 0.000000e+00, double* %28, align 8, !dbg !108
  store i32 0, i32* %3, align 4, !dbg !109
  br label %177, !dbg !109

; <label>:29:                                     ; preds = %2
  %30 = load double, double* %8, align 8, !dbg !110
  %31 = fcmp olt double %30, 0x20000000000000, !dbg !112
  %32 = call i1 @fCmpInstHandler(double %30, double 0x20000000000000, i1 %31, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910193728, i32 157, i32 13), !dbg !113
  br i1 %32, label %33, label %42, !dbg !113

; <label>:33:                                     ; preds = %29
  br label %34, !dbg !114, !llvm.loop !116

; <label>:34:                                     ; preds = %33
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !117
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !117
  store double 0.000000e+00, double* %36, align 8, !dbg !117
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !117
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !117
  store double 0x10000000000000, double* %38, align 8, !dbg !117
  br label %39, !dbg !117, !llvm.loop !120

; <label>:39:                                     ; preds = %34
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 158, i32 15), !dbg !122
  store i32 15, i32* %3, align 4, !dbg !122
  br label %177, !dbg !122
                                                  ; No predecessors!
  br label %41, !dbg !125

; <label>:41:                                     ; preds = %40
  br label %176, !dbg !127

; <label>:42:                                     ; preds = %29
  %43 = load double, double* %8, align 8, !dbg !128
  %44 = fcmp olt double %43, 0x3E66A09E667F3BCD, !dbg !130
  %45 = call i1 @fCmpInstHandler(double %43, double 0x3E66A09E667F3BCD, i1 %44, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910207776, i32 160, i32 13), !dbg !131
  br i1 %45, label %46, label %53, !dbg !131

; <label>:46:                                     ; preds = %42
  %47 = load double, double* %4, align 8, !dbg !132
  %48 = fmul double 5.000000e-01, %47, !dbg !134
  call void @fMulHandler(double 5.000000e-01, double %47, double %48, i64 0, i64 94115910208888, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910209328, i32 161, i32 22), !dbg !135
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !135
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !136
  store double %48, double* %50, align 8, !dbg !137
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !138
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !139
  store double 0.000000e+00, double* %52, align 8, !dbg !140
  store i32 0, i32* %3, align 4, !dbg !141
  br label %177, !dbg !141

; <label>:53:                                     ; preds = %42
  %54 = load double, double* %8, align 8, !dbg !142
  %55 = fcmp ole double %54, 3.000000e+00, !dbg !144
  %56 = call i1 @fCmpInstHandler(double %54, double 3.000000e+00, i1 %55, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910214688, i32 165, i32 13), !dbg !145
  br i1 %56, label %57, label %99, !dbg !145

; <label>:57:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata double* %9, metadata !146, metadata !86), !dbg !148
  %58 = load double, double* %8, align 8, !dbg !149
  %59 = fsub double -0.000000e+00, %58, !dbg !150
  call void @fSubHandler(double -0.000000e+00, double %58, double %59, i64 0, i64 94115910216920, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910217360, i32 166, i32 27), !dbg !151
  %60 = call double @exp(double %59) #6, !dbg !151
  call void @callOneArgHandler(i32 11, double %59, double %60, i64 94115910217360, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910218112, i32 166, i32 23), !dbg !148
  store double %60, double* %9, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !152, metadata !86), !dbg !153
  %61 = load double, double* %8, align 8, !dbg !154
  %62 = load double, double* %8, align 8, !dbg !155
  %63 = fmul double %61, %62, !dbg !156
  call void @fMulHandler(double %61, double %62, double %63, i64 94115910221448, i64 94115910221800, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910222208, i32 168, i32 27), !dbg !157
  %64 = fdiv double %63, 4.500000e+00, !dbg !157
  call void @fDivHandler(double %63, double 4.500000e+00, double %64, i64 94115910222208, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910222720, i32 168, i32 29), !dbg !158
  %65 = fsub double %64, 1.000000e+00, !dbg !158
  call void @fSubHandler(double %64, double 1.000000e+00, double %65, i64 94115910222720, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910223136, i32 168, i32 33), !dbg !159
  %66 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @bi1_cs, double %65, %struct.gsl_sf_result_struct* %10), !dbg !159
  %67 = load double, double* %4, align 8, !dbg !160
  %68 = load double, double* %9, align 8, !dbg !161
  %69 = fmul double %67, %68, !dbg !162
  call void @fMulHandler(double %67, double %68, double %69, i64 94115910224360, i64 94115910224712, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910226160, i32 169, i32 22), !dbg !163
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !163
  %71 = load double, double* %70, align 8, !dbg !163
  %72 = fadd double 8.750000e-01, %71, !dbg !164
  call void @fAddHandler(double 8.750000e-01, double %71, double %72, i64 0, i64 94115910227000, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910228768, i32 169, i32 36), !dbg !165
  %73 = fmul double %69, %72, !dbg !165
  call void @fMulHandler(double %69, double %72, double %73, i64 94115910226160, i64 94115910228768, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910229152, i32 169, i32 27), !dbg !166
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !166
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !167
  store double %73, double* %75, align 8, !dbg !168
  %76 = load double, double* %9, align 8, !dbg !169
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !170
  %78 = load double, double* %77, align 8, !dbg !170
  %79 = fmul double %76, %78, !dbg !171
  call void @fMulHandler(double %76, double %78, double %79, i64 94115910230792, i64 94115910231624, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910233296, i32 170, i32 23), !dbg !172
  %80 = load double, double* %8, align 8, !dbg !172
  %81 = fmul double %80, 0x3CB0000000000000, !dbg !173
  call void @fMulHandler(double %80, double 0x3CB0000000000000, double %81, i64 94115910233688, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910234160, i32 170, i32 35), !dbg !174
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !174
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !175
  %84 = load double, double* %83, align 8, !dbg !175
  %85 = call double @fabs(double %84) #1, !dbg !176
  %86 = fmul double %81, %85, !dbg !177
  call void @fMulHandler(double %81, double %85, double %86, i64 94115910234160, i64 94115910237120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910237600, i32 170, i32 53), !dbg !178
  %87 = fadd double %79, %86, !dbg !178
  call void @fAddHandler(double %79, double %86, double %87, i64 94115910233296, i64 94115910237600, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910238016, i32 170, i32 31), !dbg !179
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !179
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !180
  store double %87, double* %89, align 8, !dbg !181
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !182
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 0, !dbg !183
  %92 = load double, double* %91, align 8, !dbg !183
  %93 = call double @fabs(double %92) #1, !dbg !184
  %94 = fmul double 0x3CC0000000000000, %93, !dbg !185
  call void @fMulHandler(double 0x3CC0000000000000, double %93, double %94, i64 0, i64 94115910242224, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910242768, i32 171, i32 42), !dbg !186
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !186
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !187
  %97 = load double, double* %96, align 8, !dbg !188
  %98 = fadd double %97, %94, !dbg !188
  call void @fAddHandler(double %97, double %94, double %98, i64 94115910243992, i64 94115910242768, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910244400, i32 171, i32 17), !dbg !188
  store double %98, double* %96, align 8, !dbg !188
  store i32 0, i32* %3, align 4, !dbg !189
  br label %177, !dbg !189

; <label>:99:                                     ; preds = %53
  %100 = load double, double* %8, align 8, !dbg !190
  %101 = fcmp ole double %100, 8.000000e+00, !dbg !192
  %102 = call i1 @fCmpInstHandler(double %100, double 8.000000e+00, i1 %101, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910248688, i32 174, i32 13), !dbg !193
  br i1 %102, label %103, label %140, !dbg !193

; <label>:103:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata double* %11, metadata !194, metadata !86), !dbg !196
  %104 = load double, double* %8, align 8, !dbg !197
  %105 = call double @sqrt(double %104) #6, !dbg !198
  call void @callOneArgHandler(i32 14, double %104, double %105, i64 94115910250920, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910251632, i32 175, i32 23), !dbg !196
  store double %105, double* %11, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !199, metadata !86), !dbg !200
  call void @llvm.dbg.declare(metadata double* %13, metadata !201, metadata !86), !dbg !202
  call void @llvm.dbg.declare(metadata double* %14, metadata !203, metadata !86), !dbg !204
  %106 = load double, double* %8, align 8, !dbg !205
  %107 = fdiv double 4.800000e+01, %106, !dbg !206
  call void @fDivHandler(double 4.800000e+01, double %106, double %107, i64 0, i64 94115910257144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910257616, i32 179, i32 31), !dbg !207
  %108 = fsub double %107, 1.100000e+01, !dbg !207
  call void @fSubHandler(double %107, double 1.100000e+01, double %108, i64 94115910257616, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910258096, i32 179, i32 33), !dbg !208
  %109 = fdiv double %108, 5.000000e+00, !dbg !208
  call void @fDivHandler(double %108, double 5.000000e+00, double %109, i64 94115910258096, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910258576, i32 179, i32 39), !dbg !209
  %110 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @ai1_cs, double %109, %struct.gsl_sf_result_struct* %12), !dbg !209
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !210
  %112 = load double, double* %111, align 8, !dbg !210
  %113 = fadd double 3.750000e-01, %112, !dbg !211
  call void @fAddHandler(double 3.750000e-01, double %112, double %113, i64 0, i64 94115910259944, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910261712, i32 180, i32 16), !dbg !212
  %114 = load double, double* %11, align 8, !dbg !212
  %115 = fdiv double %113, %114, !dbg !213
  call void @fDivHandler(double %113, double %114, double %115, i64 94115910261712, i64 94115910262072, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910262480, i32 180, i32 25), !dbg !214
  store double %115, double* %13, align 8, !dbg !214
  %116 = load double, double* %4, align 8, !dbg !215
  %117 = fcmp ogt double %116, 0.000000e+00, !dbg !216
  %118 = call i1 @fCmpInstHandler(double %116, double 0.000000e+00, i1 %117, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910263696, i32 181, i32 12), !dbg !215
  %119 = select i1 %118, double 1.000000e+00, double -1.000000e+00, !dbg !215
  store double %119, double* %14, align 8, !dbg !217
  %120 = load double, double* %14, align 8, !dbg !218
  %121 = load double, double* %13, align 8, !dbg !219
  %122 = fmul double %120, %121, !dbg !220
  call void @fMulHandler(double %120, double %121, double %122, i64 94115910266200, i64 94115910266584, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910266992, i32 182, i32 22), !dbg !221
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !221
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 0, !dbg !222
  store double %122, double* %124, align 8, !dbg !223
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !224
  %126 = load double, double* %125, align 8, !dbg !224
  %127 = load double, double* %11, align 8, !dbg !225
  %128 = fdiv double %126, %127, !dbg !226
  call void @fDivHandler(double %126, double %127, double %128, i64 94115910269080, i64 94115910270728, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910271136, i32 183, i32 26), !dbg !227
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !227
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 1, !dbg !228
  store double %128, double* %130, align 8, !dbg !229
  %131 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !230
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %131, i32 0, i32 0, !dbg !231
  %133 = load double, double* %132, align 8, !dbg !231
  %134 = call double @fabs(double %133) #1, !dbg !232
  %135 = fmul double 0x3CC0000000000000, %134, !dbg !233
  call void @fMulHandler(double 0x3CC0000000000000, double %134, double %135, i64 0, i64 94115910275344, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910277888, i32 184, i32 42), !dbg !234
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !234
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 1, !dbg !235
  %138 = load double, double* %137, align 8, !dbg !236
  %139 = fadd double %138, %135, !dbg !236
  call void @fAddHandler(double %138, double %135, double %139, i64 94115910279112, i64 94115910277888, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910279520, i32 184, i32 17), !dbg !236
  store double %139, double* %137, align 8, !dbg !236
  store i32 0, i32* %3, align 4, !dbg !237
  br label %177, !dbg !237

; <label>:140:                                    ; preds = %99
  call void @llvm.dbg.declare(metadata double* %15, metadata !238, metadata !86), !dbg !240
  %141 = load double, double* %8, align 8, !dbg !241
  %142 = call double @sqrt(double %141) #6, !dbg !242
  call void @callOneArgHandler(i32 14, double %141, double %142, i64 94115910284424, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910284864, i32 188, i32 23), !dbg !240
  store double %142, double* %15, align 8, !dbg !240
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !243, metadata !86), !dbg !244
  call void @llvm.dbg.declare(metadata double* %17, metadata !245, metadata !86), !dbg !246
  call void @llvm.dbg.declare(metadata double* %18, metadata !247, metadata !86), !dbg !248
  %143 = load double, double* %8, align 8, !dbg !249
  %144 = fdiv double 1.600000e+01, %143, !dbg !250
  call void @fDivHandler(double 1.600000e+01, double %143, double %144, i64 0, i64 94115910290296, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910290768, i32 192, i32 31), !dbg !251
  %145 = fsub double %144, 1.000000e+00, !dbg !251
  call void @fSubHandler(double %144, double 1.000000e+00, double %145, i64 94115910290768, i64 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910291184, i32 192, i32 33), !dbg !252
  %146 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @ai12_cs, double %145, %struct.gsl_sf_result_struct* %16), !dbg !252
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !253
  %148 = load double, double* %147, align 8, !dbg !253
  %149 = fadd double 3.750000e-01, %148, !dbg !254
  call void @fAddHandler(double 3.750000e-01, double %148, double %149, i64 0, i64 94115910292552, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910294256, i32 193, i32 16), !dbg !255
  %150 = load double, double* %15, align 8, !dbg !255
  %151 = fdiv double %149, %150, !dbg !256
  call void @fDivHandler(double %149, double %150, double %151, i64 94115910294256, i64 94115910294616, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910295024, i32 193, i32 25), !dbg !257
  store double %151, double* %17, align 8, !dbg !257
  %152 = load double, double* %4, align 8, !dbg !258
  %153 = fcmp ogt double %152, 0.000000e+00, !dbg !259
  %154 = call i1 @fCmpInstHandler(double %152, double 0.000000e+00, i1 %153, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910296240, i32 194, i32 12), !dbg !258
  %155 = select i1 %154, double 1.000000e+00, double -1.000000e+00, !dbg !258
  store double %155, double* %18, align 8, !dbg !260
  %156 = load double, double* %18, align 8, !dbg !261
  %157 = load double, double* %17, align 8, !dbg !262
  %158 = fmul double %156, %157, !dbg !263
  call void @fMulHandler(double %156, double %157, double %158, i64 94115910298744, i64 94115910299128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910299536, i32 195, i32 22), !dbg !264
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !264
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 0, !dbg !265
  store double %158, double* %160, align 8, !dbg !266
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !267
  %162 = load double, double* %161, align 8, !dbg !267
  %163 = load double, double* %15, align 8, !dbg !268
  %164 = fdiv double %162, %163, !dbg !269
  call void @fDivHandler(double %162, double %163, double %164, i64 94115910301624, i64 94115910303272, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910303680, i32 196, i32 26), !dbg !270
  %165 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !270
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %165, i32 0, i32 1, !dbg !271
  store double %164, double* %166, align 8, !dbg !272
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !273
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 0, !dbg !274
  %169 = load double, double* %168, align 8, !dbg !274
  %170 = call double @fabs(double %169) #1, !dbg !275
  %171 = fmul double 0x3CC0000000000000, %170, !dbg !276
  call void @fMulHandler(double 0x3CC0000000000000, double %170, double %171, i64 0, i64 94115910307888, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910308368, i32 197, i32 42), !dbg !277
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !277
  %173 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %172, i32 0, i32 1, !dbg !278
  %174 = load double, double* %173, align 8, !dbg !279
  %175 = fadd double %174, %171, !dbg !279
  call void @fAddHandler(double %174, double %171, double %175, i64 94115910309592, i64 94115910308368, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94115910310000, i32 197, i32 17), !dbg !279
  store double %175, double* %173, align 8, !dbg !279
  store i32 0, i32* %3, align 4, !dbg !280
  br label %177, !dbg !280

; <label>:176:                                    ; preds = %41
  br label %177

; <label>:177:                                    ; preds = %176, %140, %103, %57, %46, %39, %24
  %178 = load i32, i32* %3, align 4, !dbg !281
  ret i32 %178, !dbg !281
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #5 !dbg !282 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !288, metadata !86), !dbg !289
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !290, metadata !86), !dbg !291
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !292, metadata !86), !dbg !293
  call void @llvm.dbg.declare(metadata i32* %7, metadata !294, metadata !86), !dbg !295
  call void @llvm.dbg.declare(metadata double* %8, metadata !296, metadata !86), !dbg !297
  store double 0.000000e+00, double* %8, align 8, !dbg !297
  call void @llvm.dbg.declare(metadata double* %9, metadata !298, metadata !86), !dbg !299
  store double 0.000000e+00, double* %9, align 8, !dbg !299
  call void @llvm.dbg.declare(metadata double* %10, metadata !300, metadata !86), !dbg !301
  %15 = load double, double* %5, align 8, !dbg !302
  %16 = fmul double 2.000000e+00, %15, !dbg !303
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94115910223736, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910328592, i32 11, i32 19), !dbg !304
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !304
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !305
  %19 = load double, double* %18, align 8, !dbg !305
  %20 = fsub double %16, %19, !dbg !306
  call void @fSubHandler(double %16, double %19, double %20, i64 94115910328592, i64 94115910203976, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910331328, i32 11, i32 22), !dbg !307
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !307
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !308
  %23 = load double, double* %22, align 8, !dbg !308
  %24 = fsub double %20, %23, !dbg !309
  call void @fSubHandler(double %20, double %23, double %24, i64 94115910331328, i64 94115910156904, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910334096, i32 11, i32 30), !dbg !310
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !310
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !311
  %27 = load double, double* %26, align 8, !dbg !311
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !312
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !313
  %30 = load double, double* %29, align 8, !dbg !313
  %31 = fsub double %27, %30, !dbg !314
  call void @fSubHandler(double %27, double %30, double %31, i64 94115910335320, i64 94115910337800, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910339472, i32 11, i32 48), !dbg !315
  %32 = fdiv double %24, %31, !dbg !315
  call void @fDivHandler(double %24, double %31, double %32, i64 94115910334096, i64 94115910339472, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910339888, i32 11, i32 39), !dbg !301
  store double %32, double* %10, align 8, !dbg !301
  call void @llvm.dbg.declare(metadata double* %11, metadata !316, metadata !86), !dbg !317
  %33 = load double, double* %10, align 8, !dbg !318
  %34 = fmul double 2.000000e+00, %33, !dbg !319
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94115910342936, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910343344, i32 12, i32 19), !dbg !317
  store double %34, double* %11, align 8, !dbg !317
  call void @llvm.dbg.declare(metadata double* %12, metadata !320, metadata !86), !dbg !321
  store double 0.000000e+00, double* %12, align 8, !dbg !321
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !322
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !324
  %37 = load i32, i32* %36, align 8, !dbg !324
  store i32 %37, i32* %7, align 4, !dbg !325
  br label %38, !dbg !326

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !327
  %40 = icmp sge i32 %39, 1, !dbg !330
  %41 = sext i32 %39 to i64, !dbg !331
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910353984, i32 16, i32 23), !dbg !331
  br i1 %42, label %43, label %80, !dbg !331

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !332, metadata !86), !dbg !334
  %44 = load double, double* %8, align 8, !dbg !335
  store double %44, double* %13, align 8, !dbg !334
  %45 = load double, double* %11, align 8, !dbg !336
  %46 = load double, double* %8, align 8, !dbg !337
  %47 = fmul double %45, %46, !dbg !338
  call void @fMulHandler(double %45, double %46, double %47, i64 94115910358184, i64 94115910358568, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910358976, i32 18, i32 11), !dbg !339
  %48 = load double, double* %9, align 8, !dbg !339
  %49 = fsub double %47, %48, !dbg !340
  call void @fSubHandler(double %47, double %48, double %49, i64 94115910358976, i64 94115910359368, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910359776, i32 18, i32 14), !dbg !341
  %50 = load i32, i32* %7, align 4, !dbg !341
  %51 = sext i32 %50 to i64, !dbg !342
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !342
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !343
  %54 = load double*, double** %53, align 8, !dbg !343
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !342
  %56 = load double, double* %55, align 8, !dbg !342
  %57 = fadd double %49, %56, !dbg !344
  call void @fAddHandler(double %49, double %56, double %57, i64 94115910359776, i64 94115910364824, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910364944, i32 18, i32 19), !dbg !345
  store double %57, double* %8, align 8, !dbg !345
  %58 = load double, double* %11, align 8, !dbg !346
  %59 = load double, double* %13, align 8, !dbg !347
  %60 = fmul double %58, %59, !dbg !348
  call void @fMulHandler(double %58, double %59, double %60, i64 94115910365752, i64 94115910366136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910366544, i32 19, i32 17), !dbg !349
  %61 = call double @fabs(double %60) #1, !dbg !349
  %62 = load double, double* %9, align 8, !dbg !350
  %63 = call double @fabs(double %62) #1, !dbg !351
  %64 = fadd double %61, %63, !dbg !353
  call void @fAddHandler(double %61, double %63, double %64, i64 94115910367024, i64 94115910367952, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910368432, i32 19, i32 24), !dbg !354
  %65 = load i32, i32* %7, align 4, !dbg !354
  %66 = sext i32 %65 to i64, !dbg !355
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !355
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !356
  %69 = load double*, double** %68, align 8, !dbg !356
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !355
  %71 = load double, double* %70, align 8, !dbg !355
  %72 = call double @fabs(double %71) #1, !dbg !357
  %73 = fadd double %64, %72, !dbg !359
  call void @fAddHandler(double %64, double %72, double %73, i64 94115910368432, i64 94115910373664, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910374144, i32 19, i32 35), !dbg !360
  %74 = load double, double* %12, align 8, !dbg !360
  %75 = fadd double %74, %73, !dbg !360
  call void @fAddHandler(double %74, double %73, double %75, i64 94115910374536, i64 94115910374144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910374944, i32 19, i32 7), !dbg !360
  store double %75, double* %12, align 8, !dbg !360
  %76 = load double, double* %13, align 8, !dbg !361
  store double %76, double* %9, align 8, !dbg !362
  br label %77, !dbg !363

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !364
  %79 = add nsw i32 %78, -1, !dbg !364
  store i32 %79, i32* %7, align 4, !dbg !364
  br label %38, !dbg !366, !llvm.loop !367

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !369, metadata !86), !dbg !371
  %81 = load double, double* %8, align 8, !dbg !372
  store double %81, double* %14, align 8, !dbg !371
  %82 = load double, double* %10, align 8, !dbg !373
  %83 = load double, double* %8, align 8, !dbg !374
  %84 = fmul double %82, %83, !dbg !375
  call void @fMulHandler(double %82, double %83, double %84, i64 94115910384008, i64 94115910384392, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910384800, i32 25, i32 10), !dbg !376
  %85 = load double, double* %9, align 8, !dbg !376
  %86 = fsub double %84, %85, !dbg !377
  call void @fSubHandler(double %84, double %85, double %86, i64 94115910384800, i64 94115910385192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910385600, i32 25, i32 13), !dbg !378
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !378
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !379
  %89 = load double*, double** %88, align 8, !dbg !379
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !378
  %91 = load double, double* %90, align 8, !dbg !378
  %92 = fmul double 5.000000e-01, %91, !dbg !380
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94115910390232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910390384, i32 25, i32 24), !dbg !381
  %93 = fadd double %86, %92, !dbg !381
  call void @fAddHandler(double %86, double %92, double %93, i64 94115910385600, i64 94115910390384, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910390768, i32 25, i32 18), !dbg !382
  store double %93, double* %8, align 8, !dbg !382
  %94 = load double, double* %10, align 8, !dbg !383
  %95 = load double, double* %14, align 8, !dbg !384
  %96 = fmul double %94, %95, !dbg !385
  call void @fMulHandler(double %94, double %95, double %96, i64 94115910391576, i64 94115910391960, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910392368, i32 26, i32 16), !dbg !386
  %97 = call double @fabs(double %96) #1, !dbg !386
  %98 = load double, double* %9, align 8, !dbg !387
  %99 = call double @fabs(double %98) #1, !dbg !388
  %100 = fadd double %97, %99, !dbg !390
  call void @fAddHandler(double %97, double %99, double %100, i64 94115910392848, i64 94115910393776, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910394256, i32 26, i32 23), !dbg !391
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !391
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !392
  %103 = load double*, double** %102, align 8, !dbg !392
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !391
  %105 = load double, double* %104, align 8, !dbg !391
  %106 = call double @fabs(double %105) #1, !dbg !393
  %107 = fmul double 5.000000e-01, %106, !dbg !395
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94115910399008, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910399520, i32 26, i32 40), !dbg !396
  %108 = fadd double %100, %107, !dbg !396
  call void @fAddHandler(double %100, double %107, double %108, i64 94115910394256, i64 94115910399520, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910399904, i32 26, i32 34), !dbg !397
  %109 = load double, double* %12, align 8, !dbg !397
  %110 = fadd double %109, %108, !dbg !397
  call void @fAddHandler(double %109, double %108, double %110, i64 94115910400296, i64 94115910399904, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910400704, i32 26, i32 7), !dbg !397
  store double %110, double* %12, align 8, !dbg !397
  %111 = load double, double* %8, align 8, !dbg !398
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !399
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !400
  store double %111, double* %113, align 8, !dbg !401
  %114 = load double, double* %12, align 8, !dbg !402
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !403
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94115910404120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910404528, i32 30, i32 33), !dbg !404
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !404
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !405
  %118 = load i32, i32* %117, align 8, !dbg !405
  %119 = sext i32 %118 to i64, !dbg !406
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !406
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !407
  %122 = load double*, double** %121, align 8, !dbg !407
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !406
  %124 = load double, double* %123, align 8, !dbg !406
  %125 = call double @fabs(double %124) #1, !dbg !408
  %126 = fadd double %115, %125, !dbg !409
  call void @fAddHandler(double %115, double %125, double %126, i64 94115910404528, i64 94115910411856, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94115910412336, i32 30, i32 37), !dbg !410
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !410
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !411
  store double %126, double* %128, align 8, !dbg !412
  ret i32 0, !dbg !413
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_I1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !414 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !415, metadata !86), !dbg !416
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !417, metadata !86), !dbg !418
  call void @llvm.dbg.declare(metadata double* %6, metadata !419, metadata !86), !dbg !420
  store double 0x20000000000000, double* %6, align 8, !dbg !420
  call void @llvm.dbg.declare(metadata double* %7, metadata !421, metadata !86), !dbg !422
  store double 0x3E66A09E667F3BCD, double* %7, align 8, !dbg !422
  call void @llvm.dbg.declare(metadata double* %8, metadata !423, metadata !86), !dbg !424
  %12 = load double, double* %4, align 8, !dbg !425
  %13 = call double @fabs(double %12) #1, !dbg !426
  store double %13, double* %8, align 8, !dbg !424
  %14 = load double, double* %8, align 8, !dbg !427
  %15 = fcmp oeq double %14, 0.000000e+00, !dbg !429
  %16 = call i1 @fCmpInstHandler(double %14, double 0.000000e+00, i1 %15, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910428544, i32 211, i32 8), !dbg !430
  br i1 %16, label %17, label %22, !dbg !430

; <label>:17:                                     ; preds = %2
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !431
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !433
  store double 0.000000e+00, double* %19, align 8, !dbg !434
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !435
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !436
  store double 0.000000e+00, double* %21, align 8, !dbg !437
  store i32 0, i32* %3, align 4, !dbg !438
  br label %130, !dbg !438

; <label>:22:                                     ; preds = %2
  %23 = load double, double* %8, align 8, !dbg !439
  %24 = fcmp olt double %23, 0x20000000000000, !dbg !441
  %25 = call i1 @fCmpInstHandler(double %23, double 0x20000000000000, i1 %24, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910434640, i32 216, i32 13), !dbg !442
  br i1 %25, label %26, label %35, !dbg !442

; <label>:26:                                     ; preds = %22
  br label %27, !dbg !443, !llvm.loop !445

; <label>:27:                                     ; preds = %26
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !446
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !446
  store double 0.000000e+00, double* %29, align 8, !dbg !446
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !446
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !446
  store double 0x10000000000000, double* %31, align 8, !dbg !446
  br label %32, !dbg !446, !llvm.loop !449

; <label>:32:                                     ; preds = %27
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 217, i32 15), !dbg !451
  store i32 15, i32* %3, align 4, !dbg !451
  br label %130, !dbg !451
                                                  ; No predecessors!
  br label %34, !dbg !454

; <label>:34:                                     ; preds = %33
  br label %129, !dbg !456

; <label>:35:                                     ; preds = %22
  %36 = load double, double* %8, align 8, !dbg !457
  %37 = fcmp olt double %36, 0x3E66A09E667F3BCD, !dbg !459
  %38 = call i1 @fCmpInstHandler(double %36, double 0x3E66A09E667F3BCD, i1 %37, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910443200, i32 219, i32 13), !dbg !460
  br i1 %38, label %39, label %46, !dbg !460

; <label>:39:                                     ; preds = %35
  %40 = load double, double* %4, align 8, !dbg !461
  %41 = fmul double 5.000000e-01, %40, !dbg !463
  call void @fMulHandler(double 5.000000e-01, double %40, double %41, i64 0, i64 94115910444312, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910444688, i32 220, i32 22), !dbg !464
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !464
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !465
  store double %41, double* %43, align 8, !dbg !466
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !467
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !468
  store double 0.000000e+00, double* %45, align 8, !dbg !469
  store i32 0, i32* %3, align 4, !dbg !470
  br label %130, !dbg !470

; <label>:46:                                     ; preds = %35
  %47 = load double, double* %8, align 8, !dbg !471
  %48 = fcmp ole double %47, 3.000000e+00, !dbg !473
  %49 = call i1 @fCmpInstHandler(double %47, double 3.000000e+00, i1 %48, i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910449984, i32 224, i32 13), !dbg !474
  br i1 %49, label %50, label %79, !dbg !474

; <label>:50:                                     ; preds = %46
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !475, metadata !86), !dbg !477
  %51 = load double, double* %8, align 8, !dbg !478
  %52 = load double, double* %8, align 8, !dbg !479
  %53 = fmul double %51, %52, !dbg !480
  call void @fMulHandler(double %51, double %52, double %53, i64 94115910452120, i64 94115910452472, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910452880, i32 226, i32 27), !dbg !481
  %54 = fdiv double %53, 4.500000e+00, !dbg !481
  call void @fDivHandler(double %53, double 4.500000e+00, double %54, i64 94115910452880, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910453328, i32 226, i32 29), !dbg !482
  %55 = fsub double %54, 1.000000e+00, !dbg !482
  call void @fSubHandler(double %54, double 1.000000e+00, double %55, i64 94115910453328, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910453744, i32 226, i32 33), !dbg !483
  %56 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @bi1_cs, double %55, %struct.gsl_sf_result_struct* %9), !dbg !483
  %57 = load double, double* %4, align 8, !dbg !484
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !485
  %59 = load double, double* %58, align 8, !dbg !485
  %60 = fadd double 8.750000e-01, %59, !dbg !486
  call void @fAddHandler(double 8.750000e-01, double %59, double %60, i64 0, i64 94115910455496, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910457200, i32 227, i32 31), !dbg !487
  %61 = fmul double %57, %60, !dbg !487
  call void @fMulHandler(double %57, double %60, double %61, i64 94115910454696, i64 94115910457200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910457584, i32 227, i32 22), !dbg !488
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !488
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !489
  store double %61, double* %63, align 8, !dbg !490
  %64 = load double, double* %8, align 8, !dbg !491
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !492
  %66 = load double, double* %65, align 8, !dbg !492
  %67 = fmul double %64, %66, !dbg !493
  call void @fMulHandler(double %64, double %66, double %67, i64 94115910459224, i64 94115910460056, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910461728, i32 228, i32 22), !dbg !494
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !494
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 1, !dbg !495
  store double %67, double* %69, align 8, !dbg !496
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !497
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !498
  %72 = load double, double* %71, align 8, !dbg !498
  %73 = call double @fabs(double %72) #1, !dbg !499
  %74 = fmul double 0x3CC0000000000000, %73, !dbg !500
  call void @fMulHandler(double 0x3CC0000000000000, double %73, double %74, i64 0, i64 94115910465936, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910466416, i32 229, i32 42), !dbg !501
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !501
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !502
  %77 = load double, double* %76, align 8, !dbg !503
  %78 = fadd double %77, %74, !dbg !503
  call void @fAddHandler(double %77, double %74, double %78, i64 94115910467640, i64 94115910466416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910468048, i32 229, i32 17), !dbg !503
  store double %78, double* %76, align 8, !dbg !503
  store i32 0, i32* %3, align 4, !dbg !504
  br label %130, !dbg !504

; <label>:79:                                     ; preds = %46
  %80 = load double, double* %8, align 8, !dbg !505
  %81 = fcmp olt double %80, 0x40862E42FEFA39EF, !dbg !507
  %82 = call i1 @fCmpInstHandler(double %80, double 0x40862E42FEFA39EF, i1 %81, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910472304, i32 232, i32 13), !dbg !508
  br i1 %82, label %83, label %117, !dbg !508

; <label>:83:                                     ; preds = %79
  call void @llvm.dbg.declare(metadata double* %10, metadata !509, metadata !86), !dbg !511
  %84 = load double, double* %8, align 8, !dbg !512
  %85 = call double @exp(double %84) #6, !dbg !513
  call void @callOneArgHandler(i32 11, double %84, double %85, i64 94115910474472, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910474912, i32 233, i32 23), !dbg !511
  store double %85, double* %10, align 8, !dbg !511
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !514, metadata !86), !dbg !515
  %86 = load double, double* %4, align 8, !dbg !516
  %87 = call i32 @gsl_sf_bessel_I1_scaled_e(double %86, %struct.gsl_sf_result_struct* %11), !dbg !517
  %88 = load double, double* %10, align 8, !dbg !518
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !519
  %90 = load double, double* %89, align 8, !dbg !519
  %91 = fmul double %88, %90, !dbg !520
  call void @fMulHandler(double %88, double %90, double %91, i64 94115910479080, i64 94115910479880, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910481552, i32 236, i32 23), !dbg !521
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !521
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !522
  store double %91, double* %93, align 8, !dbg !523
  %94 = load double, double* %10, align 8, !dbg !524
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !525
  %96 = load double, double* %95, align 8, !dbg !525
  %97 = fmul double %94, %96, !dbg !526
  call void @fMulHandler(double %94, double %96, double %97, i64 94115910483192, i64 94115910484024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910485696, i32 237, i32 23), !dbg !527
  %98 = load double, double* %8, align 8, !dbg !527
  %99 = fmul double %98, 0x3CB0000000000000, !dbg !528
  call void @fMulHandler(double %98, double 0x3CB0000000000000, double %99, i64 94115910486088, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910486496, i32 237, i32 43), !dbg !529
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !529
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 0, !dbg !530
  %102 = load double, double* %101, align 8, !dbg !530
  %103 = call double @fabs(double %102) #1, !dbg !531
  %104 = fmul double %99, %103, !dbg !532
  call void @fMulHandler(double %99, double %103, double %104, i64 94115910486496, i64 94115910489456, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910489936, i32 237, i32 61), !dbg !533
  %105 = fadd double %97, %104, !dbg !533
  call void @fAddHandler(double %97, double %104, double %105, i64 94115910485696, i64 94115910489936, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910490352, i32 237, i32 39), !dbg !534
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !534
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 1, !dbg !535
  store double %105, double* %107, align 8, !dbg !536
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !537
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 0, !dbg !538
  %110 = load double, double* %109, align 8, !dbg !538
  %111 = call double @fabs(double %110) #1, !dbg !539
  %112 = fmul double 0x3CC0000000000000, %111, !dbg !540
  call void @fMulHandler(double 0x3CC0000000000000, double %111, double %112, i64 0, i64 94115910494560, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910495040, i32 238, i32 42), !dbg !541
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !541
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 1, !dbg !542
  %115 = load double, double* %114, align 8, !dbg !543
  %116 = fadd double %115, %112, !dbg !543
  call void @fAddHandler(double %115, double %112, double %116, i64 94115910496264, i64 94115910495040, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94115910496672, i32 238, i32 17), !dbg !543
  store double %116, double* %114, align 8, !dbg !543
  store i32 0, i32* %3, align 4, !dbg !544
  br label %130, !dbg !544

; <label>:117:                                    ; preds = %79
  br label %118, !dbg !545, !llvm.loop !547

; <label>:118:                                    ; preds = %117
  %119 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !548
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %119, i32 0, i32 0, !dbg !548
  store double 0x7FF0000000000000, double* %120, align 8, !dbg !548
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !548
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 1, !dbg !548
  store double 0x7FF0000000000000, double* %122, align 8, !dbg !548
  br label %123, !dbg !548, !llvm.loop !551

; <label>:123:                                    ; preds = %118
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 242, i32 16), !dbg !553
  store i32 16, i32* %3, align 4, !dbg !553
  br label %130, !dbg !553
                                                  ; No predecessors!
  br label %125, !dbg !556

; <label>:125:                                    ; preds = %124
  br label %126

; <label>:126:                                    ; preds = %125
  br label %127

; <label>:127:                                    ; preds = %126
  br label %128

; <label>:128:                                    ; preds = %127
  br label %129

; <label>:129:                                    ; preds = %128, %34
  br label %130

; <label>:130:                                    ; preds = %129, %123, %83, %50, %39, %32, %17
  %131 = load i32, i32* %3, align 4, !dbg !558
  ret i32 %131, !dbg !558
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_I1_scaled(double) #0 !dbg !559 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !562, metadata !86), !dbg !563
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !564, metadata !86), !dbg !565
  call void @llvm.dbg.declare(metadata i32* %5, metadata !566, metadata !86), !dbg !565
  %6 = load double, double* %3, align 8, !dbg !565
  %7 = call i32 @gsl_sf_bessel_I1_scaled_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !565
  store i32 %7, i32* %5, align 4, !dbg !565
  %8 = load i32, i32* %5, align 4, !dbg !567
  %9 = icmp ne i32 %8, 0, !dbg !567
  %10 = sext i32 %8 to i64, !dbg !565
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94115910517168, i32 252, i32 3), !dbg !565
  br i1 %11, label %12, label %18, !dbg !565

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !569, !llvm.loop !572

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !574
  call void @gsl_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 252, i32 %14), !dbg !574
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !574
  %16 = load double, double* %15, align 8, !dbg !574
  store double %16, double* %2, align 8, !dbg !574
  br label %21, !dbg !574
                                                  ; No predecessors!
  br label %18, !dbg !577

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !579
  %20 = load double, double* %19, align 8, !dbg !579
  store double %20, double* %2, align 8, !dbg !579
  br label %21, !dbg !579

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !581
  ret double %22, !dbg !581
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_I1(double) #0 !dbg !582 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !583, metadata !86), !dbg !584
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !585, metadata !86), !dbg !586
  call void @llvm.dbg.declare(metadata i32* %5, metadata !587, metadata !86), !dbg !586
  %6 = load double, double* %3, align 8, !dbg !586
  %7 = call i32 @gsl_sf_bessel_I1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !586
  store i32 %7, i32* %5, align 4, !dbg !586
  %8 = load i32, i32* %5, align 4, !dbg !588
  %9 = icmp ne i32 %8, 0, !dbg !588
  %10 = sext i32 %8 to i64, !dbg !586
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94115910534464, i32 257, i32 3), !dbg !586
  br i1 %11, label %12, label %18, !dbg !586

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !590, !llvm.loop !593

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !595
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 257, i32 %14), !dbg !595
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !595
  %16 = load double, double* %15, align 8, !dbg !595
  store double %16, double* %2, align 8, !dbg !595
  br label %21, !dbg !595
                                                  ; No predecessors!
  br label %18, !dbg !598

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !600
  %20 = load double, double* %19, align 8, !dbg !600
  store double %20, double* %2, align 8, !dbg !600
  br label %21, !dbg !600

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !602
  ret double %22, !dbg !602
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
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!69, !70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_I1.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60, !64, !65}
!42 = distinct !DIGlobalVariable(name: "bi1_cs", scope: !0, file: !1, line: 73, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bi1_cs)
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
!55 = distinct !DIGlobalVariable(name: "bi1_data", scope: !0, file: !1, line: 60, type: !56, isLocal: true, isDefinition: true, variable: [11 x double]* @bi1_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 704, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 11)
!59 = distinct !DIGlobalVariable(name: "ai1_cs", scope: !0, file: !1, line: 103, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @ai1_cs)
!60 = distinct !DIGlobalVariable(name: "ai1_data", scope: !0, file: !1, line: 80, type: !61, isLocal: true, isDefinition: true, variable: [21 x double]* @ai1_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1344, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 21)
!64 = distinct !DIGlobalVariable(name: "ai12_cs", scope: !0, file: !1, line: 134, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @ai12_cs)
!65 = distinct !DIGlobalVariable(name: "ai12_data", scope: !0, file: !1, line: 110, type: !66, isLocal: true, isDefinition: true, variable: [22 x double]* @ai12_data)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1408, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 22)
!69 = !{i32 2, !"Dwarf Version", i32 4}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"PIC Level", i32 2}
!72 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!73 = distinct !DISubprogram(name: "gsl_sf_bessel_I1_scaled_e", scope: !1, file: !1, line: 144, type: !74, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!74 = !DISubroutineType(types: !75)
!75 = !{!51, !76, !77}
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !79, line: 41, baseType: !80)
!79 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !79, line: 37, size: 128, align: 64, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !80, file: !79, line: 38, baseType: !49, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !80, file: !79, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!84 = !{}
!85 = !DILocalVariable(name: "x", arg: 1, scope: !73, file: !1, line: 144, type: !76)
!86 = !DIExpression()
!87 = !DILocation(line: 144, column: 44, scope: !73)
!88 = !DILocalVariable(name: "result", arg: 2, scope: !73, file: !1, line: 144, type: !77)
!89 = !DILocation(line: 144, column: 63, scope: !73)
!90 = !DILocalVariable(name: "xmin", scope: !73, file: !1, line: 146, type: !76)
!91 = !DILocation(line: 146, column: 16, scope: !73)
!92 = !DILocalVariable(name: "x_small", scope: !73, file: !1, line: 147, type: !76)
!93 = !DILocation(line: 147, column: 16, scope: !73)
!94 = !DILocalVariable(name: "y", scope: !73, file: !1, line: 148, type: !76)
!95 = !DILocation(line: 148, column: 16, scope: !73)
!96 = !DILocation(line: 148, column: 25, scope: !73)
!97 = !DILocation(line: 148, column: 20, scope: !73)
!98 = !DILocation(line: 152, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !73, file: !1, line: 152, column: 6)
!100 = !DILocation(line: 152, column: 8, scope: !99)
!101 = !DILocation(line: 152, column: 6, scope: !73)
!102 = !DILocation(line: 153, column: 5, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 152, column: 16)
!104 = !DILocation(line: 153, column: 13, scope: !103)
!105 = !DILocation(line: 153, column: 17, scope: !103)
!106 = !DILocation(line: 154, column: 5, scope: !103)
!107 = !DILocation(line: 154, column: 13, scope: !103)
!108 = !DILocation(line: 154, column: 17, scope: !103)
!109 = !DILocation(line: 155, column: 5, scope: !103)
!110 = !DILocation(line: 157, column: 11, scope: !111)
!111 = distinct !DILexicalBlock(scope: !99, file: !1, line: 157, column: 11)
!112 = !DILocation(line: 157, column: 13, scope: !111)
!113 = !DILocation(line: 157, column: 11, scope: !99)
!114 = !DILocation(line: 158, column: 5, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 157, column: 21)
!116 = distinct !{!116, !114}
!117 = !DILocation(line: 158, column: 5, scope: !118)
!118 = !DILexicalBlockFile(scope: !119, file: !1, discriminator: 1)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 158, column: 5)
!120 = distinct !{!120, !121}
!121 = !DILocation(line: 158, column: 5, scope: !119)
!122 = !DILocation(line: 158, column: 5, scope: !123)
!123 = !DILexicalBlockFile(scope: !124, file: !1, discriminator: 2)
!124 = distinct !DILexicalBlock(scope: !119, file: !1, line: 158, column: 5)
!125 = !DILocation(line: 158, column: 5, scope: !126)
!126 = !DILexicalBlockFile(scope: !119, file: !1, discriminator: 3)
!127 = !DILocation(line: 159, column: 3, scope: !115)
!128 = !DILocation(line: 160, column: 11, scope: !129)
!129 = distinct !DILexicalBlock(scope: !111, file: !1, line: 160, column: 11)
!130 = !DILocation(line: 160, column: 13, scope: !129)
!131 = !DILocation(line: 160, column: 11, scope: !111)
!132 = !DILocation(line: 161, column: 23, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 160, column: 24)
!134 = !DILocation(line: 161, column: 22, scope: !133)
!135 = !DILocation(line: 161, column: 5, scope: !133)
!136 = !DILocation(line: 161, column: 13, scope: !133)
!137 = !DILocation(line: 161, column: 17, scope: !133)
!138 = !DILocation(line: 162, column: 5, scope: !133)
!139 = !DILocation(line: 162, column: 13, scope: !133)
!140 = !DILocation(line: 162, column: 17, scope: !133)
!141 = !DILocation(line: 163, column: 5, scope: !133)
!142 = !DILocation(line: 165, column: 11, scope: !143)
!143 = distinct !DILexicalBlock(scope: !129, file: !1, line: 165, column: 11)
!144 = !DILocation(line: 165, column: 13, scope: !143)
!145 = !DILocation(line: 165, column: 11, scope: !129)
!146 = !DILocalVariable(name: "ey", scope: !147, file: !1, line: 166, type: !76)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 165, column: 21)
!148 = !DILocation(line: 166, column: 18, scope: !147)
!149 = !DILocation(line: 166, column: 28, scope: !147)
!150 = !DILocation(line: 166, column: 27, scope: !147)
!151 = !DILocation(line: 166, column: 23, scope: !147)
!152 = !DILocalVariable(name: "c", scope: !147, file: !1, line: 167, type: !78)
!153 = !DILocation(line: 167, column: 19, scope: !147)
!154 = !DILocation(line: 168, column: 26, scope: !147)
!155 = !DILocation(line: 168, column: 28, scope: !147)
!156 = !DILocation(line: 168, column: 27, scope: !147)
!157 = !DILocation(line: 168, column: 29, scope: !147)
!158 = !DILocation(line: 168, column: 33, scope: !147)
!159 = !DILocation(line: 168, column: 5, scope: !147)
!160 = !DILocation(line: 169, column: 20, scope: !147)
!161 = !DILocation(line: 169, column: 24, scope: !147)
!162 = !DILocation(line: 169, column: 22, scope: !147)
!163 = !DILocation(line: 169, column: 40, scope: !147)
!164 = !DILocation(line: 169, column: 36, scope: !147)
!165 = !DILocation(line: 169, column: 27, scope: !147)
!166 = !DILocation(line: 169, column: 5, scope: !147)
!167 = !DILocation(line: 169, column: 13, scope: !147)
!168 = !DILocation(line: 169, column: 18, scope: !147)
!169 = !DILocation(line: 170, column: 20, scope: !147)
!170 = !DILocation(line: 170, column: 27, scope: !147)
!171 = !DILocation(line: 170, column: 23, scope: !147)
!172 = !DILocation(line: 170, column: 33, scope: !147)
!173 = !DILocation(line: 170, column: 35, scope: !147)
!174 = !DILocation(line: 170, column: 60, scope: !147)
!175 = !DILocation(line: 170, column: 68, scope: !147)
!176 = !DILocation(line: 170, column: 55, scope: !147)
!177 = !DILocation(line: 170, column: 53, scope: !147)
!178 = !DILocation(line: 170, column: 31, scope: !147)
!179 = !DILocation(line: 170, column: 5, scope: !147)
!180 = !DILocation(line: 170, column: 13, scope: !147)
!181 = !DILocation(line: 170, column: 18, scope: !147)
!182 = !DILocation(line: 171, column: 49, scope: !147)
!183 = !DILocation(line: 171, column: 57, scope: !147)
!184 = !DILocation(line: 171, column: 44, scope: !147)
!185 = !DILocation(line: 171, column: 42, scope: !147)
!186 = !DILocation(line: 171, column: 5, scope: !147)
!187 = !DILocation(line: 171, column: 13, scope: !147)
!188 = !DILocation(line: 171, column: 17, scope: !147)
!189 = !DILocation(line: 172, column: 5, scope: !147)
!190 = !DILocation(line: 174, column: 11, scope: !191)
!191 = distinct !DILexicalBlock(scope: !143, file: !1, line: 174, column: 11)
!192 = !DILocation(line: 174, column: 13, scope: !191)
!193 = !DILocation(line: 174, column: 11, scope: !143)
!194 = !DILocalVariable(name: "sy", scope: !195, file: !1, line: 175, type: !76)
!195 = distinct !DILexicalBlock(scope: !191, file: !1, line: 174, column: 21)
!196 = !DILocation(line: 175, column: 18, scope: !195)
!197 = !DILocation(line: 175, column: 28, scope: !195)
!198 = !DILocation(line: 175, column: 23, scope: !195)
!199 = !DILocalVariable(name: "c", scope: !195, file: !1, line: 176, type: !78)
!200 = !DILocation(line: 176, column: 19, scope: !195)
!201 = !DILocalVariable(name: "b", scope: !195, file: !1, line: 177, type: !49)
!202 = !DILocation(line: 177, column: 12, scope: !195)
!203 = !DILocalVariable(name: "s", scope: !195, file: !1, line: 178, type: !49)
!204 = !DILocation(line: 178, column: 12, scope: !195)
!205 = !DILocation(line: 179, column: 32, scope: !195)
!206 = !DILocation(line: 179, column: 31, scope: !195)
!207 = !DILocation(line: 179, column: 33, scope: !195)
!208 = !DILocation(line: 179, column: 39, scope: !195)
!209 = !DILocation(line: 179, column: 5, scope: !195)
!210 = !DILocation(line: 180, column: 20, scope: !195)
!211 = !DILocation(line: 180, column: 16, scope: !195)
!212 = !DILocation(line: 180, column: 27, scope: !195)
!213 = !DILocation(line: 180, column: 25, scope: !195)
!214 = !DILocation(line: 180, column: 7, scope: !195)
!215 = !DILocation(line: 181, column: 10, scope: !195)
!216 = !DILocation(line: 181, column: 12, scope: !195)
!217 = !DILocation(line: 181, column: 7, scope: !195)
!218 = !DILocation(line: 182, column: 20, scope: !195)
!219 = !DILocation(line: 182, column: 24, scope: !195)
!220 = !DILocation(line: 182, column: 22, scope: !195)
!221 = !DILocation(line: 182, column: 5, scope: !195)
!222 = !DILocation(line: 182, column: 13, scope: !195)
!223 = !DILocation(line: 182, column: 18, scope: !195)
!224 = !DILocation(line: 183, column: 22, scope: !195)
!225 = !DILocation(line: 183, column: 28, scope: !195)
!226 = !DILocation(line: 183, column: 26, scope: !195)
!227 = !DILocation(line: 183, column: 5, scope: !195)
!228 = !DILocation(line: 183, column: 13, scope: !195)
!229 = !DILocation(line: 183, column: 18, scope: !195)
!230 = !DILocation(line: 184, column: 49, scope: !195)
!231 = !DILocation(line: 184, column: 57, scope: !195)
!232 = !DILocation(line: 184, column: 44, scope: !195)
!233 = !DILocation(line: 184, column: 42, scope: !195)
!234 = !DILocation(line: 184, column: 5, scope: !195)
!235 = !DILocation(line: 184, column: 13, scope: !195)
!236 = !DILocation(line: 184, column: 17, scope: !195)
!237 = !DILocation(line: 185, column: 5, scope: !195)
!238 = !DILocalVariable(name: "sy", scope: !239, file: !1, line: 188, type: !76)
!239 = distinct !DILexicalBlock(scope: !191, file: !1, line: 187, column: 8)
!240 = !DILocation(line: 188, column: 18, scope: !239)
!241 = !DILocation(line: 188, column: 28, scope: !239)
!242 = !DILocation(line: 188, column: 23, scope: !239)
!243 = !DILocalVariable(name: "c", scope: !239, file: !1, line: 189, type: !78)
!244 = !DILocation(line: 189, column: 19, scope: !239)
!245 = !DILocalVariable(name: "b", scope: !239, file: !1, line: 190, type: !49)
!246 = !DILocation(line: 190, column: 12, scope: !239)
!247 = !DILocalVariable(name: "s", scope: !239, file: !1, line: 191, type: !49)
!248 = !DILocation(line: 191, column: 12, scope: !239)
!249 = !DILocation(line: 192, column: 32, scope: !239)
!250 = !DILocation(line: 192, column: 31, scope: !239)
!251 = !DILocation(line: 192, column: 33, scope: !239)
!252 = !DILocation(line: 192, column: 5, scope: !239)
!253 = !DILocation(line: 193, column: 20, scope: !239)
!254 = !DILocation(line: 193, column: 16, scope: !239)
!255 = !DILocation(line: 193, column: 27, scope: !239)
!256 = !DILocation(line: 193, column: 25, scope: !239)
!257 = !DILocation(line: 193, column: 7, scope: !239)
!258 = !DILocation(line: 194, column: 10, scope: !239)
!259 = !DILocation(line: 194, column: 12, scope: !239)
!260 = !DILocation(line: 194, column: 7, scope: !239)
!261 = !DILocation(line: 195, column: 20, scope: !239)
!262 = !DILocation(line: 195, column: 24, scope: !239)
!263 = !DILocation(line: 195, column: 22, scope: !239)
!264 = !DILocation(line: 195, column: 5, scope: !239)
!265 = !DILocation(line: 195, column: 13, scope: !239)
!266 = !DILocation(line: 195, column: 18, scope: !239)
!267 = !DILocation(line: 196, column: 22, scope: !239)
!268 = !DILocation(line: 196, column: 28, scope: !239)
!269 = !DILocation(line: 196, column: 26, scope: !239)
!270 = !DILocation(line: 196, column: 5, scope: !239)
!271 = !DILocation(line: 196, column: 13, scope: !239)
!272 = !DILocation(line: 196, column: 18, scope: !239)
!273 = !DILocation(line: 197, column: 49, scope: !239)
!274 = !DILocation(line: 197, column: 57, scope: !239)
!275 = !DILocation(line: 197, column: 44, scope: !239)
!276 = !DILocation(line: 197, column: 42, scope: !239)
!277 = !DILocation(line: 197, column: 5, scope: !239)
!278 = !DILocation(line: 197, column: 13, scope: !239)
!279 = !DILocation(line: 197, column: 17, scope: !239)
!280 = !DILocation(line: 198, column: 5, scope: !239)
!281 = !DILocation(line: 200, column: 1, scope: !73)
!282 = distinct !DISubprogram(name: "cheb_eval_e", scope: !283, file: !283, line: 3, type: !284, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!283 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!284 = !DISubroutineType(types: !285)
!285 = !{!51, !286, !76, !77}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!288 = !DILocalVariable(name: "cs", arg: 1, scope: !282, file: !283, line: 3, type: !286)
!289 = !DILocation(line: 3, column: 33, scope: !282)
!290 = !DILocalVariable(name: "x", arg: 2, scope: !282, file: !283, line: 4, type: !76)
!291 = !DILocation(line: 4, column: 26, scope: !282)
!292 = !DILocalVariable(name: "result", arg: 3, scope: !282, file: !283, line: 5, type: !77)
!293 = !DILocation(line: 5, column: 29, scope: !282)
!294 = !DILocalVariable(name: "j", scope: !282, file: !283, line: 7, type: !51)
!295 = !DILocation(line: 7, column: 7, scope: !282)
!296 = !DILocalVariable(name: "d", scope: !282, file: !283, line: 8, type: !49)
!297 = !DILocation(line: 8, column: 10, scope: !282)
!298 = !DILocalVariable(name: "dd", scope: !282, file: !283, line: 9, type: !49)
!299 = !DILocation(line: 9, column: 10, scope: !282)
!300 = !DILocalVariable(name: "y", scope: !282, file: !283, line: 11, type: !49)
!301 = !DILocation(line: 11, column: 10, scope: !282)
!302 = !DILocation(line: 11, column: 20, scope: !282)
!303 = !DILocation(line: 11, column: 19, scope: !282)
!304 = !DILocation(line: 11, column: 24, scope: !282)
!305 = !DILocation(line: 11, column: 28, scope: !282)
!306 = !DILocation(line: 11, column: 22, scope: !282)
!307 = !DILocation(line: 11, column: 32, scope: !282)
!308 = !DILocation(line: 11, column: 36, scope: !282)
!309 = !DILocation(line: 11, column: 30, scope: !282)
!310 = !DILocation(line: 11, column: 42, scope: !282)
!311 = !DILocation(line: 11, column: 46, scope: !282)
!312 = !DILocation(line: 11, column: 50, scope: !282)
!313 = !DILocation(line: 11, column: 54, scope: !282)
!314 = !DILocation(line: 11, column: 48, scope: !282)
!315 = !DILocation(line: 11, column: 39, scope: !282)
!316 = !DILocalVariable(name: "y2", scope: !282, file: !283, line: 12, type: !49)
!317 = !DILocation(line: 12, column: 10, scope: !282)
!318 = !DILocation(line: 12, column: 21, scope: !282)
!319 = !DILocation(line: 12, column: 19, scope: !282)
!320 = !DILocalVariable(name: "e", scope: !282, file: !283, line: 14, type: !49)
!321 = !DILocation(line: 14, column: 10, scope: !282)
!322 = !DILocation(line: 16, column: 11, scope: !323)
!323 = distinct !DILexicalBlock(scope: !282, file: !283, line: 16, column: 3)
!324 = !DILocation(line: 16, column: 15, scope: !323)
!325 = !DILocation(line: 16, column: 9, scope: !323)
!326 = !DILocation(line: 16, column: 7, scope: !323)
!327 = !DILocation(line: 16, column: 22, scope: !328)
!328 = !DILexicalBlockFile(scope: !329, file: !283, discriminator: 1)
!329 = distinct !DILexicalBlock(scope: !323, file: !283, line: 16, column: 3)
!330 = !DILocation(line: 16, column: 23, scope: !328)
!331 = !DILocation(line: 16, column: 3, scope: !328)
!332 = !DILocalVariable(name: "temp", scope: !333, file: !283, line: 17, type: !49)
!333 = distinct !DILexicalBlock(scope: !329, file: !283, line: 16, column: 33)
!334 = !DILocation(line: 17, column: 12, scope: !333)
!335 = !DILocation(line: 17, column: 19, scope: !333)
!336 = !DILocation(line: 18, column: 9, scope: !333)
!337 = !DILocation(line: 18, column: 12, scope: !333)
!338 = !DILocation(line: 18, column: 11, scope: !333)
!339 = !DILocation(line: 18, column: 16, scope: !333)
!340 = !DILocation(line: 18, column: 14, scope: !333)
!341 = !DILocation(line: 18, column: 27, scope: !333)
!342 = !DILocation(line: 18, column: 21, scope: !333)
!343 = !DILocation(line: 18, column: 25, scope: !333)
!344 = !DILocation(line: 18, column: 19, scope: !333)
!345 = !DILocation(line: 18, column: 7, scope: !333)
!346 = !DILocation(line: 19, column: 15, scope: !333)
!347 = !DILocation(line: 19, column: 18, scope: !333)
!348 = !DILocation(line: 19, column: 17, scope: !333)
!349 = !DILocation(line: 19, column: 10, scope: !333)
!350 = !DILocation(line: 19, column: 31, scope: !333)
!351 = !DILocation(line: 19, column: 26, scope: !352)
!352 = !DILexicalBlockFile(scope: !333, file: !283, discriminator: 1)
!353 = !DILocation(line: 19, column: 24, scope: !333)
!354 = !DILocation(line: 19, column: 48, scope: !333)
!355 = !DILocation(line: 19, column: 42, scope: !333)
!356 = !DILocation(line: 19, column: 46, scope: !333)
!357 = !DILocation(line: 19, column: 37, scope: !358)
!358 = !DILexicalBlockFile(scope: !333, file: !283, discriminator: 2)
!359 = !DILocation(line: 19, column: 35, scope: !333)
!360 = !DILocation(line: 19, column: 7, scope: !333)
!361 = !DILocation(line: 20, column: 10, scope: !333)
!362 = !DILocation(line: 20, column: 8, scope: !333)
!363 = !DILocation(line: 21, column: 3, scope: !333)
!364 = !DILocation(line: 16, column: 29, scope: !365)
!365 = !DILexicalBlockFile(scope: !329, file: !283, discriminator: 2)
!366 = !DILocation(line: 16, column: 3, scope: !365)
!367 = distinct !{!367, !368}
!368 = !DILocation(line: 16, column: 3, scope: !282)
!369 = !DILocalVariable(name: "temp", scope: !370, file: !283, line: 24, type: !49)
!370 = distinct !DILexicalBlock(scope: !282, file: !283, line: 23, column: 3)
!371 = !DILocation(line: 24, column: 12, scope: !370)
!372 = !DILocation(line: 24, column: 19, scope: !370)
!373 = !DILocation(line: 25, column: 9, scope: !370)
!374 = !DILocation(line: 25, column: 11, scope: !370)
!375 = !DILocation(line: 25, column: 10, scope: !370)
!376 = !DILocation(line: 25, column: 15, scope: !370)
!377 = !DILocation(line: 25, column: 13, scope: !370)
!378 = !DILocation(line: 25, column: 26, scope: !370)
!379 = !DILocation(line: 25, column: 30, scope: !370)
!380 = !DILocation(line: 25, column: 24, scope: !370)
!381 = !DILocation(line: 25, column: 18, scope: !370)
!382 = !DILocation(line: 25, column: 7, scope: !370)
!383 = !DILocation(line: 26, column: 15, scope: !370)
!384 = !DILocation(line: 26, column: 17, scope: !370)
!385 = !DILocation(line: 26, column: 16, scope: !370)
!386 = !DILocation(line: 26, column: 10, scope: !370)
!387 = !DILocation(line: 26, column: 30, scope: !370)
!388 = !DILocation(line: 26, column: 25, scope: !389)
!389 = !DILexicalBlockFile(scope: !370, file: !283, discriminator: 1)
!390 = !DILocation(line: 26, column: 23, scope: !370)
!391 = !DILocation(line: 26, column: 47, scope: !370)
!392 = !DILocation(line: 26, column: 51, scope: !370)
!393 = !DILocation(line: 26, column: 42, scope: !394)
!394 = !DILexicalBlockFile(scope: !370, file: !283, discriminator: 2)
!395 = !DILocation(line: 26, column: 40, scope: !370)
!396 = !DILocation(line: 26, column: 34, scope: !370)
!397 = !DILocation(line: 26, column: 7, scope: !370)
!398 = !DILocation(line: 29, column: 17, scope: !282)
!399 = !DILocation(line: 29, column: 3, scope: !282)
!400 = !DILocation(line: 29, column: 11, scope: !282)
!401 = !DILocation(line: 29, column: 15, scope: !282)
!402 = !DILocation(line: 30, column: 35, scope: !282)
!403 = !DILocation(line: 30, column: 33, scope: !282)
!404 = !DILocation(line: 30, column: 50, scope: !282)
!405 = !DILocation(line: 30, column: 54, scope: !282)
!406 = !DILocation(line: 30, column: 44, scope: !282)
!407 = !DILocation(line: 30, column: 48, scope: !282)
!408 = !DILocation(line: 30, column: 39, scope: !282)
!409 = !DILocation(line: 30, column: 37, scope: !282)
!410 = !DILocation(line: 30, column: 3, scope: !282)
!411 = !DILocation(line: 30, column: 11, scope: !282)
!412 = !DILocation(line: 30, column: 15, scope: !282)
!413 = !DILocation(line: 32, column: 3, scope: !282)
!414 = distinct !DISubprogram(name: "gsl_sf_bessel_I1_e", scope: !1, file: !1, line: 203, type: !74, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!415 = !DILocalVariable(name: "x", arg: 1, scope: !414, file: !1, line: 203, type: !76)
!416 = !DILocation(line: 203, column: 37, scope: !414)
!417 = !DILocalVariable(name: "result", arg: 2, scope: !414, file: !1, line: 203, type: !77)
!418 = !DILocation(line: 203, column: 56, scope: !414)
!419 = !DILocalVariable(name: "xmin", scope: !414, file: !1, line: 205, type: !76)
!420 = !DILocation(line: 205, column: 16, scope: !414)
!421 = !DILocalVariable(name: "x_small", scope: !414, file: !1, line: 206, type: !76)
!422 = !DILocation(line: 206, column: 16, scope: !414)
!423 = !DILocalVariable(name: "y", scope: !414, file: !1, line: 207, type: !76)
!424 = !DILocation(line: 207, column: 16, scope: !414)
!425 = !DILocation(line: 207, column: 25, scope: !414)
!426 = !DILocation(line: 207, column: 20, scope: !414)
!427 = !DILocation(line: 211, column: 6, scope: !428)
!428 = distinct !DILexicalBlock(scope: !414, file: !1, line: 211, column: 6)
!429 = !DILocation(line: 211, column: 8, scope: !428)
!430 = !DILocation(line: 211, column: 6, scope: !414)
!431 = !DILocation(line: 212, column: 5, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !1, line: 211, column: 16)
!433 = !DILocation(line: 212, column: 13, scope: !432)
!434 = !DILocation(line: 212, column: 17, scope: !432)
!435 = !DILocation(line: 213, column: 5, scope: !432)
!436 = !DILocation(line: 213, column: 13, scope: !432)
!437 = !DILocation(line: 213, column: 17, scope: !432)
!438 = !DILocation(line: 214, column: 5, scope: !432)
!439 = !DILocation(line: 216, column: 11, scope: !440)
!440 = distinct !DILexicalBlock(scope: !428, file: !1, line: 216, column: 11)
!441 = !DILocation(line: 216, column: 13, scope: !440)
!442 = !DILocation(line: 216, column: 11, scope: !428)
!443 = !DILocation(line: 217, column: 5, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !1, line: 216, column: 21)
!445 = distinct !{!445, !443}
!446 = !DILocation(line: 217, column: 5, scope: !447)
!447 = !DILexicalBlockFile(scope: !448, file: !1, discriminator: 1)
!448 = distinct !DILexicalBlock(scope: !444, file: !1, line: 217, column: 5)
!449 = distinct !{!449, !450}
!450 = !DILocation(line: 217, column: 5, scope: !448)
!451 = !DILocation(line: 217, column: 5, scope: !452)
!452 = !DILexicalBlockFile(scope: !453, file: !1, discriminator: 2)
!453 = distinct !DILexicalBlock(scope: !448, file: !1, line: 217, column: 5)
!454 = !DILocation(line: 217, column: 5, scope: !455)
!455 = !DILexicalBlockFile(scope: !448, file: !1, discriminator: 3)
!456 = !DILocation(line: 218, column: 3, scope: !444)
!457 = !DILocation(line: 219, column: 11, scope: !458)
!458 = distinct !DILexicalBlock(scope: !440, file: !1, line: 219, column: 11)
!459 = !DILocation(line: 219, column: 13, scope: !458)
!460 = !DILocation(line: 219, column: 11, scope: !440)
!461 = !DILocation(line: 220, column: 23, scope: !462)
!462 = distinct !DILexicalBlock(scope: !458, file: !1, line: 219, column: 24)
!463 = !DILocation(line: 220, column: 22, scope: !462)
!464 = !DILocation(line: 220, column: 5, scope: !462)
!465 = !DILocation(line: 220, column: 13, scope: !462)
!466 = !DILocation(line: 220, column: 17, scope: !462)
!467 = !DILocation(line: 221, column: 5, scope: !462)
!468 = !DILocation(line: 221, column: 13, scope: !462)
!469 = !DILocation(line: 221, column: 17, scope: !462)
!470 = !DILocation(line: 222, column: 5, scope: !462)
!471 = !DILocation(line: 224, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !458, file: !1, line: 224, column: 11)
!473 = !DILocation(line: 224, column: 13, scope: !472)
!474 = !DILocation(line: 224, column: 11, scope: !458)
!475 = !DILocalVariable(name: "c", scope: !476, file: !1, line: 225, type: !78)
!476 = distinct !DILexicalBlock(scope: !472, file: !1, line: 224, column: 21)
!477 = !DILocation(line: 225, column: 19, scope: !476)
!478 = !DILocation(line: 226, column: 26, scope: !476)
!479 = !DILocation(line: 226, column: 28, scope: !476)
!480 = !DILocation(line: 226, column: 27, scope: !476)
!481 = !DILocation(line: 226, column: 29, scope: !476)
!482 = !DILocation(line: 226, column: 33, scope: !476)
!483 = !DILocation(line: 226, column: 5, scope: !476)
!484 = !DILocation(line: 227, column: 20, scope: !476)
!485 = !DILocation(line: 227, column: 35, scope: !476)
!486 = !DILocation(line: 227, column: 31, scope: !476)
!487 = !DILocation(line: 227, column: 22, scope: !476)
!488 = !DILocation(line: 227, column: 5, scope: !476)
!489 = !DILocation(line: 227, column: 13, scope: !476)
!490 = !DILocation(line: 227, column: 18, scope: !476)
!491 = !DILocation(line: 228, column: 20, scope: !476)
!492 = !DILocation(line: 228, column: 26, scope: !476)
!493 = !DILocation(line: 228, column: 22, scope: !476)
!494 = !DILocation(line: 228, column: 5, scope: !476)
!495 = !DILocation(line: 228, column: 13, scope: !476)
!496 = !DILocation(line: 228, column: 18, scope: !476)
!497 = !DILocation(line: 229, column: 49, scope: !476)
!498 = !DILocation(line: 229, column: 57, scope: !476)
!499 = !DILocation(line: 229, column: 44, scope: !476)
!500 = !DILocation(line: 229, column: 42, scope: !476)
!501 = !DILocation(line: 229, column: 5, scope: !476)
!502 = !DILocation(line: 229, column: 13, scope: !476)
!503 = !DILocation(line: 229, column: 17, scope: !476)
!504 = !DILocation(line: 230, column: 5, scope: !476)
!505 = !DILocation(line: 232, column: 11, scope: !506)
!506 = distinct !DILexicalBlock(scope: !472, file: !1, line: 232, column: 11)
!507 = !DILocation(line: 232, column: 13, scope: !506)
!508 = !DILocation(line: 232, column: 11, scope: !472)
!509 = !DILocalVariable(name: "ey", scope: !510, file: !1, line: 233, type: !76)
!510 = distinct !DILexicalBlock(scope: !506, file: !1, line: 232, column: 32)
!511 = !DILocation(line: 233, column: 18, scope: !510)
!512 = !DILocation(line: 233, column: 27, scope: !510)
!513 = !DILocation(line: 233, column: 23, scope: !510)
!514 = !DILocalVariable(name: "I1_scaled", scope: !510, file: !1, line: 234, type: !78)
!515 = !DILocation(line: 234, column: 19, scope: !510)
!516 = !DILocation(line: 235, column: 31, scope: !510)
!517 = !DILocation(line: 235, column: 5, scope: !510)
!518 = !DILocation(line: 236, column: 20, scope: !510)
!519 = !DILocation(line: 236, column: 35, scope: !510)
!520 = !DILocation(line: 236, column: 23, scope: !510)
!521 = !DILocation(line: 236, column: 5, scope: !510)
!522 = !DILocation(line: 236, column: 13, scope: !510)
!523 = !DILocation(line: 236, column: 18, scope: !510)
!524 = !DILocation(line: 237, column: 20, scope: !510)
!525 = !DILocation(line: 237, column: 35, scope: !510)
!526 = !DILocation(line: 237, column: 23, scope: !510)
!527 = !DILocation(line: 237, column: 41, scope: !510)
!528 = !DILocation(line: 237, column: 43, scope: !510)
!529 = !DILocation(line: 237, column: 68, scope: !510)
!530 = !DILocation(line: 237, column: 76, scope: !510)
!531 = !DILocation(line: 237, column: 63, scope: !510)
!532 = !DILocation(line: 237, column: 61, scope: !510)
!533 = !DILocation(line: 237, column: 39, scope: !510)
!534 = !DILocation(line: 237, column: 5, scope: !510)
!535 = !DILocation(line: 237, column: 13, scope: !510)
!536 = !DILocation(line: 237, column: 18, scope: !510)
!537 = !DILocation(line: 238, column: 49, scope: !510)
!538 = !DILocation(line: 238, column: 57, scope: !510)
!539 = !DILocation(line: 238, column: 44, scope: !510)
!540 = !DILocation(line: 238, column: 42, scope: !510)
!541 = !DILocation(line: 238, column: 5, scope: !510)
!542 = !DILocation(line: 238, column: 13, scope: !510)
!543 = !DILocation(line: 238, column: 17, scope: !510)
!544 = !DILocation(line: 239, column: 5, scope: !510)
!545 = !DILocation(line: 242, column: 5, scope: !546)
!546 = distinct !DILexicalBlock(scope: !506, file: !1, line: 241, column: 8)
!547 = distinct !{!547, !545}
!548 = !DILocation(line: 242, column: 5, scope: !549)
!549 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 1)
!550 = distinct !DILexicalBlock(scope: !546, file: !1, line: 242, column: 5)
!551 = distinct !{!551, !552}
!552 = !DILocation(line: 242, column: 5, scope: !550)
!553 = !DILocation(line: 242, column: 5, scope: !554)
!554 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 2)
!555 = distinct !DILexicalBlock(scope: !550, file: !1, line: 242, column: 5)
!556 = !DILocation(line: 242, column: 5, scope: !557)
!557 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 3)
!558 = !DILocation(line: 244, column: 1, scope: !414)
!559 = distinct !DISubprogram(name: "gsl_sf_bessel_I1_scaled", scope: !1, file: !1, line: 250, type: !560, isLocal: false, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!560 = !DISubroutineType(types: !561)
!561 = !{!49, !76}
!562 = !DILocalVariable(name: "x", arg: 1, scope: !559, file: !1, line: 250, type: !76)
!563 = !DILocation(line: 250, column: 45, scope: !559)
!564 = !DILocalVariable(name: "result", scope: !559, file: !1, line: 252, type: !78)
!565 = !DILocation(line: 252, column: 3, scope: !559)
!566 = !DILocalVariable(name: "status", scope: !559, file: !1, line: 252, type: !51)
!567 = !DILocation(line: 252, column: 3, scope: !568)
!568 = distinct !DILexicalBlock(scope: !559, file: !1, line: 252, column: 3)
!569 = !DILocation(line: 252, column: 3, scope: !570)
!570 = !DILexicalBlockFile(scope: !571, file: !1, discriminator: 1)
!571 = distinct !DILexicalBlock(scope: !568, file: !1, line: 252, column: 3)
!572 = distinct !{!572, !573}
!573 = !DILocation(line: 252, column: 3, scope: !571)
!574 = !DILocation(line: 252, column: 3, scope: !575)
!575 = !DILexicalBlockFile(scope: !576, file: !1, discriminator: 2)
!576 = distinct !DILexicalBlock(scope: !571, file: !1, line: 252, column: 3)
!577 = !DILocation(line: 252, column: 3, scope: !578)
!578 = !DILexicalBlockFile(scope: !571, file: !1, discriminator: 3)
!579 = !DILocation(line: 252, column: 3, scope: !580)
!580 = !DILexicalBlockFile(scope: !559, file: !1, discriminator: 4)
!581 = !DILocation(line: 253, column: 1, scope: !559)
!582 = distinct !DISubprogram(name: "gsl_sf_bessel_I1", scope: !1, file: !1, line: 255, type: !560, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !84)
!583 = !DILocalVariable(name: "x", arg: 1, scope: !582, file: !1, line: 255, type: !76)
!584 = !DILocation(line: 255, column: 38, scope: !582)
!585 = !DILocalVariable(name: "result", scope: !582, file: !1, line: 257, type: !78)
!586 = !DILocation(line: 257, column: 3, scope: !582)
!587 = !DILocalVariable(name: "status", scope: !582, file: !1, line: 257, type: !51)
!588 = !DILocation(line: 257, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !582, file: !1, line: 257, column: 3)
!590 = !DILocation(line: 257, column: 3, scope: !591)
!591 = !DILexicalBlockFile(scope: !592, file: !1, discriminator: 1)
!592 = distinct !DILexicalBlock(scope: !589, file: !1, line: 257, column: 3)
!593 = distinct !{!593, !594}
!594 = !DILocation(line: 257, column: 3, scope: !592)
!595 = !DILocation(line: 257, column: 3, scope: !596)
!596 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 2)
!597 = distinct !DILexicalBlock(scope: !592, file: !1, line: 257, column: 3)
!598 = !DILocation(line: 257, column: 3, scope: !599)
!599 = !DILexicalBlockFile(scope: !592, file: !1, discriminator: 3)
!600 = !DILocation(line: 257, column: 3, scope: !601)
!601 = !DILexicalBlockFile(scope: !582, file: !1, discriminator: 4)
!602 = !DILocation(line: 258, column: 1, scope: !582)
