; ModuleID = 'bessel_Yn.ll'
source_filename = "bessel_Yn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Yn.c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_Yn_e(n, x, &result)\00", align 1
@0 = private unnamed_addr constant [19 x i8] c"gsl_sf_bessel_Yn_e\00"
@1 = private unnamed_addr constant [13 x i8] c"bessel_Yn.ll\00"
@2 = private unnamed_addr constant [18 x i8] c"bessel_Yn_small_x\00"
@3 = private unnamed_addr constant [13 x i8] c"bessel_Yn.ll\00"
@4 = private unnamed_addr constant [23 x i8] c"gsl_sf_bessel_Yn_array\00"
@5 = private unnamed_addr constant [13 x i8] c"bessel_Yn.ll\00"
@6 = private unnamed_addr constant [17 x i8] c"gsl_sf_bessel_Yn\00"
@7 = private unnamed_addr constant [13 x i8] c"bessel_Yn.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Yn_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !48 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !61, metadata !62), !dbg !63
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !64, metadata !62), !dbg !65
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !66, metadata !62), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %8, metadata !68, metadata !62), !dbg !69
  store i32 1, i32* %8, align 4, !dbg !69
  %23 = load i32, i32* %5, align 4, !dbg !70
  %24 = icmp slt i32 %23, 0, !dbg !72
  %25 = sext i32 %23 to i64, !dbg !73
  %26 = call i1 @iCmpInstHandler(i64 %25, i64 0, i1 %24, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368197232, i32 105, i32 8), !dbg !73
  br i1 %26, label %27, label %37, !dbg !73

; <label>:27:                                     ; preds = %3
  %28 = load i32, i32* %5, align 4, !dbg !74
  %29 = sub nsw i32 0, %28, !dbg !76
  store i32 %29, i32* %5, align 4, !dbg !77
  %30 = load i32, i32* %5, align 4, !dbg !78
  %31 = and i32 %30, 1, !dbg !78
  %32 = icmp ne i32 %31, 0, !dbg !78
  %33 = sext i32 %31 to i64, !dbg !80
  %34 = call i1 @iCmpInstHandler(i64 %33, i64 0, i1 %32, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368201584, i32 108, i32 8), !dbg !80
  br i1 %34, label %35, label %36, !dbg !80

; <label>:35:                                     ; preds = %27
  store i32 -1, i32* %8, align 4, !dbg !81
  br label %36, !dbg !83

; <label>:36:                                     ; preds = %35, %27
  br label %37, !dbg !84

; <label>:37:                                     ; preds = %36, %3
  %38 = load i32, i32* %5, align 4, !dbg !85
  %39 = icmp eq i32 %38, 0, !dbg !87
  %40 = sext i32 %38 to i64, !dbg !88
  %41 = call i1 @iCmpInstHandler(i64 %40, i64 0, i1 %39, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368204400, i32 113, i32 8), !dbg !88
  br i1 %41, label %42, label %53, !dbg !88

; <label>:42:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i32* %9, metadata !89, metadata !62), !dbg !91
  %43 = load double, double* %6, align 8, !dbg !92
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !93
  %45 = call i32 @gsl_sf_bessel_Y0_e(double %43, %struct.gsl_sf_result_struct* %44), !dbg !94
  store i32 %45, i32* %9, align 4, !dbg !91
  %46 = load i32, i32* %8, align 4, !dbg !95
  %47 = sitofp i32 %46 to double, !dbg !95
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !96
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !97
  %50 = load double, double* %49, align 8, !dbg !98
  %51 = fmul double %50, %47, !dbg !98
  call void @fMulHandler(double %50, double %47, double %51, i64 94570368212728, i64 94570368210248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368213136, i32 115, i32 17), !dbg !98
  store double %51, double* %49, align 8, !dbg !98
  %52 = load i32, i32* %9, align 4, !dbg !99
  store i32 %52, i32* %4, align 4, !dbg !100
  br label %225, !dbg !100

; <label>:53:                                     ; preds = %37
  %54 = load i32, i32* %5, align 4, !dbg !101
  %55 = icmp eq i32 %54, 1, !dbg !103
  %56 = sext i32 %54 to i64, !dbg !104
  %57 = call i1 @iCmpInstHandler(i64 %56, i64 1, i1 %55, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368217856, i32 118, i32 13), !dbg !104
  br i1 %57, label %58, label %69, !dbg !104

; <label>:58:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata i32* %10, metadata !105, metadata !62), !dbg !107
  %59 = load double, double* %6, align 8, !dbg !108
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !109
  %61 = call i32 @gsl_sf_bessel_Y1_e(double %59, %struct.gsl_sf_result_struct* %60), !dbg !110
  store i32 %61, i32* %10, align 4, !dbg !107
  %62 = load i32, i32* %8, align 4, !dbg !111
  %63 = sitofp i32 %62 to double, !dbg !111
  %64 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !112
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %64, i32 0, i32 0, !dbg !113
  %66 = load double, double* %65, align 8, !dbg !114
  %67 = fmul double %66, %63, !dbg !114
  call void @fMulHandler(double %66, double %63, double %67, i64 94570368226232, i64 94570368223752, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368226640, i32 120, i32 17), !dbg !114
  store double %67, double* %65, align 8, !dbg !114
  %68 = load i32, i32* %10, align 4, !dbg !115
  store i32 %68, i32* %4, align 4, !dbg !116
  br label %225, !dbg !116

; <label>:69:                                     ; preds = %53
  %70 = load double, double* %6, align 8, !dbg !117
  %71 = fcmp ole double %70, 0.000000e+00, !dbg !120
  %72 = call i1 @fCmpInstHandler(double %70, double 0.000000e+00, i1 %71, i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368233344, i32 124, i32 10), !dbg !121
  br i1 %72, label %73, label %82, !dbg !121

; <label>:73:                                     ; preds = %69
  br label %74, !dbg !122, !llvm.loop !124

; <label>:74:                                     ; preds = %73
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !125
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !125
  store double 0x7FF8000000000000, double* %76, align 8, !dbg !125
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !125
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %77, i32 0, i32 1, !dbg !125
  store double 0x7FF8000000000000, double* %78, align 8, !dbg !125
  br label %79, !dbg !125, !llvm.loop !128

; <label>:79:                                     ; preds = %74
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 125, i32 1), !dbg !130
  store i32 1, i32* %4, align 4, !dbg !130
  br label %225, !dbg !130
                                                  ; No predecessors!
  br label %81, !dbg !133

; <label>:81:                                     ; preds = %80
  br label %82, !dbg !135

; <label>:82:                                     ; preds = %81, %69
  %83 = load double, double* %6, align 8, !dbg !136
  %84 = fcmp olt double %83, 5.000000e+00, !dbg !138
  %85 = call i1 @fCmpInstHandler(double %83, double 5.000000e+00, i1 %84, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368247792, i32 127, i32 10), !dbg !139
  br i1 %85, label %86, label %98, !dbg !139

; <label>:86:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata i32* %11, metadata !140, metadata !62), !dbg !142
  %87 = load i32, i32* %5, align 4, !dbg !143
  %88 = load double, double* %6, align 8, !dbg !144
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !145
  %90 = call i32 @bessel_Yn_small_x(i32 %87, double %88, %struct.gsl_sf_result_struct* %89), !dbg !146
  store i32 %90, i32* %11, align 4, !dbg !142
  %91 = load i32, i32* %8, align 4, !dbg !147
  %92 = sitofp i32 %91 to double, !dbg !147
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !148
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 0, !dbg !149
  %95 = load double, double* %94, align 8, !dbg !150
  %96 = fmul double %95, %92, !dbg !150
  call void @fMulHandler(double %95, double %92, double %96, i64 94570368256600, i64 94570368254120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368257008, i32 129, i32 19), !dbg !150
  store double %96, double* %94, align 8, !dbg !150
  %97 = load i32, i32* %11, align 4, !dbg !151
  store i32 %97, i32* %4, align 4, !dbg !152
  br label %225, !dbg !152

; <label>:98:                                     ; preds = %82
  %99 = load double, double* %6, align 8, !dbg !153
  %100 = fmul double 0x3ED965FEA53D6E41, %99, !dbg !155
  call void @fMulHandler(double 0x3ED965FEA53D6E41, double %99, double %100, i64 0, i64 94570368261240, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368261648, i32 132, i32 35), !dbg !156
  %101 = load i32, i32* %5, align 4, !dbg !156
  %102 = load i32, i32* %5, align 4, !dbg !157
  %103 = mul nsw i32 %101, %102, !dbg !158
  %104 = sitofp i32 %103 to double, !dbg !156
  %105 = fadd double %104, 1.000000e+00, !dbg !159
  call void @fAddHandler(double %104, double 1.000000e+00, double %105, i64 94570368263224, i64 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368264992, i32 132, i32 46), !dbg !160
  %106 = fcmp ogt double %100, %105, !dbg !160
  %107 = call i1 @fCmpInstHandler(double %100, double %105, i1 %106, i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368265376, i32 132, i32 39), !dbg !161
  br i1 %107, label %108, label %121, !dbg !161

; <label>:108:                                    ; preds = %98
  call void @llvm.dbg.declare(metadata i32* %12, metadata !162, metadata !62), !dbg !164
  %109 = load i32, i32* %5, align 4, !dbg !165
  %110 = sitofp i32 %109 to double, !dbg !166
  %111 = load double, double* %6, align 8, !dbg !167
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !168
  %113 = call i32 @gsl_sf_bessel_Ynu_asympx_e(double %110, double %111, %struct.gsl_sf_result_struct* %112), !dbg !169
  store i32 %113, i32* %12, align 4, !dbg !164
  %114 = load i32, i32* %8, align 4, !dbg !170
  %115 = sitofp i32 %114 to double, !dbg !170
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !171
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 0, !dbg !172
  %118 = load double, double* %117, align 8, !dbg !173
  %119 = fmul double %118, %115, !dbg !173
  call void @fMulHandler(double %118, double %115, double %119, i64 94570368274584, i64 94570368272104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368274992, i32 134, i32 19), !dbg !173
  store double %119, double* %117, align 8, !dbg !173
  %120 = load i32, i32* %12, align 4, !dbg !174
  store i32 %120, i32* %4, align 4, !dbg !175
  br label %225, !dbg !175

; <label>:121:                                    ; preds = %98
  %122 = load i32, i32* %5, align 4, !dbg !176
  %123 = icmp sgt i32 %122, 50, !dbg !178
  %124 = sext i32 %122 to i64, !dbg !179
  %125 = call i1 @iCmpInstHandler(i64 %124, i64 50, i1 %123, i32 38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368279632, i32 137, i32 15), !dbg !179
  br i1 %125, label %126, label %139, !dbg !179

; <label>:126:                                    ; preds = %121
  call void @llvm.dbg.declare(metadata i32* %13, metadata !180, metadata !62), !dbg !182
  %127 = load i32, i32* %5, align 4, !dbg !183
  %128 = sitofp i32 %127 to double, !dbg !184
  %129 = load double, double* %6, align 8, !dbg !185
  %130 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !186
  %131 = call i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double %128, double %129, %struct.gsl_sf_result_struct* %130), !dbg !187
  store i32 %131, i32* %13, align 4, !dbg !182
  %132 = load i32, i32* %8, align 4, !dbg !188
  %133 = sitofp i32 %132 to double, !dbg !188
  %134 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !189
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %134, i32 0, i32 0, !dbg !190
  %136 = load double, double* %135, align 8, !dbg !191
  %137 = fmul double %136, %133, !dbg !191
  call void @fMulHandler(double %136, double %133, double %137, i64 94570368288840, i64 94570368286360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368289248, i32 139, i32 19), !dbg !191
  store double %137, double* %135, align 8, !dbg !191
  %138 = load i32, i32* %13, align 4, !dbg !192
  store i32 %138, i32* %4, align 4, !dbg !193
  br label %225, !dbg !193

; <label>:139:                                    ; preds = %121
  call void @llvm.dbg.declare(metadata double* %14, metadata !194, metadata !62), !dbg !196
  %140 = load double, double* %6, align 8, !dbg !197
  %141 = fdiv double 2.000000e+00, %140, !dbg !198
  call void @fDivHandler(double 2.000000e+00, double %140, double %141, i64 0, i64 94570368294584, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368295056, i32 143, i32 30), !dbg !196
  store double %141, double* %14, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !199, metadata !62), !dbg !200
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !201, metadata !62), !dbg !202
  call void @llvm.dbg.declare(metadata i32* %17, metadata !203, metadata !62), !dbg !204
  %142 = load double, double* %6, align 8, !dbg !205
  %143 = call i32 @gsl_sf_bessel_Y1_e(double %142, %struct.gsl_sf_result_struct* %15), !dbg !206
  store i32 %143, i32* %17, align 4, !dbg !204
  call void @llvm.dbg.declare(metadata i32* %18, metadata !207, metadata !62), !dbg !208
  %144 = load double, double* %6, align 8, !dbg !209
  %145 = call i32 @gsl_sf_bessel_Y0_e(double %144, %struct.gsl_sf_result_struct* %16), !dbg !210
  store i32 %145, i32* %18, align 4, !dbg !208
  call void @llvm.dbg.declare(metadata double* %19, metadata !211, metadata !62), !dbg !212
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !213
  %147 = load double, double* %146, align 8, !dbg !213
  store double %147, double* %19, align 8, !dbg !212
  call void @llvm.dbg.declare(metadata double* %20, metadata !214, metadata !62), !dbg !215
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !216
  %149 = load double, double* %148, align 8, !dbg !216
  store double %149, double* %20, align 8, !dbg !215
  call void @llvm.dbg.declare(metadata double* %21, metadata !217, metadata !62), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %22, metadata !219, metadata !62), !dbg !220
  store i32 1, i32* %22, align 4, !dbg !221
  br label %150, !dbg !223

