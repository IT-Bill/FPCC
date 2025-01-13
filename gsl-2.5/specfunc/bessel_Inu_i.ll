; ModuleID = 'bessel_Inu.ll'
source_filename = "bessel_Inu.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bessel_Inu.c\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"gsl_sf_bessel_Inu_scaled_e(nu, x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_Inu_e(nu, x, &result)\00", align 1
@0 = private unnamed_addr constant [27 x i8] c"gsl_sf_bessel_Inu_scaled_e\00"
@1 = private unnamed_addr constant [14 x i8] c"bessel_Inu.ll\00"
@2 = private unnamed_addr constant [20 x i8] c"gsl_sf_bessel_Inu_e\00"
@3 = private unnamed_addr constant [14 x i8] c"bessel_Inu.ll\00"
@4 = private unnamed_addr constant [25 x i8] c"gsl_sf_bessel_Inu_scaled\00"
@5 = private unnamed_addr constant [14 x i8] c"bessel_Inu.ll\00"
@6 = private unnamed_addr constant [18 x i8] c"gsl_sf_bessel_Inu\00"
@7 = private unnamed_addr constant [14 x i8] c"bessel_Inu.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Inu_scaled_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !59, metadata !60), !dbg !61
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !62, metadata !60), !dbg !63
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !64, metadata !60), !dbg !65
  %23 = load double, double* %6, align 8, !dbg !66
  %24 = fcmp olt double %23, 0.000000e+00, !dbg !68
  %25 = call i1 @fCmpInstHandler(double %23, double 0.000000e+00, i1 %24, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464776736, i32 42, i32 8), !dbg !69
  br i1 %25, label %30, label %26, !dbg !69

; <label>:26:                                     ; preds = %3
  %27 = load double, double* %5, align 8, !dbg !70
  %28 = fcmp olt double %27, 0.000000e+00, !dbg !72
  %29 = call i1 @fCmpInstHandler(double %27, double 0.000000e+00, i1 %28, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464778192, i32 42, i32 20), !dbg !73
  br i1 %29, label %30, label %39, !dbg !73

; <label>:30:                                     ; preds = %26, %3
  br label %31, !dbg !74, !llvm.loop !76

; <label>:31:                                     ; preds = %30
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !77
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !77
  store double 0x7FF8000000000000, double* %33, align 8, !dbg !77
  %34 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !77
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !77
  store double 0x7FF8000000000000, double* %35, align 8, !dbg !77
  br label %36, !dbg !77, !llvm.loop !80

; <label>:36:                                     ; preds = %31
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 43, i32 1), !dbg !82
  store i32 1, i32* %4, align 4, !dbg !82
  br label %184, !dbg !82
                                                  ; No predecessors!
  br label %38, !dbg !85

; <label>:38:                                     ; preds = %37
  br label %184, !dbg !87

; <label>:39:                                     ; preds = %26
  %40 = load double, double* %6, align 8, !dbg !88
  %41 = load double, double* %6, align 8, !dbg !90
  %42 = fmul double %40, %41, !dbg !91
  call void @fMulHandler(double %40, double %41, double %42, i64 94885464792232, i64 94885464792552, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464792960, i32 45, i32 12), !dbg !92
  %43 = load double, double* %5, align 8, !dbg !92
  %44 = fadd double %43, 1.000000e+00, !dbg !93
  call void @fAddHandler(double %43, double 1.000000e+00, double %44, i64 94885464793352, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464793856, i32 45, i32 25), !dbg !94
  %45 = fmul double 1.000000e+01, %44, !dbg !94
  call void @fMulHandler(double 1.000000e+01, double %44, double %45, i64 0, i64 94885464793856, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464794336, i32 45, i32 21), !dbg !95
  %46 = fcmp olt double %42, %45, !dbg !95
  %47 = call i1 @fCmpInstHandler(double %42, double %45, i1 %46, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464794720, i32 45, i32 15), !dbg !96
  br i1 %47, label %48, label %77, !dbg !96

; <label>:48:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !97, metadata !60), !dbg !99
  call void @llvm.dbg.declare(metadata double* %9, metadata !100, metadata !60), !dbg !101
  %49 = load double, double* %6, align 8, !dbg !102
  %50 = fsub double -0.000000e+00, %49, !dbg !103
  call void @fSubHandler(double -0.000000e+00, double %49, double %50, i64 0, i64 94885464798072, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464798512, i32 47, i32 21), !dbg !104
  %51 = call double @exp(double %50) #5, !dbg !104
  call void @callOneArgHandler(i32 11, double %50, double %51, i64 94885464798512, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464799264, i32 47, i32 17), !dbg !101
  store double %51, double* %9, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %10, metadata !105, metadata !60), !dbg !106
  %52 = load double, double* %5, align 8, !dbg !107
  %53 = load double, double* %6, align 8, !dbg !108
  %54 = call i32 @gsl_sf_bessel_IJ_taylor_e(double %52, double %53, i32 1, i32 100, double 0x3CB0000000000000, %struct.gsl_sf_result_struct* %8), !dbg !109
  store i32 %54, i32* %10, align 4, !dbg !106
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !110
  %56 = load double, double* %55, align 8, !dbg !110
  %57 = load double, double* %9, align 8, !dbg !111
  %58 = fmul double %56, %57, !dbg !112
  call void @fMulHandler(double %56, double %57, double %58, i64 94885464806600, i64 94885464808248, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464808656, i32 49, i32 26), !dbg !113
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !113
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 0, !dbg !114
  store double %58, double* %60, align 8, !dbg !115
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !116
  %62 = load double, double* %61, align 8, !dbg !116
  %63 = load double, double* %9, align 8, !dbg !117
  %64 = fmul double %62, %63, !dbg !118
  call void @fMulHandler(double %62, double %63, double %64, i64 94885464810744, i64 94885464812392, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464812800, i32 50, i32 26), !dbg !119
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !119
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 1, !dbg !120
  store double %64, double* %66, align 8, !dbg !121
  %67 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !122
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %67, i32 0, i32 0, !dbg !123
  %69 = load double, double* %68, align 8, !dbg !123
  %70 = call double @fabs(double %69) #1, !dbg !124
  %71 = fmul double 0x3CC0000000000000, %70, !dbg !125
  call void @fMulHandler(double 0x3CC0000000000000, double %70, double %71, i64 0, i64 94885464818320, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464818896, i32 51, i32 42), !dbg !126
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !126
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 1, !dbg !127
  %74 = load double, double* %73, align 8, !dbg !128
  %75 = fadd double %74, %71, !dbg !128
  call void @fAddHandler(double %74, double %71, double %75, i64 94885464820120, i64 94885464818896, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464820528, i32 51, i32 17), !dbg !128
  store double %75, double* %73, align 8, !dbg !128
  %76 = load i32, i32* %10, align 4, !dbg !129
  store i32 %76, i32* %4, align 4, !dbg !130
  br label %184, !dbg !130

