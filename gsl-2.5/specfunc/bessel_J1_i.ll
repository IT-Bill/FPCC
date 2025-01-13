; ModuleID = 'bessel_J1.ll'
source_filename = "bessel_J1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_J1.c\00", align 1
@bj1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([12 x double], [12 x double]* @bj1_data, i32 0, i32 0), i32 11, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@_gsl_sf_bessel_amp_phase_bm1_cs = external constant %struct.cheb_series_struct, align 8
@_gsl_sf_bessel_amp_phase_bth1_cs = external constant %struct.cheb_series_struct, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_J1_e(x, &result)\00", align 1
@bj1_data = internal global [12 x double] [double 0xBFBE04D817149007, double 0xBFD03B3B53199F79, double 0x3FA9AA41BAF1C97A, double 0xBF72F87ECA366473, double 0x3F3040AFB1E32CC6, double 0xBEE233799FEAFA80, double 0x3E8CC3153AB24D21, double 0xBE30E7C7B52E9CC8, double 0x3DCEBCE3B8C9AB8A, double -6.327610e-13, double 5.840000e-15, double -4.400000e-17], align 16
@0 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_J1_e\00"
@1 = private unnamed_addr constant [13 x i8] c"bessel_J1.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [13 x i8] c"bessel_J1.ll\00"
@4 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_J1\00"
@5 = private unnamed_addr constant [13 x i8] c"bessel_J1.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_J1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !63 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !75, metadata !76), !dbg !77
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !78, metadata !76), !dbg !79
  call void @llvm.dbg.declare(metadata double* %6, metadata !80, metadata !76), !dbg !81
  %17 = load double, double* %4, align 8, !dbg !82
  %18 = call double @fabs(double %17) #1, !dbg !83
  store double %18, double* %6, align 8, !dbg !81
  %19 = load double, double* %6, align 8, !dbg !84
  %20 = fcmp oeq double %19, 0.000000e+00, !dbg !86
  %21 = call i1 @fCmpInstHandler(double %19, double 0.000000e+00, i1 %20, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944368400, i32 80, i32 8), !dbg !87
  br i1 %21, label %22, label %27, !dbg !87

; <label>:22:                                     ; preds = %2
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !88
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !90
  store double 0.000000e+00, double* %24, align 8, !dbg !91
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !92
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !93
  store double 0.000000e+00, double* %26, align 8, !dbg !94
  store i32 0, i32* %3, align 4, !dbg !95
  br label %167, !dbg !95

; <label>:27:                                     ; preds = %2
  %28 = load double, double* %6, align 8, !dbg !96
  %29 = fcmp olt double %28, 0x20000000000000, !dbg !98
  %30 = call i1 @fCmpInstHandler(double %28, double 0x20000000000000, i1 %29, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944374560, i32 85, i32 13), !dbg !99
  br i1 %30, label %31, label %40, !dbg !99

; <label>:31:                                     ; preds = %27
  br label %32, !dbg !100, !llvm.loop !102

; <label>:32:                                     ; preds = %31
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !103
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !103
  store double 0.000000e+00, double* %34, align 8, !dbg !103
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !103
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !103
  store double 0x10000000000000, double* %36, align 8, !dbg !103
  br label %37, !dbg !103, !llvm.loop !106

; <label>:37:                                     ; preds = %32
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 86, i32 15), !dbg !108
  store i32 15, i32* %3, align 4, !dbg !108
  br label %167, !dbg !108
                                                  ; No predecessors!
  br label %39, !dbg !111

; <label>:39:                                     ; preds = %38
  br label %166, !dbg !113

; <label>:40:                                     ; preds = %27
  %41 = load double, double* %6, align 8, !dbg !114
  %42 = fcmp olt double %41, 0x3E66A09E667F3BCD, !dbg !116
  %43 = call i1 @fCmpInstHandler(double %41, double 0x3E66A09E667F3BCD, i1 %42, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944388672, i32 88, i32 13), !dbg !117
  br i1 %43, label %44, label %51, !dbg !117

; <label>:44:                                     ; preds = %40
  %45 = load double, double* %4, align 8, !dbg !118
  %46 = fmul double 5.000000e-01, %45, !dbg !120
  call void @fMulHandler(double 5.000000e-01, double %45, double %46, i64 0, i64 93921944389784, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944390224, i32 89, i32 22), !dbg !121
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !121
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !122
  store double %46, double* %48, align 8, !dbg !123
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !124
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !125
  store double 0.000000e+00, double* %50, align 8, !dbg !126
  store i32 0, i32* %3, align 4, !dbg !127
  br label %167, !dbg !127

; <label>:51:                                     ; preds = %40
  %52 = load double, double* %6, align 8, !dbg !128
  %53 = fcmp olt double %52, 4.000000e+00, !dbg !130
  %54 = call i1 @fCmpInstHandler(double %52, double 4.000000e+00, i1 %53, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944395584, i32 93, i32 13), !dbg !131
  br i1 %54, label %55, label %76, !dbg !131

; <label>:55:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !132, metadata !76), !dbg !134
  %56 = load double, double* %6, align 8, !dbg !135
  %57 = fmul double 1.250000e-01, %56, !dbg !136
  call void @fMulHandler(double 1.250000e-01, double %56, double %57, i64 0, i64 93921944397816, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944398288, i32 95, i32 31), !dbg !137
  %58 = load double, double* %6, align 8, !dbg !137
  %59 = fmul double %57, %58, !dbg !138
  call void @fMulHandler(double %57, double %58, double %59, i64 93921944398288, i64 93921944398648, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944399056, i32 95, i32 33), !dbg !139
  %60 = fsub double %59, 1.000000e+00, !dbg !139
  call void @fSubHandler(double %59, double 1.000000e+00, double %60, i64 93921944399056, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944399504, i32 95, i32 35), !dbg !140
  %61 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @bj1_cs, double %60, %struct.gsl_sf_result_struct* %7), !dbg !140
  %62 = load double, double* %4, align 8, !dbg !141
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !142
  %64 = load double, double* %63, align 8, !dbg !142
  %65 = fadd double 2.500000e-01, %64, !dbg !143
  call void @fAddHandler(double 2.500000e-01, double %64, double %65, i64 0, i64 93921944401528, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944403296, i32 96, i32 29), !dbg !144
  %66 = fmul double %62, %65, !dbg !144
  call void @fMulHandler(double %62, double %65, double %66, i64 93921944400728, i64 93921944403296, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944403680, i32 96, i32 21), !dbg !145
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !145
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !146
  store double %66, double* %68, align 8, !dbg !147
  %69 = load double, double* %4, align 8, !dbg !148
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !149
  %71 = load double, double* %70, align 8, !dbg !149
  %72 = fmul double %69, %71, !dbg !150
  call void @fMulHandler(double %69, double %71, double %72, i64 93921944406360, i64 93921944407192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944408864, i32 97, i32 26), !dbg !151
  %73 = call double @fabs(double %72) #1, !dbg !151
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !152
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 1, !dbg !153
  store double %73, double* %75, align 8, !dbg !154
  store i32 0, i32* %3, align 4, !dbg !155
  br label %167, !dbg !155

