; ModuleID = 'bessel_Kn.ll'
source_filename = "bessel_Kn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Kn.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"gsl_sf_bessel_Kn_scaled_e(n, x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_Kn_e(n, x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@0 = private unnamed_addr constant [26 x i8] c"gsl_sf_bessel_Kn_scaled_e\00"
@1 = private unnamed_addr constant [13 x i8] c"bessel_Kn.ll\00"
@2 = private unnamed_addr constant [25 x i8] c"bessel_Kn_scaled_small_x\00"
@3 = private unnamed_addr constant [13 x i8] c"bessel_Kn.ll\00"
@4 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_Kn_e\00"
@5 = private unnamed_addr constant [13 x i8] c"bessel_Kn.ll\00"
@6 = private unnamed_addr constant [30 x i8] c"gsl_sf_bessel_Kn_scaled_array\00"
@7 = private unnamed_addr constant [13 x i8] c"bessel_Kn.ll\00"
@8 = private unnamed_addr constant [23 x i8] c"gsl_sf_bessel_Kn_array\00"
@9 = private unnamed_addr constant [13 x i8] c"bessel_Kn.ll\00"
@10 = private unnamed_addr constant [24 x i8] c"gsl_sf_bessel_Kn_scaled\00"
@11 = private unnamed_addr constant [13 x i8] c"bessel_Kn.ll\00"
@12 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_Kn\00"
@13 = private unnamed_addr constant [13 x i8] c"bessel_Kn.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Kn_scaled_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !48 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !61, metadata !62), !dbg !63
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !64, metadata !62), !dbg !65
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !66, metadata !62), !dbg !67
  %17 = load i32, i32* %5, align 4, !dbg !68
  %18 = call i32 @abs(i32 %17) #1, !dbg !69
  store i32 %18, i32* %5, align 4, !dbg !70
  %19 = load double, double* %6, align 8, !dbg !71
  %20 = fcmp ole double %19, 0.000000e+00, !dbg !73
  %21 = call i1 @fCmpInstHandler(double %19, double 0.000000e+00, i1 %20, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400463408, i32 108, i32 8), !dbg !74
  br i1 %21, label %22, label %31, !dbg !74

; <label>:22:                                     ; preds = %3
  br label %23, !dbg !75, !llvm.loop !77

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !78
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !78
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !78
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !78
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !78
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !78
  br label %28, !dbg !78, !llvm.loop !81

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 109, i32 1), !dbg !83
  store i32 1, i32* %4, align 4, !dbg !83
  br label %202, !dbg !83
                                                  ; No predecessors!
  br label %30, !dbg !86

; <label>:30:                                     ; preds = %29
  br label %202, !dbg !88

; <label>:31:                                     ; preds = %3
  %32 = load i32, i32* %5, align 4, !dbg !89
  %33 = icmp eq i32 %32, 0, !dbg !91
  %34 = sext i32 %32 to i64, !dbg !92
  %35 = call i1 @iCmpInstHandler(i64 %34, i64 0, i1 %33, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400477456, i32 111, i32 13), !dbg !92
  br i1 %35, label %36, label %40, !dbg !92

; <label>:36:                                     ; preds = %31
  %37 = load double, double* %6, align 8, !dbg !93
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !95
  %39 = call i32 @gsl_sf_bessel_K0_scaled_e(double %37, %struct.gsl_sf_result_struct* %38), !dbg !96
  store i32 %39, i32* %4, align 4, !dbg !97
  br label %202, !dbg !97

; <label>:40:                                     ; preds = %31
  %41 = load i32, i32* %5, align 4, !dbg !98
  %42 = icmp eq i32 %41, 1, !dbg !100
  %43 = sext i32 %41 to i64, !dbg !101
  %44 = call i1 @iCmpInstHandler(i64 %43, i64 1, i1 %42, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400483216, i32 114, i32 13), !dbg !101
  br i1 %44, label %45, label %49, !dbg !101

; <label>:45:                                     ; preds = %40
  %46 = load double, double* %6, align 8, !dbg !102
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !104
  %48 = call i32 @gsl_sf_bessel_K1_scaled_e(double %46, %struct.gsl_sf_result_struct* %47), !dbg !105
  store i32 %48, i32* %4, align 4, !dbg !106
  br label %202, !dbg !106

; <label>:49:                                     ; preds = %40
  %50 = load double, double* %6, align 8, !dbg !107
  %51 = fcmp ole double %50, 5.000000e+00, !dbg !109
  %52 = call i1 @fCmpInstHandler(double %50, double 5.000000e+00, i1 %51, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400488496, i32 117, i32 13), !dbg !110
  br i1 %52, label %53, label %58, !dbg !110

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %5, align 4, !dbg !111
  %55 = load double, double* %6, align 8, !dbg !113
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !114
  %57 = call i32 @bessel_Kn_scaled_small_x(i32 %54, double %55, %struct.gsl_sf_result_struct* %56), !dbg !115
  store i32 %57, i32* %4, align 4, !dbg !116
  br label %202, !dbg !116

; <label>:58:                                     ; preds = %49
  %59 = load double, double* %6, align 8, !dbg !117
  %60 = fmul double 0x3ED965FEA53D6E41, %59, !dbg !119
  call void @fMulHandler(double 0x3ED965FEA53D6E41, double %59, double %60, i64 0, i64 94920400494136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400494544, i32 120, i32 33), !dbg !120
  %61 = load i32, i32* %5, align 4, !dbg !120
  %62 = load i32, i32* %5, align 4, !dbg !121
  %63 = mul nsw i32 %61, %62, !dbg !122
  %64 = add nsw i32 %63, 1, !dbg !123
  %65 = sitofp i32 %64 to double, !dbg !124
  %66 = fmul double 2.500000e-01, %65, !dbg !125
  call void @fMulHandler(double 2.500000e-01, double %65, double %66, i64 0, i64 94920400496536, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400497040, i32 120, i32 44), !dbg !126
  %67 = fcmp ogt double %60, %66, !dbg !126
  %68 = call i1 @fCmpInstHandler(double %60, double %66, i1 %67, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400497424, i32 120, i32 37), !dbg !127
  br i1 %68, label %69, label %75, !dbg !127

; <label>:69:                                     ; preds = %58
  %70 = load i32, i32* %5, align 4, !dbg !128
  %71 = sitofp i32 %70 to double, !dbg !130
  %72 = load double, double* %6, align 8, !dbg !131
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !132
  %74 = call i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double %71, double %72, %struct.gsl_sf_result_struct* %73), !dbg !133
  store i32 %74, i32* %4, align 4, !dbg !134
  br label %202, !dbg !134

; <label>:75:                                     ; preds = %58
  %76 = load i32, i32* %5, align 4, !dbg !135
  %77 = load i32, i32* %5, align 4, !dbg !135
  %78 = mul nsw i32 %76, %77, !dbg !135
  %79 = sitofp i32 %78 to double, !dbg !135
  %80 = fdiv double 2.900000e-01, %79, !dbg !135
  call void @fDivHandler(double 2.900000e-01, double %79, double %80, i64 0, i64 94920400506200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400506416, i32 123, i32 11), !dbg !135
  %81 = load i32, i32* %5, align 4, !dbg !135
  %82 = load i32, i32* %5, align 4, !dbg !135
  %83 = mul nsw i32 %81, %82, !dbg !135
  %84 = sitofp i32 %83 to double, !dbg !135
  %85 = load double, double* %6, align 8, !dbg !135
  %86 = load double, double* %6, align 8, !dbg !135
  %87 = fmul double %85, %86, !dbg !135
  call void @fMulHandler(double %85, double %86, double %87, i64 94920400506936, i64 94920400507032, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400507152, i32 123, i32 11), !dbg !135
  %88 = fadd double %84, %87, !dbg !135
  call void @fAddHandler(double %84, double %87, double %88, i64 94920400506840, i64 94920400507152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400507280, i32 123, i32 11), !dbg !135
  %89 = fdiv double 5.000000e-01, %88, !dbg !135
  call void @fDivHandler(double 5.000000e-01, double %88, double %89, i64 0, i64 94920400507280, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400507472, i32 123, i32 11), !dbg !135
  %90 = fcmp olt double %80, %89, !dbg !135
  %91 = call i1 @fCmpInstHandler(double %80, double %89, i1 %90, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400507600, i32 123, i32 11), !dbg !135
  br i1 %91, label %92, label %98, !dbg !135

; <label>:92:                                     ; preds = %75
  %93 = load i32, i32* %5, align 4, !dbg !137
  %94 = load i32, i32* %5, align 4, !dbg !137
  %95 = mul nsw i32 %93, %94, !dbg !137
  %96 = sitofp i32 %95 to double, !dbg !137
  %97 = fdiv double 2.900000e-01, %96, !dbg !137
  call void @fDivHandler(double 2.900000e-01, double %96, double %97, i64 0, i64 94920400510200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400510352, i32 123, i32 11), !dbg !137
  br label %108, !dbg !137

; <label>:98:                                     ; preds = %75
  %99 = load i32, i32* %5, align 4, !dbg !139
  %100 = load i32, i32* %5, align 4, !dbg !139
  %101 = mul nsw i32 %99, %100, !dbg !139
  %102 = sitofp i32 %101 to double, !dbg !139
  %103 = load double, double* %6, align 8, !dbg !139
  %104 = load double, double* %6, align 8, !dbg !139
  %105 = fmul double %103, %104, !dbg !139
  call void @fMulHandler(double %103, double %104, double %105, i64 94920400512856, i64 94920400512952, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400513072, i32 123, i32 11), !dbg !139
  %106 = fadd double %102, %105, !dbg !139
  call void @fAddHandler(double %102, double %105, double %106, i64 94920400512760, i64 94920400513072, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400513200, i32 123, i32 11), !dbg !139
  %107 = fdiv double 5.000000e-01, %106, !dbg !139
  call void @fDivHandler(double 5.000000e-01, double %106, double %107, i64 0, i64 94920400513200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400513360, i32 123, i32 11), !dbg !139
  br label %108, !dbg !139

; <label>:108:                                    ; preds = %98, %92
  %109 = phi double [ %97, %92 ], [ %107, %98 ], !dbg !141
  %110 = fcmp olt double %109, 0x3ED965FEA53D6E41, !dbg !143
  %111 = call i1 @fCmpInstHandler(double %109, double 0x3ED965FEA53D6E41, i1 %110, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400513952, i32 123, i32 48), !dbg !141
  br i1 %111, label %112, label %118, !dbg !141

; <label>:112:                                    ; preds = %108
  %113 = load i32, i32* %5, align 4, !dbg !144
  %114 = sitofp i32 %113 to double, !dbg !146
  %115 = load double, double* %6, align 8, !dbg !147
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !148
  %117 = call i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double %114, double %115, %struct.gsl_sf_result_struct* %116), !dbg !149
  store i32 %117, i32* %4, align 4, !dbg !150
  br label %202, !dbg !150

; <label>:118:                                    ; preds = %108
  call void @llvm.dbg.declare(metadata double* %8, metadata !151, metadata !62), !dbg !153
  %119 = load double, double* %6, align 8, !dbg !154
  %120 = fdiv double 2.000000e+00, %119, !dbg !155
  call void @fDivHandler(double 2.000000e+00, double %119, double %120, i64 0, i64 94920400521960, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400522432, i32 128, i32 28), !dbg !153
  store double %120, double* %8, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !156, metadata !62), !dbg !157
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !158, metadata !62), !dbg !159
  call void @llvm.dbg.declare(metadata i32* %11, metadata !160, metadata !62), !dbg !161
  %121 = load double, double* %6, align 8, !dbg !162
  %122 = call i32 @gsl_sf_bessel_K0_scaled_e(double %121, %struct.gsl_sf_result_struct* %9), !dbg !163
  store i32 %122, i32* %11, align 4, !dbg !161
  call void @llvm.dbg.declare(metadata i32* %12, metadata !164, metadata !62), !dbg !165
  %123 = load double, double* %6, align 8, !dbg !166
  %124 = call i32 @gsl_sf_bessel_K1_scaled_e(double %123, %struct.gsl_sf_result_struct* %10), !dbg !167
  store i32 %124, i32* %12, align 4, !dbg !165
  call void @llvm.dbg.declare(metadata double* %13, metadata !168, metadata !62), !dbg !169
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !170
  %126 = load double, double* %125, align 8, !dbg !170
  store double %126, double* %13, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata double* %14, metadata !171, metadata !62), !dbg !172
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !173
  %128 = load double, double* %127, align 8, !dbg !173
  store double %128, double* %14, align 8, !dbg !172
  call void @llvm.dbg.declare(metadata double* %15, metadata !174, metadata !62), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %16, metadata !176, metadata !62), !dbg !177
  store i32 1, i32* %16, align 4, !dbg !178
  br label %129, !dbg !180

; <label>:129:                                    ; preds = %147, %118
  %130 = load i32, i32* %16, align 4, !dbg !181
  %131 = load i32, i32* %5, align 4, !dbg !184
  %132 = icmp slt i32 %130, %131, !dbg !185
  %133 = sext i32 %130 to i64, !dbg !186
  %134 = sext i32 %131 to i64, !dbg !186
  %135 = call i1 @iCmpInstHandler(i64 %133, i64 %134, i1 %132, i32 40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400547584, i32 138, i32 15), !dbg !186
  br i1 %135, label %136, label %150, !dbg !186

; <label>:136:                                    ; preds = %129
  %137 = load double, double* %13, align 8, !dbg !187
  %138 = load i32, i32* %16, align 4, !dbg !189
  %139 = sitofp i32 %138 to double, !dbg !189
  %140 = load double, double* %8, align 8, !dbg !190
  %141 = fmul double %139, %140, !dbg !191
  call void @fMulHandler(double %139, double %140, double %141, i64 94920400549400, i64 94920400551048, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400553520, i32 139, i32 25), !dbg !192
  %142 = load double, double* %14, align 8, !dbg !192
  %143 = fmul double %141, %142, !dbg !193
  call void @fMulHandler(double %141, double %142, double %143, i64 94920400553520, i64 94920400553912, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400554320, i32 139, i32 38), !dbg !194
  %144 = fadd double %137, %143, !dbg !194
  call void @fAddHandler(double %137, double %143, double %144, i64 94920400548696, i64 94920400554320, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400554736, i32 139, i32 21), !dbg !195
  store double %144, double* %15, align 8, !dbg !195
  %145 = load double, double* %14, align 8, !dbg !196
  store double %145, double* %13, align 8, !dbg !197
  %146 = load double, double* %15, align 8, !dbg !198
  store double %146, double* %14, align 8, !dbg !199
  br label %147, !dbg !200

; <label>:147:                                    ; preds = %136
  %148 = load i32, i32* %16, align 4, !dbg !201
  %149 = add nsw i32 %148, 1, !dbg !201
  store i32 %149, i32* %16, align 4, !dbg !201
  br label %129, !dbg !203, !llvm.loop !204

