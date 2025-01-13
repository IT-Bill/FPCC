; ModuleID = 'synchrotron.c'
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
  br i1 %18, label %19, label %28, !dbg !102

; <label>:19:                                     ; preds = %2
  br label %20, !dbg !103, !llvm.loop !105

; <label>:20:                                     ; preds = %19
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !106
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !106
  store double 0x7FF8000000000000, double* %22, align 8, !dbg !106
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !106
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !106
  store double 0x7FF8000000000000, double* %24, align 8, !dbg !106
  br label %25, !dbg !106, !llvm.loop !109

; <label>:25:                                     ; preds = %20
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 187, i32 1), !dbg !111
  store i32 1, i32* %3, align 4, !dbg !111
  br label %151, !dbg !111
                                                  ; No predecessors!
  br label %27, !dbg !114

; <label>:27:                                     ; preds = %26
  br label %151, !dbg !116

; <label>:28:                                     ; preds = %2
  %29 = load double, double* %4, align 8, !dbg !117
  %30 = fcmp olt double %29, 0x3E66A09E667F3BCD, !dbg !119
  br i1 %30, label %31, label %51, !dbg !120

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata double* %6, metadata !121, metadata !95), !dbg !123
  %32 = load double, double* %4, align 8, !dbg !124
  %33 = call double @pow(double %32, double 0x3FD5555555555555) #6, !dbg !125
  store double %33, double* %6, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata double* %7, metadata !126, metadata !95), !dbg !127
  %34 = load double, double* %6, align 8, !dbg !128
  %35 = fmul double 0x3FEB00839F875D26, %34, !dbg !129
  %36 = load double, double* %6, align 8, !dbg !130
  %37 = fmul double %35, %36, !dbg !131
  %38 = fsub double 1.000000e+00, %37, !dbg !132
  store double %38, double* %7, align 8, !dbg !127
  %39 = load double, double* %6, align 8, !dbg !133
  %40 = fmul double 0x4001323BDCD9C076, %39, !dbg !134
  %41 = load double, double* %7, align 8, !dbg !135
  %42 = fmul double %40, %41, !dbg !136
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !137
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !138
  store double %42, double* %44, align 8, !dbg !139
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !140
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !141
  %47 = load double, double* %46, align 8, !dbg !141
  %48 = fmul double 0x3CB0000000000000, %47, !dbg !142
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !143
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !144
  store double %48, double* %50, align 8, !dbg !145
  store i32 0, i32* %3, align 4, !dbg !146
  br label %151, !dbg !146

; <label>:51:                                     ; preds = %28
  %52 = load double, double* %4, align 8, !dbg !147
  %53 = fcmp ole double %52, 4.000000e+00, !dbg !149
  br i1 %53, label %54, label %106, !dbg !150

