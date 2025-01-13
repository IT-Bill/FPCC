; ModuleID = 'expint3.ll'
source_filename = "expint3.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { double*, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"expint3.c\00", align 1
@expint3_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([24 x double], [24 x double]* @expint3_data, i32 0, i32 0), i32 23, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8
@expint3a_cs = internal global %struct.cheb_series_struct { double* getelementptr inbounds ([23 x double], [23 x double]* @expint3a_data, i32 0, i32 0), i32 22, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"gsl_sf_expint_3_e(x, &result)\00", align 1
@expint3_data = internal global [24 x double] [double 0x3FF44EA2FF136FD0, double 0xBFCFDA334A790CCC, double 0x3FB49D5DCC7373C1, double 0xBF9A642AD9C86EF1, double 0x3F7F210CF36A23F4, double 0xBF60A2AD639A2371, double 0x3F40156B3FB1FD3B, double 0xBF1C3A6EC82A9B4A, double 0x3EF6993F5A050C21, double 0xBED0987AD399599C, double 0x3EA67A9AA92B63B2, double 0xBE7C38A0E24E9B03, double 0x3E507ED579D6B29F, double 0xBE2207F6041337C3, double 0x3DF2800259E967D1, double 0xBDC1E0B756287962, double 0x3D9052C1BCD68276, double -4.013652e-13, double 4.123340e-14, double -4.033800e-15, double 3.766000e-16, double -3.360000e-17, double 2.900000e-18, double -2.000000e-19], align 16
@expint3a_data = internal global [23 x double] [double 0x3FFED52EB4C12BF8, double 0xBFA1E242B7DA0165, double 0x3F57C328F8072947, double 0xBF1765B12C250B5C, double 0x3EDD966E82FA6A76, double 0xBEA662F861FD5F8F, double 0x3E73712104D60093, double 0xBE42DC469C60CE74, double 0x3E140D80C3F8A9BD, double 0xBDE70B1F33D510A2, double 0x3DBC51647913B2B9, double 0xBD927409C8B94787, double 7.201041e-13, double -1.294906e-13, double 2.428700e-14, double -4.733100e-15, double 9.553100e-16, double -1.991000e-16, double 4.280000e-17, double -9.400000e-18, double 2.100000e-18, double -5.000000e-19, double 1.000000e-19], align 16
@0 = private unnamed_addr constant [18 x i8] c"gsl_sf_expint_3_e\00"
@1 = private unnamed_addr constant [11 x i8] c"expint3.ll\00"
@2 = private unnamed_addr constant [12 x i8] c"cheb_eval_e\00"
@3 = private unnamed_addr constant [11 x i8] c"expint3.ll\00"
@4 = private unnamed_addr constant [16 x i8] c"gsl_sf_expint_3\00"
@5 = private unnamed_addr constant [11 x i8] c"expint3.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_expint_3_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !68 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !80, metadata !81), !dbg !82
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !83, metadata !81), !dbg !84
  call void @llvm.dbg.declare(metadata double* %6, metadata !85, metadata !81), !dbg !86
  store double 0x3FEC9349C4C603ED, double* %6, align 8, !dbg !86
  %12 = load double, double* %4, align 8, !dbg !87
  %13 = fcmp olt double %12, 0.000000e+00, !dbg !89
  %14 = call i1 @fCmpInstHandler(double %12, double 0.000000e+00, i1 %13, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041078368, i32 106, i32 8), !dbg !90
  br i1 %14, label %15, label %24, !dbg !90

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !91, !llvm.loop !93

; <label>:16:                                     ; preds = %15
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !94
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !94
  store double 0x7FF8000000000000, double* %18, align 8, !dbg !94
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !94
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !94
  store double 0x7FF8000000000000, double* %20, align 8, !dbg !94
  br label %21, !dbg !94, !llvm.loop !97

; <label>:21:                                     ; preds = %16
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 107, i32 1), !dbg !99
  store i32 1, i32* %3, align 4, !dbg !99
  br label %106, !dbg !99
                                                  ; No predecessors!
  br label %23, !dbg !102

; <label>:23:                                     ; preds = %22
  br label %106, !dbg !104

; <label>:24:                                     ; preds = %2
  %25 = load double, double* %4, align 8, !dbg !105
  %26 = fcmp olt double %25, 0x3EE4519884312501, !dbg !107
  %27 = call i1 @fCmpInstHandler(double %25, double 0x3EE4519884312501, i1 %26, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041091744, i32 109, i32 13), !dbg !108
  br i1 %27, label %28, label %34, !dbg !108

; <label>:28:                                     ; preds = %24
  %29 = load double, double* %4, align 8, !dbg !109
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !111
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !112
  store double %29, double* %31, align 8, !dbg !113
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !114
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !115
  store double 0.000000e+00, double* %33, align 8, !dbg !116
  store i32 0, i32* %3, align 4, !dbg !117
  br label %106, !dbg !117

; <label>:34:                                     ; preds = %24
  %35 = load double, double* %4, align 8, !dbg !118
  %36 = fcmp ole double %35, 2.000000e+00, !dbg !120
  %37 = call i1 @fCmpInstHandler(double %35, double 2.000000e+00, i1 %36, i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041098560, i32 114, i32 13), !dbg !121
  br i1 %37, label %38, label %60, !dbg !121

