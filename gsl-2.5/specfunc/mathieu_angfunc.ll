; ModuleID = 'mathieu_angfunc.c'
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
  br i1 %20, label %21, label %22, !dbg !94

; <label>:21:                                     ; preds = %4
  store i32 1, i32* %10, align 4, !dbg !95
  br label %22, !dbg !96

; <label>:22:                                     ; preds = %21, %4
  %23 = load double, double* %7, align 8, !dbg !97
  %24 = fcmp oeq double %23, 0.000000e+00, !dbg !99
  br i1 %24, label %25, label %54, !dbg !100

; <label>:25:                                     ; preds = %22
  store double 1.000000e+00, double* %14, align 8, !dbg !101
  %26 = load i32, i32* %6, align 4, !dbg !103
  %27 = icmp eq i32 %26, 0, !dbg !105
  br i1 %27, label %28, label %30, !dbg !106

; <label>:28:                                     ; preds = %25
  %29 = call double @sqrt(double 2.000000e+00) #5, !dbg !107
  store double %29, double* %14, align 8, !dbg !108
  br label %30, !dbg !109

; <label>:30:                                     ; preds = %28, %25
  %31 = load i32, i32* %6, align 4, !dbg !110
  %32 = sitofp i32 %31 to double, !dbg !110
  %33 = load double, double* %8, align 8, !dbg !111
  %34 = fmul double %32, %33, !dbg !112
  %35 = call double @cos(double %34) #5, !dbg !113
  %36 = load double, double* %14, align 8, !dbg !114
  %37 = fdiv double %35, %36, !dbg !115
  store double %37, double* %15, align 8, !dbg !116
  %38 = load double, double* %15, align 8, !dbg !117
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !118
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !119
  store double %38, double* %40, align 8, !dbg !120
  %41 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !121
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !122
  store double 0x3CC0000000000000, double* %42, align 8, !dbg !123
  %43 = load double, double* %15, align 8, !dbg !124
  %44 = call double @fabs(double %43) #1, !dbg !125
  store double %44, double* %16, align 8, !dbg !126
  %45 = load double, double* %16, align 8, !dbg !127
  %46 = fcmp ogt double %45, 1.000000e+00, !dbg !129
  br i1 %46, label %47, label %53, !dbg !130

; <label>:47:                                     ; preds = %30
  %48 = load double, double* %16, align 8, !dbg !131
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !132
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !133
  %51 = load double, double* %50, align 8, !dbg !134
  %52 = fmul double %51, %48, !dbg !134
  store double %52, double* %50, align 8, !dbg !134
  br label %53, !dbg !132

; <label>:53:                                     ; preds = %47, %30
  store i32 0, i32* %5, align 4, !dbg !135
  br label %176, !dbg !135

; <label>:54:                                     ; preds = %22
  %55 = load i32, i32* %6, align 4, !dbg !136
  %56 = icmp slt i32 %55, 0, !dbg !138
  br i1 %56, label %57, label %60, !dbg !139

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %6, align 4, !dbg !140
  %59 = mul nsw i32 %58, -1, !dbg !140
  store i32 %59, i32* %6, align 4, !dbg !140
  br label %60, !dbg !141

; <label>:60:                                     ; preds = %57, %54
  %61 = load i32, i32* %6, align 4, !dbg !142
  %62 = load double, double* %7, align 8, !dbg !143
  %63 = call i32 @gsl_sf_mathieu_a_e(i32 %61, double %62, %struct.gsl_sf_result_struct* %17), !dbg !144
  store i32 %63, i32* %12, align 4, !dbg !145
  %64 = load i32, i32* %12, align 4, !dbg !146
  %65 = icmp ne i32 %64, 0, !dbg !148
  br i1 %65, label %66, label %68, !dbg !149

; <label>:66:                                     ; preds = %60
  %67 = load i32, i32* %12, align 4, !dbg !150
  store i32 %67, i32* %5, align 4, !dbg !152
  br label %176, !dbg !152

; <label>:68:                                     ; preds = %60
  %69 = load i32, i32* %6, align 4, !dbg !153
  %70 = load double, double* %7, align 8, !dbg !154
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !155
  %72 = load double, double* %71, align 8, !dbg !155
  %73 = getelementptr inbounds [100 x double], [100 x double]* %13, i32 0, i32 0, !dbg !156
  %74 = call i32 @gsl_sf_mathieu_a_coeff(i32 %69, double %70, double %72, double* %73), !dbg !157
  store i32 %74, i32* %12, align 4, !dbg !158
  %75 = load i32, i32* %12, align 4, !dbg !159
  %76 = icmp ne i32 %75, 0, !dbg !161
  br i1 %76, label %77, label %79, !dbg !162

; <label>:77:                                     ; preds = %68
  %78 = load i32, i32* %12, align 4, !dbg !163
  store i32 %78, i32* %5, align 4, !dbg !165
  br label %176, !dbg !165

; <label>:79:                                     ; preds = %68
  %80 = load i32, i32* %10, align 4, !dbg !166
  %81 = icmp eq i32 %80, 0, !dbg !168
  br i1 %81, label %82, label %120, !dbg !169

; <label>:82:                                     ; preds = %79
  store double 0.000000e+00, double* %15, align 8, !dbg !170
  %83 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 0, !dbg !172
  %84 = load double, double* %83, align 16, !dbg !172
  %85 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 0, !dbg !173
  %86 = load double, double* %85, align 16, !dbg !173
  %87 = fmul double %84, %86, !dbg !174
  store double %87, double* %14, align 8, !dbg !175
  store i32 0, i32* %11, align 4, !dbg !176
  br label %88, !dbg !178

; <label>:88:                                     ; preds = %116, %82
  %89 = load i32, i32* %11, align 4, !dbg !179
  %90 = icmp slt i32 %89, 100, !dbg !182
  br i1 %90, label %91, label %119, !dbg !183

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* %11, align 4, !dbg !184
  %93 = sext i32 %92 to i64, !dbg !186
  %94 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %93, !dbg !186
  %95 = load double, double* %94, align 8, !dbg !186
  %96 = load i32, i32* %11, align 4, !dbg !187
  %97 = sitofp i32 %96 to double, !dbg !187
  %98 = fmul double 2.000000e+00, %97, !dbg !188
  %99 = load double, double* %8, align 8, !dbg !189
  %100 = fmul double %98, %99, !dbg !190
  %101 = call double @cos(double %100) #5, !dbg !191
  %102 = fmul double %95, %101, !dbg !192
  %103 = load double, double* %15, align 8, !dbg !193
  %104 = fadd double %103, %102, !dbg !193
  store double %104, double* %15, align 8, !dbg !193
  %105 = load i32, i32* %11, align 4, !dbg !194
  %106 = sext i32 %105 to i64, !dbg !195
  %107 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %106, !dbg !195
  %108 = load double, double* %107, align 8, !dbg !195
  %109 = load i32, i32* %11, align 4, !dbg !196
  %110 = sext i32 %109 to i64, !dbg !197
  %111 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %110, !dbg !197
  %112 = load double, double* %111, align 8, !dbg !197
  %113 = fmul double %108, %112, !dbg !198
  %114 = load double, double* %14, align 8, !dbg !199
  %115 = fadd double %114, %113, !dbg !199
  store double %115, double* %14, align 8, !dbg !199
  br label %116, !dbg !200