; <label>:54:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata double* %8, metadata !151, metadata !95), !dbg !153
  store double 0x3FFD05527B6E43D2, double* %8, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata double* %9, metadata !154, metadata !95), !dbg !155
  %55 = load double, double* %4, align 8, !dbg !156
  %56 = call double @pow(double %55, double 0x3FD5555555555555) #6, !dbg !157
  store double %56, double* %9, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata double* %10, metadata !158, metadata !95), !dbg !159
  %57 = load double, double* %9, align 8, !dbg !160
  %58 = call double @gsl_sf_pow_int(double %57, i32 11), !dbg !161
  store double %58, double* %10, align 8, !dbg !159
  call void @llvm.dbg.declare(metadata double* %11, metadata !162, metadata !95), !dbg !163
  %59 = load double, double* %4, align 8, !dbg !164
  %60 = load double, double* %4, align 8, !dbg !165
  %61 = fmul double %59, %60, !dbg !166
  %62 = fdiv double %61, 8.000000e+00, !dbg !167
  %63 = fsub double %62, 1.000000e+00, !dbg !168
  store double %63, double* %11, align 8, !dbg !163
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !169, metadata !95), !dbg !170
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !171, metadata !95), !dbg !172
  %64 = load double, double* %11, align 8, !dbg !173
  %65 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @synchrotron1_cs, double %64, %struct.gsl_sf_result_struct* %12), !dbg !174
  %66 = load double, double* %11, align 8, !dbg !175
  %67 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @synchrotron2_cs, double %66, %struct.gsl_sf_result_struct* %13), !dbg !176
  %68 = load double, double* %9, align 8, !dbg !177
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !178
  %70 = load double, double* %69, align 8, !dbg !178
  %71 = fmul double %68, %70, !dbg !179
  %72 = load double, double* %10, align 8, !dbg !180
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !181
  %74 = load double, double* %73, align 8, !dbg !181
  %75 = fmul double %72, %74, !dbg !182
  %76 = fsub double %71, %75, !dbg !183
  %77 = load double, double* %4, align 8, !dbg !184
  %78 = fmul double 0x3FFD05527B6E43D2, %77, !dbg !185
  %79 = fsub double %76, %78, !dbg !186
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !187
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !188
  store double %79, double* %81, align 8, !dbg !189
  %82 = load double, double* %9, align 8, !dbg !190
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !191
  %84 = load double, double* %83, align 8, !dbg !191
  %85 = fmul double %82, %84, !dbg !192
  %86 = load double, double* %10, align 8, !dbg !193
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !194
  %88 = load double, double* %87, align 8, !dbg !194
  %89 = fmul double %86, %88, !dbg !195
  %90 = fadd double %85, %89, !dbg !196
  %91 = load double, double* %4, align 8, !dbg !197
  %92 = fmul double 0x3FFD05527B6E43D2, %91, !dbg !198
  %93 = fmul double %92, 0x3CB0000000000000, !dbg !199
  %94 = fadd double %90, %93, !dbg !200
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !201
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !202
  store double %94, double* %96, align 8, !dbg !203
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !204
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 0, !dbg !205
  %99 = load double, double* %98, align 8, !dbg !205
  %100 = call double @fabs(double %99) #1, !dbg !206
  %101 = fmul double 0x3CC0000000000000, %100, !dbg !207
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !208
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 1, !dbg !209
  %104 = load double, double* %103, align 8, !dbg !210
  %105 = fadd double %104, %101, !dbg !210
  store double %105, double* %103, align 8, !dbg !210
  store i32 0, i32* %3, align 4, !dbg !211
  br label %151, !dbg !211

; <label>:106:                                    ; preds = %51
  %107 = load double, double* %4, align 8, !dbg !212
  %108 = fcmp olt double %107, 0x40894CC46AD56A15, !dbg !214
  br i1 %108, label %109, label %139, !dbg !215

; <label>:109:                                    ; preds = %106
  call void @llvm.dbg.declare(metadata double* %14, metadata !216, metadata !95), !dbg !218
  store double 0x3FCCE6BB25AA1316, double* %14, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata double* %15, metadata !219, metadata !95), !dbg !220
  %110 = load double, double* %4, align 8, !dbg !221
  %111 = fsub double 1.200000e+01, %110, !dbg !222
  %112 = load double, double* %4, align 8, !dbg !223
  %113 = fadd double %112, 4.000000e+00, !dbg !224
  %114 = fdiv double %111, %113, !dbg !225
  store double %114, double* %15, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !226, metadata !95), !dbg !227
  %115 = load double, double* %15, align 8, !dbg !228
  %116 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @synchrotron1a_cs, double %115, %struct.gsl_sf_result_struct* %16), !dbg !229
  %117 = load double, double* %4, align 8, !dbg !230
  %118 = call double @sqrt(double %117) #6, !dbg !231
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !232
  %120 = load double, double* %119, align 8, !dbg !232
  %121 = fmul double %118, %120, !dbg !233
  %122 = load double, double* %4, align 8, !dbg !234
  %123 = fsub double 0x3FCCE6BB25AA1316, %122, !dbg !235
  %124 = call double @exp(double %123) #6, !dbg !236
  %125 = fmul double %121, %124, !dbg !238
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !239
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 0, !dbg !240
  store double %125, double* %127, align 8, !dbg !241
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !242
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 0, !dbg !243
  %130 = load double, double* %129, align 8, !dbg !243
  %131 = fmul double 0x3CC0000000000000, %130, !dbg !244
  %132 = load double, double* %4, align 8, !dbg !245
  %133 = fsub double 0x3FCCE6BB25AA1316, %132, !dbg !246
  %134 = call double @fabs(double %133) #1, !dbg !247
  %135 = fadd double %134, 1.000000e+00, !dbg !248
  %136 = fmul double %131, %135, !dbg !249
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !250
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 1, !dbg !251
  store double %136, double* %138, align 8, !dbg !252
  store i32 0, i32* %3, align 4, !dbg !253
  br label %151, !dbg !253