; <label>:150:                                    ; preds = %168, %139
  %151 = load i32, i32* %22, align 4, !dbg !224
  %152 = load i32, i32* %5, align 4, !dbg !227
  %153 = icmp slt i32 %151, %152, !dbg !228
  %154 = sext i32 %151 to i64, !dbg !229
  %155 = sext i32 %152 to i64, !dbg !229
  %156 = call i1 @iCmpInstHandler(i64 %154, i64 %155, i1 %153, i32 40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368322272, i32 153, i32 17), !dbg !229
  br i1 %156, label %157, label %171, !dbg !229

; <label>:157:                                    ; preds = %150
  %158 = load i32, i32* %22, align 4, !dbg !230
  %159 = sitofp i32 %158 to double, !dbg !230
  %160 = load double, double* %14, align 8, !dbg !232
  %161 = fmul double %159, %160, !dbg !233
  call void @fMulHandler(double %159, double %160, double %161, i64 94570368323704, i64 94570368325352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368325760, i32 154, i32 16), !dbg !234
  %162 = load double, double* %20, align 8, !dbg !234
  %163 = fmul double %161, %162, !dbg !235
  call void @fMulHandler(double %161, double %162, double %163, i64 94570368325760, i64 94570368326152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368326560, i32 154, i32 27), !dbg !236
  %164 = load double, double* %19, align 8, !dbg !236
  %165 = fsub double %163, %164, !dbg !237
  call void @fSubHandler(double %163, double %164, double %165, i64 94570368326560, i64 94570368326952, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368327360, i32 154, i32 31), !dbg !238
  store double %165, double* %21, align 8, !dbg !238
  %166 = load double, double* %20, align 8, !dbg !239
  store double %166, double* %19, align 8, !dbg !240
  %167 = load double, double* %21, align 8, !dbg !241
  store double %167, double* %20, align 8, !dbg !242
  br label %168, !dbg !243

; <label>:168:                                    ; preds = %157
  %169 = load i32, i32* %22, align 4, !dbg !244
  %170 = add nsw i32 %169, 1, !dbg !244
  store i32 %170, i32* %22, align 4, !dbg !244
  br label %150, !dbg !246, !llvm.loop !247

; <label>:171:                                    ; preds = %150
  %172 = load i32, i32* %8, align 4, !dbg !249
  %173 = sitofp i32 %172 to double, !dbg !249
  %174 = load double, double* %20, align 8, !dbg !250
  %175 = fmul double %173, %174, !dbg !251
  call void @fMulHandler(double %173, double %174, double %175, i64 94570368333416, i64 94570368335064, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368335472, i32 158, i32 27), !dbg !252
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !252
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %176, i32 0, i32 0, !dbg !253
  store double %175, double* %177, align 8, !dbg !254
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !255
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 0, !dbg !256
  %180 = load double, double* %179, align 8, !dbg !256
  %181 = call double @fabs(double %180) #1, !dbg !257
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !258
  %183 = load double, double* %182, align 8, !dbg !258
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !259
  %185 = load double, double* %184, align 8, !dbg !259
  %186 = fdiv double %183, %185, !dbg !260
  call void @fDivHandler(double %183, double %185, double %186, i64 94570368341304, i64 94570368343400, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368345072, i32 159, i32 56), !dbg !261
  %187 = call double @fabs(double %186) #1, !dbg !261
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !263
  %189 = load double, double* %188, align 8, !dbg !263
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !264
  %191 = load double, double* %190, align 8, !dbg !264
  %192 = fdiv double %189, %191, !dbg !265
  call void @fDivHandler(double %189, double %191, double %192, i64 94570368346456, i64 94570368348552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368350224, i32 159, i32 83), !dbg !266
  %193 = call double @fabs(double %192) #1, !dbg !266
  %194 = fadd double %187, %193, !dbg !268
  call void @fAddHandler(double %187, double %193, double %194, i64 94570368345552, i64 94570368350704, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368351184, i32 159, i32 67), !dbg !269
  %195 = fmul double %181, %194, !dbg !269
  call void @fMulHandler(double %181, double %194, double %195, i64 94570368340368, i64 94570368351184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368351600, i32 159, i32 40), !dbg !270
  %196 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !270
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %196, i32 0, i32 1, !dbg !271
  store double %195, double* %197, align 8, !dbg !272
  %198 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !273
  %199 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %198, i32 0, i32 0, !dbg !274
  %200 = load double, double* %199, align 8, !dbg !274
  %201 = call double @fabs(double %200) #1, !dbg !275
  %202 = fmul double 0x3CC0000000000000, %201, !dbg !276
  call void @fMulHandler(double 0x3CC0000000000000, double %201, double %202, i64 0, i64 94570368355808, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368356352, i32 160, i32 44), !dbg !277
  %203 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !277
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %203, i32 0, i32 1, !dbg !278
  %205 = load double, double* %204, align 8, !dbg !279
  %206 = fadd double %205, %202, !dbg !279
  call void @fAddHandler(double %205, double %202, double %206, i64 94570368357576, i64 94570368356352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368357984, i32 160, i32 19), !dbg !279
  store double %206, double* %204, align 8, !dbg !279
  %207 = load i32, i32* %17, align 4, !dbg !280
  %208 = icmp ne i32 %207, 0, !dbg !280
  %209 = sext i32 %207 to i64, !dbg !280
  %210 = call i1 @iCmpInstHandler(i64 %209, i64 0, i1 %208, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368360176, i32 162, i32 14), !dbg !280
  br i1 %210, label %211, label %213, !dbg !280

; <label>:211:                                    ; preds = %171
  %212 = load i32, i32* %17, align 4, !dbg !281
  br label %223, !dbg !281

; <label>:213:                                    ; preds = %171
  %214 = load i32, i32* %18, align 4, !dbg !282
  %215 = icmp ne i32 %214, 0, !dbg !282
  %216 = sext i32 %214 to i64, !dbg !282
  %217 = call i1 @iCmpInstHandler(i64 %216, i64 0, i1 %215, i32 33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @1, i32 0, i32 0), i64 94570368364720, i32 162, i32 14), !dbg !282
  br i1 %217, label %218, label %220, !dbg !282

; <label>:218:                                    ; preds = %213
  %219 = load i32, i32* %18, align 4, !dbg !283
  br label %221, !dbg !283

; <label>:220:                                    ; preds = %213
  br label %221, !dbg !285

; <label>:221:                                    ; preds = %220, %218
  %222 = phi i32 [ %219, %218 ], [ 0, %220 ], !dbg !287
  br label %223, !dbg !287

; <label>:223:                                    ; preds = %221, %211
  %224 = phi i32 [ %212, %211 ], [ %222, %221 ], !dbg !289
  store i32 %224, i32* %4, align 4, !dbg !291
  br label %225, !dbg !291

; <label>:225:                                    ; preds = %223, %126, %108, %86, %79, %58, %42
  %226 = load i32, i32* %4, align 4, !dbg !292
  ret i32 %226, !dbg !292
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @gsl_sf_bessel_Y0_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_Y1_e(double, %struct.gsl_sf_result_struct*) #2

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @bessel_Yn_small_x(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !293 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !297, metadata !62), !dbg !298
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !299, metadata !62), !dbg !300
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !301, metadata !62), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %8, metadata !303, metadata !62), !dbg !304
  call void @llvm.dbg.declare(metadata double* %9, metadata !305, metadata !62), !dbg !306
  %26 = load double, double* %6, align 8, !dbg !307
  %27 = fmul double 2.500000e-01, %26, !dbg !308
  call void @fMulHandler(double 2.500000e-01, double %26, double %27, i64 0, i64 94570368251432, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368384096, i32 41, i32 19), !dbg !309
  %28 = load double, double* %6, align 8, !dbg !309
  %29 = fmul double %27, %28, !dbg !310
  call void @fMulHandler(double %27, double %28, double %29, i64 94570368384096, i64 94570368244040, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368384768, i32 41, i32 23), !dbg !306
  store double %29, double* %9, align 8, !dbg !306
  call void @llvm.dbg.declare(metadata double* %10, metadata !311, metadata !62), !dbg !312
  %30 = load double, double* %6, align 8, !dbg !313
  %31 = fmul double 5.000000e-01, %30, !dbg !314
  call void @fMulHandler(double 5.000000e-01, double %30, double %31, i64 0, i64 94570368221096, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368390400, i32 42, i32 26), !dbg !315
  %32 = call double @log(double %31) #5, !dbg !315
  call void @callOneArgHandler(i32 12, double %31, double %32, i64 94570368390400, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368391024, i32 42, i32 19), !dbg !312
  store double %32, double* %10, align 8, !dbg !312
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !316, metadata !62), !dbg !317
  call void @llvm.dbg.declare(metadata double* %12, metadata !318, metadata !62), !dbg !319
  call void @llvm.dbg.declare(metadata double* %13, metadata !320, metadata !62), !dbg !321
  call void @llvm.dbg.declare(metadata double* %14, metadata !322, metadata !62), !dbg !323
  call void @llvm.dbg.declare(metadata double* %15, metadata !324, metadata !62), !dbg !325
  call void @llvm.dbg.declare(metadata double* %16, metadata !326, metadata !62), !dbg !327
  call void @llvm.dbg.declare(metadata double* %17, metadata !328, metadata !62), !dbg !329
  call void @llvm.dbg.declare(metadata double* %18, metadata !330, metadata !62), !dbg !331
  %33 = load i32, i32* %5, align 4, !dbg !332
  %34 = sub nsw i32 %33, 1, !dbg !333
  %35 = call i32 @gsl_sf_lnfact_e(i32 %34, %struct.gsl_sf_result_struct* %11), !dbg !334
  %36 = load i32, i32* %5, align 4, !dbg !335
  %37 = sub nsw i32 0, %36, !dbg !336
  %38 = sitofp i32 %37 to double, !dbg !336
  %39 = load double, double* %10, align 8, !dbg !337
  %40 = fmul double %38, %39, !dbg !338
  call void @fMulHandler(double %38, double %39, double %40, i64 94570368404776, i64 94570368406424, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368406832, i32 50, i32 15), !dbg !339
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !339
  %42 = load double, double* %41, align 8, !dbg !339
  %43 = fadd double %40, %42, !dbg !340
  call void @fAddHandler(double %40, double %42, double %43, i64 94570368406832, i64 94570368407672, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368409344, i32 50, i32 23), !dbg !341
  store double %43, double* %15, align 8, !dbg !341
  %44 = load double, double* %15, align 8, !dbg !342
  %45 = fcmp ogt double %44, 0x40861642FEFA39EF, !dbg !344
  %46 = call i1 @fCmpInstHandler(double %44, double 0x40861642FEFA39EF, i1 %45, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368410624, i32 51, i32 14), !dbg !345
  br i1 %46, label %47, label %50, !dbg !345

; <label>:47:                                     ; preds = %3
  br label %48, !dbg !346, !llvm.loop !348

; <label>:48:                                     ; preds = %47
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 51, i32 16), !dbg !350
  store i32 16, i32* %4, align 4, !dbg !350
  br label %197, !dbg !350
                                                  ; No predecessors!
  br label %50, !dbg !353

; <label>:50:                                     ; preds = %49, %3
  store double 1.000000e+00, double* %14, align 8, !dbg !355
  store double 1.000000e+00, double* %12, align 8, !dbg !356
  store i32 1, i32* %8, align 4, !dbg !357
  br label %51, !dbg !359

; <label>:51:                                     ; preds = %73, %50
  %52 = load i32, i32* %8, align 4, !dbg !360
  %53 = load i32, i32* %5, align 4, !dbg !363
  %54 = sub nsw i32 %53, 1, !dbg !364
  %55 = icmp sle i32 %52, %54, !dbg !365
  %56 = sext i32 %52 to i64, !dbg !366
  %57 = sext i32 %54 to i64, !dbg !366
  %58 = call i1 @iCmpInstHandler(i64 %56, i64 %57, i1 %55, i32 41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368418544, i32 55, i32 13), !dbg !366
  br i1 %58, label %59, label %76, !dbg !366

