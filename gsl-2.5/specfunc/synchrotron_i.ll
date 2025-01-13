; ModuleID = 'synchrotron.ll'
source_filename = "synchrotron.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"synchrotron.c\00", align 1
@synchrotron1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([13 x double], [13 x double]* @synchrotron1_data, i32 0, i32 0), i32 12, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@synchrotron2_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([12 x double], [12 x double]* @synchrotron2_data, i32 0, i32 0), i32 11, double -1.000000e+00, double 1.000000e+00, i32 7 }, align 8
@synchrotron1a_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([23 x double], [23 x double]* @synchrotron1a_data, i32 0, i32 0), i32 22, double -1.000000e+00, double 1.000000e+00, i32 11 }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@synchrotron21_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([13 x double], [13 x double]* @synchrotron21_data, i32 0, i32 0), i32 12, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@synchrotron22_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([13 x double], [13 x double]* @synchrotron22_data, i32 0, i32 0), i32 12, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@synchrotron2a_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([17 x double], [17 x double]* @synchrotron2a_data, i32 0, i32 0), i32 16, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"gsl_sf_synchrotron_1_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"gsl_sf_synchrotron_2_e(x, &result)\00", align 1
@synchrotron1_data = internal global [13 x double] [double 0x403E5D5BDD2B3FF7, double 0x403114533FB7ED08, double 0x40123D93472C0F26, double 0x3FE193B643E06CA2, double 0x3FA318AC08EC30B0, double 0x3F5A7007E6BB0848, double 0x3F09442D6BA73EA8, double 0x3EB1A30D62566F26, double 0x3E52C06D39D2920D, double 0x3DEF5B7C557E2FAE, double 0x3D85264BFFD5F966, double 2.086588e-14, double 1.516700e-16], align 16
@synchrotron2_data = internal global [12 x double] [double 0x3FDCBD992AB67B60, double 0x3FB6FF735EB8FE9A, double 0x3F809911DB188110, double 0x3F3BEDF982996C42, double 0x3EEEF4BB530D7213, double 0x3E9859F1F0F1776A, double 0x3E3C9E9316BFA69D, double 0x3DDA16896DAF61FD, double 1.079125e-12, double 1.002200e-14, double 7.700000e-17, double 5.000000e-19], align 16
@synchrotron1a_data = internal global [23 x double] [double 0x4001103DDFDB89FB, double 0x3FB2FA87B6FA3829, double 0x3F81CFA213ED45BE, double 0x3F532CF0C63FFE18, double 0x3F25900F1EE69498, double 0x3EF92FD8D9B06693, double 0x3ECE0DF3BCC3D18E, double 0x3EA247945F49427A, double 0x3E768435970F66BC, double 0x3E4C113E764893FB, double 0x3E21A2D006C16A69, double 0x3DF658C2786FFBB9, double 0x3DCC78FDFC534C7C, double 0x3DA240A71F65D8A5, double 0x3D777D88B9C351EF, double 2.159150e-13, double 3.499670e-14, double 5.699400e-15, double 9.291000e-16, double 1.520000e-16, double 2.490000e-17, double 4.100000e-18, double 7.000000e-19], align 16
@synchrotron21_data = internal global [13 x double] [double 0x40434F1560ED88DB, double 0x403709A7BAAEEB1E, double 0x4015856040A704BA, double 0x3FE3B3A53E9DA35C, double 0x3FA4D28A7FF2181C, double 0x3F5C569556B23213, double 0x3F0AC5537E8EBD02, double 0x3EB28834175CE45B, double 0x3E53948B5C299ED9, double 0x3DF04AB3CCD5CAAD, double 0x3D85E41EEFFFB981, double 2.152900e-14, double 1.560000e-16], align 16
@synchrotron22_data = internal global [13 x double] [double 0x401FA010FE7883CD, double 0x40091530791AD33F, double 0x3FDF123C0A8AC927, double 0x3FA436F0EE1E620B, double 0x3F601B574FB9CCDE, double 0x3F114700FBDF1135, double 0x3EBA9AC54F29F22E, double 0x3E5ECD4B194C1714, double 0x3DFBC55BBE87FC56, double 0x3D940A8CF9B8D955, double 4.204590e-14, double 3.232000e-16, double 2.100000e-18], align 16
@synchrotron2a_data = internal global [17 x double] [double 0x400029A67E92DF00, double 0x3F8670394100C94F, double 0x3F4BFDDF26FC1FE5, double 0x3F12F6DBB13E72B8, double 0x3EDA79EF10445095, double 0x3EA2F3C2CE92E7AF, double 0x3E6B8850E14A648E, double 0x3E3445504CDF18C3, double 0x3DFE1AAFCD0CDDF7, double 0x3DC68E02C94F5417, double 0x3D90FC9241CF4DEF, double 3.661323e-13, double 3.480230e-14, double 3.330100e-15, double 3.190000e-16, double 3.070000e-17, double 3.000000e-18], align 16
@0 = private unnamed_addr constant [23 x i8] c"gsl_sf_synchrotron_1_e\00"
@1 = private unnamed_addr constant [15 x i8] c"synchrotron.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [15 x i8] c"synchrotron.ll\00"
@4 = private unnamed_addr constant [23 x i8] c"gsl_sf_synchrotron_2_e\00"
@5 = private unnamed_addr constant [15 x i8] c"synchrotron.ll\00"
@6 = private unnamed_addr constant [21 x i8] c"gsl_sf_synchrotron_1\00"
@7 = private unnamed_addr constant [15 x i8] c"synchrotron.ll\00"
@8 = private unnamed_addr constant [21 x i8] c"gsl_sf_synchrotron_2\00"
@9 = private unnamed_addr constant [15 x i8] c"synchrotron.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_synchrotron_1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !82 {
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
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !94, metadata !95), !dbg !96
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !97, metadata !95), !dbg !98
  %17 = load double, double* %4, align 8, !dbg !99
  %18 = fcmp olt double %17, 0.000000e+00, !dbg !101
  %19 = call i1 @fCmpInstHandler(double %17, double 0.000000e+00, i1 %18, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000918752, i32 186, i32 8), !dbg !102
  br i1 %19, label %20, label %29, !dbg !102

; <label>:20:                                     ; preds = %2
  br label %21, !dbg !103, !llvm.loop !105

; <label>:21:                                     ; preds = %20
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !106
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !106
  store double 0x7FF8000000000000, double* %23, align 8, !dbg !106
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !106
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !106
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !106
  br label %26, !dbg !106, !llvm.loop !109

; <label>:26:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 187, i32 1), !dbg !111
  store i32 1, i32* %3, align 4, !dbg !111
  br label %155, !dbg !111
                                                  ; No predecessors!
  br label %28, !dbg !114

; <label>:28:                                     ; preds = %27
  br label %155, !dbg !116

; <label>:29:                                     ; preds = %2
  %30 = load double, double* %4, align 8, !dbg !117
  %31 = fcmp olt double %30, 0x3E66A09E667F3BCD, !dbg !119
  %32 = call i1 @fCmpInstHandler(double %30, double 0x3E66A09E667F3BCD, i1 %31, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000900672, i32 189, i32 13), !dbg !120
  br i1 %32, label %33, label %53, !dbg !120

; <label>:33:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata double* %6, metadata !121, metadata !95), !dbg !123
  %34 = load double, double* %4, align 8, !dbg !124
  %35 = call double @pow(double %34, double 0x3FD5555555555555) #6, !dbg !125
  call void @callTwoArgsHandler(i32 15, double %34, double 0x3FD5555555555555, double %35, i64 94274000902936, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000904296, i32 193, i32 16), !dbg !123
  store double %35, double* %6, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata double* %7, metadata !126, metadata !95), !dbg !127
  %36 = load double, double* %6, align 8, !dbg !128
  %37 = fmul double 0x3FEB00839F875D26, %36, !dbg !129
  call void @fMulHandler(double 0x3FEB00839F875D26, double %36, double %37, i64 0, i64 94274000942856, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000943296, i32 194, i32 42), !dbg !130
  %38 = load double, double* %6, align 8, !dbg !130
  %39 = fmul double %37, %38, !dbg !131
  call void @fMulHandler(double %37, double %38, double %39, i64 94274000943296, i64 94274000943688, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000944096, i32 194, i32 46), !dbg !132
  %40 = fsub double 1.000000e+00, %39, !dbg !132
  call void @fSubHandler(double 1.000000e+00, double %39, double %40, i64 0, i64 94274000944096, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000944544, i32 194, i32 19), !dbg !127
  store double %40, double* %7, align 8, !dbg !127
  %41 = load double, double* %6, align 8, !dbg !133
  %42 = fmul double 0x4001323BDCD9C076, %41, !dbg !134
  call void @fMulHandler(double 0x4001323BDCD9C076, double %41, double %42, i64 0, i64 94274000946584, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000947056, i32 195, i32 42), !dbg !135
  %43 = load double, double* %7, align 8, !dbg !135
  %44 = fmul double %42, %43, !dbg !136
  call void @fMulHandler(double %42, double %43, double %44, i64 94274000947056, i64 94274000947448, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000947856, i32 195, i32 46), !dbg !137
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !137
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !138
  store double %44, double* %46, align 8, !dbg !139
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !140
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !141
  %49 = load double, double* %48, align 8, !dbg !141
  %50 = fmul double 0x3CB0000000000000, %49, !dbg !142
  call void @fMulHandler(double 0x3CB0000000000000, double %49, double %50, i64 0, i64 94274000950328, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000952064, i32 196, i32 35), !dbg !143
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !143
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !144
  store double %50, double* %52, align 8, !dbg !145
  store i32 0, i32* %3, align 4, !dbg !146
  br label %155, !dbg !146

; <label>:53:                                     ; preds = %29
  %54 = load double, double* %4, align 8, !dbg !147
  %55 = fcmp ole double %54, 4.000000e+00, !dbg !149
  %56 = call i1 @fCmpInstHandler(double %54, double 4.000000e+00, i1 %55, i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000956208, i32 199, i32 13), !dbg !150
  br i1 %56, label %57, label %109, !dbg !150