; <label>:139:                                    ; preds = %106
  br label %140, !dbg !254, !llvm.loop !256

; <label>:140:                                    ; preds = %139
  %141 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !257
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %141, i32 0, i32 0, !dbg !257
  store double 0.000000e+00, double* %142, align 8, !dbg !257
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !257
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 1, !dbg !257
  store double 0x10000000000000, double* %144, align 8, !dbg !257
  br label %145, !dbg !257, !llvm.loop !260

; <label>:145:                                    ; preds = %140
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 223, i32 15), !dbg !262
  store i32 15, i32* %3, align 4, !dbg !262
  br label %151, !dbg !262
                                                  ; No predecessors!
  br label %147, !dbg !265

; <label>:147:                                    ; preds = %146
  br label %148

; <label>:148:                                    ; preds = %147
  br label %149

; <label>:149:                                    ; preds = %148
  br label %150

; <label>:150:                                    ; preds = %149
  br label %151

; <label>:151:                                    ; preds = %25, %31, %54, %109, %145, %150, %27
  %152 = load i32, i32* %3, align 4, !dbg !267
  ret i32 %152, !dbg !267
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
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !290
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !291
  %19 = load double, double* %18, align 8, !dbg !291
  %20 = fsub double %16, %19, !dbg !292
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !293
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !294
  %23 = load double, double* %22, align 8, !dbg !294
  %24 = fsub double %20, %23, !dbg !295
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !296
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !297
  %27 = load double, double* %26, align 8, !dbg !297
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !298
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !299
  %30 = load double, double* %29, align 8, !dbg !299
  %31 = fsub double %27, %30, !dbg !300
  %32 = fdiv double %24, %31, !dbg !301
  store double %32, double* %10, align 8, !dbg !287
  call void @llvm.dbg.declare(metadata double* %11, metadata !302, metadata !95), !dbg !303
  %33 = load double, double* %10, align 8, !dbg !304
  %34 = fmul double 2.000000e+00, %33, !dbg !305
  store double %34, double* %11, align 8, !dbg !303
  call void @llvm.dbg.declare(metadata double* %12, metadata !306, metadata !95), !dbg !307
  store double 0.000000e+00, double* %12, align 8, !dbg !307
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !308
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !310
  %37 = load i32, i32* %36, align 8, !dbg !310
  store i32 %37, i32* %7, align 4, !dbg !311
  br label %38, !dbg !312