; <label>:77:                                     ; preds = %39
  %78 = load double, double* %5, align 8, !dbg !131
  %79 = load double, double* %5, align 8, !dbg !133
  %80 = fmul double %78, %79, !dbg !134
  call void @fMulHandler(double %78, double %79, double %80, i64 94885464824760, i64 94885464825080, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464825488, i32 54, i32 18), !dbg !135
  %81 = load double, double* %6, align 8, !dbg !135
  %82 = load double, double* %6, align 8, !dbg !136
  %83 = fmul double %81, %82, !dbg !137
  call void @fMulHandler(double %81, double %82, double %83, i64 94885464825880, i64 94885464826264, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464826672, i32 54, i32 25), !dbg !138
  %84 = fadd double %80, %83, !dbg !138
  call void @fAddHandler(double %80, double %83, double %84, i64 94885464825488, i64 94885464826672, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464827088, i32 54, i32 22), !dbg !139
  %85 = fdiv double 5.000000e-01, %84, !dbg !139
  call void @fDivHandler(double 5.000000e-01, double %84, double %85, i64 0, i64 94885464827088, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464827600, i32 54, i32 14), !dbg !140
  %86 = fcmp olt double %85, 0x3ED965FEA53D6E41, !dbg !140
  %87 = call i1 @fCmpInstHandler(double %85, double 0x3ED965FEA53D6E41, i1 %86, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464828048, i32 54, i32 29), !dbg !141
  br i1 %87, label %88, label %93, !dbg !141

; <label>:88:                                     ; preds = %77
  %89 = load double, double* %5, align 8, !dbg !142
  %90 = load double, double* %6, align 8, !dbg !144
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !145
  %92 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double %89, double %90, %struct.gsl_sf_result_struct* %91), !dbg !146
  store i32 %92, i32* %4, align 4, !dbg !147
  br label %184, !dbg !147

; <label>:93:                                     ; preds = %77
  call void @llvm.dbg.declare(metadata i32* %11, metadata !148, metadata !60), !dbg !150
  %94 = load double, double* %5, align 8, !dbg !151
  %95 = fadd double %94, 5.000000e-01, !dbg !152
  call void @fAddHandler(double %94, double 5.000000e-01, double %95, i64 94885464834456, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464834864, i32 58, i32 22), !dbg !153
  %96 = fptosi double %95 to i32, !dbg !153
  store i32 %96, i32* %11, align 4, !dbg !150
  call void @llvm.dbg.declare(metadata double* %12, metadata !154, metadata !60), !dbg !155
  %97 = load double, double* %5, align 8, !dbg !156
  %98 = load i32, i32* %11, align 4, !dbg !157
  %99 = sitofp i32 %98 to double, !dbg !157
  %100 = fsub double %97, %99, !dbg !158
  call void @fSubHandler(double %97, double %99, double %100, i64 94885464838408, i64 94885464839144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464840816, i32 59, i32 20), !dbg !155
  store double %100, double* %12, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata double* %13, metadata !159, metadata !60), !dbg !160
  call void @llvm.dbg.declare(metadata double* %14, metadata !161, metadata !60), !dbg !162
  call void @llvm.dbg.declare(metadata double* %15, metadata !163, metadata !60), !dbg !164
  call void @llvm.dbg.declare(metadata double* %16, metadata !165, metadata !60), !dbg !166
  call void @llvm.dbg.declare(metadata double* %17, metadata !167, metadata !60), !dbg !168
  call void @llvm.dbg.declare(metadata double* %18, metadata !169, metadata !60), !dbg !170
  call void @llvm.dbg.declare(metadata double* %19, metadata !171, metadata !60), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %20, metadata !173, metadata !60), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %21, metadata !175, metadata !60), !dbg !176
  call void @llvm.dbg.declare(metadata i32* %22, metadata !177, metadata !60), !dbg !178
  %101 = load double, double* %6, align 8, !dbg !179
  %102 = fcmp olt double %101, 2.000000e+00, !dbg !181
  %103 = call i1 @fCmpInstHandler(double %101, double 2.000000e+00, i1 %102, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464854272, i32 68, i32 10), !dbg !182
  br i1 %103, label %104, label %108, !dbg !182

; <label>:104:                                    ; preds = %93
  %105 = load double, double* %12, align 8, !dbg !183
  %106 = load double, double* %6, align 8, !dbg !185
  %107 = call i32 @gsl_sf_bessel_K_scaled_temme(double %105, double %106, double* %13, double* %14, double* %15), !dbg !186
  store i32 %107, i32* %21, align 4, !dbg !187
  br label %112, !dbg !188

; <label>:108:                                    ; preds = %93
  %109 = load double, double* %12, align 8, !dbg !189
  %110 = load double, double* %6, align 8, !dbg !191
  %111 = call i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double %109, double %110, double* %13, double* %14, double* %15), !dbg !192
  store i32 %111, i32* %21, align 4, !dbg !193
  br label %112

; <label>:112:                                    ; preds = %108, %104
  %113 = load double, double* %13, align 8, !dbg !194
  store double %113, double* %16, align 8, !dbg !195
  %114 = load double, double* %14, align 8, !dbg !196
  store double %114, double* %17, align 8, !dbg !197
  store i32 0, i32* %22, align 4, !dbg !198
  br label %115, !dbg !200