; <label>:116:                                    ; preds = %91
  %117 = load i32, i32* %11, align 4, !dbg !201
  %118 = add nsw i32 %117, 1, !dbg !201
  store i32 %118, i32* %11, align 4, !dbg !201
  br label %88, !dbg !203, !llvm.loop !204

; <label>:119:                                    ; preds = %88
  br label %154, !dbg !206

; <label>:120:                                    ; preds = %79
  store double 0.000000e+00, double* %15, align 8, !dbg !207
  store i32 0, i32* %11, align 4, !dbg !209
  br label %121, !dbg !211

; <label>:121:                                    ; preds = %150, %120
  %122 = load i32, i32* %11, align 4, !dbg !212
  %123 = icmp slt i32 %122, 100, !dbg !215
  br i1 %123, label %124, label %153, !dbg !216

; <label>:124:                                    ; preds = %121
  %125 = load i32, i32* %11, align 4, !dbg !217
  %126 = sext i32 %125 to i64, !dbg !219
  %127 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %126, !dbg !219
  %128 = load double, double* %127, align 8, !dbg !219
  %129 = load i32, i32* %11, align 4, !dbg !220
  %130 = sitofp i32 %129 to double, !dbg !220
  %131 = fmul double 2.000000e+00, %130, !dbg !221
  %132 = fadd double %131, 1.000000e+00, !dbg !222
  %133 = load double, double* %8, align 8, !dbg !223
  %134 = fmul double %132, %133, !dbg !224
  %135 = call double @cos(double %134) #5, !dbg !225
  %136 = fmul double %128, %135, !dbg !226
  %137 = load double, double* %15, align 8, !dbg !227
  %138 = fadd double %137, %136, !dbg !227
  store double %138, double* %15, align 8, !dbg !227
  %139 = load i32, i32* %11, align 4, !dbg !228
  %140 = sext i32 %139 to i64, !dbg !229
  %141 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %140, !dbg !229
  %142 = load double, double* %141, align 8, !dbg !229
  %143 = load i32, i32* %11, align 4, !dbg !230
  %144 = sext i32 %143 to i64, !dbg !231
  %145 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %144, !dbg !231
  %146 = load double, double* %145, align 8, !dbg !231
  %147 = fmul double %142, %146, !dbg !232
  %148 = load double, double* %14, align 8, !dbg !233
  %149 = fadd double %148, %147, !dbg !233
  store double %149, double* %14, align 8, !dbg !233
  br label %150, !dbg !234

; <label>:150:                                    ; preds = %124
  %151 = load i32, i32* %11, align 4, !dbg !235
  %152 = add nsw i32 %151, 1, !dbg !235
  store i32 %152, i32* %11, align 4, !dbg !235
  br label %121, !dbg !237, !llvm.loop !238

; <label>:153:                                    ; preds = %121
  br label %154

; <label>:154:                                    ; preds = %153, %119
  %155 = load double, double* %14, align 8, !dbg !240
  %156 = call double @sqrt(double %155) #5, !dbg !241
  store double %156, double* %14, align 8, !dbg !242
  %157 = load double, double* %14, align 8, !dbg !243
  %158 = load double, double* %15, align 8, !dbg !244
  %159 = fdiv double %158, %157, !dbg !244
  store double %159, double* %15, align 8, !dbg !244
  %160 = load double, double* %15, align 8, !dbg !245
  %161 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !246
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %161, i32 0, i32 0, !dbg !247
  store double %160, double* %162, align 8, !dbg !248
  %163 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !249
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %163, i32 0, i32 1, !dbg !250
  store double 0x3CC0000000000000, double* %164, align 8, !dbg !251
  %165 = load double, double* %15, align 8, !dbg !252
  %166 = call double @fabs(double %165) #1, !dbg !253
  store double %166, double* %16, align 8, !dbg !254
  %167 = load double, double* %16, align 8, !dbg !255
  %168 = fcmp ogt double %167, 1.000000e+00, !dbg !257
  br i1 %168, label %169, label %175, !dbg !258

; <label>:169:                                    ; preds = %154
  %170 = load double, double* %16, align 8, !dbg !259
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !260
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 1, !dbg !261
  %173 = load double, double* %172, align 8, !dbg !262
  %174 = fmul double %173, %170, !dbg !262
  store double %174, double* %172, align 8, !dbg !262
  br label %175, !dbg !260

; <label>:175:                                    ; preds = %169, %154
  store i32 0, i32* %5, align 4, !dbg !263
  br label %176, !dbg !263

; <label>:176:                                    ; preds = %175, %77, %66, %53
  %177 = load i32, i32* %5, align 4, !dbg !264
  ret i32 %177, !dbg !264
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
  br i1 %20, label %21, label %22, !dbg !296

; <label>:21:                                     ; preds = %4
  store i32 1, i32* %10, align 4, !dbg !297
  br label %22, !dbg !298

; <label>:22:                                     ; preds = %21, %4
  %23 = load i32, i32* %6, align 4, !dbg !299
  %24 = icmp eq i32 %23, 0, !dbg !301
  br i1 %24, label %25, label %30, !dbg !302

; <label>:25:                                     ; preds = %22
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !303
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !305
  store double 0.000000e+00, double* %27, align 8, !dbg !306
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !307
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !308
  store double 0.000000e+00, double* %29, align 8, !dbg !309
  store i32 0, i32* %5, align 4, !dbg !310
  br label %173, !dbg !310

; <label>:30:                                     ; preds = %22
  %31 = load double, double* %7, align 8, !dbg !311
  %32 = fcmp oeq double %31, 0.000000e+00, !dbg !313
  br i1 %32, label %33, label %55, !dbg !314

; <label>:33:                                     ; preds = %30
  store double 1.000000e+00, double* %14, align 8, !dbg !315
  %34 = load i32, i32* %6, align 4, !dbg !317
  %35 = sitofp i32 %34 to double, !dbg !317
  %36 = load double, double* %8, align 8, !dbg !318
  %37 = fmul double %35, %36, !dbg !319
  %38 = call double @sin(double %37) #5, !dbg !320
  store double %38, double* %15, align 8, !dbg !321
  %39 = load double, double* %15, align 8, !dbg !322
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !323
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !324
  store double %39, double* %41, align 8, !dbg !325
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !326
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !327
  store double 0x3CC0000000000000, double* %43, align 8, !dbg !328
  %44 = load double, double* %15, align 8, !dbg !329
  %45 = call double @fabs(double %44) #1, !dbg !330
  store double %45, double* %16, align 8, !dbg !331
  %46 = load double, double* %16, align 8, !dbg !332
  %47 = fcmp ogt double %46, 1.000000e+00, !dbg !334
  br i1 %47, label %48, label %54, !dbg !335