; <label>:38:                                     ; preds = %75, %3
  %39 = load i32, i32* %7, align 4, !dbg !313
  %40 = icmp sge i32 %39, 1, !dbg !316
  br i1 %40, label %41, label %78, !dbg !317

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !318, metadata !95), !dbg !320
  %42 = load double, double* %8, align 8, !dbg !321
  store double %42, double* %13, align 8, !dbg !320
  %43 = load double, double* %11, align 8, !dbg !322
  %44 = load double, double* %8, align 8, !dbg !323
  %45 = fmul double %43, %44, !dbg !324
  %46 = load double, double* %9, align 8, !dbg !325
  %47 = fsub double %45, %46, !dbg !326
  %48 = load i32, i32* %7, align 4, !dbg !327
  %49 = sext i32 %48 to i64, !dbg !328
  %50 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !328
  %51 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %50, i32 0, i32 0, !dbg !329
  %52 = load double*, double** %51, align 8, !dbg !329
  %53 = getelementptr inbounds double, double* %52, i64 %49, !dbg !328
  %54 = load double, double* %53, align 8, !dbg !328
  %55 = fadd double %47, %54, !dbg !330
  store double %55, double* %8, align 8, !dbg !331
  %56 = load double, double* %11, align 8, !dbg !332
  %57 = load double, double* %13, align 8, !dbg !333
  %58 = fmul double %56, %57, !dbg !334
  %59 = call double @fabs(double %58) #1, !dbg !335
  %60 = load double, double* %9, align 8, !dbg !336
  %61 = call double @fabs(double %60) #1, !dbg !337
  %62 = fadd double %59, %61, !dbg !339
  %63 = load i32, i32* %7, align 4, !dbg !340
  %64 = sext i32 %63 to i64, !dbg !341
  %65 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !341
  %66 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %65, i32 0, i32 0, !dbg !342
  %67 = load double*, double** %66, align 8, !dbg !342
  %68 = getelementptr inbounds double, double* %67, i64 %64, !dbg !341
  %69 = load double, double* %68, align 8, !dbg !341
  %70 = call double @fabs(double %69) #1, !dbg !343
  %71 = fadd double %62, %70, !dbg !345
  %72 = load double, double* %12, align 8, !dbg !346
  %73 = fadd double %72, %71, !dbg !346
  store double %73, double* %12, align 8, !dbg !346
  %74 = load double, double* %13, align 8, !dbg !347
  store double %74, double* %9, align 8, !dbg !348
  br label %75, !dbg !349

; <label>:75:                                     ; preds = %41
  %76 = load i32, i32* %7, align 4, !dbg !350
  %77 = add nsw i32 %76, -1, !dbg !350
  store i32 %77, i32* %7, align 4, !dbg !350
  br label %38, !dbg !352, !llvm.loop !353

; <label>:78:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !355, metadata !95), !dbg !357
  %79 = load double, double* %8, align 8, !dbg !358
  store double %79, double* %14, align 8, !dbg !357
  %80 = load double, double* %10, align 8, !dbg !359
  %81 = load double, double* %8, align 8, !dbg !360
  %82 = fmul double %80, %81, !dbg !361
  %83 = load double, double* %9, align 8, !dbg !362
  %84 = fsub double %82, %83, !dbg !363
  %85 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !364
  %86 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %85, i32 0, i32 0, !dbg !365
  %87 = load double*, double** %86, align 8, !dbg !365
  %88 = getelementptr inbounds double, double* %87, i64 0, !dbg !364
  %89 = load double, double* %88, align 8, !dbg !364
  %90 = fmul double 5.000000e-01, %89, !dbg !366
  %91 = fadd double %84, %90, !dbg !367
  store double %91, double* %8, align 8, !dbg !368
  %92 = load double, double* %10, align 8, !dbg !369
  %93 = load double, double* %14, align 8, !dbg !370
  %94 = fmul double %92, %93, !dbg !371
  %95 = call double @fabs(double %94) #1, !dbg !372
  %96 = load double, double* %9, align 8, !dbg !373
  %97 = call double @fabs(double %96) #1, !dbg !374
  %98 = fadd double %95, %97, !dbg !376
  %99 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !377
  %100 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %99, i32 0, i32 0, !dbg !378
  %101 = load double*, double** %100, align 8, !dbg !378
  %102 = getelementptr inbounds double, double* %101, i64 0, !dbg !377
  %103 = load double, double* %102, align 8, !dbg !377
  %104 = call double @fabs(double %103) #1, !dbg !379
  %105 = fmul double 5.000000e-01, %104, !dbg !381
  %106 = fadd double %98, %105, !dbg !382
  %107 = load double, double* %12, align 8, !dbg !383
  %108 = fadd double %107, %106, !dbg !383
  store double %108, double* %12, align 8, !dbg !383
  %109 = load double, double* %8, align 8, !dbg !384
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !385
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 0, !dbg !386
  store double %109, double* %111, align 8, !dbg !387
  %112 = load double, double* %12, align 8, !dbg !388
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !389
  %114 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !390
  %115 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %114, i32 0, i32 1, !dbg !391
  %116 = load i32, i32* %115, align 8, !dbg !391
  %117 = sext i32 %116 to i64, !dbg !392
  %118 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !392
  %119 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %118, i32 0, i32 0, !dbg !393
  %120 = load double*, double** %119, align 8, !dbg !393
  %121 = getelementptr inbounds double, double* %120, i64 %117, !dbg !392
  %122 = load double, double* %121, align 8, !dbg !392
  %123 = call double @fabs(double %122) #1, !dbg !394
  %124 = fadd double %113, %123, !dbg !395
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !396
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !397
  store double %124, double* %126, align 8, !dbg !398
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
  br i1 %17, label %18, label %27, !dbg !408

