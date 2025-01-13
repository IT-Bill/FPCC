; ModuleID = 'bessel_Y1.ll'
source_filename = "bessel_Y1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Y1.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@by1_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([14 x double], [14 x double]* @by1_data, i32 0, i32 0), i32 13, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@_gsl_sf_bessel_amp_phase_bm1_cs = external constant %struct.cheb_series_struct, align 8
@_gsl_sf_bessel_amp_phase_bth1_cs = external constant %struct.cheb_series_struct, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_Y1_e(x, &result)\00", align 1
@by1_data = internal global [14 x double] [double 0x3FA06CD9FB9F847D, double 0x3FF4340D323E0B7F, double 0x3F7A9FB43C91106F, double 0xBFB6E067A0080402, double 0x3F8B23472BECCDFB, double 0xBF4D6C2E436D54C7, double 0x3F031F67DD5645CB, double 0xBEB0CCDEC6C211DA, double 0x3E556A8C824FD81B, double 0xBDF4C63BB6371A5C, double 0x3D8FC0B912F66D88, double -3.487488e-14, double 2.783800e-16, double -1.860000e-18], align 16
@0 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_Y1_e\00"
@1 = private unnamed_addr constant [13 x i8] c"bessel_Y1.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [13 x i8] c"bessel_Y1.ll\00"
@4 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_Y1\00"
@5 = private unnamed_addr constant [13 x i8] c"bessel_Y1.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Y1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !63 {
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
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !75, metadata !76), !dbg !77
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !78, metadata !76), !dbg !79
  call void @llvm.dbg.declare(metadata double* %6, metadata !80, metadata !76), !dbg !81
  store double 0x3FE45F306DC9C883, double* %6, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata double* %7, metadata !82, metadata !76), !dbg !83
  store double 0x1922D0E5604189, double* %7, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata double* %8, metadata !84, metadata !76), !dbg !85
  store double 0x3E60000000000000, double* %8, align 8, !dbg !85
  call void @llvm.dbg.declare(metadata double* %9, metadata !86, metadata !76), !dbg !87
  store double 0x4330000000000000, double* %9, align 8, !dbg !87
  %27 = load double, double* %4, align 8, !dbg !88
  %28 = fcmp ole double %27, 0.000000e+00, !dbg !90
  %29 = call i1 @fCmpInstHandler(double %27, double 0.000000e+00, i1 %28, i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913651968, i32 82, i32 8), !dbg !91
  br i1 %29, label %30, label %39, !dbg !91

; <label>:30:                                     ; preds = %2
  br label %31, !dbg !92, !llvm.loop !94

; <label>:31:                                     ; preds = %30
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !95
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !95
  store double 0x7FF8000000000000, double* %33, align 8, !dbg !95
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !95
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !95
  store double 0x7FF8000000000000, double* %35, align 8, !dbg !95
  br label %36, !dbg !95, !llvm.loop !98

; <label>:36:                                     ; preds = %31
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 83, i32 1), !dbg !100
  store i32 1, i32* %3, align 4, !dbg !100
  br label %240, !dbg !100
                                                  ; No predecessors!
  br label %38, !dbg !103

; <label>:38:                                     ; preds = %37
  br label %240, !dbg !105

; <label>:39:                                     ; preds = %2
  %40 = load double, double* %4, align 8, !dbg !106
  %41 = fcmp olt double %40, 0x1922D0E5604189, !dbg !108
  %42 = call i1 @fCmpInstHandler(double %40, double 0x1922D0E5604189, i1 %41, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913665904, i32 85, i32 13), !dbg !109
  br i1 %42, label %43, label %52, !dbg !109

; <label>:43:                                     ; preds = %39
  br label %44, !dbg !110, !llvm.loop !112

; <label>:44:                                     ; preds = %43
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !113
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !113
  store double 0x7FF0000000000000, double* %46, align 8, !dbg !113
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !113
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !113
  store double 0x7FF0000000000000, double* %48, align 8, !dbg !113
  br label %49, !dbg !113, !llvm.loop !116

; <label>:49:                                     ; preds = %44
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 86, i32 16), !dbg !118
  store i32 16, i32* %3, align 4, !dbg !118
  br label %240, !dbg !118
                                                  ; No predecessors!
  br label %51, !dbg !121

; <label>:51:                                     ; preds = %50
  br label %239, !dbg !123

; <label>:52:                                     ; preds = %39
  %53 = load double, double* %4, align 8, !dbg !124
  %54 = fcmp olt double %53, 0x3E60000000000000, !dbg !126
  %55 = call i1 @fCmpInstHandler(double %53, double 0x3E60000000000000, i1 %54, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913674912, i32 88, i32 13), !dbg !127
  br i1 %55, label %56, label %94, !dbg !127

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata double* %10, metadata !128, metadata !76), !dbg !130
  %57 = load double, double* %4, align 8, !dbg !131
  %58 = fmul double 5.000000e-01, %57, !dbg !132
  call void @fMulHandler(double 5.000000e-01, double %57, double %58, i64 0, i64 94568913677128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913677600, i32 89, i32 34), !dbg !133
  %59 = call double @log(double %58) #6, !dbg !133
  call void @callOneArgHandler(i32 12, double %58, double %59, i64 94568913677600, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913678736, i32 89, i32 27), !dbg !130
  store double %59, double* %10, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !134, metadata !76), !dbg !135
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !136, metadata !76), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %13, metadata !138, metadata !76), !dbg !139
  %60 = load double, double* %4, align 8, !dbg !140
  %61 = call i32 @gsl_sf_bessel_J1_e(double %60, %struct.gsl_sf_result_struct* %11), !dbg !141
  store i32 %61, i32* %13, align 4, !dbg !139
  %62 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @by1_cs, double -1.000000e+00, %struct.gsl_sf_result_struct* %12), !dbg !142
  %63 = load double, double* %10, align 8, !dbg !143
  %64 = fmul double 0x3FE45F306DC9C883, %63, !dbg !144
  call void @fMulHandler(double 0x3FE45F306DC9C883, double %63, double %64, i64 0, i64 94568913688072, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913688448, i32 94, i32 31), !dbg !145
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !145
  %66 = load double, double* %65, align 8, !dbg !145
  %67 = fmul double %64, %66, !dbg !146
  call void @fMulHandler(double %64, double %66, double %67, i64 94568913688448, i64 94568913689288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913690960, i32 94, i32 40), !dbg !147
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !147
  %69 = load double, double* %68, align 8, !dbg !147
  %70 = fadd double 5.000000e-01, %69, !dbg !148
  call void @fAddHandler(double 5.000000e-01, double %69, double %70, i64 0, i64 94568913692840, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913694544, i32 94, i32 56), !dbg !149
  %71 = load double, double* %4, align 8, !dbg !149
  %72 = fdiv double %70, %71, !dbg !150
  call void @fDivHandler(double %70, double %71, double %72, i64 94568913694544, i64 94568913694904, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913695312, i32 94, i32 64), !dbg !151
  %73 = fadd double %67, %72, !dbg !151
  call void @fAddHandler(double %67, double %72, double %73, i64 94568913690960, i64 94568913695312, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913695728, i32 94, i32 49), !dbg !152
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !152
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !153
  store double %73, double* %75, align 8, !dbg !154
  %76 = load double, double* %10, align 8, !dbg !155
  %77 = call double @fabs(double %76) #1, !dbg !156
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !157
  %79 = load double, double* %78, align 8, !dbg !157
  %80 = fmul double 0x3CB0000000000000, %79, !dbg !158
  call void @fMulHandler(double 0x3CB0000000000000, double %79, double %80, i64 0, i64 94568913699096, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913700832, i32 95, i32 56), !dbg !159
  %81 = call double @fabs(double %80) #1, !dbg !159
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !161
  %83 = load double, double* %82, align 8, !dbg !161
  %84 = fadd double %81, %83, !dbg !162
  call void @fAddHandler(double %81, double %83, double %84, i64 94568913701312, i64 94568913702216, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913703888, i32 95, i32 66), !dbg !163
  %85 = fmul double %77, %84, !dbg !163
  call void @fMulHandler(double %77, double %84, double %85, i64 94568913698160, i64 94568913703888, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913704304, i32 95, i32 32), !dbg !164
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !164
  %87 = load double, double* %86, align 8, !dbg !164
  %88 = load double, double* %4, align 8, !dbg !165
  %89 = fdiv double %87, %88, !dbg !166
  call void @fDivHandler(double %87, double %88, double %89, i64 94568913705144, i64 94568913706792, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913707200, i32 95, i32 83), !dbg !167
  %90 = fadd double %85, %89, !dbg !167
  call void @fAddHandler(double %85, double %89, double %90, i64 94568913704304, i64 94568913707200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913707616, i32 95, i32 76), !dbg !168
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !168
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 1, !dbg !169
  store double %90, double* %92, align 8, !dbg !170
  %93 = load i32, i32* %13, align 4, !dbg !171
  store i32 %93, i32* %3, align 4, !dbg !172
  br label %240, !dbg !172

