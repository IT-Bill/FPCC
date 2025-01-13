; ModuleID = 'ellint.c'
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
  %29 = select i1 %28, double 1.000000e-03, double 3.000000e-02, !dbg !96
  store double %29, double* %13, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata double* %14, metadata !98, metadata !75), !dbg !99
  %30 = load i32, i32* %12, align 4, !dbg !100
  %31 = zext i32 %30 to i64, !dbg !101
  %32 = getelementptr inbounds [0 x double], [0 x double]* @gsl_prec_eps, i64 0, i64 %31, !dbg !101
  %33 = load double, double* %32, align 8, !dbg !101
  store double %33, double* %14, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %15, metadata !102, metadata !75), !dbg !104
  store i32 10000, i32* %15, align 4, !dbg !104
  %34 = load double, double* %6, align 8, !dbg !105
  %35 = fcmp olt double %34, 0.000000e+00, !dbg !107
  br i1 %35, label %44, label %36, !dbg !108

; <label>:36:                                     ; preds = %4
  %37 = load double, double* %7, align 8, !dbg !109
  %38 = fcmp olt double %37, 0.000000e+00, !dbg !111
  br i1 %38, label %44, label %39, !dbg !112

; <label>:39:                                     ; preds = %36
  %40 = load double, double* %6, align 8, !dbg !113
  %41 = load double, double* %7, align 8, !dbg !115
  %42 = fadd double %40, %41, !dbg !116
  %43 = fcmp olt double %42, 0x34000000000000, !dbg !117
  br i1 %43, label %44, label %53, !dbg !118

; <label>:44:                                     ; preds = %39, %36, %4
  br label %45, !dbg !119, !llvm.loop !121

; <label>:45:                                     ; preds = %44
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !122
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 0, !dbg !122
  store double 0x7FF8000000000000, double* %47, align 8, !dbg !122
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !122
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !122
  store double 0x7FF8000000000000, double* %49, align 8, !dbg !122
  br label %50, !dbg !122, !llvm.loop !125

; <label>:50:                                     ; preds = %45
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 84, i32 1), !dbg !127
  store i32 1, i32* %5, align 4, !dbg !127
  br label %155, !dbg !127
                                                  ; No predecessors!
  br label %52, !dbg !130

; <label>:52:                                     ; preds = %51
  br label %155, !dbg !132

; <label>:53:                                     ; preds = %39
  %54 = load double, double* %6, align 8, !dbg !133
  %55 = load double, double* %7, align 8, !dbg !133
  %56 = fcmp ogt double %54, %55, !dbg !133
  br i1 %56, label %57, label %59, !dbg !133

; <label>:57:                                     ; preds = %53
  %58 = load double, double* %6, align 8, !dbg !135
  br label %61, !dbg !135

; <label>:59:                                     ; preds = %53
  %60 = load double, double* %7, align 8, !dbg !137
  br label %61, !dbg !137

; <label>:61:                                     ; preds = %59, %57
  %62 = phi double [ %58, %57 ], [ %60, %59 ], !dbg !139
  %63 = fcmp olt double %62, 0x7FC9999999999999, !dbg !141
  br i1 %63, label %64, label %145, !dbg !139

; <label>:64:                                     ; preds = %61
  call void @llvm.dbg.declare(metadata double* %16, metadata !142, metadata !75), !dbg !144
  store double 0x3FC2492492492492, double* %16, align 8, !dbg !144
  call void @llvm.dbg.declare(metadata double* %17, metadata !145, metadata !75), !dbg !146
  store double 0x3FDA2E8BA2E8BA2F, double* %17, align 8, !dbg !146
  call void @llvm.dbg.declare(metadata double* %18, metadata !147, metadata !75), !dbg !148
  %65 = load double, double* %6, align 8, !dbg !149
  store double %65, double* %18, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata double* %19, metadata !150, metadata !75), !dbg !151
  %66 = load double, double* %7, align 8, !dbg !152
  store double %66, double* %19, align 8, !dbg !151
  call void @llvm.dbg.declare(metadata double* %20, metadata !153, metadata !75), !dbg !154
  call void @llvm.dbg.declare(metadata double* %21, metadata !155, metadata !75), !dbg !156
  call void @llvm.dbg.declare(metadata double* %22, metadata !157, metadata !75), !dbg !158
  call void @llvm.dbg.declare(metadata double* %23, metadata !159, metadata !75), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %24, metadata !161, metadata !75), !dbg !162
  store i32 0, i32* %24, align 4, !dbg !162
  br label %67, !dbg !163

; <label>:67:                                     ; preds = %64, %115
  %68 = load double, double* %18, align 8, !dbg !164
  %69 = load double, double* %19, align 8, !dbg !166
  %70 = fadd double %68, %69, !dbg !167
  %71 = load double, double* %19, align 8, !dbg !168
  %72 = fadd double %70, %71, !dbg !169
  %73 = fdiv double %72, 3.000000e+00, !dbg !170
  store double %73, double* %20, align 8, !dbg !171
  %74 = load double, double* %19, align 8, !dbg !172
  %75 = load double, double* %20, align 8, !dbg !173
  %76 = fadd double %74, %75, !dbg !174
  %77 = load double, double* %20, align 8, !dbg !175
  %78 = fdiv double %76, %77, !dbg !176
  %79 = fsub double %78, 2.000000e+00, !dbg !177
  store double %79, double* %21, align 8, !dbg !178
  %80 = load double, double* %21, align 8, !dbg !179
  %81 = call double @fabs(double %80) #1, !dbg !181
  %82 = load double, double* %13, align 8, !dbg !182
  %83 = fcmp olt double %81, %82, !dbg !183
  br i1 %83, label %84, label %85, !dbg !184

; <label>:84:                                     ; preds = %67
  br label %116, !dbg !185

; <label>:85:                                     ; preds = %67
  %86 = load double, double* %18, align 8, !dbg !187
  %87 = call double @sqrt(double %86) #6, !dbg !188
  %88 = fmul double 2.000000e+00, %87, !dbg !189
  %89 = load double, double* %19, align 8, !dbg !190
  %90 = call double @sqrt(double %89) #6, !dbg !191
  %91 = fmul double %88, %90, !dbg !193
  %92 = load double, double* %19, align 8, !dbg !194
  %93 = fadd double %91, %92, !dbg !195
  store double %93, double* %22, align 8, !dbg !196
  %94 = load double, double* %18, align 8, !dbg !197
  %95 = load double, double* %22, align 8, !dbg !198
  %96 = fadd double %94, %95, !dbg !199
  %97 = fmul double %96, 2.500000e-01, !dbg !200
  store double %97, double* %18, align 8, !dbg !201
  %98 = load double, double* %19, align 8, !dbg !202
  %99 = load double, double* %22, align 8, !dbg !203
  %100 = fadd double %98, %99, !dbg !204
  %101 = fmul double %100, 2.500000e-01, !dbg !205
  store double %101, double* %19, align 8, !dbg !206
  %102 = load i32, i32* %24, align 4, !dbg !207
  %103 = add nsw i32 %102, 1, !dbg !207
  store i32 %103, i32* %24, align 4, !dbg !207
  %104 = load i32, i32* %24, align 4, !dbg !208
  %105 = icmp eq i32 %104, 10000, !dbg !210
  br i1 %105, label %106, label %115, !dbg !211

; <label>:106:                                    ; preds = %85
  br label %107, !dbg !212, !llvm.loop !214

; <label>:107:                                    ; preds = %106
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !215
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 0, !dbg !215
  store double 0x7FF8000000000000, double* %109, align 8, !dbg !215
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !215
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 1, !dbg !215
  store double 0x7FF8000000000000, double* %111, align 8, !dbg !215
  br label %112, !dbg !215, !llvm.loop !218

; <label>:112:                                    ; preds = %107
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 102, i32 11), !dbg !220
  store i32 11, i32* %5, align 4, !dbg !220
  br label %155, !dbg !220
                                                  ; No predecessors!
  br label %114, !dbg !223

; <label>:114:                                    ; preds = %113
  br label %115, !dbg !225

; <label>:115:                                    ; preds = %114, %85
  br label %67, !dbg !226, !llvm.loop !228

; <label>:116:                                    ; preds = %84
  %117 = load double, double* %21, align 8, !dbg !229
  %118 = load double, double* %21, align 8, !dbg !230
  %119 = fmul double %117, %118, !dbg !231
  %120 = load double, double* %21, align 8, !dbg !232
  %121 = load double, double* %21, align 8, !dbg !233
  %122 = load double, double* %21, align 8, !dbg !234
  %123 = fmul double %122, 0x3FDA2E8BA2E8BA2F, !dbg !235
  %124 = fadd double 3.750000e-01, %123, !dbg !236
  %125 = fmul double %121, %124, !dbg !237
  %126 = fadd double 0x3FC2492492492492, %125, !dbg !238
  %127 = fmul double %120, %126, !dbg !239
  %128 = fadd double 3.000000e-01, %127, !dbg !240
  %129 = fmul double %119, %128, !dbg !241
  store double %129, double* %23, align 8, !dbg !242
  %130 = load double, double* %23, align 8, !dbg !243
  %131 = fadd double 1.000000e+00, %130, !dbg !244
  %132 = load double, double* %20, align 8, !dbg !245
  %133 = call double @sqrt(double %132) #6, !dbg !246
  %134 = fdiv double %131, %133, !dbg !247
  %135 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !248
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %135, i32 0, i32 0, !dbg !249
  store double %134, double* %136, align 8, !dbg !250
  %137 = load double, double* %14, align 8, !dbg !251
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !252
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 0, !dbg !253
  %140 = load double, double* %139, align 8, !dbg !253
  %141 = call double @fabs(double %140) #1, !dbg !254
  %142 = fmul double %137, %141, !dbg !255
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !256
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 1, !dbg !257
  store double %142, double* %144, align 8, !dbg !258
  store i32 0, i32* %5, align 4, !dbg !259
  br label %155, !dbg !259

; <label>:145:                                    ; preds = %61
  br label %146, !dbg !260, !llvm.loop !262

; <label>:146:                                    ; preds = %145
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !263
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 0, !dbg !263
  store double 0x7FF8000000000000, double* %148, align 8, !dbg !263
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !263
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 1, !dbg !263
  store double 0x7FF8000000000000, double* %150, align 8, !dbg !263
  br label %151, !dbg !263, !llvm.loop !266

; <label>:151:                                    ; preds = %146
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 111, i32 1), !dbg !268
  store i32 1, i32* %5, align 4, !dbg !268
  br label %155, !dbg !268
                                                  ; No predecessors!
  br label %153, !dbg !271

; <label>:153:                                    ; preds = %152
  br label %154

; <label>:154:                                    ; preds = %153
  br label %155

; <label>:155:                                    ; preds = %50, %112, %116, %151, %154, %52
  %156 = load i32, i32* %5, align 4, !dbg !273
  ret i32 %156, !dbg !273
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
  %48 = select i1 %47, double 1.000000e-03, double 3.000000e-02, !dbg !293
  store double %48, double* %13, align 8, !dbg !292
  call void @llvm.dbg.declare(metadata double* %14, metadata !295, metadata !75), !dbg !296
  %49 = load i32, i32* %12, align 4, !dbg !297
  %50 = zext i32 %49 to i64, !dbg !298
  %51 = getelementptr inbounds [0 x double], [0 x double]* @gsl_prec_eps, i64 0, i64 %50, !dbg !298
  %52 = load double, double* %51, align 8, !dbg !298
  store double %52, double* %14, align 8, !dbg !296
  call void @llvm.dbg.declare(metadata double* %15, metadata !299, metadata !75), !dbg !300
  %53 = call double @pow(double 0x7FEFFFFFFFFFFFFF, double 0x3FE5555555555555) #6, !dbg !301
  %54 = fdiv double 2.000000e+00, %53, !dbg !302
  store double %54, double* %15, align 8, !dbg !300
  call void @llvm.dbg.declare(metadata double* %16, metadata !303, metadata !75), !dbg !304
  %55 = load double, double* %13, align 8, !dbg !305
  %56 = fmul double 1.000000e-01, %55, !dbg !306
  %57 = fdiv double %56, 0x10000000000000, !dbg !307
  %58 = call double @pow(double %57, double 0x3FE5555555555555) #6, !dbg !308
  store double %58, double* %16, align 8, !dbg !304
  call void @llvm.dbg.declare(metadata i32* %17, metadata !309, metadata !75), !dbg !310
  store i32 10000, i32* %17, align 4, !dbg !310
  %59 = load double, double* %7, align 8, !dbg !311
  %60 = load double, double* %8, align 8, !dbg !311
  %61 = fcmp olt double %59, %60, !dbg !311
  br i1 %61, label %62, label %64, !dbg !311

; <label>:62:                                     ; preds = %5
  %63 = load double, double* %7, align 8, !dbg !313
  br label %66, !dbg !313

; <label>:64:                                     ; preds = %5
  %65 = load double, double* %8, align 8, !dbg !315
  br label %66, !dbg !315

; <label>:66:                                     ; preds = %64, %62
  %67 = phi double [ %63, %62 ], [ %65, %64 ], !dbg !317
  %68 = fcmp olt double %67, 0.000000e+00, !dbg !319
  br i1 %68, label %85, label %69, !dbg !320

; <label>:69:                                     ; preds = %66
  %70 = load double, double* %7, align 8, !dbg !321
  %71 = load double, double* %8, align 8, !dbg !321
  %72 = fadd double %70, %71, !dbg !321
  %73 = load double, double* %9, align 8, !dbg !321
  %74 = fcmp olt double %72, %73, !dbg !321
  br i1 %74, label %75, label %79, !dbg !321

; <label>:75:                                     ; preds = %69
  %76 = load double, double* %7, align 8, !dbg !323
  %77 = load double, double* %8, align 8, !dbg !323
  %78 = fadd double %76, %77, !dbg !323
  br label %81, !dbg !323

; <label>:79:                                     ; preds = %69
  %80 = load double, double* %9, align 8, !dbg !325
  br label %81, !dbg !325

; <label>:81:                                     ; preds = %79, %75
  %82 = phi double [ %78, %75 ], [ %80, %79 ], !dbg !327
  %83 = load double, double* %15, align 8, !dbg !329
  %84 = fcmp olt double %82, %83, !dbg !330
  br i1 %84, label %85, label %94, !dbg !331

; <label>:85:                                     ; preds = %81, %66
  br label %86, !dbg !332, !llvm.loop !334

; <label>:86:                                     ; preds = %85
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !335
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !335
  store double 0x7FF8000000000000, double* %88, align 8, !dbg !335
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !335
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !335
  store double 0x7FF8000000000000, double* %90, align 8, !dbg !335
  br label %91, !dbg !335, !llvm.loop !338

; <label>:91:                                     ; preds = %86
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 127, i32 1), !dbg !340
  store i32 1, i32* %6, align 4, !dbg !340
  br label %269, !dbg !340
                                                  ; No predecessors!
  br label %93, !dbg !343

; <label>:93:                                     ; preds = %92
  br label %269, !dbg !345

; <label>:94:                                     ; preds = %81
  %95 = load double, double* %7, align 8, !dbg !346
  %96 = load double, double* %8, align 8, !dbg !348
  %97 = load double, double* %9, align 8, !dbg !349
  %98 = call double @locMAX3(double %95, double %96, double %97), !dbg !350
  %99 = load double, double* %16, align 8, !dbg !351
  %100 = fcmp olt double %98, %99, !dbg !352
  br i1 %100, label %101, label %259, !dbg !353

; <label>:101:                                    ; preds = %94
  call void @llvm.dbg.declare(metadata double* %18, metadata !354, metadata !75), !dbg !356
  store double 0x3FCB6DB6DB6DB6DB, double* %18, align 8, !dbg !356
  call void @llvm.dbg.declare(metadata double* %19, metadata !357, metadata !75), !dbg !358
  store double 0x3FC5555555555555, double* %19, align 8, !dbg !358
  call void @llvm.dbg.declare(metadata double* %20, metadata !359, metadata !75), !dbg !360
  store double 0x3FDA2E8BA2E8BA2F, double* %20, align 8, !dbg !360
  call void @llvm.dbg.declare(metadata double* %21, metadata !361, metadata !75), !dbg !362
  store double 0x3FBD89D89D89D89E, double* %21, align 8, !dbg !362
  call void @llvm.dbg.declare(metadata double* %22, metadata !363, metadata !75), !dbg !364
  %102 = load double, double* %7, align 8, !dbg !365
  store double %102, double* %22, align 8, !dbg !364
  call void @llvm.dbg.declare(metadata double* %23, metadata !366, metadata !75), !dbg !367
  %103 = load double, double* %8, align 8, !dbg !368
  store double %103, double* %23, align 8, !dbg !367
  call void @llvm.dbg.declare(metadata double* %24, metadata !369, metadata !75), !dbg !370
  %104 = load double, double* %9, align 8, !dbg !371
  store double %104, double* %24, align 8, !dbg !370
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
  br label %105, !dbg !400

