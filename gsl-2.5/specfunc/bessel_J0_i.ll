; ModuleID = 'bessel_J0.ll'
source_filename = "bessel_J0.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@bj0_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([13 x double], [13 x double]* @bj0_data, i32 0, i32 0), i32 12, double -1.000000e+00, double 1.000000e+00, i32 9 }, align 8
@_gsl_sf_bessel_amp_phase_bm0_cs = external constant %struct.cheb_series_struct, align 8
@_gsl_sf_bessel_amp_phase_bth0_cs = external constant %struct.cheb_series_struct, align 8
@.str = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_J0_e(x, &result)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_J0.c\00", align 1
@bj0_data = internal global [13 x double] [double 0x3FB9AA41BAF1C97A, double 0xBFE54981C2DCA2CF, double 0x3FCFDEB2AFE18BCE, double 0xBFA106803D09576B, double 0x3F62EF650D666EF6, double 0xBF19FB587EC623DD, double 0x3EC841D0DE9B1CCB, double 0xBE706E60D04405E4, double 0x3E10E71599E3A0D3, double 0xBDAB51D676039C1D, double 1.265433e-13, double -1.061900e-15, double 7.400000e-18], align 16
@0 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_J0_e\00"
@1 = private unnamed_addr constant [13 x i8] c"bessel_J0.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [13 x i8] c"bessel_J0.ll\00"
@4 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_J0\00"
@5 = private unnamed_addr constant [13 x i8] c"bessel_J0.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_J0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !63 {
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
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !75, metadata !76), !dbg !77
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !78, metadata !76), !dbg !79
  call void @llvm.dbg.declare(metadata double* %6, metadata !80, metadata !76), !dbg !81
  %16 = load double, double* %4, align 8, !dbg !82
  %17 = call double @fabs(double %16) #1, !dbg !83
  store double %17, double* %6, align 8, !dbg !81
  %18 = load double, double* %6, align 8, !dbg !84
  %19 = fcmp olt double %18, 0x3E60000000000000, !dbg !86
  %20 = call i1 @fCmpInstHandler(double %18, double 0x3E60000000000000, i1 %19, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238389680, i32 79, i32 8), !dbg !87
  br i1 %20, label %21, label %29, !dbg !87

; <label>:21:                                     ; preds = %2
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !88
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !90
  store double 1.000000e+00, double* %23, align 8, !dbg !91
  %24 = load double, double* %6, align 8, !dbg !92
  %25 = load double, double* %6, align 8, !dbg !93
  %26 = fmul double %24, %25, !dbg !94
  call void @fMulHandler(double %24, double %25, double %26, i64 94737238391976, i64 94737238392360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238392768, i32 81, i32 20), !dbg !95
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !95
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !96
  store double %26, double* %28, align 8, !dbg !97
  store i32 0, i32* %3, align 4, !dbg !98
  br label %122, !dbg !98

; <label>:29:                                     ; preds = %2
  %30 = load double, double* %6, align 8, !dbg !99
  %31 = fcmp ole double %30, 4.000000e+00, !dbg !101
  %32 = call i1 @fCmpInstHandler(double %30, double 4.000000e+00, i1 %31, i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238397056, i32 84, i32 13), !dbg !102
  br i1 %32, label %33, label %41, !dbg !102

; <label>:33:                                     ; preds = %29
  %34 = load double, double* %6, align 8, !dbg !103
  %35 = fmul double 1.250000e-01, %34, !dbg !105
  call void @fMulHandler(double 1.250000e-01, double %34, double %35, i64 0, i64 94737238398136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238399104, i32 85, i32 38), !dbg !106
  %36 = load double, double* %6, align 8, !dbg !106
  %37 = fmul double %35, %36, !dbg !107
  call void @fMulHandler(double %35, double %36, double %37, i64 94737238399104, i64 94737238399464, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238399872, i32 85, i32 40), !dbg !108
  %38 = fsub double %37, 1.000000e+00, !dbg !108
  call void @fSubHandler(double %37, double 1.000000e+00, double %38, i64 94737238399872, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238400320, i32 85, i32 43), !dbg !109
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !109
  %40 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @bj0_cs, double %38, %struct.gsl_sf_result_struct* %39), !dbg !110
  store i32 %40, i32* %3, align 4, !dbg !111
  br label %122, !dbg !111