; <label>:57:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata double* %8, metadata !151, metadata !95), !dbg !153
  store double 0x3FFD05527B6E43D2, double* %8, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata double* %9, metadata !154, metadata !95), !dbg !155
  %58 = load double, double* %4, align 8, !dbg !156
  %59 = call double @pow(double %58, double 0x3FD5555555555555) #6, !dbg !157
  call void @callTwoArgsHandler(i32 15, double %58, double 0x3FD5555555555555, double %59, i64 94274000961176, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000961672, i32 201, i32 25), !dbg !155
  store double %59, double* %9, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata double* %10, metadata !158, metadata !95), !dbg !159
  %60 = load double, double* %9, align 8, !dbg !160
  %61 = call double @gsl_sf_pow_int(double %60, i32 11), !dbg !161
  store double %61, double* %10, align 8, !dbg !159
  call void @llvm.dbg.declare(metadata double* %11, metadata !162, metadata !95), !dbg !163
  %62 = load double, double* %4, align 8, !dbg !164
  %63 = load double, double* %4, align 8, !dbg !165
  %64 = fmul double %62, %63, !dbg !166
  call void @fMulHandler(double %62, double %63, double %64, i64 94274000968936, i64 94274000969288, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000969696, i32 203, i32 23), !dbg !167
  %65 = fdiv double %64, 8.000000e+00, !dbg !167
  call void @fDivHandler(double %64, double 8.000000e+00, double %65, i64 94274000969696, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000970208, i32 203, i32 25), !dbg !168
  %66 = fsub double %65, 1.000000e+00, !dbg !168
  call void @fSubHandler(double %65, double 1.000000e+00, double %66, i64 94274000970208, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000970624, i32 203, i32 30), !dbg !163
  store double %66, double* %11, align 8, !dbg !163
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !169, metadata !95), !dbg !170
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !171, metadata !95), !dbg !172
  %67 = load double, double* %11, align 8, !dbg !173
  %68 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @synchrotron1_cs, double %67, %struct.gsl_sf_result_struct* %12), !dbg !174
  %69 = load double, double* %11, align 8, !dbg !175
  %70 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @synchrotron2_cs, double %69, %struct.gsl_sf_result_struct* %13), !dbg !176
  %71 = load double, double* %9, align 8, !dbg !177
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !178
  %73 = load double, double* %72, align 8, !dbg !178
  %74 = fmul double %71, %73, !dbg !179
  call void @fMulHandler(double %71, double %73, double %74, i64 94274000978120, i64 94274000978920, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000980592, i32 208, i32 23), !dbg !180
  %75 = load double, double* %10, align 8, !dbg !180
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !181
  %77 = load double, double* %76, align 8, !dbg !181
  %78 = fmul double %75, %77, !dbg !182
  call void @fMulHandler(double %75, double %77, double %78, i64 94274000980984, i64 94274000981816, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000983488, i32 208, i32 46), !dbg !183
  %79 = fsub double %74, %78, !dbg !183
  call void @fSubHandler(double %74, double %78, double %79, i64 94274000980592, i64 94274000983488, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000983904, i32 208, i32 39), !dbg !184
  %80 = load double, double* %4, align 8, !dbg !184
  %81 = fmul double 0x3FFD05527B6E43D2, %80, !dbg !185
  call void @fMulHandler(double 0x3FFD05527B6E43D2, double %80, double %81, i64 0, i64 94274000984296, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000984704, i32 208, i32 67), !dbg !186
  %82 = fsub double %79, %81, !dbg !186
  call void @fSubHandler(double %79, double %81, double %82, i64 94274000983904, i64 94274000984704, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000985120, i32 208, i32 62), !dbg !187
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !187
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !188
  store double %82, double* %84, align 8, !dbg !189
  %85 = load double, double* %9, align 8, !dbg !190
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !191
  %87 = load double, double* %86, align 8, !dbg !191
  %88 = fmul double %85, %87, !dbg !192
  call void @fMulHandler(double %85, double %87, double %88, i64 94274000986760, i64 94274000987592, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000989264, i32 209, i32 23), !dbg !193
  %89 = load double, double* %10, align 8, !dbg !193
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !194
  %91 = load double, double* %90, align 8, !dbg !194
  %92 = fmul double %89, %91, !dbg !195
  call void @fMulHandler(double %89, double %91, double %92, i64 94274000989656, i64 94274000990488, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000992160, i32 209, i32 46), !dbg !196
  %93 = fadd double %88, %92, !dbg !196
  call void @fAddHandler(double %88, double %92, double %93, i64 94274000989264, i64 94274000992160, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000992576, i32 209, i32 39), !dbg !197
  %94 = load double, double* %4, align 8, !dbg !197
  %95 = fmul double 0x3FFD05527B6E43D2, %94, !dbg !198
  call void @fMulHandler(double 0x3FFD05527B6E43D2, double %94, double %95, i64 0, i64 94274000992968, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000993376, i32 209, i32 67), !dbg !199
  %96 = fmul double %95, 0x3CB0000000000000, !dbg !199
  call void @fMulHandler(double %95, double 0x3CB0000000000000, double %96, i64 94274000993376, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000993792, i32 209, i32 71), !dbg !200
  %97 = fadd double %93, %96, !dbg !200
  call void @fAddHandler(double %93, double %96, double %97, i64 94274000992576, i64 94274000993792, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000994208, i32 209, i32 62), !dbg !201
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !201
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 1, !dbg !202
  store double %97, double* %99, align 8, !dbg !203
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !204
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 0, !dbg !205
  %102 = load double, double* %101, align 8, !dbg !205
  %103 = call double @fabs(double %102) #1, !dbg !206
  %104 = fmul double 0x3CC0000000000000, %103, !dbg !207
  call void @fMulHandler(double 0x3CC0000000000000, double %103, double %104, i64 0, i64 94274000998688, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274000999264, i32 210, i32 42), !dbg !208
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !208
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 1, !dbg !209
  %107 = load double, double* %106, align 8, !dbg !210
  %108 = fadd double %107, %104, !dbg !210
  call void @fAddHandler(double %107, double %104, double %108, i64 94274001000488, i64 94274000999264, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001000896, i32 210, i32 17), !dbg !210
  store double %108, double* %106, align 8, !dbg !210
  store i32 0, i32* %3, align 4, !dbg !211
  br label %155, !dbg !211

; <label>:109:                                    ; preds = %53
  %110 = load double, double* %4, align 8, !dbg !212
  %111 = fcmp olt double %110, 0x40894CC46AD56A15, !dbg !214
  %112 = call i1 @fCmpInstHandler(double %110, double 0x40894CC46AD56A15, i1 %111, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001005152, i32 213, i32 13), !dbg !215
  br i1 %112, label %113, label %143, !dbg !215

; <label>:113:                                    ; preds = %109
  call void @llvm.dbg.declare(metadata double* %14, metadata !216, metadata !95), !dbg !218
  store double 0x3FCCE6BB25AA1316, double* %14, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata double* %15, metadata !219, metadata !95), !dbg !220
  %114 = load double, double* %4, align 8, !dbg !221
  %115 = fsub double 1.200000e+01, %114, !dbg !222
  call void @fSubHandler(double 1.200000e+01, double %114, double %115, i64 0, i64 94274001010248, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001010720, i32 215, i32 28), !dbg !223
  %116 = load double, double* %4, align 8, !dbg !223
  %117 = fadd double %116, 4.000000e+00, !dbg !224
  call void @fAddHandler(double %116, double 4.000000e+00, double %117, i64 94274001011080, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001011520, i32 215, i32 38), !dbg !225
  %118 = fdiv double %115, %117, !dbg !225
  call void @fDivHandler(double %115, double %117, double %118, i64 94274001010720, i64 94274001011520, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001011904, i32 215, i32 33), !dbg !220
  store double %118, double* %15, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !226, metadata !95), !dbg !227
  %119 = load double, double* %15, align 8, !dbg !228
  %120 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @synchrotron1a_cs, double %119, %struct.gsl_sf_result_struct* %16), !dbg !229
  %121 = load double, double* %4, align 8, !dbg !230
  %122 = call double @sqrt(double %121) #6, !dbg !231
  call void @callOneArgHandler(i32 14, double %121, double %122, i64 94274001016040, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001017552, i32 218, i32 19), !dbg !232
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !232
  %124 = load double, double* %123, align 8, !dbg !232
  %125 = fmul double %122, %124, !dbg !233
  call void @fMulHandler(double %122, double %124, double %125, i64 94274001017552, i64 94274001018488, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001020160, i32 218, i32 27), !dbg !234
  %126 = load double, double* %4, align 8, !dbg !234
  %127 = fsub double 0x3FCCE6BB25AA1316, %126, !dbg !235
  call void @fSubHandler(double 0x3FCCE6BB25AA1316, double %126, double %127, i64 0, i64 94274001020552, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001020960, i32 218, i32 52), !dbg !236
  %128 = call double @exp(double %127) #6, !dbg !236
  call void @callOneArgHandler(i32 11, double %127, double %128, i64 94274001020960, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001021712, i32 218, i32 45), !dbg !238
  %129 = fmul double %125, %128, !dbg !238
  call void @fMulHandler(double %125, double %128, double %129, i64 94274001020160, i64 94274001021712, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001022224, i32 218, i32 43), !dbg !239
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !239
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 0, !dbg !240
  store double %129, double* %131, align 8, !dbg !241
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !242
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 0, !dbg !243
  %134 = load double, double* %133, align 8, !dbg !243
  %135 = fmul double 0x3CC0000000000000, %134, !dbg !244
  call void @fMulHandler(double 0x3CC0000000000000, double %134, double %135, i64 0, i64 94274001026760, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001028432, i32 219, i32 41), !dbg !245
  %136 = load double, double* %4, align 8, !dbg !245
  %137 = fsub double 0x3FCCE6BB25AA1316, %136, !dbg !246
  call void @fSubHandler(double 0x3FCCE6BB25AA1316, double %136, double %137, i64 0, i64 94274001028824, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001029232, i32 219, i32 65), !dbg !247
  %138 = call double @fabs(double %137) #1, !dbg !247
  %139 = fadd double %138, 1.000000e+00, !dbg !248
  call void @fAddHandler(double %138, double 1.000000e+00, double %139, i64 94274001029712, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001030224, i32 219, i32 68), !dbg !249
  %140 = fmul double %135, %139, !dbg !249
  call void @fMulHandler(double %135, double %139, double %140, i64 94274001028432, i64 94274001030224, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @1, i32 0, i32 0), i64 94274001030608, i32 219, i32 55), !dbg !250
  %141 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !250
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %141, i32 0, i32 1, !dbg !251
  store double %140, double* %142, align 8, !dbg !252
  store i32 0, i32* %3, align 4, !dbg !253
  br label %155, !dbg !253

; <label>:143:                                    ; preds = %109
  br label %144, !dbg !254, !llvm.loop !256

; <label>:144:                                    ; preds = %143
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !257
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 0, !dbg !257
  store double 0.000000e+00, double* %146, align 8, !dbg !257
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !257
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 1, !dbg !257
  store double 0x10000000000000, double* %148, align 8, !dbg !257
  br label %149, !dbg !257, !llvm.loop !260

; <label>:149:                                    ; preds = %144
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 223, i32 15), !dbg !262
  store i32 15, i32* %3, align 4, !dbg !262
  br label %155, !dbg !262
                                                  ; No predecessors!
  br label %151, !dbg !265

; <label>:151:                                    ; preds = %150
  br label %152

; <label>:152:                                    ; preds = %151
  br label %153

; <label>:153:                                    ; preds = %152
  br label %154

; <label>:154:                                    ; preds = %153
  br label %155

; <label>:155:                                    ; preds = %154, %149, %113, %57, %33, %28, %26
  %156 = load i32, i32* %3, align 4, !dbg !267
  ret i32 %156, !dbg !267
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare double @pow(double, double) #3

