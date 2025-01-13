; ModuleID = 'bessel_Jnu.ll'
source_filename = "bessel_Jnu.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bessel_Jnu.c\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_Jnu_e(nu, x, &result)\00", align 1
@0 = private unnamed_addr constant [23 x i8] c"gsl_sf_bessel_Jnupos_e\00"
@1 = private unnamed_addr constant [14 x i8] c"bessel_Jnu.ll\00"
@2 = private unnamed_addr constant [20 x i8] c"gsl_sf_bessel_Jnu_e\00"
@3 = private unnamed_addr constant [14 x i8] c"bessel_Jnu.ll\00"
@4 = private unnamed_addr constant [18 x i8] c"gsl_sf_bessel_Jnu\00"
@5 = private unnamed_addr constant [14 x i8] c"bessel_Jnu.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Jnupos_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca i32, align 4
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
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !60, metadata !61), !dbg !62
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !63, metadata !61), !dbg !64
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !65, metadata !61), !dbg !66
  %32 = load double, double* %6, align 8, !dbg !67
  %33 = fcmp oeq double %32, 0.000000e+00, !dbg !69
  %34 = call i1 @fCmpInstHandler(double %32, double 0.000000e+00, i1 %33, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859184320, i32 82, i32 8), !dbg !70
  br i1 %34, label %35, label %50, !dbg !70

; <label>:35:                                     ; preds = %3
  %36 = load double, double* %5, align 8, !dbg !71
  %37 = fcmp oeq double %36, 0.000000e+00, !dbg !74
  %38 = call i1 @fCmpInstHandler(double %36, double 0.000000e+00, i1 %37, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859185776, i32 83, i32 11), !dbg !75
  br i1 %38, label %39, label %44, !dbg !75

; <label>:39:                                     ; preds = %35
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !76
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !78
  store double 1.000000e+00, double* %41, align 8, !dbg !79
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !80
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !81
  store double 0.000000e+00, double* %43, align 8, !dbg !82
  br label %49, !dbg !83

; <label>:44:                                     ; preds = %35
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !84
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !86
  store double 0.000000e+00, double* %46, align 8, !dbg !87
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !88
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !89
  store double 0.000000e+00, double* %48, align 8, !dbg !90
  br label %49

; <label>:49:                                     ; preds = %44, %39
  store i32 0, i32* %4, align 4, !dbg !91
  br label %272, !dbg !91

; <label>:50:                                     ; preds = %3
  %51 = load double, double* %6, align 8, !dbg !92
  %52 = load double, double* %6, align 8, !dbg !94
  %53 = fmul double %51, %52, !dbg !95
  call void @fMulHandler(double %51, double %52, double %53, i64 93948859194648, i64 93948859194968, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859195376, i32 93, i32 12), !dbg !96
  %54 = load double, double* %5, align 8, !dbg !96
  %55 = fadd double %54, 1.000000e+00, !dbg !97
  call void @fAddHandler(double %54, double 1.000000e+00, double %55, i64 93948859195768, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859196208, i32 93, i32 25), !dbg !98
  %56 = fmul double 1.000000e+01, %55, !dbg !98
  call void @fMulHandler(double 1.000000e+01, double %55, double %56, i64 0, i64 93948859196208, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859196688, i32 93, i32 21), !dbg !99
  %57 = fcmp olt double %53, %56, !dbg !99
  %58 = call i1 @fCmpInstHandler(double %53, double %56, i1 %57, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859197072, i32 93, i32 15), !dbg !100
  br i1 %58, label %59, label %64, !dbg !100

; <label>:59:                                     ; preds = %50
  %60 = load double, double* %5, align 8, !dbg !101
  %61 = load double, double* %6, align 8, !dbg !103
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !104
  %63 = call i32 @gsl_sf_bessel_IJ_taylor_e(double %60, double %61, i32 -1, i32 100, double 0x3CB0000000000000, %struct.gsl_sf_result_struct* %62), !dbg !105
  store i32 %63, i32* %4, align 4, !dbg !106
  br label %272, !dbg !106

; <label>:64:                                     ; preds = %50
  %65 = load double, double* %5, align 8, !dbg !107
  %66 = fcmp ogt double %65, 5.000000e+01, !dbg !109
  %67 = call i1 @fCmpInstHandler(double %65, double 5.000000e+01, i1 %66, i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859202976, i32 96, i32 14), !dbg !110
  br i1 %67, label %68, label %73, !dbg !110

; <label>:68:                                     ; preds = %64
  %69 = load double, double* %5, align 8, !dbg !111
  %70 = load double, double* %6, align 8, !dbg !113
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !114
  %72 = call i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double %69, double %70, %struct.gsl_sf_result_struct* %71), !dbg !115
  store i32 %72, i32* %4, align 4, !dbg !116
  br label %272, !dbg !116

; <label>:73:                                     ; preds = %64
  %74 = load double, double* %6, align 8, !dbg !117
  %75 = fcmp ogt double %74, 1.000000e+03, !dbg !119
  %76 = call i1 @fCmpInstHandler(double %74, double 1.000000e+03, i1 %75, i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859209680, i32 99, i32 13), !dbg !120
  br i1 %76, label %77, label %82, !dbg !120

; <label>:77:                                     ; preds = %73
  %78 = load double, double* %5, align 8, !dbg !121
  %79 = load double, double* %6, align 8, !dbg !123
  %80 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !124
  %81 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double %78, double %79, %struct.gsl_sf_result_struct* %80), !dbg !125
  store i32 %81, i32* %4, align 4, !dbg !126
  br label %272, !dbg !126

; <label>:82:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata i32* %8, metadata !127, metadata !61), !dbg !129
  %83 = load double, double* %5, align 8, !dbg !130
  %84 = fadd double %83, 5.000000e-01, !dbg !131
  call void @fAddHandler(double %83, double 5.000000e-01, double %84, i64 93948859216008, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859216480, i32 109, i32 22), !dbg !132
  %85 = fptosi double %84 to i32, !dbg !132
  store i32 %85, i32* %8, align 4, !dbg !129
  call void @llvm.dbg.declare(metadata double* %9, metadata !133, metadata !61), !dbg !134
  %86 = load double, double* %5, align 8, !dbg !135
  %87 = load i32, i32* %8, align 4, !dbg !136
  %88 = sitofp i32 %87 to double, !dbg !136
  %89 = fsub double %86, %88, !dbg !137
  call void @fSubHandler(double %86, double %88, double %89, i64 93948859220024, i64 93948859220760, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859222432, i32 110, i32 20), !dbg !134
  store double %89, double* %9, align 8, !dbg !134
  call void @llvm.dbg.declare(metadata double* %10, metadata !138, metadata !61), !dbg !139
  call void @llvm.dbg.declare(metadata double* %11, metadata !140, metadata !61), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %12, metadata !142, metadata !61), !dbg !144
  %90 = load double, double* %5, align 8, !dbg !145
  %91 = load double, double* %6, align 8, !dbg !146
  %92 = call i32 @gsl_sf_bessel_J_CF1(double %90, double %91, double* %10, double* %11), !dbg !147
  store i32 %92, i32* %12, align 4, !dbg !144
  %93 = load double, double* %6, align 8, !dbg !148
  %94 = fcmp olt double %93, 2.000000e+00, !dbg !150
  %95 = call i1 @fCmpInstHandler(double %93, double 2.000000e+00, i1 %94, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859231648, i32 118, i32 10), !dbg !151
  br i1 %95, label %96, label %169, !dbg !151

; <label>:96:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !152, metadata !61), !dbg !154
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !155, metadata !61), !dbg !156
  call void @llvm.dbg.declare(metadata i32* %15, metadata !157, metadata !61), !dbg !158
  %97 = load double, double* %9, align 8, !dbg !159
  %98 = load double, double* %6, align 8, !dbg !160
  %99 = call i32 @gsl_sf_bessel_Y_temme(double %97, double %98, %struct.gsl_sf_result_struct* %13, %struct.gsl_sf_result_struct* %14), !dbg !161
  store i32 %99, i32* %15, align 4, !dbg !158
  call void @llvm.dbg.declare(metadata double* %16, metadata !162, metadata !61), !dbg !163
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !164
  %101 = load double, double* %100, align 8, !dbg !164
  store double %101, double* %16, align 8, !dbg !163
  call void @llvm.dbg.declare(metadata double* %17, metadata !165, metadata !61), !dbg !166
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !167
  %103 = load double, double* %102, align 8, !dbg !167
  store double %103, double* %17, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata double* %18, metadata !168, metadata !61), !dbg !169
  store double 0.000000e+00, double* %18, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata i32* %19, metadata !170, metadata !61), !dbg !171
  store i32 1, i32* %19, align 4, !dbg !172
  br label %104, !dbg !174

; <label>:104:                                    ; preds = %125, %96
  %105 = load i32, i32* %19, align 4, !dbg !175
  %106 = load i32, i32* %8, align 4, !dbg !178
  %107 = icmp slt i32 %105, %106, !dbg !179
  %108 = sext i32 %105 to i64, !dbg !180
  %109 = sext i32 %106 to i64, !dbg !180
  %110 = call i1 @iCmpInstHandler(i64 %108, i64 %109, i1 %107, i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859254656, i32 129, i32 17), !dbg !180
  br i1 %110, label %111, label %128, !dbg !180

