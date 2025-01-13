; ModuleID = 'clausen.ll'
source_filename = "clausen.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@aclaus_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([15 x double], [15 x double]* @aclaus_data, i32 0, i32 0), i32 14, double -1.000000e+00, double 1.000000e+00, i32 8 }, align 8
@.str = private unnamed_addr constant [29 x i8] c"gsl_sf_clausen_e(x, &result)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"clausen.c\00", align 1
@aclaus_data = internal global [15 x double] [double 0x4001243CF14D9C94, double 0x3FB28460C5398C8E, double 0x3F50A731C3E77ADA, double 0x3F0103B385B37ED8, double 0x3EB65DD7FD2B2749, double 0x3E70ADB4D822210F, double 0x3E2AE308A2537CDD, double 0x3DE6DD2CB91E71FB, double 0x3DA43938B84274B5, double 0x3D626FD063CB6B46, double 3.058040e-14, double 1.819700e-15, double 1.100000e-16, double 6.800000e-18, double 4.000000e-19], align 16
@0 = private unnamed_addr constant [17 x i8] c"gsl_sf_clausen_e\00"
@1 = private unnamed_addr constant [11 x i8] c"clausen.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [11 x i8] c"clausen.ll\00"
@4 = private unnamed_addr constant [15 x i8] c"gsl_sf_clausen\00"
@5 = private unnamed_addr constant [11 x i8] c"clausen.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_clausen_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !63 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !74, metadata !75), !dbg !76
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %4, metadata !77, metadata !75), !dbg !78
  call void @llvm.dbg.declare(metadata double* %5, metadata !79, metadata !75), !dbg !81
  store double 0x3E6921FB54442D18, double* %5, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata double* %6, metadata !82, metadata !75), !dbg !83
  store double 1.000000e+00, double* %6, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %7, metadata !84, metadata !75), !dbg !85
  %12 = load double, double* %3, align 8, !dbg !86
  %13 = fcmp olt double %12, 0.000000e+00, !dbg !88
  %14 = call i1 @fCmpInstHandler(double %12, double 0.000000e+00, i1 %13, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631405024, i32 65, i32 8), !dbg !89
  br i1 %14, label %15, label %18, !dbg !89

; <label>:15:                                     ; preds = %2
  %16 = load double, double* %3, align 8, !dbg !90
  %17 = fsub double -0.000000e+00, %16, !dbg !92
  call void @fSubHandler(double -0.000000e+00, double %16, double %17, i64 0, i64 94101631406136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631406544, i32 66, i32 11), !dbg !93
  store double %17, double* %3, align 8, !dbg !93
  store double -1.000000e+00, double* %6, align 8, !dbg !94
  br label %18, !dbg !95

; <label>:18:                                     ; preds = %15, %2
  %19 = call i32 @gsl_sf_angle_restrict_pos_e(double* %3), !dbg !96
  store i32 %19, i32* %7, align 4, !dbg !97
  %20 = load double, double* %3, align 8, !dbg !98
  %21 = fcmp ogt double %20, 0x400921FB54442D18, !dbg !100
  %22 = call i1 @fCmpInstHandler(double %20, double 0x400921FB54442D18, i1 %21, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631409728, i32 74, i32 8), !dbg !101
  br i1 %22, label %23, label %29, !dbg !101

; <label>:23:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata double* %8, metadata !102, metadata !75), !dbg !104
  store double 6.281250e+00, double* %8, align 8, !dbg !104
  call void @llvm.dbg.declare(metadata double* %9, metadata !105, metadata !75), !dbg !106
  store double 0x3F5FB54442D1846A, double* %9, align 8, !dbg !106
  %24 = load double, double* %3, align 8, !dbg !107
  %25 = fsub double 6.281250e+00, %24, !dbg !108
  call void @fSubHandler(double 6.281250e+00, double %24, double %25, i64 0, i64 94101631416520, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631416928, i32 78, i32 13), !dbg !109
  %26 = fadd double %25, 0x3F5FB54442D1846A, !dbg !109
  call void @fAddHandler(double %25, double 0x3F5FB54442D1846A, double %26, i64 94101631416928, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631417312, i32 78, i32 18), !dbg !110
  store double %26, double* %3, align 8, !dbg !110
  %27 = load double, double* %6, align 8, !dbg !111
  %28 = fsub double -0.000000e+00, %27, !dbg !112
  call void @fSubHandler(double -0.000000e+00, double %27, double %28, i64 0, i64 94101631418120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631418528, i32 79, i32 11), !dbg !113
  store double %28, double* %6, align 8, !dbg !113
  br label %29, !dbg !114

; <label>:29:                                     ; preds = %23, %18
  %30 = load double, double* %3, align 8, !dbg !115
  %31 = fcmp oeq double %30, 0.000000e+00, !dbg !117
  %32 = call i1 @fCmpInstHandler(double %30, double 0.000000e+00, i1 %31, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631420064, i32 82, i32 8), !dbg !118
  br i1 %32, label %33, label %38, !dbg !118

; <label>:33:                                     ; preds = %29
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !119
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !121
  store double 0.000000e+00, double* %35, align 8, !dbg !122
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !123
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !124
  store double 0.000000e+00, double* %37, align 8, !dbg !125
  br label %80, !dbg !126