; <label>:150:                                    ; preds = %129
  %151 = load double, double* %14, align 8, !dbg !206
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !207
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !208
  store double %151, double* %153, align 8, !dbg !209
  %154 = load i32, i32* %5, align 4, !dbg !210
  %155 = sitofp i32 %154 to double, !dbg !210
  %156 = load double, double* %14, align 8, !dbg !211
  %157 = call double @fabs(double %156) #1, !dbg !212
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !213
  %159 = load double, double* %158, align 8, !dbg !213
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !214
  %161 = load double, double* %160, align 8, !dbg !214
  %162 = fdiv double %159, %161, !dbg !215
  call void @fDivHandler(double %159, double %161, double %162, i64 94920400565752, i64 94920400567848, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400569520, i32 145, i32 54), !dbg !216
  %163 = call double @fabs(double %162) #1, !dbg !216
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !218
  %165 = load double, double* %164, align 8, !dbg !218
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !219
  %167 = load double, double* %166, align 8, !dbg !219
  %168 = fdiv double %165, %167, !dbg !220
  call void @fDivHandler(double %165, double %167, double %168, i64 94920400570904, i64 94920400573000, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400574672, i32 145, i32 84), !dbg !221
  %169 = call double @fabs(double %168) #1, !dbg !221
  %170 = fadd double %163, %169, !dbg !223
  call void @fAddHandler(double %163, double %169, double %170, i64 94920400570000, i64 94920400575152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400575632, i32 145, i32 68), !dbg !224
  %171 = fmul double %157, %170, !dbg !224
  call void @fMulHandler(double %157, double %170, double %171, i64 94920400564816, i64 94920400575632, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400576048, i32 145, i32 35), !dbg !225
  %172 = fmul double %155, %171, !dbg !225
  call void @fMulHandler(double %155, double %171, double %172, i64 94920400562424, i64 94920400576048, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400576464, i32 145, i32 22), !dbg !226
  %173 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !226
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %173, i32 0, i32 1, !dbg !227
  store double %172, double* %174, align 8, !dbg !228
  %175 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !229
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %175, i32 0, i32 0, !dbg !230
  %177 = load double, double* %176, align 8, !dbg !230
  %178 = call double @fabs(double %177) #1, !dbg !231
  %179 = fmul double 0x3CC0000000000000, %178, !dbg !232
  call void @fMulHandler(double 0x3CC0000000000000, double %178, double %179, i64 0, i64 94920400580672, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400581216, i32 146, i32 42), !dbg !233
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !233
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 1, !dbg !234
  %182 = load double, double* %181, align 8, !dbg !235
  %183 = fadd double %182, %179, !dbg !235
  call void @fAddHandler(double %182, double %179, double %183, i64 94920400582440, i64 94920400581216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400582848, i32 146, i32 17), !dbg !235
  store double %183, double* %181, align 8, !dbg !235
  %184 = load i32, i32* %11, align 4, !dbg !236
  %185 = icmp ne i32 %184, 0, !dbg !236
  %186 = sext i32 %184 to i64, !dbg !236
  %187 = call i1 @iCmpInstHandler(i64 %186, i64 0, i1 %185, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400585040, i32 148, i32 12), !dbg !236
  br i1 %187, label %188, label %190, !dbg !236

; <label>:188:                                    ; preds = %150
  %189 = load i32, i32* %11, align 4, !dbg !237
  br label %200, !dbg !237

; <label>:190:                                    ; preds = %150
  %191 = load i32, i32* %12, align 4, !dbg !238
  %192 = icmp ne i32 %191, 0, !dbg !238
  %193 = sext i32 %191 to i64, !dbg !238
  %194 = call i1 @iCmpInstHandler(i64 %193, i64 0, i1 %192, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94920400589584, i32 148, i32 12), !dbg !238
  br i1 %194, label %195, label %197, !dbg !238

; <label>:195:                                    ; preds = %190
  %196 = load i32, i32* %12, align 4, !dbg !239
  br label %198, !dbg !239

; <label>:197:                                    ; preds = %190
  br label %198, !dbg !241

; <label>:198:                                    ; preds = %197, %195
  %199 = phi i32 [ %196, %195 ], [ 0, %197 ], !dbg !243
  br label %200, !dbg !243

; <label>:200:                                    ; preds = %198, %188
  %201 = phi i32 [ %189, %188 ], [ %199, %198 ], !dbg !245
  store i32 %201, i32* %4, align 4, !dbg !247
  br label %202, !dbg !247

; <label>:202:                                    ; preds = %200, %112, %69, %53, %45, %36, %30, %28
  %203 = load i32, i32* %4, align 4, !dbg !248
  ret i32 %203, !dbg !248
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

declare void @gsl_error(i8*, i8*, i32, i32) #3

declare i32 @gsl_sf_bessel_K0_scaled_e(double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_K1_scaled_e(double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind uwtable
define internal i32 @bessel_Kn_scaled_small_x(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !249 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca %struct.gsl_sf_result_struct, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !253, metadata !62), !dbg !254
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !255, metadata !62), !dbg !256
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !257, metadata !62), !dbg !258
  call void @llvm.dbg.declare(metadata i32* %8, metadata !259, metadata !62), !dbg !260
  call void @llvm.dbg.declare(metadata double* %9, metadata !261, metadata !62), !dbg !262
  %27 = load double, double* %6, align 8, !dbg !263
  %28 = fmul double 2.500000e-01, %27, !dbg !264
  call void @fMulHandler(double 2.500000e-01, double %27, double %28, i64 0, i64 94920400491432, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400609136, i32 43, i32 19), !dbg !265
  %29 = load double, double* %6, align 8, !dbg !265
  %30 = fmul double %28, %29, !dbg !266
  call void @fMulHandler(double %28, double %29, double %30, i64 94920400609136, i64 94920400485384, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400609808, i32 43, i32 23), !dbg !262
  store double %30, double* %9, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata double* %10, metadata !267, metadata !62), !dbg !268
  %31 = load double, double* %6, align 8, !dbg !269
  %32 = fmul double 5.000000e-01, %31, !dbg !270
  call void @fMulHandler(double 5.000000e-01, double %31, double %32, i64 0, i64 94920400480200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400613312, i32 44, i32 26), !dbg !271
  %33 = call double @log(double %32) #5, !dbg !271
  call void @callOneArgHandler(i32 12, double %32, double %33, i64 94920400613312, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400613936, i32 44, i32 19), !dbg !268
  store double %33, double* %10, align 8, !dbg !268
  call void @llvm.dbg.declare(metadata double* %11, metadata !272, metadata !62), !dbg !273
  %34 = load double, double* %6, align 8, !dbg !274
  %35 = call double @exp(double %34) #5, !dbg !275
  call void @callOneArgHandler(i32 11, double %34, double %35, i64 94920400459848, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400617792, i32 45, i32 15), !dbg !273
  store double %35, double* %11, align 8, !dbg !273
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !276, metadata !62), !dbg !277
  call void @llvm.dbg.declare(metadata double* %13, metadata !278, metadata !62), !dbg !279
  call void @llvm.dbg.declare(metadata double* %14, metadata !280, metadata !62), !dbg !281
  call void @llvm.dbg.declare(metadata double* %15, metadata !282, metadata !62), !dbg !283
  call void @llvm.dbg.declare(metadata double* %16, metadata !284, metadata !62), !dbg !285
  call void @llvm.dbg.declare(metadata double* %17, metadata !286, metadata !62), !dbg !287
  call void @llvm.dbg.declare(metadata double* %18, metadata !288, metadata !62), !dbg !289
  call void @llvm.dbg.declare(metadata double* %19, metadata !290, metadata !62), !dbg !291
  %36 = load i32, i32* %5, align 4, !dbg !292
  %37 = sub nsw i32 %36, 1, !dbg !293
  %38 = call i32 @gsl_sf_lnfact_e(i32 %37, %struct.gsl_sf_result_struct* %12), !dbg !294
  %39 = load i32, i32* %5, align 4, !dbg !295
  %40 = sub nsw i32 0, %39, !dbg !296
  %41 = sitofp i32 %40 to double, !dbg !296
  %42 = load double, double* %10, align 8, !dbg !297
  %43 = fmul double %41, %42, !dbg !298
  call void @fMulHandler(double %41, double %42, double %43, i64 94920400633176, i64 94920400634824, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400635232, i32 53, i32 15), !dbg !299
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !299
  %45 = load double, double* %44, align 8, !dbg !299
  %46 = fadd double %43, %45, !dbg !300
  call void @fAddHandler(double %43, double %45, double %46, i64 94920400635232, i64 94920400636072, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400637744, i32 53, i32 23), !dbg !301
  store double %46, double* %16, align 8, !dbg !301
  %47 = load double, double* %16, align 8, !dbg !302
  %48 = fcmp ogt double %47, 0x40861642FEFA39EF, !dbg !304
  %49 = call i1 @fCmpInstHandler(double %47, double 0x40861642FEFA39EF, i1 %48, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400639024, i32 54, i32 14), !dbg !305
  br i1 %49, label %50, label %53, !dbg !305

; <label>:50:                                     ; preds = %3
  br label %51, !dbg !306, !llvm.loop !308

; <label>:51:                                     ; preds = %50
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 54, i32 16), !dbg !310
  store i32 16, i32* %4, align 4, !dbg !310
  br label %208, !dbg !310
                                                  ; No predecessors!
  br label %53, !dbg !313

; <label>:53:                                     ; preds = %52, %3
  store double 1.000000e+00, double* %15, align 8, !dbg !315
  store double 1.000000e+00, double* %13, align 8, !dbg !316
  store i32 1, i32* %8, align 4, !dbg !317
  br label %54, !dbg !319

; <label>:54:                                     ; preds = %77, %53
  %55 = load i32, i32* %8, align 4, !dbg !320
  %56 = load i32, i32* %5, align 4, !dbg !323
  %57 = sub nsw i32 %56, 1, !dbg !324
  %58 = icmp sle i32 %55, %57, !dbg !325
  %59 = sext i32 %55 to i64, !dbg !326
  %60 = sext i32 %57 to i64, !dbg !326
  %61 = call i1 @iCmpInstHandler(i64 %59, i64 %60, i1 %58, i32 41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400647008, i32 58, i32 13), !dbg !326
  br i1 %61, label %62, label %80, !dbg !326

; <label>:62:                                     ; preds = %54
  %63 = load double, double* %9, align 8, !dbg !327
  %64 = fsub double -0.000000e+00, %63, !dbg !329
  call void @fSubHandler(double -0.000000e+00, double %63, double %64, i64 0, i64 94920400648120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400648528, i32 59, i32 15), !dbg !330
  %65 = load i32, i32* %8, align 4, !dbg !330
  %66 = load i32, i32* %5, align 4, !dbg !331
  %67 = load i32, i32* %8, align 4, !dbg !332
  %68 = sub nsw i32 %66, %67, !dbg !333
  %69 = mul nsw i32 %65, %68, !dbg !334
  %70 = sitofp i32 %69 to double, !dbg !335
  %71 = fdiv double %64, %70, !dbg !336
  call void @fDivHandler(double %64, double %70, double %71, i64 94920400648528, i64 94920400650904, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400651312, i32 59, i32 17), !dbg !337
  %72 = load double, double* %13, align 8, !dbg !337
  %73 = fmul double %72, %71, !dbg !337
  call void @fMulHandler(double %72, double %71, double %73, i64 94920400651704, i64 94920400651312, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400652112, i32 59, i32 12), !dbg !337
  store double %73, double* %13, align 8, !dbg !337
  %74 = load double, double* %13, align 8, !dbg !338
  %75 = load double, double* %15, align 8, !dbg !339
  %76 = fadd double %75, %74, !dbg !339
  call void @fAddHandler(double %75, double %74, double %76, i64 94920400654280, i64 94920400653896, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400654688, i32 60, i32 10), !dbg !339
  store double %76, double* %15, align 8, !dbg !339
  br label %77, !dbg !340

; <label>:77:                                     ; preds = %62
  %78 = load i32, i32* %8, align 4, !dbg !341
  %79 = add nsw i32 %78, 1, !dbg !341
  store i32 %79, i32* %8, align 4, !dbg !341
  br label %54, !dbg !343, !llvm.loop !344

; <label>:80:                                     ; preds = %54
  %81 = load double, double* %16, align 8, !dbg !346
  %82 = call double @exp(double %81) #5, !dbg !347
  call void @callOneArgHandler(i32 11, double %81, double %82, i64 94920400659800, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400660208, i32 62, i32 17), !dbg !348
  %83 = fmul double 5.000000e-01, %82, !dbg !348
  call void @fMulHandler(double 5.000000e-01, double %82, double %83, i64 0, i64 94920400660208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400660720, i32 62, i32 15), !dbg !349
  %84 = load double, double* %15, align 8, !dbg !349
  %85 = fmul double %83, %84, !dbg !350
  call void @fMulHandler(double %83, double %84, double %85, i64 94920400660720, i64 94920400661080, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400661488, i32 62, i32 30), !dbg !351
  store double %85, double* %14, align 8, !dbg !351
  %86 = load i32, i32* %5, align 4, !dbg !352
  %87 = sitofp i32 %86 to double, !dbg !352
  %88 = load double, double* %10, align 8, !dbg !353
  %89 = fmul double %87, %88, !dbg !354
  call void @fMulHandler(double %87, double %88, double %89, i64 94920400662680, i64 94920400664328, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400664736, i32 64, i32 21), !dbg !355
  %90 = call double @exp(double %89) #5, !dbg !355
  call void @callOneArgHandler(i32 11, double %89, double %90, i64 94920400664736, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400665216, i32 64, i32 16), !dbg !356
  %91 = fmul double 5.000000e-01, %90, !dbg !356
  call void @fMulHandler(double 5.000000e-01, double %90, double %91, i64 0, i64 94920400665216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400665728, i32 64, i32 14), !dbg !357
  store double %91, double* %19, align 8, !dbg !357
  %92 = load double, double* %19, align 8, !dbg !358
  %93 = fcmp ogt double %92, 0.000000e+00, !dbg !360
  %94 = call i1 @fCmpInstHandler(double %92, double 0.000000e+00, i1 %93, i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400666912, i32 65, i32 11), !dbg !361
  br i1 %94, label %95, label %177, !dbg !361

