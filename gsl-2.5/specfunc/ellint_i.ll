; ModuleID = 'ellint.ll'
source_filename = "ellint.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@gsl_prec_eps = external constant [0 x double], align 8
@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ellint.c\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"too many iterations error\00", align 1
@gsl_sf_ellint_Kcomp_e.a = internal constant [3 x double] [double 0x3FF62E42FEFA3BDC, double 0x3FB8BEEF74A49015, double 0x3FA2619B1B7DF892], align 16
@gsl_sf_ellint_Kcomp_e.b = internal constant [3 x double] [double 5.000000e-01, double 0x3FBFFF140B737B4B, double 0x3FB19D0A2A39033E], align 16
@gsl_sf_ellint_Ecomp_e.a = internal constant [3 x double] [double 0x3FDC5E3B2E6F7625, double 0x3FB006F296EE960C, double 0x3FA85B9906E45829], align 16
@gsl_sf_ellint_Ecomp_e.b = internal constant [3 x double] [double 0x3FCFFF771FB95C41, double 0x3FB78D6E13C3242C, double 0x3FA4D63BE3935D49], align 16
@.str.3 = private unnamed_addr constant [40 x i8] c"gsl_sf_ellint_Kcomp_e(k, mode, &result)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"gsl_sf_ellint_Ecomp_e(k, mode, &result)\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"gsl_sf_ellint_Pcomp_e(k, n, mode, &result)\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"gsl_sf_ellint_Dcomp_e(k, mode, &result)\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"gsl_sf_ellint_F_e(phi, k, mode, &result)\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"gsl_sf_ellint_E_e(phi, k, mode, &result)\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"gsl_sf_ellint_P_e(phi, k, n, mode, &result)\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"gsl_sf_ellint_D_e(phi, k, mode, &result)\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"gsl_sf_ellint_RC_e(x, y, mode, &result)\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"gsl_sf_ellint_RD_e(x, y, z, mode, &result)\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"gsl_sf_ellint_RF_e(x, y, z, mode, &result)\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"gsl_sf_ellint_RJ_e(x, y, z, p, mode, &result)\00", align 1
@0 = private unnamed_addr constant [19 x i8] c"gsl_sf_ellint_RC_e\00"
@1 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@2 = private unnamed_addr constant [19 x i8] c"gsl_sf_ellint_RD_e\00"
@3 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@4 = private unnamed_addr constant [8 x i8] c"locMAX3\00"
@5 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@6 = private unnamed_addr constant [19 x i8] c"gsl_sf_ellint_RF_e\00"
@7 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@8 = private unnamed_addr constant [19 x i8] c"gsl_sf_ellint_RJ_e\00"
@9 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@10 = private unnamed_addr constant [8 x i8] c"locMAX4\00"
@11 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@12 = private unnamed_addr constant [18 x i8] c"gsl_sf_ellint_F_e\00"
@13 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@14 = private unnamed_addr constant [22 x i8] c"gsl_sf_ellint_Kcomp_e\00"
@15 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@16 = private unnamed_addr constant [18 x i8] c"gsl_sf_ellint_E_e\00"
@17 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@18 = private unnamed_addr constant [22 x i8] c"gsl_sf_ellint_Ecomp_e\00"
@19 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@20 = private unnamed_addr constant [18 x i8] c"gsl_sf_ellint_P_e\00"
@21 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@22 = private unnamed_addr constant [22 x i8] c"gsl_sf_ellint_Pcomp_e\00"
@23 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@24 = private unnamed_addr constant [18 x i8] c"gsl_sf_ellint_D_e\00"
@25 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@26 = private unnamed_addr constant [22 x i8] c"gsl_sf_ellint_Dcomp_e\00"
@27 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@28 = private unnamed_addr constant [20 x i8] c"gsl_sf_ellint_Kcomp\00"
@29 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@30 = private unnamed_addr constant [20 x i8] c"gsl_sf_ellint_Ecomp\00"
@31 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@32 = private unnamed_addr constant [20 x i8] c"gsl_sf_ellint_Pcomp\00"
@33 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@34 = private unnamed_addr constant [20 x i8] c"gsl_sf_ellint_Dcomp\00"
@35 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@36 = private unnamed_addr constant [16 x i8] c"gsl_sf_ellint_F\00"
@37 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@38 = private unnamed_addr constant [16 x i8] c"gsl_sf_ellint_E\00"
@39 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@40 = private unnamed_addr constant [16 x i8] c"gsl_sf_ellint_P\00"
@41 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@42 = private unnamed_addr constant [16 x i8] c"gsl_sf_ellint_D\00"
@43 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@44 = private unnamed_addr constant [17 x i8] c"gsl_sf_ellint_RC\00"
@45 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@46 = private unnamed_addr constant [17 x i8] c"gsl_sf_ellint_RD\00"
@47 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@48 = private unnamed_addr constant [17 x i8] c"gsl_sf_ellint_RF\00"
@49 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"
@50 = private unnamed_addr constant [17 x i8] c"gsl_sf_ellint_RJ\00"
@51 = private unnamed_addr constant [10 x i8] c"ellint.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_ellint_RC_e(double, double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !71 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !74, metadata !75), !dbg !76
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !77, metadata !75), !dbg !78
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !79, metadata !75), !dbg !80
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !81, metadata !75), !dbg !82
  call void @llvm.dbg.declare(metadata double* %10, metadata !83, metadata !75), !dbg !84
  store double 0x34000000000000, double* %10, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata double* %11, metadata !85, metadata !75), !dbg !86
  store double 0x7FC9999999999999, double* %11, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %12, metadata !87, metadata !75), !dbg !91
  %25 = load i32, i32* %8, align 4, !dbg !92
  %26 = call i32 @GSL_MODE_PREC(i32 %25), !dbg !93
  store i32 %26, i32* %12, align 4, !dbg !91
  call void @llvm.dbg.declare(metadata double* %13, metadata !94, metadata !75), !dbg !95
  %27 = load i32, i32* %12, align 4, !dbg !96
  %28 = icmp eq i32 %27, 0, !dbg !97
  %29 = sext i32 %27 to i64, !dbg !96
  %30 = call i1 @iCmpInstHandler(i64 %29, i64 0, i1 %28, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791497296, i32 79, i32 32), !dbg !96
  %31 = select i1 %30, double 1.000000e-03, double 3.000000e-02, !dbg !96
  store double %31, double* %13, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata double* %14, metadata !98, metadata !75), !dbg !99
  %32 = load i32, i32* %12, align 4, !dbg !100
  %33 = zext i32 %32 to i64, !dbg !101
  %34 = getelementptr inbounds [0 x double], [0 x double]* @gsl_prec_eps, i64 0, i64 %33, !dbg !101
  %35 = load double, double* %34, align 8, !dbg !101
  store double %35, double* %14, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %15, metadata !102, metadata !75), !dbg !104
  store i32 10000, i32* %15, align 4, !dbg !104
  %36 = load double, double* %6, align 8, !dbg !105
  %37 = fcmp olt double %36, 0.000000e+00, !dbg !107
  %38 = call i1 @fCmpInstHandler(double %36, double 0.000000e+00, i1 %37, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791510432, i32 83, i32 8), !dbg !108
  br i1 %38, label %49, label %39, !dbg !108

; <label>:39:                                     ; preds = %4
  %40 = load double, double* %7, align 8, !dbg !109
  %41 = fcmp olt double %40, 0.000000e+00, !dbg !111
  %42 = call i1 @fCmpInstHandler(double %40, double 0.000000e+00, i1 %41, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791511888, i32 83, i32 19), !dbg !112
  br i1 %42, label %49, label %43, !dbg !112

; <label>:43:                                     ; preds = %39
  %44 = load double, double* %6, align 8, !dbg !113
  %45 = load double, double* %7, align 8, !dbg !115
  %46 = fadd double %44, %45, !dbg !116
  call void @fAddHandler(double %44, double %45, double %46, i64 94256791512856, i64 94256791513176, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791513584, i32 83, i32 30), !dbg !117
  %47 = fcmp olt double %46, 0x34000000000000, !dbg !117
  %48 = call i1 @fCmpInstHandler(double %46, double 0x34000000000000, i1 %47, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791514000, i32 83, i32 34), !dbg !118
  br i1 %48, label %49, label %58, !dbg !118

; <label>:49:                                     ; preds = %43, %39, %4
  br label %50, !dbg !119, !llvm.loop !121

; <label>:50:                                     ; preds = %49
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !122
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !122
  store double 0x7FF8000000000000, double* %52, align 8, !dbg !122
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !122
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !122
  store double 0x7FF8000000000000, double* %54, align 8, !dbg !122
  br label %55, !dbg !122, !llvm.loop !125

; <label>:55:                                     ; preds = %50
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 84, i32 1), !dbg !127
  store i32 1, i32* %5, align 4, !dbg !127
  br label %165, !dbg !127
                                                  ; No predecessors!
  br label %57, !dbg !130

; <label>:57:                                     ; preds = %56
  br label %165, !dbg !132

; <label>:58:                                     ; preds = %43
  %59 = load double, double* %6, align 8, !dbg !133
  %60 = load double, double* %7, align 8, !dbg !133
  %61 = fcmp ogt double %59, %60, !dbg !133
  %62 = call i1 @fCmpInstHandler(double %59, double %60, i1 %61, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791529440, i32 86, i32 11), !dbg !133
  br i1 %62, label %63, label %65, !dbg !133

; <label>:63:                                     ; preds = %58
  %64 = load double, double* %6, align 8, !dbg !135
  br label %67, !dbg !135

; <label>:65:                                     ; preds = %58
  %66 = load double, double* %7, align 8, !dbg !137
  br label %67, !dbg !137

; <label>:67:                                     ; preds = %65, %63
  %68 = phi double [ %64, %63 ], [ %66, %65 ], !dbg !139
  %69 = fcmp olt double %68, 0x7FC9999999999999, !dbg !141
  %70 = call i1 @fCmpInstHandler(double %68, double 0x7FC9999999999999, i1 %69, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791534480, i32 86, i32 25), !dbg !139
  br i1 %70, label %71, label %155, !dbg !139

; <label>:71:                                     ; preds = %67
  call void @llvm.dbg.declare(metadata double* %16, metadata !142, metadata !75), !dbg !144
  store double 0x3FC2492492492492, double* %16, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata double* %17, metadata !145, metadata !75), !dbg !146
  store double 0x3FDA2E8BA2E8BA2F, double* %17, align 8, !dbg !146
  call void @llvm.dbg.declare(metadata double* %18, metadata !147, metadata !75), !dbg !148
  %72 = load double, double* %6, align 8, !dbg !149
  store double %72, double* %18, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata double* %19, metadata !150, metadata !75), !dbg !151
  %73 = load double, double* %7, align 8, !dbg !152
  store double %73, double* %19, align 8, !dbg !151
  call void @llvm.dbg.declare(metadata double* %20, metadata !153, metadata !75), !dbg !154
  call void @llvm.dbg.declare(metadata double* %21, metadata !155, metadata !75), !dbg !156
  call void @llvm.dbg.declare(metadata double* %22, metadata !157, metadata !75), !dbg !158
  call void @llvm.dbg.declare(metadata double* %23, metadata !159, metadata !75), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %24, metadata !161, metadata !75), !dbg !162
  store i32 0, i32* %24, align 4, !dbg !162
  br label %74, !dbg !163

; <label>:74:                                     ; preds = %125, %71
  %75 = load double, double* %18, align 8, !dbg !164
  %76 = load double, double* %19, align 8, !dbg !166
  %77 = fadd double %75, %76, !dbg !167
  call void @fAddHandler(double %75, double %76, double %77, i64 94256791557544, i64 94256791557864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791558272, i32 94, i32 16), !dbg !168
  %78 = load double, double* %19, align 8, !dbg !168
  %79 = fadd double %77, %78, !dbg !169
  call void @fAddHandler(double %77, double %78, double %79, i64 94256791558272, i64 94256791558664, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791559072, i32 94, i32 21), !dbg !170
  %80 = fdiv double %79, 3.000000e+00, !dbg !170
  call void @fDivHandler(double %79, double 3.000000e+00, double %80, i64 94256791559072, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791559584, i32 94, i32 27), !dbg !171
  store double %80, double* %20, align 8, !dbg !171
  %81 = load double, double* %19, align 8, !dbg !172
  %82 = load double, double* %20, align 8, !dbg !173
  %83 = fadd double %81, %82, !dbg !174
  call void @fAddHandler(double %81, double %82, double %83, i64 94256791560360, i64 94256791560744, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791561152, i32 95, i32 16), !dbg !175
  %84 = load double, double* %20, align 8, !dbg !175
  %85 = fdiv double %83, %84, !dbg !176
  call void @fDivHandler(double %83, double %84, double %85, i64 94256791561152, i64 94256791561544, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791561952, i32 95, i32 22), !dbg !177
  %86 = fsub double %85, 2.000000e+00, !dbg !177
  call void @fSubHandler(double %85, double 2.000000e+00, double %86, i64 94256791561952, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791562464, i32 95, i32 27), !dbg !178
  store double %86, double* %21, align 8, !dbg !178
  %87 = load double, double* %21, align 8, !dbg !179
  %88 = call double @fabs(double %87) #1, !dbg !181
  %89 = load double, double* %13, align 8, !dbg !182
  %90 = fcmp olt double %88, %89, !dbg !183
  %91 = call i1 @fCmpInstHandler(double %88, double %89, i1 %90, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791565680, i32 96, i32 20), !dbg !184
  br i1 %91, label %92, label %93, !dbg !184

; <label>:92:                                     ; preds = %74
  br label %126, !dbg !185

; <label>:93:                                     ; preds = %74
  %94 = load double, double* %18, align 8, !dbg !187
  %95 = call double @sqrt(double %94) #6, !dbg !188
  call void @callOneArgHandler(i32 14, double %94, double %95, i64 94256791567256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791567936, i32 97, i32 21), !dbg !189
  %96 = fmul double 2.000000e+00, %95, !dbg !189
  call void @fMulHandler(double 2.000000e+00, double %95, double %96, i64 0, i64 94256791567936, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791568480, i32 97, i32 19), !dbg !190
  %97 = load double, double* %19, align 8, !dbg !190
  %98 = call double @sqrt(double %97) #6, !dbg !191
  call void @callOneArgHandler(i32 14, double %97, double %98, i64 94256791568840, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791569312, i32 97, i32 32), !dbg !193
  %99 = fmul double %96, %98, !dbg !193
  call void @fMulHandler(double %96, double %98, double %99, i64 94256791568480, i64 94256791569312, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791569792, i32 97, i32 30), !dbg !194
  %100 = load double, double* %19, align 8, !dbg !194
  %101 = fadd double %99, %100, !dbg !195
  call void @fAddHandler(double %99, double %100, double %101, i64 94256791569792, i64 94256791570184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791570592, i32 97, i32 41), !dbg !196
  store double %101, double* %22, align 8, !dbg !196
  %102 = load double, double* %18, align 8, !dbg !197
  %103 = load double, double* %22, align 8, !dbg !198
  %104 = fadd double %102, %103, !dbg !199
  call void @fAddHandler(double %102, double %103, double %104, i64 94256791571400, i64 94256791571784, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791572192, i32 98, i32 16), !dbg !200
  %105 = fmul double %104, 2.500000e-01, !dbg !200
  call void @fMulHandler(double %104, double 2.500000e-01, double %105, i64 94256791572192, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791572704, i32 98, i32 25), !dbg !201
  store double %105, double* %18, align 8, !dbg !201
  %106 = load double, double* %19, align 8, !dbg !202
  %107 = load double, double* %22, align 8, !dbg !203
  %108 = fadd double %106, %107, !dbg !204
  call void @fAddHandler(double %106, double %107, double %108, i64 94256791573480, i64 94256791573864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791574272, i32 99, i32 16), !dbg !205
  %109 = fmul double %108, 2.500000e-01, !dbg !205
  call void @fMulHandler(double %108, double 2.500000e-01, double %109, i64 94256791574272, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791574720, i32 99, i32 25), !dbg !206
  store double %109, double* %19, align 8, !dbg !206
  %110 = load i32, i32* %24, align 4, !dbg !207
  %111 = add nsw i32 %110, 1, !dbg !207
  store i32 %111, i32* %24, align 4, !dbg !207
  %112 = load i32, i32* %24, align 4, !dbg !208
  %113 = icmp eq i32 %112, 10000, !dbg !210
  %114 = sext i32 %112 to i64, !dbg !211
  %115 = call i1 @iCmpInstHandler(i64 %114, i64 10000, i1 %113, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791578096, i32 101, i32 11), !dbg !211
  br i1 %115, label %116, label %125, !dbg !211

; <label>:116:                                    ; preds = %93
  br label %117, !dbg !212, !llvm.loop !214

; <label>:117:                                    ; preds = %116
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !215
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 0, !dbg !215
  store double 0x7FF8000000000000, double* %119, align 8, !dbg !215
  %120 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !215
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 1, !dbg !215
  store double 0x7FF8000000000000, double* %121, align 8, !dbg !215
  br label %122, !dbg !215, !llvm.loop !218

; <label>:122:                                    ; preds = %117
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 102, i32 11), !dbg !220
  store i32 11, i32* %5, align 4, !dbg !220
  br label %165, !dbg !220
                                                  ; No predecessors!
  br label %124, !dbg !223

; <label>:124:                                    ; preds = %123
  br label %125, !dbg !225

; <label>:125:                                    ; preds = %124, %93
  br label %74, !dbg !226, !llvm.loop !228

; <label>:126:                                    ; preds = %92
  %127 = load double, double* %21, align 8, !dbg !229
  %128 = load double, double* %21, align 8, !dbg !230
  %129 = fmul double %127, %128, !dbg !231
  call void @fMulHandler(double %127, double %128, double %129, i64 94256791587160, i64 94256791587480, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791587888, i32 105, i32 12), !dbg !232
  %130 = load double, double* %21, align 8, !dbg !232
  %131 = load double, double* %21, align 8, !dbg !233
  %132 = load double, double* %21, align 8, !dbg !234
  %133 = fmul double %132, 0x3FDA2E8BA2E8BA2F, !dbg !235
  call void @fMulHandler(double %132, double 0x3FDA2E8BA2E8BA2F, double %133, i64 94256791589048, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791589456, i32 105, i32 54), !dbg !236
  %134 = fadd double 3.750000e-01, %133, !dbg !236
  call void @fAddHandler(double 3.750000e-01, double %133, double %134, i64 0, i64 94256791589456, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791589968, i32 105, i32 49), !dbg !237
  %135 = fmul double %131, %134, !dbg !237
  call void @fMulHandler(double %131, double %134, double %135, i64 94256791588664, i64 94256791589968, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791590352, i32 105, i32 40), !dbg !238
  %136 = fadd double 0x3FC2492492492492, %135, !dbg !238
  call void @fAddHandler(double 0x3FC2492492492492, double %135, double %136, i64 0, i64 94256791590352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791590768, i32 105, i32 35), !dbg !239
  %137 = fmul double %130, %136, !dbg !239
  call void @fMulHandler(double %130, double %136, double %137, i64 94256791588280, i64 94256791590768, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791591184, i32 105, i32 29), !dbg !240
  %138 = fadd double 3.000000e-01, %137, !dbg !240
  call void @fAddHandler(double 3.000000e-01, double %137, double %138, i64 0, i64 94256791591184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791591696, i32 105, i32 24), !dbg !241
  %139 = fmul double %129, %138, !dbg !241
  call void @fMulHandler(double %129, double %138, double %139, i64 94256791587888, i64 94256791591696, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791594144, i32 105, i32 17), !dbg !242
  store double %139, double* %23, align 8, !dbg !242
  %140 = load double, double* %23, align 8, !dbg !243
  %141 = fadd double 1.000000e+00, %140, !dbg !244
  call void @fAddHandler(double 1.000000e+00, double %140, double %141, i64 0, i64 94256791594952, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791595456, i32 106, i32 24), !dbg !245
  %142 = load double, double* %20, align 8, !dbg !245
  %143 = call double @sqrt(double %142) #6, !dbg !246
  call void @callOneArgHandler(i32 14, double %142, double %143, i64 94256791595816, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791596288, i32 106, i32 31), !dbg !247
  %144 = fdiv double %141, %143, !dbg !247
  call void @fDivHandler(double %141, double %143, double %144, i64 94256791595456, i64 94256791596288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791596768, i32 106, i32 29), !dbg !248
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !248
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 0, !dbg !249
  store double %144, double* %146, align 8, !dbg !250
  %147 = load double, double* %14, align 8, !dbg !251
  %148 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !252
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %148, i32 0, i32 0, !dbg !253
  %150 = load double, double* %149, align 8, !dbg !253
  %151 = call double @fabs(double %150) #1, !dbg !254
  %152 = fmul double %147, %151, !dbg !255
  call void @fMulHandler(double %147, double %151, double %152, i64 94256791598408, i64 94256791601360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @1, i32 0, i32 0), i64 94256791601840, i32 107, i32 24), !dbg !256
  %153 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !256
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %153, i32 0, i32 1, !dbg !257
  store double %152, double* %154, align 8, !dbg !258
  store i32 0, i32* %5, align 4, !dbg !259
  br label %165, !dbg !259

; <label>:155:                                    ; preds = %67
  br label %156, !dbg !260, !llvm.loop !262

; <label>:156:                                    ; preds = %155
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !263
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %157, i32 0, i32 0, !dbg !263
  store double 0x7FF8000000000000, double* %158, align 8, !dbg !263
  %159 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !263
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %159, i32 0, i32 1, !dbg !263
  store double 0x7FF8000000000000, double* %160, align 8, !dbg !263
  br label %161, !dbg !263, !llvm.loop !266

; <label>:161:                                    ; preds = %156
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 111, i32 1), !dbg !268
  store i32 1, i32* %5, align 4, !dbg !268
  br label %165, !dbg !268
                                                  ; No predecessors!
  br label %163, !dbg !271

; <label>:163:                                    ; preds = %162
  br label %164

; <label>:164:                                    ; preds = %163
  br label %165

; <label>:165:                                    ; preds = %164, %161, %126, %122, %57, %55
  %166 = load i32, i32* %5, align 4, !dbg !273
  ret i32 %166, !dbg !273
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @GSL_MODE_PREC(i32) #2

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_ellint_RD_e(double, double, double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !274 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca i32, align 4
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !277, metadata !75), !dbg !278
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !279, metadata !75), !dbg !280
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !281, metadata !75), !dbg !282
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !283, metadata !75), !dbg !284
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !285, metadata !75), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %12, metadata !287, metadata !75), !dbg !288
  %44 = load i32, i32* %10, align 4, !dbg !289
  %45 = call i32 @GSL_MODE_PREC(i32 %44), !dbg !290
  store i32 %45, i32* %12, align 4, !dbg !288
  call void @llvm.dbg.declare(metadata double* %13, metadata !291, metadata !75), !dbg !292
  %46 = load i32, i32* %12, align 4, !dbg !293
  %47 = icmp eq i32 %46, 0, !dbg !294
  %48 = sext i32 %46 to i64, !dbg !293
  %49 = call i1 @iCmpInstHandler(i64 %48, i64 0, i1 %47, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791632096, i32 120, i32 32), !dbg !293
  %50 = select i1 %49, double 1.000000e-03, double 3.000000e-02, !dbg !293
  store double %50, double* %13, align 8, !dbg !292
  call void @llvm.dbg.declare(metadata double* %14, metadata !295, metadata !75), !dbg !296
  %51 = load i32, i32* %12, align 4, !dbg !297
  %52 = zext i32 %51 to i64, !dbg !298
  %53 = getelementptr inbounds [0 x double], [0 x double]* @gsl_prec_eps, i64 0, i64 %52, !dbg !298
  %54 = load double, double* %53, align 8, !dbg !298
  store double %54, double* %14, align 8, !dbg !296
  call void @llvm.dbg.declare(metadata double* %15, metadata !299, metadata !75), !dbg !300
  %55 = call double @pow(double 0x7FEFFFFFFFFFFFFF, double 0x3FE5555555555555) #6, !dbg !301
  call void @callTwoArgsHandler(i32 15, double 0x7FEFFFFFFFFFFFFF, double 0x3FE5555555555555, double %55, i64 0, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791642552, i32 122, i32 28), !dbg !302
  %56 = fdiv double 2.000000e+00, %55, !dbg !302
  call void @fDivHandler(double 2.000000e+00, double %55, double %56, i64 0, i64 94256791642552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791643056, i32 122, i32 27), !dbg !300
  store double %56, double* %15, align 8, !dbg !300
  call void @llvm.dbg.declare(metadata double* %16, metadata !303, metadata !75), !dbg !304
  %57 = load double, double* %13, align 8, !dbg !305
  %58 = fmul double 1.000000e-01, %57, !dbg !306
  call void @fMulHandler(double 1.000000e-01, double %57, double %58, i64 0, i64 94256791646264, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791646736, i32 123, i32 31), !dbg !307
  %59 = fdiv double %58, 0x10000000000000, !dbg !307
  call void @fDivHandler(double %58, double 0x10000000000000, double %59, i64 94256791646736, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791647184, i32 123, i32 38), !dbg !308
  %60 = call double @pow(double %59, double 0x3FE5555555555555) #6, !dbg !308
  call void @callTwoArgsHandler(i32 15, double %59, double 0x3FE5555555555555, double %60, i64 94256791647184, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791647720, i32 123, i32 24), !dbg !304
  store double %60, double* %16, align 8, !dbg !304
  call void @llvm.dbg.declare(metadata i32* %17, metadata !309, metadata !75), !dbg !310
  store i32 10000, i32* %17, align 4, !dbg !310
  %61 = load double, double* %7, align 8, !dbg !311
  %62 = load double, double* %8, align 8, !dbg !311
  %63 = fcmp olt double %61, %62, !dbg !311
  %64 = call i1 @fCmpInstHandler(double %61, double %62, i1 %63, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791654640, i32 126, i32 6), !dbg !311
  br i1 %64, label %65, label %67, !dbg !311

; <label>:65:                                     ; preds = %5
  %66 = load double, double* %7, align 8, !dbg !313
  br label %69, !dbg !313

; <label>:67:                                     ; preds = %5
  %68 = load double, double* %8, align 8, !dbg !315
  br label %69, !dbg !315

; <label>:69:                                     ; preds = %67, %65
  %70 = phi double [ %66, %65 ], [ %68, %67 ], !dbg !317
  %71 = fcmp olt double %70, 0.000000e+00, !dbg !319
  %72 = call i1 @fCmpInstHandler(double %70, double 0.000000e+00, i1 %71, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791659680, i32 126, i32 19), !dbg !320
  br i1 %72, label %91, label %73, !dbg !320

; <label>:73:                                     ; preds = %69
  %74 = load double, double* %7, align 8, !dbg !321
  %75 = load double, double* %8, align 8, !dbg !321
  %76 = fadd double %74, %75, !dbg !321
  call void @fAddHandler(double %74, double %75, double %76, i64 94256791660792, i64 94256791661112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791662784, i32 126, i32 28), !dbg !321
  %77 = load double, double* %9, align 8, !dbg !321
  %78 = fcmp olt double %76, %77, !dbg !321
  %79 = call i1 @fCmpInstHandler(double %76, double %77, i1 %78, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791663008, i32 126, i32 28), !dbg !321
  br i1 %79, label %80, label %84, !dbg !321

; <label>:80:                                     ; preds = %73
  %81 = load double, double* %7, align 8, !dbg !323
  %82 = load double, double* %8, align 8, !dbg !323
  %83 = fadd double %81, %82, !dbg !323
  call void @fAddHandler(double %81, double %82, double %83, i64 94256791663544, i64 94256791663864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791665536, i32 126, i32 28), !dbg !323
  br label %86, !dbg !323

; <label>:84:                                     ; preds = %73
  %85 = load double, double* %9, align 8, !dbg !325
  br label %86, !dbg !325

; <label>:86:                                     ; preds = %84, %80
  %87 = phi double [ %83, %80 ], [ %85, %84 ], !dbg !327
  %88 = load double, double* %15, align 8, !dbg !329
  %89 = fcmp olt double %87, %88, !dbg !330
  %90 = call i1 @fCmpInstHandler(double %87, double %88, i1 %89, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791668656, i32 126, i32 43), !dbg !331
  br i1 %90, label %91, label %100, !dbg !331

; <label>:91:                                     ; preds = %86, %69
  br label %92, !dbg !332, !llvm.loop !334

; <label>:92:                                     ; preds = %91
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !335
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 0, !dbg !335
  store double 0x7FF8000000000000, double* %94, align 8, !dbg !335
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !335
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !335
  store double 0x7FF8000000000000, double* %96, align 8, !dbg !335
  br label %97, !dbg !335, !llvm.loop !338

; <label>:97:                                     ; preds = %92
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 127, i32 1), !dbg !340
  store i32 1, i32* %6, align 4, !dbg !340
  br label %279, !dbg !340
                                                  ; No predecessors!
  br label %99, !dbg !343

; <label>:99:                                     ; preds = %98
  br label %279, !dbg !345

; <label>:100:                                    ; preds = %86
  %101 = load double, double* %7, align 8, !dbg !346
  %102 = load double, double* %8, align 8, !dbg !348
  %103 = load double, double* %9, align 8, !dbg !349
  %104 = call double @locMAX3(double %101, double %102, double %103), !dbg !350
  %105 = load double, double* %16, align 8, !dbg !351
  %106 = fcmp olt double %104, %105, !dbg !352
  %107 = call i1 @fCmpInstHandler(double %104, double %105, i1 %106, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791679232, i32 129, i32 26), !dbg !353
  br i1 %107, label %108, label %269, !dbg !353

; <label>:108:                                    ; preds = %100
  call void @llvm.dbg.declare(metadata double* %18, metadata !354, metadata !75), !dbg !356
  store double 0x3FCB6DB6DB6DB6DB, double* %18, align 8, !dbg !356
  call void @llvm.dbg.declare(metadata double* %19, metadata !357, metadata !75), !dbg !358
  store double 0x3FC5555555555555, double* %19, align 8, !dbg !358
  call void @llvm.dbg.declare(metadata double* %20, metadata !359, metadata !75), !dbg !360
  store double 0x3FDA2E8BA2E8BA2F, double* %20, align 8, !dbg !360
  call void @llvm.dbg.declare(metadata double* %21, metadata !361, metadata !75), !dbg !362
  store double 0x3FBD89D89D89D89E, double* %21, align 8, !dbg !362
  call void @llvm.dbg.declare(metadata double* %22, metadata !363, metadata !75), !dbg !364
  %109 = load double, double* %7, align 8, !dbg !365
  store double %109, double* %22, align 8, !dbg !364
  call void @llvm.dbg.declare(metadata double* %23, metadata !366, metadata !75), !dbg !367
  %110 = load double, double* %8, align 8, !dbg !368
  store double %110, double* %23, align 8, !dbg !367
  call void @llvm.dbg.declare(metadata double* %24, metadata !369, metadata !75), !dbg !370
  %111 = load double, double* %9, align 8, !dbg !371
  store double %111, double* %24, align 8, !dbg !370
  call void @llvm.dbg.declare(metadata double* %25, metadata !372, metadata !75), !dbg !373
  store double 0.000000e+00, double* %25, align 8, !dbg !373
  call void @llvm.dbg.declare(metadata double* %26, metadata !374, metadata !75), !dbg !375
  store double 1.000000e+00, double* %26, align 8, !dbg !375
  call void @llvm.dbg.declare(metadata double* %27, metadata !376, metadata !75), !dbg !377
  call void @llvm.dbg.declare(metadata double* %28, metadata !378, metadata !75), !dbg !379
  call void @llvm.dbg.declare(metadata double* %29, metadata !380, metadata !75), !dbg !381
  call void @llvm.dbg.declare(metadata double* %30, metadata !382, metadata !75), !dbg !383
  call void @llvm.dbg.declare(metadata double* %31, metadata !384, metadata !75), !dbg !385
  call void @llvm.dbg.declare(metadata double* %32, metadata !386, metadata !75), !dbg !387
  call void @llvm.dbg.declare(metadata double* %33, metadata !388, metadata !75), !dbg !389
  call void @llvm.dbg.declare(metadata double* %34, metadata !390, metadata !75), !dbg !391
  call void @llvm.dbg.declare(metadata double* %35, metadata !392, metadata !75), !dbg !393
  call void @llvm.dbg.declare(metadata double* %36, metadata !394, metadata !75), !dbg !395
  call void @llvm.dbg.declare(metadata double* %37, metadata !396, metadata !75), !dbg !397
  call void @llvm.dbg.declare(metadata i32* %38, metadata !398, metadata !75), !dbg !399
  store i32 0, i32* %38, align 4, !dbg !399
  br label %112, !dbg !400

; <label>:112:                                    ; preds = %201, %108
  call void @llvm.dbg.declare(metadata double* %39, metadata !401, metadata !75), !dbg !403
  call void @llvm.dbg.declare(metadata double* %40, metadata !404, metadata !75), !dbg !405
  call void @llvm.dbg.declare(metadata double* %41, metadata !406, metadata !75), !dbg !407
  call void @llvm.dbg.declare(metadata double* %42, metadata !408, metadata !75), !dbg !409
  call void @llvm.dbg.declare(metadata double* %43, metadata !410, metadata !75), !dbg !411
  %113 = load double, double* %22, align 8, !dbg !412
  %114 = load double, double* %23, align 8, !dbg !413
  %115 = fadd double %113, %114, !dbg !414
  call void @fAddHandler(double %113, double %114, double %115, i64 94256791731368, i64 94256791731720, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791732128, i32 145, i32 16), !dbg !415
  %116 = load double, double* %24, align 8, !dbg !415
  %117 = fmul double 3.000000e+00, %116, !dbg !416
  call void @fMulHandler(double 3.000000e+00, double %116, double %117, i64 0, i64 94256791732520, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791732960, i32 145, i32 27), !dbg !417
  %118 = fadd double %115, %117, !dbg !417
  call void @fAddHandler(double %115, double %117, double %118, i64 94256791732128, i64 94256791732960, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791733344, i32 145, i32 21), !dbg !418
  %119 = fmul double %118, 2.000000e-01, !dbg !418
  call void @fMulHandler(double %118, double 2.000000e-01, double %119, i64 94256791733344, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791733856, i32 145, i32 33), !dbg !419
  store double %119, double* %34, align 8, !dbg !419
  %120 = load double, double* %34, align 8, !dbg !420
  %121 = load double, double* %22, align 8, !dbg !421
  %122 = fsub double %120, %121, !dbg !422
  call void @fSubHandler(double %120, double %121, double %122, i64 94256791734632, i64 94256791735016, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791735424, i32 146, i32 19), !dbg !423
  %123 = load double, double* %34, align 8, !dbg !423
  %124 = fdiv double %122, %123, !dbg !424
  call void @fDivHandler(double %122, double %123, double %124, i64 94256791735424, i64 94256791735816, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791736224, i32 146, i32 25), !dbg !425
  store double %124, double* %35, align 8, !dbg !425
  %125 = load double, double* %34, align 8, !dbg !426
  %126 = load double, double* %23, align 8, !dbg !427
  %127 = fsub double %125, %126, !dbg !428
  call void @fSubHandler(double %125, double %126, double %127, i64 94256791737032, i64 94256791737416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791737824, i32 147, i32 19), !dbg !429
  %128 = load double, double* %34, align 8, !dbg !429
  %129 = fdiv double %127, %128, !dbg !430
  call void @fDivHandler(double %127, double %128, double %129, i64 94256791737824, i64 94256791738216, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791738624, i32 147, i32 25), !dbg !431
  store double %129, double* %36, align 8, !dbg !431
  %130 = load double, double* %34, align 8, !dbg !432
  %131 = load double, double* %24, align 8, !dbg !433
  %132 = fsub double %130, %131, !dbg !434
  call void @fSubHandler(double %130, double %131, double %132, i64 94256791739432, i64 94256791739816, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791740224, i32 148, i32 19), !dbg !435
  %133 = load double, double* %34, align 8, !dbg !435
  %134 = fdiv double %132, %133, !dbg !436
  call void @fDivHandler(double %132, double %133, double %134, i64 94256791740224, i64 94256791740616, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791741024, i32 148, i32 25), !dbg !437
  store double %134, double* %37, align 8, !dbg !437
  %135 = load double, double* %35, align 8, !dbg !438
  %136 = call double @fabs(double %135) #1, !dbg !439
  %137 = load double, double* %36, align 8, !dbg !440
  %138 = call double @fabs(double %137) #1, !dbg !441
  %139 = load double, double* %37, align 8, !dbg !443
  %140 = call double @fabs(double %139) #1, !dbg !444
  %141 = call double @locMAX3(double %136, double %138, double %140), !dbg !446
  store double %141, double* %43, align 8, !dbg !448
  %142 = load double, double* %43, align 8, !dbg !449
  %143 = load double, double* %13, align 8, !dbg !451
  %144 = fcmp olt double %142, %143, !dbg !452
  %145 = call i1 @fCmpInstHandler(double %142, double %143, i1 %144, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791748448, i32 150, i32 18), !dbg !453
  br i1 %145, label %146, label %147, !dbg !453

; <label>:146:                                    ; preds = %112
  br label %202, !dbg !454

; <label>:147:                                    ; preds = %112
  %148 = load double, double* %22, align 8, !dbg !456
  %149 = call double @sqrt(double %148) #6, !dbg !457
  call void @callOneArgHandler(i32 14, double %148, double %149, i64 94256791750024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791750432, i32 151, i32 16), !dbg !458
  store double %149, double* %39, align 8, !dbg !458
  %150 = load double, double* %23, align 8, !dbg !459
  %151 = call double @sqrt(double %150) #6, !dbg !460
  call void @callOneArgHandler(i32 14, double %150, double %151, i64 94256791751304, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791751776, i32 152, i32 16), !dbg !461
  store double %151, double* %40, align 8, !dbg !461
  %152 = load double, double* %24, align 8, !dbg !462
  %153 = call double @sqrt(double %152) #6, !dbg !463
  call void @callOneArgHandler(i32 14, double %152, double %153, i64 94256791752648, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791753120, i32 153, i32 16), !dbg !464
  store double %153, double* %41, align 8, !dbg !464
  %154 = load double, double* %39, align 8, !dbg !465
  %155 = load double, double* %40, align 8, !dbg !466
  %156 = load double, double* %41, align 8, !dbg !467
  %157 = fadd double %155, %156, !dbg !468
  call void @fAddHandler(double %155, double %156, double %157, i64 94256791754376, i64 94256791754760, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791755168, i32 154, i32 32), !dbg !469
  %158 = fmul double %154, %157, !dbg !469
  call void @fMulHandler(double %154, double %157, double %158, i64 94256791753992, i64 94256791755168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791755584, i32 154, i32 22), !dbg !470
  %159 = load double, double* %40, align 8, !dbg !470
  %160 = load double, double* %41, align 8, !dbg !471
  %161 = fmul double %159, %160, !dbg !472
  call void @fMulHandler(double %159, double %160, double %161, i64 94256791755976, i64 94256791756360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791756768, i32 154, i32 51), !dbg !473
  %162 = fadd double %158, %161, !dbg !473
  call void @fAddHandler(double %158, double %161, double %162, i64 94256791755584, i64 94256791756768, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791757184, i32 154, i32 42), !dbg !474
  store double %162, double* %42, align 8, !dbg !474
  %163 = load double, double* %26, align 8, !dbg !475
  %164 = load double, double* %41, align 8, !dbg !476
  %165 = load double, double* %24, align 8, !dbg !477
  %166 = load double, double* %42, align 8, !dbg !478
  %167 = fadd double %165, %166, !dbg !479
  call void @fAddHandler(double %165, double %166, double %167, i64 94256791758760, i64 94256791759144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791759552, i32 155, i32 40), !dbg !480
  %168 = fmul double %164, %167, !dbg !480
  call void @fMulHandler(double %164, double %167, double %168, i64 94256791758376, i64 94256791759552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791759968, i32 155, i32 34), !dbg !481
  %169 = fdiv double %163, %168, !dbg !481
  call void @fDivHandler(double %163, double %168, double %169, i64 94256791757992, i64 94256791759968, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791760384, i32 155, i32 24), !dbg !482
  %170 = load double, double* %25, align 8, !dbg !482
  %171 = fadd double %170, %169, !dbg !482
  call void @fAddHandler(double %170, double %169, double %171, i64 94256791760776, i64 94256791760384, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791761184, i32 155, i32 14), !dbg !482
  store double %171, double* %25, align 8, !dbg !482
  %172 = load double, double* %26, align 8, !dbg !483
  %173 = fmul double %172, 2.500000e-01, !dbg !483
  call void @fMulHandler(double %172, double 2.500000e-01, double %173, i64 94256791762968, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791763408, i32 156, i32 14), !dbg !483
  store double %173, double* %26, align 8, !dbg !483
  %174 = load double, double* %22, align 8, !dbg !484
  %175 = load double, double* %42, align 8, !dbg !485
  %176 = fadd double %174, %175, !dbg !486
  call void @fAddHandler(double %174, double %175, double %176, i64 94256791765192, i64 94256791765544, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791765952, i32 157, i32 16), !dbg !487
  %177 = fmul double %176, 2.500000e-01, !dbg !487
  call void @fMulHandler(double %176, double 2.500000e-01, double %177, i64 94256791765952, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791766400, i32 157, i32 25), !dbg !488
  store double %177, double* %22, align 8, !dbg !488
  %178 = load double, double* %23, align 8, !dbg !489
  %179 = load double, double* %42, align 8, !dbg !490
  %180 = fadd double %178, %179, !dbg !491
  call void @fAddHandler(double %178, double %179, double %180, i64 94256791767176, i64 94256791767560, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791767968, i32 158, i32 16), !dbg !492
  %181 = fmul double %180, 2.500000e-01, !dbg !492
  call void @fMulHandler(double %180, double 2.500000e-01, double %181, i64 94256791767968, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791768416, i32 158, i32 25), !dbg !493
  store double %181, double* %23, align 8, !dbg !493
  %182 = load double, double* %24, align 8, !dbg !494
  %183 = load double, double* %42, align 8, !dbg !495
  %184 = fadd double %182, %183, !dbg !496
  call void @fAddHandler(double %182, double %183, double %184, i64 94256791769192, i64 94256791769576, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791769984, i32 159, i32 16), !dbg !497
  %185 = fmul double %184, 2.500000e-01, !dbg !497
  call void @fMulHandler(double %184, double 2.500000e-01, double %185, i64 94256791769984, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791770432, i32 159, i32 25), !dbg !498
  store double %185, double* %24, align 8, !dbg !498
  %186 = load i32, i32* %38, align 4, !dbg !499
  %187 = add nsw i32 %186, 1, !dbg !499
  store i32 %187, i32* %38, align 4, !dbg !499
  %188 = load i32, i32* %38, align 4, !dbg !500
  %189 = icmp eq i32 %188, 10000, !dbg !502
  %190 = sext i32 %188 to i64, !dbg !503
  %191 = call i1 @iCmpInstHandler(i64 %190, i64 10000, i1 %189, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791773808, i32 161, i32 11), !dbg !503
  br i1 %191, label %192, label %201, !dbg !503

; <label>:192:                                    ; preds = %147
  br label %193, !dbg !504, !llvm.loop !506

; <label>:193:                                    ; preds = %192
  %194 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !507
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %194, i32 0, i32 0, !dbg !507
  store double 0x7FF8000000000000, double* %195, align 8, !dbg !507
  %196 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !507
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %196, i32 0, i32 1, !dbg !507
  store double 0x7FF8000000000000, double* %197, align 8, !dbg !507
  br label %198, !dbg !507, !llvm.loop !510

; <label>:198:                                    ; preds = %193
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 162, i32 11), !dbg !512
  store i32 11, i32* %6, align 4, !dbg !512
  br label %279, !dbg !512
                                                  ; No predecessors!
  br label %200, !dbg !515

; <label>:200:                                    ; preds = %199
  br label %201, !dbg !517

; <label>:201:                                    ; preds = %200, %147
  br label %112, !dbg !518, !llvm.loop !520

; <label>:202:                                    ; preds = %146
  %203 = load double, double* %35, align 8, !dbg !521
  %204 = load double, double* %36, align 8, !dbg !522
  %205 = fmul double %203, %204, !dbg !523
  call void @fMulHandler(double %203, double %204, double %205, i64 94256791782632, i64 94256791782952, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791783360, i32 165, i32 16), !dbg !524
  store double %205, double* %27, align 8, !dbg !524
  %206 = load double, double* %37, align 8, !dbg !525
  %207 = load double, double* %37, align 8, !dbg !526
  %208 = fmul double %206, %207, !dbg !527
  call void @fMulHandler(double %206, double %207, double %208, i64 94256791784168, i64 94256791784552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791784960, i32 166, i32 16), !dbg !528
  store double %208, double* %28, align 8, !dbg !528
  %209 = load double, double* %27, align 8, !dbg !529
  %210 = load double, double* %28, align 8, !dbg !530
  %211 = fsub double %209, %210, !dbg !531
  call void @fSubHandler(double %209, double %210, double %211, i64 94256791785768, i64 94256791786152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791786560, i32 167, i32 13), !dbg !532
  store double %211, double* %29, align 8, !dbg !532
  %212 = load double, double* %27, align 8, !dbg !533
  %213 = load double, double* %28, align 8, !dbg !534
  %214 = fmul double 6.000000e+00, %213, !dbg !535
  call void @fMulHandler(double 6.000000e+00, double %213, double %214, i64 0, i64 94256791787752, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791788256, i32 168, i32 19), !dbg !536
  %215 = fsub double %212, %214, !dbg !536
  call void @fSubHandler(double %212, double %214, double %215, i64 94256791787368, i64 94256791788256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791788640, i32 168, i32 13), !dbg !537
  store double %215, double* %30, align 8, !dbg !537
  %216 = load double, double* %30, align 8, !dbg !538
  %217 = load double, double* %29, align 8, !dbg !539
  %218 = fadd double %216, %217, !dbg !540
  call void @fAddHandler(double %216, double %217, double %218, i64 94256791789448, i64 94256791789832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791790240, i32 169, i32 13), !dbg !541
  %219 = load double, double* %29, align 8, !dbg !541
  %220 = fadd double %218, %219, !dbg !542
  call void @fAddHandler(double %218, double %219, double %220, i64 94256791790240, i64 94256791790632, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791791040, i32 169, i32 18), !dbg !543
  store double %220, double* %31, align 8, !dbg !543
  %221 = load double, double* %30, align 8, !dbg !544
  %222 = load double, double* %30, align 8, !dbg !545
  %223 = fmul double 0x3FBA2E8BA2E8BA2F, %222, !dbg !546
  call void @fMulHandler(double 0x3FBA2E8BA2E8BA2F, double %222, double %223, i64 0, i64 94256791792232, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791792704, i32 170, i32 33), !dbg !547
  %224 = fadd double 0xBFCB6DB6DB6DB6DB, %223, !dbg !547
  call void @fAddHandler(double 0xBFCB6DB6DB6DB6DB, double %223, double %224, i64 0, i64 94256791792704, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791793184, i32 170, i32 21), !dbg !548
  %225 = load double, double* %37, align 8, !dbg !548
  %226 = fmul double 0x3FC6276276276276, %225, !dbg !549
  call void @fMulHandler(double 0x3FC6276276276276, double %225, double %226, i64 0, i64 94256791793576, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791794048, i32 170, i32 49), !dbg !550
  %227 = load double, double* %31, align 8, !dbg !550
  %228 = fmul double %226, %227, !dbg !551
  call void @fMulHandler(double %226, double %227, double %228, i64 94256791794048, i64 94256791794440, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791794848, i32 170, i32 57), !dbg !552
  %229 = fsub double %224, %228, !dbg !552
  call void @fSubHandler(double %224, double %228, double %229, i64 94256791793184, i64 94256791794848, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791795264, i32 170, i32 38), !dbg !553
  %230 = fmul double %221, %229, !dbg !553
  call void @fMulHandler(double %221, double %229, double %230, i64 94256791791848, i64 94256791795264, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791795680, i32 170, i32 13), !dbg !554
  store double %230, double* %32, align 8, !dbg !554
  %231 = load double, double* %37, align 8, !dbg !555
  %232 = load double, double* %31, align 8, !dbg !556
  %233 = fmul double 0x3FC5555555555555, %232, !dbg !557
  call void @fMulHandler(double 0x3FC5555555555555, double %232, double %233, i64 0, i64 94256791796872, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791797280, i32 171, i32 22), !dbg !558
  %234 = load double, double* %37, align 8, !dbg !558
  %235 = load double, double* %29, align 8, !dbg !559
  %236 = fmul double 0xBFDA2E8BA2E8BA2F, %235, !dbg !560
  call void @fMulHandler(double 0xBFDA2E8BA2E8BA2F, double %235, double %236, i64 0, i64 94256791798056, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791798528, i32 171, i32 43), !dbg !561
  %237 = load double, double* %37, align 8, !dbg !561
  %238 = fmul double %237, 0x3FBD89D89D89D89E, !dbg !562
  call void @fMulHandler(double %237, double 0x3FBD89D89D89D89E, double %238, i64 94256791798920, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791799328, i32 171, i32 56), !dbg !563
  %239 = load double, double* %27, align 8, !dbg !563
  %240 = fmul double %238, %239, !dbg !564
  call void @fMulHandler(double %238, double %239, double %240, i64 94256791799328, i64 94256791799720, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791800128, i32 171, i32 61), !dbg !565
  %241 = fadd double %236, %240, !dbg !565
  call void @fAddHandler(double %236, double %240, double %241, i64 94256791798528, i64 94256791800128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791800544, i32 171, i32 48), !dbg !566
  %242 = fmul double %234, %241, !dbg !566
  call void @fMulHandler(double %234, double %241, double %242, i64 94256791797672, i64 94256791800544, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791800960, i32 171, i32 35), !dbg !567
  %243 = fadd double %233, %242, !dbg !567
  call void @fAddHandler(double %233, double %242, double %243, i64 94256791797280, i64 94256791800960, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791801376, i32 171, i32 27), !dbg !568
  %244 = fmul double %231, %243, !dbg !568
  call void @fMulHandler(double %231, double %243, double %244, i64 94256791796488, i64 94256791801376, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791801792, i32 171, i32 16), !dbg !569
  store double %244, double* %33, align 8, !dbg !569
  %245 = load double, double* %25, align 8, !dbg !570
  %246 = fmul double 3.000000e+00, %245, !dbg !571
  call void @fMulHandler(double 3.000000e+00, double %245, double %246, i64 0, i64 94256791802600, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791803040, i32 172, i32 23), !dbg !572
  %247 = load double, double* %26, align 8, !dbg !572
  %248 = load double, double* %32, align 8, !dbg !573
  %249 = fadd double 1.000000e+00, %248, !dbg !574
  call void @fAddHandler(double 1.000000e+00, double %248, double %249, i64 0, i64 94256791803784, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791804224, i32 172, i32 47), !dbg !575
  %250 = load double, double* %33, align 8, !dbg !575
  %251 = fadd double %249, %250, !dbg !576
  call void @fAddHandler(double %249, double %250, double %251, i64 94256791804224, i64 94256791804584, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791804992, i32 172, i32 52), !dbg !577
  %252 = fmul double %247, %251, !dbg !577
  call void @fMulHandler(double %247, double %251, double %252, i64 94256791803400, i64 94256791804992, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791805408, i32 172, i32 40), !dbg !578
  %253 = load double, double* %34, align 8, !dbg !578
  %254 = load double, double* %34, align 8, !dbg !579
  %255 = call double @sqrt(double %254) #6, !dbg !580
  call void @callOneArgHandler(i32 14, double %254, double %255, i64 94256791806184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791806656, i32 172, i32 66), !dbg !581
  %256 = fmul double %253, %255, !dbg !581
  call void @fMulHandler(double %253, double %255, double %256, i64 94256791805800, i64 94256791806656, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791807136, i32 172, i32 64), !dbg !582
  %257 = fdiv double %252, %256, !dbg !582
  call void @fDivHandler(double %252, double %256, double %257, i64 94256791805408, i64 94256791807136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791807552, i32 172, i32 58), !dbg !583
  %258 = fadd double %246, %257, !dbg !583
  call void @fAddHandler(double %246, double %257, double %258, i64 94256791803040, i64 94256791807552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791807968, i32 172, i32 31), !dbg !584
  %259 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !584
  %260 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %259, i32 0, i32 0, !dbg !585
  store double %258, double* %260, align 8, !dbg !586
  %261 = load double, double* %14, align 8, !dbg !587
  %262 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !588
  %263 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %262, i32 0, i32 0, !dbg !589
  %264 = load double, double* %263, align 8, !dbg !589
  %265 = call double @fabs(double %264) #1, !dbg !590
  %266 = fmul double %261, %265, !dbg !591
  call void @fMulHandler(double %261, double %265, double %266, i64 94256791809608, i64 94256791812560, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @3, i32 0, i32 0), i64 94256791813040, i32 173, i32 24), !dbg !592
  %267 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !592
  %268 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %267, i32 0, i32 1, !dbg !593
  store double %266, double* %268, align 8, !dbg !594
  store i32 0, i32* %6, align 4, !dbg !595
  br label %279, !dbg !595

; <label>:269:                                    ; preds = %100
  br label %270, !dbg !596, !llvm.loop !598

; <label>:270:                                    ; preds = %269
  %271 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !599
  %272 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %271, i32 0, i32 0, !dbg !599
  store double 0x7FF8000000000000, double* %272, align 8, !dbg !599
  %273 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !599
  %274 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %273, i32 0, i32 1, !dbg !599
  store double 0x7FF8000000000000, double* %274, align 8, !dbg !599
  br label %275, !dbg !599, !llvm.loop !602

; <label>:275:                                    ; preds = %270
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 177, i32 1), !dbg !604
  store i32 1, i32* %6, align 4, !dbg !604
  br label %279, !dbg !604
                                                  ; No predecessors!
  br label %277, !dbg !607

; <label>:277:                                    ; preds = %276
  br label %278

; <label>:278:                                    ; preds = %277
  br label %279

; <label>:279:                                    ; preds = %278, %275, %202, %198, %99, %97
  %280 = load i32, i32* %6, align 4, !dbg !609
  ret i32 %280, !dbg !609
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: inlinehint nounwind uwtable
define internal double @locMAX3(double, double, double) #5 !dbg !610 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !613, metadata !75), !dbg !614
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !615, metadata !75), !dbg !616
  store double %2, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !617, metadata !75), !dbg !618
  call void @llvm.dbg.declare(metadata double* %7, metadata !619, metadata !75), !dbg !620
  %8 = load double, double* %4, align 8, !dbg !621
  %9 = load double, double* %5, align 8, !dbg !621
  %10 = fcmp ogt double %8, %9, !dbg !621
  %11 = call i1 @fCmpInstHandler(double %8, double %9, i1 %10, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94256791831840, i32 35, i32 15), !dbg !621
  br i1 %11, label %12, label %14, !dbg !621

; <label>:12:                                     ; preds = %3
  %13 = load double, double* %4, align 8, !dbg !622
  br label %16, !dbg !622

; <label>:14:                                     ; preds = %3
  %15 = load double, double* %5, align 8, !dbg !624
  br label %16, !dbg !624

; <label>:16:                                     ; preds = %14, %12
  %17 = phi double [ %13, %12 ], [ %15, %14 ], !dbg !626
  store double %17, double* %7, align 8, !dbg !628
  %18 = load double, double* %7, align 8, !dbg !629
  %19 = load double, double* %6, align 8, !dbg !629
  %20 = fcmp ogt double %18, %19, !dbg !629
  %21 = call i1 @fCmpInstHandler(double %18, double %19, i1 %20, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @5, i32 0, i32 0), i64 94256791839248, i32 36, i32 10), !dbg !629
  br i1 %21, label %22, label %24, !dbg !629

; <label>:22:                                     ; preds = %16
  %23 = load double, double* %7, align 8, !dbg !630
  br label %26, !dbg !630

; <label>:24:                                     ; preds = %16
  %25 = load double, double* %6, align 8, !dbg !631
  br label %26, !dbg !631

; <label>:26:                                     ; preds = %24, %22
  %27 = phi double [ %23, %22 ], [ %25, %24 ], !dbg !632
  ret double %27, !dbg !633
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_ellint_RF_e(double, double, double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !634 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !635, metadata !75), !dbg !636
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !637, metadata !75), !dbg !638
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !639, metadata !75), !dbg !640
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !641, metadata !75), !dbg !642
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !643, metadata !75), !dbg !644
  call void @llvm.dbg.declare(metadata double* %12, metadata !645, metadata !75), !dbg !646
  store double 0x34000000000000, double* %12, align 8, !dbg !646
  call void @llvm.dbg.declare(metadata double* %13, metadata !647, metadata !75), !dbg !648
  store double 0x7FC9999999999999, double* %13, align 8, !dbg !648
  call void @llvm.dbg.declare(metadata i32* %14, metadata !649, metadata !75), !dbg !650
  %37 = load i32, i32* %10, align 4, !dbg !651
  %38 = call i32 @GSL_MODE_PREC(i32 %37), !dbg !652
  store i32 %38, i32* %14, align 4, !dbg !650
  call void @llvm.dbg.declare(metadata double* %15, metadata !653, metadata !75), !dbg !654
  %39 = load i32, i32* %14, align 4, !dbg !655
  %40 = icmp eq i32 %39, 0, !dbg !656
  %41 = sext i32 %39 to i64, !dbg !655
  %42 = call i1 @iCmpInstHandler(i64 %41, i64 0, i1 %40, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791865824, i32 188, i32 32), !dbg !655
  %43 = select i1 %42, double 1.000000e-03, double 3.000000e-02, !dbg !655
  store double %43, double* %15, align 8, !dbg !654
  call void @llvm.dbg.declare(metadata double* %16, metadata !657, metadata !75), !dbg !658
  %44 = load i32, i32* %14, align 4, !dbg !659
  %45 = zext i32 %44 to i64, !dbg !660
  %46 = getelementptr inbounds [0 x double], [0 x double]* @gsl_prec_eps, i64 0, i64 %45, !dbg !660
  %47 = load double, double* %46, align 8, !dbg !660
  store double %47, double* %16, align 8, !dbg !658
  call void @llvm.dbg.declare(metadata i32* %17, metadata !661, metadata !75), !dbg !662
  store i32 10000, i32* %17, align 4, !dbg !662
  %48 = load double, double* %7, align 8, !dbg !663
  %49 = fcmp olt double %48, 0.000000e+00, !dbg !665
  %50 = call i1 @fCmpInstHandler(double %48, double 0.000000e+00, i1 %49, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791878112, i32 192, i32 8), !dbg !666
  br i1 %50, label %59, label %51, !dbg !666

; <label>:51:                                     ; preds = %5
  %52 = load double, double* %8, align 8, !dbg !667
  %53 = fcmp olt double %52, 0.000000e+00, !dbg !669
  %54 = call i1 @fCmpInstHandler(double %52, double 0.000000e+00, i1 %53, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791879568, i32 192, i32 19), !dbg !670
  br i1 %54, label %59, label %55, !dbg !670

; <label>:55:                                     ; preds = %51
  %56 = load double, double* %9, align 8, !dbg !671
  %57 = fcmp olt double %56, 0.000000e+00, !dbg !673
  %58 = call i1 @fCmpInstHandler(double %56, double 0.000000e+00, i1 %57, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791880880, i32 192, i32 30), !dbg !674
  br i1 %58, label %59, label %68, !dbg !674

; <label>:59:                                     ; preds = %55, %51, %5
  br label %60, !dbg !675, !llvm.loop !677

; <label>:60:                                     ; preds = %59
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !678
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !678
  store double 0x7FF8000000000000, double* %62, align 8, !dbg !678
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !678
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !678
  store double 0x7FF8000000000000, double* %64, align 8, !dbg !678
  br label %65, !dbg !678, !llvm.loop !681

; <label>:65:                                     ; preds = %60
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 193, i32 1), !dbg !683
  store i32 1, i32* %6, align 4, !dbg !683
  br label %237, !dbg !683
                                                  ; No predecessors!
  br label %67, !dbg !686

; <label>:67:                                     ; preds = %66
  br label %237, !dbg !688

; <label>:68:                                     ; preds = %55
  %69 = load double, double* %7, align 8, !dbg !689
  %70 = load double, double* %8, align 8, !dbg !691
  %71 = fadd double %69, %70, !dbg !692
  call void @fAddHandler(double %69, double %70, double %71, i64 94256791889096, i64 94256791889416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791889824, i32 195, i32 12), !dbg !693
  %72 = fcmp olt double %71, 0x34000000000000, !dbg !693
  %73 = call i1 @fCmpInstHandler(double %71, double 0x34000000000000, i1 %72, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791890240, i32 195, i32 15), !dbg !694
  br i1 %73, label %86, label %74, !dbg !694

; <label>:74:                                     ; preds = %68
  %75 = load double, double* %7, align 8, !dbg !695
  %76 = load double, double* %9, align 8, !dbg !697
  %77 = fadd double %75, %76, !dbg !698
  call void @fAddHandler(double %75, double %76, double %77, i64 94256791891352, i64 94256791891672, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791892080, i32 195, i32 27), !dbg !699
  %78 = fcmp olt double %77, 0x34000000000000, !dbg !699
  %79 = call i1 @fCmpInstHandler(double %77, double 0x34000000000000, i1 %78, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791892496, i32 195, i32 30), !dbg !700
  br i1 %79, label %86, label %80, !dbg !700

; <label>:80:                                     ; preds = %74
  %81 = load double, double* %8, align 8, !dbg !701
  %82 = load double, double* %9, align 8, !dbg !703
  %83 = fadd double %81, %82, !dbg !704
  call void @fAddHandler(double %81, double %82, double %83, i64 94256791893464, i64 94256791893784, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791894192, i32 195, i32 42), !dbg !705
  %84 = fcmp olt double %83, 0x34000000000000, !dbg !705
  %85 = call i1 @fCmpInstHandler(double %83, double 0x34000000000000, i1 %84, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791894608, i32 195, i32 45), !dbg !706
  br i1 %85, label %86, label %95, !dbg !706

; <label>:86:                                     ; preds = %80, %74, %68
  br label %87, !dbg !707, !llvm.loop !709

; <label>:87:                                     ; preds = %86
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !710
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !710
  store double 0x7FF8000000000000, double* %89, align 8, !dbg !710
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !710
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 1, !dbg !710
  store double 0x7FF8000000000000, double* %91, align 8, !dbg !710
  br label %92, !dbg !710, !llvm.loop !713

; <label>:92:                                     ; preds = %87
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 196, i32 1), !dbg !715
  store i32 1, i32* %6, align 4, !dbg !715
  br label %237, !dbg !715
                                                  ; No predecessors!
  br label %94, !dbg !718

; <label>:94:                                     ; preds = %93
  br label %236, !dbg !720

; <label>:95:                                     ; preds = %80
  %96 = load double, double* %7, align 8, !dbg !721
  %97 = load double, double* %8, align 8, !dbg !723
  %98 = load double, double* %9, align 8, !dbg !724
  %99 = call double @locMAX3(double %96, double %97, double %98), !dbg !725
  %100 = fcmp olt double %99, 0x7FC9999999999999, !dbg !726
  %101 = call i1 @fCmpInstHandler(double %99, double 0x7FC9999999999999, i1 %100, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791904528, i32 198, i32 26), !dbg !727
  br i1 %101, label %102, label %226, !dbg !727

; <label>:102:                                    ; preds = %95
  call void @llvm.dbg.declare(metadata double* %18, metadata !728, metadata !75), !dbg !730
  store double 0x3FA5555555555555, double* %18, align 8, !dbg !730
  call void @llvm.dbg.declare(metadata double* %19, metadata !731, metadata !75), !dbg !732
  store double 0x3FB1745D1745D174, double* %19, align 8, !dbg !732
  call void @llvm.dbg.declare(metadata double* %20, metadata !733, metadata !75), !dbg !734
  store double 0x3FB2492492492492, double* %20, align 8, !dbg !734
  call void @llvm.dbg.declare(metadata double* %21, metadata !735, metadata !75), !dbg !736
  %103 = load double, double* %7, align 8, !dbg !737
  store double %103, double* %21, align 8, !dbg !736
  call void @llvm.dbg.declare(metadata double* %22, metadata !738, metadata !75), !dbg !739
  %104 = load double, double* %8, align 8, !dbg !740
  store double %104, double* %22, align 8, !dbg !739
  call void @llvm.dbg.declare(metadata double* %23, metadata !741, metadata !75), !dbg !742
  %105 = load double, double* %9, align 8, !dbg !743
  store double %105, double* %23, align 8, !dbg !742
  call void @llvm.dbg.declare(metadata double* %24, metadata !744, metadata !75), !dbg !745
  call void @llvm.dbg.declare(metadata double* %25, metadata !746, metadata !75), !dbg !747
  call void @llvm.dbg.declare(metadata double* %26, metadata !748, metadata !75), !dbg !749
  call void @llvm.dbg.declare(metadata double* %27, metadata !750, metadata !75), !dbg !751
  call void @llvm.dbg.declare(metadata double* %28, metadata !752, metadata !75), !dbg !753
  call void @llvm.dbg.declare(metadata double* %29, metadata !754, metadata !75), !dbg !755
  call void @llvm.dbg.declare(metadata double* %30, metadata !756, metadata !75), !dbg !757
  call void @llvm.dbg.declare(metadata i32* %31, metadata !758, metadata !75), !dbg !759
  store i32 0, i32* %31, align 4, !dbg !759
  br label %106, !dbg !760

; <label>:106:                                    ; preds = %186, %102
  call void @llvm.dbg.declare(metadata double* %32, metadata !761, metadata !75), !dbg !763
  call void @llvm.dbg.declare(metadata double* %33, metadata !764, metadata !75), !dbg !765
  call void @llvm.dbg.declare(metadata double* %34, metadata !766, metadata !75), !dbg !767
  call void @llvm.dbg.declare(metadata double* %35, metadata !768, metadata !75), !dbg !769
  call void @llvm.dbg.declare(metadata double* %36, metadata !770, metadata !75), !dbg !771
  %107 = load double, double* %21, align 8, !dbg !772
  %108 = load double, double* %22, align 8, !dbg !773
  %109 = fadd double %107, %108, !dbg !774
  call void @fAddHandler(double %107, double %108, double %109, i64 94256791939816, i64 94256791940168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791940576, i32 210, i32 16), !dbg !775
  %110 = load double, double* %23, align 8, !dbg !775
  %111 = fadd double %109, %110, !dbg !776
  call void @fAddHandler(double %109, double %110, double %111, i64 94256791940576, i64 94256791940968, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791941376, i32 210, i32 21), !dbg !777
  %112 = fdiv double %111, 3.000000e+00, !dbg !777
  call void @fDivHandler(double %111, double 3.000000e+00, double %112, i64 94256791941376, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791941824, i32 210, i32 27), !dbg !778
  store double %112, double* %24, align 8, !dbg !778
  %113 = load double, double* %24, align 8, !dbg !779
  %114 = load double, double* %21, align 8, !dbg !780
  %115 = fadd double %113, %114, !dbg !781
  call void @fAddHandler(double %113, double %114, double %115, i64 94256791942600, i64 94256791942984, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791943392, i32 211, i32 25), !dbg !782
  %116 = load double, double* %24, align 8, !dbg !782
  %117 = fdiv double %115, %116, !dbg !783
  call void @fDivHandler(double %115, double %116, double %117, i64 94256791943392, i64 94256791943784, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791944192, i32 211, i32 31), !dbg !784
  %118 = fsub double 2.000000e+00, %117, !dbg !784
  call void @fSubHandler(double 2.000000e+00, double %117, double %118, i64 0, i64 94256791944192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791944640, i32 211, i32 19), !dbg !785
  store double %118, double* %25, align 8, !dbg !785
  %119 = load double, double* %24, align 8, !dbg !786
  %120 = load double, double* %22, align 8, !dbg !787
  %121 = fadd double %119, %120, !dbg !788
  call void @fAddHandler(double %119, double %120, double %121, i64 94256791945416, i64 94256791945800, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791946208, i32 212, i32 25), !dbg !789
  %122 = load double, double* %24, align 8, !dbg !789
  %123 = fdiv double %121, %122, !dbg !790
  call void @fDivHandler(double %121, double %122, double %123, i64 94256791946208, i64 94256791946600, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791947008, i32 212, i32 31), !dbg !791
  %124 = fsub double 2.000000e+00, %123, !dbg !791
  call void @fSubHandler(double 2.000000e+00, double %123, double %124, i64 0, i64 94256791947008, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791947456, i32 212, i32 19), !dbg !792
  store double %124, double* %26, align 8, !dbg !792
  %125 = load double, double* %24, align 8, !dbg !793
  %126 = load double, double* %23, align 8, !dbg !794
  %127 = fadd double %125, %126, !dbg !795
  call void @fAddHandler(double %125, double %126, double %127, i64 94256791948232, i64 94256791948616, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791949024, i32 213, i32 25), !dbg !796
  %128 = load double, double* %24, align 8, !dbg !796
  %129 = fdiv double %127, %128, !dbg !797
  call void @fDivHandler(double %127, double %128, double %129, i64 94256791949024, i64 94256791949416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791949824, i32 213, i32 31), !dbg !798
  %130 = fsub double 2.000000e+00, %129, !dbg !798
  call void @fSubHandler(double 2.000000e+00, double %129, double %130, i64 0, i64 94256791949824, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791950272, i32 213, i32 19), !dbg !799
  store double %130, double* %27, align 8, !dbg !799
  %131 = load double, double* %25, align 8, !dbg !800
  %132 = call double @fabs(double %131) #1, !dbg !801
  %133 = load double, double* %26, align 8, !dbg !802
  %134 = call double @fabs(double %133) #1, !dbg !803
  %135 = load double, double* %27, align 8, !dbg !805
  %136 = call double @fabs(double %135) #1, !dbg !806
  %137 = call double @locMAX3(double %132, double %134, double %136), !dbg !808
  store double %137, double* %32, align 8, !dbg !810
  %138 = load double, double* %32, align 8, !dbg !811
  %139 = load double, double* %15, align 8, !dbg !813
  %140 = fcmp olt double %138, %139, !dbg !814
  %141 = call i1 @fCmpInstHandler(double %138, double %139, i1 %140, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791957664, i32 215, i32 18), !dbg !815
  br i1 %141, label %142, label %143, !dbg !815

; <label>:142:                                    ; preds = %106
  br label %187, !dbg !816

; <label>:143:                                    ; preds = %106
  %144 = load double, double* %21, align 8, !dbg !818
  %145 = call double @sqrt(double %144) #6, !dbg !819
  call void @callOneArgHandler(i32 14, double %144, double %145, i64 94256791959240, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791959648, i32 216, i32 16), !dbg !820
  store double %145, double* %34, align 8, !dbg !820
  %146 = load double, double* %22, align 8, !dbg !821
  %147 = call double @sqrt(double %146) #6, !dbg !822
  call void @callOneArgHandler(i32 14, double %146, double %147, i64 94256791960520, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791960992, i32 217, i32 16), !dbg !823
  store double %147, double* %35, align 8, !dbg !823
  %148 = load double, double* %23, align 8, !dbg !824
  %149 = call double @sqrt(double %148) #6, !dbg !825
  call void @callOneArgHandler(i32 14, double %148, double %149, i64 94256791961864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791962336, i32 218, i32 16), !dbg !826
  store double %149, double* %36, align 8, !dbg !826
  %150 = load double, double* %34, align 8, !dbg !827
  %151 = load double, double* %35, align 8, !dbg !828
  %152 = load double, double* %36, align 8, !dbg !829
  %153 = fadd double %151, %152, !dbg !830
  call void @fAddHandler(double %151, double %152, double %153, i64 94256791963592, i64 94256791963976, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791964384, i32 219, i32 32), !dbg !831
  %154 = fmul double %150, %153, !dbg !831
  call void @fMulHandler(double %150, double %153, double %154, i64 94256791963208, i64 94256791964384, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791964800, i32 219, i32 22), !dbg !832
  %155 = load double, double* %35, align 8, !dbg !832
  %156 = load double, double* %36, align 8, !dbg !833
  %157 = fmul double %155, %156, !dbg !834
  call void @fMulHandler(double %155, double %156, double %157, i64 94256791965192, i64 94256791965576, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791965984, i32 219, i32 51), !dbg !835
  %158 = fadd double %154, %157, !dbg !835
  call void @fAddHandler(double %154, double %157, double %158, i64 94256791964800, i64 94256791965984, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791966400, i32 219, i32 42), !dbg !836
  store double %158, double* %33, align 8, !dbg !836
  %159 = load double, double* %21, align 8, !dbg !837
  %160 = load double, double* %33, align 8, !dbg !838
  %161 = fadd double %159, %160, !dbg !839
  call void @fAddHandler(double %159, double %160, double %161, i64 94256791967208, i64 94256791967592, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791968000, i32 220, i32 16), !dbg !840
  %162 = fmul double %161, 2.500000e-01, !dbg !840
  call void @fMulHandler(double %161, double 2.500000e-01, double %162, i64 94256791968000, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791968448, i32 220, i32 25), !dbg !841
  store double %162, double* %21, align 8, !dbg !841
  %163 = load double, double* %22, align 8, !dbg !842
  %164 = load double, double* %33, align 8, !dbg !843
  %165 = fadd double %163, %164, !dbg !844
  call void @fAddHandler(double %163, double %164, double %165, i64 94256791969224, i64 94256791969608, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791970016, i32 221, i32 16), !dbg !845
  %166 = fmul double %165, 2.500000e-01, !dbg !845
  call void @fMulHandler(double %165, double 2.500000e-01, double %166, i64 94256791970016, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791970464, i32 221, i32 25), !dbg !846
  store double %166, double* %22, align 8, !dbg !846
  %167 = load double, double* %23, align 8, !dbg !847
  %168 = load double, double* %33, align 8, !dbg !848
  %169 = fadd double %167, %168, !dbg !849
  call void @fAddHandler(double %167, double %168, double %169, i64 94256791971240, i64 94256791971624, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791972032, i32 222, i32 16), !dbg !850
  %170 = fmul double %169, 2.500000e-01, !dbg !850
  call void @fMulHandler(double %169, double 2.500000e-01, double %170, i64 94256791972032, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791972480, i32 222, i32 25), !dbg !851
  store double %170, double* %23, align 8, !dbg !851
  %171 = load i32, i32* %31, align 4, !dbg !852
  %172 = add nsw i32 %171, 1, !dbg !852
  store i32 %172, i32* %31, align 4, !dbg !852
  %173 = load i32, i32* %31, align 4, !dbg !853
  %174 = icmp eq i32 %173, 10000, !dbg !855
  %175 = sext i32 %173 to i64, !dbg !856
  %176 = call i1 @iCmpInstHandler(i64 %175, i64 10000, i1 %174, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791975856, i32 224, i32 11), !dbg !856
  br i1 %176, label %177, label %186, !dbg !856

; <label>:177:                                    ; preds = %143
  br label %178, !dbg !857, !llvm.loop !859

; <label>:178:                                    ; preds = %177
  %179 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !860
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %179, i32 0, i32 0, !dbg !860
  store double 0x7FF8000000000000, double* %180, align 8, !dbg !860
  %181 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !860
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %181, i32 0, i32 1, !dbg !860
  store double 0x7FF8000000000000, double* %182, align 8, !dbg !860
  br label %183, !dbg !860, !llvm.loop !863

; <label>:183:                                    ; preds = %178
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 225, i32 11), !dbg !865
  store i32 11, i32* %6, align 4, !dbg !865
  br label %237, !dbg !865
                                                  ; No predecessors!
  br label %185, !dbg !868

; <label>:185:                                    ; preds = %184
  br label %186, !dbg !870

; <label>:186:                                    ; preds = %185, %143
  br label %106, !dbg !871, !llvm.loop !873

; <label>:187:                                    ; preds = %142
  %188 = load double, double* %25, align 8, !dbg !874
  %189 = load double, double* %26, align 8, !dbg !875
  %190 = fmul double %188, %189, !dbg !876
  call void @fMulHandler(double %188, double %189, double %190, i64 94256791984680, i64 94256791985000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791985408, i32 228, i32 16), !dbg !877
  %191 = load double, double* %27, align 8, !dbg !877
  %192 = load double, double* %27, align 8, !dbg !878
  %193 = fmul double %191, %192, !dbg !879
  call void @fMulHandler(double %191, double %192, double %193, i64 94256791985800, i64 94256791986184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791986592, i32 228, i32 32), !dbg !880
  %194 = fsub double %190, %193, !dbg !880
  call void @fSubHandler(double %190, double %193, double %194, i64 94256791985408, i64 94256791986592, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791987008, i32 228, i32 24), !dbg !881
  store double %194, double* %28, align 8, !dbg !881
  %195 = load double, double* %25, align 8, !dbg !882
  %196 = load double, double* %26, align 8, !dbg !883
  %197 = fmul double %195, %196, !dbg !884
  call void @fMulHandler(double %195, double %196, double %197, i64 94256791987816, i64 94256791988200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791988608, i32 229, i32 16), !dbg !885
  %198 = load double, double* %27, align 8, !dbg !885
  %199 = fmul double %197, %198, !dbg !886
  call void @fMulHandler(double %197, double %198, double %199, i64 94256791988608, i64 94256791989000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791989408, i32 229, i32 24), !dbg !887
  store double %199, double* %29, align 8, !dbg !887
  %200 = load double, double* %28, align 8, !dbg !888
  %201 = fmul double 0x3FA5555555555555, %200, !dbg !889
  call void @fMulHandler(double 0x3FA5555555555555, double %200, double %201, i64 0, i64 94256791990216, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791990624, i32 230, i32 19), !dbg !890
  %202 = fsub double %201, 1.000000e-01, !dbg !890
  call void @fSubHandler(double %201, double 1.000000e-01, double %202, i64 94256791990624, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791991072, i32 230, i32 24), !dbg !891
  %203 = load double, double* %29, align 8, !dbg !891
  %204 = fmul double 0x3FB1745D1745D174, %203, !dbg !892
  call void @fMulHandler(double 0x3FB1745D1745D174, double %203, double %204, i64 0, i64 94256791991432, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791991840, i32 230, i32 35), !dbg !893
  %205 = fsub double %202, %204, !dbg !893
  call void @fSubHandler(double %202, double %204, double %205, i64 94256791991072, i64 94256791991840, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791992256, i32 230, i32 30), !dbg !894
  %206 = load double, double* %28, align 8, !dbg !894
  %207 = fmul double %205, %206, !dbg !895
  call void @fMulHandler(double %205, double %206, double %207, i64 94256791992256, i64 94256791992648, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791993056, i32 230, i32 41), !dbg !896
  %208 = fadd double 1.000000e+00, %207, !dbg !896
  call void @fAddHandler(double 1.000000e+00, double %207, double %208, i64 0, i64 94256791993056, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791993504, i32 230, i32 13), !dbg !897
  %209 = load double, double* %29, align 8, !dbg !897
  %210 = fmul double 0x3FB2492492492492, %209, !dbg !898
  call void @fMulHandler(double 0x3FB2492492492492, double %209, double %210, i64 0, i64 94256791993864, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791994272, i32 230, i32 51), !dbg !899
  %211 = fadd double %208, %210, !dbg !899
  call void @fAddHandler(double %208, double %210, double %211, i64 94256791993504, i64 94256791994272, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791994688, i32 230, i32 46), !dbg !900
  store double %211, double* %30, align 8, !dbg !900
  %212 = load double, double* %30, align 8, !dbg !901
  %213 = load double, double* %24, align 8, !dbg !902
  %214 = call double @sqrt(double %213) #6, !dbg !903
  call void @callOneArgHandler(i32 14, double %213, double %214, i64 94256791995880, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791996352, i32 231, i32 23), !dbg !904
  %215 = fdiv double %212, %214, !dbg !904
  call void @fDivHandler(double %212, double %214, double %215, i64 94256791995496, i64 94256791996352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256791996832, i32 231, i32 21), !dbg !905
  %216 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !905
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %216, i32 0, i32 0, !dbg !906
  store double %215, double* %217, align 8, !dbg !907
  %218 = load double, double* %16, align 8, !dbg !908
  %219 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !909
  %220 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %219, i32 0, i32 0, !dbg !910
  %221 = load double, double* %220, align 8, !dbg !910
  %222 = call double @fabs(double %221) #1, !dbg !911
  %223 = fmul double %218, %222, !dbg !912
  call void @fMulHandler(double %218, double %222, double %223, i64 94256791998472, i64 94256792001424, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @7, i32 0, i32 0), i64 94256792001904, i32 232, i32 24), !dbg !913
  %224 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !913
  %225 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %224, i32 0, i32 1, !dbg !914
  store double %223, double* %225, align 8, !dbg !915
  store i32 0, i32* %6, align 4, !dbg !916
  br label %237, !dbg !916

; <label>:226:                                    ; preds = %95
  br label %227, !dbg !917, !llvm.loop !919

; <label>:227:                                    ; preds = %226
  %228 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !920
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %228, i32 0, i32 0, !dbg !920
  store double 0x7FF8000000000000, double* %229, align 8, !dbg !920
  %230 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !920
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %230, i32 0, i32 1, !dbg !920
  store double 0x7FF8000000000000, double* %231, align 8, !dbg !920
  br label %232, !dbg !920, !llvm.loop !923

; <label>:232:                                    ; preds = %227
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 236, i32 1), !dbg !925
  store i32 1, i32* %6, align 4, !dbg !925
  br label %237, !dbg !925
                                                  ; No predecessors!
  br label %234, !dbg !928

; <label>:234:                                    ; preds = %233
  br label %235

; <label>:235:                                    ; preds = %234
  br label %236

; <label>:236:                                    ; preds = %235, %94
  br label %237

; <label>:237:                                    ; preds = %236, %232, %187, %183, %92, %67, %65
  %238 = load i32, i32* %6, align 4, !dbg !930
  ret i32 %238, !dbg !930
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_ellint_RJ_e(double, double, double, double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !931 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gsl_sf_result_struct*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca i32, align 4
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca double, align 8
  %51 = alloca %struct.gsl_sf_result_struct, align 8
  %52 = alloca i32, align 4
  store double %0, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !934, metadata !75), !dbg !935
  store double %1, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !936, metadata !75), !dbg !937
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !938, metadata !75), !dbg !939
  store double %3, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !940, metadata !75), !dbg !941
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !942, metadata !75), !dbg !943
  store %struct.gsl_sf_result_struct* %5, %struct.gsl_sf_result_struct** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %13, metadata !944, metadata !75), !dbg !945
  call void @llvm.dbg.declare(metadata i32* %14, metadata !946, metadata !75), !dbg !947
  %53 = load i32, i32* %12, align 4, !dbg !948
  %54 = call i32 @GSL_MODE_PREC(i32 %53), !dbg !949
  store i32 %54, i32* %14, align 4, !dbg !947
  call void @llvm.dbg.declare(metadata double* %15, metadata !950, metadata !75), !dbg !951
  %55 = load i32, i32* %14, align 4, !dbg !952
  %56 = icmp eq i32 %55, 0, !dbg !953
  %57 = sext i32 %55 to i64, !dbg !952
  %58 = call i1 @iCmpInstHandler(i64 %57, i64 0, i1 %56, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792037552, i32 245, i32 32), !dbg !952
  %59 = select i1 %58, double 1.000000e-03, double 3.000000e-02, !dbg !952
  store double %59, double* %15, align 8, !dbg !951
  call void @llvm.dbg.declare(metadata double* %16, metadata !954, metadata !75), !dbg !955
  %60 = load i32, i32* %14, align 4, !dbg !956
  %61 = zext i32 %60 to i64, !dbg !957
  %62 = getelementptr inbounds [0 x double], [0 x double]* @gsl_prec_eps, i64 0, i64 %61, !dbg !957
  %63 = load double, double* %62, align 8, !dbg !957
  store double %63, double* %16, align 8, !dbg !955
  call void @llvm.dbg.declare(metadata double* %17, metadata !958, metadata !75), !dbg !959
  %64 = call double @pow(double 0x34000000000000, double 0x3FD5555555555555) #6, !dbg !960
  call void @callTwoArgsHandler(i32 15, double 0x34000000000000, double 0x3FD5555555555555, double %64, i64 0, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792047864, i32 247, i32 30), !dbg !959
  store double %64, double* %17, align 8, !dbg !959
  call void @llvm.dbg.declare(metadata double* %18, metadata !961, metadata !75), !dbg !962
  %65 = call double @pow(double 0x7FC9999999999999, double 0x3FD5555555555555) #6, !dbg !963
  call void @callTwoArgsHandler(i32 15, double 0x7FC9999999999999, double 0x3FD5555555555555, double %65, i64 0, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792051192, i32 248, i32 30), !dbg !964
  %66 = fmul double 3.000000e-01, %65, !dbg !964
  call void @fMulHandler(double 3.000000e-01, double %65, double %66, i64 0, i64 94256792051192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792051664, i32 248, i32 28), !dbg !962
  store double %66, double* %18, align 8, !dbg !962
  call void @llvm.dbg.declare(metadata i32* %19, metadata !965, metadata !75), !dbg !966
  store i32 10000, i32* %19, align 4, !dbg !966
  %67 = load double, double* %8, align 8, !dbg !967
  %68 = fcmp olt double %67, 0.000000e+00, !dbg !969
  %69 = call i1 @fCmpInstHandler(double %67, double 0.000000e+00, i1 %68, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792056880, i32 251, i32 8), !dbg !970
  br i1 %69, label %78, label %70, !dbg !970

; <label>:70:                                     ; preds = %6
  %71 = load double, double* %9, align 8, !dbg !971
  %72 = fcmp olt double %71, 0.000000e+00, !dbg !973
  %73 = call i1 @fCmpInstHandler(double %71, double 0.000000e+00, i1 %72, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792058336, i32 251, i32 19), !dbg !974
  br i1 %73, label %78, label %74, !dbg !974

; <label>:74:                                     ; preds = %70
  %75 = load double, double* %10, align 8, !dbg !975
  %76 = fcmp olt double %75, 0.000000e+00, !dbg !977
  %77 = call i1 @fCmpInstHandler(double %75, double 0.000000e+00, i1 %76, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792059648, i32 251, i32 30), !dbg !978
  br i1 %77, label %78, label %87, !dbg !978

; <label>:78:                                     ; preds = %74, %70, %6
  br label %79, !dbg !979, !llvm.loop !981

; <label>:79:                                     ; preds = %78
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !982
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !982
  store double 0x7FF8000000000000, double* %81, align 8, !dbg !982
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !982
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !982
  store double 0x7FF8000000000000, double* %83, align 8, !dbg !982
  br label %84, !dbg !982, !llvm.loop !985

; <label>:84:                                     ; preds = %79
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 252, i32 1), !dbg !987
  store i32 1, i32* %7, align 4, !dbg !987
  br label %372, !dbg !987
                                                  ; No predecessors!
  br label %86, !dbg !990

; <label>:86:                                     ; preds = %85
  br label %372, !dbg !992

; <label>:87:                                     ; preds = %74
  %88 = load double, double* %8, align 8, !dbg !993
  %89 = load double, double* %9, align 8, !dbg !995
  %90 = fadd double %88, %89, !dbg !996
  call void @fAddHandler(double %88, double %89, double %90, i64 94256792067864, i64 94256792068184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792068592, i32 254, i32 13), !dbg !997
  %91 = load double, double* %17, align 8, !dbg !997
  %92 = fcmp olt double %90, %91, !dbg !998
  %93 = call i1 @fCmpInstHandler(double %90, double %91, i1 %92, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792069392, i32 254, i32 17), !dbg !999
  br i1 %93, label %113, label %94, !dbg !999

; <label>:94:                                     ; preds = %87
  %95 = load double, double* %8, align 8, !dbg !1000
  %96 = load double, double* %10, align 8, !dbg !1002
  %97 = fadd double %95, %96, !dbg !1003
  call void @fAddHandler(double %95, double %96, double %97, i64 94256792070504, i64 94256792070824, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792071232, i32 254, i32 30), !dbg !1004
  %98 = load double, double* %17, align 8, !dbg !1004
  %99 = fcmp olt double %97, %98, !dbg !1005
  %100 = call i1 @fCmpInstHandler(double %97, double %98, i1 %99, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792072032, i32 254, i32 34), !dbg !1006
  br i1 %100, label %113, label %101, !dbg !1006

; <label>:101:                                    ; preds = %94
  %102 = load double, double* %9, align 8, !dbg !1007
  %103 = load double, double* %10, align 8, !dbg !1009
  %104 = fadd double %102, %103, !dbg !1010
  call void @fAddHandler(double %102, double %103, double %104, i64 94256792073000, i64 94256792073320, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792073728, i32 254, i32 47), !dbg !1011
  %105 = load double, double* %17, align 8, !dbg !1011
  %106 = fcmp olt double %104, %105, !dbg !1012
  %107 = call i1 @fCmpInstHandler(double %104, double %105, i1 %106, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792074528, i32 254, i32 51), !dbg !1013
  br i1 %107, label %113, label %108, !dbg !1013

; <label>:108:                                    ; preds = %101
  %109 = load double, double* %11, align 8, !dbg !1014
  %110 = load double, double* %17, align 8, !dbg !1016
  %111 = fcmp olt double %109, %110, !dbg !1017
  %112 = call i1 @fCmpInstHandler(double %109, double %110, i1 %111, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792076224, i32 254, i32 64), !dbg !1018
  br i1 %112, label %113, label %122, !dbg !1018

; <label>:113:                                    ; preds = %108, %101, %94, %87
  br label %114, !dbg !1019, !llvm.loop !1021

; <label>:114:                                    ; preds = %113
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1022
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 0, !dbg !1022
  store double 0x7FF8000000000000, double* %116, align 8, !dbg !1022
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1022
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 1, !dbg !1022
  store double 0x7FF8000000000000, double* %118, align 8, !dbg !1022
  br label %119, !dbg !1022, !llvm.loop !1025

; <label>:119:                                    ; preds = %114
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 255, i32 1), !dbg !1027
  store i32 1, i32* %7, align 4, !dbg !1027
  br label %372, !dbg !1027
                                                  ; No predecessors!
  br label %121, !dbg !1030

; <label>:121:                                    ; preds = %120
  br label %371, !dbg !1032

; <label>:122:                                    ; preds = %108
  %123 = load double, double* %8, align 8, !dbg !1033
  %124 = load double, double* %9, align 8, !dbg !1035
  %125 = load double, double* %10, align 8, !dbg !1036
  %126 = load double, double* %11, align 8, !dbg !1037
  %127 = call double @locMAX4(double %123, double %124, double %125, double %126), !dbg !1038
  %128 = load double, double* %18, align 8, !dbg !1039
  %129 = fcmp olt double %127, %128, !dbg !1040
  %130 = call i1 @fCmpInstHandler(double %127, double %128, i1 %129, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792087200, i32 257, i32 28), !dbg !1041
  br i1 %130, label %131, label %361, !dbg !1041

; <label>:131:                                    ; preds = %122
  call void @llvm.dbg.declare(metadata double* %20, metadata !1042, metadata !75), !dbg !1044
  store double 0x3FCB6DB6DB6DB6DB, double* %20, align 8, !dbg !1044
  call void @llvm.dbg.declare(metadata double* %21, metadata !1045, metadata !75), !dbg !1046
  store double 0x3FD5555555555555, double* %21, align 8, !dbg !1046
  call void @llvm.dbg.declare(metadata double* %22, metadata !1047, metadata !75), !dbg !1048
  store double 0x3FC1745D1745D174, double* %22, align 8, !dbg !1048
  call void @llvm.dbg.declare(metadata double* %23, metadata !1049, metadata !75), !dbg !1050
  store double 0x3FBD89D89D89D89E, double* %23, align 8, !dbg !1050
  call void @llvm.dbg.declare(metadata double* %24, metadata !1051, metadata !75), !dbg !1052
  %132 = load double, double* %8, align 8, !dbg !1053
  store double %132, double* %24, align 8, !dbg !1052
  call void @llvm.dbg.declare(metadata double* %25, metadata !1054, metadata !75), !dbg !1055
  %133 = load double, double* %9, align 8, !dbg !1056
  store double %133, double* %25, align 8, !dbg !1055
  call void @llvm.dbg.declare(metadata double* %26, metadata !1057, metadata !75), !dbg !1058
  %134 = load double, double* %10, align 8, !dbg !1059
  store double %134, double* %26, align 8, !dbg !1058
  call void @llvm.dbg.declare(metadata double* %27, metadata !1060, metadata !75), !dbg !1061
  %135 = load double, double* %11, align 8, !dbg !1062
  store double %135, double* %27, align 8, !dbg !1061
  call void @llvm.dbg.declare(metadata double* %28, metadata !1063, metadata !75), !dbg !1064
  store double 0.000000e+00, double* %28, align 8, !dbg !1064
  call void @llvm.dbg.declare(metadata double* %29, metadata !1065, metadata !75), !dbg !1066
  store double 1.000000e+00, double* %29, align 8, !dbg !1066
  call void @llvm.dbg.declare(metadata double* %30, metadata !1067, metadata !75), !dbg !1068
  call void @llvm.dbg.declare(metadata double* %31, metadata !1069, metadata !75), !dbg !1070
  call void @llvm.dbg.declare(metadata double* %32, metadata !1071, metadata !75), !dbg !1072
  call void @llvm.dbg.declare(metadata double* %33, metadata !1073, metadata !75), !dbg !1074
  call void @llvm.dbg.declare(metadata double* %34, metadata !1075, metadata !75), !dbg !1076
  call void @llvm.dbg.declare(metadata double* %35, metadata !1077, metadata !75), !dbg !1078
  call void @llvm.dbg.declare(metadata double* %36, metadata !1079, metadata !75), !dbg !1080
  call void @llvm.dbg.declare(metadata double* %37, metadata !1081, metadata !75), !dbg !1082
  call void @llvm.dbg.declare(metadata double* %38, metadata !1083, metadata !75), !dbg !1084
  call void @llvm.dbg.declare(metadata double* %39, metadata !1085, metadata !75), !dbg !1086
  call void @llvm.dbg.declare(metadata double* %40, metadata !1087, metadata !75), !dbg !1088
  call void @llvm.dbg.declare(metadata double* %41, metadata !1089, metadata !75), !dbg !1090
  call void @llvm.dbg.declare(metadata double* %42, metadata !1091, metadata !75), !dbg !1092
  call void @llvm.dbg.declare(metadata i32* %43, metadata !1093, metadata !75), !dbg !1094
  store i32 0, i32* %43, align 4, !dbg !1094
  br label %136, !dbg !1095

; <label>:136:                                    ; preds = %276, %131
  call void @llvm.dbg.declare(metadata double* %44, metadata !1096, metadata !75), !dbg !1098
  call void @llvm.dbg.declare(metadata double* %45, metadata !1099, metadata !75), !dbg !1100
  call void @llvm.dbg.declare(metadata double* %46, metadata !1101, metadata !75), !dbg !1102
  call void @llvm.dbg.declare(metadata double* %47, metadata !1103, metadata !75), !dbg !1104
  call void @llvm.dbg.declare(metadata double* %48, metadata !1105, metadata !75), !dbg !1106
  call void @llvm.dbg.declare(metadata double* %49, metadata !1107, metadata !75), !dbg !1108
  call void @llvm.dbg.declare(metadata double* %50, metadata !1109, metadata !75), !dbg !1110
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %51, metadata !1111, metadata !75), !dbg !1112
  call void @llvm.dbg.declare(metadata i32* %52, metadata !1113, metadata !75), !dbg !1114
  %137 = load double, double* %24, align 8, !dbg !1115
  %138 = load double, double* %25, align 8, !dbg !1116
  %139 = fadd double %137, %138, !dbg !1117
  call void @fAddHandler(double %137, double %138, double %139, i64 94256792144776, i64 94256792145128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792147600, i32 277, i32 16), !dbg !1118
  %140 = load double, double* %26, align 8, !dbg !1118
  %141 = fadd double %139, %140, !dbg !1119
  call void @fAddHandler(double %139, double %140, double %141, i64 94256792147600, i64 94256792147992, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792148400, i32 277, i32 21), !dbg !1120
  %142 = load double, double* %27, align 8, !dbg !1120
  %143 = fadd double %141, %142, !dbg !1121
  call void @fAddHandler(double %141, double %142, double %143, i64 94256792148400, i64 94256792148792, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792149200, i32 277, i32 26), !dbg !1122
  %144 = load double, double* %27, align 8, !dbg !1122
  %145 = fadd double %143, %144, !dbg !1123
  call void @fAddHandler(double %143, double %144, double %145, i64 94256792149200, i64 94256792149592, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792150000, i32 277, i32 31), !dbg !1124
  %146 = fmul double %145, 2.000000e-01, !dbg !1124
  call void @fMulHandler(double %145, double 2.000000e-01, double %146, i64 94256792150000, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792150448, i32 277, i32 37), !dbg !1125
  store double %146, double* %30, align 8, !dbg !1125
  %147 = load double, double* %30, align 8, !dbg !1126
  %148 = load double, double* %24, align 8, !dbg !1127
  %149 = fsub double %147, %148, !dbg !1128
  call void @fSubHandler(double %147, double %148, double %149, i64 94256792151224, i64 94256792151608, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792152016, i32 278, i32 19), !dbg !1129
  %150 = load double, double* %30, align 8, !dbg !1129
  %151 = fdiv double %149, %150, !dbg !1130
  call void @fDivHandler(double %149, double %150, double %151, i64 94256792152016, i64 94256792152408, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792152816, i32 278, i32 25), !dbg !1131
  store double %151, double* %31, align 8, !dbg !1131
  %152 = load double, double* %30, align 8, !dbg !1132
  %153 = load double, double* %25, align 8, !dbg !1133
  %154 = fsub double %152, %153, !dbg !1134
  call void @fSubHandler(double %152, double %153, double %154, i64 94256792153624, i64 94256792154008, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792154416, i32 279, i32 19), !dbg !1135
  %155 = load double, double* %30, align 8, !dbg !1135
  %156 = fdiv double %154, %155, !dbg !1136
  call void @fDivHandler(double %154, double %155, double %156, i64 94256792154416, i64 94256792154808, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792155216, i32 279, i32 25), !dbg !1137
  store double %156, double* %32, align 8, !dbg !1137
  %157 = load double, double* %30, align 8, !dbg !1138
  %158 = load double, double* %26, align 8, !dbg !1139
  %159 = fsub double %157, %158, !dbg !1140
  call void @fSubHandler(double %157, double %158, double %159, i64 94256792156024, i64 94256792156408, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792156816, i32 280, i32 19), !dbg !1141
  %160 = load double, double* %30, align 8, !dbg !1141
  %161 = fdiv double %159, %160, !dbg !1142
  call void @fDivHandler(double %159, double %160, double %161, i64 94256792156816, i64 94256792157208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792157616, i32 280, i32 25), !dbg !1143
  store double %161, double* %33, align 8, !dbg !1143
  %162 = load double, double* %30, align 8, !dbg !1144
  %163 = load double, double* %27, align 8, !dbg !1145
  %164 = fsub double %162, %163, !dbg !1146
  call void @fSubHandler(double %162, double %163, double %164, i64 94256792158424, i64 94256792158808, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792159216, i32 281, i32 19), !dbg !1147
  %165 = load double, double* %30, align 8, !dbg !1147
  %166 = fdiv double %164, %165, !dbg !1148
  call void @fDivHandler(double %164, double %165, double %166, i64 94256792159216, i64 94256792159608, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792160016, i32 281, i32 25), !dbg !1149
  store double %166, double* %34, align 8, !dbg !1149
  %167 = load double, double* %31, align 8, !dbg !1150
  %168 = call double @fabs(double %167) #1, !dbg !1151
  %169 = load double, double* %32, align 8, !dbg !1152
  %170 = call double @fabs(double %169) #1, !dbg !1153
  %171 = load double, double* %33, align 8, !dbg !1155
  %172 = call double @fabs(double %171) #1, !dbg !1156
  %173 = load double, double* %34, align 8, !dbg !1158
  %174 = call double @fabs(double %173) #1, !dbg !1159
  %175 = call double @locMAX4(double %168, double %170, double %172, double %174), !dbg !1161
  store double %175, double* %50, align 8, !dbg !1163
  %176 = load double, double* %50, align 8, !dbg !1164
  %177 = load double, double* %15, align 8, !dbg !1166
  %178 = fcmp olt double %176, %177, !dbg !1167
  %179 = call i1 @fCmpInstHandler(double %176, double %177, i1 %178, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792166320, i32 283, i32 17), !dbg !1168
  br i1 %179, label %180, label %181, !dbg !1168

; <label>:180:                                    ; preds = %136
  br label %277, !dbg !1169

; <label>:181:                                    ; preds = %136
  %182 = load double, double* %24, align 8, !dbg !1171
  %183 = call double @sqrt(double %182) #6, !dbg !1172
  call void @callOneArgHandler(i32 14, double %182, double %183, i64 94256792167896, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792168304, i32 284, i32 16), !dbg !1173
  store double %183, double* %44, align 8, !dbg !1173
  %184 = load double, double* %25, align 8, !dbg !1174
  %185 = call double @sqrt(double %184) #6, !dbg !1175
  call void @callOneArgHandler(i32 14, double %184, double %185, i64 94256792169176, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792169648, i32 285, i32 16), !dbg !1176
  store double %185, double* %45, align 8, !dbg !1176
  %186 = load double, double* %26, align 8, !dbg !1177
  %187 = call double @sqrt(double %186) #6, !dbg !1178
  call void @callOneArgHandler(i32 14, double %186, double %187, i64 94256792170520, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792170992, i32 286, i32 16), !dbg !1179
  store double %187, double* %46, align 8, !dbg !1179
  %188 = load double, double* %44, align 8, !dbg !1180
  %189 = load double, double* %45, align 8, !dbg !1181
  %190 = load double, double* %46, align 8, !dbg !1182
  %191 = fadd double %189, %190, !dbg !1183
  call void @fAddHandler(double %189, double %190, double %191, i64 94256792172248, i64 94256792172632, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792173040, i32 287, i32 32), !dbg !1184
  %192 = fmul double %188, %191, !dbg !1184
  call void @fMulHandler(double %188, double %191, double %192, i64 94256792171864, i64 94256792173040, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792173456, i32 287, i32 22), !dbg !1185
  %193 = load double, double* %45, align 8, !dbg !1185
  %194 = load double, double* %46, align 8, !dbg !1186
  %195 = fmul double %193, %194, !dbg !1187
  call void @fMulHandler(double %193, double %194, double %195, i64 94256792173848, i64 94256792174232, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792174640, i32 287, i32 51), !dbg !1188
  %196 = fadd double %192, %195, !dbg !1188
  call void @fAddHandler(double %192, double %195, double %196, i64 94256792173456, i64 94256792174640, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792175056, i32 287, i32 42), !dbg !1189
  store double %196, double* %47, align 8, !dbg !1189
  %197 = load double, double* %27, align 8, !dbg !1190
  %198 = load double, double* %44, align 8, !dbg !1191
  %199 = load double, double* %45, align 8, !dbg !1192
  %200 = fadd double %198, %199, !dbg !1193
  call void @fAddHandler(double %198, double %199, double %200, i64 94256792176248, i64 94256792176632, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792177040, i32 288, i32 27), !dbg !1194
  %201 = load double, double* %46, align 8, !dbg !1194
  %202 = fadd double %200, %201, !dbg !1195
  call void @fAddHandler(double %200, double %201, double %202, i64 94256792177040, i64 94256792177432, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792177840, i32 288, i32 36), !dbg !1196
  %203 = fmul double %197, %202, !dbg !1196
  call void @fMulHandler(double %197, double %202, double %203, i64 94256792175864, i64 94256792177840, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792178256, i32 288, i32 17), !dbg !1197
  %204 = load double, double* %44, align 8, !dbg !1197
  %205 = load double, double* %45, align 8, !dbg !1198
  %206 = fmul double %204, %205, !dbg !1199
  call void @fMulHandler(double %204, double %205, double %206, i64 94256792178648, i64 94256792179032, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792179440, i32 288, i32 55), !dbg !1200
  %207 = load double, double* %46, align 8, !dbg !1200
  %208 = fmul double %206, %207, !dbg !1201
  call void @fMulHandler(double %206, double %207, double %208, i64 94256792179440, i64 94256792179832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792180240, i32 288, i32 64), !dbg !1202
  %209 = fadd double %203, %208, !dbg !1202
  call void @fAddHandler(double %203, double %208, double %209, i64 94256792178256, i64 94256792180240, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792180656, i32 288, i32 46), !dbg !1203
  store double %209, double* %48, align 8, !dbg !1203
  %210 = load double, double* %48, align 8, !dbg !1204
  %211 = load double, double* %48, align 8, !dbg !1205
  %212 = fmul double %210, %211, !dbg !1206
  call void @fMulHandler(double %210, double %211, double %212, i64 94256792181464, i64 94256792181848, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792182256, i32 289, i32 19), !dbg !1207
  store double %212, double* %48, align 8, !dbg !1207
  %213 = load double, double* %27, align 8, !dbg !1208
  %214 = load double, double* %27, align 8, !dbg !1209
  %215 = load double, double* %47, align 8, !dbg !1210
  %216 = fadd double %214, %215, !dbg !1211
  call void @fAddHandler(double %214, double %215, double %216, i64 94256792183448, i64 94256792183832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792184240, i32 290, i32 23), !dbg !1212
  %217 = fmul double %213, %216, !dbg !1212
  call void @fMulHandler(double %213, double %216, double %217, i64 94256792183064, i64 94256792184240, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792184656, i32 290, i32 17), !dbg !1213
  %218 = load double, double* %27, align 8, !dbg !1213
  %219 = load double, double* %47, align 8, !dbg !1214
  %220 = fadd double %218, %219, !dbg !1215
  call void @fAddHandler(double %218, double %219, double %220, i64 94256792185048, i64 94256792185432, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792185840, i32 290, i32 38), !dbg !1216
  %221 = fmul double %217, %220, !dbg !1216
  call void @fMulHandler(double %217, double %220, double %221, i64 94256792184656, i64 94256792185840, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792186256, i32 290, i32 32), !dbg !1217
  store double %221, double* %49, align 8, !dbg !1217
  %222 = load double, double* %48, align 8, !dbg !1218
  %223 = load double, double* %49, align 8, !dbg !1219
  %224 = load i32, i32* %12, align 4, !dbg !1220
  %225 = call i32 @gsl_sf_ellint_RC_e(double %222, double %223, i32 %224, %struct.gsl_sf_result_struct* %51), !dbg !1221
  store i32 %225, i32* %52, align 4, !dbg !1222
  %226 = load i32, i32* %52, align 4, !dbg !1223
  %227 = icmp ne i32 %226, 0, !dbg !1225
  %228 = sext i32 %226 to i64, !dbg !1226
  %229 = call i1 @iCmpInstHandler(i64 %228, i64 0, i1 %227, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792189616, i32 292, i32 19), !dbg !1226
  br i1 %229, label %230, label %236, !dbg !1226

; <label>:230:                                    ; preds = %181
  %231 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1227
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %231, i32 0, i32 0, !dbg !1229
  store double 0.000000e+00, double* %232, align 8, !dbg !1230
  %233 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1231
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %233, i32 0, i32 1, !dbg !1232
  store double 0.000000e+00, double* %234, align 8, !dbg !1233
  %235 = load i32, i32* %52, align 4, !dbg !1234
  store i32 %235, i32* %7, align 4, !dbg !1235
  br label %372, !dbg !1235

; <label>:236:                                    ; preds = %181
  %237 = load double, double* %29, align 8, !dbg !1236
  %238 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !1237
  %239 = load double, double* %238, align 8, !dbg !1237
  %240 = fmul double %237, %239, !dbg !1238
  call void @fMulHandler(double %237, double %239, double %240, i64 94256792195608, i64 94256792196376, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792198048, i32 297, i32 24), !dbg !1239
  %241 = load double, double* %28, align 8, !dbg !1239
  %242 = fadd double %241, %240, !dbg !1239
  call void @fAddHandler(double %241, double %240, double %242, i64 94256792198440, i64 94256792198048, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792198848, i32 297, i32 14), !dbg !1239
  store double %242, double* %28, align 8, !dbg !1239
  %243 = load double, double* %29, align 8, !dbg !1240
  %244 = fmul double %243, 2.500000e-01, !dbg !1240
  call void @fMulHandler(double %243, double 2.500000e-01, double %244, i64 94256792200632, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792201072, i32 298, i32 14), !dbg !1240
  store double %244, double* %29, align 8, !dbg !1240
  %245 = load double, double* %24, align 8, !dbg !1241
  %246 = load double, double* %47, align 8, !dbg !1242
  %247 = fadd double %245, %246, !dbg !1243
  call void @fAddHandler(double %245, double %246, double %247, i64 94256792202856, i64 94256792203208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792203616, i32 299, i32 16), !dbg !1244
  %248 = fmul double %247, 2.500000e-01, !dbg !1244
  call void @fMulHandler(double %247, double 2.500000e-01, double %248, i64 94256792203616, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792204064, i32 299, i32 25), !dbg !1245
  store double %248, double* %24, align 8, !dbg !1245
  %249 = load double, double* %25, align 8, !dbg !1246
  %250 = load double, double* %47, align 8, !dbg !1247
  %251 = fadd double %249, %250, !dbg !1248
  call void @fAddHandler(double %249, double %250, double %251, i64 94256792204840, i64 94256792205224, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792205632, i32 300, i32 16), !dbg !1249
  %252 = fmul double %251, 2.500000e-01, !dbg !1249
  call void @fMulHandler(double %251, double 2.500000e-01, double %252, i64 94256792205632, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792206080, i32 300, i32 25), !dbg !1250
  store double %252, double* %25, align 8, !dbg !1250
  %253 = load double, double* %26, align 8, !dbg !1251
  %254 = load double, double* %47, align 8, !dbg !1252
  %255 = fadd double %253, %254, !dbg !1253
  call void @fAddHandler(double %253, double %254, double %255, i64 94256792206856, i64 94256792207240, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792207648, i32 301, i32 16), !dbg !1254
  %256 = fmul double %255, 2.500000e-01, !dbg !1254
  call void @fMulHandler(double %255, double 2.500000e-01, double %256, i64 94256792207648, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792208096, i32 301, i32 25), !dbg !1255
  store double %256, double* %26, align 8, !dbg !1255
  %257 = load double, double* %27, align 8, !dbg !1256
  %258 = load double, double* %47, align 8, !dbg !1257
  %259 = fadd double %257, %258, !dbg !1258
  call void @fAddHandler(double %257, double %258, double %259, i64 94256792208872, i64 94256792209256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792209664, i32 302, i32 16), !dbg !1259
  %260 = fmul double %259, 2.500000e-01, !dbg !1259
  call void @fMulHandler(double %259, double 2.500000e-01, double %260, i64 94256792209664, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792210112, i32 302, i32 25), !dbg !1260
  store double %260, double* %27, align 8, !dbg !1260
  %261 = load i32, i32* %43, align 4, !dbg !1261
  %262 = add nsw i32 %261, 1, !dbg !1261
  store i32 %262, i32* %43, align 4, !dbg !1261
  %263 = load i32, i32* %43, align 4, !dbg !1262
  %264 = icmp eq i32 %263, 10000, !dbg !1264
  %265 = sext i32 %263 to i64, !dbg !1265
  %266 = call i1 @iCmpInstHandler(i64 %265, i64 10000, i1 %264, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792213488, i32 304, i32 11), !dbg !1265
  br i1 %266, label %267, label %276, !dbg !1265

; <label>:267:                                    ; preds = %236
  br label %268, !dbg !1266, !llvm.loop !1268

; <label>:268:                                    ; preds = %267
  %269 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1269
  %270 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %269, i32 0, i32 0, !dbg !1269
  store double 0x7FF8000000000000, double* %270, align 8, !dbg !1269
  %271 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1269
  %272 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %271, i32 0, i32 1, !dbg !1269
  store double 0x7FF8000000000000, double* %272, align 8, !dbg !1269
  br label %273, !dbg !1269, !llvm.loop !1272

; <label>:273:                                    ; preds = %268
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 305, i32 11), !dbg !1274
  store i32 11, i32* %7, align 4, !dbg !1274
  br label %372, !dbg !1274
                                                  ; No predecessors!
  br label %275, !dbg !1277

; <label>:275:                                    ; preds = %274
  br label %276, !dbg !1279

; <label>:276:                                    ; preds = %275, %236
  br label %136, !dbg !1280, !llvm.loop !1282

; <label>:277:                                    ; preds = %180
  %278 = load double, double* %31, align 8, !dbg !1283
  %279 = load double, double* %32, align 8, !dbg !1284
  %280 = load double, double* %33, align 8, !dbg !1285
  %281 = fadd double %279, %280, !dbg !1286
  call void @fAddHandler(double %279, double %280, double %281, i64 94256792224680, i64 94256792225064, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792225472, i32 309, i32 25), !dbg !1287
  %282 = fmul double %278, %281, !dbg !1287
  call void @fMulHandler(double %278, double %281, double %282, i64 94256792224360, i64 94256792225472, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792225888, i32 309, i32 16), !dbg !1288
  %283 = load double, double* %32, align 8, !dbg !1288
  %284 = load double, double* %33, align 8, !dbg !1289
  %285 = fmul double %283, %284, !dbg !1290
  call void @fMulHandler(double %283, double %284, double %285, i64 94256792226280, i64 94256792226664, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792227072, i32 309, i32 42), !dbg !1291
  %286 = fadd double %282, %285, !dbg !1291
  call void @fAddHandler(double %282, double %285, double %286, i64 94256792225888, i64 94256792227072, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792227488, i32 309, i32 34), !dbg !1292
  store double %286, double* %35, align 8, !dbg !1292
  %287 = load double, double* %31, align 8, !dbg !1293
  %288 = load double, double* %32, align 8, !dbg !1294
  %289 = fmul double %287, %288, !dbg !1295
  call void @fMulHandler(double %287, double %288, double %289, i64 94256792228296, i64 94256792228680, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792229088, i32 310, i32 16), !dbg !1296
  %290 = load double, double* %33, align 8, !dbg !1296
  %291 = fmul double %289, %290, !dbg !1297
  call void @fMulHandler(double %289, double %290, double %291, i64 94256792229088, i64 94256792229480, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792229888, i32 310, i32 24), !dbg !1298
  store double %291, double* %36, align 8, !dbg !1298
  %292 = load double, double* %34, align 8, !dbg !1299
  %293 = load double, double* %34, align 8, !dbg !1300
  %294 = fmul double %292, %293, !dbg !1301
  call void @fMulHandler(double %292, double %293, double %294, i64 94256792230696, i64 94256792231080, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792231488, i32 311, i32 16), !dbg !1302
  store double %294, double* %37, align 8, !dbg !1302
  %295 = load double, double* %35, align 8, !dbg !1303
  %296 = load double, double* %37, align 8, !dbg !1304
  %297 = fmul double 3.000000e+00, %296, !dbg !1305
  call void @fMulHandler(double 3.000000e+00, double %296, double %297, i64 0, i64 94256792232680, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792233120, i32 312, i32 19), !dbg !1306
  %298 = fsub double %295, %297, !dbg !1306
  call void @fSubHandler(double %295, double %297, double %298, i64 94256792232296, i64 94256792233120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792233504, i32 312, i32 13), !dbg !1307
  store double %298, double* %38, align 8, !dbg !1307
  %299 = load double, double* %36, align 8, !dbg !1308
  %300 = load double, double* %34, align 8, !dbg !1309
  %301 = fmul double 2.000000e+00, %300, !dbg !1310
  call void @fMulHandler(double 2.000000e+00, double %300, double %301, i64 0, i64 94256792234696, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792235136, i32 313, i32 19), !dbg !1311
  %302 = load double, double* %35, align 8, !dbg !1311
  %303 = load double, double* %37, align 8, !dbg !1312
  %304 = fsub double %302, %303, !dbg !1313
  call void @fSubHandler(double %302, double %303, double %304, i64 94256792235496, i64 94256792235880, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792236288, i32 313, i32 33), !dbg !1314
  %305 = fmul double %301, %304, !dbg !1314
  call void @fMulHandler(double %301, double %304, double %305, i64 94256792235136, i64 94256792236288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792236704, i32 313, i32 27), !dbg !1315
  %306 = fadd double %299, %305, !dbg !1315
  call void @fAddHandler(double %299, double %305, double %306, i64 94256792234312, i64 94256792236704, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792237120, i32 313, i32 13), !dbg !1316
  store double %306, double* %39, align 8, !dbg !1316
  %307 = load double, double* %38, align 8, !dbg !1317
  %308 = load double, double* %38, align 8, !dbg !1318
  %309 = fmul double 0x3FBA2E8BA2E8BA2E, %308, !dbg !1319
  call void @fMulHandler(double 0x3FBA2E8BA2E8BA2E, double %308, double %309, i64 0, i64 94256792238312, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792238784, i32 314, i32 39), !dbg !1320
  %310 = fadd double 0xBFCB6DB6DB6DB6DB, %309, !dbg !1320
  call void @fAddHandler(double 0xBFCB6DB6DB6DB6DB, double %309, double %310, i64 0, i64 94256792238784, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792239200, i32 314, i32 27), !dbg !1321
  %311 = load double, double* %39, align 8, !dbg !1321
  %312 = fmul double 0x3FC6276276276276, %311, !dbg !1322
  call void @fMulHandler(double 0x3FC6276276276276, double %311, double %312, i64 0, i64 94256792239592, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792240000, i32 314, i32 55), !dbg !1323
  %313 = fsub double %310, %312, !dbg !1323
  call void @fSubHandler(double %310, double %312, double %313, i64 94256792239200, i64 94256792240000, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792240416, i32 314, i32 44), !dbg !1324
  %314 = fmul double %307, %313, !dbg !1324
  call void @fMulHandler(double %307, double %313, double %314, i64 94256792237928, i64 94256792240416, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792240832, i32 314, i32 19), !dbg !1325
  %315 = fadd double 1.000000e+00, %314, !dbg !1325
  call void @fAddHandler(double 1.000000e+00, double %314, double %315, i64 0, i64 94256792240832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792241280, i32 314, i32 14), !dbg !1326
  store double %315, double* %40, align 8, !dbg !1326
  %316 = load double, double* %36, align 8, !dbg !1327
  %317 = load double, double* %34, align 8, !dbg !1328
  %318 = load double, double* %34, align 8, !dbg !1329
  %319 = fmul double %318, 0x3FBD89D89D89D89E, !dbg !1330
  call void @fMulHandler(double %318, double 0x3FBD89D89D89D89E, double %319, i64 94256792242824, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792243232, i32 315, i32 54), !dbg !1331
  %320 = fadd double 0xBFD1745D1745D174, %319, !dbg !1331
  call void @fAddHandler(double 0xBFD1745D1745D174, double %319, double %320, i64 0, i64 94256792243232, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792243712, i32 315, i32 46), !dbg !1332
  %321 = fmul double %317, %320, !dbg !1332
  call void @fMulHandler(double %317, double %320, double %321, i64 94256792242440, i64 94256792243712, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792244128, i32 315, i32 33), !dbg !1333
  %322 = fadd double 0x3FC5555555555555, %321, !dbg !1333
  call void @fAddHandler(double 0x3FC5555555555555, double %321, double %322, i64 0, i64 94256792244128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792244544, i32 315, i32 25), !dbg !1334
  %323 = fmul double %316, %322, !dbg !1334
  call void @fMulHandler(double %316, double %322, double %323, i64 94256792242056, i64 94256792244544, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792244960, i32 315, i32 13), !dbg !1335
  store double %323, double* %41, align 8, !dbg !1335
  %324 = load double, double* %34, align 8, !dbg !1336
  %325 = load double, double* %35, align 8, !dbg !1337
  %326 = fmul double %324, %325, !dbg !1338
  call void @fMulHandler(double %324, double %325, double %326, i64 94256792245768, i64 94256792246152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792246560, i32 316, i32 16), !dbg !1339
  %327 = load double, double* %34, align 8, !dbg !1339
  %328 = fmul double %327, 0x3FC1745D1745D174, !dbg !1340
  call void @fMulHandler(double %327, double 0x3FC1745D1745D174, double %328, i64 94256792246952, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792247360, i32 316, i32 35), !dbg !1341
  %329 = fsub double 0x3FD5555555555555, %328, !dbg !1341
  call void @fSubHandler(double 0x3FD5555555555555, double %328, double %329, i64 0, i64 94256792247360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792247776, i32 316, i32 27), !dbg !1342
  %330 = fmul double %326, %329, !dbg !1342
  call void @fMulHandler(double %326, double %329, double %330, i64 94256792246560, i64 94256792247776, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792248192, i32 316, i32 21), !dbg !1343
  %331 = load double, double* %34, align 8, !dbg !1343
  %332 = fmul double 0x3FD5555555555555, %331, !dbg !1344
  call void @fMulHandler(double 0x3FD5555555555555, double %331, double %332, i64 0, i64 94256792248584, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792248992, i32 316, i32 46), !dbg !1345
  %333 = load double, double* %37, align 8, !dbg !1345
  %334 = fmul double %332, %333, !dbg !1346
  call void @fMulHandler(double %332, double %333, double %334, i64 94256792248992, i64 94256792249384, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792249792, i32 316, i32 54), !dbg !1347
  %335 = fsub double %330, %334, !dbg !1347
  call void @fSubHandler(double %330, double %334, double %335, i64 94256792248192, i64 94256792249792, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792250208, i32 316, i32 41), !dbg !1348
  store double %335, double* %42, align 8, !dbg !1348
  %336 = load double, double* %28, align 8, !dbg !1349
  %337 = fmul double 3.000000e+00, %336, !dbg !1350
  call void @fMulHandler(double 3.000000e+00, double %336, double %337, i64 0, i64 94256792251016, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792251456, i32 317, i32 23), !dbg !1351
  %338 = load double, double* %29, align 8, !dbg !1351
  %339 = load double, double* %40, align 8, !dbg !1352
  %340 = load double, double* %41, align 8, !dbg !1353
  %341 = fadd double %339, %340, !dbg !1354
  call void @fAddHandler(double %339, double %340, double %341, i64 94256792252200, i64 94256792252584, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792252992, i32 317, i32 46), !dbg !1355
  %342 = load double, double* %42, align 8, !dbg !1355
  %343 = fadd double %341, %342, !dbg !1356
  call void @fAddHandler(double %341, double %342, double %343, i64 94256792252992, i64 94256792253384, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792253792, i32 317, i32 51), !dbg !1357
  %344 = fmul double %338, %343, !dbg !1357
  call void @fMulHandler(double %338, double %343, double %344, i64 94256792251816, i64 94256792253792, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792254208, i32 317, i32 40), !dbg !1358
  %345 = load double, double* %30, align 8, !dbg !1358
  %346 = load double, double* %30, align 8, !dbg !1359
  %347 = call double @sqrt(double %346) #6, !dbg !1360
  call void @callOneArgHandler(i32 14, double %346, double %347, i64 94256792254984, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792255456, i32 317, i32 65), !dbg !1361
  %348 = fmul double %345, %347, !dbg !1361
  call void @fMulHandler(double %345, double %347, double %348, i64 94256792254600, i64 94256792255456, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792255936, i32 317, i32 63), !dbg !1362
  %349 = fdiv double %344, %348, !dbg !1362
  call void @fDivHandler(double %344, double %348, double %349, i64 94256792254208, i64 94256792255936, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792256352, i32 317, i32 57), !dbg !1363
  %350 = fadd double %337, %349, !dbg !1363
  call void @fAddHandler(double %337, double %349, double %350, i64 94256792251456, i64 94256792256352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792256768, i32 317, i32 31), !dbg !1364
  %351 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1364
  %352 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %351, i32 0, i32 0, !dbg !1365
  store double %350, double* %352, align 8, !dbg !1366
  %353 = load double, double* %16, align 8, !dbg !1367
  %354 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1368
  %355 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %354, i32 0, i32 0, !dbg !1369
  %356 = load double, double* %355, align 8, !dbg !1369
  %357 = call double @fabs(double %356) #1, !dbg !1370
  %358 = fmul double %353, %357, !dbg !1371
  call void @fMulHandler(double %353, double %357, double %358, i64 94256792258408, i64 94256792261360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @9, i32 0, i32 0), i64 94256792261840, i32 318, i32 24), !dbg !1372
  %359 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1372
  %360 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %359, i32 0, i32 1, !dbg !1373
  store double %358, double* %360, align 8, !dbg !1374
  store i32 0, i32* %7, align 4, !dbg !1375
  br label %372, !dbg !1375

; <label>:361:                                    ; preds = %122
  br label %362, !dbg !1376, !llvm.loop !1378

; <label>:362:                                    ; preds = %361
  %363 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1379
  %364 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %363, i32 0, i32 0, !dbg !1379
  store double 0x7FF8000000000000, double* %364, align 8, !dbg !1379
  %365 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1379
  %366 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %365, i32 0, i32 1, !dbg !1379
  store double 0x7FF8000000000000, double* %366, align 8, !dbg !1379
  br label %367, !dbg !1379, !llvm.loop !1382

; <label>:367:                                    ; preds = %362
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 322, i32 1), !dbg !1384
  store i32 1, i32* %7, align 4, !dbg !1384
  br label %372, !dbg !1384
                                                  ; No predecessors!
  br label %369, !dbg !1387

; <label>:369:                                    ; preds = %368
  br label %370

; <label>:370:                                    ; preds = %369
  br label %371

; <label>:371:                                    ; preds = %370, %121
  br label %372

; <label>:372:                                    ; preds = %371, %367, %277, %273, %230, %119, %86, %84
  %373 = load i32, i32* %7, align 4, !dbg !1389
  ret i32 %373, !dbg !1389
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @locMAX4(double, double, double, double) #5 !dbg !1390 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1393, metadata !75), !dbg !1394
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1395, metadata !75), !dbg !1396
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1397, metadata !75), !dbg !1398
  store double %3, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1399, metadata !75), !dbg !1400
  call void @llvm.dbg.declare(metadata double* %9, metadata !1401, metadata !75), !dbg !1402
  %11 = load double, double* %5, align 8, !dbg !1403
  %12 = load double, double* %6, align 8, !dbg !1403
  %13 = fcmp ogt double %11, %12, !dbg !1403
  %14 = call i1 @fCmpInstHandler(double %11, double %12, i1 %13, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @11, i32 0, i32 0), i64 94256792279888, i32 42, i32 16), !dbg !1403
  br i1 %14, label %15, label %17, !dbg !1403

; <label>:15:                                     ; preds = %4
  %16 = load double, double* %5, align 8, !dbg !1404
  br label %19, !dbg !1404

; <label>:17:                                     ; preds = %4
  %18 = load double, double* %6, align 8, !dbg !1406
  br label %19, !dbg !1406

; <label>:19:                                     ; preds = %17, %15
  %20 = phi double [ %16, %15 ], [ %18, %17 ], !dbg !1408
  store double %20, double* %9, align 8, !dbg !1410
  call void @llvm.dbg.declare(metadata double* %10, metadata !1411, metadata !75), !dbg !1412
  %21 = load double, double* %9, align 8, !dbg !1413
  %22 = load double, double* %7, align 8, !dbg !1413
  %23 = fcmp ogt double %21, %22, !dbg !1413
  %24 = call i1 @fCmpInstHandler(double %21, double %22, i1 %23, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @11, i32 0, i32 0), i64 94256792288320, i32 43, i32 16), !dbg !1413
  br i1 %24, label %25, label %27, !dbg !1413

; <label>:25:                                     ; preds = %19
  %26 = load double, double* %9, align 8, !dbg !1414
  br label %29, !dbg !1414

; <label>:27:                                     ; preds = %19
  %28 = load double, double* %7, align 8, !dbg !1415
  br label %29, !dbg !1415

; <label>:29:                                     ; preds = %27, %25
  %30 = phi double [ %26, %25 ], [ %28, %27 ], !dbg !1416
  store double %30, double* %10, align 8, !dbg !1417
  %31 = load double, double* %10, align 8, !dbg !1418
  %32 = load double, double* %8, align 8, !dbg !1418
  %33 = fcmp ogt double %31, %32, !dbg !1418
  %34 = call i1 @fCmpInstHandler(double %31, double %32, i1 %33, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @11, i32 0, i32 0), i64 94256792295808, i32 44, i32 10), !dbg !1418
  br i1 %34, label %35, label %37, !dbg !1418

; <label>:35:                                     ; preds = %29
  %36 = load double, double* %10, align 8, !dbg !1419
  br label %39, !dbg !1419

; <label>:37:                                     ; preds = %29
  %38 = load double, double* %8, align 8, !dbg !1420
  br label %39, !dbg !1420

; <label>:39:                                     ; preds = %37, %35
  %40 = phi double [ %36, %35 ], [ %38, %37 ], !dbg !1421
  ret double %40, !dbg !1422
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_ellint_F_e(double, double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !1423 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1424, metadata !75), !dbg !1425
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1426, metadata !75), !dbg !1427
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1428, metadata !75), !dbg !1429
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1430, metadata !75), !dbg !1431
  call void @llvm.dbg.declare(metadata double* %10, metadata !1432, metadata !75), !dbg !1433
  %20 = load double, double* %6, align 8, !dbg !1434
  %21 = fdiv double %20, 0x400921FB54442D18, !dbg !1435
  call void @fDivHandler(double %20, double 0x400921FB54442D18, double %21, i64 94256792309880, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792310320, i32 334, i32 24), !dbg !1436
  %22 = fadd double %21, 5.000000e-01, !dbg !1436
  call void @fAddHandler(double %21, double 5.000000e-01, double %22, i64 94256792310320, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792310768, i32 334, i32 30), !dbg !1437
  %23 = call double @floor(double %22) #1, !dbg !1437
  store double %23, double* %10, align 8, !dbg !1433
  call void @llvm.dbg.declare(metadata double* %11, metadata !1438, metadata !75), !dbg !1439
  %24 = load double, double* %6, align 8, !dbg !1440
  %25 = load double, double* %10, align 8, !dbg !1441
  %26 = fmul double %25, 0x400921FB54442D18, !dbg !1442
  call void @fMulHandler(double %25, double 0x400921FB54442D18, double %26, i64 94256792315176, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792315584, i32 335, i32 29), !dbg !1443
  %27 = fsub double %24, %26, !dbg !1443
  call void @fSubHandler(double %24, double %26, double %27, i64 94256792314824, i64 94256792315584, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792316000, i32 335, i32 24), !dbg !1439
  store double %27, double* %11, align 8, !dbg !1439
  %28 = load double, double* %11, align 8, !dbg !1444
  store double %28, double* %6, align 8, !dbg !1445
  call void @llvm.dbg.declare(metadata double* %12, metadata !1446, metadata !75), !dbg !1448
  %29 = load double, double* %6, align 8, !dbg !1449
  %30 = call double @sin(double %29) #6, !dbg !1450
  call void @callOneArgHandler(i32 1, double %29, double %30, i64 94256792319992, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792320704, i32 339, i32 23), !dbg !1448
  store double %30, double* %12, align 8, !dbg !1448
  call void @llvm.dbg.declare(metadata double* %13, metadata !1451, metadata !75), !dbg !1452
  %31 = load double, double* %12, align 8, !dbg !1453
  %32 = load double, double* %12, align 8, !dbg !1454
  %33 = fmul double %31, %32, !dbg !1455
  call void @fMulHandler(double %31, double %32, double %33, i64 94256792324040, i64 94256792324392, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792324800, i32 340, i32 30), !dbg !1452
  store double %33, double* %13, align 8, !dbg !1452
  call void @llvm.dbg.declare(metadata double* %14, metadata !1456, metadata !75), !dbg !1457
  %34 = load double, double* %13, align 8, !dbg !1458
  %35 = fsub double 1.000000e+00, %34, !dbg !1459
  call void @fSubHandler(double 1.000000e+00, double %34, double %35, i64 0, i64 94256792327992, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792328400, i32 341, i32 20), !dbg !1457
  store double %35, double* %14, align 8, !dbg !1457
  call void @llvm.dbg.declare(metadata double* %15, metadata !1460, metadata !75), !dbg !1461
  %36 = load double, double* %7, align 8, !dbg !1462
  %37 = load double, double* %7, align 8, !dbg !1463
  %38 = fmul double %36, %37, !dbg !1464
  call void @fMulHandler(double %36, double %37, double %38, i64 94256792331560, i64 94256792331912, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792332320, i32 342, i32 23), !dbg !1465
  %39 = load double, double* %13, align 8, !dbg !1465
  %40 = fmul double %38, %39, !dbg !1466
  call void @fMulHandler(double %38, double %39, double %40, i64 94256792332320, i64 94256792332712, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792333120, i32 342, i32 25), !dbg !1467
  %41 = fsub double 1.000000e+00, %40, !dbg !1467
  call void @fSubHandler(double 1.000000e+00, double %40, double %41, i64 0, i64 94256792333120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792333568, i32 342, i32 20), !dbg !1461
  store double %41, double* %15, align 8, !dbg !1461
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !1468, metadata !75), !dbg !1469
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1470, metadata !75), !dbg !1471
  %42 = load double, double* %14, align 8, !dbg !1472
  %43 = load double, double* %15, align 8, !dbg !1473
  %44 = load i32, i32* %8, align 4, !dbg !1474
  %45 = call i32 @gsl_sf_ellint_RF_e(double %42, double %43, double 1.000000e+00, i32 %44, %struct.gsl_sf_result_struct* %16), !dbg !1475
  store i32 %45, i32* %17, align 4, !dbg !1471
  %46 = load double, double* %12, align 8, !dbg !1476
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !1477
  %48 = load double, double* %47, align 8, !dbg !1477
  %49 = fmul double %46, %48, !dbg !1478
  call void @fMulHandler(double %46, double %48, double %49, i64 94256792341256, i64 94256792342056, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792343728, i32 345, i32 27), !dbg !1479
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1479
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !1480
  store double %49, double* %51, align 8, !dbg !1481
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1482
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !1483
  %54 = load double, double* %53, align 8, !dbg !1483
  %55 = call double @fabs(double %54) #1, !dbg !1484
  %56 = fmul double 0x3CB0000000000000, %55, !dbg !1485
  call void @fMulHandler(double 0x3CB0000000000000, double %55, double %56, i64 0, i64 94256792347936, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256791460272, i32 346, i32 35), !dbg !1486
  %57 = load double, double* %12, align 8, !dbg !1486
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1487
  %59 = load double, double* %58, align 8, !dbg !1487
  %60 = fmul double %57, %59, !dbg !1488
  call void @fMulHandler(double %57, double %59, double %60, i64 94256791460664, i64 94256791461496, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256791461616, i32 346, i32 69), !dbg !1489
  %61 = call double @fabs(double %60) #1, !dbg !1489
  %62 = fadd double %56, %61, !dbg !1491
  call void @fAddHandler(double %56, double %61, double %62, i64 94256791460272, i64 94256791462096, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792354416, i32 346, i32 55), !dbg !1492
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1492
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !1493
  store double %62, double* %64, align 8, !dbg !1494
  %65 = load double, double* %10, align 8, !dbg !1495
  %66 = fcmp oeq double %65, 0.000000e+00, !dbg !1497
  %67 = call i1 @fCmpInstHandler(double %65, double 0.000000e+00, i1 %66, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792356432, i32 347, i32 12), !dbg !1498
  br i1 %67, label %68, label %70, !dbg !1498

; <label>:68:                                     ; preds = %4
  %69 = load i32, i32* %17, align 4, !dbg !1499
  store i32 %69, i32* %5, align 4, !dbg !1501
  br label %111, !dbg !1501

; <label>:70:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !1502, metadata !75), !dbg !1504
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1505, metadata !75), !dbg !1506
  %71 = load double, double* %7, align 8, !dbg !1507
  %72 = load i32, i32* %8, align 4, !dbg !1508
  %73 = call i32 @gsl_sf_ellint_Kcomp_e(double %71, i32 %72, %struct.gsl_sf_result_struct* %18), !dbg !1509
  store i32 %73, i32* %19, align 4, !dbg !1506
  %74 = load double, double* %10, align 8, !dbg !1510
  %75 = fmul double 2.000000e+00, %74, !dbg !1511
  call void @fMulHandler(double 2.000000e+00, double %74, double %75, i64 0, i64 94256792365544, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792365984, i32 352, i32 23), !dbg !1512
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1512
  %77 = load double, double* %76, align 8, !dbg !1512
  %78 = fmul double %75, %77, !dbg !1513
  call void @fMulHandler(double %75, double %77, double %78, i64 94256792365984, i64 94256792366792, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792368464, i32 352, i32 26), !dbg !1514
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1514
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !1515
  %81 = load double, double* %80, align 8, !dbg !1516
  %82 = fadd double %81, %78, !dbg !1516
  call void @fAddHandler(double %81, double %78, double %82, i64 94256792369688, i64 94256792368464, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792370096, i32 352, i32 19), !dbg !1516
  store double %82, double* %80, align 8, !dbg !1516
  %83 = load double, double* %10, align 8, !dbg !1517
  %84 = call double @fabs(double %83) #1, !dbg !1518
  %85 = fmul double 2.000000e+00, %84, !dbg !1519
  call void @fMulHandler(double 2.000000e+00, double %84, double %85, i64 0, i64 94256792372352, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792372864, i32 353, i32 23), !dbg !1520
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !1520
  %87 = load double, double* %86, align 8, !dbg !1520
  %88 = fmul double %85, %87, !dbg !1521
  call void @fMulHandler(double %85, double %87, double %88, i64 94256792372864, i64 94256792373672, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792375344, i32 353, i32 32), !dbg !1522
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1522
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !1523
  %91 = load double, double* %90, align 8, !dbg !1524
  %92 = fadd double %91, %88, !dbg !1524
  call void @fAddHandler(double %91, double %88, double %92, i64 94256792376568, i64 94256792375344, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792376976, i32 353, i32 19), !dbg !1524
  store double %92, double* %90, align 8, !dbg !1524
  %93 = load i32, i32* %17, align 4, !dbg !1525
  %94 = icmp ne i32 %93, 0, !dbg !1525
  %95 = sext i32 %93 to i64, !dbg !1525
  %96 = call i1 @iCmpInstHandler(i64 %95, i64 0, i1 %94, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792379168, i32 354, i32 14), !dbg !1525
  br i1 %96, label %97, label %99, !dbg !1525

; <label>:97:                                     ; preds = %70
  %98 = load i32, i32* %17, align 4, !dbg !1526
  br label %109, !dbg !1526

; <label>:99:                                     ; preds = %70
  %100 = load i32, i32* %19, align 4, !dbg !1528
  %101 = icmp ne i32 %100, 0, !dbg !1528
  %102 = sext i32 %100 to i64, !dbg !1528
  %103 = call i1 @iCmpInstHandler(i64 %102, i64 0, i1 %101, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i64 94256792383712, i32 354, i32 14), !dbg !1528
  br i1 %103, label %104, label %106, !dbg !1528

; <label>:104:                                    ; preds = %99
  %105 = load i32, i32* %19, align 4, !dbg !1530
  br label %107, !dbg !1530

; <label>:106:                                    ; preds = %99
  br label %107, !dbg !1532

; <label>:107:                                    ; preds = %106, %104
  %108 = phi i32 [ %105, %104 ], [ 0, %106 ], !dbg !1534
  br label %109, !dbg !1534

; <label>:109:                                    ; preds = %107, %97
  %110 = phi i32 [ %98, %97 ], [ %108, %107 ], !dbg !1536
  store i32 %110, i32* %5, align 4, !dbg !1538
  br label %111, !dbg !1538

; <label>:111:                                    ; preds = %109, %68
  %112 = load i32, i32* %5, align 4, !dbg !1539
  ret i32 %112, !dbg !1539
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_ellint_Kcomp_e(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !43 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1540, metadata !75), !dbg !1541
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1542, metadata !75), !dbg !1543
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1544, metadata !75), !dbg !1545
  %13 = load double, double* %5, align 8, !dbg !1546
  %14 = load double, double* %5, align 8, !dbg !1548
  %15 = fmul double %13, %14, !dbg !1549
  call void @fMulHandler(double %13, double %14, double %15, i64 94256792363240, i64 94256792320584, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792401152, i32 504, i32 7), !dbg !1550
  %16 = fcmp oge double %15, 1.000000e+00, !dbg !1550
  %17 = call i1 @fCmpInstHandler(double %15, double 1.000000e+00, i1 %16, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792401600, i32 504, i32 10), !dbg !1551
  br i1 %17, label %18, label %27, !dbg !1551

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !1552, !llvm.loop !1554

; <label>:19:                                     ; preds = %18
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1555
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !1555
  store double 0x7FF8000000000000, double* %21, align 8, !dbg !1555
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1555
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !1555
  store double 0x7FF8000000000000, double* %23, align 8, !dbg !1555
  br label %24, !dbg !1555, !llvm.loop !1558

; <label>:24:                                     ; preds = %19
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 505, i32 1), !dbg !1560
  store i32 1, i32* %4, align 4, !dbg !1560
  br label %93, !dbg !1560
                                                  ; No predecessors!
  br label %26, !dbg !1563

; <label>:26:                                     ; preds = %25
  br label %93, !dbg !1565

; <label>:27:                                     ; preds = %3
  %28 = load double, double* %5, align 8, !dbg !1566
  %29 = load double, double* %5, align 8, !dbg !1568
  %30 = fmul double %28, %29, !dbg !1569
  call void @fMulHandler(double %28, double %29, double %30, i64 94256792409688, i64 94256792410008, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792410416, i32 507, i32 12), !dbg !1570
  %31 = fcmp oge double %30, 0x3FEFFFFFF8000000, !dbg !1570
  %32 = call i1 @fCmpInstHandler(double %30, double 0x3FEFFFFFF8000000, i1 %31, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792410896, i32 507, i32 15), !dbg !1571
  br i1 %32, label %33, label %77, !dbg !1571

; <label>:33:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata double* %8, metadata !1572, metadata !75), !dbg !1574
  %34 = load double, double* %5, align 8, !dbg !1575
  %35 = load double, double* %5, align 8, !dbg !1576
  %36 = fmul double %34, %35, !dbg !1577
  call void @fMulHandler(double %34, double %35, double %36, i64 94256792413064, i64 94256792413416, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792413824, i32 509, i32 29), !dbg !1578
  %37 = fsub double 1.000000e+00, %36, !dbg !1578
  call void @fSubHandler(double 1.000000e+00, double %36, double %37, i64 0, i64 94256792413824, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792414272, i32 509, i32 26), !dbg !1574
  store double %37, double* %8, align 8, !dbg !1574
  call void @llvm.dbg.declare(metadata double* %9, metadata !1579, metadata !75), !dbg !1580
  %38 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Kcomp_e.a, i64 0, i64 0), align 16, !dbg !1581
  %39 = load double, double* %8, align 8, !dbg !1582
  %40 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Kcomp_e.a, i64 0, i64 1), align 8, !dbg !1583
  %41 = load double, double* %8, align 8, !dbg !1584
  %42 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Kcomp_e.a, i64 0, i64 2), align 16, !dbg !1585
  %43 = fmul double %41, %42, !dbg !1586
  call void @fMulHandler(double %41, double %42, double %43, i64 94256792418872, i64 94256792419480, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792419856, i32 512, i32 41), !dbg !1587
  %44 = fadd double %40, %43, !dbg !1587
  call void @fAddHandler(double %40, double %43, double %44, i64 94256792418520, i64 94256792419856, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792420272, i32 512, i32 38), !dbg !1588
  %45 = fmul double %39, %44, !dbg !1588
  call void @fMulHandler(double %39, double %44, double %45, i64 94256792417912, i64 94256792420272, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792420688, i32 512, i32 31), !dbg !1589
  %46 = fadd double %38, %45, !dbg !1589
  call void @fAddHandler(double %38, double %45, double %46, i64 94256792417560, i64 94256792420688, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792421104, i32 512, i32 28), !dbg !1580
  store double %46, double* %9, align 8, !dbg !1580
  call void @llvm.dbg.declare(metadata double* %10, metadata !1590, metadata !75), !dbg !1591
  %47 = load double, double* %8, align 8, !dbg !1592
  %48 = call double @log(double %47) #6, !dbg !1593
  call void @callOneArgHandler(i32 12, double %47, double %48, i64 94256792424296, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792425008, i32 513, i32 24), !dbg !1594
  %49 = fsub double -0.000000e+00, %48, !dbg !1594
  call void @fSubHandler(double -0.000000e+00, double %48, double %49, i64 0, i64 94256792425008, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792425584, i32 513, i32 23), !dbg !1595
  %50 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Kcomp_e.b, i64 0, i64 0), align 16, !dbg !1595
  %51 = load double, double* %8, align 8, !dbg !1596
  %52 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Kcomp_e.b, i64 0, i64 1), align 8, !dbg !1597
  %53 = load double, double* %8, align 8, !dbg !1598
  %54 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Kcomp_e.b, i64 0, i64 2), align 16, !dbg !1599
  %55 = fmul double %53, %54, !dbg !1600
  call void @fMulHandler(double %53, double %54, double %55, i64 94256792427384, i64 94256792427928, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792428304, i32 513, i32 52), !dbg !1601
  %56 = fadd double %52, %55, !dbg !1601
  call void @fAddHandler(double %52, double %55, double %56, i64 94256792427032, i64 94256792428304, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792428720, i32 513, i32 49), !dbg !1602
  %57 = fmul double %51, %56, !dbg !1602
  call void @fMulHandler(double %51, double %56, double %57, i64 94256792426488, i64 94256792428720, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792429136, i32 513, i32 42), !dbg !1603
  %58 = fadd double %50, %57, !dbg !1603
  call void @fAddHandler(double %50, double %57, double %58, i64 94256792426136, i64 94256792429136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792429552, i32 513, i32 39), !dbg !1604
  %59 = fmul double %49, %58, !dbg !1604
  call void @fMulHandler(double %49, double %58, double %59, i64 94256792425584, i64 94256792429552, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792429968, i32 513, i32 31), !dbg !1591
  store double %59, double* %10, align 8, !dbg !1591
  %60 = load double, double* %9, align 8, !dbg !1605
  %61 = load double, double* %10, align 8, !dbg !1606
  %62 = fadd double %60, %61, !dbg !1607
  call void @fAddHandler(double %60, double %61, double %62, i64 94256792432040, i64 94256792432424, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792432832, i32 514, i32 22), !dbg !1608
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1608
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !1609
  store double %62, double* %64, align 8, !dbg !1610
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1611
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !1612
  %67 = load double, double* %66, align 8, !dbg !1612
  %68 = call double @fabs(double %67) #1, !dbg !1613
  %69 = load double, double* %5, align 8, !dbg !1614
  %70 = load double, double* %8, align 8, !dbg !1615
  %71 = fdiv double %69, %70, !dbg !1616
  call void @fDivHandler(double %69, double %70, double %71, i64 94256792437496, i64 94256792437880, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792438288, i32 515, i32 70), !dbg !1617
  %72 = call double @fabs(double %71) #1, !dbg !1617
  %73 = fadd double %68, %72, !dbg !1619
  call void @fAddHandler(double %68, double %72, double %73, i64 94256792437040, i64 94256792438768, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792439248, i32 515, i32 62), !dbg !1620
  %74 = fmul double 0x3CC0000000000000, %73, !dbg !1620
  call void @fMulHandler(double 0x3CC0000000000000, double %73, double %74, i64 0, i64 94256792439248, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792439728, i32 515, i32 41), !dbg !1621
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1621
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !1622
  store double %74, double* %76, align 8, !dbg !1623
  store i32 0, i32* %4, align 4, !dbg !1624
  br label %93, !dbg !1624

; <label>:77:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata double* %11, metadata !1625, metadata !75), !dbg !1627
  %78 = load double, double* %5, align 8, !dbg !1628
  %79 = load double, double* %5, align 8, !dbg !1629
  %80 = fmul double %78, %79, !dbg !1630
  call void @fMulHandler(double %78, double %79, double %80, i64 94256792444536, i64 94256792444888, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792445296, i32 529, i32 23), !dbg !1631
  %81 = fsub double 1.000000e+00, %80, !dbg !1631
  call void @fSubHandler(double 1.000000e+00, double %80, double %81, i64 0, i64 94256792445296, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792445744, i32 529, i32 20), !dbg !1627
  store double %81, double* %11, align 8, !dbg !1627
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1632, metadata !75), !dbg !1633
  %82 = load double, double* %11, align 8, !dbg !1634
  %83 = load i32, i32* %6, align 4, !dbg !1635
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1636
  %85 = call i32 @gsl_sf_ellint_RF_e(double 0.000000e+00, double %82, double 1.000000e+00, i32 %83, %struct.gsl_sf_result_struct* %84), !dbg !1637
  store i32 %85, i32* %12, align 4, !dbg !1633
  %86 = load double, double* %11, align 8, !dbg !1638
  %87 = fdiv double 0x3CA0000000000000, %86, !dbg !1639
  call void @fDivHandler(double 0x3CA0000000000000, double %86, double %87, i64 0, i64 94256792452344, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792452784, i32 531, i32 42), !dbg !1640
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1640
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !1641
  %90 = load double, double* %89, align 8, !dbg !1642
  %91 = fadd double %90, %87, !dbg !1642
  call void @fAddHandler(double %90, double %87, double %91, i64 94256792454008, i64 94256792452784, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @15, i32 0, i32 0), i64 94256792454416, i32 531, i32 17), !dbg !1642
  store double %91, double* %89, align 8, !dbg !1642
  %92 = load i32, i32* %12, align 4, !dbg !1643
  store i32 %92, i32* %4, align 4, !dbg !1644
  br label %93, !dbg !1644

; <label>:93:                                     ; preds = %77, %33, %26, %24
  %94 = load i32, i32* %4, align 4, !dbg !1645
  ret i32 %94, !dbg !1645
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_ellint_E_e(double, double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !1646 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1647, metadata !75), !dbg !1648
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1649, metadata !75), !dbg !1650
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1651, metadata !75), !dbg !1652
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1653, metadata !75), !dbg !1654
  call void @llvm.dbg.declare(metadata double* %10, metadata !1655, metadata !75), !dbg !1656
  %25 = load double, double* %6, align 8, !dbg !1657
  %26 = fdiv double %25, 0x400921FB54442D18, !dbg !1658
  call void @fDivHandler(double %25, double 0x400921FB54442D18, double %26, i64 94256792469848, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792470224, i32 367, i32 24), !dbg !1659
  %27 = fadd double %26, 5.000000e-01, !dbg !1659
  call void @fAddHandler(double %26, double 5.000000e-01, double %27, i64 94256792470224, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792470672, i32 367, i32 30), !dbg !1660
  %28 = call double @floor(double %27) #1, !dbg !1660
  store double %28, double* %10, align 8, !dbg !1656
  call void @llvm.dbg.declare(metadata double* %11, metadata !1661, metadata !75), !dbg !1662
  %29 = load double, double* %6, align 8, !dbg !1663
  %30 = load double, double* %10, align 8, !dbg !1664
  %31 = fmul double %30, 0x400921FB54442D18, !dbg !1665
  call void @fMulHandler(double %30, double 0x400921FB54442D18, double %31, i64 94256792474728, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792475136, i32 368, i32 29), !dbg !1666
  %32 = fsub double %29, %31, !dbg !1666
  call void @fSubHandler(double %29, double %31, double %32, i64 94256792474376, i64 94256792475136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792475552, i32 368, i32 24), !dbg !1662
  store double %32, double* %11, align 8, !dbg !1662
  %33 = load double, double* %11, align 8, !dbg !1667
  store double %33, double* %6, align 8, !dbg !1668
  call void @llvm.dbg.declare(metadata double* %12, metadata !1669, metadata !75), !dbg !1671
  %34 = load double, double* %6, align 8, !dbg !1672
  %35 = call double @sin(double %34) #6, !dbg !1673
  call void @callOneArgHandler(i32 1, double %34, double %35, i64 94256792479544, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792479984, i32 372, i32 29), !dbg !1671
  store double %35, double* %12, align 8, !dbg !1671
  call void @llvm.dbg.declare(metadata double* %13, metadata !1674, metadata !75), !dbg !1675
  %36 = load double, double* %12, align 8, !dbg !1676
  %37 = load double, double* %12, align 8, !dbg !1677
  %38 = fmul double %36, %37, !dbg !1678
  call void @fMulHandler(double %36, double %37, double %38, i64 94256792483240, i64 94256792483592, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792484000, i32 373, i32 38), !dbg !1675
  store double %38, double* %13, align 8, !dbg !1675
  call void @llvm.dbg.declare(metadata double* %14, metadata !1679, metadata !75), !dbg !1680
  %39 = load double, double* %13, align 8, !dbg !1681
  %40 = fsub double 1.000000e+00, %39, !dbg !1682
  call void @fSubHandler(double 1.000000e+00, double %39, double %40, i64 0, i64 94256792487192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792487600, i32 374, i32 26), !dbg !1680
  store double %40, double* %14, align 8, !dbg !1680
  call void @llvm.dbg.declare(metadata double* %15, metadata !1683, metadata !75), !dbg !1684
  %41 = load double, double* %7, align 8, !dbg !1685
  %42 = load double, double* %7, align 8, !dbg !1686
  %43 = fmul double %41, %42, !dbg !1687
  call void @fMulHandler(double %41, double %42, double %43, i64 94256792490760, i64 94256792491112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792491520, i32 375, i32 29), !dbg !1688
  %44 = load double, double* %13, align 8, !dbg !1688
  %45 = fmul double %43, %44, !dbg !1689
  call void @fMulHandler(double %43, double %44, double %45, i64 94256792491520, i64 94256792491912, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792492320, i32 375, i32 31), !dbg !1690
  %46 = fsub double 1.000000e+00, %45, !dbg !1690
  call void @fSubHandler(double 1.000000e+00, double %45, double %46, i64 0, i64 94256792492320, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792492768, i32 375, i32 26), !dbg !1684
  store double %46, double* %15, align 8, !dbg !1684
  %47 = load double, double* %14, align 8, !dbg !1691
  %48 = fcmp olt double %47, 0x3CB0000000000000, !dbg !1693
  %49 = call i1 @fCmpInstHandler(double %47, double 0x3CB0000000000000, i1 %48, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792495216, i32 377, i32 10), !dbg !1694
  br i1 %49, label %50, label %82, !dbg !1694

; <label>:50:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !1695, metadata !75), !dbg !1697
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1698, metadata !75), !dbg !1699
  %51 = load double, double* %7, align 8, !dbg !1700
  %52 = load i32, i32* %8, align 4, !dbg !1701
  %53 = call i32 @gsl_sf_ellint_Ecomp_e(double %51, i32 %52, %struct.gsl_sf_result_struct* %16), !dbg !1702
  store i32 %53, i32* %17, align 4, !dbg !1699
  %54 = load double, double* %10, align 8, !dbg !1703
  %55 = fmul double 2.000000e+00, %54, !dbg !1704
  call void @fMulHandler(double 2.000000e+00, double %54, double %55, i64 0, i64 94256792501800, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792502240, i32 381, i32 22), !dbg !1705
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !1705
  %57 = load double, double* %56, align 8, !dbg !1705
  %58 = fmul double %55, %57, !dbg !1706
  call void @fMulHandler(double %55, double %57, double %58, i64 94256792502240, i64 94256792503048, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792504720, i32 381, i32 25), !dbg !1707
  %59 = load double, double* %12, align 8, !dbg !1707
  %60 = fcmp oge double %59, 0.000000e+00, !dbg !1707
  %61 = call i1 @fCmpInstHandler(double %59, double 0.000000e+00, i1 %60, i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792505520, i32 381, i32 35), !dbg !1707
  %62 = select i1 %61, i32 1, i32 -1, !dbg !1707
  %63 = sitofp i32 %62 to double, !dbg !1707
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !1708
  %65 = load double, double* %64, align 8, !dbg !1708
  %66 = fmul double %63, %65, !dbg !1709
  call void @fMulHandler(double %63, double %65, double %66, i64 94256792507384, i64 94256792507928, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792509600, i32 381, i32 53), !dbg !1710
  %67 = fadd double %58, %66, !dbg !1710
  call void @fAddHandler(double %58, double %66, double %67, i64 94256792504720, i64 94256792509600, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792510016, i32 381, i32 33), !dbg !1711
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1711
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 0, !dbg !1712
  store double %67, double* %69, align 8, !dbg !1713
  %70 = load double, double* %10, align 8, !dbg !1714
  %71 = call double @fabs(double %70) #1, !dbg !1715
  %72 = fmul double 2.000000e+00, %71, !dbg !1716
  call void @fMulHandler(double 2.000000e+00, double %71, double %72, i64 0, i64 94256792512128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792512640, i32 382, i32 22), !dbg !1717
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1717
  %74 = load double, double* %73, align 8, !dbg !1717
  %75 = fmul double %72, %74, !dbg !1718
  call void @fMulHandler(double %72, double %74, double %75, i64 94256792512640, i64 94256792513448, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792515120, i32 382, i32 31), !dbg !1719
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1719
  %77 = load double, double* %76, align 8, !dbg !1719
  %78 = fadd double %75, %77, !dbg !1720
  call void @fAddHandler(double %75, double %77, double %78, i64 94256792515120, i64 94256792515960, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792517632, i32 382, i32 39), !dbg !1721
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1721
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !1722
  store double %78, double* %80, align 8, !dbg !1723
  %81 = load i32, i32* %17, align 4, !dbg !1724
  store i32 %81, i32* %5, align 4, !dbg !1725
  br label %228, !dbg !1725

; <label>:82:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !1726, metadata !75), !dbg !1728
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !1729, metadata !75), !dbg !1730
  call void @llvm.dbg.declare(metadata double* %20, metadata !1731, metadata !75), !dbg !1732
  %83 = load double, double* %13, align 8, !dbg !1733
  %84 = load double, double* %12, align 8, !dbg !1734
  %85 = fmul double %83, %84, !dbg !1735
  call void @fMulHandler(double %83, double %84, double %85, i64 94256792525144, i64 94256792525496, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792525904, i32 387, i32 40), !dbg !1732
  store double %85, double* %20, align 8, !dbg !1732
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1736, metadata !75), !dbg !1737
  %86 = load double, double* %14, align 8, !dbg !1738
  %87 = load double, double* %15, align 8, !dbg !1739
  %88 = load i32, i32* %8, align 4, !dbg !1740
  %89 = call i32 @gsl_sf_ellint_RF_e(double %86, double %87, double 1.000000e+00, i32 %88, %struct.gsl_sf_result_struct* %18), !dbg !1741
  store i32 %89, i32* %21, align 4, !dbg !1737
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1742, metadata !75), !dbg !1743
  %90 = load double, double* %14, align 8, !dbg !1744
  %91 = load double, double* %15, align 8, !dbg !1745
  %92 = load i32, i32* %8, align 4, !dbg !1746
  %93 = call i32 @gsl_sf_ellint_RD_e(double %90, double %91, double 1.000000e+00, i32 %92, %struct.gsl_sf_result_struct* %19), !dbg !1747
  store i32 %93, i32* %22, align 4, !dbg !1743
  %94 = load double, double* %12, align 8, !dbg !1748
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1749
  %96 = load double, double* %95, align 8, !dbg !1749
  %97 = fmul double %94, %96, !dbg !1750
  call void @fMulHandler(double %94, double %96, double %97, i64 94256792537064, i64 94256792537864, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792539536, i32 390, i32 30), !dbg !1751
  %98 = load double, double* %7, align 8, !dbg !1751
  %99 = load double, double* %7, align 8, !dbg !1752
  %100 = fmul double %98, %99, !dbg !1753
  call void @fMulHandler(double %98, double %99, double %100, i64 94256792539928, i64 94256792540312, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792540720, i32 390, i32 42), !dbg !1754
  %101 = fdiv double %100, 3.000000e+00, !dbg !1754
  call void @fDivHandler(double %100, double 3.000000e+00, double %101, i64 94256792540720, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792541168, i32 390, i32 44), !dbg !1755
  %102 = load double, double* %20, align 8, !dbg !1755
  %103 = fmul double %101, %102, !dbg !1756
  call void @fMulHandler(double %101, double %102, double %103, i64 94256792541168, i64 94256792541528, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792541936, i32 390, i32 49), !dbg !1757
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1757
  %105 = load double, double* %104, align 8, !dbg !1757
  %106 = fmul double %103, %105, !dbg !1758
  call void @fMulHandler(double %103, double %105, double %106, i64 94256792541936, i64 94256792542776, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792544448, i32 390, i32 60), !dbg !1759
  %107 = fsub double %97, %106, !dbg !1759
  call void @fSubHandler(double %97, double %106, double %107, i64 94256792539536, i64 94256792544448, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792544864, i32 390, i32 39), !dbg !1760
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1760
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 0, !dbg !1761
  store double %107, double* %109, align 8, !dbg !1762
  %110 = load double, double* %12, align 8, !dbg !1763
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1764
  %112 = load double, double* %111, align 8, !dbg !1764
  %113 = fmul double %110, %112, !dbg !1765
  call void @fMulHandler(double %110, double %112, double %113, i64 94256792546504, i64 94256792547336, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792549008, i32 391, i32 53), !dbg !1766
  %114 = call double @fabs(double %113) #1, !dbg !1766
  %115 = fmul double 0x3CB0000000000000, %114, !dbg !1767
  call void @fMulHandler(double 0x3CB0000000000000, double %114, double %115, i64 0, i64 94256792549488, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792549968, i32 391, i32 38), !dbg !1768
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1768
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 1, !dbg !1769
  store double %115, double* %117, align 8, !dbg !1770
  %118 = load double, double* %12, align 8, !dbg !1771
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !1772
  %120 = load double, double* %119, align 8, !dbg !1772
  %121 = fmul double %118, %120, !dbg !1773
  call void @fMulHandler(double %118, double %120, double %121, i64 94256792551608, i64 94256792552440, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792554112, i32 392, i32 34), !dbg !1774
  %122 = call double @fabs(double %121) #1, !dbg !1774
  %123 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1775
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %123, i32 0, i32 1, !dbg !1776
  %125 = load double, double* %124, align 8, !dbg !1777
  %126 = fadd double %125, %122, !dbg !1777
  call void @fAddHandler(double %125, double %122, double %126, i64 94256792555880, i64 94256792554592, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792556288, i32 392, i32 19), !dbg !1777
  store double %126, double* %124, align 8, !dbg !1777
  %127 = load double, double* %7, align 8, !dbg !1778
  %128 = load double, double* %7, align 8, !dbg !1779
  %129 = fmul double %127, %128, !dbg !1780
  call void @fMulHandler(double %127, double %128, double %129, i64 94256792558072, i64 94256792558456, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792558864, i32 393, i32 23), !dbg !1781
  %130 = fdiv double %129, 3.000000e+00, !dbg !1781
  call void @fDivHandler(double %129, double 3.000000e+00, double %130, i64 94256792558864, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792559312, i32 393, i32 25), !dbg !1782
  %131 = fmul double %130, 0x3CB0000000000000, !dbg !1782
  call void @fMulHandler(double %130, double 0x3CB0000000000000, double %131, i64 94256792559312, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792561760, i32 393, i32 30), !dbg !1783
  %132 = load double, double* %20, align 8, !dbg !1783
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1784
  %134 = load double, double* %133, align 8, !dbg !1784
  %135 = fmul double %132, %134, !dbg !1785
  call void @fMulHandler(double %132, double %134, double %135, i64 94256792562152, i64 94256792562984, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792564656, i32 393, i32 64), !dbg !1786
  %136 = call double @fabs(double %135) #1, !dbg !1786
  %137 = fmul double %131, %136, !dbg !1787
  call void @fMulHandler(double %131, double %136, double %137, i64 94256792561760, i64 94256792565136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792565616, i32 393, i32 48), !dbg !1788
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1788
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 1, !dbg !1789
  %140 = load double, double* %139, align 8, !dbg !1790
  %141 = fadd double %140, %137, !dbg !1790
  call void @fAddHandler(double %140, double %137, double %141, i64 94256792566840, i64 94256792565616, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792567248, i32 393, i32 19), !dbg !1790
  store double %141, double* %139, align 8, !dbg !1790
  %142 = load double, double* %7, align 8, !dbg !1791
  %143 = load double, double* %7, align 8, !dbg !1792
  %144 = fmul double %142, %143, !dbg !1793
  call void @fMulHandler(double %142, double %143, double %144, i64 94256792569032, i64 94256792569416, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792569824, i32 394, i32 23), !dbg !1794
  %145 = fdiv double %144, 3.000000e+00, !dbg !1794
  call void @fDivHandler(double %144, double 3.000000e+00, double %145, i64 94256792569824, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792570272, i32 394, i32 25), !dbg !1795
  %146 = load double, double* %20, align 8, !dbg !1795
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !1796
  %148 = load double, double* %147, align 8, !dbg !1796
  %149 = fmul double %146, %148, !dbg !1797
  call void @fMulHandler(double %146, double %148, double %149, i64 94256792570632, i64 94256792571464, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792573136, i32 394, i32 45), !dbg !1798
  %150 = call double @fabs(double %149) #1, !dbg !1798
  %151 = fmul double %145, %150, !dbg !1799
  call void @fMulHandler(double %145, double %150, double %151, i64 94256792570272, i64 94256792573616, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792574096, i32 394, i32 30), !dbg !1800
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1800
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 1, !dbg !1801
  %154 = load double, double* %153, align 8, !dbg !1802
  %155 = fadd double %154, %151, !dbg !1802
  call void @fAddHandler(double %154, double %151, double %155, i64 94256792575320, i64 94256792574096, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792575728, i32 394, i32 19), !dbg !1802
  store double %155, double* %153, align 8, !dbg !1802
  %156 = load double, double* %10, align 8, !dbg !1803
  %157 = fcmp oeq double %156, 0.000000e+00, !dbg !1805
  %158 = call i1 @fCmpInstHandler(double %156, double 0.000000e+00, i1 %157, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792577920, i32 395, i32 14), !dbg !1806
  br i1 %158, label %159, label %178, !dbg !1806

; <label>:159:                                    ; preds = %82
  %160 = load i32, i32* %21, align 4, !dbg !1807
  %161 = icmp ne i32 %160, 0, !dbg !1807
  %162 = sext i32 %160 to i64, !dbg !1807
  %163 = call i1 @iCmpInstHandler(i64 %162, i64 0, i1 %161, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792579376, i32 396, i32 16), !dbg !1807
  br i1 %163, label %164, label %166, !dbg !1807

; <label>:164:                                    ; preds = %159
  %165 = load i32, i32* %21, align 4, !dbg !1809
  br label %176, !dbg !1809

; <label>:166:                                    ; preds = %159
  %167 = load i32, i32* %22, align 4, !dbg !1811
  %168 = icmp ne i32 %167, 0, !dbg !1811
  %169 = sext i32 %167 to i64, !dbg !1811
  %170 = call i1 @iCmpInstHandler(i64 %169, i64 0, i1 %168, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792583920, i32 396, i32 16), !dbg !1811
  br i1 %170, label %171, label %173, !dbg !1811

; <label>:171:                                    ; preds = %166
  %172 = load i32, i32* %22, align 4, !dbg !1813
  br label %174, !dbg !1813

; <label>:173:                                    ; preds = %166
  br label %174, !dbg !1815

; <label>:174:                                    ; preds = %173, %171
  %175 = phi i32 [ %172, %171 ], [ 0, %173 ], !dbg !1817
  br label %176, !dbg !1817

; <label>:176:                                    ; preds = %174, %164
  %177 = phi i32 [ %165, %164 ], [ %175, %174 ], !dbg !1819
  store i32 %177, i32* %5, align 4, !dbg !1821
  br label %228, !dbg !1821

; <label>:178:                                    ; preds = %82
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !1822, metadata !75), !dbg !1824
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1825, metadata !75), !dbg !1826
  %179 = load double, double* %7, align 8, !dbg !1827
  %180 = load i32, i32* %8, align 4, !dbg !1828
  %181 = call i32 @gsl_sf_ellint_Ecomp_e(double %179, i32 %180, %struct.gsl_sf_result_struct* %23), !dbg !1829
  store i32 %181, i32* %24, align 4, !dbg !1826
  %182 = load double, double* %10, align 8, !dbg !1830
  %183 = fmul double 2.000000e+00, %182, !dbg !1831
  call void @fMulHandler(double 2.000000e+00, double %182, double %183, i64 0, i64 94256792598104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792598512, i32 400, i32 25), !dbg !1832
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1832
  %185 = load double, double* %184, align 8, !dbg !1832
  %186 = fmul double %183, %185, !dbg !1833
  call void @fMulHandler(double %183, double %185, double %186, i64 94256792598512, i64 94256792599320, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792600992, i32 400, i32 28), !dbg !1834
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1834
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 0, !dbg !1835
  %189 = load double, double* %188, align 8, !dbg !1836
  %190 = fadd double %189, %186, !dbg !1836
  call void @fAddHandler(double %189, double %186, double %190, i64 94256792602216, i64 94256792600992, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792602624, i32 400, i32 21), !dbg !1836
  store double %190, double* %188, align 8, !dbg !1836
  %191 = load double, double* %10, align 8, !dbg !1837
  %192 = call double @fabs(double %191) #1, !dbg !1838
  %193 = fmul double 2.000000e+00, %192, !dbg !1839
  call void @fMulHandler(double 2.000000e+00, double %192, double %193, i64 0, i64 94256792604880, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792605392, i32 401, i32 25), !dbg !1840
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !1840
  %195 = load double, double* %194, align 8, !dbg !1840
  %196 = fmul double %193, %195, !dbg !1841
  call void @fMulHandler(double %193, double %195, double %196, i64 94256792605392, i64 94256792606200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792607872, i32 401, i32 34), !dbg !1842
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1842
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %197, i32 0, i32 1, !dbg !1843
  %199 = load double, double* %198, align 8, !dbg !1844
  %200 = fadd double %199, %196, !dbg !1844
  call void @fAddHandler(double %199, double %196, double %200, i64 94256792609096, i64 94256792607872, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792609504, i32 401, i32 21), !dbg !1844
  store double %200, double* %198, align 8, !dbg !1844
  %201 = load i32, i32* %21, align 4, !dbg !1845
  %202 = icmp ne i32 %201, 0, !dbg !1845
  %203 = sext i32 %201 to i64, !dbg !1845
  %204 = call i1 @iCmpInstHandler(i64 %203, i64 0, i1 %202, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792611696, i32 402, i32 16), !dbg !1845
  br i1 %204, label %205, label %207, !dbg !1845

; <label>:205:                                    ; preds = %178
  %206 = load i32, i32* %21, align 4, !dbg !1846
  br label %226, !dbg !1846

; <label>:207:                                    ; preds = %178
  %208 = load i32, i32* %22, align 4, !dbg !1848
  %209 = icmp ne i32 %208, 0, !dbg !1848
  %210 = sext i32 %208 to i64, !dbg !1848
  %211 = call i1 @iCmpInstHandler(i64 %210, i64 0, i1 %209, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792616240, i32 402, i32 16), !dbg !1848
  br i1 %211, label %212, label %214, !dbg !1848

; <label>:212:                                    ; preds = %207
  %213 = load i32, i32* %22, align 4, !dbg !1850
  br label %224, !dbg !1850

; <label>:214:                                    ; preds = %207
  %215 = load i32, i32* %24, align 4, !dbg !1852
  %216 = icmp ne i32 %215, 0, !dbg !1852
  %217 = sext i32 %215 to i64, !dbg !1852
  %218 = call i1 @iCmpInstHandler(i64 %217, i64 0, i1 %216, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i64 94256792620784, i32 402, i32 16), !dbg !1852
  br i1 %218, label %219, label %221, !dbg !1852

; <label>:219:                                    ; preds = %214
  %220 = load i32, i32* %24, align 4, !dbg !1854
  br label %222, !dbg !1854

; <label>:221:                                    ; preds = %214
  br label %222, !dbg !1856

; <label>:222:                                    ; preds = %221, %219
  %223 = phi i32 [ %220, %219 ], [ 0, %221 ], !dbg !1858
  br label %224, !dbg !1858

; <label>:224:                                    ; preds = %222, %212
  %225 = phi i32 [ %213, %212 ], [ %223, %222 ], !dbg !1860
  br label %226, !dbg !1860

; <label>:226:                                    ; preds = %224, %205
  %227 = phi i32 [ %206, %205 ], [ %225, %224 ], !dbg !1862
  store i32 %227, i32* %5, align 4, !dbg !1864
  br label %228, !dbg !1864

; <label>:228:                                    ; preds = %226, %176, %50
  %229 = load i32, i32* %5, align 4, !dbg !1865
  ret i32 %229, !dbg !1865
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_ellint_Ecomp_e(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !65 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1866, metadata !75), !dbg !1867
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1868, metadata !75), !dbg !1869
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !1870, metadata !75), !dbg !1871
  %16 = load double, double* %5, align 8, !dbg !1872
  %17 = load double, double* %5, align 8, !dbg !1874
  %18 = fmul double %16, %17, !dbg !1875
  call void @fMulHandler(double %16, double %17, double %18, i64 94256792499496, i64 94256792637832, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792638240, i32 541, i32 7), !dbg !1876
  %19 = fcmp oge double %18, 1.000000e+00, !dbg !1876
  %20 = call i1 @fCmpInstHandler(double %18, double 1.000000e+00, i1 %19, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792638688, i32 541, i32 10), !dbg !1877
  br i1 %20, label %21, label %30, !dbg !1877

; <label>:21:                                     ; preds = %3
  br label %22, !dbg !1878, !llvm.loop !1880

; <label>:22:                                     ; preds = %21
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1881
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1881
  store double 0x7FF8000000000000, double* %24, align 8, !dbg !1881
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1881
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !1881
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !1881
  br label %27, !dbg !1881, !llvm.loop !1884

; <label>:27:                                     ; preds = %22
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 542, i32 1), !dbg !1886
  store i32 1, i32* %4, align 4, !dbg !1886
  br label %132, !dbg !1886
                                                  ; No predecessors!
  br label %29, !dbg !1889

; <label>:29:                                     ; preds = %28
  br label %132, !dbg !1891

; <label>:30:                                     ; preds = %3
  %31 = load double, double* %5, align 8, !dbg !1892
  %32 = load double, double* %5, align 8, !dbg !1894
  %33 = fmul double %31, %32, !dbg !1895
  call void @fMulHandler(double %31, double %32, double %33, i64 94256792646872, i64 94256792647192, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792647600, i32 544, i32 12), !dbg !1896
  %34 = fcmp oge double %33, 0x3FEFFFFFF8000000, !dbg !1896
  %35 = call i1 @fCmpInstHandler(double %33, double 0x3FEFFFFFF8000000, i1 %34, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792648016, i32 544, i32 15), !dbg !1897
  br i1 %35, label %36, label %79, !dbg !1897

; <label>:36:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata double* %8, metadata !1898, metadata !75), !dbg !1900
  %37 = load double, double* %5, align 8, !dbg !1901
  %38 = load double, double* %5, align 8, !dbg !1902
  %39 = fmul double %37, %38, !dbg !1903
  call void @fMulHandler(double %37, double %38, double %39, i64 94256792650184, i64 94256792650536, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792650944, i32 546, i32 29), !dbg !1904
  %40 = fsub double 1.000000e+00, %39, !dbg !1904
  call void @fSubHandler(double 1.000000e+00, double %39, double %40, i64 0, i64 94256792650944, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792651392, i32 546, i32 26), !dbg !1900
  store double %40, double* %8, align 8, !dbg !1900
  call void @llvm.dbg.declare(metadata double* %9, metadata !1905, metadata !75), !dbg !1906
  %41 = load double, double* %8, align 8, !dbg !1907
  %42 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Ecomp_e.a, i64 0, i64 0), align 16, !dbg !1908
  %43 = load double, double* %8, align 8, !dbg !1909
  %44 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Ecomp_e.a, i64 0, i64 1), align 8, !dbg !1910
  %45 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Ecomp_e.a, i64 0, i64 2), align 16, !dbg !1911
  %46 = load double, double* %8, align 8, !dbg !1912
  %47 = fmul double %45, %46, !dbg !1913
  call void @fMulHandler(double %45, double %46, double %47, i64 94256792656472, i64 94256792656824, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792657232, i32 549, i32 53), !dbg !1914
  %48 = fadd double %44, %47, !dbg !1914
  call void @fAddHandler(double %44, double %47, double %48, i64 94256792655960, i64 94256792657232, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792657648, i32 549, i32 47), !dbg !1915
  %49 = fmul double %43, %48, !dbg !1915
  call void @fMulHandler(double %43, double %48, double %49, i64 94256792655416, i64 94256792657648, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792658064, i32 549, i32 40), !dbg !1916
  %50 = fadd double %42, %49, !dbg !1916
  call void @fAddHandler(double %42, double %49, double %50, i64 94256792655064, i64 94256792658064, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792658480, i32 549, i32 37), !dbg !1917
  %51 = fmul double %41, %50, !dbg !1917
  call void @fMulHandler(double %41, double %50, double %51, i64 94256792654552, i64 94256792658480, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792658896, i32 549, i32 30), !dbg !1918
  %52 = fadd double 1.000000e+00, %51, !dbg !1918
  call void @fAddHandler(double 1.000000e+00, double %51, double %52, i64 0, i64 94256792658896, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792659344, i32 549, i32 27), !dbg !1906
  store double %52, double* %9, align 8, !dbg !1906
  call void @llvm.dbg.declare(metadata double* %10, metadata !1919, metadata !75), !dbg !1920
  %53 = load double, double* %8, align 8, !dbg !1921
  %54 = fsub double -0.000000e+00, %53, !dbg !1922
  call void @fSubHandler(double -0.000000e+00, double %53, double %54, i64 0, i64 94256792662504, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792662880, i32 550, i32 23), !dbg !1923
  %55 = load double, double* %8, align 8, !dbg !1923
  %56 = call double @log(double %55) #6, !dbg !1924
  call void @callOneArgHandler(i32 12, double %55, double %56, i64 94256792663272, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792663744, i32 550, i32 26), !dbg !1925
  %57 = fmul double %54, %56, !dbg !1925
  call void @fMulHandler(double %54, double %56, double %57, i64 94256792662880, i64 94256792663744, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792664224, i32 550, i32 25), !dbg !1926
  %58 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Ecomp_e.b, i64 0, i64 0), align 16, !dbg !1926
  %59 = load double, double* %8, align 8, !dbg !1927
  %60 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Ecomp_e.b, i64 0, i64 1), align 8, !dbg !1928
  %61 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Ecomp_e.b, i64 0, i64 2), align 16, !dbg !1929
  %62 = load double, double* %8, align 8, !dbg !1930
  %63 = fmul double %61, %62, !dbg !1931
  call void @fMulHandler(double %61, double %62, double %63, i64 94256792666184, i64 94256792666536, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792666944, i32 550, i32 57), !dbg !1932
  %64 = fadd double %60, %63, !dbg !1932
  call void @fAddHandler(double %60, double %63, double %64, i64 94256792665672, i64 94256792666944, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792667360, i32 550, i32 51), !dbg !1933
  %65 = fmul double %59, %64, !dbg !1933
  call void @fMulHandler(double %59, double %64, double %65, i64 94256792665128, i64 94256792667360, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792667776, i32 550, i32 44), !dbg !1934
  %66 = fadd double %58, %65, !dbg !1934
  call void @fAddHandler(double %58, double %65, double %66, i64 94256792664776, i64 94256792667776, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792668192, i32 550, i32 41), !dbg !1935
  %67 = fmul double %57, %66, !dbg !1935
  call void @fMulHandler(double %57, double %66, double %67, i64 94256792664224, i64 94256792668192, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792668608, i32 550, i32 33), !dbg !1920
  store double %67, double* %10, align 8, !dbg !1920
  %68 = load double, double* %9, align 8, !dbg !1936
  %69 = load double, double* %10, align 8, !dbg !1937
  %70 = fadd double %68, %69, !dbg !1938
  call void @fAddHandler(double %68, double %69, double %70, i64 94256792670680, i64 94256792671064, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792671472, i32 551, i32 22), !dbg !1939
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1939
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !1940
  store double %70, double* %72, align 8, !dbg !1941
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1942
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 0, !dbg !1943
  %75 = load double, double* %74, align 8, !dbg !1943
  %76 = fmul double 0x3CC0000000000000, %75, !dbg !1944
  call void @fMulHandler(double 0x3CC0000000000000, double %75, double %76, i64 0, i64 94256792673944, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792675616, i32 552, i32 41), !dbg !1945
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1945
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !1946
  store double %76, double* %78, align 8, !dbg !1947
  store i32 0, i32* %4, align 4, !dbg !1948
  br label %132, !dbg !1948

; <label>:79:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !1949, metadata !75), !dbg !1951
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !1952, metadata !75), !dbg !1953
  call void @llvm.dbg.declare(metadata double* %13, metadata !1954, metadata !75), !dbg !1955
  %80 = load double, double* %5, align 8, !dbg !1956
  %81 = load double, double* %5, align 8, !dbg !1957
  %82 = fmul double %80, %81, !dbg !1958
  call void @fMulHandler(double %80, double %81, double %82, i64 94256792682552, i64 94256792682904, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792683312, i32 558, i32 29), !dbg !1959
  %83 = fsub double 1.000000e+00, %82, !dbg !1959
  call void @fSubHandler(double 1.000000e+00, double %82, double %83, i64 0, i64 94256792683312, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792683760, i32 558, i32 26), !dbg !1955
  store double %83, double* %13, align 8, !dbg !1955
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1960, metadata !75), !dbg !1961
  %84 = load double, double* %13, align 8, !dbg !1962
  %85 = load i32, i32* %6, align 4, !dbg !1963
  %86 = call i32 @gsl_sf_ellint_RF_e(double 0.000000e+00, double %84, double 1.000000e+00, i32 %85, %struct.gsl_sf_result_struct* %11), !dbg !1964
  store i32 %86, i32* %14, align 4, !dbg !1961
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1965, metadata !75), !dbg !1966
  %87 = load double, double* %13, align 8, !dbg !1967
  %88 = load i32, i32* %6, align 4, !dbg !1968
  %89 = call i32 @gsl_sf_ellint_RD_e(double 0.000000e+00, double %87, double 1.000000e+00, i32 %88, %struct.gsl_sf_result_struct* %12), !dbg !1969
  store i32 %89, i32* %15, align 4, !dbg !1966
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1970
  %91 = load double, double* %90, align 8, !dbg !1970
  %92 = load double, double* %5, align 8, !dbg !1971
  %93 = load double, double* %5, align 8, !dbg !1972
  %94 = fmul double %92, %93, !dbg !1973
  call void @fMulHandler(double %92, double %93, double %94, i64 94256792035464, i64 94256792035848, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792036256, i32 561, i32 29), !dbg !1974
  %95 = fdiv double %94, 3.000000e+00, !dbg !1974
  call void @fDivHandler(double %94, double 3.000000e+00, double %95, i64 94256792036256, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792036704, i32 561, i32 31), !dbg !1975
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !1975
  %97 = load double, double* %96, align 8, !dbg !1975
  %98 = fmul double %95, %97, !dbg !1976
  call void @fMulHandler(double %95, double %97, double %98, i64 94256792036704, i64 94256792710536, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792712208, i32 561, i32 36), !dbg !1977
  %99 = fsub double %91, %98, !dbg !1977
  call void @fSubHandler(double %91, double %98, double %99, i64 94256792033816, i64 94256792712208, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792712624, i32 561, i32 26), !dbg !1978
  %100 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1978
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %100, i32 0, i32 0, !dbg !1979
  store double %99, double* %101, align 8, !dbg !1980
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !1981
  %103 = load double, double* %102, align 8, !dbg !1981
  %104 = load double, double* %5, align 8, !dbg !1982
  %105 = load double, double* %5, align 8, !dbg !1983
  %106 = fmul double %104, %105, !dbg !1984
  call void @fMulHandler(double %104, double %105, double %106, i64 94256792716360, i64 94256792716744, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792717152, i32 562, i32 29), !dbg !1985
  %107 = fdiv double %106, 3.000000e+00, !dbg !1985
  call void @fDivHandler(double %106, double 3.000000e+00, double %107, i64 94256792717152, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792717600, i32 562, i32 31), !dbg !1986
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !1986
  %109 = load double, double* %108, align 8, !dbg !1986
  %110 = fmul double %107, %109, !dbg !1987
  call void @fMulHandler(double %107, double %109, double %110, i64 94256792717600, i64 94256792718408, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792720080, i32 562, i32 36), !dbg !1988
  %111 = fadd double %103, %110, !dbg !1988
  call void @fAddHandler(double %103, double %110, double %111, i64 94256792714712, i64 94256792720080, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792720496, i32 562, i32 26), !dbg !1989
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1989
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 1, !dbg !1990
  store double %111, double* %113, align 8, !dbg !1991
  %114 = load i32, i32* %14, align 4, !dbg !1992
  %115 = icmp ne i32 %114, 0, !dbg !1992
  %116 = sext i32 %114 to i64, !dbg !1992
  %117 = call i1 @iCmpInstHandler(i64 %116, i64 0, i1 %115, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792722544, i32 563, i32 12), !dbg !1992
  br i1 %117, label %118, label %120, !dbg !1992

; <label>:118:                                    ; preds = %79
  %119 = load i32, i32* %14, align 4, !dbg !1993
  br label %130, !dbg !1993

; <label>:120:                                    ; preds = %79
  %121 = load i32, i32* %15, align 4, !dbg !1995
  %122 = icmp ne i32 %121, 0, !dbg !1995
  %123 = sext i32 %121 to i64, !dbg !1995
  %124 = call i1 @iCmpInstHandler(i64 %123, i64 0, i1 %122, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i64 94256792727088, i32 563, i32 12), !dbg !1995
  br i1 %124, label %125, label %127, !dbg !1995

; <label>:125:                                    ; preds = %120
  %126 = load i32, i32* %15, align 4, !dbg !1997
  br label %128, !dbg !1997

; <label>:127:                                    ; preds = %120
  br label %128, !dbg !1999

; <label>:128:                                    ; preds = %127, %125
  %129 = phi i32 [ %126, %125 ], [ 0, %127 ], !dbg !2001
  br label %130, !dbg !2001

; <label>:130:                                    ; preds = %128, %118
  %131 = phi i32 [ %119, %118 ], [ %129, %128 ], !dbg !2003
  store i32 %131, i32* %4, align 4, !dbg !2005
  br label %132, !dbg !2005

; <label>:132:                                    ; preds = %130, %36, %29, %27
  %133 = load i32, i32* %4, align 4, !dbg !2006
  ret i32 %133, !dbg !2006
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_ellint_P_e(double, double, double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !2007 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2008, metadata !75), !dbg !2009
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2010, metadata !75), !dbg !2011
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2012, metadata !75), !dbg !2013
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2014, metadata !75), !dbg !2015
  store %struct.gsl_sf_result_struct* %4, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !2016, metadata !75), !dbg !2017
  call void @llvm.dbg.declare(metadata double* %12, metadata !2018, metadata !75), !dbg !2019
  %25 = load double, double* %7, align 8, !dbg !2020
  %26 = fdiv double %25, 0x400921FB54442D18, !dbg !2021
  call void @fDivHandler(double %25, double 0x400921FB54442D18, double %26, i64 94256792748488, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792748864, i32 416, i32 24), !dbg !2022
  %27 = fadd double %26, 5.000000e-01, !dbg !2022
  call void @fAddHandler(double %26, double 5.000000e-01, double %27, i64 94256792748864, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792749312, i32 416, i32 30), !dbg !2023
  %28 = call double @floor(double %27) #1, !dbg !2023
  store double %28, double* %12, align 8, !dbg !2019
  call void @llvm.dbg.declare(metadata double* %13, metadata !2024, metadata !75), !dbg !2025
  %29 = load double, double* %7, align 8, !dbg !2026
  %30 = load double, double* %12, align 8, !dbg !2027
  %31 = fmul double %30, 0x400921FB54442D18, !dbg !2028
  call void @fMulHandler(double %30, double 0x400921FB54442D18, double %31, i64 94256792753368, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792753776, i32 417, i32 29), !dbg !2029
  %32 = fsub double %29, %31, !dbg !2029
  call void @fSubHandler(double %29, double %31, double %32, i64 94256792753016, i64 94256792753776, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792754192, i32 417, i32 24), !dbg !2025
  store double %32, double* %13, align 8, !dbg !2025
  %33 = load double, double* %13, align 8, !dbg !2030
  store double %33, double* %7, align 8, !dbg !2031
  call void @llvm.dbg.declare(metadata double* %14, metadata !2032, metadata !75), !dbg !2034
  %34 = load double, double* %7, align 8, !dbg !2035
  %35 = call double @sin(double %34) #6, !dbg !2036
  call void @callOneArgHandler(i32 1, double %34, double %35, i64 94256792758184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792758624, i32 423, i32 29), !dbg !2034
  store double %35, double* %14, align 8, !dbg !2034
  call void @llvm.dbg.declare(metadata double* %15, metadata !2037, metadata !75), !dbg !2038
  %36 = load double, double* %14, align 8, !dbg !2039
  %37 = load double, double* %14, align 8, !dbg !2040
  %38 = fmul double %36, %37, !dbg !2041
  call void @fMulHandler(double %36, double %37, double %38, i64 94256792761880, i64 94256792762232, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792762640, i32 424, i32 38), !dbg !2038
  store double %38, double* %15, align 8, !dbg !2038
  call void @llvm.dbg.declare(metadata double* %16, metadata !2042, metadata !75), !dbg !2043
  %39 = load double, double* %15, align 8, !dbg !2044
  %40 = load double, double* %14, align 8, !dbg !2045
  %41 = fmul double %39, %40, !dbg !2046
  call void @fMulHandler(double %39, double %40, double %41, i64 94256792765832, i64 94256792766184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792766592, i32 425, i32 38), !dbg !2043
  store double %41, double* %16, align 8, !dbg !2043
  call void @llvm.dbg.declare(metadata double* %17, metadata !2047, metadata !75), !dbg !2048
  %42 = load double, double* %15, align 8, !dbg !2049
  %43 = fsub double 1.000000e+00, %42, !dbg !2050
  call void @fSubHandler(double 1.000000e+00, double %42, double %43, i64 0, i64 94256792769784, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792770192, i32 426, i32 26), !dbg !2048
  store double %43, double* %17, align 8, !dbg !2048
  call void @llvm.dbg.declare(metadata double* %18, metadata !2051, metadata !75), !dbg !2052
  %44 = load double, double* %8, align 8, !dbg !2053
  %45 = load double, double* %8, align 8, !dbg !2054
  %46 = fmul double %44, %45, !dbg !2055
  call void @fMulHandler(double %44, double %45, double %46, i64 94256792773352, i64 94256792773704, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792774112, i32 427, i32 29), !dbg !2056
  %47 = load double, double* %15, align 8, !dbg !2056
  %48 = fmul double %46, %47, !dbg !2057
  call void @fMulHandler(double %46, double %47, double %48, i64 94256792774112, i64 94256792774504, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792774912, i32 427, i32 31), !dbg !2058
  %49 = fsub double 1.000000e+00, %48, !dbg !2058
  call void @fSubHandler(double 1.000000e+00, double %48, double %49, i64 0, i64 94256792774912, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792775360, i32 427, i32 26), !dbg !2052
  store double %49, double* %18, align 8, !dbg !2052
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !2059, metadata !75), !dbg !2060
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !2061, metadata !75), !dbg !2062
  call void @llvm.dbg.declare(metadata i32* %21, metadata !2063, metadata !75), !dbg !2064
  %50 = load double, double* %17, align 8, !dbg !2065
  %51 = load double, double* %18, align 8, !dbg !2066
  %52 = load i32, i32* %10, align 4, !dbg !2067
  %53 = call i32 @gsl_sf_ellint_RF_e(double %50, double %51, double 1.000000e+00, i32 %52, %struct.gsl_sf_result_struct* %19), !dbg !2068
  store i32 %53, i32* %21, align 4, !dbg !2064
  call void @llvm.dbg.declare(metadata i32* %22, metadata !2069, metadata !75), !dbg !2070
  %54 = load double, double* %17, align 8, !dbg !2071
  %55 = load double, double* %18, align 8, !dbg !2072
  %56 = load double, double* %9, align 8, !dbg !2073
  %57 = load double, double* %15, align 8, !dbg !2074
  %58 = fmul double %56, %57, !dbg !2075
  call void @fMulHandler(double %56, double %57, double %58, i64 94256792785960, i64 94256792786344, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792786752, i32 431, i32 63), !dbg !2076
  %59 = fadd double 1.000000e+00, %58, !dbg !2076
  call void @fAddHandler(double 1.000000e+00, double %58, double %59, i64 0, i64 94256792786752, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792787200, i32 431, i32 60), !dbg !2077
  %60 = load i32, i32* %10, align 4, !dbg !2077
  %61 = call i32 @gsl_sf_ellint_RJ_e(double %54, double %55, double 1.000000e+00, double %59, i32 %60, %struct.gsl_sf_result_struct* %20), !dbg !2078
  store i32 %61, i32* %22, align 4, !dbg !2070
  %62 = load double, double* %14, align 8, !dbg !2079
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !2080
  %64 = load double, double* %63, align 8, !dbg !2080
  %65 = fmul double %62, %64, !dbg !2081
  call void @fMulHandler(double %62, double %64, double %65, i64 94256792790280, i64 94256792791080, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792792752, i32 432, i32 28), !dbg !2082
  %66 = load double, double* %9, align 8, !dbg !2082
  %67 = fdiv double %66, 3.000000e+00, !dbg !2083
  call void @fDivHandler(double %66, double 3.000000e+00, double %67, i64 94256792793144, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792793584, i32 432, i32 40), !dbg !2084
  %68 = load double, double* %16, align 8, !dbg !2084
  %69 = fmul double %67, %68, !dbg !2085
  call void @fMulHandler(double %67, double %68, double %69, i64 94256792793584, i64 94256792793944, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792794352, i32 432, i32 44), !dbg !2086
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !2086
  %71 = load double, double* %70, align 8, !dbg !2086
  %72 = fmul double %69, %71, !dbg !2087
  call void @fMulHandler(double %69, double %71, double %72, i64 94256792794352, i64 94256792795192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792796864, i32 432, i32 54), !dbg !2088
  %73 = fsub double %65, %72, !dbg !2088
  call void @fSubHandler(double %65, double %72, double %73, i64 94256792792752, i64 94256792796864, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792797280, i32 432, i32 37), !dbg !2089
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2089
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !2090
  store double %73, double* %75, align 8, !dbg !2091
  %76 = load double, double* %14, align 8, !dbg !2092
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !2093
  %78 = load double, double* %77, align 8, !dbg !2093
  %79 = fmul double %76, %78, !dbg !2094
  call void @fMulHandler(double %76, double %78, double %79, i64 94256792798920, i64 94256792799752, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792801424, i32 433, i32 51), !dbg !2095
  %80 = call double @fabs(double %79) #1, !dbg !2095
  %81 = fmul double 0x3CB0000000000000, %80, !dbg !2096
  call void @fMulHandler(double 0x3CB0000000000000, double %80, double %81, i64 0, i64 94256792801904, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792802384, i32 433, i32 36), !dbg !2097
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2097
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !2098
  store double %81, double* %83, align 8, !dbg !2099
  %84 = load double, double* %14, align 8, !dbg !2100
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !2101
  %86 = load double, double* %85, align 8, !dbg !2101
  %87 = fmul double %84, %86, !dbg !2102
  call void @fMulHandler(double %84, double %86, double %87, i64 94256792804024, i64 94256792804856, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792806528, i32 434, i32 33), !dbg !2103
  %88 = call double @fabs(double %87) #1, !dbg !2103
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2104
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !2105
  %91 = load double, double* %90, align 8, !dbg !2106
  %92 = fadd double %91, %88, !dbg !2106
  call void @fAddHandler(double %91, double %88, double %92, i64 94256792808296, i64 94256792807008, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792808704, i32 434, i32 17), !dbg !2106
  store double %92, double* %90, align 8, !dbg !2106
  %93 = load double, double* %9, align 8, !dbg !2107
  %94 = fdiv double %93, 3.000000e+00, !dbg !2108
  call void @fDivHandler(double %93, double 3.000000e+00, double %94, i64 94256792810488, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792810928, i32 435, i32 21), !dbg !2109
  %95 = fmul double %94, 0x3CB0000000000000, !dbg !2109
  call void @fMulHandler(double %94, double 0x3CB0000000000000, double %95, i64 94256792810928, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792811312, i32 435, i32 26), !dbg !2110
  %96 = load double, double* %16, align 8, !dbg !2110
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !2111
  %98 = load double, double* %97, align 8, !dbg !2111
  %99 = fmul double %96, %98, !dbg !2112
  call void @fMulHandler(double %96, double %98, double %99, i64 94256792811704, i64 94256792812536, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792814208, i32 435, i32 59), !dbg !2113
  %100 = call double @fabs(double %99) #1, !dbg !2113
  %101 = fmul double %95, %100, !dbg !2114
  call void @fMulHandler(double %95, double %100, double %101, i64 94256792811312, i64 94256792814688, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792815168, i32 435, i32 44), !dbg !2115
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2115
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 1, !dbg !2116
  %104 = load double, double* %103, align 8, !dbg !2117
  %105 = fadd double %104, %101, !dbg !2117
  call void @fAddHandler(double %104, double %101, double %105, i64 94256792816392, i64 94256792815168, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792816800, i32 435, i32 17), !dbg !2117
  store double %105, double* %103, align 8, !dbg !2117
  %106 = load double, double* %9, align 8, !dbg !2118
  %107 = fdiv double %106, 3.000000e+00, !dbg !2119
  call void @fDivHandler(double %106, double 3.000000e+00, double %107, i64 94256792818584, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792819024, i32 436, i32 21), !dbg !2120
  %108 = load double, double* %16, align 8, !dbg !2120
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !2121
  %110 = load double, double* %109, align 8, !dbg !2121
  %111 = fmul double %108, %110, !dbg !2122
  call void @fMulHandler(double %108, double %110, double %111, i64 94256792819384, i64 94256792820216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792821888, i32 436, i32 41), !dbg !2123
  %112 = call double @fabs(double %111) #1, !dbg !2123
  %113 = fmul double %107, %112, !dbg !2124
  call void @fMulHandler(double %107, double %112, double %113, i64 94256792819024, i64 94256792822368, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792822848, i32 436, i32 26), !dbg !2125
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2125
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 1, !dbg !2126
  %116 = load double, double* %115, align 8, !dbg !2127
  %117 = fadd double %116, %113, !dbg !2127
  call void @fAddHandler(double %116, double %113, double %117, i64 94256792824072, i64 94256792822848, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792824480, i32 436, i32 17), !dbg !2127
  store double %117, double* %115, align 8, !dbg !2127
  %118 = load double, double* %12, align 8, !dbg !2128
  %119 = fcmp oeq double %118, 0.000000e+00, !dbg !2130
  %120 = call i1 @fCmpInstHandler(double %118, double 0.000000e+00, i1 %119, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792826672, i32 437, i32 12), !dbg !2131
  br i1 %120, label %121, label %140, !dbg !2131

; <label>:121:                                    ; preds = %5
  %122 = load i32, i32* %21, align 4, !dbg !2132
  %123 = icmp ne i32 %122, 0, !dbg !2132
  %124 = sext i32 %122 to i64, !dbg !2132
  %125 = call i1 @iCmpInstHandler(i64 %124, i64 0, i1 %123, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792828128, i32 438, i32 14), !dbg !2132
  br i1 %125, label %126, label %128, !dbg !2132

; <label>:126:                                    ; preds = %121
  %127 = load i32, i32* %21, align 4, !dbg !2134
  br label %138, !dbg !2134

; <label>:128:                                    ; preds = %121
  %129 = load i32, i32* %22, align 4, !dbg !2136
  %130 = icmp ne i32 %129, 0, !dbg !2136
  %131 = sext i32 %129 to i64, !dbg !2136
  %132 = call i1 @iCmpInstHandler(i64 %131, i64 0, i1 %130, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792832672, i32 438, i32 14), !dbg !2136
  br i1 %132, label %133, label %135, !dbg !2136

; <label>:133:                                    ; preds = %128
  %134 = load i32, i32* %22, align 4, !dbg !2138
  br label %136, !dbg !2138

; <label>:135:                                    ; preds = %128
  br label %136, !dbg !2140

; <label>:136:                                    ; preds = %135, %133
  %137 = phi i32 [ %134, %133 ], [ 0, %135 ], !dbg !2142
  br label %138, !dbg !2142

; <label>:138:                                    ; preds = %136, %126
  %139 = phi i32 [ %127, %126 ], [ %137, %136 ], !dbg !2144
  store i32 %139, i32* %6, align 4, !dbg !2146
  br label %191, !dbg !2146

; <label>:140:                                    ; preds = %5
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !2147, metadata !75), !dbg !2149
  call void @llvm.dbg.declare(metadata i32* %24, metadata !2150, metadata !75), !dbg !2151
  %141 = load double, double* %8, align 8, !dbg !2152
  %142 = load double, double* %9, align 8, !dbg !2153
  %143 = load i32, i32* %10, align 4, !dbg !2154
  %144 = call i32 @gsl_sf_ellint_Pcomp_e(double %141, double %142, i32 %143, %struct.gsl_sf_result_struct* %23), !dbg !2155
  store i32 %144, i32* %24, align 4, !dbg !2151
  %145 = load double, double* %12, align 8, !dbg !2156
  %146 = fmul double 2.000000e+00, %145, !dbg !2157
  call void @fMulHandler(double 2.000000e+00, double %145, double %146, i64 0, i64 94256792849784, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792850224, i32 442, i32 23), !dbg !2158
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !2158
  %148 = load double, double* %147, align 8, !dbg !2158
  %149 = fmul double %146, %148, !dbg !2159
  call void @fMulHandler(double %146, double %148, double %149, i64 94256792850224, i64 94256792851032, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792852704, i32 442, i32 26), !dbg !2160
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2160
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 0, !dbg !2161
  %152 = load double, double* %151, align 8, !dbg !2162
  %153 = fadd double %152, %149, !dbg !2162
  call void @fAddHandler(double %152, double %149, double %153, i64 94256792853928, i64 94256792852704, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792854336, i32 442, i32 19), !dbg !2162
  store double %153, double* %151, align 8, !dbg !2162
  %154 = load double, double* %12, align 8, !dbg !2163
  %155 = call double @fabs(double %154) #1, !dbg !2164
  %156 = fmul double 2.000000e+00, %155, !dbg !2165
  call void @fMulHandler(double 2.000000e+00, double %155, double %156, i64 0, i64 94256792856592, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792857104, i32 443, i32 23), !dbg !2166
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !2166
  %158 = load double, double* %157, align 8, !dbg !2166
  %159 = fmul double %156, %158, !dbg !2167
  call void @fMulHandler(double %156, double %158, double %159, i64 94256792857104, i64 94256792857912, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792859584, i32 443, i32 32), !dbg !2168
  %160 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2168
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %160, i32 0, i32 1, !dbg !2169
  %162 = load double, double* %161, align 8, !dbg !2170
  %163 = fadd double %162, %159, !dbg !2170
  call void @fAddHandler(double %162, double %159, double %163, i64 94256792860808, i64 94256792859584, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792861216, i32 443, i32 19), !dbg !2170
  store double %163, double* %161, align 8, !dbg !2170
  %164 = load i32, i32* %21, align 4, !dbg !2171
  %165 = icmp ne i32 %164, 0, !dbg !2171
  %166 = sext i32 %164 to i64, !dbg !2171
  %167 = call i1 @iCmpInstHandler(i64 %166, i64 0, i1 %165, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792863408, i32 444, i32 14), !dbg !2171
  br i1 %167, label %168, label %170, !dbg !2171

; <label>:168:                                    ; preds = %140
  %169 = load i32, i32* %21, align 4, !dbg !2172
  br label %189, !dbg !2172

; <label>:170:                                    ; preds = %140
  %171 = load i32, i32* %22, align 4, !dbg !2174
  %172 = icmp ne i32 %171, 0, !dbg !2174
  %173 = sext i32 %171 to i64, !dbg !2174
  %174 = call i1 @iCmpInstHandler(i64 %173, i64 0, i1 %172, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792867952, i32 444, i32 14), !dbg !2174
  br i1 %174, label %175, label %177, !dbg !2174

; <label>:175:                                    ; preds = %170
  %176 = load i32, i32* %22, align 4, !dbg !2176
  br label %187, !dbg !2176

; <label>:177:                                    ; preds = %170
  %178 = load i32, i32* %24, align 4, !dbg !2178
  %179 = icmp ne i32 %178, 0, !dbg !2178
  %180 = sext i32 %178 to i64, !dbg !2178
  %181 = call i1 @iCmpInstHandler(i64 %180, i64 0, i1 %179, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i64 94256792872496, i32 444, i32 14), !dbg !2178
  br i1 %181, label %182, label %184, !dbg !2178

; <label>:182:                                    ; preds = %177
  %183 = load i32, i32* %24, align 4, !dbg !2180
  br label %185, !dbg !2180

; <label>:184:                                    ; preds = %177
  br label %185, !dbg !2182

; <label>:185:                                    ; preds = %184, %182
  %186 = phi i32 [ %183, %182 ], [ 0, %184 ], !dbg !2184
  br label %187, !dbg !2184

; <label>:187:                                    ; preds = %185, %175
  %188 = phi i32 [ %176, %175 ], [ %186, %185 ], !dbg !2186
  br label %189, !dbg !2186

; <label>:189:                                    ; preds = %187, %168
  %190 = phi i32 [ %169, %168 ], [ %188, %187 ], !dbg !2188
  store i32 %190, i32* %6, align 4, !dbg !2190
  br label %191, !dbg !2190

; <label>:191:                                    ; preds = %189, %138
  %192 = load i32, i32* %6, align 4, !dbg !2191
  ret i32 %192, !dbg !2191
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_ellint_Pcomp_e(double, double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !2192 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2193, metadata !75), !dbg !2194
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2195, metadata !75), !dbg !2196
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2197, metadata !75), !dbg !2198
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !2199, metadata !75), !dbg !2200
  %15 = load double, double* %6, align 8, !dbg !2201
  %16 = load double, double* %6, align 8, !dbg !2203
  %17 = fmul double %15, %16, !dbg !2204
  call void @fMulHandler(double %15, double %16, double %17, i64 94256792847464, i64 94256792890648, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94256792891056, i32 571, i32 7), !dbg !2205
  %18 = fcmp oge double %17, 1.000000e+00, !dbg !2205
  %19 = call i1 @fCmpInstHandler(double %17, double 1.000000e+00, i1 %18, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94256792891504, i32 571, i32 10), !dbg !2206
  br i1 %19, label %20, label %29, !dbg !2206

; <label>:20:                                     ; preds = %4
  br label %21, !dbg !2207, !llvm.loop !2209

; <label>:21:                                     ; preds = %20
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2210
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !2210
  store double 0x7FF8000000000000, double* %23, align 8, !dbg !2210
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2210
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !2210
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !2210
  br label %26, !dbg !2210, !llvm.loop !2213

; <label>:26:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 572, i32 1), !dbg !2215
  store i32 1, i32* %5, align 4, !dbg !2215
  br label %81, !dbg !2215
                                                  ; No predecessors!
  br label %28, !dbg !2218

; <label>:28:                                     ; preds = %27
  br label %81, !dbg !2220

; <label>:29:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !2221, metadata !75), !dbg !2223
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !2224, metadata !75), !dbg !2225
  call void @llvm.dbg.declare(metadata double* %12, metadata !2226, metadata !75), !dbg !2227
  %30 = load double, double* %6, align 8, !dbg !2228
  %31 = load double, double* %6, align 8, !dbg !2229
  %32 = fmul double %30, %31, !dbg !2230
  call void @fMulHandler(double %30, double %31, double %32, i64 94256792902920, i64 94256792903272, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94256792903680, i32 578, i32 29), !dbg !2231
  %33 = fsub double 1.000000e+00, %32, !dbg !2231
  call void @fSubHandler(double 1.000000e+00, double %32, double %33, i64 0, i64 94256792903680, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94256792904128, i32 578, i32 26), !dbg !2227
  store double %33, double* %12, align 8, !dbg !2227
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2232, metadata !75), !dbg !2233
  %34 = load double, double* %12, align 8, !dbg !2234
  %35 = load i32, i32* %8, align 4, !dbg !2235
  %36 = call i32 @gsl_sf_ellint_RF_e(double 0.000000e+00, double %34, double 1.000000e+00, i32 %35, %struct.gsl_sf_result_struct* %10), !dbg !2236
  store i32 %36, i32* %13, align 4, !dbg !2233
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2237, metadata !75), !dbg !2238
  %37 = load double, double* %12, align 8, !dbg !2239
  %38 = load double, double* %7, align 8, !dbg !2240
  %39 = fadd double 1.000000e+00, %38, !dbg !2241
  call void @fAddHandler(double 1.000000e+00, double %38, double %39, i64 0, i64 94256792911784, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94256792912224, i32 580, i32 62), !dbg !2242
  %40 = load i32, i32* %8, align 4, !dbg !2242
  %41 = call i32 @gsl_sf_ellint_RJ_e(double 0.000000e+00, double %37, double 1.000000e+00, double %39, i32 %40, %struct.gsl_sf_result_struct* %11), !dbg !2243
  store i32 %41, i32* %14, align 4, !dbg !2238
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2244
  %43 = load double, double* %42, align 8, !dbg !2244
  %44 = load double, double* %7, align 8, !dbg !2245
  %45 = fdiv double %44, 3.000000e+00, !dbg !2246
  call void @fDivHandler(double %44, double 3.000000e+00, double %45, i64 94256792917368, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94256792917808, i32 581, i32 30), !dbg !2247
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !2247
  %47 = load double, double* %46, align 8, !dbg !2247
  %48 = fmul double %45, %47, !dbg !2248
  call void @fMulHandler(double %45, double %47, double %48, i64 94256792917808, i64 94256792918616, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94256792920288, i32 581, i32 36), !dbg !2249
  %49 = fsub double %43, %48, !dbg !2249
  call void @fSubHandler(double %43, double %48, double %49, i64 94256792915720, i64 94256792920288, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94256792920704, i32 581, i32 26), !dbg !2250
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2250
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !2251
  store double %49, double* %51, align 8, !dbg !2252
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !2253
  %53 = load double, double* %52, align 8, !dbg !2253
  %54 = load double, double* %7, align 8, !dbg !2254
  %55 = fdiv double %54, 3.000000e+00, !dbg !2255
  call void @fDivHandler(double %54, double 3.000000e+00, double %55, i64 94256792924440, i64 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94256792924880, i32 582, i32 34), !dbg !2256
  %56 = call double @fabs(double %55) #1, !dbg !2256
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !2257
  %58 = load double, double* %57, align 8, !dbg !2257
  %59 = fmul double %56, %58, !dbg !2258
  call void @fMulHandler(double %56, double %58, double %59, i64 94256792925328, i64 94256792926232, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94256792927904, i32 582, i32 40), !dbg !2259
  %60 = fadd double %53, %59, !dbg !2259
  call void @fAddHandler(double %53, double %59, double %60, i64 94256792922792, i64 94256792927904, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94256792928320, i32 582, i32 26), !dbg !2260
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2260
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !2261
  store double %60, double* %62, align 8, !dbg !2262
  %63 = load i32, i32* %13, align 4, !dbg !2263
  %64 = icmp ne i32 %63, 0, !dbg !2263
  %65 = sext i32 %63 to i64, !dbg !2263
  %66 = call i1 @iCmpInstHandler(i64 %65, i64 0, i1 %64, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94256792930368, i32 583, i32 12), !dbg !2263
  br i1 %66, label %67, label %69, !dbg !2263

; <label>:67:                                     ; preds = %29
  %68 = load i32, i32* %13, align 4, !dbg !2264
  br label %79, !dbg !2264

; <label>:69:                                     ; preds = %29
  %70 = load i32, i32* %14, align 4, !dbg !2266
  %71 = icmp ne i32 %70, 0, !dbg !2266
  %72 = sext i32 %70 to i64, !dbg !2266
  %73 = call i1 @iCmpInstHandler(i64 %72, i64 0, i1 %71, i32 33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i64 94256792934912, i32 583, i32 12), !dbg !2266
  br i1 %73, label %74, label %76, !dbg !2266

; <label>:74:                                     ; preds = %69
  %75 = load i32, i32* %14, align 4, !dbg !2268
  br label %77, !dbg !2268

; <label>:76:                                     ; preds = %69
  br label %77, !dbg !2270

; <label>:77:                                     ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ], !dbg !2272
  br label %79, !dbg !2272

; <label>:79:                                     ; preds = %77, %67
  %80 = phi i32 [ %68, %67 ], [ %78, %77 ], !dbg !2274
  store i32 %80, i32* %5, align 4, !dbg !2276
  br label %81, !dbg !2276

; <label>:81:                                     ; preds = %79, %28, %26
  %82 = load i32, i32* %5, align 4, !dbg !2277
  ret i32 %82, !dbg !2277
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_ellint_D_e(double, double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !2278 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2279, metadata !75), !dbg !2280
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2281, metadata !75), !dbg !2282
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2283, metadata !75), !dbg !2284
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !2285, metadata !75), !dbg !2286
  call void @llvm.dbg.declare(metadata double* %10, metadata !2287, metadata !75), !dbg !2288
  %21 = load double, double* %6, align 8, !dbg !2289
  %22 = fdiv double %21, 0x400921FB54442D18, !dbg !2290
  call void @fDivHandler(double %21, double 0x400921FB54442D18, double %22, i64 94256792954696, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792955072, i32 457, i32 24), !dbg !2291
  %23 = fadd double %22, 5.000000e-01, !dbg !2291
  call void @fAddHandler(double %22, double 5.000000e-01, double %23, i64 94256792955072, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792955520, i32 457, i32 30), !dbg !2292
  %24 = call double @floor(double %23) #1, !dbg !2292
  store double %24, double* %10, align 8, !dbg !2288
  call void @llvm.dbg.declare(metadata double* %11, metadata !2293, metadata !75), !dbg !2294
  %25 = load double, double* %6, align 8, !dbg !2295
  %26 = load double, double* %10, align 8, !dbg !2296
  %27 = fmul double %26, 0x400921FB54442D18, !dbg !2297
  call void @fMulHandler(double %26, double 0x400921FB54442D18, double %27, i64 94256792959576, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792959984, i32 458, i32 29), !dbg !2298
  %28 = fsub double %25, %27, !dbg !2298
  call void @fSubHandler(double %25, double %27, double %28, i64 94256792959224, i64 94256792959984, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792960400, i32 458, i32 24), !dbg !2294
  store double %28, double* %11, align 8, !dbg !2294
  %29 = load double, double* %11, align 8, !dbg !2299
  store double %29, double* %6, align 8, !dbg !2300
  call void @llvm.dbg.declare(metadata double* %12, metadata !2301, metadata !75), !dbg !2303
  %30 = load double, double* %6, align 8, !dbg !2304
  %31 = call double @sin(double %30) #6, !dbg !2305
  call void @callOneArgHandler(i32 1, double %30, double %31, i64 94256792964392, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792964832, i32 463, i32 29), !dbg !2303
  store double %31, double* %12, align 8, !dbg !2303
  call void @llvm.dbg.declare(metadata double* %13, metadata !2306, metadata !75), !dbg !2307
  %32 = load double, double* %12, align 8, !dbg !2308
  %33 = load double, double* %12, align 8, !dbg !2309
  %34 = fmul double %32, %33, !dbg !2310
  call void @fMulHandler(double %32, double %33, double %34, i64 94256792968088, i64 94256792968440, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792968848, i32 464, i32 38), !dbg !2307
  store double %34, double* %13, align 8, !dbg !2307
  call void @llvm.dbg.declare(metadata double* %14, metadata !2311, metadata !75), !dbg !2312
  %35 = load double, double* %13, align 8, !dbg !2313
  %36 = load double, double* %12, align 8, !dbg !2314
  %37 = fmul double %35, %36, !dbg !2315
  call void @fMulHandler(double %35, double %36, double %37, i64 94256792972040, i64 94256792972392, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792972800, i32 465, i32 38), !dbg !2312
  store double %37, double* %14, align 8, !dbg !2312
  call void @llvm.dbg.declare(metadata double* %15, metadata !2316, metadata !75), !dbg !2317
  %38 = load double, double* %13, align 8, !dbg !2318
  %39 = fsub double 1.000000e+00, %38, !dbg !2319
  call void @fSubHandler(double 1.000000e+00, double %38, double %39, i64 0, i64 94256792975992, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792976400, i32 466, i32 26), !dbg !2317
  store double %39, double* %15, align 8, !dbg !2317
  call void @llvm.dbg.declare(metadata double* %16, metadata !2320, metadata !75), !dbg !2321
  %40 = load double, double* %7, align 8, !dbg !2322
  %41 = load double, double* %7, align 8, !dbg !2323
  %42 = fmul double %40, %41, !dbg !2324
  call void @fMulHandler(double %40, double %41, double %42, i64 94256792979560, i64 94256792979912, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792980320, i32 467, i32 29), !dbg !2325
  %43 = load double, double* %13, align 8, !dbg !2325
  %44 = fmul double %42, %43, !dbg !2326
  call void @fMulHandler(double %42, double %43, double %44, i64 94256792980320, i64 94256792980712, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792981120, i32 467, i32 31), !dbg !2327
  %45 = fsub double 1.000000e+00, %44, !dbg !2327
  call void @fSubHandler(double 1.000000e+00, double %44, double %45, i64 0, i64 94256792981120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792981568, i32 467, i32 26), !dbg !2321
  store double %45, double* %16, align 8, !dbg !2321
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !2328, metadata !75), !dbg !2329
  call void @llvm.dbg.declare(metadata i32* %18, metadata !2330, metadata !75), !dbg !2331
  %46 = load double, double* %15, align 8, !dbg !2332
  %47 = load double, double* %16, align 8, !dbg !2333
  %48 = load i32, i32* %8, align 4, !dbg !2334
  %49 = call i32 @gsl_sf_ellint_RD_e(double %46, double %47, double 1.000000e+00, i32 %48, %struct.gsl_sf_result_struct* %17), !dbg !2335
  store i32 %49, i32* %18, align 4, !dbg !2331
  %50 = load double, double* %14, align 8, !dbg !2336
  %51 = fdiv double %50, 3.000000e+00, !dbg !2337
  call void @fDivHandler(double %50, double 3.000000e+00, double %51, i64 94256792989256, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792989664, i32 470, i32 27), !dbg !2338
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !2338
  %53 = load double, double* %52, align 8, !dbg !2338
  %54 = fmul double %51, %53, !dbg !2339
  call void @fMulHandler(double %51, double %53, double %54, i64 94256792989664, i64 94256792990472, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792992144, i32 470, i32 32), !dbg !2340
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2340
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !2341
  store double %54, double* %56, align 8, !dbg !2342
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2343
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 0, !dbg !2344
  %59 = load double, double* %58, align 8, !dbg !2344
  %60 = call double @fabs(double %59) #1, !dbg !2345
  %61 = fmul double 0x3CB0000000000000, %60, !dbg !2346
  call void @fMulHandler(double 0x3CB0000000000000, double %60, double %61, i64 0, i64 94256792996352, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792996832, i32 471, i32 35), !dbg !2347
  %62 = load double, double* %14, align 8, !dbg !2347
  %63 = fdiv double %62, 3.000000e+00, !dbg !2348
  call void @fDivHandler(double %62, double 3.000000e+00, double %63, i64 94256792997224, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256792997664, i32 471, i32 70), !dbg !2349
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !2349
  %65 = load double, double* %64, align 8, !dbg !2349
  %66 = fmul double %63, %65, !dbg !2350
  call void @fMulHandler(double %63, double %65, double %66, i64 94256792997664, i64 94256792998472, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256793000144, i32 471, i32 75), !dbg !2351
  %67 = call double @fabs(double %66) #1, !dbg !2351
  %68 = fadd double %61, %67, !dbg !2353
  call void @fAddHandler(double %61, double %67, double %68, i64 94256792996832, i64 94256793000624, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256793001104, i32 471, i32 55), !dbg !2354
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2354
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !2355
  store double %68, double* %70, align 8, !dbg !2356
  %71 = load double, double* %10, align 8, !dbg !2357
  %72 = fcmp oeq double %71, 0.000000e+00, !dbg !2359
  %73 = call i1 @fCmpInstHandler(double %71, double 0.000000e+00, i1 %72, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256793003152, i32 472, i32 12), !dbg !2360
  br i1 %73, label %74, label %76, !dbg !2360

; <label>:74:                                     ; preds = %4
  %75 = load i32, i32* %18, align 4, !dbg !2361
  store i32 %75, i32* %5, align 4, !dbg !2363
  br label %117, !dbg !2363

; <label>:76:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !2364, metadata !75), !dbg !2366
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2367, metadata !75), !dbg !2368
  %77 = load double, double* %7, align 8, !dbg !2369
  %78 = load i32, i32* %8, align 4, !dbg !2370
  %79 = call i32 @gsl_sf_ellint_Dcomp_e(double %77, i32 %78, %struct.gsl_sf_result_struct* %19), !dbg !2371
  store i32 %79, i32* %20, align 4, !dbg !2368
  %80 = load double, double* %10, align 8, !dbg !2372
  %81 = fmul double 2.000000e+00, %80, !dbg !2373
  call void @fMulHandler(double 2.000000e+00, double %80, double %81, i64 0, i64 94256793012264, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256793012704, i32 477, i32 23), !dbg !2374
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !2374
  %83 = load double, double* %82, align 8, !dbg !2374
  %84 = fmul double %81, %83, !dbg !2375
  call void @fMulHandler(double %81, double %83, double %84, i64 94256793012704, i64 94256793013512, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256793015184, i32 477, i32 26), !dbg !2376
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2376
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !2377
  %87 = load double, double* %86, align 8, !dbg !2378
  %88 = fadd double %87, %84, !dbg !2378
  call void @fAddHandler(double %87, double %84, double %88, i64 94256793016408, i64 94256793015184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256793016816, i32 477, i32 19), !dbg !2378
  store double %88, double* %86, align 8, !dbg !2378
  %89 = load double, double* %10, align 8, !dbg !2379
  %90 = call double @fabs(double %89) #1, !dbg !2380
  %91 = fmul double 2.000000e+00, %90, !dbg !2381
  call void @fMulHandler(double 2.000000e+00, double %90, double %91, i64 0, i64 94256793019072, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256793019584, i32 478, i32 23), !dbg !2382
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !2382
  %93 = load double, double* %92, align 8, !dbg !2382
  %94 = fmul double %91, %93, !dbg !2383
  call void @fMulHandler(double %91, double %93, double %94, i64 94256793019584, i64 94256793020392, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256793022064, i32 478, i32 32), !dbg !2384
  %95 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2384
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %95, i32 0, i32 1, !dbg !2385
  %97 = load double, double* %96, align 8, !dbg !2386
  %98 = fadd double %97, %94, !dbg !2386
  call void @fAddHandler(double %97, double %94, double %98, i64 94256793023288, i64 94256793022064, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256793023696, i32 478, i32 19), !dbg !2386
  store double %98, double* %96, align 8, !dbg !2386
  %99 = load i32, i32* %18, align 4, !dbg !2387
  %100 = icmp ne i32 %99, 0, !dbg !2387
  %101 = sext i32 %99 to i64, !dbg !2387
  %102 = call i1 @iCmpInstHandler(i64 %101, i64 0, i1 %100, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256793025888, i32 479, i32 14), !dbg !2387
  br i1 %102, label %103, label %105, !dbg !2387

; <label>:103:                                    ; preds = %76
  %104 = load i32, i32* %18, align 4, !dbg !2388
  br label %115, !dbg !2388

; <label>:105:                                    ; preds = %76
  %106 = load i32, i32* %20, align 4, !dbg !2390
  %107 = icmp ne i32 %106, 0, !dbg !2390
  %108 = sext i32 %106 to i64, !dbg !2390
  %109 = call i1 @iCmpInstHandler(i64 %108, i64 0, i1 %107, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @25, i32 0, i32 0), i64 94256793030432, i32 479, i32 14), !dbg !2390
  br i1 %109, label %110, label %112, !dbg !2390

; <label>:110:                                    ; preds = %105
  %111 = load i32, i32* %20, align 4, !dbg !2392
  br label %113, !dbg !2392

; <label>:112:                                    ; preds = %105
  br label %113, !dbg !2394

; <label>:113:                                    ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ], !dbg !2396
  br label %115, !dbg !2396

; <label>:115:                                    ; preds = %113, %103
  %116 = phi i32 [ %104, %103 ], [ %114, %113 ], !dbg !2398
  store i32 %116, i32* %5, align 4, !dbg !2400
  br label %117, !dbg !2400

; <label>:117:                                    ; preds = %115, %74
  %118 = load i32, i32* %5, align 4, !dbg !2401
  ret i32 %118, !dbg !2401
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_ellint_Dcomp_e(double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !2402 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2403, metadata !75), !dbg !2404
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2405, metadata !75), !dbg !2406
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !2407, metadata !75), !dbg !2408
  %11 = load double, double* %5, align 8, !dbg !2409
  %12 = load double, double* %5, align 8, !dbg !2411
  %13 = fmul double %11, %12, !dbg !2412
  call void @fMulHandler(double %11, double %12, double %13, i64 94256793009960, i64 94256793046984, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @27, i32 0, i32 0), i64 94256793047392, i32 487, i32 7), !dbg !2413
  %14 = fcmp oge double %13, 1.000000e+00, !dbg !2413
  %15 = call i1 @fCmpInstHandler(double %13, double 1.000000e+00, i1 %14, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @27, i32 0, i32 0), i64 94256793047840, i32 487, i32 10), !dbg !2414
  br i1 %15, label %16, label %25, !dbg !2414

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !2415, !llvm.loop !2417

; <label>:17:                                     ; preds = %16
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2418
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !2418
  store double 0x7FF8000000000000, double* %19, align 8, !dbg !2418
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2418
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !2418
  store double 0x7FF8000000000000, double* %21, align 8, !dbg !2418
  br label %22, !dbg !2418, !llvm.loop !2421

; <label>:22:                                     ; preds = %17
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 488, i32 1), !dbg !2423
  store i32 1, i32* %4, align 4, !dbg !2423
  br label %51, !dbg !2423
                                                  ; No predecessors!
  br label %24, !dbg !2426

; <label>:24:                                     ; preds = %23
  br label %51, !dbg !2428

; <label>:25:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !2429, metadata !75), !dbg !2431
  %26 = load double, double* %5, align 8, !dbg !2432
  %27 = load double, double* %5, align 8, !dbg !2433
  %28 = fmul double %26, %27, !dbg !2434
  call void @fMulHandler(double %26, double %27, double %28, i64 94256793057080, i64 94256793057432, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @27, i32 0, i32 0), i64 94256793057840, i32 490, i32 29), !dbg !2435
  %29 = fsub double 1.000000e+00, %28, !dbg !2435
  call void @fSubHandler(double 1.000000e+00, double %28, double %29, i64 0, i64 94256793057840, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @27, i32 0, i32 0), i64 94256793058288, i32 490, i32 26), !dbg !2431
  store double %29, double* %8, align 8, !dbg !2431
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !2436, metadata !75), !dbg !2437
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2438, metadata !75), !dbg !2439
  %30 = load double, double* %8, align 8, !dbg !2440
  %31 = load i32, i32* %6, align 4, !dbg !2441
  %32 = call i32 @gsl_sf_ellint_RD_e(double 0.000000e+00, double %30, double 1.000000e+00, i32 %31, %struct.gsl_sf_result_struct* %9), !dbg !2442
  store i32 %32, i32* %10, align 4, !dbg !2439
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !2443
  %34 = load double, double* %33, align 8, !dbg !2443
  %35 = fmul double 0x3FD5555555555555, %34, !dbg !2444
  call void @fMulHandler(double 0x3FD5555555555555, double %34, double %35, i64 0, i64 94256793066008, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @27, i32 0, i32 0), i64 94256793067680, i32 493, i32 29), !dbg !2445
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2445
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !2446
  store double %35, double* %37, align 8, !dbg !2447
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2448
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !2449
  %40 = load double, double* %39, align 8, !dbg !2449
  %41 = call double @fabs(double %40) #1, !dbg !2450
  %42 = fmul double 0x3CB0000000000000, %41, !dbg !2451
  call void @fMulHandler(double 0x3CB0000000000000, double %41, double %42, i64 0, i64 94256793071888, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @27, i32 0, i32 0), i64 94256793072368, i32 494, i32 35), !dbg !2452
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !2452
  %44 = load double, double* %43, align 8, !dbg !2452
  %45 = fmul double 0x3FD5555555555555, %44, !dbg !2453
  call void @fMulHandler(double 0x3FD5555555555555, double %44, double %45, i64 0, i64 94256793073208, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @27, i32 0, i32 0), i64 94256793074880, i32 494, i32 70), !dbg !2454
  %46 = call double @fabs(double %45) #1, !dbg !2454
  %47 = fadd double %42, %46, !dbg !2456
  call void @fAddHandler(double %42, double %46, double %47, i64 94256793072368, i64 94256793075360, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @27, i32 0, i32 0), i64 94256793075840, i32 494, i32 55), !dbg !2457
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2457
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !2458
  store double %47, double* %49, align 8, !dbg !2459
  %50 = load i32, i32* %10, align 4, !dbg !2460
  store i32 %50, i32* %4, align 4, !dbg !2461
  br label %51, !dbg !2461

; <label>:51:                                     ; preds = %25, %24, %22
  %52 = load i32, i32* %4, align 4, !dbg !2462
  ret i32 %52, !dbg !2462
}

; Function Attrs: nounwind
declare double @log(double) #4

; Function Attrs: nounwind uwtable
define double @gsl_sf_ellint_Kcomp(double, i32) #0 !dbg !2463 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2466, metadata !75), !dbg !2467
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2468, metadata !75), !dbg !2469
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !2470, metadata !75), !dbg !2471
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2472, metadata !75), !dbg !2471
  %8 = load double, double* %4, align 8, !dbg !2471
  %9 = load i32, i32* %5, align 4, !dbg !2471
  %10 = call i32 @gsl_sf_ellint_Kcomp_e(double %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !2471
  store i32 %10, i32* %7, align 4, !dbg !2471
  %11 = load i32, i32* %7, align 4, !dbg !2473
  %12 = icmp ne i32 %11, 0, !dbg !2473
  %13 = sext i32 %11 to i64, !dbg !2471
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @29, i32 0, i32 0), i64 94256793090464, i32 595, i32 3), !dbg !2471
  br i1 %14, label %15, label %21, !dbg !2471

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !2475, !llvm.loop !2478

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !2480
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 595, i32 %17), !dbg !2480
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2480
  %19 = load double, double* %18, align 8, !dbg !2480
  store double %19, double* %3, align 8, !dbg !2480
  br label %24, !dbg !2480
                                                  ; No predecessors!
  br label %21, !dbg !2483

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2485
  %23 = load double, double* %22, align 8, !dbg !2485
  store double %23, double* %3, align 8, !dbg !2485
  br label %24, !dbg !2485

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !2487
  ret double %25, !dbg !2487
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_ellint_Ecomp(double, i32) #0 !dbg !2488 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2489, metadata !75), !dbg !2490
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2491, metadata !75), !dbg !2492
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !2493, metadata !75), !dbg !2494
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2495, metadata !75), !dbg !2494
  %8 = load double, double* %4, align 8, !dbg !2494
  %9 = load i32, i32* %5, align 4, !dbg !2494
  %10 = call i32 @gsl_sf_ellint_Ecomp_e(double %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !2494
  store i32 %10, i32* %7, align 4, !dbg !2494
  %11 = load i32, i32* %7, align 4, !dbg !2496
  %12 = icmp ne i32 %11, 0, !dbg !2496
  %13 = sext i32 %11 to i64, !dbg !2494
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @31, i32 0, i32 0), i64 94256793109280, i32 600, i32 3), !dbg !2494
  br i1 %14, label %15, label %21, !dbg !2494

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !2498, !llvm.loop !2501

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !2503
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 600, i32 %17), !dbg !2503
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2503
  %19 = load double, double* %18, align 8, !dbg !2503
  store double %19, double* %3, align 8, !dbg !2503
  br label %24, !dbg !2503
                                                  ; No predecessors!
  br label %21, !dbg !2506

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2508
  %23 = load double, double* %22, align 8, !dbg !2508
  store double %23, double* %3, align 8, !dbg !2508
  br label %24, !dbg !2508

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !2510
  ret double %25, !dbg !2510
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_ellint_Pcomp(double, double, i32) #0 !dbg !2511 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2514, metadata !75), !dbg !2515
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2516, metadata !75), !dbg !2517
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2518, metadata !75), !dbg !2519
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !2520, metadata !75), !dbg !2521
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2522, metadata !75), !dbg !2521
  %10 = load double, double* %5, align 8, !dbg !2521
  %11 = load double, double* %6, align 8, !dbg !2521
  %12 = load i32, i32* %7, align 4, !dbg !2521
  %13 = call i32 @gsl_sf_ellint_Pcomp_e(double %10, double %11, i32 %12, %struct.gsl_sf_result_struct* %8), !dbg !2521
  store i32 %13, i32* %9, align 4, !dbg !2521
  %14 = load i32, i32* %9, align 4, !dbg !2523
  %15 = icmp ne i32 %14, 0, !dbg !2523
  %16 = sext i32 %14 to i64, !dbg !2521
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @33, i32 0, i32 0), i64 94256793129600, i32 605, i32 3), !dbg !2521
  br i1 %17, label %18, label %24, !dbg !2521

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !2525, !llvm.loop !2528

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !2530
  call void @gsl_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 605, i32 %20), !dbg !2530
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2530
  %22 = load double, double* %21, align 8, !dbg !2530
  store double %22, double* %4, align 8, !dbg !2530
  br label %27, !dbg !2530
                                                  ; No predecessors!
  br label %24, !dbg !2533

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2535
  %26 = load double, double* %25, align 8, !dbg !2535
  store double %26, double* %4, align 8, !dbg !2535
  br label %27, !dbg !2535

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !2537
  ret double %28, !dbg !2537
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_ellint_Dcomp(double, i32) #0 !dbg !2538 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !2539, metadata !75), !dbg !2540
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2541, metadata !75), !dbg !2542
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !2543, metadata !75), !dbg !2544
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2545, metadata !75), !dbg !2544
  %8 = load double, double* %4, align 8, !dbg !2544
  %9 = load i32, i32* %5, align 4, !dbg !2544
  %10 = call i32 @gsl_sf_ellint_Dcomp_e(double %8, i32 %9, %struct.gsl_sf_result_struct* %6), !dbg !2544
  store i32 %10, i32* %7, align 4, !dbg !2544
  %11 = load i32, i32* %7, align 4, !dbg !2546
  %12 = icmp ne i32 %11, 0, !dbg !2546
  %13 = sext i32 %11 to i64, !dbg !2544
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @35, i32 0, i32 0), i64 94256793148416, i32 610, i32 3), !dbg !2544
  br i1 %14, label %15, label %21, !dbg !2544

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !2548, !llvm.loop !2551

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !2553
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 610, i32 %17), !dbg !2553
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2553
  %19 = load double, double* %18, align 8, !dbg !2553
  store double %19, double* %3, align 8, !dbg !2553
  br label %24, !dbg !2553
                                                  ; No predecessors!
  br label %21, !dbg !2556

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2558
  %23 = load double, double* %22, align 8, !dbg !2558
  store double %23, double* %3, align 8, !dbg !2558
  br label %24, !dbg !2558

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !2560
  ret double %25, !dbg !2560
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_ellint_F(double, double, i32) #0 !dbg !2561 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2562, metadata !75), !dbg !2563
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2564, metadata !75), !dbg !2565
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2566, metadata !75), !dbg !2567
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !2568, metadata !75), !dbg !2569
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2570, metadata !75), !dbg !2569
  %10 = load double, double* %5, align 8, !dbg !2569
  %11 = load double, double* %6, align 8, !dbg !2569
  %12 = load i32, i32* %7, align 4, !dbg !2569
  %13 = call i32 @gsl_sf_ellint_F_e(double %10, double %11, i32 %12, %struct.gsl_sf_result_struct* %8), !dbg !2569
  store i32 %13, i32* %9, align 4, !dbg !2569
  %14 = load i32, i32* %9, align 4, !dbg !2571
  %15 = icmp ne i32 %14, 0, !dbg !2571
  %16 = sext i32 %14 to i64, !dbg !2569
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @37, i32 0, i32 0), i64 94256793170800, i32 615, i32 3), !dbg !2569
  br i1 %17, label %18, label %24, !dbg !2569

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !2573, !llvm.loop !2576

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !2578
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 615, i32 %20), !dbg !2578
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2578
  %22 = load double, double* %21, align 8, !dbg !2578
  store double %22, double* %4, align 8, !dbg !2578
  br label %27, !dbg !2578
                                                  ; No predecessors!
  br label %24, !dbg !2581

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2583
  %26 = load double, double* %25, align 8, !dbg !2583
  store double %26, double* %4, align 8, !dbg !2583
  br label %27, !dbg !2583

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !2585
  ret double %28, !dbg !2585
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_ellint_E(double, double, i32) #0 !dbg !2586 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2587, metadata !75), !dbg !2588
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2589, metadata !75), !dbg !2590
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2591, metadata !75), !dbg !2592
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !2593, metadata !75), !dbg !2594
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2595, metadata !75), !dbg !2594
  %10 = load double, double* %5, align 8, !dbg !2594
  %11 = load double, double* %6, align 8, !dbg !2594
  %12 = load i32, i32* %7, align 4, !dbg !2594
  %13 = call i32 @gsl_sf_ellint_E_e(double %10, double %11, i32 %12, %struct.gsl_sf_result_struct* %8), !dbg !2594
  store i32 %13, i32* %9, align 4, !dbg !2594
  %14 = load i32, i32* %9, align 4, !dbg !2596
  %15 = icmp ne i32 %14, 0, !dbg !2596
  %16 = sext i32 %14 to i64, !dbg !2594
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @39, i32 0, i32 0), i64 94256793192688, i32 620, i32 3), !dbg !2594
  br i1 %17, label %18, label %24, !dbg !2594

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !2598, !llvm.loop !2601

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !2603
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 620, i32 %20), !dbg !2603
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2603
  %22 = load double, double* %21, align 8, !dbg !2603
  store double %22, double* %4, align 8, !dbg !2603
  br label %27, !dbg !2603
                                                  ; No predecessors!
  br label %24, !dbg !2606

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2608
  %26 = load double, double* %25, align 8, !dbg !2608
  store double %26, double* %4, align 8, !dbg !2608
  br label %27, !dbg !2608

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !2610
  ret double %28, !dbg !2610
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_ellint_P(double, double, double, i32) #0 !dbg !2611 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2614, metadata !75), !dbg !2615
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2616, metadata !75), !dbg !2617
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2618, metadata !75), !dbg !2619
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2620, metadata !75), !dbg !2621
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !2622, metadata !75), !dbg !2623
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2624, metadata !75), !dbg !2623
  %12 = load double, double* %6, align 8, !dbg !2623
  %13 = load double, double* %7, align 8, !dbg !2623
  %14 = load double, double* %8, align 8, !dbg !2623
  %15 = load i32, i32* %9, align 4, !dbg !2623
  %16 = call i32 @gsl_sf_ellint_P_e(double %12, double %13, double %14, i32 %15, %struct.gsl_sf_result_struct* %10), !dbg !2623
  store i32 %16, i32* %11, align 4, !dbg !2623
  %17 = load i32, i32* %11, align 4, !dbg !2625
  %18 = icmp ne i32 %17, 0, !dbg !2625
  %19 = sext i32 %17 to i64, !dbg !2623
  %20 = call i1 @iCmpInstHandler(i64 %19, i64 0, i1 %18, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @41, i32 0, i32 0), i64 94256793214528, i32 625, i32 3), !dbg !2623
  br i1 %20, label %21, label %27, !dbg !2623

; <label>:21:                                     ; preds = %4
  br label %22, !dbg !2627, !llvm.loop !2630

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %11, align 4, !dbg !2632
  call void @gsl_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 625, i32 %23), !dbg !2632
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2632
  %25 = load double, double* %24, align 8, !dbg !2632
  store double %25, double* %5, align 8, !dbg !2632
  br label %30, !dbg !2632
                                                  ; No predecessors!
  br label %27, !dbg !2635

; <label>:27:                                     ; preds = %26, %4
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2637
  %29 = load double, double* %28, align 8, !dbg !2637
  store double %29, double* %5, align 8, !dbg !2637
  br label %30, !dbg !2637

; <label>:30:                                     ; preds = %27, %22
  %31 = load double, double* %5, align 8, !dbg !2639
  ret double %31, !dbg !2639
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_ellint_D(double, double, i32) #0 !dbg !2640 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2641, metadata !75), !dbg !2642
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2643, metadata !75), !dbg !2644
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2645, metadata !75), !dbg !2646
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !2647, metadata !75), !dbg !2648
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2649, metadata !75), !dbg !2648
  %10 = load double, double* %5, align 8, !dbg !2648
  %11 = load double, double* %6, align 8, !dbg !2648
  %12 = load i32, i32* %7, align 4, !dbg !2648
  %13 = call i32 @gsl_sf_ellint_D_e(double %10, double %11, i32 %12, %struct.gsl_sf_result_struct* %8), !dbg !2648
  store i32 %13, i32* %9, align 4, !dbg !2648
  %14 = load i32, i32* %9, align 4, !dbg !2650
  %15 = icmp ne i32 %14, 0, !dbg !2650
  %16 = sext i32 %14 to i64, !dbg !2648
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @43, i32 0, i32 0), i64 94256793234848, i32 630, i32 3), !dbg !2648
  br i1 %17, label %18, label %24, !dbg !2648

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !2652, !llvm.loop !2655

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !2657
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 630, i32 %20), !dbg !2657
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2657
  %22 = load double, double* %21, align 8, !dbg !2657
  store double %22, double* %4, align 8, !dbg !2657
  br label %27, !dbg !2657
                                                  ; No predecessors!
  br label %24, !dbg !2660

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2662
  %26 = load double, double* %25, align 8, !dbg !2662
  store double %26, double* %4, align 8, !dbg !2662
  br label %27, !dbg !2662

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !2664
  ret double %28, !dbg !2664
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_ellint_RC(double, double, i32) #0 !dbg !2665 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !2666, metadata !75), !dbg !2667
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2668, metadata !75), !dbg !2669
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2670, metadata !75), !dbg !2671
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !2672, metadata !75), !dbg !2673
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2674, metadata !75), !dbg !2673
  %10 = load double, double* %5, align 8, !dbg !2673
  %11 = load double, double* %6, align 8, !dbg !2673
  %12 = load i32, i32* %7, align 4, !dbg !2673
  %13 = call i32 @gsl_sf_ellint_RC_e(double %10, double %11, i32 %12, %struct.gsl_sf_result_struct* %8), !dbg !2673
  store i32 %13, i32* %9, align 4, !dbg !2673
  %14 = load i32, i32* %9, align 4, !dbg !2675
  %15 = icmp ne i32 %14, 0, !dbg !2675
  %16 = sext i32 %14 to i64, !dbg !2673
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @45, i32 0, i32 0), i64 94256793259264, i32 635, i32 3), !dbg !2673
  br i1 %17, label %18, label %24, !dbg !2673

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !2677, !llvm.loop !2680

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !2682
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 635, i32 %20), !dbg !2682
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2682
  %22 = load double, double* %21, align 8, !dbg !2682
  store double %22, double* %4, align 8, !dbg !2682
  br label %27, !dbg !2682
                                                  ; No predecessors!
  br label %24, !dbg !2685

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2687
  %26 = load double, double* %25, align 8, !dbg !2687
  store double %26, double* %4, align 8, !dbg !2687
  br label %27, !dbg !2687

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !2689
  ret double %28, !dbg !2689
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_ellint_RD(double, double, double, i32) #0 !dbg !2690 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2691, metadata !75), !dbg !2692
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2693, metadata !75), !dbg !2694
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2695, metadata !75), !dbg !2696
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2697, metadata !75), !dbg !2698
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !2699, metadata !75), !dbg !2700
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2701, metadata !75), !dbg !2700
  %12 = load double, double* %6, align 8, !dbg !2700
  %13 = load double, double* %7, align 8, !dbg !2700
  %14 = load double, double* %8, align 8, !dbg !2700
  %15 = load i32, i32* %9, align 4, !dbg !2700
  %16 = call i32 @gsl_sf_ellint_RD_e(double %12, double %13, double %14, i32 %15, %struct.gsl_sf_result_struct* %10), !dbg !2700
  store i32 %16, i32* %11, align 4, !dbg !2700
  %17 = load i32, i32* %11, align 4, !dbg !2702
  %18 = icmp ne i32 %17, 0, !dbg !2702
  %19 = sext i32 %17 to i64, !dbg !2700
  %20 = call i1 @iCmpInstHandler(i64 %19, i64 0, i1 %18, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @47, i32 0, i32 0), i64 94256793281104, i32 640, i32 3), !dbg !2700
  br i1 %20, label %21, label %27, !dbg !2700

; <label>:21:                                     ; preds = %4
  br label %22, !dbg !2704, !llvm.loop !2707

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %11, align 4, !dbg !2709
  call void @gsl_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 640, i32 %23), !dbg !2709
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2709
  %25 = load double, double* %24, align 8, !dbg !2709
  store double %25, double* %5, align 8, !dbg !2709
  br label %30, !dbg !2709
                                                  ; No predecessors!
  br label %27, !dbg !2712

; <label>:27:                                     ; preds = %26, %4
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2714
  %29 = load double, double* %28, align 8, !dbg !2714
  store double %29, double* %5, align 8, !dbg !2714
  br label %30, !dbg !2714

; <label>:30:                                     ; preds = %27, %22
  %31 = load double, double* %5, align 8, !dbg !2716
  ret double %31, !dbg !2716
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_ellint_RF(double, double, double, i32) #0 !dbg !2717 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !2718, metadata !75), !dbg !2719
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2720, metadata !75), !dbg !2721
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2722, metadata !75), !dbg !2723
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2724, metadata !75), !dbg !2725
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !2726, metadata !75), !dbg !2727
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2728, metadata !75), !dbg !2727
  %12 = load double, double* %6, align 8, !dbg !2727
  %13 = load double, double* %7, align 8, !dbg !2727
  %14 = load double, double* %8, align 8, !dbg !2727
  %15 = load i32, i32* %9, align 4, !dbg !2727
  %16 = call i32 @gsl_sf_ellint_RF_e(double %12, double %13, double %14, i32 %15, %struct.gsl_sf_result_struct* %10), !dbg !2727
  store i32 %16, i32* %11, align 4, !dbg !2727
  %17 = load i32, i32* %11, align 4, !dbg !2729
  %18 = icmp ne i32 %17, 0, !dbg !2729
  %19 = sext i32 %17 to i64, !dbg !2727
  %20 = call i1 @iCmpInstHandler(i64 %19, i64 0, i1 %18, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @49, i32 0, i32 0), i64 94256793302944, i32 645, i32 3), !dbg !2727
  br i1 %20, label %21, label %27, !dbg !2727

; <label>:21:                                     ; preds = %4
  br label %22, !dbg !2731, !llvm.loop !2734

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %11, align 4, !dbg !2736
  call void @gsl_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 645, i32 %23), !dbg !2736
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2736
  %25 = load double, double* %24, align 8, !dbg !2736
  store double %25, double* %5, align 8, !dbg !2736
  br label %30, !dbg !2736
                                                  ; No predecessors!
  br label %27, !dbg !2739

; <label>:27:                                     ; preds = %26, %4
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2741
  %29 = load double, double* %28, align 8, !dbg !2741
  store double %29, double* %5, align 8, !dbg !2741
  br label %30, !dbg !2741

; <label>:30:                                     ; preds = %27, %22
  %31 = load double, double* %5, align 8, !dbg !2743
  ret double %31, !dbg !2743
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_ellint_RJ(double, double, double, double, i32) #0 !dbg !2744 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !2747, metadata !75), !dbg !2748
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2749, metadata !75), !dbg !2750
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !2751, metadata !75), !dbg !2752
  store double %3, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !2753, metadata !75), !dbg !2754
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2755, metadata !75), !dbg !2756
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !2757, metadata !75), !dbg !2758
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2759, metadata !75), !dbg !2758
  %14 = load double, double* %7, align 8, !dbg !2758
  %15 = load double, double* %8, align 8, !dbg !2758
  %16 = load double, double* %9, align 8, !dbg !2758
  %17 = load double, double* %10, align 8, !dbg !2758
  %18 = load i32, i32* %11, align 4, !dbg !2758
  %19 = call i32 @gsl_sf_ellint_RJ_e(double %14, double %15, double %16, double %17, i32 %18, %struct.gsl_sf_result_struct* %12), !dbg !2758
  store i32 %19, i32* %13, align 4, !dbg !2758
  %20 = load i32, i32* %13, align 4, !dbg !2760
  %21 = icmp ne i32 %20, 0, !dbg !2760
  %22 = sext i32 %20 to i64, !dbg !2758
  %23 = call i1 @iCmpInstHandler(i64 %22, i64 0, i1 %21, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @51, i32 0, i32 0), i64 94256793326288, i32 650, i32 3), !dbg !2758
  br i1 %23, label %24, label %30, !dbg !2758

; <label>:24:                                     ; preds = %5
  br label %25, !dbg !2762, !llvm.loop !2765

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %13, align 4, !dbg !2767
  call void @gsl_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 650, i32 %26), !dbg !2767
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !2767
  %28 = load double, double* %27, align 8, !dbg !2767
  store double %28, double* %6, align 8, !dbg !2767
  br label %33, !dbg !2767
                                                  ; No predecessors!
  br label %30, !dbg !2770

; <label>:30:                                     ; preds = %29, %5
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !2772
  %32 = load double, double* %31, align 8, !dbg !2772
  store double %32, double* %6, align 8, !dbg !2772
  br label %33, !dbg !2772

; <label>:33:                                     ; preds = %30, %25
  %34 = load double, double* %6, align 8, !dbg !2774
  ret double %34, !dbg !2774
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
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!67, !68, !69}
!llvm.ident = !{!70}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "ellint.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !63, !64, !66}
!42 = distinct !DIGlobalVariable(name: "a", scope: !43, file: !1, line: 510, type: !59, isLocal: true, isDefinition: true, variable: [3 x double]* @gsl_sf_ellint_Kcomp_e.a)
!43 = distinct !DISubprogram(name: "gsl_sf_ellint_Kcomp_e", scope: !1, file: !1, line: 502, type: !44, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !47, !48, !51}
!46 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!47 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !49, line: 50, baseType: !50)
!49 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/fpcc/gsl-2.5/specfunc")
!50 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !53, line: 41, baseType: !54)
!53 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !53, line: 37, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !53, line: 38, baseType: !47, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !54, file: !53, line: 39, baseType: !47, size: 64, align: 64, offset: 64)
!58 = !{}
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 192, align: 64, elements: !61)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!61 = !{!62}
!62 = !DISubrange(count: 3)
!63 = distinct !DIGlobalVariable(name: "b", scope: !43, file: !1, line: 511, type: !59, isLocal: true, isDefinition: true, variable: [3 x double]* @gsl_sf_ellint_Kcomp_e.b)
!64 = distinct !DIGlobalVariable(name: "a", scope: !65, file: !1, line: 547, type: !59, isLocal: true, isDefinition: true, variable: [3 x double]* @gsl_sf_ellint_Ecomp_e.a)
!65 = distinct !DISubprogram(name: "gsl_sf_ellint_Ecomp_e", scope: !1, file: !1, line: 539, type: !44, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!66 = distinct !DIGlobalVariable(name: "b", scope: !65, file: !1, line: 548, type: !59, isLocal: true, isDefinition: true, variable: [3 x double]* @gsl_sf_ellint_Ecomp_e.b)
!67 = !{i32 2, !"Dwarf Version", i32 4}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"PIC Level", i32 2}
!70 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!71 = distinct !DISubprogram(name: "gsl_sf_ellint_RC_e", scope: !1, file: !1, line: 74, type: !72, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!72 = !DISubroutineType(types: !73)
!73 = !{!46, !47, !47, !48, !51}
!74 = !DILocalVariable(name: "x", arg: 1, scope: !71, file: !1, line: 74, type: !47)
!75 = !DIExpression()
!76 = !DILocation(line: 74, column: 27, scope: !71)
!77 = !DILocalVariable(name: "y", arg: 2, scope: !71, file: !1, line: 74, type: !47)
!78 = !DILocation(line: 74, column: 37, scope: !71)
!79 = !DILocalVariable(name: "mode", arg: 3, scope: !71, file: !1, line: 74, type: !48)
!80 = !DILocation(line: 74, column: 51, scope: !71)
!81 = !DILocalVariable(name: "result", arg: 4, scope: !71, file: !1, line: 74, type: !51)
!82 = !DILocation(line: 74, column: 73, scope: !71)
!83 = !DILocalVariable(name: "lolim", scope: !71, file: !1, line: 76, type: !60)
!84 = !DILocation(line: 76, column: 16, scope: !71)
!85 = !DILocalVariable(name: "uplim", scope: !71, file: !1, line: 77, type: !60)
!86 = !DILocation(line: 77, column: 16, scope: !71)
!87 = !DILocalVariable(name: "goal", scope: !71, file: !1, line: 78, type: !88)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_prec_t", file: !90, line: 42, baseType: !50)
!90 = !DIFile(filename: "../gsl/gsl_precision.h", directory: "/fpcc/gsl-2.5/specfunc")
!91 = !DILocation(line: 78, column: 20, scope: !71)
!92 = !DILocation(line: 78, column: 41, scope: !71)
!93 = !DILocation(line: 78, column: 27, scope: !71)
!94 = !DILocalVariable(name: "errtol", scope: !71, file: !1, line: 79, type: !60)
!95 = !DILocation(line: 79, column: 16, scope: !71)
!96 = !DILocation(line: 79, column: 27, scope: !71)
!97 = !DILocation(line: 79, column: 32, scope: !71)
!98 = !DILocalVariable(name: "prec", scope: !71, file: !1, line: 80, type: !60)
!99 = !DILocation(line: 80, column: 16, scope: !71)
!100 = !DILocation(line: 80, column: 38, scope: !71)
!101 = !DILocation(line: 80, column: 25, scope: !71)
!102 = !DILocalVariable(name: "nmax", scope: !71, file: !1, line: 81, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!104 = !DILocation(line: 81, column: 13, scope: !71)
!105 = !DILocation(line: 83, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !71, file: !1, line: 83, column: 6)
!107 = !DILocation(line: 83, column: 8, scope: !106)
!108 = !DILocation(line: 83, column: 14, scope: !106)
!109 = !DILocation(line: 83, column: 17, scope: !110)
!110 = !DILexicalBlockFile(scope: !106, file: !1, discriminator: 1)
!111 = !DILocation(line: 83, column: 19, scope: !110)
!112 = !DILocation(line: 83, column: 25, scope: !110)
!113 = !DILocation(line: 83, column: 28, scope: !114)
!114 = !DILexicalBlockFile(scope: !106, file: !1, discriminator: 2)
!115 = !DILocation(line: 83, column: 32, scope: !114)
!116 = !DILocation(line: 83, column: 30, scope: !114)
!117 = !DILocation(line: 83, column: 34, scope: !114)
!118 = !DILocation(line: 83, column: 6, scope: !114)
!119 = !DILocation(line: 84, column: 5, scope: !120)
!120 = distinct !DILexicalBlock(scope: !106, file: !1, line: 83, column: 43)
!121 = distinct !{!121, !119}
!122 = !DILocation(line: 84, column: 5, scope: !123)
!123 = !DILexicalBlockFile(scope: !124, file: !1, discriminator: 1)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 84, column: 5)
!125 = distinct !{!125, !126}
!126 = !DILocation(line: 84, column: 5, scope: !124)
!127 = !DILocation(line: 84, column: 5, scope: !128)
!128 = !DILexicalBlockFile(scope: !129, file: !1, discriminator: 2)
!129 = distinct !DILexicalBlock(scope: !124, file: !1, line: 84, column: 5)
!130 = !DILocation(line: 84, column: 5, scope: !131)
!131 = !DILexicalBlockFile(scope: !124, file: !1, discriminator: 3)
!132 = !DILocation(line: 85, column: 3, scope: !120)
!133 = !DILocation(line: 86, column: 11, scope: !134)
!134 = distinct !DILexicalBlock(scope: !106, file: !1, line: 86, column: 11)
!135 = !DILocation(line: 86, column: 11, scope: !136)
!136 = !DILexicalBlockFile(scope: !134, file: !1, discriminator: 1)
!137 = !DILocation(line: 86, column: 11, scope: !138)
!138 = !DILexicalBlockFile(scope: !134, file: !1, discriminator: 2)
!139 = !DILocation(line: 86, column: 11, scope: !140)
!140 = !DILexicalBlockFile(scope: !134, file: !1, discriminator: 3)
!141 = !DILocation(line: 86, column: 25, scope: !140)
!142 = !DILocalVariable(name: "c1", scope: !143, file: !1, line: 87, type: !60)
!143 = distinct !DILexicalBlock(scope: !134, file: !1, line: 86, column: 34)
!144 = !DILocation(line: 87, column: 18, scope: !143)
!145 = !DILocalVariable(name: "c2", scope: !143, file: !1, line: 88, type: !60)
!146 = !DILocation(line: 88, column: 18, scope: !143)
!147 = !DILocalVariable(name: "xn", scope: !143, file: !1, line: 89, type: !47)
!148 = !DILocation(line: 89, column: 12, scope: !143)
!149 = !DILocation(line: 89, column: 17, scope: !143)
!150 = !DILocalVariable(name: "yn", scope: !143, file: !1, line: 90, type: !47)
!151 = !DILocation(line: 90, column: 12, scope: !143)
!152 = !DILocation(line: 90, column: 17, scope: !143)
!153 = !DILocalVariable(name: "mu", scope: !143, file: !1, line: 91, type: !47)
!154 = !DILocation(line: 91, column: 12, scope: !143)
!155 = !DILocalVariable(name: "sn", scope: !143, file: !1, line: 91, type: !47)
!156 = !DILocation(line: 91, column: 16, scope: !143)
!157 = !DILocalVariable(name: "lamda", scope: !143, file: !1, line: 91, type: !47)
!158 = !DILocation(line: 91, column: 20, scope: !143)
!159 = !DILocalVariable(name: "s", scope: !143, file: !1, line: 91, type: !47)
!160 = !DILocation(line: 91, column: 27, scope: !143)
!161 = !DILocalVariable(name: "n", scope: !143, file: !1, line: 92, type: !46)
!162 = !DILocation(line: 92, column: 9, scope: !143)
!163 = !DILocation(line: 93, column: 5, scope: !143)
!164 = !DILocation(line: 94, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !143, file: !1, line: 93, column: 14)
!166 = !DILocation(line: 94, column: 18, scope: !165)
!167 = !DILocation(line: 94, column: 16, scope: !165)
!168 = !DILocation(line: 94, column: 23, scope: !165)
!169 = !DILocation(line: 94, column: 21, scope: !165)
!170 = !DILocation(line: 94, column: 27, scope: !165)
!171 = !DILocation(line: 94, column: 10, scope: !165)
!172 = !DILocation(line: 95, column: 13, scope: !165)
!173 = !DILocation(line: 95, column: 18, scope: !165)
!174 = !DILocation(line: 95, column: 16, scope: !165)
!175 = !DILocation(line: 95, column: 24, scope: !165)
!176 = !DILocation(line: 95, column: 22, scope: !165)
!177 = !DILocation(line: 95, column: 27, scope: !165)
!178 = !DILocation(line: 95, column: 10, scope: !165)
!179 = !DILocation(line: 96, column: 16, scope: !180)
!180 = distinct !DILexicalBlock(scope: !165, file: !1, line: 96, column: 11)
!181 = !DILocation(line: 96, column: 11, scope: !180)
!182 = !DILocation(line: 96, column: 22, scope: !180)
!183 = !DILocation(line: 96, column: 20, scope: !180)
!184 = !DILocation(line: 96, column: 11, scope: !165)
!185 = !DILocation(line: 96, column: 30, scope: !186)
!186 = !DILexicalBlockFile(scope: !180, file: !1, discriminator: 1)
!187 = !DILocation(line: 97, column: 26, scope: !165)
!188 = !DILocation(line: 97, column: 21, scope: !165)
!189 = !DILocation(line: 97, column: 19, scope: !165)
!190 = !DILocation(line: 97, column: 37, scope: !165)
!191 = !DILocation(line: 97, column: 32, scope: !192)
!192 = !DILexicalBlockFile(scope: !165, file: !1, discriminator: 1)
!193 = !DILocation(line: 97, column: 30, scope: !165)
!194 = !DILocation(line: 97, column: 43, scope: !165)
!195 = !DILocation(line: 97, column: 41, scope: !165)
!196 = !DILocation(line: 97, column: 13, scope: !165)
!197 = !DILocation(line: 98, column: 13, scope: !165)
!198 = !DILocation(line: 98, column: 18, scope: !165)
!199 = !DILocation(line: 98, column: 16, scope: !165)
!200 = !DILocation(line: 98, column: 25, scope: !165)
!201 = !DILocation(line: 98, column: 10, scope: !165)
!202 = !DILocation(line: 99, column: 13, scope: !165)
!203 = !DILocation(line: 99, column: 18, scope: !165)
!204 = !DILocation(line: 99, column: 16, scope: !165)
!205 = !DILocation(line: 99, column: 25, scope: !165)
!206 = !DILocation(line: 99, column: 10, scope: !165)
!207 = !DILocation(line: 100, column: 8, scope: !165)
!208 = !DILocation(line: 101, column: 10, scope: !209)
!209 = distinct !DILexicalBlock(scope: !165, file: !1, line: 101, column: 10)
!210 = !DILocation(line: 101, column: 11, scope: !209)
!211 = !DILocation(line: 101, column: 10, scope: !165)
!212 = !DILocation(line: 102, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 101, column: 19)
!214 = distinct !{!214, !212}
!215 = !DILocation(line: 102, column: 9, scope: !216)
!216 = !DILexicalBlockFile(scope: !217, file: !1, discriminator: 1)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 102, column: 9)
!218 = distinct !{!218, !219}
!219 = !DILocation(line: 102, column: 9, scope: !217)
!220 = !DILocation(line: 102, column: 9, scope: !221)
!221 = !DILexicalBlockFile(scope: !222, file: !1, discriminator: 2)
!222 = distinct !DILexicalBlock(scope: !217, file: !1, line: 102, column: 9)
!223 = !DILocation(line: 102, column: 9, scope: !224)
!224 = !DILexicalBlockFile(scope: !217, file: !1, discriminator: 3)
!225 = !DILocation(line: 103, column: 7, scope: !213)
!226 = !DILocation(line: 93, column: 5, scope: !227)
!227 = !DILexicalBlockFile(scope: !143, file: !1, discriminator: 1)
!228 = distinct !{!228, !163}
!229 = !DILocation(line: 105, column: 9, scope: !143)
!230 = !DILocation(line: 105, column: 14, scope: !143)
!231 = !DILocation(line: 105, column: 12, scope: !143)
!232 = !DILocation(line: 105, column: 26, scope: !143)
!233 = !DILocation(line: 105, column: 37, scope: !143)
!234 = !DILocation(line: 105, column: 51, scope: !143)
!235 = !DILocation(line: 105, column: 54, scope: !143)
!236 = !DILocation(line: 105, column: 49, scope: !143)
!237 = !DILocation(line: 105, column: 40, scope: !143)
!238 = !DILocation(line: 105, column: 35, scope: !143)
!239 = !DILocation(line: 105, column: 29, scope: !143)
!240 = !DILocation(line: 105, column: 24, scope: !143)
!241 = !DILocation(line: 105, column: 17, scope: !143)
!242 = !DILocation(line: 105, column: 7, scope: !143)
!243 = !DILocation(line: 106, column: 26, scope: !143)
!244 = !DILocation(line: 106, column: 24, scope: !143)
!245 = !DILocation(line: 106, column: 36, scope: !143)
!246 = !DILocation(line: 106, column: 31, scope: !143)
!247 = !DILocation(line: 106, column: 29, scope: !143)
!248 = !DILocation(line: 106, column: 5, scope: !143)
!249 = !DILocation(line: 106, column: 13, scope: !143)
!250 = !DILocation(line: 106, column: 17, scope: !143)
!251 = !DILocation(line: 107, column: 19, scope: !143)
!252 = !DILocation(line: 107, column: 31, scope: !143)
!253 = !DILocation(line: 107, column: 39, scope: !143)
!254 = !DILocation(line: 107, column: 26, scope: !143)
!255 = !DILocation(line: 107, column: 24, scope: !143)
!256 = !DILocation(line: 107, column: 5, scope: !143)
!257 = !DILocation(line: 107, column: 13, scope: !143)
!258 = !DILocation(line: 107, column: 17, scope: !143)
!259 = !DILocation(line: 108, column: 5, scope: !143)
!260 = !DILocation(line: 111, column: 5, scope: !261)
!261 = distinct !DILexicalBlock(scope: !134, file: !1, line: 110, column: 8)
!262 = distinct !{!262, !260}
!263 = !DILocation(line: 111, column: 5, scope: !264)
!264 = !DILexicalBlockFile(scope: !265, file: !1, discriminator: 1)
!265 = distinct !DILexicalBlock(scope: !261, file: !1, line: 111, column: 5)
!266 = distinct !{!266, !267}
!267 = !DILocation(line: 111, column: 5, scope: !265)
!268 = !DILocation(line: 111, column: 5, scope: !269)
!269 = !DILexicalBlockFile(scope: !270, file: !1, discriminator: 2)
!270 = distinct !DILexicalBlock(scope: !265, file: !1, line: 111, column: 5)
!271 = !DILocation(line: 111, column: 5, scope: !272)
!272 = !DILexicalBlockFile(scope: !265, file: !1, discriminator: 3)
!273 = !DILocation(line: 113, column: 1, scope: !71)
!274 = distinct !DISubprogram(name: "gsl_sf_ellint_RD_e", scope: !1, file: !1, line: 117, type: !275, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!275 = !DISubroutineType(types: !276)
!276 = !{!46, !47, !47, !47, !48, !51}
!277 = !DILocalVariable(name: "x", arg: 1, scope: !274, file: !1, line: 117, type: !47)
!278 = !DILocation(line: 117, column: 27, scope: !274)
!279 = !DILocalVariable(name: "y", arg: 2, scope: !274, file: !1, line: 117, type: !47)
!280 = !DILocation(line: 117, column: 37, scope: !274)
!281 = !DILocalVariable(name: "z", arg: 3, scope: !274, file: !1, line: 117, type: !47)
!282 = !DILocation(line: 117, column: 47, scope: !274)
!283 = !DILocalVariable(name: "mode", arg: 4, scope: !274, file: !1, line: 117, type: !48)
!284 = !DILocation(line: 117, column: 61, scope: !274)
!285 = !DILocalVariable(name: "result", arg: 5, scope: !274, file: !1, line: 117, type: !51)
!286 = !DILocation(line: 117, column: 83, scope: !274)
!287 = !DILocalVariable(name: "goal", scope: !274, file: !1, line: 119, type: !88)
!288 = !DILocation(line: 119, column: 20, scope: !274)
!289 = !DILocation(line: 119, column: 41, scope: !274)
!290 = !DILocation(line: 119, column: 27, scope: !274)
!291 = !DILocalVariable(name: "errtol", scope: !274, file: !1, line: 120, type: !60)
!292 = !DILocation(line: 120, column: 16, scope: !274)
!293 = !DILocation(line: 120, column: 27, scope: !274)
!294 = !DILocation(line: 120, column: 32, scope: !274)
!295 = !DILocalVariable(name: "prec", scope: !274, file: !1, line: 121, type: !60)
!296 = !DILocation(line: 121, column: 16, scope: !274)
!297 = !DILocation(line: 121, column: 38, scope: !274)
!298 = !DILocation(line: 121, column: 25, scope: !274)
!299 = !DILocalVariable(name: "lolim", scope: !274, file: !1, line: 122, type: !60)
!300 = !DILocation(line: 122, column: 16, scope: !274)
!301 = !DILocation(line: 122, column: 28, scope: !274)
!302 = !DILocation(line: 122, column: 27, scope: !274)
!303 = !DILocalVariable(name: "uplim", scope: !274, file: !1, line: 123, type: !60)
!304 = !DILocation(line: 123, column: 16, scope: !274)
!305 = !DILocation(line: 123, column: 32, scope: !274)
!306 = !DILocation(line: 123, column: 31, scope: !274)
!307 = !DILocation(line: 123, column: 38, scope: !274)
!308 = !DILocation(line: 123, column: 24, scope: !274)
!309 = !DILocalVariable(name: "nmax", scope: !274, file: !1, line: 124, type: !103)
!310 = !DILocation(line: 124, column: 13, scope: !274)
!311 = !DILocation(line: 126, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !274, file: !1, line: 126, column: 6)
!313 = !DILocation(line: 126, column: 6, scope: !314)
!314 = !DILexicalBlockFile(scope: !312, file: !1, discriminator: 1)
!315 = !DILocation(line: 126, column: 6, scope: !316)
!316 = !DILexicalBlockFile(scope: !312, file: !1, discriminator: 2)
!317 = !DILocation(line: 126, column: 6, scope: !318)
!318 = !DILexicalBlockFile(scope: !312, file: !1, discriminator: 3)
!319 = !DILocation(line: 126, column: 19, scope: !318)
!320 = !DILocation(line: 126, column: 25, scope: !318)
!321 = !DILocation(line: 126, column: 28, scope: !322)
!322 = !DILexicalBlockFile(scope: !312, file: !1, discriminator: 4)
!323 = !DILocation(line: 126, column: 28, scope: !324)
!324 = !DILexicalBlockFile(scope: !312, file: !1, discriminator: 5)
!325 = !DILocation(line: 126, column: 28, scope: !326)
!326 = !DILexicalBlockFile(scope: !312, file: !1, discriminator: 6)
!327 = !DILocation(line: 126, column: 28, scope: !328)
!328 = !DILexicalBlockFile(scope: !312, file: !1, discriminator: 7)
!329 = !DILocation(line: 126, column: 45, scope: !328)
!330 = !DILocation(line: 126, column: 43, scope: !328)
!331 = !DILocation(line: 126, column: 6, scope: !328)
!332 = !DILocation(line: 127, column: 5, scope: !333)
!333 = distinct !DILexicalBlock(scope: !312, file: !1, line: 126, column: 52)
!334 = distinct !{!334, !332}
!335 = !DILocation(line: 127, column: 5, scope: !336)
!336 = !DILexicalBlockFile(scope: !337, file: !1, discriminator: 1)
!337 = distinct !DILexicalBlock(scope: !333, file: !1, line: 127, column: 5)
!338 = distinct !{!338, !339}
!339 = !DILocation(line: 127, column: 5, scope: !337)
!340 = !DILocation(line: 127, column: 5, scope: !341)
!341 = !DILexicalBlockFile(scope: !342, file: !1, discriminator: 2)
!342 = distinct !DILexicalBlock(scope: !337, file: !1, line: 127, column: 5)
!343 = !DILocation(line: 127, column: 5, scope: !344)
!344 = !DILexicalBlockFile(scope: !337, file: !1, discriminator: 3)
!345 = !DILocation(line: 128, column: 3, scope: !333)
!346 = !DILocation(line: 129, column: 19, scope: !347)
!347 = distinct !DILexicalBlock(scope: !312, file: !1, line: 129, column: 11)
!348 = !DILocation(line: 129, column: 21, scope: !347)
!349 = !DILocation(line: 129, column: 23, scope: !347)
!350 = !DILocation(line: 129, column: 11, scope: !347)
!351 = !DILocation(line: 129, column: 28, scope: !347)
!352 = !DILocation(line: 129, column: 26, scope: !347)
!353 = !DILocation(line: 129, column: 11, scope: !312)
!354 = !DILocalVariable(name: "c1", scope: !355, file: !1, line: 130, type: !60)
!355 = distinct !DILexicalBlock(scope: !347, file: !1, line: 129, column: 35)
!356 = !DILocation(line: 130, column: 18, scope: !355)
!357 = !DILocalVariable(name: "c2", scope: !355, file: !1, line: 131, type: !60)
!358 = !DILocation(line: 131, column: 18, scope: !355)
!359 = !DILocalVariable(name: "c3", scope: !355, file: !1, line: 132, type: !60)
!360 = !DILocation(line: 132, column: 18, scope: !355)
!361 = !DILocalVariable(name: "c4", scope: !355, file: !1, line: 133, type: !60)
!362 = !DILocation(line: 133, column: 18, scope: !355)
!363 = !DILocalVariable(name: "xn", scope: !355, file: !1, line: 134, type: !47)
!364 = !DILocation(line: 134, column: 12, scope: !355)
!365 = !DILocation(line: 134, column: 17, scope: !355)
!366 = !DILocalVariable(name: "yn", scope: !355, file: !1, line: 135, type: !47)
!367 = !DILocation(line: 135, column: 12, scope: !355)
!368 = !DILocation(line: 135, column: 17, scope: !355)
!369 = !DILocalVariable(name: "zn", scope: !355, file: !1, line: 136, type: !47)
!370 = !DILocation(line: 136, column: 12, scope: !355)
!371 = !DILocation(line: 136, column: 17, scope: !355)
!372 = !DILocalVariable(name: "sigma", scope: !355, file: !1, line: 137, type: !47)
!373 = !DILocation(line: 137, column: 12, scope: !355)
!374 = !DILocalVariable(name: "power4", scope: !355, file: !1, line: 138, type: !47)
!375 = !DILocation(line: 138, column: 12, scope: !355)
!376 = !DILocalVariable(name: "ea", scope: !355, file: !1, line: 139, type: !47)
!377 = !DILocation(line: 139, column: 12, scope: !355)
!378 = !DILocalVariable(name: "eb", scope: !355, file: !1, line: 139, type: !47)
!379 = !DILocation(line: 139, column: 16, scope: !355)
!380 = !DILocalVariable(name: "ec", scope: !355, file: !1, line: 139, type: !47)
!381 = !DILocation(line: 139, column: 20, scope: !355)
!382 = !DILocalVariable(name: "ed", scope: !355, file: !1, line: 139, type: !47)
!383 = !DILocation(line: 139, column: 24, scope: !355)
!384 = !DILocalVariable(name: "ef", scope: !355, file: !1, line: 139, type: !47)
!385 = !DILocation(line: 139, column: 28, scope: !355)
!386 = !DILocalVariable(name: "s1", scope: !355, file: !1, line: 139, type: !47)
!387 = !DILocation(line: 139, column: 32, scope: !355)
!388 = !DILocalVariable(name: "s2", scope: !355, file: !1, line: 139, type: !47)
!389 = !DILocation(line: 139, column: 36, scope: !355)
!390 = !DILocalVariable(name: "mu", scope: !355, file: !1, line: 140, type: !47)
!391 = !DILocation(line: 140, column: 12, scope: !355)
!392 = !DILocalVariable(name: "xndev", scope: !355, file: !1, line: 140, type: !47)
!393 = !DILocation(line: 140, column: 16, scope: !355)
!394 = !DILocalVariable(name: "yndev", scope: !355, file: !1, line: 140, type: !47)
!395 = !DILocation(line: 140, column: 23, scope: !355)
!396 = !DILocalVariable(name: "zndev", scope: !355, file: !1, line: 140, type: !47)
!397 = !DILocation(line: 140, column: 30, scope: !355)
!398 = !DILocalVariable(name: "n", scope: !355, file: !1, line: 141, type: !46)
!399 = !DILocation(line: 141, column: 9, scope: !355)
!400 = !DILocation(line: 142, column: 5, scope: !355)
!401 = !DILocalVariable(name: "xnroot", scope: !402, file: !1, line: 143, type: !47)
!402 = distinct !DILexicalBlock(scope: !355, file: !1, line: 142, column: 14)
!403 = !DILocation(line: 143, column: 14, scope: !402)
!404 = !DILocalVariable(name: "ynroot", scope: !402, file: !1, line: 143, type: !47)
!405 = !DILocation(line: 143, column: 22, scope: !402)
!406 = !DILocalVariable(name: "znroot", scope: !402, file: !1, line: 143, type: !47)
!407 = !DILocation(line: 143, column: 30, scope: !402)
!408 = !DILocalVariable(name: "lamda", scope: !402, file: !1, line: 143, type: !47)
!409 = !DILocation(line: 143, column: 38, scope: !402)
!410 = !DILocalVariable(name: "epslon", scope: !402, file: !1, line: 144, type: !47)
!411 = !DILocation(line: 144, column: 14, scope: !402)
!412 = !DILocation(line: 145, column: 13, scope: !402)
!413 = !DILocation(line: 145, column: 18, scope: !402)
!414 = !DILocation(line: 145, column: 16, scope: !402)
!415 = !DILocation(line: 145, column: 29, scope: !402)
!416 = !DILocation(line: 145, column: 27, scope: !402)
!417 = !DILocation(line: 145, column: 21, scope: !402)
!418 = !DILocation(line: 145, column: 33, scope: !402)
!419 = !DILocation(line: 145, column: 10, scope: !402)
!420 = !DILocation(line: 146, column: 16, scope: !402)
!421 = !DILocation(line: 146, column: 21, scope: !402)
!422 = !DILocation(line: 146, column: 19, scope: !402)
!423 = !DILocation(line: 146, column: 27, scope: !402)
!424 = !DILocation(line: 146, column: 25, scope: !402)
!425 = !DILocation(line: 146, column: 13, scope: !402)
!426 = !DILocation(line: 147, column: 16, scope: !402)
!427 = !DILocation(line: 147, column: 21, scope: !402)
!428 = !DILocation(line: 147, column: 19, scope: !402)
!429 = !DILocation(line: 147, column: 27, scope: !402)
!430 = !DILocation(line: 147, column: 25, scope: !402)
!431 = !DILocation(line: 147, column: 13, scope: !402)
!432 = !DILocation(line: 148, column: 16, scope: !402)
!433 = !DILocation(line: 148, column: 21, scope: !402)
!434 = !DILocation(line: 148, column: 19, scope: !402)
!435 = !DILocation(line: 148, column: 27, scope: !402)
!436 = !DILocation(line: 148, column: 25, scope: !402)
!437 = !DILocation(line: 148, column: 13, scope: !402)
!438 = !DILocation(line: 149, column: 29, scope: !402)
!439 = !DILocation(line: 149, column: 24, scope: !402)
!440 = !DILocation(line: 149, column: 42, scope: !402)
!441 = !DILocation(line: 149, column: 37, scope: !442)
!442 = !DILexicalBlockFile(scope: !402, file: !1, discriminator: 1)
!443 = !DILocation(line: 149, column: 55, scope: !402)
!444 = !DILocation(line: 149, column: 50, scope: !445)
!445 = !DILexicalBlockFile(scope: !402, file: !1, discriminator: 2)
!446 = !DILocation(line: 149, column: 16, scope: !447)
!447 = !DILexicalBlockFile(scope: !402, file: !1, discriminator: 3)
!448 = !DILocation(line: 149, column: 14, scope: !402)
!449 = !DILocation(line: 150, column: 11, scope: !450)
!450 = distinct !DILexicalBlock(scope: !402, file: !1, line: 150, column: 11)
!451 = !DILocation(line: 150, column: 20, scope: !450)
!452 = !DILocation(line: 150, column: 18, scope: !450)
!453 = !DILocation(line: 150, column: 11, scope: !402)
!454 = !DILocation(line: 150, column: 28, scope: !455)
!455 = !DILexicalBlockFile(scope: !450, file: !1, discriminator: 1)
!456 = !DILocation(line: 151, column: 21, scope: !402)
!457 = !DILocation(line: 151, column: 16, scope: !402)
!458 = !DILocation(line: 151, column: 14, scope: !402)
!459 = !DILocation(line: 152, column: 21, scope: !402)
!460 = !DILocation(line: 152, column: 16, scope: !402)
!461 = !DILocation(line: 152, column: 14, scope: !402)
!462 = !DILocation(line: 153, column: 21, scope: !402)
!463 = !DILocation(line: 153, column: 16, scope: !402)
!464 = !DILocation(line: 153, column: 14, scope: !402)
!465 = !DILocation(line: 154, column: 15, scope: !402)
!466 = !DILocation(line: 154, column: 25, scope: !402)
!467 = !DILocation(line: 154, column: 34, scope: !402)
!468 = !DILocation(line: 154, column: 32, scope: !402)
!469 = !DILocation(line: 154, column: 22, scope: !402)
!470 = !DILocation(line: 154, column: 44, scope: !402)
!471 = !DILocation(line: 154, column: 53, scope: !402)
!472 = !DILocation(line: 154, column: 51, scope: !402)
!473 = !DILocation(line: 154, column: 42, scope: !402)
!474 = !DILocation(line: 154, column: 13, scope: !402)
!475 = !DILocation(line: 155, column: 17, scope: !402)
!476 = !DILocation(line: 155, column: 27, scope: !402)
!477 = !DILocation(line: 155, column: 37, scope: !402)
!478 = !DILocation(line: 155, column: 42, scope: !402)
!479 = !DILocation(line: 155, column: 40, scope: !402)
!480 = !DILocation(line: 155, column: 34, scope: !402)
!481 = !DILocation(line: 155, column: 24, scope: !402)
!482 = !DILocation(line: 155, column: 14, scope: !402)
!483 = !DILocation(line: 156, column: 14, scope: !402)
!484 = !DILocation(line: 157, column: 13, scope: !402)
!485 = !DILocation(line: 157, column: 18, scope: !402)
!486 = !DILocation(line: 157, column: 16, scope: !402)
!487 = !DILocation(line: 157, column: 25, scope: !402)
!488 = !DILocation(line: 157, column: 10, scope: !402)
!489 = !DILocation(line: 158, column: 13, scope: !402)
!490 = !DILocation(line: 158, column: 18, scope: !402)
!491 = !DILocation(line: 158, column: 16, scope: !402)
!492 = !DILocation(line: 158, column: 25, scope: !402)
!493 = !DILocation(line: 158, column: 10, scope: !402)
!494 = !DILocation(line: 159, column: 13, scope: !402)
!495 = !DILocation(line: 159, column: 18, scope: !402)
!496 = !DILocation(line: 159, column: 16, scope: !402)
!497 = !DILocation(line: 159, column: 25, scope: !402)
!498 = !DILocation(line: 159, column: 10, scope: !402)
!499 = !DILocation(line: 160, column: 8, scope: !402)
!500 = !DILocation(line: 161, column: 10, scope: !501)
!501 = distinct !DILexicalBlock(scope: !402, file: !1, line: 161, column: 10)
!502 = !DILocation(line: 161, column: 11, scope: !501)
!503 = !DILocation(line: 161, column: 10, scope: !402)
!504 = !DILocation(line: 162, column: 9, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !1, line: 161, column: 19)
!506 = distinct !{!506, !504}
!507 = !DILocation(line: 162, column: 9, scope: !508)
!508 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 1)
!509 = distinct !DILexicalBlock(scope: !505, file: !1, line: 162, column: 9)
!510 = distinct !{!510, !511}
!511 = !DILocation(line: 162, column: 9, scope: !509)
!512 = !DILocation(line: 162, column: 9, scope: !513)
!513 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 2)
!514 = distinct !DILexicalBlock(scope: !509, file: !1, line: 162, column: 9)
!515 = !DILocation(line: 162, column: 9, scope: !516)
!516 = !DILexicalBlockFile(scope: !509, file: !1, discriminator: 3)
!517 = !DILocation(line: 163, column: 7, scope: !505)
!518 = !DILocation(line: 142, column: 5, scope: !519)
!519 = !DILexicalBlockFile(scope: !355, file: !1, discriminator: 1)
!520 = distinct !{!520, !400}
!521 = !DILocation(line: 165, column: 10, scope: !355)
!522 = !DILocation(line: 165, column: 18, scope: !355)
!523 = !DILocation(line: 165, column: 16, scope: !355)
!524 = !DILocation(line: 165, column: 8, scope: !355)
!525 = !DILocation(line: 166, column: 10, scope: !355)
!526 = !DILocation(line: 166, column: 18, scope: !355)
!527 = !DILocation(line: 166, column: 16, scope: !355)
!528 = !DILocation(line: 166, column: 8, scope: !355)
!529 = !DILocation(line: 167, column: 10, scope: !355)
!530 = !DILocation(line: 167, column: 15, scope: !355)
!531 = !DILocation(line: 167, column: 13, scope: !355)
!532 = !DILocation(line: 167, column: 8, scope: !355)
!533 = !DILocation(line: 168, column: 10, scope: !355)
!534 = !DILocation(line: 168, column: 21, scope: !355)
!535 = !DILocation(line: 168, column: 19, scope: !355)
!536 = !DILocation(line: 168, column: 13, scope: !355)
!537 = !DILocation(line: 168, column: 8, scope: !355)
!538 = !DILocation(line: 169, column: 10, scope: !355)
!539 = !DILocation(line: 169, column: 15, scope: !355)
!540 = !DILocation(line: 169, column: 13, scope: !355)
!541 = !DILocation(line: 169, column: 20, scope: !355)
!542 = !DILocation(line: 169, column: 18, scope: !355)
!543 = !DILocation(line: 169, column: 8, scope: !355)
!544 = !DILocation(line: 170, column: 10, scope: !355)
!545 = !DILocation(line: 170, column: 35, scope: !355)
!546 = !DILocation(line: 170, column: 33, scope: !355)
!547 = !DILocation(line: 170, column: 21, scope: !355)
!548 = !DILocation(line: 170, column: 51, scope: !355)
!549 = !DILocation(line: 170, column: 49, scope: !355)
!550 = !DILocation(line: 170, column: 59, scope: !355)
!551 = !DILocation(line: 170, column: 57, scope: !355)
!552 = !DILocation(line: 170, column: 38, scope: !355)
!553 = !DILocation(line: 170, column: 13, scope: !355)
!554 = !DILocation(line: 170, column: 8, scope: !355)
!555 = !DILocation(line: 171, column: 10, scope: !355)
!556 = !DILocation(line: 171, column: 24, scope: !355)
!557 = !DILocation(line: 171, column: 22, scope: !355)
!558 = !DILocation(line: 171, column: 29, scope: !355)
!559 = !DILocation(line: 171, column: 45, scope: !355)
!560 = !DILocation(line: 171, column: 43, scope: !355)
!561 = !DILocation(line: 171, column: 50, scope: !355)
!562 = !DILocation(line: 171, column: 56, scope: !355)
!563 = !DILocation(line: 171, column: 63, scope: !355)
!564 = !DILocation(line: 171, column: 61, scope: !355)
!565 = !DILocation(line: 171, column: 48, scope: !355)
!566 = !DILocation(line: 171, column: 35, scope: !355)
!567 = !DILocation(line: 171, column: 27, scope: !355)
!568 = !DILocation(line: 171, column: 16, scope: !355)
!569 = !DILocation(line: 171, column: 8, scope: !355)
!570 = !DILocation(line: 172, column: 25, scope: !355)
!571 = !DILocation(line: 172, column: 23, scope: !355)
!572 = !DILocation(line: 172, column: 33, scope: !355)
!573 = !DILocation(line: 172, column: 49, scope: !355)
!574 = !DILocation(line: 172, column: 47, scope: !355)
!575 = !DILocation(line: 172, column: 54, scope: !355)
!576 = !DILocation(line: 172, column: 52, scope: !355)
!577 = !DILocation(line: 172, column: 40, scope: !355)
!578 = !DILocation(line: 172, column: 61, scope: !355)
!579 = !DILocation(line: 172, column: 71, scope: !355)
!580 = !DILocation(line: 172, column: 66, scope: !355)
!581 = !DILocation(line: 172, column: 64, scope: !355)
!582 = !DILocation(line: 172, column: 58, scope: !355)
!583 = !DILocation(line: 172, column: 31, scope: !355)
!584 = !DILocation(line: 172, column: 5, scope: !355)
!585 = !DILocation(line: 172, column: 13, scope: !355)
!586 = !DILocation(line: 172, column: 17, scope: !355)
!587 = !DILocation(line: 173, column: 19, scope: !355)
!588 = !DILocation(line: 173, column: 31, scope: !355)
!589 = !DILocation(line: 173, column: 39, scope: !355)
!590 = !DILocation(line: 173, column: 26, scope: !355)
!591 = !DILocation(line: 173, column: 24, scope: !355)
!592 = !DILocation(line: 173, column: 5, scope: !355)
!593 = !DILocation(line: 173, column: 13, scope: !355)
!594 = !DILocation(line: 173, column: 17, scope: !355)
!595 = !DILocation(line: 174, column: 5, scope: !355)
!596 = !DILocation(line: 177, column: 5, scope: !597)
!597 = distinct !DILexicalBlock(scope: !347, file: !1, line: 176, column: 8)
!598 = distinct !{!598, !596}
!599 = !DILocation(line: 177, column: 5, scope: !600)
!600 = !DILexicalBlockFile(scope: !601, file: !1, discriminator: 1)
!601 = distinct !DILexicalBlock(scope: !597, file: !1, line: 177, column: 5)
!602 = distinct !{!602, !603}
!603 = !DILocation(line: 177, column: 5, scope: !601)
!604 = !DILocation(line: 177, column: 5, scope: !605)
!605 = !DILexicalBlockFile(scope: !606, file: !1, discriminator: 2)
!606 = distinct !DILexicalBlock(scope: !601, file: !1, line: 177, column: 5)
!607 = !DILocation(line: 177, column: 5, scope: !608)
!608 = !DILexicalBlockFile(scope: !601, file: !1, discriminator: 3)
!609 = !DILocation(line: 179, column: 1, scope: !274)
!610 = distinct !DISubprogram(name: "locMAX3", scope: !1, file: !1, line: 33, type: !611, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!611 = !DISubroutineType(types: !612)
!612 = !{!47, !47, !47, !47}
!613 = !DILocalVariable(name: "x", arg: 1, scope: !610, file: !1, line: 33, type: !47)
!614 = !DILocation(line: 33, column: 30, scope: !610)
!615 = !DILocalVariable(name: "y", arg: 2, scope: !610, file: !1, line: 33, type: !47)
!616 = !DILocation(line: 33, column: 40, scope: !610)
!617 = !DILocalVariable(name: "z", arg: 3, scope: !610, file: !1, line: 33, type: !47)
!618 = !DILocation(line: 33, column: 50, scope: !610)
!619 = !DILocalVariable(name: "xy", scope: !610, file: !1, line: 35, type: !47)
!620 = !DILocation(line: 35, column: 10, scope: !610)
!621 = !DILocation(line: 35, column: 15, scope: !610)
!622 = !DILocation(line: 35, column: 15, scope: !623)
!623 = !DILexicalBlockFile(scope: !610, file: !1, discriminator: 1)
!624 = !DILocation(line: 35, column: 15, scope: !625)
!625 = !DILexicalBlockFile(scope: !610, file: !1, discriminator: 2)
!626 = !DILocation(line: 35, column: 15, scope: !627)
!627 = !DILexicalBlockFile(scope: !610, file: !1, discriminator: 3)
!628 = !DILocation(line: 35, column: 10, scope: !627)
!629 = !DILocation(line: 36, column: 10, scope: !610)
!630 = !DILocation(line: 36, column: 10, scope: !623)
!631 = !DILocation(line: 36, column: 10, scope: !625)
!632 = !DILocation(line: 36, column: 10, scope: !627)
!633 = !DILocation(line: 36, column: 3, scope: !627)
!634 = distinct !DISubprogram(name: "gsl_sf_ellint_RF_e", scope: !1, file: !1, line: 183, type: !275, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!635 = !DILocalVariable(name: "x", arg: 1, scope: !634, file: !1, line: 183, type: !47)
!636 = !DILocation(line: 183, column: 27, scope: !634)
!637 = !DILocalVariable(name: "y", arg: 2, scope: !634, file: !1, line: 183, type: !47)
!638 = !DILocation(line: 183, column: 37, scope: !634)
!639 = !DILocalVariable(name: "z", arg: 3, scope: !634, file: !1, line: 183, type: !47)
!640 = !DILocation(line: 183, column: 47, scope: !634)
!641 = !DILocalVariable(name: "mode", arg: 4, scope: !634, file: !1, line: 183, type: !48)
!642 = !DILocation(line: 183, column: 61, scope: !634)
!643 = !DILocalVariable(name: "result", arg: 5, scope: !634, file: !1, line: 183, type: !51)
!644 = !DILocation(line: 183, column: 83, scope: !634)
!645 = !DILocalVariable(name: "lolim", scope: !634, file: !1, line: 185, type: !60)
!646 = !DILocation(line: 185, column: 16, scope: !634)
!647 = !DILocalVariable(name: "uplim", scope: !634, file: !1, line: 186, type: !60)
!648 = !DILocation(line: 186, column: 16, scope: !634)
!649 = !DILocalVariable(name: "goal", scope: !634, file: !1, line: 187, type: !88)
!650 = !DILocation(line: 187, column: 20, scope: !634)
!651 = !DILocation(line: 187, column: 41, scope: !634)
!652 = !DILocation(line: 187, column: 27, scope: !634)
!653 = !DILocalVariable(name: "errtol", scope: !634, file: !1, line: 188, type: !60)
!654 = !DILocation(line: 188, column: 16, scope: !634)
!655 = !DILocation(line: 188, column: 27, scope: !634)
!656 = !DILocation(line: 188, column: 32, scope: !634)
!657 = !DILocalVariable(name: "prec", scope: !634, file: !1, line: 189, type: !60)
!658 = !DILocation(line: 189, column: 16, scope: !634)
!659 = !DILocation(line: 189, column: 38, scope: !634)
!660 = !DILocation(line: 189, column: 25, scope: !634)
!661 = !DILocalVariable(name: "nmax", scope: !634, file: !1, line: 190, type: !103)
!662 = !DILocation(line: 190, column: 13, scope: !634)
!663 = !DILocation(line: 192, column: 6, scope: !664)
!664 = distinct !DILexicalBlock(scope: !634, file: !1, line: 192, column: 6)
!665 = !DILocation(line: 192, column: 8, scope: !664)
!666 = !DILocation(line: 192, column: 14, scope: !664)
!667 = !DILocation(line: 192, column: 17, scope: !668)
!668 = !DILexicalBlockFile(scope: !664, file: !1, discriminator: 1)
!669 = !DILocation(line: 192, column: 19, scope: !668)
!670 = !DILocation(line: 192, column: 25, scope: !668)
!671 = !DILocation(line: 192, column: 28, scope: !672)
!672 = !DILexicalBlockFile(scope: !664, file: !1, discriminator: 2)
!673 = !DILocation(line: 192, column: 30, scope: !672)
!674 = !DILocation(line: 192, column: 6, scope: !672)
!675 = !DILocation(line: 193, column: 5, scope: !676)
!676 = distinct !DILexicalBlock(scope: !664, file: !1, line: 192, column: 37)
!677 = distinct !{!677, !675}
!678 = !DILocation(line: 193, column: 5, scope: !679)
!679 = !DILexicalBlockFile(scope: !680, file: !1, discriminator: 1)
!680 = distinct !DILexicalBlock(scope: !676, file: !1, line: 193, column: 5)
!681 = distinct !{!681, !682}
!682 = !DILocation(line: 193, column: 5, scope: !680)
!683 = !DILocation(line: 193, column: 5, scope: !684)
!684 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 2)
!685 = distinct !DILexicalBlock(scope: !680, file: !1, line: 193, column: 5)
!686 = !DILocation(line: 193, column: 5, scope: !687)
!687 = !DILexicalBlockFile(scope: !680, file: !1, discriminator: 3)
!688 = !DILocation(line: 194, column: 3, scope: !676)
!689 = !DILocation(line: 195, column: 11, scope: !690)
!690 = distinct !DILexicalBlock(scope: !664, file: !1, line: 195, column: 11)
!691 = !DILocation(line: 195, column: 13, scope: !690)
!692 = !DILocation(line: 195, column: 12, scope: !690)
!693 = !DILocation(line: 195, column: 15, scope: !690)
!694 = !DILocation(line: 195, column: 23, scope: !690)
!695 = !DILocation(line: 195, column: 26, scope: !696)
!696 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 1)
!697 = !DILocation(line: 195, column: 28, scope: !696)
!698 = !DILocation(line: 195, column: 27, scope: !696)
!699 = !DILocation(line: 195, column: 30, scope: !696)
!700 = !DILocation(line: 195, column: 38, scope: !696)
!701 = !DILocation(line: 195, column: 41, scope: !702)
!702 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 2)
!703 = !DILocation(line: 195, column: 43, scope: !702)
!704 = !DILocation(line: 195, column: 42, scope: !702)
!705 = !DILocation(line: 195, column: 45, scope: !702)
!706 = !DILocation(line: 195, column: 11, scope: !702)
!707 = !DILocation(line: 196, column: 5, scope: !708)
!708 = distinct !DILexicalBlock(scope: !690, file: !1, line: 195, column: 54)
!709 = distinct !{!709, !707}
!710 = !DILocation(line: 196, column: 5, scope: !711)
!711 = !DILexicalBlockFile(scope: !712, file: !1, discriminator: 1)
!712 = distinct !DILexicalBlock(scope: !708, file: !1, line: 196, column: 5)
!713 = distinct !{!713, !714}
!714 = !DILocation(line: 196, column: 5, scope: !712)
!715 = !DILocation(line: 196, column: 5, scope: !716)
!716 = !DILexicalBlockFile(scope: !717, file: !1, discriminator: 2)
!717 = distinct !DILexicalBlock(scope: !712, file: !1, line: 196, column: 5)
!718 = !DILocation(line: 196, column: 5, scope: !719)
!719 = !DILexicalBlockFile(scope: !712, file: !1, discriminator: 3)
!720 = !DILocation(line: 197, column: 3, scope: !708)
!721 = !DILocation(line: 198, column: 19, scope: !722)
!722 = distinct !DILexicalBlock(scope: !690, file: !1, line: 198, column: 11)
!723 = !DILocation(line: 198, column: 21, scope: !722)
!724 = !DILocation(line: 198, column: 23, scope: !722)
!725 = !DILocation(line: 198, column: 11, scope: !722)
!726 = !DILocation(line: 198, column: 26, scope: !722)
!727 = !DILocation(line: 198, column: 11, scope: !690)
!728 = !DILocalVariable(name: "c1", scope: !729, file: !1, line: 199, type: !60)
!729 = distinct !DILexicalBlock(scope: !722, file: !1, line: 198, column: 35)
!730 = !DILocation(line: 199, column: 18, scope: !729)
!731 = !DILocalVariable(name: "c2", scope: !729, file: !1, line: 200, type: !60)
!732 = !DILocation(line: 200, column: 18, scope: !729)
!733 = !DILocalVariable(name: "c3", scope: !729, file: !1, line: 201, type: !60)
!734 = !DILocation(line: 201, column: 18, scope: !729)
!735 = !DILocalVariable(name: "xn", scope: !729, file: !1, line: 202, type: !47)
!736 = !DILocation(line: 202, column: 12, scope: !729)
!737 = !DILocation(line: 202, column: 17, scope: !729)
!738 = !DILocalVariable(name: "yn", scope: !729, file: !1, line: 203, type: !47)
!739 = !DILocation(line: 203, column: 12, scope: !729)
!740 = !DILocation(line: 203, column: 17, scope: !729)
!741 = !DILocalVariable(name: "zn", scope: !729, file: !1, line: 204, type: !47)
!742 = !DILocation(line: 204, column: 12, scope: !729)
!743 = !DILocation(line: 204, column: 17, scope: !729)
!744 = !DILocalVariable(name: "mu", scope: !729, file: !1, line: 205, type: !47)
!745 = !DILocation(line: 205, column: 12, scope: !729)
!746 = !DILocalVariable(name: "xndev", scope: !729, file: !1, line: 205, type: !47)
!747 = !DILocation(line: 205, column: 16, scope: !729)
!748 = !DILocalVariable(name: "yndev", scope: !729, file: !1, line: 205, type: !47)
!749 = !DILocation(line: 205, column: 23, scope: !729)
!750 = !DILocalVariable(name: "zndev", scope: !729, file: !1, line: 205, type: !47)
!751 = !DILocation(line: 205, column: 30, scope: !729)
!752 = !DILocalVariable(name: "e2", scope: !729, file: !1, line: 205, type: !47)
!753 = !DILocation(line: 205, column: 37, scope: !729)
!754 = !DILocalVariable(name: "e3", scope: !729, file: !1, line: 205, type: !47)
!755 = !DILocation(line: 205, column: 41, scope: !729)
!756 = !DILocalVariable(name: "s", scope: !729, file: !1, line: 205, type: !47)
!757 = !DILocation(line: 205, column: 45, scope: !729)
!758 = !DILocalVariable(name: "n", scope: !729, file: !1, line: 206, type: !46)
!759 = !DILocation(line: 206, column: 9, scope: !729)
!760 = !DILocation(line: 207, column: 5, scope: !729)
!761 = !DILocalVariable(name: "epslon", scope: !762, file: !1, line: 208, type: !47)
!762 = distinct !DILexicalBlock(scope: !729, file: !1, line: 207, column: 14)
!763 = !DILocation(line: 208, column: 14, scope: !762)
!764 = !DILocalVariable(name: "lamda", scope: !762, file: !1, line: 208, type: !47)
!765 = !DILocation(line: 208, column: 22, scope: !762)
!766 = !DILocalVariable(name: "xnroot", scope: !762, file: !1, line: 209, type: !47)
!767 = !DILocation(line: 209, column: 14, scope: !762)
!768 = !DILocalVariable(name: "ynroot", scope: !762, file: !1, line: 209, type: !47)
!769 = !DILocation(line: 209, column: 22, scope: !762)
!770 = !DILocalVariable(name: "znroot", scope: !762, file: !1, line: 209, type: !47)
!771 = !DILocation(line: 209, column: 30, scope: !762)
!772 = !DILocation(line: 210, column: 13, scope: !762)
!773 = !DILocation(line: 210, column: 18, scope: !762)
!774 = !DILocation(line: 210, column: 16, scope: !762)
!775 = !DILocation(line: 210, column: 23, scope: !762)
!776 = !DILocation(line: 210, column: 21, scope: !762)
!777 = !DILocation(line: 210, column: 27, scope: !762)
!778 = !DILocation(line: 210, column: 10, scope: !762)
!779 = !DILocation(line: 211, column: 22, scope: !762)
!780 = !DILocation(line: 211, column: 27, scope: !762)
!781 = !DILocation(line: 211, column: 25, scope: !762)
!782 = !DILocation(line: 211, column: 33, scope: !762)
!783 = !DILocation(line: 211, column: 31, scope: !762)
!784 = !DILocation(line: 211, column: 19, scope: !762)
!785 = !DILocation(line: 211, column: 13, scope: !762)
!786 = !DILocation(line: 212, column: 22, scope: !762)
!787 = !DILocation(line: 212, column: 27, scope: !762)
!788 = !DILocation(line: 212, column: 25, scope: !762)
!789 = !DILocation(line: 212, column: 33, scope: !762)
!790 = !DILocation(line: 212, column: 31, scope: !762)
!791 = !DILocation(line: 212, column: 19, scope: !762)
!792 = !DILocation(line: 212, column: 13, scope: !762)
!793 = !DILocation(line: 213, column: 22, scope: !762)
!794 = !DILocation(line: 213, column: 27, scope: !762)
!795 = !DILocation(line: 213, column: 25, scope: !762)
!796 = !DILocation(line: 213, column: 33, scope: !762)
!797 = !DILocation(line: 213, column: 31, scope: !762)
!798 = !DILocation(line: 213, column: 19, scope: !762)
!799 = !DILocation(line: 213, column: 13, scope: !762)
!800 = !DILocation(line: 214, column: 29, scope: !762)
!801 = !DILocation(line: 214, column: 24, scope: !762)
!802 = !DILocation(line: 214, column: 42, scope: !762)
!803 = !DILocation(line: 214, column: 37, scope: !804)
!804 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 1)
!805 = !DILocation(line: 214, column: 55, scope: !762)
!806 = !DILocation(line: 214, column: 50, scope: !807)
!807 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 2)
!808 = !DILocation(line: 214, column: 16, scope: !809)
!809 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 3)
!810 = !DILocation(line: 214, column: 14, scope: !762)
!811 = !DILocation(line: 215, column: 11, scope: !812)
!812 = distinct !DILexicalBlock(scope: !762, file: !1, line: 215, column: 11)
!813 = !DILocation(line: 215, column: 20, scope: !812)
!814 = !DILocation(line: 215, column: 18, scope: !812)
!815 = !DILocation(line: 215, column: 11, scope: !762)
!816 = !DILocation(line: 215, column: 28, scope: !817)
!817 = !DILexicalBlockFile(scope: !812, file: !1, discriminator: 1)
!818 = !DILocation(line: 216, column: 21, scope: !762)
!819 = !DILocation(line: 216, column: 16, scope: !762)
!820 = !DILocation(line: 216, column: 14, scope: !762)
!821 = !DILocation(line: 217, column: 21, scope: !762)
!822 = !DILocation(line: 217, column: 16, scope: !762)
!823 = !DILocation(line: 217, column: 14, scope: !762)
!824 = !DILocation(line: 218, column: 21, scope: !762)
!825 = !DILocation(line: 218, column: 16, scope: !762)
!826 = !DILocation(line: 218, column: 14, scope: !762)
!827 = !DILocation(line: 219, column: 15, scope: !762)
!828 = !DILocation(line: 219, column: 25, scope: !762)
!829 = !DILocation(line: 219, column: 34, scope: !762)
!830 = !DILocation(line: 219, column: 32, scope: !762)
!831 = !DILocation(line: 219, column: 22, scope: !762)
!832 = !DILocation(line: 219, column: 44, scope: !762)
!833 = !DILocation(line: 219, column: 53, scope: !762)
!834 = !DILocation(line: 219, column: 51, scope: !762)
!835 = !DILocation(line: 219, column: 42, scope: !762)
!836 = !DILocation(line: 219, column: 13, scope: !762)
!837 = !DILocation(line: 220, column: 13, scope: !762)
!838 = !DILocation(line: 220, column: 18, scope: !762)
!839 = !DILocation(line: 220, column: 16, scope: !762)
!840 = !DILocation(line: 220, column: 25, scope: !762)
!841 = !DILocation(line: 220, column: 10, scope: !762)
!842 = !DILocation(line: 221, column: 13, scope: !762)
!843 = !DILocation(line: 221, column: 18, scope: !762)
!844 = !DILocation(line: 221, column: 16, scope: !762)
!845 = !DILocation(line: 221, column: 25, scope: !762)
!846 = !DILocation(line: 221, column: 10, scope: !762)
!847 = !DILocation(line: 222, column: 13, scope: !762)
!848 = !DILocation(line: 222, column: 18, scope: !762)
!849 = !DILocation(line: 222, column: 16, scope: !762)
!850 = !DILocation(line: 222, column: 25, scope: !762)
!851 = !DILocation(line: 222, column: 10, scope: !762)
!852 = !DILocation(line: 223, column: 8, scope: !762)
!853 = !DILocation(line: 224, column: 10, scope: !854)
!854 = distinct !DILexicalBlock(scope: !762, file: !1, line: 224, column: 10)
!855 = !DILocation(line: 224, column: 11, scope: !854)
!856 = !DILocation(line: 224, column: 10, scope: !762)
!857 = !DILocation(line: 225, column: 9, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !1, line: 224, column: 19)
!859 = distinct !{!859, !857}
!860 = !DILocation(line: 225, column: 9, scope: !861)
!861 = !DILexicalBlockFile(scope: !862, file: !1, discriminator: 1)
!862 = distinct !DILexicalBlock(scope: !858, file: !1, line: 225, column: 9)
!863 = distinct !{!863, !864}
!864 = !DILocation(line: 225, column: 9, scope: !862)
!865 = !DILocation(line: 225, column: 9, scope: !866)
!866 = !DILexicalBlockFile(scope: !867, file: !1, discriminator: 2)
!867 = distinct !DILexicalBlock(scope: !862, file: !1, line: 225, column: 9)
!868 = !DILocation(line: 225, column: 9, scope: !869)
!869 = !DILexicalBlockFile(scope: !862, file: !1, discriminator: 3)
!870 = !DILocation(line: 226, column: 7, scope: !858)
!871 = !DILocation(line: 207, column: 5, scope: !872)
!872 = !DILexicalBlockFile(scope: !729, file: !1, discriminator: 1)
!873 = distinct !{!873, !760}
!874 = !DILocation(line: 228, column: 10, scope: !729)
!875 = !DILocation(line: 228, column: 18, scope: !729)
!876 = !DILocation(line: 228, column: 16, scope: !729)
!877 = !DILocation(line: 228, column: 26, scope: !729)
!878 = !DILocation(line: 228, column: 34, scope: !729)
!879 = !DILocation(line: 228, column: 32, scope: !729)
!880 = !DILocation(line: 228, column: 24, scope: !729)
!881 = !DILocation(line: 228, column: 8, scope: !729)
!882 = !DILocation(line: 229, column: 10, scope: !729)
!883 = !DILocation(line: 229, column: 18, scope: !729)
!884 = !DILocation(line: 229, column: 16, scope: !729)
!885 = !DILocation(line: 229, column: 26, scope: !729)
!886 = !DILocation(line: 229, column: 24, scope: !729)
!887 = !DILocation(line: 229, column: 8, scope: !729)
!888 = !DILocation(line: 230, column: 21, scope: !729)
!889 = !DILocation(line: 230, column: 19, scope: !729)
!890 = !DILocation(line: 230, column: 24, scope: !729)
!891 = !DILocation(line: 230, column: 37, scope: !729)
!892 = !DILocation(line: 230, column: 35, scope: !729)
!893 = !DILocation(line: 230, column: 30, scope: !729)
!894 = !DILocation(line: 230, column: 43, scope: !729)
!895 = !DILocation(line: 230, column: 41, scope: !729)
!896 = !DILocation(line: 230, column: 13, scope: !729)
!897 = !DILocation(line: 230, column: 53, scope: !729)
!898 = !DILocation(line: 230, column: 51, scope: !729)
!899 = !DILocation(line: 230, column: 46, scope: !729)
!900 = !DILocation(line: 230, column: 7, scope: !729)
!901 = !DILocation(line: 231, column: 19, scope: !729)
!902 = !DILocation(line: 231, column: 28, scope: !729)
!903 = !DILocation(line: 231, column: 23, scope: !729)
!904 = !DILocation(line: 231, column: 21, scope: !729)
!905 = !DILocation(line: 231, column: 5, scope: !729)
!906 = !DILocation(line: 231, column: 13, scope: !729)
!907 = !DILocation(line: 231, column: 17, scope: !729)
!908 = !DILocation(line: 232, column: 19, scope: !729)
!909 = !DILocation(line: 232, column: 31, scope: !729)
!910 = !DILocation(line: 232, column: 39, scope: !729)
!911 = !DILocation(line: 232, column: 26, scope: !729)
!912 = !DILocation(line: 232, column: 24, scope: !729)
!913 = !DILocation(line: 232, column: 5, scope: !729)
!914 = !DILocation(line: 232, column: 13, scope: !729)
!915 = !DILocation(line: 232, column: 17, scope: !729)
!916 = !DILocation(line: 233, column: 5, scope: !729)
!917 = !DILocation(line: 236, column: 5, scope: !918)
!918 = distinct !DILexicalBlock(scope: !722, file: !1, line: 235, column: 8)
!919 = distinct !{!919, !917}
!920 = !DILocation(line: 236, column: 5, scope: !921)
!921 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 1)
!922 = distinct !DILexicalBlock(scope: !918, file: !1, line: 236, column: 5)
!923 = distinct !{!923, !924}
!924 = !DILocation(line: 236, column: 5, scope: !922)
!925 = !DILocation(line: 236, column: 5, scope: !926)
!926 = !DILexicalBlockFile(scope: !927, file: !1, discriminator: 2)
!927 = distinct !DILexicalBlock(scope: !922, file: !1, line: 236, column: 5)
!928 = !DILocation(line: 236, column: 5, scope: !929)
!929 = !DILexicalBlockFile(scope: !922, file: !1, discriminator: 3)
!930 = !DILocation(line: 238, column: 1, scope: !634)
!931 = distinct !DISubprogram(name: "gsl_sf_ellint_RJ_e", scope: !1, file: !1, line: 242, type: !932, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!932 = !DISubroutineType(types: !933)
!933 = !{!46, !47, !47, !47, !47, !48, !51}
!934 = !DILocalVariable(name: "x", arg: 1, scope: !931, file: !1, line: 242, type: !47)
!935 = !DILocation(line: 242, column: 27, scope: !931)
!936 = !DILocalVariable(name: "y", arg: 2, scope: !931, file: !1, line: 242, type: !47)
!937 = !DILocation(line: 242, column: 37, scope: !931)
!938 = !DILocalVariable(name: "z", arg: 3, scope: !931, file: !1, line: 242, type: !47)
!939 = !DILocation(line: 242, column: 47, scope: !931)
!940 = !DILocalVariable(name: "p", arg: 4, scope: !931, file: !1, line: 242, type: !47)
!941 = !DILocation(line: 242, column: 57, scope: !931)
!942 = !DILocalVariable(name: "mode", arg: 5, scope: !931, file: !1, line: 242, type: !48)
!943 = !DILocation(line: 242, column: 71, scope: !931)
!944 = !DILocalVariable(name: "result", arg: 6, scope: !931, file: !1, line: 242, type: !51)
!945 = !DILocation(line: 242, column: 93, scope: !931)
!946 = !DILocalVariable(name: "goal", scope: !931, file: !1, line: 244, type: !88)
!947 = !DILocation(line: 244, column: 20, scope: !931)
!948 = !DILocation(line: 244, column: 41, scope: !931)
!949 = !DILocation(line: 244, column: 27, scope: !931)
!950 = !DILocalVariable(name: "errtol", scope: !931, file: !1, line: 245, type: !60)
!951 = !DILocation(line: 245, column: 16, scope: !931)
!952 = !DILocation(line: 245, column: 27, scope: !931)
!953 = !DILocation(line: 245, column: 32, scope: !931)
!954 = !DILocalVariable(name: "prec", scope: !931, file: !1, line: 246, type: !60)
!955 = !DILocation(line: 246, column: 16, scope: !931)
!956 = !DILocation(line: 246, column: 38, scope: !931)
!957 = !DILocation(line: 246, column: 25, scope: !931)
!958 = !DILocalVariable(name: "lolim", scope: !931, file: !1, line: 247, type: !60)
!959 = !DILocation(line: 247, column: 16, scope: !931)
!960 = !DILocation(line: 247, column: 30, scope: !931)
!961 = !DILocalVariable(name: "uplim", scope: !931, file: !1, line: 248, type: !60)
!962 = !DILocation(line: 248, column: 16, scope: !931)
!963 = !DILocation(line: 248, column: 30, scope: !931)
!964 = !DILocation(line: 248, column: 28, scope: !931)
!965 = !DILocalVariable(name: "nmax", scope: !931, file: !1, line: 249, type: !103)
!966 = !DILocation(line: 249, column: 13, scope: !931)
!967 = !DILocation(line: 251, column: 6, scope: !968)
!968 = distinct !DILexicalBlock(scope: !931, file: !1, line: 251, column: 6)
!969 = !DILocation(line: 251, column: 8, scope: !968)
!970 = !DILocation(line: 251, column: 14, scope: !968)
!971 = !DILocation(line: 251, column: 17, scope: !972)
!972 = !DILexicalBlockFile(scope: !968, file: !1, discriminator: 1)
!973 = !DILocation(line: 251, column: 19, scope: !972)
!974 = !DILocation(line: 251, column: 25, scope: !972)
!975 = !DILocation(line: 251, column: 28, scope: !976)
!976 = !DILexicalBlockFile(scope: !968, file: !1, discriminator: 2)
!977 = !DILocation(line: 251, column: 30, scope: !976)
!978 = !DILocation(line: 251, column: 6, scope: !976)
!979 = !DILocation(line: 252, column: 5, scope: !980)
!980 = distinct !DILexicalBlock(scope: !968, file: !1, line: 251, column: 37)
!981 = distinct !{!981, !979}
!982 = !DILocation(line: 252, column: 5, scope: !983)
!983 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 1)
!984 = distinct !DILexicalBlock(scope: !980, file: !1, line: 252, column: 5)
!985 = distinct !{!985, !986}
!986 = !DILocation(line: 252, column: 5, scope: !984)
!987 = !DILocation(line: 252, column: 5, scope: !988)
!988 = !DILexicalBlockFile(scope: !989, file: !1, discriminator: 2)
!989 = distinct !DILexicalBlock(scope: !984, file: !1, line: 252, column: 5)
!990 = !DILocation(line: 252, column: 5, scope: !991)
!991 = !DILexicalBlockFile(scope: !984, file: !1, discriminator: 3)
!992 = !DILocation(line: 253, column: 3, scope: !980)
!993 = !DILocation(line: 254, column: 11, scope: !994)
!994 = distinct !DILexicalBlock(scope: !968, file: !1, line: 254, column: 11)
!995 = !DILocation(line: 254, column: 15, scope: !994)
!996 = !DILocation(line: 254, column: 13, scope: !994)
!997 = !DILocation(line: 254, column: 19, scope: !994)
!998 = !DILocation(line: 254, column: 17, scope: !994)
!999 = !DILocation(line: 254, column: 25, scope: !994)
!1000 = !DILocation(line: 254, column: 28, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !994, file: !1, discriminator: 1)
!1002 = !DILocation(line: 254, column: 32, scope: !1001)
!1003 = !DILocation(line: 254, column: 30, scope: !1001)
!1004 = !DILocation(line: 254, column: 36, scope: !1001)
!1005 = !DILocation(line: 254, column: 34, scope: !1001)
!1006 = !DILocation(line: 254, column: 42, scope: !1001)
!1007 = !DILocation(line: 254, column: 45, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !994, file: !1, discriminator: 2)
!1009 = !DILocation(line: 254, column: 49, scope: !1008)
!1010 = !DILocation(line: 254, column: 47, scope: !1008)
!1011 = !DILocation(line: 254, column: 53, scope: !1008)
!1012 = !DILocation(line: 254, column: 51, scope: !1008)
!1013 = !DILocation(line: 254, column: 59, scope: !1008)
!1014 = !DILocation(line: 254, column: 62, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !994, file: !1, discriminator: 3)
!1016 = !DILocation(line: 254, column: 66, scope: !1015)
!1017 = !DILocation(line: 254, column: 64, scope: !1015)
!1018 = !DILocation(line: 254, column: 11, scope: !1015)
!1019 = !DILocation(line: 255, column: 5, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !994, file: !1, line: 254, column: 73)
!1021 = distinct !{!1021, !1019}
!1022 = !DILocation(line: 255, column: 5, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1024, file: !1, discriminator: 1)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 255, column: 5)
!1025 = distinct !{!1025, !1026}
!1026 = !DILocation(line: 255, column: 5, scope: !1024)
!1027 = !DILocation(line: 255, column: 5, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1029, file: !1, discriminator: 2)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 255, column: 5)
!1030 = !DILocation(line: 255, column: 5, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1024, file: !1, discriminator: 3)
!1032 = !DILocation(line: 256, column: 3, scope: !1020)
!1033 = !DILocation(line: 257, column: 19, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !994, file: !1, line: 257, column: 11)
!1035 = !DILocation(line: 257, column: 21, scope: !1034)
!1036 = !DILocation(line: 257, column: 23, scope: !1034)
!1037 = !DILocation(line: 257, column: 25, scope: !1034)
!1038 = !DILocation(line: 257, column: 11, scope: !1034)
!1039 = !DILocation(line: 257, column: 30, scope: !1034)
!1040 = !DILocation(line: 257, column: 28, scope: !1034)
!1041 = !DILocation(line: 257, column: 11, scope: !994)
!1042 = !DILocalVariable(name: "c1", scope: !1043, file: !1, line: 258, type: !60)
!1043 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 257, column: 37)
!1044 = !DILocation(line: 258, column: 18, scope: !1043)
!1045 = !DILocalVariable(name: "c2", scope: !1043, file: !1, line: 259, type: !60)
!1046 = !DILocation(line: 259, column: 18, scope: !1043)
!1047 = !DILocalVariable(name: "c3", scope: !1043, file: !1, line: 260, type: !60)
!1048 = !DILocation(line: 260, column: 18, scope: !1043)
!1049 = !DILocalVariable(name: "c4", scope: !1043, file: !1, line: 261, type: !60)
!1050 = !DILocation(line: 261, column: 18, scope: !1043)
!1051 = !DILocalVariable(name: "xn", scope: !1043, file: !1, line: 262, type: !47)
!1052 = !DILocation(line: 262, column: 12, scope: !1043)
!1053 = !DILocation(line: 262, column: 17, scope: !1043)
!1054 = !DILocalVariable(name: "yn", scope: !1043, file: !1, line: 263, type: !47)
!1055 = !DILocation(line: 263, column: 12, scope: !1043)
!1056 = !DILocation(line: 263, column: 17, scope: !1043)
!1057 = !DILocalVariable(name: "zn", scope: !1043, file: !1, line: 264, type: !47)
!1058 = !DILocation(line: 264, column: 12, scope: !1043)
!1059 = !DILocation(line: 264, column: 17, scope: !1043)
!1060 = !DILocalVariable(name: "pn", scope: !1043, file: !1, line: 265, type: !47)
!1061 = !DILocation(line: 265, column: 12, scope: !1043)
!1062 = !DILocation(line: 265, column: 17, scope: !1043)
!1063 = !DILocalVariable(name: "sigma", scope: !1043, file: !1, line: 266, type: !47)
!1064 = !DILocation(line: 266, column: 12, scope: !1043)
!1065 = !DILocalVariable(name: "power4", scope: !1043, file: !1, line: 267, type: !47)
!1066 = !DILocation(line: 267, column: 12, scope: !1043)
!1067 = !DILocalVariable(name: "mu", scope: !1043, file: !1, line: 268, type: !47)
!1068 = !DILocation(line: 268, column: 12, scope: !1043)
!1069 = !DILocalVariable(name: "xndev", scope: !1043, file: !1, line: 268, type: !47)
!1070 = !DILocation(line: 268, column: 16, scope: !1043)
!1071 = !DILocalVariable(name: "yndev", scope: !1043, file: !1, line: 268, type: !47)
!1072 = !DILocation(line: 268, column: 23, scope: !1043)
!1073 = !DILocalVariable(name: "zndev", scope: !1043, file: !1, line: 268, type: !47)
!1074 = !DILocation(line: 268, column: 30, scope: !1043)
!1075 = !DILocalVariable(name: "pndev", scope: !1043, file: !1, line: 268, type: !47)
!1076 = !DILocation(line: 268, column: 37, scope: !1043)
!1077 = !DILocalVariable(name: "ea", scope: !1043, file: !1, line: 269, type: !47)
!1078 = !DILocation(line: 269, column: 12, scope: !1043)
!1079 = !DILocalVariable(name: "eb", scope: !1043, file: !1, line: 269, type: !47)
!1080 = !DILocation(line: 269, column: 16, scope: !1043)
!1081 = !DILocalVariable(name: "ec", scope: !1043, file: !1, line: 269, type: !47)
!1082 = !DILocation(line: 269, column: 20, scope: !1043)
!1083 = !DILocalVariable(name: "e2", scope: !1043, file: !1, line: 269, type: !47)
!1084 = !DILocation(line: 269, column: 24, scope: !1043)
!1085 = !DILocalVariable(name: "e3", scope: !1043, file: !1, line: 269, type: !47)
!1086 = !DILocation(line: 269, column: 28, scope: !1043)
!1087 = !DILocalVariable(name: "s1", scope: !1043, file: !1, line: 269, type: !47)
!1088 = !DILocation(line: 269, column: 32, scope: !1043)
!1089 = !DILocalVariable(name: "s2", scope: !1043, file: !1, line: 269, type: !47)
!1090 = !DILocation(line: 269, column: 36, scope: !1043)
!1091 = !DILocalVariable(name: "s3", scope: !1043, file: !1, line: 269, type: !47)
!1092 = !DILocation(line: 269, column: 40, scope: !1043)
!1093 = !DILocalVariable(name: "n", scope: !1043, file: !1, line: 270, type: !46)
!1094 = !DILocation(line: 270, column: 9, scope: !1043)
!1095 = !DILocation(line: 271, column: 5, scope: !1043)
!1096 = !DILocalVariable(name: "xnroot", scope: !1097, file: !1, line: 272, type: !47)
!1097 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 271, column: 14)
!1098 = !DILocation(line: 272, column: 14, scope: !1097)
!1099 = !DILocalVariable(name: "ynroot", scope: !1097, file: !1, line: 272, type: !47)
!1100 = !DILocation(line: 272, column: 22, scope: !1097)
!1101 = !DILocalVariable(name: "znroot", scope: !1097, file: !1, line: 272, type: !47)
!1102 = !DILocation(line: 272, column: 30, scope: !1097)
!1103 = !DILocalVariable(name: "lamda", scope: !1097, file: !1, line: 273, type: !47)
!1104 = !DILocation(line: 273, column: 14, scope: !1097)
!1105 = !DILocalVariable(name: "alfa", scope: !1097, file: !1, line: 273, type: !47)
!1106 = !DILocation(line: 273, column: 21, scope: !1097)
!1107 = !DILocalVariable(name: "beta", scope: !1097, file: !1, line: 273, type: !47)
!1108 = !DILocation(line: 273, column: 27, scope: !1097)
!1109 = !DILocalVariable(name: "epslon", scope: !1097, file: !1, line: 274, type: !47)
!1110 = !DILocation(line: 274, column: 14, scope: !1097)
!1111 = !DILocalVariable(name: "rcresult", scope: !1097, file: !1, line: 275, type: !52)
!1112 = !DILocation(line: 275, column: 21, scope: !1097)
!1113 = !DILocalVariable(name: "rcstatus", scope: !1097, file: !1, line: 276, type: !46)
!1114 = !DILocation(line: 276, column: 11, scope: !1097)
!1115 = !DILocation(line: 277, column: 13, scope: !1097)
!1116 = !DILocation(line: 277, column: 18, scope: !1097)
!1117 = !DILocation(line: 277, column: 16, scope: !1097)
!1118 = !DILocation(line: 277, column: 23, scope: !1097)
!1119 = !DILocation(line: 277, column: 21, scope: !1097)
!1120 = !DILocation(line: 277, column: 28, scope: !1097)
!1121 = !DILocation(line: 277, column: 26, scope: !1097)
!1122 = !DILocation(line: 277, column: 33, scope: !1097)
!1123 = !DILocation(line: 277, column: 31, scope: !1097)
!1124 = !DILocation(line: 277, column: 37, scope: !1097)
!1125 = !DILocation(line: 277, column: 10, scope: !1097)
!1126 = !DILocation(line: 278, column: 16, scope: !1097)
!1127 = !DILocation(line: 278, column: 21, scope: !1097)
!1128 = !DILocation(line: 278, column: 19, scope: !1097)
!1129 = !DILocation(line: 278, column: 27, scope: !1097)
!1130 = !DILocation(line: 278, column: 25, scope: !1097)
!1131 = !DILocation(line: 278, column: 13, scope: !1097)
!1132 = !DILocation(line: 279, column: 16, scope: !1097)
!1133 = !DILocation(line: 279, column: 21, scope: !1097)
!1134 = !DILocation(line: 279, column: 19, scope: !1097)
!1135 = !DILocation(line: 279, column: 27, scope: !1097)
!1136 = !DILocation(line: 279, column: 25, scope: !1097)
!1137 = !DILocation(line: 279, column: 13, scope: !1097)
!1138 = !DILocation(line: 280, column: 16, scope: !1097)
!1139 = !DILocation(line: 280, column: 21, scope: !1097)
!1140 = !DILocation(line: 280, column: 19, scope: !1097)
!1141 = !DILocation(line: 280, column: 27, scope: !1097)
!1142 = !DILocation(line: 280, column: 25, scope: !1097)
!1143 = !DILocation(line: 280, column: 13, scope: !1097)
!1144 = !DILocation(line: 281, column: 16, scope: !1097)
!1145 = !DILocation(line: 281, column: 21, scope: !1097)
!1146 = !DILocation(line: 281, column: 19, scope: !1097)
!1147 = !DILocation(line: 281, column: 27, scope: !1097)
!1148 = !DILocation(line: 281, column: 25, scope: !1097)
!1149 = !DILocation(line: 281, column: 13, scope: !1097)
!1150 = !DILocation(line: 282, column: 29, scope: !1097)
!1151 = !DILocation(line: 282, column: 24, scope: !1097)
!1152 = !DILocation(line: 282, column: 42, scope: !1097)
!1153 = !DILocation(line: 282, column: 37, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1097, file: !1, discriminator: 1)
!1155 = !DILocation(line: 282, column: 55, scope: !1097)
!1156 = !DILocation(line: 282, column: 50, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1097, file: !1, discriminator: 2)
!1158 = !DILocation(line: 282, column: 68, scope: !1097)
!1159 = !DILocation(line: 282, column: 63, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1097, file: !1, discriminator: 3)
!1161 = !DILocation(line: 282, column: 16, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1097, file: !1, discriminator: 4)
!1163 = !DILocation(line: 282, column: 14, scope: !1097)
!1164 = !DILocation(line: 283, column: 10, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 283, column: 10)
!1166 = !DILocation(line: 283, column: 19, scope: !1165)
!1167 = !DILocation(line: 283, column: 17, scope: !1165)
!1168 = !DILocation(line: 283, column: 10, scope: !1097)
!1169 = !DILocation(line: 283, column: 27, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1165, file: !1, discriminator: 1)
!1171 = !DILocation(line: 284, column: 21, scope: !1097)
!1172 = !DILocation(line: 284, column: 16, scope: !1097)
!1173 = !DILocation(line: 284, column: 14, scope: !1097)
!1174 = !DILocation(line: 285, column: 21, scope: !1097)
!1175 = !DILocation(line: 285, column: 16, scope: !1097)
!1176 = !DILocation(line: 285, column: 14, scope: !1097)
!1177 = !DILocation(line: 286, column: 21, scope: !1097)
!1178 = !DILocation(line: 286, column: 16, scope: !1097)
!1179 = !DILocation(line: 286, column: 14, scope: !1097)
!1180 = !DILocation(line: 287, column: 15, scope: !1097)
!1181 = !DILocation(line: 287, column: 25, scope: !1097)
!1182 = !DILocation(line: 287, column: 34, scope: !1097)
!1183 = !DILocation(line: 287, column: 32, scope: !1097)
!1184 = !DILocation(line: 287, column: 22, scope: !1097)
!1185 = !DILocation(line: 287, column: 44, scope: !1097)
!1186 = !DILocation(line: 287, column: 53, scope: !1097)
!1187 = !DILocation(line: 287, column: 51, scope: !1097)
!1188 = !DILocation(line: 287, column: 42, scope: !1097)
!1189 = !DILocation(line: 287, column: 13, scope: !1097)
!1190 = !DILocation(line: 288, column: 14, scope: !1097)
!1191 = !DILocation(line: 288, column: 20, scope: !1097)
!1192 = !DILocation(line: 288, column: 29, scope: !1097)
!1193 = !DILocation(line: 288, column: 27, scope: !1097)
!1194 = !DILocation(line: 288, column: 38, scope: !1097)
!1195 = !DILocation(line: 288, column: 36, scope: !1097)
!1196 = !DILocation(line: 288, column: 17, scope: !1097)
!1197 = !DILocation(line: 288, column: 48, scope: !1097)
!1198 = !DILocation(line: 288, column: 57, scope: !1097)
!1199 = !DILocation(line: 288, column: 55, scope: !1097)
!1200 = !DILocation(line: 288, column: 66, scope: !1097)
!1201 = !DILocation(line: 288, column: 64, scope: !1097)
!1202 = !DILocation(line: 288, column: 46, scope: !1097)
!1203 = !DILocation(line: 288, column: 12, scope: !1097)
!1204 = !DILocation(line: 289, column: 14, scope: !1097)
!1205 = !DILocation(line: 289, column: 21, scope: !1097)
!1206 = !DILocation(line: 289, column: 19, scope: !1097)
!1207 = !DILocation(line: 289, column: 12, scope: !1097)
!1208 = !DILocation(line: 290, column: 14, scope: !1097)
!1209 = !DILocation(line: 290, column: 20, scope: !1097)
!1210 = !DILocation(line: 290, column: 25, scope: !1097)
!1211 = !DILocation(line: 290, column: 23, scope: !1097)
!1212 = !DILocation(line: 290, column: 17, scope: !1097)
!1213 = !DILocation(line: 290, column: 35, scope: !1097)
!1214 = !DILocation(line: 290, column: 40, scope: !1097)
!1215 = !DILocation(line: 290, column: 38, scope: !1097)
!1216 = !DILocation(line: 290, column: 32, scope: !1097)
!1217 = !DILocation(line: 290, column: 12, scope: !1097)
!1218 = !DILocation(line: 291, column: 37, scope: !1097)
!1219 = !DILocation(line: 291, column: 43, scope: !1097)
!1220 = !DILocation(line: 291, column: 49, scope: !1097)
!1221 = !DILocation(line: 291, column: 18, scope: !1097)
!1222 = !DILocation(line: 291, column: 16, scope: !1097)
!1223 = !DILocation(line: 292, column: 10, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 292, column: 10)
!1225 = !DILocation(line: 292, column: 19, scope: !1224)
!1226 = !DILocation(line: 292, column: 10, scope: !1097)
!1227 = !DILocation(line: 293, column: 9, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !1, line: 292, column: 35)
!1229 = !DILocation(line: 293, column: 17, scope: !1228)
!1230 = !DILocation(line: 293, column: 21, scope: !1228)
!1231 = !DILocation(line: 294, column: 9, scope: !1228)
!1232 = !DILocation(line: 294, column: 17, scope: !1228)
!1233 = !DILocation(line: 294, column: 21, scope: !1228)
!1234 = !DILocation(line: 295, column: 16, scope: !1228)
!1235 = !DILocation(line: 295, column: 9, scope: !1228)
!1236 = !DILocation(line: 297, column: 17, scope: !1097)
!1237 = !DILocation(line: 297, column: 35, scope: !1097)
!1238 = !DILocation(line: 297, column: 24, scope: !1097)
!1239 = !DILocation(line: 297, column: 14, scope: !1097)
!1240 = !DILocation(line: 298, column: 14, scope: !1097)
!1241 = !DILocation(line: 299, column: 13, scope: !1097)
!1242 = !DILocation(line: 299, column: 18, scope: !1097)
!1243 = !DILocation(line: 299, column: 16, scope: !1097)
!1244 = !DILocation(line: 299, column: 25, scope: !1097)
!1245 = !DILocation(line: 299, column: 10, scope: !1097)
!1246 = !DILocation(line: 300, column: 13, scope: !1097)
!1247 = !DILocation(line: 300, column: 18, scope: !1097)
!1248 = !DILocation(line: 300, column: 16, scope: !1097)
!1249 = !DILocation(line: 300, column: 25, scope: !1097)
!1250 = !DILocation(line: 300, column: 10, scope: !1097)
!1251 = !DILocation(line: 301, column: 13, scope: !1097)
!1252 = !DILocation(line: 301, column: 18, scope: !1097)
!1253 = !DILocation(line: 301, column: 16, scope: !1097)
!1254 = !DILocation(line: 301, column: 25, scope: !1097)
!1255 = !DILocation(line: 301, column: 10, scope: !1097)
!1256 = !DILocation(line: 302, column: 13, scope: !1097)
!1257 = !DILocation(line: 302, column: 18, scope: !1097)
!1258 = !DILocation(line: 302, column: 16, scope: !1097)
!1259 = !DILocation(line: 302, column: 25, scope: !1097)
!1260 = !DILocation(line: 302, column: 10, scope: !1097)
!1261 = !DILocation(line: 303, column: 8, scope: !1097)
!1262 = !DILocation(line: 304, column: 10, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 304, column: 10)
!1264 = !DILocation(line: 304, column: 11, scope: !1263)
!1265 = !DILocation(line: 304, column: 10, scope: !1097)
!1266 = !DILocation(line: 305, column: 9, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 304, column: 19)
!1268 = distinct !{!1268, !1266}
!1269 = !DILocation(line: 305, column: 9, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1271, file: !1, discriminator: 1)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 305, column: 9)
!1272 = distinct !{!1272, !1273}
!1273 = !DILocation(line: 305, column: 9, scope: !1271)
!1274 = !DILocation(line: 305, column: 9, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1276, file: !1, discriminator: 2)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 305, column: 9)
!1277 = !DILocation(line: 305, column: 9, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1271, file: !1, discriminator: 3)
!1279 = !DILocation(line: 306, column: 7, scope: !1267)
!1280 = !DILocation(line: 271, column: 5, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1043, file: !1, discriminator: 1)
!1282 = distinct !{!1282, !1095}
!1283 = !DILocation(line: 309, column: 10, scope: !1043)
!1284 = !DILocation(line: 309, column: 19, scope: !1043)
!1285 = !DILocation(line: 309, column: 27, scope: !1043)
!1286 = !DILocation(line: 309, column: 25, scope: !1043)
!1287 = !DILocation(line: 309, column: 16, scope: !1043)
!1288 = !DILocation(line: 309, column: 36, scope: !1043)
!1289 = !DILocation(line: 309, column: 44, scope: !1043)
!1290 = !DILocation(line: 309, column: 42, scope: !1043)
!1291 = !DILocation(line: 309, column: 34, scope: !1043)
!1292 = !DILocation(line: 309, column: 8, scope: !1043)
!1293 = !DILocation(line: 310, column: 10, scope: !1043)
!1294 = !DILocation(line: 310, column: 18, scope: !1043)
!1295 = !DILocation(line: 310, column: 16, scope: !1043)
!1296 = !DILocation(line: 310, column: 26, scope: !1043)
!1297 = !DILocation(line: 310, column: 24, scope: !1043)
!1298 = !DILocation(line: 310, column: 8, scope: !1043)
!1299 = !DILocation(line: 311, column: 10, scope: !1043)
!1300 = !DILocation(line: 311, column: 18, scope: !1043)
!1301 = !DILocation(line: 311, column: 16, scope: !1043)
!1302 = !DILocation(line: 311, column: 8, scope: !1043)
!1303 = !DILocation(line: 312, column: 10, scope: !1043)
!1304 = !DILocation(line: 312, column: 21, scope: !1043)
!1305 = !DILocation(line: 312, column: 19, scope: !1043)
!1306 = !DILocation(line: 312, column: 13, scope: !1043)
!1307 = !DILocation(line: 312, column: 8, scope: !1043)
!1308 = !DILocation(line: 313, column: 10, scope: !1043)
!1309 = !DILocation(line: 313, column: 21, scope: !1043)
!1310 = !DILocation(line: 313, column: 19, scope: !1043)
!1311 = !DILocation(line: 313, column: 30, scope: !1043)
!1312 = !DILocation(line: 313, column: 35, scope: !1043)
!1313 = !DILocation(line: 313, column: 33, scope: !1043)
!1314 = !DILocation(line: 313, column: 27, scope: !1043)
!1315 = !DILocation(line: 313, column: 13, scope: !1043)
!1316 = !DILocation(line: 313, column: 8, scope: !1043)
!1317 = !DILocation(line: 314, column: 16, scope: !1043)
!1318 = !DILocation(line: 314, column: 41, scope: !1043)
!1319 = !DILocation(line: 314, column: 39, scope: !1043)
!1320 = !DILocation(line: 314, column: 27, scope: !1043)
!1321 = !DILocation(line: 314, column: 57, scope: !1043)
!1322 = !DILocation(line: 314, column: 55, scope: !1043)
!1323 = !DILocation(line: 314, column: 44, scope: !1043)
!1324 = !DILocation(line: 314, column: 19, scope: !1043)
!1325 = !DILocation(line: 314, column: 14, scope: !1043)
!1326 = !DILocation(line: 314, column: 8, scope: !1043)
!1327 = !DILocation(line: 315, column: 10, scope: !1043)
!1328 = !DILocation(line: 315, column: 27, scope: !1043)
!1329 = !DILocation(line: 315, column: 48, scope: !1043)
!1330 = !DILocation(line: 315, column: 54, scope: !1043)
!1331 = !DILocation(line: 315, column: 46, scope: !1043)
!1332 = !DILocation(line: 315, column: 33, scope: !1043)
!1333 = !DILocation(line: 315, column: 25, scope: !1043)
!1334 = !DILocation(line: 315, column: 13, scope: !1043)
!1335 = !DILocation(line: 315, column: 8, scope: !1043)
!1336 = !DILocation(line: 316, column: 10, scope: !1043)
!1337 = !DILocation(line: 316, column: 18, scope: !1043)
!1338 = !DILocation(line: 316, column: 16, scope: !1043)
!1339 = !DILocation(line: 316, column: 29, scope: !1043)
!1340 = !DILocation(line: 316, column: 35, scope: !1043)
!1341 = !DILocation(line: 316, column: 27, scope: !1043)
!1342 = !DILocation(line: 316, column: 21, scope: !1043)
!1343 = !DILocation(line: 316, column: 48, scope: !1043)
!1344 = !DILocation(line: 316, column: 46, scope: !1043)
!1345 = !DILocation(line: 316, column: 56, scope: !1043)
!1346 = !DILocation(line: 316, column: 54, scope: !1043)
!1347 = !DILocation(line: 316, column: 41, scope: !1043)
!1348 = !DILocation(line: 316, column: 8, scope: !1043)
!1349 = !DILocation(line: 317, column: 25, scope: !1043)
!1350 = !DILocation(line: 317, column: 23, scope: !1043)
!1351 = !DILocation(line: 317, column: 33, scope: !1043)
!1352 = !DILocation(line: 317, column: 43, scope: !1043)
!1353 = !DILocation(line: 317, column: 48, scope: !1043)
!1354 = !DILocation(line: 317, column: 46, scope: !1043)
!1355 = !DILocation(line: 317, column: 53, scope: !1043)
!1356 = !DILocation(line: 317, column: 51, scope: !1043)
!1357 = !DILocation(line: 317, column: 40, scope: !1043)
!1358 = !DILocation(line: 317, column: 60, scope: !1043)
!1359 = !DILocation(line: 317, column: 70, scope: !1043)
!1360 = !DILocation(line: 317, column: 65, scope: !1043)
!1361 = !DILocation(line: 317, column: 63, scope: !1043)
!1362 = !DILocation(line: 317, column: 57, scope: !1043)
!1363 = !DILocation(line: 317, column: 31, scope: !1043)
!1364 = !DILocation(line: 317, column: 5, scope: !1043)
!1365 = !DILocation(line: 317, column: 13, scope: !1043)
!1366 = !DILocation(line: 317, column: 17, scope: !1043)
!1367 = !DILocation(line: 318, column: 19, scope: !1043)
!1368 = !DILocation(line: 318, column: 31, scope: !1043)
!1369 = !DILocation(line: 318, column: 39, scope: !1043)
!1370 = !DILocation(line: 318, column: 26, scope: !1043)
!1371 = !DILocation(line: 318, column: 24, scope: !1043)
!1372 = !DILocation(line: 318, column: 5, scope: !1043)
!1373 = !DILocation(line: 318, column: 13, scope: !1043)
!1374 = !DILocation(line: 318, column: 17, scope: !1043)
!1375 = !DILocation(line: 319, column: 5, scope: !1043)
!1376 = !DILocation(line: 322, column: 5, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 321, column: 8)
!1378 = distinct !{!1378, !1376}
!1379 = !DILocation(line: 322, column: 5, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1381, file: !1, discriminator: 1)
!1381 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 322, column: 5)
!1382 = distinct !{!1382, !1383}
!1383 = !DILocation(line: 322, column: 5, scope: !1381)
!1384 = !DILocation(line: 322, column: 5, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1386, file: !1, discriminator: 2)
!1386 = distinct !DILexicalBlock(scope: !1381, file: !1, line: 322, column: 5)
!1387 = !DILocation(line: 322, column: 5, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1381, file: !1, discriminator: 3)
!1389 = !DILocation(line: 324, column: 1, scope: !931)
!1390 = distinct !DISubprogram(name: "locMAX4", scope: !1, file: !1, line: 40, type: !1391, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!47, !47, !47, !47, !47}
!1393 = !DILocalVariable(name: "x", arg: 1, scope: !1390, file: !1, line: 40, type: !47)
!1394 = !DILocation(line: 40, column: 30, scope: !1390)
!1395 = !DILocalVariable(name: "y", arg: 2, scope: !1390, file: !1, line: 40, type: !47)
!1396 = !DILocation(line: 40, column: 40, scope: !1390)
!1397 = !DILocalVariable(name: "z", arg: 3, scope: !1390, file: !1, line: 40, type: !47)
!1398 = !DILocation(line: 40, column: 50, scope: !1390)
!1399 = !DILocalVariable(name: "w", arg: 4, scope: !1390, file: !1, line: 40, type: !47)
!1400 = !DILocation(line: 40, column: 60, scope: !1390)
!1401 = !DILocalVariable(name: "xy", scope: !1390, file: !1, line: 42, type: !47)
!1402 = !DILocation(line: 42, column: 10, scope: !1390)
!1403 = !DILocation(line: 42, column: 16, scope: !1390)
!1404 = !DILocation(line: 42, column: 16, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1390, file: !1, discriminator: 1)
!1406 = !DILocation(line: 42, column: 16, scope: !1407)
!1407 = !DILexicalBlockFile(scope: !1390, file: !1, discriminator: 2)
!1408 = !DILocation(line: 42, column: 16, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1390, file: !1, discriminator: 3)
!1410 = !DILocation(line: 42, column: 10, scope: !1409)
!1411 = !DILocalVariable(name: "xyz", scope: !1390, file: !1, line: 43, type: !47)
!1412 = !DILocation(line: 43, column: 10, scope: !1390)
!1413 = !DILocation(line: 43, column: 16, scope: !1390)
!1414 = !DILocation(line: 43, column: 16, scope: !1405)
!1415 = !DILocation(line: 43, column: 16, scope: !1407)
!1416 = !DILocation(line: 43, column: 16, scope: !1409)
!1417 = !DILocation(line: 43, column: 10, scope: !1409)
!1418 = !DILocation(line: 44, column: 10, scope: !1390)
!1419 = !DILocation(line: 44, column: 10, scope: !1405)
!1420 = !DILocation(line: 44, column: 10, scope: !1407)
!1421 = !DILocation(line: 44, column: 10, scope: !1409)
!1422 = !DILocation(line: 44, column: 3, scope: !1409)
!1423 = distinct !DISubprogram(name: "gsl_sf_ellint_F_e", scope: !1, file: !1, line: 329, type: !72, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1424 = !DILocalVariable(name: "phi", arg: 1, scope: !1423, file: !1, line: 329, type: !47)
!1425 = !DILocation(line: 329, column: 26, scope: !1423)
!1426 = !DILocalVariable(name: "k", arg: 2, scope: !1423, file: !1, line: 329, type: !47)
!1427 = !DILocation(line: 329, column: 38, scope: !1423)
!1428 = !DILocalVariable(name: "mode", arg: 3, scope: !1423, file: !1, line: 329, type: !48)
!1429 = !DILocation(line: 329, column: 52, scope: !1423)
!1430 = !DILocalVariable(name: "result", arg: 4, scope: !1423, file: !1, line: 329, type: !51)
!1431 = !DILocation(line: 329, column: 74, scope: !1423)
!1432 = !DILocalVariable(name: "nc", scope: !1423, file: !1, line: 334, type: !47)
!1433 = !DILocation(line: 334, column: 10, scope: !1423)
!1434 = !DILocation(line: 334, column: 21, scope: !1423)
!1435 = !DILocation(line: 334, column: 24, scope: !1423)
!1436 = !DILocation(line: 334, column: 30, scope: !1423)
!1437 = !DILocation(line: 334, column: 15, scope: !1423)
!1438 = !DILocalVariable(name: "phi_red", scope: !1423, file: !1, line: 335, type: !47)
!1439 = !DILocation(line: 335, column: 10, scope: !1423)
!1440 = !DILocation(line: 335, column: 20, scope: !1423)
!1441 = !DILocation(line: 335, column: 26, scope: !1423)
!1442 = !DILocation(line: 335, column: 29, scope: !1423)
!1443 = !DILocation(line: 335, column: 24, scope: !1423)
!1444 = !DILocation(line: 336, column: 9, scope: !1423)
!1445 = !DILocation(line: 336, column: 7, scope: !1423)
!1446 = !DILocalVariable(name: "sin_phi", scope: !1447, file: !1, line: 339, type: !47)
!1447 = distinct !DILexicalBlock(scope: !1423, file: !1, line: 338, column: 3)
!1448 = !DILocation(line: 339, column: 12, scope: !1447)
!1449 = !DILocation(line: 339, column: 27, scope: !1447)
!1450 = !DILocation(line: 339, column: 23, scope: !1447)
!1451 = !DILocalVariable(name: "sin2_phi", scope: !1447, file: !1, line: 340, type: !47)
!1452 = !DILocation(line: 340, column: 12, scope: !1447)
!1453 = !DILocation(line: 340, column: 23, scope: !1447)
!1454 = !DILocation(line: 340, column: 31, scope: !1447)
!1455 = !DILocation(line: 340, column: 30, scope: !1447)
!1456 = !DILocalVariable(name: "x", scope: !1447, file: !1, line: 341, type: !47)
!1457 = !DILocation(line: 341, column: 12, scope: !1447)
!1458 = !DILocation(line: 341, column: 22, scope: !1447)
!1459 = !DILocation(line: 341, column: 20, scope: !1447)
!1460 = !DILocalVariable(name: "y", scope: !1447, file: !1, line: 342, type: !47)
!1461 = !DILocation(line: 342, column: 12, scope: !1447)
!1462 = !DILocation(line: 342, column: 22, scope: !1447)
!1463 = !DILocation(line: 342, column: 24, scope: !1447)
!1464 = !DILocation(line: 342, column: 23, scope: !1447)
!1465 = !DILocation(line: 342, column: 26, scope: !1447)
!1466 = !DILocation(line: 342, column: 25, scope: !1447)
!1467 = !DILocation(line: 342, column: 20, scope: !1447)
!1468 = !DILocalVariable(name: "rf", scope: !1447, file: !1, line: 343, type: !52)
!1469 = !DILocation(line: 343, column: 19, scope: !1447)
!1470 = !DILocalVariable(name: "status", scope: !1447, file: !1, line: 344, type: !46)
!1471 = !DILocation(line: 344, column: 9, scope: !1447)
!1472 = !DILocation(line: 344, column: 37, scope: !1447)
!1473 = !DILocation(line: 344, column: 40, scope: !1447)
!1474 = !DILocation(line: 344, column: 48, scope: !1447)
!1475 = !DILocation(line: 344, column: 18, scope: !1447)
!1476 = !DILocation(line: 345, column: 19, scope: !1447)
!1477 = !DILocation(line: 345, column: 32, scope: !1447)
!1478 = !DILocation(line: 345, column: 27, scope: !1447)
!1479 = !DILocation(line: 345, column: 5, scope: !1447)
!1480 = !DILocation(line: 345, column: 13, scope: !1447)
!1481 = !DILocation(line: 345, column: 17, scope: !1447)
!1482 = !DILocation(line: 346, column: 42, scope: !1447)
!1483 = !DILocation(line: 346, column: 50, scope: !1447)
!1484 = !DILocation(line: 346, column: 37, scope: !1447)
!1485 = !DILocation(line: 346, column: 35, scope: !1447)
!1486 = !DILocation(line: 346, column: 62, scope: !1447)
!1487 = !DILocation(line: 346, column: 73, scope: !1447)
!1488 = !DILocation(line: 346, column: 69, scope: !1447)
!1489 = !DILocation(line: 346, column: 57, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1447, file: !1, discriminator: 1)
!1491 = !DILocation(line: 346, column: 55, scope: !1447)
!1492 = !DILocation(line: 346, column: 5, scope: !1447)
!1493 = !DILocation(line: 346, column: 13, scope: !1447)
!1494 = !DILocation(line: 346, column: 17, scope: !1447)
!1495 = !DILocation(line: 347, column: 9, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1447, file: !1, line: 347, column: 9)
!1497 = !DILocation(line: 347, column: 12, scope: !1496)
!1498 = !DILocation(line: 347, column: 9, scope: !1447)
!1499 = !DILocation(line: 348, column: 14, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !1, line: 347, column: 18)
!1501 = !DILocation(line: 348, column: 7, scope: !1500)
!1502 = !DILocalVariable(name: "rk", scope: !1503, file: !1, line: 350, type: !52)
!1503 = distinct !DILexicalBlock(scope: !1496, file: !1, line: 349, column: 12)
!1504 = !DILocation(line: 350, column: 21, scope: !1503)
!1505 = !DILocalVariable(name: "rkstatus", scope: !1503, file: !1, line: 351, type: !103)
!1506 = !DILocation(line: 351, column: 17, scope: !1503)
!1507 = !DILocation(line: 351, column: 50, scope: !1503)
!1508 = !DILocation(line: 351, column: 53, scope: !1503)
!1509 = !DILocation(line: 351, column: 28, scope: !1503)
!1510 = !DILocation(line: 352, column: 24, scope: !1503)
!1511 = !DILocation(line: 352, column: 23, scope: !1503)
!1512 = !DILocation(line: 352, column: 30, scope: !1503)
!1513 = !DILocation(line: 352, column: 26, scope: !1503)
!1514 = !DILocation(line: 352, column: 7, scope: !1503)
!1515 = !DILocation(line: 352, column: 15, scope: !1503)
!1516 = !DILocation(line: 352, column: 19, scope: !1503)
!1517 = !DILocation(line: 353, column: 29, scope: !1503)
!1518 = !DILocation(line: 353, column: 24, scope: !1503)
!1519 = !DILocation(line: 353, column: 23, scope: !1503)
!1520 = !DILocation(line: 353, column: 36, scope: !1503)
!1521 = !DILocation(line: 353, column: 32, scope: !1503)
!1522 = !DILocation(line: 353, column: 7, scope: !1503)
!1523 = !DILocation(line: 353, column: 15, scope: !1503)
!1524 = !DILocation(line: 353, column: 19, scope: !1503)
!1525 = !DILocation(line: 354, column: 14, scope: !1503)
!1526 = !DILocation(line: 354, column: 14, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1503, file: !1, discriminator: 1)
!1528 = !DILocation(line: 354, column: 14, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1503, file: !1, discriminator: 2)
!1530 = !DILocation(line: 354, column: 14, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !1503, file: !1, discriminator: 3)
!1532 = !DILocation(line: 354, column: 14, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1503, file: !1, discriminator: 4)
!1534 = !DILocation(line: 354, column: 14, scope: !1535)
!1535 = !DILexicalBlockFile(scope: !1503, file: !1, discriminator: 5)
!1536 = !DILocation(line: 354, column: 14, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1503, file: !1, discriminator: 6)
!1538 = !DILocation(line: 354, column: 7, scope: !1537)
!1539 = !DILocation(line: 357, column: 1, scope: !1423)
!1540 = !DILocalVariable(name: "k", arg: 1, scope: !43, file: !1, line: 502, type: !47)
!1541 = !DILocation(line: 502, column: 30, scope: !43)
!1542 = !DILocalVariable(name: "mode", arg: 2, scope: !43, file: !1, line: 502, type: !48)
!1543 = !DILocation(line: 502, column: 44, scope: !43)
!1544 = !DILocalVariable(name: "result", arg: 3, scope: !43, file: !1, line: 502, type: !51)
!1545 = !DILocation(line: 502, column: 66, scope: !43)
!1546 = !DILocation(line: 504, column: 6, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !43, file: !1, line: 504, column: 6)
!1548 = !DILocation(line: 504, column: 8, scope: !1547)
!1549 = !DILocation(line: 504, column: 7, scope: !1547)
!1550 = !DILocation(line: 504, column: 10, scope: !1547)
!1551 = !DILocation(line: 504, column: 6, scope: !43)
!1552 = !DILocation(line: 505, column: 5, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1547, file: !1, line: 504, column: 18)
!1554 = distinct !{!1554, !1552}
!1555 = !DILocation(line: 505, column: 5, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1557, file: !1, discriminator: 1)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !1, line: 505, column: 5)
!1558 = distinct !{!1558, !1559}
!1559 = !DILocation(line: 505, column: 5, scope: !1557)
!1560 = !DILocation(line: 505, column: 5, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1562, file: !1, discriminator: 2)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !1, line: 505, column: 5)
!1563 = !DILocation(line: 505, column: 5, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1557, file: !1, discriminator: 3)
!1565 = !DILocation(line: 506, column: 3, scope: !1553)
!1566 = !DILocation(line: 507, column: 11, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1547, file: !1, line: 507, column: 11)
!1568 = !DILocation(line: 507, column: 13, scope: !1567)
!1569 = !DILocation(line: 507, column: 12, scope: !1567)
!1570 = !DILocation(line: 507, column: 15, scope: !1567)
!1571 = !DILocation(line: 507, column: 11, scope: !1547)
!1572 = !DILocalVariable(name: "y", scope: !1573, file: !1, line: 509, type: !60)
!1573 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 507, column: 46)
!1574 = !DILocation(line: 509, column: 18, scope: !1573)
!1575 = !DILocation(line: 509, column: 28, scope: !1573)
!1576 = !DILocation(line: 509, column: 30, scope: !1573)
!1577 = !DILocation(line: 509, column: 29, scope: !1573)
!1578 = !DILocation(line: 509, column: 26, scope: !1573)
!1579 = !DILocalVariable(name: "ta", scope: !1573, file: !1, line: 512, type: !60)
!1580 = !DILocation(line: 512, column: 18, scope: !1573)
!1581 = !DILocation(line: 512, column: 23, scope: !1573)
!1582 = !DILocation(line: 512, column: 30, scope: !1573)
!1583 = !DILocation(line: 512, column: 33, scope: !1573)
!1584 = !DILocation(line: 512, column: 40, scope: !1573)
!1585 = !DILocation(line: 512, column: 42, scope: !1573)
!1586 = !DILocation(line: 512, column: 41, scope: !1573)
!1587 = !DILocation(line: 512, column: 38, scope: !1573)
!1588 = !DILocation(line: 512, column: 31, scope: !1573)
!1589 = !DILocation(line: 512, column: 28, scope: !1573)
!1590 = !DILocalVariable(name: "tb", scope: !1573, file: !1, line: 513, type: !60)
!1591 = !DILocation(line: 513, column: 18, scope: !1573)
!1592 = !DILocation(line: 513, column: 28, scope: !1573)
!1593 = !DILocation(line: 513, column: 24, scope: !1573)
!1594 = !DILocation(line: 513, column: 23, scope: !1573)
!1595 = !DILocation(line: 513, column: 34, scope: !1573)
!1596 = !DILocation(line: 513, column: 41, scope: !1573)
!1597 = !DILocation(line: 513, column: 44, scope: !1573)
!1598 = !DILocation(line: 513, column: 51, scope: !1573)
!1599 = !DILocation(line: 513, column: 53, scope: !1573)
!1600 = !DILocation(line: 513, column: 52, scope: !1573)
!1601 = !DILocation(line: 513, column: 49, scope: !1573)
!1602 = !DILocation(line: 513, column: 42, scope: !1573)
!1603 = !DILocation(line: 513, column: 39, scope: !1573)
!1604 = !DILocation(line: 513, column: 31, scope: !1573)
!1605 = !DILocation(line: 514, column: 19, scope: !1573)
!1606 = !DILocation(line: 514, column: 24, scope: !1573)
!1607 = !DILocation(line: 514, column: 22, scope: !1573)
!1608 = !DILocation(line: 514, column: 5, scope: !1573)
!1609 = !DILocation(line: 514, column: 13, scope: !1573)
!1610 = !DILocation(line: 514, column: 17, scope: !1573)
!1611 = !DILocation(line: 515, column: 49, scope: !1573)
!1612 = !DILocation(line: 515, column: 57, scope: !1573)
!1613 = !DILocation(line: 515, column: 44, scope: !1573)
!1614 = !DILocation(line: 515, column: 69, scope: !1573)
!1615 = !DILocation(line: 515, column: 71, scope: !1573)
!1616 = !DILocation(line: 515, column: 70, scope: !1573)
!1617 = !DILocation(line: 515, column: 64, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1573, file: !1, discriminator: 1)
!1619 = !DILocation(line: 515, column: 62, scope: !1573)
!1620 = !DILocation(line: 515, column: 41, scope: !1573)
!1621 = !DILocation(line: 515, column: 5, scope: !1573)
!1622 = !DILocation(line: 515, column: 13, scope: !1573)
!1623 = !DILocation(line: 515, column: 17, scope: !1573)
!1624 = !DILocation(line: 516, column: 5, scope: !1573)
!1625 = !DILocalVariable(name: "y", scope: !1626, file: !1, line: 529, type: !47)
!1626 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 518, column: 8)
!1627 = !DILocation(line: 529, column: 12, scope: !1626)
!1628 = !DILocation(line: 529, column: 22, scope: !1626)
!1629 = !DILocation(line: 529, column: 24, scope: !1626)
!1630 = !DILocation(line: 529, column: 23, scope: !1626)
!1631 = !DILocation(line: 529, column: 20, scope: !1626)
!1632 = !DILocalVariable(name: "status", scope: !1626, file: !1, line: 530, type: !46)
!1633 = !DILocation(line: 530, column: 9, scope: !1626)
!1634 = !DILocation(line: 530, column: 42, scope: !1626)
!1635 = !DILocation(line: 530, column: 50, scope: !1626)
!1636 = !DILocation(line: 530, column: 56, scope: !1626)
!1637 = !DILocation(line: 530, column: 18, scope: !1626)
!1638 = !DILocation(line: 531, column: 44, scope: !1626)
!1639 = !DILocation(line: 531, column: 42, scope: !1626)
!1640 = !DILocation(line: 531, column: 5, scope: !1626)
!1641 = !DILocation(line: 531, column: 13, scope: !1626)
!1642 = !DILocation(line: 531, column: 17, scope: !1626)
!1643 = !DILocation(line: 532, column: 12, scope: !1626)
!1644 = !DILocation(line: 532, column: 5, scope: !1626)
!1645 = !DILocation(line: 534, column: 1, scope: !43)
!1646 = distinct !DISubprogram(name: "gsl_sf_ellint_E_e", scope: !1, file: !1, line: 362, type: !72, isLocal: false, isDefinition: true, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1647 = !DILocalVariable(name: "phi", arg: 1, scope: !1646, file: !1, line: 362, type: !47)
!1648 = !DILocation(line: 362, column: 26, scope: !1646)
!1649 = !DILocalVariable(name: "k", arg: 2, scope: !1646, file: !1, line: 362, type: !47)
!1650 = !DILocation(line: 362, column: 38, scope: !1646)
!1651 = !DILocalVariable(name: "mode", arg: 3, scope: !1646, file: !1, line: 362, type: !48)
!1652 = !DILocation(line: 362, column: 52, scope: !1646)
!1653 = !DILocalVariable(name: "result", arg: 4, scope: !1646, file: !1, line: 362, type: !51)
!1654 = !DILocation(line: 362, column: 74, scope: !1646)
!1655 = !DILocalVariable(name: "nc", scope: !1646, file: !1, line: 367, type: !47)
!1656 = !DILocation(line: 367, column: 10, scope: !1646)
!1657 = !DILocation(line: 367, column: 21, scope: !1646)
!1658 = !DILocation(line: 367, column: 24, scope: !1646)
!1659 = !DILocation(line: 367, column: 30, scope: !1646)
!1660 = !DILocation(line: 367, column: 15, scope: !1646)
!1661 = !DILocalVariable(name: "phi_red", scope: !1646, file: !1, line: 368, type: !47)
!1662 = !DILocation(line: 368, column: 10, scope: !1646)
!1663 = !DILocation(line: 368, column: 20, scope: !1646)
!1664 = !DILocation(line: 368, column: 26, scope: !1646)
!1665 = !DILocation(line: 368, column: 29, scope: !1646)
!1666 = !DILocation(line: 368, column: 24, scope: !1646)
!1667 = !DILocation(line: 369, column: 9, scope: !1646)
!1668 = !DILocation(line: 369, column: 7, scope: !1646)
!1669 = !DILocalVariable(name: "sin_phi", scope: !1670, file: !1, line: 372, type: !60)
!1670 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 371, column: 3)
!1671 = !DILocation(line: 372, column: 18, scope: !1670)
!1672 = !DILocation(line: 372, column: 33, scope: !1670)
!1673 = !DILocation(line: 372, column: 29, scope: !1670)
!1674 = !DILocalVariable(name: "sin2_phi", scope: !1670, file: !1, line: 373, type: !60)
!1675 = !DILocation(line: 373, column: 18, scope: !1670)
!1676 = !DILocation(line: 373, column: 29, scope: !1670)
!1677 = !DILocation(line: 373, column: 40, scope: !1670)
!1678 = !DILocation(line: 373, column: 38, scope: !1670)
!1679 = !DILocalVariable(name: "x", scope: !1670, file: !1, line: 374, type: !60)
!1680 = !DILocation(line: 374, column: 18, scope: !1670)
!1681 = !DILocation(line: 374, column: 28, scope: !1670)
!1682 = !DILocation(line: 374, column: 26, scope: !1670)
!1683 = !DILocalVariable(name: "y", scope: !1670, file: !1, line: 375, type: !60)
!1684 = !DILocation(line: 375, column: 18, scope: !1670)
!1685 = !DILocation(line: 375, column: 28, scope: !1670)
!1686 = !DILocation(line: 375, column: 30, scope: !1670)
!1687 = !DILocation(line: 375, column: 29, scope: !1670)
!1688 = !DILocation(line: 375, column: 32, scope: !1670)
!1689 = !DILocation(line: 375, column: 31, scope: !1670)
!1690 = !DILocation(line: 375, column: 26, scope: !1670)
!1691 = !DILocation(line: 377, column: 8, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1670, file: !1, line: 377, column: 8)
!1693 = !DILocation(line: 377, column: 10, scope: !1692)
!1694 = !DILocation(line: 377, column: 8, scope: !1670)
!1695 = !DILocalVariable(name: "re", scope: !1696, file: !1, line: 378, type: !52)
!1696 = distinct !DILexicalBlock(scope: !1692, file: !1, line: 377, column: 29)
!1697 = !DILocation(line: 378, column: 21, scope: !1696)
!1698 = !DILocalVariable(name: "status", scope: !1696, file: !1, line: 379, type: !103)
!1699 = !DILocation(line: 379, column: 17, scope: !1696)
!1700 = !DILocation(line: 379, column: 48, scope: !1696)
!1701 = !DILocation(line: 379, column: 51, scope: !1696)
!1702 = !DILocation(line: 379, column: 26, scope: !1696)
!1703 = !DILocation(line: 381, column: 23, scope: !1696)
!1704 = !DILocation(line: 381, column: 22, scope: !1696)
!1705 = !DILocation(line: 381, column: 29, scope: !1696)
!1706 = !DILocation(line: 381, column: 25, scope: !1696)
!1707 = !DILocation(line: 381, column: 35, scope: !1696)
!1708 = !DILocation(line: 381, column: 58, scope: !1696)
!1709 = !DILocation(line: 381, column: 53, scope: !1696)
!1710 = !DILocation(line: 381, column: 33, scope: !1696)
!1711 = !DILocation(line: 381, column: 7, scope: !1696)
!1712 = !DILocation(line: 381, column: 15, scope: !1696)
!1713 = !DILocation(line: 381, column: 19, scope: !1696)
!1714 = !DILocation(line: 382, column: 28, scope: !1696)
!1715 = !DILocation(line: 382, column: 23, scope: !1696)
!1716 = !DILocation(line: 382, column: 22, scope: !1696)
!1717 = !DILocation(line: 382, column: 35, scope: !1696)
!1718 = !DILocation(line: 382, column: 31, scope: !1696)
!1719 = !DILocation(line: 382, column: 44, scope: !1696)
!1720 = !DILocation(line: 382, column: 39, scope: !1696)
!1721 = !DILocation(line: 382, column: 7, scope: !1696)
!1722 = !DILocation(line: 382, column: 15, scope: !1696)
!1723 = !DILocation(line: 382, column: 19, scope: !1696)
!1724 = !DILocation(line: 383, column: 14, scope: !1696)
!1725 = !DILocation(line: 383, column: 7, scope: !1696)
!1726 = !DILocalVariable(name: "rf", scope: !1727, file: !1, line: 386, type: !52)
!1727 = distinct !DILexicalBlock(scope: !1692, file: !1, line: 385, column: 10)
!1728 = !DILocation(line: 386, column: 21, scope: !1727)
!1729 = !DILocalVariable(name: "rd", scope: !1727, file: !1, line: 386, type: !52)
!1730 = !DILocation(line: 386, column: 25, scope: !1727)
!1731 = !DILocalVariable(name: "sin3_phi", scope: !1727, file: !1, line: 387, type: !60)
!1732 = !DILocation(line: 387, column: 20, scope: !1727)
!1733 = !DILocation(line: 387, column: 31, scope: !1727)
!1734 = !DILocation(line: 387, column: 42, scope: !1727)
!1735 = !DILocation(line: 387, column: 40, scope: !1727)
!1736 = !DILocalVariable(name: "rfstatus", scope: !1727, file: !1, line: 388, type: !103)
!1737 = !DILocation(line: 388, column: 17, scope: !1727)
!1738 = !DILocation(line: 388, column: 47, scope: !1727)
!1739 = !DILocation(line: 388, column: 50, scope: !1727)
!1740 = !DILocation(line: 388, column: 58, scope: !1727)
!1741 = !DILocation(line: 388, column: 28, scope: !1727)
!1742 = !DILocalVariable(name: "rdstatus", scope: !1727, file: !1, line: 389, type: !103)
!1743 = !DILocation(line: 389, column: 17, scope: !1727)
!1744 = !DILocation(line: 389, column: 47, scope: !1727)
!1745 = !DILocation(line: 389, column: 50, scope: !1727)
!1746 = !DILocation(line: 389, column: 58, scope: !1727)
!1747 = !DILocation(line: 389, column: 28, scope: !1727)
!1748 = !DILocation(line: 390, column: 22, scope: !1727)
!1749 = !DILocation(line: 390, column: 35, scope: !1727)
!1750 = !DILocation(line: 390, column: 30, scope: !1727)
!1751 = !DILocation(line: 390, column: 41, scope: !1727)
!1752 = !DILocation(line: 390, column: 43, scope: !1727)
!1753 = !DILocation(line: 390, column: 42, scope: !1727)
!1754 = !DILocation(line: 390, column: 44, scope: !1727)
!1755 = !DILocation(line: 390, column: 51, scope: !1727)
!1756 = !DILocation(line: 390, column: 49, scope: !1727)
!1757 = !DILocation(line: 390, column: 65, scope: !1727)
!1758 = !DILocation(line: 390, column: 60, scope: !1727)
!1759 = !DILocation(line: 390, column: 39, scope: !1727)
!1760 = !DILocation(line: 390, column: 7, scope: !1727)
!1761 = !DILocation(line: 390, column: 15, scope: !1727)
!1762 = !DILocation(line: 390, column: 20, scope: !1727)
!1763 = !DILocation(line: 391, column: 45, scope: !1727)
!1764 = !DILocation(line: 391, column: 58, scope: !1727)
!1765 = !DILocation(line: 391, column: 53, scope: !1727)
!1766 = !DILocation(line: 391, column: 40, scope: !1727)
!1767 = !DILocation(line: 391, column: 38, scope: !1727)
!1768 = !DILocation(line: 391, column: 7, scope: !1727)
!1769 = !DILocation(line: 391, column: 15, scope: !1727)
!1770 = !DILocation(line: 391, column: 20, scope: !1727)
!1771 = !DILocation(line: 392, column: 27, scope: !1727)
!1772 = !DILocation(line: 392, column: 38, scope: !1727)
!1773 = !DILocation(line: 392, column: 34, scope: !1727)
!1774 = !DILocation(line: 392, column: 22, scope: !1727)
!1775 = !DILocation(line: 392, column: 7, scope: !1727)
!1776 = !DILocation(line: 392, column: 15, scope: !1727)
!1777 = !DILocation(line: 392, column: 19, scope: !1727)
!1778 = !DILocation(line: 393, column: 22, scope: !1727)
!1779 = !DILocation(line: 393, column: 24, scope: !1727)
!1780 = !DILocation(line: 393, column: 23, scope: !1727)
!1781 = !DILocation(line: 393, column: 25, scope: !1727)
!1782 = !DILocation(line: 393, column: 30, scope: !1727)
!1783 = !DILocation(line: 393, column: 55, scope: !1727)
!1784 = !DILocation(line: 393, column: 69, scope: !1727)
!1785 = !DILocation(line: 393, column: 64, scope: !1727)
!1786 = !DILocation(line: 393, column: 50, scope: !1727)
!1787 = !DILocation(line: 393, column: 48, scope: !1727)
!1788 = !DILocation(line: 393, column: 7, scope: !1727)
!1789 = !DILocation(line: 393, column: 15, scope: !1727)
!1790 = !DILocation(line: 393, column: 19, scope: !1727)
!1791 = !DILocation(line: 394, column: 22, scope: !1727)
!1792 = !DILocation(line: 394, column: 24, scope: !1727)
!1793 = !DILocation(line: 394, column: 23, scope: !1727)
!1794 = !DILocation(line: 394, column: 25, scope: !1727)
!1795 = !DILocation(line: 394, column: 37, scope: !1727)
!1796 = !DILocation(line: 394, column: 49, scope: !1727)
!1797 = !DILocation(line: 394, column: 45, scope: !1727)
!1798 = !DILocation(line: 394, column: 32, scope: !1727)
!1799 = !DILocation(line: 394, column: 30, scope: !1727)
!1800 = !DILocation(line: 394, column: 7, scope: !1727)
!1801 = !DILocation(line: 394, column: 15, scope: !1727)
!1802 = !DILocation(line: 394, column: 19, scope: !1727)
!1803 = !DILocation(line: 395, column: 11, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1727, file: !1, line: 395, column: 11)
!1805 = !DILocation(line: 395, column: 14, scope: !1804)
!1806 = !DILocation(line: 395, column: 11, scope: !1727)
!1807 = !DILocation(line: 396, column: 16, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !1, line: 395, column: 20)
!1809 = !DILocation(line: 396, column: 16, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1808, file: !1, discriminator: 1)
!1811 = !DILocation(line: 396, column: 16, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1808, file: !1, discriminator: 2)
!1813 = !DILocation(line: 396, column: 16, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1808, file: !1, discriminator: 3)
!1815 = !DILocation(line: 396, column: 16, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1808, file: !1, discriminator: 4)
!1817 = !DILocation(line: 396, column: 16, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1808, file: !1, discriminator: 5)
!1819 = !DILocation(line: 396, column: 16, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !1808, file: !1, discriminator: 6)
!1821 = !DILocation(line: 396, column: 9, scope: !1820)
!1822 = !DILocalVariable(name: "re", scope: !1823, file: !1, line: 398, type: !52)
!1823 = distinct !DILexicalBlock(scope: !1804, file: !1, line: 397, column: 14)
!1824 = !DILocation(line: 398, column: 23, scope: !1823)
!1825 = !DILocalVariable(name: "restatus", scope: !1823, file: !1, line: 399, type: !103)
!1826 = !DILocation(line: 399, column: 19, scope: !1823)
!1827 = !DILocation(line: 399, column: 52, scope: !1823)
!1828 = !DILocation(line: 399, column: 55, scope: !1823)
!1829 = !DILocation(line: 399, column: 30, scope: !1823)
!1830 = !DILocation(line: 400, column: 26, scope: !1823)
!1831 = !DILocation(line: 400, column: 25, scope: !1823)
!1832 = !DILocation(line: 400, column: 32, scope: !1823)
!1833 = !DILocation(line: 400, column: 28, scope: !1823)
!1834 = !DILocation(line: 400, column: 9, scope: !1823)
!1835 = !DILocation(line: 400, column: 17, scope: !1823)
!1836 = !DILocation(line: 400, column: 21, scope: !1823)
!1837 = !DILocation(line: 401, column: 31, scope: !1823)
!1838 = !DILocation(line: 401, column: 26, scope: !1823)
!1839 = !DILocation(line: 401, column: 25, scope: !1823)
!1840 = !DILocation(line: 401, column: 38, scope: !1823)
!1841 = !DILocation(line: 401, column: 34, scope: !1823)
!1842 = !DILocation(line: 401, column: 9, scope: !1823)
!1843 = !DILocation(line: 401, column: 17, scope: !1823)
!1844 = !DILocation(line: 401, column: 21, scope: !1823)
!1845 = !DILocation(line: 402, column: 16, scope: !1823)
!1846 = !DILocation(line: 402, column: 16, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1823, file: !1, discriminator: 1)
!1848 = !DILocation(line: 402, column: 16, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1823, file: !1, discriminator: 2)
!1850 = !DILocation(line: 402, column: 16, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !1823, file: !1, discriminator: 3)
!1852 = !DILocation(line: 402, column: 16, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !1823, file: !1, discriminator: 4)
!1854 = !DILocation(line: 402, column: 16, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1823, file: !1, discriminator: 5)
!1856 = !DILocation(line: 402, column: 16, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1823, file: !1, discriminator: 6)
!1858 = !DILocation(line: 402, column: 16, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1823, file: !1, discriminator: 7)
!1860 = !DILocation(line: 402, column: 16, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1823, file: !1, discriminator: 8)
!1862 = !DILocation(line: 402, column: 16, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1823, file: !1, discriminator: 9)
!1864 = !DILocation(line: 402, column: 9, scope: !1863)
!1865 = !DILocation(line: 406, column: 1, scope: !1646)
!1866 = !DILocalVariable(name: "k", arg: 1, scope: !65, file: !1, line: 539, type: !47)
!1867 = !DILocation(line: 539, column: 30, scope: !65)
!1868 = !DILocalVariable(name: "mode", arg: 2, scope: !65, file: !1, line: 539, type: !48)
!1869 = !DILocation(line: 539, column: 44, scope: !65)
!1870 = !DILocalVariable(name: "result", arg: 3, scope: !65, file: !1, line: 539, type: !51)
!1871 = !DILocation(line: 539, column: 66, scope: !65)
!1872 = !DILocation(line: 541, column: 6, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !65, file: !1, line: 541, column: 6)
!1874 = !DILocation(line: 541, column: 8, scope: !1873)
!1875 = !DILocation(line: 541, column: 7, scope: !1873)
!1876 = !DILocation(line: 541, column: 10, scope: !1873)
!1877 = !DILocation(line: 541, column: 6, scope: !65)
!1878 = !DILocation(line: 542, column: 5, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 541, column: 18)
!1880 = distinct !{!1880, !1878}
!1881 = !DILocation(line: 542, column: 5, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 1)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !1, line: 542, column: 5)
!1884 = distinct !{!1884, !1885}
!1885 = !DILocation(line: 542, column: 5, scope: !1883)
!1886 = !DILocation(line: 542, column: 5, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !1888, file: !1, discriminator: 2)
!1888 = distinct !DILexicalBlock(scope: !1883, file: !1, line: 542, column: 5)
!1889 = !DILocation(line: 542, column: 5, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1883, file: !1, discriminator: 3)
!1891 = !DILocation(line: 543, column: 3, scope: !1879)
!1892 = !DILocation(line: 544, column: 11, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 544, column: 11)
!1894 = !DILocation(line: 544, column: 13, scope: !1893)
!1895 = !DILocation(line: 544, column: 12, scope: !1893)
!1896 = !DILocation(line: 544, column: 15, scope: !1893)
!1897 = !DILocation(line: 544, column: 11, scope: !1873)
!1898 = !DILocalVariable(name: "y", scope: !1899, file: !1, line: 546, type: !60)
!1899 = distinct !DILexicalBlock(scope: !1893, file: !1, line: 544, column: 46)
!1900 = !DILocation(line: 546, column: 18, scope: !1899)
!1901 = !DILocation(line: 546, column: 28, scope: !1899)
!1902 = !DILocation(line: 546, column: 30, scope: !1899)
!1903 = !DILocation(line: 546, column: 29, scope: !1899)
!1904 = !DILocation(line: 546, column: 26, scope: !1899)
!1905 = !DILocalVariable(name: "ta", scope: !1899, file: !1, line: 549, type: !60)
!1906 = !DILocation(line: 549, column: 18, scope: !1899)
!1907 = !DILocation(line: 549, column: 29, scope: !1899)
!1908 = !DILocation(line: 549, column: 32, scope: !1899)
!1909 = !DILocation(line: 549, column: 39, scope: !1899)
!1910 = !DILocation(line: 549, column: 42, scope: !1899)
!1911 = !DILocation(line: 549, column: 49, scope: !1899)
!1912 = !DILocation(line: 549, column: 54, scope: !1899)
!1913 = !DILocation(line: 549, column: 53, scope: !1899)
!1914 = !DILocation(line: 549, column: 47, scope: !1899)
!1915 = !DILocation(line: 549, column: 40, scope: !1899)
!1916 = !DILocation(line: 549, column: 37, scope: !1899)
!1917 = !DILocation(line: 549, column: 30, scope: !1899)
!1918 = !DILocation(line: 549, column: 27, scope: !1899)
!1919 = !DILocalVariable(name: "tb", scope: !1899, file: !1, line: 550, type: !60)
!1920 = !DILocation(line: 550, column: 18, scope: !1899)
!1921 = !DILocation(line: 550, column: 24, scope: !1899)
!1922 = !DILocation(line: 550, column: 23, scope: !1899)
!1923 = !DILocation(line: 550, column: 30, scope: !1899)
!1924 = !DILocation(line: 550, column: 26, scope: !1899)
!1925 = !DILocation(line: 550, column: 25, scope: !1899)
!1926 = !DILocation(line: 550, column: 36, scope: !1899)
!1927 = !DILocation(line: 550, column: 43, scope: !1899)
!1928 = !DILocation(line: 550, column: 46, scope: !1899)
!1929 = !DILocation(line: 550, column: 53, scope: !1899)
!1930 = !DILocation(line: 550, column: 58, scope: !1899)
!1931 = !DILocation(line: 550, column: 57, scope: !1899)
!1932 = !DILocation(line: 550, column: 51, scope: !1899)
!1933 = !DILocation(line: 550, column: 44, scope: !1899)
!1934 = !DILocation(line: 550, column: 41, scope: !1899)
!1935 = !DILocation(line: 550, column: 33, scope: !1899)
!1936 = !DILocation(line: 551, column: 19, scope: !1899)
!1937 = !DILocation(line: 551, column: 24, scope: !1899)
!1938 = !DILocation(line: 551, column: 22, scope: !1899)
!1939 = !DILocation(line: 551, column: 5, scope: !1899)
!1940 = !DILocation(line: 551, column: 13, scope: !1899)
!1941 = !DILocation(line: 551, column: 17, scope: !1899)
!1942 = !DILocation(line: 552, column: 43, scope: !1899)
!1943 = !DILocation(line: 552, column: 51, scope: !1899)
!1944 = !DILocation(line: 552, column: 41, scope: !1899)
!1945 = !DILocation(line: 552, column: 5, scope: !1899)
!1946 = !DILocation(line: 552, column: 13, scope: !1899)
!1947 = !DILocation(line: 552, column: 17, scope: !1899)
!1948 = !DILocation(line: 553, column: 5, scope: !1899)
!1949 = !DILocalVariable(name: "rf", scope: !1950, file: !1, line: 556, type: !52)
!1950 = distinct !DILexicalBlock(scope: !1893, file: !1, line: 555, column: 8)
!1951 = !DILocation(line: 556, column: 19, scope: !1950)
!1952 = !DILocalVariable(name: "rd", scope: !1950, file: !1, line: 557, type: !52)
!1953 = !DILocation(line: 557, column: 19, scope: !1950)
!1954 = !DILocalVariable(name: "y", scope: !1950, file: !1, line: 558, type: !60)
!1955 = !DILocation(line: 558, column: 18, scope: !1950)
!1956 = !DILocation(line: 558, column: 28, scope: !1950)
!1957 = !DILocation(line: 558, column: 30, scope: !1950)
!1958 = !DILocation(line: 558, column: 29, scope: !1950)
!1959 = !DILocation(line: 558, column: 26, scope: !1950)
!1960 = !DILocalVariable(name: "rfstatus", scope: !1950, file: !1, line: 559, type: !103)
!1961 = !DILocation(line: 559, column: 15, scope: !1950)
!1962 = !DILocation(line: 559, column: 50, scope: !1950)
!1963 = !DILocation(line: 559, column: 58, scope: !1950)
!1964 = !DILocation(line: 559, column: 26, scope: !1950)
!1965 = !DILocalVariable(name: "rdstatus", scope: !1950, file: !1, line: 560, type: !103)
!1966 = !DILocation(line: 560, column: 15, scope: !1950)
!1967 = !DILocation(line: 560, column: 50, scope: !1950)
!1968 = !DILocation(line: 560, column: 58, scope: !1950)
!1969 = !DILocation(line: 560, column: 26, scope: !1950)
!1970 = !DILocation(line: 561, column: 22, scope: !1950)
!1971 = !DILocation(line: 561, column: 28, scope: !1950)
!1972 = !DILocation(line: 561, column: 30, scope: !1950)
!1973 = !DILocation(line: 561, column: 29, scope: !1950)
!1974 = !DILocation(line: 561, column: 31, scope: !1950)
!1975 = !DILocation(line: 561, column: 41, scope: !1950)
!1976 = !DILocation(line: 561, column: 36, scope: !1950)
!1977 = !DILocation(line: 561, column: 26, scope: !1950)
!1978 = !DILocation(line: 561, column: 5, scope: !1950)
!1979 = !DILocation(line: 561, column: 13, scope: !1950)
!1980 = !DILocation(line: 561, column: 17, scope: !1950)
!1981 = !DILocation(line: 562, column: 22, scope: !1950)
!1982 = !DILocation(line: 562, column: 28, scope: !1950)
!1983 = !DILocation(line: 562, column: 30, scope: !1950)
!1984 = !DILocation(line: 562, column: 29, scope: !1950)
!1985 = !DILocation(line: 562, column: 31, scope: !1950)
!1986 = !DILocation(line: 562, column: 41, scope: !1950)
!1987 = !DILocation(line: 562, column: 36, scope: !1950)
!1988 = !DILocation(line: 562, column: 26, scope: !1950)
!1989 = !DILocation(line: 562, column: 5, scope: !1950)
!1990 = !DILocation(line: 562, column: 13, scope: !1950)
!1991 = !DILocation(line: 562, column: 17, scope: !1950)
!1992 = !DILocation(line: 563, column: 12, scope: !1950)
!1993 = !DILocation(line: 563, column: 12, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !1950, file: !1, discriminator: 1)
!1995 = !DILocation(line: 563, column: 12, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1950, file: !1, discriminator: 2)
!1997 = !DILocation(line: 563, column: 12, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !1950, file: !1, discriminator: 3)
!1999 = !DILocation(line: 563, column: 12, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1950, file: !1, discriminator: 4)
!2001 = !DILocation(line: 563, column: 12, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !1950, file: !1, discriminator: 5)
!2003 = !DILocation(line: 563, column: 12, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1950, file: !1, discriminator: 6)
!2005 = !DILocation(line: 563, column: 5, scope: !2004)
!2006 = !DILocation(line: 565, column: 1, scope: !65)
!2007 = distinct !DISubprogram(name: "gsl_sf_ellint_P_e", scope: !1, file: !1, line: 411, type: !275, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2008 = !DILocalVariable(name: "phi", arg: 1, scope: !2007, file: !1, line: 411, type: !47)
!2009 = !DILocation(line: 411, column: 26, scope: !2007)
!2010 = !DILocalVariable(name: "k", arg: 2, scope: !2007, file: !1, line: 411, type: !47)
!2011 = !DILocation(line: 411, column: 38, scope: !2007)
!2012 = !DILocalVariable(name: "n", arg: 3, scope: !2007, file: !1, line: 411, type: !47)
!2013 = !DILocation(line: 411, column: 48, scope: !2007)
!2014 = !DILocalVariable(name: "mode", arg: 4, scope: !2007, file: !1, line: 411, type: !48)
!2015 = !DILocation(line: 411, column: 62, scope: !2007)
!2016 = !DILocalVariable(name: "result", arg: 5, scope: !2007, file: !1, line: 411, type: !51)
!2017 = !DILocation(line: 411, column: 84, scope: !2007)
!2018 = !DILocalVariable(name: "nc", scope: !2007, file: !1, line: 416, type: !47)
!2019 = !DILocation(line: 416, column: 10, scope: !2007)
!2020 = !DILocation(line: 416, column: 21, scope: !2007)
!2021 = !DILocation(line: 416, column: 24, scope: !2007)
!2022 = !DILocation(line: 416, column: 30, scope: !2007)
!2023 = !DILocation(line: 416, column: 15, scope: !2007)
!2024 = !DILocalVariable(name: "phi_red", scope: !2007, file: !1, line: 417, type: !47)
!2025 = !DILocation(line: 417, column: 10, scope: !2007)
!2026 = !DILocation(line: 417, column: 20, scope: !2007)
!2027 = !DILocation(line: 417, column: 26, scope: !2007)
!2028 = !DILocation(line: 417, column: 29, scope: !2007)
!2029 = !DILocation(line: 417, column: 24, scope: !2007)
!2030 = !DILocation(line: 418, column: 9, scope: !2007)
!2031 = !DILocation(line: 418, column: 7, scope: !2007)
!2032 = !DILocalVariable(name: "sin_phi", scope: !2033, file: !1, line: 423, type: !60)
!2033 = distinct !DILexicalBlock(scope: !2007, file: !1, line: 422, column: 3)
!2034 = !DILocation(line: 423, column: 18, scope: !2033)
!2035 = !DILocation(line: 423, column: 33, scope: !2033)
!2036 = !DILocation(line: 423, column: 29, scope: !2033)
!2037 = !DILocalVariable(name: "sin2_phi", scope: !2033, file: !1, line: 424, type: !60)
!2038 = !DILocation(line: 424, column: 18, scope: !2033)
!2039 = !DILocation(line: 424, column: 29, scope: !2033)
!2040 = !DILocation(line: 424, column: 40, scope: !2033)
!2041 = !DILocation(line: 424, column: 38, scope: !2033)
!2042 = !DILocalVariable(name: "sin3_phi", scope: !2033, file: !1, line: 425, type: !60)
!2043 = !DILocation(line: 425, column: 18, scope: !2033)
!2044 = !DILocation(line: 425, column: 29, scope: !2033)
!2045 = !DILocation(line: 425, column: 40, scope: !2033)
!2046 = !DILocation(line: 425, column: 38, scope: !2033)
!2047 = !DILocalVariable(name: "x", scope: !2033, file: !1, line: 426, type: !60)
!2048 = !DILocation(line: 426, column: 18, scope: !2033)
!2049 = !DILocation(line: 426, column: 28, scope: !2033)
!2050 = !DILocation(line: 426, column: 26, scope: !2033)
!2051 = !DILocalVariable(name: "y", scope: !2033, file: !1, line: 427, type: !60)
!2052 = !DILocation(line: 427, column: 18, scope: !2033)
!2053 = !DILocation(line: 427, column: 28, scope: !2033)
!2054 = !DILocation(line: 427, column: 30, scope: !2033)
!2055 = !DILocation(line: 427, column: 29, scope: !2033)
!2056 = !DILocation(line: 427, column: 32, scope: !2033)
!2057 = !DILocation(line: 427, column: 31, scope: !2033)
!2058 = !DILocation(line: 427, column: 26, scope: !2033)
!2059 = !DILocalVariable(name: "rf", scope: !2033, file: !1, line: 428, type: !52)
!2060 = !DILocation(line: 428, column: 19, scope: !2033)
!2061 = !DILocalVariable(name: "rj", scope: !2033, file: !1, line: 429, type: !52)
!2062 = !DILocation(line: 429, column: 19, scope: !2033)
!2063 = !DILocalVariable(name: "rfstatus", scope: !2033, file: !1, line: 430, type: !103)
!2064 = !DILocation(line: 430, column: 15, scope: !2033)
!2065 = !DILocation(line: 430, column: 45, scope: !2033)
!2066 = !DILocation(line: 430, column: 48, scope: !2033)
!2067 = !DILocation(line: 430, column: 56, scope: !2033)
!2068 = !DILocation(line: 430, column: 26, scope: !2033)
!2069 = !DILocalVariable(name: "rjstatus", scope: !2033, file: !1, line: 431, type: !103)
!2070 = !DILocation(line: 431, column: 15, scope: !2033)
!2071 = !DILocation(line: 431, column: 45, scope: !2033)
!2072 = !DILocation(line: 431, column: 48, scope: !2033)
!2073 = !DILocation(line: 431, column: 62, scope: !2033)
!2074 = !DILocation(line: 431, column: 64, scope: !2033)
!2075 = !DILocation(line: 431, column: 63, scope: !2033)
!2076 = !DILocation(line: 431, column: 60, scope: !2033)
!2077 = !DILocation(line: 431, column: 74, scope: !2033)
!2078 = !DILocation(line: 431, column: 26, scope: !2033)
!2079 = !DILocation(line: 432, column: 20, scope: !2033)
!2080 = !DILocation(line: 432, column: 33, scope: !2033)
!2081 = !DILocation(line: 432, column: 28, scope: !2033)
!2082 = !DILocation(line: 432, column: 39, scope: !2033)
!2083 = !DILocation(line: 432, column: 40, scope: !2033)
!2084 = !DILocation(line: 432, column: 45, scope: !2033)
!2085 = !DILocation(line: 432, column: 44, scope: !2033)
!2086 = !DILocation(line: 432, column: 59, scope: !2033)
!2087 = !DILocation(line: 432, column: 54, scope: !2033)
!2088 = !DILocation(line: 432, column: 37, scope: !2033)
!2089 = !DILocation(line: 432, column: 5, scope: !2033)
!2090 = !DILocation(line: 432, column: 13, scope: !2033)
!2091 = !DILocation(line: 432, column: 18, scope: !2033)
!2092 = !DILocation(line: 433, column: 43, scope: !2033)
!2093 = !DILocation(line: 433, column: 56, scope: !2033)
!2094 = !DILocation(line: 433, column: 51, scope: !2033)
!2095 = !DILocation(line: 433, column: 38, scope: !2033)
!2096 = !DILocation(line: 433, column: 36, scope: !2033)
!2097 = !DILocation(line: 433, column: 5, scope: !2033)
!2098 = !DILocation(line: 433, column: 13, scope: !2033)
!2099 = !DILocation(line: 433, column: 18, scope: !2033)
!2100 = !DILocation(line: 434, column: 25, scope: !2033)
!2101 = !DILocation(line: 434, column: 38, scope: !2033)
!2102 = !DILocation(line: 434, column: 33, scope: !2033)
!2103 = !DILocation(line: 434, column: 20, scope: !2033)
!2104 = !DILocation(line: 434, column: 5, scope: !2033)
!2105 = !DILocation(line: 434, column: 13, scope: !2033)
!2106 = !DILocation(line: 434, column: 17, scope: !2033)
!2107 = !DILocation(line: 435, column: 20, scope: !2033)
!2108 = !DILocation(line: 435, column: 21, scope: !2033)
!2109 = !DILocation(line: 435, column: 26, scope: !2033)
!2110 = !DILocation(line: 435, column: 51, scope: !2033)
!2111 = !DILocation(line: 435, column: 63, scope: !2033)
!2112 = !DILocation(line: 435, column: 59, scope: !2033)
!2113 = !DILocation(line: 435, column: 46, scope: !2033)
!2114 = !DILocation(line: 435, column: 44, scope: !2033)
!2115 = !DILocation(line: 435, column: 5, scope: !2033)
!2116 = !DILocation(line: 435, column: 13, scope: !2033)
!2117 = !DILocation(line: 435, column: 17, scope: !2033)
!2118 = !DILocation(line: 436, column: 20, scope: !2033)
!2119 = !DILocation(line: 436, column: 21, scope: !2033)
!2120 = !DILocation(line: 436, column: 33, scope: !2033)
!2121 = !DILocation(line: 436, column: 45, scope: !2033)
!2122 = !DILocation(line: 436, column: 41, scope: !2033)
!2123 = !DILocation(line: 436, column: 28, scope: !2033)
!2124 = !DILocation(line: 436, column: 26, scope: !2033)
!2125 = !DILocation(line: 436, column: 5, scope: !2033)
!2126 = !DILocation(line: 436, column: 13, scope: !2033)
!2127 = !DILocation(line: 436, column: 17, scope: !2033)
!2128 = !DILocation(line: 437, column: 9, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2033, file: !1, line: 437, column: 9)
!2130 = !DILocation(line: 437, column: 12, scope: !2129)
!2131 = !DILocation(line: 437, column: 9, scope: !2033)
!2132 = !DILocation(line: 438, column: 14, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !1, line: 437, column: 18)
!2134 = !DILocation(line: 438, column: 14, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2133, file: !1, discriminator: 1)
!2136 = !DILocation(line: 438, column: 14, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2133, file: !1, discriminator: 2)
!2138 = !DILocation(line: 438, column: 14, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2133, file: !1, discriminator: 3)
!2140 = !DILocation(line: 438, column: 14, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2133, file: !1, discriminator: 4)
!2142 = !DILocation(line: 438, column: 14, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2133, file: !1, discriminator: 5)
!2144 = !DILocation(line: 438, column: 14, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2133, file: !1, discriminator: 6)
!2146 = !DILocation(line: 438, column: 7, scope: !2145)
!2147 = !DILocalVariable(name: "rp", scope: !2148, file: !1, line: 440, type: !52)
!2148 = distinct !DILexicalBlock(scope: !2129, file: !1, line: 439, column: 12)
!2149 = !DILocation(line: 440, column: 21, scope: !2148)
!2150 = !DILocalVariable(name: "rpstatus", scope: !2148, file: !1, line: 441, type: !103)
!2151 = !DILocation(line: 441, column: 17, scope: !2148)
!2152 = !DILocation(line: 441, column: 50, scope: !2148)
!2153 = !DILocation(line: 441, column: 53, scope: !2148)
!2154 = !DILocation(line: 441, column: 56, scope: !2148)
!2155 = !DILocation(line: 441, column: 28, scope: !2148)
!2156 = !DILocation(line: 442, column: 24, scope: !2148)
!2157 = !DILocation(line: 442, column: 23, scope: !2148)
!2158 = !DILocation(line: 442, column: 30, scope: !2148)
!2159 = !DILocation(line: 442, column: 26, scope: !2148)
!2160 = !DILocation(line: 442, column: 7, scope: !2148)
!2161 = !DILocation(line: 442, column: 15, scope: !2148)
!2162 = !DILocation(line: 442, column: 19, scope: !2148)
!2163 = !DILocation(line: 443, column: 29, scope: !2148)
!2164 = !DILocation(line: 443, column: 24, scope: !2148)
!2165 = !DILocation(line: 443, column: 23, scope: !2148)
!2166 = !DILocation(line: 443, column: 36, scope: !2148)
!2167 = !DILocation(line: 443, column: 32, scope: !2148)
!2168 = !DILocation(line: 443, column: 7, scope: !2148)
!2169 = !DILocation(line: 443, column: 15, scope: !2148)
!2170 = !DILocation(line: 443, column: 19, scope: !2148)
!2171 = !DILocation(line: 444, column: 14, scope: !2148)
!2172 = !DILocation(line: 444, column: 14, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 1)
!2174 = !DILocation(line: 444, column: 14, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 2)
!2176 = !DILocation(line: 444, column: 14, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 3)
!2178 = !DILocation(line: 444, column: 14, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 4)
!2180 = !DILocation(line: 444, column: 14, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 5)
!2182 = !DILocation(line: 444, column: 14, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 6)
!2184 = !DILocation(line: 444, column: 14, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 7)
!2186 = !DILocation(line: 444, column: 14, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 8)
!2188 = !DILocation(line: 444, column: 14, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 9)
!2190 = !DILocation(line: 444, column: 7, scope: !2189)
!2191 = !DILocation(line: 447, column: 1, scope: !2007)
!2192 = distinct !DISubprogram(name: "gsl_sf_ellint_Pcomp_e", scope: !1, file: !1, line: 569, type: !72, isLocal: false, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2193 = !DILocalVariable(name: "k", arg: 1, scope: !2192, file: !1, line: 569, type: !47)
!2194 = !DILocation(line: 569, column: 30, scope: !2192)
!2195 = !DILocalVariable(name: "n", arg: 2, scope: !2192, file: !1, line: 569, type: !47)
!2196 = !DILocation(line: 569, column: 40, scope: !2192)
!2197 = !DILocalVariable(name: "mode", arg: 3, scope: !2192, file: !1, line: 569, type: !48)
!2198 = !DILocation(line: 569, column: 54, scope: !2192)
!2199 = !DILocalVariable(name: "result", arg: 4, scope: !2192, file: !1, line: 569, type: !51)
!2200 = !DILocation(line: 569, column: 76, scope: !2192)
!2201 = !DILocation(line: 571, column: 6, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2192, file: !1, line: 571, column: 6)
!2203 = !DILocation(line: 571, column: 8, scope: !2202)
!2204 = !DILocation(line: 571, column: 7, scope: !2202)
!2205 = !DILocation(line: 571, column: 10, scope: !2202)
!2206 = !DILocation(line: 571, column: 6, scope: !2192)
!2207 = !DILocation(line: 572, column: 5, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2202, file: !1, line: 571, column: 18)
!2209 = distinct !{!2209, !2207}
!2210 = !DILocation(line: 572, column: 5, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2212, file: !1, discriminator: 1)
!2212 = distinct !DILexicalBlock(scope: !2208, file: !1, line: 572, column: 5)
!2213 = distinct !{!2213, !2214}
!2214 = !DILocation(line: 572, column: 5, scope: !2212)
!2215 = !DILocation(line: 572, column: 5, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2217, file: !1, discriminator: 2)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !1, line: 572, column: 5)
!2218 = !DILocation(line: 572, column: 5, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2212, file: !1, discriminator: 3)
!2220 = !DILocation(line: 573, column: 3, scope: !2208)
!2221 = !DILocalVariable(name: "rf", scope: !2222, file: !1, line: 576, type: !52)
!2222 = distinct !DILexicalBlock(scope: !2202, file: !1, line: 575, column: 8)
!2223 = !DILocation(line: 576, column: 19, scope: !2222)
!2224 = !DILocalVariable(name: "rj", scope: !2222, file: !1, line: 577, type: !52)
!2225 = !DILocation(line: 577, column: 19, scope: !2222)
!2226 = !DILocalVariable(name: "y", scope: !2222, file: !1, line: 578, type: !60)
!2227 = !DILocation(line: 578, column: 18, scope: !2222)
!2228 = !DILocation(line: 578, column: 28, scope: !2222)
!2229 = !DILocation(line: 578, column: 30, scope: !2222)
!2230 = !DILocation(line: 578, column: 29, scope: !2222)
!2231 = !DILocation(line: 578, column: 26, scope: !2222)
!2232 = !DILocalVariable(name: "rfstatus", scope: !2222, file: !1, line: 579, type: !103)
!2233 = !DILocation(line: 579, column: 15, scope: !2222)
!2234 = !DILocation(line: 579, column: 50, scope: !2222)
!2235 = !DILocation(line: 579, column: 58, scope: !2222)
!2236 = !DILocation(line: 579, column: 26, scope: !2222)
!2237 = !DILocalVariable(name: "rjstatus", scope: !2222, file: !1, line: 580, type: !103)
!2238 = !DILocation(line: 580, column: 15, scope: !2222)
!2239 = !DILocation(line: 580, column: 50, scope: !2222)
!2240 = !DILocation(line: 580, column: 64, scope: !2222)
!2241 = !DILocation(line: 580, column: 62, scope: !2222)
!2242 = !DILocation(line: 580, column: 67, scope: !2222)
!2243 = !DILocation(line: 580, column: 26, scope: !2222)
!2244 = !DILocation(line: 581, column: 22, scope: !2222)
!2245 = !DILocation(line: 581, column: 29, scope: !2222)
!2246 = !DILocation(line: 581, column: 30, scope: !2222)
!2247 = !DILocation(line: 581, column: 41, scope: !2222)
!2248 = !DILocation(line: 581, column: 36, scope: !2222)
!2249 = !DILocation(line: 581, column: 26, scope: !2222)
!2250 = !DILocation(line: 581, column: 5, scope: !2222)
!2251 = !DILocation(line: 581, column: 13, scope: !2222)
!2252 = !DILocation(line: 581, column: 17, scope: !2222)
!2253 = !DILocation(line: 582, column: 22, scope: !2222)
!2254 = !DILocation(line: 582, column: 33, scope: !2222)
!2255 = !DILocation(line: 582, column: 34, scope: !2222)
!2256 = !DILocation(line: 582, column: 28, scope: !2222)
!2257 = !DILocation(line: 582, column: 45, scope: !2222)
!2258 = !DILocation(line: 582, column: 40, scope: !2222)
!2259 = !DILocation(line: 582, column: 26, scope: !2222)
!2260 = !DILocation(line: 582, column: 5, scope: !2222)
!2261 = !DILocation(line: 582, column: 13, scope: !2222)
!2262 = !DILocation(line: 582, column: 17, scope: !2222)
!2263 = !DILocation(line: 583, column: 12, scope: !2222)
!2264 = !DILocation(line: 583, column: 12, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2222, file: !1, discriminator: 1)
!2266 = !DILocation(line: 583, column: 12, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2222, file: !1, discriminator: 2)
!2268 = !DILocation(line: 583, column: 12, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2222, file: !1, discriminator: 3)
!2270 = !DILocation(line: 583, column: 12, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2222, file: !1, discriminator: 4)
!2272 = !DILocation(line: 583, column: 12, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2222, file: !1, discriminator: 5)
!2274 = !DILocation(line: 583, column: 12, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2222, file: !1, discriminator: 6)
!2276 = !DILocation(line: 583, column: 5, scope: !2275)
!2277 = !DILocation(line: 585, column: 1, scope: !2192)
!2278 = distinct !DISubprogram(name: "gsl_sf_ellint_D_e", scope: !1, file: !1, line: 452, type: !72, isLocal: false, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2279 = !DILocalVariable(name: "phi", arg: 1, scope: !2278, file: !1, line: 452, type: !47)
!2280 = !DILocation(line: 452, column: 26, scope: !2278)
!2281 = !DILocalVariable(name: "k", arg: 2, scope: !2278, file: !1, line: 452, type: !47)
!2282 = !DILocation(line: 452, column: 38, scope: !2278)
!2283 = !DILocalVariable(name: "mode", arg: 3, scope: !2278, file: !1, line: 452, type: !48)
!2284 = !DILocation(line: 452, column: 52, scope: !2278)
!2285 = !DILocalVariable(name: "result", arg: 4, scope: !2278, file: !1, line: 452, type: !51)
!2286 = !DILocation(line: 452, column: 74, scope: !2278)
!2287 = !DILocalVariable(name: "nc", scope: !2278, file: !1, line: 457, type: !47)
!2288 = !DILocation(line: 457, column: 10, scope: !2278)
!2289 = !DILocation(line: 457, column: 21, scope: !2278)
!2290 = !DILocation(line: 457, column: 24, scope: !2278)
!2291 = !DILocation(line: 457, column: 30, scope: !2278)
!2292 = !DILocation(line: 457, column: 15, scope: !2278)
!2293 = !DILocalVariable(name: "phi_red", scope: !2278, file: !1, line: 458, type: !47)
!2294 = !DILocation(line: 458, column: 10, scope: !2278)
!2295 = !DILocation(line: 458, column: 20, scope: !2278)
!2296 = !DILocation(line: 458, column: 26, scope: !2278)
!2297 = !DILocation(line: 458, column: 29, scope: !2278)
!2298 = !DILocation(line: 458, column: 24, scope: !2278)
!2299 = !DILocation(line: 459, column: 9, scope: !2278)
!2300 = !DILocation(line: 459, column: 7, scope: !2278)
!2301 = !DILocalVariable(name: "sin_phi", scope: !2302, file: !1, line: 463, type: !60)
!2302 = distinct !DILexicalBlock(scope: !2278, file: !1, line: 462, column: 3)
!2303 = !DILocation(line: 463, column: 18, scope: !2302)
!2304 = !DILocation(line: 463, column: 33, scope: !2302)
!2305 = !DILocation(line: 463, column: 29, scope: !2302)
!2306 = !DILocalVariable(name: "sin2_phi", scope: !2302, file: !1, line: 464, type: !60)
!2307 = !DILocation(line: 464, column: 18, scope: !2302)
!2308 = !DILocation(line: 464, column: 29, scope: !2302)
!2309 = !DILocation(line: 464, column: 40, scope: !2302)
!2310 = !DILocation(line: 464, column: 38, scope: !2302)
!2311 = !DILocalVariable(name: "sin3_phi", scope: !2302, file: !1, line: 465, type: !60)
!2312 = !DILocation(line: 465, column: 18, scope: !2302)
!2313 = !DILocation(line: 465, column: 29, scope: !2302)
!2314 = !DILocation(line: 465, column: 40, scope: !2302)
!2315 = !DILocation(line: 465, column: 38, scope: !2302)
!2316 = !DILocalVariable(name: "x", scope: !2302, file: !1, line: 466, type: !60)
!2317 = !DILocation(line: 466, column: 18, scope: !2302)
!2318 = !DILocation(line: 466, column: 28, scope: !2302)
!2319 = !DILocation(line: 466, column: 26, scope: !2302)
!2320 = !DILocalVariable(name: "y", scope: !2302, file: !1, line: 467, type: !60)
!2321 = !DILocation(line: 467, column: 18, scope: !2302)
!2322 = !DILocation(line: 467, column: 28, scope: !2302)
!2323 = !DILocation(line: 467, column: 30, scope: !2302)
!2324 = !DILocation(line: 467, column: 29, scope: !2302)
!2325 = !DILocation(line: 467, column: 32, scope: !2302)
!2326 = !DILocation(line: 467, column: 31, scope: !2302)
!2327 = !DILocation(line: 467, column: 26, scope: !2302)
!2328 = !DILocalVariable(name: "rd", scope: !2302, file: !1, line: 468, type: !52)
!2329 = !DILocation(line: 468, column: 19, scope: !2302)
!2330 = !DILocalVariable(name: "status", scope: !2302, file: !1, line: 469, type: !103)
!2331 = !DILocation(line: 469, column: 15, scope: !2302)
!2332 = !DILocation(line: 469, column: 43, scope: !2302)
!2333 = !DILocation(line: 469, column: 46, scope: !2302)
!2334 = !DILocation(line: 469, column: 54, scope: !2302)
!2335 = !DILocation(line: 469, column: 24, scope: !2302)
!2336 = !DILocation(line: 470, column: 19, scope: !2302)
!2337 = !DILocation(line: 470, column: 27, scope: !2302)
!2338 = !DILocation(line: 470, column: 37, scope: !2302)
!2339 = !DILocation(line: 470, column: 32, scope: !2302)
!2340 = !DILocation(line: 470, column: 5, scope: !2302)
!2341 = !DILocation(line: 470, column: 13, scope: !2302)
!2342 = !DILocation(line: 470, column: 17, scope: !2302)
!2343 = !DILocation(line: 471, column: 42, scope: !2302)
!2344 = !DILocation(line: 471, column: 50, scope: !2302)
!2345 = !DILocation(line: 471, column: 37, scope: !2302)
!2346 = !DILocation(line: 471, column: 35, scope: !2302)
!2347 = !DILocation(line: 471, column: 62, scope: !2302)
!2348 = !DILocation(line: 471, column: 70, scope: !2302)
!2349 = !DILocation(line: 471, column: 80, scope: !2302)
!2350 = !DILocation(line: 471, column: 75, scope: !2302)
!2351 = !DILocation(line: 471, column: 57, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !2302, file: !1, discriminator: 1)
!2353 = !DILocation(line: 471, column: 55, scope: !2302)
!2354 = !DILocation(line: 471, column: 5, scope: !2302)
!2355 = !DILocation(line: 471, column: 13, scope: !2302)
!2356 = !DILocation(line: 471, column: 17, scope: !2302)
!2357 = !DILocation(line: 472, column: 9, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2302, file: !1, line: 472, column: 9)
!2359 = !DILocation(line: 472, column: 12, scope: !2358)
!2360 = !DILocation(line: 472, column: 9, scope: !2302)
!2361 = !DILocation(line: 473, column: 14, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 472, column: 18)
!2363 = !DILocation(line: 473, column: 7, scope: !2362)
!2364 = !DILocalVariable(name: "rd", scope: !2365, file: !1, line: 475, type: !52)
!2365 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 474, column: 12)
!2366 = !DILocation(line: 475, column: 21, scope: !2365)
!2367 = !DILocalVariable(name: "rdstatus", scope: !2365, file: !1, line: 476, type: !103)
!2368 = !DILocation(line: 476, column: 17, scope: !2365)
!2369 = !DILocation(line: 476, column: 50, scope: !2365)
!2370 = !DILocation(line: 476, column: 53, scope: !2365)
!2371 = !DILocation(line: 476, column: 28, scope: !2365)
!2372 = !DILocation(line: 477, column: 24, scope: !2365)
!2373 = !DILocation(line: 477, column: 23, scope: !2365)
!2374 = !DILocation(line: 477, column: 30, scope: !2365)
!2375 = !DILocation(line: 477, column: 26, scope: !2365)
!2376 = !DILocation(line: 477, column: 7, scope: !2365)
!2377 = !DILocation(line: 477, column: 15, scope: !2365)
!2378 = !DILocation(line: 477, column: 19, scope: !2365)
!2379 = !DILocation(line: 478, column: 29, scope: !2365)
!2380 = !DILocation(line: 478, column: 24, scope: !2365)
!2381 = !DILocation(line: 478, column: 23, scope: !2365)
!2382 = !DILocation(line: 478, column: 36, scope: !2365)
!2383 = !DILocation(line: 478, column: 32, scope: !2365)
!2384 = !DILocation(line: 478, column: 7, scope: !2365)
!2385 = !DILocation(line: 478, column: 15, scope: !2365)
!2386 = !DILocation(line: 478, column: 19, scope: !2365)
!2387 = !DILocation(line: 479, column: 14, scope: !2365)
!2388 = !DILocation(line: 479, column: 14, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2365, file: !1, discriminator: 1)
!2390 = !DILocation(line: 479, column: 14, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2365, file: !1, discriminator: 2)
!2392 = !DILocation(line: 479, column: 14, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2365, file: !1, discriminator: 3)
!2394 = !DILocation(line: 479, column: 14, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2365, file: !1, discriminator: 4)
!2396 = !DILocation(line: 479, column: 14, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2365, file: !1, discriminator: 5)
!2398 = !DILocation(line: 479, column: 14, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2365, file: !1, discriminator: 6)
!2400 = !DILocation(line: 479, column: 7, scope: !2399)
!2401 = !DILocation(line: 482, column: 1, scope: !2278)
!2402 = distinct !DISubprogram(name: "gsl_sf_ellint_Dcomp_e", scope: !1, file: !1, line: 485, type: !44, isLocal: false, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2403 = !DILocalVariable(name: "k", arg: 1, scope: !2402, file: !1, line: 485, type: !47)
!2404 = !DILocation(line: 485, column: 30, scope: !2402)
!2405 = !DILocalVariable(name: "mode", arg: 2, scope: !2402, file: !1, line: 485, type: !48)
!2406 = !DILocation(line: 485, column: 44, scope: !2402)
!2407 = !DILocalVariable(name: "result", arg: 3, scope: !2402, file: !1, line: 485, type: !51)
!2408 = !DILocation(line: 485, column: 66, scope: !2402)
!2409 = !DILocation(line: 487, column: 6, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2402, file: !1, line: 487, column: 6)
!2411 = !DILocation(line: 487, column: 8, scope: !2410)
!2412 = !DILocation(line: 487, column: 7, scope: !2410)
!2413 = !DILocation(line: 487, column: 10, scope: !2410)
!2414 = !DILocation(line: 487, column: 6, scope: !2402)
!2415 = !DILocation(line: 488, column: 5, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2410, file: !1, line: 487, column: 18)
!2417 = distinct !{!2417, !2415}
!2418 = !DILocation(line: 488, column: 5, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2420, file: !1, discriminator: 1)
!2420 = distinct !DILexicalBlock(scope: !2416, file: !1, line: 488, column: 5)
!2421 = distinct !{!2421, !2422}
!2422 = !DILocation(line: 488, column: 5, scope: !2420)
!2423 = !DILocation(line: 488, column: 5, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !2425, file: !1, discriminator: 2)
!2425 = distinct !DILexicalBlock(scope: !2420, file: !1, line: 488, column: 5)
!2426 = !DILocation(line: 488, column: 5, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2420, file: !1, discriminator: 3)
!2428 = !DILocation(line: 489, column: 3, scope: !2416)
!2429 = !DILocalVariable(name: "y", scope: !2430, file: !1, line: 490, type: !60)
!2430 = distinct !DILexicalBlock(scope: !2410, file: !1, line: 489, column: 10)
!2431 = !DILocation(line: 490, column: 18, scope: !2430)
!2432 = !DILocation(line: 490, column: 28, scope: !2430)
!2433 = !DILocation(line: 490, column: 30, scope: !2430)
!2434 = !DILocation(line: 490, column: 29, scope: !2430)
!2435 = !DILocation(line: 490, column: 26, scope: !2430)
!2436 = !DILocalVariable(name: "rd", scope: !2430, file: !1, line: 491, type: !52)
!2437 = !DILocation(line: 491, column: 19, scope: !2430)
!2438 = !DILocalVariable(name: "status", scope: !2430, file: !1, line: 492, type: !103)
!2439 = !DILocation(line: 492, column: 15, scope: !2430)
!2440 = !DILocation(line: 492, column: 48, scope: !2430)
!2441 = !DILocation(line: 492, column: 56, scope: !2430)
!2442 = !DILocation(line: 492, column: 24, scope: !2430)
!2443 = !DILocation(line: 493, column: 34, scope: !2430)
!2444 = !DILocation(line: 493, column: 29, scope: !2430)
!2445 = !DILocation(line: 493, column: 5, scope: !2430)
!2446 = !DILocation(line: 493, column: 13, scope: !2430)
!2447 = !DILocation(line: 493, column: 17, scope: !2430)
!2448 = !DILocation(line: 494, column: 42, scope: !2430)
!2449 = !DILocation(line: 494, column: 50, scope: !2430)
!2450 = !DILocation(line: 494, column: 37, scope: !2430)
!2451 = !DILocation(line: 494, column: 35, scope: !2430)
!2452 = !DILocation(line: 494, column: 75, scope: !2430)
!2453 = !DILocation(line: 494, column: 70, scope: !2430)
!2454 = !DILocation(line: 494, column: 57, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2430, file: !1, discriminator: 1)
!2456 = !DILocation(line: 494, column: 55, scope: !2430)
!2457 = !DILocation(line: 494, column: 5, scope: !2430)
!2458 = !DILocation(line: 494, column: 13, scope: !2430)
!2459 = !DILocation(line: 494, column: 17, scope: !2430)
!2460 = !DILocation(line: 495, column: 12, scope: !2430)
!2461 = !DILocation(line: 495, column: 5, scope: !2430)
!2462 = !DILocation(line: 497, column: 1, scope: !2402)
!2463 = distinct !DISubprogram(name: "gsl_sf_ellint_Kcomp", scope: !1, file: !1, line: 593, type: !2464, isLocal: false, isDefinition: true, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!47, !47, !48}
!2466 = !DILocalVariable(name: "k", arg: 1, scope: !2463, file: !1, line: 593, type: !47)
!2467 = !DILocation(line: 593, column: 35, scope: !2463)
!2468 = !DILocalVariable(name: "mode", arg: 2, scope: !2463, file: !1, line: 593, type: !48)
!2469 = !DILocation(line: 593, column: 49, scope: !2463)
!2470 = !DILocalVariable(name: "result", scope: !2463, file: !1, line: 595, type: !52)
!2471 = !DILocation(line: 595, column: 3, scope: !2463)
!2472 = !DILocalVariable(name: "status", scope: !2463, file: !1, line: 595, type: !46)
!2473 = !DILocation(line: 595, column: 3, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2463, file: !1, line: 595, column: 3)
!2475 = !DILocation(line: 595, column: 3, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2477, file: !1, discriminator: 1)
!2477 = distinct !DILexicalBlock(scope: !2474, file: !1, line: 595, column: 3)
!2478 = distinct !{!2478, !2479}
!2479 = !DILocation(line: 595, column: 3, scope: !2477)
!2480 = !DILocation(line: 595, column: 3, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2482, file: !1, discriminator: 2)
!2482 = distinct !DILexicalBlock(scope: !2477, file: !1, line: 595, column: 3)
!2483 = !DILocation(line: 595, column: 3, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2477, file: !1, discriminator: 3)
!2485 = !DILocation(line: 595, column: 3, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !2463, file: !1, discriminator: 4)
!2487 = !DILocation(line: 596, column: 1, scope: !2463)
!2488 = distinct !DISubprogram(name: "gsl_sf_ellint_Ecomp", scope: !1, file: !1, line: 598, type: !2464, isLocal: false, isDefinition: true, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2489 = !DILocalVariable(name: "k", arg: 1, scope: !2488, file: !1, line: 598, type: !47)
!2490 = !DILocation(line: 598, column: 35, scope: !2488)
!2491 = !DILocalVariable(name: "mode", arg: 2, scope: !2488, file: !1, line: 598, type: !48)
!2492 = !DILocation(line: 598, column: 49, scope: !2488)
!2493 = !DILocalVariable(name: "result", scope: !2488, file: !1, line: 600, type: !52)
!2494 = !DILocation(line: 600, column: 3, scope: !2488)
!2495 = !DILocalVariable(name: "status", scope: !2488, file: !1, line: 600, type: !46)
!2496 = !DILocation(line: 600, column: 3, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2488, file: !1, line: 600, column: 3)
!2498 = !DILocation(line: 600, column: 3, scope: !2499)
!2499 = !DILexicalBlockFile(scope: !2500, file: !1, discriminator: 1)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !1, line: 600, column: 3)
!2501 = distinct !{!2501, !2502}
!2502 = !DILocation(line: 600, column: 3, scope: !2500)
!2503 = !DILocation(line: 600, column: 3, scope: !2504)
!2504 = !DILexicalBlockFile(scope: !2505, file: !1, discriminator: 2)
!2505 = distinct !DILexicalBlock(scope: !2500, file: !1, line: 600, column: 3)
!2506 = !DILocation(line: 600, column: 3, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !2500, file: !1, discriminator: 3)
!2508 = !DILocation(line: 600, column: 3, scope: !2509)
!2509 = !DILexicalBlockFile(scope: !2488, file: !1, discriminator: 4)
!2510 = !DILocation(line: 601, column: 1, scope: !2488)
!2511 = distinct !DISubprogram(name: "gsl_sf_ellint_Pcomp", scope: !1, file: !1, line: 603, type: !2512, isLocal: false, isDefinition: true, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!47, !47, !47, !48}
!2514 = !DILocalVariable(name: "k", arg: 1, scope: !2511, file: !1, line: 603, type: !47)
!2515 = !DILocation(line: 603, column: 35, scope: !2511)
!2516 = !DILocalVariable(name: "n", arg: 2, scope: !2511, file: !1, line: 603, type: !47)
!2517 = !DILocation(line: 603, column: 45, scope: !2511)
!2518 = !DILocalVariable(name: "mode", arg: 3, scope: !2511, file: !1, line: 603, type: !48)
!2519 = !DILocation(line: 603, column: 59, scope: !2511)
!2520 = !DILocalVariable(name: "result", scope: !2511, file: !1, line: 605, type: !52)
!2521 = !DILocation(line: 605, column: 3, scope: !2511)
!2522 = !DILocalVariable(name: "status", scope: !2511, file: !1, line: 605, type: !46)
!2523 = !DILocation(line: 605, column: 3, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2511, file: !1, line: 605, column: 3)
!2525 = !DILocation(line: 605, column: 3, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2527, file: !1, discriminator: 1)
!2527 = distinct !DILexicalBlock(scope: !2524, file: !1, line: 605, column: 3)
!2528 = distinct !{!2528, !2529}
!2529 = !DILocation(line: 605, column: 3, scope: !2527)
!2530 = !DILocation(line: 605, column: 3, scope: !2531)
!2531 = !DILexicalBlockFile(scope: !2532, file: !1, discriminator: 2)
!2532 = distinct !DILexicalBlock(scope: !2527, file: !1, line: 605, column: 3)
!2533 = !DILocation(line: 605, column: 3, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2527, file: !1, discriminator: 3)
!2535 = !DILocation(line: 605, column: 3, scope: !2536)
!2536 = !DILexicalBlockFile(scope: !2511, file: !1, discriminator: 4)
!2537 = !DILocation(line: 606, column: 1, scope: !2511)
!2538 = distinct !DISubprogram(name: "gsl_sf_ellint_Dcomp", scope: !1, file: !1, line: 608, type: !2464, isLocal: false, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2539 = !DILocalVariable(name: "k", arg: 1, scope: !2538, file: !1, line: 608, type: !47)
!2540 = !DILocation(line: 608, column: 35, scope: !2538)
!2541 = !DILocalVariable(name: "mode", arg: 2, scope: !2538, file: !1, line: 608, type: !48)
!2542 = !DILocation(line: 608, column: 49, scope: !2538)
!2543 = !DILocalVariable(name: "result", scope: !2538, file: !1, line: 610, type: !52)
!2544 = !DILocation(line: 610, column: 3, scope: !2538)
!2545 = !DILocalVariable(name: "status", scope: !2538, file: !1, line: 610, type: !46)
!2546 = !DILocation(line: 610, column: 3, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2538, file: !1, line: 610, column: 3)
!2548 = !DILocation(line: 610, column: 3, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2550, file: !1, discriminator: 1)
!2550 = distinct !DILexicalBlock(scope: !2547, file: !1, line: 610, column: 3)
!2551 = distinct !{!2551, !2552}
!2552 = !DILocation(line: 610, column: 3, scope: !2550)
!2553 = !DILocation(line: 610, column: 3, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !2555, file: !1, discriminator: 2)
!2555 = distinct !DILexicalBlock(scope: !2550, file: !1, line: 610, column: 3)
!2556 = !DILocation(line: 610, column: 3, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2550, file: !1, discriminator: 3)
!2558 = !DILocation(line: 610, column: 3, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2538, file: !1, discriminator: 4)
!2560 = !DILocation(line: 611, column: 1, scope: !2538)
!2561 = distinct !DISubprogram(name: "gsl_sf_ellint_F", scope: !1, file: !1, line: 613, type: !2512, isLocal: false, isDefinition: true, scopeLine: 614, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2562 = !DILocalVariable(name: "phi", arg: 1, scope: !2561, file: !1, line: 613, type: !47)
!2563 = !DILocation(line: 613, column: 31, scope: !2561)
!2564 = !DILocalVariable(name: "k", arg: 2, scope: !2561, file: !1, line: 613, type: !47)
!2565 = !DILocation(line: 613, column: 43, scope: !2561)
!2566 = !DILocalVariable(name: "mode", arg: 3, scope: !2561, file: !1, line: 613, type: !48)
!2567 = !DILocation(line: 613, column: 57, scope: !2561)
!2568 = !DILocalVariable(name: "result", scope: !2561, file: !1, line: 615, type: !52)
!2569 = !DILocation(line: 615, column: 3, scope: !2561)
!2570 = !DILocalVariable(name: "status", scope: !2561, file: !1, line: 615, type: !46)
!2571 = !DILocation(line: 615, column: 3, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2561, file: !1, line: 615, column: 3)
!2573 = !DILocation(line: 615, column: 3, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !2575, file: !1, discriminator: 1)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !1, line: 615, column: 3)
!2576 = distinct !{!2576, !2577}
!2577 = !DILocation(line: 615, column: 3, scope: !2575)
!2578 = !DILocation(line: 615, column: 3, scope: !2579)
!2579 = !DILexicalBlockFile(scope: !2580, file: !1, discriminator: 2)
!2580 = distinct !DILexicalBlock(scope: !2575, file: !1, line: 615, column: 3)
!2581 = !DILocation(line: 615, column: 3, scope: !2582)
!2582 = !DILexicalBlockFile(scope: !2575, file: !1, discriminator: 3)
!2583 = !DILocation(line: 615, column: 3, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2561, file: !1, discriminator: 4)
!2585 = !DILocation(line: 616, column: 1, scope: !2561)
!2586 = distinct !DISubprogram(name: "gsl_sf_ellint_E", scope: !1, file: !1, line: 618, type: !2512, isLocal: false, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2587 = !DILocalVariable(name: "phi", arg: 1, scope: !2586, file: !1, line: 618, type: !47)
!2588 = !DILocation(line: 618, column: 31, scope: !2586)
!2589 = !DILocalVariable(name: "k", arg: 2, scope: !2586, file: !1, line: 618, type: !47)
!2590 = !DILocation(line: 618, column: 43, scope: !2586)
!2591 = !DILocalVariable(name: "mode", arg: 3, scope: !2586, file: !1, line: 618, type: !48)
!2592 = !DILocation(line: 618, column: 57, scope: !2586)
!2593 = !DILocalVariable(name: "result", scope: !2586, file: !1, line: 620, type: !52)
!2594 = !DILocation(line: 620, column: 3, scope: !2586)
!2595 = !DILocalVariable(name: "status", scope: !2586, file: !1, line: 620, type: !46)
!2596 = !DILocation(line: 620, column: 3, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2586, file: !1, line: 620, column: 3)
!2598 = !DILocation(line: 620, column: 3, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2600, file: !1, discriminator: 1)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !1, line: 620, column: 3)
!2601 = distinct !{!2601, !2602}
!2602 = !DILocation(line: 620, column: 3, scope: !2600)
!2603 = !DILocation(line: 620, column: 3, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !2605, file: !1, discriminator: 2)
!2605 = distinct !DILexicalBlock(scope: !2600, file: !1, line: 620, column: 3)
!2606 = !DILocation(line: 620, column: 3, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2600, file: !1, discriminator: 3)
!2608 = !DILocation(line: 620, column: 3, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2586, file: !1, discriminator: 4)
!2610 = !DILocation(line: 621, column: 1, scope: !2586)
!2611 = distinct !DISubprogram(name: "gsl_sf_ellint_P", scope: !1, file: !1, line: 623, type: !2612, isLocal: false, isDefinition: true, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!47, !47, !47, !47, !48}
!2614 = !DILocalVariable(name: "phi", arg: 1, scope: !2611, file: !1, line: 623, type: !47)
!2615 = !DILocation(line: 623, column: 31, scope: !2611)
!2616 = !DILocalVariable(name: "k", arg: 2, scope: !2611, file: !1, line: 623, type: !47)
!2617 = !DILocation(line: 623, column: 43, scope: !2611)
!2618 = !DILocalVariable(name: "n", arg: 3, scope: !2611, file: !1, line: 623, type: !47)
!2619 = !DILocation(line: 623, column: 53, scope: !2611)
!2620 = !DILocalVariable(name: "mode", arg: 4, scope: !2611, file: !1, line: 623, type: !48)
!2621 = !DILocation(line: 623, column: 67, scope: !2611)
!2622 = !DILocalVariable(name: "result", scope: !2611, file: !1, line: 625, type: !52)
!2623 = !DILocation(line: 625, column: 3, scope: !2611)
!2624 = !DILocalVariable(name: "status", scope: !2611, file: !1, line: 625, type: !46)
!2625 = !DILocation(line: 625, column: 3, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2611, file: !1, line: 625, column: 3)
!2627 = !DILocation(line: 625, column: 3, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !2629, file: !1, discriminator: 1)
!2629 = distinct !DILexicalBlock(scope: !2626, file: !1, line: 625, column: 3)
!2630 = distinct !{!2630, !2631}
!2631 = !DILocation(line: 625, column: 3, scope: !2629)
!2632 = !DILocation(line: 625, column: 3, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2634, file: !1, discriminator: 2)
!2634 = distinct !DILexicalBlock(scope: !2629, file: !1, line: 625, column: 3)
!2635 = !DILocation(line: 625, column: 3, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !2629, file: !1, discriminator: 3)
!2637 = !DILocation(line: 625, column: 3, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2611, file: !1, discriminator: 4)
!2639 = !DILocation(line: 626, column: 1, scope: !2611)
!2640 = distinct !DISubprogram(name: "gsl_sf_ellint_D", scope: !1, file: !1, line: 628, type: !2512, isLocal: false, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2641 = !DILocalVariable(name: "phi", arg: 1, scope: !2640, file: !1, line: 628, type: !47)
!2642 = !DILocation(line: 628, column: 31, scope: !2640)
!2643 = !DILocalVariable(name: "k", arg: 2, scope: !2640, file: !1, line: 628, type: !47)
!2644 = !DILocation(line: 628, column: 43, scope: !2640)
!2645 = !DILocalVariable(name: "mode", arg: 3, scope: !2640, file: !1, line: 628, type: !48)
!2646 = !DILocation(line: 628, column: 57, scope: !2640)
!2647 = !DILocalVariable(name: "result", scope: !2640, file: !1, line: 630, type: !52)
!2648 = !DILocation(line: 630, column: 3, scope: !2640)
!2649 = !DILocalVariable(name: "status", scope: !2640, file: !1, line: 630, type: !46)
!2650 = !DILocation(line: 630, column: 3, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 630, column: 3)
!2652 = !DILocation(line: 630, column: 3, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2654, file: !1, discriminator: 1)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !1, line: 630, column: 3)
!2655 = distinct !{!2655, !2656}
!2656 = !DILocation(line: 630, column: 3, scope: !2654)
!2657 = !DILocation(line: 630, column: 3, scope: !2658)
!2658 = !DILexicalBlockFile(scope: !2659, file: !1, discriminator: 2)
!2659 = distinct !DILexicalBlock(scope: !2654, file: !1, line: 630, column: 3)
!2660 = !DILocation(line: 630, column: 3, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2654, file: !1, discriminator: 3)
!2662 = !DILocation(line: 630, column: 3, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !2640, file: !1, discriminator: 4)
!2664 = !DILocation(line: 631, column: 1, scope: !2640)
!2665 = distinct !DISubprogram(name: "gsl_sf_ellint_RC", scope: !1, file: !1, line: 633, type: !2512, isLocal: false, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2666 = !DILocalVariable(name: "x", arg: 1, scope: !2665, file: !1, line: 633, type: !47)
!2667 = !DILocation(line: 633, column: 32, scope: !2665)
!2668 = !DILocalVariable(name: "y", arg: 2, scope: !2665, file: !1, line: 633, type: !47)
!2669 = !DILocation(line: 633, column: 42, scope: !2665)
!2670 = !DILocalVariable(name: "mode", arg: 3, scope: !2665, file: !1, line: 633, type: !48)
!2671 = !DILocation(line: 633, column: 56, scope: !2665)
!2672 = !DILocalVariable(name: "result", scope: !2665, file: !1, line: 635, type: !52)
!2673 = !DILocation(line: 635, column: 3, scope: !2665)
!2674 = !DILocalVariable(name: "status", scope: !2665, file: !1, line: 635, type: !46)
!2675 = !DILocation(line: 635, column: 3, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2665, file: !1, line: 635, column: 3)
!2677 = !DILocation(line: 635, column: 3, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2679, file: !1, discriminator: 1)
!2679 = distinct !DILexicalBlock(scope: !2676, file: !1, line: 635, column: 3)
!2680 = distinct !{!2680, !2681}
!2681 = !DILocation(line: 635, column: 3, scope: !2679)
!2682 = !DILocation(line: 635, column: 3, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2684, file: !1, discriminator: 2)
!2684 = distinct !DILexicalBlock(scope: !2679, file: !1, line: 635, column: 3)
!2685 = !DILocation(line: 635, column: 3, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2679, file: !1, discriminator: 3)
!2687 = !DILocation(line: 635, column: 3, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !2665, file: !1, discriminator: 4)
!2689 = !DILocation(line: 636, column: 1, scope: !2665)
!2690 = distinct !DISubprogram(name: "gsl_sf_ellint_RD", scope: !1, file: !1, line: 638, type: !2612, isLocal: false, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2691 = !DILocalVariable(name: "x", arg: 1, scope: !2690, file: !1, line: 638, type: !47)
!2692 = !DILocation(line: 638, column: 32, scope: !2690)
!2693 = !DILocalVariable(name: "y", arg: 2, scope: !2690, file: !1, line: 638, type: !47)
!2694 = !DILocation(line: 638, column: 42, scope: !2690)
!2695 = !DILocalVariable(name: "z", arg: 3, scope: !2690, file: !1, line: 638, type: !47)
!2696 = !DILocation(line: 638, column: 52, scope: !2690)
!2697 = !DILocalVariable(name: "mode", arg: 4, scope: !2690, file: !1, line: 638, type: !48)
!2698 = !DILocation(line: 638, column: 66, scope: !2690)
!2699 = !DILocalVariable(name: "result", scope: !2690, file: !1, line: 640, type: !52)
!2700 = !DILocation(line: 640, column: 3, scope: !2690)
!2701 = !DILocalVariable(name: "status", scope: !2690, file: !1, line: 640, type: !46)
!2702 = !DILocation(line: 640, column: 3, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2690, file: !1, line: 640, column: 3)
!2704 = !DILocation(line: 640, column: 3, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2706, file: !1, discriminator: 1)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !1, line: 640, column: 3)
!2707 = distinct !{!2707, !2708}
!2708 = !DILocation(line: 640, column: 3, scope: !2706)
!2709 = !DILocation(line: 640, column: 3, scope: !2710)
!2710 = !DILexicalBlockFile(scope: !2711, file: !1, discriminator: 2)
!2711 = distinct !DILexicalBlock(scope: !2706, file: !1, line: 640, column: 3)
!2712 = !DILocation(line: 640, column: 3, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2706, file: !1, discriminator: 3)
!2714 = !DILocation(line: 640, column: 3, scope: !2715)
!2715 = !DILexicalBlockFile(scope: !2690, file: !1, discriminator: 4)
!2716 = !DILocation(line: 641, column: 1, scope: !2690)
!2717 = distinct !DISubprogram(name: "gsl_sf_ellint_RF", scope: !1, file: !1, line: 643, type: !2612, isLocal: false, isDefinition: true, scopeLine: 644, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2718 = !DILocalVariable(name: "x", arg: 1, scope: !2717, file: !1, line: 643, type: !47)
!2719 = !DILocation(line: 643, column: 32, scope: !2717)
!2720 = !DILocalVariable(name: "y", arg: 2, scope: !2717, file: !1, line: 643, type: !47)
!2721 = !DILocation(line: 643, column: 42, scope: !2717)
!2722 = !DILocalVariable(name: "z", arg: 3, scope: !2717, file: !1, line: 643, type: !47)
!2723 = !DILocation(line: 643, column: 52, scope: !2717)
!2724 = !DILocalVariable(name: "mode", arg: 4, scope: !2717, file: !1, line: 643, type: !48)
!2725 = !DILocation(line: 643, column: 66, scope: !2717)
!2726 = !DILocalVariable(name: "result", scope: !2717, file: !1, line: 645, type: !52)
!2727 = !DILocation(line: 645, column: 3, scope: !2717)
!2728 = !DILocalVariable(name: "status", scope: !2717, file: !1, line: 645, type: !46)
!2729 = !DILocation(line: 645, column: 3, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2717, file: !1, line: 645, column: 3)
!2731 = !DILocation(line: 645, column: 3, scope: !2732)
!2732 = !DILexicalBlockFile(scope: !2733, file: !1, discriminator: 1)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !1, line: 645, column: 3)
!2734 = distinct !{!2734, !2735}
!2735 = !DILocation(line: 645, column: 3, scope: !2733)
!2736 = !DILocation(line: 645, column: 3, scope: !2737)
!2737 = !DILexicalBlockFile(scope: !2738, file: !1, discriminator: 2)
!2738 = distinct !DILexicalBlock(scope: !2733, file: !1, line: 645, column: 3)
!2739 = !DILocation(line: 645, column: 3, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2733, file: !1, discriminator: 3)
!2741 = !DILocation(line: 645, column: 3, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2717, file: !1, discriminator: 4)
!2743 = !DILocation(line: 646, column: 1, scope: !2717)
!2744 = distinct !DISubprogram(name: "gsl_sf_ellint_RJ", scope: !1, file: !1, line: 648, type: !2745, isLocal: false, isDefinition: true, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!47, !47, !47, !47, !47, !48}
!2747 = !DILocalVariable(name: "x", arg: 1, scope: !2744, file: !1, line: 648, type: !47)
!2748 = !DILocation(line: 648, column: 32, scope: !2744)
!2749 = !DILocalVariable(name: "y", arg: 2, scope: !2744, file: !1, line: 648, type: !47)
!2750 = !DILocation(line: 648, column: 42, scope: !2744)
!2751 = !DILocalVariable(name: "z", arg: 3, scope: !2744, file: !1, line: 648, type: !47)
!2752 = !DILocation(line: 648, column: 52, scope: !2744)
!2753 = !DILocalVariable(name: "p", arg: 4, scope: !2744, file: !1, line: 648, type: !47)
!2754 = !DILocation(line: 648, column: 62, scope: !2744)
!2755 = !DILocalVariable(name: "mode", arg: 5, scope: !2744, file: !1, line: 648, type: !48)
!2756 = !DILocation(line: 648, column: 76, scope: !2744)
!2757 = !DILocalVariable(name: "result", scope: !2744, file: !1, line: 650, type: !52)
!2758 = !DILocation(line: 650, column: 3, scope: !2744)
!2759 = !DILocalVariable(name: "status", scope: !2744, file: !1, line: 650, type: !46)
!2760 = !DILocation(line: 650, column: 3, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2744, file: !1, line: 650, column: 3)
!2762 = !DILocation(line: 650, column: 3, scope: !2763)
!2763 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 1)
!2764 = distinct !DILexicalBlock(scope: !2761, file: !1, line: 650, column: 3)
!2765 = distinct !{!2765, !2766}
!2766 = !DILocation(line: 650, column: 3, scope: !2764)
!2767 = !DILocation(line: 650, column: 3, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !2769, file: !1, discriminator: 2)
!2769 = distinct !DILexicalBlock(scope: !2764, file: !1, line: 650, column: 3)
!2770 = !DILocation(line: 650, column: 3, scope: !2771)
!2771 = !DILexicalBlockFile(scope: !2764, file: !1, discriminator: 3)
!2772 = !DILocation(line: 650, column: 3, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !2744, file: !1, discriminator: 4)
!2774 = !DILocation(line: 651, column: 1, scope: !2744)