; <label>:38:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata double* %7, metadata !122, metadata !81), !dbg !124
  %39 = load double, double* %4, align 8, !dbg !125
  %40 = load double, double* %4, align 8, !dbg !126
  %41 = fmul double %39, %40, !dbg !127
  call void @fMulHandler(double %39, double %40, double %41, i64 94242041100792, i64 94242041101144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041101552, i32 115, i32 23), !dbg !128
  %42 = load double, double* %4, align 8, !dbg !128
  %43 = fmul double %41, %42, !dbg !129
  call void @fMulHandler(double %41, double %42, double %43, i64 94242041101552, i64 94242041101944, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041102352, i32 115, i32 25), !dbg !130
  %44 = fdiv double %43, 4.000000e+00, !dbg !130
  call void @fDivHandler(double %43, double 4.000000e+00, double %44, i64 94242041102352, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041102864, i32 115, i32 27), !dbg !131
  %45 = fsub double %44, 1.000000e+00, !dbg !131
  call void @fSubHandler(double %44, double 1.000000e+00, double %45, i64 94242041102864, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041103280, i32 115, i32 32), !dbg !124
  store double %45, double* %7, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !132, metadata !81), !dbg !133
  %46 = load double, double* %7, align 8, !dbg !134
  %47 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @expint3_cs, double %46, %struct.gsl_sf_result_struct* %8), !dbg !135
  %48 = load double, double* %4, align 8, !dbg !136
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !137
  %50 = load double, double* %49, align 8, !dbg !137
  %51 = fmul double %48, %50, !dbg !138
  call void @fMulHandler(double %48, double %50, double %51, i64 94242041107656, i64 94242041108456, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041110128, i32 118, i32 21), !dbg !139
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !139
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !140
  store double %51, double* %53, align 8, !dbg !141
  %54 = load double, double* %4, align 8, !dbg !142
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !143
  %56 = load double, double* %55, align 8, !dbg !143
  %57 = fmul double %54, %56, !dbg !144
  call void @fMulHandler(double %54, double %56, double %57, i64 94242041111768, i64 94242041112600, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041114272, i32 119, i32 21), !dbg !145
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !145
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !146
  store double %57, double* %59, align 8, !dbg !147
  store i32 0, i32* %3, align 4, !dbg !148
  br label %106, !dbg !148

; <label>:60:                                     ; preds = %34
  %61 = load double, double* %4, align 8, !dbg !149
  %62 = call double @pow(double 0x404205966F2B4F12, double 0x3FD5555555555555) #6, !dbg !151
  call void @callTwoArgsHandler(i32 15, double 0x404205966F2B4F12, double 0x3FD5555555555555, double %62, i64 0, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041118888, i32 122, i32 15), !dbg !152
  %63 = fcmp olt double %61, %62, !dbg !152
  %64 = call i1 @fCmpInstHandler(double %61, double %62, i1 %63, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041119360, i32 122, i32 13), !dbg !153
  br i1 %64, label %65, label %101, !dbg !153

; <label>:65:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata double* %9, metadata !154, metadata !81), !dbg !156
  %66 = load double, double* %4, align 8, !dbg !157
  %67 = load double, double* %4, align 8, !dbg !158
  %68 = fmul double %66, %67, !dbg !159
  call void @fMulHandler(double %66, double %67, double %68, i64 94242041121624, i64 94242041121976, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041122384, i32 123, i32 29), !dbg !160
  %69 = load double, double* %4, align 8, !dbg !160
  %70 = fmul double %68, %69, !dbg !161
  call void @fMulHandler(double %68, double %69, double %70, i64 94242041122384, i64 94242041123816, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041124224, i32 123, i32 31), !dbg !162
  %71 = fdiv double 1.600000e+01, %70, !dbg !162
  call void @fDivHandler(double 1.600000e+01, double %70, double %71, i64 0, i64 94242041124224, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041124736, i32 123, i32 26), !dbg !163
  %72 = fsub double %71, 1.000000e+00, !dbg !163
  call void @fSubHandler(double %71, double 1.000000e+00, double %72, i64 94242041124736, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041125152, i32 123, i32 35), !dbg !156
  store double %72, double* %9, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata double* %10, metadata !164, metadata !81), !dbg !165
  %73 = load double, double* %4, align 8, !dbg !166
  %74 = fsub double -0.000000e+00, %73, !dbg !167
  call void @fSubHandler(double -0.000000e+00, double %73, double %74, i64 0, i64 94242041128312, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041128752, i32 124, i32 26), !dbg !168
  %75 = load double, double* %4, align 8, !dbg !168
  %76 = fmul double %74, %75, !dbg !169
  call void @fMulHandler(double %74, double %75, double %76, i64 94242041128752, i64 94242041129144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041129552, i32 124, i32 28), !dbg !170
  %77 = load double, double* %4, align 8, !dbg !170
  %78 = fmul double %76, %77, !dbg !171
  call void @fMulHandler(double %76, double %77, double %78, i64 94242041129552, i64 94242041129944, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041130352, i32 124, i32 30), !dbg !172
  %79 = call double @exp(double %78) #6, !dbg !172
  call void @callOneArgHandler(i32 11, double %78, double %79, i64 94242041130352, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041131520, i32 124, i32 22), !dbg !173
  %80 = load double, double* %4, align 8, !dbg !173
  %81 = fmul double 3.000000e+00, %80, !dbg !174
  call void @fMulHandler(double 3.000000e+00, double %80, double %81, i64 0, i64 94242041132008, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041132512, i32 124, i32 38), !dbg !175
  %82 = load double, double* %4, align 8, !dbg !175
  %83 = fmul double %81, %82, !dbg !176
  call void @fMulHandler(double %81, double %82, double %83, i64 94242041132512, i64 94242041132872, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041133280, i32 124, i32 40), !dbg !177
  %84 = fdiv double %79, %83, !dbg !177
  call void @fDivHandler(double %79, double %83, double %84, i64 94242041131520, i64 94242041133280, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041133696, i32 124, i32 33), !dbg !165
  store double %84, double* %10, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !178, metadata !81), !dbg !179
  %85 = load double, double* %9, align 8, !dbg !180
  %86 = call i32 @cheb_eval_e(%struct.cheb_series_struct* @expint3a_cs, double %85, %struct.gsl_sf_result_struct* %11), !dbg !181
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !182
  %88 = load double, double* %87, align 8, !dbg !182
  %89 = load double, double* %10, align 8, !dbg !183
  %90 = fmul double %88, %89, !dbg !184
  call void @fMulHandler(double %88, double %89, double %90, i64 94242041138296, i64 94242041139944, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041140352, i32 127, i32 47), !dbg !185
  %91 = fsub double 0x3FEC9349C4C603ED, %90, !dbg !185
  call void @fSubHandler(double 0x3FEC9349C4C603ED, double %90, double %91, i64 0, i64 94242041140352, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041140768, i32 127, i32 32), !dbg !186
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !186
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 0, !dbg !187
  store double %91, double* %93, align 8, !dbg !188
  %94 = load double, double* %10, align 8, !dbg !189
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !190
  %96 = load double, double* %95, align 8, !dbg !190
  %97 = fmul double %94, %96, !dbg !191
  call void @fMulHandler(double %94, double %96, double %97, i64 94242041142408, i64 94242041143240, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041144912, i32 128, i32 54), !dbg !192
  %98 = fadd double 0x3CAC9349C4C603ED, %97, !dbg !192
  call void @fAddHandler(double 0x3CAC9349C4C603ED, double %97, double %98, i64 0, i64 94242041144912, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0), i64 94242041145392, i32 128, i32 50), !dbg !193
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !193
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 1, !dbg !194
  store double %98, double* %100, align 8, !dbg !195
  store i32 0, i32* %3, align 4, !dbg !196
  br label %106, !dbg !196