; <label>:95:                                     ; preds = %80
  call void @llvm.dbg.declare(metadata i32* %20, metadata !362, metadata !62), !dbg !364
  store i32 20, i32* %20, align 4, !dbg !364
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !365, metadata !62), !dbg !366
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %22, metadata !367, metadata !62), !dbg !368
  call void @llvm.dbg.declare(metadata double* %23, metadata !369, metadata !62), !dbg !370
  store double 1.000000e+00, double* %23, align 8, !dbg !370
  call void @llvm.dbg.declare(metadata double* %24, metadata !371, metadata !62), !dbg !372
  store double 1.000000e+00, double* %24, align 8, !dbg !372
  call void @llvm.dbg.declare(metadata double* %25, metadata !373, metadata !62), !dbg !374
  store double 0xBFE2788CFC6FB619, double* %25, align 8, !dbg !374
  call void @llvm.dbg.declare(metadata double* %26, metadata !375, metadata !62), !dbg !376
  %96 = load i32, i32* %5, align 4, !dbg !377
  %97 = call i32 @gsl_sf_psi_int_e(i32 %96, %struct.gsl_sf_result_struct* %21), !dbg !378
  %98 = load i32, i32* %5, align 4, !dbg !379
  %99 = call i32 @gsl_sf_fact_e(i32 %98, %struct.gsl_sf_result_struct* %22), !dbg !380
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !381
  %101 = load double, double* %100, align 8, !dbg !381
  %102 = load i32, i32* %5, align 4, !dbg !382
  %103 = sitofp i32 %102 to double, !dbg !382
  %104 = fdiv double 1.000000e+00, %103, !dbg !383
  call void @fDivHandler(double 1.000000e+00, double %103, double %104, i64 0, i64 94920400687448, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400689152, i32 75, i32 32), !dbg !384
  %105 = fadd double %101, %104, !dbg !384
  call void @fAddHandler(double %101, double %104, double %105, i64 94920400685416, i64 94920400689152, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400689536, i32 75, i32 27), !dbg !385
  store double %105, double* %26, align 8, !dbg !385
  %106 = load double, double* %25, align 8, !dbg !386
  %107 = load double, double* %26, align 8, !dbg !387
  %108 = fadd double %106, %107, !dbg !388
  call void @fAddHandler(double %106, double %107, double %108, i64 94920400690344, i64 94920400690728, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400691136, i32 76, i32 21), !dbg !389
  %109 = load double, double* %10, align 8, !dbg !389
  %110 = fmul double 2.000000e+00, %109, !dbg !390
  call void @fMulHandler(double 2.000000e+00, double %109, double %110, i64 0, i64 94920400691528, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400691968, i32 76, i32 38), !dbg !391
  %111 = fsub double %108, %110, !dbg !391
  call void @fSubHandler(double %108, double %110, double %111, i64 94920400691136, i64 94920400691968, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400692352, i32 76, i32 33), !dbg !392
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !392
  %113 = load double, double* %112, align 8, !dbg !392
  %114 = fdiv double %111, %113, !dbg !393
  call void @fDivHandler(double %111, double %113, double %114, i64 94920400692352, i64 94920400693192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400694864, i32 76, i32 46), !dbg !394
  store double %114, double* %18, align 8, !dbg !394
  store i32 1, i32* %8, align 4, !dbg !395
  br label %115, !dbg !397

; <label>:115:                                    ; preds = %163, %95
  %116 = load i32, i32* %8, align 4, !dbg !398
  %117 = icmp slt i32 %116, 20, !dbg !401
  %118 = sext i32 %116 to i64, !dbg !402
  %119 = call i1 @iCmpInstHandler(i64 %118, i64 20, i1 %117, i32 40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400696960, i32 77, i32 15), !dbg !402
  br i1 %119, label %120, label %166, !dbg !402

; <label>:120:                                    ; preds = %115
  %121 = load i32, i32* %8, align 4, !dbg !403
  %122 = sitofp i32 %121 to double, !dbg !403
  %123 = fdiv double 1.000000e+00, %122, !dbg !405
  call void @fDivHandler(double 1.000000e+00, double %122, double %123, i64 0, i64 94920400698392, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400700096, i32 78, i32 23), !dbg !406
  %124 = load double, double* %25, align 8, !dbg !406
  %125 = fadd double %124, %123, !dbg !406
  call void @fAddHandler(double %124, double %123, double %125, i64 94920400700456, i64 94920400700096, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400700864, i32 78, i32 17), !dbg !406
  store double %125, double* %25, align 8, !dbg !406
  %126 = load i32, i32* %5, align 4, !dbg !407
  %127 = load i32, i32* %8, align 4, !dbg !408
  %128 = add nsw i32 %126, %127, !dbg !409
  %129 = sitofp i32 %128 to double, !dbg !410
  %130 = fdiv double 1.000000e+00, %129, !dbg !411
  call void @fDivHandler(double 1.000000e+00, double %129, double %130, i64 0, i64 94920400703832, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400704272, i32 79, i32 23), !dbg !412
  %131 = load double, double* %26, align 8, !dbg !412
  %132 = fadd double %131, %130, !dbg !412
  call void @fAddHandler(double %131, double %130, double %132, i64 94920400704632, i64 94920400704272, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400705040, i32 79, i32 17), !dbg !412
  store double %132, double* %26, align 8, !dbg !412
  %133 = load i32, i32* %8, align 4, !dbg !413
  %134 = sitofp i32 %133 to double, !dbg !413
  %135 = load double, double* %24, align 8, !dbg !414
  %136 = fmul double %135, %134, !dbg !414
  call void @fMulHandler(double %135, double %134, double %136, i64 94920400708856, i64 94920400707208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400711328, i32 80, i32 17), !dbg !414
  store double %136, double* %24, align 8, !dbg !414
  %137 = load i32, i32* %5, align 4, !dbg !415
  %138 = load i32, i32* %8, align 4, !dbg !416
  %139 = add nsw i32 %137, %138, !dbg !417
  %140 = sitofp i32 %139 to double, !dbg !415
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !418
  %142 = load double, double* %141, align 8, !dbg !419
  %143 = fmul double %142, %140, !dbg !419
  call void @fMulHandler(double %142, double %140, double %143, i64 94920400716392, i64 94920400714296, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400716800, i32 81, i32 20), !dbg !419
  store double %143, double* %141, align 8, !dbg !419
  %144 = load double, double* %9, align 8, !dbg !420
  %145 = load double, double* %23, align 8, !dbg !421
  %146 = fmul double %145, %144, !dbg !421
  call void @fMulHandler(double %145, double %144, double %146, i64 94920400718968, i64 94920400718584, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400719376, i32 82, i32 10), !dbg !421
  store double %146, double* %23, align 8, !dbg !421
  %147 = load double, double* %23, align 8, !dbg !422
  %148 = load double, double* %25, align 8, !dbg !423
  %149 = load double, double* %26, align 8, !dbg !424
  %150 = fadd double %148, %149, !dbg !425
  call void @fAddHandler(double %148, double %149, double %150, i64 94920400721544, i64 94920400721928, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400722336, i32 83, i32 28), !dbg !426
  %151 = load double, double* %10, align 8, !dbg !426
  %152 = fmul double 2.000000e+00, %151, !dbg !427
  call void @fMulHandler(double 2.000000e+00, double %151, double %152, i64 0, i64 94920400722728, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400723168, i32 83, i32 45), !dbg !428
  %153 = fsub double %150, %152, !dbg !428
  call void @fSubHandler(double %150, double %152, double %153, i64 94920400722336, i64 94920400723168, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400723552, i32 83, i32 40), !dbg !429
  %154 = fmul double %147, %153, !dbg !429
  call void @fMulHandler(double %147, double %153, double %154, i64 94920400721160, i64 94920400723552, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400723968, i32 83, i32 18), !dbg !430
  %155 = load double, double* %24, align 8, !dbg !430
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !431
  %157 = load double, double* %156, align 8, !dbg !431
  %158 = fmul double %155, %157, !dbg !432
  call void @fMulHandler(double %155, double %157, double %158, i64 94920400724360, i64 94920400725192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400726864, i32 83, i32 61), !dbg !433
  %159 = fdiv double %154, %158, !dbg !433
  call void @fDivHandler(double %154, double %158, double %159, i64 94920400723968, i64 94920400726864, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400727280, i32 83, i32 53), !dbg !434
  store double %159, double* %13, align 8, !dbg !434
  %160 = load double, double* %13, align 8, !dbg !435
  %161 = load double, double* %18, align 8, !dbg !436
  %162 = fadd double %161, %160, !dbg !436
  call void @fAddHandler(double %161, double %160, double %162, i64 94920400728472, i64 94920400728088, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400728880, i32 84, i32 12), !dbg !436
  store double %162, double* %18, align 8, !dbg !436
  br label %163, !dbg !437

; <label>:163:                                    ; preds = %120
  %164 = load i32, i32* %8, align 4, !dbg !438
  %165 = add nsw i32 %164, 1, !dbg !438
  store i32 %165, i32* %8, align 4, !dbg !438
  br label %115, !dbg !440, !llvm.loop !441

; <label>:166:                                    ; preds = %115
  %167 = load i32, i32* %5, align 4, !dbg !443
  %168 = and i32 %167, 1, !dbg !443
  %169 = icmp ne i32 %168, 0, !dbg !443
  %170 = sext i32 %168 to i64, !dbg !443
  %171 = call i1 @iCmpInstHandler(i64 %170, i64 0, i1 %169, i32 33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400736016, i32 86, i32 15), !dbg !443
  %172 = select i1 %171, double -1.000000e+00, double 1.000000e+00, !dbg !443
  %173 = load double, double* %19, align 8, !dbg !444
  %174 = fmul double %172, %173, !dbg !445
  call void @fMulHandler(double %172, double %173, double %174, i64 94920400736264, i64 94920400736360, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400736736, i32 86, i32 44), !dbg !446
  %175 = load double, double* %18, align 8, !dbg !446
  %176 = fmul double %174, %175, !dbg !447
  call void @fMulHandler(double %174, double %175, double %176, i64 94920400736736, i64 94920400737128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400737536, i32 86, i32 51), !dbg !448
  store double %176, double* %17, align 8, !dbg !448
  br label %178, !dbg !449

; <label>:177:                                    ; preds = %80
  store double 0.000000e+00, double* %17, align 8, !dbg !450
  br label %178

; <label>:178:                                    ; preds = %177, %166
  %179 = load double, double* %11, align 8, !dbg !452
  %180 = load double, double* %14, align 8, !dbg !453
  %181 = load double, double* %17, align 8, !dbg !454
  %182 = fadd double %180, %181, !dbg !455
  call void @fAddHandler(double %180, double %181, double %182, i64 94920400739640, i64 94920400740024, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400740432, i32 92, i32 30), !dbg !456
  %183 = fmul double %179, %182, !dbg !456
  call void @fMulHandler(double %179, double %182, double %183, i64 94920400739320, i64 94920400740432, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400740848, i32 92, i32 21), !dbg !457
  %184 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !457
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %184, i32 0, i32 0, !dbg !458
  store double %183, double* %185, align 8, !dbg !459
  %186 = load double, double* %11, align 8, !dbg !460
  %187 = fmul double %186, 0x3CB0000000000000, !dbg !461
  call void @fMulHandler(double %186, double 0x3CB0000000000000, double %187, i64 94920400742488, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400742960, i32 93, i32 21), !dbg !462
  %188 = load double, double* %16, align 8, !dbg !462
  %189 = call double @fabs(double %188) #1, !dbg !463
  %190 = load double, double* %14, align 8, !dbg !464
  %191 = call double @fabs(double %190) #1, !dbg !465
  %192 = fmul double %189, %191, !dbg !467
  call void @fMulHandler(double %189, double %191, double %192, i64 94920400743824, i64 94920400744752, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400745232, i32 93, i32 55), !dbg !468
  %193 = load double, double* %17, align 8, !dbg !468
  %194 = call double @fabs(double %193) #1, !dbg !469
  %195 = fadd double %192, %194, !dbg !471
  call void @fAddHandler(double %192, double %194, double %195, i64 94920400745232, i64 94920400746096, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400746576, i32 93, i32 68), !dbg !472
  %196 = fmul double %187, %195, !dbg !472
  call void @fMulHandler(double %187, double %195, double %196, i64 94920400742960, i64 94920400746576, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400746992, i32 93, i32 39), !dbg !473
  %197 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !473
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %197, i32 0, i32 1, !dbg !474
  store double %196, double* %198, align 8, !dbg !475
  %199 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !476
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %199, i32 0, i32 0, !dbg !477
  %201 = load double, double* %200, align 8, !dbg !477
  %202 = call double @fabs(double %201) #1, !dbg !478
  %203 = fmul double 0x3CC0000000000000, %202, !dbg !479
  call void @fMulHandler(double 0x3CC0000000000000, double %202, double %203, i64 0, i64 94920400751200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400751680, i32 94, i32 40), !dbg !480
  %204 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !480
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %204, i32 0, i32 1, !dbg !481
  %206 = load double, double* %205, align 8, !dbg !482
  %207 = fadd double %206, %203, !dbg !482
  call void @fAddHandler(double %206, double %203, double %207, i64 94920400752904, i64 94920400751680, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94920400753312, i32 94, i32 15), !dbg !482
  store double %207, double* %205, align 8, !dbg !482
  store i32 0, i32* %4, align 4, !dbg !483
  br label %208, !dbg !483

; <label>:208:                                    ; preds = %178, %51
  %209 = load i32, i32* %4, align 4, !dbg !484
  ret i32 %209, !dbg !484
}

declare i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double, double, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double, double, %struct.gsl_sf_result_struct*) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Kn_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !485 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !486, metadata !62), !dbg !487
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !488, metadata !62), !dbg !489
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !490, metadata !62), !dbg !491
  call void @llvm.dbg.declare(metadata i32* %7, metadata !492, metadata !62), !dbg !493
  %9 = load i32, i32* %4, align 4, !dbg !494
  %10 = load double, double* %5, align 8, !dbg !495
  %11 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !496
  %12 = call i32 @gsl_sf_bessel_Kn_scaled_e(i32 %9, double %10, %struct.gsl_sf_result_struct* %11), !dbg !497
  store i32 %12, i32* %7, align 4, !dbg !493
  call void @llvm.dbg.declare(metadata double* %8, metadata !498, metadata !62), !dbg !499
  %13 = load double, double* %5, align 8, !dbg !500
  %14 = fsub double -0.000000e+00, %13, !dbg !501
  call void @fSubHandler(double -0.000000e+00, double %13, double %14, i64 0, i64 94920400501400, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94920400768832, i32 156, i32 25), !dbg !502
  %15 = call double @exp(double %14) #5, !dbg !502
  call void @callOneArgHandler(i32 11, double %14, double %15, i64 94920400768832, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94920400769312, i32 156, i32 21), !dbg !499
  store double %15, double* %8, align 8, !dbg !499
  %16 = load double, double* %8, align 8, !dbg !503
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !504
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !505
  %19 = load double, double* %18, align 8, !dbg !506
  %20 = fmul double %19, %16, !dbg !506
  call void @fMulHandler(double %19, double %16, double %20, i64 94920400772664, i64 94920400771448, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94920400773072, i32 157, i32 15), !dbg !506
  store double %20, double* %18, align 8, !dbg !506
  %21 = load double, double* %8, align 8, !dbg !507
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !508
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 1, !dbg !509
  %24 = load double, double* %23, align 8, !dbg !510
  %25 = fmul double %24, %21, !dbg !510
  call void @fMulHandler(double %24, double %21, double %25, i64 94920400776072, i64 94920400774856, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94920400776480, i32 158, i32 15), !dbg !510
  store double %25, double* %23, align 8, !dbg !510
  %26 = load double, double* %5, align 8, !dbg !511
  %27 = fmul double %26, 0x3CB0000000000000, !dbg !512
  call void @fMulHandler(double %26, double 0x3CB0000000000000, double %27, i64 94920400778264, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94920400778672, i32 159, i32 20), !dbg !513
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !513
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !514
  %30 = load double, double* %29, align 8, !dbg !514
  %31 = call double @fabs(double %30) #1, !dbg !515
  %32 = fmul double %27, %31, !dbg !516
  call void @fMulHandler(double %27, double %31, double %32, i64 94920400778672, i64 94920400759600, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94920400781968, i32 159, i32 38), !dbg !517
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !517
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !518
  %35 = load double, double* %34, align 8, !dbg !519
  %36 = fadd double %35, %32, !dbg !519
  call void @fAddHandler(double %35, double %32, double %36, i64 94920400783192, i64 94920400781968, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94920400783600, i32 159, i32 15), !dbg !519
  store double %36, double* %34, align 8, !dbg !519
  %37 = load i32, i32* %7, align 4, !dbg !520
  ret i32 %37, !dbg !521
}

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Kn_scaled_array(i32, i32, double, double*) #0 !dbg !522 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !526, metadata !62), !dbg !527
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !528, metadata !62), !dbg !529
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !530, metadata !62), !dbg !531
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !532, metadata !62), !dbg !533
  %24 = load i32, i32* %6, align 4, !dbg !534
  %25 = icmp slt i32 %24, 0, !dbg !536
  %26 = sext i32 %24 to i64, !dbg !537
  %27 = call i1 @iCmpInstHandler(i64 %26, i64 0, i1 %25, i32 40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400794656, i32 168, i32 11), !dbg !537
  br i1 %27, label %39, label %28, !dbg !537