; <label>:38:                                     ; preds = %29
  %39 = load double, double* %3, align 8, !dbg !127
  %40 = fcmp olt double %39, 0x3E6921FB54442D18, !dbg !129
  %41 = call i1 @fCmpInstHandler(double %39, double 0x3E6921FB54442D18, i1 %40, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631425008, i32 86, i32 13), !dbg !130
  br i1 %41, label %42, label %54, !dbg !130

; <label>:42:                                     ; preds = %38
  %43 = load double, double* %3, align 8, !dbg !131
  %44 = load double, double* %3, align 8, !dbg !133
  %45 = call double @log(double %44) #6, !dbg !134
  call void @callOneArgHandler(i32 12, double %44, double %45, i64 94101631426440, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631427184, i32 87, i32 30), !dbg !135
  %46 = fsub double 1.000000e+00, %45, !dbg !135
  call void @fSubHandler(double 1.000000e+00, double %45, double %46, i64 0, i64 94101631427184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631427728, i32 87, i32 28), !dbg !136
  %47 = fmul double %43, %46, !dbg !136
  call void @fMulHandler(double %43, double %46, double %47, i64 94101631426120, i64 94101631427728, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631428112, i32 87, i32 21), !dbg !137
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !137
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !138
  store double %47, double* %49, align 8, !dbg !139
  %50 = load double, double* %3, align 8, !dbg !140
  %51 = fmul double %50, 0x3CB0000000000000, !dbg !141
  call void @fMulHandler(double %50, double 0x3CB0000000000000, double %51, i64 94101631429752, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631430224, i32 88, i32 21), !dbg !142
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !142
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !143
  store double %51, double* %53, align 8, !dbg !144
  br label %79, !dbg !145

; <label>:54:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %10, metadata !146, metadata !75), !dbg !148
  %55 = load double, double* %3, align 8, !dbg !149
  %56 = load double, double* %3, align 8, !dbg !150
  %57 = fmul double %55, %56, !dbg !151
  call void @fMulHandler(double %55, double %56, double %57, i64 94101631433496, i64 94101631433848, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631434256, i32 91, i32 28), !dbg !152
  %58 = fdiv double %57, 0x4023BD3CC9BE45DE, !dbg !152
  call void @fDivHandler(double %57, double 0x4023BD3CC9BE45DE, double %58, i64 94101631434256, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631434736, i32 91, i32 31), !dbg !153
  %59 = fsub double %58, 5.000000e-01, !dbg !153
  call void @fSubHandler(double %58, double 5.000000e-01, double %59, i64 94101631434736, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631435248, i32 91, i32 45), !dbg !154
  %60 = fmul double 2.000000e+00, %59, !dbg !154
  call void @fMulHandler(double 2.000000e+00, double %59, double %60, i64 0, i64 94101631435248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631435728, i32 91, i32 25), !dbg !148
  store double %60, double* %10, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !155, metadata !75), !dbg !156
  %61 = load double, double* %10, align 8, !dbg !157
  %62 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @aclaus_cs, double %61, %struct.gsl_sf_result_struct* %11), !dbg !158
  %63 = load double, double* %3, align 8, !dbg !159
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !160
  %65 = load double, double* %64, align 8, !dbg !160
  %66 = load double, double* %3, align 8, !dbg !161
  %67 = call double @log(double %66) #6, !dbg !162
  call void @callOneArgHandler(i32 12, double %66, double %67, i64 94101631442552, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631443024, i32 94, i32 39), !dbg !163
  %68 = fsub double %65, %67, !dbg !163
  call void @fSubHandler(double %65, double %67, double %68, i64 94101631440904, i64 94101631443024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631443504, i32 94, i32 37), !dbg !164
  %69 = fmul double %63, %68, !dbg !164
  call void @fMulHandler(double %63, double %68, double %69, i64 94101631440104, i64 94101631443504, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631444960, i32 94, i32 21), !dbg !165
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !165
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !166
  store double %69, double* %71, align 8, !dbg !167
  %72 = load double, double* %3, align 8, !dbg !168
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !169
  %74 = load double, double* %73, align 8, !dbg !169
  %75 = fadd double %74, 0x3CB0000000000000, !dbg !170
  call void @fAddHandler(double %74, double 0x3CB0000000000000, double %75, i64 94101631447432, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631449104, i32 95, i32 37), !dbg !171
  %76 = fmul double %72, %75, !dbg !171
  call void @fMulHandler(double %72, double %75, double %76, i64 94101631446600, i64 94101631449104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631449520, i32 95, i32 21), !dbg !172
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !172
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !173
  store double %76, double* %78, align 8, !dbg !174
  br label %79

; <label>:79:                                     ; preds = %54, %42
  br label %80