; <label>:59:                                     ; preds = %51
  %60 = load double, double* %9, align 8, !dbg !367
  %61 = load i32, i32* %8, align 4, !dbg !369
  %62 = load i32, i32* %5, align 4, !dbg !370
  %63 = load i32, i32* %8, align 4, !dbg !371
  %64 = sub nsw i32 %62, %63, !dbg !372
  %65 = mul nsw i32 %61, %64, !dbg !373
  %66 = sitofp i32 %65 to double, !dbg !374
  %67 = fdiv double %60, %66, !dbg !375
  call void @fDivHandler(double %60, double %66, double %67, i64 94570368419656, i64 94570368421960, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368422368, i32 56, i32 16), !dbg !376
  %68 = load double, double* %12, align 8, !dbg !376
  %69 = fmul double %68, %67, !dbg !376
  call void @fMulHandler(double %68, double %67, double %69, i64 94570368422760, i64 94570368422368, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368423168, i32 56, i32 12), !dbg !376
  store double %69, double* %12, align 8, !dbg !376
  %70 = load double, double* %12, align 8, !dbg !377
  %71 = load double, double* %14, align 8, !dbg !378
  %72 = fadd double %71, %70, !dbg !378
  call void @fAddHandler(double %71, double %70, double %72, i64 94570368425336, i64 94570368424952, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368425744, i32 57, i32 10), !dbg !378
  store double %72, double* %14, align 8, !dbg !378
  br label %73, !dbg !379

; <label>:73:                                     ; preds = %59
  %74 = load i32, i32* %8, align 4, !dbg !380
  %75 = add nsw i32 %74, 1, !dbg !380
  store i32 %75, i32* %8, align 4, !dbg !380
  br label %51, !dbg !382, !llvm.loop !383

; <label>:76:                                     ; preds = %51
  %77 = load double, double* %15, align 8, !dbg !385
  %78 = call double @exp(double %77) #5, !dbg !386
  call void @callOneArgHandler(i32 11, double %77, double %78, i64 94570368430856, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368431536, i32 59, i32 12), !dbg !387
  %79 = fsub double -0.000000e+00, %78, !dbg !387
  call void @fSubHandler(double -0.000000e+00, double %78, double %79, i64 0, i64 94570368431536, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368432112, i32 59, i32 11), !dbg !388
  %80 = load double, double* %14, align 8, !dbg !388
  %81 = fmul double %79, %80, !dbg !389
  call void @fMulHandler(double %79, double %80, double %81, i64 94570368432112, i64 94570368432504, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368432912, i32 59, i32 25), !dbg !390
  %82 = fdiv double %81, 0x400921FB54442D18, !dbg !390
  call void @fDivHandler(double %81, double 0x400921FB54442D18, double %82, i64 94570368432912, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368433392, i32 59, i32 32), !dbg !391
  store double %82, double* %13, align 8, !dbg !391
  %83 = load i32, i32* %5, align 4, !dbg !392
  %84 = sitofp i32 %83 to double, !dbg !392
  %85 = load double, double* %10, align 8, !dbg !393
  %86 = fmul double %84, %85, !dbg !394
  call void @fMulHandler(double %84, double %85, double %86, i64 94570368434584, i64 94570368436232, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368436640, i32 61, i32 16), !dbg !395
  %87 = call double @exp(double %86) #5, !dbg !395
  call void @callOneArgHandler(i32 11, double %86, double %87, i64 94570368436640, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368437120, i32 61, i32 11), !dbg !396
  %88 = fsub double -0.000000e+00, %87, !dbg !396
  call void @fSubHandler(double -0.000000e+00, double %87, double %88, i64 0, i64 94570368437120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368437600, i32 61, i32 10), !dbg !397
  %89 = fdiv double %88, 0x400921FB54442D18, !dbg !397
  call void @fDivHandler(double %88, double 0x400921FB54442D18, double %89, i64 94570368437600, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368438016, i32 61, i32 25), !dbg !398
  store double %89, double* %18, align 8, !dbg !398
  %90 = load double, double* %18, align 8, !dbg !399
  %91 = call double @fabs(double %90) #1, !dbg !401
  %92 = fcmp ogt double %91, 0.000000e+00, !dbg !402
  %93 = call i1 @fCmpInstHandler(double %91, double 0.000000e+00, i1 %92, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368439776, i32 62, i32 17), !dbg !403
  br i1 %93, label %94, label %170, !dbg !403

; <label>:94:                                     ; preds = %76
  call void @llvm.dbg.declare(metadata i32* %19, metadata !404, metadata !62), !dbg !406
  store i32 20, i32* %19, align 4, !dbg !406
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !407, metadata !62), !dbg !408
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !409, metadata !62), !dbg !410
  call void @llvm.dbg.declare(metadata double* %22, metadata !411, metadata !62), !dbg !412
  store double 1.000000e+00, double* %22, align 8, !dbg !412
  call void @llvm.dbg.declare(metadata double* %23, metadata !413, metadata !62), !dbg !414
  store double 1.000000e+00, double* %23, align 8, !dbg !414
  call void @llvm.dbg.declare(metadata double* %24, metadata !415, metadata !62), !dbg !416
  store double 0xBFE2788CFC6FB619, double* %24, align 8, !dbg !416
  call void @llvm.dbg.declare(metadata double* %25, metadata !417, metadata !62), !dbg !418
  %95 = load i32, i32* %5, align 4, !dbg !419
  %96 = call i32 @gsl_sf_psi_int_e(i32 %95, %struct.gsl_sf_result_struct* %20), !dbg !420
  %97 = load i32, i32* %5, align 4, !dbg !421
  %98 = call i32 @gsl_sf_fact_e(i32 %97, %struct.gsl_sf_result_struct* %21), !dbg !422
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !423
  %100 = load double, double* %99, align 8, !dbg !423
  %101 = load i32, i32* %5, align 4, !dbg !424
  %102 = sitofp i32 %101 to double, !dbg !424
  %103 = fdiv double 1.000000e+00, %102, !dbg !425
  call void @fDivHandler(double 1.000000e+00, double %102, double %103, i64 0, i64 94570368460360, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368462064, i32 72, i32 32), !dbg !426
  %104 = fadd double %100, %103, !dbg !426
  call void @fAddHandler(double %100, double %103, double %104, i64 94570368458328, i64 94570368462064, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368462448, i32 72, i32 27), !dbg !427
  store double %104, double* %25, align 8, !dbg !427
  %105 = load double, double* %24, align 8, !dbg !428
  %106 = load double, double* %25, align 8, !dbg !429
  %107 = fadd double %105, %106, !dbg !430
  call void @fAddHandler(double %105, double %106, double %107, i64 94570368463256, i64 94570368463640, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368464048, i32 73, i32 21), !dbg !431
  %108 = load double, double* %10, align 8, !dbg !431
  %109 = fmul double 2.000000e+00, %108, !dbg !432
  call void @fMulHandler(double 2.000000e+00, double %108, double %109, i64 0, i64 94570368464440, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368464880, i32 73, i32 38), !dbg !433
  %110 = fsub double %107, %109, !dbg !433
  call void @fSubHandler(double %107, double %109, double %110, i64 94570368464048, i64 94570368464880, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368465264, i32 73, i32 33), !dbg !434
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !434
  %112 = load double, double* %111, align 8, !dbg !434
  %113 = fdiv double %110, %112, !dbg !435
  call void @fDivHandler(double %110, double %112, double %113, i64 94570368465264, i64 94570368466104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368467776, i32 73, i32 46), !dbg !436
  store double %113, double* %17, align 8, !dbg !436
  store i32 1, i32* %8, align 4, !dbg !437
  br label %114, !dbg !439

; <label>:114:                                    ; preds = %163, %94
  %115 = load i32, i32* %8, align 4, !dbg !440
  %116 = icmp slt i32 %115, 20, !dbg !443
  %117 = sext i32 %115 to i64, !dbg !444
  %118 = call i1 @iCmpInstHandler(i64 %117, i64 20, i1 %116, i32 40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368469872, i32 74, i32 15), !dbg !444
  br i1 %118, label %119, label %166, !dbg !444

; <label>:119:                                    ; preds = %114
  %120 = load i32, i32* %8, align 4, !dbg !445
  %121 = sitofp i32 %120 to double, !dbg !445
  %122 = fdiv double 1.000000e+00, %121, !dbg !447
  call void @fDivHandler(double 1.000000e+00, double %121, double %122, i64 0, i64 94570368471304, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368473008, i32 75, i32 22), !dbg !448
  %123 = load double, double* %24, align 8, !dbg !448
  %124 = fadd double %123, %122, !dbg !448
  call void @fAddHandler(double %123, double %122, double %124, i64 94570368473368, i64 94570368473008, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368473776, i32 75, i32 17), !dbg !448
  store double %124, double* %24, align 8, !dbg !448
  %125 = load i32, i32* %5, align 4, !dbg !449
  %126 = load i32, i32* %8, align 4, !dbg !450
  %127 = add nsw i32 %125, %126, !dbg !451
  %128 = sitofp i32 %127 to double, !dbg !452
  %129 = fdiv double 1.000000e+00, %128, !dbg !453
  call void @fDivHandler(double 1.000000e+00, double %128, double %129, i64 0, i64 94570368476744, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368477184, i32 76, i32 22), !dbg !454
  %130 = load double, double* %25, align 8, !dbg !454
  %131 = fadd double %130, %129, !dbg !454
  call void @fAddHandler(double %130, double %129, double %131, i64 94570368477544, i64 94570368477184, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368477952, i32 76, i32 17), !dbg !454
  store double %131, double* %25, align 8, !dbg !454
  %132 = load i32, i32* %8, align 4, !dbg !455
  %133 = sitofp i32 %132 to double, !dbg !455
  %134 = load double, double* %23, align 8, !dbg !456
  %135 = fmul double %134, %133, !dbg !456
  call void @fMulHandler(double %134, double %133, double %135, i64 94570368481768, i64 94570368480120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368482176, i32 77, i32 16), !dbg !456
  store double %135, double* %23, align 8, !dbg !456
  %136 = load i32, i32* %5, align 4, !dbg !457
  %137 = load i32, i32* %8, align 4, !dbg !458
  %138 = add nsw i32 %136, %137, !dbg !459
  %139 = sitofp i32 %138 to double, !dbg !457
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !460
  %141 = load double, double* %140, align 8, !dbg !461
  %142 = fmul double %141, %139, !dbg !461
  call void @fMulHandler(double %141, double %139, double %142, i64 94570368489304, i64 94570368487208, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368489712, i32 78, i32 20), !dbg !461
  store double %142, double* %140, align 8, !dbg !461
  %143 = load double, double* %9, align 8, !dbg !462
  %144 = fsub double -0.000000e+00, %143, !dbg !463
  call void @fSubHandler(double -0.000000e+00, double %143, double %144, i64 0, i64 94570368491496, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368491904, i32 79, i32 13), !dbg !464
  %145 = load double, double* %22, align 8, !dbg !464
  %146 = fmul double %145, %144, !dbg !464
  call void @fMulHandler(double %145, double %144, double %146, i64 94570368492296, i64 94570368491904, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368492704, i32 79, i32 10), !dbg !464
  store double %146, double* %22, align 8, !dbg !464
  %147 = load double, double* %22, align 8, !dbg !465
  %148 = load double, double* %24, align 8, !dbg !466
  %149 = load double, double* %25, align 8, !dbg !467
  %150 = fadd double %148, %149, !dbg !468
  call void @fAddHandler(double %148, double %149, double %150, i64 94570368494872, i64 94570368495256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368495664, i32 80, i32 28), !dbg !469
  %151 = load double, double* %10, align 8, !dbg !469
  %152 = fmul double 2.000000e+00, %151, !dbg !470
  call void @fMulHandler(double 2.000000e+00, double %151, double %152, i64 0, i64 94570368496056, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368496496, i32 80, i32 45), !dbg !471
  %153 = fsub double %150, %152, !dbg !471
  call void @fSubHandler(double %150, double %152, double %153, i64 94570368495664, i64 94570368496496, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368496880, i32 80, i32 40), !dbg !472
  %154 = fmul double %147, %153, !dbg !472
  call void @fMulHandler(double %147, double %153, double %154, i64 94570368494488, i64 94570368496880, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368497296, i32 80, i32 18), !dbg !473
  %155 = load double, double* %23, align 8, !dbg !473
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !474
  %157 = load double, double* %156, align 8, !dbg !474
  %158 = fmul double %155, %157, !dbg !475
  call void @fMulHandler(double %155, double %157, double %158, i64 94570368497688, i64 94570368498520, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368500192, i32 80, i32 61), !dbg !476
  %159 = fdiv double %154, %158, !dbg !476
  call void @fDivHandler(double %154, double %158, double %159, i64 94570368497296, i64 94570368500192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368500608, i32 80, i32 53), !dbg !477
  store double %159, double* %12, align 8, !dbg !477
  %160 = load double, double* %12, align 8, !dbg !478
  %161 = load double, double* %17, align 8, !dbg !479
  %162 = fadd double %161, %160, !dbg !479
  call void @fAddHandler(double %161, double %160, double %162, i64 94570368501800, i64 94570368501416, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368502208, i32 81, i32 12), !dbg !479
  store double %162, double* %17, align 8, !dbg !479
  br label %163, !dbg !480