declare double @gsl_sf_pow_int(double, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !268 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !274, metadata !95), !dbg !275
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !276, metadata !95), !dbg !277
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !278, metadata !95), !dbg !279
  call void @llvm.dbg.declare(metadata i32* %7, metadata !280, metadata !95), !dbg !281
  call void @llvm.dbg.declare(metadata double* %8, metadata !282, metadata !95), !dbg !283
  store double 0.000000e+00, double* %8, align 8, !dbg !283
  call void @llvm.dbg.declare(metadata double* %9, metadata !284, metadata !95), !dbg !285
  store double 0.000000e+00, double* %9, align 8, !dbg !285
  call void @llvm.dbg.declare(metadata double* %10, metadata !286, metadata !95), !dbg !287
  %15 = load double, double* %5, align 8, !dbg !288
  %16 = fmul double 2.000000e+00, %15, !dbg !289
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94274000976504, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001056848, i32 11, i32 19), !dbg !290
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !290
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !291
  %19 = load double, double* %18, align 8, !dbg !291
  %20 = fsub double %16, %19, !dbg !292
  call void @fSubHandler(double %16, double %19, double %20, i64 94274001056848, i64 94274000904152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001059584, i32 11, i32 22), !dbg !293
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !293
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !294
  %23 = load double, double* %22, align 8, !dbg !294
  %24 = fsub double %20, %23, !dbg !295
  call void @fSubHandler(double %20, double %23, double %24, i64 94274001059584, i64 94274000896168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001062352, i32 11, i32 30), !dbg !296
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !296
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !297
  %27 = load double, double* %26, align 8, !dbg !297
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !298
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !299
  %30 = load double, double* %29, align 8, !dbg !299
  %31 = fsub double %27, %30, !dbg !300
  call void @fSubHandler(double %27, double %30, double %31, i64 94274001063576, i64 94274001066056, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001067728, i32 11, i32 48), !dbg !301
  %32 = fdiv double %24, %31, !dbg !301
  call void @fDivHandler(double %24, double %31, double %32, i64 94274001062352, i64 94274001067728, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001068144, i32 11, i32 39), !dbg !287
  store double %32, double* %10, align 8, !dbg !287
  call void @llvm.dbg.declare(metadata double* %11, metadata !302, metadata !95), !dbg !303
  %33 = load double, double* %10, align 8, !dbg !304
  %34 = fmul double 2.000000e+00, %33, !dbg !305
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94274001071192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001071600, i32 12, i32 19), !dbg !303
  store double %34, double* %11, align 8, !dbg !303
  call void @llvm.dbg.declare(metadata double* %12, metadata !306, metadata !95), !dbg !307
  store double 0.000000e+00, double* %12, align 8, !dbg !307
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !308
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !310
  %37 = load i32, i32* %36, align 8, !dbg !310
  store i32 %37, i32* %7, align 4, !dbg !311
  br label %38, !dbg !312

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !313
  %40 = icmp sge i32 %39, 1, !dbg !316
  %41 = sext i32 %39 to i64, !dbg !317
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001080176, i32 16, i32 23), !dbg !317
  br i1 %42, label %43, label %80, !dbg !317

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !318, metadata !95), !dbg !320
  %44 = load double, double* %8, align 8, !dbg !321
  store double %44, double* %13, align 8, !dbg !320
  %45 = load double, double* %11, align 8, !dbg !322
  %46 = load double, double* %8, align 8, !dbg !323
  %47 = fmul double %45, %46, !dbg !324
  call void @fMulHandler(double %45, double %46, double %47, i64 94274001084376, i64 94274001084760, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001085168, i32 18, i32 11), !dbg !325
  %48 = load double, double* %9, align 8, !dbg !325
  %49 = fsub double %47, %48, !dbg !326
  call void @fSubHandler(double %47, double %48, double %49, i64 94274001085168, i64 94274001085560, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001085968, i32 18, i32 14), !dbg !327
  %50 = load i32, i32* %7, align 4, !dbg !327
  %51 = sext i32 %50 to i64, !dbg !328
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !328
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !329
  %54 = load double*, double** %53, align 8, !dbg !329
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !328
  %56 = load double, double* %55, align 8, !dbg !328
  %57 = fadd double %49, %56, !dbg !330
  call void @fAddHandler(double %49, double %56, double %57, i64 94274001085968, i64 94274001091016, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001091136, i32 18, i32 19), !dbg !331
  store double %57, double* %8, align 8, !dbg !331
  %58 = load double, double* %11, align 8, !dbg !332
  %59 = load double, double* %13, align 8, !dbg !333
  %60 = fmul double %58, %59, !dbg !334
  call void @fMulHandler(double %58, double %59, double %60, i64 94274001091944, i64 94274001092328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001092736, i32 19, i32 17), !dbg !335
  %61 = call double @fabs(double %60) #1, !dbg !335
  %62 = load double, double* %9, align 8, !dbg !336
  %63 = call double @fabs(double %62) #1, !dbg !337
  %64 = fadd double %61, %63, !dbg !339
  call void @fAddHandler(double %61, double %63, double %64, i64 94274001093216, i64 94274001094144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001094624, i32 19, i32 24), !dbg !340
  %65 = load i32, i32* %7, align 4, !dbg !340
  %66 = sext i32 %65 to i64, !dbg !341
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !341
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !342
  %69 = load double*, double** %68, align 8, !dbg !342
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !341
  %71 = load double, double* %70, align 8, !dbg !341
  %72 = call double @fabs(double %71) #1, !dbg !343
  %73 = fadd double %64, %72, !dbg !345
  call void @fAddHandler(double %64, double %72, double %73, i64 94274001094624, i64 94274001099856, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001100336, i32 19, i32 35), !dbg !346
  %74 = load double, double* %12, align 8, !dbg !346
  %75 = fadd double %74, %73, !dbg !346
  call void @fAddHandler(double %74, double %73, double %75, i64 94274001100728, i64 94274001100336, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001101136, i32 19, i32 7), !dbg !346
  store double %75, double* %12, align 8, !dbg !346
  %76 = load double, double* %13, align 8, !dbg !347
  store double %76, double* %9, align 8, !dbg !348
  br label %77, !dbg !349

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !350
  %79 = add nsw i32 %78, -1, !dbg !350
  store i32 %79, i32* %7, align 4, !dbg !350
  br label %38, !dbg !352, !llvm.loop !353

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !355, metadata !95), !dbg !357
  %81 = load double, double* %8, align 8, !dbg !358
  store double %81, double* %14, align 8, !dbg !357
  %82 = load double, double* %10, align 8, !dbg !359
  %83 = load double, double* %8, align 8, !dbg !360
  %84 = fmul double %82, %83, !dbg !361
  call void @fMulHandler(double %82, double %83, double %84, i64 94274001112264, i64 94274001112648, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001113056, i32 25, i32 10), !dbg !362
  %85 = load double, double* %9, align 8, !dbg !362
  %86 = fsub double %84, %85, !dbg !363
  call void @fSubHandler(double %84, double %85, double %86, i64 94274001113056, i64 94274001113448, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001113856, i32 25, i32 13), !dbg !364
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !364
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !365
  %89 = load double*, double** %88, align 8, !dbg !365
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !364
  %91 = load double, double* %90, align 8, !dbg !364
  %92 = fmul double 5.000000e-01, %91, !dbg !366
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94274001118488, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001118704, i32 25, i32 24), !dbg !367
  %93 = fadd double %86, %92, !dbg !367
  call void @fAddHandler(double %86, double %92, double %93, i64 94274001113856, i64 94274001118704, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001119088, i32 25, i32 18), !dbg !368
  store double %93, double* %8, align 8, !dbg !368
  %94 = load double, double* %10, align 8, !dbg !369
  %95 = load double, double* %14, align 8, !dbg !370
  %96 = fmul double %94, %95, !dbg !371
  call void @fMulHandler(double %94, double %95, double %96, i64 94274001119896, i64 94274001120280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001120688, i32 26, i32 16), !dbg !372
  %97 = call double @fabs(double %96) #1, !dbg !372
  %98 = load double, double* %9, align 8, !dbg !373
  %99 = call double @fabs(double %98) #1, !dbg !374
  %100 = fadd double %97, %99, !dbg !376
  call void @fAddHandler(double %97, double %99, double %100, i64 94274001121168, i64 94274001122096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001122576, i32 26, i32 23), !dbg !377
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !377
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !378
  %103 = load double*, double** %102, align 8, !dbg !378
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !377
  %105 = load double, double* %104, align 8, !dbg !377
  %106 = call double @fabs(double %105) #1, !dbg !379
  %107 = fmul double 5.000000e-01, %106, !dbg !381
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94274001127328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001127840, i32 26, i32 40), !dbg !382
  %108 = fadd double %100, %107, !dbg !382
  call void @fAddHandler(double %100, double %107, double %108, i64 94274001122576, i64 94274001127840, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001128224, i32 26, i32 34), !dbg !383
  %109 = load double, double* %12, align 8, !dbg !383
  %110 = fadd double %109, %108, !dbg !383
  call void @fAddHandler(double %109, double %108, double %110, i64 94274001128616, i64 94274001128224, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001129024, i32 26, i32 7), !dbg !383
  store double %110, double* %12, align 8, !dbg !383
  %111 = load double, double* %8, align 8, !dbg !384
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !385
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !386
  store double %111, double* %113, align 8, !dbg !387
  %114 = load double, double* %12, align 8, !dbg !388
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !389
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94274001132440, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001132848, i32 30, i32 33), !dbg !390
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !390
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !391
  %118 = load i32, i32* %117, align 8, !dbg !391
  %119 = sext i32 %118 to i64, !dbg !392
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !392
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !393
  %122 = load double*, double** %121, align 8, !dbg !393
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !392
  %124 = load double, double* %123, align 8, !dbg !392
  %125 = call double @fabs(double %124) #1, !dbg !394
  %126 = fadd double %115, %125, !dbg !395
  call void @fAddHandler(double %115, double %125, double %126, i64 94274001132848, i64 94274001140176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @3, i32 0, i32 0), i64 94274001140656, i32 30, i32 37), !dbg !396
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !396
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !397
  store double %126, double* %128, align 8, !dbg !398
  ret i32 0, !dbg !399
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_synchrotron_2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !400 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !401, metadata !95), !dbg !402
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !403, metadata !95), !dbg !404
  %16 = load double, double* %4, align 8, !dbg !405
  %17 = fcmp olt double %16, 0.000000e+00, !dbg !407
  %18 = call i1 @fCmpInstHandler(double %16, double 0.000000e+00, i1 %17, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001148432, i32 232, i32 8), !dbg !408
  br i1 %18, label %19, label %28, !dbg !408

; <label>:19:                                     ; preds = %2
  br label %20, !dbg !409, !llvm.loop !411

; <label>:20:                                     ; preds = %19
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !412
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !412
  store double 0x7FF8000000000000, double* %22, align 8, !dbg !412
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !412
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !412
  store double 0x7FF8000000000000, double* %24, align 8, !dbg !412
  br label %25, !dbg !412, !llvm.loop !415

; <label>:25:                                     ; preds = %20
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 233, i32 1), !dbg !417
  store i32 1, i32* %3, align 4, !dbg !417
  br label %147, !dbg !417
                                                  ; No predecessors!
  br label %27, !dbg !420

; <label>:27:                                     ; preds = %26
  br label %147, !dbg !422

