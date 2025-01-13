; ModuleID = 'mathieu_angfunc.ll'
source_filename = "mathieu_angfunc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct.gsl_sf_mathieu_workspace = type { i64, i64, i64, i32, double, double, double*, double*, double*, double*, double*, double*, double*, %struct.gsl_vector*, %struct.gsl_matrix*, %struct.gsl_eigen_symmv_workspace* }
%struct.gsl_vector = type { i64, i64, double*, %struct.gsl_block_struct*, i32 }
%struct.gsl_block_struct = type { i64, double* }
%struct.gsl_matrix = type { i64, i64, i64, double*, %struct.gsl_block_struct*, i32 }
%struct.gsl_eigen_symmv_workspace = type { i64, double*, double*, double*, double* }

@.str = private unnamed_addr constant [28 x i8] c"Work space not large enough\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mathieu_angfunc.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"gsl_sf_mathieu_ce_e(order, qq, zz, &result)\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"gsl_sf_mathieu_se_e(order, qq, zz, &result)\00", align 1
@0 = private unnamed_addr constant [20 x i8] c"gsl_sf_mathieu_ce_e\00"
@1 = private unnamed_addr constant [19 x i8] c"mathieu_angfunc.ll\00"
@2 = private unnamed_addr constant [20 x i8] c"gsl_sf_mathieu_se_e\00"
@3 = private unnamed_addr constant [19 x i8] c"mathieu_angfunc.ll\00"
@4 = private unnamed_addr constant [24 x i8] c"gsl_sf_mathieu_ce_array\00"
@5 = private unnamed_addr constant [19 x i8] c"mathieu_angfunc.ll\00"
@6 = private unnamed_addr constant [24 x i8] c"gsl_sf_mathieu_se_array\00"
@7 = private unnamed_addr constant [19 x i8] c"mathieu_angfunc.ll\00"
@8 = private unnamed_addr constant [18 x i8] c"gsl_sf_mathieu_ce\00"
@9 = private unnamed_addr constant [19 x i8] c"mathieu_angfunc.ll\00"
@10 = private unnamed_addr constant [18 x i8] c"gsl_sf_mathieu_se\00"
@11 = private unnamed_addr constant [19 x i8] c"mathieu_angfunc.ll\00"

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_ce_e(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !47 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [100 x double], align 16
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !60, metadata !61), !dbg !62
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !63, metadata !61), !dbg !64
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !65, metadata !61), !dbg !66
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !67, metadata !61), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %10, metadata !69, metadata !61), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %11, metadata !71, metadata !61), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %12, metadata !73, metadata !61), !dbg !74
  call void @llvm.dbg.declare(metadata [100 x double]* %13, metadata !75, metadata !61), !dbg !79
  call void @llvm.dbg.declare(metadata double* %14, metadata !80, metadata !61), !dbg !81
  call void @llvm.dbg.declare(metadata double* %15, metadata !82, metadata !61), !dbg !83
  call void @llvm.dbg.declare(metadata double* %16, metadata !84, metadata !61), !dbg !85
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !86, metadata !61), !dbg !87
  store double 0.000000e+00, double* %14, align 8, !dbg !88
  store i32 0, i32* %10, align 4, !dbg !89
  %18 = load i32, i32* %6, align 4, !dbg !90
  %19 = srem i32 %18, 2, !dbg !92
  %20 = icmp ne i32 %19, 0, !dbg !93
  %21 = sext i32 %19 to i64, !dbg !94
  %22 = call i1 @iCmpInstHandler(i64 %21, i64 0, i1 %20, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250684448, i32 39, i32 17), !dbg !94
  br i1 %22, label %23, label %24, !dbg !94

; <label>:23:                                     ; preds = %4
  store i32 1, i32* %10, align 4, !dbg !95
  br label %24, !dbg !96

; <label>:24:                                     ; preds = %23, %4
  %25 = load double, double* %7, align 8, !dbg !97
  %26 = fcmp oeq double %25, 0.000000e+00, !dbg !99
  %27 = call i1 @fCmpInstHandler(double %25, double 0.000000e+00, i1 %26, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250686640, i32 43, i32 10), !dbg !100
  br i1 %27, label %28, label %60, !dbg !100

; <label>:28:                                     ; preds = %24
  store double 1.000000e+00, double* %14, align 8, !dbg !101
  %29 = load i32, i32* %6, align 4, !dbg !103
  %30 = icmp eq i32 %29, 0, !dbg !105
  %31 = sext i32 %29 to i64, !dbg !106
  %32 = call i1 @iCmpInstHandler(i64 %31, i64 0, i1 %30, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250688576, i32 46, i32 17), !dbg !106
  br i1 %32, label %33, label %35, !dbg !106

; <label>:33:                                     ; preds = %28
  %34 = call double @sqrt(double 2.000000e+00) #5, !dbg !107
  call void @callOneArgHandler(i32 14, double 2.000000e+00, double %34, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250690048, i32 47, i32 18), !dbg !108
  store double %34, double* %14, align 8, !dbg !108
  br label %35, !dbg !109

; <label>:35:                                     ; preds = %33, %28
  %36 = load i32, i32* %6, align 4, !dbg !110
  %37 = sitofp i32 %36 to double, !dbg !110
  %38 = load double, double* %8, align 8, !dbg !111
  %39 = fmul double %37, %38, !dbg !112
  call void @fMulHandler(double %37, double %38, double %39, i64 94057250691656, i64 94057250693832, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250694240, i32 49, i32 21), !dbg !113
  %40 = call double @cos(double %39) #5, !dbg !113
  call void @callOneArgHandler(i32 2, double %39, double %40, i64 94057250694240, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250694992, i32 49, i32 12), !dbg !114
  %41 = load double, double* %14, align 8, !dbg !114
  %42 = fdiv double %40, %41, !dbg !115
  call void @fDivHandler(double %40, double %41, double %42, i64 94057250694992, i64 94057250695480, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250695888, i32 49, i32 25), !dbg !116
  store double %42, double* %15, align 8, !dbg !116
  %43 = load double, double* %15, align 8, !dbg !117
  %44 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !118
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !119
  store double %43, double* %45, align 8, !dbg !120
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !121
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !122
  store double 0x3CC0000000000000, double* %47, align 8, !dbg !123
  %48 = load double, double* %15, align 8, !dbg !124
  %49 = call double @fabs(double %48) #1, !dbg !125
  store double %49, double* %16, align 8, !dbg !126
  %50 = load double, double* %16, align 8, !dbg !127
  %51 = fcmp ogt double %50, 1.000000e+00, !dbg !129
  %52 = call i1 @fCmpInstHandler(double %50, double 1.000000e+00, i1 %51, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250701776, i32 54, i32 18), !dbg !130
  br i1 %52, label %53, label %59, !dbg !130

; <label>:53:                                     ; preds = %35
  %54 = load double, double* %16, align 8, !dbg !131
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !132
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !133
  %57 = load double, double* %56, align 8, !dbg !134
  %58 = fmul double %57, %54, !dbg !134
  call void @fMulHandler(double %57, double %54, double %58, i64 94057250704008, i64 94057250702856, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250704416, i32 55, i32 23), !dbg !134
  store double %58, double* %56, align 8, !dbg !134
  br label %59, !dbg !132

; <label>:59:                                     ; preds = %53, %35
  store i32 0, i32* %5, align 4, !dbg !135
  br label %195, !dbg !135

; <label>:60:                                     ; preds = %24
  %61 = load i32, i32* %6, align 4, !dbg !136
  %62 = icmp slt i32 %61, 0, !dbg !138
  %63 = sext i32 %61 to i64, !dbg !139
  %64 = call i1 @iCmpInstHandler(i64 %63, i64 0, i1 %62, i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250710336, i32 62, i32 13), !dbg !139
  br i1 %64, label %65, label %68, !dbg !139

; <label>:65:                                     ; preds = %60
  %66 = load i32, i32* %6, align 4, !dbg !140
  %67 = mul nsw i32 %66, -1, !dbg !140
  store i32 %67, i32* %6, align 4, !dbg !140
  br label %68, !dbg !141

; <label>:68:                                     ; preds = %65, %60
  %69 = load i32, i32* %6, align 4, !dbg !142
  %70 = load double, double* %7, align 8, !dbg !143
  %71 = call i32 @gsl_sf_mathieu_a_e(i32 %69, double %70, %struct.gsl_sf_result_struct* %17), !dbg !144
  store i32 %71, i32* %12, align 4, !dbg !145
  %72 = load i32, i32* %12, align 4, !dbg !146
  %73 = icmp ne i32 %72, 0, !dbg !148
  %74 = sext i32 %72 to i64, !dbg !149
  %75 = call i1 @iCmpInstHandler(i64 %74, i64 0, i1 %73, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250717600, i32 67, i32 14), !dbg !149
  br i1 %75, label %76, label %78, !dbg !149

; <label>:76:                                     ; preds = %68
  %77 = load i32, i32* %12, align 4, !dbg !150
  store i32 %77, i32* %5, align 4, !dbg !152
  br label %195, !dbg !152

; <label>:78:                                     ; preds = %68
  %79 = load i32, i32* %6, align 4, !dbg !153
  %80 = load double, double* %7, align 8, !dbg !154
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !155
  %82 = load double, double* %81, align 8, !dbg !155
  %83 = getelementptr inbounds [100 x double], [100 x double]* %13, i32 0, i32 0, !dbg !156
  %84 = call i32 @gsl_sf_mathieu_a_coeff(i32 %79, double %80, double %82, double* %83), !dbg !157
  store i32 %84, i32* %12, align 4, !dbg !158
  %85 = load i32, i32* %12, align 4, !dbg !159
  %86 = icmp ne i32 %85, 0, !dbg !161
  %87 = sext i32 %85 to i64, !dbg !162
  %88 = call i1 @iCmpInstHandler(i64 %87, i64 0, i1 %86, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250726144, i32 74, i32 14), !dbg !162
  br i1 %88, label %89, label %91, !dbg !162

; <label>:89:                                     ; preds = %78
  %90 = load i32, i32* %12, align 4, !dbg !163
  store i32 %90, i32* %5, align 4, !dbg !165
  br label %195, !dbg !165

; <label>:91:                                     ; preds = %78
  %92 = load i32, i32* %10, align 4, !dbg !166
  %93 = icmp eq i32 %92, 0, !dbg !168
  %94 = sext i32 %92 to i64, !dbg !169
  %95 = call i1 @iCmpInstHandler(i64 %94, i64 0, i1 %93, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250729984, i32 79, i32 16), !dbg !169
  br i1 %95, label %96, label %136, !dbg !169

; <label>:96:                                     ; preds = %91
  store double 0.000000e+00, double* %15, align 8, !dbg !170
  %97 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 0, !dbg !172
  %98 = load double, double* %97, align 16, !dbg !172
  %99 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 0, !dbg !173
  %100 = load double, double* %99, align 16, !dbg !173
  %101 = fmul double %98, %100, !dbg !174
  call void @fMulHandler(double %98, double %100, double %101, i64 94057250731960, i64 94057250734056, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250735728, i32 82, i32 22), !dbg !175
  store double %101, double* %14, align 8, !dbg !175
  store i32 0, i32* %11, align 4, !dbg !176
  br label %102, !dbg !178

; <label>:102:                                    ; preds = %132, %96
  %103 = load i32, i32* %11, align 4, !dbg !179
  %104 = icmp slt i32 %103, 100, !dbg !182
  %105 = sext i32 %103 to i64, !dbg !183
  %106 = call i1 @iCmpInstHandler(i64 %105, i64 100, i1 %104, i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250737888, i32 83, i32 20), !dbg !183
  br i1 %106, label %107, label %135, !dbg !183

; <label>:107:                                    ; preds = %102
  %108 = load i32, i32* %11, align 4, !dbg !184
  %109 = sext i32 %108 to i64, !dbg !186
  %110 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %109, !dbg !186
  %111 = load double, double* %110, align 8, !dbg !186
  %112 = load i32, i32* %11, align 4, !dbg !187
  %113 = sitofp i32 %112 to double, !dbg !187
  %114 = fmul double 2.000000e+00, %113, !dbg !188
  call void @fMulHandler(double 2.000000e+00, double %113, double %114, i64 0, i64 94057250741896, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250743600, i32 85, i32 34), !dbg !189
  %115 = load double, double* %8, align 8, !dbg !189
  %116 = fmul double %114, %115, !dbg !190
  call void @fMulHandler(double %114, double %115, double %116, i64 94057250743600, i64 94057250743960, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250744368, i32 85, i32 37), !dbg !191
  %117 = call double @cos(double %116) #5, !dbg !191
  call void @callOneArgHandler(i32 2, double %116, double %117, i64 94057250744368, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250744848, i32 85, i32 27), !dbg !192
  %118 = fmul double %111, %117, !dbg !192
  call void @fMulHandler(double %111, double %117, double %118, i64 94057250741416, i64 94057250744848, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250745328, i32 85, i32 26), !dbg !193
  %119 = load double, double* %15, align 8, !dbg !193
  %120 = fadd double %119, %118, !dbg !193
  call void @fAddHandler(double %119, double %118, double %120, i64 94057250745720, i64 94057250745328, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250746128, i32 85, i32 14), !dbg !193
  store double %120, double* %15, align 8, !dbg !193
  %121 = load i32, i32* %11, align 4, !dbg !194
  %122 = sext i32 %121 to i64, !dbg !195
  %123 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %122, !dbg !195
  %124 = load double, double* %123, align 8, !dbg !195
  %125 = load i32, i32* %11, align 4, !dbg !196
  %126 = sext i32 %125 to i64, !dbg !197
  %127 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %126, !dbg !197
  %128 = load double, double* %127, align 8, !dbg !197
  %129 = fmul double %124, %128, !dbg !198
  call void @fMulHandler(double %124, double %128, double %129, i64 94057250750392, i64 94057250752968, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250753088, i32 86, i32 28), !dbg !199
  %130 = load double, double* %14, align 8, !dbg !199
  %131 = fadd double %130, %129, !dbg !199
  call void @fAddHandler(double %130, double %129, double %131, i64 94057250753480, i64 94057250753088, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250753888, i32 86, i32 16), !dbg !199
  store double %131, double* %14, align 8, !dbg !199
  br label %132, !dbg !200

; <label>:132:                                    ; preds = %107
  %133 = load i32, i32* %11, align 4, !dbg !201
  %134 = add nsw i32 %133, 1, !dbg !201
  store i32 %134, i32* %11, align 4, !dbg !201
  br label %102, !dbg !203, !llvm.loop !204

; <label>:135:                                    ; preds = %102
  br label %172, !dbg !206

; <label>:136:                                    ; preds = %91
  store double 0.000000e+00, double* %15, align 8, !dbg !207
  store i32 0, i32* %11, align 4, !dbg !209
  br label %137, !dbg !211

; <label>:137:                                    ; preds = %168, %136
  %138 = load i32, i32* %11, align 4, !dbg !212
  %139 = icmp slt i32 %138, 100, !dbg !215
  %140 = sext i32 %138 to i64, !dbg !216
  %141 = call i1 @iCmpInstHandler(i64 %140, i64 100, i1 %139, i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250765216, i32 92, i32 20), !dbg !216
  br i1 %141, label %142, label %171, !dbg !216

; <label>:142:                                    ; preds = %137
  %143 = load i32, i32* %11, align 4, !dbg !217
  %144 = sext i32 %143 to i64, !dbg !219
  %145 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %144, !dbg !219
  %146 = load double, double* %145, align 8, !dbg !219
  %147 = load i32, i32* %11, align 4, !dbg !220
  %148 = sitofp i32 %147 to double, !dbg !220
  %149 = fmul double 2.000000e+00, %148, !dbg !221
  call void @fMulHandler(double 2.000000e+00, double %148, double %149, i64 0, i64 94057250771288, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250772992, i32 94, i32 35), !dbg !222
  %150 = fadd double %149, 1.000000e+00, !dbg !222
  call void @fAddHandler(double %149, double 1.000000e+00, double %150, i64 94057250772992, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250773408, i32 94, i32 39), !dbg !223
  %151 = load double, double* %8, align 8, !dbg !223
  %152 = fmul double %150, %151, !dbg !224
  call void @fMulHandler(double %150, double %151, double %152, i64 94057250773408, i64 94057250773768, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250774176, i32 94, i32 45), !dbg !225
  %153 = call double @cos(double %152) #5, !dbg !225
  call void @callOneArgHandler(i32 2, double %152, double %153, i64 94057250774176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250774656, i32 94, i32 27), !dbg !226
  %154 = fmul double %146, %153, !dbg !226
  call void @fMulHandler(double %146, double %153, double %154, i64 94057250768744, i64 94057250774656, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250775136, i32 94, i32 26), !dbg !227
  %155 = load double, double* %15, align 8, !dbg !227
  %156 = fadd double %155, %154, !dbg !227
  call void @fAddHandler(double %155, double %154, double %156, i64 94057250775528, i64 94057250775136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250775936, i32 94, i32 14), !dbg !227
  store double %156, double* %15, align 8, !dbg !227
  %157 = load i32, i32* %11, align 4, !dbg !228
  %158 = sext i32 %157 to i64, !dbg !229
  %159 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %158, !dbg !229
  %160 = load double, double* %159, align 8, !dbg !229
  %161 = load i32, i32* %11, align 4, !dbg !230
  %162 = sext i32 %161 to i64, !dbg !231
  %163 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %162, !dbg !231
  %164 = load double, double* %163, align 8, !dbg !231
  %165 = fmul double %160, %164, !dbg !232
  call void @fMulHandler(double %160, double %164, double %165, i64 94057250780200, i64 94057250782776, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250782896, i32 95, i32 28), !dbg !233
  %166 = load double, double* %14, align 8, !dbg !233
  %167 = fadd double %166, %165, !dbg !233
  call void @fAddHandler(double %166, double %165, double %167, i64 94057250783288, i64 94057250782896, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250783696, i32 95, i32 16), !dbg !233
  store double %167, double* %14, align 8, !dbg !233
  br label %168, !dbg !234

; <label>:168:                                    ; preds = %142
  %169 = load i32, i32* %11, align 4, !dbg !235
  %170 = add nsw i32 %169, 1, !dbg !235
  store i32 %170, i32* %11, align 4, !dbg !235
  br label %137, !dbg !237, !llvm.loop !238

; <label>:171:                                    ; preds = %137
  br label %172

; <label>:172:                                    ; preds = %171, %135
  %173 = load double, double* %14, align 8, !dbg !240
  %174 = call double @sqrt(double %173) #5, !dbg !241
  call void @callOneArgHandler(i32 14, double %173, double %174, i64 94057250788904, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250789248, i32 99, i32 10), !dbg !242
  store double %174, double* %14, align 8, !dbg !242
  %175 = load double, double* %14, align 8, !dbg !243
  %176 = load double, double* %15, align 8, !dbg !244
  %177 = fdiv double %176, %175, !dbg !244
  call void @fDivHandler(double %176, double %175, double %177, i64 94057250790504, i64 94057250790120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250790912, i32 100, i32 6), !dbg !244
  store double %177, double* %15, align 8, !dbg !244
  %178 = load double, double* %15, align 8, !dbg !245
  %179 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !246
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %179, i32 0, i32 0, !dbg !247
  store double %178, double* %180, align 8, !dbg !248
  %181 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !249
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %181, i32 0, i32 1, !dbg !250
  store double 0x3CC0000000000000, double* %182, align 8, !dbg !251
  %183 = load double, double* %15, align 8, !dbg !252
  %184 = call double @fabs(double %183) #1, !dbg !253
  store double %184, double* %16, align 8, !dbg !254
  %185 = load double, double* %16, align 8, !dbg !255
  %186 = fcmp ogt double %185, 1.000000e+00, !dbg !257
  %187 = call i1 @fCmpInstHandler(double %185, double 1.000000e+00, i1 %186, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250797360, i32 105, i32 14), !dbg !258
  br i1 %187, label %188, label %194, !dbg !258