; <label>:94:                                     ; preds = %52
  %95 = load double, double* %4, align 8, !dbg !173
  %96 = fcmp olt double %95, 4.000000e+00, !dbg !175
  %97 = call i1 @fCmpInstHandler(double %95, double 4.000000e+00, i1 %96, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913712144, i32 98, i32 13), !dbg !176
  br i1 %97, label %98, label %141, !dbg !176

; <label>:98:                                     ; preds = %94
  call void @llvm.dbg.declare(metadata double* %14, metadata !177, metadata !76), !dbg !179
  %99 = load double, double* %4, align 8, !dbg !180
  %100 = fmul double 5.000000e-01, %99, !dbg !181
  call void @fMulHandler(double 5.000000e-01, double %99, double %100, i64 0, i64 94568913714376, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913714784, i32 99, i32 34), !dbg !182
  %101 = call double @log(double %100) #6, !dbg !182
  call void @callOneArgHandler(i32 12, double %100, double %101, i64 94568913714784, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913715232, i32 99, i32 27), !dbg !179
  store double %101, double* %14, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata i32* %15, metadata !183, metadata !76), !dbg !184
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !185, metadata !76), !dbg !186
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !187, metadata !76), !dbg !188
  %102 = load double, double* %4, align 8, !dbg !189
  %103 = fmul double 1.250000e-01, %102, !dbg !190
  call void @fMulHandler(double 1.250000e-01, double %102, double %103, i64 0, i64 94568913720664, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913721136, i32 103, i32 31), !dbg !191
  %104 = load double, double* %4, align 8, !dbg !191
  %105 = fmul double %103, %104, !dbg !192
  call void @fMulHandler(double %103, double %104, double %105, i64 94568913721136, i64 94568913721496, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913721904, i32 103, i32 33), !dbg !193
  %106 = fsub double %105, 1.000000e+00, !dbg !193
  call void @fSubHandler(double %105, double 1.000000e+00, double %106, i64 94568913721904, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913722352, i32 103, i32 35), !dbg !194
  %107 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @by1_cs, double %106, %struct.gsl_sf_result_struct* %17), !dbg !194
  %108 = load double, double* %4, align 8, !dbg !195
  %109 = call i32 @gsl_sf_bessel_J1_e(double %108, %struct.gsl_sf_result_struct* %16), !dbg !196
  store i32 %109, i32* %15, align 4, !dbg !197
  %110 = load double, double* %14, align 8, !dbg !198
  %111 = fmul double 0x3FE45F306DC9C883, %110, !dbg !199
  call void @fMulHandler(double 0x3FE45F306DC9C883, double %110, double %111, i64 0, i64 94568913724600, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913725008, i32 105, i32 31), !dbg !200
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !200
  %113 = load double, double* %112, align 8, !dbg !200
  %114 = fmul double %111, %113, !dbg !201
  call void @fMulHandler(double %111, double %113, double %114, i64 94568913725008, i64 94568913725848, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913727520, i32 105, i32 40), !dbg !202
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !202
  %116 = load double, double* %115, align 8, !dbg !202
  %117 = fadd double 5.000000e-01, %116, !dbg !203
  call void @fAddHandler(double 5.000000e-01, double %116, double %117, i64 0, i64 94568913728360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913730064, i32 105, i32 56), !dbg !204
  %118 = load double, double* %4, align 8, !dbg !204
  %119 = fdiv double %117, %118, !dbg !205
  call void @fDivHandler(double %117, double %118, double %119, i64 94568913730064, i64 94568913730424, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913730832, i32 105, i32 64), !dbg !206
  %120 = fadd double %114, %119, !dbg !206
  call void @fAddHandler(double %114, double %119, double %120, i64 94568913727520, i64 94568913730832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913731248, i32 105, i32 49), !dbg !207
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !207
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 0, !dbg !208
  store double %120, double* %122, align 8, !dbg !209
  %123 = load double, double* %14, align 8, !dbg !210
  %124 = call double @fabs(double %123) #1, !dbg !211
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !212
  %126 = load double, double* %125, align 8, !dbg !212
  %127 = fmul double 0x3CB0000000000000, %126, !dbg !213
  call void @fMulHandler(double 0x3CB0000000000000, double %126, double %127, i64 0, i64 94568913734264, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913735936, i32 106, i32 56), !dbg !214
  %128 = call double @fabs(double %127) #1, !dbg !214
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !216
  %130 = load double, double* %129, align 8, !dbg !216
  %131 = fadd double %128, %130, !dbg !217
  call void @fAddHandler(double %128, double %130, double %131, i64 94568913736416, i64 94568913737320, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913738992, i32 106, i32 66), !dbg !218
  %132 = fmul double %124, %131, !dbg !218
  call void @fMulHandler(double %124, double %131, double %132, i64 94568913733360, i64 94568913738992, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913739408, i32 106, i32 32), !dbg !219
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !219
  %134 = load double, double* %133, align 8, !dbg !219
  %135 = load double, double* %4, align 8, !dbg !220
  %136 = fdiv double %134, %135, !dbg !221
  call void @fDivHandler(double %134, double %135, double %136, i64 94568913742312, i64 94568913743960, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913744368, i32 106, i32 83), !dbg !222
  %137 = fadd double %132, %136, !dbg !222
  call void @fAddHandler(double %132, double %136, double %137, i64 94568913739408, i64 94568913744368, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913744784, i32 106, i32 76), !dbg !223
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !223
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 1, !dbg !224
  store double %137, double* %139, align 8, !dbg !225
  %140 = load i32, i32* %15, align 4, !dbg !226
  store i32 %140, i32* %3, align 4, !dbg !227
  br label %240, !dbg !227

; <label>:141:                                    ; preds = %94
  %142 = load double, double* %4, align 8, !dbg !228
  %143 = fcmp olt double %142, 0x4330000000000000, !dbg !230
  %144 = call i1 @fCmpInstHandler(double %142, double 0x4330000000000000, i1 %143, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913749216, i32 109, i32 13), !dbg !231
  br i1 %144, label %145, label %227, !dbg !231