; <label>:105:                                    ; preds = %101, %191
  call void @llvm.dbg.declare(metadata double* %39, metadata !401, metadata !75), !dbg !403
  call void @llvm.dbg.declare(metadata double* %40, metadata !404, metadata !75), !dbg !405
  call void @llvm.dbg.declare(metadata double* %41, metadata !406, metadata !75), !dbg !407
  call void @llvm.dbg.declare(metadata double* %42, metadata !408, metadata !75), !dbg !409
  call void @llvm.dbg.declare(metadata double* %43, metadata !410, metadata !75), !dbg !411
  %106 = load double, double* %22, align 8, !dbg !412
  %107 = load double, double* %23, align 8, !dbg !413
  %108 = fadd double %106, %107, !dbg !414
  %109 = load double, double* %24, align 8, !dbg !415
  %110 = fmul double 3.000000e+00, %109, !dbg !416
  %111 = fadd double %108, %110, !dbg !417
  %112 = fmul double %111, 2.000000e-01, !dbg !418
  store double %112, double* %34, align 8, !dbg !419
  %113 = load double, double* %34, align 8, !dbg !420
  %114 = load double, double* %22, align 8, !dbg !421
  %115 = fsub double %113, %114, !dbg !422
  %116 = load double, double* %34, align 8, !dbg !423
  %117 = fdiv double %115, %116, !dbg !424
  store double %117, double* %35, align 8, !dbg !425
  %118 = load double, double* %34, align 8, !dbg !426
  %119 = load double, double* %23, align 8, !dbg !427
  %120 = fsub double %118, %119, !dbg !428
  %121 = load double, double* %34, align 8, !dbg !429
  %122 = fdiv double %120, %121, !dbg !430
  store double %122, double* %36, align 8, !dbg !431
  %123 = load double, double* %34, align 8, !dbg !432
  %124 = load double, double* %24, align 8, !dbg !433
  %125 = fsub double %123, %124, !dbg !434
  %126 = load double, double* %34, align 8, !dbg !435
  %127 = fdiv double %125, %126, !dbg !436
  store double %127, double* %37, align 8, !dbg !437
  %128 = load double, double* %35, align 8, !dbg !438
  %129 = call double @fabs(double %128) #1, !dbg !439
  %130 = load double, double* %36, align 8, !dbg !440
  %131 = call double @fabs(double %130) #1, !dbg !441
  %132 = load double, double* %37, align 8, !dbg !443
  %133 = call double @fabs(double %132) #1, !dbg !444
  %134 = call double @locMAX3(double %129, double %131, double %133), !dbg !446
  store double %134, double* %43, align 8, !dbg !448
  %135 = load double, double* %43, align 8, !dbg !449
  %136 = load double, double* %13, align 8, !dbg !451
  %137 = fcmp olt double %135, %136, !dbg !452
  br i1 %137, label %138, label %139, !dbg !453

; <label>:138:                                    ; preds = %105
  br label %192, !dbg !454

; <label>:139:                                    ; preds = %105
  %140 = load double, double* %22, align 8, !dbg !456
  %141 = call double @sqrt(double %140) #6, !dbg !457
  store double %141, double* %39, align 8, !dbg !458
  %142 = load double, double* %23, align 8, !dbg !459
  %143 = call double @sqrt(double %142) #6, !dbg !460
  store double %143, double* %40, align 8, !dbg !461
  %144 = load double, double* %24, align 8, !dbg !462
  %145 = call double @sqrt(double %144) #6, !dbg !463
  store double %145, double* %41, align 8, !dbg !464
  %146 = load double, double* %39, align 8, !dbg !465
  %147 = load double, double* %40, align 8, !dbg !466
  %148 = load double, double* %41, align 8, !dbg !467
  %149 = fadd double %147, %148, !dbg !468
  %150 = fmul double %146, %149, !dbg !469
  %151 = load double, double* %40, align 8, !dbg !470
  %152 = load double, double* %41, align 8, !dbg !471
  %153 = fmul double %151, %152, !dbg !472
  %154 = fadd double %150, %153, !dbg !473
  store double %154, double* %42, align 8, !dbg !474
  %155 = load double, double* %26, align 8, !dbg !475
  %156 = load double, double* %41, align 8, !dbg !476
  %157 = load double, double* %24, align 8, !dbg !477
  %158 = load double, double* %42, align 8, !dbg !478
  %159 = fadd double %157, %158, !dbg !479
  %160 = fmul double %156, %159, !dbg !480
  %161 = fdiv double %155, %160, !dbg !481
  %162 = load double, double* %25, align 8, !dbg !482
  %163 = fadd double %162, %161, !dbg !482
  store double %163, double* %25, align 8, !dbg !482
  %164 = load double, double* %26, align 8, !dbg !483
  %165 = fmul double %164, 2.500000e-01, !dbg !483
  store double %165, double* %26, align 8, !dbg !483
  %166 = load double, double* %22, align 8, !dbg !484
  %167 = load double, double* %42, align 8, !dbg !485
  %168 = fadd double %166, %167, !dbg !486
  %169 = fmul double %168, 2.500000e-01, !dbg !487
  store double %169, double* %22, align 8, !dbg !488
  %170 = load double, double* %23, align 8, !dbg !489
  %171 = load double, double* %42, align 8, !dbg !490
  %172 = fadd double %170, %171, !dbg !491
  %173 = fmul double %172, 2.500000e-01, !dbg !492
  store double %173, double* %23, align 8, !dbg !493
  %174 = load double, double* %24, align 8, !dbg !494
  %175 = load double, double* %42, align 8, !dbg !495
  %176 = fadd double %174, %175, !dbg !496
  %177 = fmul double %176, 2.500000e-01, !dbg !497
  store double %177, double* %24, align 8, !dbg !498
  %178 = load i32, i32* %38, align 4, !dbg !499
  %179 = add nsw i32 %178, 1, !dbg !499
  store i32 %179, i32* %38, align 4, !dbg !499
  %180 = load i32, i32* %38, align 4, !dbg !500
  %181 = icmp eq i32 %180, 10000, !dbg !502
  br i1 %181, label %182, label %191, !dbg !503

; <label>:182:                                    ; preds = %139
  br label %183, !dbg !504, !llvm.loop !506

; <label>:183:                                    ; preds = %182
  %184 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !507
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %184, i32 0, i32 0, !dbg !507
  store double 0x7FF8000000000000, double* %185, align 8, !dbg !507
  %186 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !507
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %186, i32 0, i32 1, !dbg !507
  store double 0x7FF8000000000000, double* %187, align 8, !dbg !507
  br label %188, !dbg !507, !llvm.loop !510

; <label>:188:                                    ; preds = %183
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 162, i32 11), !dbg !512
  store i32 11, i32* %6, align 4, !dbg !512
  br label %269, !dbg !512
                                                  ; No predecessors!
  br label %190, !dbg !515

; <label>:190:                                    ; preds = %189
  br label %191, !dbg !517

; <label>:191:                                    ; preds = %190, %139
  br label %105, !dbg !518, !llvm.loop !520

; <label>:192:                                    ; preds = %138
  %193 = load double, double* %35, align 8, !dbg !521
  %194 = load double, double* %36, align 8, !dbg !522
  %195 = fmul double %193, %194, !dbg !523
  store double %195, double* %27, align 8, !dbg !524
  %196 = load double, double* %37, align 8, !dbg !525
  %197 = load double, double* %37, align 8, !dbg !526
  %198 = fmul double %196, %197, !dbg !527
  store double %198, double* %28, align 8, !dbg !528
  %199 = load double, double* %27, align 8, !dbg !529
  %200 = load double, double* %28, align 8, !dbg !530
  %201 = fsub double %199, %200, !dbg !531
  store double %201, double* %29, align 8, !dbg !532
  %202 = load double, double* %27, align 8, !dbg !533
  %203 = load double, double* %28, align 8, !dbg !534
  %204 = fmul double 6.000000e+00, %203, !dbg !535
  %205 = fsub double %202, %204, !dbg !536
  store double %205, double* %30, align 8, !dbg !537
  %206 = load double, double* %30, align 8, !dbg !538
  %207 = load double, double* %29, align 8, !dbg !539
  %208 = fadd double %206, %207, !dbg !540
  %209 = load double, double* %29, align 8, !dbg !541
  %210 = fadd double %208, %209, !dbg !542
  store double %210, double* %31, align 8, !dbg !543
  %211 = load double, double* %30, align 8, !dbg !544
  %212 = load double, double* %30, align 8, !dbg !545
  %213 = fmul double 0x3FBA2E8BA2E8BA2F, %212, !dbg !546
  %214 = fadd double 0xBFCB6DB6DB6DB6DB, %213, !dbg !547
  %215 = load double, double* %37, align 8, !dbg !548
  %216 = fmul double 0x3FC6276276276276, %215, !dbg !549
  %217 = load double, double* %31, align 8, !dbg !550
  %218 = fmul double %216, %217, !dbg !551
  %219 = fsub double %214, %218, !dbg !552
  %220 = fmul double %211, %219, !dbg !553
  store double %220, double* %32, align 8, !dbg !554
  %221 = load double, double* %37, align 8, !dbg !555
  %222 = load double, double* %31, align 8, !dbg !556
  %223 = fmul double 0x3FC5555555555555, %222, !dbg !557
  %224 = load double, double* %37, align 8, !dbg !558
  %225 = load double, double* %29, align 8, !dbg !559
  %226 = fmul double 0xBFDA2E8BA2E8BA2F, %225, !dbg !560
  %227 = load double, double* %37, align 8, !dbg !561
  %228 = fmul double %227, 0x3FBD89D89D89D89E, !dbg !562
  %229 = load double, double* %27, align 8, !dbg !563
  %230 = fmul double %228, %229, !dbg !564
  %231 = fadd double %226, %230, !dbg !565
  %232 = fmul double %224, %231, !dbg !566
  %233 = fadd double %223, %232, !dbg !567
  %234 = fmul double %221, %233, !dbg !568
  store double %234, double* %33, align 8, !dbg !569
  %235 = load double, double* %25, align 8, !dbg !570
  %236 = fmul double 3.000000e+00, %235, !dbg !571
  %237 = load double, double* %26, align 8, !dbg !572
  %238 = load double, double* %32, align 8, !dbg !573
  %239 = fadd double 1.000000e+00, %238, !dbg !574
  %240 = load double, double* %33, align 8, !dbg !575
  %241 = fadd double %239, %240, !dbg !576
  %242 = fmul double %237, %241, !dbg !577
  %243 = load double, double* %34, align 8, !dbg !578
  %244 = load double, double* %34, align 8, !dbg !579
  %245 = call double @sqrt(double %244) #6, !dbg !580
  %246 = fmul double %243, %245, !dbg !581
  %247 = fdiv double %242, %246, !dbg !582
  %248 = fadd double %236, %247, !dbg !583
  %249 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !584
  %250 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %249, i32 0, i32 0, !dbg !585
  store double %248, double* %250, align 8, !dbg !586
  %251 = load double, double* %14, align 8, !dbg !587
  %252 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !588
  %253 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %252, i32 0, i32 0, !dbg !589
  %254 = load double, double* %253, align 8, !dbg !589
  %255 = call double @fabs(double %254) #1, !dbg !590
  %256 = fmul double %251, %255, !dbg !591
  %257 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !592
  %258 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %257, i32 0, i32 1, !dbg !593
  store double %256, double* %258, align 8, !dbg !594
  store i32 0, i32* %6, align 4, !dbg !595
  br label %269, !dbg !595

; <label>:259:                                    ; preds = %94
  br label %260, !dbg !596, !llvm.loop !598

; <label>:260:                                    ; preds = %259
  %261 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !599
  %262 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %261, i32 0, i32 0, !dbg !599
  store double 0x7FF8000000000000, double* %262, align 8, !dbg !599
  %263 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !599
  %264 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %263, i32 0, i32 1, !dbg !599
  store double 0x7FF8000000000000, double* %264, align 8, !dbg !599
  br label %265, !dbg !599, !llvm.loop !602

; <label>:265:                                    ; preds = %260
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 177, i32 1), !dbg !604
  store i32 1, i32* %6, align 4, !dbg !604
  br label %269, !dbg !604
                                                  ; No predecessors!
  br label %267, !dbg !607

; <label>:267:                                    ; preds = %266
  br label %268

; <label>:268:                                    ; preds = %267
  br label %269

; <label>:269:                                    ; preds = %91, %188, %192, %265, %268, %93
  %270 = load i32, i32* %6, align 4, !dbg !609
  ret i32 %270, !dbg !609
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
  br i1 %10, label %11, label %13, !dbg !621

; <label>:11:                                     ; preds = %3
  %12 = load double, double* %4, align 8, !dbg !622
  br label %15, !dbg !622

; <label>:13:                                     ; preds = %3
  %14 = load double, double* %5, align 8, !dbg !624
  br label %15, !dbg !624

; <label>:15:                                     ; preds = %13, %11
  %16 = phi double [ %12, %11 ], [ %14, %13 ], !dbg !626
  store double %16, double* %7, align 8, !dbg !628
  %17 = load double, double* %7, align 8, !dbg !629
  %18 = load double, double* %6, align 8, !dbg !629
  %19 = fcmp ogt double %17, %18, !dbg !629
  br i1 %19, label %20, label %22, !dbg !629

; <label>:20:                                     ; preds = %15
  %21 = load double, double* %7, align 8, !dbg !630
  br label %24, !dbg !630

; <label>:22:                                     ; preds = %15
  %23 = load double, double* %6, align 8, !dbg !631
  br label %24, !dbg !631

; <label>:24:                                     ; preds = %22, %20
  %25 = phi double [ %21, %20 ], [ %23, %22 ], !dbg !632
  ret double %25, !dbg !633
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
  %41 = select i1 %40, double 1.000000e-03, double 3.000000e-02, !dbg !655
  store double %41, double* %15, align 8, !dbg !654
  call void @llvm.dbg.declare(metadata double* %16, metadata !657, metadata !75), !dbg !658
  %42 = load i32, i32* %14, align 4, !dbg !659
  %43 = zext i32 %42 to i64, !dbg !660
  %44 = getelementptr inbounds [0 x double], [0 x double]* @gsl_prec_eps, i64 0, i64 %43, !dbg !660
  %45 = load double, double* %44, align 8, !dbg !660
  store double %45, double* %16, align 8, !dbg !658
  call void @llvm.dbg.declare(metadata i32* %17, metadata !661, metadata !75), !dbg !662
  store i32 10000, i32* %17, align 4, !dbg !662
  %46 = load double, double* %7, align 8, !dbg !663
  %47 = fcmp olt double %46, 0.000000e+00, !dbg !665
  br i1 %47, label %54, label %48, !dbg !666

; <label>:48:                                     ; preds = %5
  %49 = load double, double* %8, align 8, !dbg !667
  %50 = fcmp olt double %49, 0.000000e+00, !dbg !669
  br i1 %50, label %54, label %51, !dbg !670

; <label>:51:                                     ; preds = %48
  %52 = load double, double* %9, align 8, !dbg !671
  %53 = fcmp olt double %52, 0.000000e+00, !dbg !673
  br i1 %53, label %54, label %63, !dbg !674

; <label>:54:                                     ; preds = %51, %48, %5
  br label %55, !dbg !675, !llvm.loop !677

; <label>:55:                                     ; preds = %54
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !678
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !678
  store double 0x7FF8000000000000, double* %57, align 8, !dbg !678
  %58 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !678
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %58, i32 0, i32 1, !dbg !678
  store double 0x7FF8000000000000, double* %59, align 8, !dbg !678
  br label %60, !dbg !678, !llvm.loop !681

; <label>:60:                                     ; preds = %55
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 193, i32 1), !dbg !683
  store i32 1, i32* %6, align 4, !dbg !683
  br label %225, !dbg !683
                                                  ; No predecessors!
  br label %62, !dbg !686

; <label>:62:                                     ; preds = %61
  br label %225, !dbg !688

; <label>:63:                                     ; preds = %51
  %64 = load double, double* %7, align 8, !dbg !689
  %65 = load double, double* %8, align 8, !dbg !691
  %66 = fadd double %64, %65, !dbg !692
  %67 = fcmp olt double %66, 0x34000000000000, !dbg !693
  br i1 %67, label %78, label %68, !dbg !694

; <label>:68:                                     ; preds = %63
  %69 = load double, double* %7, align 8, !dbg !695
  %70 = load double, double* %9, align 8, !dbg !697
  %71 = fadd double %69, %70, !dbg !698
  %72 = fcmp olt double %71, 0x34000000000000, !dbg !699
  br i1 %72, label %78, label %73, !dbg !700

; <label>:73:                                     ; preds = %68
  %74 = load double, double* %8, align 8, !dbg !701
  %75 = load double, double* %9, align 8, !dbg !703
  %76 = fadd double %74, %75, !dbg !704
  %77 = fcmp olt double %76, 0x34000000000000, !dbg !705
  br i1 %77, label %78, label %87, !dbg !706

; <label>:78:                                     ; preds = %73, %68, %63
  br label %79, !dbg !707, !llvm.loop !709

; <label>:79:                                     ; preds = %78
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !710
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !710
  store double 0x7FF8000000000000, double* %81, align 8, !dbg !710
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !710
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !710
  store double 0x7FF8000000000000, double* %83, align 8, !dbg !710
  br label %84, !dbg !710, !llvm.loop !713

; <label>:84:                                     ; preds = %79
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 196, i32 1), !dbg !715
  store i32 1, i32* %6, align 4, !dbg !715
  br label %225, !dbg !715
                                                  ; No predecessors!
  br label %86, !dbg !718

; <label>:86:                                     ; preds = %85
  br label %224, !dbg !720

; <label>:87:                                     ; preds = %73
  %88 = load double, double* %7, align 8, !dbg !721
  %89 = load double, double* %8, align 8, !dbg !723
  %90 = load double, double* %9, align 8, !dbg !724
  %91 = call double @locMAX3(double %88, double %89, double %90), !dbg !725
  %92 = fcmp olt double %91, 0x7FC9999999999999, !dbg !726
  br i1 %92, label %93, label %214, !dbg !727