; <label>:111:                                    ; preds = %104
  %112 = load double, double* %9, align 8, !dbg !181
  %113 = load i32, i32* %19, align 4, !dbg !183
  %114 = sitofp i32 %113 to double, !dbg !183
  %115 = fadd double %112, %114, !dbg !184
  call void @fAddHandler(double %112, double %114, double %115, i64 93948859255768, i64 93948859256472, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859258144, i32 130, i32 23), !dbg !185
  %116 = fmul double 2.000000e+00, %115, !dbg !185
  call void @fMulHandler(double 2.000000e+00, double %115, double %116, i64 0, i64 93948859258144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859258592, i32 130, i32 19), !dbg !186
  %117 = load double, double* %6, align 8, !dbg !186
  %118 = fdiv double %116, %117, !dbg !187
  call void @fDivHandler(double %116, double %117, double %118, i64 93948859258592, i64 93948859258952, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859259360, i32 130, i32 26), !dbg !188
  %119 = load double, double* %17, align 8, !dbg !188
  %120 = fmul double %118, %119, !dbg !189
  call void @fMulHandler(double %118, double %119, double %120, i64 93948859259360, i64 93948859259752, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859260160, i32 130, i32 29), !dbg !190
  %121 = load double, double* %16, align 8, !dbg !190
  %122 = fsub double %120, %121, !dbg !191
  call void @fSubHandler(double %120, double %121, double %122, i64 93948859260160, i64 93948859260552, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859260960, i32 130, i32 34), !dbg !192
  store double %122, double* %18, align 8, !dbg !192
  %123 = load double, double* %17, align 8, !dbg !193
  store double %123, double* %16, align 8, !dbg !194
  %124 = load double, double* %18, align 8, !dbg !195
  store double %124, double* %17, align 8, !dbg !196
  br label %125, !dbg !197

; <label>:125:                                    ; preds = %111
  %126 = load i32, i32* %19, align 4, !dbg !198
  %127 = add nsw i32 %126, 1, !dbg !198
  store i32 %127, i32* %19, align 4, !dbg !198
  br label %104, !dbg !200, !llvm.loop !201

; <label>:128:                                    ; preds = %104
  %129 = load double, double* %6, align 8, !dbg !203
  %130 = fmul double 0x400921FB54442D18, %129, !dbg !204
  call void @fMulHandler(double 0x400921FB54442D18, double %129, double %130, i64 0, i64 93948859270808, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859271216, i32 135, i32 30), !dbg !205
  %131 = fdiv double 2.000000e+00, %130, !dbg !205
  call void @fDivHandler(double 2.000000e+00, double %130, double %131, i64 0, i64 93948859271216, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859271664, i32 135, i32 24), !dbg !206
  %132 = load double, double* %10, align 8, !dbg !206
  %133 = load double, double* %17, align 8, !dbg !207
  %134 = fmul double %132, %133, !dbg !208
  call void @fMulHandler(double %132, double %133, double %134, i64 93948859272024, i64 93948859272408, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859272816, i32 135, i32 46), !dbg !209
  %135 = load double, double* %18, align 8, !dbg !209
  %136 = fsub double %134, %135, !dbg !210
  call void @fSubHandler(double %134, double %135, double %136, i64 93948859272816, i64 93948859273208, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859273616, i32 135, i32 50), !dbg !211
  %137 = fdiv double %131, %136, !dbg !211
  call void @fDivHandler(double %131, double %136, double %137, i64 93948859271664, i64 93948859273616, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859274032, i32 135, i32 34), !dbg !212
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !212
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 0, !dbg !213
  store double %137, double* %139, align 8, !dbg !214
  %140 = load i32, i32* %8, align 4, !dbg !215
  %141 = sitofp i32 %140 to double, !dbg !215
  %142 = fadd double %141, 2.000000e+00, !dbg !216
  call void @fAddHandler(double %141, double 2.000000e+00, double %142, i64 93948859278120, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859279824, i32 136, i32 42), !dbg !217
  %143 = fmul double 0x3CB0000000000000, %142, !dbg !217
  call void @fMulHandler(double 0x3CB0000000000000, double %142, double %143, i64 0, i64 93948859279824, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859280208, i32 136, i32 37), !dbg !218
  %144 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !218
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %144, i32 0, i32 0, !dbg !219
  %146 = load double, double* %145, align 8, !dbg !219
  %147 = call double @fabs(double %146) #1, !dbg !220
  %148 = fmul double %143, %147, !dbg !221
  call void @fMulHandler(double %143, double %147, double %148, i64 93948859280208, i64 93948859283440, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859283952, i32 136, i32 49), !dbg !222
  %149 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !222
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %149, i32 0, i32 1, !dbg !223
  store double %148, double* %150, align 8, !dbg !224
  %151 = load i32, i32* %15, align 4, !dbg !225
  %152 = icmp ne i32 %151, 0, !dbg !225
  %153 = sext i32 %151 to i64, !dbg !225
  %154 = call i1 @iCmpInstHandler(i64 %153, i64 0, i1 %152, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859286000, i32 137, i32 14), !dbg !225
  br i1 %154, label %155, label %157, !dbg !225

; <label>:155:                                    ; preds = %128
  %156 = load i32, i32* %15, align 4, !dbg !226
  br label %167, !dbg !226

; <label>:157:                                    ; preds = %128
  %158 = load i32, i32* %12, align 4, !dbg !228
  %159 = icmp ne i32 %158, 0, !dbg !228
  %160 = sext i32 %158 to i64, !dbg !228
  %161 = call i1 @iCmpInstHandler(i64 %160, i64 0, i1 %159, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859290544, i32 137, i32 14), !dbg !228
  br i1 %161, label %162, label %164, !dbg !228

; <label>:162:                                    ; preds = %157
  %163 = load i32, i32* %12, align 4, !dbg !230
  br label %165, !dbg !230

; <label>:164:                                    ; preds = %157
  br label %165, !dbg !232

; <label>:165:                                    ; preds = %164, %162
  %166 = phi i32 [ %163, %162 ], [ 0, %164 ], !dbg !234
  br label %167, !dbg !234

; <label>:167:                                    ; preds = %165, %155
  %168 = phi i32 [ %156, %155 ], [ %166, %165 ], !dbg !236
  store i32 %168, i32* %4, align 4, !dbg !238
  br label %272, !dbg !238

; <label>:169:                                    ; preds = %82
  call void @llvm.dbg.declare(metadata double* %20, metadata !239, metadata !61), !dbg !241
  call void @llvm.dbg.declare(metadata double* %21, metadata !242, metadata !61), !dbg !243
  call void @llvm.dbg.declare(metadata double* %22, metadata !244, metadata !61), !dbg !245
  call void @llvm.dbg.declare(metadata double* %23, metadata !246, metadata !61), !dbg !247
  call void @llvm.dbg.declare(metadata double* %24, metadata !248, metadata !61), !dbg !249
  call void @llvm.dbg.declare(metadata double* %25, metadata !250, metadata !61), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %26, metadata !252, metadata !61), !dbg !253
  %170 = load double, double* %9, align 8, !dbg !254
  %171 = load double, double* %6, align 8, !dbg !255
  %172 = call i32 @gsl_sf_bessel_JY_steed_CF2(double %170, double %171, double* %24, double* %25), !dbg !256
  store i32 %172, i32* %26, align 4, !dbg !253
  call void @llvm.dbg.declare(metadata double* %27, metadata !257, metadata !61), !dbg !258
  call void @llvm.dbg.declare(metadata double* %28, metadata !259, metadata !61), !dbg !260
  %173 = load double, double* %11, align 8, !dbg !261
  %174 = fmul double %173, 0x2000000000000000, !dbg !262
  call void @fMulHandler(double %173, double 0x2000000000000000, double %174, i64 93948859314904, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859315344, i32 152, i32 29), !dbg !263
  %175 = load double, double* %10, align 8, !dbg !263
  %176 = fmul double %174, %175, !dbg !264
  call void @fMulHandler(double %174, double %175, double %176, i64 93948859315344, i64 93948859315736, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859316144, i32 152, i32 48), !dbg !260
  store double %176, double* %28, align 8, !dbg !260
  call void @llvm.dbg.declare(metadata double* %29, metadata !265, metadata !61), !dbg !266
  %177 = load double, double* %11, align 8, !dbg !267
  %178 = fmul double %177, 0x2000000000000000, !dbg !268
  call void @fMulHandler(double %177, double 0x2000000000000000, double %178, i64 93948859319336, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859319712, i32 153, i32 29), !dbg !266
  store double %178, double* %29, align 8, !dbg !266
  call void @llvm.dbg.declare(metadata double* %30, metadata !269, metadata !61), !dbg !270
  call void @llvm.dbg.declare(metadata i32* %31, metadata !271, metadata !61), !dbg !272
  %179 = load i32, i32* %8, align 4, !dbg !273
  store i32 %179, i32* %31, align 4, !dbg !275
  br label %180, !dbg !276

; <label>:180:                                    ; preds = %199, %169
  %181 = load i32, i32* %31, align 4, !dbg !277
  %182 = icmp sgt i32 %181, 0, !dbg !280
  %183 = sext i32 %181 to i64, !dbg !281
  %184 = call i1 @iCmpInstHandler(i64 %183, i64 0, i1 %182, i32 38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859325632, i32 156, i32 17), !dbg !281
  br i1 %184, label %185, label %202, !dbg !281