; <label>:145:                                    ; preds = %141
  call void @llvm.dbg.declare(metadata double* %18, metadata !232, metadata !76), !dbg !234
  %146 = load double, double* %4, align 8, !dbg !235
  %147 = load double, double* %4, align 8, !dbg !236
  %148 = fmul double %146, %147, !dbg !237
  call void @fMulHandler(double %146, double %147, double %148, i64 94568913751384, i64 94568913751736, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913752144, i32 110, i32 29), !dbg !238
  %149 = fdiv double 3.200000e+01, %148, !dbg !238
  call void @fDivHandler(double 3.200000e+01, double %148, double %149, i64 0, i64 94568913752144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913752656, i32 110, i32 26), !dbg !239
  %150 = fsub double %149, 1.000000e+00, !dbg !239
  call void @fSubHandler(double %149, double 1.000000e+00, double %150, i64 94568913752656, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913753072, i32 110, i32 33), !dbg !234
  store double %150, double* %18, align 8, !dbg !234
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !240, metadata !76), !dbg !241
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !242, metadata !76), !dbg !243
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !244, metadata !76), !dbg !245
  call void @llvm.dbg.declare(metadata i32* %22, metadata !246, metadata !76), !dbg !248
  %151 = load double, double* %18, align 8, !dbg !249
  %152 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bm1_cs, double %151, %struct.gsl_sf_result_struct* %19), !dbg !250
  store i32 %152, i32* %22, align 4, !dbg !248
  call void @llvm.dbg.declare(metadata i32* %23, metadata !251, metadata !76), !dbg !252
  %153 = load double, double* %18, align 8, !dbg !253
  %154 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @_gsl_sf_bessel_amp_phase_bth1_cs, double %153, %struct.gsl_sf_result_struct* %20), !dbg !254
  store i32 %154, i32* %23, align 4, !dbg !252
  call void @llvm.dbg.declare(metadata i32* %24, metadata !255, metadata !76), !dbg !256
  %155 = load double, double* %4, align 8, !dbg !257
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !258
  %157 = load double, double* %156, align 8, !dbg !258
  %158 = load double, double* %4, align 8, !dbg !259
  %159 = fdiv double %157, %158, !dbg !260
  call void @fDivHandler(double %157, double %158, double %159, i64 94568913767720, i64 94568913769368, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913769776, i32 116, i32 58), !dbg !261
  %160 = call i32 @gsl_sf_bessel_cos_pi4_e(double %155, double %159, %struct.gsl_sf_result_struct* %21), !dbg !261
  store i32 %160, i32* %24, align 4, !dbg !256
  call void @llvm.dbg.declare(metadata double* %25, metadata !262, metadata !76), !dbg !263
  %161 = load double, double* %4, align 8, !dbg !264
  %162 = call double @sqrt(double %161) #6, !dbg !265
  call void @callOneArgHandler(i32 14, double %161, double %162, i64 94568913773928, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913774640, i32 117, i32 26), !dbg !263
  store double %162, double* %25, align 8, !dbg !263
  call void @llvm.dbg.declare(metadata double* %26, metadata !266, metadata !76), !dbg !267
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !268
  %164 = load double, double* %163, align 8, !dbg !268
  %165 = fadd double 7.500000e-01, %164, !dbg !269
  call void @fAddHandler(double 7.500000e-01, double %164, double %165, i64 0, i64 94568913778392, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913780160, i32 118, i32 32), !dbg !270
  %166 = load double, double* %25, align 8, !dbg !270
  %167 = fdiv double %165, %166, !dbg !271
  call void @fDivHandler(double %165, double %166, double %167, i64 94568913780160, i64 94568913780520, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913780928, i32 118, i32 42), !dbg !267
  store double %167, double* %26, align 8, !dbg !267
  %168 = load double, double* %26, align 8, !dbg !272
  %169 = fsub double -0.000000e+00, %168, !dbg !273
  call void @fSubHandler(double -0.000000e+00, double %168, double %169, i64 0, i64 94568913783000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913783472, i32 119, i32 20), !dbg !274
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !274
  %171 = load double, double* %170, align 8, !dbg !274
  %172 = fmul double %169, %171, !dbg !275
  call void @fMulHandler(double %169, double %171, double %172, i64 94568913783472, i64 94568913784312, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913785984, i32 119, i32 26), !dbg !276
  %173 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !276
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %173, i32 0, i32 0, !dbg !277
  store double %172, double* %174, align 8, !dbg !278
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !279
  %176 = load double, double* %175, align 8, !dbg !279
  %177 = call double @fabs(double %176) #1, !dbg !280
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !281
  %179 = load double, double* %178, align 8, !dbg !281
  %180 = fmul double %177, %179, !dbg !282
  call void @fMulHandler(double %177, double %179, double %180, i64 94568913789808, i64 94568913790712, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913792384, i32 120, i32 33), !dbg !283
  %181 = load double, double* %25, align 8, !dbg !283
  %182 = fdiv double %180, %181, !dbg !284
  call void @fDivHandler(double %180, double %181, double %182, i64 94568913792384, i64 94568913792776, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913793184, i32 120, i32 41), !dbg !285
  %183 = load double, double* %26, align 8, !dbg !285
  %184 = call double @fabs(double %183) #1, !dbg !286
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !288
  %186 = load double, double* %185, align 8, !dbg !288
  %187 = fmul double %184, %186, !dbg !289
  call void @fMulHandler(double %184, double %186, double %187, i64 94568913794048, i64 94568913794952, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913796624, i32 120, i32 61), !dbg !290
  %188 = fadd double %182, %187, !dbg !290
  call void @fAddHandler(double %182, double %187, double %188, i64 94568913793184, i64 94568913796624, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913797040, i32 120, i32 48), !dbg !291
  %189 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !291
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %189, i32 0, i32 1, !dbg !292
  store double %188, double* %190, align 8, !dbg !293
  %191 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !294
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %191, i32 0, i32 0, !dbg !295
  %193 = load double, double* %192, align 8, !dbg !295
  %194 = call double @fabs(double %193) #1, !dbg !296
  %195 = fmul double 0x3CB0000000000000, %194, !dbg !297
  call void @fMulHandler(double 0x3CB0000000000000, double %194, double %195, i64 0, i64 94568913801248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913801728, i32 121, i32 36), !dbg !298
  %196 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !298
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %196, i32 0, i32 1, !dbg !299
  %198 = load double, double* %197, align 8, !dbg !300
  %199 = fadd double %198, %195, !dbg !300
  call void @fAddHandler(double %198, double %195, double %199, i64 94568913802952, i64 94568913801728, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913803360, i32 121, i32 17), !dbg !300
  store double %199, double* %197, align 8, !dbg !300
  %200 = load i32, i32* %22, align 4, !dbg !301
  %201 = icmp ne i32 %200, 0, !dbg !301
  %202 = sext i32 %200 to i64, !dbg !301
  %203 = call i1 @iCmpInstHandler(i64 %202, i64 0, i1 %201, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913805552, i32 122, i32 12), !dbg !301
  br i1 %203, label %204, label %206, !dbg !301

; <label>:204:                                    ; preds = %145
  %205 = load i32, i32* %22, align 4, !dbg !302
  br label %225, !dbg !302

; <label>:206:                                    ; preds = %145
  %207 = load i32, i32* %23, align 4, !dbg !303
  %208 = icmp ne i32 %207, 0, !dbg !303
  %209 = sext i32 %207 to i64, !dbg !303
  %210 = call i1 @iCmpInstHandler(i64 %209, i64 0, i1 %208, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913810096, i32 122, i32 12), !dbg !303
  br i1 %210, label %211, label %213, !dbg !303

; <label>:211:                                    ; preds = %206
  %212 = load i32, i32* %23, align 4, !dbg !305
  br label %223, !dbg !305

; <label>:213:                                    ; preds = %206
  %214 = load i32, i32* %24, align 4, !dbg !307
  %215 = icmp ne i32 %214, 0, !dbg !307
  %216 = sext i32 %214 to i64, !dbg !307
  %217 = call i1 @iCmpInstHandler(i64 %216, i64 0, i1 %215, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94568913814640, i32 122, i32 12), !dbg !307
  br i1 %217, label %218, label %220, !dbg !307

; <label>:218:                                    ; preds = %213
  %219 = load i32, i32* %24, align 4, !dbg !309
  br label %221, !dbg !309

; <label>:220:                                    ; preds = %213
  br label %221, !dbg !311

; <label>:221:                                    ; preds = %220, %218
  %222 = phi i32 [ %219, %218 ], [ 0, %220 ], !dbg !313
  br label %223, !dbg !313

; <label>:223:                                    ; preds = %221, %211
  %224 = phi i32 [ %212, %211 ], [ %222, %221 ], !dbg !315
  br label %225, !dbg !315

; <label>:225:                                    ; preds = %223, %204
  %226 = phi i32 [ %205, %204 ], [ %224, %223 ], !dbg !317
  store i32 %226, i32* %3, align 4, !dbg !319
  br label %240, !dbg !319

; <label>:227:                                    ; preds = %141
  br label %228, !dbg !320, !llvm.loop !322

; <label>:228:                                    ; preds = %227
  %229 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !323
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %229, i32 0, i32 0, !dbg !323
  store double 0.000000e+00, double* %230, align 8, !dbg !323
  %231 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !323
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %231, i32 0, i32 1, !dbg !323
  store double 0x10000000000000, double* %232, align 8, !dbg !323
  br label %233, !dbg !323, !llvm.loop !326