; <label>:93:                                     ; preds = %87
  call void @llvm.dbg.declare(metadata double* %18, metadata !728, metadata !75), !dbg !730
  store double 0x3FA5555555555555, double* %18, align 8, !dbg !730
  call void @llvm.dbg.declare(metadata double* %19, metadata !731, metadata !75), !dbg !732
  store double 0x3FB1745D1745D174, double* %19, align 8, !dbg !732
  call void @llvm.dbg.declare(metadata double* %20, metadata !733, metadata !75), !dbg !734
  store double 0x3FB2492492492492, double* %20, align 8, !dbg !734
  call void @llvm.dbg.declare(metadata double* %21, metadata !735, metadata !75), !dbg !736
  %94 = load double, double* %7, align 8, !dbg !737
  store double %94, double* %21, align 8, !dbg !736
  call void @llvm.dbg.declare(metadata double* %22, metadata !738, metadata !75), !dbg !739
  %95 = load double, double* %8, align 8, !dbg !740
  store double %95, double* %22, align 8, !dbg !739
  call void @llvm.dbg.declare(metadata double* %23, metadata !741, metadata !75), !dbg !742
  %96 = load double, double* %9, align 8, !dbg !743
  store double %96, double* %23, align 8, !dbg !742
  call void @llvm.dbg.declare(metadata double* %24, metadata !744, metadata !75), !dbg !745
  call void @llvm.dbg.declare(metadata double* %25, metadata !746, metadata !75), !dbg !747
  call void @llvm.dbg.declare(metadata double* %26, metadata !748, metadata !75), !dbg !749
  call void @llvm.dbg.declare(metadata double* %27, metadata !750, metadata !75), !dbg !751
  call void @llvm.dbg.declare(metadata double* %28, metadata !752, metadata !75), !dbg !753
  call void @llvm.dbg.declare(metadata double* %29, metadata !754, metadata !75), !dbg !755
  call void @llvm.dbg.declare(metadata double* %30, metadata !756, metadata !75), !dbg !757
  call void @llvm.dbg.declare(metadata i32* %31, metadata !758, metadata !75), !dbg !759
  store i32 0, i32* %31, align 4, !dbg !759
  br label %97, !dbg !760

; <label>:97:                                     ; preds = %93, %174
  call void @llvm.dbg.declare(metadata double* %32, metadata !761, metadata !75), !dbg !763
  call void @llvm.dbg.declare(metadata double* %33, metadata !764, metadata !75), !dbg !765
  call void @llvm.dbg.declare(metadata double* %34, metadata !766, metadata !75), !dbg !767
  call void @llvm.dbg.declare(metadata double* %35, metadata !768, metadata !75), !dbg !769
  call void @llvm.dbg.declare(metadata double* %36, metadata !770, metadata !75), !dbg !771
  %98 = load double, double* %21, align 8, !dbg !772
  %99 = load double, double* %22, align 8, !dbg !773
  %100 = fadd double %98, %99, !dbg !774
  %101 = load double, double* %23, align 8, !dbg !775
  %102 = fadd double %100, %101, !dbg !776
  %103 = fdiv double %102, 3.000000e+00, !dbg !777
  store double %103, double* %24, align 8, !dbg !778
  %104 = load double, double* %24, align 8, !dbg !779
  %105 = load double, double* %21, align 8, !dbg !780
  %106 = fadd double %104, %105, !dbg !781
  %107 = load double, double* %24, align 8, !dbg !782
  %108 = fdiv double %106, %107, !dbg !783
  %109 = fsub double 2.000000e+00, %108, !dbg !784
  store double %109, double* %25, align 8, !dbg !785
  %110 = load double, double* %24, align 8, !dbg !786
  %111 = load double, double* %22, align 8, !dbg !787
  %112 = fadd double %110, %111, !dbg !788
  %113 = load double, double* %24, align 8, !dbg !789
  %114 = fdiv double %112, %113, !dbg !790
  %115 = fsub double 2.000000e+00, %114, !dbg !791
  store double %115, double* %26, align 8, !dbg !792
  %116 = load double, double* %24, align 8, !dbg !793
  %117 = load double, double* %23, align 8, !dbg !794
  %118 = fadd double %116, %117, !dbg !795
  %119 = load double, double* %24, align 8, !dbg !796
  %120 = fdiv double %118, %119, !dbg !797
  %121 = fsub double 2.000000e+00, %120, !dbg !798
  store double %121, double* %27, align 8, !dbg !799
  %122 = load double, double* %25, align 8, !dbg !800
  %123 = call double @fabs(double %122) #1, !dbg !801
  %124 = load double, double* %26, align 8, !dbg !802
  %125 = call double @fabs(double %124) #1, !dbg !803
  %126 = load double, double* %27, align 8, !dbg !805
  %127 = call double @fabs(double %126) #1, !dbg !806
  %128 = call double @locMAX3(double %123, double %125, double %127), !dbg !808
  store double %128, double* %32, align 8, !dbg !810
  %129 = load double, double* %32, align 8, !dbg !811
  %130 = load double, double* %15, align 8, !dbg !813
  %131 = fcmp olt double %129, %130, !dbg !814
  br i1 %131, label %132, label %133, !dbg !815

; <label>:132:                                    ; preds = %97
  br label %175, !dbg !816

; <label>:133:                                    ; preds = %97
  %134 = load double, double* %21, align 8, !dbg !818
  %135 = call double @sqrt(double %134) #6, !dbg !819
  store double %135, double* %34, align 8, !dbg !820
  %136 = load double, double* %22, align 8, !dbg !821
  %137 = call double @sqrt(double %136) #6, !dbg !822
  store double %137, double* %35, align 8, !dbg !823
  %138 = load double, double* %23, align 8, !dbg !824
  %139 = call double @sqrt(double %138) #6, !dbg !825
  store double %139, double* %36, align 8, !dbg !826
  %140 = load double, double* %34, align 8, !dbg !827
  %141 = load double, double* %35, align 8, !dbg !828
  %142 = load double, double* %36, align 8, !dbg !829
  %143 = fadd double %141, %142, !dbg !830
  %144 = fmul double %140, %143, !dbg !831
  %145 = load double, double* %35, align 8, !dbg !832
  %146 = load double, double* %36, align 8, !dbg !833
  %147 = fmul double %145, %146, !dbg !834
  %148 = fadd double %144, %147, !dbg !835
  store double %148, double* %33, align 8, !dbg !836
  %149 = load double, double* %21, align 8, !dbg !837
  %150 = load double, double* %33, align 8, !dbg !838
  %151 = fadd double %149, %150, !dbg !839
  %152 = fmul double %151, 2.500000e-01, !dbg !840
  store double %152, double* %21, align 8, !dbg !841
  %153 = load double, double* %22, align 8, !dbg !842
  %154 = load double, double* %33, align 8, !dbg !843
  %155 = fadd double %153, %154, !dbg !844
  %156 = fmul double %155, 2.500000e-01, !dbg !845
  store double %156, double* %22, align 8, !dbg !846
  %157 = load double, double* %23, align 8, !dbg !847
  %158 = load double, double* %33, align 8, !dbg !848
  %159 = fadd double %157, %158, !dbg !849
  %160 = fmul double %159, 2.500000e-01, !dbg !850
  store double %160, double* %23, align 8, !dbg !851
  %161 = load i32, i32* %31, align 4, !dbg !852
  %162 = add nsw i32 %161, 1, !dbg !852
  store i32 %162, i32* %31, align 4, !dbg !852
  %163 = load i32, i32* %31, align 4, !dbg !853
  %164 = icmp eq i32 %163, 10000, !dbg !855
  br i1 %164, label %165, label %174, !dbg !856

; <label>:165:                                    ; preds = %133
  br label %166, !dbg !857, !llvm.loop !859

; <label>:166:                                    ; preds = %165
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !860
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %167, i32 0, i32 0, !dbg !860
  store double 0x7FF8000000000000, double* %168, align 8, !dbg !860
  %169 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !860
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %169, i32 0, i32 1, !dbg !860
  store double 0x7FF8000000000000, double* %170, align 8, !dbg !860
  br label %171, !dbg !860, !llvm.loop !863

; <label>:171:                                    ; preds = %166
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 225, i32 11), !dbg !865
  store i32 11, i32* %6, align 4, !dbg !865
  br label %225, !dbg !865
                                                  ; No predecessors!
  br label %173, !dbg !868

; <label>:173:                                    ; preds = %172
  br label %174, !dbg !870

; <label>:174:                                    ; preds = %173, %133
  br label %97, !dbg !871, !llvm.loop !873

; <label>:175:                                    ; preds = %132
  %176 = load double, double* %25, align 8, !dbg !874
  %177 = load double, double* %26, align 8, !dbg !875
  %178 = fmul double %176, %177, !dbg !876
  %179 = load double, double* %27, align 8, !dbg !877
  %180 = load double, double* %27, align 8, !dbg !878
  %181 = fmul double %179, %180, !dbg !879
  %182 = fsub double %178, %181, !dbg !880
  store double %182, double* %28, align 8, !dbg !881
  %183 = load double, double* %25, align 8, !dbg !882
  %184 = load double, double* %26, align 8, !dbg !883
  %185 = fmul double %183, %184, !dbg !884
  %186 = load double, double* %27, align 8, !dbg !885
  %187 = fmul double %185, %186, !dbg !886
  store double %187, double* %29, align 8, !dbg !887
  %188 = load double, double* %28, align 8, !dbg !888
  %189 = fmul double 0x3FA5555555555555, %188, !dbg !889
  %190 = fsub double %189, 1.000000e-01, !dbg !890
  %191 = load double, double* %29, align 8, !dbg !891
  %192 = fmul double 0x3FB1745D1745D174, %191, !dbg !892
  %193 = fsub double %190, %192, !dbg !893
  %194 = load double, double* %28, align 8, !dbg !894
  %195 = fmul double %193, %194, !dbg !895
  %196 = fadd double 1.000000e+00, %195, !dbg !896
  %197 = load double, double* %29, align 8, !dbg !897
  %198 = fmul double 0x3FB2492492492492, %197, !dbg !898
  %199 = fadd double %196, %198, !dbg !899
  store double %199, double* %30, align 8, !dbg !900
  %200 = load double, double* %30, align 8, !dbg !901
  %201 = load double, double* %24, align 8, !dbg !902
  %202 = call double @sqrt(double %201) #6, !dbg !903
  %203 = fdiv double %200, %202, !dbg !904
  %204 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !905
  %205 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %204, i32 0, i32 0, !dbg !906
  store double %203, double* %205, align 8, !dbg !907
  %206 = load double, double* %16, align 8, !dbg !908
  %207 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !909
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %207, i32 0, i32 0, !dbg !910
  %209 = load double, double* %208, align 8, !dbg !910
  %210 = call double @fabs(double %209) #1, !dbg !911
  %211 = fmul double %206, %210, !dbg !912
  %212 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !913
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %212, i32 0, i32 1, !dbg !914
  store double %211, double* %213, align 8, !dbg !915
  store i32 0, i32* %6, align 4, !dbg !916
  br label %225, !dbg !916

; <label>:214:                                    ; preds = %87
  br label %215, !dbg !917, !llvm.loop !919

; <label>:215:                                    ; preds = %214
  %216 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !920
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %216, i32 0, i32 0, !dbg !920
  store double 0x7FF8000000000000, double* %217, align 8, !dbg !920
  %218 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !920
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %218, i32 0, i32 1, !dbg !920
  store double 0x7FF8000000000000, double* %219, align 8, !dbg !920
  br label %220, !dbg !920, !llvm.loop !923

; <label>:220:                                    ; preds = %215
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 236, i32 1), !dbg !925
  store i32 1, i32* %6, align 4, !dbg !925
  br label %225, !dbg !925
                                                  ; No predecessors!
  br label %222, !dbg !928

; <label>:222:                                    ; preds = %221
  br label %223

; <label>:223:                                    ; preds = %222
  br label %224

; <label>:224:                                    ; preds = %223, %86
  br label %225

; <label>:225:                                    ; preds = %60, %84, %171, %175, %220, %224, %62
  %226 = load i32, i32* %6, align 4, !dbg !930
  ret i32 %226, !dbg !930
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
  %57 = select i1 %56, double 1.000000e-03, double 3.000000e-02, !dbg !952
  store double %57, double* %15, align 8, !dbg !951
  call void @llvm.dbg.declare(metadata double* %16, metadata !954, metadata !75), !dbg !955
  %58 = load i32, i32* %14, align 4, !dbg !956
  %59 = zext i32 %58 to i64, !dbg !957
  %60 = getelementptr inbounds [0 x double], [0 x double]* @gsl_prec_eps, i64 0, i64 %59, !dbg !957
  %61 = load double, double* %60, align 8, !dbg !957
  store double %61, double* %16, align 8, !dbg !955
  call void @llvm.dbg.declare(metadata double* %17, metadata !958, metadata !75), !dbg !959
  %62 = call double @pow(double 0x34000000000000, double 0x3FD5555555555555) #6, !dbg !960
  store double %62, double* %17, align 8, !dbg !959
  call void @llvm.dbg.declare(metadata double* %18, metadata !961, metadata !75), !dbg !962
  %63 = call double @pow(double 0x7FC9999999999999, double 0x3FD5555555555555) #6, !dbg !963
  %64 = fmul double 3.000000e-01, %63, !dbg !964
  store double %64, double* %18, align 8, !dbg !962
  call void @llvm.dbg.declare(metadata i32* %19, metadata !965, metadata !75), !dbg !966
  store i32 10000, i32* %19, align 4, !dbg !966
  %65 = load double, double* %8, align 8, !dbg !967
  %66 = fcmp olt double %65, 0.000000e+00, !dbg !969
  br i1 %66, label %73, label %67, !dbg !970

; <label>:67:                                     ; preds = %6
  %68 = load double, double* %9, align 8, !dbg !971
  %69 = fcmp olt double %68, 0.000000e+00, !dbg !973
  br i1 %69, label %73, label %70, !dbg !974

; <label>:70:                                     ; preds = %67
  %71 = load double, double* %10, align 8, !dbg !975
  %72 = fcmp olt double %71, 0.000000e+00, !dbg !977
  br i1 %72, label %73, label %82, !dbg !978

; <label>:73:                                     ; preds = %70, %67, %6
  br label %74, !dbg !979, !llvm.loop !981

; <label>:74:                                     ; preds = %73
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !982
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !982
  store double 0x7FF8000000000000, double* %76, align 8, !dbg !982
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !982
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !982
  store double 0x7FF8000000000000, double* %78, align 8, !dbg !982
  br label %79, !dbg !982, !llvm.loop !985

; <label>:79:                                     ; preds = %74
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 252, i32 1), !dbg !987
  store i32 1, i32* %7, align 4, !dbg !987
  br label %357, !dbg !987
                                                  ; No predecessors!
  br label %81, !dbg !990

; <label>:81:                                     ; preds = %80
  br label %357, !dbg !992

; <label>:82:                                     ; preds = %70
  %83 = load double, double* %8, align 8, !dbg !993
  %84 = load double, double* %9, align 8, !dbg !995
  %85 = fadd double %83, %84, !dbg !996
  %86 = load double, double* %17, align 8, !dbg !997
  %87 = fcmp olt double %85, %86, !dbg !998
  br i1 %87, label %104, label %88, !dbg !999

; <label>:88:                                     ; preds = %82
  %89 = load double, double* %8, align 8, !dbg !1000
  %90 = load double, double* %10, align 8, !dbg !1002
  %91 = fadd double %89, %90, !dbg !1003
  %92 = load double, double* %17, align 8, !dbg !1004
  %93 = fcmp olt double %91, %92, !dbg !1005
  br i1 %93, label %104, label %94, !dbg !1006

; <label>:94:                                     ; preds = %88
  %95 = load double, double* %9, align 8, !dbg !1007
  %96 = load double, double* %10, align 8, !dbg !1009
  %97 = fadd double %95, %96, !dbg !1010
  %98 = load double, double* %17, align 8, !dbg !1011
  %99 = fcmp olt double %97, %98, !dbg !1012
  br i1 %99, label %104, label %100, !dbg !1013

; <label>:100:                                    ; preds = %94
  %101 = load double, double* %11, align 8, !dbg !1014
  %102 = load double, double* %17, align 8, !dbg !1016
  %103 = fcmp olt double %101, %102, !dbg !1017
  br i1 %103, label %104, label %113, !dbg !1018

; <label>:104:                                    ; preds = %100, %94, %88, %82
  br label %105, !dbg !1019, !llvm.loop !1021

; <label>:105:                                    ; preds = %104
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1022
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !1022
  store double 0x7FF8000000000000, double* %107, align 8, !dbg !1022
  %108 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1022
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %108, i32 0, i32 1, !dbg !1022
  store double 0x7FF8000000000000, double* %109, align 8, !dbg !1022
  br label %110, !dbg !1022, !llvm.loop !1025

; <label>:110:                                    ; preds = %105
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 255, i32 1), !dbg !1027
  store i32 1, i32* %7, align 4, !dbg !1027
  br label %357, !dbg !1027
                                                  ; No predecessors!
  br label %112, !dbg !1030

; <label>:112:                                    ; preds = %111
  br label %356, !dbg !1032

; <label>:113:                                    ; preds = %100
  %114 = load double, double* %8, align 8, !dbg !1033
  %115 = load double, double* %9, align 8, !dbg !1035
  %116 = load double, double* %10, align 8, !dbg !1036
  %117 = load double, double* %11, align 8, !dbg !1037
  %118 = call double @locMAX4(double %114, double %115, double %116, double %117), !dbg !1038
  %119 = load double, double* %18, align 8, !dbg !1039
  %120 = fcmp olt double %118, %119, !dbg !1040
  br i1 %120, label %121, label %346, !dbg !1041