; <label>:101:                                    ; preds = %60
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !197
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !199
  store double 0x3FEC9349C4C603ED, double* %103, align 8, !dbg !200
  %104 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !201
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %104, i32 0, i32 1, !dbg !202
  store double 0x3CAC9349C4C603ED, double* %105, align 8, !dbg !203
  store i32 0, i32* %3, align 4, !dbg !204
  br label %106, !dbg !204

; <label>:106:                                    ; preds = %101, %65, %38, %28, %23, %21
  %107 = load i32, i32* %3, align 4, !dbg !205
  ret i32 %107, !dbg !205
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cheb_eval_e(%struct.cheb_series_struct*, double, %struct.gsl_sf_result_struct*) #3 !dbg !206 {
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
  call void @llvm.dbg.declare(metadata %struct.cheb_series_struct** %4, metadata !212, metadata !81), !dbg !213
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !214, metadata !81), !dbg !215
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !216, metadata !81), !dbg !217
  call void @llvm.dbg.declare(metadata i32* %7, metadata !218, metadata !81), !dbg !219
  call void @llvm.dbg.declare(metadata double* %8, metadata !220, metadata !81), !dbg !221
  store double 0.000000e+00, double* %8, align 8, !dbg !221
  call void @llvm.dbg.declare(metadata double* %9, metadata !222, metadata !81), !dbg !223
  store double 0.000000e+00, double* %9, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata double* %10, metadata !224, metadata !81), !dbg !225
  %15 = load double, double* %5, align 8, !dbg !226
  %16 = fmul double 2.000000e+00, %15, !dbg !227
  call void @fMulHandler(double 2.000000e+00, double %15, double %16, i64 0, i64 94242041107032, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041169952, i32 11, i32 19), !dbg !228
  %17 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !228
  %18 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %17, i32 0, i32 2, !dbg !229
  %19 = load double, double* %18, align 8, !dbg !229
  %20 = fsub double %16, %19, !dbg !230
  call void @fSubHandler(double %16, double %19, double %20, i64 94242041169952, i64 94242041055704, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041172688, i32 11, i32 22), !dbg !231
  %21 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !231
  %22 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %21, i32 0, i32 3, !dbg !232
  %23 = load double, double* %22, align 8, !dbg !232
  %24 = fsub double %20, %23, !dbg !233
  call void @fSubHandler(double %20, double %23, double %24, i64 94242041172688, i64 94242041173976, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041175648, i32 11, i32 30), !dbg !234
  %25 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !234
  %26 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %25, i32 0, i32 3, !dbg !235
  %27 = load double, double* %26, align 8, !dbg !235
  %28 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !236
  %29 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %28, i32 0, i32 2, !dbg !237
  %30 = load double, double* %29, align 8, !dbg !237
  %31 = fsub double %27, %30, !dbg !238
  call void @fSubHandler(double %27, double %30, double %31, i64 94242041176872, i64 94242041179352, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041181024, i32 11, i32 48), !dbg !239
  %32 = fdiv double %24, %31, !dbg !239
  call void @fDivHandler(double %24, double %31, double %32, i64 94242041175648, i64 94242041181024, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041181440, i32 11, i32 39), !dbg !225
  store double %32, double* %10, align 8, !dbg !225
  call void @llvm.dbg.declare(metadata double* %11, metadata !240, metadata !81), !dbg !241
  %33 = load double, double* %10, align 8, !dbg !242
  %34 = fmul double 2.000000e+00, %33, !dbg !243
  call void @fMulHandler(double 2.000000e+00, double %33, double %34, i64 0, i64 94242041184488, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041184896, i32 12, i32 19), !dbg !241
  store double %34, double* %11, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata double* %12, metadata !244, metadata !81), !dbg !245
  store double 0.000000e+00, double* %12, align 8, !dbg !245
  %35 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !246
  %36 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %35, i32 0, i32 1, !dbg !248
  %37 = load i32, i32* %36, align 8, !dbg !248
  store i32 %37, i32* %7, align 4, !dbg !249
  br label %38, !dbg !250

; <label>:38:                                     ; preds = %77, %3
  %39 = load i32, i32* %7, align 4, !dbg !251
  %40 = icmp sge i32 %39, 1, !dbg !254
  %41 = sext i32 %39 to i64, !dbg !255
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 1, i1 %40, i32 39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041193472, i32 16, i32 23), !dbg !255
  br i1 %42, label %43, label %80, !dbg !255