; <label>:48:                                     ; preds = %33
  %49 = load double, double* %16, align 8, !dbg !336
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !337
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 1, !dbg !338
  %52 = load double, double* %51, align 8, !dbg !339
  %53 = fmul double %52, %49, !dbg !339
  store double %53, double* %51, align 8, !dbg !339
  br label %54, !dbg !337

; <label>:54:                                     ; preds = %48, %33
  store i32 0, i32* %5, align 4, !dbg !340
  br label %173, !dbg !340

; <label>:55:                                     ; preds = %30
  %56 = load i32, i32* %6, align 4, !dbg !341
  %57 = icmp slt i32 %56, 0, !dbg !343
  br i1 %57, label %58, label %61, !dbg !344

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %6, align 4, !dbg !345
  %60 = mul nsw i32 %59, -1, !dbg !345
  store i32 %60, i32* %6, align 4, !dbg !345
  br label %61, !dbg !346

; <label>:61:                                     ; preds = %58, %55
  %62 = load i32, i32* %6, align 4, !dbg !347
  %63 = load double, double* %7, align 8, !dbg !348
  %64 = call i32 @gsl_sf_mathieu_b_e(i32 %62, double %63, %struct.gsl_sf_result_struct* %17), !dbg !349
  store i32 %64, i32* %12, align 4, !dbg !350
  %65 = load i32, i32* %12, align 4, !dbg !351
  %66 = icmp ne i32 %65, 0, !dbg !353
  br i1 %66, label %67, label %69, !dbg !354

; <label>:67:                                     ; preds = %61
  %68 = load i32, i32* %12, align 4, !dbg !355
  store i32 %68, i32* %5, align 4, !dbg !357
  br label %173, !dbg !357

; <label>:69:                                     ; preds = %61
  %70 = load i32, i32* %6, align 4, !dbg !358
  %71 = load double, double* %7, align 8, !dbg !359
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %17, i32 0, i32 0, !dbg !360
  %73 = load double, double* %72, align 8, !dbg !360
  %74 = getelementptr inbounds [100 x double], [100 x double]* %13, i32 0, i32 0, !dbg !361
  %75 = call i32 @gsl_sf_mathieu_b_coeff(i32 %70, double %71, double %73, double* %74), !dbg !362
  store i32 %75, i32* %12, align 4, !dbg !363
  %76 = load i32, i32* %12, align 4, !dbg !364
  %77 = icmp ne i32 %76, 0, !dbg !366
  br i1 %77, label %78, label %80, !dbg !367

; <label>:78:                                     ; preds = %69
  %79 = load i32, i32* %12, align 4, !dbg !368
  store i32 %79, i32* %5, align 4, !dbg !370
  br label %173, !dbg !370

; <label>:80:                                     ; preds = %69
  %81 = load i32, i32* %10, align 4, !dbg !371
  %82 = icmp eq i32 %81, 0, !dbg !373
  br i1 %82, label %83, label %117, !dbg !374

; <label>:83:                                     ; preds = %80
  store double 0.000000e+00, double* %15, align 8, !dbg !375
  store i32 0, i32* %11, align 4, !dbg !377
  br label %84, !dbg !379

; <label>:84:                                     ; preds = %113, %83
  %85 = load i32, i32* %11, align 4, !dbg !380
  %86 = icmp slt i32 %85, 100, !dbg !383
  br i1 %86, label %87, label %116, !dbg !384

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %11, align 4, !dbg !385
  %89 = sext i32 %88 to i64, !dbg !387
  %90 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %89, !dbg !387
  %91 = load double, double* %90, align 8, !dbg !387
  %92 = load i32, i32* %11, align 4, !dbg !388
  %93 = sext i32 %92 to i64, !dbg !389
  %94 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %93, !dbg !389
  %95 = load double, double* %94, align 8, !dbg !389
  %96 = fmul double %91, %95, !dbg !390
  %97 = load double, double* %14, align 8, !dbg !391
  %98 = fadd double %97, %96, !dbg !391
  store double %98, double* %14, align 8, !dbg !391
  %99 = load i32, i32* %11, align 4, !dbg !392
  %100 = sext i32 %99 to i64, !dbg !393
  %101 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %100, !dbg !393
  %102 = load double, double* %101, align 8, !dbg !393
  %103 = load i32, i32* %11, align 4, !dbg !394
  %104 = add nsw i32 %103, 1, !dbg !395
  %105 = sitofp i32 %104 to double, !dbg !396
  %106 = fmul double 2.000000e+00, %105, !dbg !397
  %107 = load double, double* %8, align 8, !dbg !398
  %108 = fmul double %106, %107, !dbg !399
  %109 = call double @sin(double %108) #5, !dbg !400
  %110 = fmul double %102, %109, !dbg !401
  %111 = load double, double* %15, align 8, !dbg !402
  %112 = fadd double %111, %110, !dbg !402
  store double %112, double* %15, align 8, !dbg !402
  br label %113, !dbg !403

; <label>:113:                                    ; preds = %87
  %114 = load i32, i32* %11, align 4, !dbg !404
  %115 = add nsw i32 %114, 1, !dbg !404
  store i32 %115, i32* %11, align 4, !dbg !404
  br label %84, !dbg !406, !llvm.loop !407

; <label>:116:                                    ; preds = %84
  br label %151, !dbg !409

; <label>:117:                                    ; preds = %80
  store double 0.000000e+00, double* %15, align 8, !dbg !410
  store i32 0, i32* %11, align 4, !dbg !412
  br label %118, !dbg !414

; <label>:118:                                    ; preds = %147, %117
  %119 = load i32, i32* %11, align 4, !dbg !415
  %120 = icmp slt i32 %119, 100, !dbg !418
  br i1 %120, label %121, label %150, !dbg !419