; <label>:188:                                    ; preds = %172
  %189 = load double, double* %16, align 8, !dbg !259
  %190 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !260
  %191 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %190, i32 0, i32 1, !dbg !261
  %192 = load double, double* %191, align 8, !dbg !262
  %193 = fmul double %192, %189, !dbg !262
  call void @fMulHandler(double %192, double %189, double %193, i64 94057250799592, i64 94057250798440, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @1, i32 0, i32 0), i64 94057250800000, i32 106, i32 19), !dbg !262
  store double %193, double* %191, align 8, !dbg !262
  br label %194, !dbg !260

; <label>:194:                                    ; preds = %188, %172
  store i32 0, i32* %5, align 4, !dbg !263
  br label %195, !dbg !263

; <label>:195:                                    ; preds = %194, %89, %76, %59
  %196 = load i32, i32* %5, align 4, !dbg !264
  ret i32 %196, !dbg !264
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare i32 @gsl_sf_mathieu_a_e(i32, double, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_mathieu_a_coeff(i32, double, double, double*) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_se_e(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !265 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [100 x double], align 16
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !266, metadata !61), !dbg !267
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !268, metadata !61), !dbg !269
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !270, metadata !61), !dbg !271
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !272, metadata !61), !dbg !273
  call void @llvm.dbg.declare(metadata i32* %10, metadata !274, metadata !61), !dbg !275
  call void @llvm.dbg.declare(metadata i32* %11, metadata !276, metadata !61), !dbg !277
  call void @llvm.dbg.declare(metadata i32* %12, metadata !278, metadata !61), !dbg !279
  call void @llvm.dbg.declare(metadata [100 x double]* %13, metadata !280, metadata !61), !dbg !281
  call void @llvm.dbg.declare(metadata double* %14, metadata !282, metadata !61), !dbg !283
  call void @llvm.dbg.declare(metadata double* %15, metadata !284, metadata !61), !dbg !285
  call void @llvm.dbg.declare(metadata double* %16, metadata !286, metadata !61), !dbg !287
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %17, metadata !288, metadata !61), !dbg !289
  store double 0.000000e+00, double* %14, align 8, !dbg !290
  store i32 0, i32* %10, align 4, !dbg !291
  %18 = load i32, i32* %6, align 4, !dbg !292
  %19 = srem i32 %18, 2, !dbg !294
  %20 = icmp ne i32 %19, 0, !dbg !295
  %21 = sext i32 %19 to i64, !dbg !296
  %22 = call i1 @iCmpInstHandler(i64 %21, i64 0, i1 %20, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250826864, i32 121, i32 17), !dbg !296
  br i1 %22, label %23, label %24, !dbg !296

; <label>:23:                                     ; preds = %4
  store i32 1, i32* %10, align 4, !dbg !297
  br label %24, !dbg !298

; <label>:24:                                     ; preds = %23, %4
  %25 = load i32, i32* %6, align 4, !dbg !299
  %26 = icmp eq i32 %25, 0, !dbg !301
  %27 = sext i32 %25 to i64, !dbg !302
  %28 = call i1 @iCmpInstHandler(i64 %27, i64 0, i1 %26, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250828864, i32 125, i32 13), !dbg !302
  br i1 %28, label %29, label %34, !dbg !302

; <label>:29:                                     ; preds = %24
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !303
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !305
  store double 0.000000e+00, double* %31, align 8, !dbg !306
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !307
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !308
  store double 0.000000e+00, double* %33, align 8, !dbg !309
  store i32 0, i32* %5, align 4, !dbg !310
  br label %192, !dbg !310

; <label>:34:                                     ; preds = %24
  %35 = load double, double* %7, align 8, !dbg !311
  %36 = fcmp oeq double %35, 0.000000e+00, !dbg !313
  %37 = call i1 @fCmpInstHandler(double %35, double 0.000000e+00, i1 %36, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250834672, i32 132, i32 10), !dbg !314
  br i1 %37, label %38, label %61, !dbg !314

; <label>:38:                                     ; preds = %34
  store double 1.000000e+00, double* %14, align 8, !dbg !315
  %39 = load i32, i32* %6, align 4, !dbg !317
  %40 = sitofp i32 %39 to double, !dbg !317
  %41 = load double, double* %8, align 8, !dbg !318
  %42 = fmul double %40, %41, !dbg !319
  call void @fMulHandler(double %40, double %41, double %42, i64 94057250836520, i64 94057250838168, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250838576, i32 135, i32 21), !dbg !320
  %43 = call double @sin(double %42) #5, !dbg !320
  call void @callOneArgHandler(i32 1, double %42, double %43, i64 94057250838576, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250839328, i32 135, i32 12), !dbg !321
  store double %43, double* %15, align 8, !dbg !321
  %44 = load double, double* %15, align 8, !dbg !322
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !323
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 0, !dbg !324
  store double %44, double* %46, align 8, !dbg !325
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !326
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !327
  store double 0x3CC0000000000000, double* %48, align 8, !dbg !328
  %49 = load double, double* %15, align 8, !dbg !329
  %50 = call double @fabs(double %49) #1, !dbg !330
  store double %50, double* %16, align 8, !dbg !331
  %51 = load double, double* %16, align 8, !dbg !332
  %52 = fcmp ogt double %51, 1.000000e+00, !dbg !334
  %53 = call i1 @fCmpInstHandler(double %51, double 1.000000e+00, i1 %52, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250844896, i32 140, i32 18), !dbg !335
  br i1 %53, label %54, label %60, !dbg !335

; <label>:54:                                     ; preds = %38
  %55 = load double, double* %16, align 8, !dbg !336
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !337
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 1, !dbg !338
  %58 = load double, double* %57, align 8, !dbg !339
  %59 = fmul double %58, %55, !dbg !339
  call void @fMulHandler(double %58, double %55, double %59, i64 94057250847128, i64 94057250845976, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250847536, i32 141, i32 23), !dbg !339
  store double %59, double* %57, align 8, !dbg !339
  br label %60, !dbg !337

; <label>:60:                                     ; preds = %54, %38
  store i32 0, i32* %5, align 4, !dbg !340
  br label %192, !dbg !340

; <label>:61:                                     ; preds = %34
  %62 = load i32, i32* %6, align 4, !dbg !341
  %63 = icmp slt i32 %62, 0, !dbg !343
  %64 = sext i32 %62 to i64, !dbg !344
  %65 = call i1 @iCmpInstHandler(i64 %64, i64 0, i1 %63, i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250853312, i32 148, i32 13), !dbg !344
  br i1 %65, label %66, label %69, !dbg !344

; <label>:66:                                     ; preds = %61
  %67 = load i32, i32* %6, align 4, !dbg !345
  %68 = mul nsw i32 %67, -1, !dbg !345
  store i32 %68, i32* %6, align 4, !dbg !345
  br label %69, !dbg !346

; <label>:69:                                     ; preds = %66, %61
  %70 = load i32, i32* %6, align 4, !dbg !347
  %71 = load double, double* %7, align 8, !dbg !348
  %72 = call i32 @gsl_sf_mathieu_b_e(i32 %70, double %71, %struct.gsl_sf_result_struct* %17), !dbg !349
  store i32 %72, i32* %12, align 4, !dbg !350
  %73 = load i32, i32* %12, align 4, !dbg !351
  %74 = icmp ne i32 %73, 0, !dbg !353
  %75 = sext i32 %73 to i64, !dbg !354
  %76 = call i1 @iCmpInstHandler(i64 %75, i64 0, i1 %74, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250859424, i32 153, i32 14), !dbg !354
  br i1 %76, label %77, label %79, !dbg !354

; <label>:77:                                     ; preds = %69
  %78 = load i32, i32* %12, align 4, !dbg !355
  store i32 %78, i32* %5, align 4, !dbg !357
  br label %192, !dbg !357

; <label>:79:                                     ; preds = %69
  %80 = load i32, i32* %6, align 4, !dbg !358
  %81 = load double, double* %7, align 8, !dbg !359
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !360
  %83 = load double, double* %82, align 8, !dbg !360
  %84 = getelementptr inbounds [100 x double], [100 x double]* %13, i32 0, i32 0, !dbg !361
  %85 = call i32 @gsl_sf_mathieu_b_coeff(i32 %80, double %81, double %83, double* %84), !dbg !362
  store i32 %85, i32* %12, align 4, !dbg !363
  %86 = load i32, i32* %12, align 4, !dbg !364
  %87 = icmp ne i32 %86, 0, !dbg !366
  %88 = sext i32 %86 to i64, !dbg !367
  %89 = call i1 @iCmpInstHandler(i64 %88, i64 0, i1 %87, i32 33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250867968, i32 160, i32 14), !dbg !367
  br i1 %89, label %90, label %92, !dbg !367

; <label>:90:                                     ; preds = %79
  %91 = load i32, i32* %12, align 4, !dbg !368
  store i32 %91, i32* %5, align 4, !dbg !370
  br label %192, !dbg !370

; <label>:92:                                     ; preds = %79
  %93 = load i32, i32* %10, align 4, !dbg !371
  %94 = icmp eq i32 %93, 0, !dbg !373
  %95 = sext i32 %93 to i64, !dbg !374
  %96 = call i1 @iCmpInstHandler(i64 %95, i64 0, i1 %94, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250871808, i32 165, i32 16), !dbg !374
  br i1 %96, label %97, label %133, !dbg !374

; <label>:97:                                     ; preds = %92
  store double 0.000000e+00, double* %15, align 8, !dbg !375
  store i32 0, i32* %11, align 4, !dbg !377
  br label %98, !dbg !379

; <label>:98:                                     ; preds = %129, %97
  %99 = load i32, i32* %11, align 4, !dbg !380
  %100 = icmp slt i32 %99, 100, !dbg !383
  %101 = sext i32 %99 to i64, !dbg !384
  %102 = call i1 @iCmpInstHandler(i64 %101, i64 100, i1 %100, i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250874560, i32 168, i32 20), !dbg !384
  br i1 %102, label %103, label %132, !dbg !384

; <label>:103:                                    ; preds = %98
  %104 = load i32, i32* %11, align 4, !dbg !385
  %105 = sext i32 %104 to i64, !dbg !387
  %106 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %105, !dbg !387
  %107 = load double, double* %106, align 8, !dbg !387
  %108 = load i32, i32* %11, align 4, !dbg !388
  %109 = sext i32 %108 to i64, !dbg !389
  %110 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %109, !dbg !389
  %111 = load double, double* %110, align 8, !dbg !389
  %112 = fmul double %107, %111, !dbg !390
  call void @fMulHandler(double %107, double %111, double %112, i64 94057250878088, i64 94057250880664, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250880784, i32 170, i32 28), !dbg !391
  %113 = load double, double* %14, align 8, !dbg !391
  %114 = fadd double %113, %112, !dbg !391
  call void @fAddHandler(double %113, double %112, double %114, i64 94057250881176, i64 94057250880784, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250881584, i32 170, i32 16), !dbg !391
  store double %114, double* %14, align 8, !dbg !391
  %115 = load i32, i32* %11, align 4, !dbg !392
  %116 = sext i32 %115 to i64, !dbg !393
  %117 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %116, !dbg !393
  %118 = load double, double* %117, align 8, !dbg !393
  %119 = load i32, i32* %11, align 4, !dbg !394
  %120 = add nsw i32 %119, 1, !dbg !395
  %121 = sitofp i32 %120 to double, !dbg !396
  %122 = fmul double 2.000000e+00, %121, !dbg !397
  call void @fMulHandler(double 2.000000e+00, double %121, double %122, i64 0, i64 94057250886744, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250887184, i32 171, i32 34), !dbg !398
  %123 = load double, double* %8, align 8, !dbg !398
  %124 = fmul double %122, %123, !dbg !399
  call void @fMulHandler(double %122, double %123, double %124, i64 94057250887184, i64 94057250887544, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250887952, i32 171, i32 43), !dbg !400
  %125 = call double @sin(double %124) #5, !dbg !400
  call void @callOneArgHandler(i32 1, double %124, double %125, i64 94057250887952, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250888432, i32 171, i32 27), !dbg !401
  %126 = fmul double %118, %125, !dbg !401
  call void @fMulHandler(double %118, double %125, double %126, i64 94057250885848, i64 94057250888432, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250888912, i32 171, i32 26), !dbg !402
  %127 = load double, double* %15, align 8, !dbg !402
  %128 = fadd double %127, %126, !dbg !402
  call void @fAddHandler(double %127, double %126, double %128, i64 94057250889304, i64 94057250888912, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250889712, i32 171, i32 14), !dbg !402
  store double %128, double* %15, align 8, !dbg !402
  br label %129, !dbg !403

; <label>:129:                                    ; preds = %103
  %130 = load i32, i32* %11, align 4, !dbg !404
  %131 = add nsw i32 %130, 1, !dbg !404
  store i32 %131, i32* %11, align 4, !dbg !404
  br label %98, !dbg !406, !llvm.loop !407

; <label>:132:                                    ; preds = %98
  br label %169, !dbg !409

; <label>:133:                                    ; preds = %92
  store double 0.000000e+00, double* %15, align 8, !dbg !410
  store i32 0, i32* %11, align 4, !dbg !412
  br label %134, !dbg !414

; <label>:134:                                    ; preds = %165, %133
  %135 = load i32, i32* %11, align 4, !dbg !415
  %136 = icmp slt i32 %135, 100, !dbg !418
  %137 = sext i32 %135 to i64, !dbg !419
  %138 = call i1 @iCmpInstHandler(i64 %137, i64 100, i1 %136, i32 40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250896928, i32 177, i32 20), !dbg !419
  br i1 %138, label %139, label %168, !dbg !419

; <label>:139:                                    ; preds = %134
  %140 = load i32, i32* %11, align 4, !dbg !420
  %141 = sext i32 %140 to i64, !dbg !422
  %142 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %141, !dbg !422
  %143 = load double, double* %142, align 8, !dbg !422
  %144 = load i32, i32* %11, align 4, !dbg !423
  %145 = sext i32 %144 to i64, !dbg !424
  %146 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %145, !dbg !424
  %147 = load double, double* %146, align 8, !dbg !424
  %148 = fmul double %143, %147, !dbg !425
  call void @fMulHandler(double %143, double %147, double %148, i64 94057250900456, i64 94057250905096, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250905216, i32 179, i32 28), !dbg !426
  %149 = load double, double* %14, align 8, !dbg !426
  %150 = fadd double %149, %148, !dbg !426
  call void @fAddHandler(double %149, double %148, double %150, i64 94057250905608, i64 94057250905216, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250906016, i32 179, i32 16), !dbg !426
  store double %150, double* %14, align 8, !dbg !426
  %151 = load i32, i32* %11, align 4, !dbg !427
  %152 = sext i32 %151 to i64, !dbg !428
  %153 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %152, !dbg !428
  %154 = load double, double* %153, align 8, !dbg !428
  %155 = load i32, i32* %11, align 4, !dbg !429
  %156 = sitofp i32 %155 to double, !dbg !429
  %157 = fmul double 2.000000e+00, %156, !dbg !430
  call void @fMulHandler(double 2.000000e+00, double %156, double %157, i64 0, i64 94057250910760, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250912464, i32 180, i32 35), !dbg !431
  %158 = fadd double %157, 1.000000e+00, !dbg !431
  call void @fAddHandler(double %157, double 1.000000e+00, double %158, i64 94057250912464, i64 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250912880, i32 180, i32 39), !dbg !432
  %159 = load double, double* %8, align 8, !dbg !432
  %160 = fmul double %158, %159, !dbg !433
  call void @fMulHandler(double %158, double %159, double %160, i64 94057250912880, i64 94057250913240, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250913648, i32 180, i32 43), !dbg !434
  %161 = call double @sin(double %160) #5, !dbg !434
  call void @callOneArgHandler(i32 1, double %160, double %161, i64 94057250913648, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250914128, i32 180, i32 27), !dbg !435
  %162 = fmul double %154, %161, !dbg !435
  call void @fMulHandler(double %154, double %161, double %162, i64 94057250910280, i64 94057250914128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250914608, i32 180, i32 26), !dbg !436
  %163 = load double, double* %15, align 8, !dbg !436
  %164 = fadd double %163, %162, !dbg !436
  call void @fAddHandler(double %163, double %162, double %164, i64 94057250915000, i64 94057250914608, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250915408, i32 180, i32 14), !dbg !436
  store double %164, double* %15, align 8, !dbg !436
  br label %165, !dbg !437

; <label>:165:                                    ; preds = %139
  %166 = load i32, i32* %11, align 4, !dbg !438
  %167 = add nsw i32 %166, 1, !dbg !438
  store i32 %167, i32* %11, align 4, !dbg !438
  br label %134, !dbg !440, !llvm.loop !441

; <label>:168:                                    ; preds = %134
  br label %169

; <label>:169:                                    ; preds = %168, %132
  %170 = load double, double* %14, align 8, !dbg !443
  %171 = call double @sqrt(double %170) #5, !dbg !444
  call void @callOneArgHandler(i32 14, double %170, double %171, i64 94057250920616, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250920960, i32 183, i32 10), !dbg !445
  store double %171, double* %14, align 8, !dbg !445
  %172 = load double, double* %14, align 8, !dbg !446
  %173 = load double, double* %15, align 8, !dbg !447
  %174 = fdiv double %173, %172, !dbg !447
  call void @fDivHandler(double %173, double %172, double %174, i64 94057250922216, i64 94057250921832, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250922624, i32 184, i32 6), !dbg !447
  store double %174, double* %15, align 8, !dbg !447
  %175 = load double, double* %15, align 8, !dbg !448
  %176 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !449
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %176, i32 0, i32 0, !dbg !450
  store double %175, double* %177, align 8, !dbg !451
  %178 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !452
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %178, i32 0, i32 1, !dbg !453
  store double 0x3CC0000000000000, double* %179, align 8, !dbg !454
  %180 = load double, double* %15, align 8, !dbg !455
  %181 = call double @fabs(double %180) #1, !dbg !456
  store double %181, double* %16, align 8, !dbg !457
  %182 = load double, double* %16, align 8, !dbg !458
  %183 = fcmp ogt double %182, 1.000000e+00, !dbg !460
  %184 = call i1 @fCmpInstHandler(double %182, double 1.000000e+00, i1 %183, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250929072, i32 189, i32 14), !dbg !461
  br i1 %184, label %185, label %191, !dbg !461

; <label>:185:                                    ; preds = %169
  %186 = load double, double* %16, align 8, !dbg !462
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !463
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %187, i32 0, i32 1, !dbg !464
  %189 = load double, double* %188, align 8, !dbg !465
  %190 = fmul double %189, %186, !dbg !465
  call void @fMulHandler(double %189, double %186, double %190, i64 94057250931304, i64 94057250930152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0), i64 94057250931712, i32 190, i32 19), !dbg !465
  store double %190, double* %188, align 8, !dbg !465
  br label %191, !dbg !463