; <label>:76:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata double* %8, metadata !156, metadata !76), !dbg !158
  %77 = load double, double* %6, align 8, !dbg !159
  %78 = load double, double* %6, align 8, !dbg !160
  %79 = fmul double %77, %78, !dbg !161
  call void @fMulHandler(double %77, double %78, double %79, i64 93921944414264, i64 93921944414616, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944415024, i32 105, i32 30), !dbg !162
  %80 = fdiv double 3.200000e+01, %79, !dbg !162
  call void @fDivHandler(double 3.200000e+01, double %79, double %80, i64 0, i64 93921944415024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944415536, i32 105, i32 27), !dbg !163
  %81 = fsub double %80, 1.000000e+00, !dbg !163
  call void @fSubHandler(double %80, double 1.000000e+00, double %81, i64 93921944415536, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944415952, i32 105, i32 34), !dbg !158
  store double %81, double* %8, align 8, !dbg !158
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !164, metadata !76), !dbg !165
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !166, metadata !76), !dbg !167
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !168, metadata !76), !dbg !169
  call void @llvm.dbg.declare(metadata i32* %12, metadata !170, metadata !76), !dbg !172
  %82 = load double, double* %8, align 8, !dbg !173
  %83 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bm1_cs, double %82, %struct.gsl_sf_result_struct* %9), !dbg !174
  store i32 %83, i32* %12, align 4, !dbg !172
  call void @llvm.dbg.declare(metadata i32* %13, metadata !175, metadata !76), !dbg !176
  %84 = load double, double* %8, align 8, !dbg !177
  %85 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bth1_cs, double %84, %struct.gsl_sf_result_struct* %10), !dbg !178
  store i32 %85, i32* %13, align 4, !dbg !176
  call void @llvm.dbg.declare(metadata i32* %14, metadata !179, metadata !76), !dbg !180
  %86 = load double, double* %6, align 8, !dbg !181
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !182
  %88 = load double, double* %87, align 8, !dbg !182
  %89 = load double, double* %6, align 8, !dbg !183
  %90 = fdiv double %88, %89, !dbg !184
  call void @fDivHandler(double %88, double %89, double %90, i64 93921944430600, i64 93921944432248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944432656, i32 111, i32 58), !dbg !185
  %91 = call i32 @gsl_sf_bessel_sin_pi4_e(double %86, double %90, %struct.gsl_sf_result_struct* %11), !dbg !185
  store i32 %91, i32* %14, align 4, !dbg !180
  call void @llvm.dbg.declare(metadata double* %15, metadata !186, metadata !76), !dbg !187
  %92 = load double, double* %6, align 8, !dbg !188
  %93 = call double @sqrt(double %92) #6, !dbg !189
  call void @callOneArgHandler(i32 14, double %92, double %93, i64 93921944437224, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944437936, i32 112, i32 26), !dbg !187
  store double %93, double* %15, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata double* %16, metadata !190, metadata !76), !dbg !191
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !192
  %95 = load double, double* %94, align 8, !dbg !192
  %96 = fadd double 7.500000e-01, %95, !dbg !193
  call void @fAddHandler(double 7.500000e-01, double %95, double %96, i64 0, i64 93921944441688, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944443456, i32 113, i32 32), !dbg !194
  %97 = load double, double* %15, align 8, !dbg !194
  %98 = fdiv double %96, %97, !dbg !195
  call void @fDivHandler(double %96, double %97, double %98, i64 93921944443456, i64 93921944443816, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944444224, i32 113, i32 42), !dbg !191
  store double %98, double* %16, align 8, !dbg !191
  %99 = load double, double* %4, align 8, !dbg !196
  %100 = fcmp olt double %99, 0.000000e+00, !dbg !197
  %101 = call i1 @fCmpInstHandler(double %99, double 0.000000e+00, i1 %100, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944446704, i32 114, i32 23), !dbg !196
  br i1 %101, label %102, label %105, !dbg !196

; <label>:102:                                    ; preds = %76
  %103 = load double, double* %16, align 8, !dbg !198
  %104 = fsub double -0.000000e+00, %103, !dbg !200
  call void @fSubHandler(double -0.000000e+00, double %103, double %104, i64 0, i64 93921944449080, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944449488, i32 114, i32 31), !dbg !201
  br label %107, !dbg !201

; <label>:105:                                    ; preds = %76
  %106 = load double, double* %16, align 8, !dbg !202
  br label %107, !dbg !204