; <label>:18:                                     ; preds = %2
  br label %19, !dbg !409, !llvm.loop !411

; <label>:19:                                     ; preds = %18
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !412
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !412
  store double 0x7FF8000000000000, double* %21, align 8, !dbg !412
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !412
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !412
  store double 0x7FF8000000000000, double* %23, align 8, !dbg !412
  br label %24, !dbg !412, !llvm.loop !415

; <label>:24:                                     ; preds = %19
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 233, i32 1), !dbg !417
  store i32 1, i32* %3, align 4, !dbg !417
  br label %143, !dbg !417
                                                  ; No predecessors!
  br label %26, !dbg !420

; <label>:26:                                     ; preds = %25
  br label %143, !dbg !422

; <label>:27:                                     ; preds = %2
  %28 = load double, double* %4, align 8, !dbg !423
  %29 = fcmp olt double %28, 0x3E66A09E667F3BCD, !dbg !425
  br i1 %29, label %30, label %50, !dbg !426

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata double* %6, metadata !427, metadata !95), !dbg !429
  %31 = load double, double* %4, align 8, !dbg !430
  %32 = call double @pow(double %31, double 0x3FD5555555555555) #6, !dbg !431
  store double %32, double* %6, align 8, !dbg !429
  call void @llvm.dbg.declare(metadata double* %7, metadata !432, metadata !95), !dbg !433
  %33 = load double, double* %6, align 8, !dbg !434
  %34 = fmul double 0x3FF2D7BE2398B31C, %33, !dbg !435
  %35 = load double, double* %4, align 8, !dbg !436
  %36 = fmul double %34, %35, !dbg !437
  %37 = fsub double 1.000000e+00, %36, !dbg !438
  store double %37, double* %7, align 8, !dbg !433
  %38 = load double, double* %6, align 8, !dbg !439
  %39 = fmul double 0x3FF1323BDCD9C076, %38, !dbg !440
  %40 = load double, double* %7, align 8, !dbg !441
  %41 = fmul double %39, %40, !dbg !442
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !443
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !444
  store double %41, double* %43, align 8, !dbg !445
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !446
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !447
  %46 = load double, double* %45, align 8, !dbg !447
  %47 = fmul double 0x3CC0000000000000, %46, !dbg !448
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !449
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !450
  store double %47, double* %49, align 8, !dbg !451
  store i32 0, i32* %3, align 4, !dbg !452
  br label %143, !dbg !452

; <label>:50:                                     ; preds = %27
  %51 = load double, double* %4, align 8, !dbg !453
  %52 = fcmp ole double %51, 4.000000e+00, !dbg !455
  br i1 %52, label %53, label %98, !dbg !456