; <label>:185:                                    ; preds = %180
  %186 = load double, double* %9, align 8, !dbg !282
  %187 = load i32, i32* %31, align 4, !dbg !284
  %188 = sitofp i32 %187 to double, !dbg !284
  %189 = fadd double %186, %188, !dbg !285
  call void @fAddHandler(double %186, double %188, double %189, i64 93948859326744, i64 93948859327448, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859329120, i32 157, i32 23), !dbg !286
  %190 = fmul double 2.000000e+00, %189, !dbg !286
  call void @fMulHandler(double 2.000000e+00, double %189, double %190, i64 0, i64 93948859329120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859329568, i32 157, i32 19), !dbg !287
  %191 = load double, double* %6, align 8, !dbg !287
  %192 = fdiv double %190, %191, !dbg !288
  call void @fDivHandler(double %190, double %191, double %192, i64 93948859329568, i64 93948859329928, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859330336, i32 157, i32 26), !dbg !289
  %193 = load double, double* %29, align 8, !dbg !289
  %194 = fmul double %192, %193, !dbg !290
  call void @fMulHandler(double %192, double %193, double %194, i64 93948859330336, i64 93948859330728, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859331136, i32 157, i32 29), !dbg !291
  %195 = load double, double* %28, align 8, !dbg !291
  %196 = fsub double %194, %195, !dbg !292
  call void @fSubHandler(double %194, double %195, double %196, i64 93948859331136, i64 93948859331528, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859331936, i32 157, i32 34), !dbg !293
  store double %196, double* %30, align 8, !dbg !293
  %197 = load double, double* %29, align 8, !dbg !294
  store double %197, double* %28, align 8, !dbg !295
  %198 = load double, double* %30, align 8, !dbg !296
  store double %198, double* %29, align 8, !dbg !297
  br label %199, !dbg !298

; <label>:199:                                    ; preds = %185
  %200 = load i32, i32* %31, align 4, !dbg !299
  %201 = add nsw i32 %200, -1, !dbg !299
  store i32 %201, i32* %31, align 4, !dbg !299
  br label %180, !dbg !301, !llvm.loop !302

; <label>:202:                                    ; preds = %180
  %203 = load double, double* %28, align 8, !dbg !304
  %204 = load double, double* %29, align 8, !dbg !305
  %205 = fdiv double %203, %204, !dbg !306
  call void @fDivHandler(double %203, double %204, double %205, i64 93948859337672, i64 93948859337992, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859338400, i32 161, i32 23), !dbg !307
  store double %205, double* %21, align 8, !dbg !307
  %206 = load double, double* %29, align 8, !dbg !308
  %207 = fcmp oge double %206, 0.000000e+00, !dbg !308
  %208 = call i1 @fCmpInstHandler(double %206, double 0.000000e+00, i1 %207, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859339616, i32 162, i32 19), !dbg !308
  %209 = select i1 %208, i32 1, i32 -1, !dbg !308
  %210 = sitofp i32 %209 to double, !dbg !308
  store double %210, double* %22, align 8, !dbg !309
  %211 = load double, double* %9, align 8, !dbg !310
  %212 = load double, double* %6, align 8, !dbg !311
  %213 = fdiv double %211, %212, !dbg !312
  call void @fDivHandler(double %211, double %212, double %213, i64 93948859341928, i64 93948859342312, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859342720, i32 163, i32 24), !dbg !313
  %214 = load double, double* %21, align 8, !dbg !313
  %215 = fsub double %213, %214, !dbg !314
  call void @fSubHandler(double %213, double %214, double %215, i64 93948859342720, i64 93948859343112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859343520, i32 163, i32 27), !dbg !315
  store double %215, double* %23, align 8, !dbg !315
  %216 = load double, double* %24, align 8, !dbg !316
  %217 = load double, double* %23, align 8, !dbg !317
  %218 = fsub double %216, %217, !dbg !318
  call void @fSubHandler(double %216, double %217, double %218, i64 93948859344328, i64 93948859344712, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859345120, i32 165, i32 18), !dbg !319
  %219 = load double, double* %25, align 8, !dbg !319
  %220 = fdiv double %218, %219, !dbg !320
  call void @fDivHandler(double %218, double %219, double %220, i64 93948859345120, i64 93948859345512, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859345920, i32 165, i32 33), !dbg !321
  store double %220, double* %27, align 8, !dbg !321
  %221 = load double, double* %22, align 8, !dbg !322
  %222 = load double, double* %6, align 8, !dbg !323
  %223 = fmul double 0x400921FB54442D18, %222, !dbg !324
  call void @fMulHandler(double 0x400921FB54442D18, double %222, double %223, i64 0, i64 93948859347112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859347520, i32 166, i32 39), !dbg !325
  %224 = fdiv double 2.000000e+00, %223, !dbg !325
  call void @fDivHandler(double 2.000000e+00, double %223, double %224, i64 0, i64 93948859347520, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859347968, i32 166, i32 33), !dbg !326
  %225 = load double, double* %25, align 8, !dbg !326
  %226 = load double, double* %27, align 8, !dbg !327
  %227 = load double, double* %24, align 8, !dbg !328
  %228 = load double, double* %23, align 8, !dbg !329
  %229 = fsub double %227, %228, !dbg !330
  call void @fSubHandler(double %227, double %228, double %229, i64 93948859349096, i64 93948859349480, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859349888, i32 166, i32 58), !dbg !331
  %230 = fmul double %226, %229, !dbg !331
  call void @fMulHandler(double %226, double %229, double %230, i64 93948859348712, i64 93948859349888, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859350304, i32 166, i32 55), !dbg !332
  %231 = fadd double %225, %230, !dbg !332
  call void @fAddHandler(double %225, double %230, double %231, i64 93948859348328, i64 93948859350304, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859350720, i32 166, i32 48), !dbg !333
  %232 = fdiv double %224, %231, !dbg !333
  call void @fDivHandler(double %224, double %231, double %232, i64 93948859347968, i64 93948859350720, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859351136, i32 166, i32 43), !dbg !334
  %233 = call double @sqrt(double %232) #5, !dbg !334
  call void @callOneArgHandler(i32 14, double %232, double %233, i64 93948859351136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859352304, i32 166, i32 25), !dbg !335
  %234 = fmul double %221, %233, !dbg !335
  call void @fMulHandler(double %221, double %233, double %234, i64 93948859346728, i64 93948859352304, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859352816, i32 166, i32 23), !dbg !336
  store double %234, double* %20, align 8, !dbg !336
  %235 = load double, double* %20, align 8, !dbg !337
  %236 = load double, double* %11, align 8, !dbg !338
  %237 = fmul double %236, 0x2000000000000000, !dbg !339
  call void @fMulHandler(double %236, double 0x2000000000000000, double %237, i64 93948859354008, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859354416, i32 168, i32 36), !dbg !340
  %238 = fmul double %235, %237, !dbg !340
  call void @fMulHandler(double %235, double %237, double %238, i64 93948859353624, i64 93948859354416, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859354832, i32 168, i32 25), !dbg !341
  %239 = load double, double* %29, align 8, !dbg !341
  %240 = fdiv double %238, %239, !dbg !342
  call void @fDivHandler(double %238, double %239, double %240, i64 93948859354832, i64 93948859355224, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859355632, i32 168, i32 56), !dbg !343
  %241 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !343
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %241, i32 0, i32 0, !dbg !344
  store double %240, double* %242, align 8, !dbg !345
  %243 = load i32, i32* %8, align 4, !dbg !346
  %244 = sitofp i32 %243 to double, !dbg !346
  %245 = fadd double %244, 2.000000e+00, !dbg !347
  call void @fAddHandler(double %244, double 2.000000e+00, double %245, i64 93948859357656, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859359360, i32 169, i32 48), !dbg !348
  %246 = fmul double 0x3CC0000000000000, %245, !dbg !348
  call void @fMulHandler(double 0x3CC0000000000000, double %245, double %246, i64 0, i64 93948859359360, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859359808, i32 169, i32 43), !dbg !349
  %247 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !349
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %247, i32 0, i32 0, !dbg !350
  %249 = load double, double* %248, align 8, !dbg !350
  %250 = call double @fabs(double %249) #1, !dbg !351
  %251 = fmul double %246, %250, !dbg !352
  call void @fMulHandler(double %246, double %250, double %251, i64 93948859359808, i64 93948859362768, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859363248, i32 169, i32 55), !dbg !353
  %252 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !353
  %253 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %252, i32 0, i32 1, !dbg !354
  store double %251, double* %253, align 8, !dbg !355
  %254 = load i32, i32* %26, align 4, !dbg !356
  %255 = icmp ne i32 %254, 0, !dbg !356
  %256 = sext i32 %254 to i64, !dbg !356
  %257 = call i1 @iCmpInstHandler(i64 %256, i64 0, i1 %255, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859365296, i32 171, i32 14), !dbg !356
  br i1 %257, label %258, label %260, !dbg !356

; <label>:258:                                    ; preds = %202
  %259 = load i32, i32* %26, align 4, !dbg !357
  br label %270, !dbg !357

; <label>:260:                                    ; preds = %202
  %261 = load i32, i32* %12, align 4, !dbg !359
  %262 = icmp ne i32 %261, 0, !dbg !359
  %263 = sext i32 %261 to i64, !dbg !359
  %264 = call i1 @iCmpInstHandler(i64 %263, i64 0, i1 %262, i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0), i64 93948859369840, i32 171, i32 14), !dbg !359
  br i1 %264, label %265, label %267, !dbg !359

; <label>:265:                                    ; preds = %260
  %266 = load i32, i32* %12, align 4, !dbg !361
  br label %268, !dbg !361

; <label>:267:                                    ; preds = %260
  br label %268, !dbg !363

; <label>:268:                                    ; preds = %267, %265
  %269 = phi i32 [ %266, %265 ], [ 0, %267 ], !dbg !365
  br label %270, !dbg !365

; <label>:270:                                    ; preds = %268, %258
  %271 = phi i32 [ %259, %258 ], [ %269, %268 ], !dbg !367
  store i32 %271, i32* %4, align 4, !dbg !369
  br label %272, !dbg !369