; <label>:28:                                     ; preds = %4
  %29 = load i32, i32* %7, align 4, !dbg !538
  %30 = load i32, i32* %6, align 4, !dbg !540
  %31 = icmp slt i32 %29, %30, !dbg !541
  %32 = sext i32 %29 to i64, !dbg !542
  %33 = sext i32 %30 to i64, !dbg !542
  %34 = call i1 @iCmpInstHandler(i64 %32, i64 %33, i1 %31, i32 40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400796496, i32 168, i32 23), !dbg !542
  br i1 %34, label %39, label %35, !dbg !542

; <label>:35:                                     ; preds = %28
  %36 = load double, double* %8, align 8, !dbg !543
  %37 = fcmp ole double %36, 0.000000e+00, !dbg !545
  %38 = call i1 @fCmpInstHandler(double %36, double 0.000000e+00, i1 %37, i32 5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400797808, i32 168, i32 35), !dbg !546
  br i1 %38, label %39, label %60, !dbg !546

; <label>:39:                                     ; preds = %35, %28, %4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !547, metadata !62), !dbg !549
  store i32 0, i32* %10, align 4, !dbg !550
  br label %40, !dbg !552

; <label>:40:                                     ; preds = %54, %39
  %41 = load i32, i32* %10, align 4, !dbg !553
  %42 = load i32, i32* %7, align 4, !dbg !556
  %43 = load i32, i32* %6, align 4, !dbg !557
  %44 = sub nsw i32 %42, %43, !dbg !558
  %45 = icmp sle i32 %41, %44, !dbg !559
  %46 = sext i32 %41 to i64, !dbg !560
  %47 = sext i32 %44 to i64, !dbg !560
  %48 = call i1 @iCmpInstHandler(i64 %46, i64 %47, i1 %45, i32 41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400802272, i32 170, i32 15), !dbg !560
  br i1 %48, label %49, label %57, !dbg !560

; <label>:49:                                     ; preds = %40
  %50 = load i32, i32* %10, align 4, !dbg !561
  %51 = sext i32 %50 to i64, !dbg !563
  %52 = load double*, double** %9, align 8, !dbg !563
  %53 = getelementptr inbounds double, double* %52, i64 %51, !dbg !563
  store double 0.000000e+00, double* %53, align 8, !dbg !564
  br label %54, !dbg !563

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %10, align 4, !dbg !565
  %56 = add nsw i32 %55, 1, !dbg !565
  store i32 %56, i32* %10, align 4, !dbg !565
  br label %40, !dbg !567, !llvm.loop !568

; <label>:57:                                     ; preds = %40
  br label %58, !dbg !570, !llvm.loop !571

; <label>:58:                                     ; preds = %57
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 171, i32 1), !dbg !572
  store i32 1, i32* %5, align 4, !dbg !572
  br label %168, !dbg !572
                                                  ; No predecessors!
  br label %168, !dbg !575

; <label>:60:                                     ; preds = %35
  %61 = load i32, i32* %7, align 4, !dbg !576
  %62 = icmp eq i32 %61, 0, !dbg !578
  %63 = sext i32 %61 to i64, !dbg !579
  %64 = call i1 @iCmpInstHandler(i64 %63, i64 0, i1 %62, i32 32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400813392, i32 173, i32 16), !dbg !579
  br i1 %64, label %65, label %73, !dbg !579

; <label>:65:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !580, metadata !62), !dbg !582
  call void @llvm.dbg.declare(metadata i32* %12, metadata !583, metadata !62), !dbg !584
  %66 = load double, double* %8, align 8, !dbg !585
  %67 = call i32 @gsl_sf_bessel_K0_scaled_e(double %66, %struct.gsl_sf_result_struct* %11), !dbg !586
  store i32 %67, i32* %12, align 4, !dbg !584
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !587
  %69 = load double, double* %68, align 8, !dbg !587
  %70 = load double*, double** %9, align 8, !dbg !588
  %71 = getelementptr inbounds double, double* %70, i64 0, !dbg !588
  store double %69, double* %71, align 8, !dbg !589
  %72 = load i32, i32* %12, align 4, !dbg !590
  store i32 %72, i32* %5, align 4, !dbg !591
  br label %168, !dbg !591

; <label>:73:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata double* %13, metadata !592, metadata !62), !dbg !594
  %74 = load double, double* %8, align 8, !dbg !595
  %75 = fdiv double 2.000000e+00, %74, !dbg !596
  call void @fDivHandler(double 2.000000e+00, double %74, double %75, i64 0, i64 94920400827368, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400827776, i32 180, i32 28), !dbg !594
  store double %75, double* %13, align 8, !dbg !594
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !597, metadata !62), !dbg !598
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !599, metadata !62), !dbg !600
  call void @llvm.dbg.declare(metadata i32* %16, metadata !601, metadata !62), !dbg !602
  %76 = load i32, i32* %6, align 4, !dbg !603
  %77 = load double, double* %8, align 8, !dbg !604
  %78 = call i32 @gsl_sf_bessel_Kn_scaled_e(i32 %76, double %77, %struct.gsl_sf_result_struct* %14), !dbg !605
  store i32 %78, i32* %16, align 4, !dbg !602
  call void @llvm.dbg.declare(metadata i32* %17, metadata !606, metadata !62), !dbg !607
  %79 = load i32, i32* %6, align 4, !dbg !608
  %80 = add nsw i32 %79, 1, !dbg !609
  %81 = load double, double* %8, align 8, !dbg !610
  %82 = call i32 @gsl_sf_bessel_Kn_scaled_e(i32 %80, double %81, %struct.gsl_sf_result_struct* %15), !dbg !611
  store i32 %82, i32* %17, align 4, !dbg !607
  call void @llvm.dbg.declare(metadata i32* %18, metadata !612, metadata !62), !dbg !613
  %83 = load i32, i32* %16, align 4, !dbg !614
  %84 = icmp ne i32 %83, 0, !dbg !614
  %85 = sext i32 %83 to i64, !dbg !614
  %86 = call i1 @iCmpInstHandler(i64 %85, i64 0, i1 %84, i32 33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400846208, i32 185, i32 16), !dbg !614
  br i1 %86, label %87, label %89, !dbg !614

; <label>:87:                                     ; preds = %73
  %88 = load i32, i32* %16, align 4, !dbg !615
  br label %99, !dbg !615

; <label>:89:                                     ; preds = %73
  %90 = load i32, i32* %17, align 4, !dbg !617
  %91 = icmp ne i32 %90, 0, !dbg !617
  %92 = sext i32 %90 to i64, !dbg !617
  %93 = call i1 @iCmpInstHandler(i64 %92, i64 0, i1 %91, i32 33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400850752, i32 185, i32 16), !dbg !617
  br i1 %93, label %94, label %96, !dbg !617

; <label>:94:                                     ; preds = %89
  %95 = load i32, i32* %17, align 4, !dbg !619
  br label %97, !dbg !619

; <label>:96:                                     ; preds = %89
  br label %97, !dbg !621

; <label>:97:                                     ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ], !dbg !623
  br label %99, !dbg !623

; <label>:99:                                     ; preds = %97, %87
  %100 = phi i32 [ %88, %87 ], [ %98, %97 ], !dbg !625
  store i32 %100, i32* %18, align 4, !dbg !627
  call void @llvm.dbg.declare(metadata double* %19, metadata !628, metadata !62), !dbg !629
  call void @llvm.dbg.declare(metadata double* %20, metadata !630, metadata !62), !dbg !631
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !632
  %102 = load double, double* %101, align 8, !dbg !632
  store double %102, double* %20, align 8, !dbg !631
  call void @llvm.dbg.declare(metadata double* %21, metadata !633, metadata !62), !dbg !634
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !635
  %104 = load double, double* %103, align 8, !dbg !635
  store double %104, double* %21, align 8, !dbg !634
  call void @llvm.dbg.declare(metadata i32* %22, metadata !636, metadata !62), !dbg !637
  %105 = load i32, i32* %6, align 4, !dbg !638
  %106 = add nsw i32 %105, 1, !dbg !640
  store i32 %106, i32* %22, align 4, !dbg !641
  br label %107, !dbg !642

; <label>:107:                                    ; preds = %163, %99
  %108 = load i32, i32* %22, align 4, !dbg !643
  %109 = load i32, i32* %7, align 4, !dbg !646
  %110 = add nsw i32 %109, 1, !dbg !647
  %111 = icmp sle i32 %108, %110, !dbg !648
  %112 = sext i32 %108 to i64, !dbg !649
  %113 = sext i32 %110 to i64, !dbg !649
  %114 = call i1 @iCmpInstHandler(i64 %112, i64 %113, i1 %111, i32 41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400872928, i32 191, i32 20), !dbg !649
  br i1 %114, label %115, label %166, !dbg !649

; <label>:115:                                    ; preds = %107
  %116 = load double, double* %21, align 8, !dbg !650
  %117 = fcmp olt double %116, 0x7FEFFFFFFFFFFFFF, !dbg !653
  %118 = call i1 @fCmpInstHandler(double %116, double 0x7FEFFFFFFFFFFFFF, i1 %117, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400874448, i32 192, i32 15), !dbg !654
  br i1 %118, label %119, label %138, !dbg !654

; <label>:119:                                    ; preds = %115
  %120 = load double, double* %21, align 8, !dbg !655
  %121 = load i32, i32* %22, align 4, !dbg !657
  %122 = sub nsw i32 %121, 1, !dbg !658
  %123 = load i32, i32* %6, align 4, !dbg !659
  %124 = sub nsw i32 %122, %123, !dbg !660
  %125 = sext i32 %124 to i64, !dbg !661
  %126 = load double*, double** %9, align 8, !dbg !661
  %127 = getelementptr inbounds double, double* %126, i64 %125, !dbg !661
  store double %120, double* %127, align 8, !dbg !662
  %128 = load double, double* %21, align 8, !dbg !663
  %129 = load i32, i32* %22, align 4, !dbg !664
  %130 = sitofp i32 %129 to double, !dbg !664
  %131 = load double, double* %13, align 8, !dbg !665
  %132 = fmul double %130, %131, !dbg !666
  call void @fMulHandler(double %130, double %131, double %132, i64 94920400880840, i64 94920400882488, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400882896, i32 194, i32 25), !dbg !667
  %133 = load double, double* %20, align 8, !dbg !667
  %134 = fmul double %132, %133, !dbg !668
  call void @fMulHandler(double %132, double %133, double %134, i64 94920400882896, i64 94920400883288, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400883696, i32 194, i32 38), !dbg !669
  %135 = fadd double %128, %134, !dbg !669
  call void @fAddHandler(double %128, double %134, double %135, i64 94920400880072, i64 94920400883696, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400884112, i32 194, i32 21), !dbg !670
  store double %135, double* %19, align 8, !dbg !670
  %136 = load double, double* %20, align 8, !dbg !671
  store double %136, double* %21, align 8, !dbg !672
  %137 = load double, double* %19, align 8, !dbg !673
  store double %137, double* %20, align 8, !dbg !674
  br label %162, !dbg !675

; <label>:138:                                    ; preds = %115
  call void @llvm.dbg.declare(metadata i32* %23, metadata !676, metadata !62), !dbg !678
  %139 = load i32, i32* %22, align 4, !dbg !679
  store i32 %139, i32* %23, align 4, !dbg !681
  br label %140, !dbg !682

; <label>:140:                                    ; preds = %156, %138
  %141 = load i32, i32* %23, align 4, !dbg !683
  %142 = load i32, i32* %7, align 4, !dbg !686
  %143 = add nsw i32 %142, 1, !dbg !687
  %144 = icmp sle i32 %141, %143, !dbg !688
  %145 = sext i32 %141 to i64, !dbg !689
  %146 = sext i32 %143 to i64, !dbg !689
  %147 = call i1 @iCmpInstHandler(i64 %145, i64 %146, i1 %144, i32 41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94920400890544, i32 207, i32 19), !dbg !689
  br i1 %147, label %148, label %159, !dbg !689

; <label>:148:                                    ; preds = %140
  %149 = load i32, i32* %23, align 4, !dbg !690
  %150 = sub nsw i32 %149, 1, !dbg !692
  %151 = load i32, i32* %6, align 4, !dbg !693
  %152 = sub nsw i32 %150, %151, !dbg !694
  %153 = sext i32 %152 to i64, !dbg !695
  %154 = load double*, double** %9, align 8, !dbg !695
  %155 = getelementptr inbounds double, double* %154, i64 %153, !dbg !695
  store double 0.000000e+00, double* %155, align 8, !dbg !696
  br label %156, !dbg !695

; <label>:156:                                    ; preds = %148
  %157 = load i32, i32* %23, align 4, !dbg !697
  %158 = add nsw i32 %157, 1, !dbg !697
  store i32 %158, i32* %23, align 4, !dbg !697
  br label %140, !dbg !699, !llvm.loop !700

; <label>:159:                                    ; preds = %140
  br label %160, !dbg !702, !llvm.loop !703

; <label>:160:                                    ; preds = %159
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 208, i32 16), !dbg !704
  store i32 16, i32* %5, align 4, !dbg !704
  br label %168, !dbg !704
                                                  ; No predecessors!
  br label %162

; <label>:162:                                    ; preds = %161, %119
  br label %163, !dbg !707

; <label>:163:                                    ; preds = %162
  %164 = load i32, i32* %22, align 4, !dbg !708
  %165 = add nsw i32 %164, 1, !dbg !708
  store i32 %165, i32* %22, align 4, !dbg !708
  br label %107, !dbg !710, !llvm.loop !711