; <label>:121:                                    ; preds = %113
  call void @llvm.dbg.declare(metadata double* %20, metadata !1042, metadata !75), !dbg !1044
  store double 0x3FCB6DB6DB6DB6DB, double* %20, align 8, !dbg !1044
  call void @llvm.dbg.declare(metadata double* %21, metadata !1045, metadata !75), !dbg !1046
  store double 0x3FD5555555555555, double* %21, align 8, !dbg !1046
  call void @llvm.dbg.declare(metadata double* %22, metadata !1047, metadata !75), !dbg !1048
  store double 0x3FC1745D1745D174, double* %22, align 8, !dbg !1048
  call void @llvm.dbg.declare(metadata double* %23, metadata !1049, metadata !75), !dbg !1050
  store double 0x3FBD89D89D89D89E, double* %23, align 8, !dbg !1050
  call void @llvm.dbg.declare(metadata double* %24, metadata !1051, metadata !75), !dbg !1052
  %122 = load double, double* %8, align 8, !dbg !1053
  store double %122, double* %24, align 8, !dbg !1052
  call void @llvm.dbg.declare(metadata double* %25, metadata !1054, metadata !75), !dbg !1055
  %123 = load double, double* %9, align 8, !dbg !1056
  store double %123, double* %25, align 8, !dbg !1055
  call void @llvm.dbg.declare(metadata double* %26, metadata !1057, metadata !75), !dbg !1058
  %124 = load double, double* %10, align 8, !dbg !1059
  store double %124, double* %26, align 8, !dbg !1058
  call void @llvm.dbg.declare(metadata double* %27, metadata !1060, metadata !75), !dbg !1061
  %125 = load double, double* %11, align 8, !dbg !1062
  store double %125, double* %27, align 8, !dbg !1061
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
  br label %126, !dbg !1095

; <label>:126:                                    ; preds = %121, %261
  call void @llvm.dbg.declare(metadata double* %44, metadata !1096, metadata !75), !dbg !1098
  call void @llvm.dbg.declare(metadata double* %45, metadata !1099, metadata !75), !dbg !1100
  call void @llvm.dbg.declare(metadata double* %46, metadata !1101, metadata !75), !dbg !1102
  call void @llvm.dbg.declare(metadata double* %47, metadata !1103, metadata !75), !dbg !1104
  call void @llvm.dbg.declare(metadata double* %48, metadata !1105, metadata !75), !dbg !1106
  call void @llvm.dbg.declare(metadata double* %49, metadata !1107, metadata !75), !dbg !1108
  call void @llvm.dbg.declare(metadata double* %50, metadata !1109, metadata !75), !dbg !1110
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %51, metadata !1111, metadata !75), !dbg !1112
  call void @llvm.dbg.declare(metadata i32* %52, metadata !1113, metadata !75), !dbg !1114
  %127 = load double, double* %24, align 8, !dbg !1115
  %128 = load double, double* %25, align 8, !dbg !1116
  %129 = fadd double %127, %128, !dbg !1117
  %130 = load double, double* %26, align 8, !dbg !1118
  %131 = fadd double %129, %130, !dbg !1119
  %132 = load double, double* %27, align 8, !dbg !1120
  %133 = fadd double %131, %132, !dbg !1121
  %134 = load double, double* %27, align 8, !dbg !1122
  %135 = fadd double %133, %134, !dbg !1123
  %136 = fmul double %135, 2.000000e-01, !dbg !1124
  store double %136, double* %30, align 8, !dbg !1125
  %137 = load double, double* %30, align 8, !dbg !1126
  %138 = load double, double* %24, align 8, !dbg !1127
  %139 = fsub double %137, %138, !dbg !1128
  %140 = load double, double* %30, align 8, !dbg !1129
  %141 = fdiv double %139, %140, !dbg !1130
  store double %141, double* %31, align 8, !dbg !1131
  %142 = load double, double* %30, align 8, !dbg !1132
  %143 = load double, double* %25, align 8, !dbg !1133
  %144 = fsub double %142, %143, !dbg !1134
  %145 = load double, double* %30, align 8, !dbg !1135
  %146 = fdiv double %144, %145, !dbg !1136
  store double %146, double* %32, align 8, !dbg !1137
  %147 = load double, double* %30, align 8, !dbg !1138
  %148 = load double, double* %26, align 8, !dbg !1139
  %149 = fsub double %147, %148, !dbg !1140
  %150 = load double, double* %30, align 8, !dbg !1141
  %151 = fdiv double %149, %150, !dbg !1142
  store double %151, double* %33, align 8, !dbg !1143
  %152 = load double, double* %30, align 8, !dbg !1144
  %153 = load double, double* %27, align 8, !dbg !1145
  %154 = fsub double %152, %153, !dbg !1146
  %155 = load double, double* %30, align 8, !dbg !1147
  %156 = fdiv double %154, %155, !dbg !1148
  store double %156, double* %34, align 8, !dbg !1149
  %157 = load double, double* %31, align 8, !dbg !1150
  %158 = call double @fabs(double %157) #1, !dbg !1151
  %159 = load double, double* %32, align 8, !dbg !1152
  %160 = call double @fabs(double %159) #1, !dbg !1153
  %161 = load double, double* %33, align 8, !dbg !1155
  %162 = call double @fabs(double %161) #1, !dbg !1156
  %163 = load double, double* %34, align 8, !dbg !1158
  %164 = call double @fabs(double %163) #1, !dbg !1159
  %165 = call double @locMAX4(double %158, double %160, double %162, double %164), !dbg !1161
  store double %165, double* %50, align 8, !dbg !1163
  %166 = load double, double* %50, align 8, !dbg !1164
  %167 = load double, double* %15, align 8, !dbg !1166
  %168 = fcmp olt double %166, %167, !dbg !1167
  br i1 %168, label %169, label %170, !dbg !1168

; <label>:169:                                    ; preds = %126
  br label %262, !dbg !1169

; <label>:170:                                    ; preds = %126
  %171 = load double, double* %24, align 8, !dbg !1171
  %172 = call double @sqrt(double %171) #6, !dbg !1172
  store double %172, double* %44, align 8, !dbg !1173
  %173 = load double, double* %25, align 8, !dbg !1174
  %174 = call double @sqrt(double %173) #6, !dbg !1175
  store double %174, double* %45, align 8, !dbg !1176
  %175 = load double, double* %26, align 8, !dbg !1177
  %176 = call double @sqrt(double %175) #6, !dbg !1178
  store double %176, double* %46, align 8, !dbg !1179
  %177 = load double, double* %44, align 8, !dbg !1180
  %178 = load double, double* %45, align 8, !dbg !1181
  %179 = load double, double* %46, align 8, !dbg !1182
  %180 = fadd double %178, %179, !dbg !1183
  %181 = fmul double %177, %180, !dbg !1184
  %182 = load double, double* %45, align 8, !dbg !1185
  %183 = load double, double* %46, align 8, !dbg !1186
  %184 = fmul double %182, %183, !dbg !1187
  %185 = fadd double %181, %184, !dbg !1188
  store double %185, double* %47, align 8, !dbg !1189
  %186 = load double, double* %27, align 8, !dbg !1190
  %187 = load double, double* %44, align 8, !dbg !1191
  %188 = load double, double* %45, align 8, !dbg !1192
  %189 = fadd double %187, %188, !dbg !1193
  %190 = load double, double* %46, align 8, !dbg !1194
  %191 = fadd double %189, %190, !dbg !1195
  %192 = fmul double %186, %191, !dbg !1196
  %193 = load double, double* %44, align 8, !dbg !1197
  %194 = load double, double* %45, align 8, !dbg !1198
  %195 = fmul double %193, %194, !dbg !1199
  %196 = load double, double* %46, align 8, !dbg !1200
  %197 = fmul double %195, %196, !dbg !1201
  %198 = fadd double %192, %197, !dbg !1202
  store double %198, double* %48, align 8, !dbg !1203
  %199 = load double, double* %48, align 8, !dbg !1204
  %200 = load double, double* %48, align 8, !dbg !1205
  %201 = fmul double %199, %200, !dbg !1206
  store double %201, double* %48, align 8, !dbg !1207
  %202 = load double, double* %27, align 8, !dbg !1208
  %203 = load double, double* %27, align 8, !dbg !1209
  %204 = load double, double* %47, align 8, !dbg !1210
  %205 = fadd double %203, %204, !dbg !1211
  %206 = fmul double %202, %205, !dbg !1212
  %207 = load double, double* %27, align 8, !dbg !1213
  %208 = load double, double* %47, align 8, !dbg !1214
  %209 = fadd double %207, %208, !dbg !1215
  %210 = fmul double %206, %209, !dbg !1216
  store double %210, double* %49, align 8, !dbg !1217
  %211 = load double, double* %48, align 8, !dbg !1218
  %212 = load double, double* %49, align 8, !dbg !1219
  %213 = load i32, i32* %12, align 4, !dbg !1220
  %214 = call i32 @gsl_sf_ellint_RC_e(double %211, double %212, i32 %213, %struct.gsl_sf_result_struct* %51), !dbg !1221
  store i32 %214, i32* %52, align 4, !dbg !1222
  %215 = load i32, i32* %52, align 4, !dbg !1223
  %216 = icmp ne i32 %215, 0, !dbg !1225
  br i1 %216, label %217, label %223, !dbg !1226

; <label>:217:                                    ; preds = %170
  %218 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1227
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %218, i32 0, i32 0, !dbg !1229
  store double 0.000000e+00, double* %219, align 8, !dbg !1230
  %220 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1231
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %220, i32 0, i32 1, !dbg !1232
  store double 0.000000e+00, double* %221, align 8, !dbg !1233
  %222 = load i32, i32* %52, align 4, !dbg !1234
  store i32 %222, i32* %7, align 4, !dbg !1235
  br label %357, !dbg !1235

; <label>:223:                                    ; preds = %170
  %224 = load double, double* %29, align 8, !dbg !1236
  %225 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !1237
  %226 = load double, double* %225, align 8, !dbg !1237
  %227 = fmul double %224, %226, !dbg !1238
  %228 = load double, double* %28, align 8, !dbg !1239
  %229 = fadd double %228, %227, !dbg !1239
  store double %229, double* %28, align 8, !dbg !1239
  %230 = load double, double* %29, align 8, !dbg !1240
  %231 = fmul double %230, 2.500000e-01, !dbg !1240
  store double %231, double* %29, align 8, !dbg !1240
  %232 = load double, double* %24, align 8, !dbg !1241
  %233 = load double, double* %47, align 8, !dbg !1242
  %234 = fadd double %232, %233, !dbg !1243
  %235 = fmul double %234, 2.500000e-01, !dbg !1244
  store double %235, double* %24, align 8, !dbg !1245
  %236 = load double, double* %25, align 8, !dbg !1246
  %237 = load double, double* %47, align 8, !dbg !1247
  %238 = fadd double %236, %237, !dbg !1248
  %239 = fmul double %238, 2.500000e-01, !dbg !1249
  store double %239, double* %25, align 8, !dbg !1250
  %240 = load double, double* %26, align 8, !dbg !1251
  %241 = load double, double* %47, align 8, !dbg !1252
  %242 = fadd double %240, %241, !dbg !1253
  %243 = fmul double %242, 2.500000e-01, !dbg !1254
  store double %243, double* %26, align 8, !dbg !1255
  %244 = load double, double* %27, align 8, !dbg !1256
  %245 = load double, double* %47, align 8, !dbg !1257
  %246 = fadd double %244, %245, !dbg !1258
  %247 = fmul double %246, 2.500000e-01, !dbg !1259
  store double %247, double* %27, align 8, !dbg !1260
  %248 = load i32, i32* %43, align 4, !dbg !1261
  %249 = add nsw i32 %248, 1, !dbg !1261
  store i32 %249, i32* %43, align 4, !dbg !1261
  %250 = load i32, i32* %43, align 4, !dbg !1262
  %251 = icmp eq i32 %250, 10000, !dbg !1264
  br i1 %251, label %252, label %261, !dbg !1265

; <label>:252:                                    ; preds = %223
  br label %253, !dbg !1266, !llvm.loop !1268

; <label>:253:                                    ; preds = %252
  %254 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1269
  %255 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %254, i32 0, i32 0, !dbg !1269
  store double 0x7FF8000000000000, double* %255, align 8, !dbg !1269
  %256 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1269
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %256, i32 0, i32 1, !dbg !1269
  store double 0x7FF8000000000000, double* %257, align 8, !dbg !1269
  br label %258, !dbg !1269, !llvm.loop !1272

; <label>:258:                                    ; preds = %253
  call void @gsl_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 305, i32 11), !dbg !1274
  store i32 11, i32* %7, align 4, !dbg !1274
  br label %357, !dbg !1274
                                                  ; No predecessors!
  br label %260, !dbg !1277

; <label>:260:                                    ; preds = %259
  br label %261, !dbg !1279

; <label>:261:                                    ; preds = %260, %223
  br label %126, !dbg !1280, !llvm.loop !1282

; <label>:262:                                    ; preds = %169
  %263 = load double, double* %31, align 8, !dbg !1283
  %264 = load double, double* %32, align 8, !dbg !1284
  %265 = load double, double* %33, align 8, !dbg !1285
  %266 = fadd double %264, %265, !dbg !1286
  %267 = fmul double %263, %266, !dbg !1287
  %268 = load double, double* %32, align 8, !dbg !1288
  %269 = load double, double* %33, align 8, !dbg !1289
  %270 = fmul double %268, %269, !dbg !1290
  %271 = fadd double %267, %270, !dbg !1291
  store double %271, double* %35, align 8, !dbg !1292
  %272 = load double, double* %31, align 8, !dbg !1293
  %273 = load double, double* %32, align 8, !dbg !1294
  %274 = fmul double %272, %273, !dbg !1295
  %275 = load double, double* %33, align 8, !dbg !1296
  %276 = fmul double %274, %275, !dbg !1297
  store double %276, double* %36, align 8, !dbg !1298
  %277 = load double, double* %34, align 8, !dbg !1299
  %278 = load double, double* %34, align 8, !dbg !1300
  %279 = fmul double %277, %278, !dbg !1301
  store double %279, double* %37, align 8, !dbg !1302
  %280 = load double, double* %35, align 8, !dbg !1303
  %281 = load double, double* %37, align 8, !dbg !1304
  %282 = fmul double 3.000000e+00, %281, !dbg !1305
  %283 = fsub double %280, %282, !dbg !1306
  store double %283, double* %38, align 8, !dbg !1307
  %284 = load double, double* %36, align 8, !dbg !1308
  %285 = load double, double* %34, align 8, !dbg !1309
  %286 = fmul double 2.000000e+00, %285, !dbg !1310
  %287 = load double, double* %35, align 8, !dbg !1311
  %288 = load double, double* %37, align 8, !dbg !1312
  %289 = fsub double %287, %288, !dbg !1313
  %290 = fmul double %286, %289, !dbg !1314
  %291 = fadd double %284, %290, !dbg !1315
  store double %291, double* %39, align 8, !dbg !1316
  %292 = load double, double* %38, align 8, !dbg !1317
  %293 = load double, double* %38, align 8, !dbg !1318
  %294 = fmul double 0x3FBA2E8BA2E8BA2E, %293, !dbg !1319
  %295 = fadd double 0xBFCB6DB6DB6DB6DB, %294, !dbg !1320
  %296 = load double, double* %39, align 8, !dbg !1321
  %297 = fmul double 0x3FC6276276276276, %296, !dbg !1322
  %298 = fsub double %295, %297, !dbg !1323
  %299 = fmul double %292, %298, !dbg !1324
  %300 = fadd double 1.000000e+00, %299, !dbg !1325
  store double %300, double* %40, align 8, !dbg !1326
  %301 = load double, double* %36, align 8, !dbg !1327
  %302 = load double, double* %34, align 8, !dbg !1328
  %303 = load double, double* %34, align 8, !dbg !1329
  %304 = fmul double %303, 0x3FBD89D89D89D89E, !dbg !1330
  %305 = fadd double 0xBFD1745D1745D174, %304, !dbg !1331
  %306 = fmul double %302, %305, !dbg !1332
  %307 = fadd double 0x3FC5555555555555, %306, !dbg !1333
  %308 = fmul double %301, %307, !dbg !1334
  store double %308, double* %41, align 8, !dbg !1335
  %309 = load double, double* %34, align 8, !dbg !1336
  %310 = load double, double* %35, align 8, !dbg !1337
  %311 = fmul double %309, %310, !dbg !1338
  %312 = load double, double* %34, align 8, !dbg !1339
  %313 = fmul double %312, 0x3FC1745D1745D174, !dbg !1340
  %314 = fsub double 0x3FD5555555555555, %313, !dbg !1341
  %315 = fmul double %311, %314, !dbg !1342
  %316 = load double, double* %34, align 8, !dbg !1343
  %317 = fmul double 0x3FD5555555555555, %316, !dbg !1344
  %318 = load double, double* %37, align 8, !dbg !1345
  %319 = fmul double %317, %318, !dbg !1346
  %320 = fsub double %315, %319, !dbg !1347
  store double %320, double* %42, align 8, !dbg !1348
  %321 = load double, double* %28, align 8, !dbg !1349
  %322 = fmul double 3.000000e+00, %321, !dbg !1350
  %323 = load double, double* %29, align 8, !dbg !1351
  %324 = load double, double* %40, align 8, !dbg !1352
  %325 = load double, double* %41, align 8, !dbg !1353
  %326 = fadd double %324, %325, !dbg !1354
  %327 = load double, double* %42, align 8, !dbg !1355
  %328 = fadd double %326, %327, !dbg !1356
  %329 = fmul double %323, %328, !dbg !1357
  %330 = load double, double* %30, align 8, !dbg !1358
  %331 = load double, double* %30, align 8, !dbg !1359
  %332 = call double @sqrt(double %331) #6, !dbg !1360
  %333 = fmul double %330, %332, !dbg !1361
  %334 = fdiv double %329, %333, !dbg !1362
  %335 = fadd double %322, %334, !dbg !1363
  %336 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1364
  %337 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %336, i32 0, i32 0, !dbg !1365
  store double %335, double* %337, align 8, !dbg !1366
  %338 = load double, double* %16, align 8, !dbg !1367
  %339 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1368
  %340 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %339, i32 0, i32 0, !dbg !1369
  %341 = load double, double* %340, align 8, !dbg !1369
  %342 = call double @fabs(double %341) #1, !dbg !1370
  %343 = fmul double %338, %342, !dbg !1371
  %344 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1372
  %345 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %344, i32 0, i32 1, !dbg !1373
  store double %343, double* %345, align 8, !dbg !1374
  store i32 0, i32* %7, align 4, !dbg !1375
  br label %357, !dbg !1375