; <label>:53:                                     ; preds = %50
  call void @llvm.dbg.declare(metadata double* %8, metadata !457, metadata !95), !dbg !459
  %54 = load double, double* %4, align 8, !dbg !460
  %55 = call double @pow(double %54, double 0x3FD5555555555555) #6, !dbg !461
  store double %55, double* %8, align 8, !dbg !459
  call void @llvm.dbg.declare(metadata double* %9, metadata !462, metadata !95), !dbg !463
  %56 = load double, double* %8, align 8, !dbg !464
  %57 = call double @gsl_sf_pow_int(double %56, i32 5), !dbg !465
  store double %57, double* %9, align 8, !dbg !463
  call void @llvm.dbg.declare(metadata double* %10, metadata !466, metadata !95), !dbg !467
  %58 = load double, double* %4, align 8, !dbg !468
  %59 = load double, double* %4, align 8, !dbg !469
  %60 = fmul double %58, %59, !dbg !470
  %61 = fdiv double %60, 8.000000e+00, !dbg !471
  %62 = fsub double %61, 1.000000e+00, !dbg !472
  store double %62, double* %10, align 8, !dbg !467
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !473, metadata !95), !dbg !474
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !475, metadata !95), !dbg !476
  %63 = load double, double* %10, align 8, !dbg !477
  %64 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @synchrotron21_cs, double %63, %struct.gsl_sf_result_struct* %11), !dbg !478
  %65 = load double, double* %10, align 8, !dbg !479
  %66 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @synchrotron22_cs, double %65, %struct.gsl_sf_result_struct* %12), !dbg !480
  %67 = load double, double* %8, align 8, !dbg !481
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !482
  %69 = load double, double* %68, align 8, !dbg !482
  %70 = fmul double %67, %69, !dbg !483
  %71 = load double, double* %9, align 8, !dbg !484
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !485
  %73 = load double, double* %72, align 8, !dbg !485
  %74 = fmul double %71, %73, !dbg !486
  %75 = fsub double %70, %74, !dbg !487
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !488
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 0, !dbg !489
  store double %75, double* %77, align 8, !dbg !490
  %78 = load double, double* %8, align 8, !dbg !491
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !492
  %80 = load double, double* %79, align 8, !dbg !492
  %81 = fmul double %78, %80, !dbg !493
  %82 = load double, double* %9, align 8, !dbg !494
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !495
  %84 = load double, double* %83, align 8, !dbg !495
  %85 = fmul double %82, %84, !dbg !496
  %86 = fadd double %81, %85, !dbg !497
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !498
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !499
  store double %86, double* %88, align 8, !dbg !500
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !501
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 0, !dbg !502
  %91 = load double, double* %90, align 8, !dbg !502
  %92 = call double @fabs(double %91) #1, !dbg !503
  %93 = fmul double 0x3CC0000000000000, %92, !dbg !504
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !505
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 1, !dbg !506
  %96 = load double, double* %95, align 8, !dbg !507
  %97 = fadd double %96, %93, !dbg !507
  store double %97, double* %95, align 8, !dbg !507
  store i32 0, i32* %3, align 4, !dbg !508
  br label %143, !dbg !508

; <label>:98:                                     ; preds = %50
  %99 = load double, double* %4, align 8, !dbg !509
  %100 = fcmp olt double %99, 0x40894CC46AD56A15, !dbg !511
  br i1 %100, label %101, label %131, !dbg !512