; <label>:166:                                    ; preds = %107
  %167 = load i32, i32* %18, align 4, !dbg !713
  store i32 %167, i32* %5, align 4, !dbg !714
  br label %168, !dbg !714

; <label>:168:                                    ; preds = %166, %160, %65, %59, %58
  %169 = load i32, i32* %5, align 4, !dbg !715
  ret i32 %169, !dbg !715
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Kn_array(i32, i32, double, double*) #0 !dbg !716 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !717, metadata !62), !dbg !718
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !719, metadata !62), !dbg !720
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !721, metadata !62), !dbg !722
  store double* %3, double** %8, align 8
  call void @llvm.dbg.declare(metadata double** %8, metadata !723, metadata !62), !dbg !724
  call void @llvm.dbg.declare(metadata i32* %9, metadata !725, metadata !62), !dbg !726
  %12 = load i32, i32* %5, align 4, !dbg !727
  %13 = load i32, i32* %6, align 4, !dbg !728
  %14 = load double, double* %7, align 8, !dbg !729
  %15 = load double*, double** %8, align 8, !dbg !730
  %16 = call i32 @gsl_sf_bessel_Kn_scaled_array(i32 %12, i32 %13, double %14, double* %15), !dbg !731
  store i32 %16, i32* %9, align 4, !dbg !726
  call void @llvm.dbg.declare(metadata double* %10, metadata !732, metadata !62), !dbg !733
  %17 = load double, double* %7, align 8, !dbg !734
  %18 = fsub double -0.000000e+00, %17, !dbg !735
  call void @fSubHandler(double -0.000000e+00, double %17, double %18, i64 0, i64 94920400922504, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94920400922880, i32 221, i32 19), !dbg !736
  %19 = call double @exp(double %18) #5, !dbg !736
  call void @callOneArgHandler(i32 11, double %18, double %19, i64 94920400922880, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94920400923360, i32 221, i32 15), !dbg !733
  store double %19, double* %10, align 8, !dbg !733
  call void @llvm.dbg.declare(metadata i32* %11, metadata !737, metadata !62), !dbg !738
  store i32 0, i32* %11, align 4, !dbg !739
  br label %20, !dbg !741

; <label>:20:                                     ; preds = %37, %4
  %21 = load i32, i32* %11, align 4, !dbg !742
  %22 = load i32, i32* %6, align 4, !dbg !745
  %23 = load i32, i32* %5, align 4, !dbg !746
  %24 = sub nsw i32 %22, %23, !dbg !747
  %25 = icmp sle i32 %21, %24, !dbg !748
  %26 = sext i32 %21 to i64, !dbg !749
  %27 = sext i32 %24 to i64, !dbg !749
  %28 = call i1 @iCmpInstHandler(i64 %26, i64 %27, i1 %25, i32 41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94920400929056, i32 223, i32 13), !dbg !749
  br i1 %28, label %29, label %40, !dbg !749

; <label>:29:                                     ; preds = %20
  %30 = load double, double* %10, align 8, !dbg !750
  %31 = load i32, i32* %11, align 4, !dbg !752
  %32 = sext i32 %31 to i64, !dbg !753
  %33 = load double*, double** %8, align 8, !dbg !753
  %34 = getelementptr inbounds double, double* %33, i64 %32, !dbg !753
  %35 = load double, double* %34, align 8, !dbg !754
  %36 = fmul double %35, %30, !dbg !754
  call void @fMulHandler(double %35, double %30, double %36, i64 94920400933048, i64 94920400930168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @9, i32 0, i32 0), i64 94920400933456, i32 223, i32 47), !dbg !754
  store double %36, double* %34, align 8, !dbg !754
  br label %37, !dbg !753

; <label>:37:                                     ; preds = %29
  %38 = load i32, i32* %11, align 4, !dbg !755
  %39 = add nsw i32 %38, 1, !dbg !755
  store i32 %39, i32* %11, align 4, !dbg !755
  br label %20, !dbg !757, !llvm.loop !758

; <label>:40:                                     ; preds = %20
  %41 = load i32, i32* %9, align 4, !dbg !760
  ret i32 %41, !dbg !761
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Kn_scaled(i32, double) #0 !dbg !762 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !765, metadata !62), !dbg !766
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !767, metadata !62), !dbg !768
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !769, metadata !62), !dbg !770
  call void @llvm.dbg.declare(metadata i32* %7, metadata !771, metadata !62), !dbg !770
  %8 = load i32, i32* %4, align 4, !dbg !770
  %9 = load double, double* %5, align 8, !dbg !770
  %10 = call i32 @gsl_sf_bessel_Kn_scaled_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !770
  store i32 %10, i32* %7, align 4, !dbg !770
  %11 = load i32, i32* %7, align 4, !dbg !772
  %12 = icmp ne i32 %11, 0, !dbg !772
  %13 = sext i32 %11 to i64, !dbg !770
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i64 94920400948272, i32 234, i32 3), !dbg !770
  br i1 %14, label %15, label %21, !dbg !770

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !774, !llvm.loop !777

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !779
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 234, i32 %17), !dbg !779
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !779
  %19 = load double, double* %18, align 8, !dbg !779
  store double %19, double* %3, align 8, !dbg !779
  br label %24, !dbg !779
                                                  ; No predecessors!
  br label %21, !dbg !782

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !784
  %23 = load double, double* %22, align 8, !dbg !784
  store double %23, double* %3, align 8, !dbg !784
  br label %24, !dbg !784

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !786
  ret double %25, !dbg !786
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Kn(i32, double) #0 !dbg !787 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !788, metadata !62), !dbg !789
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !790, metadata !62), !dbg !791
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !792, metadata !62), !dbg !793
  call void @llvm.dbg.declare(metadata i32* %7, metadata !794, metadata !62), !dbg !793
  %8 = load i32, i32* %4, align 4, !dbg !793
  %9 = load double, double* %5, align 8, !dbg !793
  %10 = call i32 @gsl_sf_bessel_Kn_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !793
  store i32 %10, i32* %7, align 4, !dbg !793
  %11 = load i32, i32* %7, align 4, !dbg !795
  %12 = icmp ne i32 %11, 0, !dbg !795
  %13 = sext i32 %11 to i64, !dbg !793
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @13, i32 0, i32 0), i64 94920400967088, i32 239, i32 3), !dbg !793
  br i1 %14, label %15, label %21, !dbg !793

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !797, !llvm.loop !800

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !802
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 239, i32 %17), !dbg !802
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !802
  %19 = load double, double* %18, align 8, !dbg !802
  store double %19, double* %3, align 8, !dbg !802
  br label %24, !dbg !802
                                                  ; No predecessors!
  br label %21, !dbg !805

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !807
  %23 = load double, double* %22, align 8, !dbg !807
  store double %23, double* %3, align 8, !dbg !807
  br label %24, !dbg !807

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !809
  ret double %25, !dbg !809
}

; Function Attrs: nounwind
declare double @log(double) #4