; <label>:346:                                    ; preds = %113
  br label %347, !dbg !1376, !llvm.loop !1378

; <label>:347:                                    ; preds = %346
  %348 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1379
  %349 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %348, i32 0, i32 0, !dbg !1379
  store double 0x7FF8000000000000, double* %349, align 8, !dbg !1379
  %350 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !1379
  %351 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %350, i32 0, i32 1, !dbg !1379
  store double 0x7FF8000000000000, double* %351, align 8, !dbg !1379
  br label %352, !dbg !1379, !llvm.loop !1382

; <label>:352:                                    ; preds = %347
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 322, i32 1), !dbg !1384
  store i32 1, i32* %7, align 4, !dbg !1384
  br label %357, !dbg !1384
                                                  ; No predecessors!
  br label %354, !dbg !1387

; <label>:354:                                    ; preds = %353
  br label %355

; <label>:355:                                    ; preds = %354
  br label %356

; <label>:356:                                    ; preds = %355, %112
  br label %357

; <label>:357:                                    ; preds = %79, %110, %217, %258, %262, %352, %356, %81
  %358 = load i32, i32* %7, align 4, !dbg !1389
  ret i32 %358, !dbg !1389
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
  br i1 %13, label %14, label %16, !dbg !1403

; <label>:14:                                     ; preds = %4
  %15 = load double, double* %5, align 8, !dbg !1404
  br label %18, !dbg !1404

; <label>:16:                                     ; preds = %4
  %17 = load double, double* %6, align 8, !dbg !1406
  br label %18, !dbg !1406

; <label>:18:                                     ; preds = %16, %14
  %19 = phi double [ %15, %14 ], [ %17, %16 ], !dbg !1408
  store double %19, double* %9, align 8, !dbg !1410
  call void @llvm.dbg.declare(metadata double* %10, metadata !1411, metadata !75), !dbg !1412
  %20 = load double, double* %9, align 8, !dbg !1413
  %21 = load double, double* %7, align 8, !dbg !1413
  %22 = fcmp ogt double %20, %21, !dbg !1413
  br i1 %22, label %23, label %25, !dbg !1413

; <label>:23:                                     ; preds = %18
  %24 = load double, double* %9, align 8, !dbg !1414
  br label %27, !dbg !1414

; <label>:25:                                     ; preds = %18
  %26 = load double, double* %7, align 8, !dbg !1415
  br label %27, !dbg !1415

; <label>:27:                                     ; preds = %25, %23
  %28 = phi double [ %24, %23 ], [ %26, %25 ], !dbg !1416
  store double %28, double* %10, align 8, !dbg !1417
  %29 = load double, double* %10, align 8, !dbg !1418
  %30 = load double, double* %8, align 8, !dbg !1418
  %31 = fcmp ogt double %29, %30, !dbg !1418
  br i1 %31, label %32, label %34, !dbg !1418

; <label>:32:                                     ; preds = %27
  %33 = load double, double* %10, align 8, !dbg !1419
  br label %36, !dbg !1419

; <label>:34:                                     ; preds = %27
  %35 = load double, double* %8, align 8, !dbg !1420
  br label %36, !dbg !1420

; <label>:36:                                     ; preds = %34, %32
  %37 = phi double [ %33, %32 ], [ %35, %34 ], !dbg !1421
  ret double %37, !dbg !1422
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
  %22 = fadd double %21, 5.000000e-01, !dbg !1436
  %23 = call double @floor(double %22) #1, !dbg !1437
  store double %23, double* %10, align 8, !dbg !1433
  call void @llvm.dbg.declare(metadata double* %11, metadata !1438, metadata !75), !dbg !1439
  %24 = load double, double* %6, align 8, !dbg !1440
  %25 = load double, double* %10, align 8, !dbg !1441
  %26 = fmul double %25, 0x400921FB54442D18, !dbg !1442
  %27 = fsub double %24, %26, !dbg !1443
  store double %27, double* %11, align 8, !dbg !1439
  %28 = load double, double* %11, align 8, !dbg !1444
  store double %28, double* %6, align 8, !dbg !1445
  call void @llvm.dbg.declare(metadata double* %12, metadata !1446, metadata !75), !dbg !1448
  %29 = load double, double* %6, align 8, !dbg !1449
  %30 = call double @sin(double %29) #6, !dbg !1450
  store double %30, double* %12, align 8, !dbg !1448
  call void @llvm.dbg.declare(metadata double* %13, metadata !1451, metadata !75), !dbg !1452
  %31 = load double, double* %12, align 8, !dbg !1453
  %32 = load double, double* %12, align 8, !dbg !1454
  %33 = fmul double %31, %32, !dbg !1455
  store double %33, double* %13, align 8, !dbg !1452
  call void @llvm.dbg.declare(metadata double* %14, metadata !1456, metadata !75), !dbg !1457
  %34 = load double, double* %13, align 8, !dbg !1458
  %35 = fsub double 1.000000e+00, %34, !dbg !1459
  store double %35, double* %14, align 8, !dbg !1457
  call void @llvm.dbg.declare(metadata double* %15, metadata !1460, metadata !75), !dbg !1461
  %36 = load double, double* %7, align 8, !dbg !1462
  %37 = load double, double* %7, align 8, !dbg !1463
  %38 = fmul double %36, %37, !dbg !1464
  %39 = load double, double* %13, align 8, !dbg !1465
  %40 = fmul double %38, %39, !dbg !1466
  %41 = fsub double 1.000000e+00, %40, !dbg !1467
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
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1479
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !1480
  store double %49, double* %51, align 8, !dbg !1481
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1482
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !1483
  %54 = load double, double* %53, align 8, !dbg !1483
  %55 = call double @fabs(double %54) #1, !dbg !1484
  %56 = fmul double 0x3CB0000000000000, %55, !dbg !1485
  %57 = load double, double* %12, align 8, !dbg !1486
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1487
  %59 = load double, double* %58, align 8, !dbg !1487
  %60 = fmul double %57, %59, !dbg !1488
  %61 = call double @fabs(double %60) #1, !dbg !1489
  %62 = fadd double %56, %61, !dbg !1491
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1492
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 1, !dbg !1493
  store double %62, double* %64, align 8, !dbg !1494
  %65 = load double, double* %10, align 8, !dbg !1495
  %66 = fcmp oeq double %65, 0.000000e+00, !dbg !1497
  br i1 %66, label %67, label %69, !dbg !1498

; <label>:67:                                     ; preds = %4
  %68 = load i32, i32* %17, align 4, !dbg !1499
  store i32 %68, i32* %5, align 4, !dbg !1501
  br label %106, !dbg !1501

; <label>:69:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !1502, metadata !75), !dbg !1504
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1505, metadata !75), !dbg !1506
  %70 = load double, double* %7, align 8, !dbg !1507
  %71 = load i32, i32* %8, align 4, !dbg !1508
  %72 = call i32 @gsl_sf_ellint_Kcomp_e(double %70, i32 %71, %struct.gsl_sf_result_struct* %18), !dbg !1509
  store i32 %72, i32* %19, align 4, !dbg !1506
  %73 = load double, double* %10, align 8, !dbg !1510
  %74 = fmul double 2.000000e+00, %73, !dbg !1511
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1512
  %76 = load double, double* %75, align 8, !dbg !1512
  %77 = fmul double %74, %76, !dbg !1513
  %78 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1514
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !1515
  %80 = load double, double* %79, align 8, !dbg !1516
  %81 = fadd double %80, %77, !dbg !1516
  store double %81, double* %79, align 8, !dbg !1516
  %82 = load double, double* %10, align 8, !dbg !1517
  %83 = call double @fabs(double %82) #1, !dbg !1518
  %84 = fmul double 2.000000e+00, %83, !dbg !1519
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !1520
  %86 = load double, double* %85, align 8, !dbg !1520
  %87 = fmul double %84, %86, !dbg !1521
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1522
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !1523
  %90 = load double, double* %89, align 8, !dbg !1524
  %91 = fadd double %90, %87, !dbg !1524
  store double %91, double* %89, align 8, !dbg !1524
  %92 = load i32, i32* %17, align 4, !dbg !1525
  %93 = icmp ne i32 %92, 0, !dbg !1525
  br i1 %93, label %94, label %96, !dbg !1525

; <label>:94:                                     ; preds = %69
  %95 = load i32, i32* %17, align 4, !dbg !1526
  br label %104, !dbg !1526

; <label>:96:                                     ; preds = %69
  %97 = load i32, i32* %19, align 4, !dbg !1528
  %98 = icmp ne i32 %97, 0, !dbg !1528
  br i1 %98, label %99, label %101, !dbg !1528

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %19, align 4, !dbg !1530
  br label %102, !dbg !1530

; <label>:101:                                    ; preds = %96
  br label %102, !dbg !1532

; <label>:102:                                    ; preds = %101, %99
  %103 = phi i32 [ %100, %99 ], [ 0, %101 ], !dbg !1534
  br label %104, !dbg !1534

; <label>:104:                                    ; preds = %102, %94
  %105 = phi i32 [ %95, %94 ], [ %103, %102 ], !dbg !1536
  store i32 %105, i32* %5, align 4, !dbg !1538
  br label %106, !dbg !1538

; <label>:106:                                    ; preds = %104, %67
  %107 = load i32, i32* %5, align 4, !dbg !1539
  ret i32 %107, !dbg !1539
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
  %16 = fcmp oge double %15, 1.000000e+00, !dbg !1550
  br i1 %16, label %17, label %26, !dbg !1551

; <label>:17:                                     ; preds = %3
  br label %18, !dbg !1552, !llvm.loop !1554

; <label>:18:                                     ; preds = %17
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1555
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1555
  store double 0x7FF8000000000000, double* %20, align 8, !dbg !1555
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1555
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !1555
  store double 0x7FF8000000000000, double* %22, align 8, !dbg !1555
  br label %23, !dbg !1555, !llvm.loop !1558

; <label>:23:                                     ; preds = %18
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 505, i32 1), !dbg !1560
  store i32 1, i32* %4, align 4, !dbg !1560
  br label %91, !dbg !1560
                                                  ; No predecessors!
  br label %25, !dbg !1563

; <label>:25:                                     ; preds = %24
  br label %91, !dbg !1565

; <label>:26:                                     ; preds = %3
  %27 = load double, double* %5, align 8, !dbg !1566
  %28 = load double, double* %5, align 8, !dbg !1568
  %29 = fmul double %27, %28, !dbg !1569
  %30 = fcmp oge double %29, 0x3FEFFFFFF8000000, !dbg !1570
  br i1 %30, label %31, label %75, !dbg !1571

; <label>:31:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata double* %8, metadata !1572, metadata !75), !dbg !1574
  %32 = load double, double* %5, align 8, !dbg !1575
  %33 = load double, double* %5, align 8, !dbg !1576
  %34 = fmul double %32, %33, !dbg !1577
  %35 = fsub double 1.000000e+00, %34, !dbg !1578
  store double %35, double* %8, align 8, !dbg !1574
  call void @llvm.dbg.declare(metadata double* %9, metadata !1579, metadata !75), !dbg !1580
  %36 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Kcomp_e.a, i64 0, i64 0), align 16, !dbg !1581
  %37 = load double, double* %8, align 8, !dbg !1582
  %38 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Kcomp_e.a, i64 0, i64 1), align 8, !dbg !1583
  %39 = load double, double* %8, align 8, !dbg !1584
  %40 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Kcomp_e.a, i64 0, i64 2), align 16, !dbg !1585
  %41 = fmul double %39, %40, !dbg !1586
  %42 = fadd double %38, %41, !dbg !1587
  %43 = fmul double %37, %42, !dbg !1588
  %44 = fadd double %36, %43, !dbg !1589
  store double %44, double* %9, align 8, !dbg !1580
  call void @llvm.dbg.declare(metadata double* %10, metadata !1590, metadata !75), !dbg !1591
  %45 = load double, double* %8, align 8, !dbg !1592
  %46 = call double @log(double %45) #6, !dbg !1593
  %47 = fsub double -0.000000e+00, %46, !dbg !1594
  %48 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Kcomp_e.b, i64 0, i64 0), align 16, !dbg !1595
  %49 = load double, double* %8, align 8, !dbg !1596
  %50 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Kcomp_e.b, i64 0, i64 1), align 8, !dbg !1597
  %51 = load double, double* %8, align 8, !dbg !1598
  %52 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Kcomp_e.b, i64 0, i64 2), align 16, !dbg !1599
  %53 = fmul double %51, %52, !dbg !1600
  %54 = fadd double %50, %53, !dbg !1601
  %55 = fmul double %49, %54, !dbg !1602
  %56 = fadd double %48, %55, !dbg !1603
  %57 = fmul double %47, %56, !dbg !1604
  store double %57, double* %10, align 8, !dbg !1591
  %58 = load double, double* %9, align 8, !dbg !1605
  %59 = load double, double* %10, align 8, !dbg !1606
  %60 = fadd double %58, %59, !dbg !1607
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1608
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !1609
  store double %60, double* %62, align 8, !dbg !1610
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1611
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !1612
  %65 = load double, double* %64, align 8, !dbg !1612
  %66 = call double @fabs(double %65) #1, !dbg !1613
  %67 = load double, double* %5, align 8, !dbg !1614
  %68 = load double, double* %8, align 8, !dbg !1615
  %69 = fdiv double %67, %68, !dbg !1616
  %70 = call double @fabs(double %69) #1, !dbg !1617
  %71 = fadd double %66, %70, !dbg !1619
  %72 = fmul double 0x3CC0000000000000, %71, !dbg !1620
  %73 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1621
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %73, i32 0, i32 1, !dbg !1622
  store double %72, double* %74, align 8, !dbg !1623
  store i32 0, i32* %4, align 4, !dbg !1624
  br label %91, !dbg !1624

; <label>:75:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata double* %11, metadata !1625, metadata !75), !dbg !1627
  %76 = load double, double* %5, align 8, !dbg !1628
  %77 = load double, double* %5, align 8, !dbg !1629
  %78 = fmul double %76, %77, !dbg !1630
  %79 = fsub double 1.000000e+00, %78, !dbg !1631
  store double %79, double* %11, align 8, !dbg !1627
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1632, metadata !75), !dbg !1633
  %80 = load double, double* %11, align 8, !dbg !1634
  %81 = load i32, i32* %6, align 4, !dbg !1635
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1636
  %83 = call i32 @gsl_sf_ellint_RF_e(double 0.000000e+00, double %80, double 1.000000e+00, i32 %81, %struct.gsl_sf_result_struct* %82), !dbg !1637
  store i32 %83, i32* %12, align 4, !dbg !1633
  %84 = load double, double* %11, align 8, !dbg !1638
  %85 = fdiv double 0x3CA0000000000000, %84, !dbg !1639
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1640
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 1, !dbg !1641
  %88 = load double, double* %87, align 8, !dbg !1642
  %89 = fadd double %88, %85, !dbg !1642
  store double %89, double* %87, align 8, !dbg !1642
  %90 = load i32, i32* %12, align 4, !dbg !1643
  store i32 %90, i32* %4, align 4, !dbg !1644
  br label %91, !dbg !1644

; <label>:91:                                     ; preds = %23, %31, %75, %25
  %92 = load i32, i32* %4, align 4, !dbg !1645
  ret i32 %92, !dbg !1645
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
  %27 = fadd double %26, 5.000000e-01, !dbg !1659
  %28 = call double @floor(double %27) #1, !dbg !1660
  store double %28, double* %10, align 8, !dbg !1656
  call void @llvm.dbg.declare(metadata double* %11, metadata !1661, metadata !75), !dbg !1662
  %29 = load double, double* %6, align 8, !dbg !1663
  %30 = load double, double* %10, align 8, !dbg !1664
  %31 = fmul double %30, 0x400921FB54442D18, !dbg !1665
  %32 = fsub double %29, %31, !dbg !1666
  store double %32, double* %11, align 8, !dbg !1662
  %33 = load double, double* %11, align 8, !dbg !1667
  store double %33, double* %6, align 8, !dbg !1668
  call void @llvm.dbg.declare(metadata double* %12, metadata !1669, metadata !75), !dbg !1671
  %34 = load double, double* %6, align 8, !dbg !1672
  %35 = call double @sin(double %34) #6, !dbg !1673
  store double %35, double* %12, align 8, !dbg !1671
  call void @llvm.dbg.declare(metadata double* %13, metadata !1674, metadata !75), !dbg !1675
  %36 = load double, double* %12, align 8, !dbg !1676
  %37 = load double, double* %12, align 8, !dbg !1677
  %38 = fmul double %36, %37, !dbg !1678
  store double %38, double* %13, align 8, !dbg !1675
  call void @llvm.dbg.declare(metadata double* %14, metadata !1679, metadata !75), !dbg !1680
  %39 = load double, double* %13, align 8, !dbg !1681
  %40 = fsub double 1.000000e+00, %39, !dbg !1682
  store double %40, double* %14, align 8, !dbg !1680
  call void @llvm.dbg.declare(metadata double* %15, metadata !1683, metadata !75), !dbg !1684
  %41 = load double, double* %7, align 8, !dbg !1685
  %42 = load double, double* %7, align 8, !dbg !1686
  %43 = fmul double %41, %42, !dbg !1687
  %44 = load double, double* %13, align 8, !dbg !1688
  %45 = fmul double %43, %44, !dbg !1689
  %46 = fsub double 1.000000e+00, %45, !dbg !1690
  store double %46, double* %15, align 8, !dbg !1684
  %47 = load double, double* %14, align 8, !dbg !1691
  %48 = fcmp olt double %47, 0x3CB0000000000000, !dbg !1693
  br i1 %48, label %49, label %80, !dbg !1694