; <label>:121:                                    ; preds = %118
  %122 = load i32, i32* %11, align 4, !dbg !420
  %123 = sext i32 %122 to i64, !dbg !422
  %124 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %123, !dbg !422
  %125 = load double, double* %124, align 8, !dbg !422
  %126 = load i32, i32* %11, align 4, !dbg !423
  %127 = sext i32 %126 to i64, !dbg !424
  %128 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %127, !dbg !424
  %129 = load double, double* %128, align 8, !dbg !424
  %130 = fmul double %125, %129, !dbg !425
  %131 = load double, double* %14, align 8, !dbg !426
  %132 = fadd double %131, %130, !dbg !426
  store double %132, double* %14, align 8, !dbg !426
  %133 = load i32, i32* %11, align 4, !dbg !427
  %134 = sext i32 %133 to i64, !dbg !428
  %135 = getelementptr inbounds [100 x double], [100 x double]* %13, i64 0, i64 %134, !dbg !428
  %136 = load double, double* %135, align 8, !dbg !428
  %137 = load i32, i32* %11, align 4, !dbg !429
  %138 = sitofp i32 %137 to double, !dbg !429
  %139 = fmul double 2.000000e+00, %138, !dbg !430
  %140 = fadd double %139, 1.000000e+00, !dbg !431
  %141 = load double, double* %8, align 8, !dbg !432
  %142 = fmul double %140, %141, !dbg !433
  %143 = call double @sin(double %142) #5, !dbg !434
  %144 = fmul double %136, %143, !dbg !435
  %145 = load double, double* %15, align 8, !dbg !436
  %146 = fadd double %145, %144, !dbg !436
  store double %146, double* %15, align 8, !dbg !436
  br label %147, !dbg !437

; <label>:147:                                    ; preds = %121
  %148 = load i32, i32* %11, align 4, !dbg !438
  %149 = add nsw i32 %148, 1, !dbg !438
  store i32 %149, i32* %11, align 4, !dbg !438
  br label %118, !dbg !440, !llvm.loop !441

; <label>:150:                                    ; preds = %118
  br label %151

; <label>:151:                                    ; preds = %150, %116
  %152 = load double, double* %14, align 8, !dbg !443
  %153 = call double @sqrt(double %152) #5, !dbg !444
  store double %153, double* %14, align 8, !dbg !445
  %154 = load double, double* %14, align 8, !dbg !446
  %155 = load double, double* %15, align 8, !dbg !447
  %156 = fdiv double %155, %154, !dbg !447
  store double %156, double* %15, align 8, !dbg !447
  %157 = load double, double* %15, align 8, !dbg !448
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !449
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %158, i32 0, i32 0, !dbg !450
  store double %157, double* %159, align 8, !dbg !451
  %160 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !452
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %160, i32 0, i32 1, !dbg !453
  store double 0x3CC0000000000000, double* %161, align 8, !dbg !454
  %162 = load double, double* %15, align 8, !dbg !455
  %163 = call double @fabs(double %162) #1, !dbg !456
  store double %163, double* %16, align 8, !dbg !457
  %164 = load double, double* %16, align 8, !dbg !458
  %165 = fcmp ogt double %164, 1.000000e+00, !dbg !460
  br i1 %165, label %166, label %172, !dbg !461

; <label>:166:                                    ; preds = %151
  %167 = load double, double* %16, align 8, !dbg !462
  %168 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !463
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %168, i32 0, i32 1, !dbg !464
  %170 = load double, double* %169, align 8, !dbg !465
  %171 = fmul double %170, %167, !dbg !465
  store double %171, double* %169, align 8, !dbg !465
  br label %172, !dbg !463

; <label>:172:                                    ; preds = %166, %151
  store i32 0, i32* %5, align 4, !dbg !466
  br label %173, !dbg !466

; <label>:173:                                    ; preds = %172, %78, %67, %54, %25
  %174 = load i32, i32* %5, align 4, !dbg !467
  ret i32 %174, !dbg !467
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

; <label>:25:                                     ; preds = %37, %6
  %26 = load i32, i32* %16, align 4, !dbg !567
  %27 = load i32, i32* %9, align 4, !dbg !570
  %28 = load i32, i32* %8, align 4, !dbg !571
  %29 = sub nsw i32 %27, %28, !dbg !572
  %30 = add nsw i32 %29, 1, !dbg !573
  %31 = icmp slt i32 %26, %30, !dbg !574
  br i1 %31, label %32, label %40, !dbg !575

; <label>:32:                                     ; preds = %25
  %33 = load i32, i32* %16, align 4, !dbg !576
  %34 = sext i32 %33 to i64, !dbg !577
  %35 = load double*, double** %13, align 8, !dbg !577
  %36 = getelementptr inbounds double, double* %35, i64 %34, !dbg !577
  store double 0.000000e+00, double* %36, align 8, !dbg !578
  br label %37, !dbg !577

; <label>:37:                                     ; preds = %32
  %38 = load i32, i32* %16, align 4, !dbg !579
  %39 = add nsw i32 %38, 1, !dbg !579
  store i32 %39, i32* %16, align 4, !dbg !579
  br label %25, !dbg !581, !llvm.loop !582

; <label>:40:                                     ; preds = %25
  %41 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %12, align 8, !dbg !584
  %42 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %41, i32 0, i32 0, !dbg !586
  %43 = load i64, i64* %42, align 8, !dbg !586
  %44 = load i32, i32* %9, align 4, !dbg !587
  %45 = zext i32 %44 to i64, !dbg !588
  %46 = icmp ult i64 %43, %45, !dbg !589
  br i1 %46, label %47, label %50, !dbg !590

; <label>:47:                                     ; preds = %40
  br label %48, !dbg !591, !llvm.loop !593

; <label>:48:                                     ; preds = %47
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 211, i32 4), !dbg !594
  store i32 4, i32* %7, align 4, !dbg !594
  br label %209, !dbg !594
                                                  ; No predecessors!
  br label %50, !dbg !597

; <label>:50:                                     ; preds = %49, %40
  %51 = load i32, i32* %8, align 4, !dbg !598
  %52 = icmp slt i32 %51, 0, !dbg !600
  br i1 %52, label %57, label %53, !dbg !601

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %9, align 4, !dbg !602
  %55 = load i32, i32* %8, align 4, !dbg !604
  %56 = icmp slt i32 %54, %55, !dbg !605
  br i1 %56, label %57, label %60, !dbg !606

; <label>:57:                                     ; preds = %53, %50
  br label %58, !dbg !607, !llvm.loop !609

; <label>:58:                                     ; preds = %57
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 216, i32 1), !dbg !610
  store i32 1, i32* %7, align 4, !dbg !610
  br label %209, !dbg !610
                                                  ; No predecessors!
  br label %60, !dbg !613

; <label>:60:                                     ; preds = %59, %53
  %61 = load i32, i32* %9, align 4, !dbg !614
  %62 = load double, double* %10, align 8, !dbg !615
  %63 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %12, align 8, !dbg !616
  %64 = load double*, double** %20, align 8, !dbg !617
  %65 = call i32 @gsl_sf_mathieu_a_array(i32 0, i32 %61, double %62, %struct.gsl_sf_mathieu_workspace* %63, double* %64), !dbg !618
  store i32 0, i32* %16, align 4, !dbg !619
  %66 = load i32, i32* %8, align 4, !dbg !621
  store i32 %66, i32* %15, align 4, !dbg !622
  br label %67, !dbg !623