; <label>:233:                                    ; preds = %228
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 125, i32 15), !dbg !328
  store i32 15, i32* %3, align 4, !dbg !328
  br label %240, !dbg !328
                                                  ; No predecessors!
  br label %235, !dbg !331

; <label>:235:                                    ; preds = %234
  br label %236

; <label>:236:                                    ; preds = %235
  br label %237

; <label>:237:                                    ; preds = %236
  br label %238

; <label>:238:                                    ; preds = %237
  br label %239

; <label>:239:                                    ; preds = %238, %51
  br label %240

; <label>:240:                                    ; preds = %239, %233, %225, %98, %56, %49, %38, %36
  %241 = load i32, i32* %3, align 4, !dbg !333
  ret i32 %241, !dbg !333
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare double @log(double) #3

declare i32 @gsl_sf_bessel_J1_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !334 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !340, metadata !76), !dbg !341
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !342, metadata !76), !dbg !343
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !344, metadata !76), !dbg !345
  call void @llvm.dbg.declare(metadata i32* %7, metadata !346, metadata !76), !dbg !347
  call void @llvm.dbg.declare(metadata double* %8, metadata !348, metadata !76), !dbg !349
  store double 0.000000e+00, double* %8, align 8, !dbg !349
  call void @llvm.dbg.declare(metadata double* %9, metadata !350, metadata !76), !dbg !351
  store double 0.000000e+00, double* %9, align 8, !dbg !351
  call void @llvm.dbg.declare(metadata double* %10, metadata !352, metadata !76), !dbg !353
  %15 = load double, double* %5, align 8, !dbg !354
  %16 = fmul double 2.000000e+00, %15, !dbg !355
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94568913687448, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913850160, i32 11, i32 19), !dbg !356
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !356
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !357
  %19 = load double, double* %18, align 8, !dbg !357
  %20 = fsub double %16, %19, !dbg !358
  call void @fSubHandler(double %16, double %19, double %20, i64 94568913850160, i64 94568913678616, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913852896, i32 11, i32 22), !dbg !359
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !359
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !360
  %23 = load double, double* %22, align 8, !dbg !360
  %24 = fsub double %20, %23, !dbg !361
  call void @fSubHandler(double %20, double %23, double %24, i64 94568913852896, i64 94568913619384, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913855664, i32 11, i32 30), !dbg !362
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !362
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !363
  %27 = load double, double* %26, align 8, !dbg !363
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !364
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !365
  %30 = load double, double* %29, align 8, !dbg !365
  %31 = fsub double %27, %30, !dbg !366
  call void @fSubHandler(double %27, double %30, double %31, i64 94568913856888, i64 94568913859368, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913861040, i32 11, i32 48), !dbg !367
  %32 = fdiv double %24, %31, !dbg !367
  call void @fDivHandler(double %24, double %31, double %32, i64 94568913855664, i64 94568913861040, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913861456, i32 11, i32 39), !dbg !353
  store double %32, double* %10, align 8, !dbg !353
  call void @llvm.dbg.declare(metadata double* %11, metadata !368, metadata !76), !dbg !369
  %33 = load double, double* %10, align 8, !dbg !370
  %34 = fmul double 2.000000e+00, %33, !dbg !371
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94568913864504, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913864912, i32 12, i32 19), !dbg !369
  store double %34, double* %11, align 8, !dbg !369
  call void @llvm.dbg.declare(metadata double* %12, metadata !372, metadata !76), !dbg !373
  store double 0.000000e+00, double* %12, align 8, !dbg !373
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !374
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !376
  %37 = load i32, i32* %36, align 8, !dbg !376
  store i32 %37, i32* %7, align 4, !dbg !377
  br label %38, !dbg !378

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !379
  %40 = icmp sge i32 %39, 1, !dbg !382
  %41 = sext i32 %39 to i64, !dbg !383
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913873488, i32 16, i32 23), !dbg !383
  br i1 %42, label %43, label %80, !dbg !383

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !384, metadata !76), !dbg !386
  %44 = load double, double* %8, align 8, !dbg !387
  store double %44, double* %13, align 8, !dbg !386
  %45 = load double, double* %11, align 8, !dbg !388
  %46 = load double, double* %8, align 8, !dbg !389
  %47 = fmul double %45, %46, !dbg !390
  call void @fMulHandler(double %45, double %46, double %47, i64 94568913877688, i64 94568913878072, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913878480, i32 18, i32 11), !dbg !391
  %48 = load double, double* %9, align 8, !dbg !391
  %49 = fsub double %47, %48, !dbg !392
  call void @fSubHandler(double %47, double %48, double %49, i64 94568913878480, i64 94568913878872, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913879280, i32 18, i32 14), !dbg !393
  %50 = load i32, i32* %7, align 4, !dbg !393
  %51 = sext i32 %50 to i64, !dbg !394
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !394
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !395
  %54 = load double*, double** %53, align 8, !dbg !395
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !394
  %56 = load double, double* %55, align 8, !dbg !394
  %57 = fadd double %49, %56, !dbg !396
  call void @fAddHandler(double %49, double %56, double %57, i64 94568913879280, i64 94568913884328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913884448, i32 18, i32 19), !dbg !397
  store double %57, double* %8, align 8, !dbg !397
  %58 = load double, double* %11, align 8, !dbg !398
  %59 = load double, double* %13, align 8, !dbg !399
  %60 = fmul double %58, %59, !dbg !400
  call void @fMulHandler(double %58, double %59, double %60, i64 94568913885256, i64 94568913885640, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913886048, i32 19, i32 17), !dbg !401
  %61 = call double @fabs(double %60) #1, !dbg !401
  %62 = load double, double* %9, align 8, !dbg !402
  %63 = call double @fabs(double %62) #1, !dbg !403
  %64 = fadd double %61, %63, !dbg !405
  call void @fAddHandler(double %61, double %63, double %64, i64 94568913886528, i64 94568913887456, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913887936, i32 19, i32 24), !dbg !406
  %65 = load i32, i32* %7, align 4, !dbg !406
  %66 = sext i32 %65 to i64, !dbg !407
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !407
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !408
  %69 = load double*, double** %68, align 8, !dbg !408
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !407
  %71 = load double, double* %70, align 8, !dbg !407
  %72 = call double @fabs(double %71) #1, !dbg !409
  %73 = fadd double %64, %72, !dbg !411
  call void @fAddHandler(double %64, double %72, double %73, i64 94568913887936, i64 94568913893168, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913893648, i32 19, i32 35), !dbg !412
  %74 = load double, double* %12, align 8, !dbg !412
  %75 = fadd double %74, %73, !dbg !412
  call void @fAddHandler(double %74, double %73, double %75, i64 94568913894040, i64 94568913893648, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913894448, i32 19, i32 7), !dbg !412
  store double %75, double* %12, align 8, !dbg !412
  %76 = load double, double* %13, align 8, !dbg !413
  store double %76, double* %9, align 8, !dbg !414
  br label %77, !dbg !415

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !416
  %79 = add nsw i32 %78, -1, !dbg !416
  store i32 %79, i32* %7, align 4, !dbg !416
  br label %38, !dbg !418, !llvm.loop !419

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !421, metadata !76), !dbg !423
  %81 = load double, double* %8, align 8, !dbg !424
  store double %81, double* %14, align 8, !dbg !423
  %82 = load double, double* %10, align 8, !dbg !425
  %83 = load double, double* %8, align 8, !dbg !426
  %84 = fmul double %82, %83, !dbg !427
  call void @fMulHandler(double %82, double %83, double %84, i64 94568913903512, i64 94568913903896, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913904304, i32 25, i32 10), !dbg !428
  %85 = load double, double* %9, align 8, !dbg !428
  %86 = fsub double %84, %85, !dbg !429
  call void @fSubHandler(double %84, double %85, double %86, i64 94568913904304, i64 94568913904696, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913905104, i32 25, i32 13), !dbg !430
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !430
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !431
  %89 = load double*, double** %88, align 8, !dbg !431
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !430
  %91 = load double, double* %90, align 8, !dbg !430
  %92 = fmul double 5.000000e-01, %91, !dbg !432
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94568913909736, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913909888, i32 25, i32 24), !dbg !433
  %93 = fadd double %86, %92, !dbg !433
  call void @fAddHandler(double %86, double %92, double %93, i64 94568913905104, i64 94568913909888, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913910272, i32 25, i32 18), !dbg !434
  store double %93, double* %8, align 8, !dbg !434
  %94 = load double, double* %10, align 8, !dbg !435
  %95 = load double, double* %14, align 8, !dbg !436
  %96 = fmul double %94, %95, !dbg !437
  call void @fMulHandler(double %94, double %95, double %96, i64 94568913911080, i64 94568913911464, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913911872, i32 26, i32 16), !dbg !438
  %97 = call double @fabs(double %96) #1, !dbg !438
  %98 = load double, double* %9, align 8, !dbg !439
  %99 = call double @fabs(double %98) #1, !dbg !440
  %100 = fadd double %97, %99, !dbg !442
  call void @fAddHandler(double %97, double %99, double %100, i64 94568913912352, i64 94568913913280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913913760, i32 26, i32 23), !dbg !443
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !443
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !444
  %103 = load double*, double** %102, align 8, !dbg !444
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !443
  %105 = load double, double* %104, align 8, !dbg !443
  %106 = call double @fabs(double %105) #1, !dbg !445
  %107 = fmul double 5.000000e-01, %106, !dbg !447
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94568913918512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913919024, i32 26, i32 40), !dbg !448
  %108 = fadd double %100, %107, !dbg !448
  call void @fAddHandler(double %100, double %107, double %108, i64 94568913913760, i64 94568913919024, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913919408, i32 26, i32 34), !dbg !449
  %109 = load double, double* %12, align 8, !dbg !449
  %110 = fadd double %109, %108, !dbg !449
  call void @fAddHandler(double %109, double %108, double %110, i64 94568913919800, i64 94568913919408, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913920208, i32 26, i32 7), !dbg !449
  store double %110, double* %12, align 8, !dbg !449
  %111 = load double, double* %8, align 8, !dbg !450
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !451
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !452
  store double %111, double* %113, align 8, !dbg !453
  %114 = load double, double* %12, align 8, !dbg !454
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !455
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94568913923624, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913924032, i32 30, i32 33), !dbg !456
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !456
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !457
  %118 = load i32, i32* %117, align 8, !dbg !457
  %119 = sext i32 %118 to i64, !dbg !458
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !458
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !459
  %122 = load double*, double** %121, align 8, !dbg !459
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !458
  %124 = load double, double* %123, align 8, !dbg !458
  %125 = call double @fabs(double %124) #1, !dbg !460
  %126 = fadd double %115, %125, !dbg !461
  call void @fAddHandler(double %115, double %125, double %126, i64 94568913924032, i64 94568913931360, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94568913931840, i32 30, i32 37), !dbg !462
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !462
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !463
  store double %126, double* %128, align 8, !dbg !464
  ret i32 0, !dbg !465
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