; <label>:272:                                    ; preds = %270, %167, %77, %68, %59, %49
  %273 = load i32, i32* %4, align 4, !dbg !370
  ret i32 %273, !dbg !370
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @gsl_sf_bessel_IJ_taylor_e(double, double, i32, i32, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_Jnu_asympx_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_bessel_J_CF1(double, double, double*, double*) #2

declare i32 @gsl_sf_bessel_Y_temme(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare i32 @gsl_sf_bessel_JY_steed_CF2(double, double, double*, double*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_Jnu_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !371 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !372, metadata !61), !dbg !373
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !374, metadata !61), !dbg !375
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !376, metadata !61), !dbg !377
  %20 = load double, double* %6, align 8, !dbg !378
  %21 = fcmp ole double %20, 0.000000e+00, !dbg !380
  %22 = call i1 @fCmpInstHandler(double %20, double 0.000000e+00, i1 %21, i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859388112, i32 181, i32 8), !dbg !381
  br i1 %22, label %23, label %32, !dbg !381

; <label>:23:                                     ; preds = %3
  br label %24, !dbg !382, !llvm.loop !384

; <label>:24:                                     ; preds = %23
  %25 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !385
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !385
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !385
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !385
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !385
  store double 0x7FF8000000000000, double* %28, align 8, !dbg !385
  br label %29, !dbg !385, !llvm.loop !388

; <label>:29:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 182, i32 1), !dbg !390
  store i32 1, i32* %4, align 4, !dbg !390
  br label %148, !dbg !390
                                                  ; No predecessors!
  br label %31, !dbg !393

; <label>:31:                                     ; preds = %30
  br label %148, !dbg !395

; <label>:32:                                     ; preds = %3
  %33 = load double, double* %5, align 8, !dbg !396
  %34 = fcmp olt double %33, 0.000000e+00, !dbg !398
  %35 = call i1 @fCmpInstHandler(double %33, double 0.000000e+00, i1 %34, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859397184, i32 184, i32 15), !dbg !399
  br i1 %35, label %36, label %143, !dbg !399

; <label>:36:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata i32* %8, metadata !400, metadata !61), !dbg !402
  %37 = load double, double* %5, align 8, !dbg !403
  %38 = fsub double -0.000000e+00, %37, !dbg !404
  call void @fSubHandler(double -0.000000e+00, double %37, double %38, i64 0, i64 93948859399448, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859399888, i32 185, i32 42), !dbg !405
  %39 = load double, double* %6, align 8, !dbg !405
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !406
  %41 = call i32 @gsl_sf_bessel_Jnupos_e(double %38, double %39, %struct.gsl_sf_result_struct* %40), !dbg !407
  store i32 %41, i32* %8, align 4, !dbg !402
  call void @llvm.dbg.declare(metadata double* %9, metadata !408, metadata !61), !dbg !409
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !410
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !411
  %44 = load double, double* %43, align 8, !dbg !411
  store double %44, double* %9, align 8, !dbg !409
  call void @llvm.dbg.declare(metadata double* %10, metadata !412, metadata !61), !dbg !413
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !414
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !415
  %47 = load double, double* %46, align 8, !dbg !415
  store double %47, double* %10, align 8, !dbg !413
  call void @llvm.dbg.declare(metadata i32* %11, metadata !416, metadata !61), !dbg !417
  %48 = load double, double* %5, align 8, !dbg !418
  %49 = fsub double -0.000000e+00, %48, !dbg !419
  call void @fSubHandler(double -0.000000e+00, double %48, double %49, i64 0, i64 93948859414904, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859415280, i32 188, i32 42), !dbg !420
  %50 = load double, double* %6, align 8, !dbg !420
  %51 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !421
  %52 = call i32 @gsl_sf_bessel_Ynupos_e(double %49, double %50, %struct.gsl_sf_result_struct* %51), !dbg !422
  store i32 %52, i32* %11, align 4, !dbg !417
  call void @llvm.dbg.declare(metadata double* %12, metadata !423, metadata !61), !dbg !424
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !425
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 0, !dbg !426
  %55 = load double, double* %54, align 8, !dbg !426
  store double %55, double* %12, align 8, !dbg !424
  call void @llvm.dbg.declare(metadata double* %13, metadata !427, metadata !61), !dbg !428
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !429
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 1, !dbg !430
  %58 = load double, double* %57, align 8, !dbg !430
  store double %58, double* %13, align 8, !dbg !428
  call void @llvm.dbg.declare(metadata i32* %14, metadata !431, metadata !61), !dbg !432
  %59 = load double, double* %5, align 8, !dbg !433
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !434
  %61 = call i32 @gsl_sf_sin_pi_e(double %59, %struct.gsl_sf_result_struct* %60), !dbg !435
  store i32 %61, i32* %14, align 4, !dbg !432
  call void @llvm.dbg.declare(metadata double* %15, metadata !436, metadata !61), !dbg !437
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !438
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 0, !dbg !439
  %64 = load double, double* %63, align 8, !dbg !439
  store double %64, double* %15, align 8, !dbg !437
  call void @llvm.dbg.declare(metadata double* %16, metadata !440, metadata !61), !dbg !441
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !442
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 1, !dbg !443
  %67 = load double, double* %66, align 8, !dbg !443
  store double %67, double* %16, align 8, !dbg !441
  call void @llvm.dbg.declare(metadata i32* %17, metadata !444, metadata !61), !dbg !445
  %68 = load double, double* %5, align 8, !dbg !446
  %69 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !447
  %70 = call i32 @gsl_sf_cos_pi_e(double %68, %struct.gsl_sf_result_struct* %69), !dbg !448
  store i32 %70, i32* %17, align 4, !dbg !445
  call void @llvm.dbg.declare(metadata double* %18, metadata !449, metadata !61), !dbg !450
  %71 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !451
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !452
  %73 = load double, double* %72, align 8, !dbg !452
  store double %73, double* %18, align 8, !dbg !450
  call void @llvm.dbg.declare(metadata double* %19, metadata !453, metadata !61), !dbg !454
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !455
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 1, !dbg !456
  %76 = load double, double* %75, align 8, !dbg !456
  store double %76, double* %19, align 8, !dbg !454
  %77 = load double, double* %15, align 8, !dbg !457
  %78 = load double, double* %12, align 8, !dbg !458
  %79 = fmul double %77, %78, !dbg !459
  call void @fMulHandler(double %77, double %78, double %79, i64 93948859459432, i64 93948859459816, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859460224, i32 198, i32 20), !dbg !460
  %80 = load double, double* %18, align 8, !dbg !460
  %81 = load double, double* %9, align 8, !dbg !461
  %82 = fmul double %80, %81, !dbg !462
  call void @fMulHandler(double %80, double %81, double %82, i64 93948859460616, i64 93948859461000, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859461408, i32 198, i32 29), !dbg !463
  %83 = fadd double %79, %82, !dbg !463
  call void @fAddHandler(double %79, double %82, double %83, i64 93948859460224, i64 93948859461408, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859461824, i32 198, i32 26), !dbg !464
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !464
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !465
  store double %83, double* %85, align 8, !dbg !466
  %86 = load double, double* %18, align 8, !dbg !467
  %87 = load double, double* %13, align 8, !dbg !468
  %88 = fmul double %86, %87, !dbg !469
  call void @fMulHandler(double %86, double %87, double %88, i64 93948859463464, i64 93948859463848, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859464256, i32 199, i32 25), !dbg !470
  %89 = call double @fabs(double %88) #1, !dbg !470
  %90 = load double, double* %15, align 8, !dbg !471
  %91 = load double, double* %10, align 8, !dbg !472
  %92 = fmul double %90, %91, !dbg !473
  call void @fMulHandler(double %90, double %91, double %92, i64 93948859465192, i64 93948859465576, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859465984, i32 199, i32 40), !dbg !474
  %93 = call double @fabs(double %92) #1, !dbg !474
  %94 = fadd double %89, %93, !dbg !476
  call void @fAddHandler(double %89, double %93, double %94, i64 93948859464736, i64 93948859466464, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859466944, i32 199, i32 32), !dbg !477
  %95 = load double, double* %19, align 8, !dbg !477
  %96 = load double, double* %12, align 8, !dbg !478
  %97 = fmul double %95, %96, !dbg !479
  call void @fMulHandler(double %95, double %96, double %97, i64 93948859467336, i64 93948859467720, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859468128, i32 199, i32 58), !dbg !480
  %98 = call double @fabs(double %97) #1, !dbg !480
  %99 = fadd double %94, %98, !dbg !482
  call void @fAddHandler(double %94, double %98, double %99, i64 93948859466944, i64 93948859468608, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859469088, i32 199, i32 47), !dbg !483
  %100 = load double, double* %16, align 8, !dbg !483
  %101 = load double, double* %9, align 8, !dbg !484
  %102 = fmul double %100, %101, !dbg !485
  call void @fMulHandler(double %100, double %101, double %102, i64 93948859469480, i64 93948859469864, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859470272, i32 199, i32 76), !dbg !486
  %103 = call double @fabs(double %102) #1, !dbg !486
  %104 = fadd double %99, %103, !dbg !488
  call void @fAddHandler(double %99, double %103, double %104, i64 93948859469088, i64 93948859470752, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859471232, i32 199, i32 65), !dbg !489
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !489
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 1, !dbg !490
  store double %104, double* %106, align 8, !dbg !491
  %107 = load i32, i32* %8, align 4, !dbg !492
  %108 = icmp ne i32 %107, 0, !dbg !492
  %109 = sext i32 %107 to i64, !dbg !492
  %110 = call i1 @iCmpInstHandler(i64 %109, i64 0, i1 %108, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859473280, i32 200, i32 12), !dbg !492
  br i1 %110, label %111, label %113, !dbg !492

; <label>:111:                                    ; preds = %36
  %112 = load i32, i32* %8, align 4, !dbg !493
  br label %141, !dbg !493