; <label>:67:                                     ; preds = %203, %60
  %68 = load i32, i32* %15, align 4, !dbg !624
  %69 = load i32, i32* %9, align 4, !dbg !627
  %70 = icmp sle i32 %68, %69, !dbg !628
  br i1 %70, label %71, label %208, !dbg !629

; <label>:71:                                     ; preds = %67
  store double 0.000000e+00, double* %21, align 8, !dbg !630
  store i32 0, i32* %14, align 4, !dbg !632
  %72 = load i32, i32* %15, align 4, !dbg !633
  %73 = srem i32 %72, 2, !dbg !635
  %74 = icmp ne i32 %73, 0, !dbg !636
  br i1 %74, label %75, label %76, !dbg !637

; <label>:75:                                     ; preds = %71
  store i32 1, i32* %14, align 4, !dbg !638
  br label %76, !dbg !639

; <label>:76:                                     ; preds = %75, %71
  %77 = load double, double* %10, align 8, !dbg !640
  %78 = fcmp oeq double %77, 0.000000e+00, !dbg !642
  br i1 %78, label %79, label %96, !dbg !643

; <label>:79:                                     ; preds = %76
  store double 1.000000e+00, double* %21, align 8, !dbg !644
  %80 = load i32, i32* %15, align 4, !dbg !646
  %81 = icmp eq i32 %80, 0, !dbg !648
  br i1 %81, label %82, label %84, !dbg !649

; <label>:82:                                     ; preds = %79
  %83 = call double @sqrt(double 2.000000e+00) #5, !dbg !650
  store double %83, double* %21, align 8, !dbg !651
  br label %84, !dbg !652

; <label>:84:                                     ; preds = %82, %79
  %85 = load i32, i32* %15, align 4, !dbg !653
  %86 = sitofp i32 %85 to double, !dbg !653
  %87 = load double, double* %11, align 8, !dbg !654
  %88 = fmul double %86, %87, !dbg !655
  %89 = call double @cos(double %88) #5, !dbg !656
  %90 = load double, double* %21, align 8, !dbg !657
  %91 = fdiv double %89, %90, !dbg !658
  %92 = load i32, i32* %16, align 4, !dbg !659
  %93 = sext i32 %92 to i64, !dbg !660
  %94 = load double*, double** %13, align 8, !dbg !660
  %95 = getelementptr inbounds double, double* %94, i64 %93, !dbg !660
  store double %91, double* %95, align 8, !dbg !661
  br label %203, !dbg !662

; <label>:96:                                     ; preds = %76
  %97 = load i32, i32* %15, align 4, !dbg !663
  %98 = load double, double* %10, align 8, !dbg !664
  %99 = load i32, i32* %15, align 4, !dbg !665
  %100 = sext i32 %99 to i64, !dbg !666
  %101 = load double*, double** %20, align 8, !dbg !666
  %102 = getelementptr inbounds double, double* %101, i64 %100, !dbg !666
  %103 = load double, double* %102, align 8, !dbg !666
  %104 = getelementptr inbounds [100 x double], [100 x double]* %19, i32 0, i32 0, !dbg !667
  %105 = call i32 @gsl_sf_mathieu_a_coeff(i32 %97, double %98, double %103, double* %104), !dbg !668
  store i32 %105, i32* %18, align 4, !dbg !669
  %106 = load i32, i32* %18, align 4, !dbg !670
  %107 = icmp ne i32 %106, 0, !dbg !672
  br i1 %107, label %108, label %110, !dbg !673

; <label>:108:                                    ; preds = %96
  %109 = load i32, i32* %18, align 4, !dbg !674
  store i32 %109, i32* %7, align 4, !dbg !675
  br label %209, !dbg !675

; <label>:110:                                    ; preds = %96
  %111 = load i32, i32* %14, align 4, !dbg !676
  %112 = icmp eq i32 %111, 0, !dbg !678
  br i1 %112, label %113, label %155, !dbg !679

; <label>:113:                                    ; preds = %110
  %114 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 0, !dbg !680
  %115 = load double, double* %114, align 16, !dbg !680
  %116 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 0, !dbg !682
  %117 = load double, double* %116, align 16, !dbg !682
  %118 = fmul double %115, %117, !dbg !683
  store double %118, double* %21, align 8, !dbg !684
  store i32 0, i32* %17, align 4, !dbg !685
  br label %119, !dbg !687

; <label>:119:                                    ; preds = %151, %113
  %120 = load i32, i32* %17, align 4, !dbg !688
  %121 = icmp slt i32 %120, 100, !dbg !691
  br i1 %121, label %122, label %154, !dbg !692

; <label>:122:                                    ; preds = %119
  %123 = load i32, i32* %17, align 4, !dbg !693
  %124 = sext i32 %123 to i64, !dbg !695
  %125 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %124, !dbg !695
  %126 = load double, double* %125, align 8, !dbg !695
  %127 = load i32, i32* %17, align 4, !dbg !696
  %128 = sitofp i32 %127 to double, !dbg !696
  %129 = fmul double 2.000000e+00, %128, !dbg !697
  %130 = load double, double* %11, align 8, !dbg !698
  %131 = fmul double %129, %130, !dbg !699
  %132 = call double @cos(double %131) #5, !dbg !700
  %133 = fmul double %126, %132, !dbg !701
  %134 = load i32, i32* %16, align 4, !dbg !702
  %135 = sext i32 %134 to i64, !dbg !703
  %136 = load double*, double** %13, align 8, !dbg !703
  %137 = getelementptr inbounds double, double* %136, i64 %135, !dbg !703
  %138 = load double, double* %137, align 8, !dbg !704
  %139 = fadd double %138, %133, !dbg !704
  store double %139, double* %137, align 8, !dbg !704
  %140 = load i32, i32* %17, align 4, !dbg !705
  %141 = sext i32 %140 to i64, !dbg !706
  %142 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %141, !dbg !706
  %143 = load double, double* %142, align 8, !dbg !706
  %144 = load i32, i32* %17, align 4, !dbg !707
  %145 = sext i32 %144 to i64, !dbg !708
  %146 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %145, !dbg !708
  %147 = load double, double* %146, align 8, !dbg !708
  %148 = fmul double %143, %147, !dbg !709
  %149 = load double, double* %21, align 8, !dbg !710
  %150 = fadd double %149, %148, !dbg !710
  store double %150, double* %21, align 8, !dbg !710
  br label %151, !dbg !711

; <label>:151:                                    ; preds = %122
  %152 = load i32, i32* %17, align 4, !dbg !712
  %153 = add nsw i32 %152, 1, !dbg !712
  store i32 %153, i32* %17, align 4, !dbg !712
  br label %119, !dbg !714, !llvm.loop !715