; <label>:115:                                    ; preds = %137, %112
  %116 = load i32, i32* %22, align 4, !dbg !201
  %117 = load i32, i32* %11, align 4, !dbg !204
  %118 = icmp slt i32 %116, %117, !dbg !205
  %119 = sext i32 %116 to i64, !dbg !206
  %120 = sext i32 %117 to i64, !dbg !206
  %121 = call i1 @iCmpInstHandler(i64 %119, i64 %120, i1 %118, i32 40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464863872, i32 79, i32 15), !dbg !206
  br i1 %121, label %122, label %140, !dbg !206

; <label>:122:                                    ; preds = %115
  %123 = load double, double* %16, align 8, !dbg !207
  store double %123, double* %18, align 8, !dbg !209
  %124 = load double, double* %17, align 8, !dbg !210
  store double %124, double* %16, align 8, !dbg !211
  %125 = load double, double* %12, align 8, !dbg !212
  %126 = load i32, i32* %22, align 4, !dbg !213
  %127 = sitofp i32 %126 to double, !dbg !213
  %128 = fadd double %125, %127, !dbg !214
  call void @fAddHandler(double %125, double %127, double %128, i64 94885464866520, i64 94885464867288, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464868960, i32 82, i32 23), !dbg !215
  %129 = fadd double %128, 1.000000e+00, !dbg !215
  call void @fAddHandler(double %128, double 1.000000e+00, double %129, i64 94885464868960, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464869408, i32 82, i32 25), !dbg !216
  %130 = fmul double 2.000000e+00, %129, !dbg !216
  call void @fMulHandler(double 2.000000e+00, double %129, double %130, i64 0, i64 94885464869408, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464869824, i32 82, i32 19), !dbg !217
  %131 = load double, double* %6, align 8, !dbg !217
  %132 = fdiv double %130, %131, !dbg !218
  call void @fDivHandler(double %130, double %131, double %132, i64 94885464869824, i64 94885464870184, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464870592, i32 82, i32 28), !dbg !219
  %133 = load double, double* %16, align 8, !dbg !219
  %134 = fmul double %132, %133, !dbg !220
  call void @fMulHandler(double %132, double %133, double %134, i64 94885464870592, i64 94885464870984, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464871392, i32 82, i32 31), !dbg !221
  %135 = load double, double* %18, align 8, !dbg !221
  %136 = fadd double %134, %135, !dbg !222
  call void @fAddHandler(double %134, double %135, double %136, i64 94885464871392, i64 94885464871784, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464872192, i32 82, i32 38), !dbg !223
  store double %136, double* %17, align 8, !dbg !223
  br label %137, !dbg !224

; <label>:137:                                    ; preds = %122
  %138 = load i32, i32* %22, align 4, !dbg !225
  %139 = add nsw i32 %138, 1, !dbg !225
  store i32 %139, i32* %22, align 4, !dbg !225
  br label %115, !dbg !227, !llvm.loop !228

; <label>:140:                                    ; preds = %115
  %141 = load double, double* %5, align 8, !dbg !230
  %142 = load double, double* %6, align 8, !dbg !231
  %143 = call i32 @gsl_sf_bessel_I_CF1_ser(double %141, double %142, double* %19), !dbg !232
  store i32 %143, i32* %20, align 4, !dbg !233
  %144 = load double, double* %6, align 8, !dbg !234
  %145 = load double, double* %17, align 8, !dbg !235
  %146 = load double, double* %19, align 8, !dbg !236
  %147 = load double, double* %16, align 8, !dbg !237
  %148 = fmul double %146, %147, !dbg !238
  call void @fMulHandler(double %146, double %147, double %148, i64 94885464881240, i64 94885464881624, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464882032, i32 89, i32 49), !dbg !239
  %149 = fadd double %145, %148, !dbg !239
  call void @fAddHandler(double %145, double %148, double %149, i64 94885464880856, i64 94885464882032, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464882448, i32 89, i32 36), !dbg !240
  %150 = fmul double %144, %149, !dbg !240
  call void @fMulHandler(double %144, double %149, double %150, i64 94885464880472, i64 94885464882448, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464882864, i32 89, i32 26), !dbg !241
  %151 = fdiv double 1.000000e+00, %150, !dbg !241
  call void @fDivHandler(double 1.000000e+00, double %150, double %151, i64 0, i64 94885464882864, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464883312, i32 89, i32 22), !dbg !242
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !242
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !243
  store double %151, double* %153, align 8, !dbg !244
  %154 = load i32, i32* %11, align 4, !dbg !245
  %155 = sitofp i32 %154 to double, !dbg !245
  %156 = fmul double 5.000000e-01, %155, !dbg !246
  call void @fMulHandler(double 5.000000e-01, double %155, double %156, i64 0, i64 94885464885304, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464887008, i32 90, i32 41), !dbg !247
  %157 = fadd double %156, 2.000000e+00, !dbg !247
  call void @fAddHandler(double %156, double 2.000000e+00, double %157, i64 94885464887008, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464887424, i32 90, i32 44), !dbg !248
  %158 = fmul double 0x3CB0000000000000, %157, !dbg !248
  call void @fMulHandler(double 0x3CB0000000000000, double %157, double %158, i64 0, i64 94885464887424, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464887808, i32 90, i32 35), !dbg !249
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !249
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 0, !dbg !250
  %161 = load double, double* %160, align 8, !dbg !250
  %162 = call double @fabs(double %161) #1, !dbg !251
  %163 = fmul double %158, %162, !dbg !252
  call void @fMulHandler(double %158, double %162, double %163, i64 94885464887808, i64 94885464890768, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464891248, i32 90, i32 51), !dbg !253
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !253
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %164, i32 0, i32 1, !dbg !254
  store double %163, double* %165, align 8, !dbg !255
  %166 = load i32, i32* %21, align 4, !dbg !256
  %167 = icmp ne i32 %166, 0, !dbg !256
  %168 = sext i32 %166 to i64, !dbg !256
  %169 = call i1 @iCmpInstHandler(i64 %168, i64 0, i1 %167, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464893296, i32 92, i32 12), !dbg !256
  br i1 %169, label %170, label %172, !dbg !256