; <label>:101:                                    ; preds = %98
  call void @llvm.dbg.declare(metadata double* %13, metadata !513, metadata !95), !dbg !515
  store double 0x3FCCE6BB25AA1316, double* %13, align 8, !dbg !515
  call void @llvm.dbg.declare(metadata double* %14, metadata !516, metadata !95), !dbg !517
  %102 = load double, double* %4, align 8, !dbg !518
  %103 = fsub double 1.000000e+01, %102, !dbg !519
  %104 = load double, double* %4, align 8, !dbg !520
  %105 = fadd double %104, 2.000000e+00, !dbg !521
  %106 = fdiv double %103, %105, !dbg !522
  store double %106, double* %14, align 8, !dbg !517
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !523, metadata !95), !dbg !524
  %107 = load double, double* %14, align 8, !dbg !525
  %108 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @synchrotron2a_cs, double %107, %struct.gsl_sf_result_struct* %15), !dbg !526
  %109 = load double, double* %4, align 8, !dbg !527
  %110 = call double @sqrt(double %109) #6, !dbg !528
  %111 = load double, double* %4, align 8, !dbg !529
  %112 = fsub double 0x3FCCE6BB25AA1316, %111, !dbg !530
  %113 = call double @exp(double %112) #6, !dbg !531
  %114 = fmul double %110, %113, !dbg !533
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !534
  %116 = load double, double* %115, align 8, !dbg !534
  %117 = fmul double %114, %116, !dbg !535
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !536
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 0, !dbg !537
  store double %117, double* %119, align 8, !dbg !538
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !539
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 0, !dbg !540
  %122 = load double, double* %121, align 8, !dbg !540
  %123 = fmul double 0x3CB0000000000000, %122, !dbg !541
  %124 = load double, double* %4, align 8, !dbg !542
  %125 = fsub double 0x3FCCE6BB25AA1316, %124, !dbg !543
  %126 = call double @fabs(double %125) #1, !dbg !544
  %127 = fadd double %126, 1.000000e+00, !dbg !545
  %128 = fmul double %123, %127, !dbg !546
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !547
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 1, !dbg !548
  store double %128, double* %130, align 8, !dbg !549
  store i32 0, i32* %3, align 4, !dbg !550
  br label %143, !dbg !550

; <label>:131:                                    ; preds = %98
  br label %132, !dbg !551, !llvm.loop !553

; <label>:132:                                    ; preds = %131
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !554
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 0, !dbg !554
  store double 0.000000e+00, double* %134, align 8, !dbg !554
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !554
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 1, !dbg !554
  store double 0x10000000000000, double* %136, align 8, !dbg !554
  br label %137, !dbg !554, !llvm.loop !557

; <label>:137:                                    ; preds = %132
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 269, i32 15), !dbg !559
  store i32 15, i32* %3, align 4, !dbg !559
  br label %143, !dbg !559
                                                  ; No predecessors!
  br label %139, !dbg !562

; <label>:139:                                    ; preds = %138
  br label %140

; <label>:140:                                    ; preds = %139
  br label %141

; <label>:141:                                    ; preds = %140
  br label %142

; <label>:142:                                    ; preds = %141
  br label %143

; <label>:143:                                    ; preds = %24, %30, %53, %101, %137, %142, %26
  %144 = load i32, i32* %3, align 4, !dbg !564
  ret i32 %144, !dbg !564
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
  br i1 %9, label %10, label %16, !dbg !571

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !575, !llvm.loop !578

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !580
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 279, i32 %12), !dbg !580
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !580
  %14 = load double, double* %13, align 8, !dbg !580
  store double %14, double* %2, align 8, !dbg !580
  br label %19, !dbg !580
                                                  ; No predecessors!
  br label %16, !dbg !583

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !585
  %18 = load double, double* %17, align 8, !dbg !585
  store double %18, double* %2, align 8, !dbg !585
  br label %19, !dbg !585

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !587
  ret double %20, !dbg !587
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
  br i1 %9, label %10, label %16, !dbg !592

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !596, !llvm.loop !599

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !601
  call void @gsl_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 284, i32 %12), !dbg !601
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !601
  %14 = load double, double* %13, align 8, !dbg !601
  store double %14, double* %2, align 8, !dbg !601
  br label %19, !dbg !601
                                                  ; No predecessors!
  br label %16, !dbg !604

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !606
  %18 = load double, double* %17, align 8, !dbg !606
  store double %18, double* %2, align 8, !dbg !606
  br label %19, !dbg !606

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !608
  ret double %20, !dbg !608
}

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