; <label>:154:                                    ; preds = %119
  br label %193, !dbg !717

; <label>:155:                                    ; preds = %110
  store i32 0, i32* %17, align 4, !dbg !718
  br label %156, !dbg !721

; <label>:156:                                    ; preds = %189, %155
  %157 = load i32, i32* %17, align 4, !dbg !722
  %158 = icmp slt i32 %157, 100, !dbg !725
  br i1 %158, label %159, label %192, !dbg !726

; <label>:159:                                    ; preds = %156
  %160 = load i32, i32* %17, align 4, !dbg !727
  %161 = sext i32 %160 to i64, !dbg !729
  %162 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %161, !dbg !729
  %163 = load double, double* %162, align 8, !dbg !729
  %164 = load i32, i32* %17, align 4, !dbg !730
  %165 = sitofp i32 %164 to double, !dbg !730
  %166 = fmul double 2.000000e+00, %165, !dbg !731
  %167 = fadd double %166, 1.000000e+00, !dbg !732
  %168 = load double, double* %11, align 8, !dbg !733
  %169 = fmul double %167, %168, !dbg !734
  %170 = call double @cos(double %169) #5, !dbg !735
  %171 = fmul double %163, %170, !dbg !736
  %172 = load i32, i32* %16, align 4, !dbg !737
  %173 = sext i32 %172 to i64, !dbg !738
  %174 = load double*, double** %13, align 8, !dbg !738
  %175 = getelementptr inbounds double, double* %174, i64 %173, !dbg !738
  %176 = load double, double* %175, align 8, !dbg !739
  %177 = fadd double %176, %171, !dbg !739
  store double %177, double* %175, align 8, !dbg !739
  %178 = load i32, i32* %17, align 4, !dbg !740
  %179 = sext i32 %178 to i64, !dbg !741
  %180 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %179, !dbg !741
  %181 = load double, double* %180, align 8, !dbg !741
  %182 = load i32, i32* %17, align 4, !dbg !742
  %183 = sext i32 %182 to i64, !dbg !743
  %184 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %183, !dbg !743
  %185 = load double, double* %184, align 8, !dbg !743
  %186 = fmul double %181, %185, !dbg !744
  %187 = load double, double* %21, align 8, !dbg !745
  %188 = fadd double %187, %186, !dbg !745
  store double %188, double* %21, align 8, !dbg !745
  br label %189, !dbg !746

; <label>:189:                                    ; preds = %159
  %190 = load i32, i32* %17, align 4, !dbg !747
  %191 = add nsw i32 %190, 1, !dbg !747
  store i32 %191, i32* %17, align 4, !dbg !747
  br label %156, !dbg !749, !llvm.loop !750

; <label>:192:                                    ; preds = %156
  br label %193

; <label>:193:                                    ; preds = %192, %154
  %194 = load double, double* %21, align 8, !dbg !752
  %195 = call double @sqrt(double %194) #5, !dbg !753
  store double %195, double* %21, align 8, !dbg !754
  %196 = load double, double* %21, align 8, !dbg !755
  %197 = load i32, i32* %16, align 4, !dbg !756
  %198 = sext i32 %197 to i64, !dbg !757
  %199 = load double*, double** %13, align 8, !dbg !757
  %200 = getelementptr inbounds double, double* %199, i64 %198, !dbg !757
  %201 = load double, double* %200, align 8, !dbg !758
  %202 = fdiv double %201, %196, !dbg !758
  store double %202, double* %200, align 8, !dbg !758
  br label %203, !dbg !759

; <label>:203:                                    ; preds = %193, %84
  %204 = load i32, i32* %16, align 4, !dbg !760
  %205 = add nsw i32 %204, 1, !dbg !760
  store i32 %205, i32* %16, align 4, !dbg !760
  %206 = load i32, i32* %15, align 4, !dbg !762
  %207 = add nsw i32 %206, 1, !dbg !762
  store i32 %207, i32* %15, align 4, !dbg !762
  br label %67, !dbg !763, !llvm.loop !764

; <label>:208:                                    ; preds = %67
  store i32 0, i32* %7, align 4, !dbg !766
  br label %209, !dbg !766

; <label>:209:                                    ; preds = %208, %108, %58, %48
  %210 = load i32, i32* %7, align 4, !dbg !767
  ret i32 %210, !dbg !767
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

; <label>:25:                                     ; preds = %37, %6
  %26 = load i32, i32* %16, align 4, !dbg !802
  %27 = load i32, i32* %9, align 4, !dbg !805
  %28 = load i32, i32* %8, align 4, !dbg !806
  %29 = sub nsw i32 %27, %28, !dbg !807
  %30 = add nsw i32 %29, 1, !dbg !808
  %31 = icmp slt i32 %26, %30, !dbg !809
  br i1 %31, label %32, label %40, !dbg !810

; <label>:32:                                     ; preds = %25
  %33 = load i32, i32* %16, align 4, !dbg !811
  %34 = sext i32 %33 to i64, !dbg !812
  %35 = load double*, double** %13, align 8, !dbg !812
  %36 = getelementptr inbounds double, double* %35, i64 %34, !dbg !812
  store double 0.000000e+00, double* %36, align 8, !dbg !813
  br label %37, !dbg !812

; <label>:37:                                     ; preds = %32
  %38 = load i32, i32* %16, align 4, !dbg !814
  %39 = add nsw i32 %38, 1, !dbg !814
  store i32 %39, i32* %16, align 4, !dbg !814
  br label %25, !dbg !816, !llvm.loop !817

; <label>:40:                                     ; preds = %25
  %41 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %12, align 8, !dbg !819
  %42 = getelementptr inbounds %struct.gsl_sf_mathieu_workspace, %struct.gsl_sf_mathieu_workspace* %41, i32 0, i32 0, !dbg !821
  %43 = load i64, i64* %42, align 8, !dbg !821
  %44 = load i32, i32* %9, align 4, !dbg !822
  %45 = zext i32 %44 to i64, !dbg !823
  %46 = icmp ult i64 %43, %45, !dbg !824
  br i1 %46, label %47, label %50, !dbg !825

; <label>:47:                                     ; preds = %40
  br label %48, !dbg !826, !llvm.loop !828

; <label>:48:                                     ; preds = %47
  call void @gsl_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 287, i32 4), !dbg !829
  store i32 4, i32* %7, align 4, !dbg !829
  br label %206, !dbg !829
                                                  ; No predecessors!
  br label %50, !dbg !832

; <label>:50:                                     ; preds = %49, %40
  %51 = load i32, i32* %8, align 4, !dbg !833
  %52 = icmp slt i32 %51, 0, !dbg !835
  br i1 %52, label %57, label %53, !dbg !836

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %9, align 4, !dbg !837
  %55 = load i32, i32* %8, align 4, !dbg !839
  %56 = icmp slt i32 %54, %55, !dbg !840
  br i1 %56, label %57, label %60, !dbg !841