; <label>:191:                                    ; preds = %185, %169
  store i32 0, i32* %5, align 4, !dbg !466
  br label %192, !dbg !466

; <label>:192:                                    ; preds = %191, %90, %77, %60, %29
  %193 = load i32, i32* %5, align 4, !dbg !467
  ret i32 %193, !dbg !467
}

; Function Attrs: nounwind
declare double @sin(double) #2

declare i32 @gsl_sf_mathieu_b_e(i32, double, %struct.gsl_sf_result_struct*) #4

declare i32 @gsl_sf_mathieu_b_coeff(i32, double, double, double*) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_ce_array(i32, i32, double, double, %struct.gsl_sf_mathieu_workspace*, double*) #0 !dbg !468 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_mathieu_workspace*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [100 x double], align 16
  %20 = alloca double*, align 8
  %21 = alloca double, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !534, metadata !61), !dbg !535
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !536, metadata !61), !dbg !537
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !538, metadata !61), !dbg !539
  store double %3, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !540, metadata !61), !dbg !541
  store %struct.gsl_sf_mathieu_workspace* %4, %struct.gsl_sf_mathieu_workspace** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_mathieu_workspace** %12, metadata !542, metadata !61), !dbg !543
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !544, metadata !61), !dbg !545
  call void @llvm.dbg.declare(metadata i32* %14, metadata !546, metadata !61), !dbg !547
  call void @llvm.dbg.declare(metadata i32* %15, metadata !548, metadata !61), !dbg !549
  call void @llvm.dbg.declare(metadata i32* %16, metadata !550, metadata !61), !dbg !551
  call void @llvm.dbg.declare(metadata i32* %17, metadata !552, metadata !61), !dbg !553
  call void @llvm.dbg.declare(metadata i32* %18, metadata !554, metadata !61), !dbg !555
  call void @llvm.dbg.declare(metadata [100 x double]* %19, metadata !556, metadata !61), !dbg !557
  call void @llvm.dbg.declare(metadata double** %20, metadata !558, metadata !61), !dbg !559
  %22 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %12, align 8, !dbg !560
  %23 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %22, i32 0, i32 6, !dbg !561
  %24 = load double*, double** %23, align 8, !dbg !561
  store double* %24, double** %20, align 8, !dbg !559
  call void @llvm.dbg.declare(metadata double* %21, metadata !562, metadata !61), !dbg !563
  store i32 0, i32* %16, align 4, !dbg !564
  br label %25, !dbg !566

; <label>:25:                                     ; preds = %40, %6
  %26 = load i32, i32* %16, align 4, !dbg !567
  %27 = load i32, i32* %9, align 4, !dbg !570
  %28 = load i32, i32* %8, align 4, !dbg !571
  %29 = sub nsw i32 %27, %28, !dbg !572
  %30 = add nsw i32 %29, 1, !dbg !573
  %31 = icmp slt i32 %26, %30, !dbg !574
  %32 = sext i32 %26 to i64, !dbg !575
  %33 = sext i32 %30 to i64, !dbg !575
  %34 = call i1 @iCmpInstHandler(i64 %32, i64 %33, i1 %31, i32 40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057250963520, i32 205, i32 16), !dbg !575
  br i1 %34, label %35, label %43, !dbg !575

; <label>:35:                                     ; preds = %25
  %36 = load i32, i32* %16, align 4, !dbg !576
  %37 = sext i32 %36 to i64, !dbg !577
  %38 = load double*, double** %13, align 8, !dbg !577
  %39 = getelementptr inbounds double, double* %38, i64 %37, !dbg !577
  store double 0.000000e+00, double* %39, align 8, !dbg !578
  br label %40, !dbg !577

; <label>:40:                                     ; preds = %35
  %41 = load i32, i32* %16, align 4, !dbg !579
  %42 = add nsw i32 %41, 1, !dbg !579
  store i32 %42, i32* %16, align 4, !dbg !579
  br label %25, !dbg !581, !llvm.loop !582

; <label>:43:                                     ; preds = %25
  %44 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %12, align 8, !dbg !584
  %45 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %44, i32 0, i32 0, !dbg !586
  %46 = load i64, i64* %45, align 8, !dbg !586
  %47 = load i32, i32* %9, align 4, !dbg !587
  %48 = zext i32 %47 to i64, !dbg !588
  %49 = icmp ult i64 %46, %48, !dbg !589
  %50 = call i1 @iCmpInstHandler(i64 %46, i64 %48, i1 %49, i32 36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057250973792, i32 209, i32 18), !dbg !590
  br i1 %50, label %51, label %54, !dbg !590

; <label>:51:                                     ; preds = %43
  br label %52, !dbg !591, !llvm.loop !593

; <label>:52:                                     ; preds = %51
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 211, i32 4), !dbg !594
  store i32 4, i32* %7, align 4, !dbg !594
  br label %234, !dbg !594
                                                  ; No predecessors!
  br label %54, !dbg !597

; <label>:54:                                     ; preds = %53, %43
  %55 = load i32, i32* %8, align 4, !dbg !598
  %56 = icmp slt i32 %55, 0, !dbg !600
  %57 = sext i32 %55 to i64, !dbg !601
  %58 = call i1 @iCmpInstHandler(i64 %57, i64 0, i1 %56, i32 40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057250980080, i32 214, i32 12), !dbg !601
  br i1 %58, label %66, label %59, !dbg !601

; <label>:59:                                     ; preds = %54
  %60 = load i32, i32* %9, align 4, !dbg !602
  %61 = load i32, i32* %8, align 4, !dbg !604
  %62 = icmp slt i32 %60, %61, !dbg !605
  %63 = sext i32 %60 to i64, !dbg !606
  %64 = sext i32 %61 to i64, !dbg !606
  %65 = call i1 @iCmpInstHandler(i64 %63, i64 %64, i1 %62, i32 40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057250981920, i32 214, i32 24), !dbg !606
  br i1 %65, label %66, label %69, !dbg !606

; <label>:66:                                     ; preds = %59, %54
  br label %67, !dbg !607, !llvm.loop !609

; <label>:67:                                     ; preds = %66
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 216, i32 1), !dbg !610
  store i32 1, i32* %7, align 4, !dbg !610
  br label %234, !dbg !610
                                                  ; No predecessors!
  br label %69, !dbg !613

; <label>:69:                                     ; preds = %68, %59
  %70 = load i32, i32* %9, align 4, !dbg !614
  %71 = load double, double* %10, align 8, !dbg !615
  %72 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %12, align 8, !dbg !616
  %73 = load double*, double** %20, align 8, !dbg !617
  %74 = call i32 @gsl_sf_mathieu_a_array(i32 0, i32 %70, double %71, %struct.gsl_sf_mathieu_workspace* %72, double* %73), !dbg !618
  store i32 0, i32* %16, align 4, !dbg !619
  %75 = load i32, i32* %8, align 4, !dbg !621
  store i32 %75, i32* %15, align 4, !dbg !622
  br label %76, !dbg !623

; <label>:76:                                     ; preds = %228, %69
  %77 = load i32, i32* %15, align 4, !dbg !624
  %78 = load i32, i32* %9, align 4, !dbg !627
  %79 = icmp sle i32 %77, %78, !dbg !628
  %80 = sext i32 %77 to i64, !dbg !629
  %81 = sext i32 %78 to i64, !dbg !629
  %82 = call i1 @iCmpInstHandler(i64 %80, i64 %81, i1 %79, i32 41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057250991584, i32 222, i32 31), !dbg !629
  br i1 %82, label %83, label %233, !dbg !629

; <label>:83:                                     ; preds = %76
  store double 0.000000e+00, double* %21, align 8, !dbg !630
  store i32 0, i32* %14, align 4, !dbg !632
  %84 = load i32, i32* %15, align 4, !dbg !633
  %85 = srem i32 %84, 2, !dbg !635
  %86 = icmp ne i32 %85, 0, !dbg !636
  %87 = sext i32 %85 to i64, !dbg !637
  %88 = call i1 @iCmpInstHandler(i64 %87, i64 0, i1 %86, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057250994288, i32 226, i32 21), !dbg !637
  br i1 %88, label %89, label %90, !dbg !637

; <label>:89:                                     ; preds = %83
  store i32 1, i32* %14, align 4, !dbg !638
  br label %90, !dbg !639

; <label>:90:                                     ; preds = %89, %83
  %91 = load double, double* %10, align 8, !dbg !640
  %92 = fcmp oeq double %91, 0.000000e+00, !dbg !642
  %93 = call i1 @fCmpInstHandler(double %91, double 0.000000e+00, i1 %92, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057250996480, i32 230, i32 14), !dbg !643
  br i1 %93, label %94, label %113, !dbg !643

; <label>:94:                                     ; preds = %90
  store double 1.000000e+00, double* %21, align 8, !dbg !644
  %95 = load i32, i32* %15, align 4, !dbg !646
  %96 = icmp eq i32 %95, 0, !dbg !648
  %97 = sext i32 %95 to i64, !dbg !649
  %98 = call i1 @iCmpInstHandler(i64 %97, i64 0, i1 %96, i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057250998352, i32 233, i32 21), !dbg !649
  br i1 %98, label %99, label %101, !dbg !649

; <label>:99:                                     ; preds = %94
  %100 = call double @sqrt(double 2.000000e+00) #5, !dbg !650
  call void @callOneArgHandler(i32 14, double 2.000000e+00, double %100, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057250999552, i32 234, i32 22), !dbg !651
  store double %100, double* %21, align 8, !dbg !651
  br label %101, !dbg !652

; <label>:101:                                    ; preds = %99, %94
  %102 = load i32, i32* %15, align 4, !dbg !653
  %103 = sitofp i32 %102 to double, !dbg !653
  %104 = load double, double* %11, align 8, !dbg !654
  %105 = fmul double %103, %104, !dbg !655
  call void @fMulHandler(double %103, double %104, double %105, i64 94057251001064, i64 94057251002712, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251003120, i32 236, i32 39), !dbg !656
  %106 = call double @cos(double %105) #5, !dbg !656
  call void @callOneArgHandler(i32 2, double %105, double %106, i64 94057251003120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251003600, i32 236, i32 30), !dbg !657
  %107 = load double, double* %21, align 8, !dbg !657
  %108 = fdiv double %106, %107, !dbg !658
  call void @fDivHandler(double %106, double %107, double %108, i64 94057251003600, i64 94057251004056, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251004464, i32 236, i32 43), !dbg !659
  %109 = load i32, i32* %16, align 4, !dbg !659
  %110 = sext i32 %109 to i64, !dbg !660
  %111 = load double*, double** %13, align 8, !dbg !660
  %112 = getelementptr inbounds double, double* %111, i64 %110, !dbg !660
  store double %108, double* %112, align 8, !dbg !661
  br label %228, !dbg !662

; <label>:113:                                    ; preds = %90
  %114 = load i32, i32* %15, align 4, !dbg !663
  %115 = load double, double* %10, align 8, !dbg !664
  %116 = load i32, i32* %15, align 4, !dbg !665
  %117 = sext i32 %116 to i64, !dbg !666
  %118 = load double*, double** %20, align 8, !dbg !666
  %119 = getelementptr inbounds double, double* %118, i64 %117, !dbg !666
  %120 = load double, double* %119, align 8, !dbg !666
  %121 = getelementptr inbounds [100 x double], [100 x double]* %19, i32 0, i32 0, !dbg !667
  %122 = call i32 @gsl_sf_mathieu_a_coeff(i32 %114, double %115, double %120, double* %121), !dbg !668
  store i32 %122, i32* %18, align 4, !dbg !669
  %123 = load i32, i32* %18, align 4, !dbg !670
  %124 = icmp ne i32 %123, 0, !dbg !672
  %125 = sext i32 %123 to i64, !dbg !673
  %126 = call i1 @iCmpInstHandler(i64 %125, i64 0, i1 %124, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251013616, i32 243, i32 18), !dbg !673
  br i1 %126, label %127, label %129, !dbg !673

; <label>:127:                                    ; preds = %113
  %128 = load i32, i32* %18, align 4, !dbg !674
  store i32 %128, i32* %7, align 4, !dbg !675
  br label %234, !dbg !675

; <label>:129:                                    ; preds = %113
  %130 = load i32, i32* %14, align 4, !dbg !676
  %131 = icmp eq i32 %130, 0, !dbg !678
  %132 = sext i32 %130 to i64, !dbg !679
  %133 = call i1 @iCmpInstHandler(i64 %132, i64 0, i1 %131, i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251017456, i32 246, i32 20), !dbg !679
  br i1 %133, label %134, label %178, !dbg !679

; <label>:134:                                    ; preds = %129
  %135 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 0, !dbg !680
  %136 = load double, double* %135, align 16, !dbg !680
  %137 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 0, !dbg !682
  %138 = load double, double* %137, align 16, !dbg !682
  %139 = fmul double %136, %138, !dbg !683
  call void @fMulHandler(double %136, double %138, double %139, i64 94057251018952, i64 94057251021048, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251022720, i32 248, i32 26), !dbg !684
  store double %139, double* %21, align 8, !dbg !684
  store i32 0, i32* %17, align 4, !dbg !685
  br label %140, !dbg !687

; <label>:140:                                    ; preds = %174, %134
  %141 = load i32, i32* %17, align 4, !dbg !688
  %142 = icmp slt i32 %141, 100, !dbg !691
  %143 = sext i32 %141 to i64, !dbg !692
  %144 = call i1 @iCmpInstHandler(i64 %143, i64 100, i1 %142, i32 40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251024816, i32 249, i32 24), !dbg !692
  br i1 %144, label %145, label %177, !dbg !692

; <label>:145:                                    ; preds = %140
  %146 = load i32, i32* %17, align 4, !dbg !693
  %147 = sext i32 %146 to i64, !dbg !695
  %148 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %147, !dbg !695
  %149 = load double, double* %148, align 8, !dbg !695
  %150 = load i32, i32* %17, align 4, !dbg !696
  %151 = sitofp i32 %150 to double, !dbg !696
  %152 = fmul double 2.000000e+00, %151, !dbg !697
  call void @fMulHandler(double 2.000000e+00, double %151, double %152, i64 0, i64 94057251028824, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251032592, i32 251, i32 52), !dbg !698
  %153 = load double, double* %11, align 8, !dbg !698
  %154 = fmul double %152, %153, !dbg !699
  call void @fMulHandler(double %152, double %153, double %154, i64 94057251032592, i64 94057251032952, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251033360, i32 251, i32 55), !dbg !700
  %155 = call double @cos(double %154) #5, !dbg !700
  call void @callOneArgHandler(i32 2, double %154, double %155, i64 94057251033360, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251033840, i32 251, i32 45), !dbg !701
  %156 = fmul double %149, %155, !dbg !701
  call void @fMulHandler(double %149, double %155, double %156, i64 94057251028344, i64 94057251033840, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251034320, i32 251, i32 44), !dbg !702
  %157 = load i32, i32* %16, align 4, !dbg !702
  %158 = sext i32 %157 to i64, !dbg !703
  %159 = load double*, double** %13, align 8, !dbg !703
  %160 = getelementptr inbounds double, double* %159, i64 %158, !dbg !703
  %161 = load double, double* %160, align 8, !dbg !704
  %162 = fadd double %161, %156, !dbg !704
  call void @fAddHandler(double %161, double %156, double %162, i64 94057251037272, i64 94057251034320, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251037680, i32 251, i32 32), !dbg !704
  store double %162, double* %160, align 8, !dbg !704
  %163 = load i32, i32* %17, align 4, !dbg !705
  %164 = sext i32 %163 to i64, !dbg !706
  %165 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %164, !dbg !706
  %166 = load double, double* %165, align 8, !dbg !706
  %167 = load i32, i32* %17, align 4, !dbg !707
  %168 = sext i32 %167 to i64, !dbg !708
  %169 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %168, !dbg !708
  %170 = load double, double* %169, align 8, !dbg !708
  %171 = fmul double %166, %170, !dbg !709
  call void @fMulHandler(double %166, double %170, double %171, i64 94057251041944, i64 94057251044520, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251044640, i32 252, i32 32), !dbg !710
  %172 = load double, double* %21, align 8, !dbg !710
  %173 = fadd double %172, %171, !dbg !710
  call void @fAddHandler(double %172, double %171, double %173, i64 94057251045032, i64 94057251044640, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251045440, i32 252, i32 20), !dbg !710
  store double %173, double* %21, align 8, !dbg !710
  br label %174, !dbg !711

; <label>:174:                                    ; preds = %145
  %175 = load i32, i32* %17, align 4, !dbg !712
  %176 = add nsw i32 %175, 1, !dbg !712
  store i32 %176, i32* %17, align 4, !dbg !712
  br label %140, !dbg !714, !llvm.loop !715

; <label>:177:                                    ; preds = %140
  br label %218, !dbg !717

; <label>:178:                                    ; preds = %129
  store i32 0, i32* %17, align 4, !dbg !718
  br label %179, !dbg !721

; <label>:179:                                    ; preds = %214, %178
  %180 = load i32, i32* %17, align 4, !dbg !722
  %181 = icmp slt i32 %180, 100, !dbg !725
  %182 = sext i32 %180 to i64, !dbg !726
  %183 = call i1 @iCmpInstHandler(i64 %182, i64 100, i1 %181, i32 40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251052240, i32 257, i32 24), !dbg !726
  br i1 %183, label %184, label %217, !dbg !726

; <label>:184:                                    ; preds = %179
  %185 = load i32, i32* %17, align 4, !dbg !727
  %186 = sext i32 %185 to i64, !dbg !729
  %187 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %186, !dbg !729
  %188 = load double, double* %187, align 8, !dbg !729
  %189 = load i32, i32* %17, align 4, !dbg !730
  %190 = sitofp i32 %189 to double, !dbg !730
  %191 = fmul double 2.000000e+00, %190, !dbg !731
  call void @fMulHandler(double 2.000000e+00, double %190, double %191, i64 0, i64 94057251056248, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251057952, i32 259, i32 53), !dbg !732
  %192 = fadd double %191, 1.000000e+00, !dbg !732
  call void @fAddHandler(double %191, double 1.000000e+00, double %192, i64 94057251057952, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251058368, i32 259, i32 57), !dbg !733
  %193 = load double, double* %11, align 8, !dbg !733
  %194 = fmul double %192, %193, !dbg !734
  call void @fMulHandler(double %192, double %193, double %194, i64 94057251058368, i64 94057251058728, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251059136, i32 259, i32 63), !dbg !735
  %195 = call double @cos(double %194) #5, !dbg !735
  call void @callOneArgHandler(i32 2, double %194, double %195, i64 94057251059136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251059616, i32 259, i32 45), !dbg !736
  %196 = fmul double %188, %195, !dbg !736
  call void @fMulHandler(double %188, double %195, double %196, i64 94057251055768, i64 94057251059616, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251060096, i32 259, i32 44), !dbg !737
  %197 = load i32, i32* %16, align 4, !dbg !737
  %198 = sext i32 %197 to i64, !dbg !738
  %199 = load double*, double** %13, align 8, !dbg !738
  %200 = getelementptr inbounds double, double* %199, i64 %198, !dbg !738
  %201 = load double, double* %200, align 8, !dbg !739
  %202 = fadd double %201, %196, !dbg !739
  call void @fAddHandler(double %201, double %196, double %202, i64 94057251063048, i64 94057251060096, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251063456, i32 259, i32 32), !dbg !739
  store double %202, double* %200, align 8, !dbg !739
  %203 = load i32, i32* %17, align 4, !dbg !740
  %204 = sext i32 %203 to i64, !dbg !741
  %205 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %204, !dbg !741
  %206 = load double, double* %205, align 8, !dbg !741
  %207 = load i32, i32* %17, align 4, !dbg !742
  %208 = sext i32 %207 to i64, !dbg !743
  %209 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %208, !dbg !743
  %210 = load double, double* %209, align 8, !dbg !743
  %211 = fmul double %206, %210, !dbg !744
  call void @fMulHandler(double %206, double %210, double %211, i64 94057251067720, i64 94057251070296, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251070416, i32 260, i32 32), !dbg !745
  %212 = load double, double* %21, align 8, !dbg !745
  %213 = fadd double %212, %211, !dbg !745
  call void @fAddHandler(double %212, double %211, double %213, i64 94057251070808, i64 94057251070416, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251071216, i32 260, i32 20), !dbg !745
  store double %213, double* %21, align 8, !dbg !745
  br label %214, !dbg !746