; <label>:170:                                    ; preds = %140
  %171 = load i32, i32* %21, align 4, !dbg !257
  br label %182, !dbg !257

; <label>:172:                                    ; preds = %140
  %173 = load i32, i32* %20, align 4, !dbg !259
  %174 = icmp ne i32 %173, 0, !dbg !259
  %175 = sext i32 %173 to i64, !dbg !259
  %176 = call i1 @iCmpInstHandler(i64 %175, i64 0, i1 %174, i32 33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 94885464897840, i32 92, i32 12), !dbg !259
  br i1 %176, label %177, label %179, !dbg !259

; <label>:177:                                    ; preds = %172
  %178 = load i32, i32* %20, align 4, !dbg !261
  br label %180, !dbg !261

; <label>:179:                                    ; preds = %172
  br label %180, !dbg !263

; <label>:180:                                    ; preds = %179, %177
  %181 = phi i32 [ %178, %177 ], [ 0, %179 ], !dbg !265
  br label %182, !dbg !265

; <label>:182:                                    ; preds = %180, %170
  %183 = phi i32 [ %171, %170 ], [ %181, %180 ], !dbg !267
  store i32 %183, i32* %4, align 4, !dbg !269
  br label %184, !dbg !269

; <label>:184:                                    ; preds = %182, %88, %48, %38, %36
  %185 = load i32, i32* %4, align 4, !dbg !270
  ret i32 %185, !dbg !270
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare double @exp(double) #3

declare i32 @gsl_sf_bessel_IJ_taylor_e(double, double, i32, i32, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_K_scaled_temme(double, double, double*, double*, double*) #2

declare i32 @gsl_sf_bessel_K_scaled_steed_temme_CF2(double, double, double*, double*, double*) #2

declare i32 @gsl_sf_bessel_I_CF1_ser(double, double, double*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Inu_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !271 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !272, metadata !60), !dbg !273
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !274, metadata !60), !dbg !275
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !276, metadata !60), !dbg !277
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !278, metadata !60), !dbg !279
  call void @llvm.dbg.declare(metadata i32* %8, metadata !280, metadata !60), !dbg !281
  %10 = load double, double* %4, align 8, !dbg !282
  %11 = load double, double* %5, align 8, !dbg !283
  %12 = call i32 @gsl_sf_bessel_Inu_scaled_e(double %10, double %11, %struct.gsl_sf_result_struct* %7), !dbg !284
  store i32 %12, i32* %8, align 4, !dbg !281
  call void @llvm.dbg.declare(metadata i32* %9, metadata !285, metadata !60), !dbg !286
  %13 = load double, double* %5, align 8, !dbg !287
  %14 = load double, double* %5, align 8, !dbg !288
  %15 = fmul double %14, 0x3CB0000000000000, !dbg !289
  call void @fMulHandler(double %14, double 0x3CB0000000000000, double %15, i64 94885464803848, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94885464923520, i32 102, i32 47), !dbg !290
  %16 = call double @fabs(double %15) #1, !dbg !290
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !291
  %18 = load double, double* %17, align 8, !dbg !291
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !292
  %20 = load double, double* %19, align 8, !dbg !292
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !293
  %22 = call i32 @gsl_sf_exp_mult_err_e(double %13, double %16, double %18, double %20, %struct.gsl_sf_result_struct* %21), !dbg !294
  store i32 %22, i32* %9, align 4, !dbg !286
  %23 = load i32, i32* %9, align 4, !dbg !296
  %24 = icmp ne i32 %23, 0, !dbg !296
  %25 = sext i32 %23 to i64, !dbg !296
  %26 = call i1 @iCmpInstHandler(i64 %25, i64 0, i1 %24, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94885464931792, i32 105, i32 10), !dbg !296
  br i1 %26, label %27, label %29, !dbg !296

; <label>:27:                                     ; preds = %3
  %28 = load i32, i32* %9, align 4, !dbg !297
  br label %39, !dbg !297

; <label>:29:                                     ; preds = %3
  %30 = load i32, i32* %8, align 4, !dbg !298
  %31 = icmp ne i32 %30, 0, !dbg !298
  %32 = sext i32 %30 to i64, !dbg !298
  %33 = call i1 @iCmpInstHandler(i64 %32, i64 0, i1 %31, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 94885464936192, i32 105, i32 10), !dbg !298
  br i1 %33, label %34, label %36, !dbg !298

; <label>:34:                                     ; preds = %29
  %35 = load i32, i32* %8, align 4, !dbg !300
  br label %37, !dbg !300

; <label>:36:                                     ; preds = %29
  br label %37, !dbg !302

; <label>:37:                                     ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ], !dbg !304
  br label %39, !dbg !304