; <label>:57:                                     ; preds = %53, %50
  br label %58, !dbg !842, !llvm.loop !844

; <label>:58:                                     ; preds = %57
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 292, i32 1), !dbg !845
  store i32 1, i32* %7, align 4, !dbg !845
  br label %206, !dbg !845
                                                  ; No predecessors!
  br label %60, !dbg !848

; <label>:60:                                     ; preds = %59, %53
  %61 = load i32, i32* %9, align 4, !dbg !849
  %62 = load double, double* %10, align 8, !dbg !850
  %63 = load %struct.gsl_sf_mathieu_workspace*, %struct.gsl_sf_mathieu_workspace** %12, align 8, !dbg !851
  %64 = load double*, double** %20, align 8, !dbg !852
  %65 = call i32 @gsl_sf_mathieu_b_array(i32 0, i32 %61, double %62, %struct.gsl_sf_mathieu_workspace* %63, double* %64), !dbg !853
  store i32 0, i32* %16, align 4, !dbg !854
  %66 = load i32, i32* %8, align 4, !dbg !856
  store i32 %66, i32* %15, align 4, !dbg !857
  br label %67, !dbg !858

; <label>:67:                                     ; preds = %200, %60
  %68 = load i32, i32* %15, align 4, !dbg !859
  %69 = load i32, i32* %9, align 4, !dbg !862
  %70 = icmp sle i32 %68, %69, !dbg !863
  br i1 %70, label %71, label %205, !dbg !864

; <label>:71:                                     ; preds = %67
  store double 0.000000e+00, double* %21, align 8, !dbg !865
  store i32 0, i32* %14, align 4, !dbg !867
  %72 = load i32, i32* %15, align 4, !dbg !868
  %73 = srem i32 %72, 2, !dbg !870
  %74 = icmp ne i32 %73, 0, !dbg !871
  br i1 %74, label %75, label %76, !dbg !872

; <label>:75:                                     ; preds = %71
  store i32 1, i32* %14, align 4, !dbg !873
  br label %76, !dbg !874

; <label>:76:                                     ; preds = %75, %71
  %77 = load i32, i32* %15, align 4, !dbg !875
  %78 = icmp eq i32 %77, 0, !dbg !877
  br i1 %78, label %79, label %84, !dbg !878

; <label>:79:                                     ; preds = %76
  store double 1.000000e+00, double* %21, align 8, !dbg !879
  %80 = load i32, i32* %16, align 4, !dbg !881
  %81 = sext i32 %80 to i64, !dbg !882
  %82 = load double*, double** %13, align 8, !dbg !882
  %83 = getelementptr inbounds double, double* %82, i64 %81, !dbg !882
  store double 0.000000e+00, double* %83, align 8, !dbg !883
  br label %200, !dbg !884

; <label>:84:                                     ; preds = %76
  %85 = load double, double* %10, align 8, !dbg !885
  %86 = fcmp oeq double %85, 0.000000e+00, !dbg !887
  br i1 %86, label %87, label %97, !dbg !888

; <label>:87:                                     ; preds = %84
  store double 1.000000e+00, double* %21, align 8, !dbg !889
  %88 = load i32, i32* %15, align 4, !dbg !891
  %89 = sitofp i32 %88 to double, !dbg !891
  %90 = load double, double* %11, align 8, !dbg !892
  %91 = fmul double %89, %90, !dbg !893
  %92 = call double @sin(double %91) #5, !dbg !894
  %93 = load i32, i32* %16, align 4, !dbg !895
  %94 = sext i32 %93 to i64, !dbg !896
  %95 = load double*, double** %13, align 8, !dbg !896
  %96 = getelementptr inbounds double, double* %95, i64 %94, !dbg !896
  store double %92, double* %96, align 8, !dbg !897
  br label %200, !dbg !898

; <label>:97:                                     ; preds = %84
  %98 = load i32, i32* %15, align 4, !dbg !899
  %99 = load double, double* %10, align 8, !dbg !900
  %100 = load i32, i32* %15, align 4, !dbg !901
  %101 = sext i32 %100 to i64, !dbg !902
  %102 = load double*, double** %20, align 8, !dbg !902
  %103 = getelementptr inbounds double, double* %102, i64 %101, !dbg !902
  %104 = load double, double* %103, align 8, !dbg !902
  %105 = getelementptr inbounds [100 x double], [100 x double]* %19, i32 0, i32 0, !dbg !903
  %106 = call i32 @gsl_sf_mathieu_b_coeff(i32 %98, double %99, double %104, double* %105), !dbg !904
  store i32 %106, i32* %18, align 4, !dbg !905
  %107 = load i32, i32* %18, align 4, !dbg !906
  %108 = icmp ne i32 %107, 0, !dbg !908
  br i1 %108, label %109, label %111, !dbg !909

; <label>:109:                                    ; preds = %97
  %110 = load i32, i32* %18, align 4, !dbg !910
  store i32 %110, i32* %7, align 4, !dbg !912
  br label %206, !dbg !912

; <label>:111:                                    ; preds = %97
  %112 = load i32, i32* %14, align 4, !dbg !913
  %113 = icmp eq i32 %112, 0, !dbg !915
  br i1 %113, label %114, label %152, !dbg !916

; <label>:114:                                    ; preds = %111
  store i32 0, i32* %17, align 4, !dbg !917
  br label %115, !dbg !920

; <label>:115:                                    ; preds = %148, %114
  %116 = load i32, i32* %17, align 4, !dbg !921
  %117 = icmp slt i32 %116, 100, !dbg !924
  br i1 %117, label %118, label %151, !dbg !925

; <label>:118:                                    ; preds = %115
  %119 = load i32, i32* %17, align 4, !dbg !926
  %120 = sext i32 %119 to i64, !dbg !928
  %121 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %120, !dbg !928
  %122 = load double, double* %121, align 8, !dbg !928
  %123 = load i32, i32* %17, align 4, !dbg !929
  %124 = add nsw i32 %123, 1, !dbg !930
  %125 = sitofp i32 %124 to double, !dbg !931
  %126 = fmul double 2.000000e+00, %125, !dbg !932
  %127 = load double, double* %11, align 8, !dbg !933
  %128 = fmul double %126, %127, !dbg !934
  %129 = call double @sin(double %128) #5, !dbg !935
  %130 = fmul double %122, %129, !dbg !936
  %131 = load i32, i32* %16, align 4, !dbg !937
  %132 = sext i32 %131 to i64, !dbg !938
  %133 = load double*, double** %13, align 8, !dbg !938
  %134 = getelementptr inbounds double, double* %133, i64 %132, !dbg !938
  %135 = load double, double* %134, align 8, !dbg !939
  %136 = fadd double %135, %130, !dbg !939
  store double %136, double* %134, align 8, !dbg !939
  %137 = load i32, i32* %17, align 4, !dbg !940
  %138 = sext i32 %137 to i64, !dbg !941
  %139 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %138, !dbg !941
  %140 = load double, double* %139, align 8, !dbg !941
  %141 = load i32, i32* %17, align 4, !dbg !942
  %142 = sext i32 %141 to i64, !dbg !943
  %143 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %142, !dbg !943
  %144 = load double, double* %143, align 8, !dbg !943
  %145 = fmul double %140, %144, !dbg !944
  %146 = load double, double* %21, align 8, !dbg !945
  %147 = fadd double %146, %145, !dbg !945
  store double %147, double* %21, align 8, !dbg !945
  br label %148, !dbg !946