; <label>:43:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %13, metadata !256, metadata !81), !dbg !258
  %44 = load double, double* %8, align 8, !dbg !259
  store double %44, double* %13, align 8, !dbg !258
  %45 = load double, double* %11, align 8, !dbg !260
  %46 = load double, double* %8, align 8, !dbg !261
  %47 = fmul double %45, %46, !dbg !262
  call void @fMulHandler(double %45, double %46, double %47, i64 94242041197672, i64 94242041198056, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041198464, i32 18, i32 11), !dbg !263
  %48 = load double, double* %9, align 8, !dbg !263
  %49 = fsub double %47, %48, !dbg !264
  call void @fSubHandler(double %47, double %48, double %49, i64 94242041198464, i64 94242041198856, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041199264, i32 18, i32 14), !dbg !265
  %50 = load i32, i32* %7, align 4, !dbg !265
  %51 = sext i32 %50 to i64, !dbg !266
  %52 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !266
  %53 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %52, i32 0, i32 0, !dbg !267
  %54 = load double*, double** %53, align 8, !dbg !267
  %55 = getelementptr inbounds double, double* %54, i64 %51, !dbg !266
  %56 = load double, double* %55, align 8, !dbg !266
  %57 = fadd double %49, %56, !dbg !268
  call void @fAddHandler(double %49, double %56, double %57, i64 94242041199264, i64 94242041204312, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041204432, i32 18, i32 19), !dbg !269
  store double %57, double* %8, align 8, !dbg !269
  %58 = load double, double* %11, align 8, !dbg !270
  %59 = load double, double* %13, align 8, !dbg !271
  %60 = fmul double %58, %59, !dbg !272
  call void @fMulHandler(double %58, double %59, double %60, i64 94242041205240, i64 94242041205624, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041206032, i32 19, i32 17), !dbg !273
  %61 = call double @fabs(double %60) #1, !dbg !273
  %62 = load double, double* %9, align 8, !dbg !274
  %63 = call double @fabs(double %62) #1, !dbg !275
  %64 = fadd double %61, %63, !dbg !277
  call void @fAddHandler(double %61, double %63, double %64, i64 94242041206784, i64 94242041207744, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041208224, i32 19, i32 24), !dbg !278
  %65 = load i32, i32* %7, align 4, !dbg !278
  %66 = sext i32 %65 to i64, !dbg !279
  %67 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !279
  %68 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %67, i32 0, i32 0, !dbg !280
  %69 = load double*, double** %68, align 8, !dbg !280
  %70 = getelementptr inbounds double, double* %69, i64 %66, !dbg !279
  %71 = load double, double* %70, align 8, !dbg !279
  %72 = call double @fabs(double %71) #1, !dbg !281
  %73 = fadd double %64, %72, !dbg !283
  call void @fAddHandler(double %64, double %72, double %73, i64 94242041208224, i64 94242041213456, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041213936, i32 19, i32 35), !dbg !284
  %74 = load double, double* %12, align 8, !dbg !284
  %75 = fadd double %74, %73, !dbg !284
  call void @fAddHandler(double %74, double %73, double %75, i64 94242041214328, i64 94242041213936, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041214736, i32 19, i32 7), !dbg !284
  store double %75, double* %12, align 8, !dbg !284
  %76 = load double, double* %13, align 8, !dbg !285
  store double %76, double* %9, align 8, !dbg !286
  br label %77, !dbg !287

; <label>:77:                                     ; preds = %43
  %78 = load i32, i32* %7, align 4, !dbg !288
  %79 = add nsw i32 %78, -1, !dbg !288
  store i32 %79, i32* %7, align 4, !dbg !288
  br label %38, !dbg !290, !llvm.loop !291

; <label>:80:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata double* %14, metadata !293, metadata !81), !dbg !295
  %81 = load double, double* %8, align 8, !dbg !296
  store double %81, double* %14, align 8, !dbg !295
  %82 = load double, double* %10, align 8, !dbg !297
  %83 = load double, double* %8, align 8, !dbg !298
  %84 = fmul double %82, %83, !dbg !299
  call void @fMulHandler(double %82, double %83, double %84, i64 94242041223848, i64 94242041224232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041224640, i32 25, i32 10), !dbg !300
  %85 = load double, double* %9, align 8, !dbg !300
  %86 = fsub double %84, %85, !dbg !301
  call void @fSubHandler(double %84, double %85, double %86, i64 94242041224640, i64 94242041225032, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041225440, i32 25, i32 13), !dbg !302
  %87 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !302
  %88 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %87, i32 0, i32 0, !dbg !303
  %89 = load double*, double** %88, align 8, !dbg !303
  %90 = getelementptr inbounds double, double* %89, i64 0, !dbg !302
  %91 = load double, double* %90, align 8, !dbg !302
  %92 = fmul double 5.000000e-01, %91, !dbg !304
  call void @fMulHandler(double 5.000000e-01, double %91, double %92, i64 0, i64 94242041230072, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041230288, i32 25, i32 24), !dbg !305
  %93 = fadd double %86, %92, !dbg !305
  call void @fAddHandler(double %86, double %92, double %93, i64 94242041225440, i64 94242041230288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041230672, i32 25, i32 18), !dbg !306
  store double %93, double* %8, align 8, !dbg !306
  %94 = load double, double* %10, align 8, !dbg !307
  %95 = load double, double* %14, align 8, !dbg !308
  %96 = fmul double %94, %95, !dbg !309
  call void @fMulHandler(double %94, double %95, double %96, i64 94242041231480, i64 94242041231864, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041232272, i32 26, i32 16), !dbg !310
  %97 = call double @fabs(double %96) #1, !dbg !310
  %98 = load double, double* %9, align 8, !dbg !311
  %99 = call double @fabs(double %98) #1, !dbg !312
  %100 = fadd double %97, %99, !dbg !314
  call void @fAddHandler(double %97, double %99, double %100, i64 94242041232752, i64 94242041233680, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041234160, i32 26, i32 23), !dbg !315
  %101 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !315
  %102 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %101, i32 0, i32 0, !dbg !316
  %103 = load double*, double** %102, align 8, !dbg !316
  %104 = getelementptr inbounds double, double* %103, i64 0, !dbg !315
  %105 = load double, double* %104, align 8, !dbg !315
  %106 = call double @fabs(double %105) #1, !dbg !317
  %107 = fmul double 5.000000e-01, %106, !dbg !319
  call void @fMulHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94242041238912, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041239424, i32 26, i32 40), !dbg !320
  %108 = fadd double %100, %107, !dbg !320
  call void @fAddHandler(double %100, double %107, double %108, i64 94242041234160, i64 94242041239424, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041239808, i32 26, i32 34), !dbg !321
  %109 = load double, double* %12, align 8, !dbg !321
  %110 = fadd double %109, %108, !dbg !321
  call void @fAddHandler(double %109, double %108, double %110, i64 94242041240200, i64 94242041239808, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041240608, i32 26, i32 7), !dbg !321
  store double %110, double* %12, align 8, !dbg !321
  %111 = load double, double* %8, align 8, !dbg !322
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !323
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !324
  store double %111, double* %113, align 8, !dbg !325
  %114 = load double, double* %12, align 8, !dbg !326
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !327
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94242041244024, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041244496, i32 30, i32 33), !dbg !328
  %116 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !328
  %117 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %116, i32 0, i32 1, !dbg !329
  %118 = load i32, i32* %117, align 8, !dbg !329
  %119 = sext i32 %118 to i64, !dbg !330
  %120 = load %struct.cheb_series_struct*, %struct.cheb_series_struct** %4, align 8, !dbg !330
  %121 = getelementptr inbounds %struct.cheb_series_struct, %struct.cheb_series_struct* %120, i32 0, i32 0, !dbg !331
  %122 = load double*, double** %121, align 8, !dbg !331
  %123 = getelementptr inbounds double, double* %122, i64 %119, !dbg !330
  %124 = load double, double* %123, align 8, !dbg !330
  %125 = call double @fabs(double %124) #1, !dbg !332
  %126 = fadd double %115, %125, !dbg !333
  call void @fAddHandler(double %115, double %125, double %126, i64 94242041244496, i64 94242041251824, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @3, i32 0, i32 0), i64 94242041252304, i32 30, i32 37), !dbg !334
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !334
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !335
  store double %126, double* %128, align 8, !dbg !336
  ret i32 0, !dbg !337
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind uwtable
define double @gsl_sf_expint_3(double) #0 !dbg !338 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !341, metadata !81), !dbg !342
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !343, metadata !81), !dbg !344
  call void @llvm.dbg.declare(metadata i32* %5, metadata !345, metadata !81), !dbg !344
  %6 = load double, double* %3, align 8, !dbg !344
  %7 = call i32 @gsl_sf_expint_3_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !344
  store i32 %7, i32* %5, align 4, !dbg !344
  %8 = load i32, i32* %5, align 4, !dbg !346
  %9 = icmp ne i32 %8, 0, !dbg !346
  %10 = sext i32 %8 to i64, !dbg !344
  %11 = call i1 @iCmpInstHandler(i64 %10, i64 0, i1 %9, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i64 94242041261600, i32 145, i32 3), !dbg !344
  br i1 %11, label %12, label %18, !dbg !344

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !348, !llvm.loop !351