; <label>:214:                                    ; preds = %184
  %215 = load i32, i32* %17, align 4, !dbg !747
  %216 = add nsw i32 %215, 1, !dbg !747
  store i32 %216, i32* %17, align 4, !dbg !747
  br label %179, !dbg !749, !llvm.loop !750

; <label>:217:                                    ; preds = %179
  br label %218

; <label>:218:                                    ; preds = %217, %177
  %219 = load double, double* %21, align 8, !dbg !752
  %220 = call double @sqrt(double %219) #5, !dbg !753
  call void @callOneArgHandler(i32 14, double %219, double %220, i64 94057251076424, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251076768, i32 264, i32 14), !dbg !754
  store double %220, double* %21, align 8, !dbg !754
  %221 = load double, double* %21, align 8, !dbg !755
  %222 = load i32, i32* %16, align 4, !dbg !756
  %223 = sext i32 %222 to i64, !dbg !757
  %224 = load double*, double** %13, align 8, !dbg !757
  %225 = getelementptr inbounds double, double* %224, i64 %223, !dbg !757
  %226 = load double, double* %225, align 8, !dbg !758
  %227 = fdiv double %226, %221, !dbg !758
  call void @fDivHandler(double %226, double %221, double %227, i64 94057251080584, i64 94057251077640, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @5, i32 0, i32 0), i64 94057251080992, i32 265, i32 24), !dbg !758
  store double %227, double* %225, align 8, !dbg !758
  br label %228, !dbg !759

; <label>:228:                                    ; preds = %218, %101
  %229 = load i32, i32* %16, align 4, !dbg !760
  %230 = add nsw i32 %229, 1, !dbg !760
  store i32 %230, i32* %16, align 4, !dbg !760
  %231 = load i32, i32* %15, align 4, !dbg !762
  %232 = add nsw i32 %231, 1, !dbg !762
  store i32 %232, i32* %15, align 4, !dbg !762
  br label %76, !dbg !763, !llvm.loop !764

; <label>:233:                                    ; preds = %76
  store i32 0, i32* %7, align 4, !dbg !766
  br label %234, !dbg !766

; <label>:234:                                    ; preds = %233, %127, %67, %52
  %235 = load i32, i32* %7, align 4, !dbg !767
  ret i32 %235, !dbg !767
}

declare void @gsl_error(i8*, i8*, i32, i32) #4

declare i32 @gsl_sf_mathieu_a_array(i32, i32, double, %struct.gsl_sf_mathieu_workspace*, double*) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_mathieu_se_array(i32, i32, double, double, %struct.gsl_sf_mathieu_workspace*, double*) #0 !dbg !768 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_mathieu_workspace*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [100 x double], align 16
  %20 = alloca double*, align 8
  %21 = alloca double, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !769, metadata !61), !dbg !770
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !771, metadata !61), !dbg !772
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !773, metadata !61), !dbg !774
  store double %3, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !775, metadata !61), !dbg !776
  store %struct.gsl_sf_mathieu_workspace* %4, %struct.gsl_sf_mathieu_workspace** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_mathieu_workspace** %12, metadata !777, metadata !61), !dbg !778
  store double* %5, double** %13, align 8
  call void @llvm.dbg.declare(metadata double** %13, metadata !779, metadata !61), !dbg !780
  call void @llvm.dbg.declare(metadata i32* %14, metadata !781, metadata !61), !dbg !782
  call void @llvm.dbg.declare(metadata i32* %15, metadata !783, metadata !61), !dbg !784
  call void @llvm.dbg.declare(metadata i32* %16, metadata !785, metadata !61), !dbg !786
  call void @llvm.dbg.declare(metadata i32* %17, metadata !787, metadata !61), !dbg !788
  call void @llvm.dbg.declare(metadata i32* %18, metadata !789, metadata !61), !dbg !790
  call void @llvm.dbg.declare(metadata [100 x double]* %19, metadata !791, metadata !61), !dbg !792
  call void @llvm.dbg.declare(metadata double** %20, metadata !793, metadata !61), !dbg !794
  %22 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %12, align 8, !dbg !795
  %23 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %22, i32 0, i32 7, !dbg !796
  %24 = load double*, double** %23, align 8, !dbg !796
  store double* %24, double** %20, align 8, !dbg !794
  call void @llvm.dbg.declare(metadata double* %21, metadata !797, metadata !61), !dbg !798
  store i32 0, i32* %16, align 4, !dbg !799
  br label %25, !dbg !801

; <label>:25:                                     ; preds = %40, %6
  %26 = load i32, i32* %16, align 4, !dbg !802
  %27 = load i32, i32* %9, align 4, !dbg !805
  %28 = load i32, i32* %8, align 4, !dbg !806
  %29 = sub nsw i32 %27, %28, !dbg !807
  %30 = add nsw i32 %29, 1, !dbg !808
  %31 = icmp slt i32 %26, %30, !dbg !809
  %32 = sext i32 %26 to i64, !dbg !810
  %33 = sext i32 %30 to i64, !dbg !810
  %34 = call i1 @iCmpInstHandler(i64 %32, i64 %33, i1 %31, i32 40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251120672, i32 281, i32 16), !dbg !810
  br i1 %34, label %35, label %43, !dbg !810

; <label>:35:                                     ; preds = %25
  %36 = load i32, i32* %16, align 4, !dbg !811
  %37 = sext i32 %36 to i64, !dbg !812
  %38 = load double*, double** %13, align 8, !dbg !812
  %39 = getelementptr inbounds double, double* %38, i64 %37, !dbg !812
  store double 0.000000e+00, double* %39, align 8, !dbg !813
  br label %40, !dbg !812

; <label>:40:                                     ; preds = %35
  %41 = load i32, i32* %16, align 4, !dbg !814
  %42 = add nsw i32 %41, 1, !dbg !814
  store i32 %42, i32* %16, align 4, !dbg !814
  br label %25, !dbg !816, !llvm.loop !817

; <label>:43:                                     ; preds = %25
  %44 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %12, align 8, !dbg !819
  %45 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %44, i32 0, i32 0, !dbg !821
  %46 = load i64, i64* %45, align 8, !dbg !821
  %47 = load i32, i32* %9, align 4, !dbg !822
  %48 = zext i32 %47 to i64, !dbg !823
  %49 = icmp ult i64 %46, %48, !dbg !824
  %50 = call i1 @iCmpInstHandler(i64 %46, i64 %48, i1 %49, i32 36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251130944, i32 285, i32 18), !dbg !825
  br i1 %50, label %51, label %54, !dbg !825

; <label>:51:                                     ; preds = %43
  br label %52, !dbg !826, !llvm.loop !828

; <label>:52:                                     ; preds = %51
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 287, i32 4), !dbg !829
  store i32 4, i32* %7, align 4, !dbg !829
  br label %231, !dbg !829
                                                  ; No predecessors!
  br label %54, !dbg !832

; <label>:54:                                     ; preds = %53, %43
  %55 = load i32, i32* %8, align 4, !dbg !833
  %56 = icmp slt i32 %55, 0, !dbg !835
  %57 = sext i32 %55 to i64, !dbg !836
  %58 = call i1 @iCmpInstHandler(i64 %57, i64 0, i1 %56, i32 40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251136112, i32 290, i32 12), !dbg !836
  br i1 %58, label %66, label %59, !dbg !836

; <label>:59:                                     ; preds = %54
  %60 = load i32, i32* %9, align 4, !dbg !837
  %61 = load i32, i32* %8, align 4, !dbg !839
  %62 = icmp slt i32 %60, %61, !dbg !840
  %63 = sext i32 %60 to i64, !dbg !841
  %64 = sext i32 %61 to i64, !dbg !841
  %65 = call i1 @iCmpInstHandler(i64 %63, i64 %64, i1 %62, i32 40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251137952, i32 290, i32 24), !dbg !841
  br i1 %65, label %66, label %69, !dbg !841

; <label>:66:                                     ; preds = %59, %54
  br label %67, !dbg !842, !llvm.loop !844

; <label>:67:                                     ; preds = %66
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 292, i32 1), !dbg !845
  store i32 1, i32* %7, align 4, !dbg !845
  br label %231, !dbg !845
                                                  ; No predecessors!
  br label %69, !dbg !848

; <label>:69:                                     ; preds = %68, %59
  %70 = load i32, i32* %9, align 4, !dbg !849
  %71 = load double, double* %10, align 8, !dbg !850
  %72 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %12, align 8, !dbg !851
  %73 = load double*, double** %20, align 8, !dbg !852
  %74 = call i32 @gsl_sf_mathieu_b_array(i32 0, i32 %70, double %71, %struct.gsl_sf_mathieu_workspace* %72, double* %73), !dbg !853
  store i32 0, i32* %16, align 4, !dbg !854
  %75 = load i32, i32* %8, align 4, !dbg !856
  store i32 %75, i32* %15, align 4, !dbg !857
  br label %76, !dbg !858

; <label>:76:                                     ; preds = %225, %69
  %77 = load i32, i32* %15, align 4, !dbg !859
  %78 = load i32, i32* %9, align 4, !dbg !862
  %79 = icmp sle i32 %77, %78, !dbg !863
  %80 = sext i32 %77 to i64, !dbg !864
  %81 = sext i32 %78 to i64, !dbg !864
  %82 = call i1 @iCmpInstHandler(i64 %80, i64 %81, i1 %79, i32 41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251147392, i32 298, i32 31), !dbg !864
  br i1 %82, label %83, label %230, !dbg !864

; <label>:83:                                     ; preds = %76
  store double 0.000000e+00, double* %21, align 8, !dbg !865
  store i32 0, i32* %14, align 4, !dbg !867
  %84 = load i32, i32* %15, align 4, !dbg !868
  %85 = srem i32 %84, 2, !dbg !870
  %86 = icmp ne i32 %85, 0, !dbg !871
  %87 = sext i32 %85 to i64, !dbg !872
  %88 = call i1 @iCmpInstHandler(i64 %87, i64 0, i1 %86, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251150096, i32 302, i32 21), !dbg !872
  br i1 %88, label %89, label %90, !dbg !872

; <label>:89:                                     ; preds = %83
  store i32 1, i32* %14, align 4, !dbg !873
  br label %90, !dbg !874

; <label>:90:                                     ; preds = %89, %83
  %91 = load i32, i32* %15, align 4, !dbg !875
  %92 = icmp eq i32 %91, 0, !dbg !877
  %93 = sext i32 %91 to i64, !dbg !878
  %94 = call i1 @iCmpInstHandler(i64 %93, i64 0, i1 %92, i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251152288, i32 306, i32 17), !dbg !878
  br i1 %94, label %95, label %100, !dbg !878

; <label>:95:                                     ; preds = %90
  store double 1.000000e+00, double* %21, align 8, !dbg !879
  %96 = load i32, i32* %16, align 4, !dbg !881
  %97 = sext i32 %96 to i64, !dbg !882
  %98 = load double*, double** %13, align 8, !dbg !882
  %99 = getelementptr inbounds double, double* %98, i64 %97, !dbg !882
  store double 0.000000e+00, double* %99, align 8, !dbg !883
  br label %225, !dbg !884

; <label>:100:                                    ; preds = %90
  %101 = load double, double* %10, align 8, !dbg !885
  %102 = fcmp oeq double %101, 0.000000e+00, !dbg !887
  %103 = call i1 @fCmpInstHandler(double %101, double 0.000000e+00, i1 %102, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251157600, i32 313, i32 14), !dbg !888
  br i1 %103, label %104, label %114, !dbg !888

; <label>:104:                                    ; preds = %100
  store double 1.000000e+00, double* %21, align 8, !dbg !889
  %105 = load i32, i32* %15, align 4, !dbg !891
  %106 = sitofp i32 %105 to double, !dbg !891
  %107 = load double, double* %11, align 8, !dbg !892
  %108 = fmul double %106, %107, !dbg !893
  call void @fMulHandler(double %106, double %107, double %108, i64 94057251159448, i64 94057251161096, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251161504, i32 316, i32 39), !dbg !894
  %109 = call double @sin(double %108) #5, !dbg !894
  call void @callOneArgHandler(i32 1, double %108, double %109, i64 94057251161504, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251161984, i32 316, i32 30), !dbg !895
  %110 = load i32, i32* %16, align 4, !dbg !895
  %111 = sext i32 %110 to i64, !dbg !896
  %112 = load double*, double** %13, align 8, !dbg !896
  %113 = getelementptr inbounds double, double* %112, i64 %111, !dbg !896
  store double %109, double* %113, align 8, !dbg !897
  br label %225, !dbg !898

; <label>:114:                                    ; preds = %100
  %115 = load i32, i32* %15, align 4, !dbg !899
  %116 = load double, double* %10, align 8, !dbg !900
  %117 = load i32, i32* %15, align 4, !dbg !901
  %118 = sext i32 %117 to i64, !dbg !902
  %119 = load double*, double** %20, align 8, !dbg !902
  %120 = getelementptr inbounds double, double* %119, i64 %118, !dbg !902
  %121 = load double, double* %120, align 8, !dbg !902
  %122 = getelementptr inbounds [100 x double], [100 x double]* %19, i32 0, i32 0, !dbg !903
  %123 = call i32 @gsl_sf_mathieu_b_coeff(i32 %115, double %116, double %121, double* %122), !dbg !904
  store i32 %123, i32* %18, align 4, !dbg !905
  %124 = load i32, i32* %18, align 4, !dbg !906
  %125 = icmp ne i32 %124, 0, !dbg !908
  %126 = sext i32 %124 to i64, !dbg !909
  %127 = call i1 @iCmpInstHandler(i64 %126, i64 0, i1 %125, i32 33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251171056, i32 323, i32 18), !dbg !909
  br i1 %127, label %128, label %130, !dbg !909

; <label>:128:                                    ; preds = %114
  %129 = load i32, i32* %18, align 4, !dbg !910
  store i32 %129, i32* %7, align 4, !dbg !912
  br label %231, !dbg !912

; <label>:130:                                    ; preds = %114
  %131 = load i32, i32* %14, align 4, !dbg !913
  %132 = icmp eq i32 %131, 0, !dbg !915
  %133 = sext i32 %131 to i64, !dbg !916
  %134 = call i1 @iCmpInstHandler(i64 %133, i64 0, i1 %132, i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251174896, i32 328, i32 20), !dbg !916
  br i1 %134, label %135, label %175, !dbg !916

; <label>:135:                                    ; preds = %130
  store i32 0, i32* %17, align 4, !dbg !917
  br label %136, !dbg !920

; <label>:136:                                    ; preds = %171, %135
  %137 = load i32, i32* %17, align 4, !dbg !921
  %138 = icmp slt i32 %137, 100, !dbg !924
  %139 = sext i32 %137 to i64, !dbg !925
  %140 = call i1 @iCmpInstHandler(i64 %139, i64 100, i1 %138, i32 40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251177232, i32 330, i32 24), !dbg !925
  br i1 %140, label %141, label %174, !dbg !925

; <label>:141:                                    ; preds = %136
  %142 = load i32, i32* %17, align 4, !dbg !926
  %143 = sext i32 %142 to i64, !dbg !928
  %144 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %143, !dbg !928
  %145 = load double, double* %144, align 8, !dbg !928
  %146 = load i32, i32* %17, align 4, !dbg !929
  %147 = add nsw i32 %146, 1, !dbg !930
  %148 = sitofp i32 %147 to double, !dbg !931
  %149 = fmul double 2.000000e+00, %148, !dbg !932
  call void @fMulHandler(double 2.000000e+00, double %148, double %149, i64 0, i64 94057251181656, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251182096, i32 332, i32 52), !dbg !933
  %150 = load double, double* %11, align 8, !dbg !933
  %151 = fmul double %149, %150, !dbg !934
  call void @fMulHandler(double %149, double %150, double %151, i64 94057251182096, i64 94057251182456, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251182864, i32 332, i32 61), !dbg !935
  %152 = call double @sin(double %151) #5, !dbg !935
  call void @callOneArgHandler(i32 1, double %151, double %152, i64 94057251182864, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251185408, i32 332, i32 45), !dbg !936
  %153 = fmul double %145, %152, !dbg !936
  call void @fMulHandler(double %145, double %152, double %153, i64 94057251180760, i64 94057251185408, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251185888, i32 332, i32 44), !dbg !937
  %154 = load i32, i32* %16, align 4, !dbg !937
  %155 = sext i32 %154 to i64, !dbg !938
  %156 = load double*, double** %13, align 8, !dbg !938
  %157 = getelementptr inbounds double, double* %156, i64 %155, !dbg !938
  %158 = load double, double* %157, align 8, !dbg !939
  %159 = fadd double %158, %153, !dbg !939
  call void @fAddHandler(double %158, double %153, double %159, i64 94057251188840, i64 94057251185888, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251189248, i32 332, i32 32), !dbg !939
  store double %159, double* %157, align 8, !dbg !939
  %160 = load i32, i32* %17, align 4, !dbg !940
  %161 = sext i32 %160 to i64, !dbg !941
  %162 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %161, !dbg !941
  %163 = load double, double* %162, align 8, !dbg !941
  %164 = load i32, i32* %17, align 4, !dbg !942
  %165 = sext i32 %164 to i64, !dbg !943
  %166 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %165, !dbg !943
  %167 = load double, double* %166, align 8, !dbg !943
  %168 = fmul double %163, %167, !dbg !944
  call void @fMulHandler(double %163, double %167, double %168, i64 94057251193512, i64 94057251196088, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251196208, i32 333, i32 32), !dbg !945
  %169 = load double, double* %21, align 8, !dbg !945
  %170 = fadd double %169, %168, !dbg !945
  call void @fAddHandler(double %169, double %168, double %170, i64 94057251196600, i64 94057251196208, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251197008, i32 333, i32 20), !dbg !945
  store double %170, double* %21, align 8, !dbg !945
  br label %171, !dbg !946

; <label>:171:                                    ; preds = %141
  %172 = load i32, i32* %17, align 4, !dbg !947
  %173 = add nsw i32 %172, 1, !dbg !947
  store i32 %173, i32* %17, align 4, !dbg !947
  br label %136, !dbg !949, !llvm.loop !950