; <label>:28:                                     ; preds = %2
  %29 = load double, double* %4, align 8, !dbg !423
  %30 = fcmp olt double %29, 0x3E66A09E667F3BCD, !dbg !425
  %31 = call i1 @fCmpInstHandler(double %29, double 0x3E66A09E667F3BCD, i1 %30, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001156800, i32 235, i32 13), !dbg !426
  br i1 %31, label %32, label %52, !dbg !426

; <label>:32:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata double* %6, metadata !427, metadata !95), !dbg !429
  %33 = load double, double* %4, align 8, !dbg !430
  %34 = call double @pow(double %33, double 0x3FD5555555555555) #6, !dbg !431
  call void @callTwoArgsHandler(i32 15, double %33, double 0x3FD5555555555555, double %34, i64 94274001158968, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001159464, i32 240, i32 16), !dbg !429
  store double %34, double* %6, align 8, !dbg !429
  call void @llvm.dbg.declare(metadata double* %7, metadata !432, metadata !95), !dbg !433
  %35 = load double, double* %6, align 8, !dbg !434
  %36 = fmul double 0x3FF2D7BE2398B31C, %35, !dbg !435
  call void @fMulHandler(double 0x3FF2D7BE2398B31C, double %35, double %36, i64 0, i64 94274001162680, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001163120, i32 241, i32 42), !dbg !436
  %37 = load double, double* %4, align 8, !dbg !436
  %38 = fmul double %36, %37, !dbg !437
  call void @fMulHandler(double %36, double %37, double %38, i64 94274001163120, i64 94274001163512, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001163920, i32 241, i32 46), !dbg !438
  %39 = fsub double 1.000000e+00, %38, !dbg !438
  call void @fSubHandler(double 1.000000e+00, double %38, double %39, i64 0, i64 94274001163920, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001164368, i32 241, i32 19), !dbg !433
  store double %39, double* %7, align 8, !dbg !433
  %40 = load double, double* %6, align 8, !dbg !439
  %41 = fmul double 0x3FF1323BDCD9C076, %40, !dbg !440
  call void @fMulHandler(double 0x3FF1323BDCD9C076, double %40, double %41, i64 0, i64 94274001166408, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001166880, i32 242, i32 42), !dbg !441
  %42 = load double, double* %7, align 8, !dbg !441
  %43 = fmul double %41, %42, !dbg !442
  call void @fMulHandler(double %41, double %42, double %43, i64 94274001166880, i64 94274001167272, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001167680, i32 242, i32 46), !dbg !443
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !443
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !444
  store double %43, double* %45, align 8, !dbg !445
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !446
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !447
  %48 = load double, double* %47, align 8, !dbg !447
  %49 = fmul double 0x3CC0000000000000, %48, !dbg !448
  call void @fMulHandler(double 0x3CC0000000000000, double %48, double %49, i64 0, i64 94274001170152, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001171824, i32 243, i32 41), !dbg !449
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !449
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 1, !dbg !450
  store double %49, double* %51, align 8, !dbg !451
  store i32 0, i32* %3, align 4, !dbg !452
  br label %147, !dbg !452

; <label>:52:                                     ; preds = %28
  %53 = load double, double* %4, align 8, !dbg !453
  %54 = fcmp ole double %53, 4.000000e+00, !dbg !455
  %55 = call i1 @fCmpInstHandler(double %53, double 4.000000e+00, i1 %54, i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001175904, i32 246, i32 13), !dbg !456
  br i1 %55, label %56, label %101, !dbg !456

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata double* %8, metadata !457, metadata !95), !dbg !459
  %57 = load double, double* %4, align 8, !dbg !460
  %58 = call double @pow(double %57, double 0x3FD5555555555555) #6, !dbg !461
  call void @callTwoArgsHandler(i32 15, double %57, double 0x3FD5555555555555, double %58, i64 94274001178040, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001178536, i32 247, i32 24), !dbg !459
  store double %58, double* %8, align 8, !dbg !459
  call void @llvm.dbg.declare(metadata double* %9, metadata !462, metadata !95), !dbg !463
  %59 = load double, double* %8, align 8, !dbg !464
  %60 = call double @gsl_sf_pow_int(double %59, i32 5), !dbg !465
  store double %60, double* %9, align 8, !dbg !463
  call void @llvm.dbg.declare(metadata double* %10, metadata !466, metadata !95), !dbg !467
  %61 = load double, double* %4, align 8, !dbg !468
  %62 = load double, double* %4, align 8, !dbg !469
  %63 = fmul double %61, %62, !dbg !470
  call void @fMulHandler(double %61, double %62, double %63, i64 94274001185496, i64 94274001185848, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001186256, i32 249, i32 23), !dbg !471
  %64 = fdiv double %63, 8.000000e+00, !dbg !471
  call void @fDivHandler(double %63, double 8.000000e+00, double %64, i64 94274001186256, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001186704, i32 249, i32 25), !dbg !472
  %65 = fsub double %64, 1.000000e+00, !dbg !472
  call void @fSubHandler(double %64, double 1.000000e+00, double %65, i64 94274001186704, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001187120, i32 249, i32 30), !dbg !467
  store double %65, double* %10, align 8, !dbg !467
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !473, metadata !95), !dbg !474
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !475, metadata !95), !dbg !476
  %66 = load double, double* %10, align 8, !dbg !477
  %67 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @synchrotron21_cs, double %66, %struct.gsl_sf_result_struct* %11), !dbg !478
  %68 = load double, double* %10, align 8, !dbg !479
  %69 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @synchrotron22_cs, double %68, %struct.gsl_sf_result_struct* %12), !dbg !480
  %70 = load double, double* %8, align 8, !dbg !481
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !482
  %72 = load double, double* %71, align 8, !dbg !482
  %73 = fmul double %70, %72, !dbg !483
  call void @fMulHandler(double %70, double %72, double %73, i64 94274001193256, i64 94274001194056, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001195728, i32 254, i32 23), !dbg !484
  %74 = load double, double* %9, align 8, !dbg !484
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !485
  %76 = load double, double* %75, align 8, !dbg !485
  %77 = fmul double %74, %76, !dbg !486
  call void @fMulHandler(double %74, double %76, double %77, i64 94274001196120, i64 94274001196952, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001198624, i32 254, i32 41), !dbg !487
  %78 = fsub double %73, %77, !dbg !487
  call void @fSubHandler(double %73, double %77, double %78, i64 94274001195728, i64 94274001198624, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001199040, i32 254, i32 35), !dbg !488
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !488
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !489
  store double %78, double* %80, align 8, !dbg !490
  %81 = load double, double* %8, align 8, !dbg !491
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !492
  %83 = load double, double* %82, align 8, !dbg !492
  %84 = fmul double %81, %83, !dbg !493
  call void @fMulHandler(double %81, double %83, double %84, i64 94274001200680, i64 94274001201512, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001203184, i32 255, i32 23), !dbg !494
  %85 = load double, double* %9, align 8, !dbg !494
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !495
  %87 = load double, double* %86, align 8, !dbg !495
  %88 = fmul double %85, %87, !dbg !496
  call void @fMulHandler(double %85, double %87, double %88, i64 94274001203576, i64 94274001204408, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001206080, i32 255, i32 41), !dbg !497
  %89 = fadd double %84, %88, !dbg !497
  call void @fAddHandler(double %84, double %88, double %89, i64 94274001203184, i64 94274001206080, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001206496, i32 255, i32 35), !dbg !498
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !498
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 1, !dbg !499
  store double %89, double* %91, align 8, !dbg !500
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !501
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !502
  %94 = load double, double* %93, align 8, !dbg !502
  %95 = call double @fabs(double %94) #1, !dbg !503
  %96 = fmul double 0x3CC0000000000000, %95, !dbg !504
  call void @fMulHandler(double 0x3CC0000000000000, double %95, double %96, i64 0, i64 94274001210704, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001211184, i32 256, i32 42), !dbg !505
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !505
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 1, !dbg !506
  %99 = load double, double* %98, align 8, !dbg !507
  %100 = fadd double %99, %96, !dbg !507
  call void @fAddHandler(double %99, double %96, double %100, i64 94274001212408, i64 94274001211184, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001212816, i32 256, i32 17), !dbg !507
  store double %100, double* %98, align 8, !dbg !507
  store i32 0, i32* %3, align 4, !dbg !508
  br label %147, !dbg !508

; <label>:101:                                    ; preds = %52
  %102 = load double, double* %4, align 8, !dbg !509
  %103 = fcmp olt double %102, 0x40894CC46AD56A15, !dbg !511
  %104 = call i1 @fCmpInstHandler(double %102, double 0x40894CC46AD56A15, i1 %103, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001217008, i32 259, i32 13), !dbg !512
  br i1 %104, label %105, label %135, !dbg !512

; <label>:105:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata double* %13, metadata !513, metadata !95), !dbg !515
  store double 0x3FCCE6BB25AA1316, double* %13, align 8, !dbg !515
  call void @llvm.dbg.declare(metadata double* %14, metadata !516, metadata !95), !dbg !517
  %106 = load double, double* %4, align 8, !dbg !518
  %107 = fsub double 1.000000e+01, %106, !dbg !519
  call void @fSubHandler(double 1.000000e+01, double %106, double %107, i64 0, i64 94274001221944, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001222416, i32 261, i32 29), !dbg !520
  %108 = load double, double* %4, align 8, !dbg !520
  %109 = fadd double %108, 2.000000e+00, !dbg !521
  call void @fAddHandler(double %108, double 2.000000e+00, double %109, i64 94274001222776, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001223216, i32 261, i32 39), !dbg !522
  %110 = fdiv double %107, %109, !dbg !522
  call void @fDivHandler(double %107, double %109, double %110, i64 94274001222416, i64 94274001223216, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001223600, i32 261, i32 34), !dbg !517
  store double %110, double* %14, align 8, !dbg !517
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !523, metadata !95), !dbg !524
  %111 = load double, double* %14, align 8, !dbg !525
  %112 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @synchrotron2a_cs, double %111, %struct.gsl_sf_result_struct* %15), !dbg !526
  %113 = load double, double* %4, align 8, !dbg !527
  %114 = call double @sqrt(double %113) #6, !dbg !528
  call void @callOneArgHandler(i32 14, double %113, double %114, i64 94274001227736, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001228176, i32 264, i32 19), !dbg !529
  %115 = load double, double* %4, align 8, !dbg !529
  %116 = fsub double 0x3FCCE6BB25AA1316, %115, !dbg !530
  call void @fSubHandler(double 0x3FCCE6BB25AA1316, double %115, double %116, i64 0, i64 94274001228632, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001229040, i32 264, i32 35), !dbg !531
  %117 = call double @exp(double %116) #6, !dbg !531
  call void @callOneArgHandler(i32 11, double %116, double %117, i64 94274001229040, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001229520, i32 264, i32 29), !dbg !533
  %118 = fmul double %114, %117, !dbg !533
  call void @fMulHandler(double %114, double %117, double %118, i64 94274001228176, i64 94274001229520, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001230000, i32 264, i32 27), !dbg !534
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !534
  %120 = load double, double* %119, align 8, !dbg !534
  %121 = fmul double %118, %120, !dbg !535
  call void @fMulHandler(double %118, double %120, double %121, i64 94274001230000, i64 94274001230840, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001232512, i32 264, i32 39), !dbg !536
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !536
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 0, !dbg !537
  store double %121, double* %123, align 8, !dbg !538
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !539
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 0, !dbg !540
  %126 = load double, double* %125, align 8, !dbg !540
  %127 = fmul double 0x3CB0000000000000, %126, !dbg !541
  call void @fMulHandler(double 0x3CB0000000000000, double %126, double %127, i64 0, i64 94274001234984, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001236656, i32 265, i32 35), !dbg !542
  %128 = load double, double* %4, align 8, !dbg !542
  %129 = fsub double 0x3FCCE6BB25AA1316, %128, !dbg !543
  call void @fSubHandler(double 0x3FCCE6BB25AA1316, double %128, double %129, i64 0, i64 94274001237048, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001237456, i32 265, i32 59), !dbg !544
  %130 = call double @fabs(double %129) #1, !dbg !544
  %131 = fadd double %130, 1.000000e+00, !dbg !545
  call void @fAddHandler(double %130, double 1.000000e+00, double %131, i64 94274001237936, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001238448, i32 265, i32 62), !dbg !546
  %132 = fmul double %127, %131, !dbg !546
  call void @fMulHandler(double %127, double %131, double %132, i64 94274001236656, i64 94274001238448, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i32 0, i32 0), i64 94274001238832, i32 265, i32 49), !dbg !547
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !547
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 1, !dbg !548
  store double %132, double* %134, align 8, !dbg !549
  store i32 0, i32* %3, align 4, !dbg !550
  br label %147, !dbg !550