; <label>:41:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata double* %7, metadata !112, metadata !76), !dbg !114
  %42 = load double, double* %6, align 8, !dbg !115
  %43 = load double, double* %6, align 8, !dbg !116
  %44 = fmul double %42, %43, !dbg !117
  call void @fMulHandler(double %42, double %43, double %44, i64 94737238405160, i64 94737238405512, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238405920, i32 88, i32 29), !dbg !118
  %45 = fdiv double 3.200000e+01, %44, !dbg !118
  call void @fDivHandler(double 3.200000e+01, double %44, double %45, i64 0, i64 94737238405920, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238406432, i32 88, i32 26), !dbg !119
  %46 = fsub double %45, 1.000000e+00, !dbg !119
  call void @fSubHandler(double %45, double 1.000000e+00, double %46, i64 94737238406432, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238406848, i32 88, i32 33), !dbg !114
  store double %46, double* %7, align 8, !dbg !114
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !120, metadata !76), !dbg !121
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !122, metadata !76), !dbg !123
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !124, metadata !76), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %11, metadata !126, metadata !76), !dbg !128
  %47 = load double, double* %7, align 8, !dbg !129
  %48 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bm0_cs, double %47, %struct.gsl_sf_result_struct* %8), !dbg !130
  store i32 %48, i32* %11, align 4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %12, metadata !131, metadata !76), !dbg !132
  %49 = load double, double* %7, align 8, !dbg !133
  %50 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bth0_cs, double %49, %struct.gsl_sf_result_struct* %9), !dbg !134
  store i32 %50, i32* %12, align 4, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %13, metadata !135, metadata !76), !dbg !136
  %51 = load double, double* %6, align 8, !dbg !137
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !138
  %53 = load double, double* %52, align 8, !dbg !138
  %54 = load double, double* %6, align 8, !dbg !139
  %55 = fdiv double %53, %54, !dbg !140
  call void @fDivHandler(double %53, double %54, double %55, i64 94737238421496, i64 94737238423144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238423552, i32 94, i32 58), !dbg !141
  %56 = call i32 @gsl_sf_bessel_cos_pi4_e(double %51, double %55, %struct.gsl_sf_result_struct* %10), !dbg !141
  store i32 %56, i32* %13, align 4, !dbg !136
  call void @llvm.dbg.declare(metadata double* %14, metadata !142, metadata !76), !dbg !143
  %57 = load double, double* %6, align 8, !dbg !144
  %58 = call double @sqrt(double %57) #6, !dbg !145
  call void @callOneArgHandler(i32 14, double %57, double %58, i64 94737238427704, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238428416, i32 95, i32 26), !dbg !143
  store double %58, double* %14, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata double* %15, metadata !146, metadata !76), !dbg !147
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !148
  %60 = load double, double* %59, align 8, !dbg !148
  %61 = fadd double 7.500000e-01, %60, !dbg !149
  call void @fAddHandler(double 7.500000e-01, double %60, double %61, i64 0, i64 94737238432168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238433936, i32 96, i32 32), !dbg !150
  %62 = load double, double* %14, align 8, !dbg !150
  %63 = fdiv double %61, %62, !dbg !151
  call void @fDivHandler(double %61, double %62, double %63, i64 94737238433936, i64 94737238434296, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238434704, i32 96, i32 42), !dbg !147
  store double %63, double* %15, align 8, !dbg !147
  %64 = load double, double* %15, align 8, !dbg !152
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !153
  %66 = load double, double* %65, align 8, !dbg !153
  %67 = fmul double %64, %66, !dbg !154
  call void @fMulHandler(double %64, double %66, double %67, i64 94737238436776, i64 94737238437608, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238440320, i32 97, i32 25), !dbg !155
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !155
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !156
  store double %67, double* %69, align 8, !dbg !157
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !158
  %71 = load double, double* %70, align 8, !dbg !158
  %72 = call double @fabs(double %71) #1, !dbg !159
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !160
  %74 = load double, double* %73, align 8, !dbg !160
  %75 = fmul double %72, %74, !dbg !161
  call void @fMulHandler(double %72, double %74, double %75, i64 94737238444144, i64 94737238445048, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238446720, i32 98, i32 33), !dbg !162
  %76 = load double, double* %14, align 8, !dbg !162
  %77 = fdiv double %75, %76, !dbg !163
  call void @fDivHandler(double %75, double %76, double %77, i64 94737238446720, i64 94737238447112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238447520, i32 98, i32 41), !dbg !164
  %78 = load double, double* %15, align 8, !dbg !164
  %79 = call double @fabs(double %78) #1, !dbg !165
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !167
  %81 = load double, double* %80, align 8, !dbg !167
  %82 = fmul double %79, %81, !dbg !168
  call void @fMulHandler(double %79, double %81, double %82, i64 94737238448384, i64 94737238449288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238450960, i32 98, i32 61), !dbg !169
  %83 = fadd double %77, %82, !dbg !169
  call void @fAddHandler(double %77, double %82, double %83, i64 94737238447520, i64 94737238450960, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238451376, i32 98, i32 48), !dbg !170
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !170
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !171
  store double %83, double* %85, align 8, !dbg !172
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !173
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !174
  %88 = load double, double* %87, align 8, !dbg !174
  %89 = call double @fabs(double %88) #1, !dbg !175
  %90 = fmul double 0x3CB0000000000000, %89, !dbg !176
  call void @fMulHandler(double 0x3CB0000000000000, double %89, double %90, i64 0, i64 94737238455584, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238456128, i32 99, i32 36), !dbg !177
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !177
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 1, !dbg !178
  %93 = load double, double* %92, align 8, !dbg !179
  %94 = fadd double %93, %90, !dbg !179
  call void @fAddHandler(double %93, double %90, double %94, i64 94737238457352, i64 94737238456128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238457760, i32 99, i32 17), !dbg !179
  store double %94, double* %92, align 8, !dbg !179
  %95 = load i32, i32* %11, align 4, !dbg !180
  %96 = icmp ne i32 %95, 0, !dbg !180
  %97 = sext i32 %95 to i64, !dbg !180
  %98 = call i1 @iCmpInstHandler(i64 %97, i64 0, i1 %96, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238459952, i32 100, i32 12), !dbg !180
  br i1 %98, label %99, label %101, !dbg !180

; <label>:99:                                     ; preds = %41
  %100 = load i32, i32* %11, align 4, !dbg !181
  br label %120, !dbg !181

; <label>:101:                                    ; preds = %41
  %102 = load i32, i32* %12, align 4, !dbg !182
  %103 = icmp ne i32 %102, 0, !dbg !182
  %104 = sext i32 %102 to i64, !dbg !182
  %105 = call i1 @iCmpInstHandler(i64 %104, i64 0, i1 %103, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238464496, i32 100, i32 12), !dbg !182
  br i1 %105, label %106, label %108, !dbg !182