; <label>:148:                                    ; preds = %118
  %149 = load i32, i32* %17, align 4, !dbg !947
  %150 = add nsw i32 %149, 1, !dbg !947
  store i32 %150, i32* %17, align 4, !dbg !947
  br label %115, !dbg !949, !llvm.loop !950

; <label>:151:                                    ; preds = %115
  br label %190, !dbg !952

; <label>:152:                                    ; preds = %111
  store i32 0, i32* %17, align 4, !dbg !953
  br label %153, !dbg !956

; <label>:153:                                    ; preds = %186, %152
  %154 = load i32, i32* %17, align 4, !dbg !957
  %155 = icmp slt i32 %154, 100, !dbg !960
  br i1 %155, label %156, label %189, !dbg !961

; <label>:156:                                    ; preds = %153
  %157 = load i32, i32* %17, align 4, !dbg !962
  %158 = sext i32 %157 to i64, !dbg !964
  %159 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %158, !dbg !964
  %160 = load double, double* %159, align 8, !dbg !964
  %161 = load i32, i32* %17, align 4, !dbg !965
  %162 = sitofp i32 %161 to double, !dbg !965
  %163 = fmul double 2.000000e+00, %162, !dbg !966
  %164 = fadd double %163, 1.000000e+00, !dbg !967
  %165 = load double, double* %11, align 8, !dbg !968
  %166 = fmul double %164, %165, !dbg !969
  %167 = call double @sin(double %166) #5, !dbg !970
  %168 = fmul double %160, %167, !dbg !971
  %169 = load i32, i32* %16, align 4, !dbg !972
  %170 = sext i32 %169 to i64, !dbg !973
  %171 = load double*, double** %13, align 8, !dbg !973
  %172 = getelementptr inbounds double, double* %171, i64 %170, !dbg !973
  %173 = load double, double* %172, align 8, !dbg !974
  %174 = fadd double %173, %168, !dbg !974
  store double %174, double* %172, align 8, !dbg !974
  %175 = load i32, i32* %17, align 4, !dbg !975
  %176 = sext i32 %175 to i64, !dbg !976
  %177 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %176, !dbg !976
  %178 = load double, double* %177, align 8, !dbg !976
  %179 = load i32, i32* %17, align 4, !dbg !977
  %180 = sext i32 %179 to i64, !dbg !978
  %181 = getelementptr inbounds [100 x double], [100 x double]* %19, i64 0, i64 %180, !dbg !978
  %182 = load double, double* %181, align 8, !dbg !978
  %183 = fmul double %178, %182, !dbg !979
  %184 = load double, double* %21, align 8, !dbg !980
  %185 = fadd double %184, %183, !dbg !980
  store double %185, double* %21, align 8, !dbg !980
  br label %186, !dbg !981

; <label>:186:                                    ; preds = %156
  %187 = load i32, i32* %17, align 4, !dbg !982
  %188 = add nsw i32 %187, 1, !dbg !982
  store i32 %188, i32* %17, align 4, !dbg !982
  br label %153, !dbg !984, !llvm.loop !985

; <label>:189:                                    ; preds = %153
  br label %190

; <label>:190:                                    ; preds = %189, %151
  %191 = load double, double* %21, align 8, !dbg !987
  %192 = call double @sqrt(double %191) #5, !dbg !988
  store double %192, double* %21, align 8, !dbg !989
  %193 = load double, double* %21, align 8, !dbg !990
  %194 = load i32, i32* %16, align 4, !dbg !991
  %195 = sext i32 %194 to i64, !dbg !992
  %196 = load double*, double** %13, align 8, !dbg !992
  %197 = getelementptr inbounds double, double* %196, i64 %195, !dbg !992
  %198 = load double, double* %197, align 8, !dbg !993
  %199 = fdiv double %198, %193, !dbg !993
  store double %199, double* %197, align 8, !dbg !993
  br label %200, !dbg !994

; <label>:200:                                    ; preds = %190, %87, %79
  %201 = load i32, i32* %16, align 4, !dbg !995
  %202 = add nsw i32 %201, 1, !dbg !995
  store i32 %202, i32* %16, align 4, !dbg !995
  %203 = load i32, i32* %15, align 4, !dbg !997
  %204 = add nsw i32 %203, 1, !dbg !997
  store i32 %204, i32* %15, align 4, !dbg !997
  br label %67, !dbg !998, !llvm.loop !999

; <label>:205:                                    ; preds = %67
  store i32 0, i32* %7, align 4, !dbg !1001
  br label %206, !dbg !1001

; <label>:206:                                    ; preds = %205, %109, %58, %48
  %207 = load i32, i32* %7, align 4, !dbg !1002
  ret i32 %207, !dbg !1002
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
  br i1 %15, label %16, label %22, !dbg !1013

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !1017, !llvm.loop !1020

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !1022
  call void @gsl_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 359, i32 %18), !dbg !1022
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1022
  %20 = load double, double* %19, align 8, !dbg !1022
  store double %20, double* %4, align 8, !dbg !1022
  br label %25, !dbg !1022
                                                  ; No predecessors!
  br label %22, !dbg !1025

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1027
  %24 = load double, double* %23, align 8, !dbg !1027
  store double %24, double* %4, align 8, !dbg !1027
  br label %25, !dbg !1027

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !1029
  ret double %26, !dbg !1029
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
  br i1 %15, label %16, label %22, !dbg !1038

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !1042, !llvm.loop !1045

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !1047
  call void @gsl_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 364, i32 %18), !dbg !1047
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1047
  %20 = load double, double* %19, align 8, !dbg !1047
  store double %20, double* %4, align 8, !dbg !1047
  br label %25, !dbg !1047
                                                  ; No predecessors!
  br label %22, !dbg !1050

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1052
  %24 = load double, double* %23, align 8, !dbg !1052
  store double %24, double* %4, align 8, !dbg !1052
  br label %25, !dbg !1052

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !1054
  ret double %26, !dbg !1054
}

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