; <label>:174:                                    ; preds = %136
  br label %215, !dbg !952

; <label>:175:                                    ; preds = %130
  store i32 0, i32* %17, align 4, !dbg !953
  br label %176, !dbg !956

; <label>:176:                                    ; preds = %211, %175
  %177 = load i32, i32* %17, align 4, !dbg !957
  %178 = icmp slt i32 %177, 100, !dbg !960
  %179 = sext i32 %177 to i64, !dbg !961
  %180 = call i1 @iCmpInstHandler(i64 %179, i64 100, i1 %178, i32 40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251203808, i32 338, i32 24), !dbg !961
  br i1 %180, label %181, label %214, !dbg !961

; <label>:181:                                    ; preds = %176
  %182 = load i32, i32* %17, align 4, !dbg !962
  %183 = sext i32 %182 to i64, !dbg !964
  %184 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %183, !dbg !964
  %185 = load double, double* %184, align 8, !dbg !964
  %186 = load i32, i32* %17, align 4, !dbg !965
  %187 = sitofp i32 %186 to double, !dbg !965
  %188 = fmul double 2.000000e+00, %187, !dbg !966
  call void @fMulHandler(double 2.000000e+00, double %187, double %188, i64 0, i64 94057251207816, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251209520, i32 340, i32 53), !dbg !967
  %189 = fadd double %188, 1.000000e+00, !dbg !967
  call void @fAddHandler(double %188, double 1.000000e+00, double %189, i64 94057251209520, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251209936, i32 340, i32 57), !dbg !968
  %190 = load double, double* %11, align 8, !dbg !968
  %191 = fmul double %189, %190, !dbg !969
  call void @fMulHandler(double %189, double %190, double %191, i64 94057251209936, i64 94057251210296, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251210704, i32 340, i32 63), !dbg !970
  %192 = call double @sin(double %191) #5, !dbg !970
  call void @callOneArgHandler(i32 1, double %191, double %192, i64 94057251210704, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251211184, i32 340, i32 45), !dbg !971
  %193 = fmul double %185, %192, !dbg !971
  call void @fMulHandler(double %185, double %192, double %193, i64 94057251207336, i64 94057251211184, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251211664, i32 340, i32 44), !dbg !972
  %194 = load i32, i32* %16, align 4, !dbg !972
  %195 = sext i32 %194 to i64, !dbg !973
  %196 = load double*, double** %13, align 8, !dbg !973
  %197 = getelementptr inbounds double, double* %196, i64 %195, !dbg !973
  %198 = load double, double* %197, align 8, !dbg !974
  %199 = fadd double %198, %193, !dbg !974
  call void @fAddHandler(double %198, double %193, double %199, i64 94057251214616, i64 94057251211664, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251215024, i32 340, i32 32), !dbg !974
  store double %199, double* %197, align 8, !dbg !974
  %200 = load i32, i32* %17, align 4, !dbg !975
  %201 = sext i32 %200 to i64, !dbg !976
  %202 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %201, !dbg !976
  %203 = load double, double* %202, align 8, !dbg !976
  %204 = load i32, i32* %17, align 4, !dbg !977
  %205 = sext i32 %204 to i64, !dbg !978
  %206 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %205, !dbg !978
  %207 = load double, double* %206, align 8, !dbg !978
  %208 = fmul double %203, %207, !dbg !979
  call void @fMulHandler(double %203, double %207, double %208, i64 94057251219288, i64 94057251221864, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251221984, i32 341, i32 32), !dbg !980
  %209 = load double, double* %21, align 8, !dbg !980
  %210 = fadd double %209, %208, !dbg !980
  call void @fAddHandler(double %209, double %208, double %210, i64 94057251222376, i64 94057251221984, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251222784, i32 341, i32 20), !dbg !980
  store double %210, double* %21, align 8, !dbg !980
  br label %211, !dbg !981

; <label>:211:                                    ; preds = %181
  %212 = load i32, i32* %17, align 4, !dbg !982
  %213 = add nsw i32 %212, 1, !dbg !982
  store i32 %213, i32* %17, align 4, !dbg !982
  br label %176, !dbg !984, !llvm.loop !985

; <label>:214:                                    ; preds = %176
  br label %215

; <label>:215:                                    ; preds = %214, %174
  %216 = load double, double* %21, align 8, !dbg !987
  %217 = call double @sqrt(double %216) #5, !dbg !988
  call void @callOneArgHandler(i32 14, double %216, double %217, i64 94057251227992, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251228336, i32 345, i32 14), !dbg !989
  store double %217, double* %21, align 8, !dbg !989
  %218 = load double, double* %21, align 8, !dbg !990
  %219 = load i32, i32* %16, align 4, !dbg !991
  %220 = sext i32 %219 to i64, !dbg !992
  %221 = load double*, double** %13, align 8, !dbg !992
  %222 = getelementptr inbounds double, double* %221, i64 %220, !dbg !992
  %223 = load double, double* %222, align 8, !dbg !993
  %224 = fdiv double %223, %218, !dbg !993
  call void @fDivHandler(double %223, double %218, double %224, i64 94057251232152, i64 94057251229208, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @7, i32 0, i32 0), i64 94057251232560, i32 346, i32 24), !dbg !993
  store double %224, double* %222, align 8, !dbg !993
  br label %225, !dbg !994

; <label>:225:                                    ; preds = %215, %104, %95
  %226 = load i32, i32* %16, align 4, !dbg !995
  %227 = add nsw i32 %226, 1, !dbg !995
  store i32 %227, i32* %16, align 4, !dbg !995
  %228 = load i32, i32* %15, align 4, !dbg !997
  %229 = add nsw i32 %228, 1, !dbg !997
  store i32 %229, i32* %15, align 4, !dbg !997
  br label %76, !dbg !998, !llvm.loop !999

; <label>:230:                                    ; preds = %76
  store i32 0, i32* %7, align 4, !dbg !1001
  br label %231, !dbg !1001

; <label>:231:                                    ; preds = %230, %128, %67, %52
  %232 = load i32, i32* %7, align 4, !dbg !1002
  ret i32 %232, !dbg !1002
}

declare i32 @gsl_sf_mathieu_b_array(i32, i32, double, %struct.gsl_sf_mathieu_workspace*, double*) #4

; Function Attrs: nounwind uwtable
define double @gsl_sf_mathieu_ce(i32, double, double) #0 !dbg !1003 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1006, metadata !61), !dbg !1007
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1008, metadata !61), !dbg !1009
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1010, metadata !61), !dbg !1011
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1012, metadata !61), !dbg !1013
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1014, metadata !61), !dbg !1013
  %10 = load i32, i32* %5, align 4, !dbg !1013
  %11 = load double, double* %6, align 8, !dbg !1013
  %12 = load double, double* %7, align 8, !dbg !1013
  %13 = call i32 @gsl_sf_mathieu_ce_e(i32 %10, double %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !1013
  store i32 %13, i32* %9, align 4, !dbg !1013
  %14 = load i32, i32* %9, align 4, !dbg !1015
  %15 = icmp ne i32 %14, 0, !dbg !1015
  %16 = sext i32 %14 to i64, !dbg !1013
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @9, i32 0, i32 0), i64 94057251251920, i32 359, i32 2), !dbg !1013
  br i1 %17, label %18, label %24, !dbg !1013

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !1017, !llvm.loop !1020

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !1022
  call void @gsl_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 359, i32 %20), !dbg !1022
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1022
  %22 = load double, double* %21, align 8, !dbg !1022
  store double %22, double* %4, align 8, !dbg !1022
  br label %27, !dbg !1022
                                                  ; No predecessors!
  br label %24, !dbg !1025

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1027
  %26 = load double, double* %25, align 8, !dbg !1027
  store double %26, double* %4, align 8, !dbg !1027
  br label %27, !dbg !1027

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !1029
  ret double %28, !dbg !1029
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_mathieu_se(i32, double, double) #0 !dbg !1030 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1031, metadata !61), !dbg !1032
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1033, metadata !61), !dbg !1034
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1035, metadata !61), !dbg !1036
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1037, metadata !61), !dbg !1038
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1039, metadata !61), !dbg !1038
  %10 = load i32, i32* %5, align 4, !dbg !1038
  %11 = load double, double* %6, align 8, !dbg !1038
  %12 = load double, double* %7, align 8, !dbg !1038
  %13 = call i32 @gsl_sf_mathieu_se_e(i32 %10, double %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !1038
  store i32 %13, i32* %9, align 4, !dbg !1038
  %14 = load i32, i32* %9, align 4, !dbg !1040
  %15 = icmp ne i32 %14, 0, !dbg !1040
  %16 = sext i32 %14 to i64, !dbg !1038
  %17 = call i1 @iCmpInstHandler(i64 %16, i64 0, i1 %15, i32 33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @11, i32 0, i32 0), i64 94057251272240, i32 364, i32 2), !dbg !1038
  br i1 %17, label %18, label %24, !dbg !1038

; <label>:18:                                     ; preds = %3
  br label %19, !dbg !1042, !llvm.loop !1045

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %9, align 4, !dbg !1047
  call void @gsl_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 364, i32 %20), !dbg !1047
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1047
  %22 = load double, double* %21, align 8, !dbg !1047
  store double %22, double* %4, align 8, !dbg !1047
  br label %27, !dbg !1047
                                                  ; No predecessors!
  br label %24, !dbg !1050

; <label>:24:                                     ; preds = %23, %3
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1052
  %26 = load double, double* %25, align 8, !dbg !1052
  store double %26, double* %4, align 8, !dbg !1052
  br label %27, !dbg !1052