declare i32 @gsl_sf_lnfact_e(i32, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_psi_int_e(i32, %struct.gsl_sf_result_struct*) #3

declare i32 @gsl_sf_fact_e(i32, %struct.gsl_sf_result_struct*) #3

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
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_Kn.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !43}
!42 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!43 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!44 = !{i32 2, !"Dwarf Version", i32 4}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"PIC Level", i32 2}
!47 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!48 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_scaled_e", scope: !1, file: !1, line: 102, type: !49, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !51, !52, !53}
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !55, line: 41, baseType: !56)
!55 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !55, line: 37, size: 128, align: 64, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !56, file: !55, line: 38, baseType: !42, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !56, file: !55, line: 39, baseType: !42, size: 64, align: 64, offset: 64)
!60 = !{}
!61 = !DILocalVariable(name: "n", arg: 1, scope: !48, file: !1, line: 102, type: !51)
!62 = !DIExpression()
!63 = !DILocation(line: 102, column: 35, scope: !48)
!64 = !DILocalVariable(name: "x", arg: 2, scope: !48, file: !1, line: 102, type: !52)
!65 = !DILocation(line: 102, column: 51, scope: !48)
!66 = !DILocalVariable(name: "result", arg: 3, scope: !48, file: !1, line: 102, type: !53)
!67 = !DILocation(line: 102, column: 70, scope: !48)
!68 = !DILocation(line: 104, column: 11, scope: !48)
!69 = !DILocation(line: 104, column: 7, scope: !48)
!70 = !DILocation(line: 104, column: 5, scope: !48)
!71 = !DILocation(line: 108, column: 6, scope: !72)
!72 = distinct !DILexicalBlock(scope: !48, file: !1, line: 108, column: 6)
!73 = !DILocation(line: 108, column: 8, scope: !72)
!74 = !DILocation(line: 108, column: 6, scope: !48)
!75 = !DILocation(line: 109, column: 5, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 108, column: 16)
!77 = distinct !{!77, !75}
!78 = !DILocation(line: 109, column: 5, scope: !79)
!79 = !DILexicalBlockFile(scope: !80, file: !1, discriminator: 1)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 109, column: 5)
!81 = distinct !{!81, !82}
!82 = !DILocation(line: 109, column: 5, scope: !80)
!83 = !DILocation(line: 109, column: 5, scope: !84)
!84 = !DILexicalBlockFile(scope: !85, file: !1, discriminator: 2)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 109, column: 5)
!86 = !DILocation(line: 109, column: 5, scope: !87)
!87 = !DILexicalBlockFile(scope: !80, file: !1, discriminator: 3)
!88 = !DILocation(line: 110, column: 3, scope: !76)
!89 = !DILocation(line: 111, column: 11, scope: !90)
!90 = distinct !DILexicalBlock(scope: !72, file: !1, line: 111, column: 11)
!91 = !DILocation(line: 111, column: 13, scope: !90)
!92 = !DILocation(line: 111, column: 11, scope: !72)
!93 = !DILocation(line: 112, column: 38, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 111, column: 19)
!95 = !DILocation(line: 112, column: 41, scope: !94)
!96 = !DILocation(line: 112, column: 12, scope: !94)
!97 = !DILocation(line: 112, column: 5, scope: !94)
!98 = !DILocation(line: 114, column: 11, scope: !99)
!99 = distinct !DILexicalBlock(scope: !90, file: !1, line: 114, column: 11)
!100 = !DILocation(line: 114, column: 13, scope: !99)
!101 = !DILocation(line: 114, column: 11, scope: !90)
!102 = !DILocation(line: 115, column: 38, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 114, column: 19)
!104 = !DILocation(line: 115, column: 41, scope: !103)
!105 = !DILocation(line: 115, column: 12, scope: !103)
!106 = !DILocation(line: 115, column: 5, scope: !103)
!107 = !DILocation(line: 117, column: 11, scope: !108)
!108 = distinct !DILexicalBlock(scope: !99, file: !1, line: 117, column: 11)
!109 = !DILocation(line: 117, column: 13, scope: !108)
!110 = !DILocation(line: 117, column: 11, scope: !99)
!111 = !DILocation(line: 118, column: 37, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 117, column: 21)
!113 = !DILocation(line: 118, column: 40, scope: !112)
!114 = !DILocation(line: 118, column: 43, scope: !112)
!115 = !DILocation(line: 118, column: 12, scope: !112)
!116 = !DILocation(line: 118, column: 5, scope: !112)
!117 = !DILocation(line: 120, column: 35, scope: !118)
!118 = distinct !DILexicalBlock(scope: !108, file: !1, line: 120, column: 11)
!119 = !DILocation(line: 120, column: 33, scope: !118)
!120 = !DILocation(line: 120, column: 47, scope: !118)
!121 = !DILocation(line: 120, column: 49, scope: !118)
!122 = !DILocation(line: 120, column: 48, scope: !118)
!123 = !DILocation(line: 120, column: 51, scope: !118)
!124 = !DILocation(line: 120, column: 46, scope: !118)
!125 = !DILocation(line: 120, column: 44, scope: !118)
!126 = !DILocation(line: 120, column: 37, scope: !118)
!127 = !DILocation(line: 120, column: 11, scope: !108)
!128 = !DILocation(line: 121, column: 54, scope: !129)
!129 = distinct !DILexicalBlock(scope: !118, file: !1, line: 120, column: 57)
!130 = !DILocation(line: 121, column: 46, scope: !129)
!131 = !DILocation(line: 121, column: 57, scope: !129)
!132 = !DILocation(line: 121, column: 60, scope: !129)
!133 = !DILocation(line: 121, column: 12, scope: !129)
!134 = !DILocation(line: 121, column: 5, scope: !129)
!135 = !DILocation(line: 123, column: 11, scope: !136)
!136 = distinct !DILexicalBlock(scope: !118, file: !1, line: 123, column: 11)
!137 = !DILocation(line: 123, column: 11, scope: !138)
!138 = !DILexicalBlockFile(scope: !136, file: !1, discriminator: 1)
!139 = !DILocation(line: 123, column: 11, scope: !140)
!140 = !DILexicalBlockFile(scope: !136, file: !1, discriminator: 2)
!141 = !DILocation(line: 123, column: 11, scope: !142)
!142 = !DILexicalBlockFile(scope: !136, file: !1, discriminator: 3)
!143 = !DILocation(line: 123, column: 48, scope: !142)
!144 = !DILocation(line: 124, column: 58, scope: !145)
!145 = distinct !DILexicalBlock(scope: !136, file: !1, line: 123, column: 73)
!146 = !DILocation(line: 124, column: 50, scope: !145)
!147 = !DILocation(line: 124, column: 61, scope: !145)
!148 = !DILocation(line: 124, column: 64, scope: !145)
!149 = !DILocation(line: 124, column: 12, scope: !145)
!150 = !DILocation(line: 124, column: 5, scope: !145)
!151 = !DILocalVariable(name: "two_over_x", scope: !152, file: !1, line: 128, type: !42)
!152 = distinct !DILexicalBlock(scope: !136, file: !1, line: 126, column: 8)
!153 = !DILocation(line: 128, column: 12, scope: !152)
!154 = !DILocation(line: 128, column: 29, scope: !152)
!155 = !DILocation(line: 128, column: 28, scope: !152)
!156 = !DILocalVariable(name: "r_b_jm1", scope: !152, file: !1, line: 129, type: !54)
!157 = !DILocation(line: 129, column: 19, scope: !152)
!158 = !DILocalVariable(name: "r_b_j", scope: !152, file: !1, line: 130, type: !54)
!159 = !DILocation(line: 130, column: 19, scope: !152)
!160 = !DILocalVariable(name: "stat_0", scope: !152, file: !1, line: 131, type: !51)
!161 = !DILocation(line: 131, column: 9, scope: !152)
!162 = !DILocation(line: 131, column: 44, scope: !152)
!163 = !DILocation(line: 131, column: 18, scope: !152)
!164 = !DILocalVariable(name: "stat_1", scope: !152, file: !1, line: 132, type: !51)
!165 = !DILocation(line: 132, column: 9, scope: !152)
!166 = !DILocation(line: 132, column: 44, scope: !152)
!167 = !DILocation(line: 132, column: 18, scope: !152)
!168 = !DILocalVariable(name: "b_jm1", scope: !152, file: !1, line: 133, type: !42)
!169 = !DILocation(line: 133, column: 12, scope: !152)
!170 = !DILocation(line: 133, column: 28, scope: !152)
!171 = !DILocalVariable(name: "b_j", scope: !152, file: !1, line: 134, type: !42)
!172 = !DILocation(line: 134, column: 12, scope: !152)
!173 = !DILocation(line: 134, column: 26, scope: !152)
!174 = !DILocalVariable(name: "b_jp1", scope: !152, file: !1, line: 135, type: !42)
!175 = !DILocation(line: 135, column: 12, scope: !152)
!176 = !DILocalVariable(name: "j", scope: !152, file: !1, line: 136, type: !51)
!177 = !DILocation(line: 136, column: 9, scope: !152)
!178 = !DILocation(line: 138, column: 10, scope: !179)
!179 = distinct !DILexicalBlock(scope: !152, file: !1, line: 138, column: 5)
!180 = !DILocation(line: 138, column: 9, scope: !179)
!181 = !DILocation(line: 138, column: 14, scope: !182)
!182 = !DILexicalBlockFile(scope: !183, file: !1, discriminator: 1)
!183 = distinct !DILexicalBlock(scope: !179, file: !1, line: 138, column: 5)
!184 = !DILocation(line: 138, column: 16, scope: !182)
!185 = !DILocation(line: 138, column: 15, scope: !182)
!186 = !DILocation(line: 138, column: 5, scope: !182)
!187 = !DILocation(line: 139, column: 15, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !1, line: 138, column: 24)
!189 = !DILocation(line: 139, column: 23, scope: !188)
!190 = !DILocation(line: 139, column: 27, scope: !188)
!191 = !DILocation(line: 139, column: 25, scope: !188)
!192 = !DILocation(line: 139, column: 40, scope: !188)
!193 = !DILocation(line: 139, column: 38, scope: !188)
!194 = !DILocation(line: 139, column: 21, scope: !188)
!195 = !DILocation(line: 139, column: 13, scope: !188)
!196 = !DILocation(line: 140, column: 15, scope: !188)
!197 = !DILocation(line: 140, column: 13, scope: !188)
!198 = !DILocation(line: 141, column: 15, scope: !188)
!199 = !DILocation(line: 141, column: 13, scope: !188)
!200 = !DILocation(line: 142, column: 5, scope: !188)
!201 = !DILocation(line: 138, column: 20, scope: !202)
!202 = !DILexicalBlockFile(scope: !183, file: !1, discriminator: 2)
!203 = !DILocation(line: 138, column: 5, scope: !202)
!204 = distinct !{!204, !205}
!205 = !DILocation(line: 138, column: 5, scope: !152)
!206 = !DILocation(line: 144, column: 20, scope: !152)
!207 = !DILocation(line: 144, column: 5, scope: !152)
!208 = !DILocation(line: 144, column: 13, scope: !152)
!209 = !DILocation(line: 144, column: 18, scope: !152)
!210 = !DILocation(line: 145, column: 20, scope: !152)
!211 = !DILocation(line: 145, column: 30, scope: !152)
!212 = !DILocation(line: 145, column: 25, scope: !152)
!213 = !DILocation(line: 145, column: 51, scope: !152)
!214 = !DILocation(line: 145, column: 63, scope: !152)
!215 = !DILocation(line: 145, column: 54, scope: !152)
!216 = !DILocation(line: 145, column: 38, scope: !217)
!217 = !DILexicalBlockFile(scope: !152, file: !1, discriminator: 1)
!218 = !DILocation(line: 145, column: 81, scope: !152)
!219 = !DILocation(line: 145, column: 91, scope: !152)
!220 = !DILocation(line: 145, column: 84, scope: !152)
!221 = !DILocation(line: 145, column: 70, scope: !222)
!222 = !DILexicalBlockFile(scope: !152, file: !1, discriminator: 2)
!223 = !DILocation(line: 145, column: 68, scope: !152)
!224 = !DILocation(line: 145, column: 35, scope: !152)
!225 = !DILocation(line: 145, column: 22, scope: !152)
!226 = !DILocation(line: 145, column: 5, scope: !152)
!227 = !DILocation(line: 145, column: 13, scope: !152)
!228 = !DILocation(line: 145, column: 18, scope: !152)
!229 = !DILocation(line: 146, column: 49, scope: !152)
!230 = !DILocation(line: 146, column: 57, scope: !152)
!231 = !DILocation(line: 146, column: 44, scope: !152)
!232 = !DILocation(line: 146, column: 42, scope: !152)
!233 = !DILocation(line: 146, column: 5, scope: !152)
!234 = !DILocation(line: 146, column: 13, scope: !152)
!235 = !DILocation(line: 146, column: 17, scope: !152)
!236 = !DILocation(line: 148, column: 12, scope: !152)
!237 = !DILocation(line: 148, column: 12, scope: !217)
!238 = !DILocation(line: 148, column: 12, scope: !222)
!239 = !DILocation(line: 148, column: 12, scope: !240)
!240 = !DILexicalBlockFile(scope: !152, file: !1, discriminator: 3)
!241 = !DILocation(line: 148, column: 12, scope: !242)
!242 = !DILexicalBlockFile(scope: !152, file: !1, discriminator: 4)
!243 = !DILocation(line: 148, column: 12, scope: !244)
!244 = !DILexicalBlockFile(scope: !152, file: !1, discriminator: 5)
!245 = !DILocation(line: 148, column: 12, scope: !246)
!246 = !DILexicalBlockFile(scope: !152, file: !1, discriminator: 6)
!247 = !DILocation(line: 148, column: 5, scope: !246)
!248 = !DILocation(line: 150, column: 1, scope: !48)
!249 = distinct !DISubprogram(name: "bessel_Kn_scaled_small_x", scope: !1, file: !1, line: 40, type: !250, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!250 = !DISubroutineType(types: !251)
!251 = !{!51, !252, !52, !53}
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!253 = !DILocalVariable(name: "n", arg: 1, scope: !249, file: !1, line: 40, type: !252)
!254 = !DILocation(line: 40, column: 36, scope: !249)
!255 = !DILocalVariable(name: "x", arg: 2, scope: !249, file: !1, line: 40, type: !52)
!256 = !DILocation(line: 40, column: 52, scope: !249)
!257 = !DILocalVariable(name: "result", arg: 3, scope: !249, file: !1, line: 40, type: !53)
!258 = !DILocation(line: 40, column: 71, scope: !249)
!259 = !DILocalVariable(name: "k", scope: !249, file: !1, line: 42, type: !51)
!260 = !DILocation(line: 42, column: 7, scope: !249)
!261 = !DILocalVariable(name: "y", scope: !249, file: !1, line: 43, type: !42)
!262 = !DILocation(line: 43, column: 10, scope: !249)
!263 = !DILocation(line: 43, column: 21, scope: !249)
!264 = !DILocation(line: 43, column: 19, scope: !249)
!265 = !DILocation(line: 43, column: 25, scope: !249)
!266 = !DILocation(line: 43, column: 23, scope: !249)
!267 = !DILocalVariable(name: "ln_x_2", scope: !249, file: !1, line: 44, type: !42)
!268 = !DILocation(line: 44, column: 10, scope: !249)
!269 = !DILocation(line: 44, column: 27, scope: !249)
!270 = !DILocation(line: 44, column: 26, scope: !249)
!271 = !DILocation(line: 44, column: 19, scope: !249)
!272 = !DILocalVariable(name: "ex", scope: !249, file: !1, line: 45, type: !42)
!273 = !DILocation(line: 45, column: 10, scope: !249)
!274 = !DILocation(line: 45, column: 19, scope: !249)
!275 = !DILocation(line: 45, column: 15, scope: !249)
!276 = !DILocalVariable(name: "ln_nm1_fact", scope: !249, file: !1, line: 46, type: !54)
!277 = !DILocation(line: 46, column: 17, scope: !249)
!278 = !DILocalVariable(name: "k_term", scope: !249, file: !1, line: 47, type: !42)
!279 = !DILocation(line: 47, column: 10, scope: !249)
!280 = !DILocalVariable(name: "term1", scope: !249, file: !1, line: 48, type: !42)
!281 = !DILocation(line: 48, column: 10, scope: !249)
!282 = !DILocalVariable(name: "sum1", scope: !249, file: !1, line: 48, type: !42)
!283 = !DILocation(line: 48, column: 17, scope: !249)
!284 = !DILocalVariable(name: "ln_pre1", scope: !249, file: !1, line: 48, type: !42)
!285 = !DILocation(line: 48, column: 23, scope: !249)
!286 = !DILocalVariable(name: "term2", scope: !249, file: !1, line: 49, type: !42)
!287 = !DILocation(line: 49, column: 10, scope: !249)
!288 = !DILocalVariable(name: "sum2", scope: !249, file: !1, line: 49, type: !42)
!289 = !DILocation(line: 49, column: 17, scope: !249)
!290 = !DILocalVariable(name: "pre2", scope: !249, file: !1, line: 49, type: !42)
!291 = !DILocation(line: 49, column: 23, scope: !249)
!292 = !DILocation(line: 51, column: 34, scope: !249)
!293 = !DILocation(line: 51, column: 35, scope: !249)
!294 = !DILocation(line: 51, column: 3, scope: !249)
!295 = !DILocation(line: 53, column: 14, scope: !249)
!296 = !DILocation(line: 53, column: 13, scope: !249)
!297 = !DILocation(line: 53, column: 16, scope: !249)
!298 = !DILocation(line: 53, column: 15, scope: !249)
!299 = !DILocation(line: 53, column: 37, scope: !249)
!300 = !DILocation(line: 53, column: 23, scope: !249)
!301 = !DILocation(line: 53, column: 11, scope: !249)
!302 = !DILocation(line: 54, column: 6, scope: !303)
!303 = distinct !DILexicalBlock(scope: !249, file: !1, line: 54, column: 6)
!304 = !DILocation(line: 54, column: 14, scope: !303)
!305 = !DILocation(line: 54, column: 6, scope: !249)
!306 = !DILocation(line: 54, column: 39, scope: !307)
!307 = !DILexicalBlockFile(scope: !303, file: !1, discriminator: 1)
!308 = distinct !{!308, !309}
!309 = !DILocation(line: 54, column: 39, scope: !303)
!310 = !DILocation(line: 54, column: 39, scope: !311)
!311 = !DILexicalBlockFile(scope: !312, file: !1, discriminator: 2)
!312 = distinct !DILexicalBlock(scope: !303, file: !1, line: 54, column: 39)
!313 = !DILocation(line: 54, column: 39, scope: !314)
!314 = !DILexicalBlockFile(scope: !312, file: !1, discriminator: 3)
!315 = !DILocation(line: 56, column: 8, scope: !249)
!316 = !DILocation(line: 57, column: 10, scope: !249)
!317 = !DILocation(line: 58, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !249, file: !1, line: 58, column: 3)
!319 = !DILocation(line: 58, column: 7, scope: !318)
!320 = !DILocation(line: 58, column: 12, scope: !321)
!321 = !DILexicalBlockFile(scope: !322, file: !1, discriminator: 1)
!322 = distinct !DILexicalBlock(scope: !318, file: !1, line: 58, column: 3)
!323 = !DILocation(line: 58, column: 15, scope: !321)
!324 = !DILocation(line: 58, column: 16, scope: !321)
!325 = !DILocation(line: 58, column: 13, scope: !321)
!326 = !DILocation(line: 58, column: 3, scope: !321)
!327 = !DILocation(line: 59, column: 16, scope: !328)
!328 = distinct !DILexicalBlock(scope: !322, file: !1, line: 58, column: 25)
!329 = !DILocation(line: 59, column: 15, scope: !328)
!330 = !DILocation(line: 59, column: 19, scope: !328)
!331 = !DILocation(line: 59, column: 24, scope: !328)
!332 = !DILocation(line: 59, column: 26, scope: !328)
!333 = !DILocation(line: 59, column: 25, scope: !328)
!334 = !DILocation(line: 59, column: 21, scope: !328)
!335 = !DILocation(line: 59, column: 18, scope: !328)
!336 = !DILocation(line: 59, column: 17, scope: !328)
!337 = !DILocation(line: 59, column: 12, scope: !328)
!338 = !DILocation(line: 60, column: 13, scope: !328)
!339 = !DILocation(line: 60, column: 10, scope: !328)
!340 = !DILocation(line: 61, column: 3, scope: !328)
!341 = !DILocation(line: 58, column: 21, scope: !342)
!342 = !DILexicalBlockFile(scope: !322, file: !1, discriminator: 2)
!343 = !DILocation(line: 58, column: 3, scope: !342)
!344 = distinct !{!344, !345}
!345 = !DILocation(line: 58, column: 3, scope: !249)
!346 = !DILocation(line: 62, column: 21, scope: !249)
!347 = !DILocation(line: 62, column: 17, scope: !249)
!348 = !DILocation(line: 62, column: 15, scope: !249)
!349 = !DILocation(line: 62, column: 32, scope: !249)
!350 = !DILocation(line: 62, column: 30, scope: !249)
!351 = !DILocation(line: 62, column: 9, scope: !249)
!352 = !DILocation(line: 64, column: 20, scope: !249)
!353 = !DILocation(line: 64, column: 22, scope: !249)
!354 = !DILocation(line: 64, column: 21, scope: !249)
!355 = !DILocation(line: 64, column: 16, scope: !249)
!356 = !DILocation(line: 64, column: 14, scope: !249)
!357 = !DILocation(line: 64, column: 8, scope: !249)
!358 = !DILocation(line: 65, column: 6, scope: !359)
!359 = distinct !DILexicalBlock(scope: !249, file: !1, line: 65, column: 6)
!360 = !DILocation(line: 65, column: 11, scope: !359)
!361 = !DILocation(line: 65, column: 6, scope: !249)
!362 = !DILocalVariable(name: "KMAX", scope: !363, file: !1, line: 66, type: !252)
!363 = distinct !DILexicalBlock(scope: !359, file: !1, line: 65, column: 18)
!364 = !DILocation(line: 66, column: 15, scope: !363)
!365 = !DILocalVariable(name: "psi_n", scope: !363, file: !1, line: 67, type: !54)
!366 = !DILocation(line: 67, column: 19, scope: !363)
!367 = !DILocalVariable(name: "npk_fact", scope: !363, file: !1, line: 68, type: !54)
!368 = !DILocation(line: 68, column: 19, scope: !363)
!369 = !DILocalVariable(name: "yk", scope: !363, file: !1, line: 69, type: !42)
!370 = !DILocation(line: 69, column: 12, scope: !363)
!371 = !DILocalVariable(name: "k_fact", scope: !363, file: !1, line: 70, type: !42)
!372 = !DILocation(line: 70, column: 12, scope: !363)
!373 = !DILocalVariable(name: "psi_kp1", scope: !363, file: !1, line: 71, type: !42)
!374 = !DILocation(line: 71, column: 12, scope: !363)
!375 = !DILocalVariable(name: "psi_npkp1", scope: !363, file: !1, line: 72, type: !42)
!376 = !DILocation(line: 72, column: 12, scope: !363)
!377 = !DILocation(line: 73, column: 22, scope: !363)
!378 = !DILocation(line: 73, column: 5, scope: !363)
!379 = !DILocation(line: 74, column: 33, scope: !363)
!380 = !DILocation(line: 74, column: 5, scope: !363)
!381 = !DILocation(line: 75, column: 23, scope: !363)
!382 = !DILocation(line: 75, column: 33, scope: !363)
!383 = !DILocation(line: 75, column: 32, scope: !363)
!384 = !DILocation(line: 75, column: 27, scope: !363)
!385 = !DILocation(line: 75, column: 15, scope: !363)
!386 = !DILocation(line: 76, column: 13, scope: !363)
!387 = !DILocation(line: 76, column: 23, scope: !363)
!388 = !DILocation(line: 76, column: 21, scope: !363)
!389 = !DILocation(line: 76, column: 39, scope: !363)
!390 = !DILocation(line: 76, column: 38, scope: !363)
!391 = !DILocation(line: 76, column: 33, scope: !363)
!392 = !DILocation(line: 76, column: 56, scope: !363)
!393 = !DILocation(line: 76, column: 46, scope: !363)
!394 = !DILocation(line: 76, column: 10, scope: !363)
!395 = !DILocation(line: 77, column: 10, scope: !396)
!396 = distinct !DILexicalBlock(scope: !363, file: !1, line: 77, column: 5)
!397 = !DILocation(line: 77, column: 9, scope: !396)
!398 = !DILocation(line: 77, column: 14, scope: !399)
!399 = !DILexicalBlockFile(scope: !400, file: !1, discriminator: 1)
!400 = distinct !DILexicalBlock(scope: !396, file: !1, line: 77, column: 5)
!401 = !DILocation(line: 77, column: 15, scope: !399)
!402 = !DILocation(line: 77, column: 5, scope: !399)
!403 = !DILocation(line: 78, column: 24, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !1, line: 77, column: 27)
!405 = !DILocation(line: 78, column: 23, scope: !404)
!406 = !DILocation(line: 78, column: 17, scope: !404)
!407 = !DILocation(line: 79, column: 25, scope: !404)
!408 = !DILocation(line: 79, column: 27, scope: !404)
!409 = !DILocation(line: 79, column: 26, scope: !404)
!410 = !DILocation(line: 79, column: 24, scope: !404)
!411 = !DILocation(line: 79, column: 23, scope: !404)
!412 = !DILocation(line: 79, column: 17, scope: !404)
!413 = !DILocation(line: 80, column: 20, scope: !404)
!414 = !DILocation(line: 80, column: 17, scope: !404)
!415 = !DILocation(line: 81, column: 23, scope: !404)
!416 = !DILocation(line: 81, column: 25, scope: !404)
!417 = !DILocation(line: 81, column: 24, scope: !404)
!418 = !DILocation(line: 81, column: 16, scope: !404)
!419 = !DILocation(line: 81, column: 20, scope: !404)
!420 = !DILocation(line: 82, column: 13, scope: !404)
!421 = !DILocation(line: 82, column: 10, scope: !404)
!422 = !DILocation(line: 83, column: 16, scope: !404)
!423 = !DILocation(line: 83, column: 20, scope: !404)
!424 = !DILocation(line: 83, column: 30, scope: !404)
!425 = !DILocation(line: 83, column: 28, scope: !404)
!426 = !DILocation(line: 83, column: 46, scope: !404)
!427 = !DILocation(line: 83, column: 45, scope: !404)
!428 = !DILocation(line: 83, column: 40, scope: !404)
!429 = !DILocation(line: 83, column: 18, scope: !404)
!430 = !DILocation(line: 83, column: 55, scope: !404)
!431 = !DILocation(line: 83, column: 71, scope: !404)
!432 = !DILocation(line: 83, column: 61, scope: !404)
!433 = !DILocation(line: 83, column: 53, scope: !404)
!434 = !DILocation(line: 83, column: 14, scope: !404)
!435 = !DILocation(line: 84, column: 15, scope: !404)
!436 = !DILocation(line: 84, column: 12, scope: !404)
!437 = !DILocation(line: 85, column: 5, scope: !404)
!438 = !DILocation(line: 77, column: 23, scope: !439)
!439 = !DILexicalBlockFile(scope: !400, file: !1, discriminator: 2)
!440 = !DILocation(line: 77, column: 5, scope: !439)
!441 = distinct !{!441, !442}
!442 = !DILocation(line: 77, column: 5, scope: !363)
!443 = !DILocation(line: 86, column: 15, scope: !363)
!444 = !DILocation(line: 86, column: 46, scope: !363)
!445 = !DILocation(line: 86, column: 44, scope: !363)
!446 = !DILocation(line: 86, column: 53, scope: !363)
!447 = !DILocation(line: 86, column: 51, scope: !363)
!448 = !DILocation(line: 86, column: 11, scope: !363)
!449 = !DILocation(line: 87, column: 3, scope: !363)
!450 = !DILocation(line: 89, column: 11, scope: !451)
!451 = distinct !DILexicalBlock(scope: !359, file: !1, line: 88, column: 8)
!452 = !DILocation(line: 92, column: 18, scope: !249)
!453 = !DILocation(line: 92, column: 24, scope: !249)
!454 = !DILocation(line: 92, column: 32, scope: !249)
!455 = !DILocation(line: 92, column: 30, scope: !249)
!456 = !DILocation(line: 92, column: 21, scope: !249)
!457 = !DILocation(line: 92, column: 3, scope: !249)
!458 = !DILocation(line: 92, column: 11, scope: !249)
!459 = !DILocation(line: 92, column: 16, scope: !249)
!460 = !DILocation(line: 93, column: 18, scope: !249)
!461 = !DILocation(line: 93, column: 21, scope: !249)
!462 = !DILocation(line: 93, column: 47, scope: !249)
!463 = !DILocation(line: 93, column: 42, scope: !249)
!464 = !DILocation(line: 93, column: 61, scope: !249)
!465 = !DILocation(line: 93, column: 56, scope: !466)
!466 = !DILexicalBlockFile(scope: !249, file: !1, discriminator: 1)
!467 = !DILocation(line: 93, column: 55, scope: !249)
!468 = !DILocation(line: 93, column: 75, scope: !249)
!469 = !DILocation(line: 93, column: 70, scope: !470)
!470 = !DILexicalBlockFile(scope: !249, file: !1, discriminator: 2)
!471 = !DILocation(line: 93, column: 68, scope: !249)
!472 = !DILocation(line: 93, column: 39, scope: !249)
!473 = !DILocation(line: 93, column: 3, scope: !249)
!474 = !DILocation(line: 93, column: 11, scope: !249)
!475 = !DILocation(line: 93, column: 16, scope: !249)
!476 = !DILocation(line: 94, column: 47, scope: !249)
!477 = !DILocation(line: 94, column: 55, scope: !249)
!478 = !DILocation(line: 94, column: 42, scope: !249)
!479 = !DILocation(line: 94, column: 40, scope: !249)
!480 = !DILocation(line: 94, column: 3, scope: !249)
!481 = !DILocation(line: 94, column: 11, scope: !249)
!482 = !DILocation(line: 94, column: 15, scope: !249)
!483 = !DILocation(line: 96, column: 3, scope: !249)
!484 = !DILocation(line: 97, column: 1, scope: !249)
!485 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_e", scope: !1, file: !1, line: 153, type: !250, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!486 = !DILocalVariable(name: "n", arg: 1, scope: !485, file: !1, line: 153, type: !252)
!487 = !DILocation(line: 153, column: 34, scope: !485)
!488 = !DILocalVariable(name: "x", arg: 2, scope: !485, file: !1, line: 153, type: !52)
!489 = !DILocation(line: 153, column: 50, scope: !485)
!490 = !DILocalVariable(name: "result", arg: 3, scope: !485, file: !1, line: 153, type: !53)
!491 = !DILocation(line: 153, column: 69, scope: !485)
!492 = !DILocalVariable(name: "status", scope: !485, file: !1, line: 155, type: !252)
!493 = !DILocation(line: 155, column: 13, scope: !485)
!494 = !DILocation(line: 155, column: 48, scope: !485)
!495 = !DILocation(line: 155, column: 51, scope: !485)
!496 = !DILocation(line: 155, column: 54, scope: !485)
!497 = !DILocation(line: 155, column: 22, scope: !485)
!498 = !DILocalVariable(name: "ex", scope: !485, file: !1, line: 156, type: !52)
!499 = !DILocation(line: 156, column: 16, scope: !485)
!500 = !DILocation(line: 156, column: 26, scope: !485)
!501 = !DILocation(line: 156, column: 25, scope: !485)
!502 = !DILocation(line: 156, column: 21, scope: !485)
!503 = !DILocation(line: 157, column: 18, scope: !485)
!504 = !DILocation(line: 157, column: 3, scope: !485)
!505 = !DILocation(line: 157, column: 11, scope: !485)
!506 = !DILocation(line: 157, column: 15, scope: !485)
!507 = !DILocation(line: 158, column: 18, scope: !485)
!508 = !DILocation(line: 158, column: 3, scope: !485)
!509 = !DILocation(line: 158, column: 11, scope: !485)
!510 = !DILocation(line: 158, column: 15, scope: !485)
!511 = !DILocation(line: 159, column: 18, scope: !485)
!512 = !DILocation(line: 159, column: 20, scope: !485)
!513 = !DILocation(line: 159, column: 45, scope: !485)
!514 = !DILocation(line: 159, column: 53, scope: !485)
!515 = !DILocation(line: 159, column: 40, scope: !485)
!516 = !DILocation(line: 159, column: 38, scope: !485)
!517 = !DILocation(line: 159, column: 3, scope: !485)
!518 = !DILocation(line: 159, column: 11, scope: !485)
!519 = !DILocation(line: 159, column: 15, scope: !485)
!520 = !DILocation(line: 160, column: 10, scope: !485)
!521 = !DILocation(line: 160, column: 3, scope: !485)
!522 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_scaled_array", scope: !1, file: !1, line: 164, type: !523, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!523 = !DISubroutineType(types: !524)
!524 = !{!51, !252, !252, !52, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!526 = !DILocalVariable(name: "nmin", arg: 1, scope: !522, file: !1, line: 164, type: !252)
!527 = !DILocation(line: 164, column: 45, scope: !522)
!528 = !DILocalVariable(name: "nmax", arg: 2, scope: !522, file: !1, line: 164, type: !252)
!529 = !DILocation(line: 164, column: 61, scope: !522)
!530 = !DILocalVariable(name: "x", arg: 3, scope: !522, file: !1, line: 164, type: !52)
!531 = !DILocation(line: 164, column: 80, scope: !522)
!532 = !DILocalVariable(name: "result_array", arg: 4, scope: !522, file: !1, line: 164, type: !525)
!533 = !DILocation(line: 164, column: 92, scope: !522)
!534 = !DILocation(line: 168, column: 6, scope: !535)
!535 = distinct !DILexicalBlock(scope: !522, file: !1, line: 168, column: 6)
!536 = !DILocation(line: 168, column: 11, scope: !535)
!537 = !DILocation(line: 168, column: 15, scope: !535)
!538 = !DILocation(line: 168, column: 18, scope: !539)
!539 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 1)
!540 = !DILocation(line: 168, column: 25, scope: !539)
!541 = !DILocation(line: 168, column: 23, scope: !539)
!542 = !DILocation(line: 168, column: 30, scope: !539)
!543 = !DILocation(line: 168, column: 33, scope: !544)
!544 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 2)
!545 = !DILocation(line: 168, column: 35, scope: !544)
!546 = !DILocation(line: 168, column: 6, scope: !544)
!547 = !DILocalVariable(name: "j", scope: !548, file: !1, line: 169, type: !51)
!548 = distinct !DILexicalBlock(scope: !535, file: !1, line: 168, column: 43)
!549 = !DILocation(line: 169, column: 9, scope: !548)
!550 = !DILocation(line: 170, column: 10, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !1, line: 170, column: 5)
!552 = !DILocation(line: 170, column: 9, scope: !551)
!553 = !DILocation(line: 170, column: 14, scope: !554)
!554 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 1)
!555 = distinct !DILexicalBlock(scope: !551, file: !1, line: 170, column: 5)
!556 = !DILocation(line: 170, column: 17, scope: !554)
!557 = !DILocation(line: 170, column: 22, scope: !554)
!558 = !DILocation(line: 170, column: 21, scope: !554)
!559 = !DILocation(line: 170, column: 15, scope: !554)
!560 = !DILocation(line: 170, column: 5, scope: !554)
!561 = !DILocation(line: 170, column: 46, scope: !562)
!562 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 2)
!563 = !DILocation(line: 170, column: 33, scope: !562)
!564 = !DILocation(line: 170, column: 49, scope: !562)
!565 = !DILocation(line: 170, column: 29, scope: !566)
!566 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 3)
!567 = !DILocation(line: 170, column: 5, scope: !566)
!568 = distinct !{!568, !569}
!569 = !DILocation(line: 170, column: 5, scope: !548)
!570 = !DILocation(line: 171, column: 5, scope: !548)
!571 = distinct !{!571, !570}
!572 = !DILocation(line: 171, column: 5, scope: !573)
!573 = !DILexicalBlockFile(scope: !574, file: !1, discriminator: 1)
!574 = distinct !DILexicalBlock(scope: !548, file: !1, line: 171, column: 5)
!575 = !DILocation(line: 172, column: 3, scope: !548)
!576 = !DILocation(line: 173, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !535, file: !1, line: 173, column: 11)
!578 = !DILocation(line: 173, column: 16, scope: !577)
!579 = !DILocation(line: 173, column: 11, scope: !535)
!580 = !DILocalVariable(name: "b", scope: !581, file: !1, line: 174, type: !54)
!581 = distinct !DILexicalBlock(scope: !577, file: !1, line: 173, column: 22)
!582 = !DILocation(line: 174, column: 19, scope: !581)
!583 = !DILocalVariable(name: "stat", scope: !581, file: !1, line: 175, type: !51)
!584 = !DILocation(line: 175, column: 9, scope: !581)
!585 = !DILocation(line: 175, column: 42, scope: !581)
!586 = !DILocation(line: 175, column: 16, scope: !581)
!587 = !DILocation(line: 176, column: 25, scope: !581)
!588 = !DILocation(line: 176, column: 5, scope: !581)
!589 = !DILocation(line: 176, column: 21, scope: !581)
!590 = !DILocation(line: 177, column: 12, scope: !581)
!591 = !DILocation(line: 177, column: 5, scope: !581)
!592 = !DILocalVariable(name: "two_over_x", scope: !593, file: !1, line: 180, type: !42)
!593 = distinct !DILexicalBlock(scope: !577, file: !1, line: 179, column: 8)
!594 = !DILocation(line: 180, column: 12, scope: !593)
!595 = !DILocation(line: 180, column: 29, scope: !593)
!596 = !DILocation(line: 180, column: 28, scope: !593)
!597 = !DILocalVariable(name: "r_Knm1", scope: !593, file: !1, line: 181, type: !54)
!598 = !DILocation(line: 181, column: 19, scope: !593)
!599 = !DILocalVariable(name: "r_Kn", scope: !593, file: !1, line: 182, type: !54)
!600 = !DILocation(line: 182, column: 19, scope: !593)
!601 = !DILocalVariable(name: "stat_0", scope: !593, file: !1, line: 183, type: !51)
!602 = !DILocation(line: 183, column: 9, scope: !593)
!603 = !DILocation(line: 183, column: 44, scope: !593)
!604 = !DILocation(line: 183, column: 52, scope: !593)
!605 = !DILocation(line: 183, column: 18, scope: !593)
!606 = !DILocalVariable(name: "stat_1", scope: !593, file: !1, line: 184, type: !51)
!607 = !DILocation(line: 184, column: 9, scope: !593)
!608 = !DILocation(line: 184, column: 44, scope: !593)
!609 = !DILocation(line: 184, column: 48, scope: !593)
!610 = !DILocation(line: 184, column: 52, scope: !593)
!611 = !DILocation(line: 184, column: 18, scope: !593)
!612 = !DILocalVariable(name: "stat", scope: !593, file: !1, line: 185, type: !51)
!613 = !DILocation(line: 185, column: 9, scope: !593)
!614 = !DILocation(line: 185, column: 16, scope: !593)
!615 = !DILocation(line: 185, column: 16, scope: !616)
!616 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 1)
!617 = !DILocation(line: 185, column: 16, scope: !618)
!618 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 2)
!619 = !DILocation(line: 185, column: 16, scope: !620)
!620 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 3)
!621 = !DILocation(line: 185, column: 16, scope: !622)
!622 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 4)
!623 = !DILocation(line: 185, column: 16, scope: !624)
!624 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 5)
!625 = !DILocation(line: 185, column: 16, scope: !626)
!626 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 6)
!627 = !DILocation(line: 185, column: 9, scope: !626)
!628 = !DILocalVariable(name: "Knp1", scope: !593, file: !1, line: 186, type: !42)
!629 = !DILocation(line: 186, column: 12, scope: !593)
!630 = !DILocalVariable(name: "Kn", scope: !593, file: !1, line: 187, type: !42)
!631 = !DILocation(line: 187, column: 12, scope: !593)
!632 = !DILocation(line: 187, column: 24, scope: !593)
!633 = !DILocalVariable(name: "Knm1", scope: !593, file: !1, line: 188, type: !42)
!634 = !DILocation(line: 188, column: 12, scope: !593)
!635 = !DILocation(line: 188, column: 26, scope: !593)
!636 = !DILocalVariable(name: "n", scope: !593, file: !1, line: 189, type: !51)
!637 = !DILocation(line: 189, column: 9, scope: !593)
!638 = !DILocation(line: 191, column: 11, scope: !639)
!639 = distinct !DILexicalBlock(scope: !593, file: !1, line: 191, column: 5)
!640 = !DILocation(line: 191, column: 15, scope: !639)
!641 = !DILocation(line: 191, column: 10, scope: !639)
!642 = !DILocation(line: 191, column: 9, scope: !639)
!643 = !DILocation(line: 191, column: 19, scope: !644)
!644 = !DILexicalBlockFile(scope: !645, file: !1, discriminator: 1)
!645 = distinct !DILexicalBlock(scope: !639, file: !1, line: 191, column: 5)
!646 = !DILocation(line: 191, column: 22, scope: !644)
!647 = !DILocation(line: 191, column: 26, scope: !644)
!648 = !DILocation(line: 191, column: 20, scope: !644)
!649 = !DILocation(line: 191, column: 5, scope: !644)
!650 = !DILocation(line: 192, column: 10, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !1, line: 192, column: 10)
!652 = distinct !DILexicalBlock(scope: !645, file: !1, line: 191, column: 35)
!653 = !DILocation(line: 192, column: 15, scope: !651)
!654 = !DILocation(line: 192, column: 10, scope: !652)
!655 = !DILocation(line: 193, column: 34, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !1, line: 192, column: 30)
!657 = !DILocation(line: 193, column: 22, scope: !656)
!658 = !DILocation(line: 193, column: 23, scope: !656)
!659 = !DILocation(line: 193, column: 26, scope: !656)
!660 = !DILocation(line: 193, column: 25, scope: !656)
!661 = !DILocation(line: 193, column: 9, scope: !656)
!662 = !DILocation(line: 193, column: 32, scope: !656)
!663 = !DILocation(line: 194, column: 16, scope: !656)
!664 = !DILocation(line: 194, column: 23, scope: !656)
!665 = !DILocation(line: 194, column: 27, scope: !656)
!666 = !DILocation(line: 194, column: 25, scope: !656)
!667 = !DILocation(line: 194, column: 40, scope: !656)
!668 = !DILocation(line: 194, column: 38, scope: !656)
!669 = !DILocation(line: 194, column: 21, scope: !656)
!670 = !DILocation(line: 194, column: 14, scope: !656)
!671 = !DILocation(line: 195, column: 16, scope: !656)
!672 = !DILocation(line: 195, column: 14, scope: !656)
!673 = !DILocation(line: 196, column: 16, scope: !656)
!674 = !DILocation(line: 196, column: 14, scope: !656)
!675 = !DILocation(line: 197, column: 7, scope: !656)
!676 = !DILocalVariable(name: "j", scope: !677, file: !1, line: 206, type: !51)
!677 = distinct !DILexicalBlock(scope: !651, file: !1, line: 198, column: 12)
!678 = !DILocation(line: 206, column: 13, scope: !677)
!679 = !DILocation(line: 207, column: 15, scope: !680)
!680 = distinct !DILexicalBlock(scope: !677, file: !1, line: 207, column: 9)
!681 = !DILocation(line: 207, column: 14, scope: !680)
!682 = !DILocation(line: 207, column: 13, scope: !680)
!683 = !DILocation(line: 207, column: 18, scope: !684)
!684 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 1)
!685 = distinct !DILexicalBlock(scope: !680, file: !1, line: 207, column: 9)
!686 = !DILocation(line: 207, column: 21, scope: !684)
!687 = !DILocation(line: 207, column: 25, scope: !684)
!688 = !DILocation(line: 207, column: 19, scope: !684)
!689 = !DILocation(line: 207, column: 9, scope: !684)
!690 = !DILocation(line: 207, column: 47, scope: !691)
!691 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 2)
!692 = !DILocation(line: 207, column: 48, scope: !691)
!693 = !DILocation(line: 207, column: 51, scope: !691)
!694 = !DILocation(line: 207, column: 50, scope: !691)
!695 = !DILocation(line: 207, column: 34, scope: !691)
!696 = !DILocation(line: 207, column: 57, scope: !691)
!697 = !DILocation(line: 207, column: 30, scope: !698)
!698 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 3)
!699 = !DILocation(line: 207, column: 9, scope: !698)
!700 = distinct !{!700, !701}
!701 = !DILocation(line: 207, column: 9, scope: !677)
!702 = !DILocation(line: 208, column: 9, scope: !677)
!703 = distinct !{!703, !702}
!704 = !DILocation(line: 208, column: 9, scope: !705)
!705 = !DILexicalBlockFile(scope: !706, file: !1, discriminator: 1)
!706 = distinct !DILexicalBlock(scope: !677, file: !1, line: 208, column: 9)
!707 = !DILocation(line: 210, column: 5, scope: !652)
!708 = !DILocation(line: 191, column: 31, scope: !709)
!709 = !DILexicalBlockFile(scope: !645, file: !1, discriminator: 2)
!710 = !DILocation(line: 191, column: 5, scope: !709)
!711 = distinct !{!711, !712}
!712 = !DILocation(line: 191, column: 5, scope: !593)
!713 = !DILocation(line: 212, column: 12, scope: !593)
!714 = !DILocation(line: 212, column: 5, scope: !593)
!715 = !DILocation(line: 214, column: 1, scope: !522)
!716 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_array", scope: !1, file: !1, line: 218, type: !523, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!717 = !DILocalVariable(name: "nmin", arg: 1, scope: !716, file: !1, line: 218, type: !252)
!718 = !DILocation(line: 218, column: 34, scope: !716)
!719 = !DILocalVariable(name: "nmax", arg: 2, scope: !716, file: !1, line: 218, type: !252)
!720 = !DILocation(line: 218, column: 50, scope: !716)
!721 = !DILocalVariable(name: "x", arg: 3, scope: !716, file: !1, line: 218, type: !52)
!722 = !DILocation(line: 218, column: 69, scope: !716)
!723 = !DILocalVariable(name: "result_array", arg: 4, scope: !716, file: !1, line: 218, type: !525)
!724 = !DILocation(line: 218, column: 81, scope: !716)
!725 = !DILocalVariable(name: "status", scope: !716, file: !1, line: 220, type: !51)
!726 = !DILocation(line: 220, column: 7, scope: !716)
!727 = !DILocation(line: 220, column: 46, scope: !716)
!728 = !DILocation(line: 220, column: 52, scope: !716)
!729 = !DILocation(line: 220, column: 58, scope: !716)
!730 = !DILocation(line: 220, column: 61, scope: !716)
!731 = !DILocation(line: 220, column: 16, scope: !716)
!732 = !DILocalVariable(name: "ex", scope: !716, file: !1, line: 221, type: !42)
!733 = !DILocation(line: 221, column: 10, scope: !716)
!734 = !DILocation(line: 221, column: 20, scope: !716)
!735 = !DILocation(line: 221, column: 19, scope: !716)
!736 = !DILocation(line: 221, column: 15, scope: !716)
!737 = !DILocalVariable(name: "i", scope: !716, file: !1, line: 222, type: !51)
!738 = !DILocation(line: 222, column: 7, scope: !716)
!739 = !DILocation(line: 223, column: 8, scope: !740)
!740 = distinct !DILexicalBlock(scope: !716, file: !1, line: 223, column: 3)
!741 = !DILocation(line: 223, column: 7, scope: !740)
!742 = !DILocation(line: 223, column: 12, scope: !743)
!743 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 1)
!744 = distinct !DILexicalBlock(scope: !740, file: !1, line: 223, column: 3)
!745 = !DILocation(line: 223, column: 15, scope: !743)
!746 = !DILocation(line: 223, column: 20, scope: !743)
!747 = !DILocation(line: 223, column: 19, scope: !743)
!748 = !DILocation(line: 223, column: 13, scope: !743)
!749 = !DILocation(line: 223, column: 3, scope: !743)
!750 = !DILocation(line: 223, column: 50, scope: !751)
!751 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 2)
!752 = !DILocation(line: 223, column: 44, scope: !751)
!753 = !DILocation(line: 223, column: 31, scope: !751)
!754 = !DILocation(line: 223, column: 47, scope: !751)
!755 = !DILocation(line: 223, column: 27, scope: !756)
!756 = !DILexicalBlockFile(scope: !744, file: !1, discriminator: 3)
!757 = !DILocation(line: 223, column: 3, scope: !756)
!758 = distinct !{!758, !759}
!759 = !DILocation(line: 223, column: 3, scope: !716)
!760 = !DILocation(line: 224, column: 10, scope: !716)
!761 = !DILocation(line: 224, column: 3, scope: !716)
!762 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn_scaled", scope: !1, file: !1, line: 232, type: !763, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!763 = !DISubroutineType(types: !764)
!764 = !{!42, !252, !52}
!765 = !DILocalVariable(name: "n", arg: 1, scope: !762, file: !1, line: 232, type: !252)
!766 = !DILocation(line: 232, column: 42, scope: !762)
!767 = !DILocalVariable(name: "x", arg: 2, scope: !762, file: !1, line: 232, type: !52)
!768 = !DILocation(line: 232, column: 58, scope: !762)
!769 = !DILocalVariable(name: "result", scope: !762, file: !1, line: 234, type: !54)
!770 = !DILocation(line: 234, column: 3, scope: !762)
!771 = !DILocalVariable(name: "status", scope: !762, file: !1, line: 234, type: !51)
!772 = !DILocation(line: 234, column: 3, scope: !773)
!773 = distinct !DILexicalBlock(scope: !762, file: !1, line: 234, column: 3)
!774 = !DILocation(line: 234, column: 3, scope: !775)
!775 = !DILexicalBlockFile(scope: !776, file: !1, discriminator: 1)
!776 = distinct !DILexicalBlock(scope: !773, file: !1, line: 234, column: 3)
!777 = distinct !{!777, !778}
!778 = !DILocation(line: 234, column: 3, scope: !776)
!779 = !DILocation(line: 234, column: 3, scope: !780)
!780 = !DILexicalBlockFile(scope: !781, file: !1, discriminator: 2)
!781 = distinct !DILexicalBlock(scope: !776, file: !1, line: 234, column: 3)
!782 = !DILocation(line: 234, column: 3, scope: !783)
!783 = !DILexicalBlockFile(scope: !776, file: !1, discriminator: 3)
!784 = !DILocation(line: 234, column: 3, scope: !785)
!785 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 4)
!786 = !DILocation(line: 235, column: 1, scope: !762)
!787 = distinct !DISubprogram(name: "gsl_sf_bessel_Kn", scope: !1, file: !1, line: 237, type: !763, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!788 = !DILocalVariable(name: "n", arg: 1, scope: !787, file: !1, line: 237, type: !252)
!789 = !DILocation(line: 237, column: 35, scope: !787)
!790 = !DILocalVariable(name: "x", arg: 2, scope: !787, file: !1, line: 237, type: !52)
!791 = !DILocation(line: 237, column: 51, scope: !787)
!792 = !DILocalVariable(name: "result", scope: !787, file: !1, line: 239, type: !54)
!793 = !DILocation(line: 239, column: 3, scope: !787)
!794 = !DILocalVariable(name: "status", scope: !787, file: !1, line: 239, type: !51)
!795 = !DILocation(line: 239, column: 3, scope: !796)
!796 = distinct !DILexicalBlock(scope: !787, file: !1, line: 239, column: 3)
!797 = !DILocation(line: 239, column: 3, scope: !798)
!798 = !DILexicalBlockFile(scope: !799, file: !1, discriminator: 1)
!799 = distinct !DILexicalBlock(scope: !796, file: !1, line: 239, column: 3)
!800 = distinct !{!800, !801}
!801 = !DILocation(line: 239, column: 3, scope: !799)
!802 = !DILocation(line: 239, column: 3, scope: !803)
!803 = !DILexicalBlockFile(scope: !804, file: !1, discriminator: 2)
!804 = distinct !DILexicalBlock(scope: !799, file: !1, line: 239, column: 3)
!805 = !DILocation(line: 239, column: 3, scope: !806)
!806 = !DILexicalBlockFile(scope: !799, file: !1, discriminator: 3)
!807 = !DILocation(line: 239, column: 3, scope: !808)
!808 = !DILexicalBlockFile(scope: !787, file: !1, discriminator: 4)
!809 = !DILocation(line: 240, column: 1, scope: !787)