; <label>:39:                                     ; preds = %37, %27
  %40 = phi i32 [ %28, %27 ], [ %38, %37 ], !dbg !306
  ret i32 %40, !dbg !308
}

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Inu_scaled(double, double) #0 !dbg !309 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !312, metadata !60), !dbg !313
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !314, metadata !60), !dbg !315
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !316, metadata !60), !dbg !317
  call void @llvm.dbg.declare(metadata i32* %7, metadata !318, metadata !60), !dbg !317
  %8 = load double, double* %4, align 8, !dbg !317
  %9 = load double, double* %5, align 8, !dbg !317
  %10 = call i32 @gsl_sf_bessel_Inu_scaled_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !317
  store i32 %10, i32* %7, align 4, !dbg !317
  %11 = load i32, i32* %7, align 4, !dbg !319
  %12 = icmp ne i32 %11, 0, !dbg !319
  %13 = sext i32 %11 to i64, !dbg !317
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 94885464952400, i32 115, i32 3), !dbg !317
  br i1 %14, label %15, label %21, !dbg !317

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !321, !llvm.loop !324

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !326
  call void @gsl_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 115, i32 %17), !dbg !326
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !326
  %19 = load double, double* %18, align 8, !dbg !326
  store double %19, double* %3, align 8, !dbg !326
  br label %24, !dbg !326
                                                  ; No predecessors!
  br label %21, !dbg !329

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !331
  %23 = load double, double* %22, align 8, !dbg !331
  store double %23, double* %3, align 8, !dbg !331
  br label %24, !dbg !331

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !333
  ret double %25, !dbg !333
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Inu(double, double) #0 !dbg !334 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !335, metadata !60), !dbg !336
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !337, metadata !60), !dbg !338
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !339, metadata !60), !dbg !340
  call void @llvm.dbg.declare(metadata i32* %7, metadata !341, metadata !60), !dbg !340
  %8 = load double, double* %4, align 8, !dbg !340
  %9 = load double, double* %5, align 8, !dbg !340
  %10 = call i32 @gsl_sf_bessel_Inu_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !340
  store i32 %10, i32* %7, align 4, !dbg !340
  %11 = load i32, i32* %7, align 4, !dbg !342
  %12 = icmp ne i32 %11, 0, !dbg !342
  %13 = sext i32 %11 to i64, !dbg !340
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @7, i32 0, i32 0), i64 94885464971216, i32 121, i32 3), !dbg !340
  br i1 %14, label %15, label %21, !dbg !340

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !344, !llvm.loop !347

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !349
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 121, i32 %17), !dbg !349
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !349
  %19 = load double, double* %18, align 8, !dbg !349
  store double %19, double* %3, align 8, !dbg !349
  br label %24, !dbg !349
                                                  ; No predecessors!
  br label %21, !dbg !352

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !354
  %23 = load double, double* %22, align 8, !dbg !354
  store double %23, double* %3, align 8, !dbg !354
  br label %24, !dbg !354

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !356
  ret double %25, !dbg !356
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
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_Inu.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42}
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !{i32 2, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"PIC Level", i32 2}
!46 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!47 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_e", scope: !1, file: !1, line: 38, type: !48, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!48 = !DISubroutineType(types: !49)
!49 = !{!42, !50, !50, !51}
!50 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !53, line: 41, baseType: !54)
!53 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !53, line: 37, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !53, line: 38, baseType: !50, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !54, file: !53, line: 39, baseType: !50, size: 64, align: 64, offset: 64)
!58 = !{}
!59 = !DILocalVariable(name: "nu", arg: 1, scope: !47, file: !1, line: 38, type: !50)
!60 = !DIExpression()
!61 = !DILocation(line: 38, column: 35, scope: !47)
!62 = !DILocalVariable(name: "x", arg: 2, scope: !47, file: !1, line: 38, type: !50)
!63 = !DILocation(line: 38, column: 46, scope: !47)
!64 = !DILocalVariable(name: "result", arg: 3, scope: !47, file: !1, line: 38, type: !51)
!65 = !DILocation(line: 38, column: 65, scope: !47)
!66 = !DILocation(line: 42, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !47, file: !1, line: 42, column: 6)
!68 = !DILocation(line: 42, column: 8, scope: !67)
!69 = !DILocation(line: 42, column: 14, scope: !67)
!70 = !DILocation(line: 42, column: 17, scope: !71)
!71 = !DILexicalBlockFile(scope: !67, file: !1, discriminator: 1)
!72 = !DILocation(line: 42, column: 20, scope: !71)
!73 = !DILocation(line: 42, column: 6, scope: !71)
!74 = !DILocation(line: 43, column: 5, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !1, line: 42, column: 27)
!76 = distinct !{!76, !74}
!77 = !DILocation(line: 43, column: 5, scope: !78)
!78 = !DILexicalBlockFile(scope: !79, file: !1, discriminator: 1)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 43, column: 5)
!80 = distinct !{!80, !81}
!81 = !DILocation(line: 43, column: 5, scope: !79)
!82 = !DILocation(line: 43, column: 5, scope: !83)
!83 = !DILexicalBlockFile(scope: !84, file: !1, discriminator: 2)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 43, column: 5)
!85 = !DILocation(line: 43, column: 5, scope: !86)
!86 = !DILexicalBlockFile(scope: !79, file: !1, discriminator: 3)
!87 = !DILocation(line: 44, column: 3, scope: !75)
!88 = !DILocation(line: 45, column: 11, scope: !89)
!89 = distinct !DILexicalBlock(scope: !67, file: !1, line: 45, column: 11)
!90 = !DILocation(line: 45, column: 13, scope: !89)
!91 = !DILocation(line: 45, column: 12, scope: !89)
!92 = !DILocation(line: 45, column: 23, scope: !89)
!93 = !DILocation(line: 45, column: 25, scope: !89)
!94 = !DILocation(line: 45, column: 21, scope: !89)
!95 = !DILocation(line: 45, column: 15, scope: !89)
!96 = !DILocation(line: 45, column: 11, scope: !67)
!97 = !DILocalVariable(name: "b", scope: !98, file: !1, line: 46, type: !52)
!98 = distinct !DILexicalBlock(scope: !89, file: !1, line: 45, column: 32)
!99 = !DILocation(line: 46, column: 19, scope: !98)
!100 = !DILocalVariable(name: "ex", scope: !98, file: !1, line: 47, type: !50)
!101 = !DILocation(line: 47, column: 12, scope: !98)
!102 = !DILocation(line: 47, column: 22, scope: !98)
!103 = !DILocation(line: 47, column: 21, scope: !98)
!104 = !DILocation(line: 47, column: 17, scope: !98)
!105 = !DILocalVariable(name: "stat", scope: !98, file: !1, line: 48, type: !42)
!106 = !DILocation(line: 48, column: 9, scope: !98)
!107 = !DILocation(line: 48, column: 42, scope: !98)
!108 = !DILocation(line: 48, column: 46, scope: !98)
!109 = !DILocation(line: 48, column: 16, scope: !98)
!110 = !DILocation(line: 49, column: 22, scope: !98)
!111 = !DILocation(line: 49, column: 28, scope: !98)
!112 = !DILocation(line: 49, column: 26, scope: !98)
!113 = !DILocation(line: 49, column: 5, scope: !98)
!114 = !DILocation(line: 49, column: 13, scope: !98)
!115 = !DILocation(line: 49, column: 18, scope: !98)
!116 = !DILocation(line: 50, column: 22, scope: !98)
!117 = !DILocation(line: 50, column: 28, scope: !98)
!118 = !DILocation(line: 50, column: 26, scope: !98)
!119 = !DILocation(line: 50, column: 5, scope: !98)
!120 = !DILocation(line: 50, column: 13, scope: !98)
!121 = !DILocation(line: 50, column: 18, scope: !98)
!122 = !DILocation(line: 51, column: 49, scope: !98)
!123 = !DILocation(line: 51, column: 57, scope: !98)
!124 = !DILocation(line: 51, column: 44, scope: !98)
!125 = !DILocation(line: 51, column: 42, scope: !98)
!126 = !DILocation(line: 51, column: 5, scope: !98)
!127 = !DILocation(line: 51, column: 13, scope: !98)
!128 = !DILocation(line: 51, column: 17, scope: !98)
!129 = !DILocation(line: 52, column: 12, scope: !98)
!130 = !DILocation(line: 52, column: 5, scope: !98)
!131 = !DILocation(line: 54, column: 16, scope: !132)
!132 = distinct !DILexicalBlock(scope: !89, file: !1, line: 54, column: 11)
!133 = !DILocation(line: 54, column: 19, scope: !132)
!134 = !DILocation(line: 54, column: 18, scope: !132)
!135 = !DILocation(line: 54, column: 24, scope: !132)
!136 = !DILocation(line: 54, column: 26, scope: !132)
!137 = !DILocation(line: 54, column: 25, scope: !132)
!138 = !DILocation(line: 54, column: 22, scope: !132)
!139 = !DILocation(line: 54, column: 14, scope: !132)
!140 = !DILocation(line: 54, column: 29, scope: !132)
!141 = !DILocation(line: 54, column: 11, scope: !89)
!142 = !DILocation(line: 55, column: 50, scope: !143)
!143 = distinct !DILexicalBlock(scope: !132, file: !1, line: 54, column: 54)
!144 = !DILocation(line: 55, column: 54, scope: !143)
!145 = !DILocation(line: 55, column: 57, scope: !143)
!146 = !DILocation(line: 55, column: 12, scope: !143)
!147 = !DILocation(line: 55, column: 5, scope: !143)
!148 = !DILocalVariable(name: "N", scope: !149, file: !1, line: 58, type: !42)
!149 = distinct !DILexicalBlock(scope: !132, file: !1, line: 57, column: 8)
!150 = !DILocation(line: 58, column: 9, scope: !149)
!151 = !DILocation(line: 58, column: 19, scope: !149)
!152 = !DILocation(line: 58, column: 22, scope: !149)
!153 = !DILocation(line: 58, column: 13, scope: !149)
!154 = !DILocalVariable(name: "mu", scope: !149, file: !1, line: 59, type: !50)
!155 = !DILocation(line: 59, column: 12, scope: !149)
!156 = !DILocation(line: 59, column: 17, scope: !149)
!157 = !DILocation(line: 59, column: 22, scope: !149)
!158 = !DILocation(line: 59, column: 20, scope: !149)
!159 = !DILocalVariable(name: "K_mu", scope: !149, file: !1, line: 60, type: !50)
!160 = !DILocation(line: 60, column: 12, scope: !149)
!161 = !DILocalVariable(name: "K_mup1", scope: !149, file: !1, line: 60, type: !50)
!162 = !DILocation(line: 60, column: 18, scope: !149)
!163 = !DILocalVariable(name: "Kp_mu", scope: !149, file: !1, line: 60, type: !50)
!164 = !DILocation(line: 60, column: 26, scope: !149)
!165 = !DILocalVariable(name: "K_nu", scope: !149, file: !1, line: 61, type: !50)
!166 = !DILocation(line: 61, column: 12, scope: !149)
!167 = !DILocalVariable(name: "K_nup1", scope: !149, file: !1, line: 61, type: !50)
!168 = !DILocation(line: 61, column: 18, scope: !149)
!169 = !DILocalVariable(name: "K_num1", scope: !149, file: !1, line: 61, type: !50)
!170 = !DILocation(line: 61, column: 26, scope: !149)
!171 = !DILocalVariable(name: "I_nu_ratio", scope: !149, file: !1, line: 62, type: !50)
!172 = !DILocation(line: 62, column: 12, scope: !149)
!173 = !DILocalVariable(name: "stat_Irat", scope: !149, file: !1, line: 63, type: !42)
!174 = !DILocation(line: 63, column: 9, scope: !149)
!175 = !DILocalVariable(name: "stat_Kmu", scope: !149, file: !1, line: 64, type: !42)
!176 = !DILocation(line: 64, column: 9, scope: !149)
!177 = !DILocalVariable(name: "n", scope: !149, file: !1, line: 65, type: !42)
!178 = !DILocation(line: 65, column: 9, scope: !149)
!179 = !DILocation(line: 68, column: 8, scope: !180)
!180 = distinct !DILexicalBlock(scope: !149, file: !1, line: 68, column: 8)
!181 = !DILocation(line: 68, column: 10, scope: !180)
!182 = !DILocation(line: 68, column: 8, scope: !149)
!183 = !DILocation(line: 69, column: 47, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !1, line: 68, column: 17)
!185 = !DILocation(line: 69, column: 51, scope: !184)
!186 = !DILocation(line: 69, column: 18, scope: !184)
!187 = !DILocation(line: 69, column: 16, scope: !184)
!188 = !DILocation(line: 70, column: 5, scope: !184)
!189 = !DILocation(line: 72, column: 57, scope: !190)
!190 = distinct !DILexicalBlock(scope: !180, file: !1, line: 71, column: 10)
!191 = !DILocation(line: 72, column: 61, scope: !190)
!192 = !DILocation(line: 72, column: 18, scope: !190)
!193 = !DILocation(line: 72, column: 16, scope: !190)
!194 = !DILocation(line: 76, column: 14, scope: !149)
!195 = !DILocation(line: 76, column: 12, scope: !149)
!196 = !DILocation(line: 77, column: 14, scope: !149)
!197 = !DILocation(line: 77, column: 12, scope: !149)
!198 = !DILocation(line: 79, column: 10, scope: !199)
!199 = distinct !DILexicalBlock(scope: !149, file: !1, line: 79, column: 5)
!200 = !DILocation(line: 79, column: 9, scope: !199)
!201 = !DILocation(line: 79, column: 14, scope: !202)
!202 = !DILexicalBlockFile(scope: !203, file: !1, discriminator: 1)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 79, column: 5)
!204 = !DILocation(line: 79, column: 16, scope: !202)
!205 = !DILocation(line: 79, column: 15, scope: !202)
!206 = !DILocation(line: 79, column: 5, scope: !202)
!207 = !DILocation(line: 80, column: 16, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !1, line: 79, column: 24)
!209 = !DILocation(line: 80, column: 14, scope: !208)
!210 = !DILocation(line: 81, column: 16, scope: !208)
!211 = !DILocation(line: 81, column: 14, scope: !208)
!212 = !DILocation(line: 82, column: 21, scope: !208)
!213 = !DILocation(line: 82, column: 24, scope: !208)
!214 = !DILocation(line: 82, column: 23, scope: !208)
!215 = !DILocation(line: 82, column: 25, scope: !208)
!216 = !DILocation(line: 82, column: 19, scope: !208)
!217 = !DILocation(line: 82, column: 29, scope: !208)
!218 = !DILocation(line: 82, column: 28, scope: !208)
!219 = !DILocation(line: 82, column: 33, scope: !208)
!220 = !DILocation(line: 82, column: 31, scope: !208)
!221 = !DILocation(line: 82, column: 40, scope: !208)
!222 = !DILocation(line: 82, column: 38, scope: !208)
!223 = !DILocation(line: 82, column: 14, scope: !208)
!224 = !DILocation(line: 83, column: 5, scope: !208)
!225 = !DILocation(line: 79, column: 20, scope: !226)
!226 = !DILexicalBlockFile(scope: !203, file: !1, discriminator: 2)
!227 = !DILocation(line: 79, column: 5, scope: !226)
!228 = distinct !{!228, !229}
!229 = !DILocation(line: 79, column: 5, scope: !149)
!230 = !DILocation(line: 86, column: 41, scope: !149)
!231 = !DILocation(line: 86, column: 45, scope: !149)
!232 = !DILocation(line: 86, column: 17, scope: !149)
!233 = !DILocation(line: 86, column: 15, scope: !149)
!234 = !DILocation(line: 89, column: 24, scope: !149)
!235 = !DILocation(line: 89, column: 29, scope: !149)
!236 = !DILocation(line: 89, column: 38, scope: !149)
!237 = !DILocation(line: 89, column: 51, scope: !149)
!238 = !DILocation(line: 89, column: 49, scope: !149)
!239 = !DILocation(line: 89, column: 36, scope: !149)
!240 = !DILocation(line: 89, column: 26, scope: !149)
!241 = !DILocation(line: 89, column: 22, scope: !149)
!242 = !DILocation(line: 89, column: 5, scope: !149)
!243 = !DILocation(line: 89, column: 13, scope: !149)
!244 = !DILocation(line: 89, column: 17, scope: !149)
!245 = !DILocation(line: 90, column: 42, scope: !149)
!246 = !DILocation(line: 90, column: 41, scope: !149)
!247 = !DILocation(line: 90, column: 44, scope: !149)
!248 = !DILocation(line: 90, column: 35, scope: !149)
!249 = !DILocation(line: 90, column: 58, scope: !149)
!250 = !DILocation(line: 90, column: 66, scope: !149)
!251 = !DILocation(line: 90, column: 53, scope: !149)
!252 = !DILocation(line: 90, column: 51, scope: !149)
!253 = !DILocation(line: 90, column: 5, scope: !149)
!254 = !DILocation(line: 90, column: 13, scope: !149)
!255 = !DILocation(line: 90, column: 17, scope: !149)
!256 = !DILocation(line: 92, column: 12, scope: !149)
!257 = !DILocation(line: 92, column: 12, scope: !258)
!258 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 1)
!259 = !DILocation(line: 92, column: 12, scope: !260)
!260 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 2)
!261 = !DILocation(line: 92, column: 12, scope: !262)
!262 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 3)
!263 = !DILocation(line: 92, column: 12, scope: !264)
!264 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 4)
!265 = !DILocation(line: 92, column: 12, scope: !266)
!266 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 5)
!267 = !DILocation(line: 92, column: 12, scope: !268)
!268 = !DILexicalBlockFile(scope: !149, file: !1, discriminator: 6)
!269 = !DILocation(line: 92, column: 5, scope: !268)
!270 = !DILocation(line: 94, column: 1, scope: !47)
!271 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu_e", scope: !1, file: !1, line: 98, type: !48, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!272 = !DILocalVariable(name: "nu", arg: 1, scope: !271, file: !1, line: 98, type: !50)
!273 = !DILocation(line: 98, column: 28, scope: !271)
!274 = !DILocalVariable(name: "x", arg: 2, scope: !271, file: !1, line: 98, type: !50)
!275 = !DILocation(line: 98, column: 39, scope: !271)
!276 = !DILocalVariable(name: "result", arg: 3, scope: !271, file: !1, line: 98, type: !51)
!277 = !DILocation(line: 98, column: 58, scope: !271)
!278 = !DILocalVariable(name: "b", scope: !271, file: !1, line: 100, type: !52)
!279 = !DILocation(line: 100, column: 17, scope: !271)
!280 = !DILocalVariable(name: "stat_I", scope: !271, file: !1, line: 101, type: !42)
!281 = !DILocation(line: 101, column: 7, scope: !271)
!282 = !DILocation(line: 101, column: 43, scope: !271)
!283 = !DILocation(line: 101, column: 47, scope: !271)
!284 = !DILocation(line: 101, column: 16, scope: !271)
!285 = !DILocalVariable(name: "stat_e", scope: !271, file: !1, line: 102, type: !42)
!286 = !DILocation(line: 102, column: 7, scope: !271)
!287 = !DILocation(line: 102, column: 38, scope: !271)
!288 = !DILocation(line: 102, column: 46, scope: !271)
!289 = !DILocation(line: 102, column: 47, scope: !271)
!290 = !DILocation(line: 102, column: 41, scope: !271)
!291 = !DILocation(line: 103, column: 43, scope: !271)
!292 = !DILocation(line: 103, column: 50, scope: !271)
!293 = !DILocation(line: 104, column: 41, scope: !271)
!294 = !DILocation(line: 102, column: 16, scope: !295)
!295 = !DILexicalBlockFile(scope: !271, file: !1, discriminator: 1)
!296 = !DILocation(line: 105, column: 10, scope: !271)
!297 = !DILocation(line: 105, column: 10, scope: !295)
!298 = !DILocation(line: 105, column: 10, scope: !299)
!299 = !DILexicalBlockFile(scope: !271, file: !1, discriminator: 2)
!300 = !DILocation(line: 105, column: 10, scope: !301)
!301 = !DILexicalBlockFile(scope: !271, file: !1, discriminator: 3)
!302 = !DILocation(line: 105, column: 10, scope: !303)
!303 = !DILexicalBlockFile(scope: !271, file: !1, discriminator: 4)
!304 = !DILocation(line: 105, column: 10, scope: !305)
!305 = !DILexicalBlockFile(scope: !271, file: !1, discriminator: 5)
!306 = !DILocation(line: 105, column: 10, scope: !307)
!307 = !DILexicalBlockFile(scope: !271, file: !1, discriminator: 6)
!308 = !DILocation(line: 105, column: 3, scope: !307)
!309 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu_scaled", scope: !1, file: !1, line: 113, type: !310, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!310 = !DISubroutineType(types: !311)
!311 = !{!50, !50, !50}
!312 = !DILocalVariable(name: "nu", arg: 1, scope: !309, file: !1, line: 113, type: !50)
!313 = !DILocation(line: 113, column: 40, scope: !309)
!314 = !DILocalVariable(name: "x", arg: 2, scope: !309, file: !1, line: 113, type: !50)
!315 = !DILocation(line: 113, column: 51, scope: !309)
!316 = !DILocalVariable(name: "result", scope: !309, file: !1, line: 115, type: !52)
!317 = !DILocation(line: 115, column: 3, scope: !309)
!318 = !DILocalVariable(name: "status", scope: !309, file: !1, line: 115, type: !42)
!319 = !DILocation(line: 115, column: 3, scope: !320)
!320 = distinct !DILexicalBlock(scope: !309, file: !1, line: 115, column: 3)
!321 = !DILocation(line: 115, column: 3, scope: !322)
!322 = !DILexicalBlockFile(scope: !323, file: !1, discriminator: 1)
!323 = distinct !DILexicalBlock(scope: !320, file: !1, line: 115, column: 3)
!324 = distinct !{!324, !325}
!325 = !DILocation(line: 115, column: 3, scope: !323)
!326 = !DILocation(line: 115, column: 3, scope: !327)
!327 = !DILexicalBlockFile(scope: !328, file: !1, discriminator: 2)
!328 = distinct !DILexicalBlock(scope: !323, file: !1, line: 115, column: 3)
!329 = !DILocation(line: 115, column: 3, scope: !330)
!330 = !DILexicalBlockFile(scope: !323, file: !1, discriminator: 3)
!331 = !DILocation(line: 115, column: 3, scope: !332)
!332 = !DILexicalBlockFile(scope: !309, file: !1, discriminator: 4)
!333 = !DILocation(line: 116, column: 1, scope: !309)
!334 = distinct !DISubprogram(name: "gsl_sf_bessel_Inu", scope: !1, file: !1, line: 119, type: !310, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!335 = !DILocalVariable(name: "nu", arg: 1, scope: !334, file: !1, line: 119, type: !50)
!336 = !DILocation(line: 119, column: 33, scope: !334)
!337 = !DILocalVariable(name: "x", arg: 2, scope: !334, file: !1, line: 119, type: !50)
!338 = !DILocation(line: 119, column: 44, scope: !334)
!339 = !DILocalVariable(name: "result", scope: !334, file: !1, line: 121, type: !52)
!340 = !DILocation(line: 121, column: 3, scope: !334)
!341 = !DILocalVariable(name: "status", scope: !334, file: !1, line: 121, type: !42)
!342 = !DILocation(line: 121, column: 3, scope: !343)
!343 = distinct !DILexicalBlock(scope: !334, file: !1, line: 121, column: 3)
!344 = !DILocation(line: 121, column: 3, scope: !345)
!345 = !DILexicalBlockFile(scope: !346, file: !1, discriminator: 1)
!346 = distinct !DILexicalBlock(scope: !343, file: !1, line: 121, column: 3)
!347 = distinct !{!347, !348}
!348 = !DILocation(line: 121, column: 3, scope: !346)
!349 = !DILocation(line: 121, column: 3, scope: !350)
!350 = !DILexicalBlockFile(scope: !351, file: !1, discriminator: 2)
!351 = distinct !DILexicalBlock(scope: !346, file: !1, line: 121, column: 3)
!352 = !DILocation(line: 121, column: 3, scope: !353)
!353 = !DILexicalBlockFile(scope: !346, file: !1, discriminator: 3)
!354 = !DILocation(line: 121, column: 3, scope: !355)
!355 = !DILexicalBlockFile(scope: !334, file: !1, discriminator: 4)
!356 = !DILocation(line: 122, column: 1, scope: !334)