; <label>:106:                                    ; preds = %101
  %107 = load i32, i32* %12, align 4, !dbg !184
  br label %118, !dbg !184

; <label>:108:                                    ; preds = %101
  %109 = load i32, i32* %13, align 4, !dbg !186
  %110 = icmp ne i32 %109, 0, !dbg !186
  %111 = sext i32 %109 to i64, !dbg !186
  %112 = call i1 @iCmpInstHandler(i64 %111, i64 0, i1 %110, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94737238469040, i32 100, i32 12), !dbg !186
  br i1 %112, label %113, label %115, !dbg !186

; <label>:113:                                    ; preds = %108
  %114 = load i32, i32* %13, align 4, !dbg !188
  br label %116, !dbg !188

; <label>:115:                                    ; preds = %108
  br label %116, !dbg !190

; <label>:116:                                    ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 0, %115 ], !dbg !192
  br label %118, !dbg !192

; <label>:118:                                    ; preds = %116, %106
  %119 = phi i32 [ %107, %106 ], [ %117, %116 ], !dbg !194
  br label %120, !dbg !194

; <label>:120:                                    ; preds = %118, %99
  %121 = phi i32 [ %100, %99 ], [ %119, %118 ], !dbg !196
  store i32 %121, i32* %3, align 4, !dbg !198
  br label %122, !dbg !198