; <label>:27:                                     ; preds = %24, %19
  %28 = load double, double* %4, align 8, !dbg !1054
  ret double %28, !dbg !1054
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
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "mathieu_angfunc.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!42 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!43 = !{i32 2, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"PIC Level", i32 2}
!46 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!47 = distinct !DISubprogram(name: "gsl_sf_mathieu_ce_e", scope: !1, file: !1, line: 30, type: !48, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !50, !51, !51, !52}
!50 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!51 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !54, line: 41, baseType: !55)
!54 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !54, line: 37, size: 128, align: 64, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !55, file: !54, line: 38, baseType: !51, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !55, file: !54, line: 39, baseType: !51, size: 64, align: 64, offset: 64)
!59 = !{}
!60 = !DILocalVariable(name: "order", arg: 1, scope: !47, file: !1, line: 30, type: !50)
!61 = !DIExpression()
!62 = !DILocation(line: 30, column: 29, scope: !47)
!63 = !DILocalVariable(name: "qq", arg: 2, scope: !47, file: !1, line: 30, type: !51)
!64 = !DILocation(line: 30, column: 43, scope: !47)
!65 = !DILocalVariable(name: "zz", arg: 3, scope: !47, file: !1, line: 30, type: !51)
!66 = !DILocation(line: 30, column: 54, scope: !47)
!67 = !DILocalVariable(name: "result", arg: 4, scope: !47, file: !1, line: 30, type: !52)
!68 = !DILocation(line: 30, column: 73, scope: !47)
!69 = !DILocalVariable(name: "even_odd", scope: !47, file: !1, line: 32, type: !50)
!70 = !DILocation(line: 32, column: 7, scope: !47)
!71 = !DILocalVariable(name: "ii", scope: !47, file: !1, line: 32, type: !50)
!72 = !DILocation(line: 32, column: 17, scope: !47)
!73 = !DILocalVariable(name: "status", scope: !47, file: !1, line: 32, type: !50)
!74 = !DILocation(line: 32, column: 21, scope: !47)
!75 = !DILocalVariable(name: "coeff", scope: !47, file: !1, line: 33, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 6400, align: 64, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 100)
!79 = !DILocation(line: 33, column: 10, scope: !47)
!80 = !DILocalVariable(name: "norm", scope: !47, file: !1, line: 33, type: !51)
!81 = !DILocation(line: 33, column: 39, scope: !47)
!82 = !DILocalVariable(name: "fn", scope: !47, file: !1, line: 33, type: !51)
!83 = !DILocation(line: 33, column: 45, scope: !47)
!84 = !DILocalVariable(name: "factor", scope: !47, file: !1, line: 33, type: !51)
!85 = !DILocation(line: 33, column: 49, scope: !47)
!86 = !DILocalVariable(name: "aa", scope: !47, file: !1, line: 34, type: !53)
!87 = !DILocation(line: 34, column: 17, scope: !47)
!88 = !DILocation(line: 37, column: 8, scope: !47)
!89 = !DILocation(line: 38, column: 12, scope: !47)
!90 = !DILocation(line: 39, column: 7, scope: !91)
!91 = distinct !DILexicalBlock(scope: !47, file: !1, line: 39, column: 7)
!92 = !DILocation(line: 39, column: 13, scope: !91)
!93 = !DILocation(line: 39, column: 17, scope: !91)
!94 = !DILocation(line: 39, column: 7, scope: !47)
!95 = !DILocation(line: 40, column: 16, scope: !91)
!96 = !DILocation(line: 40, column: 7, scope: !91)
!97 = !DILocation(line: 43, column: 7, scope: !98)
!98 = distinct !DILexicalBlock(scope: !47, file: !1, line: 43, column: 7)
!99 = !DILocation(line: 43, column: 10, scope: !98)
!100 = !DILocation(line: 43, column: 7, scope: !47)
!101 = !DILocation(line: 45, column: 12, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 44, column: 3)
!103 = !DILocation(line: 46, column: 11, scope: !104)
!104 = distinct !DILexicalBlock(scope: !102, file: !1, line: 46, column: 11)
!105 = !DILocation(line: 46, column: 17, scope: !104)
!106 = !DILocation(line: 46, column: 11, scope: !102)
!107 = !DILocation(line: 47, column: 18, scope: !104)
!108 = !DILocation(line: 47, column: 16, scope: !104)
!109 = !DILocation(line: 47, column: 11, scope: !104)
!110 = !DILocation(line: 49, column: 16, scope: !102)
!111 = !DILocation(line: 49, column: 22, scope: !102)
!112 = !DILocation(line: 49, column: 21, scope: !102)
!113 = !DILocation(line: 49, column: 12, scope: !102)
!114 = !DILocation(line: 49, column: 26, scope: !102)
!115 = !DILocation(line: 49, column: 25, scope: !102)
!116 = !DILocation(line: 49, column: 10, scope: !102)
!117 = !DILocation(line: 51, column: 21, scope: !102)
!118 = !DILocation(line: 51, column: 7, scope: !102)
!119 = !DILocation(line: 51, column: 15, scope: !102)
!120 = !DILocation(line: 51, column: 19, scope: !102)
!121 = !DILocation(line: 52, column: 7, scope: !102)
!122 = !DILocation(line: 52, column: 15, scope: !102)
!123 = !DILocation(line: 52, column: 19, scope: !102)
!124 = !DILocation(line: 53, column: 21, scope: !102)
!125 = !DILocation(line: 53, column: 16, scope: !102)
!126 = !DILocation(line: 53, column: 14, scope: !102)
!127 = !DILocation(line: 54, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !102, file: !1, line: 54, column: 11)
!129 = !DILocation(line: 54, column: 18, scope: !128)
!130 = !DILocation(line: 54, column: 11, scope: !102)
!131 = !DILocation(line: 55, column: 26, scope: !128)
!132 = !DILocation(line: 55, column: 11, scope: !128)
!133 = !DILocation(line: 55, column: 19, scope: !128)
!134 = !DILocation(line: 55, column: 23, scope: !128)
!135 = !DILocation(line: 57, column: 7, scope: !102)
!136 = !DILocation(line: 62, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !47, file: !1, line: 62, column: 7)
!138 = !DILocation(line: 62, column: 13, scope: !137)
!139 = !DILocation(line: 62, column: 7, scope: !47)
!140 = !DILocation(line: 63, column: 13, scope: !137)
!141 = !DILocation(line: 63, column: 7, scope: !137)
!142 = !DILocation(line: 66, column: 31, scope: !47)
!143 = !DILocation(line: 66, column: 38, scope: !47)
!144 = !DILocation(line: 66, column: 12, scope: !47)
!145 = !DILocation(line: 66, column: 10, scope: !47)
!146 = !DILocation(line: 67, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !47, file: !1, line: 67, column: 7)
!148 = !DILocation(line: 67, column: 14, scope: !147)
!149 = !DILocation(line: 67, column: 7, scope: !47)
!150 = !DILocation(line: 69, column: 14, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 68, column: 3)
!152 = !DILocation(line: 69, column: 7, scope: !151)
!153 = !DILocation(line: 73, column: 35, scope: !47)
!154 = !DILocation(line: 73, column: 42, scope: !47)
!155 = !DILocation(line: 73, column: 49, scope: !47)
!156 = !DILocation(line: 73, column: 54, scope: !47)
!157 = !DILocation(line: 73, column: 12, scope: !47)
!158 = !DILocation(line: 73, column: 10, scope: !47)
!159 = !DILocation(line: 74, column: 7, scope: !160)
!160 = distinct !DILexicalBlock(scope: !47, file: !1, line: 74, column: 7)
!161 = !DILocation(line: 74, column: 14, scope: !160)
!162 = !DILocation(line: 74, column: 7, scope: !47)
!163 = !DILocation(line: 76, column: 14, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 75, column: 3)
!165 = !DILocation(line: 76, column: 7, scope: !164)
!166 = !DILocation(line: 79, column: 7, scope: !167)
!167 = distinct !DILexicalBlock(scope: !47, file: !1, line: 79, column: 7)
!168 = !DILocation(line: 79, column: 16, scope: !167)
!169 = !DILocation(line: 79, column: 7, scope: !47)
!170 = !DILocation(line: 81, column: 10, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !1, line: 80, column: 3)
!172 = !DILocation(line: 82, column: 14, scope: !171)
!173 = !DILocation(line: 82, column: 23, scope: !171)
!174 = !DILocation(line: 82, column: 22, scope: !171)
!175 = !DILocation(line: 82, column: 12, scope: !171)
!176 = !DILocation(line: 83, column: 14, scope: !177)
!177 = distinct !DILexicalBlock(scope: !171, file: !1, line: 83, column: 7)
!178 = !DILocation(line: 83, column: 12, scope: !177)
!179 = !DILocation(line: 83, column: 18, scope: !180)
!180 = !DILexicalBlockFile(scope: !181, file: !1, discriminator: 1)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 83, column: 7)
!182 = !DILocation(line: 83, column: 20, scope: !180)
!183 = !DILocation(line: 83, column: 7, scope: !180)
!184 = !DILocation(line: 85, column: 23, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 84, column: 7)
!186 = !DILocation(line: 85, column: 17, scope: !185)
!187 = !DILocation(line: 85, column: 35, scope: !185)
!188 = !DILocation(line: 85, column: 34, scope: !185)
!189 = !DILocation(line: 85, column: 38, scope: !185)
!190 = !DILocation(line: 85, column: 37, scope: !185)
!191 = !DILocation(line: 85, column: 27, scope: !185)
!192 = !DILocation(line: 85, column: 26, scope: !185)
!193 = !DILocation(line: 85, column: 14, scope: !185)
!194 = !DILocation(line: 86, column: 25, scope: !185)
!195 = !DILocation(line: 86, column: 19, scope: !185)
!196 = !DILocation(line: 86, column: 35, scope: !185)
!197 = !DILocation(line: 86, column: 29, scope: !185)
!198 = !DILocation(line: 86, column: 28, scope: !185)
!199 = !DILocation(line: 86, column: 16, scope: !185)
!200 = !DILocation(line: 87, column: 7, scope: !185)
!201 = !DILocation(line: 83, column: 45, scope: !202)
!202 = !DILexicalBlockFile(scope: !181, file: !1, discriminator: 2)
!203 = !DILocation(line: 83, column: 7, scope: !202)
!204 = distinct !{!204, !205}
!205 = !DILocation(line: 83, column: 7, scope: !171)
!206 = !DILocation(line: 88, column: 3, scope: !171)
!207 = !DILocation(line: 91, column: 10, scope: !208)
!208 = distinct !DILexicalBlock(scope: !167, file: !1, line: 90, column: 3)
!209 = !DILocation(line: 92, column: 14, scope: !210)
!210 = distinct !DILexicalBlock(scope: !208, file: !1, line: 92, column: 7)
!211 = !DILocation(line: 92, column: 12, scope: !210)
!212 = !DILocation(line: 92, column: 18, scope: !213)
!213 = !DILexicalBlockFile(scope: !214, file: !1, discriminator: 1)
!214 = distinct !DILexicalBlock(scope: !210, file: !1, line: 92, column: 7)
!215 = !DILocation(line: 92, column: 20, scope: !213)
!216 = !DILocation(line: 92, column: 7, scope: !213)
!217 = !DILocation(line: 94, column: 23, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 93, column: 7)
!219 = !DILocation(line: 94, column: 17, scope: !218)
!220 = !DILocation(line: 94, column: 36, scope: !218)
!221 = !DILocation(line: 94, column: 35, scope: !218)
!222 = !DILocation(line: 94, column: 39, scope: !218)
!223 = !DILocation(line: 94, column: 46, scope: !218)
!224 = !DILocation(line: 94, column: 45, scope: !218)
!225 = !DILocation(line: 94, column: 27, scope: !218)
!226 = !DILocation(line: 94, column: 26, scope: !218)
!227 = !DILocation(line: 94, column: 14, scope: !218)
!228 = !DILocation(line: 95, column: 25, scope: !218)
!229 = !DILocation(line: 95, column: 19, scope: !218)
!230 = !DILocation(line: 95, column: 35, scope: !218)
!231 = !DILocation(line: 95, column: 29, scope: !218)
!232 = !DILocation(line: 95, column: 28, scope: !218)
!233 = !DILocation(line: 95, column: 16, scope: !218)
!234 = !DILocation(line: 96, column: 7, scope: !218)
!235 = !DILocation(line: 92, column: 45, scope: !236)
!236 = !DILexicalBlockFile(scope: !214, file: !1, discriminator: 2)
!237 = !DILocation(line: 92, column: 7, scope: !236)
!238 = distinct !{!238, !239}
!239 = !DILocation(line: 92, column: 7, scope: !208)
!240 = !DILocation(line: 99, column: 15, scope: !47)
!241 = !DILocation(line: 99, column: 10, scope: !47)
!242 = !DILocation(line: 99, column: 8, scope: !47)
!243 = !DILocation(line: 100, column: 9, scope: !47)
!244 = !DILocation(line: 100, column: 6, scope: !47)
!245 = !DILocation(line: 102, column: 17, scope: !47)
!246 = !DILocation(line: 102, column: 3, scope: !47)
!247 = !DILocation(line: 102, column: 11, scope: !47)
!248 = !DILocation(line: 102, column: 15, scope: !47)
!249 = !DILocation(line: 103, column: 3, scope: !47)
!250 = !DILocation(line: 103, column: 11, scope: !47)
!251 = !DILocation(line: 103, column: 15, scope: !47)
!252 = !DILocation(line: 104, column: 17, scope: !47)
!253 = !DILocation(line: 104, column: 12, scope: !47)
!254 = !DILocation(line: 104, column: 10, scope: !47)
!255 = !DILocation(line: 105, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !47, file: !1, line: 105, column: 7)
!257 = !DILocation(line: 105, column: 14, scope: !256)
!258 = !DILocation(line: 105, column: 7, scope: !47)
!259 = !DILocation(line: 106, column: 22, scope: !256)
!260 = !DILocation(line: 106, column: 7, scope: !256)
!261 = !DILocation(line: 106, column: 15, scope: !256)
!262 = !DILocation(line: 106, column: 19, scope: !256)
!263 = !DILocation(line: 108, column: 3, scope: !47)
!264 = !DILocation(line: 109, column: 1, scope: !47)
!265 = distinct !DISubprogram(name: "gsl_sf_mathieu_se_e", scope: !1, file: !1, line: 112, type: !48, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!266 = !DILocalVariable(name: "order", arg: 1, scope: !265, file: !1, line: 112, type: !50)
!267 = !DILocation(line: 112, column: 29, scope: !265)
!268 = !DILocalVariable(name: "qq", arg: 2, scope: !265, file: !1, line: 112, type: !51)
!269 = !DILocation(line: 112, column: 43, scope: !265)
!270 = !DILocalVariable(name: "zz", arg: 3, scope: !265, file: !1, line: 112, type: !51)
!271 = !DILocation(line: 112, column: 54, scope: !265)
!272 = !DILocalVariable(name: "result", arg: 4, scope: !265, file: !1, line: 112, type: !52)
!273 = !DILocation(line: 112, column: 73, scope: !265)
!274 = !DILocalVariable(name: "even_odd", scope: !265, file: !1, line: 114, type: !50)
!275 = !DILocation(line: 114, column: 7, scope: !265)
!276 = !DILocalVariable(name: "ii", scope: !265, file: !1, line: 114, type: !50)
!277 = !DILocation(line: 114, column: 17, scope: !265)
!278 = !DILocalVariable(name: "status", scope: !265, file: !1, line: 114, type: !50)
!279 = !DILocation(line: 114, column: 21, scope: !265)
!280 = !DILocalVariable(name: "coeff", scope: !265, file: !1, line: 115, type: !76)
!281 = !DILocation(line: 115, column: 10, scope: !265)
!282 = !DILocalVariable(name: "norm", scope: !265, file: !1, line: 115, type: !51)
!283 = !DILocation(line: 115, column: 39, scope: !265)
!284 = !DILocalVariable(name: "fn", scope: !265, file: !1, line: 115, type: !51)
!285 = !DILocation(line: 115, column: 45, scope: !265)
!286 = !DILocalVariable(name: "factor", scope: !265, file: !1, line: 115, type: !51)
!287 = !DILocation(line: 115, column: 49, scope: !265)
!288 = !DILocalVariable(name: "aa", scope: !265, file: !1, line: 116, type: !53)
!289 = !DILocation(line: 116, column: 17, scope: !265)
!290 = !DILocation(line: 119, column: 8, scope: !265)
!291 = !DILocation(line: 120, column: 12, scope: !265)
!292 = !DILocation(line: 121, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !265, file: !1, line: 121, column: 7)
!294 = !DILocation(line: 121, column: 13, scope: !293)
!295 = !DILocation(line: 121, column: 17, scope: !293)
!296 = !DILocation(line: 121, column: 7, scope: !265)
!297 = !DILocation(line: 122, column: 16, scope: !293)
!298 = !DILocation(line: 122, column: 7, scope: !293)
!299 = !DILocation(line: 125, column: 7, scope: !300)
!300 = distinct !DILexicalBlock(scope: !265, file: !1, line: 125, column: 7)
!301 = !DILocation(line: 125, column: 13, scope: !300)
!302 = !DILocation(line: 125, column: 7, scope: !265)
!303 = !DILocation(line: 127, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !1, line: 126, column: 3)
!305 = !DILocation(line: 127, column: 15, scope: !304)
!306 = !DILocation(line: 127, column: 19, scope: !304)
!307 = !DILocation(line: 128, column: 7, scope: !304)
!308 = !DILocation(line: 128, column: 15, scope: !304)
!309 = !DILocation(line: 128, column: 19, scope: !304)
!310 = !DILocation(line: 129, column: 7, scope: !304)
!311 = !DILocation(line: 132, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !265, file: !1, line: 132, column: 7)
!313 = !DILocation(line: 132, column: 10, scope: !312)
!314 = !DILocation(line: 132, column: 7, scope: !265)
!315 = !DILocation(line: 134, column: 12, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !1, line: 133, column: 3)
!317 = !DILocation(line: 135, column: 16, scope: !316)
!318 = !DILocation(line: 135, column: 22, scope: !316)
!319 = !DILocation(line: 135, column: 21, scope: !316)
!320 = !DILocation(line: 135, column: 12, scope: !316)
!321 = !DILocation(line: 135, column: 10, scope: !316)
!322 = !DILocation(line: 137, column: 21, scope: !316)
!323 = !DILocation(line: 137, column: 7, scope: !316)
!324 = !DILocation(line: 137, column: 15, scope: !316)
!325 = !DILocation(line: 137, column: 19, scope: !316)
!326 = !DILocation(line: 138, column: 7, scope: !316)
!327 = !DILocation(line: 138, column: 15, scope: !316)
!328 = !DILocation(line: 138, column: 19, scope: !316)
!329 = !DILocation(line: 139, column: 21, scope: !316)
!330 = !DILocation(line: 139, column: 16, scope: !316)
!331 = !DILocation(line: 139, column: 14, scope: !316)
!332 = !DILocation(line: 140, column: 11, scope: !333)
!333 = distinct !DILexicalBlock(scope: !316, file: !1, line: 140, column: 11)
!334 = !DILocation(line: 140, column: 18, scope: !333)
!335 = !DILocation(line: 140, column: 11, scope: !316)
!336 = !DILocation(line: 141, column: 26, scope: !333)
!337 = !DILocation(line: 141, column: 11, scope: !333)
!338 = !DILocation(line: 141, column: 19, scope: !333)
!339 = !DILocation(line: 141, column: 23, scope: !333)
!340 = !DILocation(line: 143, column: 7, scope: !316)
!341 = !DILocation(line: 148, column: 7, scope: !342)
!342 = distinct !DILexicalBlock(scope: !265, file: !1, line: 148, column: 7)
!343 = !DILocation(line: 148, column: 13, scope: !342)
!344 = !DILocation(line: 148, column: 7, scope: !265)
!345 = !DILocation(line: 149, column: 13, scope: !342)
!346 = !DILocation(line: 149, column: 7, scope: !342)
!347 = !DILocation(line: 152, column: 31, scope: !265)
!348 = !DILocation(line: 152, column: 38, scope: !265)
!349 = !DILocation(line: 152, column: 12, scope: !265)
!350 = !DILocation(line: 152, column: 10, scope: !265)
!351 = !DILocation(line: 153, column: 7, scope: !352)
!352 = distinct !DILexicalBlock(scope: !265, file: !1, line: 153, column: 7)
!353 = !DILocation(line: 153, column: 14, scope: !352)
!354 = !DILocation(line: 153, column: 7, scope: !265)
!355 = !DILocation(line: 155, column: 14, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !1, line: 154, column: 3)
!357 = !DILocation(line: 155, column: 7, scope: !356)
!358 = !DILocation(line: 159, column: 35, scope: !265)
!359 = !DILocation(line: 159, column: 42, scope: !265)
!360 = !DILocation(line: 159, column: 49, scope: !265)
!361 = !DILocation(line: 159, column: 54, scope: !265)
!362 = !DILocation(line: 159, column: 12, scope: !265)
!363 = !DILocation(line: 159, column: 10, scope: !265)
!364 = !DILocation(line: 160, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !265, file: !1, line: 160, column: 7)
!366 = !DILocation(line: 160, column: 14, scope: !365)
!367 = !DILocation(line: 160, column: 7, scope: !265)
!368 = !DILocation(line: 162, column: 14, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !1, line: 161, column: 3)
!370 = !DILocation(line: 162, column: 7, scope: !369)
!371 = !DILocation(line: 165, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !265, file: !1, line: 165, column: 7)
!373 = !DILocation(line: 165, column: 16, scope: !372)
!374 = !DILocation(line: 165, column: 7, scope: !265)
!375 = !DILocation(line: 167, column: 10, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !1, line: 166, column: 3)
!377 = !DILocation(line: 168, column: 14, scope: !378)
!378 = distinct !DILexicalBlock(scope: !376, file: !1, line: 168, column: 7)
!379 = !DILocation(line: 168, column: 12, scope: !378)
!380 = !DILocation(line: 168, column: 18, scope: !381)
!381 = !DILexicalBlockFile(scope: !382, file: !1, discriminator: 1)
!382 = distinct !DILexicalBlock(scope: !378, file: !1, line: 168, column: 7)
!383 = !DILocation(line: 168, column: 20, scope: !381)
!384 = !DILocation(line: 168, column: 7, scope: !381)
!385 = !DILocation(line: 170, column: 25, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !1, line: 169, column: 7)
!387 = !DILocation(line: 170, column: 19, scope: !386)
!388 = !DILocation(line: 170, column: 35, scope: !386)
!389 = !DILocation(line: 170, column: 29, scope: !386)
!390 = !DILocation(line: 170, column: 28, scope: !386)
!391 = !DILocation(line: 170, column: 16, scope: !386)
!392 = !DILocation(line: 171, column: 23, scope: !386)
!393 = !DILocation(line: 171, column: 17, scope: !386)
!394 = !DILocation(line: 171, column: 36, scope: !386)
!395 = !DILocation(line: 171, column: 39, scope: !386)
!396 = !DILocation(line: 171, column: 35, scope: !386)
!397 = !DILocation(line: 171, column: 34, scope: !386)
!398 = !DILocation(line: 171, column: 44, scope: !386)
!399 = !DILocation(line: 171, column: 43, scope: !386)
!400 = !DILocation(line: 171, column: 27, scope: !386)
!401 = !DILocation(line: 171, column: 26, scope: !386)
!402 = !DILocation(line: 171, column: 14, scope: !386)
!403 = !DILocation(line: 172, column: 7, scope: !386)
!404 = !DILocation(line: 168, column: 45, scope: !405)
!405 = !DILexicalBlockFile(scope: !382, file: !1, discriminator: 2)
!406 = !DILocation(line: 168, column: 7, scope: !405)
!407 = distinct !{!407, !408}
!408 = !DILocation(line: 168, column: 7, scope: !376)
!409 = !DILocation(line: 173, column: 3, scope: !376)
!410 = !DILocation(line: 176, column: 10, scope: !411)
!411 = distinct !DILexicalBlock(scope: !372, file: !1, line: 175, column: 3)
!412 = !DILocation(line: 177, column: 14, scope: !413)
!413 = distinct !DILexicalBlock(scope: !411, file: !1, line: 177, column: 7)
!414 = !DILocation(line: 177, column: 12, scope: !413)
!415 = !DILocation(line: 177, column: 18, scope: !416)
!416 = !DILexicalBlockFile(scope: !417, file: !1, discriminator: 1)
!417 = distinct !DILexicalBlock(scope: !413, file: !1, line: 177, column: 7)
!418 = !DILocation(line: 177, column: 20, scope: !416)
!419 = !DILocation(line: 177, column: 7, scope: !416)
!420 = !DILocation(line: 179, column: 25, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !1, line: 178, column: 7)
!422 = !DILocation(line: 179, column: 19, scope: !421)
!423 = !DILocation(line: 179, column: 35, scope: !421)
!424 = !DILocation(line: 179, column: 29, scope: !421)
!425 = !DILocation(line: 179, column: 28, scope: !421)
!426 = !DILocation(line: 179, column: 16, scope: !421)
!427 = !DILocation(line: 180, column: 23, scope: !421)
!428 = !DILocation(line: 180, column: 17, scope: !421)
!429 = !DILocation(line: 180, column: 36, scope: !421)
!430 = !DILocation(line: 180, column: 35, scope: !421)
!431 = !DILocation(line: 180, column: 39, scope: !421)
!432 = !DILocation(line: 180, column: 44, scope: !421)
!433 = !DILocation(line: 180, column: 43, scope: !421)
!434 = !DILocation(line: 180, column: 27, scope: !421)
!435 = !DILocation(line: 180, column: 26, scope: !421)
!436 = !DILocation(line: 180, column: 14, scope: !421)
!437 = !DILocation(line: 181, column: 7, scope: !421)
!438 = !DILocation(line: 177, column: 45, scope: !439)
!439 = !DILexicalBlockFile(scope: !417, file: !1, discriminator: 2)
!440 = !DILocation(line: 177, column: 7, scope: !439)
!441 = distinct !{!441, !442}
!442 = !DILocation(line: 177, column: 7, scope: !411)
!443 = !DILocation(line: 183, column: 15, scope: !265)
!444 = !DILocation(line: 183, column: 10, scope: !265)
!445 = !DILocation(line: 183, column: 8, scope: !265)
!446 = !DILocation(line: 184, column: 9, scope: !265)
!447 = !DILocation(line: 184, column: 6, scope: !265)
!448 = !DILocation(line: 186, column: 17, scope: !265)
!449 = !DILocation(line: 186, column: 3, scope: !265)
!450 = !DILocation(line: 186, column: 11, scope: !265)
!451 = !DILocation(line: 186, column: 15, scope: !265)
!452 = !DILocation(line: 187, column: 3, scope: !265)
!453 = !DILocation(line: 187, column: 11, scope: !265)
!454 = !DILocation(line: 187, column: 15, scope: !265)
!455 = !DILocation(line: 188, column: 17, scope: !265)
!456 = !DILocation(line: 188, column: 12, scope: !265)
!457 = !DILocation(line: 188, column: 10, scope: !265)
!458 = !DILocation(line: 189, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !265, file: !1, line: 189, column: 7)
!460 = !DILocation(line: 189, column: 14, scope: !459)
!461 = !DILocation(line: 189, column: 7, scope: !265)
!462 = !DILocation(line: 190, column: 22, scope: !459)
!463 = !DILocation(line: 190, column: 7, scope: !459)
!464 = !DILocation(line: 190, column: 15, scope: !459)
!465 = !DILocation(line: 190, column: 19, scope: !459)
!466 = !DILocation(line: 192, column: 3, scope: !265)
!467 = !DILocation(line: 193, column: 1, scope: !265)
!468 = distinct !DISubprogram(name: "gsl_sf_mathieu_ce_array", scope: !1, file: !1, line: 196, type: !469, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!469 = !DISubroutineType(types: !470)
!470 = !{!50, !50, !50, !51, !51, !471, !486}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_mathieu_workspace", file: !473, line: 60, baseType: !474)
!473 = !DIFile(filename: "../gsl/gsl_sf_mathieu.h", directory: "/fpcc/gsl-2.5/specfunc")
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 42, size: 1024, align: 64, elements: !475)
!475 = !{!476, !480, !481, !482, !483, !484, !485, !487, !488, !489, !490, !491, !492, !493, !511, !523}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !474, file: !473, line: 44, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !478, line: 62, baseType: !479)
!478 = !DIFile(filename: "/usr/lib/llvm-3.9/bin/../lib/clang/3.9.1/include/stddef.h", directory: "/fpcc/gsl-2.5/specfunc")
!479 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "even_order", scope: !474, file: !473, line: 45, baseType: !477, size: 64, align: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "odd_order", scope: !474, file: !473, line: 46, baseType: !477, size: 64, align: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !474, file: !473, line: 47, baseType: !50, size: 32, align: 32, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "qa", scope: !474, file: !473, line: 48, baseType: !51, size: 64, align: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "qb", scope: !474, file: !473, line: 49, baseType: !51, size: 64, align: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "aa", scope: !474, file: !473, line: 50, baseType: !486, size: 64, align: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !474, file: !473, line: 51, baseType: !486, size: 64, align: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !474, file: !473, line: 52, baseType: !486, size: 64, align: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !474, file: !473, line: 53, baseType: !486, size: 64, align: 64, offset: 576)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !474, file: !473, line: 54, baseType: !486, size: 64, align: 64, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !474, file: !473, line: 55, baseType: !486, size: 64, align: 64, offset: 704)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "zz", scope: !474, file: !473, line: 56, baseType: !486, size: 64, align: 64, offset: 768)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !474, file: !473, line: 57, baseType: !494, size: 64, align: 64, offset: 832)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !496, line: 50, baseType: !497)
!496 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !496, line: 42, size: 320, align: 64, elements: !498)
!498 = !{!499, !500, !501, !502, !510}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !497, file: !496, line: 44, baseType: !477, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !497, file: !496, line: 45, baseType: !477, size: 64, align: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !497, file: !496, line: 46, baseType: !486, size: 64, align: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !497, file: !496, line: 47, baseType: !503, size: 64, align: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !505, line: 44, baseType: !506)
!505 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !505, line: 38, size: 128, align: 64, elements: !507)
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !506, file: !505, line: 40, baseType: !477, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !506, file: !505, line: 41, baseType: !486, size: 64, align: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !497, file: !496, line: 48, baseType: !50, size: 32, align: 32, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "evec", scope: !474, file: !473, line: 58, baseType: !512, size: 64, align: 64, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !514, line: 50, baseType: !515)
!514 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/fpcc/gsl-2.5/specfunc")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !514, line: 42, size: 384, align: 64, elements: !516)
!516 = !{!517, !518, !519, !520, !521, !522}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !515, file: !514, line: 44, baseType: !477, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !515, file: !514, line: 45, baseType: !477, size: 64, align: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !515, file: !514, line: 46, baseType: !477, size: 64, align: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !515, file: !514, line: 47, baseType: !486, size: 64, align: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !515, file: !514, line: 48, baseType: !503, size: 64, align: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !515, file: !514, line: 49, baseType: !50, size: 32, align: 32, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wmat", scope: !474, file: !473, line: 59, baseType: !524, size: 64, align: 64, offset: 960)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_eigen_symmv_workspace", file: !526, line: 54, baseType: !527)
!526 = !DIFile(filename: "../gsl/gsl_eigen.h", directory: "/fpcc/gsl-2.5/specfunc")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 48, size: 320, align: 64, elements: !528)
!528 = !{!529, !530, !531, !532, !533}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !527, file: !526, line: 49, baseType: !477, size: 64, align: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !527, file: !526, line: 50, baseType: !486, size: 64, align: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !527, file: !526, line: 51, baseType: !486, size: 64, align: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !527, file: !526, line: 52, baseType: !486, size: 64, align: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !527, file: !526, line: 53, baseType: !486, size: 64, align: 64, offset: 256)
!534 = !DILocalVariable(name: "nmin", arg: 1, scope: !468, file: !1, line: 196, type: !50)
!535 = !DILocation(line: 196, column: 33, scope: !468)
!536 = !DILocalVariable(name: "nmax", arg: 2, scope: !468, file: !1, line: 196, type: !50)
!537 = !DILocation(line: 196, column: 43, scope: !468)
!538 = !DILocalVariable(name: "qq", arg: 3, scope: !468, file: !1, line: 196, type: !51)
!539 = !DILocation(line: 196, column: 56, scope: !468)
!540 = !DILocalVariable(name: "zz", arg: 4, scope: !468, file: !1, line: 196, type: !51)
!541 = !DILocation(line: 196, column: 67, scope: !468)
!542 = !DILocalVariable(name: "work", arg: 5, scope: !468, file: !1, line: 197, type: !471)
!543 = !DILocation(line: 197, column: 55, scope: !468)
!544 = !DILocalVariable(name: "result_array", arg: 6, scope: !468, file: !1, line: 198, type: !486)
!545 = !DILocation(line: 198, column: 36, scope: !468)
!546 = !DILocalVariable(name: "even_odd", scope: !468, file: !1, line: 200, type: !50)
!547 = !DILocation(line: 200, column: 7, scope: !468)
!548 = !DILocalVariable(name: "order", scope: !468, file: !1, line: 200, type: !50)
!549 = !DILocation(line: 200, column: 17, scope: !468)
!550 = !DILocalVariable(name: "ii", scope: !468, file: !1, line: 200, type: !50)
!551 = !DILocation(line: 200, column: 24, scope: !468)
!552 = !DILocalVariable(name: "jj", scope: !468, file: !1, line: 200, type: !50)
!553 = !DILocation(line: 200, column: 28, scope: !468)
!554 = !DILocalVariable(name: "status", scope: !468, file: !1, line: 200, type: !50)
!555 = !DILocation(line: 200, column: 32, scope: !468)
!556 = !DILocalVariable(name: "coeff", scope: !468, file: !1, line: 201, type: !76)
!557 = !DILocation(line: 201, column: 10, scope: !468)
!558 = !DILocalVariable(name: "aa", scope: !468, file: !1, line: 201, type: !486)
!559 = !DILocation(line: 201, column: 40, scope: !468)
!560 = !DILocation(line: 201, column: 45, scope: !468)
!561 = !DILocation(line: 201, column: 51, scope: !468)
!562 = !DILocalVariable(name: "norm", scope: !468, file: !1, line: 201, type: !51)
!563 = !DILocation(line: 201, column: 55, scope: !468)
!564 = !DILocation(line: 205, column: 10, scope: !565)
!565 = distinct !DILexicalBlock(scope: !468, file: !1, line: 205, column: 3)
!566 = !DILocation(line: 205, column: 8, scope: !565)
!567 = !DILocation(line: 205, column: 14, scope: !568)
!568 = !DILexicalBlockFile(scope: !569, file: !1, discriminator: 1)
!569 = distinct !DILexicalBlock(scope: !565, file: !1, line: 205, column: 3)
!570 = !DILocation(line: 205, column: 17, scope: !568)
!571 = !DILocation(line: 205, column: 22, scope: !568)
!572 = !DILocation(line: 205, column: 21, scope: !568)
!573 = !DILocation(line: 205, column: 26, scope: !568)
!574 = !DILocation(line: 205, column: 16, scope: !568)
!575 = !DILocation(line: 205, column: 3, scope: !568)
!576 = !DILocation(line: 206, column: 20, scope: !569)
!577 = !DILocation(line: 206, column: 7, scope: !569)
!578 = !DILocation(line: 206, column: 24, scope: !569)
!579 = !DILocation(line: 205, column: 32, scope: !580)
!580 = !DILexicalBlockFile(scope: !569, file: !1, discriminator: 2)
!581 = !DILocation(line: 205, column: 3, scope: !580)
!582 = distinct !{!582, !583}
!583 = !DILocation(line: 205, column: 3, scope: !468)
!584 = !DILocation(line: 209, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !468, file: !1, line: 209, column: 7)
!586 = !DILocation(line: 209, column: 13, scope: !585)
!587 = !DILocation(line: 209, column: 34, scope: !585)
!588 = !DILocation(line: 209, column: 20, scope: !585)
!589 = !DILocation(line: 209, column: 18, scope: !585)
!590 = !DILocation(line: 209, column: 7, scope: !468)
!591 = !DILocation(line: 211, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !585, file: !1, line: 210, column: 3)
!593 = distinct !{!593, !591}
!594 = !DILocation(line: 211, column: 7, scope: !595)
!595 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 1)
!596 = distinct !DILexicalBlock(scope: !592, file: !1, line: 211, column: 7)
!597 = !DILocation(line: 212, column: 3, scope: !592)
!598 = !DILocation(line: 214, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !468, file: !1, line: 214, column: 7)
!600 = !DILocation(line: 214, column: 12, scope: !599)
!601 = !DILocation(line: 214, column: 16, scope: !599)
!602 = !DILocation(line: 214, column: 19, scope: !603)
!603 = !DILexicalBlockFile(scope: !599, file: !1, discriminator: 1)
!604 = !DILocation(line: 214, column: 26, scope: !603)
!605 = !DILocation(line: 214, column: 24, scope: !603)
!606 = !DILocation(line: 214, column: 7, scope: !603)
!607 = !DILocation(line: 216, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !599, file: !1, line: 215, column: 3)
!609 = distinct !{!609, !607}
!610 = !DILocation(line: 216, column: 7, scope: !611)
!611 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 1)
!612 = distinct !DILexicalBlock(scope: !608, file: !1, line: 216, column: 7)
!613 = !DILocation(line: 217, column: 3, scope: !608)
!614 = !DILocation(line: 220, column: 29, scope: !468)
!615 = !DILocation(line: 220, column: 35, scope: !468)
!616 = !DILocation(line: 220, column: 39, scope: !468)
!617 = !DILocation(line: 220, column: 45, scope: !468)
!618 = !DILocation(line: 220, column: 3, scope: !468)
!619 = !DILocation(line: 222, column: 10, scope: !620)
!620 = distinct !DILexicalBlock(scope: !468, file: !1, line: 222, column: 3)
!621 = !DILocation(line: 222, column: 20, scope: !620)
!622 = !DILocation(line: 222, column: 19, scope: !620)
!623 = !DILocation(line: 222, column: 8, scope: !620)
!624 = !DILocation(line: 222, column: 26, scope: !625)
!625 = !DILexicalBlockFile(scope: !626, file: !1, discriminator: 1)
!626 = distinct !DILexicalBlock(scope: !620, file: !1, line: 222, column: 3)
!627 = !DILocation(line: 222, column: 33, scope: !625)
!628 = !DILocation(line: 222, column: 31, scope: !625)
!629 = !DILocation(line: 222, column: 3, scope: !625)
!630 = !DILocation(line: 224, column: 12, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !1, line: 223, column: 3)
!632 = !DILocation(line: 225, column: 16, scope: !631)
!633 = !DILocation(line: 226, column: 11, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !1, line: 226, column: 11)
!635 = !DILocation(line: 226, column: 17, scope: !634)
!636 = !DILocation(line: 226, column: 21, scope: !634)
!637 = !DILocation(line: 226, column: 11, scope: !631)
!638 = !DILocation(line: 227, column: 20, scope: !634)
!639 = !DILocation(line: 227, column: 11, scope: !634)
!640 = !DILocation(line: 230, column: 11, scope: !641)
!641 = distinct !DILexicalBlock(scope: !631, file: !1, line: 230, column: 11)
!642 = !DILocation(line: 230, column: 14, scope: !641)
!643 = !DILocation(line: 230, column: 11, scope: !631)
!644 = !DILocation(line: 232, column: 16, scope: !645)
!645 = distinct !DILexicalBlock(scope: !641, file: !1, line: 231, column: 7)
!646 = !DILocation(line: 233, column: 15, scope: !647)
!647 = distinct !DILexicalBlock(scope: !645, file: !1, line: 233, column: 15)
!648 = !DILocation(line: 233, column: 21, scope: !647)
!649 = !DILocation(line: 233, column: 15, scope: !645)
!650 = !DILocation(line: 234, column: 22, scope: !647)
!651 = !DILocation(line: 234, column: 20, scope: !647)
!652 = !DILocation(line: 234, column: 15, scope: !647)
!653 = !DILocation(line: 236, column: 34, scope: !645)
!654 = !DILocation(line: 236, column: 40, scope: !645)
!655 = !DILocation(line: 236, column: 39, scope: !645)
!656 = !DILocation(line: 236, column: 30, scope: !645)
!657 = !DILocation(line: 236, column: 44, scope: !645)
!658 = !DILocation(line: 236, column: 43, scope: !645)
!659 = !DILocation(line: 236, column: 24, scope: !645)
!660 = !DILocation(line: 236, column: 11, scope: !645)
!661 = !DILocation(line: 236, column: 28, scope: !645)
!662 = !DILocation(line: 238, column: 11, scope: !645)
!663 = !DILocation(line: 242, column: 39, scope: !631)
!664 = !DILocation(line: 242, column: 46, scope: !631)
!665 = !DILocation(line: 242, column: 53, scope: !631)
!666 = !DILocation(line: 242, column: 50, scope: !631)
!667 = !DILocation(line: 242, column: 61, scope: !631)
!668 = !DILocation(line: 242, column: 16, scope: !631)
!669 = !DILocation(line: 242, column: 14, scope: !631)
!670 = !DILocation(line: 243, column: 11, scope: !671)
!671 = distinct !DILexicalBlock(scope: !631, file: !1, line: 243, column: 11)
!672 = !DILocation(line: 243, column: 18, scope: !671)
!673 = !DILocation(line: 243, column: 11, scope: !631)
!674 = !DILocation(line: 244, column: 18, scope: !671)
!675 = !DILocation(line: 244, column: 11, scope: !671)
!676 = !DILocation(line: 246, column: 11, scope: !677)
!677 = distinct !DILexicalBlock(scope: !631, file: !1, line: 246, column: 11)
!678 = !DILocation(line: 246, column: 20, scope: !677)
!679 = !DILocation(line: 246, column: 11, scope: !631)
!680 = !DILocation(line: 248, column: 18, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !1, line: 247, column: 7)
!682 = !DILocation(line: 248, column: 27, scope: !681)
!683 = !DILocation(line: 248, column: 26, scope: !681)
!684 = !DILocation(line: 248, column: 16, scope: !681)
!685 = !DILocation(line: 249, column: 18, scope: !686)
!686 = distinct !DILexicalBlock(scope: !681, file: !1, line: 249, column: 11)
!687 = !DILocation(line: 249, column: 16, scope: !686)
!688 = !DILocation(line: 249, column: 22, scope: !689)
!689 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 1)
!690 = distinct !DILexicalBlock(scope: !686, file: !1, line: 249, column: 11)
!691 = !DILocation(line: 249, column: 24, scope: !689)
!692 = !DILocation(line: 249, column: 11, scope: !689)
!693 = !DILocation(line: 251, column: 41, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !1, line: 250, column: 11)
!695 = !DILocation(line: 251, column: 35, scope: !694)
!696 = !DILocation(line: 251, column: 53, scope: !694)
!697 = !DILocation(line: 251, column: 52, scope: !694)
!698 = !DILocation(line: 251, column: 56, scope: !694)
!699 = !DILocation(line: 251, column: 55, scope: !694)
!700 = !DILocation(line: 251, column: 45, scope: !694)
!701 = !DILocation(line: 251, column: 44, scope: !694)
!702 = !DILocation(line: 251, column: 28, scope: !694)
!703 = !DILocation(line: 251, column: 15, scope: !694)
!704 = !DILocation(line: 251, column: 32, scope: !694)
!705 = !DILocation(line: 252, column: 29, scope: !694)
!706 = !DILocation(line: 252, column: 23, scope: !694)
!707 = !DILocation(line: 252, column: 39, scope: !694)
!708 = !DILocation(line: 252, column: 33, scope: !694)
!709 = !DILocation(line: 252, column: 32, scope: !694)
!710 = !DILocation(line: 252, column: 20, scope: !694)
!711 = !DILocation(line: 253, column: 11, scope: !694)
!712 = !DILocation(line: 249, column: 49, scope: !713)
!713 = !DILexicalBlockFile(scope: !690, file: !1, discriminator: 2)
!714 = !DILocation(line: 249, column: 11, scope: !713)
!715 = distinct !{!715, !716}
!716 = !DILocation(line: 249, column: 11, scope: !681)
!717 = !DILocation(line: 254, column: 7, scope: !681)
!718 = !DILocation(line: 257, column: 18, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !1, line: 257, column: 11)
!720 = distinct !DILexicalBlock(scope: !677, file: !1, line: 256, column: 7)
!721 = !DILocation(line: 257, column: 16, scope: !719)
!722 = !DILocation(line: 257, column: 22, scope: !723)
!723 = !DILexicalBlockFile(scope: !724, file: !1, discriminator: 1)
!724 = distinct !DILexicalBlock(scope: !719, file: !1, line: 257, column: 11)
!725 = !DILocation(line: 257, column: 24, scope: !723)
!726 = !DILocation(line: 257, column: 11, scope: !723)
!727 = !DILocation(line: 259, column: 41, scope: !728)
!728 = distinct !DILexicalBlock(scope: !724, file: !1, line: 258, column: 11)
!729 = !DILocation(line: 259, column: 35, scope: !728)
!730 = !DILocation(line: 259, column: 54, scope: !728)
!731 = !DILocation(line: 259, column: 53, scope: !728)
!732 = !DILocation(line: 259, column: 57, scope: !728)
!733 = !DILocation(line: 259, column: 64, scope: !728)
!734 = !DILocation(line: 259, column: 63, scope: !728)
!735 = !DILocation(line: 259, column: 45, scope: !728)
!736 = !DILocation(line: 259, column: 44, scope: !728)
!737 = !DILocation(line: 259, column: 28, scope: !728)
!738 = !DILocation(line: 259, column: 15, scope: !728)
!739 = !DILocation(line: 259, column: 32, scope: !728)
!740 = !DILocation(line: 260, column: 29, scope: !728)
!741 = !DILocation(line: 260, column: 23, scope: !728)
!742 = !DILocation(line: 260, column: 39, scope: !728)
!743 = !DILocation(line: 260, column: 33, scope: !728)
!744 = !DILocation(line: 260, column: 32, scope: !728)
!745 = !DILocation(line: 260, column: 20, scope: !728)
!746 = !DILocation(line: 261, column: 11, scope: !728)
!747 = !DILocation(line: 257, column: 49, scope: !748)
!748 = !DILexicalBlockFile(scope: !724, file: !1, discriminator: 2)
!749 = !DILocation(line: 257, column: 11, scope: !748)
!750 = distinct !{!750, !751}
!751 = !DILocation(line: 257, column: 11, scope: !720)
!752 = !DILocation(line: 264, column: 19, scope: !631)
!753 = !DILocation(line: 264, column: 14, scope: !631)
!754 = !DILocation(line: 264, column: 12, scope: !631)
!755 = !DILocation(line: 265, column: 27, scope: !631)
!756 = !DILocation(line: 265, column: 20, scope: !631)
!757 = !DILocation(line: 265, column: 7, scope: !631)
!758 = !DILocation(line: 265, column: 24, scope: !631)
!759 = !DILocation(line: 266, column: 3, scope: !631)
!760 = !DILocation(line: 222, column: 41, scope: !761)
!761 = !DILexicalBlockFile(scope: !626, file: !1, discriminator: 2)
!762 = !DILocation(line: 222, column: 50, scope: !761)
!763 = !DILocation(line: 222, column: 3, scope: !761)
!764 = distinct !{!764, !765}
!765 = !DILocation(line: 222, column: 3, scope: !468)
!766 = !DILocation(line: 268, column: 3, scope: !468)
!767 = !DILocation(line: 269, column: 1, scope: !468)
!768 = distinct !DISubprogram(name: "gsl_sf_mathieu_se_array", scope: !1, file: !1, line: 272, type: !469, isLocal: false, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!769 = !DILocalVariable(name: "nmin", arg: 1, scope: !768, file: !1, line: 272, type: !50)
!770 = !DILocation(line: 272, column: 33, scope: !768)
!771 = !DILocalVariable(name: "nmax", arg: 2, scope: !768, file: !1, line: 272, type: !50)
!772 = !DILocation(line: 272, column: 43, scope: !768)
!773 = !DILocalVariable(name: "qq", arg: 3, scope: !768, file: !1, line: 272, type: !51)
!774 = !DILocation(line: 272, column: 56, scope: !768)
!775 = !DILocalVariable(name: "zz", arg: 4, scope: !768, file: !1, line: 272, type: !51)
!776 = !DILocation(line: 272, column: 67, scope: !768)
!777 = !DILocalVariable(name: "work", arg: 5, scope: !768, file: !1, line: 273, type: !471)
!778 = !DILocation(line: 273, column: 55, scope: !768)
!779 = !DILocalVariable(name: "result_array", arg: 6, scope: !768, file: !1, line: 274, type: !486)
!780 = !DILocation(line: 274, column: 36, scope: !768)
!781 = !DILocalVariable(name: "even_odd", scope: !768, file: !1, line: 276, type: !50)
!782 = !DILocation(line: 276, column: 7, scope: !768)
!783 = !DILocalVariable(name: "order", scope: !768, file: !1, line: 276, type: !50)
!784 = !DILocation(line: 276, column: 17, scope: !768)
!785 = !DILocalVariable(name: "ii", scope: !768, file: !1, line: 276, type: !50)
!786 = !DILocation(line: 276, column: 24, scope: !768)
!787 = !DILocalVariable(name: "jj", scope: !768, file: !1, line: 276, type: !50)
!788 = !DILocation(line: 276, column: 28, scope: !768)
!789 = !DILocalVariable(name: "status", scope: !768, file: !1, line: 276, type: !50)
!790 = !DILocation(line: 276, column: 32, scope: !768)
!791 = !DILocalVariable(name: "coeff", scope: !768, file: !1, line: 277, type: !76)
!792 = !DILocation(line: 277, column: 10, scope: !768)
!793 = !DILocalVariable(name: "bb", scope: !768, file: !1, line: 277, type: !486)
!794 = !DILocation(line: 277, column: 40, scope: !768)
!795 = !DILocation(line: 277, column: 45, scope: !768)
!796 = !DILocation(line: 277, column: 51, scope: !768)
!797 = !DILocalVariable(name: "norm", scope: !768, file: !1, line: 277, type: !51)
!798 = !DILocation(line: 277, column: 55, scope: !768)
!799 = !DILocation(line: 281, column: 10, scope: !800)
!800 = distinct !DILexicalBlock(scope: !768, file: !1, line: 281, column: 3)
!801 = !DILocation(line: 281, column: 8, scope: !800)
!802 = !DILocation(line: 281, column: 14, scope: !803)
!803 = !DILexicalBlockFile(scope: !804, file: !1, discriminator: 1)
!804 = distinct !DILexicalBlock(scope: !800, file: !1, line: 281, column: 3)
!805 = !DILocation(line: 281, column: 17, scope: !803)
!806 = !DILocation(line: 281, column: 22, scope: !803)
!807 = !DILocation(line: 281, column: 21, scope: !803)
!808 = !DILocation(line: 281, column: 26, scope: !803)
!809 = !DILocation(line: 281, column: 16, scope: !803)
!810 = !DILocation(line: 281, column: 3, scope: !803)
!811 = !DILocation(line: 282, column: 20, scope: !804)
!812 = !DILocation(line: 282, column: 7, scope: !804)
!813 = !DILocation(line: 282, column: 24, scope: !804)
!814 = !DILocation(line: 281, column: 32, scope: !815)
!815 = !DILexicalBlockFile(scope: !804, file: !1, discriminator: 2)
!816 = !DILocation(line: 281, column: 3, scope: !815)
!817 = distinct !{!817, !818}
!818 = !DILocation(line: 281, column: 3, scope: !768)
!819 = !DILocation(line: 285, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !768, file: !1, line: 285, column: 7)
!821 = !DILocation(line: 285, column: 13, scope: !820)
!822 = !DILocation(line: 285, column: 34, scope: !820)
!823 = !DILocation(line: 285, column: 20, scope: !820)
!824 = !DILocation(line: 285, column: 18, scope: !820)
!825 = !DILocation(line: 285, column: 7, scope: !768)
!826 = !DILocation(line: 287, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !820, file: !1, line: 286, column: 3)
!828 = distinct !{!828, !826}
!829 = !DILocation(line: 287, column: 7, scope: !830)
!830 = !DILexicalBlockFile(scope: !831, file: !1, discriminator: 1)
!831 = distinct !DILexicalBlock(scope: !827, file: !1, line: 287, column: 7)
!832 = !DILocation(line: 288, column: 3, scope: !827)
!833 = !DILocation(line: 290, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !768, file: !1, line: 290, column: 7)
!835 = !DILocation(line: 290, column: 12, scope: !834)
!836 = !DILocation(line: 290, column: 16, scope: !834)
!837 = !DILocation(line: 290, column: 19, scope: !838)
!838 = !DILexicalBlockFile(scope: !834, file: !1, discriminator: 1)
!839 = !DILocation(line: 290, column: 26, scope: !838)
!840 = !DILocation(line: 290, column: 24, scope: !838)
!841 = !DILocation(line: 290, column: 7, scope: !838)
!842 = !DILocation(line: 292, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !834, file: !1, line: 291, column: 3)
!844 = distinct !{!844, !842}
!845 = !DILocation(line: 292, column: 7, scope: !846)
!846 = !DILexicalBlockFile(scope: !847, file: !1, discriminator: 1)
!847 = distinct !DILexicalBlock(scope: !843, file: !1, line: 292, column: 7)
!848 = !DILocation(line: 293, column: 3, scope: !843)
!849 = !DILocation(line: 296, column: 29, scope: !768)
!850 = !DILocation(line: 296, column: 35, scope: !768)
!851 = !DILocation(line: 296, column: 39, scope: !768)
!852 = !DILocation(line: 296, column: 45, scope: !768)
!853 = !DILocation(line: 296, column: 3, scope: !768)
!854 = !DILocation(line: 298, column: 10, scope: !855)
!855 = distinct !DILexicalBlock(scope: !768, file: !1, line: 298, column: 3)
!856 = !DILocation(line: 298, column: 20, scope: !855)
!857 = !DILocation(line: 298, column: 19, scope: !855)
!858 = !DILocation(line: 298, column: 8, scope: !855)
!859 = !DILocation(line: 298, column: 26, scope: !860)
!860 = !DILexicalBlockFile(scope: !861, file: !1, discriminator: 1)
!861 = distinct !DILexicalBlock(scope: !855, file: !1, line: 298, column: 3)
!862 = !DILocation(line: 298, column: 33, scope: !860)
!863 = !DILocation(line: 298, column: 31, scope: !860)
!864 = !DILocation(line: 298, column: 3, scope: !860)
!865 = !DILocation(line: 300, column: 12, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !1, line: 299, column: 3)
!867 = !DILocation(line: 301, column: 16, scope: !866)
!868 = !DILocation(line: 302, column: 11, scope: !869)
!869 = distinct !DILexicalBlock(scope: !866, file: !1, line: 302, column: 11)
!870 = !DILocation(line: 302, column: 17, scope: !869)
!871 = !DILocation(line: 302, column: 21, scope: !869)
!872 = !DILocation(line: 302, column: 11, scope: !866)
!873 = !DILocation(line: 303, column: 20, scope: !869)
!874 = !DILocation(line: 303, column: 11, scope: !869)
!875 = !DILocation(line: 306, column: 11, scope: !876)
!876 = distinct !DILexicalBlock(scope: !866, file: !1, line: 306, column: 11)
!877 = !DILocation(line: 306, column: 17, scope: !876)
!878 = !DILocation(line: 306, column: 11, scope: !866)
!879 = !DILocation(line: 308, column: 16, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !1, line: 307, column: 7)
!881 = !DILocation(line: 309, column: 24, scope: !880)
!882 = !DILocation(line: 309, column: 11, scope: !880)
!883 = !DILocation(line: 309, column: 28, scope: !880)
!884 = !DILocation(line: 310, column: 11, scope: !880)
!885 = !DILocation(line: 313, column: 11, scope: !886)
!886 = distinct !DILexicalBlock(scope: !866, file: !1, line: 313, column: 11)
!887 = !DILocation(line: 313, column: 14, scope: !886)
!888 = !DILocation(line: 313, column: 11, scope: !866)
!889 = !DILocation(line: 315, column: 16, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !1, line: 314, column: 7)
!891 = !DILocation(line: 316, column: 34, scope: !890)
!892 = !DILocation(line: 316, column: 40, scope: !890)
!893 = !DILocation(line: 316, column: 39, scope: !890)
!894 = !DILocation(line: 316, column: 30, scope: !890)
!895 = !DILocation(line: 316, column: 24, scope: !890)
!896 = !DILocation(line: 316, column: 11, scope: !890)
!897 = !DILocation(line: 316, column: 28, scope: !890)
!898 = !DILocation(line: 318, column: 11, scope: !890)
!899 = !DILocation(line: 322, column: 39, scope: !866)
!900 = !DILocation(line: 322, column: 46, scope: !866)
!901 = !DILocation(line: 322, column: 53, scope: !866)
!902 = !DILocation(line: 322, column: 50, scope: !866)
!903 = !DILocation(line: 322, column: 61, scope: !866)
!904 = !DILocation(line: 322, column: 16, scope: !866)
!905 = !DILocation(line: 322, column: 14, scope: !866)
!906 = !DILocation(line: 323, column: 11, scope: !907)
!907 = distinct !DILexicalBlock(scope: !866, file: !1, line: 323, column: 11)
!908 = !DILocation(line: 323, column: 18, scope: !907)
!909 = !DILocation(line: 323, column: 11, scope: !866)
!910 = !DILocation(line: 325, column: 18, scope: !911)
!911 = distinct !DILexicalBlock(scope: !907, file: !1, line: 324, column: 7)
!912 = !DILocation(line: 325, column: 11, scope: !911)
!913 = !DILocation(line: 328, column: 11, scope: !914)
!914 = distinct !DILexicalBlock(scope: !866, file: !1, line: 328, column: 11)
!915 = !DILocation(line: 328, column: 20, scope: !914)
!916 = !DILocation(line: 328, column: 11, scope: !866)
!917 = !DILocation(line: 330, column: 18, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !1, line: 330, column: 11)
!919 = distinct !DILexicalBlock(scope: !914, file: !1, line: 329, column: 7)
!920 = !DILocation(line: 330, column: 16, scope: !918)
!921 = !DILocation(line: 330, column: 22, scope: !922)
!922 = !DILexicalBlockFile(scope: !923, file: !1, discriminator: 1)
!923 = distinct !DILexicalBlock(scope: !918, file: !1, line: 330, column: 11)
!924 = !DILocation(line: 330, column: 24, scope: !922)
!925 = !DILocation(line: 330, column: 11, scope: !922)
!926 = !DILocation(line: 332, column: 41, scope: !927)
!927 = distinct !DILexicalBlock(scope: !923, file: !1, line: 331, column: 11)
!928 = !DILocation(line: 332, column: 35, scope: !927)
!929 = !DILocation(line: 332, column: 54, scope: !927)
!930 = !DILocation(line: 332, column: 57, scope: !927)
!931 = !DILocation(line: 332, column: 53, scope: !927)
!932 = !DILocation(line: 332, column: 52, scope: !927)
!933 = !DILocation(line: 332, column: 62, scope: !927)
!934 = !DILocation(line: 332, column: 61, scope: !927)
!935 = !DILocation(line: 332, column: 45, scope: !927)
!936 = !DILocation(line: 332, column: 44, scope: !927)
!937 = !DILocation(line: 332, column: 28, scope: !927)
!938 = !DILocation(line: 332, column: 15, scope: !927)
!939 = !DILocation(line: 332, column: 32, scope: !927)
!940 = !DILocation(line: 333, column: 29, scope: !927)
!941 = !DILocation(line: 333, column: 23, scope: !927)
!942 = !DILocation(line: 333, column: 39, scope: !927)
!943 = !DILocation(line: 333, column: 33, scope: !927)
!944 = !DILocation(line: 333, column: 32, scope: !927)
!945 = !DILocation(line: 333, column: 20, scope: !927)
!946 = !DILocation(line: 334, column: 11, scope: !927)
!947 = !DILocation(line: 330, column: 49, scope: !948)
!948 = !DILexicalBlockFile(scope: !923, file: !1, discriminator: 2)
!949 = !DILocation(line: 330, column: 11, scope: !948)
!950 = distinct !{!950, !951}
!951 = !DILocation(line: 330, column: 11, scope: !919)
!952 = !DILocation(line: 335, column: 7, scope: !919)
!953 = !DILocation(line: 338, column: 18, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !1, line: 338, column: 11)
!955 = distinct !DILexicalBlock(scope: !914, file: !1, line: 337, column: 7)
!956 = !DILocation(line: 338, column: 16, scope: !954)
!957 = !DILocation(line: 338, column: 22, scope: !958)
!958 = !DILexicalBlockFile(scope: !959, file: !1, discriminator: 1)
!959 = distinct !DILexicalBlock(scope: !954, file: !1, line: 338, column: 11)
!960 = !DILocation(line: 338, column: 24, scope: !958)
!961 = !DILocation(line: 338, column: 11, scope: !958)
!962 = !DILocation(line: 340, column: 41, scope: !963)
!963 = distinct !DILexicalBlock(scope: !959, file: !1, line: 339, column: 11)
!964 = !DILocation(line: 340, column: 35, scope: !963)
!965 = !DILocation(line: 340, column: 54, scope: !963)
!966 = !DILocation(line: 340, column: 53, scope: !963)
!967 = !DILocation(line: 340, column: 57, scope: !963)
!968 = !DILocation(line: 340, column: 64, scope: !963)
!969 = !DILocation(line: 340, column: 63, scope: !963)
!970 = !DILocation(line: 340, column: 45, scope: !963)
!971 = !DILocation(line: 340, column: 44, scope: !963)
!972 = !DILocation(line: 340, column: 28, scope: !963)
!973 = !DILocation(line: 340, column: 15, scope: !963)
!974 = !DILocation(line: 340, column: 32, scope: !963)
!975 = !DILocation(line: 341, column: 29, scope: !963)
!976 = !DILocation(line: 341, column: 23, scope: !963)
!977 = !DILocation(line: 341, column: 39, scope: !963)
!978 = !DILocation(line: 341, column: 33, scope: !963)
!979 = !DILocation(line: 341, column: 32, scope: !963)
!980 = !DILocation(line: 341, column: 20, scope: !963)
!981 = !DILocation(line: 342, column: 11, scope: !963)
!982 = !DILocation(line: 338, column: 49, scope: !983)
!983 = !DILexicalBlockFile(scope: !959, file: !1, discriminator: 2)
!984 = !DILocation(line: 338, column: 11, scope: !983)
!985 = distinct !{!985, !986}
!986 = !DILocation(line: 338, column: 11, scope: !955)
!987 = !DILocation(line: 345, column: 19, scope: !866)
!988 = !DILocation(line: 345, column: 14, scope: !866)
!989 = !DILocation(line: 345, column: 12, scope: !866)
!990 = !DILocation(line: 346, column: 27, scope: !866)
!991 = !DILocation(line: 346, column: 20, scope: !866)
!992 = !DILocation(line: 346, column: 7, scope: !866)
!993 = !DILocation(line: 346, column: 24, scope: !866)
!994 = !DILocation(line: 347, column: 3, scope: !866)
!995 = !DILocation(line: 298, column: 41, scope: !996)
!996 = !DILexicalBlockFile(scope: !861, file: !1, discriminator: 2)
!997 = !DILocation(line: 298, column: 50, scope: !996)
!998 = !DILocation(line: 298, column: 3, scope: !996)
!999 = distinct !{!999, !1000}
!1000 = !DILocation(line: 298, column: 3, scope: !768)
!1001 = !DILocation(line: 349, column: 3, scope: !768)
!1002 = !DILocation(line: 350, column: 1, scope: !768)
!1003 = distinct !DISubprogram(name: "gsl_sf_mathieu_ce", scope: !1, file: !1, line: 357, type: !1004, isLocal: false, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!51, !50, !51, !51}
!1006 = !DILocalVariable(name: "order", arg: 1, scope: !1003, file: !1, line: 357, type: !50)
!1007 = !DILocation(line: 357, column: 30, scope: !1003)
!1008 = !DILocalVariable(name: "qq", arg: 2, scope: !1003, file: !1, line: 357, type: !51)
!1009 = !DILocation(line: 357, column: 44, scope: !1003)
!1010 = !DILocalVariable(name: "zz", arg: 3, scope: !1003, file: !1, line: 357, type: !51)
!1011 = !DILocation(line: 357, column: 55, scope: !1003)
!1012 = !DILocalVariable(name: "result", scope: !1003, file: !1, line: 359, type: !53)
!1013 = !DILocation(line: 359, column: 2, scope: !1003)
!1014 = !DILocalVariable(name: "status", scope: !1003, file: !1, line: 359, type: !50)
!1015 = !DILocation(line: 359, column: 2, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 359, column: 2)
!1017 = !DILocation(line: 359, column: 2, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1019, file: !1, discriminator: 1)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 359, column: 2)
!1020 = distinct !{!1020, !1021}
!1021 = !DILocation(line: 359, column: 2, scope: !1019)
!1022 = !DILocation(line: 359, column: 2, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1024, file: !1, discriminator: 2)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 359, column: 2)
!1025 = !DILocation(line: 359, column: 2, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1019, file: !1, discriminator: 3)
!1027 = !DILocation(line: 359, column: 2, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1003, file: !1, discriminator: 4)
!1029 = !DILocation(line: 360, column: 1, scope: !1003)
!1030 = distinct !DISubprogram(name: "gsl_sf_mathieu_se", scope: !1, file: !1, line: 362, type: !1004, isLocal: false, isDefinition: true, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !59)
!1031 = !DILocalVariable(name: "order", arg: 1, scope: !1030, file: !1, line: 362, type: !50)
!1032 = !DILocation(line: 362, column: 30, scope: !1030)
!1033 = !DILocalVariable(name: "qq", arg: 2, scope: !1030, file: !1, line: 362, type: !51)
!1034 = !DILocation(line: 362, column: 44, scope: !1030)
!1035 = !DILocalVariable(name: "zz", arg: 3, scope: !1030, file: !1, line: 362, type: !51)
!1036 = !DILocation(line: 362, column: 55, scope: !1030)
!1037 = !DILocalVariable(name: "result", scope: !1030, file: !1, line: 364, type: !53)
!1038 = !DILocation(line: 364, column: 2, scope: !1030)
!1039 = !DILocalVariable(name: "status", scope: !1030, file: !1, line: 364, type: !50)
!1040 = !DILocation(line: 364, column: 2, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 364, column: 2)
!1042 = !DILocation(line: 364, column: 2, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1044, file: !1, discriminator: 1)
!1044 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 364, column: 2)
!1045 = distinct !{!1045, !1046}
!1046 = !DILocation(line: 364, column: 2, scope: !1044)
!1047 = !DILocation(line: 364, column: 2, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !1049, file: !1, discriminator: 2)
!1049 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 364, column: 2)
!1050 = !DILocation(line: 364, column: 2, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1044, file: !1, discriminator: 3)
!1052 = !DILocation(line: 364, column: 2, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1030, file: !1, discriminator: 4)
!1054 = !DILocation(line: 365, column: 1, scope: !1030)