; <label>:135:                                    ; preds = %101
  br label %136, !dbg !551, !llvm.loop !553

; <label>:136:                                    ; preds = %135
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !554
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 0, !dbg !554
  store double 0.000000e+00, double* %138, align 8, !dbg !554
  %139 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !554
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %139, i32 0, i32 1, !dbg !554
  store double 0x10000000000000, double* %140, align 8, !dbg !554
  br label %141, !dbg !554, !llvm.loop !557

; <label>:141:                                    ; preds = %136
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 269, i32 15), !dbg !559
  store i32 15, i32* %3, align 4, !dbg !559
  br label %147, !dbg !559
                                                  ; No predecessors!
  br label %143, !dbg !562

; <label>:143:                                    ; preds = %142
  br label %144

; <label>:144:                                    ; preds = %143
  br label %145

; <label>:145:                                    ; preds = %144
  br label %146

; <label>:146:                                    ; preds = %145
  br label %147

; <label>:147:                                    ; preds = %146, %141, %105, %56, %32, %27, %25
  %148 = load i32, i32* %3, align 4, !dbg !564
  ret i32 %148, !dbg !564
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_synchrotron_1(double) #0 !dbg !565 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !568, metadata !95), !dbg !569
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !570, metadata !95), !dbg !571
  call void @llvm.dbg.declare(metadata i32* %5, metadata !572, metadata !95), !dbg !571
  %6 = load double, double* %3, align 8, !dbg !571
  %7 = call i32 @gsl_sf_synchrotron_1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !571
  store i32 %7, i32* %5, align 4, !dbg !571
  %8 = load i32, i32* %5, align 4, !dbg !573
  %9 = icmp ne i32 %8, 0, !dbg !573
  %10 = sext i32 %8 to i64, !dbg !571
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @7, i32 0, i32 0), i64 94274001258896, i32 279, i32 3), !dbg !571
  br i1 %11, label %12, label %18, !dbg !571

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !575, !llvm.loop !578

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !580
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 279, i32 %14), !dbg !580
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !580
  %16 = load double, double* %15, align 8, !dbg !580
  store double %16, double* %2, align 8, !dbg !580
  br label %21, !dbg !580
                                                  ; No predecessors!
  br label %18, !dbg !583

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !585
  %20 = load double, double* %19, align 8, !dbg !585
  store double %20, double* %2, align 8, !dbg !585
  br label %21, !dbg !585

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !587
  ret double %22, !dbg !587
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_synchrotron_2(double) #0 !dbg !588 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !589, metadata !95), !dbg !590
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !591, metadata !95), !dbg !592
  call void @llvm.dbg.declare(metadata i32* %5, metadata !593, metadata !95), !dbg !592
  %6 = load double, double* %3, align 8, !dbg !592
  %7 = call i32 @gsl_sf_synchrotron_2_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !592
  store i32 %7, i32* %5, align 4, !dbg !592
  %8 = load i32, i32* %5, align 4, !dbg !594
  %9 = icmp ne i32 %8, 0, !dbg !594
  %10 = sext i32 %8 to i64, !dbg !592
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @9, i32 0, i32 0), i64 94274001276192, i32 284, i32 3), !dbg !592
  br i1 %11, label %12, label %18, !dbg !592

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !596, !llvm.loop !599

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !601
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 284, i32 %14), !dbg !601
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !601
  %16 = load double, double* %15, align 8, !dbg !601
  store double %16, double* %2, align 8, !dbg !601
  br label %21, !dbg !601
                                                  ; No predecessors!
  br label %18, !dbg !604

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !606
  %20 = load double, double* %19, align 8, !dbg !606
  store double %20, double* %2, align 8, !dbg !606
  br label %21, !dbg !606

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !608
  ret double %22, !dbg !608
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
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!78, !79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "synchrotron.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60, !64, !65, !69, !70, !71, !72, !73, !74}
!42 = distinct !DIGlobalVariable(name: "synchrotron1_cs", scope: !0, file: !1, line: 49, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @synchrotron1_cs)
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
!55 = distinct !DIGlobalVariable(name: "synchrotron1_data", scope: !0, file: !1, line: 34, type: !56, isLocal: true, isDefinition: true, variable: [13 x double]* @synchrotron1_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 832, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 13)
!59 = distinct !DIGlobalVariable(name: "synchrotron2_cs", scope: !0, file: !1, line: 70, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @synchrotron2_cs)
!60 = distinct !DIGlobalVariable(name: "synchrotron2_data", scope: !0, file: !1, line: 56, type: !61, isLocal: true, isDefinition: true, variable: [12 x double]* @synchrotron2_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 768, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 12)
!64 = distinct !DIGlobalVariable(name: "synchrotron1a_cs", scope: !0, file: !1, line: 102, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @synchrotron1a_cs)
!65 = distinct !DIGlobalVariable(name: "synchrotron1a_data", scope: !0, file: !1, line: 77, type: !66, isLocal: true, isDefinition: true, variable: [23 x double]* @synchrotron1a_data)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1472, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 23)
!69 = distinct !DIGlobalVariable(name: "synchrotron21_cs", scope: !0, file: !1, line: 124, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @synchrotron21_cs)
!70 = distinct !DIGlobalVariable(name: "synchrotron21_data", scope: !0, file: !1, line: 109, type: !56, isLocal: true, isDefinition: true, variable: [13 x double]* @synchrotron21_data)
!71 = distinct !DIGlobalVariable(name: "synchrotron22_cs", scope: !0, file: !1, line: 146, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @synchrotron22_cs)
!72 = distinct !DIGlobalVariable(name: "synchrotron22_data", scope: !0, file: !1, line: 131, type: !56, isLocal: true, isDefinition: true, variable: [13 x double]* @synchrotron22_data)
!73 = distinct !DIGlobalVariable(name: "synchrotron2a_cs", scope: !0, file: !1, line: 172, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @synchrotron2a_cs)
!74 = distinct !DIGlobalVariable(name: "synchrotron2a_data", scope: !0, file: !1, line: 153, type: !75, isLocal: true, isDefinition: true, variable: [17 x double]* @synchrotron2a_data)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1088, align: 64, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 17)
!78 = !{i32 2, !"Dwarf Version", i32 4}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 1, !"PIC Level", i32 2}
!81 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!82 = distinct !DISubprogram(name: "gsl_sf_synchrotron_1_e", scope: !1, file: !1, line: 182, type: !83, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !93)
!83 = !DISubroutineType(types: !84)
!84 = !{!51, !85, !86}
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !88, line: 41, baseType: !89)
!88 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !88, line: 37, size: 128, align: 64, elements: !90)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !89, file: !88, line: 38, baseType: !49, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !89, file: !88, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!93 = !{}
!94 = !DILocalVariable(name: "x", arg: 1, scope: !82, file: !1, line: 182, type: !85)
!95 = !DIExpression()
!96 = !DILocation(line: 182, column: 41, scope: !82)
!97 = !DILocalVariable(name: "result", arg: 2, scope: !82, file: !1, line: 182, type: !86)
!98 = !DILocation(line: 182, column: 60, scope: !82)
!99 = !DILocation(line: 186, column: 6, scope: !100)
!100 = distinct !DILexicalBlock(scope: !82, file: !1, line: 186, column: 6)
!101 = !DILocation(line: 186, column: 8, scope: !100)
!102 = !DILocation(line: 186, column: 6, scope: !82)
!103 = !DILocation(line: 187, column: 5, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 186, column: 15)
!105 = distinct !{!105, !103}
!106 = !DILocation(line: 187, column: 5, scope: !107)
!107 = !DILexicalBlockFile(scope: !108, file: !1, discriminator: 1)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 187, column: 5)
!109 = distinct !{!109, !110}
!110 = !DILocation(line: 187, column: 5, scope: !108)
!111 = !DILocation(line: 187, column: 5, scope: !112)
!112 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 2)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 187, column: 5)
!114 = !DILocation(line: 187, column: 5, scope: !115)
!115 = !DILexicalBlockFile(scope: !108, file: !1, discriminator: 3)
!116 = !DILocation(line: 188, column: 3, scope: !104)
!117 = !DILocation(line: 189, column: 11, scope: !118)
!118 = distinct !DILexicalBlock(scope: !100, file: !1, line: 189, column: 11)
!119 = !DILocation(line: 189, column: 13, scope: !118)
!120 = !DILocation(line: 189, column: 11, scope: !100)
!121 = !DILocalVariable(name: "z", scope: !122, file: !1, line: 193, type: !49)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 189, column: 51)
!123 = !DILocation(line: 193, column: 12, scope: !122)
!124 = !DILocation(line: 193, column: 20, scope: !122)
!125 = !DILocation(line: 193, column: 16, scope: !122)
!126 = !DILocalVariable(name: "cf", scope: !122, file: !1, line: 194, type: !49)
!127 = !DILocation(line: 194, column: 12, scope: !122)
!128 = !DILocation(line: 194, column: 44, scope: !122)
!129 = !DILocation(line: 194, column: 42, scope: !122)
!130 = !DILocation(line: 194, column: 48, scope: !122)
!131 = !DILocation(line: 194, column: 46, scope: !122)
!132 = !DILocation(line: 194, column: 19, scope: !122)
!133 = !DILocation(line: 195, column: 44, scope: !122)
!134 = !DILocation(line: 195, column: 42, scope: !122)
!135 = !DILocation(line: 195, column: 48, scope: !122)
!136 = !DILocation(line: 195, column: 46, scope: !122)
!137 = !DILocation(line: 195, column: 5, scope: !122)
!138 = !DILocation(line: 195, column: 13, scope: !122)
!139 = !DILocation(line: 195, column: 17, scope: !122)
!140 = !DILocation(line: 196, column: 37, scope: !122)
!141 = !DILocation(line: 196, column: 45, scope: !122)
!142 = !DILocation(line: 196, column: 35, scope: !122)
!143 = !DILocation(line: 196, column: 5, scope: !122)
!144 = !DILocation(line: 196, column: 13, scope: !122)
!145 = !DILocation(line: 196, column: 17, scope: !122)
!146 = !DILocation(line: 197, column: 5, scope: !122)
!147 = !DILocation(line: 199, column: 11, scope: !148)
!148 = distinct !DILexicalBlock(scope: !118, file: !1, line: 199, column: 11)
!149 = !DILocation(line: 199, column: 13, scope: !148)
!150 = !DILocation(line: 199, column: 11, scope: !118)
!151 = !DILocalVariable(name: "c0", scope: !152, file: !1, line: 200, type: !85)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 199, column: 21)
!153 = !DILocation(line: 200, column: 18, scope: !152)
!154 = !DILocalVariable(name: "px", scope: !152, file: !1, line: 201, type: !85)
!155 = !DILocation(line: 201, column: 18, scope: !152)
!156 = !DILocation(line: 201, column: 29, scope: !152)
!157 = !DILocation(line: 201, column: 25, scope: !152)
!158 = !DILocalVariable(name: "px11", scope: !152, file: !1, line: 202, type: !85)
!159 = !DILocation(line: 202, column: 18, scope: !152)
!160 = !DILocation(line: 202, column: 40, scope: !152)
!161 = !DILocation(line: 202, column: 25, scope: !152)
!162 = !DILocalVariable(name: "t", scope: !152, file: !1, line: 203, type: !85)
!163 = !DILocation(line: 203, column: 18, scope: !152)
!164 = !DILocation(line: 203, column: 22, scope: !152)
!165 = !DILocation(line: 203, column: 24, scope: !152)
!166 = !DILocation(line: 203, column: 23, scope: !152)
!167 = !DILocation(line: 203, column: 25, scope: !152)
!168 = !DILocation(line: 203, column: 30, scope: !152)
!169 = !DILocalVariable(name: "result_c1", scope: !152, file: !1, line: 204, type: !87)
!170 = !DILocation(line: 204, column: 19, scope: !152)
!171 = !DILocalVariable(name: "result_c2", scope: !152, file: !1, line: 205, type: !87)
!172 = !DILocation(line: 205, column: 19, scope: !152)
!173 = !DILocation(line: 206, column: 35, scope: !152)
!174 = !DILocation(line: 206, column: 5, scope: !152)
!175 = !DILocation(line: 207, column: 35, scope: !152)
!176 = !DILocation(line: 207, column: 5, scope: !152)
!177 = !DILocation(line: 208, column: 20, scope: !152)
!178 = !DILocation(line: 208, column: 35, scope: !152)
!179 = !DILocation(line: 208, column: 23, scope: !152)
!180 = !DILocation(line: 208, column: 41, scope: !152)
!181 = !DILocation(line: 208, column: 58, scope: !152)
!182 = !DILocation(line: 208, column: 46, scope: !152)
!183 = !DILocation(line: 208, column: 39, scope: !152)
!184 = !DILocation(line: 208, column: 69, scope: !152)
!185 = !DILocation(line: 208, column: 67, scope: !152)
!186 = !DILocation(line: 208, column: 62, scope: !152)
!187 = !DILocation(line: 208, column: 5, scope: !152)
!188 = !DILocation(line: 208, column: 13, scope: !152)
!189 = !DILocation(line: 208, column: 18, scope: !152)
!190 = !DILocation(line: 209, column: 20, scope: !152)
!191 = !DILocation(line: 209, column: 35, scope: !152)
!192 = !DILocation(line: 209, column: 23, scope: !152)
!193 = !DILocation(line: 209, column: 41, scope: !152)
!194 = !DILocation(line: 209, column: 58, scope: !152)
!195 = !DILocation(line: 209, column: 46, scope: !152)
!196 = !DILocation(line: 209, column: 39, scope: !152)
!197 = !DILocation(line: 209, column: 69, scope: !152)
!198 = !DILocation(line: 209, column: 67, scope: !152)
!199 = !DILocation(line: 209, column: 71, scope: !152)
!200 = !DILocation(line: 209, column: 62, scope: !152)
!201 = !DILocation(line: 209, column: 5, scope: !152)
!202 = !DILocation(line: 209, column: 13, scope: !152)
!203 = !DILocation(line: 209, column: 18, scope: !152)
!204 = !DILocation(line: 210, column: 49, scope: !152)
!205 = !DILocation(line: 210, column: 57, scope: !152)
!206 = !DILocation(line: 210, column: 44, scope: !152)
!207 = !DILocation(line: 210, column: 42, scope: !152)
!208 = !DILocation(line: 210, column: 5, scope: !152)
!209 = !DILocation(line: 210, column: 13, scope: !152)
!210 = !DILocation(line: 210, column: 17, scope: !152)
!211 = !DILocation(line: 211, column: 5, scope: !152)
!212 = !DILocation(line: 213, column: 11, scope: !213)
!213 = distinct !DILexicalBlock(scope: !148, file: !1, line: 213, column: 11)
!214 = !DILocation(line: 213, column: 13, scope: !213)
!215 = !DILocation(line: 213, column: 11, scope: !148)
!216 = !DILocalVariable(name: "c0", scope: !217, file: !1, line: 214, type: !85)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 213, column: 41)
!218 = !DILocation(line: 214, column: 18, scope: !217)
!219 = !DILocalVariable(name: "t", scope: !217, file: !1, line: 215, type: !85)
!220 = !DILocation(line: 215, column: 18, scope: !217)
!221 = !DILocation(line: 215, column: 30, scope: !217)
!222 = !DILocation(line: 215, column: 28, scope: !217)
!223 = !DILocation(line: 215, column: 36, scope: !217)
!224 = !DILocation(line: 215, column: 38, scope: !217)
!225 = !DILocation(line: 215, column: 33, scope: !217)
!226 = !DILocalVariable(name: "result_c1", scope: !217, file: !1, line: 216, type: !87)
!227 = !DILocation(line: 216, column: 19, scope: !217)
!228 = !DILocation(line: 217, column: 36, scope: !217)
!229 = !DILocation(line: 217, column: 5, scope: !217)
!230 = !DILocation(line: 218, column: 24, scope: !217)
!231 = !DILocation(line: 218, column: 19, scope: !217)
!232 = !DILocation(line: 218, column: 39, scope: !217)
!233 = !DILocation(line: 218, column: 27, scope: !217)
!234 = !DILocation(line: 218, column: 54, scope: !217)
!235 = !DILocation(line: 218, column: 52, scope: !217)
!236 = !DILocation(line: 218, column: 45, scope: !237)
!237 = !DILexicalBlockFile(scope: !217, file: !1, discriminator: 1)
!238 = !DILocation(line: 218, column: 43, scope: !217)
!239 = !DILocation(line: 218, column: 5, scope: !217)
!240 = !DILocation(line: 218, column: 13, scope: !217)
!241 = !DILocation(line: 218, column: 17, scope: !217)
!242 = !DILocation(line: 219, column: 43, scope: !217)
!243 = !DILocation(line: 219, column: 51, scope: !217)
!244 = !DILocation(line: 219, column: 41, scope: !217)
!245 = !DILocation(line: 219, column: 66, scope: !217)
!246 = !DILocation(line: 219, column: 65, scope: !217)
!247 = !DILocation(line: 219, column: 58, scope: !217)
!248 = !DILocation(line: 219, column: 68, scope: !217)
!249 = !DILocation(line: 219, column: 55, scope: !217)
!250 = !DILocation(line: 219, column: 5, scope: !217)
!251 = !DILocation(line: 219, column: 13, scope: !217)
!252 = !DILocation(line: 219, column: 17, scope: !217)
!253 = !DILocation(line: 220, column: 5, scope: !217)
!254 = !DILocation(line: 223, column: 5, scope: !255)
!255 = distinct !DILexicalBlock(scope: !213, file: !1, line: 222, column: 8)
!256 = distinct !{!256, !254}
!257 = !DILocation(line: 223, column: 5, scope: !258)
!258 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 1)
!259 = distinct !DILexicalBlock(scope: !255, file: !1, line: 223, column: 5)
!260 = distinct !{!260, !261}
!261 = !DILocation(line: 223, column: 5, scope: !259)
!262 = !DILocation(line: 223, column: 5, scope: !263)
!263 = !DILexicalBlockFile(scope: !264, file: !1, discriminator: 2)
!264 = distinct !DILexicalBlock(scope: !259, file: !1, line: 223, column: 5)
!265 = !DILocation(line: 223, column: 5, scope: !266)
!266 = !DILexicalBlockFile(scope: !259, file: !1, discriminator: 3)
!267 = !DILocation(line: 225, column: 1, scope: !82)
!268 = distinct !DISubprogram(name: "cheb_eval_e", scope: !269, file: !269, line: 3, type: !270, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !93)
!269 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!270 = !DISubroutineType(types: !271)
!271 = !{!51, !272, !85, !86}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!274 = !DILocalVariable(name: "cs", arg: 1, scope: !268, file: !269, line: 3, type: !272)
!275 = !DILocation(line: 3, column: 33, scope: !268)
!276 = !DILocalVariable(name: "x", arg: 2, scope: !268, file: !269, line: 4, type: !85)
!277 = !DILocation(line: 4, column: 26, scope: !268)
!278 = !DILocalVariable(name: "result", arg: 3, scope: !268, file: !269, line: 5, type: !86)
!279 = !DILocation(line: 5, column: 29, scope: !268)
!280 = !DILocalVariable(name: "j", scope: !268, file: !269, line: 7, type: !51)
!281 = !DILocation(line: 7, column: 7, scope: !268)
!282 = !DILocalVariable(name: "d", scope: !268, file: !269, line: 8, type: !49)
!283 = !DILocation(line: 8, column: 10, scope: !268)
!284 = !DILocalVariable(name: "dd", scope: !268, file: !269, line: 9, type: !49)
!285 = !DILocation(line: 9, column: 10, scope: !268)
!286 = !DILocalVariable(name: "y", scope: !268, file: !269, line: 11, type: !49)
!287 = !DILocation(line: 11, column: 10, scope: !268)
!288 = !DILocation(line: 11, column: 20, scope: !268)
!289 = !DILocation(line: 11, column: 19, scope: !268)
!290 = !DILocation(line: 11, column: 24, scope: !268)
!291 = !DILocation(line: 11, column: 28, scope: !268)
!292 = !DILocation(line: 11, column: 22, scope: !268)
!293 = !DILocation(line: 11, column: 32, scope: !268)
!294 = !DILocation(line: 11, column: 36, scope: !268)
!295 = !DILocation(line: 11, column: 30, scope: !268)
!296 = !DILocation(line: 11, column: 42, scope: !268)
!297 = !DILocation(line: 11, column: 46, scope: !268)
!298 = !DILocation(line: 11, column: 50, scope: !268)
!299 = !DILocation(line: 11, column: 54, scope: !268)
!300 = !DILocation(line: 11, column: 48, scope: !268)
!301 = !DILocation(line: 11, column: 39, scope: !268)
!302 = !DILocalVariable(name: "y2", scope: !268, file: !269, line: 12, type: !49)
!303 = !DILocation(line: 12, column: 10, scope: !268)
!304 = !DILocation(line: 12, column: 21, scope: !268)
!305 = !DILocation(line: 12, column: 19, scope: !268)
!306 = !DILocalVariable(name: "e", scope: !268, file: !269, line: 14, type: !49)
!307 = !DILocation(line: 14, column: 10, scope: !268)
!308 = !DILocation(line: 16, column: 11, scope: !309)
!309 = distinct !DILexicalBlock(scope: !268, file: !269, line: 16, column: 3)
!310 = !DILocation(line: 16, column: 15, scope: !309)
!311 = !DILocation(line: 16, column: 9, scope: !309)
!312 = !DILocation(line: 16, column: 7, scope: !309)
!313 = !DILocation(line: 16, column: 22, scope: !314)
!314 = !DILexicalBlockFile(scope: !315, file: !269, discriminator: 1)
!315 = distinct !DILexicalBlock(scope: !309, file: !269, line: 16, column: 3)
!316 = !DILocation(line: 16, column: 23, scope: !314)
!317 = !DILocation(line: 16, column: 3, scope: !314)
!318 = !DILocalVariable(name: "temp", scope: !319, file: !269, line: 17, type: !49)
!319 = distinct !DILexicalBlock(scope: !315, file: !269, line: 16, column: 33)
!320 = !DILocation(line: 17, column: 12, scope: !319)
!321 = !DILocation(line: 17, column: 19, scope: !319)
!322 = !DILocation(line: 18, column: 9, scope: !319)
!323 = !DILocation(line: 18, column: 12, scope: !319)
!324 = !DILocation(line: 18, column: 11, scope: !319)
!325 = !DILocation(line: 18, column: 16, scope: !319)
!326 = !DILocation(line: 18, column: 14, scope: !319)
!327 = !DILocation(line: 18, column: 27, scope: !319)
!328 = !DILocation(line: 18, column: 21, scope: !319)
!329 = !DILocation(line: 18, column: 25, scope: !319)
!330 = !DILocation(line: 18, column: 19, scope: !319)
!331 = !DILocation(line: 18, column: 7, scope: !319)
!332 = !DILocation(line: 19, column: 15, scope: !319)
!333 = !DILocation(line: 19, column: 18, scope: !319)
!334 = !DILocation(line: 19, column: 17, scope: !319)
!335 = !DILocation(line: 19, column: 10, scope: !319)
!336 = !DILocation(line: 19, column: 31, scope: !319)
!337 = !DILocation(line: 19, column: 26, scope: !338)
!338 = !DILexicalBlockFile(scope: !319, file: !269, discriminator: 1)
!339 = !DILocation(line: 19, column: 24, scope: !319)
!340 = !DILocation(line: 19, column: 48, scope: !319)
!341 = !DILocation(line: 19, column: 42, scope: !319)
!342 = !DILocation(line: 19, column: 46, scope: !319)
!343 = !DILocation(line: 19, column: 37, scope: !344)
!344 = !DILexicalBlockFile(scope: !319, file: !269, discriminator: 2)
!345 = !DILocation(line: 19, column: 35, scope: !319)
!346 = !DILocation(line: 19, column: 7, scope: !319)
!347 = !DILocation(line: 20, column: 10, scope: !319)
!348 = !DILocation(line: 20, column: 8, scope: !319)
!349 = !DILocation(line: 21, column: 3, scope: !319)
!350 = !DILocation(line: 16, column: 29, scope: !351)
!351 = !DILexicalBlockFile(scope: !315, file: !269, discriminator: 2)
!352 = !DILocation(line: 16, column: 3, scope: !351)
!353 = distinct !{!353, !354}
!354 = !DILocation(line: 16, column: 3, scope: !268)
!355 = !DILocalVariable(name: "temp", scope: !356, file: !269, line: 24, type: !49)
!356 = distinct !DILexicalBlock(scope: !268, file: !269, line: 23, column: 3)
!357 = !DILocation(line: 24, column: 12, scope: !356)
!358 = !DILocation(line: 24, column: 19, scope: !356)
!359 = !DILocation(line: 25, column: 9, scope: !356)
!360 = !DILocation(line: 25, column: 11, scope: !356)
!361 = !DILocation(line: 25, column: 10, scope: !356)
!362 = !DILocation(line: 25, column: 15, scope: !356)
!363 = !DILocation(line: 25, column: 13, scope: !356)
!364 = !DILocation(line: 25, column: 26, scope: !356)
!365 = !DILocation(line: 25, column: 30, scope: !356)
!366 = !DILocation(line: 25, column: 24, scope: !356)
!367 = !DILocation(line: 25, column: 18, scope: !356)
!368 = !DILocation(line: 25, column: 7, scope: !356)
!369 = !DILocation(line: 26, column: 15, scope: !356)
!370 = !DILocation(line: 26, column: 17, scope: !356)
!371 = !DILocation(line: 26, column: 16, scope: !356)
!372 = !DILocation(line: 26, column: 10, scope: !356)
!373 = !DILocation(line: 26, column: 30, scope: !356)
!374 = !DILocation(line: 26, column: 25, scope: !375)
!375 = !DILexicalBlockFile(scope: !356, file: !269, discriminator: 1)
!376 = !DILocation(line: 26, column: 23, scope: !356)
!377 = !DILocation(line: 26, column: 47, scope: !356)
!378 = !DILocation(line: 26, column: 51, scope: !356)
!379 = !DILocation(line: 26, column: 42, scope: !380)
!380 = !DILexicalBlockFile(scope: !356, file: !269, discriminator: 2)
!381 = !DILocation(line: 26, column: 40, scope: !356)
!382 = !DILocation(line: 26, column: 34, scope: !356)
!383 = !DILocation(line: 26, column: 7, scope: !356)
!384 = !DILocation(line: 29, column: 17, scope: !268)
!385 = !DILocation(line: 29, column: 3, scope: !268)
!386 = !DILocation(line: 29, column: 11, scope: !268)
!387 = !DILocation(line: 29, column: 15, scope: !268)
!388 = !DILocation(line: 30, column: 35, scope: !268)
!389 = !DILocation(line: 30, column: 33, scope: !268)
!390 = !DILocation(line: 30, column: 50, scope: !268)
!391 = !DILocation(line: 30, column: 54, scope: !268)
!392 = !DILocation(line: 30, column: 44, scope: !268)
!393 = !DILocation(line: 30, column: 48, scope: !268)
!394 = !DILocation(line: 30, column: 39, scope: !268)
!395 = !DILocation(line: 30, column: 37, scope: !268)
!396 = !DILocation(line: 30, column: 3, scope: !268)
!397 = !DILocation(line: 30, column: 11, scope: !268)
!398 = !DILocation(line: 30, column: 15, scope: !268)
!399 = !DILocation(line: 32, column: 3, scope: !268)
!400 = distinct !DISubprogram(name: "gsl_sf_synchrotron_2_e", scope: !1, file: !1, line: 228, type: !83, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !93)
!401 = !DILocalVariable(name: "x", arg: 1, scope: !400, file: !1, line: 228, type: !85)
!402 = !DILocation(line: 228, column: 41, scope: !400)
!403 = !DILocalVariable(name: "result", arg: 2, scope: !400, file: !1, line: 228, type: !86)
!404 = !DILocation(line: 228, column: 60, scope: !400)
!405 = !DILocation(line: 232, column: 6, scope: !406)
!406 = distinct !DILexicalBlock(scope: !400, file: !1, line: 232, column: 6)
!407 = !DILocation(line: 232, column: 8, scope: !406)
!408 = !DILocation(line: 232, column: 6, scope: !400)
!409 = !DILocation(line: 233, column: 5, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !1, line: 232, column: 15)
!411 = distinct !{!411, !409}
!412 = !DILocation(line: 233, column: 5, scope: !413)
!413 = !DILexicalBlockFile(scope: !414, file: !1, discriminator: 1)
!414 = distinct !DILexicalBlock(scope: !410, file: !1, line: 233, column: 5)
!415 = distinct !{!415, !416}
!416 = !DILocation(line: 233, column: 5, scope: !414)
!417 = !DILocation(line: 233, column: 5, scope: !418)
!418 = !DILexicalBlockFile(scope: !419, file: !1, discriminator: 2)
!419 = distinct !DILexicalBlock(scope: !414, file: !1, line: 233, column: 5)
!420 = !DILocation(line: 233, column: 5, scope: !421)
!421 = !DILexicalBlockFile(scope: !414, file: !1, discriminator: 3)
!422 = !DILocation(line: 234, column: 3, scope: !410)
!423 = !DILocation(line: 235, column: 11, scope: !424)
!424 = distinct !DILexicalBlock(scope: !406, file: !1, line: 235, column: 11)
!425 = !DILocation(line: 235, column: 13, scope: !424)
!426 = !DILocation(line: 235, column: 11, scope: !406)
!427 = !DILocalVariable(name: "z", scope: !428, file: !1, line: 240, type: !49)
!428 = distinct !DILexicalBlock(scope: !424, file: !1, line: 235, column: 49)
!429 = !DILocation(line: 240, column: 12, scope: !428)
!430 = !DILocation(line: 240, column: 20, scope: !428)
!431 = !DILocation(line: 240, column: 16, scope: !428)
!432 = !DILocalVariable(name: "cf", scope: !428, file: !1, line: 241, type: !49)
!433 = !DILocation(line: 241, column: 12, scope: !428)
!434 = !DILocation(line: 241, column: 44, scope: !428)
!435 = !DILocation(line: 241, column: 42, scope: !428)
!436 = !DILocation(line: 241, column: 48, scope: !428)
!437 = !DILocation(line: 241, column: 46, scope: !428)
!438 = !DILocation(line: 241, column: 19, scope: !428)
!439 = !DILocation(line: 242, column: 44, scope: !428)
!440 = !DILocation(line: 242, column: 42, scope: !428)
!441 = !DILocation(line: 242, column: 48, scope: !428)
!442 = !DILocation(line: 242, column: 46, scope: !428)
!443 = !DILocation(line: 242, column: 5, scope: !428)
!444 = !DILocation(line: 242, column: 13, scope: !428)
!445 = !DILocation(line: 242, column: 17, scope: !428)
!446 = !DILocation(line: 243, column: 43, scope: !428)
!447 = !DILocation(line: 243, column: 51, scope: !428)
!448 = !DILocation(line: 243, column: 41, scope: !428)
!449 = !DILocation(line: 243, column: 5, scope: !428)
!450 = !DILocation(line: 243, column: 13, scope: !428)
!451 = !DILocation(line: 243, column: 17, scope: !428)
!452 = !DILocation(line: 244, column: 5, scope: !428)
!453 = !DILocation(line: 246, column: 11, scope: !454)
!454 = distinct !DILexicalBlock(scope: !424, file: !1, line: 246, column: 11)
!455 = !DILocation(line: 246, column: 13, scope: !454)
!456 = !DILocation(line: 246, column: 11, scope: !424)
!457 = !DILocalVariable(name: "px", scope: !458, file: !1, line: 247, type: !85)
!458 = distinct !DILexicalBlock(scope: !454, file: !1, line: 246, column: 21)
!459 = !DILocation(line: 247, column: 18, scope: !458)
!460 = !DILocation(line: 247, column: 28, scope: !458)
!461 = !DILocation(line: 247, column: 24, scope: !458)
!462 = !DILocalVariable(name: "px5", scope: !458, file: !1, line: 248, type: !85)
!463 = !DILocation(line: 248, column: 18, scope: !458)
!464 = !DILocation(line: 248, column: 39, scope: !458)
!465 = !DILocation(line: 248, column: 24, scope: !458)
!466 = !DILocalVariable(name: "t", scope: !458, file: !1, line: 249, type: !85)
!467 = !DILocation(line: 249, column: 18, scope: !458)
!468 = !DILocation(line: 249, column: 22, scope: !458)
!469 = !DILocation(line: 249, column: 24, scope: !458)
!470 = !DILocation(line: 249, column: 23, scope: !458)
!471 = !DILocation(line: 249, column: 25, scope: !458)
!472 = !DILocation(line: 249, column: 30, scope: !458)
!473 = !DILocalVariable(name: "cheb1", scope: !458, file: !1, line: 250, type: !87)
!474 = !DILocation(line: 250, column: 19, scope: !458)
!475 = !DILocalVariable(name: "cheb2", scope: !458, file: !1, line: 251, type: !87)
!476 = !DILocation(line: 251, column: 19, scope: !458)
!477 = !DILocation(line: 252, column: 36, scope: !458)
!478 = !DILocation(line: 252, column: 5, scope: !458)
!479 = !DILocation(line: 253, column: 36, scope: !458)
!480 = !DILocation(line: 253, column: 5, scope: !458)
!481 = !DILocation(line: 254, column: 20, scope: !458)
!482 = !DILocation(line: 254, column: 31, scope: !458)
!483 = !DILocation(line: 254, column: 23, scope: !458)
!484 = !DILocation(line: 254, column: 37, scope: !458)
!485 = !DILocation(line: 254, column: 49, scope: !458)
!486 = !DILocation(line: 254, column: 41, scope: !458)
!487 = !DILocation(line: 254, column: 35, scope: !458)
!488 = !DILocation(line: 254, column: 5, scope: !458)
!489 = !DILocation(line: 254, column: 13, scope: !458)
!490 = !DILocation(line: 254, column: 18, scope: !458)
!491 = !DILocation(line: 255, column: 20, scope: !458)
!492 = !DILocation(line: 255, column: 31, scope: !458)
!493 = !DILocation(line: 255, column: 23, scope: !458)
!494 = !DILocation(line: 255, column: 37, scope: !458)
!495 = !DILocation(line: 255, column: 49, scope: !458)
!496 = !DILocation(line: 255, column: 41, scope: !458)
!497 = !DILocation(line: 255, column: 35, scope: !458)
!498 = !DILocation(line: 255, column: 5, scope: !458)
!499 = !DILocation(line: 255, column: 13, scope: !458)
!500 = !DILocation(line: 255, column: 18, scope: !458)
!501 = !DILocation(line: 256, column: 49, scope: !458)
!502 = !DILocation(line: 256, column: 57, scope: !458)
!503 = !DILocation(line: 256, column: 44, scope: !458)
!504 = !DILocation(line: 256, column: 42, scope: !458)
!505 = !DILocation(line: 256, column: 5, scope: !458)
!506 = !DILocation(line: 256, column: 13, scope: !458)
!507 = !DILocation(line: 256, column: 17, scope: !458)
!508 = !DILocation(line: 257, column: 5, scope: !458)
!509 = !DILocation(line: 259, column: 11, scope: !510)
!510 = distinct !DILexicalBlock(scope: !454, file: !1, line: 259, column: 11)
!511 = !DILocation(line: 259, column: 13, scope: !510)
!512 = !DILocation(line: 259, column: 11, scope: !454)
!513 = !DILocalVariable(name: "c0", scope: !514, file: !1, line: 260, type: !85)
!514 = distinct !DILexicalBlock(scope: !510, file: !1, line: 259, column: 41)
!515 = !DILocation(line: 260, column: 18, scope: !514)
!516 = !DILocalVariable(name: "t", scope: !514, file: !1, line: 261, type: !85)
!517 = !DILocation(line: 261, column: 18, scope: !514)
!518 = !DILocation(line: 261, column: 31, scope: !514)
!519 = !DILocation(line: 261, column: 29, scope: !514)
!520 = !DILocation(line: 261, column: 37, scope: !514)
!521 = !DILocation(line: 261, column: 39, scope: !514)
!522 = !DILocation(line: 261, column: 34, scope: !514)
!523 = !DILocalVariable(name: "cheb1", scope: !514, file: !1, line: 262, type: !87)
!524 = !DILocation(line: 262, column: 19, scope: !514)
!525 = !DILocation(line: 263, column: 36, scope: !514)
!526 = !DILocation(line: 263, column: 5, scope: !514)
!527 = !DILocation(line: 264, column: 24, scope: !514)
!528 = !DILocation(line: 264, column: 19, scope: !514)
!529 = !DILocation(line: 264, column: 36, scope: !514)
!530 = !DILocation(line: 264, column: 35, scope: !514)
!531 = !DILocation(line: 264, column: 29, scope: !532)
!532 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 1)
!533 = !DILocation(line: 264, column: 27, scope: !514)
!534 = !DILocation(line: 264, column: 47, scope: !514)
!535 = !DILocation(line: 264, column: 39, scope: !514)
!536 = !DILocation(line: 264, column: 5, scope: !514)
!537 = !DILocation(line: 264, column: 13, scope: !514)
!538 = !DILocation(line: 264, column: 17, scope: !514)
!539 = !DILocation(line: 265, column: 37, scope: !514)
!540 = !DILocation(line: 265, column: 45, scope: !514)
!541 = !DILocation(line: 265, column: 35, scope: !514)
!542 = !DILocation(line: 265, column: 60, scope: !514)
!543 = !DILocation(line: 265, column: 59, scope: !514)
!544 = !DILocation(line: 265, column: 52, scope: !514)
!545 = !DILocation(line: 265, column: 62, scope: !514)
!546 = !DILocation(line: 265, column: 49, scope: !514)
!547 = !DILocation(line: 265, column: 5, scope: !514)
!548 = !DILocation(line: 265, column: 13, scope: !514)
!549 = !DILocation(line: 265, column: 17, scope: !514)
!550 = !DILocation(line: 266, column: 5, scope: !514)
!551 = !DILocation(line: 269, column: 5, scope: !552)
!552 = distinct !DILexicalBlock(scope: !510, file: !1, line: 268, column: 8)
!553 = distinct !{!553, !551}
!554 = !DILocation(line: 269, column: 5, scope: !555)
!555 = !DILexicalBlockFile(scope: !556, file: !1, discriminator: 1)
!556 = distinct !DILexicalBlock(scope: !552, file: !1, line: 269, column: 5)
!557 = distinct !{!557, !558}
!558 = !DILocation(line: 269, column: 5, scope: !556)
!559 = !DILocation(line: 269, column: 5, scope: !560)
!560 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 2)
!561 = distinct !DILexicalBlock(scope: !556, file: !1, line: 269, column: 5)
!562 = !DILocation(line: 269, column: 5, scope: !563)
!563 = !DILexicalBlockFile(scope: !556, file: !1, discriminator: 3)
!564 = !DILocation(line: 271, column: 1, scope: !400)
!565 = distinct !DISubprogram(name: "gsl_sf_synchrotron_1", scope: !1, file: !1, line: 277, type: !566, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !93)
!566 = !DISubroutineType(types: !567)
!567 = !{!49, !85}
!568 = !DILocalVariable(name: "x", arg: 1, scope: !565, file: !1, line: 277, type: !85)
!569 = !DILocation(line: 277, column: 42, scope: !565)
!570 = !DILocalVariable(name: "result", scope: !565, file: !1, line: 279, type: !87)
!571 = !DILocation(line: 279, column: 3, scope: !565)
!572 = !DILocalVariable(name: "status", scope: !565, file: !1, line: 279, type: !51)
!573 = !DILocation(line: 279, column: 3, scope: !574)
!574 = distinct !DILexicalBlock(scope: !565, file: !1, line: 279, column: 3)
!575 = !DILocation(line: 279, column: 3, scope: !576)
!576 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 1)
!577 = distinct !DILexicalBlock(scope: !574, file: !1, line: 279, column: 3)
!578 = distinct !{!578, !579}
!579 = !DILocation(line: 279, column: 3, scope: !577)
!580 = !DILocation(line: 279, column: 3, scope: !581)
!581 = !DILexicalBlockFile(scope: !582, file: !1, discriminator: 2)
!582 = distinct !DILexicalBlock(scope: !577, file: !1, line: 279, column: 3)
!583 = !DILocation(line: 279, column: 3, scope: !584)
!584 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 3)
!585 = !DILocation(line: 279, column: 3, scope: !586)
!586 = !DILexicalBlockFile(scope: !565, file: !1, discriminator: 4)
!587 = !DILocation(line: 280, column: 1, scope: !565)
!588 = distinct !DISubprogram(name: "gsl_sf_synchrotron_2", scope: !1, file: !1, line: 282, type: !566, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !93)
!589 = !DILocalVariable(name: "x", arg: 1, scope: !588, file: !1, line: 282, type: !85)
!590 = !DILocation(line: 282, column: 42, scope: !588)
!591 = !DILocalVariable(name: "result", scope: !588, file: !1, line: 284, type: !87)
!592 = !DILocation(line: 284, column: 3, scope: !588)
!593 = !DILocalVariable(name: "status", scope: !588, file: !1, line: 284, type: !51)
!594 = !DILocation(line: 284, column: 3, scope: !595)
!595 = distinct !DILexicalBlock(scope: !588, file: !1, line: 284, column: 3)
!596 = !DILocation(line: 284, column: 3, scope: !597)
!597 = !DILexicalBlockFile(scope: !598, file: !1, discriminator: 1)
!598 = distinct !DILexicalBlock(scope: !595, file: !1, line: 284, column: 3)
!599 = distinct !{!599, !600}
!600 = !DILocation(line: 284, column: 3, scope: !598)
!601 = !DILocation(line: 284, column: 3, scope: !602)
!602 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 2)
!603 = distinct !DILexicalBlock(scope: !598, file: !1, line: 284, column: 3)
!604 = !DILocation(line: 284, column: 3, scope: !605)
!605 = !DILexicalBlockFile(scope: !598, file: !1, discriminator: 3)
!606 = !DILocation(line: 284, column: 3, scope: !607)
!607 = !DILexicalBlockFile(scope: !588, file: !1, discriminator: 4)
!608 = !DILocation(line: 285, column: 1, scope: !588)