; <label>:122:                                    ; preds = %120, %33, %21
  %123 = load i32, i32* %3, align 4, !dbg !199
  ret i32 %123, !dbg !199
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #3 !dbg !200 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !206, metadata !76), !dbg !207
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !208, metadata !76), !dbg !209
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !210, metadata !76), !dbg !211
  call void @llvm.dbg.declare(metadata i32* %7, metadata !212, metadata !76), !dbg !213
  call void @llvm.dbg.declare(metadata double* %8, metadata !214, metadata !76), !dbg !215
  store double 0.000000e+00, double* %8, align 8, !dbg !215
  call void @llvm.dbg.declare(metadata double* %9, metadata !216, metadata !76), !dbg !217
  store double 0.000000e+00, double* %9, align 8, !dbg !217
  call void @llvm.dbg.declare(metadata double* %10, metadata !218, metadata !76), !dbg !219
  %15 = load double, double* %5, align 8, !dbg !220
  %16 = fmul double 2.000000e+00, %15, !dbg !221
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94737238401352, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238496416, i32 11, i32 19), !dbg !222
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !222
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !223
  %19 = load double, double* %18, align 8, !dbg !223
  %20 = fsub double %16, %19, !dbg !224
  call void @fSubHandler(double %16, double %19, double %20, i64 94737238496416, i64 94737238262120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238499152, i32 11, i32 22), !dbg !225
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !225
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !226
  %23 = load double, double* %22, align 8, !dbg !226
  %24 = fsub double %20, %23, !dbg !227
  call void @fSubHandler(double %20, double %23, double %24, i64 94737238499152, i64 94737238500440, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238502112, i32 11, i32 30), !dbg !228
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !228
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !229
  %27 = load double, double* %26, align 8, !dbg !229
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !230
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !231
  %30 = load double, double* %29, align 8, !dbg !231
  %31 = fsub double %27, %30, !dbg !232
  call void @fSubHandler(double %27, double %30, double %31, i64 94737238503336, i64 94737238505816, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238507488, i32 11, i32 48), !dbg !233
  %32 = fdiv double %24, %31, !dbg !233
  call void @fDivHandler(double %24, double %31, double %32, i64 94737238502112, i64 94737238507488, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238507904, i32 11, i32 39), !dbg !219
  store double %32, double* %10, align 8, !dbg !219
  call void @llvm.dbg.declare(metadata double* %11, metadata !234, metadata !76), !dbg !235
  %33 = load double, double* %10, align 8, !dbg !236
  %34 = fmul double 2.000000e+00, %33, !dbg !237
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94737238510952, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238511360, i32 12, i32 19), !dbg !235
  store double %34, double* %11, align 8, !dbg !235
  call void @llvm.dbg.declare(metadata double* %12, metadata !238, metadata !76), !dbg !239
  store double 0.000000e+00, double* %12, align 8, !dbg !239
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !240
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !242
  %37 = load i32, i32* %36, align 8, !dbg !242
  store i32 %37, i32* %7, align 4, !dbg !243
  br label %38, !dbg !244

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !245
  %40 = icmp sge i32 %39, 1, !dbg !248
  %41 = sext i32 %39 to i64, !dbg !249
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238519936, i32 16, i32 23), !dbg !249
  br i1 %42, label %43, label %80, !dbg !249

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !250, metadata !76), !dbg !252
  %44 = load double, double* %8, align 8, !dbg !253
  store double %44, double* %13, align 8, !dbg !252
  %45 = load double, double* %11, align 8, !dbg !254
  %46 = load double, double* %8, align 8, !dbg !255
  %47 = fmul double %45, %46, !dbg !256
  call void @fMulHandler(double %45, double %46, double %47, i64 94737238524136, i64 94737238524520, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238524928, i32 18, i32 11), !dbg !257
  %48 = load double, double* %9, align 8, !dbg !257
  %49 = fsub double %47, %48, !dbg !258
  call void @fSubHandler(double %47, double %48, double %49, i64 94737238524928, i64 94737238525320, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238525728, i32 18, i32 14), !dbg !259
  %50 = load i32, i32* %7, align 4, !dbg !259
  %51 = sext i32 %50 to i64, !dbg !260
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !260
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !261
  %54 = load double*, double** %53, align 8, !dbg !261
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !260
  %56 = load double, double* %55, align 8, !dbg !260
  %57 = fadd double %49, %56, !dbg !262
  call void @fAddHandler(double %49, double %56, double %57, i64 94737238525728, i64 94737238530776, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238530896, i32 18, i32 19), !dbg !263
  store double %57, double* %8, align 8, !dbg !263
  %58 = load double, double* %11, align 8, !dbg !264
  %59 = load double, double* %13, align 8, !dbg !265
  %60 = fmul double %58, %59, !dbg !266
  call void @fMulHandler(double %58, double %59, double %60, i64 94737238531704, i64 94737238532088, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238532496, i32 19, i32 17), !dbg !267
  %61 = call double @fabs(double %60) #1, !dbg !267
  %62 = load double, double* %9, align 8, !dbg !268
  %63 = call double @fabs(double %62) #1, !dbg !269
  %64 = fadd double %61, %63, !dbg !271
  call void @fAddHandler(double %61, double %63, double %64, i64 94737238532976, i64 94737238533904, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238534384, i32 19, i32 24), !dbg !272
  %65 = load i32, i32* %7, align 4, !dbg !272
  %66 = sext i32 %65 to i64, !dbg !273
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !273
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !274
  %69 = load double*, double** %68, align 8, !dbg !274
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !273
  %71 = load double, double* %70, align 8, !dbg !273
  %72 = call double @fabs(double %71) #1, !dbg !275
  %73 = fadd double %64, %72, !dbg !277
  call void @fAddHandler(double %64, double %72, double %73, i64 94737238534384, i64 94737238539616, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238540096, i32 19, i32 35), !dbg !278
  %74 = load double, double* %12, align 8, !dbg !278
  %75 = fadd double %74, %73, !dbg !278
  call void @fAddHandler(double %74, double %73, double %75, i64 94737238540488, i64 94737238540096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238540896, i32 19, i32 7), !dbg !278
  store double %75, double* %12, align 8, !dbg !278
  %76 = load double, double* %13, align 8, !dbg !279
  store double %76, double* %9, align 8, !dbg !280
  br label %77, !dbg !281

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !282
  %79 = add nsw i32 %78, -1, !dbg !282
  store i32 %79, i32* %7, align 4, !dbg !282
  br label %38, !dbg !284, !llvm.loop !285

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !287, metadata !76), !dbg !289
  %81 = load double, double* %8, align 8, !dbg !290
  store double %81, double* %14, align 8, !dbg !289
  %82 = load double, double* %10, align 8, !dbg !291
  %83 = load double, double* %8, align 8, !dbg !292
  %84 = fmul double %82, %83, !dbg !293
  call void @fMulHandler(double %82, double %83, double %84, i64 94737238554072, i64 94737238554456, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238554864, i32 25, i32 10), !dbg !294
  %85 = load double, double* %9, align 8, !dbg !294
  %86 = fsub double %84, %85, !dbg !295
  call void @fSubHandler(double %84, double %85, double %86, i64 94737238554864, i64 94737238555256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238555664, i32 25, i32 13), !dbg !296
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !296
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !297
  %89 = load double*, double** %88, align 8, !dbg !297
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !296
  %91 = load double, double* %90, align 8, !dbg !296
  %92 = fmul double 5.000000e-01, %91, !dbg !298
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94737238560296, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238560512, i32 25, i32 24), !dbg !299
  %93 = fadd double %86, %92, !dbg !299
  call void @fAddHandler(double %86, double %92, double %93, i64 94737238555664, i64 94737238560512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238560896, i32 25, i32 18), !dbg !300
  store double %93, double* %8, align 8, !dbg !300
  %94 = load double, double* %10, align 8, !dbg !301
  %95 = load double, double* %14, align 8, !dbg !302
  %96 = fmul double %94, %95, !dbg !303
  call void @fMulHandler(double %94, double %95, double %96, i64 94737238561704, i64 94737238562088, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238562496, i32 26, i32 16), !dbg !304
  %97 = call double @fabs(double %96) #1, !dbg !304
  %98 = load double, double* %9, align 8, !dbg !305
  %99 = call double @fabs(double %98) #1, !dbg !306
  %100 = fadd double %97, %99, !dbg !308
  call void @fAddHandler(double %97, double %99, double %100, i64 94737238562976, i64 94737238563904, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238564384, i32 26, i32 23), !dbg !309
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !309
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !310
  %103 = load double*, double** %102, align 8, !dbg !310
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !309
  %105 = load double, double* %104, align 8, !dbg !309
  %106 = call double @fabs(double %105) #1, !dbg !311
  %107 = fmul double 5.000000e-01, %106, !dbg !313
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94737238569136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238569648, i32 26, i32 40), !dbg !314
  %108 = fadd double %100, %107, !dbg !314
  call void @fAddHandler(double %100, double %107, double %108, i64 94737238564384, i64 94737238569648, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238570032, i32 26, i32 34), !dbg !315
  %109 = load double, double* %12, align 8, !dbg !315
  %110 = fadd double %109, %108, !dbg !315
  call void @fAddHandler(double %109, double %108, double %110, i64 94737238570424, i64 94737238570032, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238570832, i32 26, i32 7), !dbg !315
  store double %110, double* %12, align 8, !dbg !315
  %111 = load double, double* %8, align 8, !dbg !316
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !317
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !318
  store double %111, double* %113, align 8, !dbg !319
  %114 = load double, double* %12, align 8, !dbg !320
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !321
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94737238574248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238574656, i32 30, i32 33), !dbg !322
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !322
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !323
  %118 = load i32, i32* %117, align 8, !dbg !323
  %119 = sext i32 %118 to i64, !dbg !324
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !324
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !325
  %122 = load double*, double** %121, align 8, !dbg !325
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !324
  %124 = load double, double* %123, align 8, !dbg !324
  %125 = call double @fabs(double %124) #1, !dbg !326
  %126 = fadd double %115, %125, !dbg !327
  call void @fAddHandler(double %115, double %125, double %126, i64 94737238574656, i64 94737238581984, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94737238582464, i32 30, i32 37), !dbg !328
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !328
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !329
  store double %126, double* %128, align 8, !dbg !330
  ret i32 0, !dbg !331
}