; <label>:80:                                     ; preds = %79, %33
  %81 = load double, double* %6, align 8, !dbg !175
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %4, align 8, !dbg !176
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !177
  %84 = load double, double* %83, align 8, !dbg !178
  %85 = fmul double %84, %81, !dbg !178
  call void @fMulHandler(double %84, double %81, double %85, i64 94101631452440, i64 94101631451352, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94101631452848, i32 98, i32 15), !dbg !178
  store double %85, double* %83, align 8, !dbg !178
  %86 = load i32, i32* %7, align 4, !dbg !179
  ret i32 %86, !dbg !180
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @gsl_sf_angle_restrict_pos_e(double*) #2

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #4 !dbg !181 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !187, metadata !75), !dbg !188
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !189, metadata !75), !dbg !190
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !191, metadata !75), !dbg !192
  call void @llvm.dbg.declare(metadata i32* %7, metadata !193, metadata !75), !dbg !194
  call void @llvm.dbg.declare(metadata double* %8, metadata !195, metadata !75), !dbg !196
  store double 0.000000e+00, double* %8, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata double* %9, metadata !197, metadata !75), !dbg !198
  store double 0.000000e+00, double* %9, align 8, !dbg !198
  call void @llvm.dbg.declare(metadata double* %10, metadata !199, metadata !75), !dbg !200
  %15 = load double, double* %5, align 8, !dbg !201
  %16 = fmul double 2.000000e+00, %15, !dbg !202
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94101631439480, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631469824, i32 11, i32 19), !dbg !203
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !203
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !204
  %19 = load double, double* %18, align 8, !dbg !204
  %20 = fsub double %16, %19, !dbg !205
  call void @fSubHandler(double %16, double %19, double %20, i64 94101631469824, i64 94101631408360, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631472560, i32 11, i32 22), !dbg !206
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !206
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !207
  %23 = load double, double* %22, align 8, !dbg !207
  %24 = fsub double %20, %23, !dbg !208
  call void @fSubHandler(double %20, double %23, double %24, i64 94101631472560, i64 94101631473752, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631475424, i32 11, i32 30), !dbg !209
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !209
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !210
  %27 = load double, double* %26, align 8, !dbg !210
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !211
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !212
  %30 = load double, double* %29, align 8, !dbg !212
  %31 = fsub double %27, %30, !dbg !213
  call void @fSubHandler(double %27, double %30, double %31, i64 94101631476648, i64 94101631479128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631480800, i32 11, i32 48), !dbg !214
  %32 = fdiv double %24, %31, !dbg !214
  call void @fDivHandler(double %24, double %31, double %32, i64 94101631475424, i64 94101631480800, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631481216, i32 11, i32 39), !dbg !200
  store double %32, double* %10, align 8, !dbg !200
  call void @llvm.dbg.declare(metadata double* %11, metadata !215, metadata !75), !dbg !216
  %33 = load double, double* %10, align 8, !dbg !217
  %34 = fmul double 2.000000e+00, %33, !dbg !218
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94101631484264, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631484672, i32 12, i32 19), !dbg !216
  store double %34, double* %11, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata double* %12, metadata !219, metadata !75), !dbg !220
  store double 0.000000e+00, double* %12, align 8, !dbg !220
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !221
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !223
  %37 = load i32, i32* %36, align 8, !dbg !223
  store i32 %37, i32* %7, align 4, !dbg !224
  br label %38, !dbg !225

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !226
  %40 = icmp sge i32 %39, 1, !dbg !229
  %41 = sext i32 %39 to i64, !dbg !230
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631493248, i32 16, i32 23), !dbg !230
  br i1 %42, label %43, label %80, !dbg !230

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !231, metadata !75), !dbg !233
  %44 = load double, double* %8, align 8, !dbg !234
  store double %44, double* %13, align 8, !dbg !233
  %45 = load double, double* %11, align 8, !dbg !235
  %46 = load double, double* %8, align 8, !dbg !236
  %47 = fmul double %45, %46, !dbg !237
  call void @fMulHandler(double %45, double %46, double %47, i64 94101631497448, i64 94101631497832, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631498240, i32 18, i32 11), !dbg !238
  %48 = load double, double* %9, align 8, !dbg !238
  %49 = fsub double %47, %48, !dbg !239
  call void @fSubHandler(double %47, double %48, double %49, i64 94101631498240, i64 94101631498632, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631499040, i32 18, i32 14), !dbg !240
  %50 = load i32, i32* %7, align 4, !dbg !240
  %51 = sext i32 %50 to i64, !dbg !241
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !241
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !242
  %54 = load double*, double** %53, align 8, !dbg !242
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !241
  %56 = load double, double* %55, align 8, !dbg !241
  %57 = fadd double %49, %56, !dbg !243
  call void @fAddHandler(double %49, double %56, double %57, i64 94101631499040, i64 94101631504088, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631504208, i32 18, i32 19), !dbg !244
  store double %57, double* %8, align 8, !dbg !244
  %58 = load double, double* %11, align 8, !dbg !245
  %59 = load double, double* %13, align 8, !dbg !246
  %60 = fmul double %58, %59, !dbg !247
  call void @fMulHandler(double %58, double %59, double %60, i64 94101631505016, i64 94101631505400, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631505808, i32 19, i32 17), !dbg !248
  %61 = call double @fabs(double %60) #1, !dbg !248
  %62 = load double, double* %9, align 8, !dbg !249
  %63 = call double @fabs(double %62) #1, !dbg !250
  %64 = fadd double %61, %63, !dbg !252
  call void @fAddHandler(double %61, double %63, double %64, i64 94101631506560, i64 94101631507520, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631508000, i32 19, i32 24), !dbg !253
  %65 = load i32, i32* %7, align 4, !dbg !253
  %66 = sext i32 %65 to i64, !dbg !254
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !254
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !255
  %69 = load double*, double** %68, align 8, !dbg !255
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !254
  %71 = load double, double* %70, align 8, !dbg !254
  %72 = call double @fabs(double %71) #1, !dbg !256
  %73 = fadd double %64, %72, !dbg !258
  call void @fAddHandler(double %64, double %72, double %73, i64 94101631508000, i64 94101631513232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631513712, i32 19, i32 35), !dbg !259
  %74 = load double, double* %12, align 8, !dbg !259
  %75 = fadd double %74, %73, !dbg !259
  call void @fAddHandler(double %74, double %73, double %75, i64 94101631514104, i64 94101631513712, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631514512, i32 19, i32 7), !dbg !259
  store double %75, double* %12, align 8, !dbg !259
  %76 = load double, double* %13, align 8, !dbg !260
  store double %76, double* %9, align 8, !dbg !261
  br label %77, !dbg !262

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !263
  %79 = add nsw i32 %78, -1, !dbg !263
  store i32 %79, i32* %7, align 4, !dbg !263
  br label %38, !dbg !265, !llvm.loop !266

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !268, metadata !75), !dbg !270
  %81 = load double, double* %8, align 8, !dbg !271
  store double %81, double* %14, align 8, !dbg !270
  %82 = load double, double* %10, align 8, !dbg !272
  %83 = load double, double* %8, align 8, !dbg !273
  %84 = fmul double %82, %83, !dbg !274
  call void @fMulHandler(double %82, double %83, double %84, i64 94101631527736, i64 94101631528120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631528528, i32 25, i32 10), !dbg !275
  %85 = load double, double* %9, align 8, !dbg !275
  %86 = fsub double %84, %85, !dbg !276
  call void @fSubHandler(double %84, double %85, double %86, i64 94101631528528, i64 94101631528920, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631529328, i32 25, i32 13), !dbg !277
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !277
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !278
  %89 = load double*, double** %88, align 8, !dbg !278
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !277
  %91 = load double, double* %90, align 8, !dbg !277
  %92 = fmul double 5.000000e-01, %91, !dbg !279
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94101631533960, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631534112, i32 25, i32 24), !dbg !280
  %93 = fadd double %86, %92, !dbg !280
  call void @fAddHandler(double %86, double %92, double %93, i64 94101631529328, i64 94101631534112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631534496, i32 25, i32 18), !dbg !281
  store double %93, double* %8, align 8, !dbg !281
  %94 = load double, double* %10, align 8, !dbg !282
  %95 = load double, double* %14, align 8, !dbg !283
  %96 = fmul double %94, %95, !dbg !284
  call void @fMulHandler(double %94, double %95, double %96, i64 94101631535304, i64 94101631535688, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631536096, i32 26, i32 16), !dbg !285
  %97 = call double @fabs(double %96) #1, !dbg !285
  %98 = load double, double* %9, align 8, !dbg !286
  %99 = call double @fabs(double %98) #1, !dbg !287
  %100 = fadd double %97, %99, !dbg !289
  call void @fAddHandler(double %97, double %99, double %100, i64 94101631536576, i64 94101631537504, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631537984, i32 26, i32 23), !dbg !290
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !290
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !291
  %103 = load double*, double** %102, align 8, !dbg !291
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !290
  %105 = load double, double* %104, align 8, !dbg !290
  %106 = call double @fabs(double %105) #1, !dbg !292
  %107 = fmul double 5.000000e-01, %106, !dbg !294
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94101631542736, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631543248, i32 26, i32 40), !dbg !295
  %108 = fadd double %100, %107, !dbg !295
  call void @fAddHandler(double %100, double %107, double %108, i64 94101631537984, i64 94101631543248, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631543632, i32 26, i32 34), !dbg !296
  %109 = load double, double* %12, align 8, !dbg !296
  %110 = fadd double %109, %108, !dbg !296
  call void @fAddHandler(double %109, double %108, double %110, i64 94101631544024, i64 94101631543632, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631544432, i32 26, i32 7), !dbg !296
  store double %110, double* %12, align 8, !dbg !296
  %111 = load double, double* %8, align 8, !dbg !297
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !298
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !299
  store double %111, double* %113, align 8, !dbg !300
  %114 = load double, double* %12, align 8, !dbg !301
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !302
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94101631547848, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631548256, i32 30, i32 33), !dbg !303
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !303
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !304
  %118 = load i32, i32* %117, align 8, !dbg !304
  %119 = sext i32 %118 to i64, !dbg !305
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !305
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !306
  %122 = load double*, double** %121, align 8, !dbg !306
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !305
  %124 = load double, double* %123, align 8, !dbg !305
  %125 = call double @fabs(double %124) #1, !dbg !307
  %126 = fadd double %115, %125, !dbg !308
  call void @fAddHandler(double %115, double %125, double %126, i64 94101631548256, i64 94101631555584, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94101631556064, i32 30, i32 37), !dbg !309
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !309
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !310
  store double %126, double* %128, align 8, !dbg !311
  ret i32 0, !dbg !312
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_clausen(double) #0 !dbg !313 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !316, metadata !75), !dbg !317
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !318, metadata !75), !dbg !319
  call void @llvm.dbg.declare(metadata i32* %5, metadata !320, metadata !75), !dbg !319
  %6 = load double, double* %3, align 8, !dbg !319
  %7 = call i32 @gsl_sf_clausen_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !319
  store i32 %7, i32* %5, align 4, !dbg !319
  %8 = load i32, i32* %5, align 4, !dbg !321
  %9 = icmp ne i32 %8, 0, !dbg !321
  %10 = sext i32 %8 to i64, !dbg !319
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 94101631565136, i32 110, i32 3), !dbg !319
  br i1 %11, label %12, label %18, !dbg !319

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !323, !llvm.loop !326

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !328
  call void @gsl_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 110, i32 %14), !dbg !328
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !328
  %16 = load double, double* %15, align 8, !dbg !328
  store double %16, double* %2, align 8, !dbg !328
  br label %21, !dbg !328
                                                  ; No predecessors!
  br label %18, !dbg !331

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !333
  %20 = load double, double* %19, align 8, !dbg !333
  store double %20, double* %2, align 8, !dbg !333
  br label %21, !dbg !333

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !335
  ret double %22, !dbg !335
}

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

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
!1 = !DIFile(filename: "clausen.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = distinct !DIGlobalVariable(name: "aclaus_cs", scope: !0, file: !1, line: 48, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @aclaus_cs)
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
!55 = distinct !DIGlobalVariable(name: "aclaus_data", scope: !0, file: !1, line: 31, type: !56, isLocal: true, isDefinition: true, variable: [15 x double]* @aclaus_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 960, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 15)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"PIC Level", i32 2}
!62 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!63 = distinct !DISubprogram(name: "gsl_sf_clausen_e", scope: !1, file: !1, line: 58, type: !64, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!64 = !DISubroutineType(types: !65)
!65 = !{!51, !49, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !68, line: 41, baseType: !69)
!68 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !68, line: 37, size: 128, align: 64, elements: !70)
!70 = !{!71, !72}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !69, file: !68, line: 38, baseType: !49, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !69, file: !68, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!73 = !{}
!74 = !DILocalVariable(name: "x", arg: 1, scope: !63, file: !1, line: 58, type: !49)
!75 = !DIExpression()
!76 = !DILocation(line: 58, column: 29, scope: !63)
!77 = !DILocalVariable(name: "result", arg: 2, scope: !63, file: !1, line: 58, type: !66)
!78 = !DILocation(line: 58, column: 47, scope: !63)
!79 = !DILocalVariable(name: "x_cut", scope: !63, file: !1, line: 60, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!81 = !DILocation(line: 60, column: 16, scope: !63)
!82 = !DILocalVariable(name: "sgn", scope: !63, file: !1, line: 62, type: !49)
!83 = !DILocation(line: 62, column: 10, scope: !63)
!84 = !DILocalVariable(name: "status_red", scope: !63, file: !1, line: 63, type: !51)
!85 = !DILocation(line: 63, column: 7, scope: !63)
!86 = !DILocation(line: 65, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !63, file: !1, line: 65, column: 6)
!88 = !DILocation(line: 65, column: 8, scope: !87)
!89 = !DILocation(line: 65, column: 6, scope: !63)
!90 = !DILocation(line: 66, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 65, column: 15)
!92 = !DILocation(line: 66, column: 11, scope: !91)
!93 = !DILocation(line: 66, column: 9, scope: !91)
!94 = !DILocation(line: 67, column: 9, scope: !91)
!95 = !DILocation(line: 68, column: 3, scope: !91)
!96 = !DILocation(line: 71, column: 16, scope: !63)
!97 = !DILocation(line: 71, column: 14, scope: !63)
!98 = !DILocation(line: 74, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !63, file: !1, line: 74, column: 6)
!100 = !DILocation(line: 74, column: 8, scope: !99)
!101 = !DILocation(line: 74, column: 6, scope: !63)
!102 = !DILocalVariable(name: "p0", scope: !103, file: !1, line: 76, type: !80)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 74, column: 16)
!104 = !DILocation(line: 76, column: 18, scope: !103)
!105 = !DILocalVariable(name: "p1", scope: !103, file: !1, line: 77, type: !80)
!106 = !DILocation(line: 77, column: 18, scope: !103)
!107 = !DILocation(line: 78, column: 15, scope: !103)
!108 = !DILocation(line: 78, column: 13, scope: !103)
!109 = !DILocation(line: 78, column: 18, scope: !103)
!110 = !DILocation(line: 78, column: 7, scope: !103)
!111 = !DILocation(line: 79, column: 12, scope: !103)
!112 = !DILocation(line: 79, column: 11, scope: !103)
!113 = !DILocation(line: 79, column: 9, scope: !103)
!114 = !DILocation(line: 80, column: 3, scope: !103)
!115 = !DILocation(line: 82, column: 6, scope: !116)
!116 = distinct !DILexicalBlock(scope: !63, file: !1, line: 82, column: 6)
!117 = !DILocation(line: 82, column: 8, scope: !116)
!118 = !DILocation(line: 82, column: 6, scope: !63)
!119 = !DILocation(line: 83, column: 5, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 82, column: 16)
!121 = !DILocation(line: 83, column: 13, scope: !120)
!122 = !DILocation(line: 83, column: 17, scope: !120)
!123 = !DILocation(line: 84, column: 5, scope: !120)
!124 = !DILocation(line: 84, column: 13, scope: !120)
!125 = !DILocation(line: 84, column: 17, scope: !120)
!126 = !DILocation(line: 85, column: 3, scope: !120)
!127 = !DILocation(line: 86, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !116, file: !1, line: 86, column: 11)
!129 = !DILocation(line: 86, column: 13, scope: !128)
!130 = !DILocation(line: 86, column: 11, scope: !116)
!131 = !DILocation(line: 87, column: 19, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 86, column: 22)
!133 = !DILocation(line: 87, column: 34, scope: !132)
!134 = !DILocation(line: 87, column: 30, scope: !132)
!135 = !DILocation(line: 87, column: 28, scope: !132)
!136 = !DILocation(line: 87, column: 21, scope: !132)
!137 = !DILocation(line: 87, column: 5, scope: !132)
!138 = !DILocation(line: 87, column: 13, scope: !132)
!139 = !DILocation(line: 87, column: 17, scope: !132)
!140 = !DILocation(line: 88, column: 19, scope: !132)
!141 = !DILocation(line: 88, column: 21, scope: !132)
!142 = !DILocation(line: 88, column: 5, scope: !132)
!143 = !DILocation(line: 88, column: 13, scope: !132)
!144 = !DILocation(line: 88, column: 17, scope: !132)
!145 = !DILocation(line: 89, column: 3, scope: !132)
!146 = !DILocalVariable(name: "t", scope: !147, file: !1, line: 91, type: !80)
!147 = distinct !DILexicalBlock(scope: !128, file: !1, line: 90, column: 8)
!148 = !DILocation(line: 91, column: 18, scope: !147)
!149 = !DILocation(line: 91, column: 27, scope: !147)
!150 = !DILocation(line: 91, column: 29, scope: !147)
!151 = !DILocation(line: 91, column: 28, scope: !147)
!152 = !DILocation(line: 91, column: 31, scope: !147)
!153 = !DILocation(line: 91, column: 45, scope: !147)
!154 = !DILocation(line: 91, column: 25, scope: !147)
!155 = !DILocalVariable(name: "result_c", scope: !147, file: !1, line: 92, type: !67)
!156 = !DILocation(line: 92, column: 19, scope: !147)
!157 = !DILocation(line: 93, column: 29, scope: !147)
!158 = !DILocation(line: 93, column: 5, scope: !147)
!159 = !DILocation(line: 94, column: 19, scope: !147)
!160 = !DILocation(line: 94, column: 33, scope: !147)
!161 = !DILocation(line: 94, column: 43, scope: !147)
!162 = !DILocation(line: 94, column: 39, scope: !147)
!163 = !DILocation(line: 94, column: 37, scope: !147)
!164 = !DILocation(line: 94, column: 21, scope: !147)
!165 = !DILocation(line: 94, column: 5, scope: !147)
!166 = !DILocation(line: 94, column: 13, scope: !147)
!167 = !DILocation(line: 94, column: 17, scope: !147)
!168 = !DILocation(line: 95, column: 19, scope: !147)
!169 = !DILocation(line: 95, column: 33, scope: !147)
!170 = !DILocation(line: 95, column: 37, scope: !147)
!171 = !DILocation(line: 95, column: 21, scope: !147)
!172 = !DILocation(line: 95, column: 5, scope: !147)
!173 = !DILocation(line: 95, column: 13, scope: !147)
!174 = !DILocation(line: 95, column: 17, scope: !147)
!175 = !DILocation(line: 98, column: 18, scope: !63)
!176 = !DILocation(line: 98, column: 3, scope: !63)
!177 = !DILocation(line: 98, column: 11, scope: !63)
!178 = !DILocation(line: 98, column: 15, scope: !63)
!179 = !DILocation(line: 100, column: 10, scope: !63)
!180 = !DILocation(line: 100, column: 3, scope: !63)
!181 = distinct !DISubprogram(name: "cheb_eval_e", scope: !182, file: !182, line: 3, type: !183, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!182 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!183 = !DISubroutineType(types: !184)
!184 = !{!51, !185, !80, !66}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!187 = !DILocalVariable(name: "cs", arg: 1, scope: !181, file: !182, line: 3, type: !185)
!188 = !DILocation(line: 3, column: 33, scope: !181)
!189 = !DILocalVariable(name: "x", arg: 2, scope: !181, file: !182, line: 4, type: !80)
!190 = !DILocation(line: 4, column: 26, scope: !181)
!191 = !DILocalVariable(name: "result", arg: 3, scope: !181, file: !182, line: 5, type: !66)
!192 = !DILocation(line: 5, column: 29, scope: !181)
!193 = !DILocalVariable(name: "j", scope: !181, file: !182, line: 7, type: !51)
!194 = !DILocation(line: 7, column: 7, scope: !181)
!195 = !DILocalVariable(name: "d", scope: !181, file: !182, line: 8, type: !49)
!196 = !DILocation(line: 8, column: 10, scope: !181)
!197 = !DILocalVariable(name: "dd", scope: !181, file: !182, line: 9, type: !49)
!198 = !DILocation(line: 9, column: 10, scope: !181)
!199 = !DILocalVariable(name: "y", scope: !181, file: !182, line: 11, type: !49)
!200 = !DILocation(line: 11, column: 10, scope: !181)
!201 = !DILocation(line: 11, column: 20, scope: !181)
!202 = !DILocation(line: 11, column: 19, scope: !181)
!203 = !DILocation(line: 11, column: 24, scope: !181)
!204 = !DILocation(line: 11, column: 28, scope: !181)
!205 = !DILocation(line: 11, column: 22, scope: !181)
!206 = !DILocation(line: 11, column: 32, scope: !181)
!207 = !DILocation(line: 11, column: 36, scope: !181)
!208 = !DILocation(line: 11, column: 30, scope: !181)
!209 = !DILocation(line: 11, column: 42, scope: !181)
!210 = !DILocation(line: 11, column: 46, scope: !181)
!211 = !DILocation(line: 11, column: 50, scope: !181)
!212 = !DILocation(line: 11, column: 54, scope: !181)
!213 = !DILocation(line: 11, column: 48, scope: !181)
!214 = !DILocation(line: 11, column: 39, scope: !181)
!215 = !DILocalVariable(name: "y2", scope: !181, file: !182, line: 12, type: !49)
!216 = !DILocation(line: 12, column: 10, scope: !181)
!217 = !DILocation(line: 12, column: 21, scope: !181)
!218 = !DILocation(line: 12, column: 19, scope: !181)
!219 = !DILocalVariable(name: "e", scope: !181, file: !182, line: 14, type: !49)
!220 = !DILocation(line: 14, column: 10, scope: !181)
!221 = !DILocation(line: 16, column: 11, scope: !222)
!222 = distinct !DILexicalBlock(scope: !181, file: !182, line: 16, column: 3)
!223 = !DILocation(line: 16, column: 15, scope: !222)
!224 = !DILocation(line: 16, column: 9, scope: !222)
!225 = !DILocation(line: 16, column: 7, scope: !222)
!226 = !DILocation(line: 16, column: 22, scope: !227)
!227 = !DILexicalBlockFile(scope: !228, file: !182, discriminator: 1)
!228 = distinct !DILexicalBlock(scope: !222, file: !182, line: 16, column: 3)
!229 = !DILocation(line: 16, column: 23, scope: !227)
!230 = !DILocation(line: 16, column: 3, scope: !227)
!231 = !DILocalVariable(name: "temp", scope: !232, file: !182, line: 17, type: !49)
!232 = distinct !DILexicalBlock(scope: !228, file: !182, line: 16, column: 33)
!233 = !DILocation(line: 17, column: 12, scope: !232)
!234 = !DILocation(line: 17, column: 19, scope: !232)
!235 = !DILocation(line: 18, column: 9, scope: !232)
!236 = !DILocation(line: 18, column: 12, scope: !232)
!237 = !DILocation(line: 18, column: 11, scope: !232)
!238 = !DILocation(line: 18, column: 16, scope: !232)
!239 = !DILocation(line: 18, column: 14, scope: !232)
!240 = !DILocation(line: 18, column: 27, scope: !232)
!241 = !DILocation(line: 18, column: 21, scope: !232)
!242 = !DILocation(line: 18, column: 25, scope: !232)
!243 = !DILocation(line: 18, column: 19, scope: !232)
!244 = !DILocation(line: 18, column: 7, scope: !232)
!245 = !DILocation(line: 19, column: 15, scope: !232)
!246 = !DILocation(line: 19, column: 18, scope: !232)
!247 = !DILocation(line: 19, column: 17, scope: !232)
!248 = !DILocation(line: 19, column: 10, scope: !232)
!249 = !DILocation(line: 19, column: 31, scope: !232)
!250 = !DILocation(line: 19, column: 26, scope: !251)
!251 = !DILexicalBlockFile(scope: !232, file: !182, discriminator: 1)
!252 = !DILocation(line: 19, column: 24, scope: !232)
!253 = !DILocation(line: 19, column: 48, scope: !232)
!254 = !DILocation(line: 19, column: 42, scope: !232)
!255 = !DILocation(line: 19, column: 46, scope: !232)
!256 = !DILocation(line: 19, column: 37, scope: !257)
!257 = !DILexicalBlockFile(scope: !232, file: !182, discriminator: 2)
!258 = !DILocation(line: 19, column: 35, scope: !232)
!259 = !DILocation(line: 19, column: 7, scope: !232)
!260 = !DILocation(line: 20, column: 10, scope: !232)
!261 = !DILocation(line: 20, column: 8, scope: !232)
!262 = !DILocation(line: 21, column: 3, scope: !232)
!263 = !DILocation(line: 16, column: 29, scope: !264)
!264 = !DILexicalBlockFile(scope: !228, file: !182, discriminator: 2)
!265 = !DILocation(line: 16, column: 3, scope: !264)
!266 = distinct !{!266, !267}
!267 = !DILocation(line: 16, column: 3, scope: !181)
!268 = !DILocalVariable(name: "temp", scope: !269, file: !182, line: 24, type: !49)
!269 = distinct !DILexicalBlock(scope: !181, file: !182, line: 23, column: 3)
!270 = !DILocation(line: 24, column: 12, scope: !269)
!271 = !DILocation(line: 24, column: 19, scope: !269)
!272 = !DILocation(line: 25, column: 9, scope: !269)
!273 = !DILocation(line: 25, column: 11, scope: !269)
!274 = !DILocation(line: 25, column: 10, scope: !269)
!275 = !DILocation(line: 25, column: 15, scope: !269)
!276 = !DILocation(line: 25, column: 13, scope: !269)
!277 = !DILocation(line: 25, column: 26, scope: !269)
!278 = !DILocation(line: 25, column: 30, scope: !269)
!279 = !DILocation(line: 25, column: 24, scope: !269)
!280 = !DILocation(line: 25, column: 18, scope: !269)
!281 = !DILocation(line: 25, column: 7, scope: !269)
!282 = !DILocation(line: 26, column: 15, scope: !269)
!283 = !DILocation(line: 26, column: 17, scope: !269)
!284 = !DILocation(line: 26, column: 16, scope: !269)
!285 = !DILocation(line: 26, column: 10, scope: !269)
!286 = !DILocation(line: 26, column: 30, scope: !269)
!287 = !DILocation(line: 26, column: 25, scope: !288)
!288 = !DILexicalBlockFile(scope: !269, file: !182, discriminator: 1)
!289 = !DILocation(line: 26, column: 23, scope: !269)
!290 = !DILocation(line: 26, column: 47, scope: !269)
!291 = !DILocation(line: 26, column: 51, scope: !269)
!292 = !DILocation(line: 26, column: 42, scope: !293)
!293 = !DILexicalBlockFile(scope: !269, file: !182, discriminator: 2)
!294 = !DILocation(line: 26, column: 40, scope: !269)
!295 = !DILocation(line: 26, column: 34, scope: !269)
!296 = !DILocation(line: 26, column: 7, scope: !269)
!297 = !DILocation(line: 29, column: 17, scope: !181)
!298 = !DILocation(line: 29, column: 3, scope: !181)
!299 = !DILocation(line: 29, column: 11, scope: !181)
!300 = !DILocation(line: 29, column: 15, scope: !181)
!301 = !DILocation(line: 30, column: 35, scope: !181)
!302 = !DILocation(line: 30, column: 33, scope: !181)
!303 = !DILocation(line: 30, column: 50, scope: !181)
!304 = !DILocation(line: 30, column: 54, scope: !181)
!305 = !DILocation(line: 30, column: 44, scope: !181)
!306 = !DILocation(line: 30, column: 48, scope: !181)
!307 = !DILocation(line: 30, column: 39, scope: !181)
!308 = !DILocation(line: 30, column: 37, scope: !181)
!309 = !DILocation(line: 30, column: 3, scope: !181)
!310 = !DILocation(line: 30, column: 11, scope: !181)
!311 = !DILocation(line: 30, column: 15, scope: !181)
!312 = !DILocation(line: 32, column: 3, scope: !181)
!313 = distinct !DISubprogram(name: "gsl_sf_clausen", scope: !1, file: !1, line: 108, type: !314, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !73)
!314 = !DISubroutineType(types: !315)
!315 = !{!49, !80}
!316 = !DILocalVariable(name: "x", arg: 1, scope: !313, file: !1, line: 108, type: !80)
!317 = !DILocation(line: 108, column: 36, scope: !313)
!318 = !DILocalVariable(name: "result", scope: !313, file: !1, line: 110, type: !67)
!319 = !DILocation(line: 110, column: 3, scope: !313)
!320 = !DILocalVariable(name: "status", scope: !313, file: !1, line: 110, type: !51)
!321 = !DILocation(line: 110, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !313, file: !1, line: 110, column: 3)
!323 = !DILocation(line: 110, column: 3, scope: !324)
!324 = !DILexicalBlockFile(scope: !325, file: !1, discriminator: 1)
!325 = distinct !DILexicalBlock(scope: !322, file: !1, line: 110, column: 3)
!326 = distinct !{!326, !327}
!327 = !DILocation(line: 110, column: 3, scope: !325)
!328 = !DILocation(line: 110, column: 3, scope: !329)
!329 = !DILexicalBlockFile(scope: !330, file: !1, discriminator: 2)
!330 = distinct !DILexicalBlock(scope: !325, file: !1, line: 110, column: 3)
!331 = !DILocation(line: 110, column: 3, scope: !332)
!332 = !DILexicalBlockFile(scope: !325, file: !1, discriminator: 3)
!333 = !DILocation(line: 110, column: 3, scope: !334)
!334 = !DILexicalBlockFile(scope: !313, file: !1, discriminator: 4)
!335 = !DILocation(line: 111, column: 1, scope: !313)