; <label>:49:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !1695, metadata !75), !dbg !1697
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1698, metadata !75), !dbg !1699
  %50 = load double, double* %7, align 8, !dbg !1700
  %51 = load i32, i32* %8, align 4, !dbg !1701
  %52 = call i32 @gsl_sf_ellint_Ecomp_e(double %50, i32 %51, %struct.gsl_sf_result_struct* %16), !dbg !1702
  store i32 %52, i32* %17, align 4, !dbg !1699
  %53 = load double, double* %10, align 8, !dbg !1703
  %54 = fmul double 2.000000e+00, %53, !dbg !1704
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !1705
  %56 = load double, double* %55, align 8, !dbg !1705
  %57 = fmul double %54, %56, !dbg !1706
  %58 = load double, double* %12, align 8, !dbg !1707
  %59 = fcmp oge double %58, 0.000000e+00, !dbg !1707
  %60 = select i1 %59, i32 1, i32 -1, !dbg !1707
  %61 = sitofp i32 %60 to double, !dbg !1707
  %62 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !1708
  %63 = load double, double* %62, align 8, !dbg !1708
  %64 = fmul double %61, %63, !dbg !1709
  %65 = fadd double %57, %64, !dbg !1710
  %66 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1711
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !1712
  store double %65, double* %67, align 8, !dbg !1713
  %68 = load double, double* %10, align 8, !dbg !1714
  %69 = call double @fabs(double %68) #1, !dbg !1715
  %70 = fmul double 2.000000e+00, %69, !dbg !1716
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1717
  %72 = load double, double* %71, align 8, !dbg !1717
  %73 = fmul double %70, %72, !dbg !1718
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !1719
  %75 = load double, double* %74, align 8, !dbg !1719
  %76 = fadd double %73, %75, !dbg !1720
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1721
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !1722
  store double %76, double* %78, align 8, !dbg !1723
  %79 = load i32, i32* %17, align 4, !dbg !1724
  store i32 %79, i32* %5, align 4, !dbg !1725
  br label %215, !dbg !1725

; <label>:80:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !1726, metadata !75), !dbg !1728
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !1729, metadata !75), !dbg !1730
  call void @llvm.dbg.declare(metadata double* %20, metadata !1731, metadata !75), !dbg !1732
  %81 = load double, double* %13, align 8, !dbg !1733
  %82 = load double, double* %12, align 8, !dbg !1734
  %83 = fmul double %81, %82, !dbg !1735
  store double %83, double* %20, align 8, !dbg !1732
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1736, metadata !75), !dbg !1737
  %84 = load double, double* %14, align 8, !dbg !1738
  %85 = load double, double* %15, align 8, !dbg !1739
  %86 = load i32, i32* %8, align 4, !dbg !1740
  %87 = call i32 @gsl_sf_ellint_RF_e(double %84, double %85, double 1.000000e+00, i32 %86, %struct.gsl_sf_result_struct* %18), !dbg !1741
  store i32 %87, i32* %21, align 4, !dbg !1737
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1742, metadata !75), !dbg !1743
  %88 = load double, double* %14, align 8, !dbg !1744
  %89 = load double, double* %15, align 8, !dbg !1745
  %90 = load i32, i32* %8, align 4, !dbg !1746
  %91 = call i32 @gsl_sf_ellint_RD_e(double %88, double %89, double 1.000000e+00, i32 %90, %struct.gsl_sf_result_struct* %19), !dbg !1747
  store i32 %91, i32* %22, align 4, !dbg !1743
  %92 = load double, double* %12, align 8, !dbg !1748
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1749
  %94 = load double, double* %93, align 8, !dbg !1749
  %95 = fmul double %92, %94, !dbg !1750
  %96 = load double, double* %7, align 8, !dbg !1751
  %97 = load double, double* %7, align 8, !dbg !1752
  %98 = fmul double %96, %97, !dbg !1753
  %99 = fdiv double %98, 3.000000e+00, !dbg !1754
  %100 = load double, double* %20, align 8, !dbg !1755
  %101 = fmul double %99, %100, !dbg !1756
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1757
  %103 = load double, double* %102, align 8, !dbg !1757
  %104 = fmul double %101, %103, !dbg !1758
  %105 = fsub double %95, %104, !dbg !1759
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1760
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !1761
  store double %105, double* %107, align 8, !dbg !1762
  %108 = load double, double* %12, align 8, !dbg !1763
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1764
  %110 = load double, double* %109, align 8, !dbg !1764
  %111 = fmul double %108, %110, !dbg !1765
  %112 = call double @fabs(double %111) #1, !dbg !1766
  %113 = fmul double 0x3CB0000000000000, %112, !dbg !1767
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1768
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 1, !dbg !1769
  store double %113, double* %115, align 8, !dbg !1770
  %116 = load double, double* %12, align 8, !dbg !1771
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !1772
  %118 = load double, double* %117, align 8, !dbg !1772
  %119 = fmul double %116, %118, !dbg !1773
  %120 = call double @fabs(double %119) #1, !dbg !1774
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1775
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 1, !dbg !1776
  %123 = load double, double* %122, align 8, !dbg !1777
  %124 = fadd double %123, %120, !dbg !1777
  store double %124, double* %122, align 8, !dbg !1777
  %125 = load double, double* %7, align 8, !dbg !1778
  %126 = load double, double* %7, align 8, !dbg !1779
  %127 = fmul double %125, %126, !dbg !1780
  %128 = fdiv double %127, 3.000000e+00, !dbg !1781
  %129 = fmul double %128, 0x3CB0000000000000, !dbg !1782
  %130 = load double, double* %20, align 8, !dbg !1783
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !1784
  %132 = load double, double* %131, align 8, !dbg !1784
  %133 = fmul double %130, %132, !dbg !1785
  %134 = call double @fabs(double %133) #1, !dbg !1786
  %135 = fmul double %129, %134, !dbg !1787
  %136 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1788
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %136, i32 0, i32 1, !dbg !1789
  %138 = load double, double* %137, align 8, !dbg !1790
  %139 = fadd double %138, %135, !dbg !1790
  store double %139, double* %137, align 8, !dbg !1790
  %140 = load double, double* %7, align 8, !dbg !1791
  %141 = load double, double* %7, align 8, !dbg !1792
  %142 = fmul double %140, %141, !dbg !1793
  %143 = fdiv double %142, 3.000000e+00, !dbg !1794
  %144 = load double, double* %20, align 8, !dbg !1795
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !1796
  %146 = load double, double* %145, align 8, !dbg !1796
  %147 = fmul double %144, %146, !dbg !1797
  %148 = call double @fabs(double %147) #1, !dbg !1798
  %149 = fmul double %143, %148, !dbg !1799
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1800
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 1, !dbg !1801
  %152 = load double, double* %151, align 8, !dbg !1802
  %153 = fadd double %152, %149, !dbg !1802
  store double %153, double* %151, align 8, !dbg !1802
  %154 = load double, double* %10, align 8, !dbg !1803
  %155 = fcmp oeq double %154, 0.000000e+00, !dbg !1805
  br i1 %155, label %156, label %171, !dbg !1806

; <label>:156:                                    ; preds = %80
  %157 = load i32, i32* %21, align 4, !dbg !1807
  %158 = icmp ne i32 %157, 0, !dbg !1807
  br i1 %158, label %159, label %161, !dbg !1807

; <label>:159:                                    ; preds = %156
  %160 = load i32, i32* %21, align 4, !dbg !1809
  br label %169, !dbg !1809

; <label>:161:                                    ; preds = %156
  %162 = load i32, i32* %22, align 4, !dbg !1811
  %163 = icmp ne i32 %162, 0, !dbg !1811
  br i1 %163, label %164, label %166, !dbg !1811

; <label>:164:                                    ; preds = %161
  %165 = load i32, i32* %22, align 4, !dbg !1813
  br label %167, !dbg !1813

; <label>:166:                                    ; preds = %161
  br label %167, !dbg !1815

; <label>:167:                                    ; preds = %166, %164
  %168 = phi i32 [ %165, %164 ], [ 0, %166 ], !dbg !1817
  br label %169, !dbg !1817

; <label>:169:                                    ; preds = %167, %159
  %170 = phi i32 [ %160, %159 ], [ %168, %167 ], !dbg !1819
  store i32 %170, i32* %5, align 4, !dbg !1821
  br label %215, !dbg !1821

; <label>:171:                                    ; preds = %80
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !1822, metadata !75), !dbg !1824
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1825, metadata !75), !dbg !1826
  %172 = load double, double* %7, align 8, !dbg !1827
  %173 = load i32, i32* %8, align 4, !dbg !1828
  %174 = call i32 @gsl_sf_ellint_Ecomp_e(double %172, i32 %173, %struct.gsl_sf_result_struct* %23), !dbg !1829
  store i32 %174, i32* %24, align 4, !dbg !1826
  %175 = load double, double* %10, align 8, !dbg !1830
  %176 = fmul double 2.000000e+00, %175, !dbg !1831
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1832
  %178 = load double, double* %177, align 8, !dbg !1832
  %179 = fmul double %176, %178, !dbg !1833
  %180 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1834
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %180, i32 0, i32 0, !dbg !1835
  %182 = load double, double* %181, align 8, !dbg !1836
  %183 = fadd double %182, %179, !dbg !1836
  store double %183, double* %181, align 8, !dbg !1836
  %184 = load double, double* %10, align 8, !dbg !1837
  %185 = call double @fabs(double %184) #1, !dbg !1838
  %186 = fmul double 2.000000e+00, %185, !dbg !1839
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !1840
  %188 = load double, double* %187, align 8, !dbg !1840
  %189 = fmul double %186, %188, !dbg !1841
  %190 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1842
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %190, i32 0, i32 1, !dbg !1843
  %192 = load double, double* %191, align 8, !dbg !1844
  %193 = fadd double %192, %189, !dbg !1844
  store double %193, double* %191, align 8, !dbg !1844
  %194 = load i32, i32* %21, align 4, !dbg !1845
  %195 = icmp ne i32 %194, 0, !dbg !1845
  br i1 %195, label %196, label %198, !dbg !1845

; <label>:196:                                    ; preds = %171
  %197 = load i32, i32* %21, align 4, !dbg !1846
  br label %213, !dbg !1846

; <label>:198:                                    ; preds = %171
  %199 = load i32, i32* %22, align 4, !dbg !1848
  %200 = icmp ne i32 %199, 0, !dbg !1848
  br i1 %200, label %201, label %203, !dbg !1848

; <label>:201:                                    ; preds = %198
  %202 = load i32, i32* %22, align 4, !dbg !1850
  br label %211, !dbg !1850

; <label>:203:                                    ; preds = %198
  %204 = load i32, i32* %24, align 4, !dbg !1852
  %205 = icmp ne i32 %204, 0, !dbg !1852
  br i1 %205, label %206, label %208, !dbg !1852

; <label>:206:                                    ; preds = %203
  %207 = load i32, i32* %24, align 4, !dbg !1854
  br label %209, !dbg !1854

; <label>:208:                                    ; preds = %203
  br label %209, !dbg !1856

; <label>:209:                                    ; preds = %208, %206
  %210 = phi i32 [ %207, %206 ], [ 0, %208 ], !dbg !1858
  br label %211, !dbg !1858

; <label>:211:                                    ; preds = %209, %201
  %212 = phi i32 [ %202, %201 ], [ %210, %209 ], !dbg !1860
  br label %213, !dbg !1860

; <label>:213:                                    ; preds = %211, %196
  %214 = phi i32 [ %197, %196 ], [ %212, %211 ], !dbg !1862
  store i32 %214, i32* %5, align 4, !dbg !1864
  br label %215, !dbg !1864

; <label>:215:                                    ; preds = %213, %169, %49
  %216 = load i32, i32* %5, align 4, !dbg !1865
  ret i32 %216, !dbg !1865
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
  %19 = fcmp oge double %18, 1.000000e+00, !dbg !1876
  br i1 %19, label %20, label %29, !dbg !1877

; <label>:20:                                     ; preds = %3
  br label %21, !dbg !1878, !llvm.loop !1880

; <label>:21:                                     ; preds = %20
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1881
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !1881
  store double 0x7FF8000000000000, double* %23, align 8, !dbg !1881
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1881
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !1881
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !1881
  br label %26, !dbg !1881, !llvm.loop !1884

; <label>:26:                                     ; preds = %21
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 542, i32 1), !dbg !1886
  store i32 1, i32* %4, align 4, !dbg !1886
  br label %126, !dbg !1886
                                                  ; No predecessors!
  br label %28, !dbg !1889

; <label>:28:                                     ; preds = %27
  br label %126, !dbg !1891

; <label>:29:                                     ; preds = %3
  %30 = load double, double* %5, align 8, !dbg !1892
  %31 = load double, double* %5, align 8, !dbg !1894
  %32 = fmul double %30, %31, !dbg !1895
  %33 = fcmp oge double %32, 0x3FEFFFFFF8000000, !dbg !1896
  br i1 %33, label %34, label %77, !dbg !1897

; <label>:34:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata double* %8, metadata !1898, metadata !75), !dbg !1900
  %35 = load double, double* %5, align 8, !dbg !1901
  %36 = load double, double* %5, align 8, !dbg !1902
  %37 = fmul double %35, %36, !dbg !1903
  %38 = fsub double 1.000000e+00, %37, !dbg !1904
  store double %38, double* %8, align 8, !dbg !1900
  call void @llvm.dbg.declare(metadata double* %9, metadata !1905, metadata !75), !dbg !1906
  %39 = load double, double* %8, align 8, !dbg !1907
  %40 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Ecomp_e.a, i64 0, i64 0), align 16, !dbg !1908
  %41 = load double, double* %8, align 8, !dbg !1909
  %42 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Ecomp_e.a, i64 0, i64 1), align 8, !dbg !1910
  %43 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Ecomp_e.a, i64 0, i64 2), align 16, !dbg !1911
  %44 = load double, double* %8, align 8, !dbg !1912
  %45 = fmul double %43, %44, !dbg !1913
  %46 = fadd double %42, %45, !dbg !1914
  %47 = fmul double %41, %46, !dbg !1915
  %48 = fadd double %40, %47, !dbg !1916
  %49 = fmul double %39, %48, !dbg !1917
  %50 = fadd double 1.000000e+00, %49, !dbg !1918
  store double %50, double* %9, align 8, !dbg !1906
  call void @llvm.dbg.declare(metadata double* %10, metadata !1919, metadata !75), !dbg !1920
  %51 = load double, double* %8, align 8, !dbg !1921
  %52 = fsub double -0.000000e+00, %51, !dbg !1922
  %53 = load double, double* %8, align 8, !dbg !1923
  %54 = call double @log(double %53) #6, !dbg !1924
  %55 = fmul double %52, %54, !dbg !1925
  %56 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Ecomp_e.b, i64 0, i64 0), align 16, !dbg !1926
  %57 = load double, double* %8, align 8, !dbg !1927
  %58 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Ecomp_e.b, i64 0, i64 1), align 8, !dbg !1928
  %59 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @gsl_sf_ellint_Ecomp_e.b, i64 0, i64 2), align 16, !dbg !1929
  %60 = load double, double* %8, align 8, !dbg !1930
  %61 = fmul double %59, %60, !dbg !1931
  %62 = fadd double %58, %61, !dbg !1932
  %63 = fmul double %57, %62, !dbg !1933
  %64 = fadd double %56, %63, !dbg !1934
  %65 = fmul double %55, %64, !dbg !1935
  store double %65, double* %10, align 8, !dbg !1920
  %66 = load double, double* %9, align 8, !dbg !1936
  %67 = load double, double* %10, align 8, !dbg !1937
  %68 = fadd double %66, %67, !dbg !1938
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1939
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !1940
  store double %68, double* %70, align 8, !dbg !1941
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1942
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !1943
  %73 = load double, double* %72, align 8, !dbg !1943
  %74 = fmul double 0x3CC0000000000000, %73, !dbg !1944
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1945
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !1946
  store double %74, double* %76, align 8, !dbg !1947
  store i32 0, i32* %4, align 4, !dbg !1948
  br label %126, !dbg !1948

; <label>:77:                                     ; preds = %29
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !1949, metadata !75), !dbg !1951
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !1952, metadata !75), !dbg !1953
  call void @llvm.dbg.declare(metadata double* %13, metadata !1954, metadata !75), !dbg !1955
  %78 = load double, double* %5, align 8, !dbg !1956
  %79 = load double, double* %5, align 8, !dbg !1957
  %80 = fmul double %78, %79, !dbg !1958
  %81 = fsub double 1.000000e+00, %80, !dbg !1959
  store double %81, double* %13, align 8, !dbg !1955
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1960, metadata !75), !dbg !1961
  %82 = load double, double* %13, align 8, !dbg !1962
  %83 = load i32, i32* %6, align 4, !dbg !1963
  %84 = call i32 @gsl_sf_ellint_RF_e(double 0.000000e+00, double %82, double 1.000000e+00, i32 %83, %struct.gsl_sf_result_struct* %11), !dbg !1964
  store i32 %84, i32* %14, align 4, !dbg !1961
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1965, metadata !75), !dbg !1966
  %85 = load double, double* %13, align 8, !dbg !1967
  %86 = load i32, i32* %6, align 4, !dbg !1968
  %87 = call i32 @gsl_sf_ellint_RD_e(double 0.000000e+00, double %85, double 1.000000e+00, i32 %86, %struct.gsl_sf_result_struct* %12), !dbg !1969
  store i32 %87, i32* %15, align 4, !dbg !1966
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1970
  %89 = load double, double* %88, align 8, !dbg !1970
  %90 = load double, double* %5, align 8, !dbg !1971
  %91 = load double, double* %5, align 8, !dbg !1972
  %92 = fmul double %90, %91, !dbg !1973
  %93 = fdiv double %92, 3.000000e+00, !dbg !1974
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !1975
  %95 = load double, double* %94, align 8, !dbg !1975
  %96 = fmul double %93, %95, !dbg !1976
  %97 = fsub double %89, %96, !dbg !1977
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1978
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 0, !dbg !1979
  store double %97, double* %99, align 8, !dbg !1980
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !1981
  %101 = load double, double* %100, align 8, !dbg !1981
  %102 = load double, double* %5, align 8, !dbg !1982
  %103 = load double, double* %5, align 8, !dbg !1983
  %104 = fmul double %102, %103, !dbg !1984
  %105 = fdiv double %104, 3.000000e+00, !dbg !1985
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !1986
  %107 = load double, double* %106, align 8, !dbg !1986
  %108 = fmul double %105, %107, !dbg !1987
  %109 = fadd double %101, %108, !dbg !1988
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !1989
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 1, !dbg !1990
  store double %109, double* %111, align 8, !dbg !1991
  %112 = load i32, i32* %14, align 4, !dbg !1992
  %113 = icmp ne i32 %112, 0, !dbg !1992
  br i1 %113, label %114, label %116, !dbg !1992