; <label>:113:                                    ; preds = %36
  %114 = load i32, i32* %11, align 4, !dbg !494
  %115 = icmp ne i32 %114, 0, !dbg !494
  %116 = sext i32 %114 to i64, !dbg !494
  %117 = call i1 @iCmpInstHandler(i64 %116, i64 0, i1 %115, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859477824, i32 200, i32 12), !dbg !494
  br i1 %117, label %118, label %120, !dbg !494

; <label>:118:                                    ; preds = %113
  %119 = load i32, i32* %11, align 4, !dbg !495
  br label %139, !dbg !495

; <label>:120:                                    ; preds = %113
  %121 = load i32, i32* %14, align 4, !dbg !496
  %122 = icmp ne i32 %121, 0, !dbg !496
  %123 = sext i32 %121 to i64, !dbg !496
  %124 = call i1 @iCmpInstHandler(i64 %123, i64 0, i1 %122, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859482368, i32 200, i32 12), !dbg !496
  br i1 %124, label %125, label %127, !dbg !496

; <label>:125:                                    ; preds = %120
  %126 = load i32, i32* %14, align 4, !dbg !498
  br label %137, !dbg !498

; <label>:127:                                    ; preds = %120
  %128 = load i32, i32* %17, align 4, !dbg !500
  %129 = icmp ne i32 %128, 0, !dbg !500
  %130 = sext i32 %128 to i64, !dbg !500
  %131 = call i1 @iCmpInstHandler(i64 %130, i64 0, i1 %129, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @3, i32 0, i32 0), i64 93948859486912, i32 200, i32 12), !dbg !500
  br i1 %131, label %132, label %134, !dbg !500

; <label>:132:                                    ; preds = %127
  %133 = load i32, i32* %17, align 4, !dbg !502
  br label %135, !dbg !502

; <label>:134:                                    ; preds = %127
  br label %135, !dbg !504

; <label>:135:                                    ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 0, %134 ], !dbg !506
  br label %137, !dbg !506

; <label>:137:                                    ; preds = %135, %125
  %138 = phi i32 [ %126, %125 ], [ %136, %135 ], !dbg !508
  br label %139, !dbg !508

; <label>:139:                                    ; preds = %137, %118
  %140 = phi i32 [ %119, %118 ], [ %138, %137 ], !dbg !510
  br label %141, !dbg !510

; <label>:141:                                    ; preds = %139, %111
  %142 = phi i32 [ %112, %111 ], [ %140, %139 ], !dbg !512
  store i32 %142, i32* %4, align 4, !dbg !514
  br label %148, !dbg !514

; <label>:143:                                    ; preds = %32
  %144 = load double, double* %5, align 8, !dbg !515
  %145 = load double, double* %6, align 8, !dbg !516
  %146 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !517
  %147 = call i32 @gsl_sf_bessel_Jnupos_e(double %144, double %145, %struct.gsl_sf_result_struct* %146), !dbg !518
  store i32 %147, i32* %4, align 4, !dbg !519
  br label %148, !dbg !519

; <label>:148:                                    ; preds = %143, %141, %31, %29
  %149 = load i32, i32* %4, align 4, !dbg !520
  ret i32 %149, !dbg !520
}

declare void @gsl_error(i8*, i8*, i32, i32) #2

declare i32 @gsl_sf_bessel_Ynupos_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_sin_pi_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_cos_pi_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_Jnu(double, double) #0 !dbg !521 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !524, metadata !61), !dbg !525
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !526, metadata !61), !dbg !527
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !528, metadata !61), !dbg !529
  call void @llvm.dbg.declare(metadata i32* %7, metadata !530, metadata !61), !dbg !529
  %8 = load double, double* %4, align 8, !dbg !529
  %9 = load double, double* %5, align 8, !dbg !529
  %10 = call i32 @gsl_sf_bessel_Jnu_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !529
  store i32 %10, i32* %7, align 4, !dbg !529
  %11 = load i32, i32* %7, align 4, !dbg !531
  %12 = icmp ne i32 %11, 0, !dbg !531
  %13 = sext i32 %11 to i64, !dbg !529
  %14 = call i1 @iCmpInstHandler(i64 %13, i64 0, i1 %12, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @5, i32 0, i32 0), i64 93948859515040, i32 211, i32 3), !dbg !529
  br i1 %14, label %15, label %21, !dbg !529

; <label>:15:                                     ; preds = %2
  br label %16, !dbg !533, !llvm.loop !536

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %7, align 4, !dbg !538
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 211, i32 %17), !dbg !538
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !538
  %19 = load double, double* %18, align 8, !dbg !538
  store double %19, double* %3, align 8, !dbg !538
  br label %24, !dbg !538
                                                  ; No predecessors!
  br label %21, !dbg !541

; <label>:21:                                     ; preds = %20, %2
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !543
  %23 = load double, double* %22, align 8, !dbg !543
  store double %23, double* %3, align 8, !dbg !543
  br label %24, !dbg !543