declare i32 @gsl_sf_bessel_cos_pi4_e(double, double, %struct.gsl_sf_result_struct*) #4

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_J0(double) #0 !dbg !332 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !335, metadata !76), !dbg !336
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !337, metadata !76), !dbg !338
  call void @llvm.dbg.declare(metadata i32* %5, metadata !339, metadata !76), !dbg !338
  %6 = load double, double* %3, align 8, !dbg !338
  %7 = call i32 @gsl_sf_bessel_J0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !338
  store i32 %7, i32* %5, align 4, !dbg !338
  %8 = load i32, i32* %5, align 4, !dbg !340
  %9 = icmp ne i32 %8, 0, !dbg !340
  %10 = sext i32 %8 to i64, !dbg !338
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94737238594272, i32 110, i32 3), !dbg !338
  br i1 %11, label %12, label %18, !dbg !338

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !342, !llvm.loop !345

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !347
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 110, i32 %14), !dbg !347
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !347
  %16 = load double, double* %15, align 8, !dbg !347
  store double %16, double* %2, align 8, !dbg !347
  br label %21, !dbg !347
                                                  ; No predecessors!
  br label %18, !dbg !350

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !352
  %20 = load double, double* %19, align 8, !dbg !352
  store double %20, double* %2, align 8, !dbg !352
  br label %21, !dbg !352

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !354
  ret double %22, !dbg !354
}