; <label>:107:                                    ; preds = %105, %102
  %108 = phi double [ %104, %102 ], [ %106, %105 ], !dbg !205
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !207
  %110 = load double, double* %109, align 8, !dbg !207
  %111 = fmul double %108, %110, !dbg !208
  call void @fMulHandler(double %108, double %110, double %111, i64 93921944451096, i64 93921944451960, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944453632, i32 114, i32 45), !dbg !209
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !209
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !210
  store double %111, double* %113, align 8, !dbg !211
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !212
  %115 = load double, double* %114, align 8, !dbg !212
  %116 = call double @fabs(double %115) #1, !dbg !213
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !214
  %118 = load double, double* %117, align 8, !dbg !214
  %119 = fmul double %116, %118, !dbg !215
  call void @fMulHandler(double %116, double %118, double %119, i64 93921944457456, i64 93921944458360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944460032, i32 115, i32 33), !dbg !216
  %120 = load double, double* %15, align 8, !dbg !216
  %121 = fdiv double %119, %120, !dbg !217
  call void @fDivHandler(double %119, double %120, double %121, i64 93921944460032, i64 93921944460424, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944460832, i32 115, i32 41), !dbg !218
  %122 = load double, double* %16, align 8, !dbg !218
  %123 = call double @fabs(double %122) #1, !dbg !219
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !220
  %125 = load double, double* %124, align 8, !dbg !220
  %126 = fmul double %123, %125, !dbg !221
  call void @fMulHandler(double %123, double %125, double %126, i64 93921944461696, i64 93921944462600, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944464272, i32 115, i32 61), !dbg !222
  %127 = fadd double %121, %126, !dbg !222
  call void @fAddHandler(double %121, double %126, double %127, i64 93921944460832, i64 93921944464272, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944464688, i32 115, i32 48), !dbg !223
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !223
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 1, !dbg !224
  store double %127, double* %129, align 8, !dbg !225
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !226
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %130, i32 0, i32 0, !dbg !227
  %132 = load double, double* %131, align 8, !dbg !227
  %133 = call double @fabs(double %132) #1, !dbg !228
  %134 = fmul double 0x3CB0000000000000, %133, !dbg !229
  call void @fMulHandler(double 0x3CB0000000000000, double %133, double %134, i64 0, i64 93921944468896, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944471504, i32 116, i32 36), !dbg !230
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !230
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 1, !dbg !231
  %137 = load double, double* %136, align 8, !dbg !232
  %138 = fadd double %137, %134, !dbg !232
  call void @fAddHandler(double %137, double %134, double %138, i64 93921944472728, i64 93921944471504, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944473136, i32 116, i32 17), !dbg !232
  store double %138, double* %136, align 8, !dbg !232
  %139 = load i32, i32* %12, align 4, !dbg !233
  %140 = icmp ne i32 %139, 0, !dbg !233
  %141 = sext i32 %139 to i64, !dbg !233
  %142 = call i1 @iCmpInstHandler(i64 %141, i64 0, i1 %140, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944475328, i32 117, i32 12), !dbg !233
  br i1 %142, label %143, label %145, !dbg !233

; <label>:143:                                    ; preds = %107
  %144 = load i32, i32* %12, align 4, !dbg !234
  br label %164, !dbg !234

; <label>:145:                                    ; preds = %107
  %146 = load i32, i32* %13, align 4, !dbg !235
  %147 = icmp ne i32 %146, 0, !dbg !235
  %148 = sext i32 %146 to i64, !dbg !235
  %149 = call i1 @iCmpInstHandler(i64 %148, i64 0, i1 %147, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944479872, i32 117, i32 12), !dbg !235
  br i1 %149, label %150, label %152, !dbg !235

; <label>:150:                                    ; preds = %145
  %151 = load i32, i32* %13, align 4, !dbg !236
  br label %162, !dbg !236

; <label>:152:                                    ; preds = %145
  %153 = load i32, i32* %14, align 4, !dbg !237
  %154 = icmp ne i32 %153, 0, !dbg !237
  %155 = sext i32 %153 to i64, !dbg !237
  %156 = call i1 @iCmpInstHandler(i64 %155, i64 0, i1 %154, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 93921944484416, i32 117, i32 12), !dbg !237
  br i1 %156, label %157, label %159, !dbg !237

; <label>:157:                                    ; preds = %152
  %158 = load i32, i32* %14, align 4, !dbg !239
  br label %160, !dbg !239

; <label>:159:                                    ; preds = %152
  br label %160, !dbg !241

; <label>:160:                                    ; preds = %159, %157
  %161 = phi i32 [ %158, %157 ], [ 0, %159 ], !dbg !243
  br label %162, !dbg !243

; <label>:162:                                    ; preds = %160, %150
  %163 = phi i32 [ %151, %150 ], [ %161, %160 ], !dbg !245
  br label %164, !dbg !245

; <label>:164:                                    ; preds = %162, %143
  %165 = phi i32 [ %144, %143 ], [ %163, %162 ], !dbg !247
  store i32 %165, i32* %3, align 4, !dbg !249
  br label %167, !dbg !249

; <label>:166:                                    ; preds = %39
  br label %167