; <label>:114:                                    ; preds = %77
  %115 = load i32, i32* %14, align 4, !dbg !1993
  br label %124, !dbg !1993

; <label>:116:                                    ; preds = %77
  %117 = load i32, i32* %15, align 4, !dbg !1995
  %118 = icmp ne i32 %117, 0, !dbg !1995
  br i1 %118, label %119, label %121, !dbg !1995

; <label>:119:                                    ; preds = %116
  %120 = load i32, i32* %15, align 4, !dbg !1997
  br label %122, !dbg !1997

; <label>:121:                                    ; preds = %116
  br label %122, !dbg !1999

; <label>:122:                                    ; preds = %121, %119
  %123 = phi i32 [ %120, %119 ], [ 0, %121 ], !dbg !2001
  br label %124, !dbg !2001

; <label>:124:                                    ; preds = %122, %114
  %125 = phi i32 [ %115, %114 ], [ %123, %122 ], !dbg !2003
  store i32 %125, i32* %4, align 4, !dbg !2005
  br label %126, !dbg !2005

; <label>:126:                                    ; preds = %26, %34, %124, %28
  %127 = load i32, i32* %4, align 4, !dbg !2006
  ret i32 %127, !dbg !2006
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
  %27 = fadd double %26, 5.000000e-01, !dbg !2022
  %28 = call double @floor(double %27) #1, !dbg !2023
  store double %28, double* %12, align 8, !dbg !2019
  call void @llvm.dbg.declare(metadata double* %13, metadata !2024, metadata !75), !dbg !2025
  %29 = load double, double* %7, align 8, !dbg !2026
  %30 = load double, double* %12, align 8, !dbg !2027
  %31 = fmul double %30, 0x400921FB54442D18, !dbg !2028
  %32 = fsub double %29, %31, !dbg !2029
  store double %32, double* %13, align 8, !dbg !2025
  %33 = load double, double* %13, align 8, !dbg !2030
  store double %33, double* %7, align 8, !dbg !2031
  call void @llvm.dbg.declare(metadata double* %14, metadata !2032, metadata !75), !dbg !2034
  %34 = load double, double* %7, align 8, !dbg !2035
  %35 = call double @sin(double %34) #6, !dbg !2036
  store double %35, double* %14, align 8, !dbg !2034
  call void @llvm.dbg.declare(metadata double* %15, metadata !2037, metadata !75), !dbg !2038
  %36 = load double, double* %14, align 8, !dbg !2039
  %37 = load double, double* %14, align 8, !dbg !2040
  %38 = fmul double %36, %37, !dbg !2041
  store double %38, double* %15, align 8, !dbg !2038
  call void @llvm.dbg.declare(metadata double* %16, metadata !2042, metadata !75), !dbg !2043
  %39 = load double, double* %15, align 8, !dbg !2044
  %40 = load double, double* %14, align 8, !dbg !2045
  %41 = fmul double %39, %40, !dbg !2046
  store double %41, double* %16, align 8, !dbg !2043
  call void @llvm.dbg.declare(metadata double* %17, metadata !2047, metadata !75), !dbg !2048
  %42 = load double, double* %15, align 8, !dbg !2049
  %43 = fsub double 1.000000e+00, %42, !dbg !2050
  store double %43, double* %17, align 8, !dbg !2048
  call void @llvm.dbg.declare(metadata double* %18, metadata !2051, metadata !75), !dbg !2052
  %44 = load double, double* %8, align 8, !dbg !2053
  %45 = load double, double* %8, align 8, !dbg !2054
  %46 = fmul double %44, %45, !dbg !2055
  %47 = load double, double* %15, align 8, !dbg !2056
  %48 = fmul double %46, %47, !dbg !2057
  %49 = fsub double 1.000000e+00, %48, !dbg !2058
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
  %59 = fadd double 1.000000e+00, %58, !dbg !2076
  %60 = load i32, i32* %10, align 4, !dbg !2077
  %61 = call i32 @gsl_sf_ellint_RJ_e(double %54, double %55, double 1.000000e+00, double %59, i32 %60, %struct.gsl_sf_result_struct* %20), !dbg !2078
  store i32 %61, i32* %22, align 4, !dbg !2070
  %62 = load double, double* %14, align 8, !dbg !2079
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !2080
  %64 = load double, double* %63, align 8, !dbg !2080
  %65 = fmul double %62, %64, !dbg !2081
  %66 = load double, double* %9, align 8, !dbg !2082
  %67 = fdiv double %66, 3.000000e+00, !dbg !2083
  %68 = load double, double* %16, align 8, !dbg !2084
  %69 = fmul double %67, %68, !dbg !2085
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !2086
  %71 = load double, double* %70, align 8, !dbg !2086
  %72 = fmul double %69, %71, !dbg !2087
  %73 = fsub double %65, %72, !dbg !2088
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2089
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !2090
  store double %73, double* %75, align 8, !dbg !2091
  %76 = load double, double* %14, align 8, !dbg !2092
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !2093
  %78 = load double, double* %77, align 8, !dbg !2093
  %79 = fmul double %76, %78, !dbg !2094
  %80 = call double @fabs(double %79) #1, !dbg !2095
  %81 = fmul double 0x3CB0000000000000, %80, !dbg !2096
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2097
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !2098
  store double %81, double* %83, align 8, !dbg !2099
  %84 = load double, double* %14, align 8, !dbg !2100
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !2101
  %86 = load double, double* %85, align 8, !dbg !2101
  %87 = fmul double %84, %86, !dbg !2102
  %88 = call double @fabs(double %87) #1, !dbg !2103
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2104
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !2105
  %91 = load double, double* %90, align 8, !dbg !2106
  %92 = fadd double %91, %88, !dbg !2106
  store double %92, double* %90, align 8, !dbg !2106
  %93 = load double, double* %9, align 8, !dbg !2107
  %94 = fdiv double %93, 3.000000e+00, !dbg !2108
  %95 = fmul double %94, 0x3CB0000000000000, !dbg !2109
  %96 = load double, double* %16, align 8, !dbg !2110
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !2111
  %98 = load double, double* %97, align 8, !dbg !2111
  %99 = fmul double %96, %98, !dbg !2112
  %100 = call double @fabs(double %99) #1, !dbg !2113
  %101 = fmul double %95, %100, !dbg !2114
  %102 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2115
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 1, !dbg !2116
  %104 = load double, double* %103, align 8, !dbg !2117
  %105 = fadd double %104, %101, !dbg !2117
  store double %105, double* %103, align 8, !dbg !2117
  %106 = load double, double* %9, align 8, !dbg !2118
  %107 = fdiv double %106, 3.000000e+00, !dbg !2119
  %108 = load double, double* %16, align 8, !dbg !2120
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !2121
  %110 = load double, double* %109, align 8, !dbg !2121
  %111 = fmul double %108, %110, !dbg !2122
  %112 = call double @fabs(double %111) #1, !dbg !2123
  %113 = fmul double %107, %112, !dbg !2124
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2125
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 1, !dbg !2126
  %116 = load double, double* %115, align 8, !dbg !2127
  %117 = fadd double %116, %113, !dbg !2127
  store double %117, double* %115, align 8, !dbg !2127
  %118 = load double, double* %12, align 8, !dbg !2128
  %119 = fcmp oeq double %118, 0.000000e+00, !dbg !2130
  br i1 %119, label %120, label %135, !dbg !2131

; <label>:120:                                    ; preds = %5
  %121 = load i32, i32* %21, align 4, !dbg !2132
  %122 = icmp ne i32 %121, 0, !dbg !2132
  br i1 %122, label %123, label %125, !dbg !2132

; <label>:123:                                    ; preds = %120
  %124 = load i32, i32* %21, align 4, !dbg !2134
  br label %133, !dbg !2134

; <label>:125:                                    ; preds = %120
  %126 = load i32, i32* %22, align 4, !dbg !2136
  %127 = icmp ne i32 %126, 0, !dbg !2136
  br i1 %127, label %128, label %130, !dbg !2136

; <label>:128:                                    ; preds = %125
  %129 = load i32, i32* %22, align 4, !dbg !2138
  br label %131, !dbg !2138

; <label>:130:                                    ; preds = %125
  br label %131, !dbg !2140

; <label>:131:                                    ; preds = %130, %128
  %132 = phi i32 [ %129, %128 ], [ 0, %130 ], !dbg !2142
  br label %133, !dbg !2142

; <label>:133:                                    ; preds = %131, %123
  %134 = phi i32 [ %124, %123 ], [ %132, %131 ], !dbg !2144
  store i32 %134, i32* %6, align 4, !dbg !2146
  br label %180, !dbg !2146

; <label>:135:                                    ; preds = %5
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !2147, metadata !75), !dbg !2149
  call void @llvm.dbg.declare(metadata i32* %24, metadata !2150, metadata !75), !dbg !2151
  %136 = load double, double* %8, align 8, !dbg !2152
  %137 = load double, double* %9, align 8, !dbg !2153
  %138 = load i32, i32* %10, align 4, !dbg !2154
  %139 = call i32 @gsl_sf_ellint_Pcomp_e(double %136, double %137, i32 %138, %struct.gsl_sf_result_struct* %23), !dbg !2155
  store i32 %139, i32* %24, align 4, !dbg !2151
  %140 = load double, double* %12, align 8, !dbg !2156
  %141 = fmul double 2.000000e+00, %140, !dbg !2157
  %142 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !2158
  %143 = load double, double* %142, align 8, !dbg !2158
  %144 = fmul double %141, %143, !dbg !2159
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2160
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 0, !dbg !2161
  %147 = load double, double* %146, align 8, !dbg !2162
  %148 = fadd double %147, %144, !dbg !2162
  store double %148, double* %146, align 8, !dbg !2162
  %149 = load double, double* %12, align 8, !dbg !2163
  %150 = call double @fabs(double %149) #1, !dbg !2164
  %151 = fmul double 2.000000e+00, %150, !dbg !2165
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !2166
  %153 = load double, double* %152, align 8, !dbg !2166
  %154 = fmul double %151, %153, !dbg !2167
  %155 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !2168
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %155, i32 0, i32 1, !dbg !2169
  %157 = load double, double* %156, align 8, !dbg !2170
  %158 = fadd double %157, %154, !dbg !2170
  store double %158, double* %156, align 8, !dbg !2170
  %159 = load i32, i32* %21, align 4, !dbg !2171
  %160 = icmp ne i32 %159, 0, !dbg !2171
  br i1 %160, label %161, label %163, !dbg !2171

; <label>:161:                                    ; preds = %135
  %162 = load i32, i32* %21, align 4, !dbg !2172
  br label %178, !dbg !2172

; <label>:163:                                    ; preds = %135
  %164 = load i32, i32* %22, align 4, !dbg !2174
  %165 = icmp ne i32 %164, 0, !dbg !2174
  br i1 %165, label %166, label %168, !dbg !2174

; <label>:166:                                    ; preds = %163
  %167 = load i32, i32* %22, align 4, !dbg !2176
  br label %176, !dbg !2176

; <label>:168:                                    ; preds = %163
  %169 = load i32, i32* %24, align 4, !dbg !2178
  %170 = icmp ne i32 %169, 0, !dbg !2178
  br i1 %170, label %171, label %173, !dbg !2178

; <label>:171:                                    ; preds = %168
  %172 = load i32, i32* %24, align 4, !dbg !2180
  br label %174, !dbg !2180

; <label>:173:                                    ; preds = %168
  br label %174, !dbg !2182

; <label>:174:                                    ; preds = %173, %171
  %175 = phi i32 [ %172, %171 ], [ 0, %173 ], !dbg !2184
  br label %176, !dbg !2184

; <label>:176:                                    ; preds = %174, %166
  %177 = phi i32 [ %167, %166 ], [ %175, %174 ], !dbg !2186
  br label %178, !dbg !2186

; <label>:178:                                    ; preds = %176, %161
  %179 = phi i32 [ %162, %161 ], [ %177, %176 ], !dbg !2188
  store i32 %179, i32* %6, align 4, !dbg !2190
  br label %180, !dbg !2190

; <label>:180:                                    ; preds = %178, %133
  %181 = load i32, i32* %6, align 4, !dbg !2191
  ret i32 %181, !dbg !2191
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
  %18 = fcmp oge double %17, 1.000000e+00, !dbg !2205
  br i1 %18, label %19, label %28, !dbg !2206

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !2207, !llvm.loop !2209

; <label>:20:                                     ; preds = %19
  %21 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2210
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !2210
  store double 0x7FF8000000000000, double* %22, align 8, !dbg !2210
  %23 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2210
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !2210
  store double 0x7FF8000000000000, double* %24, align 8, !dbg !2210
  br label %25, !dbg !2210, !llvm.loop !2213

; <label>:25:                                     ; preds = %20
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 572, i32 1), !dbg !2215
  store i32 1, i32* %5, align 4, !dbg !2215
  br label %76, !dbg !2215
                                                  ; No predecessors!
  br label %27, !dbg !2218

; <label>:27:                                     ; preds = %26
  br label %76, !dbg !2220

; <label>:28:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !2221, metadata !75), !dbg !2223
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !2224, metadata !75), !dbg !2225
  call void @llvm.dbg.declare(metadata double* %12, metadata !2226, metadata !75), !dbg !2227
  %29 = load double, double* %6, align 8, !dbg !2228
  %30 = load double, double* %6, align 8, !dbg !2229
  %31 = fmul double %29, %30, !dbg !2230
  %32 = fsub double 1.000000e+00, %31, !dbg !2231
  store double %32, double* %12, align 8, !dbg !2227
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2232, metadata !75), !dbg !2233
  %33 = load double, double* %12, align 8, !dbg !2234
  %34 = load i32, i32* %8, align 4, !dbg !2235
  %35 = call i32 @gsl_sf_ellint_RF_e(double 0.000000e+00, double %33, double 1.000000e+00, i32 %34, %struct.gsl_sf_result_struct* %10), !dbg !2236
  store i32 %35, i32* %13, align 4, !dbg !2233
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2237, metadata !75), !dbg !2238
  %36 = load double, double* %12, align 8, !dbg !2239
  %37 = load double, double* %7, align 8, !dbg !2240
  %38 = fadd double 1.000000e+00, %37, !dbg !2241
  %39 = load i32, i32* %8, align 4, !dbg !2242
  %40 = call i32 @gsl_sf_ellint_RJ_e(double 0.000000e+00, double %36, double 1.000000e+00, double %38, i32 %39, %struct.gsl_sf_result_struct* %11), !dbg !2243
  store i32 %40, i32* %14, align 4, !dbg !2238
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2244
  %42 = load double, double* %41, align 8, !dbg !2244
  %43 = load double, double* %7, align 8, !dbg !2245
  %44 = fdiv double %43, 3.000000e+00, !dbg !2246
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !2247
  %46 = load double, double* %45, align 8, !dbg !2247
  %47 = fmul double %44, %46, !dbg !2248
  %48 = fsub double %42, %47, !dbg !2249
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2250
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !2251
  store double %48, double* %50, align 8, !dbg !2252
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !2253
  %52 = load double, double* %51, align 8, !dbg !2253
  %53 = load double, double* %7, align 8, !dbg !2254
  %54 = fdiv double %53, 3.000000e+00, !dbg !2255
  %55 = call double @fabs(double %54) #1, !dbg !2256
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !2257
  %57 = load double, double* %56, align 8, !dbg !2257
  %58 = fmul double %55, %57, !dbg !2258
  %59 = fadd double %52, %58, !dbg !2259
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2260
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 1, !dbg !2261
  store double %59, double* %61, align 8, !dbg !2262
  %62 = load i32, i32* %13, align 4, !dbg !2263
  %63 = icmp ne i32 %62, 0, !dbg !2263
  br i1 %63, label %64, label %66, !dbg !2263

; <label>:64:                                     ; preds = %28
  %65 = load i32, i32* %13, align 4, !dbg !2264
  br label %74, !dbg !2264

; <label>:66:                                     ; preds = %28
  %67 = load i32, i32* %14, align 4, !dbg !2266
  %68 = icmp ne i32 %67, 0, !dbg !2266
  br i1 %68, label %69, label %71, !dbg !2266

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %14, align 4, !dbg !2268
  br label %72, !dbg !2268

; <label>:71:                                     ; preds = %66
  br label %72, !dbg !2270

; <label>:72:                                     ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ], !dbg !2272
  br label %74, !dbg !2272

; <label>:74:                                     ; preds = %72, %64
  %75 = phi i32 [ %65, %64 ], [ %73, %72 ], !dbg !2274
  store i32 %75, i32* %5, align 4, !dbg !2276
  br label %76, !dbg !2276