; <label>:163:                                    ; preds = %119
  %164 = load i32, i32* %8, align 4, !dbg !481
  %165 = add nsw i32 %164, 1, !dbg !481
  store i32 %165, i32* %8, align 4, !dbg !481
  br label %114, !dbg !483, !llvm.loop !484

; <label>:166:                                    ; preds = %114
  %167 = load double, double* %18, align 8, !dbg !486
  %168 = load double, double* %17, align 8, !dbg !487
  %169 = fmul double %167, %168, !dbg !488
  call void @fMulHandler(double %167, double %168, double %169, i64 94570368507320, i64 94570368507640, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368508048, i32 83, i32 18), !dbg !489
  store double %169, double* %16, align 8, !dbg !489
  br label %171, !dbg !490

; <label>:170:                                    ; preds = %76
  store double 0.000000e+00, double* %16, align 8, !dbg !491
  br label %171

; <label>:171:                                    ; preds = %170, %166
  %172 = load double, double* %13, align 8, !dbg !493
  %173 = load double, double* %16, align 8, !dbg !494
  %174 = fadd double %172, %173, !dbg !495
  call void @fAddHandler(double %172, double %173, double %174, i64 94570368509832, i64 94570368510152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368510560, i32 89, i32 24), !dbg !496
  %175 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !496
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %175, i32 0, i32 0, !dbg !497
  store double %174, double* %176, align 8, !dbg !498
  %177 = load double, double* %15, align 8, !dbg !499
  %178 = call double @fabs(double %177) #1, !dbg !500
  %179 = load double, double* %13, align 8, !dbg !501
  %180 = call double @fabs(double %179) #1, !dbg !502
  %181 = fmul double %178, %180, !dbg !504
  call void @fMulHandler(double %178, double %180, double %181, i64 94570368512672, i64 94570368513600, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368514080, i32 90, i32 50), !dbg !505
  %182 = load double, double* %16, align 8, !dbg !505
  %183 = call double @fabs(double %182) #1, !dbg !506
  %184 = fadd double %181, %183, !dbg !508
  call void @fAddHandler(double %181, double %183, double %184, i64 94570368514080, i64 94570368514944, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368515424, i32 90, i32 63), !dbg !509
  %185 = fmul double 0x3CB0000000000000, %184, !dbg !509
  call void @fMulHandler(double 0x3CB0000000000000, double %184, double %185, i64 0, i64 94570368515424, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368515904, i32 90, i32 34), !dbg !510
  %186 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !510
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %186, i32 0, i32 1, !dbg !511
  store double %185, double* %187, align 8, !dbg !512
  %188 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !513
  %189 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %188, i32 0, i32 0, !dbg !514
  %190 = load double, double* %189, align 8, !dbg !514
  %191 = call double @fabs(double %190) #1, !dbg !515
  %192 = fmul double 0x3CC0000000000000, %191, !dbg !516
  call void @fMulHandler(double 0x3CC0000000000000, double %191, double %192, i64 0, i64 94570368520112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368520592, i32 91, i32 40), !dbg !517
  %193 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !517
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %193, i32 0, i32 1, !dbg !518
  %195 = load double, double* %194, align 8, !dbg !519
  %196 = fadd double %195, %192, !dbg !519
  call void @fAddHandler(double %195, double %192, double %196, i64 94570368521816, i64 94570368520592, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @3, i32 0, i32 0), i64 94570368522224, i32 91, i32 15), !dbg !519
  store double %196, double* %194, align 8, !dbg !519
  store i32 0, i32* %4, align 4, !dbg !520
  br label %197, !dbg !520

; <label>:197:                                    ; preds = %171, %48
  %198 = load i32, i32* %4, align 4, !dbg !521
  ret i32 %198, !dbg !521
}

declare i32 @gsl_sf_bessel_Ynu_asympx_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Yn_array(i32, i32, double, double*) #0 !dbg !522 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !526, metadata !62), !dbg !527
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !528, metadata !62), !dbg !529
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !530, metadata !62), !dbg !531
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !532, metadata !62), !dbg !533
  %20 = load i32, i32* %6, align 4, !dbg !534
  %21 = icmp slt i32 %20, 0, !dbg !536
  %22 = sext i32 %20 to i64, !dbg !537
  %23 = call i1 @iCmpInstHandler(i64 %22, i64 0, i1 %21, i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368534624, i32 173, i32 11), !dbg !537
  br i1 %23, label %35, label %24, !dbg !537

; <label>:24:                                     ; preds = %4
  %25 = load i32, i32* %7, align 4, !dbg !538
  %26 = load i32, i32* %6, align 4, !dbg !540
  %27 = icmp slt i32 %25, %26, !dbg !541
  %28 = sext i32 %25 to i64, !dbg !542
  %29 = sext i32 %26 to i64, !dbg !542
  %30 = call i1 @iCmpInstHandler(i64 %28, i64 %29, i1 %27, i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368536272, i32 173, i32 23), !dbg !542
  br i1 %30, label %35, label %31, !dbg !542

; <label>:31:                                     ; preds = %24
  %32 = load double, double* %8, align 8, !dbg !543
  %33 = fcmp ole double %32, 0.000000e+00, !dbg !545
  %34 = call i1 @fCmpInstHandler(double %32, double 0.000000e+00, i1 %33, i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368537584, i32 173, i32 35), !dbg !546
  br i1 %34, label %35, label %56, !dbg !546

; <label>:35:                                     ; preds = %31, %24, %4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !547, metadata !62), !dbg !549
  store i32 0, i32* %10, align 4, !dbg !550
  br label %36, !dbg !552

; <label>:36:                                     ; preds = %50, %35
  %37 = load i32, i32* %10, align 4, !dbg !553
  %38 = load i32, i32* %7, align 4, !dbg !556
  %39 = load i32, i32* %6, align 4, !dbg !557
  %40 = sub nsw i32 %38, %39, !dbg !558
  %41 = icmp sle i32 %37, %40, !dbg !559
  %42 = sext i32 %37 to i64, !dbg !560
  %43 = sext i32 %40 to i64, !dbg !560
  %44 = call i1 @iCmpInstHandler(i64 %42, i64 %43, i1 %41, i32 41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368542048, i32 175, i32 15), !dbg !560
  br i1 %44, label %45, label %53, !dbg !560

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* %10, align 4, !dbg !561
  %47 = sext i32 %46 to i64, !dbg !563
  %48 = load double*, double** %9, align 8, !dbg !563
  %49 = getelementptr inbounds double, double* %48, i64 %47, !dbg !563
  store double 0.000000e+00, double* %49, align 8, !dbg !564
  br label %50, !dbg !563

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %10, align 4, !dbg !565
  %52 = add nsw i32 %51, 1, !dbg !565
  store i32 %52, i32* %10, align 4, !dbg !565
  br label %36, !dbg !567, !llvm.loop !568

; <label>:53:                                     ; preds = %36
  br label %54, !dbg !570, !llvm.loop !571

; <label>:54:                                     ; preds = %53
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 176, i32 1), !dbg !572
  store i32 1, i32* %5, align 4, !dbg !572
  br label %148, !dbg !572
                                                  ; No predecessors!
  br label %148, !dbg !575

; <label>:56:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !576, metadata !62), !dbg !578
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !579, metadata !62), !dbg !580
  call void @llvm.dbg.declare(metadata i32* %13, metadata !581, metadata !62), !dbg !582
  %57 = load i32, i32* %6, align 4, !dbg !583
  %58 = load double, double* %8, align 8, !dbg !584
  %59 = call i32 @gsl_sf_bessel_Yn_e(i32 %57, double %58, %struct.gsl_sf_result_struct* %11), !dbg !585
  store i32 %59, i32* %13, align 4, !dbg !582
  call void @llvm.dbg.declare(metadata i32* %14, metadata !586, metadata !62), !dbg !587
  %60 = load i32, i32* %6, align 4, !dbg !588
  %61 = add nsw i32 %60, 1, !dbg !589
  %62 = load double, double* %8, align 8, !dbg !590
  %63 = call i32 @gsl_sf_bessel_Yn_e(i32 %61, double %62, %struct.gsl_sf_result_struct* %12), !dbg !591
  store i32 %63, i32* %14, align 4, !dbg !587
  call void @llvm.dbg.declare(metadata double* %15, metadata !592, metadata !62), !dbg !593
  call void @llvm.dbg.declare(metadata double* %16, metadata !594, metadata !62), !dbg !595
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !596
  %65 = load double, double* %64, align 8, !dbg !596
  store double %65, double* %16, align 8, !dbg !595
  call void @llvm.dbg.declare(metadata double* %17, metadata !597, metadata !62), !dbg !598
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !599
  %67 = load double, double* %66, align 8, !dbg !599
  store double %67, double* %17, align 8, !dbg !598
  call void @llvm.dbg.declare(metadata i32* %18, metadata !600, metadata !62), !dbg !601
  call void @llvm.dbg.declare(metadata i32* %19, metadata !602, metadata !62), !dbg !603
  %68 = load i32, i32* %13, align 4, !dbg !604
  %69 = icmp ne i32 %68, 0, !dbg !604
  %70 = sext i32 %68 to i64, !dbg !604
  %71 = call i1 @iCmpInstHandler(i64 %70, i64 0, i1 %69, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368581056, i32 188, i32 16), !dbg !604
  br i1 %71, label %72, label %74, !dbg !604

; <label>:72:                                     ; preds = %56
  %73 = load i32, i32* %13, align 4, !dbg !605
  br label %84, !dbg !605

; <label>:74:                                     ; preds = %56
  %75 = load i32, i32* %14, align 4, !dbg !607
  %76 = icmp ne i32 %75, 0, !dbg !607
  %77 = sext i32 %75 to i64, !dbg !607
  %78 = call i1 @iCmpInstHandler(i64 %77, i64 0, i1 %76, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368585600, i32 188, i32 16), !dbg !607
  br i1 %78, label %79, label %81, !dbg !607

; <label>:79:                                     ; preds = %74
  %80 = load i32, i32* %14, align 4, !dbg !609
  br label %82, !dbg !609

; <label>:81:                                     ; preds = %74
  br label %82, !dbg !611

; <label>:82:                                     ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ], !dbg !613
  br label %84, !dbg !613

; <label>:84:                                     ; preds = %82, %72
  %85 = phi i32 [ %73, %72 ], [ %83, %82 ], !dbg !615
  store i32 %85, i32* %19, align 4, !dbg !617
  %86 = load i32, i32* %19, align 4, !dbg !618
  %87 = icmp eq i32 %86, 0, !dbg !620
  %88 = sext i32 %86 to i64, !dbg !621
  %89 = call i1 @iCmpInstHandler(i64 %88, i64 0, i1 %87, i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368593392, i32 190, i32 13), !dbg !621
  br i1 %89, label %90, label %126, !dbg !621

; <label>:90:                                     ; preds = %84
  %91 = load i32, i32* %6, align 4, !dbg !622
  %92 = add nsw i32 %91, 1, !dbg !625
  store i32 %92, i32* %18, align 4, !dbg !626
  br label %93, !dbg !627

; <label>:93:                                     ; preds = %122, %90
  %94 = load i32, i32* %18, align 4, !dbg !628
  %95 = load i32, i32* %7, align 4, !dbg !631
  %96 = add nsw i32 %95, 1, !dbg !632
  %97 = icmp sle i32 %94, %96, !dbg !633
  %98 = sext i32 %94 to i64, !dbg !634
  %99 = sext i32 %96 to i64, !dbg !634
  %100 = call i1 @iCmpInstHandler(i64 %98, i64 %99, i1 %97, i32 41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368597328, i32 191, i32 22), !dbg !634
  br i1 %100, label %101, label %125, !dbg !634