; <label>:167:                                    ; preds = %166, %164, %55, %44, %37, %22
  %168 = load i32, i32* %3, align 4, !dbg !250
  ret i32 %168, !dbg !250
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !251 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !257, metadata !76), !dbg !258
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !259, metadata !76), !dbg !260
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !261, metadata !76), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %7, metadata !263, metadata !76), !dbg !264
  call void @llvm.dbg.declare(metadata double* %8, metadata !265, metadata !76), !dbg !266
  store double 0.000000e+00, double* %8, align 8, !dbg !266
  call void @llvm.dbg.declare(metadata double* %9, metadata !267, metadata !76), !dbg !268
  store double 0.000000e+00, double* %9, align 8, !dbg !268
  call void @llvm.dbg.declare(metadata double* %10, metadata !269, metadata !76), !dbg !270
  %15 = load double, double* %5, align 8, !dbg !271
  %16 = fmul double 2.000000e+00, %15, !dbg !272
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 93921944400104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944510064, i32 11, i32 19), !dbg !273
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !273
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !274
  %19 = load double, double* %18, align 8, !dbg !274
  %20 = fsub double %16, %19, !dbg !275
  call void @fSubHandler(double %16, double %19, double %20, i64 93921944510064, i64 93921944365640, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944512800, i32 11, i32 22), !dbg !276
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !276
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !277
  %23 = load double, double* %22, align 8, !dbg !277
  %24 = fsub double %20, %23, !dbg !278
  call void @fSubHandler(double %20, double %23, double %24, i64 93921944512800, i64 93921944513992, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944515664, i32 11, i32 30), !dbg !279
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !279
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !280
  %27 = load double, double* %26, align 8, !dbg !280
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !281
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !282
  %30 = load double, double* %29, align 8, !dbg !282
  %31 = fsub double %27, %30, !dbg !283
  call void @fSubHandler(double %27, double %30, double %31, i64 93921944516888, i64 93921944519368, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944521040, i32 11, i32 48), !dbg !284
  %32 = fdiv double %24, %31, !dbg !284
  call void @fDivHandler(double %24, double %31, double %32, i64 93921944515664, i64 93921944521040, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944521456, i32 11, i32 39), !dbg !270
  store double %32, double* %10, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata double* %11, metadata !285, metadata !76), !dbg !286
  %33 = load double, double* %10, align 8, !dbg !287
  %34 = fmul double 2.000000e+00, %33, !dbg !288
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 93921944524504, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944524912, i32 12, i32 19), !dbg !286
  store double %34, double* %11, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata double* %12, metadata !289, metadata !76), !dbg !290
  store double 0.000000e+00, double* %12, align 8, !dbg !290
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !291
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !293
  %37 = load i32, i32* %36, align 8, !dbg !293
  store i32 %37, i32* %7, align 4, !dbg !294
  br label %38, !dbg !295

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !296
  %40 = icmp sge i32 %39, 1, !dbg !299
  %41 = sext i32 %39 to i64, !dbg !300
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944533488, i32 16, i32 23), !dbg !300
  br i1 %42, label %43, label %80, !dbg !300

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !301, metadata !76), !dbg !303
  %44 = load double, double* %8, align 8, !dbg !304
  store double %44, double* %13, align 8, !dbg !303
  %45 = load double, double* %11, align 8, !dbg !305
  %46 = load double, double* %8, align 8, !dbg !306
  %47 = fmul double %45, %46, !dbg !307
  call void @fMulHandler(double %45, double %46, double %47, i64 93921944537688, i64 93921944538072, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944538480, i32 18, i32 11), !dbg !308
  %48 = load double, double* %9, align 8, !dbg !308
  %49 = fsub double %47, %48, !dbg !309
  call void @fSubHandler(double %47, double %48, double %49, i64 93921944538480, i64 93921944538872, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944539280, i32 18, i32 14), !dbg !310
  %50 = load i32, i32* %7, align 4, !dbg !310
  %51 = sext i32 %50 to i64, !dbg !311
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !311
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !312
  %54 = load double*, double** %53, align 8, !dbg !312
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !311
  %56 = load double, double* %55, align 8, !dbg !311
  %57 = fadd double %49, %56, !dbg !313
  call void @fAddHandler(double %49, double %56, double %57, i64 93921944539280, i64 93921944544328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944544448, i32 18, i32 19), !dbg !314
  store double %57, double* %8, align 8, !dbg !314
  %58 = load double, double* %11, align 8, !dbg !315
  %59 = load double, double* %13, align 8, !dbg !316
  %60 = fmul double %58, %59, !dbg !317
  call void @fMulHandler(double %58, double %59, double %60, i64 93921944545256, i64 93921944545640, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944546048, i32 19, i32 17), !dbg !318
  %61 = call double @fabs(double %60) #1, !dbg !318
  %62 = load double, double* %9, align 8, !dbg !319
  %63 = call double @fabs(double %62) #1, !dbg !320
  %64 = fadd double %61, %63, !dbg !322
  call void @fAddHandler(double %61, double %63, double %64, i64 93921944546528, i64 93921944547456, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944547936, i32 19, i32 24), !dbg !323
  %65 = load i32, i32* %7, align 4, !dbg !323
  %66 = sext i32 %65 to i64, !dbg !324
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !324
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !325
  %69 = load double*, double** %68, align 8, !dbg !325
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !324
  %71 = load double, double* %70, align 8, !dbg !324
  %72 = call double @fabs(double %71) #1, !dbg !326
  %73 = fadd double %64, %72, !dbg !328
  call void @fAddHandler(double %64, double %72, double %73, i64 93921944547936, i64 93921944553168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944553648, i32 19, i32 35), !dbg !329
  %74 = load double, double* %12, align 8, !dbg !329
  %75 = fadd double %74, %73, !dbg !329
  call void @fAddHandler(double %74, double %73, double %75, i64 93921944554040, i64 93921944553648, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944554448, i32 19, i32 7), !dbg !329
  store double %75, double* %12, align 8, !dbg !329
  %76 = load double, double* %13, align 8, !dbg !330
  store double %76, double* %9, align 8, !dbg !331
  br label %77, !dbg !332

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !333
  %79 = add nsw i32 %78, -1, !dbg !333
  store i32 %79, i32* %7, align 4, !dbg !333
  br label %38, !dbg !335, !llvm.loop !336

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !338, metadata !76), !dbg !340
  %81 = load double, double* %8, align 8, !dbg !341
  store double %81, double* %14, align 8, !dbg !340
  %82 = load double, double* %10, align 8, !dbg !342
  %83 = load double, double* %8, align 8, !dbg !343
  %84 = fmul double %82, %83, !dbg !344
  call void @fMulHandler(double %82, double %83, double %84, i64 93921944565576, i64 93921944565960, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944566368, i32 25, i32 10), !dbg !345
  %85 = load double, double* %9, align 8, !dbg !345
  %86 = fsub double %84, %85, !dbg !346
  call void @fSubHandler(double %84, double %85, double %86, i64 93921944566368, i64 93921944566760, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944567168, i32 25, i32 13), !dbg !347
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !347
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !348
  %89 = load double*, double** %88, align 8, !dbg !348
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !347
  %91 = load double, double* %90, align 8, !dbg !347
  %92 = fmul double 5.000000e-01, %91, !dbg !349
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 93921944571800, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944571952, i32 25, i32 24), !dbg !350
  %93 = fadd double %86, %92, !dbg !350
  call void @fAddHandler(double %86, double %92, double %93, i64 93921944567168, i64 93921944571952, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944572336, i32 25, i32 18), !dbg !351
  store double %93, double* %8, align 8, !dbg !351
  %94 = load double, double* %10, align 8, !dbg !352
  %95 = load double, double* %14, align 8, !dbg !353
  %96 = fmul double %94, %95, !dbg !354
  call void @fMulHandler(double %94, double %95, double %96, i64 93921944573144, i64 93921944573528, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944573936, i32 26, i32 16), !dbg !355
  %97 = call double @fabs(double %96) #1, !dbg !355
  %98 = load double, double* %9, align 8, !dbg !356
  %99 = call double @fabs(double %98) #1, !dbg !357
  %100 = fadd double %97, %99, !dbg !359
  call void @fAddHandler(double %97, double %99, double %100, i64 93921944574416, i64 93921944575344, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944575824, i32 26, i32 23), !dbg !360
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !360
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !361
  %103 = load double*, double** %102, align 8, !dbg !361
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !360
  %105 = load double, double* %104, align 8, !dbg !360
  %106 = call double @fabs(double %105) #1, !dbg !362
  %107 = fmul double 5.000000e-01, %106, !dbg !364
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 93921944580576, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944581088, i32 26, i32 40), !dbg !365
  %108 = fadd double %100, %107, !dbg !365
  call void @fAddHandler(double %100, double %107, double %108, i64 93921944575824, i64 93921944581088, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944581472, i32 26, i32 34), !dbg !366
  %109 = load double, double* %12, align 8, !dbg !366
  %110 = fadd double %109, %108, !dbg !366
  call void @fAddHandler(double %109, double %108, double %110, i64 93921944581864, i64 93921944581472, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944582272, i32 26, i32 7), !dbg !366
  store double %110, double* %12, align 8, !dbg !366
  %111 = load double, double* %8, align 8, !dbg !367
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !368
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !369
  store double %111, double* %113, align 8, !dbg !370
  %114 = load double, double* %12, align 8, !dbg !371
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !372
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 93921944585688, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944586096, i32 30, i32 33), !dbg !373
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !373
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !374
  %118 = load i32, i32* %117, align 8, !dbg !374
  %119 = sext i32 %118 to i64, !dbg !375
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !375
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !376
  %122 = load double*, double** %121, align 8, !dbg !376
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !375
  %124 = load double, double* %123, align 8, !dbg !375
  %125 = call double @fabs(double %124) #1, !dbg !377
  %126 = fadd double %115, %125, !dbg !378
  call void @fAddHandler(double %115, double %125, double %126, i64 93921944586096, i64 93921944593424, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 93921944593904, i32 30, i32 37), !dbg !379
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !379
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !380
  store double %126, double* %128, align 8, !dbg !381
  ret i32 0, !dbg !382
}