; <label>:13:                                     ; preds = %12
  %14 = load i32, i32* %5, align 4, !dbg !353
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 145, i32 %14), !dbg !353
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !353
  %16 = load double, double* %15, align 8, !dbg !353
  store double %16, double* %2, align 8, !dbg !353
  br label %21, !dbg !353
                                                  ; No predecessors!
  br label %18, !dbg !356

; <label>:18:                                     ; preds = %17, %1
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !358
  %20 = load double, double* %19, align 8, !dbg !358
  store double %20, double* %2, align 8, !dbg !358
  br label %21, !dbg !358

; <label>:21:                                     ; preds = %18, %13
  %22 = load double, double* %2, align 8, !dbg !360
  ret double %22, !dbg !360
}

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
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!64, !65, !66}
!llvm.ident = !{!67}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "expint3.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !55, !59, !60}
!42 = distinct !DIGlobalVariable(name: "expint3_cs", scope: !0, file: !1, line: 58, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @expint3_cs)
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
!55 = distinct !DIGlobalVariable(name: "expint3_data", scope: !0, file: !1, line: 32, type: !56, isLocal: true, isDefinition: true, variable: [24 x double]* @expint3_data)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1536, align: 64, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 24)
!59 = distinct !DIGlobalVariable(name: "expint3a_cs", scope: !0, file: !1, line: 90, type: !43, isLocal: true, isDefinition: true, variable: %struct.cheb_series_struct* @expint3a_cs)
!60 = distinct !DIGlobalVariable(name: "expint3a_data", scope: !0, file: !1, line: 65, type: !61, isLocal: true, isDefinition: true, variable: [23 x double]* @expint3a_data)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1472, align: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 23)
!64 = !{i32 2, !"Dwarf Version", i32 4}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"PIC Level", i32 2}
!67 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!68 = distinct !DISubprogram(name: "gsl_sf_expint_3_e", scope: !1, file: !1, line: 100, type: !69, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!69 = !DISubroutineType(types: !70)
!70 = !{!51, !71, !72}
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !74, line: 41, baseType: !75)
!74 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !74, line: 37, size: 128, align: 64, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !75, file: !74, line: 38, baseType: !49, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !75, file: !74, line: 39, baseType: !49, size: 64, align: 64, offset: 64)
!79 = !{}
!80 = !DILocalVariable(name: "x", arg: 1, scope: !68, file: !1, line: 100, type: !71)
!81 = !DIExpression()
!82 = !DILocation(line: 100, column: 36, scope: !68)
!83 = !DILocalVariable(name: "result", arg: 2, scope: !68, file: !1, line: 100, type: !72)
!84 = !DILocation(line: 100, column: 55, scope: !68)
!85 = !DILocalVariable(name: "val_infinity", scope: !68, file: !1, line: 102, type: !71)
!86 = !DILocation(line: 102, column: 16, scope: !68)
!87 = !DILocation(line: 106, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !68, file: !1, line: 106, column: 6)
!89 = !DILocation(line: 106, column: 8, scope: !88)
!90 = !DILocation(line: 106, column: 6, scope: !68)
!91 = !DILocation(line: 107, column: 5, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 106, column: 15)
!93 = distinct !{!93, !91}
!94 = !DILocation(line: 107, column: 5, scope: !95)
!95 = !DILexicalBlockFile(scope: !96, file: !1, discriminator: 1)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 107, column: 5)
!97 = distinct !{!97, !98}
!98 = !DILocation(line: 107, column: 5, scope: !96)
!99 = !DILocation(line: 107, column: 5, scope: !100)
!100 = !DILexicalBlockFile(scope: !101, file: !1, discriminator: 2)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 107, column: 5)
!102 = !DILocation(line: 107, column: 5, scope: !103)
!103 = !DILexicalBlockFile(scope: !96, file: !1, discriminator: 3)
!104 = !DILocation(line: 108, column: 3, scope: !92)
!105 = !DILocation(line: 109, column: 11, scope: !106)
!106 = distinct !DILexicalBlock(scope: !88, file: !1, line: 109, column: 11)
!107 = !DILocation(line: 109, column: 13, scope: !106)
!108 = !DILocation(line: 109, column: 11, scope: !88)
!109 = !DILocation(line: 110, column: 19, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 109, column: 42)
!111 = !DILocation(line: 110, column: 5, scope: !110)
!112 = !DILocation(line: 110, column: 13, scope: !110)
!113 = !DILocation(line: 110, column: 17, scope: !110)
!114 = !DILocation(line: 111, column: 5, scope: !110)
!115 = !DILocation(line: 111, column: 13, scope: !110)
!116 = !DILocation(line: 111, column: 17, scope: !110)
!117 = !DILocation(line: 112, column: 5, scope: !110)
!118 = !DILocation(line: 114, column: 11, scope: !119)
!119 = distinct !DILexicalBlock(scope: !106, file: !1, line: 114, column: 11)
!120 = !DILocation(line: 114, column: 13, scope: !119)
!121 = !DILocation(line: 114, column: 11, scope: !106)
!122 = !DILocalVariable(name: "t", scope: !123, file: !1, line: 115, type: !71)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 114, column: 21)
!124 = !DILocation(line: 115, column: 18, scope: !123)
!125 = !DILocation(line: 115, column: 22, scope: !123)
!126 = !DILocation(line: 115, column: 24, scope: !123)
!127 = !DILocation(line: 115, column: 23, scope: !123)
!128 = !DILocation(line: 115, column: 26, scope: !123)
!129 = !DILocation(line: 115, column: 25, scope: !123)
!130 = !DILocation(line: 115, column: 27, scope: !123)
!131 = !DILocation(line: 115, column: 32, scope: !123)
!132 = !DILocalVariable(name: "result_c", scope: !123, file: !1, line: 116, type: !73)
!133 = !DILocation(line: 116, column: 19, scope: !123)
!134 = !DILocation(line: 117, column: 30, scope: !123)
!135 = !DILocation(line: 117, column: 5, scope: !123)
!136 = !DILocation(line: 118, column: 19, scope: !123)
!137 = !DILocation(line: 118, column: 32, scope: !123)
!138 = !DILocation(line: 118, column: 21, scope: !123)
!139 = !DILocation(line: 118, column: 5, scope: !123)
!140 = !DILocation(line: 118, column: 13, scope: !123)
!141 = !DILocation(line: 118, column: 17, scope: !123)
!142 = !DILocation(line: 119, column: 19, scope: !123)
!143 = !DILocation(line: 119, column: 32, scope: !123)
!144 = !DILocation(line: 119, column: 21, scope: !123)
!145 = !DILocation(line: 119, column: 5, scope: !123)
!146 = !DILocation(line: 119, column: 13, scope: !123)
!147 = !DILocation(line: 119, column: 17, scope: !123)
!148 = !DILocation(line: 120, column: 5, scope: !123)
!149 = !DILocation(line: 122, column: 11, scope: !150)
!150 = distinct !DILexicalBlock(scope: !119, file: !1, line: 122, column: 11)
!151 = !DILocation(line: 122, column: 15, scope: !150)
!152 = !DILocation(line: 122, column: 13, scope: !150)
!153 = !DILocation(line: 122, column: 11, scope: !119)
!154 = !DILocalVariable(name: "t", scope: !155, file: !1, line: 123, type: !71)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 122, column: 51)
!156 = !DILocation(line: 123, column: 18, scope: !155)
!157 = !DILocation(line: 123, column: 28, scope: !155)
!158 = !DILocation(line: 123, column: 30, scope: !155)
!159 = !DILocation(line: 123, column: 29, scope: !155)
!160 = !DILocation(line: 123, column: 32, scope: !155)
!161 = !DILocation(line: 123, column: 31, scope: !155)
!162 = !DILocation(line: 123, column: 26, scope: !155)
!163 = !DILocation(line: 123, column: 35, scope: !155)
!164 = !DILocalVariable(name: "s", scope: !155, file: !1, line: 124, type: !71)
!165 = !DILocation(line: 124, column: 18, scope: !155)
!166 = !DILocation(line: 124, column: 27, scope: !155)
!167 = !DILocation(line: 124, column: 26, scope: !155)
!168 = !DILocation(line: 124, column: 29, scope: !155)
!169 = !DILocation(line: 124, column: 28, scope: !155)
!170 = !DILocation(line: 124, column: 31, scope: !155)
!171 = !DILocation(line: 124, column: 30, scope: !155)
!172 = !DILocation(line: 124, column: 22, scope: !155)
!173 = !DILocation(line: 124, column: 39, scope: !155)
!174 = !DILocation(line: 124, column: 38, scope: !155)
!175 = !DILocation(line: 124, column: 41, scope: !155)
!176 = !DILocation(line: 124, column: 40, scope: !155)
!177 = !DILocation(line: 124, column: 33, scope: !155)
!178 = !DILocalVariable(name: "result_c", scope: !155, file: !1, line: 125, type: !73)
!179 = !DILocation(line: 125, column: 19, scope: !155)
!180 = !DILocation(line: 126, column: 31, scope: !155)
!181 = !DILocation(line: 126, column: 5, scope: !155)
!182 = !DILocation(line: 127, column: 43, scope: !155)
!183 = !DILocation(line: 127, column: 49, scope: !155)
!184 = !DILocation(line: 127, column: 47, scope: !155)
!185 = !DILocation(line: 127, column: 32, scope: !155)
!186 = !DILocation(line: 127, column: 5, scope: !155)
!187 = !DILocation(line: 127, column: 13, scope: !155)
!188 = !DILocation(line: 127, column: 17, scope: !155)
!189 = !DILocation(line: 128, column: 52, scope: !155)
!190 = !DILocation(line: 128, column: 65, scope: !155)
!191 = !DILocation(line: 128, column: 54, scope: !155)
!192 = !DILocation(line: 128, column: 50, scope: !155)
!193 = !DILocation(line: 128, column: 5, scope: !155)
!194 = !DILocation(line: 128, column: 13, scope: !155)
!195 = !DILocation(line: 128, column: 17, scope: !155)
!196 = !DILocation(line: 129, column: 5, scope: !155)
!197 = !DILocation(line: 132, column: 5, scope: !198)
!198 = distinct !DILexicalBlock(scope: !150, file: !1, line: 131, column: 8)
!199 = !DILocation(line: 132, column: 13, scope: !198)
!200 = !DILocation(line: 132, column: 17, scope: !198)
!201 = !DILocation(line: 133, column: 5, scope: !198)
!202 = !DILocation(line: 133, column: 13, scope: !198)
!203 = !DILocation(line: 133, column: 17, scope: !198)
!204 = !DILocation(line: 134, column: 5, scope: !198)
!205 = !DILocation(line: 136, column: 1, scope: !68)
!206 = distinct !DISubprogram(name: "cheb_eval_e", scope: !207, file: !207, line: 3, type: !208, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!207 = !DIFile(filename: "./cheb_eval.c", directory: "/fpcc/gsl-2.5/specfunc")
!208 = !DISubroutineType(types: !209)
!209 = !{!51, !210, !71, !72}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!212 = !DILocalVariable(name: "cs", arg: 1, scope: !206, file: !207, line: 3, type: !210)
!213 = !DILocation(line: 3, column: 33, scope: !206)
!214 = !DILocalVariable(name: "x", arg: 2, scope: !206, file: !207, line: 4, type: !71)
!215 = !DILocation(line: 4, column: 26, scope: !206)
!216 = !DILocalVariable(name: "result", arg: 3, scope: !206, file: !207, line: 5, type: !72)
!217 = !DILocation(line: 5, column: 29, scope: !206)
!218 = !DILocalVariable(name: "j", scope: !206, file: !207, line: 7, type: !51)
!219 = !DILocation(line: 7, column: 7, scope: !206)
!220 = !DILocalVariable(name: "d", scope: !206, file: !207, line: 8, type: !49)
!221 = !DILocation(line: 8, column: 10, scope: !206)
!222 = !DILocalVariable(name: "dd", scope: !206, file: !207, line: 9, type: !49)
!223 = !DILocation(line: 9, column: 10, scope: !206)
!224 = !DILocalVariable(name: "y", scope: !206, file: !207, line: 11, type: !49)
!225 = !DILocation(line: 11, column: 10, scope: !206)
!226 = !DILocation(line: 11, column: 20, scope: !206)
!227 = !DILocation(line: 11, column: 19, scope: !206)
!228 = !DILocation(line: 11, column: 24, scope: !206)
!229 = !DILocation(line: 11, column: 28, scope: !206)
!230 = !DILocation(line: 11, column: 22, scope: !206)
!231 = !DILocation(line: 11, column: 32, scope: !206)
!232 = !DILocation(line: 11, column: 36, scope: !206)
!233 = !DILocation(line: 11, column: 30, scope: !206)
!234 = !DILocation(line: 11, column: 42, scope: !206)
!235 = !DILocation(line: 11, column: 46, scope: !206)
!236 = !DILocation(line: 11, column: 50, scope: !206)
!237 = !DILocation(line: 11, column: 54, scope: !206)
!238 = !DILocation(line: 11, column: 48, scope: !206)
!239 = !DILocation(line: 11, column: 39, scope: !206)
!240 = !DILocalVariable(name: "y2", scope: !206, file: !207, line: 12, type: !49)
!241 = !DILocation(line: 12, column: 10, scope: !206)
!242 = !DILocation(line: 12, column: 21, scope: !206)
!243 = !DILocation(line: 12, column: 19, scope: !206)
!244 = !DILocalVariable(name: "e", scope: !206, file: !207, line: 14, type: !49)
!245 = !DILocation(line: 14, column: 10, scope: !206)
!246 = !DILocation(line: 16, column: 11, scope: !247)
!247 = distinct !DILexicalBlock(scope: !206, file: !207, line: 16, column: 3)
!248 = !DILocation(line: 16, column: 15, scope: !247)
!249 = !DILocation(line: 16, column: 9, scope: !247)
!250 = !DILocation(line: 16, column: 7, scope: !247)
!251 = !DILocation(line: 16, column: 22, scope: !252)
!252 = !DILexicalBlockFile(scope: !253, file: !207, discriminator: 1)
!253 = distinct !DILexicalBlock(scope: !247, file: !207, line: 16, column: 3)
!254 = !DILocation(line: 16, column: 23, scope: !252)
!255 = !DILocation(line: 16, column: 3, scope: !252)
!256 = !DILocalVariable(name: "temp", scope: !257, file: !207, line: 17, type: !49)
!257 = distinct !DILexicalBlock(scope: !253, file: !207, line: 16, column: 33)
!258 = !DILocation(line: 17, column: 12, scope: !257)
!259 = !DILocation(line: 17, column: 19, scope: !257)
!260 = !DILocation(line: 18, column: 9, scope: !257)
!261 = !DILocation(line: 18, column: 12, scope: !257)
!262 = !DILocation(line: 18, column: 11, scope: !257)
!263 = !DILocation(line: 18, column: 16, scope: !257)
!264 = !DILocation(line: 18, column: 14, scope: !257)
!265 = !DILocation(line: 18, column: 27, scope: !257)
!266 = !DILocation(line: 18, column: 21, scope: !257)
!267 = !DILocation(line: 18, column: 25, scope: !257)
!268 = !DILocation(line: 18, column: 19, scope: !257)
!269 = !DILocation(line: 18, column: 7, scope: !257)
!270 = !DILocation(line: 19, column: 15, scope: !257)
!271 = !DILocation(line: 19, column: 18, scope: !257)
!272 = !DILocation(line: 19, column: 17, scope: !257)
!273 = !DILocation(line: 19, column: 10, scope: !257)
!274 = !DILocation(line: 19, column: 31, scope: !257)
!275 = !DILocation(line: 19, column: 26, scope: !276)
!276 = !DILexicalBlockFile(scope: !257, file: !207, discriminator: 1)
!277 = !DILocation(line: 19, column: 24, scope: !257)
!278 = !DILocation(line: 19, column: 48, scope: !257)
!279 = !DILocation(line: 19, column: 42, scope: !257)
!280 = !DILocation(line: 19, column: 46, scope: !257)
!281 = !DILocation(line: 19, column: 37, scope: !282)
!282 = !DILexicalBlockFile(scope: !257, file: !207, discriminator: 2)
!283 = !DILocation(line: 19, column: 35, scope: !257)
!284 = !DILocation(line: 19, column: 7, scope: !257)
!285 = !DILocation(line: 20, column: 10, scope: !257)
!286 = !DILocation(line: 20, column: 8, scope: !257)
!287 = !DILocation(line: 21, column: 3, scope: !257)
!288 = !DILocation(line: 16, column: 29, scope: !289)
!289 = !DILexicalBlockFile(scope: !253, file: !207, discriminator: 2)
!290 = !DILocation(line: 16, column: 3, scope: !289)
!291 = distinct !{!291, !292}
!292 = !DILocation(line: 16, column: 3, scope: !206)
!293 = !DILocalVariable(name: "temp", scope: !294, file: !207, line: 24, type: !49)
!294 = distinct !DILexicalBlock(scope: !206, file: !207, line: 23, column: 3)
!295 = !DILocation(line: 24, column: 12, scope: !294)
!296 = !DILocation(line: 24, column: 19, scope: !294)
!297 = !DILocation(line: 25, column: 9, scope: !294)
!298 = !DILocation(line: 25, column: 11, scope: !294)
!299 = !DILocation(line: 25, column: 10, scope: !294)
!300 = !DILocation(line: 25, column: 15, scope: !294)
!301 = !DILocation(line: 25, column: 13, scope: !294)
!302 = !DILocation(line: 25, column: 26, scope: !294)
!303 = !DILocation(line: 25, column: 30, scope: !294)
!304 = !DILocation(line: 25, column: 24, scope: !294)
!305 = !DILocation(line: 25, column: 18, scope: !294)
!306 = !DILocation(line: 25, column: 7, scope: !294)
!307 = !DILocation(line: 26, column: 15, scope: !294)
!308 = !DILocation(line: 26, column: 17, scope: !294)
!309 = !DILocation(line: 26, column: 16, scope: !294)
!310 = !DILocation(line: 26, column: 10, scope: !294)
!311 = !DILocation(line: 26, column: 30, scope: !294)
!312 = !DILocation(line: 26, column: 25, scope: !313)
!313 = !DILexicalBlockFile(scope: !294, file: !207, discriminator: 1)
!314 = !DILocation(line: 26, column: 23, scope: !294)
!315 = !DILocation(line: 26, column: 47, scope: !294)
!316 = !DILocation(line: 26, column: 51, scope: !294)
!317 = !DILocation(line: 26, column: 42, scope: !318)
!318 = !DILexicalBlockFile(scope: !294, file: !207, discriminator: 2)
!319 = !DILocation(line: 26, column: 40, scope: !294)
!320 = !DILocation(line: 26, column: 34, scope: !294)
!321 = !DILocation(line: 26, column: 7, scope: !294)
!322 = !DILocation(line: 29, column: 17, scope: !206)
!323 = !DILocation(line: 29, column: 3, scope: !206)
!324 = !DILocation(line: 29, column: 11, scope: !206)
!325 = !DILocation(line: 29, column: 15, scope: !206)
!326 = !DILocation(line: 30, column: 35, scope: !206)
!327 = !DILocation(line: 30, column: 33, scope: !206)
!328 = !DILocation(line: 30, column: 50, scope: !206)
!329 = !DILocation(line: 30, column: 54, scope: !206)
!330 = !DILocation(line: 30, column: 44, scope: !206)
!331 = !DILocation(line: 30, column: 48, scope: !206)
!332 = !DILocation(line: 30, column: 39, scope: !206)
!333 = !DILocation(line: 30, column: 37, scope: !206)
!334 = !DILocation(line: 30, column: 3, scope: !206)
!335 = !DILocation(line: 30, column: 11, scope: !206)
!336 = !DILocation(line: 30, column: 15, scope: !206)
!337 = !DILocation(line: 32, column: 3, scope: !206)
!338 = distinct !DISubprogram(name: "gsl_sf_expint_3", scope: !1, file: !1, line: 143, type: !339, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !79)
!339 = !DISubroutineType(types: !340)
!340 = !{!49, !49}
!341 = !DILocalVariable(name: "x", arg: 1, scope: !338, file: !1, line: 143, type: !49)
!342 = !DILocation(line: 143, column: 31, scope: !338)
!343 = !DILocalVariable(name: "result", scope: !338, file: !1, line: 145, type: !73)
!344 = !DILocation(line: 145, column: 3, scope: !338)
!345 = !DILocalVariable(name: "status", scope: !338, file: !1, line: 145, type: !51)
!346 = !DILocation(line: 145, column: 3, scope: !347)
!347 = distinct !DILexicalBlock(scope: !338, file: !1, line: 145, column: 3)
!348 = !DILocation(line: 145, column: 3, scope: !349)
!349 = !DILexicalBlockFile(scope: !350, file: !1, discriminator: 1)
!350 = distinct !DILexicalBlock(scope: !347, file: !1, line: 145, column: 3)
!351 = distinct !{!351, !352}
!352 = !DILocation(line: 145, column: 3, scope: !350)
!353 = !DILocation(line: 145, column: 3, scope: !354)
!354 = !DILexicalBlockFile(scope: !355, file: !1, discriminator: 2)
!355 = distinct !DILexicalBlock(scope: !350, file: !1, line: 145, column: 3)
!356 = !DILocation(line: 145, column: 3, scope: !357)
!357 = !DILexicalBlockFile(scope: !350, file: !1, discriminator: 3)
!358 = !DILocation(line: 145, column: 3, scope: !359)
!359 = !DILexicalBlockFile(scope: !338, file: !1, discriminator: 4)
!360 = !DILocation(line: 146, column: 1, scope: !338)