declare i32 @gsl_sf_bessel_cos_pi4_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Y1(double) #0 !dbg !466 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !469, metadata !76), !dbg !470
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !471, metadata !76), !dbg !472
  call void @llvm.dbg.declare(metadata i32* %5, metadata !473, metadata !76), !dbg !472
  %6 = load double, double* %3, align 8, !dbg !472
  %7 = call i32 @gsl_sf_bessel_Y1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !472
  store i32 %7, i32* %5, align 4, !dbg !472
  %8 = load i32, i32* %5, align 4, !dbg !474
  %9 = icmp ne i32 %8, 0, !dbg !474
  %10 = sext i32 %8 to i64, !dbg !472
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94568913941344, i32 136, i32 3), !dbg !472
  br i1 %11, label %12, label %18, !dbg !472

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !476, !llvm.loop !479

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !481
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 136, i32 %14), !dbg !481
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !481
  %16 = load double, double* %15, align 8, !dbg !481
  store double %16, double* %2, align 8, !dbg !481
  br label %21, !dbg !481
                                                  ; No predecessors!
  br label %18, !dbg !484

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !486
  %20 = load double, double* %19, align 8, !dbg !486
  store double %20, double* %2, align 8, !dbg !486
  br label %21, !dbg !486

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !488
  ret double %22, !dbg !488
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
!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "bessel_Y1.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = distinct !DIGlobalVariable(name: "by1_cs", scope: !0, file: !1, line: 63, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @by1_cs)
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
!55 = distinct !DIGlobalVariable(name: "by1_data", scope: !0, file: !1, line: 47, type: !56, isLocal: true, isDefinition: true, variable: [14 x double]* @by1_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 896, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 14)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "gsl_sf_bessel_Y1_e", scope: !1, file: !1, line: 73, type: !64, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
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
!80 = !DILocalVariable(name: "two_over_pi", scope: !63, file: !1, line: 75, type: !66)
!81 = !DILocation(line: 75, column: 16, scope: !63)
!82 = !DILocalVariable(name: "xmin", scope: !63, file: !1, line: 76, type: !66)
!83 = !DILocation(line: 76, column: 16, scope: !63)
!84 = !DILocalVariable(name: "x_small", scope: !63, file: !1, line: 77, type: !66)
!85 = !DILocation(line: 77, column: 16, scope: !63)
!86 = !DILocalVariable(name: "xmax", scope: !63, file: !1, line: 78, type: !66)
!87 = !DILocation(line: 78, column: 16, scope: !63)
!88 = !DILocation(line: 82, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !63, file: !1, line: 82, column: 6)
!90 = !DILocation(line: 82, column: 8, scope: !89)
!91 = !DILocation(line: 82, column: 6, scope: !63)
!92 = !DILocation(line: 83, column: 5, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 82, column: 16)
!94 = distinct !{!94, !92}
!95 = !DILocation(line: 83, column: 5, scope: !96)
!96 = !DILexicalBlockFile(scope: !97, file: !1, discriminator: 1)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 83, column: 5)
!98 = distinct !{!98, !99}
!99 = !DILocation(line: 83, column: 5, scope: !97)
!100 = !DILocation(line: 83, column: 5, scope: !101)
!101 = !DILexicalBlockFile(scope: !102, file: !1, discriminator: 2)
!102 = distinct !DILexicalBlock(scope: !97, file: !1, line: 83, column: 5)
!103 = !DILocation(line: 83, column: 5, scope: !104)
!104 = !DILexicalBlockFile(scope: !97, file: !1, discriminator: 3)
!105 = !DILocation(line: 84, column: 3, scope: !93)
!106 = !DILocation(line: 85, column: 11, scope: !107)
!107 = distinct !DILexicalBlock(scope: !89, file: !1, line: 85, column: 11)
!108 = !DILocation(line: 85, column: 13, scope: !107)
!109 = !DILocation(line: 85, column: 11, scope: !89)
!110 = !DILocation(line: 86, column: 5, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 85, column: 21)
!112 = distinct !{!112, !110}
!113 = !DILocation(line: 86, column: 5, scope: !114)
!114 = !DILexicalBlockFile(scope: !115, file: !1, discriminator: 1)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 86, column: 5)
!116 = distinct !{!116, !117}
!117 = !DILocation(line: 86, column: 5, scope: !115)
!118 = !DILocation(line: 86, column: 5, scope: !119)
!119 = !DILexicalBlockFile(scope: !120, file: !1, discriminator: 2)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 86, column: 5)
!121 = !DILocation(line: 86, column: 5, scope: !122)
!122 = !DILexicalBlockFile(scope: !115, file: !1, discriminator: 3)
!123 = !DILocation(line: 87, column: 3, scope: !111)
!124 = !DILocation(line: 88, column: 11, scope: !125)
!125 = distinct !DILexicalBlock(scope: !107, file: !1, line: 88, column: 11)
!126 = !DILocation(line: 88, column: 13, scope: !125)
!127 = !DILocation(line: 88, column: 11, scope: !107)
!128 = !DILocalVariable(name: "lnterm", scope: !129, file: !1, line: 89, type: !66)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 88, column: 24)
!130 = !DILocation(line: 89, column: 18, scope: !129)
!131 = !DILocation(line: 89, column: 35, scope: !129)
!132 = !DILocation(line: 89, column: 34, scope: !129)
!133 = !DILocation(line: 89, column: 27, scope: !129)
!134 = !DILocalVariable(name: "J1", scope: !129, file: !1, line: 90, type: !68)
!135 = !DILocation(line: 90, column: 19, scope: !129)
!136 = !DILocalVariable(name: "c", scope: !129, file: !1, line: 91, type: !68)
!137 = !DILocation(line: 91, column: 19, scope: !129)
!138 = !DILocalVariable(name: "status", scope: !129, file: !1, line: 92, type: !51)
!139 = !DILocation(line: 92, column: 9, scope: !129)
!140 = !DILocation(line: 92, column: 37, scope: !129)
!141 = !DILocation(line: 92, column: 18, scope: !129)
!142 = !DILocation(line: 93, column: 5, scope: !129)
!143 = !DILocation(line: 94, column: 33, scope: !129)
!144 = !DILocation(line: 94, column: 31, scope: !129)
!145 = !DILocation(line: 94, column: 45, scope: !129)
!146 = !DILocation(line: 94, column: 40, scope: !129)
!147 = !DILocation(line: 94, column: 60, scope: !129)
!148 = !DILocation(line: 94, column: 56, scope: !129)
!149 = !DILocation(line: 94, column: 65, scope: !129)
!150 = !DILocation(line: 94, column: 64, scope: !129)
!151 = !DILocation(line: 94, column: 49, scope: !129)
!152 = !DILocation(line: 94, column: 5, scope: !129)
!153 = !DILocation(line: 94, column: 13, scope: !129)
!154 = !DILocation(line: 94, column: 17, scope: !129)
!155 = !DILocation(line: 95, column: 24, scope: !129)
!156 = !DILocation(line: 95, column: 19, scope: !129)
!157 = !DILocation(line: 95, column: 61, scope: !129)
!158 = !DILocation(line: 95, column: 56, scope: !129)
!159 = !DILocation(line: 95, column: 35, scope: !160)
!160 = !DILexicalBlockFile(scope: !129, file: !1, discriminator: 1)
!161 = !DILocation(line: 95, column: 71, scope: !129)
!162 = !DILocation(line: 95, column: 66, scope: !129)
!163 = !DILocation(line: 95, column: 32, scope: !129)
!164 = !DILocation(line: 95, column: 80, scope: !129)
!165 = !DILocation(line: 95, column: 84, scope: !129)
!166 = !DILocation(line: 95, column: 83, scope: !129)
!167 = !DILocation(line: 95, column: 76, scope: !129)
!168 = !DILocation(line: 95, column: 5, scope: !129)
!169 = !DILocation(line: 95, column: 13, scope: !129)
!170 = !DILocation(line: 95, column: 17, scope: !129)
!171 = !DILocation(line: 96, column: 12, scope: !129)
!172 = !DILocation(line: 96, column: 5, scope: !129)
!173 = !DILocation(line: 98, column: 11, scope: !174)
!174 = distinct !DILexicalBlock(scope: !125, file: !1, line: 98, column: 11)
!175 = !DILocation(line: 98, column: 13, scope: !174)
!176 = !DILocation(line: 98, column: 11, scope: !125)
!177 = !DILocalVariable(name: "lnterm", scope: !178, file: !1, line: 99, type: !66)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 98, column: 20)
!179 = !DILocation(line: 99, column: 18, scope: !178)
!180 = !DILocation(line: 99, column: 35, scope: !178)
!181 = !DILocation(line: 99, column: 34, scope: !178)
!182 = !DILocation(line: 99, column: 27, scope: !178)
!183 = !DILocalVariable(name: "status", scope: !178, file: !1, line: 100, type: !51)
!184 = !DILocation(line: 100, column: 9, scope: !178)
!185 = !DILocalVariable(name: "J1", scope: !178, file: !1, line: 101, type: !68)
!186 = !DILocation(line: 101, column: 19, scope: !178)
!187 = !DILocalVariable(name: "c", scope: !178, file: !1, line: 102, type: !68)
!188 = !DILocation(line: 102, column: 19, scope: !178)
!189 = !DILocation(line: 103, column: 32, scope: !178)
!190 = !DILocation(line: 103, column: 31, scope: !178)
!191 = !DILocation(line: 103, column: 34, scope: !178)
!192 = !DILocation(line: 103, column: 33, scope: !178)
!193 = !DILocation(line: 103, column: 35, scope: !178)
!194 = !DILocation(line: 103, column: 5, scope: !178)
!195 = !DILocation(line: 104, column: 33, scope: !178)
!196 = !DILocation(line: 104, column: 14, scope: !178)
!197 = !DILocation(line: 104, column: 12, scope: !178)
!198 = !DILocation(line: 105, column: 33, scope: !178)
!199 = !DILocation(line: 105, column: 31, scope: !178)
!200 = !DILocation(line: 105, column: 45, scope: !178)
!201 = !DILocation(line: 105, column: 40, scope: !178)
!202 = !DILocation(line: 105, column: 60, scope: !178)
!203 = !DILocation(line: 105, column: 56, scope: !178)
!204 = !DILocation(line: 105, column: 65, scope: !178)
!205 = !DILocation(line: 105, column: 64, scope: !178)
!206 = !DILocation(line: 105, column: 49, scope: !178)
!207 = !DILocation(line: 105, column: 5, scope: !178)
!208 = !DILocation(line: 105, column: 13, scope: !178)
!209 = !DILocation(line: 105, column: 17, scope: !178)
!210 = !DILocation(line: 106, column: 24, scope: !178)
!211 = !DILocation(line: 106, column: 19, scope: !178)
!212 = !DILocation(line: 106, column: 61, scope: !178)
!213 = !DILocation(line: 106, column: 56, scope: !178)
!214 = !DILocation(line: 106, column: 35, scope: !215)
!215 = !DILexicalBlockFile(scope: !178, file: !1, discriminator: 1)
!216 = !DILocation(line: 106, column: 71, scope: !178)
!217 = !DILocation(line: 106, column: 66, scope: !178)
!218 = !DILocation(line: 106, column: 32, scope: !178)
!219 = !DILocation(line: 106, column: 80, scope: !178)
!220 = !DILocation(line: 106, column: 84, scope: !178)
!221 = !DILocation(line: 106, column: 83, scope: !178)
!222 = !DILocation(line: 106, column: 76, scope: !178)
!223 = !DILocation(line: 106, column: 5, scope: !178)
!224 = !DILocation(line: 106, column: 13, scope: !178)
!225 = !DILocation(line: 106, column: 17, scope: !178)
!226 = !DILocation(line: 107, column: 12, scope: !178)
!227 = !DILocation(line: 107, column: 5, scope: !178)
!228 = !DILocation(line: 109, column: 11, scope: !229)
!229 = distinct !DILexicalBlock(scope: !174, file: !1, line: 109, column: 11)
!230 = !DILocation(line: 109, column: 13, scope: !229)
!231 = !DILocation(line: 109, column: 11, scope: !174)
!232 = !DILocalVariable(name: "z", scope: !233, file: !1, line: 110, type: !66)
!233 = distinct !DILexicalBlock(scope: !229, file: !1, line: 109, column: 21)
!234 = !DILocation(line: 110, column: 18, scope: !233)
!235 = !DILocation(line: 110, column: 28, scope: !233)
!236 = !DILocation(line: 110, column: 30, scope: !233)
!237 = !DILocation(line: 110, column: 29, scope: !233)
!238 = !DILocation(line: 110, column: 26, scope: !233)
!239 = !DILocation(line: 110, column: 33, scope: !233)
!240 = !DILocalVariable(name: "ca", scope: !233, file: !1, line: 111, type: !68)
!241 = !DILocation(line: 111, column: 19, scope: !233)
!242 = !DILocalVariable(name: "ct", scope: !233, file: !1, line: 112, type: !68)
!243 = !DILocation(line: 112, column: 19, scope: !233)
!244 = !DILocalVariable(name: "cp", scope: !233, file: !1, line: 113, type: !68)
!245 = !DILocation(line: 113, column: 19, scope: !233)
!246 = !DILocalVariable(name: "stat_ca", scope: !233, file: !1, line: 114, type: !247)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!248 = !DILocation(line: 114, column: 15, scope: !233)
!249 = !DILocation(line: 114, column: 72, scope: !233)
!250 = !DILocation(line: 114, column: 25, scope: !233)
!251 = !DILocalVariable(name: "stat_ct", scope: !233, file: !1, line: 115, type: !247)
!252 = !DILocation(line: 115, column: 15, scope: !233)
!253 = !DILocation(line: 115, column: 72, scope: !233)
!254 = !DILocation(line: 115, column: 25, scope: !233)
!255 = !DILocalVariable(name: "stat_cp", scope: !233, file: !1, line: 116, type: !247)
!256 = !DILocation(line: 116, column: 15, scope: !233)
!257 = !DILocation(line: 116, column: 49, scope: !233)
!258 = !DILocation(line: 116, column: 55, scope: !233)
!259 = !DILocation(line: 116, column: 59, scope: !233)
!260 = !DILocation(line: 116, column: 58, scope: !233)
!261 = !DILocation(line: 116, column: 25, scope: !233)
!262 = !DILocalVariable(name: "sqrtx", scope: !233, file: !1, line: 117, type: !66)
!263 = !DILocation(line: 117, column: 18, scope: !233)
!264 = !DILocation(line: 117, column: 31, scope: !233)
!265 = !DILocation(line: 117, column: 26, scope: !233)
!266 = !DILocalVariable(name: "ampl", scope: !233, file: !1, line: 118, type: !66)
!267 = !DILocation(line: 118, column: 18, scope: !233)
!268 = !DILocation(line: 118, column: 37, scope: !233)
!269 = !DILocation(line: 118, column: 32, scope: !233)
!270 = !DILocation(line: 118, column: 44, scope: !233)
!271 = !DILocation(line: 118, column: 42, scope: !233)
!272 = !DILocation(line: 119, column: 21, scope: !233)
!273 = !DILocation(line: 119, column: 20, scope: !233)
!274 = !DILocation(line: 119, column: 31, scope: !233)
!275 = !DILocation(line: 119, column: 26, scope: !233)
!276 = !DILocation(line: 119, column: 5, scope: !233)
!277 = !DILocation(line: 119, column: 13, scope: !233)
!278 = !DILocation(line: 119, column: 18, scope: !233)
!279 = !DILocation(line: 120, column: 28, scope: !233)
!280 = !DILocation(line: 120, column: 20, scope: !233)
!281 = !DILocation(line: 120, column: 38, scope: !233)
!282 = !DILocation(line: 120, column: 33, scope: !233)
!283 = !DILocation(line: 120, column: 42, scope: !233)
!284 = !DILocation(line: 120, column: 41, scope: !233)
!285 = !DILocation(line: 120, column: 55, scope: !233)
!286 = !DILocation(line: 120, column: 50, scope: !287)
!287 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 1)
!288 = !DILocation(line: 120, column: 66, scope: !233)
!289 = !DILocation(line: 120, column: 61, scope: !233)
!290 = !DILocation(line: 120, column: 48, scope: !233)
!291 = !DILocation(line: 120, column: 5, scope: !233)
!292 = !DILocation(line: 120, column: 13, scope: !233)
!293 = !DILocation(line: 120, column: 18, scope: !233)
!294 = !DILocation(line: 121, column: 43, scope: !233)
!295 = !DILocation(line: 121, column: 51, scope: !233)
!296 = !DILocation(line: 121, column: 38, scope: !233)
!297 = !DILocation(line: 121, column: 36, scope: !233)
!298 = !DILocation(line: 121, column: 5, scope: !233)
!299 = !DILocation(line: 121, column: 13, scope: !233)
!300 = !DILocation(line: 121, column: 17, scope: !233)
!301 = !DILocation(line: 122, column: 12, scope: !233)
!302 = !DILocation(line: 122, column: 12, scope: !287)
!303 = !DILocation(line: 122, column: 12, scope: !304)
!304 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 2)
!305 = !DILocation(line: 122, column: 12, scope: !306)
!306 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 3)
!307 = !DILocation(line: 122, column: 12, scope: !308)
!308 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 4)
!309 = !DILocation(line: 122, column: 12, scope: !310)
!310 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 5)
!311 = !DILocation(line: 122, column: 12, scope: !312)
!312 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 6)
!313 = !DILocation(line: 122, column: 12, scope: !314)
!314 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 7)
!315 = !DILocation(line: 122, column: 12, scope: !316)
!316 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 8)
!317 = !DILocation(line: 122, column: 12, scope: !318)
!318 = !DILexicalBlockFile(scope: !233, file: !1, discriminator: 9)
!319 = !DILocation(line: 122, column: 5, scope: !318)
!320 = !DILocation(line: 125, column: 5, scope: !321)
!321 = distinct !DILexicalBlock(scope: !229, file: !1, line: 124, column: 8)
!322 = distinct !{!322, !320}
!323 = !DILocation(line: 125, column: 5, scope: !324)
!324 = !DILexicalBlockFile(scope: !325, file: !1, discriminator: 1)
!325 = distinct !DILexicalBlock(scope: !321, file: !1, line: 125, column: 5)
!326 = distinct !{!326, !327}
!327 = !DILocation(line: 125, column: 5, scope: !325)
!328 = !DILocation(line: 125, column: 5, scope: !329)
!329 = !DILexicalBlockFile(scope: !330, file: !1, discriminator: 2)
!330 = distinct !DILexicalBlock(scope: !325, file: !1, line: 125, column: 5)
!331 = !DILocation(line: 125, column: 5, scope: !332)
!332 = !DILexicalBlockFile(scope: !325, file: !1, discriminator: 3)
!333 = !DILocation(line: 127, column: 1, scope: !63)
!334 = distinct !DISubprogram(name: "cheb_eval_e", scope: !335, file: !335, line: 3, type: !336, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!335 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!336 = !DISubroutineType(types: !337)
!337 = !{!51, !338, !66, !67}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!340 = !DILocalVariable(name: "cs", arg: 1, scope: !334, file: !335, line: 3, type: !338)
!341 = !DILocation(line: 3, column: 33, scope: !334)
!342 = !DILocalVariable(name: "x", arg: 2, scope: !334, file: !335, line: 4, type: !66)
!343 = !DILocation(line: 4, column: 26, scope: !334)
!344 = !DILocalVariable(name: "result", arg: 3, scope: !334, file: !335, line: 5, type: !67)
!345 = !DILocation(line: 5, column: 29, scope: !334)
!346 = !DILocalVariable(name: "j", scope: !334, file: !335, line: 7, type: !51)
!347 = !DILocation(line: 7, column: 7, scope: !334)
!348 = !DILocalVariable(name: "d", scope: !334, file: !335, line: 8, type: !49)
!349 = !DILocation(line: 8, column: 10, scope: !334)
!350 = !DILocalVariable(name: "dd", scope: !334, file: !335, line: 9, type: !49)
!351 = !DILocation(line: 9, column: 10, scope: !334)
!352 = !DILocalVariable(name: "y", scope: !334, file: !335, line: 11, type: !49)
!353 = !DILocation(line: 11, column: 10, scope: !334)
!354 = !DILocation(line: 11, column: 20, scope: !334)
!355 = !DILocation(line: 11, column: 19, scope: !334)
!356 = !DILocation(line: 11, column: 24, scope: !334)
!357 = !DILocation(line: 11, column: 28, scope: !334)
!358 = !DILocation(line: 11, column: 22, scope: !334)
!359 = !DILocation(line: 11, column: 32, scope: !334)
!360 = !DILocation(line: 11, column: 36, scope: !334)
!361 = !DILocation(line: 11, column: 30, scope: !334)
!362 = !DILocation(line: 11, column: 42, scope: !334)
!363 = !DILocation(line: 11, column: 46, scope: !334)
!364 = !DILocation(line: 11, column: 50, scope: !334)
!365 = !DILocation(line: 11, column: 54, scope: !334)
!366 = !DILocation(line: 11, column: 48, scope: !334)
!367 = !DILocation(line: 11, column: 39, scope: !334)
!368 = !DILocalVariable(name: "y2", scope: !334, file: !335, line: 12, type: !49)
!369 = !DILocation(line: 12, column: 10, scope: !334)
!370 = !DILocation(line: 12, column: 21, scope: !334)
!371 = !DILocation(line: 12, column: 19, scope: !334)
!372 = !DILocalVariable(name: "e", scope: !334, file: !335, line: 14, type: !49)
!373 = !DILocation(line: 14, column: 10, scope: !334)
!374 = !DILocation(line: 16, column: 11, scope: !375)
!375 = distinct !DILexicalBlock(scope: !334, file: !335, line: 16, column: 3)
!376 = !DILocation(line: 16, column: 15, scope: !375)
!377 = !DILocation(line: 16, column: 9, scope: !375)
!378 = !DILocation(line: 16, column: 7, scope: !375)
!379 = !DILocation(line: 16, column: 22, scope: !380)
!380 = !DILexicalBlockFile(scope: !381, file: !335, discriminator: 1)
!381 = distinct !DILexicalBlock(scope: !375, file: !335, line: 16, column: 3)
!382 = !DILocation(line: 16, column: 23, scope: !380)
!383 = !DILocation(line: 16, column: 3, scope: !380)
!384 = !DILocalVariable(name: "temp", scope: !385, file: !335, line: 17, type: !49)
!385 = distinct !DILexicalBlock(scope: !381, file: !335, line: 16, column: 33)
!386 = !DILocation(line: 17, column: 12, scope: !385)
!387 = !DILocation(line: 17, column: 19, scope: !385)
!388 = !DILocation(line: 18, column: 9, scope: !385)
!389 = !DILocation(line: 18, column: 12, scope: !385)
!390 = !DILocation(line: 18, column: 11, scope: !385)
!391 = !DILocation(line: 18, column: 16, scope: !385)
!392 = !DILocation(line: 18, column: 14, scope: !385)
!393 = !DILocation(line: 18, column: 27, scope: !385)
!394 = !DILocation(line: 18, column: 21, scope: !385)
!395 = !DILocation(line: 18, column: 25, scope: !385)
!396 = !DILocation(line: 18, column: 19, scope: !385)
!397 = !DILocation(line: 18, column: 7, scope: !385)
!398 = !DILocation(line: 19, column: 15, scope: !385)
!399 = !DILocation(line: 19, column: 18, scope: !385)
!400 = !DILocation(line: 19, column: 17, scope: !385)
!401 = !DILocation(line: 19, column: 10, scope: !385)
!402 = !DILocation(line: 19, column: 31, scope: !385)
!403 = !DILocation(line: 19, column: 26, scope: !404)
!404 = !DILexicalBlockFile(scope: !385, file: !335, discriminator: 1)
!405 = !DILocation(line: 19, column: 24, scope: !385)
!406 = !DILocation(line: 19, column: 48, scope: !385)
!407 = !DILocation(line: 19, column: 42, scope: !385)
!408 = !DILocation(line: 19, column: 46, scope: !385)
!409 = !DILocation(line: 19, column: 37, scope: !410)
!410 = !DILexicalBlockFile(scope: !385, file: !335, discriminator: 2)
!411 = !DILocation(line: 19, column: 35, scope: !385)
!412 = !DILocation(line: 19, column: 7, scope: !385)
!413 = !DILocation(line: 20, column: 10, scope: !385)
!414 = !DILocation(line: 20, column: 8, scope: !385)
!415 = !DILocation(line: 21, column: 3, scope: !385)
!416 = !DILocation(line: 16, column: 29, scope: !417)
!417 = !DILexicalBlockFile(scope: !381, file: !335, discriminator: 2)
!418 = !DILocation(line: 16, column: 3, scope: !417)
!419 = distinct !{!419, !420}
!420 = !DILocation(line: 16, column: 3, scope: !334)
!421 = !DILocalVariable(name: "temp", scope: !422, file: !335, line: 24, type: !49)
!422 = distinct !DILexicalBlock(scope: !334, file: !335, line: 23, column: 3)
!423 = !DILocation(line: 24, column: 12, scope: !422)
!424 = !DILocation(line: 24, column: 19, scope: !422)
!425 = !DILocation(line: 25, column: 9, scope: !422)
!426 = !DILocation(line: 25, column: 11, scope: !422)
!427 = !DILocation(line: 25, column: 10, scope: !422)
!428 = !DILocation(line: 25, column: 15, scope: !422)
!429 = !DILocation(line: 25, column: 13, scope: !422)
!430 = !DILocation(line: 25, column: 26, scope: !422)
!431 = !DILocation(line: 25, column: 30, scope: !422)
!432 = !DILocation(line: 25, column: 24, scope: !422)
!433 = !DILocation(line: 25, column: 18, scope: !422)
!434 = !DILocation(line: 25, column: 7, scope: !422)
!435 = !DILocation(line: 26, column: 15, scope: !422)
!436 = !DILocation(line: 26, column: 17, scope: !422)
!437 = !DILocation(line: 26, column: 16, scope: !422)
!438 = !DILocation(line: 26, column: 10, scope: !422)
!439 = !DILocation(line: 26, column: 30, scope: !422)
!440 = !DILocation(line: 26, column: 25, scope: !441)
!441 = !DILexicalBlockFile(scope: !422, file: !335, discriminator: 1)
!442 = !DILocation(line: 26, column: 23, scope: !422)
!443 = !DILocation(line: 26, column: 47, scope: !422)
!444 = !DILocation(line: 26, column: 51, scope: !422)
!445 = !DILocation(line: 26, column: 42, scope: !446)
!446 = !DILexicalBlockFile(scope: !422, file: !335, discriminator: 2)
!447 = !DILocation(line: 26, column: 40, scope: !422)
!448 = !DILocation(line: 26, column: 34, scope: !422)
!449 = !DILocation(line: 26, column: 7, scope: !422)
!450 = !DILocation(line: 29, column: 17, scope: !334)
!451 = !DILocation(line: 29, column: 3, scope: !334)
!452 = !DILocation(line: 29, column: 11, scope: !334)
!453 = !DILocation(line: 29, column: 15, scope: !334)
!454 = !DILocation(line: 30, column: 35, scope: !334)
!455 = !DILocation(line: 30, column: 33, scope: !334)
!456 = !DILocation(line: 30, column: 50, scope: !334)
!457 = !DILocation(line: 30, column: 54, scope: !334)
!458 = !DILocation(line: 30, column: 44, scope: !334)
!459 = !DILocation(line: 30, column: 48, scope: !334)
!460 = !DILocation(line: 30, column: 39, scope: !334)
!461 = !DILocation(line: 30, column: 37, scope: !334)
!462 = !DILocation(line: 30, column: 3, scope: !334)
!463 = !DILocation(line: 30, column: 11, scope: !334)
!464 = !DILocation(line: 30, column: 15, scope: !334)
!465 = !DILocation(line: 32, column: 3, scope: !334)
!466 = distinct !DISubprogram(name: "gsl_sf_bessel_Y1", scope: !1, file: !1, line: 134, type: !467, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !74)
!467 = !DISubroutineType(types: !468)
!468 = !{!49, !66}
!469 = !DILocalVariable(name: "x", arg: 1, scope: !466, file: !1, line: 134, type: !66)
!470 = !DILocation(line: 134, column: 38, scope: !466)
!471 = !DILocalVariable(name: "result", scope: !466, file: !1, line: 136, type: !68)
!472 = !DILocation(line: 136, column: 3, scope: !466)
!473 = !DILocalVariable(name: "status", scope: !466, file: !1, line: 136, type: !51)
!474 = !DILocation(line: 136, column: 3, scope: !475)
!475 = distinct !DILexicalBlock(scope: !466, file: !1, line: 136, column: 3)
!476 = !DILocation(line: 136, column: 3, scope: !477)
!477 = !DILexicalBlockFile(scope: !478, file: !1, discriminator: 1)
!478 = distinct !DILexicalBlock(scope: !475, file: !1, line: 136, column: 3)
!479 = distinct !{!479, !480}
!480 = !DILocation(line: 136, column: 3, scope: !478)
!481 = !DILocation(line: 136, column: 3, scope: !482)
!482 = !DILexicalBlockFile(scope: !483, file: !1, discriminator: 2)
!483 = distinct !DILexicalBlock(scope: !478, file: !1, line: 136, column: 3)
!484 = !DILocation(line: 136, column: 3, scope: !485)
!485 = !DILexicalBlockFile(scope: !478, file: !1, discriminator: 3)
!486 = !DILocation(line: 136, column: 3, scope: !487)
!487 = !DILexicalBlockFile(scope: !466, file: !1, discriminator: 4)
!488 = !DILocation(line: 137, column: 1, scope: !466)