; <label>:76:                                     ; preds = %25, %74, %27
  %77 = load i32, i32* %5, align 4, !dbg !2277
  ret i32 %77, !dbg !2277
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
  %23 = fadd double %22, 5.000000e-01, !dbg !2291
  %24 = call double @floor(double %23) #1, !dbg !2292
  store double %24, double* %10, align 8, !dbg !2288
  call void @llvm.dbg.declare(metadata double* %11, metadata !2293, metadata !75), !dbg !2294
  %25 = load double, double* %6, align 8, !dbg !2295
  %26 = load double, double* %10, align 8, !dbg !2296
  %27 = fmul double %26, 0x400921FB54442D18, !dbg !2297
  %28 = fsub double %25, %27, !dbg !2298
  store double %28, double* %11, align 8, !dbg !2294
  %29 = load double, double* %11, align 8, !dbg !2299
  store double %29, double* %6, align 8, !dbg !2300
  call void @llvm.dbg.declare(metadata double* %12, metadata !2301, metadata !75), !dbg !2303
  %30 = load double, double* %6, align 8, !dbg !2304
  %31 = call double @sin(double %30) #6, !dbg !2305
  store double %31, double* %12, align 8, !dbg !2303
  call void @llvm.dbg.declare(metadata double* %13, metadata !2306, metadata !75), !dbg !2307
  %32 = load double, double* %12, align 8, !dbg !2308
  %33 = load double, double* %12, align 8, !dbg !2309
  %34 = fmul double %32, %33, !dbg !2310
  store double %34, double* %13, align 8, !dbg !2307
  call void @llvm.dbg.declare(metadata double* %14, metadata !2311, metadata !75), !dbg !2312
  %35 = load double, double* %13, align 8, !dbg !2313
  %36 = load double, double* %12, align 8, !dbg !2314
  %37 = fmul double %35, %36, !dbg !2315
  store double %37, double* %14, align 8, !dbg !2312
  call void @llvm.dbg.declare(metadata double* %15, metadata !2316, metadata !75), !dbg !2317
  %38 = load double, double* %13, align 8, !dbg !2318
  %39 = fsub double 1.000000e+00, %38, !dbg !2319
  store double %39, double* %15, align 8, !dbg !2317
  call void @llvm.dbg.declare(metadata double* %16, metadata !2320, metadata !75), !dbg !2321
  %40 = load double, double* %7, align 8, !dbg !2322
  %41 = load double, double* %7, align 8, !dbg !2323
  %42 = fmul double %40, %41, !dbg !2324
  %43 = load double, double* %13, align 8, !dbg !2325
  %44 = fmul double %42, %43, !dbg !2326
  %45 = fsub double 1.000000e+00, %44, !dbg !2327
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
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !2338
  %53 = load double, double* %52, align 8, !dbg !2338
  %54 = fmul double %51, %53, !dbg !2339
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2340
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 0, !dbg !2341
  store double %54, double* %56, align 8, !dbg !2342
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2343
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 0, !dbg !2344
  %59 = load double, double* %58, align 8, !dbg !2344
  %60 = call double @fabs(double %59) #1, !dbg !2345
  %61 = fmul double 0x3CB0000000000000, %60, !dbg !2346
  %62 = load double, double* %14, align 8, !dbg !2347
  %63 = fdiv double %62, 3.000000e+00, !dbg !2348
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 1, !dbg !2349
  %65 = load double, double* %64, align 8, !dbg !2349
  %66 = fmul double %63, %65, !dbg !2350
  %67 = call double @fabs(double %66) #1, !dbg !2351
  %68 = fadd double %61, %67, !dbg !2353
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2354
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !2355
  store double %68, double* %70, align 8, !dbg !2356
  %71 = load double, double* %10, align 8, !dbg !2357
  %72 = fcmp oeq double %71, 0.000000e+00, !dbg !2359
  br i1 %72, label %73, label %75, !dbg !2360

; <label>:73:                                     ; preds = %4
  %74 = load i32, i32* %18, align 4, !dbg !2361
  store i32 %74, i32* %5, align 4, !dbg !2363
  br label %112, !dbg !2363

; <label>:75:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !2364, metadata !75), !dbg !2366
  call void @llvm.dbg.declare(metadata i32* %20, metadata !2367, metadata !75), !dbg !2368
  %76 = load double, double* %7, align 8, !dbg !2369
  %77 = load i32, i32* %8, align 4, !dbg !2370
  %78 = call i32 @gsl_sf_ellint_Dcomp_e(double %76, i32 %77, %struct.gsl_sf_result_struct* %19), !dbg !2371
  store i32 %78, i32* %20, align 4, !dbg !2368
  %79 = load double, double* %10, align 8, !dbg !2372
  %80 = fmul double 2.000000e+00, %79, !dbg !2373
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !2374
  %82 = load double, double* %81, align 8, !dbg !2374
  %83 = fmul double %80, %82, !dbg !2375
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2376
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !2377
  %86 = load double, double* %85, align 8, !dbg !2378
  %87 = fadd double %86, %83, !dbg !2378
  store double %87, double* %85, align 8, !dbg !2378
  %88 = load double, double* %10, align 8, !dbg !2379
  %89 = call double @fabs(double %88) #1, !dbg !2380
  %90 = fmul double 2.000000e+00, %89, !dbg !2381
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !2382
  %92 = load double, double* %91, align 8, !dbg !2382
  %93 = fmul double %90, %92, !dbg !2383
  %94 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !2384
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %94, i32 0, i32 1, !dbg !2385
  %96 = load double, double* %95, align 8, !dbg !2386
  %97 = fadd double %96, %93, !dbg !2386
  store double %97, double* %95, align 8, !dbg !2386
  %98 = load i32, i32* %18, align 4, !dbg !2387
  %99 = icmp ne i32 %98, 0, !dbg !2387
  br i1 %99, label %100, label %102, !dbg !2387

; <label>:100:                                    ; preds = %75
  %101 = load i32, i32* %18, align 4, !dbg !2388
  br label %110, !dbg !2388

; <label>:102:                                    ; preds = %75
  %103 = load i32, i32* %20, align 4, !dbg !2390
  %104 = icmp ne i32 %103, 0, !dbg !2390
  br i1 %104, label %105, label %107, !dbg !2390

; <label>:105:                                    ; preds = %102
  %106 = load i32, i32* %20, align 4, !dbg !2392
  br label %108, !dbg !2392

; <label>:107:                                    ; preds = %102
  br label %108, !dbg !2394

; <label>:108:                                    ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ], !dbg !2396
  br label %110, !dbg !2396

; <label>:110:                                    ; preds = %108, %100
  %111 = phi i32 [ %101, %100 ], [ %109, %108 ], !dbg !2398
  store i32 %111, i32* %5, align 4, !dbg !2400
  br label %112, !dbg !2400

; <label>:112:                                    ; preds = %110, %73
  %113 = load i32, i32* %5, align 4, !dbg !2401
  ret i32 %113, !dbg !2401
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
  %14 = fcmp oge double %13, 1.000000e+00, !dbg !2413
  br i1 %14, label %15, label %24, !dbg !2414

; <label>:15:                                     ; preds = %3
  br label %16, !dbg !2415, !llvm.loop !2417

; <label>:16:                                     ; preds = %15
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2418
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !2418
  store double 0x7FF8000000000000, double* %18, align 8, !dbg !2418
  %19 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2418
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !2418
  store double 0x7FF8000000000000, double* %20, align 8, !dbg !2418
  br label %21, !dbg !2418, !llvm.loop !2421

; <label>:21:                                     ; preds = %16
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 488, i32 1), !dbg !2423
  store i32 1, i32* %4, align 4, !dbg !2423
  br label %50, !dbg !2423
                                                  ; No predecessors!
  br label %23, !dbg !2426

; <label>:23:                                     ; preds = %22
  br label %50, !dbg !2428

; <label>:24:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata double* %8, metadata !2429, metadata !75), !dbg !2431
  %25 = load double, double* %5, align 8, !dbg !2432
  %26 = load double, double* %5, align 8, !dbg !2433
  %27 = fmul double %25, %26, !dbg !2434
  %28 = fsub double 1.000000e+00, %27, !dbg !2435
  store double %28, double* %8, align 8, !dbg !2431
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !2436, metadata !75), !dbg !2437
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2438, metadata !75), !dbg !2439
  %29 = load double, double* %8, align 8, !dbg !2440
  %30 = load i32, i32* %6, align 4, !dbg !2441
  %31 = call i32 @gsl_sf_ellint_RD_e(double 0.000000e+00, double %29, double 1.000000e+00, i32 %30, %struct.gsl_sf_result_struct* %9), !dbg !2442
  store i32 %31, i32* %10, align 4, !dbg !2439
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !2443
  %33 = load double, double* %32, align 8, !dbg !2443
  %34 = fmul double 0x3FD5555555555555, %33, !dbg !2444
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2445
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !2446
  store double %34, double* %36, align 8, !dbg !2447
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2448
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !2449
  %39 = load double, double* %38, align 8, !dbg !2449
  %40 = call double @fabs(double %39) #1, !dbg !2450
  %41 = fmul double 0x3CB0000000000000, %40, !dbg !2451
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !2452
  %43 = load double, double* %42, align 8, !dbg !2452
  %44 = fmul double 0x3FD5555555555555, %43, !dbg !2453
  %45 = call double @fabs(double %44) #1, !dbg !2454
  %46 = fadd double %41, %45, !dbg !2456
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !2457
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !2458
  store double %46, double* %48, align 8, !dbg !2459
  %49 = load i32, i32* %10, align 4, !dbg !2460
  store i32 %49, i32* %4, align 4, !dbg !2461
  br label %50, !dbg !2461

; <label>:50:                                     ; preds = %21, %24, %23
  %51 = load i32, i32* %4, align 4, !dbg !2462
  ret i32 %51, !dbg !2462
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
  br i1 %12, label %13, label %19, !dbg !2471

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !2475, !llvm.loop !2478

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !2480
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 595, i32 %15), !dbg !2480
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2480
  %17 = load double, double* %16, align 8, !dbg !2480
  store double %17, double* %3, align 8, !dbg !2480
  br label %22, !dbg !2480
                                                  ; No predecessors!
  br label %19, !dbg !2483

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2485
  %21 = load double, double* %20, align 8, !dbg !2485
  store double %21, double* %3, align 8, !dbg !2485
  br label %22, !dbg !2485

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !2487
  ret double %23, !dbg !2487
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
  br i1 %12, label %13, label %19, !dbg !2494

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !2498, !llvm.loop !2501

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !2503
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 600, i32 %15), !dbg !2503
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2503
  %17 = load double, double* %16, align 8, !dbg !2503
  store double %17, double* %3, align 8, !dbg !2503
  br label %22, !dbg !2503
                                                  ; No predecessors!
  br label %19, !dbg !2506

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2508
  %21 = load double, double* %20, align 8, !dbg !2508
  store double %21, double* %3, align 8, !dbg !2508
  br label %22, !dbg !2508

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !2510
  ret double %23, !dbg !2510
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
  br i1 %15, label %16, label %22, !dbg !2521

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !2525, !llvm.loop !2528

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !2530
  call void @gsl_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 605, i32 %18), !dbg !2530
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2530
  %20 = load double, double* %19, align 8, !dbg !2530
  store double %20, double* %4, align 8, !dbg !2530
  br label %25, !dbg !2530
                                                  ; No predecessors!
  br label %22, !dbg !2533

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2535
  %24 = load double, double* %23, align 8, !dbg !2535
  store double %24, double* %4, align 8, !dbg !2535
  br label %25, !dbg !2535

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !2537
  ret double %26, !dbg !2537
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
  br i1 %12, label %13, label %19, !dbg !2544

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !2548, !llvm.loop !2551

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !2553
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 610, i32 %15), !dbg !2553
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2553
  %17 = load double, double* %16, align 8, !dbg !2553
  store double %17, double* %3, align 8, !dbg !2553
  br label %22, !dbg !2553
                                                  ; No predecessors!
  br label %19, !dbg !2556

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !2558
  %21 = load double, double* %20, align 8, !dbg !2558
  store double %21, double* %3, align 8, !dbg !2558
  br label %22, !dbg !2558

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !2560
  ret double %23, !dbg !2560
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
  br i1 %15, label %16, label %22, !dbg !2569

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !2573, !llvm.loop !2576

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !2578
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 615, i32 %18), !dbg !2578
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2578
  %20 = load double, double* %19, align 8, !dbg !2578
  store double %20, double* %4, align 8, !dbg !2578
  br label %25, !dbg !2578
                                                  ; No predecessors!
  br label %22, !dbg !2581

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2583
  %24 = load double, double* %23, align 8, !dbg !2583
  store double %24, double* %4, align 8, !dbg !2583
  br label %25, !dbg !2583

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !2585
  ret double %26, !dbg !2585
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
  br i1 %15, label %16, label %22, !dbg !2594

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !2598, !llvm.loop !2601

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !2603
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 620, i32 %18), !dbg !2603
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2603
  %20 = load double, double* %19, align 8, !dbg !2603
  store double %20, double* %4, align 8, !dbg !2603
  br label %25, !dbg !2603
                                                  ; No predecessors!
  br label %22, !dbg !2606

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2608
  %24 = load double, double* %23, align 8, !dbg !2608
  store double %24, double* %4, align 8, !dbg !2608
  br label %25, !dbg !2608

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !2610
  ret double %26, !dbg !2610
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
  br i1 %18, label %19, label %25, !dbg !2623

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !2627, !llvm.loop !2630

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %11, align 4, !dbg !2632
  call void @gsl_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 625, i32 %21), !dbg !2632
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2632
  %23 = load double, double* %22, align 8, !dbg !2632
  store double %23, double* %5, align 8, !dbg !2632
  br label %28, !dbg !2632
                                                  ; No predecessors!
  br label %25, !dbg !2635

; <label>:25:                                     ; preds = %24, %4
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2637
  %27 = load double, double* %26, align 8, !dbg !2637
  store double %27, double* %5, align 8, !dbg !2637
  br label %28, !dbg !2637

; <label>:28:                                     ; preds = %25, %20
  %29 = load double, double* %5, align 8, !dbg !2639
  ret double %29, !dbg !2639
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
  br i1 %15, label %16, label %22, !dbg !2648

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !2652, !llvm.loop !2655

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !2657
  call void @gsl_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 630, i32 %18), !dbg !2657
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2657
  %20 = load double, double* %19, align 8, !dbg !2657
  store double %20, double* %4, align 8, !dbg !2657
  br label %25, !dbg !2657
                                                  ; No predecessors!
  br label %22, !dbg !2660

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2662
  %24 = load double, double* %23, align 8, !dbg !2662
  store double %24, double* %4, align 8, !dbg !2662
  br label %25, !dbg !2662

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !2664
  ret double %26, !dbg !2664
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
  br i1 %15, label %16, label %22, !dbg !2673

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !2677, !llvm.loop !2680

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !2682
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 635, i32 %18), !dbg !2682
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2682
  %20 = load double, double* %19, align 8, !dbg !2682
  store double %20, double* %4, align 8, !dbg !2682
  br label %25, !dbg !2682
                                                  ; No predecessors!
  br label %22, !dbg !2685

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !2687
  %24 = load double, double* %23, align 8, !dbg !2687
  store double %24, double* %4, align 8, !dbg !2687
  br label %25, !dbg !2687

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !2689
  ret double %26, !dbg !2689
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
  br i1 %18, label %19, label %25, !dbg !2700

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !2704, !llvm.loop !2707

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %11, align 4, !dbg !2709
  call void @gsl_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 640, i32 %21), !dbg !2709
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2709
  %23 = load double, double* %22, align 8, !dbg !2709
  store double %23, double* %5, align 8, !dbg !2709
  br label %28, !dbg !2709
                                                  ; No predecessors!
  br label %25, !dbg !2712

; <label>:25:                                     ; preds = %24, %4
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2714
  %27 = load double, double* %26, align 8, !dbg !2714
  store double %27, double* %5, align 8, !dbg !2714
  br label %28, !dbg !2714

; <label>:28:                                     ; preds = %25, %20
  %29 = load double, double* %5, align 8, !dbg !2716
  ret double %29, !dbg !2716
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
  br i1 %18, label %19, label %25, !dbg !2727

; <label>:19:                                     ; preds = %4
  br label %20, !dbg !2731, !llvm.loop !2734

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %11, align 4, !dbg !2736
  call void @gsl_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 645, i32 %21), !dbg !2736
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2736
  %23 = load double, double* %22, align 8, !dbg !2736
  store double %23, double* %5, align 8, !dbg !2736
  br label %28, !dbg !2736
                                                  ; No predecessors!
  br label %25, !dbg !2739

; <label>:25:                                     ; preds = %24, %4
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !2741
  %27 = load double, double* %26, align 8, !dbg !2741
  store double %27, double* %5, align 8, !dbg !2741
  br label %28, !dbg !2741

; <label>:28:                                     ; preds = %25, %20
  %29 = load double, double* %5, align 8, !dbg !2743
  ret double %29, !dbg !2743
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
  br i1 %21, label %22, label %28, !dbg !2758

; <label>:22:                                     ; preds = %5
  br label %23, !dbg !2762, !llvm.loop !2765

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %13, align 4, !dbg !2767
  call void @gsl_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 650, i32 %24), !dbg !2767
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !2767
  %26 = load double, double* %25, align 8, !dbg !2767
  store double %26, double* %6, align 8, !dbg !2767
  br label %31, !dbg !2767
                                                  ; No predecessors!
  br label %28, !dbg !2770

; <label>:28:                                     ; preds = %27, %5
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !2772
  %30 = load double, double* %29, align 8, !dbg !2772
  store double %30, double* %6, align 8, !dbg !2772
  br label %31, !dbg !2772

; <label>:31:                                     ; preds = %28, %23
  %32 = load double, double* %6, align 8, !dbg !2774
  ret double %32, !dbg !2774
}

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