; <label>:101:                                    ; preds = %93
  %102 = load double, double* %17, align 8, !dbg !635
  %103 = load i32, i32* %18, align 4, !dbg !637
  %104 = load i32, i32* %6, align 4, !dbg !638
  %105 = sub nsw i32 %103, %104, !dbg !639
  %106 = sub nsw i32 %105, 1, !dbg !640
  %107 = sext i32 %106 to i64, !dbg !641
  %108 = load double*, double** %9, align 8, !dbg !641
  %109 = getelementptr inbounds double, double* %108, i64 %107, !dbg !641
  store double %102, double* %109, align 8, !dbg !642
  %110 = load double, double* %17, align 8, !dbg !643
  %111 = fsub double -0.000000e+00, %110, !dbg !644
  call void @fSubHandler(double -0.000000e+00, double %110, double %111, i64 0, i64 94570368602952, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368603360, i32 193, i32 16), !dbg !645
  %112 = load i32, i32* %18, align 4, !dbg !645
  %113 = sitofp i32 %112 to double, !dbg !645
  %114 = fmul double 2.000000e+00, %113, !dbg !646
  call void @fMulHandler(double 2.000000e+00, double %113, double %114, i64 0, i64 94570368604136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368605840, i32 193, i32 27), !dbg !647
  %115 = load double, double* %8, align 8, !dbg !647
  %116 = fdiv double %114, %115, !dbg !648
  call void @fDivHandler(double %114, double %115, double %116, i64 94570368605840, i64 94570368606200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368606608, i32 193, i32 29), !dbg !649
  %117 = load double, double* %16, align 8, !dbg !649
  %118 = fmul double %116, %117, !dbg !650
  call void @fMulHandler(double %116, double %117, double %118, i64 94570368606608, i64 94570368607000, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368607408, i32 193, i32 32), !dbg !651
  %119 = fadd double %111, %118, !dbg !651
  call void @fAddHandler(double %111, double %118, double %119, i64 94570368603360, i64 94570368607408, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368607824, i32 193, i32 22), !dbg !652
  store double %119, double* %15, align 8, !dbg !652
  %120 = load double, double* %16, align 8, !dbg !653
  store double %120, double* %17, align 8, !dbg !654
  %121 = load double, double* %15, align 8, !dbg !655
  store double %121, double* %16, align 8, !dbg !656
  br label %122, !dbg !657

; <label>:122:                                    ; preds = %101
  %123 = load i32, i32* %18, align 4, !dbg !658
  %124 = add nsw i32 %123, 1, !dbg !658
  store i32 %124, i32* %18, align 4, !dbg !658
  br label %93, !dbg !660, !llvm.loop !661

; <label>:125:                                    ; preds = %93
  br label %146, !dbg !663

; <label>:126:                                    ; preds = %84
  %127 = load i32, i32* %6, align 4, !dbg !664
  store i32 %127, i32* %18, align 4, !dbg !667
  br label %128, !dbg !668

; <label>:128:                                    ; preds = %142, %126
  %129 = load i32, i32* %18, align 4, !dbg !669
  %130 = load i32, i32* %7, align 4, !dbg !672
  %131 = icmp sle i32 %129, %130, !dbg !673
  %132 = sext i32 %129 to i64, !dbg !674
  %133 = sext i32 %130 to i64, !dbg !674
  %134 = call i1 @iCmpInstHandler(i64 %132, i64 %133, i1 %131, i32 41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @5, i32 0, i32 0), i64 94570368616016, i32 199, i32 20), !dbg !674
  br i1 %134, label %135, label %145, !dbg !674

; <label>:135:                                    ; preds = %128
  %136 = load i32, i32* %18, align 4, !dbg !675
  %137 = load i32, i32* %6, align 4, !dbg !677
  %138 = sub nsw i32 %136, %137, !dbg !678
  %139 = sext i32 %138 to i64, !dbg !679
  %140 = load double*, double** %9, align 8, !dbg !679
  %141 = getelementptr inbounds double, double* %140, i64 %139, !dbg !679
  store double 0.000000e+00, double* %141, align 8, !dbg !680
  br label %142, !dbg !681

; <label>:142:                                    ; preds = %135
  %143 = load i32, i32* %18, align 4, !dbg !682
  %144 = add nsw i32 %143, 1, !dbg !682
  store i32 %144, i32* %18, align 4, !dbg !682
  br label %128, !dbg !684, !llvm.loop !685

; <label>:145:                                    ; preds = %128
  br label %146

; <label>:146:                                    ; preds = %145, %125
  %147 = load i32, i32* %19, align 4, !dbg !687
  store i32 %147, i32* %5, align 4, !dbg !688
  br label %148, !dbg !688

; <label>:148:                                    ; preds = %146, %55, %54
  %149 = load i32, i32* %5, align 4, !dbg !689
  ret i32 %149, !dbg !689
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Yn(i32, double) #0 !dbg !690 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !693, metadata !62), !dbg !694
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !695, metadata !62), !dbg !696
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !697, metadata !62), !dbg !698
  call void @llvm.dbg.declare(metadata i32* %7, metadata !699, metadata !62), !dbg !698
  %8 = load i32, i32* %4, align 4, !dbg !698
  %9 = load double, double* %5, align 8, !dbg !698
  %10 = call i32 @gsl_sf_bessel_Yn_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !698
  store i32 %10, i32* %7, align 4, !dbg !698
  %11 = load i32, i32* %7, align 4, !dbg !700
  %12 = icmp ne i32 %11, 0, !dbg !700
  %13 = sext i32 %11 to i64, !dbg !698
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i64 94570368637040, i32 215, i32 3), !dbg !698
  br i1 %14, label %15, label %21, !dbg !698

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !702, !llvm.loop !705

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !707
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 215, i32 %17), !dbg !707
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !707
  %19 = load double, double* %18, align 8, !dbg !707
  store double %19, double* %3, align 8, !dbg !707
  br label %24, !dbg !707
                                                  ; No predecessors!
  br label %21, !dbg !710

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !712
  %23 = load double, double* %22, align 8, !dbg !712
  store double %23, double* %3, align 8, !dbg !712
  br label %24, !dbg !712

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !714
  ret double %25, !dbg !714
}

; Function Attrs: nounwind
declare double @log(double) #4