declare void @gsl_error(i8*, i8*, i32, i32) #4

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
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_J0.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55}
!42 = distinct !DIGlobalVariable(name: "bj0_cs", scope: !0, file: !1, line: 63, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bj0_cs)
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
!55 = distinct !DIGlobalVariable(name: "bj0_data", scope: !0, file: !1, line: 48, type: !56, isLocal: true, isDefinition: true, variable: [13 x double]* @bj0_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 832, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 13)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "gsl_sf_bessel_J0_e", scope: !1, file: !1, line: 73, type: !64, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!64 = !DISubroutineType(types: !65)
!65 = !{!51, !66, !67}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !69, line: 41, baseType: !70)
!69 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !69, line: 37, size: 128, align: 64, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !69, line: 38, baseType: !49, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !70, file: !69, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!74 = !{}
!75 = !DILocalVariable(name: "x", arg: 1, scope: !63, file: !1, line: 73, type: !66)
!76 = !DIExpression()
!77 = !DILocation(line: 73, column: 37, scope: !63)
!78 = !DILocalVariable(name: "result", arg: 2, scope: !63, file: !1, line: 73, type: !67)
!79 = !DILocation(line: 73, column: 56, scope: !63)
!80 = !DILocalVariable(name: "y", scope: !63, file: !1, line: 75, type: !49)
!81 = !DILocation(line: 75, column: 10, scope: !63)
!82 = !DILocation(line: 75, column: 19, scope: !63)
!83 = !DILocation(line: 75, column: 14, scope: !63)
!84 = !DILocation(line: 79, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !63, file: !1, line: 79, column: 6)
!86 = !DILocation(line: 79, column: 8, scope: !85)
!87 = !DILocation(line: 79, column: 6, scope: !63)
!88 = !DILocation(line: 80, column: 5, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 79, column: 36)
!90 = !DILocation(line: 80, column: 13, scope: !89)
!91 = !DILocation(line: 80, column: 17, scope: !89)
!92 = !DILocation(line: 81, column: 19, scope: !89)
!93 = !DILocation(line: 81, column: 21, scope: !89)
!94 = !DILocation(line: 81, column: 20, scope: !89)
!95 = !DILocation(line: 81, column: 5, scope: !89)
!96 = !DILocation(line: 81, column: 13, scope: !89)
!97 = !DILocation(line: 81, column: 17, scope: !89)
!98 = !DILocation(line: 82, column: 5, scope: !89)
!99 = !DILocation(line: 84, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !85, file: !1, line: 84, column: 11)
!101 = !DILocation(line: 84, column: 13, scope: !100)
!102 = !DILocation(line: 84, column: 11, scope: !85)
!103 = !DILocation(line: 85, column: 39, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 84, column: 21)
!105 = !DILocation(line: 85, column: 38, scope: !104)
!106 = !DILocation(line: 85, column: 41, scope: !104)
!107 = !DILocation(line: 85, column: 40, scope: !104)
!108 = !DILocation(line: 85, column: 43, scope: !104)
!109 = !DILocation(line: 85, column: 50, scope: !104)
!110 = !DILocation(line: 85, column: 12, scope: !104)
!111 = !DILocation(line: 85, column: 5, scope: !104)
!112 = !DILocalVariable(name: "z", scope: !113, file: !1, line: 88, type: !66)
!113 = distinct !DILexicalBlock(scope: !100, file: !1, line: 87, column: 8)
!114 = !DILocation(line: 88, column: 18, scope: !113)
!115 = !DILocation(line: 88, column: 28, scope: !113)
!116 = !DILocation(line: 88, column: 30, scope: !113)
!117 = !DILocation(line: 88, column: 29, scope: !113)
!118 = !DILocation(line: 88, column: 26, scope: !113)
!119 = !DILocation(line: 88, column: 33, scope: !113)
!120 = !DILocalVariable(name: "ca", scope: !113, file: !1, line: 89, type: !68)
!121 = !DILocation(line: 89, column: 19, scope: !113)
!122 = !DILocalVariable(name: "ct", scope: !113, file: !1, line: 90, type: !68)
!123 = !DILocation(line: 90, column: 19, scope: !113)
!124 = !DILocalVariable(name: "cp", scope: !113, file: !1, line: 91, type: !68)
!125 = !DILocation(line: 91, column: 19, scope: !113)
!126 = !DILocalVariable(name: "stat_ca", scope: !113, file: !1, line: 92, type: !127)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!128 = !DILocation(line: 92, column: 15, scope: !113)
!129 = !DILocation(line: 92, column: 72, scope: !113)
!130 = !DILocation(line: 92, column: 25, scope: !113)
!131 = !DILocalVariable(name: "stat_ct", scope: !113, file: !1, line: 93, type: !127)
!132 = !DILocation(line: 93, column: 15, scope: !113)
!133 = !DILocation(line: 93, column: 72, scope: !113)
!134 = !DILocation(line: 93, column: 25, scope: !113)
!135 = !DILocalVariable(name: "stat_cp", scope: !113, file: !1, line: 94, type: !127)
!136 = !DILocation(line: 94, column: 15, scope: !113)
!137 = !DILocation(line: 94, column: 49, scope: !113)
!138 = !DILocation(line: 94, column: 55, scope: !113)
!139 = !DILocation(line: 94, column: 59, scope: !113)
!140 = !DILocation(line: 94, column: 58, scope: !113)
!141 = !DILocation(line: 94, column: 25, scope: !113)
!142 = !DILocalVariable(name: "sqrty", scope: !113, file: !1, line: 95, type: !66)
!143 = !DILocation(line: 95, column: 18, scope: !113)
!144 = !DILocation(line: 95, column: 31, scope: !113)
!145 = !DILocation(line: 95, column: 26, scope: !113)
!146 = !DILocalVariable(name: "ampl", scope: !113, file: !1, line: 96, type: !66)
!147 = !DILocation(line: 96, column: 18, scope: !113)
!148 = !DILocation(line: 96, column: 37, scope: !113)
!149 = !DILocation(line: 96, column: 32, scope: !113)
!150 = !DILocation(line: 96, column: 44, scope: !113)
!151 = !DILocation(line: 96, column: 42, scope: !113)
!152 = !DILocation(line: 97, column: 20, scope: !113)
!153 = !DILocation(line: 97, column: 30, scope: !113)
!154 = !DILocation(line: 97, column: 25, scope: !113)
!155 = !DILocation(line: 97, column: 5, scope: !113)
!156 = !DILocation(line: 97, column: 13, scope: !113)
!157 = !DILocation(line: 97, column: 18, scope: !113)
!158 = !DILocation(line: 98, column: 28, scope: !113)
!159 = !DILocation(line: 98, column: 20, scope: !113)
!160 = !DILocation(line: 98, column: 38, scope: !113)
!161 = !DILocation(line: 98, column: 33, scope: !113)
!162 = !DILocation(line: 98, column: 42, scope: !113)
!163 = !DILocation(line: 98, column: 41, scope: !113)
!164 = !DILocation(line: 98, column: 55, scope: !113)
!165 = !DILocation(line: 98, column: 50, scope: !166)
!166 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 1)
!167 = !DILocation(line: 98, column: 66, scope: !113)
!168 = !DILocation(line: 98, column: 61, scope: !113)
!169 = !DILocation(line: 98, column: 48, scope: !113)
!170 = !DILocation(line: 98, column: 5, scope: !113)
!171 = !DILocation(line: 98, column: 13, scope: !113)
!172 = !DILocation(line: 98, column: 18, scope: !113)
!173 = !DILocation(line: 99, column: 43, scope: !113)
!174 = !DILocation(line: 99, column: 51, scope: !113)
!175 = !DILocation(line: 99, column: 38, scope: !113)
!176 = !DILocation(line: 99, column: 36, scope: !113)
!177 = !DILocation(line: 99, column: 5, scope: !113)
!178 = !DILocation(line: 99, column: 13, scope: !113)
!179 = !DILocation(line: 99, column: 17, scope: !113)
!180 = !DILocation(line: 100, column: 12, scope: !113)
!181 = !DILocation(line: 100, column: 12, scope: !166)
!182 = !DILocation(line: 100, column: 12, scope: !183)
!183 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 2)
!184 = !DILocation(line: 100, column: 12, scope: !185)
!185 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 3)
!186 = !DILocation(line: 100, column: 12, scope: !187)
!187 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 4)
!188 = !DILocation(line: 100, column: 12, scope: !189)
!189 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 5)
!190 = !DILocation(line: 100, column: 12, scope: !191)
!191 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 6)
!192 = !DILocation(line: 100, column: 12, scope: !193)
!193 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 7)
!194 = !DILocation(line: 100, column: 12, scope: !195)
!195 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 8)
!196 = !DILocation(line: 100, column: 12, scope: !197)
!197 = !DILexicalBlockFile(scope: !113, file: !1, discriminator: 9)
!198 = !DILocation(line: 100, column: 5, scope: !197)
!199 = !DILocation(line: 102, column: 1, scope: !63)
!200 = distinct !DISubprogram(name: "cheb_eval_e", scope: !201, file: !201, line: 3, type: !202, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!201 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!202 = !DISubroutineType(types: !203)
!203 = !{!51, !204, !66, !67}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!206 = !DILocalVariable(name: "cs", arg: 1, scope: !200, file: !201, line: 3, type: !204)
!207 = !DILocation(line: 3, column: 33, scope: !200)
!208 = !DILocalVariable(name: "x", arg: 2, scope: !200, file: !201, line: 4, type: !66)
!209 = !DILocation(line: 4, column: 26, scope: !200)
!210 = !DILocalVariable(name: "result", arg: 3, scope: !200, file: !201, line: 5, type: !67)
!211 = !DILocation(line: 5, column: 29, scope: !200)
!212 = !DILocalVariable(name: "j", scope: !200, file: !201, line: 7, type: !51)
!213 = !DILocation(line: 7, column: 7, scope: !200)
!214 = !DILocalVariable(name: "d", scope: !200, file: !201, line: 8, type: !49)
!215 = !DILocation(line: 8, column: 10, scope: !200)
!216 = !DILocalVariable(name: "dd", scope: !200, file: !201, line: 9, type: !49)
!217 = !DILocation(line: 9, column: 10, scope: !200)
!218 = !DILocalVariable(name: "y", scope: !200, file: !201, line: 11, type: !49)
!219 = !DILocation(line: 11, column: 10, scope: !200)
!220 = !DILocation(line: 11, column: 20, scope: !200)
!221 = !DILocation(line: 11, column: 19, scope: !200)
!222 = !DILocation(line: 11, column: 24, scope: !200)
!223 = !DILocation(line: 11, column: 28, scope: !200)
!224 = !DILocation(line: 11, column: 22, scope: !200)
!225 = !DILocation(line: 11, column: 32, scope: !200)
!226 = !DILocation(line: 11, column: 36, scope: !200)
!227 = !DILocation(line: 11, column: 30, scope: !200)
!228 = !DILocation(line: 11, column: 42, scope: !200)
!229 = !DILocation(line: 11, column: 46, scope: !200)
!230 = !DILocation(line: 11, column: 50, scope: !200)
!231 = !DILocation(line: 11, column: 54, scope: !200)
!232 = !DILocation(line: 11, column: 48, scope: !200)
!233 = !DILocation(line: 11, column: 39, scope: !200)
!234 = !DILocalVariable(name: "y2", scope: !200, file: !201, line: 12, type: !49)
!235 = !DILocation(line: 12, column: 10, scope: !200)
!236 = !DILocation(line: 12, column: 21, scope: !200)
!237 = !DILocation(line: 12, column: 19, scope: !200)
!238 = !DILocalVariable(name: "e", scope: !200, file: !201, line: 14, type: !49)
!239 = !DILocation(line: 14, column: 10, scope: !200)
!240 = !DILocation(line: 16, column: 11, scope: !241)
!241 = distinct !DILexicalBlock(scope: !200, file: !201, line: 16, column: 3)
!242 = !DILocation(line: 16, column: 15, scope: !241)
!243 = !DILocation(line: 16, column: 9, scope: !241)
!244 = !DILocation(line: 16, column: 7, scope: !241)
!245 = !DILocation(line: 16, column: 22, scope: !246)
!246 = !DILexicalBlockFile(scope: !247, file: !201, discriminator: 1)
!247 = distinct !DILexicalBlock(scope: !241, file: !201, line: 16, column: 3)
!248 = !DILocation(line: 16, column: 23, scope: !246)
!249 = !DILocation(line: 16, column: 3, scope: !246)
!250 = !DILocalVariable(name: "temp", scope: !251, file: !201, line: 17, type: !49)
!251 = distinct !DILexicalBlock(scope: !247, file: !201, line: 16, column: 33)
!252 = !DILocation(line: 17, column: 12, scope: !251)
!253 = !DILocation(line: 17, column: 19, scope: !251)
!254 = !DILocation(line: 18, column: 9, scope: !251)
!255 = !DILocation(line: 18, column: 12, scope: !251)
!256 = !DILocation(line: 18, column: 11, scope: !251)
!257 = !DILocation(line: 18, column: 16, scope: !251)
!258 = !DILocation(line: 18, column: 14, scope: !251)
!259 = !DILocation(line: 18, column: 27, scope: !251)
!260 = !DILocation(line: 18, column: 21, scope: !251)
!261 = !DILocation(line: 18, column: 25, scope: !251)
!262 = !DILocation(line: 18, column: 19, scope: !251)
!263 = !DILocation(line: 18, column: 7, scope: !251)
!264 = !DILocation(line: 19, column: 15, scope: !251)
!265 = !DILocation(line: 19, column: 18, scope: !251)
!266 = !DILocation(line: 19, column: 17, scope: !251)
!267 = !DILocation(line: 19, column: 10, scope: !251)
!268 = !DILocation(line: 19, column: 31, scope: !251)
!269 = !DILocation(line: 19, column: 26, scope: !270)
!270 = !DILexicalBlockFile(scope: !251, file: !201, discriminator: 1)
!271 = !DILocation(line: 19, column: 24, scope: !251)
!272 = !DILocation(line: 19, column: 48, scope: !251)
!273 = !DILocation(line: 19, column: 42, scope: !251)
!274 = !DILocation(line: 19, column: 46, scope: !251)
!275 = !DILocation(line: 19, column: 37, scope: !276)
!276 = !DILexicalBlockFile(scope: !251, file: !201, discriminator: 2)
!277 = !DILocation(line: 19, column: 35, scope: !251)
!278 = !DILocation(line: 19, column: 7, scope: !251)
!279 = !DILocation(line: 20, column: 10, scope: !251)
!280 = !DILocation(line: 20, column: 8, scope: !251)
!281 = !DILocation(line: 21, column: 3, scope: !251)
!282 = !DILocation(line: 16, column: 29, scope: !283)
!283 = !DILexicalBlockFile(scope: !247, file: !201, discriminator: 2)
!284 = !DILocation(line: 16, column: 3, scope: !283)
!285 = distinct !{!285, !286}
!286 = !DILocation(line: 16, column: 3, scope: !200)
!287 = !DILocalVariable(name: "temp", scope: !288, file: !201, line: 24, type: !49)
!288 = distinct !DILexicalBlock(scope: !200, file: !201, line: 23, column: 3)
!289 = !DILocation(line: 24, column: 12, scope: !288)
!290 = !DILocation(line: 24, column: 19, scope: !288)
!291 = !DILocation(line: 25, column: 9, scope: !288)
!292 = !DILocation(line: 25, column: 11, scope: !288)
!293 = !DILocation(line: 25, column: 10, scope: !288)
!294 = !DILocation(line: 25, column: 15, scope: !288)
!295 = !DILocation(line: 25, column: 13, scope: !288)
!296 = !DILocation(line: 25, column: 26, scope: !288)
!297 = !DILocation(line: 25, column: 30, scope: !288)
!298 = !DILocation(line: 25, column: 24, scope: !288)
!299 = !DILocation(line: 25, column: 18, scope: !288)
!300 = !DILocation(line: 25, column: 7, scope: !288)
!301 = !DILocation(line: 26, column: 15, scope: !288)
!302 = !DILocation(line: 26, column: 17, scope: !288)
!303 = !DILocation(line: 26, column: 16, scope: !288)
!304 = !DILocation(line: 26, column: 10, scope: !288)
!305 = !DILocation(line: 26, column: 30, scope: !288)
!306 = !DILocation(line: 26, column: 25, scope: !307)
!307 = !DILexicalBlockFile(scope: !288, file: !201, discriminator: 1)
!308 = !DILocation(line: 26, column: 23, scope: !288)
!309 = !DILocation(line: 26, column: 47, scope: !288)
!310 = !DILocation(line: 26, column: 51, scope: !288)
!311 = !DILocation(line: 26, column: 42, scope: !312)
!312 = !DILexicalBlockFile(scope: !288, file: !201, discriminator: 2)
!313 = !DILocation(line: 26, column: 40, scope: !288)
!314 = !DILocation(line: 26, column: 34, scope: !288)
!315 = !DILocation(line: 26, column: 7, scope: !288)
!316 = !DILocation(line: 29, column: 17, scope: !200)
!317 = !DILocation(line: 29, column: 3, scope: !200)
!318 = !DILocation(line: 29, column: 11, scope: !200)
!319 = !DILocation(line: 29, column: 15, scope: !200)
!320 = !DILocation(line: 30, column: 35, scope: !200)
!321 = !DILocation(line: 30, column: 33, scope: !200)
!322 = !DILocation(line: 30, column: 50, scope: !200)
!323 = !DILocation(line: 30, column: 54, scope: !200)
!324 = !DILocation(line: 30, column: 44, scope: !200)
!325 = !DILocation(line: 30, column: 48, scope: !200)
!326 = !DILocation(line: 30, column: 39, scope: !200)
!327 = !DILocation(line: 30, column: 37, scope: !200)
!328 = !DILocation(line: 30, column: 3, scope: !200)
!329 = !DILocation(line: 30, column: 11, scope: !200)
!330 = !DILocation(line: 30, column: 15, scope: !200)
!331 = !DILocation(line: 32, column: 3, scope: !200)
!332 = distinct !DISubprogram(name: "gsl_sf_bessel_J0", scope: !1, file: !1, line: 108, type: !333, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!333 = !DISubroutineType(types: !334)
!334 = !{!49, !66}
!335 = !DILocalVariable(name: "x", arg: 1, scope: !332, file: !1, line: 108, type: !66)
!336 = !DILocation(line: 108, column: 38, scope: !332)
!337 = !DILocalVariable(name: "result", scope: !332, file: !1, line: 110, type: !68)
!338 = !DILocation(line: 110, column: 3, scope: !332)
!339 = !DILocalVariable(name: "status", scope: !332, file: !1, line: 110, type: !51)
!340 = !DILocation(line: 110, column: 3, scope: !341)
!341 = distinct !DILexicalBlock(scope: !332, file: !1, line: 110, column: 3)
!342 = !DILocation(line: 110, column: 3, scope: !343)
!343 = !DILexicalBlockFile(scope: !344, file: !1, discriminator: 1)
!344 = distinct !DILexicalBlock(scope: !341, file: !1, line: 110, column: 3)
!345 = distinct !{!345, !346}
!346 = !DILocation(line: 110, column: 3, scope: !344)
!347 = !DILocation(line: 110, column: 3, scope: !348)
!348 = !DILexicalBlockFile(scope: !349, file: !1, discriminator: 2)
!349 = distinct !DILexicalBlock(scope: !344, file: !1, line: 110, column: 3)
!350 = !DILocation(line: 110, column: 3, scope: !351)
!351 = !DILexicalBlockFile(scope: !344, file: !1, discriminator: 3)
!352 = !DILocation(line: 110, column: 3, scope: !353)
!353 = !DILexicalBlockFile(scope: !332, file: !1, discriminator: 4)
!354 = !DILocation(line: 111, column: 1, scope: !332)