; <label>:24:                                     ; preds = %21, %16
  %25 = load double, double* %3, align 8, !dbg !545
  ret double %25, !dbg !545
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
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "bessel_Jnu.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!47 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnupos_e", scope: !1, file: !1, line: 78, type: !48, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!48 = !DISubroutineType(types: !49)
!49 = !{!42, !50, !50, !52}
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !54, line: 41, baseType: !55)
!54 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !54, line: 37, size: 128, align: 64, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !55, file: !54, line: 38, baseType: !51, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !55, file: !54, line: 39, baseType: !51, size: 64, align: 64, offset: 64)
!59 = !{}
!60 = !DILocalVariable(name: "nu", arg: 1, scope: !47, file: !1, line: 78, type: !50)
!61 = !DIExpression()
!62 = !DILocation(line: 78, column: 37, scope: !47)
!63 = !DILocalVariable(name: "x", arg: 2, scope: !47, file: !1, line: 78, type: !50)
!64 = !DILocation(line: 78, column: 54, scope: !47)
!65 = !DILocalVariable(name: "result", arg: 3, scope: !47, file: !1, line: 78, type: !52)
!66 = !DILocation(line: 78, column: 73, scope: !47)
!67 = !DILocation(line: 82, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !47, file: !1, line: 82, column: 6)
!69 = !DILocation(line: 82, column: 8, scope: !68)
!70 = !DILocation(line: 82, column: 6, scope: !47)
!71 = !DILocation(line: 83, column: 8, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 83, column: 8)
!73 = distinct !DILexicalBlock(scope: !68, file: !1, line: 82, column: 16)
!74 = !DILocation(line: 83, column: 11, scope: !72)
!75 = !DILocation(line: 83, column: 8, scope: !73)
!76 = !DILocation(line: 84, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 83, column: 19)
!78 = !DILocation(line: 84, column: 15, scope: !77)
!79 = !DILocation(line: 84, column: 19, scope: !77)
!80 = !DILocation(line: 85, column: 7, scope: !77)
!81 = !DILocation(line: 85, column: 15, scope: !77)
!82 = !DILocation(line: 85, column: 19, scope: !77)
!83 = !DILocation(line: 86, column: 5, scope: !77)
!84 = !DILocation(line: 88, column: 7, scope: !85)
!85 = distinct !DILexicalBlock(scope: !72, file: !1, line: 87, column: 10)
!86 = !DILocation(line: 88, column: 15, scope: !85)
!87 = !DILocation(line: 88, column: 19, scope: !85)
!88 = !DILocation(line: 89, column: 7, scope: !85)
!89 = !DILocation(line: 89, column: 15, scope: !85)
!90 = !DILocation(line: 89, column: 19, scope: !85)
!91 = !DILocation(line: 91, column: 5, scope: !73)
!92 = !DILocation(line: 93, column: 11, scope: !93)
!93 = distinct !DILexicalBlock(scope: !68, file: !1, line: 93, column: 11)
!94 = !DILocation(line: 93, column: 13, scope: !93)
!95 = !DILocation(line: 93, column: 12, scope: !93)
!96 = !DILocation(line: 93, column: 23, scope: !93)
!97 = !DILocation(line: 93, column: 25, scope: !93)
!98 = !DILocation(line: 93, column: 21, scope: !93)
!99 = !DILocation(line: 93, column: 15, scope: !93)
!100 = !DILocation(line: 93, column: 11, scope: !68)
!101 = !DILocation(line: 94, column: 38, scope: !102)
!102 = distinct !DILexicalBlock(scope: !93, file: !1, line: 93, column: 32)
!103 = !DILocation(line: 94, column: 42, scope: !102)
!104 = !DILocation(line: 94, column: 71, scope: !102)
!105 = !DILocation(line: 94, column: 12, scope: !102)
!106 = !DILocation(line: 94, column: 5, scope: !102)
!107 = !DILocation(line: 96, column: 11, scope: !108)
!108 = distinct !DILexicalBlock(scope: !93, file: !1, line: 96, column: 11)
!109 = !DILocation(line: 96, column: 14, scope: !108)
!110 = !DILocation(line: 96, column: 11, scope: !93)
!111 = !DILocation(line: 97, column: 44, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 96, column: 22)
!113 = !DILocation(line: 97, column: 48, scope: !112)
!114 = !DILocation(line: 97, column: 51, scope: !112)
!115 = !DILocation(line: 97, column: 12, scope: !112)
!116 = !DILocation(line: 97, column: 5, scope: !112)
!117 = !DILocation(line: 99, column: 11, scope: !118)
!118 = distinct !DILexicalBlock(scope: !108, file: !1, line: 99, column: 11)
!119 = !DILocation(line: 99, column: 13, scope: !118)
!120 = !DILocation(line: 99, column: 11, scope: !108)
!121 = !DILocation(line: 105, column: 39, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 100, column: 3)
!123 = !DILocation(line: 105, column: 43, scope: !122)
!124 = !DILocation(line: 105, column: 46, scope: !122)
!125 = !DILocation(line: 105, column: 12, scope: !122)
!126 = !DILocation(line: 105, column: 5, scope: !122)
!127 = !DILocalVariable(name: "N", scope: !128, file: !1, line: 109, type: !42)
!128 = distinct !DILexicalBlock(scope: !118, file: !1, line: 107, column: 8)
!129 = !DILocation(line: 109, column: 9, scope: !128)
!130 = !DILocation(line: 109, column: 19, scope: !128)
!131 = !DILocation(line: 109, column: 22, scope: !128)
!132 = !DILocation(line: 109, column: 13, scope: !128)
!133 = !DILocalVariable(name: "mu", scope: !128, file: !1, line: 110, type: !51)
!134 = !DILocation(line: 110, column: 12, scope: !128)
!135 = !DILocation(line: 110, column: 17, scope: !128)
!136 = !DILocation(line: 110, column: 22, scope: !128)
!137 = !DILocation(line: 110, column: 20, scope: !128)
!138 = !DILocalVariable(name: "Jnup1_Jnu", scope: !128, file: !1, line: 114, type: !51)
!139 = !DILocation(line: 114, column: 12, scope: !128)
!140 = !DILocalVariable(name: "sgn_Jnu", scope: !128, file: !1, line: 115, type: !51)
!141 = !DILocation(line: 115, column: 12, scope: !128)
!142 = !DILocalVariable(name: "stat_CF1", scope: !128, file: !1, line: 116, type: !143)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!144 = !DILocation(line: 116, column: 15, scope: !128)
!145 = !DILocation(line: 116, column: 46, scope: !128)
!146 = !DILocation(line: 116, column: 50, scope: !128)
!147 = !DILocation(line: 116, column: 26, scope: !128)
!148 = !DILocation(line: 118, column: 8, scope: !149)
!149 = distinct !DILexicalBlock(scope: !128, file: !1, line: 118, column: 8)
!150 = !DILocation(line: 118, column: 10, scope: !149)
!151 = !DILocation(line: 118, column: 8, scope: !128)
!152 = !DILocalVariable(name: "Y_mu", scope: !153, file: !1, line: 122, type: !53)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 118, column: 17)
!154 = !DILocation(line: 122, column: 21, scope: !153)
!155 = !DILocalVariable(name: "Y_mup1", scope: !153, file: !1, line: 122, type: !53)
!156 = !DILocation(line: 122, column: 27, scope: !153)
!157 = !DILocalVariable(name: "stat_mu", scope: !153, file: !1, line: 123, type: !143)
!158 = !DILocation(line: 123, column: 17, scope: !153)
!159 = !DILocation(line: 123, column: 49, scope: !153)
!160 = !DILocation(line: 123, column: 53, scope: !153)
!161 = !DILocation(line: 123, column: 27, scope: !153)
!162 = !DILocalVariable(name: "Ynm1", scope: !153, file: !1, line: 125, type: !51)
!163 = !DILocation(line: 125, column: 14, scope: !153)
!164 = !DILocation(line: 125, column: 26, scope: !153)
!165 = !DILocalVariable(name: "Yn", scope: !153, file: !1, line: 126, type: !51)
!166 = !DILocation(line: 126, column: 14, scope: !153)
!167 = !DILocation(line: 126, column: 28, scope: !153)
!168 = !DILocalVariable(name: "Ynp1", scope: !153, file: !1, line: 127, type: !51)
!169 = !DILocation(line: 127, column: 14, scope: !153)
!170 = !DILocalVariable(name: "n", scope: !153, file: !1, line: 128, type: !42)
!171 = !DILocation(line: 128, column: 11, scope: !153)
!172 = !DILocation(line: 129, column: 12, scope: !173)
!173 = distinct !DILexicalBlock(scope: !153, file: !1, line: 129, column: 7)
!174 = !DILocation(line: 129, column: 11, scope: !173)
!175 = !DILocation(line: 129, column: 16, scope: !176)
!176 = !DILexicalBlockFile(scope: !177, file: !1, discriminator: 1)
!177 = distinct !DILexicalBlock(scope: !173, file: !1, line: 129, column: 7)
!178 = !DILocation(line: 129, column: 18, scope: !176)
!179 = !DILocation(line: 129, column: 17, scope: !176)
!180 = !DILocation(line: 129, column: 7, scope: !176)
!181 = !DILocation(line: 130, column: 21, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !1, line: 129, column: 26)
!183 = !DILocation(line: 130, column: 24, scope: !182)
!184 = !DILocation(line: 130, column: 23, scope: !182)
!185 = !DILocation(line: 130, column: 19, scope: !182)
!186 = !DILocation(line: 130, column: 27, scope: !182)
!187 = !DILocation(line: 130, column: 26, scope: !182)
!188 = !DILocation(line: 130, column: 31, scope: !182)
!189 = !DILocation(line: 130, column: 29, scope: !182)
!190 = !DILocation(line: 130, column: 36, scope: !182)
!191 = !DILocation(line: 130, column: 34, scope: !182)
!192 = !DILocation(line: 130, column: 14, scope: !182)
!193 = !DILocation(line: 131, column: 16, scope: !182)
!194 = !DILocation(line: 131, column: 14, scope: !182)
!195 = !DILocation(line: 132, column: 16, scope: !182)
!196 = !DILocation(line: 132, column: 14, scope: !182)
!197 = !DILocation(line: 133, column: 7, scope: !182)
!198 = !DILocation(line: 129, column: 22, scope: !199)
!199 = !DILexicalBlockFile(scope: !177, file: !1, discriminator: 2)
!200 = !DILocation(line: 129, column: 7, scope: !199)
!201 = distinct !{!201, !202}
!202 = !DILocation(line: 129, column: 7, scope: !153)
!203 = !DILocation(line: 135, column: 31, scope: !153)
!204 = !DILocation(line: 135, column: 30, scope: !153)
!205 = !DILocation(line: 135, column: 24, scope: !153)
!206 = !DILocation(line: 135, column: 37, scope: !153)
!207 = !DILocation(line: 135, column: 47, scope: !153)
!208 = !DILocation(line: 135, column: 46, scope: !153)
!209 = !DILocation(line: 135, column: 52, scope: !153)
!210 = !DILocation(line: 135, column: 50, scope: !153)
!211 = !DILocation(line: 135, column: 34, scope: !153)
!212 = !DILocation(line: 135, column: 7, scope: !153)
!213 = !DILocation(line: 135, column: 15, scope: !153)
!214 = !DILocation(line: 135, column: 19, scope: !153)
!215 = !DILocation(line: 136, column: 40, scope: !153)
!216 = !DILocation(line: 136, column: 42, scope: !153)
!217 = !DILocation(line: 136, column: 37, scope: !153)
!218 = !DILocation(line: 136, column: 56, scope: !153)
!219 = !DILocation(line: 136, column: 64, scope: !153)
!220 = !DILocation(line: 136, column: 51, scope: !153)
!221 = !DILocation(line: 136, column: 49, scope: !153)
!222 = !DILocation(line: 136, column: 7, scope: !153)
!223 = !DILocation(line: 136, column: 15, scope: !153)
!224 = !DILocation(line: 136, column: 19, scope: !153)
!225 = !DILocation(line: 137, column: 14, scope: !153)
!226 = !DILocation(line: 137, column: 14, scope: !227)
!227 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 1)
!228 = !DILocation(line: 137, column: 14, scope: !229)
!229 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 2)
!230 = !DILocation(line: 137, column: 14, scope: !231)
!231 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 3)
!232 = !DILocation(line: 137, column: 14, scope: !233)
!233 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 4)
!234 = !DILocation(line: 137, column: 14, scope: !235)
!235 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 5)
!236 = !DILocation(line: 137, column: 14, scope: !237)
!237 = !DILexicalBlockFile(scope: !153, file: !1, discriminator: 6)
!238 = !DILocation(line: 137, column: 7, scope: !237)
!239 = !DILocalVariable(name: "Jmu", scope: !240, file: !1, line: 144, type: !51)
!240 = distinct !DILexicalBlock(scope: !149, file: !1, line: 139, column: 10)
!241 = !DILocation(line: 144, column: 14, scope: !240)
!242 = !DILocalVariable(name: "Jmup1_Jmu", scope: !240, file: !1, line: 145, type: !51)
!243 = !DILocation(line: 145, column: 14, scope: !240)
!244 = !DILocalVariable(name: "sgn_Jmu", scope: !240, file: !1, line: 146, type: !51)
!245 = !DILocation(line: 146, column: 14, scope: !240)
!246 = !DILocalVariable(name: "Jmuprime_Jmu", scope: !240, file: !1, line: 147, type: !51)
!247 = !DILocation(line: 147, column: 14, scope: !240)
!248 = !DILocalVariable(name: "P", scope: !240, file: !1, line: 148, type: !51)
!249 = !DILocation(line: 148, column: 14, scope: !240)
!250 = !DILocalVariable(name: "Q", scope: !240, file: !1, line: 148, type: !51)
!251 = !DILocation(line: 148, column: 17, scope: !240)
!252 = !DILocalVariable(name: "stat_CF2", scope: !240, file: !1, line: 149, type: !143)
!253 = !DILocation(line: 149, column: 17, scope: !240)
!254 = !DILocation(line: 149, column: 55, scope: !240)
!255 = !DILocation(line: 149, column: 59, scope: !240)
!256 = !DILocation(line: 149, column: 28, scope: !240)
!257 = !DILocalVariable(name: "gamma", scope: !240, file: !1, line: 150, type: !51)
!258 = !DILocation(line: 150, column: 14, scope: !240)
!259 = !DILocalVariable(name: "Jnp1", scope: !240, file: !1, line: 152, type: !51)
!260 = !DILocation(line: 152, column: 14, scope: !240)
!261 = !DILocation(line: 152, column: 21, scope: !240)
!262 = !DILocation(line: 152, column: 29, scope: !240)
!263 = !DILocation(line: 152, column: 50, scope: !240)
!264 = !DILocation(line: 152, column: 48, scope: !240)
!265 = !DILocalVariable(name: "Jn", scope: !240, file: !1, line: 153, type: !51)
!266 = !DILocation(line: 153, column: 14, scope: !240)
!267 = !DILocation(line: 153, column: 21, scope: !240)
!268 = !DILocation(line: 153, column: 29, scope: !240)
!269 = !DILocalVariable(name: "Jnm1", scope: !240, file: !1, line: 154, type: !51)
!270 = !DILocation(line: 154, column: 14, scope: !240)
!271 = !DILocalVariable(name: "n", scope: !240, file: !1, line: 155, type: !42)
!272 = !DILocation(line: 155, column: 11, scope: !240)
!273 = !DILocation(line: 156, column: 13, scope: !274)
!274 = distinct !DILexicalBlock(scope: !240, file: !1, line: 156, column: 7)
!275 = !DILocation(line: 156, column: 12, scope: !274)
!276 = !DILocation(line: 156, column: 11, scope: !274)
!277 = !DILocation(line: 156, column: 16, scope: !278)
!278 = !DILexicalBlockFile(scope: !279, file: !1, discriminator: 1)
!279 = distinct !DILexicalBlock(scope: !274, file: !1, line: 156, column: 7)
!280 = !DILocation(line: 156, column: 17, scope: !278)
!281 = !DILocation(line: 156, column: 7, scope: !278)
!282 = !DILocation(line: 157, column: 21, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !1, line: 156, column: 26)
!284 = !DILocation(line: 157, column: 24, scope: !283)
!285 = !DILocation(line: 157, column: 23, scope: !283)
!286 = !DILocation(line: 157, column: 19, scope: !283)
!287 = !DILocation(line: 157, column: 27, scope: !283)
!288 = !DILocation(line: 157, column: 26, scope: !283)
!289 = !DILocation(line: 157, column: 31, scope: !283)
!290 = !DILocation(line: 157, column: 29, scope: !283)
!291 = !DILocation(line: 157, column: 36, scope: !283)
!292 = !DILocation(line: 157, column: 34, scope: !283)
!293 = !DILocation(line: 157, column: 14, scope: !283)
!294 = !DILocation(line: 158, column: 16, scope: !283)
!295 = !DILocation(line: 158, column: 14, scope: !283)
!296 = !DILocation(line: 159, column: 16, scope: !283)
!297 = !DILocation(line: 159, column: 14, scope: !283)
!298 = !DILocation(line: 160, column: 7, scope: !283)
!299 = !DILocation(line: 156, column: 22, scope: !300)
!300 = !DILexicalBlockFile(scope: !279, file: !1, discriminator: 2)
!301 = !DILocation(line: 156, column: 7, scope: !300)
!302 = distinct !{!302, !303}
!303 = !DILocation(line: 156, column: 7, scope: !240)
!304 = !DILocation(line: 161, column: 19, scope: !240)
!305 = !DILocation(line: 161, column: 24, scope: !240)
!306 = !DILocation(line: 161, column: 23, scope: !240)
!307 = !DILocation(line: 161, column: 17, scope: !240)
!308 = !DILocation(line: 162, column: 19, scope: !240)
!309 = !DILocation(line: 162, column: 17, scope: !240)
!310 = !DILocation(line: 163, column: 22, scope: !240)
!311 = !DILocation(line: 163, column: 25, scope: !240)
!312 = !DILocation(line: 163, column: 24, scope: !240)
!313 = !DILocation(line: 163, column: 29, scope: !240)
!314 = !DILocation(line: 163, column: 27, scope: !240)
!315 = !DILocation(line: 163, column: 20, scope: !240)
!316 = !DILocation(line: 165, column: 16, scope: !240)
!317 = !DILocation(line: 165, column: 20, scope: !240)
!318 = !DILocation(line: 165, column: 18, scope: !240)
!319 = !DILocation(line: 165, column: 34, scope: !240)
!320 = !DILocation(line: 165, column: 33, scope: !240)
!321 = !DILocation(line: 165, column: 13, scope: !240)
!322 = !DILocation(line: 166, column: 15, scope: !240)
!323 = !DILocation(line: 166, column: 40, scope: !240)
!324 = !DILocation(line: 166, column: 39, scope: !240)
!325 = !DILocation(line: 166, column: 33, scope: !240)
!326 = !DILocation(line: 166, column: 46, scope: !240)
!327 = !DILocation(line: 166, column: 50, scope: !240)
!328 = !DILocation(line: 166, column: 57, scope: !240)
!329 = !DILocation(line: 166, column: 59, scope: !240)
!330 = !DILocation(line: 166, column: 58, scope: !240)
!331 = !DILocation(line: 166, column: 55, scope: !240)
!332 = !DILocation(line: 166, column: 48, scope: !240)
!333 = !DILocation(line: 166, column: 43, scope: !240)
!334 = !DILocation(line: 166, column: 25, scope: !240)
!335 = !DILocation(line: 166, column: 23, scope: !240)
!336 = !DILocation(line: 166, column: 13, scope: !240)
!337 = !DILocation(line: 168, column: 21, scope: !240)
!338 = !DILocation(line: 168, column: 28, scope: !240)
!339 = !DILocation(line: 168, column: 36, scope: !240)
!340 = !DILocation(line: 168, column: 25, scope: !240)
!341 = !DILocation(line: 168, column: 58, scope: !240)
!342 = !DILocation(line: 168, column: 56, scope: !240)
!343 = !DILocation(line: 168, column: 7, scope: !240)
!344 = !DILocation(line: 168, column: 15, scope: !240)
!345 = !DILocation(line: 168, column: 19, scope: !240)
!346 = !DILocation(line: 169, column: 46, scope: !240)
!347 = !DILocation(line: 169, column: 48, scope: !240)
!348 = !DILocation(line: 169, column: 43, scope: !240)
!349 = !DILocation(line: 169, column: 62, scope: !240)
!350 = !DILocation(line: 169, column: 70, scope: !240)
!351 = !DILocation(line: 169, column: 57, scope: !240)
!352 = !DILocation(line: 169, column: 55, scope: !240)
!353 = !DILocation(line: 169, column: 7, scope: !240)
!354 = !DILocation(line: 169, column: 15, scope: !240)
!355 = !DILocation(line: 169, column: 19, scope: !240)
!356 = !DILocation(line: 171, column: 14, scope: !240)
!357 = !DILocation(line: 171, column: 14, scope: !358)
!358 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 1)
!359 = !DILocation(line: 171, column: 14, scope: !360)
!360 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 2)
!361 = !DILocation(line: 171, column: 14, scope: !362)
!362 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 3)
!363 = !DILocation(line: 171, column: 14, scope: !364)
!364 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 4)
!365 = !DILocation(line: 171, column: 14, scope: !366)
!366 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 5)
!367 = !DILocation(line: 171, column: 14, scope: !368)
!368 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 6)
!369 = !DILocation(line: 171, column: 7, scope: !368)
!370 = !DILocation(line: 174, column: 1, scope: !47)
!371 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnu_e", scope: !1, file: !1, line: 177, type: !48, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!372 = !DILocalVariable(name: "nu", arg: 1, scope: !371, file: !1, line: 177, type: !50)
!373 = !DILocation(line: 177, column: 34, scope: !371)
!374 = !DILocalVariable(name: "x", arg: 2, scope: !371, file: !1, line: 177, type: !50)
!375 = !DILocation(line: 177, column: 51, scope: !371)
!376 = !DILocalVariable(name: "result", arg: 3, scope: !371, file: !1, line: 177, type: !52)
!377 = !DILocation(line: 177, column: 70, scope: !371)
!378 = !DILocation(line: 181, column: 6, scope: !379)
!379 = distinct !DILexicalBlock(scope: !371, file: !1, line: 181, column: 6)
!380 = !DILocation(line: 181, column: 8, scope: !379)
!381 = !DILocation(line: 181, column: 6, scope: !371)
!382 = !DILocation(line: 182, column: 5, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !1, line: 181, column: 16)
!384 = distinct !{!384, !382}
!385 = !DILocation(line: 182, column: 5, scope: !386)
!386 = !DILexicalBlockFile(scope: !387, file: !1, discriminator: 1)
!387 = distinct !DILexicalBlock(scope: !383, file: !1, line: 182, column: 5)
!388 = distinct !{!388, !389}
!389 = !DILocation(line: 182, column: 5, scope: !387)
!390 = !DILocation(line: 182, column: 5, scope: !391)
!391 = !DILexicalBlockFile(scope: !392, file: !1, discriminator: 2)
!392 = distinct !DILexicalBlock(scope: !387, file: !1, line: 182, column: 5)
!393 = !DILocation(line: 182, column: 5, scope: !394)
!394 = !DILexicalBlockFile(scope: !387, file: !1, discriminator: 3)
!395 = !DILocation(line: 183, column: 3, scope: !383)
!396 = !DILocation(line: 184, column: 12, scope: !397)
!397 = distinct !DILexicalBlock(scope: !379, file: !1, line: 184, column: 12)
!398 = !DILocation(line: 184, column: 15, scope: !397)
!399 = !DILocation(line: 184, column: 12, scope: !379)
!400 = !DILocalVariable(name: "Jstatus", scope: !401, file: !1, line: 185, type: !42)
!401 = distinct !DILexicalBlock(scope: !397, file: !1, line: 184, column: 22)
!402 = !DILocation(line: 185, column: 9, scope: !401)
!403 = !DILocation(line: 185, column: 43, scope: !401)
!404 = !DILocation(line: 185, column: 42, scope: !401)
!405 = !DILocation(line: 185, column: 47, scope: !401)
!406 = !DILocation(line: 185, column: 50, scope: !401)
!407 = !DILocation(line: 185, column: 19, scope: !401)
!408 = !DILocalVariable(name: "Jval", scope: !401, file: !1, line: 186, type: !51)
!409 = !DILocation(line: 186, column: 12, scope: !401)
!410 = !DILocation(line: 186, column: 19, scope: !401)
!411 = !DILocation(line: 186, column: 27, scope: !401)
!412 = !DILocalVariable(name: "Jerr", scope: !401, file: !1, line: 187, type: !51)
!413 = !DILocation(line: 187, column: 12, scope: !401)
!414 = !DILocation(line: 187, column: 19, scope: !401)
!415 = !DILocation(line: 187, column: 27, scope: !401)
!416 = !DILocalVariable(name: "Ystatus", scope: !401, file: !1, line: 188, type: !42)
!417 = !DILocation(line: 188, column: 9, scope: !401)
!418 = !DILocation(line: 188, column: 43, scope: !401)
!419 = !DILocation(line: 188, column: 42, scope: !401)
!420 = !DILocation(line: 188, column: 47, scope: !401)
!421 = !DILocation(line: 188, column: 50, scope: !401)
!422 = !DILocation(line: 188, column: 19, scope: !401)
!423 = !DILocalVariable(name: "Yval", scope: !401, file: !1, line: 189, type: !51)
!424 = !DILocation(line: 189, column: 12, scope: !401)
!425 = !DILocation(line: 189, column: 19, scope: !401)
!426 = !DILocation(line: 189, column: 27, scope: !401)
!427 = !DILocalVariable(name: "Yerr", scope: !401, file: !1, line: 190, type: !51)
!428 = !DILocation(line: 190, column: 12, scope: !401)
!429 = !DILocation(line: 190, column: 19, scope: !401)
!430 = !DILocation(line: 190, column: 27, scope: !401)
!431 = !DILocalVariable(name: "sinstatus", scope: !401, file: !1, line: 192, type: !42)
!432 = !DILocation(line: 192, column: 9, scope: !401)
!433 = !DILocation(line: 192, column: 37, scope: !401)
!434 = !DILocation(line: 192, column: 41, scope: !401)
!435 = !DILocation(line: 192, column: 21, scope: !401)
!436 = !DILocalVariable(name: "s", scope: !401, file: !1, line: 193, type: !51)
!437 = !DILocation(line: 193, column: 12, scope: !401)
!438 = !DILocation(line: 193, column: 16, scope: !401)
!439 = !DILocation(line: 193, column: 24, scope: !401)
!440 = !DILocalVariable(name: "serr", scope: !401, file: !1, line: 194, type: !51)
!441 = !DILocation(line: 194, column: 12, scope: !401)
!442 = !DILocation(line: 194, column: 19, scope: !401)
!443 = !DILocation(line: 194, column: 27, scope: !401)
!444 = !DILocalVariable(name: "cosstatus", scope: !401, file: !1, line: 195, type: !42)
!445 = !DILocation(line: 195, column: 9, scope: !401)
!446 = !DILocation(line: 195, column: 37, scope: !401)
!447 = !DILocation(line: 195, column: 41, scope: !401)
!448 = !DILocation(line: 195, column: 21, scope: !401)
!449 = !DILocalVariable(name: "c", scope: !401, file: !1, line: 196, type: !51)
!450 = !DILocation(line: 196, column: 12, scope: !401)
!451 = !DILocation(line: 196, column: 16, scope: !401)
!452 = !DILocation(line: 196, column: 24, scope: !401)
!453 = !DILocalVariable(name: "cerr", scope: !401, file: !1, line: 197, type: !51)
!454 = !DILocation(line: 197, column: 12, scope: !401)
!455 = !DILocation(line: 197, column: 19, scope: !401)
!456 = !DILocation(line: 197, column: 27, scope: !401)
!457 = !DILocation(line: 198, column: 19, scope: !401)
!458 = !DILocation(line: 198, column: 21, scope: !401)
!459 = !DILocation(line: 198, column: 20, scope: !401)
!460 = !DILocation(line: 198, column: 28, scope: !401)
!461 = !DILocation(line: 198, column: 30, scope: !401)
!462 = !DILocation(line: 198, column: 29, scope: !401)
!463 = !DILocation(line: 198, column: 26, scope: !401)
!464 = !DILocation(line: 198, column: 5, scope: !401)
!465 = !DILocation(line: 198, column: 13, scope: !401)
!466 = !DILocation(line: 198, column: 17, scope: !401)
!467 = !DILocation(line: 199, column: 24, scope: !401)
!468 = !DILocation(line: 199, column: 26, scope: !401)
!469 = !DILocation(line: 199, column: 25, scope: !401)
!470 = !DILocation(line: 199, column: 19, scope: !401)
!471 = !DILocation(line: 199, column: 39, scope: !401)
!472 = !DILocation(line: 199, column: 41, scope: !401)
!473 = !DILocation(line: 199, column: 40, scope: !401)
!474 = !DILocation(line: 199, column: 34, scope: !475)
!475 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 1)
!476 = !DILocation(line: 199, column: 32, scope: !401)
!477 = !DILocation(line: 199, column: 54, scope: !401)
!478 = !DILocation(line: 199, column: 59, scope: !401)
!479 = !DILocation(line: 199, column: 58, scope: !401)
!480 = !DILocation(line: 199, column: 49, scope: !481)
!481 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 2)
!482 = !DILocation(line: 199, column: 47, scope: !401)
!483 = !DILocation(line: 199, column: 72, scope: !401)
!484 = !DILocation(line: 199, column: 77, scope: !401)
!485 = !DILocation(line: 199, column: 76, scope: !401)
!486 = !DILocation(line: 199, column: 67, scope: !487)
!487 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 3)
!488 = !DILocation(line: 199, column: 65, scope: !401)
!489 = !DILocation(line: 199, column: 5, scope: !401)
!490 = !DILocation(line: 199, column: 13, scope: !401)
!491 = !DILocation(line: 199, column: 17, scope: !401)
!492 = !DILocation(line: 200, column: 12, scope: !401)
!493 = !DILocation(line: 200, column: 12, scope: !475)
!494 = !DILocation(line: 200, column: 12, scope: !481)
!495 = !DILocation(line: 200, column: 12, scope: !487)
!496 = !DILocation(line: 200, column: 12, scope: !497)
!497 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 4)
!498 = !DILocation(line: 200, column: 12, scope: !499)
!499 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 5)
!500 = !DILocation(line: 200, column: 12, scope: !501)
!501 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 6)
!502 = !DILocation(line: 200, column: 12, scope: !503)
!503 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 7)
!504 = !DILocation(line: 200, column: 12, scope: !505)
!505 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 8)
!506 = !DILocation(line: 200, column: 12, scope: !507)
!507 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 9)
!508 = !DILocation(line: 200, column: 12, scope: !509)
!509 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 10)
!510 = !DILocation(line: 200, column: 12, scope: !511)
!511 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 11)
!512 = !DILocation(line: 200, column: 12, scope: !513)
!513 = !DILexicalBlockFile(scope: !401, file: !1, discriminator: 12)
!514 = !DILocation(line: 200, column: 5, scope: !513)
!515 = !DILocation(line: 202, column: 38, scope: !397)
!516 = !DILocation(line: 202, column: 42, scope: !397)
!517 = !DILocation(line: 202, column: 45, scope: !397)
!518 = !DILocation(line: 202, column: 15, scope: !397)
!519 = !DILocation(line: 202, column: 8, scope: !397)
!520 = !DILocation(line: 203, column: 1, scope: !371)
!521 = distinct !DISubprogram(name: "gsl_sf_bessel_Jnu", scope: !1, file: !1, line: 209, type: !522, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!522 = !DISubroutineType(types: !523)
!523 = !{!51, !50, !50}
!524 = !DILocalVariable(name: "nu", arg: 1, scope: !521, file: !1, line: 209, type: !50)
!525 = !DILocation(line: 209, column: 39, scope: !521)
!526 = !DILocalVariable(name: "x", arg: 2, scope: !521, file: !1, line: 209, type: !50)
!527 = !DILocation(line: 209, column: 56, scope: !521)
!528 = !DILocalVariable(name: "result", scope: !521, file: !1, line: 211, type: !53)
!529 = !DILocation(line: 211, column: 3, scope: !521)
!530 = !DILocalVariable(name: "status", scope: !521, file: !1, line: 211, type: !42)
!531 = !DILocation(line: 211, column: 3, scope: !532)
!532 = distinct !DILexicalBlock(scope: !521, file: !1, line: 211, column: 3)
!533 = !DILocation(line: 211, column: 3, scope: !534)
!534 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 1)
!535 = distinct !DILexicalBlock(scope: !532, file: !1, line: 211, column: 3)
!536 = distinct !{!536, !537}
!537 = !DILocation(line: 211, column: 3, scope: !535)
!538 = !DILocation(line: 211, column: 3, scope: !539)
!539 = !DILexicalBlockFile(scope: !540, file: !1, discriminator: 2)
!540 = distinct !DILexicalBlock(scope: !535, file: !1, line: 211, column: 3)
!541 = !DILocation(line: 211, column: 3, scope: !542)
!542 = !DILexicalBlockFile(scope: !535, file: !1, discriminator: 3)
!543 = !DILocation(line: 211, column: 3, scope: !544)
!544 = !DILexicalBlockFile(scope: !521, file: !1, discriminator: 4)
!545 = !DILocation(line: 212, column: 1, scope: !521)