declare i32 @gsl_sf_bessel_sin_pi4_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_J1(double) #0 !dbg !383 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !386, metadata !76), !dbg !387
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !388, metadata !76), !dbg !389
  call void @llvm.dbg.declare(metadata i32* %5, metadata !390, metadata !76), !dbg !389
  %6 = load double, double* %3, align 8, !dbg !389
  %7 = call i32 @gsl_sf_bessel_J1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !389
  store i32 %7, i32* %5, align 4, !dbg !389
  %8 = load i32, i32* %5, align 4, !dbg !391
  %9 = icmp ne i32 %8, 0, !dbg !391
  %10 = sext i32 %8 to i64, !dbg !389
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 93921944603232, i32 127, i32 3), !dbg !389
  br i1 %11, label %12, label %18, !dbg !389

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !393, !llvm.loop !396

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !398
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 127, i32 %14), !dbg !398
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !398
  %16 = load double, double* %15, align 8, !dbg !398
  store double %16, double* %2, align 8, !dbg !398
  br label %21, !dbg !398
                                                  ; No predecessors!
  br label %18, !dbg !401

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !403
  %20 = load double, double* %19, align 8, !dbg !403
  store double %20, double* %2, align 8, !dbg !403
  br label %21, !dbg !403

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !405
  ret double %22, !dbg !405
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
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_J1.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = distinct !DIGlobalVariable(name: "bj1_cs", scope: !0, file: !1, line: 64, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @bj1_cs)
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
!55 = distinct !DIGlobalVariable(name: "bj1_data", scope: !0, file: !1, line: 50, type: !56, isLocal: true, isDefinition: true, variable: [12 x double]* @bj1_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 768, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 12)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "gsl_sf_bessel_J1_e", scope: !1, file: !1, line: 74, type: !64, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
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
!75 = !DILocalVariable(name: "x", arg: 1, scope: !63, file: !1, line: 74, type: !66)
!76 = !DIExpression()
!77 = !DILocation(line: 74, column: 37, scope: !63)
!78 = !DILocalVariable(name: "result", arg: 2, scope: !63, file: !1, line: 74, type: !67)
!79 = !DILocation(line: 74, column: 56, scope: !63)
!80 = !DILocalVariable(name: "y", scope: !63, file: !1, line: 76, type: !49)
!81 = !DILocation(line: 76, column: 10, scope: !63)
!82 = !DILocation(line: 76, column: 19, scope: !63)
!83 = !DILocation(line: 76, column: 14, scope: !63)
!84 = !DILocation(line: 80, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !63, file: !1, line: 80, column: 6)
!86 = !DILocation(line: 80, column: 8, scope: !85)
!87 = !DILocation(line: 80, column: 6, scope: !63)
!88 = !DILocation(line: 81, column: 5, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 80, column: 16)
!90 = !DILocation(line: 81, column: 13, scope: !89)
!91 = !DILocation(line: 81, column: 17, scope: !89)
!92 = !DILocation(line: 82, column: 5, scope: !89)
!93 = !DILocation(line: 82, column: 13, scope: !89)
!94 = !DILocation(line: 82, column: 17, scope: !89)
!95 = !DILocation(line: 83, column: 5, scope: !89)
!96 = !DILocation(line: 85, column: 11, scope: !97)
!97 = distinct !DILexicalBlock(scope: !85, file: !1, line: 85, column: 11)
!98 = !DILocation(line: 85, column: 13, scope: !97)
!99 = !DILocation(line: 85, column: 11, scope: !85)
!100 = !DILocation(line: 86, column: 5, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 85, column: 32)
!102 = distinct !{!102, !100}
!103 = !DILocation(line: 86, column: 5, scope: !104)
!104 = !DILexicalBlockFile(scope: !105, file: !1, discriminator: 1)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 86, column: 5)
!106 = distinct !{!106, !107}
!107 = !DILocation(line: 86, column: 5, scope: !105)
!108 = !DILocation(line: 86, column: 5, scope: !109)
!109 = !DILexicalBlockFile(scope: !110, file: !1, discriminator: 2)
!110 = distinct !DILexicalBlock(scope: !105, file: !1, line: 86, column: 5)
!111 = !DILocation(line: 86, column: 5, scope: !112)
!112 = !DILexicalBlockFile(scope: !105, file: !1, discriminator: 3)
!113 = !DILocation(line: 87, column: 3, scope: !101)
!114 = !DILocation(line: 88, column: 11, scope: !115)
!115 = distinct !DILexicalBlock(scope: !97, file: !1, line: 88, column: 11)
!116 = !DILocation(line: 88, column: 13, scope: !115)
!117 = !DILocation(line: 88, column: 11, scope: !97)
!118 = !DILocation(line: 89, column: 23, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 88, column: 50)
!120 = !DILocation(line: 89, column: 22, scope: !119)
!121 = !DILocation(line: 89, column: 5, scope: !119)
!122 = !DILocation(line: 89, column: 13, scope: !119)
!123 = !DILocation(line: 89, column: 17, scope: !119)
!124 = !DILocation(line: 90, column: 5, scope: !119)
!125 = !DILocation(line: 90, column: 13, scope: !119)
!126 = !DILocation(line: 90, column: 17, scope: !119)
!127 = !DILocation(line: 91, column: 5, scope: !119)
!128 = !DILocation(line: 93, column: 11, scope: !129)
!129 = distinct !DILexicalBlock(scope: !115, file: !1, line: 93, column: 11)
!130 = !DILocation(line: 93, column: 13, scope: !129)
!131 = !DILocation(line: 93, column: 11, scope: !115)
!132 = !DILocalVariable(name: "c", scope: !133, file: !1, line: 94, type: !68)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 93, column: 20)
!134 = !DILocation(line: 94, column: 19, scope: !133)
!135 = !DILocation(line: 95, column: 32, scope: !133)
!136 = !DILocation(line: 95, column: 31, scope: !133)
!137 = !DILocation(line: 95, column: 34, scope: !133)
!138 = !DILocation(line: 95, column: 33, scope: !133)
!139 = !DILocation(line: 95, column: 35, scope: !133)
!140 = !DILocation(line: 95, column: 5, scope: !133)
!141 = !DILocation(line: 96, column: 19, scope: !133)
!142 = !DILocation(line: 96, column: 33, scope: !133)
!143 = !DILocation(line: 96, column: 29, scope: !133)
!144 = !DILocation(line: 96, column: 21, scope: !133)
!145 = !DILocation(line: 96, column: 5, scope: !133)
!146 = !DILocation(line: 96, column: 13, scope: !133)
!147 = !DILocation(line: 96, column: 17, scope: !133)
!148 = !DILocation(line: 97, column: 24, scope: !133)
!149 = !DILocation(line: 97, column: 30, scope: !133)
!150 = !DILocation(line: 97, column: 26, scope: !133)
!151 = !DILocation(line: 97, column: 19, scope: !133)
!152 = !DILocation(line: 97, column: 5, scope: !133)
!153 = !DILocation(line: 97, column: 13, scope: !133)
!154 = !DILocation(line: 97, column: 17, scope: !133)
!155 = !DILocation(line: 98, column: 5, scope: !133)
!156 = !DILocalVariable(name: "z", scope: !157, file: !1, line: 105, type: !66)
!157 = distinct !DILexicalBlock(scope: !129, file: !1, line: 100, column: 8)
!158 = !DILocation(line: 105, column: 18, scope: !157)
!159 = !DILocation(line: 105, column: 29, scope: !157)
!160 = !DILocation(line: 105, column: 31, scope: !157)
!161 = !DILocation(line: 105, column: 30, scope: !157)
!162 = !DILocation(line: 105, column: 27, scope: !157)
!163 = !DILocation(line: 105, column: 34, scope: !157)
!164 = !DILocalVariable(name: "ca", scope: !157, file: !1, line: 106, type: !68)
!165 = !DILocation(line: 106, column: 19, scope: !157)
!166 = !DILocalVariable(name: "ct", scope: !157, file: !1, line: 107, type: !68)
!167 = !DILocation(line: 107, column: 19, scope: !157)
!168 = !DILocalVariable(name: "sp", scope: !157, file: !1, line: 108, type: !68)
!169 = !DILocation(line: 108, column: 19, scope: !157)
!170 = !DILocalVariable(name: "stat_ca", scope: !157, file: !1, line: 109, type: !171)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!172 = !DILocation(line: 109, column: 15, scope: !157)
!173 = !DILocation(line: 109, column: 72, scope: !157)
!174 = !DILocation(line: 109, column: 25, scope: !157)
!175 = !DILocalVariable(name: "stat_ct", scope: !157, file: !1, line: 110, type: !171)
!176 = !DILocation(line: 110, column: 15, scope: !157)
!177 = !DILocation(line: 110, column: 72, scope: !157)
!178 = !DILocation(line: 110, column: 25, scope: !157)
!179 = !DILocalVariable(name: "stat_sp", scope: !157, file: !1, line: 111, type: !171)
!180 = !DILocation(line: 111, column: 15, scope: !157)
!181 = !DILocation(line: 111, column: 49, scope: !157)
!182 = !DILocation(line: 111, column: 55, scope: !157)
!183 = !DILocation(line: 111, column: 59, scope: !157)
!184 = !DILocation(line: 111, column: 58, scope: !157)
!185 = !DILocation(line: 111, column: 25, scope: !157)
!186 = !DILocalVariable(name: "sqrty", scope: !157, file: !1, line: 112, type: !66)
!187 = !DILocation(line: 112, column: 18, scope: !157)
!188 = !DILocation(line: 112, column: 31, scope: !157)
!189 = !DILocation(line: 112, column: 26, scope: !157)
!190 = !DILocalVariable(name: "ampl", scope: !157, file: !1, line: 113, type: !66)
!191 = !DILocation(line: 113, column: 18, scope: !157)
!192 = !DILocation(line: 113, column: 37, scope: !157)
!193 = !DILocation(line: 113, column: 32, scope: !157)
!194 = !DILocation(line: 113, column: 44, scope: !157)
!195 = !DILocation(line: 113, column: 42, scope: !157)
!196 = !DILocation(line: 114, column: 21, scope: !157)
!197 = !DILocation(line: 114, column: 23, scope: !157)
!198 = !DILocation(line: 114, column: 32, scope: !199)
!199 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 1)
!200 = !DILocation(line: 114, column: 31, scope: !199)
!201 = !DILocation(line: 114, column: 21, scope: !199)
!202 = !DILocation(line: 114, column: 39, scope: !203)
!203 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 2)
!204 = !DILocation(line: 114, column: 21, scope: !203)
!205 = !DILocation(line: 114, column: 21, scope: !206)
!206 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 3)
!207 = !DILocation(line: 114, column: 50, scope: !206)
!208 = !DILocation(line: 114, column: 45, scope: !206)
!209 = !DILocation(line: 114, column: 5, scope: !206)
!210 = !DILocation(line: 114, column: 13, scope: !206)
!211 = !DILocation(line: 114, column: 18, scope: !206)
!212 = !DILocation(line: 115, column: 28, scope: !157)
!213 = !DILocation(line: 115, column: 20, scope: !157)
!214 = !DILocation(line: 115, column: 38, scope: !157)
!215 = !DILocation(line: 115, column: 33, scope: !157)
!216 = !DILocation(line: 115, column: 42, scope: !157)
!217 = !DILocation(line: 115, column: 41, scope: !157)
!218 = !DILocation(line: 115, column: 55, scope: !157)
!219 = !DILocation(line: 115, column: 50, scope: !199)
!220 = !DILocation(line: 115, column: 66, scope: !157)
!221 = !DILocation(line: 115, column: 61, scope: !157)
!222 = !DILocation(line: 115, column: 48, scope: !157)
!223 = !DILocation(line: 115, column: 5, scope: !157)
!224 = !DILocation(line: 115, column: 13, scope: !157)
!225 = !DILocation(line: 115, column: 18, scope: !157)
!226 = !DILocation(line: 116, column: 43, scope: !157)
!227 = !DILocation(line: 116, column: 51, scope: !157)
!228 = !DILocation(line: 116, column: 38, scope: !157)
!229 = !DILocation(line: 116, column: 36, scope: !157)
!230 = !DILocation(line: 116, column: 5, scope: !157)
!231 = !DILocation(line: 116, column: 13, scope: !157)
!232 = !DILocation(line: 116, column: 17, scope: !157)
!233 = !DILocation(line: 117, column: 12, scope: !157)
!234 = !DILocation(line: 117, column: 12, scope: !199)
!235 = !DILocation(line: 117, column: 12, scope: !203)
!236 = !DILocation(line: 117, column: 12, scope: !206)
!237 = !DILocation(line: 117, column: 12, scope: !238)
!238 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 4)
!239 = !DILocation(line: 117, column: 12, scope: !240)
!240 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 5)
!241 = !DILocation(line: 117, column: 12, scope: !242)
!242 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 6)
!243 = !DILocation(line: 117, column: 12, scope: !244)
!244 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 7)
!245 = !DILocation(line: 117, column: 12, scope: !246)
!246 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 8)
!247 = !DILocation(line: 117, column: 12, scope: !248)
!248 = !DILexicalBlockFile(scope: !157, file: !1, discriminator: 9)
!249 = !DILocation(line: 117, column: 5, scope: !248)
!250 = !DILocation(line: 119, column: 1, scope: !63)
!251 = distinct !DISubprogram(name: "cheb_eval_e", scope: !252, file: !252, line: 3, type: !253, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!252 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!253 = !DISubroutineType(types: !254)
!254 = !{!51, !255, !66, !67}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!257 = !DILocalVariable(name: "cs", arg: 1, scope: !251, file: !252, line: 3, type: !255)
!258 = !DILocation(line: 3, column: 33, scope: !251)
!259 = !DILocalVariable(name: "x", arg: 2, scope: !251, file: !252, line: 4, type: !66)
!260 = !DILocation(line: 4, column: 26, scope: !251)
!261 = !DILocalVariable(name: "result", arg: 3, scope: !251, file: !252, line: 5, type: !67)
!262 = !DILocation(line: 5, column: 29, scope: !251)
!263 = !DILocalVariable(name: "j", scope: !251, file: !252, line: 7, type: !51)
!264 = !DILocation(line: 7, column: 7, scope: !251)
!265 = !DILocalVariable(name: "d", scope: !251, file: !252, line: 8, type: !49)
!266 = !DILocation(line: 8, column: 10, scope: !251)
!267 = !DILocalVariable(name: "dd", scope: !251, file: !252, line: 9, type: !49)
!268 = !DILocation(line: 9, column: 10, scope: !251)
!269 = !DILocalVariable(name: "y", scope: !251, file: !252, line: 11, type: !49)
!270 = !DILocation(line: 11, column: 10, scope: !251)
!271 = !DILocation(line: 11, column: 20, scope: !251)
!272 = !DILocation(line: 11, column: 19, scope: !251)
!273 = !DILocation(line: 11, column: 24, scope: !251)
!274 = !DILocation(line: 11, column: 28, scope: !251)
!275 = !DILocation(line: 11, column: 22, scope: !251)
!276 = !DILocation(line: 11, column: 32, scope: !251)
!277 = !DILocation(line: 11, column: 36, scope: !251)
!278 = !DILocation(line: 11, column: 30, scope: !251)
!279 = !DILocation(line: 11, column: 42, scope: !251)
!280 = !DILocation(line: 11, column: 46, scope: !251)
!281 = !DILocation(line: 11, column: 50, scope: !251)
!282 = !DILocation(line: 11, column: 54, scope: !251)
!283 = !DILocation(line: 11, column: 48, scope: !251)
!284 = !DILocation(line: 11, column: 39, scope: !251)
!285 = !DILocalVariable(name: "y2", scope: !251, file: !252, line: 12, type: !49)
!286 = !DILocation(line: 12, column: 10, scope: !251)
!287 = !DILocation(line: 12, column: 21, scope: !251)
!288 = !DILocation(line: 12, column: 19, scope: !251)
!289 = !DILocalVariable(name: "e", scope: !251, file: !252, line: 14, type: !49)
!290 = !DILocation(line: 14, column: 10, scope: !251)
!291 = !DILocation(line: 16, column: 11, scope: !292)
!292 = distinct !DILexicalBlock(scope: !251, file: !252, line: 16, column: 3)
!293 = !DILocation(line: 16, column: 15, scope: !292)
!294 = !DILocation(line: 16, column: 9, scope: !292)
!295 = !DILocation(line: 16, column: 7, scope: !292)
!296 = !DILocation(line: 16, column: 22, scope: !297)
!297 = !DILexicalBlockFile(scope: !298, file: !252, discriminator: 1)
!298 = distinct !DILexicalBlock(scope: !292, file: !252, line: 16, column: 3)
!299 = !DILocation(line: 16, column: 23, scope: !297)
!300 = !DILocation(line: 16, column: 3, scope: !297)
!301 = !DILocalVariable(name: "temp", scope: !302, file: !252, line: 17, type: !49)
!302 = distinct !DILexicalBlock(scope: !298, file: !252, line: 16, column: 33)
!303 = !DILocation(line: 17, column: 12, scope: !302)
!304 = !DILocation(line: 17, column: 19, scope: !302)
!305 = !DILocation(line: 18, column: 9, scope: !302)
!306 = !DILocation(line: 18, column: 12, scope: !302)
!307 = !DILocation(line: 18, column: 11, scope: !302)
!308 = !DILocation(line: 18, column: 16, scope: !302)
!309 = !DILocation(line: 18, column: 14, scope: !302)
!310 = !DILocation(line: 18, column: 27, scope: !302)
!311 = !DILocation(line: 18, column: 21, scope: !302)
!312 = !DILocation(line: 18, column: 25, scope: !302)
!313 = !DILocation(line: 18, column: 19, scope: !302)
!314 = !DILocation(line: 18, column: 7, scope: !302)
!315 = !DILocation(line: 19, column: 15, scope: !302)
!316 = !DILocation(line: 19, column: 18, scope: !302)
!317 = !DILocation(line: 19, column: 17, scope: !302)
!318 = !DILocation(line: 19, column: 10, scope: !302)
!319 = !DILocation(line: 19, column: 31, scope: !302)
!320 = !DILocation(line: 19, column: 26, scope: !321)
!321 = !DILexicalBlockFile(scope: !302, file: !252, discriminator: 1)
!322 = !DILocation(line: 19, column: 24, scope: !302)
!323 = !DILocation(line: 19, column: 48, scope: !302)
!324 = !DILocation(line: 19, column: 42, scope: !302)
!325 = !DILocation(line: 19, column: 46, scope: !302)
!326 = !DILocation(line: 19, column: 37, scope: !327)
!327 = !DILexicalBlockFile(scope: !302, file: !252, discriminator: 2)
!328 = !DILocation(line: 19, column: 35, scope: !302)
!329 = !DILocation(line: 19, column: 7, scope: !302)
!330 = !DILocation(line: 20, column: 10, scope: !302)
!331 = !DILocation(line: 20, column: 8, scope: !302)
!332 = !DILocation(line: 21, column: 3, scope: !302)
!333 = !DILocation(line: 16, column: 29, scope: !334)
!334 = !DILexicalBlockFile(scope: !298, file: !252, discriminator: 2)
!335 = !DILocation(line: 16, column: 3, scope: !334)
!336 = distinct !{!336, !337}
!337 = !DILocation(line: 16, column: 3, scope: !251)
!338 = !DILocalVariable(name: "temp", scope: !339, file: !252, line: 24, type: !49)
!339 = distinct !DILexicalBlock(scope: !251, file: !252, line: 23, column: 3)
!340 = !DILocation(line: 24, column: 12, scope: !339)
!341 = !DILocation(line: 24, column: 19, scope: !339)
!342 = !DILocation(line: 25, column: 9, scope: !339)
!343 = !DILocation(line: 25, column: 11, scope: !339)
!344 = !DILocation(line: 25, column: 10, scope: !339)
!345 = !DILocation(line: 25, column: 15, scope: !339)
!346 = !DILocation(line: 25, column: 13, scope: !339)
!347 = !DILocation(line: 25, column: 26, scope: !339)
!348 = !DILocation(line: 25, column: 30, scope: !339)
!349 = !DILocation(line: 25, column: 24, scope: !339)
!350 = !DILocation(line: 25, column: 18, scope: !339)
!351 = !DILocation(line: 25, column: 7, scope: !339)
!352 = !DILocation(line: 26, column: 15, scope: !339)
!353 = !DILocation(line: 26, column: 17, scope: !339)
!354 = !DILocation(line: 26, column: 16, scope: !339)
!355 = !DILocation(line: 26, column: 10, scope: !339)
!356 = !DILocation(line: 26, column: 30, scope: !339)
!357 = !DILocation(line: 26, column: 25, scope: !358)
!358 = !DILexicalBlockFile(scope: !339, file: !252, discriminator: 1)
!359 = !DILocation(line: 26, column: 23, scope: !339)
!360 = !DILocation(line: 26, column: 47, scope: !339)
!361 = !DILocation(line: 26, column: 51, scope: !339)
!362 = !DILocation(line: 26, column: 42, scope: !363)
!363 = !DILexicalBlockFile(scope: !339, file: !252, discriminator: 2)
!364 = !DILocation(line: 26, column: 40, scope: !339)
!365 = !DILocation(line: 26, column: 34, scope: !339)
!366 = !DILocation(line: 26, column: 7, scope: !339)
!367 = !DILocation(line: 29, column: 17, scope: !251)
!368 = !DILocation(line: 29, column: 3, scope: !251)
!369 = !DILocation(line: 29, column: 11, scope: !251)
!370 = !DILocation(line: 29, column: 15, scope: !251)
!371 = !DILocation(line: 30, column: 35, scope: !251)
!372 = !DILocation(line: 30, column: 33, scope: !251)
!373 = !DILocation(line: 30, column: 50, scope: !251)
!374 = !DILocation(line: 30, column: 54, scope: !251)
!375 = !DILocation(line: 30, column: 44, scope: !251)
!376 = !DILocation(line: 30, column: 48, scope: !251)
!377 = !DILocation(line: 30, column: 39, scope: !251)
!378 = !DILocation(line: 30, column: 37, scope: !251)
!379 = !DILocation(line: 30, column: 3, scope: !251)
!380 = !DILocation(line: 30, column: 11, scope: !251)
!381 = !DILocation(line: 30, column: 15, scope: !251)
!382 = !DILocation(line: 32, column: 3, scope: !251)
!383 = distinct !DISubprogram(name: "gsl_sf_bessel_J1", scope: !1, file: !1, line: 125, type: !384, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!384 = !DISubroutineType(types: !385)
!385 = !{!49, !66}
!386 = !DILocalVariable(name: "x", arg: 1, scope: !383, file: !1, line: 125, type: !66)
!387 = !DILocation(line: 125, column: 38, scope: !383)
!388 = !DILocalVariable(name: "result", scope: !383, file: !1, line: 127, type: !68)
!389 = !DILocation(line: 127, column: 3, scope: !383)
!390 = !DILocalVariable(name: "status", scope: !383, file: !1, line: 127, type: !51)
!391 = !DILocation(line: 127, column: 3, scope: !392)
!392 = distinct !DILexicalBlock(scope: !383, file: !1, line: 127, column: 3)
!393 = !DILocation(line: 127, column: 3, scope: !394)
!394 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 1)
!395 = distinct !DILexicalBlock(scope: !392, file: !1, line: 127, column: 3)
!396 = distinct !{!396, !397}
!397 = !DILocation(line: 127, column: 3, scope: !395)
!398 = !DILocation(line: 127, column: 3, scope: !399)
!399 = !DILexicalBlockFile(scope: !400, file: !1, discriminator: 2)
!400 = distinct !DILexicalBlock(scope: !395, file: !1, line: 127, column: 3)
!401 = !DILocation(line: 127, column: 3, scope: !402)
!402 = !DILexicalBlockFile(scope: !395, file: !1, discriminator: 3)
!403 = !DILocation(line: 127, column: 3, scope: !404)
!404 = !DILexicalBlockFile(scope: !383, file: !1, discriminator: 4)
!405 = !DILocation(line: 128, column: 1, scope: !383)