declare i32 @gsl_sf_lnfact_e(i32, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @exp(double) #4

declare i32 @gsl_sf_psi_int_e(i32, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_fact_e(i32, %struct.gsl_sf_result_struct*) #2

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
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_Yn.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!48 = distinct !DISubprogram(name: "gsl_sf_bessel_Yn_e", scope: !1, file: !1, line: 101, type: !49, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
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
!61 = !DILocalVariable(name: "n", arg: 1, scope: !48, file: !1, line: 101, type: !51)
!62 = !DIExpression()
!63 = !DILocation(line: 101, column: 24, scope: !48)
!64 = !DILocalVariable(name: "x", arg: 2, scope: !48, file: !1, line: 101, type: !52)
!65 = !DILocation(line: 101, column: 40, scope: !48)
!66 = !DILocalVariable(name: "result", arg: 3, scope: !48, file: !1, line: 101, type: !53)
!67 = !DILocation(line: 101, column: 59, scope: !48)
!68 = !DILocalVariable(name: "sign", scope: !48, file: !1, line: 103, type: !51)
!69 = !DILocation(line: 103, column: 7, scope: !48)
!70 = !DILocation(line: 105, column: 6, scope: !71)
!71 = distinct !DILexicalBlock(scope: !48, file: !1, line: 105, column: 6)
!72 = !DILocation(line: 105, column: 8, scope: !71)
!73 = !DILocation(line: 105, column: 6, scope: !48)
!74 = !DILocation(line: 107, column: 10, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 105, column: 13)
!76 = !DILocation(line: 107, column: 9, scope: !75)
!77 = !DILocation(line: 107, column: 7, scope: !75)
!78 = !DILocation(line: 108, column: 8, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 108, column: 8)
!80 = !DILocation(line: 108, column: 8, scope: !75)
!81 = !DILocation(line: 108, column: 28, scope: !82)
!82 = !DILexicalBlockFile(scope: !79, file: !1, discriminator: 1)
!83 = !DILocation(line: 108, column: 23, scope: !82)
!84 = !DILocation(line: 109, column: 3, scope: !75)
!85 = !DILocation(line: 113, column: 6, scope: !86)
!86 = distinct !DILexicalBlock(scope: !48, file: !1, line: 113, column: 6)
!87 = !DILocation(line: 113, column: 8, scope: !86)
!88 = !DILocation(line: 113, column: 6, scope: !48)
!89 = !DILocalVariable(name: "status", scope: !90, file: !1, line: 114, type: !51)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 113, column: 14)
!91 = !DILocation(line: 114, column: 9, scope: !90)
!92 = !DILocation(line: 114, column: 37, scope: !90)
!93 = !DILocation(line: 114, column: 40, scope: !90)
!94 = !DILocation(line: 114, column: 18, scope: !90)
!95 = !DILocation(line: 115, column: 20, scope: !90)
!96 = !DILocation(line: 115, column: 5, scope: !90)
!97 = !DILocation(line: 115, column: 13, scope: !90)
!98 = !DILocation(line: 115, column: 17, scope: !90)
!99 = !DILocation(line: 116, column: 12, scope: !90)
!100 = !DILocation(line: 116, column: 5, scope: !90)
!101 = !DILocation(line: 118, column: 11, scope: !102)
!102 = distinct !DILexicalBlock(scope: !86, file: !1, line: 118, column: 11)
!103 = !DILocation(line: 118, column: 13, scope: !102)
!104 = !DILocation(line: 118, column: 11, scope: !86)
!105 = !DILocalVariable(name: "status", scope: !106, file: !1, line: 119, type: !51)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 118, column: 19)
!107 = !DILocation(line: 119, column: 9, scope: !106)
!108 = !DILocation(line: 119, column: 37, scope: !106)
!109 = !DILocation(line: 119, column: 40, scope: !106)
!110 = !DILocation(line: 119, column: 18, scope: !106)
!111 = !DILocation(line: 120, column: 20, scope: !106)
!112 = !DILocation(line: 120, column: 5, scope: !106)
!113 = !DILocation(line: 120, column: 13, scope: !106)
!114 = !DILocation(line: 120, column: 17, scope: !106)
!115 = !DILocation(line: 121, column: 12, scope: !106)
!116 = !DILocation(line: 121, column: 5, scope: !106)
!117 = !DILocation(line: 124, column: 8, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 124, column: 8)
!119 = distinct !DILexicalBlock(scope: !102, file: !1, line: 123, column: 8)
!120 = !DILocation(line: 124, column: 10, scope: !118)
!121 = !DILocation(line: 124, column: 8, scope: !119)
!122 = !DILocation(line: 125, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !1, line: 124, column: 18)
!124 = distinct !{!124, !122}
!125 = !DILocation(line: 125, column: 7, scope: !126)
!126 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 1)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 125, column: 7)
!128 = distinct !{!128, !129}
!129 = !DILocation(line: 125, column: 7, scope: !127)
!130 = !DILocation(line: 125, column: 7, scope: !131)
!131 = !DILexicalBlockFile(scope: !132, file: !1, discriminator: 2)
!132 = distinct !DILexicalBlock(scope: !127, file: !1, line: 125, column: 7)
!133 = !DILocation(line: 125, column: 7, scope: !134)
!134 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 3)
!135 = !DILocation(line: 126, column: 5, scope: !123)
!136 = !DILocation(line: 127, column: 8, scope: !137)
!137 = distinct !DILexicalBlock(scope: !119, file: !1, line: 127, column: 8)
!138 = !DILocation(line: 127, column: 10, scope: !137)
!139 = !DILocation(line: 127, column: 8, scope: !119)
!140 = !DILocalVariable(name: "status", scope: !141, file: !1, line: 128, type: !51)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 127, column: 17)
!142 = !DILocation(line: 128, column: 11, scope: !141)
!143 = !DILocation(line: 128, column: 38, scope: !141)
!144 = !DILocation(line: 128, column: 41, scope: !141)
!145 = !DILocation(line: 128, column: 44, scope: !141)
!146 = !DILocation(line: 128, column: 20, scope: !141)
!147 = !DILocation(line: 129, column: 22, scope: !141)
!148 = !DILocation(line: 129, column: 7, scope: !141)
!149 = !DILocation(line: 129, column: 15, scope: !141)
!150 = !DILocation(line: 129, column: 19, scope: !141)
!151 = !DILocation(line: 130, column: 14, scope: !141)
!152 = !DILocation(line: 130, column: 7, scope: !141)
!153 = !DILocation(line: 132, column: 37, scope: !154)
!154 = distinct !DILexicalBlock(scope: !137, file: !1, line: 132, column: 13)
!155 = !DILocation(line: 132, column: 35, scope: !154)
!156 = !DILocation(line: 132, column: 42, scope: !154)
!157 = !DILocation(line: 132, column: 44, scope: !154)
!158 = !DILocation(line: 132, column: 43, scope: !154)
!159 = !DILocation(line: 132, column: 46, scope: !154)
!160 = !DILocation(line: 132, column: 39, scope: !154)
!161 = !DILocation(line: 132, column: 13, scope: !137)
!162 = !DILocalVariable(name: "status", scope: !163, file: !1, line: 133, type: !51)
!163 = distinct !DILexicalBlock(scope: !154, file: !1, line: 132, column: 54)
!164 = !DILocation(line: 133, column: 11, scope: !163)
!165 = !DILocation(line: 133, column: 55, scope: !163)
!166 = !DILocation(line: 133, column: 47, scope: !163)
!167 = !DILocation(line: 133, column: 58, scope: !163)
!168 = !DILocation(line: 133, column: 61, scope: !163)
!169 = !DILocation(line: 133, column: 20, scope: !163)
!170 = !DILocation(line: 134, column: 22, scope: !163)
!171 = !DILocation(line: 134, column: 7, scope: !163)
!172 = !DILocation(line: 134, column: 15, scope: !163)
!173 = !DILocation(line: 134, column: 19, scope: !163)
!174 = !DILocation(line: 135, column: 14, scope: !163)
!175 = !DILocation(line: 135, column: 7, scope: !163)
!176 = !DILocation(line: 137, column: 13, scope: !177)
!177 = distinct !DILexicalBlock(scope: !154, file: !1, line: 137, column: 13)
!178 = !DILocation(line: 137, column: 15, scope: !177)
!179 = !DILocation(line: 137, column: 13, scope: !154)
!180 = !DILocalVariable(name: "status", scope: !181, file: !1, line: 138, type: !51)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 137, column: 21)
!182 = !DILocation(line: 138, column: 11, scope: !181)
!183 = !DILocation(line: 138, column: 60, scope: !181)
!184 = !DILocation(line: 138, column: 52, scope: !181)
!185 = !DILocation(line: 138, column: 63, scope: !181)
!186 = !DILocation(line: 138, column: 66, scope: !181)
!187 = !DILocation(line: 138, column: 20, scope: !181)
!188 = !DILocation(line: 139, column: 22, scope: !181)
!189 = !DILocation(line: 139, column: 7, scope: !181)
!190 = !DILocation(line: 139, column: 15, scope: !181)
!191 = !DILocation(line: 139, column: 19, scope: !181)
!192 = !DILocation(line: 140, column: 14, scope: !181)
!193 = !DILocation(line: 140, column: 7, scope: !181)
!194 = !DILocalVariable(name: "two_over_x", scope: !195, file: !1, line: 143, type: !42)
!195 = distinct !DILexicalBlock(scope: !177, file: !1, line: 142, column: 10)
!196 = !DILocation(line: 143, column: 14, scope: !195)
!197 = !DILocation(line: 143, column: 31, scope: !195)
!198 = !DILocation(line: 143, column: 30, scope: !195)
!199 = !DILocalVariable(name: "r_by", scope: !195, file: !1, line: 144, type: !54)
!200 = !DILocation(line: 144, column: 21, scope: !195)
!201 = !DILocalVariable(name: "r_bym", scope: !195, file: !1, line: 145, type: !54)
!202 = !DILocation(line: 145, column: 21, scope: !195)
!203 = !DILocalVariable(name: "stat_1", scope: !195, file: !1, line: 146, type: !51)
!204 = !DILocation(line: 146, column: 11, scope: !195)
!205 = !DILocation(line: 146, column: 39, scope: !195)
!206 = !DILocation(line: 146, column: 20, scope: !195)
!207 = !DILocalVariable(name: "stat_0", scope: !195, file: !1, line: 147, type: !51)
!208 = !DILocation(line: 147, column: 11, scope: !195)
!209 = !DILocation(line: 147, column: 39, scope: !195)
!210 = !DILocation(line: 147, column: 20, scope: !195)
!211 = !DILocalVariable(name: "bym", scope: !195, file: !1, line: 148, type: !42)
!212 = !DILocation(line: 148, column: 14, scope: !195)
!213 = !DILocation(line: 148, column: 26, scope: !195)
!214 = !DILocalVariable(name: "by", scope: !195, file: !1, line: 149, type: !42)
!215 = !DILocation(line: 149, column: 14, scope: !195)
!216 = !DILocation(line: 149, column: 25, scope: !195)
!217 = !DILocalVariable(name: "byp", scope: !195, file: !1, line: 150, type: !42)
!218 = !DILocation(line: 150, column: 14, scope: !195)
!219 = !DILocalVariable(name: "j", scope: !195, file: !1, line: 151, type: !51)
!220 = !DILocation(line: 151, column: 11, scope: !195)
!221 = !DILocation(line: 153, column: 12, scope: !222)
!222 = distinct !DILexicalBlock(scope: !195, file: !1, line: 153, column: 7)
!223 = !DILocation(line: 153, column: 11, scope: !222)
!224 = !DILocation(line: 153, column: 16, scope: !225)
!225 = !DILexicalBlockFile(scope: !226, file: !1, discriminator: 1)
!226 = distinct !DILexicalBlock(scope: !222, file: !1, line: 153, column: 7)
!227 = !DILocation(line: 153, column: 18, scope: !225)
!228 = !DILocation(line: 153, column: 17, scope: !225)
!229 = !DILocation(line: 153, column: 7, scope: !225)
!230 = !DILocation(line: 154, column: 15, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !1, line: 153, column: 26)
!232 = !DILocation(line: 154, column: 17, scope: !231)
!233 = !DILocation(line: 154, column: 16, scope: !231)
!234 = !DILocation(line: 154, column: 28, scope: !231)
!235 = !DILocation(line: 154, column: 27, scope: !231)
!236 = !DILocation(line: 154, column: 33, scope: !231)
!237 = !DILocation(line: 154, column: 31, scope: !231)
!238 = !DILocation(line: 154, column: 13, scope: !231)
!239 = !DILocation(line: 155, column: 15, scope: !231)
!240 = !DILocation(line: 155, column: 13, scope: !231)
!241 = !DILocation(line: 156, column: 15, scope: !231)
!242 = !DILocation(line: 156, column: 13, scope: !231)
!243 = !DILocation(line: 157, column: 7, scope: !231)
!244 = !DILocation(line: 153, column: 22, scope: !245)
!245 = !DILexicalBlockFile(scope: !226, file: !1, discriminator: 2)
!246 = !DILocation(line: 153, column: 7, scope: !245)
!247 = distinct !{!247, !248}
!248 = !DILocation(line: 153, column: 7, scope: !195)
!249 = !DILocation(line: 158, column: 22, scope: !195)
!250 = !DILocation(line: 158, column: 29, scope: !195)
!251 = !DILocation(line: 158, column: 27, scope: !195)
!252 = !DILocation(line: 158, column: 7, scope: !195)
!253 = !DILocation(line: 158, column: 15, scope: !195)
!254 = !DILocation(line: 158, column: 20, scope: !195)
!255 = !DILocation(line: 159, column: 27, scope: !195)
!256 = !DILocation(line: 159, column: 35, scope: !195)
!257 = !DILocation(line: 159, column: 22, scope: !195)
!258 = !DILocation(line: 159, column: 53, scope: !195)
!259 = !DILocation(line: 159, column: 62, scope: !195)
!260 = !DILocation(line: 159, column: 56, scope: !195)
!261 = !DILocation(line: 159, column: 43, scope: !262)
!262 = !DILexicalBlockFile(scope: !195, file: !1, discriminator: 1)
!263 = !DILocation(line: 159, column: 80, scope: !195)
!264 = !DILocation(line: 159, column: 90, scope: !195)
!265 = !DILocation(line: 159, column: 83, scope: !195)
!266 = !DILocation(line: 159, column: 69, scope: !267)
!267 = !DILexicalBlockFile(scope: !195, file: !1, discriminator: 2)
!268 = !DILocation(line: 159, column: 67, scope: !195)
!269 = !DILocation(line: 159, column: 40, scope: !195)
!270 = !DILocation(line: 159, column: 7, scope: !195)
!271 = !DILocation(line: 159, column: 15, scope: !195)
!272 = !DILocation(line: 159, column: 20, scope: !195)
!273 = !DILocation(line: 160, column: 51, scope: !195)
!274 = !DILocation(line: 160, column: 59, scope: !195)
!275 = !DILocation(line: 160, column: 46, scope: !195)
!276 = !DILocation(line: 160, column: 44, scope: !195)
!277 = !DILocation(line: 160, column: 7, scope: !195)
!278 = !DILocation(line: 160, column: 15, scope: !195)
!279 = !DILocation(line: 160, column: 19, scope: !195)
!280 = !DILocation(line: 162, column: 14, scope: !195)
!281 = !DILocation(line: 162, column: 14, scope: !262)
!282 = !DILocation(line: 162, column: 14, scope: !267)
!283 = !DILocation(line: 162, column: 14, scope: !284)
!284 = !DILexicalBlockFile(scope: !195, file: !1, discriminator: 3)
!285 = !DILocation(line: 162, column: 14, scope: !286)
!286 = !DILexicalBlockFile(scope: !195, file: !1, discriminator: 4)
!287 = !DILocation(line: 162, column: 14, scope: !288)
!288 = !DILexicalBlockFile(scope: !195, file: !1, discriminator: 5)
!289 = !DILocation(line: 162, column: 14, scope: !290)
!290 = !DILexicalBlockFile(scope: !195, file: !1, discriminator: 6)
!291 = !DILocation(line: 162, column: 7, scope: !290)
!292 = !DILocation(line: 165, column: 1, scope: !48)
!293 = distinct !DISubprogram(name: "bessel_Yn_small_x", scope: !1, file: !1, line: 38, type: !294, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!294 = !DISubroutineType(types: !295)
!295 = !{!51, !296, !52, !53}
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!297 = !DILocalVariable(name: "n", arg: 1, scope: !293, file: !1, line: 38, type: !296)
!298 = !DILocation(line: 38, column: 40, scope: !293)
!299 = !DILocalVariable(name: "x", arg: 2, scope: !293, file: !1, line: 38, type: !52)
!300 = !DILocation(line: 38, column: 56, scope: !293)
!301 = !DILocalVariable(name: "result", arg: 3, scope: !293, file: !1, line: 38, type: !53)
!302 = !DILocation(line: 38, column: 75, scope: !293)
!303 = !DILocalVariable(name: "k", scope: !293, file: !1, line: 40, type: !51)
!304 = !DILocation(line: 40, column: 7, scope: !293)
!305 = !DILocalVariable(name: "y", scope: !293, file: !1, line: 41, type: !42)
!306 = !DILocation(line: 41, column: 10, scope: !293)
!307 = !DILocation(line: 41, column: 21, scope: !293)
!308 = !DILocation(line: 41, column: 19, scope: !293)
!309 = !DILocation(line: 41, column: 25, scope: !293)
!310 = !DILocation(line: 41, column: 23, scope: !293)
!311 = !DILocalVariable(name: "ln_x_2", scope: !293, file: !1, line: 42, type: !42)
!312 = !DILocation(line: 42, column: 10, scope: !293)
!313 = !DILocation(line: 42, column: 27, scope: !293)
!314 = !DILocation(line: 42, column: 26, scope: !293)
!315 = !DILocation(line: 42, column: 19, scope: !293)
!316 = !DILocalVariable(name: "ln_nm1_fact", scope: !293, file: !1, line: 43, type: !54)
!317 = !DILocation(line: 43, column: 17, scope: !293)
!318 = !DILocalVariable(name: "k_term", scope: !293, file: !1, line: 44, type: !42)
!319 = !DILocation(line: 44, column: 10, scope: !293)
!320 = !DILocalVariable(name: "term1", scope: !293, file: !1, line: 45, type: !42)
!321 = !DILocation(line: 45, column: 10, scope: !293)
!322 = !DILocalVariable(name: "sum1", scope: !293, file: !1, line: 45, type: !42)
!323 = !DILocation(line: 45, column: 17, scope: !293)
!324 = !DILocalVariable(name: "ln_pre1", scope: !293, file: !1, line: 45, type: !42)
!325 = !DILocation(line: 45, column: 23, scope: !293)
!326 = !DILocalVariable(name: "term2", scope: !293, file: !1, line: 46, type: !42)
!327 = !DILocation(line: 46, column: 10, scope: !293)
!328 = !DILocalVariable(name: "sum2", scope: !293, file: !1, line: 46, type: !42)
!329 = !DILocation(line: 46, column: 17, scope: !293)
!330 = !DILocalVariable(name: "pre2", scope: !293, file: !1, line: 46, type: !42)
!331 = !DILocation(line: 46, column: 23, scope: !293)
!332 = !DILocation(line: 48, column: 34, scope: !293)
!333 = !DILocation(line: 48, column: 35, scope: !293)
!334 = !DILocation(line: 48, column: 3, scope: !293)
!335 = !DILocation(line: 50, column: 14, scope: !293)
!336 = !DILocation(line: 50, column: 13, scope: !293)
!337 = !DILocation(line: 50, column: 16, scope: !293)
!338 = !DILocation(line: 50, column: 15, scope: !293)
!339 = !DILocation(line: 50, column: 37, scope: !293)
!340 = !DILocation(line: 50, column: 23, scope: !293)
!341 = !DILocation(line: 50, column: 11, scope: !293)
!342 = !DILocation(line: 51, column: 6, scope: !343)
!343 = distinct !DILexicalBlock(scope: !293, file: !1, line: 51, column: 6)
!344 = !DILocation(line: 51, column: 14, scope: !343)
!345 = !DILocation(line: 51, column: 6, scope: !293)
!346 = !DILocation(line: 51, column: 39, scope: !347)
!347 = !DILexicalBlockFile(scope: !343, file: !1, discriminator: 1)
!348 = distinct !{!348, !349}
!349 = !DILocation(line: 51, column: 39, scope: !343)
!350 = !DILocation(line: 51, column: 39, scope: !351)
!351 = !DILexicalBlockFile(scope: !352, file: !1, discriminator: 2)
!352 = distinct !DILexicalBlock(scope: !343, file: !1, line: 51, column: 39)
!353 = !DILocation(line: 51, column: 39, scope: !354)
!354 = !DILexicalBlockFile(scope: !352, file: !1, discriminator: 3)
!355 = !DILocation(line: 53, column: 8, scope: !293)
!356 = !DILocation(line: 54, column: 10, scope: !293)
!357 = !DILocation(line: 55, column: 8, scope: !358)
!358 = distinct !DILexicalBlock(scope: !293, file: !1, line: 55, column: 3)
!359 = !DILocation(line: 55, column: 7, scope: !358)
!360 = !DILocation(line: 55, column: 12, scope: !361)
!361 = !DILexicalBlockFile(scope: !362, file: !1, discriminator: 1)
!362 = distinct !DILexicalBlock(scope: !358, file: !1, line: 55, column: 3)
!363 = !DILocation(line: 55, column: 15, scope: !361)
!364 = !DILocation(line: 55, column: 16, scope: !361)
!365 = !DILocation(line: 55, column: 13, scope: !361)
!366 = !DILocation(line: 55, column: 3, scope: !361)
!367 = !DILocation(line: 56, column: 15, scope: !368)
!368 = distinct !DILexicalBlock(scope: !362, file: !1, line: 55, column: 25)
!369 = !DILocation(line: 56, column: 18, scope: !368)
!370 = !DILocation(line: 56, column: 23, scope: !368)
!371 = !DILocation(line: 56, column: 25, scope: !368)
!372 = !DILocation(line: 56, column: 24, scope: !368)
!373 = !DILocation(line: 56, column: 20, scope: !368)
!374 = !DILocation(line: 56, column: 17, scope: !368)
!375 = !DILocation(line: 56, column: 16, scope: !368)
!376 = !DILocation(line: 56, column: 12, scope: !368)
!377 = !DILocation(line: 57, column: 13, scope: !368)
!378 = !DILocation(line: 57, column: 10, scope: !368)
!379 = !DILocation(line: 58, column: 3, scope: !368)
!380 = !DILocation(line: 55, column: 21, scope: !381)
!381 = !DILexicalBlockFile(scope: !362, file: !1, discriminator: 2)
!382 = !DILocation(line: 55, column: 3, scope: !381)
!383 = distinct !{!383, !384}
!384 = !DILocation(line: 55, column: 3, scope: !293)
!385 = !DILocation(line: 59, column: 16, scope: !293)
!386 = !DILocation(line: 59, column: 12, scope: !293)
!387 = !DILocation(line: 59, column: 11, scope: !293)
!388 = !DILocation(line: 59, column: 27, scope: !293)
!389 = !DILocation(line: 59, column: 25, scope: !293)
!390 = !DILocation(line: 59, column: 32, scope: !293)
!391 = !DILocation(line: 59, column: 9, scope: !293)
!392 = !DILocation(line: 61, column: 15, scope: !293)
!393 = !DILocation(line: 61, column: 17, scope: !293)
!394 = !DILocation(line: 61, column: 16, scope: !293)
!395 = !DILocation(line: 61, column: 11, scope: !293)
!396 = !DILocation(line: 61, column: 10, scope: !293)
!397 = !DILocation(line: 61, column: 25, scope: !293)
!398 = !DILocation(line: 61, column: 8, scope: !293)
!399 = !DILocation(line: 62, column: 11, scope: !400)
!400 = distinct !DILexicalBlock(scope: !293, file: !1, line: 62, column: 6)
!401 = !DILocation(line: 62, column: 6, scope: !400)
!402 = !DILocation(line: 62, column: 17, scope: !400)
!403 = !DILocation(line: 62, column: 6, scope: !293)
!404 = !DILocalVariable(name: "KMAX", scope: !405, file: !1, line: 63, type: !296)
!405 = distinct !DILexicalBlock(scope: !400, file: !1, line: 62, column: 24)
!406 = !DILocation(line: 63, column: 15, scope: !405)
!407 = !DILocalVariable(name: "psi_n", scope: !405, file: !1, line: 64, type: !54)
!408 = !DILocation(line: 64, column: 19, scope: !405)
!409 = !DILocalVariable(name: "npk_fact", scope: !405, file: !1, line: 65, type: !54)
!410 = !DILocation(line: 65, column: 19, scope: !405)
!411 = !DILocalVariable(name: "yk", scope: !405, file: !1, line: 66, type: !42)
!412 = !DILocation(line: 66, column: 12, scope: !405)
!413 = !DILocalVariable(name: "k_fact", scope: !405, file: !1, line: 67, type: !42)
!414 = !DILocation(line: 67, column: 12, scope: !405)
!415 = !DILocalVariable(name: "psi_kp1", scope: !405, file: !1, line: 68, type: !42)
!416 = !DILocation(line: 68, column: 12, scope: !405)
!417 = !DILocalVariable(name: "psi_npkp1", scope: !405, file: !1, line: 69, type: !42)
!418 = !DILocation(line: 69, column: 12, scope: !405)
!419 = !DILocation(line: 70, column: 22, scope: !405)
!420 = !DILocation(line: 70, column: 5, scope: !405)
!421 = !DILocation(line: 71, column: 33, scope: !405)
!422 = !DILocation(line: 71, column: 5, scope: !405)
!423 = !DILocation(line: 72, column: 23, scope: !405)
!424 = !DILocation(line: 72, column: 33, scope: !405)
!425 = !DILocation(line: 72, column: 32, scope: !405)
!426 = !DILocation(line: 72, column: 27, scope: !405)
!427 = !DILocation(line: 72, column: 15, scope: !405)
!428 = !DILocation(line: 73, column: 13, scope: !405)
!429 = !DILocation(line: 73, column: 23, scope: !405)
!430 = !DILocation(line: 73, column: 21, scope: !405)
!431 = !DILocation(line: 73, column: 39, scope: !405)
!432 = !DILocation(line: 73, column: 38, scope: !405)
!433 = !DILocation(line: 73, column: 33, scope: !405)
!434 = !DILocation(line: 73, column: 56, scope: !405)
!435 = !DILocation(line: 73, column: 46, scope: !405)
!436 = !DILocation(line: 73, column: 10, scope: !405)
!437 = !DILocation(line: 74, column: 10, scope: !438)
!438 = distinct !DILexicalBlock(scope: !405, file: !1, line: 74, column: 5)
!439 = !DILocation(line: 74, column: 9, scope: !438)
!440 = !DILocation(line: 74, column: 14, scope: !441)
!441 = !DILexicalBlockFile(scope: !442, file: !1, discriminator: 1)
!442 = distinct !DILexicalBlock(scope: !438, file: !1, line: 74, column: 5)
!443 = !DILocation(line: 74, column: 15, scope: !441)
!444 = !DILocation(line: 74, column: 5, scope: !441)
!445 = !DILocation(line: 75, column: 23, scope: !446)
!446 = distinct !DILexicalBlock(scope: !442, file: !1, line: 74, column: 27)
!447 = !DILocation(line: 75, column: 22, scope: !446)
!448 = !DILocation(line: 75, column: 17, scope: !446)
!449 = !DILocation(line: 76, column: 24, scope: !446)
!450 = !DILocation(line: 76, column: 26, scope: !446)
!451 = !DILocation(line: 76, column: 25, scope: !446)
!452 = !DILocation(line: 76, column: 23, scope: !446)
!453 = !DILocation(line: 76, column: 22, scope: !446)
!454 = !DILocation(line: 76, column: 17, scope: !446)
!455 = !DILocation(line: 77, column: 19, scope: !446)
!456 = !DILocation(line: 77, column: 16, scope: !446)
!457 = !DILocation(line: 78, column: 23, scope: !446)
!458 = !DILocation(line: 78, column: 25, scope: !446)
!459 = !DILocation(line: 78, column: 24, scope: !446)
!460 = !DILocation(line: 78, column: 16, scope: !446)
!461 = !DILocation(line: 78, column: 20, scope: !446)
!462 = !DILocation(line: 79, column: 14, scope: !446)
!463 = !DILocation(line: 79, column: 13, scope: !446)
!464 = !DILocation(line: 79, column: 10, scope: !446)
!465 = !DILocation(line: 80, column: 16, scope: !446)
!466 = !DILocation(line: 80, column: 20, scope: !446)
!467 = !DILocation(line: 80, column: 30, scope: !446)
!468 = !DILocation(line: 80, column: 28, scope: !446)
!469 = !DILocation(line: 80, column: 46, scope: !446)
!470 = !DILocation(line: 80, column: 45, scope: !446)
!471 = !DILocation(line: 80, column: 40, scope: !446)
!472 = !DILocation(line: 80, column: 18, scope: !446)
!473 = !DILocation(line: 80, column: 55, scope: !446)
!474 = !DILocation(line: 80, column: 71, scope: !446)
!475 = !DILocation(line: 80, column: 61, scope: !446)
!476 = !DILocation(line: 80, column: 53, scope: !446)
!477 = !DILocation(line: 80, column: 14, scope: !446)
!478 = !DILocation(line: 81, column: 15, scope: !446)
!479 = !DILocation(line: 81, column: 12, scope: !446)
!480 = !DILocation(line: 82, column: 5, scope: !446)
!481 = !DILocation(line: 74, column: 23, scope: !482)
!482 = !DILexicalBlockFile(scope: !442, file: !1, discriminator: 2)
!483 = !DILocation(line: 74, column: 5, scope: !482)
!484 = distinct !{!484, !485}
!485 = !DILocation(line: 74, column: 5, scope: !405)
!486 = !DILocation(line: 83, column: 13, scope: !405)
!487 = !DILocation(line: 83, column: 20, scope: !405)
!488 = !DILocation(line: 83, column: 18, scope: !405)
!489 = !DILocation(line: 83, column: 11, scope: !405)
!490 = !DILocation(line: 84, column: 3, scope: !405)
!491 = !DILocation(line: 86, column: 11, scope: !492)
!492 = distinct !DILexicalBlock(scope: !400, file: !1, line: 85, column: 8)
!493 = !DILocation(line: 89, column: 18, scope: !293)
!494 = !DILocation(line: 89, column: 26, scope: !293)
!495 = !DILocation(line: 89, column: 24, scope: !293)
!496 = !DILocation(line: 89, column: 3, scope: !293)
!497 = !DILocation(line: 89, column: 11, scope: !293)
!498 = !DILocation(line: 89, column: 16, scope: !293)
!499 = !DILocation(line: 90, column: 42, scope: !293)
!500 = !DILocation(line: 90, column: 37, scope: !293)
!501 = !DILocation(line: 90, column: 56, scope: !293)
!502 = !DILocation(line: 90, column: 51, scope: !503)
!503 = !DILexicalBlockFile(scope: !293, file: !1, discriminator: 1)
!504 = !DILocation(line: 90, column: 50, scope: !293)
!505 = !DILocation(line: 90, column: 70, scope: !293)
!506 = !DILocation(line: 90, column: 65, scope: !507)
!507 = !DILexicalBlockFile(scope: !293, file: !1, discriminator: 2)
!508 = !DILocation(line: 90, column: 63, scope: !293)
!509 = !DILocation(line: 90, column: 34, scope: !293)
!510 = !DILocation(line: 90, column: 3, scope: !293)
!511 = !DILocation(line: 90, column: 11, scope: !293)
!512 = !DILocation(line: 90, column: 16, scope: !293)
!513 = !DILocation(line: 91, column: 47, scope: !293)
!514 = !DILocation(line: 91, column: 55, scope: !293)
!515 = !DILocation(line: 91, column: 42, scope: !293)
!516 = !DILocation(line: 91, column: 40, scope: !293)
!517 = !DILocation(line: 91, column: 3, scope: !293)
!518 = !DILocation(line: 91, column: 11, scope: !293)
!519 = !DILocation(line: 91, column: 15, scope: !293)
!520 = !DILocation(line: 93, column: 3, scope: !293)
!521 = !DILocation(line: 94, column: 1, scope: !293)
!522 = distinct !DISubprogram(name: "gsl_sf_bessel_Yn_array", scope: !1, file: !1, line: 169, type: !523, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!523 = !DISubroutineType(types: !524)
!524 = !{!51, !296, !296, !52, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!526 = !DILocalVariable(name: "nmin", arg: 1, scope: !522, file: !1, line: 169, type: !296)
!527 = !DILocation(line: 169, column: 34, scope: !522)
!528 = !DILocalVariable(name: "nmax", arg: 2, scope: !522, file: !1, line: 169, type: !296)
!529 = !DILocation(line: 169, column: 50, scope: !522)
!530 = !DILocalVariable(name: "x", arg: 3, scope: !522, file: !1, line: 169, type: !52)
!531 = !DILocation(line: 169, column: 69, scope: !522)
!532 = !DILocalVariable(name: "result_array", arg: 4, scope: !522, file: !1, line: 169, type: !525)
!533 = !DILocation(line: 169, column: 81, scope: !522)
!534 = !DILocation(line: 173, column: 6, scope: !535)
!535 = distinct !DILexicalBlock(scope: !522, file: !1, line: 173, column: 6)
!536 = !DILocation(line: 173, column: 11, scope: !535)
!537 = !DILocation(line: 173, column: 15, scope: !535)
!538 = !DILocation(line: 173, column: 18, scope: !539)
!539 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 1)
!540 = !DILocation(line: 173, column: 25, scope: !539)
!541 = !DILocation(line: 173, column: 23, scope: !539)
!542 = !DILocation(line: 173, column: 30, scope: !539)
!543 = !DILocation(line: 173, column: 33, scope: !544)
!544 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 2)
!545 = !DILocation(line: 173, column: 35, scope: !544)
!546 = !DILocation(line: 173, column: 6, scope: !544)
!547 = !DILocalVariable(name: "j", scope: !548, file: !1, line: 174, type: !51)
!548 = distinct !DILexicalBlock(scope: !535, file: !1, line: 173, column: 43)
!549 = !DILocation(line: 174, column: 9, scope: !548)
!550 = !DILocation(line: 175, column: 10, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !1, line: 175, column: 5)
!552 = !DILocation(line: 175, column: 9, scope: !551)
!553 = !DILocation(line: 175, column: 14, scope: !554)
!554 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 1)
!555 = distinct !DILexicalBlock(scope: !551, file: !1, line: 175, column: 5)
!556 = !DILocation(line: 175, column: 17, scope: !554)
!557 = !DILocation(line: 175, column: 22, scope: !554)
!558 = !DILocation(line: 175, column: 21, scope: !554)
!559 = !DILocation(line: 175, column: 15, scope: !554)
!560 = !DILocation(line: 175, column: 5, scope: !554)
!561 = !DILocation(line: 175, column: 46, scope: !562)
!562 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 2)
!563 = !DILocation(line: 175, column: 33, scope: !562)
!564 = !DILocation(line: 175, column: 49, scope: !562)
!565 = !DILocation(line: 175, column: 29, scope: !566)
!566 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 3)
!567 = !DILocation(line: 175, column: 5, scope: !566)
!568 = distinct !{!568, !569}
!569 = !DILocation(line: 175, column: 5, scope: !548)
!570 = !DILocation(line: 176, column: 5, scope: !548)
!571 = distinct !{!571, !570}
!572 = !DILocation(line: 176, column: 5, scope: !573)
!573 = !DILexicalBlockFile(scope: !574, file: !1, discriminator: 1)
!574 = distinct !DILexicalBlock(scope: !548, file: !1, line: 176, column: 5)
!575 = !DILocation(line: 177, column: 3, scope: !548)
!576 = !DILocalVariable(name: "r_Ynm1", scope: !577, file: !1, line: 179, type: !54)
!577 = distinct !DILexicalBlock(scope: !535, file: !1, line: 178, column: 8)
!578 = !DILocation(line: 179, column: 19, scope: !577)
!579 = !DILocalVariable(name: "r_Yn", scope: !577, file: !1, line: 180, type: !54)
!580 = !DILocation(line: 180, column: 19, scope: !577)
!581 = !DILocalVariable(name: "stat_nm1", scope: !577, file: !1, line: 181, type: !51)
!582 = !DILocation(line: 181, column: 9, scope: !577)
!583 = !DILocation(line: 181, column: 39, scope: !577)
!584 = !DILocation(line: 181, column: 47, scope: !577)
!585 = !DILocation(line: 181, column: 20, scope: !577)
!586 = !DILocalVariable(name: "stat_n", scope: !577, file: !1, line: 182, type: !51)
!587 = !DILocation(line: 182, column: 9, scope: !577)
!588 = !DILocation(line: 182, column: 39, scope: !577)
!589 = !DILocation(line: 182, column: 43, scope: !577)
!590 = !DILocation(line: 182, column: 47, scope: !577)
!591 = !DILocation(line: 182, column: 20, scope: !577)
!592 = !DILocalVariable(name: "Ynp1", scope: !577, file: !1, line: 183, type: !42)
!593 = !DILocation(line: 183, column: 12, scope: !577)
!594 = !DILocalVariable(name: "Yn", scope: !577, file: !1, line: 184, type: !42)
!595 = !DILocation(line: 184, column: 12, scope: !577)
!596 = !DILocation(line: 184, column: 24, scope: !577)
!597 = !DILocalVariable(name: "Ynm1", scope: !577, file: !1, line: 185, type: !42)
!598 = !DILocation(line: 185, column: 12, scope: !577)
!599 = !DILocation(line: 185, column: 26, scope: !577)
!600 = !DILocalVariable(name: "n", scope: !577, file: !1, line: 186, type: !51)
!601 = !DILocation(line: 186, column: 9, scope: !577)
!602 = !DILocalVariable(name: "stat", scope: !577, file: !1, line: 188, type: !51)
!603 = !DILocation(line: 188, column: 9, scope: !577)
!604 = !DILocation(line: 188, column: 16, scope: !577)
!605 = !DILocation(line: 188, column: 16, scope: !606)
!606 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 1)
!607 = !DILocation(line: 188, column: 16, scope: !608)
!608 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 2)
!609 = !DILocation(line: 188, column: 16, scope: !610)
!610 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 3)
!611 = !DILocation(line: 188, column: 16, scope: !612)
!612 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 4)
!613 = !DILocation(line: 188, column: 16, scope: !614)
!614 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 5)
!615 = !DILocation(line: 188, column: 16, scope: !616)
!616 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 6)
!617 = !DILocation(line: 188, column: 9, scope: !616)
!618 = !DILocation(line: 190, column: 8, scope: !619)
!619 = distinct !DILexicalBlock(scope: !577, file: !1, line: 190, column: 8)
!620 = !DILocation(line: 190, column: 13, scope: !619)
!621 = !DILocation(line: 190, column: 8, scope: !577)
!622 = !DILocation(line: 191, column: 13, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !1, line: 191, column: 7)
!624 = distinct !DILexicalBlock(scope: !619, file: !1, line: 190, column: 29)
!625 = !DILocation(line: 191, column: 17, scope: !623)
!626 = !DILocation(line: 191, column: 12, scope: !623)
!627 = !DILocation(line: 191, column: 11, scope: !623)
!628 = !DILocation(line: 191, column: 21, scope: !629)
!629 = !DILexicalBlockFile(scope: !630, file: !1, discriminator: 1)
!630 = distinct !DILexicalBlock(scope: !623, file: !1, line: 191, column: 7)
!631 = !DILocation(line: 191, column: 24, scope: !629)
!632 = !DILocation(line: 191, column: 28, scope: !629)
!633 = !DILocation(line: 191, column: 22, scope: !629)
!634 = !DILocation(line: 191, column: 7, scope: !629)
!635 = !DILocation(line: 192, column: 34, scope: !636)
!636 = distinct !DILexicalBlock(scope: !630, file: !1, line: 191, column: 37)
!637 = !DILocation(line: 192, column: 22, scope: !636)
!638 = !DILocation(line: 192, column: 24, scope: !636)
!639 = !DILocation(line: 192, column: 23, scope: !636)
!640 = !DILocation(line: 192, column: 28, scope: !636)
!641 = !DILocation(line: 192, column: 9, scope: !636)
!642 = !DILocation(line: 192, column: 32, scope: !636)
!643 = !DILocation(line: 193, column: 17, scope: !636)
!644 = !DILocation(line: 193, column: 16, scope: !636)
!645 = !DILocation(line: 193, column: 28, scope: !636)
!646 = !DILocation(line: 193, column: 27, scope: !636)
!647 = !DILocation(line: 193, column: 30, scope: !636)
!648 = !DILocation(line: 193, column: 29, scope: !636)
!649 = !DILocation(line: 193, column: 34, scope: !636)
!650 = !DILocation(line: 193, column: 32, scope: !636)
!651 = !DILocation(line: 193, column: 22, scope: !636)
!652 = !DILocation(line: 193, column: 14, scope: !636)
!653 = !DILocation(line: 194, column: 16, scope: !636)
!654 = !DILocation(line: 194, column: 14, scope: !636)
!655 = !DILocation(line: 195, column: 16, scope: !636)
!656 = !DILocation(line: 195, column: 14, scope: !636)
!657 = !DILocation(line: 196, column: 7, scope: !636)
!658 = !DILocation(line: 191, column: 33, scope: !659)
!659 = !DILexicalBlockFile(scope: !630, file: !1, discriminator: 2)
!660 = !DILocation(line: 191, column: 7, scope: !659)
!661 = distinct !{!661, !662}
!662 = !DILocation(line: 191, column: 7, scope: !624)
!663 = !DILocation(line: 197, column: 5, scope: !624)
!664 = !DILocation(line: 199, column: 13, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !1, line: 199, column: 7)
!666 = distinct !DILexicalBlock(scope: !619, file: !1, line: 198, column: 10)
!667 = !DILocation(line: 199, column: 12, scope: !665)
!668 = !DILocation(line: 199, column: 11, scope: !665)
!669 = !DILocation(line: 199, column: 19, scope: !670)
!670 = !DILexicalBlockFile(scope: !671, file: !1, discriminator: 1)
!671 = distinct !DILexicalBlock(scope: !665, file: !1, line: 199, column: 7)
!672 = !DILocation(line: 199, column: 22, scope: !670)
!673 = !DILocation(line: 199, column: 20, scope: !670)
!674 = !DILocation(line: 199, column: 7, scope: !670)
!675 = !DILocation(line: 200, column: 22, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !1, line: 199, column: 33)
!677 = !DILocation(line: 200, column: 24, scope: !676)
!678 = !DILocation(line: 200, column: 23, scope: !676)
!679 = !DILocation(line: 200, column: 9, scope: !676)
!680 = !DILocation(line: 200, column: 30, scope: !676)
!681 = !DILocation(line: 201, column: 7, scope: !676)
!682 = !DILocation(line: 199, column: 29, scope: !683)
!683 = !DILexicalBlockFile(scope: !671, file: !1, discriminator: 2)
!684 = !DILocation(line: 199, column: 7, scope: !683)
!685 = distinct !{!685, !686}
!686 = !DILocation(line: 199, column: 7, scope: !666)
!687 = !DILocation(line: 204, column: 12, scope: !577)
!688 = !DILocation(line: 204, column: 5, scope: !577)
!689 = !DILocation(line: 206, column: 1, scope: !522)
!690 = distinct !DISubprogram(name: "gsl_sf_bessel_Yn", scope: !1, file: !1, line: 213, type: !691, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !60)
!691 = !DISubroutineType(types: !692)
!692 = !{!42, !296, !52}
!693 = !DILocalVariable(name: "n", arg: 1, scope: !690, file: !1, line: 213, type: !296)
!694 = !DILocation(line: 213, column: 35, scope: !690)
!695 = !DILocalVariable(name: "x", arg: 2, scope: !690, file: !1, line: 213, type: !52)
!696 = !DILocation(line: 213, column: 51, scope: !690)
!697 = !DILocalVariable(name: "result", scope: !690, file: !1, line: 215, type: !54)
!698 = !DILocation(line: 215, column: 3, scope: !690)
!699 = !DILocalVariable(name: "status", scope: !690, file: !1, line: 215, type: !51)
!700 = !DILocation(line: 215, column: 3, scope: !701)
!701 = distinct !DILexicalBlock(scope: !690, file: !1, line: 215, column: 3)
!702 = !DILocation(line: 215, column: 3, scope: !703)
!703 = !DILexicalBlockFile(scope: !704, file: !1, discriminator: 1)
!704 = distinct !DILexicalBlock(scope: !701, file: !1, line: 215, column: 3)
!705 = distinct !{!705, !706}
!706 = !DILocation(line: 215, column: 3, scope: !704)
!707 = !DILocation(line: 215, column: 3, scope: !708)
!708 = !DILexicalBlockFile(scope: !709, file: !1, discriminator: 2)
!709 = distinct !DILexicalBlock(scope: !704, file: !1, line: 215, column: 3)
!710 = !DILocation(line: 215, column: 3, scope: !711)
!711 = !DILexicalBlockFile(scope: !704, file: !1, discriminator: 3)
!712 = !DILocation(line: 215, column: 3, scope: !713)
!713 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 4)
!714 = !DILocation(line: 216, column: 1, scope: !690)
