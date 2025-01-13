; ModuleID = 'hyperg_U.c'
source_filename = "hyperg_U.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_e10_struct = type { double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"hyperg_U.c\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"gsl_sf_hyperg_U_int_e(a, b, x, &result)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"gsl_sf_hyperg_U_e(a, b, x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"limit case integer b <= 0 unimplemented\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"limit case integer b >= 2 unimplemented\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_U_int_e10_e(i32, i32, double, %struct.gsl_sf_result_e10_struct*) #0 !dbg !48 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_e10_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_e10_struct, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !62, metadata !63), !dbg !64
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !65, metadata !63), !dbg !66
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !67, metadata !63), !dbg !68
  store %struct.gsl_sf_result_e10_struct* %3, %struct.gsl_sf_result_e10_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct** %9, metadata !69, metadata !63), !dbg !70
  %18 = load double, double* %8, align 8, !dbg !71
  %19 = fcmp oeq double %18, 0.000000e+00, !dbg !73
  br i1 %19, label %20, label %34, !dbg !74

; <label>:20:                                     ; preds = %4
  %21 = load i32, i32* %7, align 4, !dbg !75
  %22 = icmp sge i32 %21, 1, !dbg !77
  br i1 %22, label %23, label %34, !dbg !78

; <label>:23:                                     ; preds = %20
  br label %24, !dbg !79, !llvm.loop !81

; <label>:24:                                     ; preds = %23
  %25 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !82
  %26 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %25, i32 0, i32 0, !dbg !82
  store double 0x7FF8000000000000, double* %26, align 8, !dbg !82
  %27 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !82
  %28 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %27, i32 0, i32 1, !dbg !82
  store double 0x7FF8000000000000, double* %28, align 8, !dbg !82
  %29 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !82
  %30 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %29, i32 0, i32 2, !dbg !82
  store i32 0, i32* %30, align 8, !dbg !82
  br label %31, !dbg !82, !llvm.loop !85

; <label>:31:                                     ; preds = %24
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1656, i32 1), !dbg !87
  store i32 1, i32* %5, align 4, !dbg !87
  br label %120, !dbg !87
                                                  ; No predecessors!
  br label %33, !dbg !90

; <label>:33:                                     ; preds = %32
  br label %120, !dbg !92

; <label>:34:                                     ; preds = %20, %4
  %35 = load double, double* %8, align 8, !dbg !93
  %36 = fcmp oeq double %35, 0.000000e+00, !dbg !95
  br i1 %36, label %37, label %42, !dbg !96

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %6, align 4, !dbg !97
  %39 = load i32, i32* %7, align 4, !dbg !99
  %40 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !100
  %41 = call i32 @hyperg_U_int_origin(i32 %38, i32 %39, %struct.gsl_sf_result_e10_struct* %40), !dbg !101
  store i32 %41, i32* %5, align 4, !dbg !102
  br label %120, !dbg !102

; <label>:42:                                     ; preds = %34
  %43 = load double, double* %8, align 8, !dbg !103
  %44 = fcmp olt double %43, 0.000000e+00, !dbg !105
  br i1 %44, label %45, label %51, !dbg !106

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %6, align 4, !dbg !107
  %47 = load i32, i32* %7, align 4, !dbg !109
  %48 = load double, double* %8, align 8, !dbg !110
  %49 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !111
  %50 = call i32 @hyperg_U_int_negx(i32 %46, i32 %47, double %48, %struct.gsl_sf_result_e10_struct* %49), !dbg !112
  store i32 %50, i32* %5, align 4, !dbg !113
  br label %120, !dbg !113

; <label>:51:                                     ; preds = %42
  %52 = load i32, i32* %7, align 4, !dbg !114
  %53 = icmp sge i32 %52, 1, !dbg !117
  br i1 %53, label %54, label %60, !dbg !118

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %6, align 4, !dbg !119
  %56 = load i32, i32* %7, align 4, !dbg !121
  %57 = load double, double* %8, align 8, !dbg !122
  %58 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !123
  %59 = call i32 @hyperg_U_int_bge1(i32 %55, i32 %56, double %57, %struct.gsl_sf_result_e10_struct* %58), !dbg !124
  store i32 %59, i32* %5, align 4, !dbg !125
  br label %120, !dbg !125

; <label>:60:                                     ; preds = %51
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct* %10, metadata !126, metadata !63), !dbg !128
  call void @llvm.dbg.declare(metadata double* %11, metadata !129, metadata !63), !dbg !130
  %61 = load double, double* %8, align 8, !dbg !131
  %62 = call double @log(double %61) #6, !dbg !132
  store double %62, double* %11, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %12, metadata !133, metadata !63), !dbg !134
  %63 = load i32, i32* %6, align 4, !dbg !135
  %64 = add nsw i32 1, %63, !dbg !136
  %65 = load i32, i32* %7, align 4, !dbg !137
  %66 = sub nsw i32 %64, %65, !dbg !138
  store i32 %66, i32* %12, align 4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %13, metadata !139, metadata !63), !dbg !140
  %67 = load i32, i32* %7, align 4, !dbg !141
  %68 = sub nsw i32 2, %67, !dbg !142
  store i32 %68, i32* %13, align 4, !dbg !140
  call void @llvm.dbg.declare(metadata i32* %14, metadata !143, metadata !63), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %15, metadata !145, metadata !63), !dbg !146
  %69 = load i32, i32* %12, align 4, !dbg !147
  %70 = load i32, i32* %13, align 4, !dbg !148
  %71 = load double, double* %8, align 8, !dbg !149
  %72 = call i32 @hyperg_U_int_bge1(i32 %69, i32 %70, double %71, %struct.gsl_sf_result_e10_struct* %10), !dbg !150
  store i32 %72, i32* %15, align 4, !dbg !146
  call void @llvm.dbg.declare(metadata double* %16, metadata !151, metadata !63), !dbg !152
  %73 = load i32, i32* %7, align 4, !dbg !153
  %74 = sitofp i32 %73 to double, !dbg !153
  %75 = fsub double 1.000000e+00, %74, !dbg !154
  %76 = load double, double* %11, align 8, !dbg !155
  %77 = fmul double %75, %76, !dbg !156
  store double %77, double* %16, align 8, !dbg !152
  call void @llvm.dbg.declare(metadata double* %17, metadata !157, metadata !63), !dbg !158
  %78 = load i32, i32* %7, align 4, !dbg !159
  %79 = sitofp i32 %78 to double, !dbg !159
  %80 = call double @fabs(double %79) #1, !dbg !160
  %81 = fadd double %80, 1.000000e+00, !dbg !161
  %82 = fmul double 0x3CC0000000000000, %81, !dbg !162
  %83 = load double, double* %11, align 8, !dbg !163
  %84 = call double @fabs(double %83) #1, !dbg !164
  %85 = fmul double %82, %84, !dbg !166
  store double %85, double* %17, align 8, !dbg !158
  %86 = load i32, i32* %7, align 4, !dbg !167
  %87 = sitofp i32 %86 to double, !dbg !167
  %88 = fsub double 1.000000e+00, %87, !dbg !168
  %89 = call double @fabs(double %88) #1, !dbg !169
  %90 = fmul double 0x3CC0000000000000, %89, !dbg !170
  %91 = load double, double* %17, align 8, !dbg !171
  %92 = fadd double %91, %90, !dbg !171
  store double %92, double* %17, align 8, !dbg !171
  %93 = load double, double* %16, align 8, !dbg !172
  %94 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %10, i32 0, i32 2, !dbg !173
  %95 = load i32, i32* %94, align 8, !dbg !173
  %96 = sitofp i32 %95 to double, !dbg !174
  %97 = fmul double %96, 0x40026BB1BBB55516, !dbg !175
  %98 = fadd double %93, %97, !dbg !176
  %99 = load double, double* %17, align 8, !dbg !177
  %100 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %10, i32 0, i32 0, !dbg !178
  %101 = load double, double* %100, align 8, !dbg !178
  %102 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %10, i32 0, i32 1, !dbg !179
  %103 = load double, double* %102, align 8, !dbg !179
  %104 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !180
  %105 = call i32 @gsl_sf_exp_mult_err_e10_e(double %98, double %99, double %101, double %103, %struct.gsl_sf_result_e10_struct* %104), !dbg !181
  store i32 %105, i32* %14, align 4, !dbg !182
  %106 = load i32, i32* %14, align 4, !dbg !183
  %107 = icmp ne i32 %106, 0, !dbg !183
  br i1 %107, label %108, label %110, !dbg !183

; <label>:108:                                    ; preds = %60
  %109 = load i32, i32* %14, align 4, !dbg !184
  br label %118, !dbg !184

; <label>:110:                                    ; preds = %60
  %111 = load i32, i32* %15, align 4, !dbg !185
  %112 = icmp ne i32 %111, 0, !dbg !185
  br i1 %112, label %113, label %115, !dbg !185

; <label>:113:                                    ; preds = %110
  %114 = load i32, i32* %15, align 4, !dbg !187
  br label %116, !dbg !187

; <label>:115:                                    ; preds = %110
  br label %116, !dbg !189

; <label>:116:                                    ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 0, %115 ], !dbg !191
  br label %118, !dbg !191

; <label>:118:                                    ; preds = %116, %108
  %119 = phi i32 [ %109, %108 ], [ %117, %116 ], !dbg !193
  store i32 %119, i32* %5, align 4, !dbg !195
  br label %120, !dbg !195

; <label>:120:                                    ; preds = %31, %37, %45, %54, %118, %33
  %121 = load i32, i32* %5, align 4, !dbg !196
  ret i32 %121, !dbg !196
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_int_origin(i32, i32, %struct.gsl_sf_result_e10_struct*) #0 !dbg !197 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsl_sf_result_e10_struct*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !200, metadata !63), !dbg !201
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !202, metadata !63), !dbg !203
  store %struct.gsl_sf_result_e10_struct* %2, %struct.gsl_sf_result_e10_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct** %6, metadata !204, metadata !63), !dbg !205
  %7 = load i32, i32* %4, align 4, !dbg !206
  %8 = sitofp i32 %7 to double, !dbg !206
  %9 = load i32, i32* %5, align 4, !dbg !207
  %10 = sitofp i32 %9 to double, !dbg !207
  %11 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %6, align 8, !dbg !208
  %12 = call i32 @hyperg_U_origin(double %8, double %10, %struct.gsl_sf_result_e10_struct* %11), !dbg !209
  ret i32 %12, !dbg !210
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_int_negx(i32, i32, double, %struct.gsl_sf_result_e10_struct*) #0 !dbg !211 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_e10_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_e10_struct, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !212, metadata !63), !dbg !213
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !214, metadata !63), !dbg !215
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !216, metadata !63), !dbg !217
  store %struct.gsl_sf_result_e10_struct* %3, %struct.gsl_sf_result_e10_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct** %9, metadata !218, metadata !63), !dbg !219
  %15 = load i32, i32* %6, align 4, !dbg !220
  %16 = load i32, i32* %7, align 4, !dbg !222
  %17 = icmp slt i32 %15, %16, !dbg !223
  br i1 %17, label %18, label %53, !dbg !224

; <label>:18:                                     ; preds = %4
  %19 = load i32, i32* %7, align 4, !dbg !225
  %20 = icmp sle i32 %19, 0, !dbg !227
  br i1 %20, label %21, label %53, !dbg !228

; <label>:21:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct* %10, metadata !229, metadata !63), !dbg !231
  call void @llvm.dbg.declare(metadata double* %11, metadata !232, metadata !63), !dbg !233
  %22 = load double, double* %8, align 8, !dbg !234
  %23 = load i32, i32* %7, align 4, !dbg !235
  %24 = sub nsw i32 1, %23, !dbg !236
  %25 = sitofp i32 %24 to double, !dbg !237
  %26 = call double @pow(double %22, double %25) #6, !dbg !238
  store double %26, double* %11, align 8, !dbg !233
  call void @llvm.dbg.declare(metadata i32* %12, metadata !239, metadata !63), !dbg !240
  %27 = load i32, i32* %6, align 4, !dbg !241
  %28 = add nsw i32 1, %27, !dbg !242
  %29 = load i32, i32* %7, align 4, !dbg !243
  %30 = sub nsw i32 %28, %29, !dbg !244
  %31 = sitofp i32 %30 to double, !dbg !245
  %32 = load i32, i32* %7, align 4, !dbg !246
  %33 = sub nsw i32 2, %32, !dbg !247
  %34 = sitofp i32 %33 to double, !dbg !248
  %35 = load double, double* %8, align 8, !dbg !249
  %36 = call i32 @hyperg_U_negx(double %31, double %34, double %35, %struct.gsl_sf_result_e10_struct* %10), !dbg !250
  store i32 %36, i32* %12, align 4, !dbg !240
  call void @llvm.dbg.declare(metadata double* %13, metadata !251, metadata !63), !dbg !252
  %37 = load double, double* %11, align 8, !dbg !253
  %38 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %10, i32 0, i32 0, !dbg !254
  %39 = load double, double* %38, align 8, !dbg !254
  %40 = fmul double %37, %39, !dbg !255
  store double %40, double* %13, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata double* %14, metadata !256, metadata !63), !dbg !257
  %41 = load double, double* %11, align 8, !dbg !258
  %42 = call double @fabs(double %41) #1, !dbg !259
  %43 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %10, i32 0, i32 1, !dbg !260
  %44 = load double, double* %43, align 8, !dbg !260
  %45 = fmul double %42, %44, !dbg !261
  store double %45, double* %14, align 8, !dbg !257
  %46 = load double, double* %13, align 8, !dbg !262
  %47 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !263
  %48 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %47, i32 0, i32 0, !dbg !264
  store double %46, double* %48, align 8, !dbg !265
  %49 = load double, double* %14, align 8, !dbg !266
  %50 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !267
  %51 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %50, i32 0, i32 1, !dbg !268
  store double %49, double* %51, align 8, !dbg !269
  %52 = load i32, i32* %12, align 4, !dbg !270
  store i32 %52, i32* %5, align 4, !dbg !271
  br label %61, !dbg !271

; <label>:53:                                     ; preds = %18, %4
  %54 = load i32, i32* %6, align 4, !dbg !272
  %55 = sitofp i32 %54 to double, !dbg !272
  %56 = load i32, i32* %7, align 4, !dbg !274
  %57 = sitofp i32 %56 to double, !dbg !274
  %58 = load double, double* %8, align 8, !dbg !275
  %59 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !276
  %60 = call i32 @hyperg_U_negx(double %55, double %57, double %58, %struct.gsl_sf_result_e10_struct* %59), !dbg !277
  store i32 %60, i32* %5, align 4, !dbg !278
  br label %61, !dbg !278

; <label>:61:                                     ; preds = %53, %21
  %62 = load i32, i32* %5, align 4, !dbg !279
  ret i32 %62, !dbg !279
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_int_bge1(i32, i32, double, %struct.gsl_sf_result_e10_struct*) #0 !dbg !280 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_e10_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  %30 = alloca %struct.gsl_sf_result_struct, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca i32, align 4
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca double, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca double, align 8
  %51 = alloca i32, align 4
  %52 = alloca double, align 8
  %53 = alloca double, align 8
  %54 = alloca double, align 8
  %55 = alloca double, align 8
  %56 = alloca double, align 8
  %57 = alloca i32, align 4
  %58 = alloca double, align 8
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca double, align 8
  %64 = alloca double, align 8
  %65 = alloca double, align 8
  %66 = alloca double, align 8
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca %struct.gsl_sf_result_struct, align 8
  %70 = alloca double, align 8
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca double, align 8
  %74 = alloca double, align 8
  %75 = alloca double, align 8
  %76 = alloca i32, align 4
  %77 = alloca double, align 8
  %78 = alloca %struct.gsl_sf_result_struct, align 8
  %79 = alloca %struct.gsl_sf_result_struct, align 8
  %80 = alloca %struct.gsl_sf_result_struct, align 8
  %81 = alloca %struct.gsl_sf_result_struct, align 8
  %82 = alloca %struct.gsl_sf_result_struct, align 8
  %83 = alloca double, align 8
  %84 = alloca double, align 8
  %85 = alloca double, align 8
  %86 = alloca i32, align 4
  %87 = alloca double, align 8
  %88 = alloca double, align 8
  %89 = alloca double, align 8
  %90 = alloca double, align 8
  %91 = alloca double, align 8
  %92 = alloca double, align 8
  %93 = alloca double, align 8
  %94 = alloca double, align 8
  %95 = alloca double, align 8
  %96 = alloca double, align 8
  %97 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !281, metadata !63), !dbg !282
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !283, metadata !63), !dbg !284
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !285, metadata !63), !dbg !286
  store %struct.gsl_sf_result_e10_struct* %3, %struct.gsl_sf_result_e10_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct** %9, metadata !287, metadata !63), !dbg !288
  %98 = load i32, i32* %6, align 4, !dbg !289
  %99 = icmp eq i32 %98, 0, !dbg !291
  br i1 %99, label %100, label %107, !dbg !292

; <label>:100:                                    ; preds = %4
  %101 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !293
  %102 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %101, i32 0, i32 0, !dbg !295
  store double 1.000000e+00, double* %102, align 8, !dbg !296
  %103 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !297
  %104 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %103, i32 0, i32 1, !dbg !298
  store double 0.000000e+00, double* %104, align 8, !dbg !299
  %105 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !300
  %106 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %105, i32 0, i32 2, !dbg !301
  store i32 0, i32* %106, align 8, !dbg !302
  store i32 0, i32* %5, align 4, !dbg !303
  br label %1086, !dbg !303

; <label>:107:                                    ; preds = %4
  %108 = load i32, i32* %6, align 4, !dbg !304
  %109 = icmp eq i32 %108, -1, !dbg !306
  br i1 %109, label %110, label %138, !dbg !307

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %7, align 4, !dbg !308
  %112 = sub nsw i32 0, %111, !dbg !310
  %113 = sitofp i32 %112 to double, !dbg !310
  %114 = load double, double* %8, align 8, !dbg !311
  %115 = fadd double %113, %114, !dbg !312
  %116 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !313
  %117 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %116, i32 0, i32 0, !dbg !314
  store double %115, double* %117, align 8, !dbg !315
  %118 = load i32, i32* %7, align 4, !dbg !316
  %119 = sitofp i32 %118 to double, !dbg !316
  %120 = call double @fabs(double %119) #1, !dbg !317
  %121 = load double, double* %8, align 8, !dbg !318
  %122 = call double @fabs(double %121) #1, !dbg !319
  %123 = fadd double %120, %122, !dbg !321
  %124 = fmul double 0x3CC0000000000000, %123, !dbg !322
  %125 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !323
  %126 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %125, i32 0, i32 1, !dbg !324
  store double %124, double* %126, align 8, !dbg !325
  %127 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !326
  %128 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %127, i32 0, i32 0, !dbg !327
  %129 = load double, double* %128, align 8, !dbg !327
  %130 = call double @fabs(double %129) #1, !dbg !328
  %131 = fmul double 0x3CC0000000000000, %130, !dbg !329
  %132 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !330
  %133 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %132, i32 0, i32 1, !dbg !331
  %134 = load double, double* %133, align 8, !dbg !332
  %135 = fadd double %134, %131, !dbg !332
  store double %135, double* %133, align 8, !dbg !332
  %136 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !333
  %137 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %136, i32 0, i32 2, !dbg !334
  store i32 0, i32* %137, align 8, !dbg !335
  store i32 0, i32* %5, align 4, !dbg !336
  br label %1086, !dbg !336

; <label>:138:                                    ; preds = %107
  %139 = load i32, i32* %7, align 4, !dbg !337
  %140 = load i32, i32* %6, align 4, !dbg !339
  %141 = add nsw i32 %140, 1, !dbg !340
  %142 = icmp eq i32 %139, %141, !dbg !341
  br i1 %142, label %143, label %152, !dbg !342

; <label>:143:                                    ; preds = %138
  %144 = load i32, i32* %6, align 4, !dbg !343
  %145 = sub nsw i32 0, %144, !dbg !345
  %146 = sitofp i32 %145 to double, !dbg !345
  %147 = load double, double* %8, align 8, !dbg !346
  %148 = call double @log(double %147) #6, !dbg !347
  %149 = fmul double %146, %148, !dbg !348
  %150 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !349
  %151 = call i32 @gsl_sf_exp_e10_e(double %149, %struct.gsl_sf_result_e10_struct* %150), !dbg !350
  store i32 %151, i32* %5, align 4, !dbg !352
  br label %1086, !dbg !352

; <label>:152:                                    ; preds = %138
  %153 = load i32, i32* %6, align 4, !dbg !353
  %154 = sitofp i32 %153 to double, !dbg !353
  %155 = call double @fabs(double %154) #1, !dbg !353
  %156 = call double @GSL_MAX_DBL(double %155, double 1.000000e+00), !dbg !355
  %157 = load i32, i32* %6, align 4, !dbg !353
  %158 = sitofp i32 %157 to double, !dbg !353
  %159 = fadd double 1.000000e+00, %158, !dbg !353
  %160 = load i32, i32* %7, align 4, !dbg !353
  %161 = sitofp i32 %160 to double, !dbg !353
  %162 = fsub double %159, %161, !dbg !353
  %163 = call double @fabs(double %162) #1, !dbg !357
  %164 = call double @GSL_MAX_DBL(double %163, double 1.000000e+00), !dbg !359
  %165 = fmul double %156, %164, !dbg !353
  %166 = load double, double* %8, align 8, !dbg !353
  %167 = call double @fabs(double %166) #1, !dbg !361
  %168 = fmul double 9.900000e-01, %167, !dbg !353
  %169 = fcmp olt double %165, %168, !dbg !353
  br i1 %169, label %170, label %208, !dbg !363

; <label>:170:                                    ; preds = %152
  call void @llvm.dbg.declare(metadata double* %10, metadata !364, metadata !63), !dbg !366
  %171 = load i32, i32* %6, align 4, !dbg !367
  %172 = sub nsw i32 0, %171, !dbg !368
  %173 = sitofp i32 %172 to double, !dbg !368
  %174 = load double, double* %8, align 8, !dbg !369
  %175 = call double @log(double %174) #6, !dbg !370
  %176 = fmul double %173, %175, !dbg !371
  store double %176, double* %10, align 8, !dbg !366
  call void @llvm.dbg.declare(metadata double* %11, metadata !372, metadata !63), !dbg !373
  %177 = load double, double* %10, align 8, !dbg !374
  %178 = call double @fabs(double %177) #1, !dbg !375
  %179 = fmul double 0x3CC0000000000000, %178, !dbg !376
  store double %179, double* %11, align 8, !dbg !373
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !377, metadata !63), !dbg !383
  call void @llvm.dbg.declare(metadata i32* %13, metadata !384, metadata !63), !dbg !385
  %180 = load i32, i32* %6, align 4, !dbg !386
  %181 = sitofp i32 %180 to double, !dbg !386
  %182 = load i32, i32* %7, align 4, !dbg !387
  %183 = sitofp i32 %182 to double, !dbg !387
  %184 = load double, double* %8, align 8, !dbg !388
  %185 = call i32 @hyperg_zaU_asymp(double %181, double %183, double %184, %struct.gsl_sf_result_struct* %12), !dbg !389
  store i32 %185, i32* %13, align 4, !dbg !385
  call void @llvm.dbg.declare(metadata i32* %14, metadata !390, metadata !63), !dbg !391
  %186 = load double, double* %10, align 8, !dbg !392
  %187 = load double, double* %11, align 8, !dbg !393
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !394
  %189 = load double, double* %188, align 8, !dbg !394
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !395
  %191 = load double, double* %190, align 8, !dbg !395
  %192 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !396
  %193 = call i32 @gsl_sf_exp_mult_err_e10_e(double %186, double %187, double %189, double %191, %struct.gsl_sf_result_e10_struct* %192), !dbg !397
  store i32 %193, i32* %14, align 4, !dbg !391
  %194 = load i32, i32* %14, align 4, !dbg !398
  %195 = icmp ne i32 %194, 0, !dbg !398
  br i1 %195, label %196, label %198, !dbg !398

; <label>:196:                                    ; preds = %170
  %197 = load i32, i32* %14, align 4, !dbg !399
  br label %206, !dbg !399

; <label>:198:                                    ; preds = %170
  %199 = load i32, i32* %13, align 4, !dbg !401
  %200 = icmp ne i32 %199, 0, !dbg !401
  br i1 %200, label %201, label %203, !dbg !401

; <label>:201:                                    ; preds = %198
  %202 = load i32, i32* %13, align 4, !dbg !403
  br label %204, !dbg !403

; <label>:203:                                    ; preds = %198
  br label %204, !dbg !405

; <label>:204:                                    ; preds = %203, %201
  %205 = phi i32 [ %202, %201 ], [ 0, %203 ], !dbg !407
  br label %206, !dbg !407

; <label>:206:                                    ; preds = %204, %196
  %207 = phi i32 [ %197, %196 ], [ %205, %204 ], !dbg !409
  store i32 %207, i32* %5, align 4, !dbg !411
  br label %1086, !dbg !411

; <label>:208:                                    ; preds = %152
  %209 = load i32, i32* %6, align 4, !dbg !412
  %210 = sitofp i32 %209 to double, !dbg !412
  %211 = call double @fabs(double %210) #1, !dbg !412
  %212 = fcmp olt double %211, 5.000000e+00, !dbg !412
  br i1 %212, label %213, label %219, !dbg !412

; <label>:213:                                    ; preds = %208
  %214 = load i32, i32* %7, align 4, !dbg !414
  %215 = icmp slt i32 %214, 5, !dbg !414
  br i1 %215, label %216, label %219, !dbg !414

; <label>:216:                                    ; preds = %213
  %217 = load double, double* %8, align 8, !dbg !416
  %218 = fcmp olt double %217, 2.000000e+00, !dbg !416
  br i1 %218, label %230, label %219, !dbg !416

; <label>:219:                                    ; preds = %216, %213, %208
  %220 = load i32, i32* %6, align 4, !dbg !418
  %221 = sitofp i32 %220 to double, !dbg !418
  %222 = call double @fabs(double %221) #1, !dbg !418
  %223 = fcmp olt double %222, 1.000000e+01, !dbg !418
  br i1 %223, label %224, label %254, !dbg !418

; <label>:224:                                    ; preds = %219
  %225 = load i32, i32* %7, align 4, !dbg !420
  %226 = icmp slt i32 %225, 10, !dbg !420
  br i1 %226, label %227, label %254, !dbg !420

; <label>:227:                                    ; preds = %224
  %228 = load double, double* %8, align 8, !dbg !422
  %229 = fcmp olt double %228, 1.000000e+00, !dbg !422
  br i1 %229, label %230, label %254, !dbg !424

; <label>:230:                                    ; preds = %227, %216
  %231 = load i32, i32* %6, align 4, !dbg !425
  %232 = add nsw i32 1, %231, !dbg !427
  %233 = load i32, i32* %7, align 4, !dbg !428
  %234 = sub nsw i32 %232, %233, !dbg !429
  %235 = icmp sgt i32 %234, 0, !dbg !430
  br i1 %235, label %236, label %254, !dbg !431

; <label>:236:                                    ; preds = %230
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !432, metadata !63), !dbg !434
  call void @llvm.dbg.declare(metadata i32* %16, metadata !435, metadata !63), !dbg !436
  %237 = load i32, i32* %6, align 4, !dbg !437
  %238 = sitofp i32 %237 to double, !dbg !437
  %239 = load i32, i32* %7, align 4, !dbg !438
  %240 = sitofp i32 %239 to double, !dbg !438
  %241 = load double, double* %8, align 8, !dbg !439
  %242 = call i32 @hyperg_U_series(double %238, double %240, double %241, %struct.gsl_sf_result_struct* %15), !dbg !440
  store i32 %242, i32* %16, align 4, !dbg !436
  %243 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !441
  %244 = load double, double* %243, align 8, !dbg !441
  %245 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !442
  %246 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %245, i32 0, i32 0, !dbg !443
  store double %244, double* %246, align 8, !dbg !444
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !445
  %248 = load double, double* %247, align 8, !dbg !445
  %249 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !446
  %250 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %249, i32 0, i32 1, !dbg !447
  store double %248, double* %250, align 8, !dbg !448
  %251 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !449
  %252 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %251, i32 0, i32 2, !dbg !450
  store i32 0, i32* %252, align 8, !dbg !451
  %253 = load i32, i32* %16, align 4, !dbg !452
  store i32 %253, i32* %5, align 4, !dbg !453
  br label %1086, !dbg !453

; <label>:254:                                    ; preds = %230, %227, %224, %219
  %255 = load i32, i32* %6, align 4, !dbg !454
  %256 = icmp slt i32 %255, 0, !dbg !456
  br i1 %256, label %257, label %352, !dbg !457

; <label>:257:                                    ; preds = %254
  call void @llvm.dbg.declare(metadata i32* %17, metadata !458, metadata !63), !dbg !460
  store i32 0, i32* %17, align 4, !dbg !460
  call void @llvm.dbg.declare(metadata double* %18, metadata !461, metadata !63), !dbg !462
  store double 0x5FEFFFFFFFFFFFFF, double* %18, align 8, !dbg !462
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !463, metadata !63), !dbg !464
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !465, metadata !63), !dbg !466
  call void @llvm.dbg.declare(metadata double* %21, metadata !467, metadata !63), !dbg !468
  call void @llvm.dbg.declare(metadata double* %22, metadata !469, metadata !63), !dbg !470
  store double 1.000000e+00, double* %22, align 8, !dbg !470
  call void @llvm.dbg.declare(metadata double* %23, metadata !471, metadata !63), !dbg !472
  %258 = load i32, i32* %7, align 4, !dbg !473
  %259 = sub nsw i32 0, %258, !dbg !474
  %260 = sitofp i32 %259 to double, !dbg !474
  %261 = load double, double* %8, align 8, !dbg !475
  %262 = fadd double %260, %261, !dbg !476
  store double %262, double* %23, align 8, !dbg !472
  call void @llvm.dbg.declare(metadata double* %24, metadata !477, metadata !63), !dbg !478
  call void @llvm.dbg.declare(metadata i32* %25, metadata !479, metadata !63), !dbg !480
  store i32 -1, i32* %25, align 4, !dbg !481
  br label %263, !dbg !483

; <label>:263:                                    ; preds = %316, %257
  %264 = load i32, i32* %25, align 4, !dbg !484
  %265 = load i32, i32* %6, align 4, !dbg !487
  %266 = icmp sgt i32 %264, %265, !dbg !488
  br i1 %266, label %267, label %319, !dbg !489

; <label>:267:                                    ; preds = %263
  %268 = load i32, i32* %25, align 4, !dbg !490
  %269 = sitofp i32 %268 to double, !dbg !490
  %270 = load i32, i32* %7, align 4, !dbg !492
  %271 = load i32, i32* %25, align 4, !dbg !493
  %272 = sub nsw i32 %270, %271, !dbg !494
  %273 = sitofp i32 %272 to double, !dbg !492
  %274 = fsub double %273, 1.000000e+00, !dbg !495
  %275 = fmul double %269, %274, !dbg !496
  %276 = load double, double* %22, align 8, !dbg !497
  %277 = fmul double %275, %276, !dbg !498
  %278 = load double, double* %8, align 8, !dbg !499
  %279 = load i32, i32* %25, align 4, !dbg !500
  %280 = sitofp i32 %279 to double, !dbg !500
  %281 = fmul double 2.000000e+00, %280, !dbg !501
  %282 = fadd double %278, %281, !dbg !502
  %283 = load i32, i32* %7, align 4, !dbg !503
  %284 = sitofp i32 %283 to double, !dbg !503
  %285 = fsub double %282, %284, !dbg !504
  %286 = load double, double* %23, align 8, !dbg !505
  %287 = fmul double %285, %286, !dbg !506
  %288 = fadd double %277, %287, !dbg !507
  store double %288, double* %24, align 8, !dbg !508
  %289 = load double, double* %23, align 8, !dbg !509
  store double %289, double* %22, align 8, !dbg !510
  %290 = load double, double* %24, align 8, !dbg !511
  store double %290, double* %23, align 8, !dbg !512
  br label %291, !dbg !513, !llvm.loop !514

; <label>:291:                                    ; preds = %267
  call void @llvm.dbg.declare(metadata double* %26, metadata !515, metadata !63), !dbg !517
  %292 = load double, double* %23, align 8, !dbg !518
  %293 = call double @fabs(double %292) #1, !dbg !518
  store double %293, double* %26, align 8, !dbg !518
  %294 = load double, double* %26, align 8, !dbg !518
  %295 = fcmp ogt double %294, 0x5FEFFFFFFFFFFFFF, !dbg !518
  br i1 %295, label %296, label %303, !dbg !518

; <label>:296:                                    ; preds = %291
  %297 = load double, double* %23, align 8, !dbg !520
  %298 = fdiv double %297, 0x5FEFFFFFFFFFFFFF, !dbg !520
  store double %298, double* %23, align 8, !dbg !520
  %299 = load double, double* %22, align 8, !dbg !520
  %300 = fdiv double %299, 0x5FEFFFFFFFFFFFFF, !dbg !520
  store double %300, double* %22, align 8, !dbg !520
  %301 = load i32, i32* %17, align 4, !dbg !520
  %302 = add nsw i32 %301, 1, !dbg !520
  store i32 %302, i32* %17, align 4, !dbg !520
  br label %314, !dbg !520

; <label>:303:                                    ; preds = %291
  %304 = load double, double* %26, align 8, !dbg !524
  %305 = fcmp olt double %304, 0x1FF0000000000001, !dbg !524
  br i1 %305, label %306, label %313, !dbg !524

; <label>:306:                                    ; preds = %303
  %307 = load double, double* %23, align 8, !dbg !527
  %308 = fmul double %307, 0x5FEFFFFFFFFFFFFF, !dbg !527
  store double %308, double* %23, align 8, !dbg !527
  %309 = load double, double* %22, align 8, !dbg !527
  %310 = fmul double %309, 0x5FEFFFFFFFFFFFFF, !dbg !527
  store double %310, double* %22, align 8, !dbg !527
  %311 = load i32, i32* %17, align 4, !dbg !527
  %312 = add nsw i32 %311, -1, !dbg !527
  store i32 %312, i32* %17, align 4, !dbg !527
  br label %313, !dbg !527

; <label>:313:                                    ; preds = %306, %303
  br label %314

; <label>:314:                                    ; preds = %313, %296
  br label %315, !dbg !530

; <label>:315:                                    ; preds = %314
  br label %316, !dbg !532

; <label>:316:                                    ; preds = %315
  %317 = load i32, i32* %25, align 4, !dbg !533
  %318 = add nsw i32 %317, -1, !dbg !533
  store i32 %318, i32* %25, align 4, !dbg !533
  br label %263, !dbg !535, !llvm.loop !536

; <label>:319:                                    ; preds = %263
  %320 = call double @log(double 0x5FEFFFFFFFFFFFFF) #6, !dbg !538
  store double %320, double* %21, align 8, !dbg !539
  %321 = load i32, i32* %17, align 4, !dbg !540
  %322 = sitofp i32 %321 to double, !dbg !540
  %323 = load double, double* %21, align 8, !dbg !541
  %324 = fmul double %322, %323, !dbg !542
  %325 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !543
  store double %324, double* %325, align 8, !dbg !544
  %326 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !545
  %327 = load double, double* %326, align 8, !dbg !545
  %328 = call double @fabs(double %327) #1, !dbg !546
  %329 = fmul double 0x3CC0000000000000, %328, !dbg !547
  %330 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !548
  store double %329, double* %330, align 8, !dbg !549
  %331 = load double, double* %23, align 8, !dbg !550
  %332 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !551
  store double %331, double* %332, align 8, !dbg !552
  %333 = load i32, i32* %6, align 4, !dbg !553
  %334 = sitofp i32 %333 to double, !dbg !553
  %335 = call double @fabs(double %334) #1, !dbg !554
  %336 = fadd double %335, 1.000000e+00, !dbg !555
  %337 = fmul double 0x3CD0000000000000, %336, !dbg !556
  %338 = load double, double* %23, align 8, !dbg !557
  %339 = call double @fabs(double %338) #1, !dbg !558
  %340 = fmul double %337, %339, !dbg !560
  %341 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !561
  store double %340, double* %341, align 8, !dbg !562
  %342 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !563
  %343 = load double, double* %342, align 8, !dbg !563
  %344 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !564
  %345 = load double, double* %344, align 8, !dbg !564
  %346 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !565
  %347 = load double, double* %346, align 8, !dbg !565
  %348 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !566
  %349 = load double, double* %348, align 8, !dbg !566
  %350 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !567
  %351 = call i32 @gsl_sf_exp_mult_err_e10_e(double %343, double %345, double %347, double %349, %struct.gsl_sf_result_e10_struct* %350), !dbg !568
  store i32 %351, i32* %5, align 4, !dbg !569
  br label %1086, !dbg !569

; <label>:352:                                    ; preds = %254
  %353 = load i32, i32* %7, align 4, !dbg !570
  %354 = sitofp i32 %353 to double, !dbg !570
  %355 = load i32, i32* %6, align 4, !dbg !572
  %356 = sitofp i32 %355 to double, !dbg !572
  %357 = fmul double 2.000000e+00, %356, !dbg !573
  %358 = load double, double* %8, align 8, !dbg !574
  %359 = fadd double %357, %358, !dbg !575
  %360 = fcmp oge double %354, %359, !dbg !576
  br i1 %360, label %361, label %497, !dbg !577

; <label>:361:                                    ; preds = %352
  call void @llvm.dbg.declare(metadata i32* %27, metadata !578, metadata !63), !dbg !580
  store i32 0, i32* %27, align 4, !dbg !580
  call void @llvm.dbg.declare(metadata double* %28, metadata !581, metadata !63), !dbg !582
  store double 0x5FEFFFFFFFFFFFFF, double* %28, align 8, !dbg !582
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !583, metadata !63), !dbg !584
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %30, metadata !585, metadata !63), !dbg !586
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !587, metadata !63), !dbg !588
  call void @llvm.dbg.declare(metadata double* %32, metadata !589, metadata !63), !dbg !590
  call void @llvm.dbg.declare(metadata double* %33, metadata !591, metadata !63), !dbg !592
  call void @llvm.dbg.declare(metadata i32* %34, metadata !593, metadata !63), !dbg !594
  %362 = load i32, i32* %7, align 4, !dbg !595
  %363 = sitofp i32 %362 to double, !dbg !595
  %364 = load double, double* %8, align 8, !dbg !596
  %365 = call i32 @hyperg_U_small_a_bgt0(double 1.000000e+00, double %363, double %364, %struct.gsl_sf_result_struct* %29, double* %33), !dbg !597
  store i32 %365, i32* %34, align 4, !dbg !594
  call void @llvm.dbg.declare(metadata i32* %35, metadata !598, metadata !63), !dbg !599
  call void @llvm.dbg.declare(metadata double* %36, metadata !600, metadata !63), !dbg !601
  store double 1.000000e+00, double* %36, align 8, !dbg !601
  call void @llvm.dbg.declare(metadata double* %37, metadata !602, metadata !63), !dbg !603
  %366 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !604
  %367 = load double, double* %366, align 8, !dbg !604
  store double %367, double* %37, align 8, !dbg !603
  call void @llvm.dbg.declare(metadata double* %38, metadata !605, metadata !63), !dbg !606
  call void @llvm.dbg.declare(metadata i32* %39, metadata !607, metadata !63), !dbg !608
  %368 = load double, double* %33, align 8, !dbg !609
  %369 = fsub double -0.000000e+00, %368, !dbg !610
  %370 = call double @exp(double %369) #6, !dbg !611
  %371 = load double, double* %36, align 8, !dbg !612
  %372 = fmul double %371, %370, !dbg !612
  store double %372, double* %36, align 8, !dbg !612
  store i32 1, i32* %39, align 4, !dbg !613
  br label %373, !dbg !615

; <label>:373:                                    ; preds = %428, %361
  %374 = load i32, i32* %39, align 4, !dbg !616
  %375 = load i32, i32* %6, align 4, !dbg !619
  %376 = icmp slt i32 %374, %375, !dbg !620
  br i1 %376, label %377, label %431, !dbg !621

; <label>:377:                                    ; preds = %373
  %378 = load double, double* %36, align 8, !dbg !622
  %379 = load i32, i32* %7, align 4, !dbg !624
  %380 = sitofp i32 %379 to double, !dbg !624
  %381 = load i32, i32* %39, align 4, !dbg !625
  %382 = sitofp i32 %381 to double, !dbg !625
  %383 = fmul double 2.000000e+00, %382, !dbg !626
  %384 = fsub double %380, %383, !dbg !627
  %385 = load double, double* %8, align 8, !dbg !628
  %386 = fsub double %384, %385, !dbg !629
  %387 = load double, double* %37, align 8, !dbg !630
  %388 = fmul double %386, %387, !dbg !631
  %389 = fadd double %378, %388, !dbg !632
  %390 = fsub double -0.000000e+00, %389, !dbg !633
  %391 = load i32, i32* %39, align 4, !dbg !634
  %392 = sitofp i32 %391 to double, !dbg !634
  %393 = load i32, i32* %39, align 4, !dbg !635
  %394 = sitofp i32 %393 to double, !dbg !635
  %395 = fadd double 1.000000e+00, %394, !dbg !636
  %396 = load i32, i32* %7, align 4, !dbg !637
  %397 = sitofp i32 %396 to double, !dbg !637
  %398 = fsub double %395, %397, !dbg !638
  %399 = fmul double %392, %398, !dbg !639
  %400 = fdiv double %390, %399, !dbg !640
  store double %400, double* %38, align 8, !dbg !641
  %401 = load double, double* %37, align 8, !dbg !642
  store double %401, double* %36, align 8, !dbg !643
  %402 = load double, double* %38, align 8, !dbg !644
  store double %402, double* %37, align 8, !dbg !645
  br label %403, !dbg !646, !llvm.loop !647

; <label>:403:                                    ; preds = %377
  call void @llvm.dbg.declare(metadata double* %40, metadata !648, metadata !63), !dbg !650
  %404 = load double, double* %37, align 8, !dbg !651
  %405 = call double @fabs(double %404) #1, !dbg !651
  store double %405, double* %40, align 8, !dbg !651
  %406 = load double, double* %40, align 8, !dbg !651
  %407 = fcmp ogt double %406, 0x5FEFFFFFFFFFFFFF, !dbg !651
  br i1 %407, label %408, label %415, !dbg !651

; <label>:408:                                    ; preds = %403
  %409 = load double, double* %37, align 8, !dbg !653
  %410 = fdiv double %409, 0x5FEFFFFFFFFFFFFF, !dbg !653
  store double %410, double* %37, align 8, !dbg !653
  %411 = load double, double* %36, align 8, !dbg !653
  %412 = fdiv double %411, 0x5FEFFFFFFFFFFFFF, !dbg !653
  store double %412, double* %36, align 8, !dbg !653
  %413 = load i32, i32* %27, align 4, !dbg !653
  %414 = add nsw i32 %413, 1, !dbg !653
  store i32 %414, i32* %27, align 4, !dbg !653
  br label %426, !dbg !653

; <label>:415:                                    ; preds = %403
  %416 = load double, double* %40, align 8, !dbg !657
  %417 = fcmp olt double %416, 0x1FF0000000000001, !dbg !657
  br i1 %417, label %418, label %425, !dbg !657

; <label>:418:                                    ; preds = %415
  %419 = load double, double* %37, align 8, !dbg !660
  %420 = fmul double %419, 0x5FEFFFFFFFFFFFFF, !dbg !660
  store double %420, double* %37, align 8, !dbg !660
  %421 = load double, double* %36, align 8, !dbg !660
  %422 = fmul double %421, 0x5FEFFFFFFFFFFFFF, !dbg !660
  store double %422, double* %36, align 8, !dbg !660
  %423 = load i32, i32* %27, align 4, !dbg !660
  %424 = add nsw i32 %423, -1, !dbg !660
  store i32 %424, i32* %27, align 4, !dbg !660
  br label %425, !dbg !660

; <label>:425:                                    ; preds = %418, %415
  br label %426

; <label>:426:                                    ; preds = %425, %408
  br label %427, !dbg !663

; <label>:427:                                    ; preds = %426
  br label %428, !dbg !665

; <label>:428:                                    ; preds = %427
  %429 = load i32, i32* %39, align 4, !dbg !666
  %430 = add nsw i32 %429, 1, !dbg !666
  store i32 %430, i32* %39, align 4, !dbg !666
  br label %373, !dbg !668, !llvm.loop !669

; <label>:431:                                    ; preds = %373
  %432 = call double @log(double 0x5FEFFFFFFFFFFFFF) #6, !dbg !671
  store double %432, double* %32, align 8, !dbg !672
  %433 = load double, double* %33, align 8, !dbg !673
  %434 = load i32, i32* %27, align 4, !dbg !674
  %435 = sitofp i32 %434 to double, !dbg !674
  %436 = load double, double* %32, align 8, !dbg !675
  %437 = fmul double %435, %436, !dbg !676
  %438 = fadd double %433, %437, !dbg !677
  %439 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !678
  store double %438, double* %439, align 8, !dbg !679
  %440 = load double, double* %33, align 8, !dbg !680
  %441 = call double @fabs(double %440) #1, !dbg !681
  %442 = load i32, i32* %27, align 4, !dbg !682
  %443 = sitofp i32 %442 to double, !dbg !682
  %444 = load double, double* %32, align 8, !dbg !683
  %445 = fmul double %443, %444, !dbg !684
  %446 = call double @fabs(double %445) #1, !dbg !685
  %447 = fadd double %441, %446, !dbg !687
  %448 = fmul double 0x3CC0000000000000, %447, !dbg !688
  %449 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !689
  store double %448, double* %449, align 8, !dbg !690
  %450 = load double, double* %37, align 8, !dbg !691
  %451 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !692
  store double %450, double* %451, align 8, !dbg !693
  %452 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !694
  %453 = load double, double* %452, align 8, !dbg !694
  %454 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !695
  %455 = load double, double* %454, align 8, !dbg !695
  %456 = fdiv double %453, %455, !dbg !696
  %457 = call double @fabs(double %456) #1, !dbg !697
  %458 = load double, double* %37, align 8, !dbg !698
  %459 = call double @fabs(double %458) #1, !dbg !699
  %460 = fmul double %457, %459, !dbg !700
  %461 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !701
  store double %460, double* %461, align 8, !dbg !702
  %462 = load i32, i32* %6, align 4, !dbg !703
  %463 = sitofp i32 %462 to double, !dbg !703
  %464 = call double @fabs(double %463) #1, !dbg !704
  %465 = fadd double %464, 1.000000e+00, !dbg !705
  %466 = fmul double 0x3CC0000000000000, %465, !dbg !706
  %467 = load double, double* %37, align 8, !dbg !707
  %468 = call double @fabs(double %467) #1, !dbg !708
  %469 = fmul double %466, %468, !dbg !709
  %470 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !710
  %471 = load double, double* %470, align 8, !dbg !711
  %472 = fadd double %471, %469, !dbg !711
  store double %472, double* %470, align 8, !dbg !711
  %473 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !712
  %474 = load double, double* %473, align 8, !dbg !712
  %475 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !713
  %476 = load double, double* %475, align 8, !dbg !713
  %477 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !714
  %478 = load double, double* %477, align 8, !dbg !714
  %479 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !715
  %480 = load double, double* %479, align 8, !dbg !715
  %481 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !716
  %482 = call i32 @gsl_sf_exp_mult_err_e10_e(double %474, double %476, double %478, double %480, %struct.gsl_sf_result_e10_struct* %481), !dbg !717
  store i32 %482, i32* %35, align 4, !dbg !718
  %483 = load i32, i32* %35, align 4, !dbg !719
  %484 = icmp ne i32 %483, 0, !dbg !719
  br i1 %484, label %485, label %487, !dbg !719

; <label>:485:                                    ; preds = %431
  %486 = load i32, i32* %35, align 4, !dbg !720
  br label %495, !dbg !720

; <label>:487:                                    ; preds = %431
  %488 = load i32, i32* %34, align 4, !dbg !721
  %489 = icmp ne i32 %488, 0, !dbg !721
  br i1 %489, label %490, label %492, !dbg !721

; <label>:490:                                    ; preds = %487
  %491 = load i32, i32* %34, align 4, !dbg !723
  br label %493, !dbg !723

; <label>:492:                                    ; preds = %487
  br label %493, !dbg !725

; <label>:493:                                    ; preds = %492, %490
  %494 = phi i32 [ %491, %490 ], [ 0, %492 ], !dbg !727
  br label %495, !dbg !727

; <label>:495:                                    ; preds = %493, %485
  %496 = phi i32 [ %486, %485 ], [ %494, %493 ], !dbg !729
  store i32 %496, i32* %5, align 4, !dbg !731
  br label %1086, !dbg !731

; <label>:497:                                    ; preds = %352
  %498 = load i32, i32* %7, align 4, !dbg !732
  %499 = sitofp i32 %498 to double, !dbg !732
  %500 = load double, double* %8, align 8, !dbg !735
  %501 = fcmp ole double %499, %500, !dbg !736
  br i1 %501, label %502, label %653, !dbg !737

; <label>:502:                                    ; preds = %497
  call void @llvm.dbg.declare(metadata double* %41, metadata !738, metadata !63), !dbg !740
  store double 0x5FEFFFFFFFFFFFFF, double* %41, align 8, !dbg !740
  call void @llvm.dbg.declare(metadata i32* %42, metadata !741, metadata !63), !dbg !742
  store i32 0, i32* %42, align 4, !dbg !742
  call void @llvm.dbg.declare(metadata i32* %43, metadata !743, metadata !63), !dbg !744
  call void @llvm.dbg.declare(metadata double* %44, metadata !745, metadata !63), !dbg !746
  call void @llvm.dbg.declare(metadata i32* %45, metadata !747, metadata !63), !dbg !748
  call void @llvm.dbg.declare(metadata i32* %46, metadata !749, metadata !63), !dbg !750
  call void @llvm.dbg.declare(metadata double* %47, metadata !751, metadata !63), !dbg !752
  call void @llvm.dbg.declare(metadata double* %48, metadata !753, metadata !63), !dbg !754
  call void @llvm.dbg.declare(metadata double* %49, metadata !755, metadata !63), !dbg !756
  call void @llvm.dbg.declare(metadata double* %50, metadata !757, metadata !63), !dbg !758
  call void @llvm.dbg.declare(metadata i32* %51, metadata !759, metadata !63), !dbg !760
  %503 = load i32, i32* %7, align 4, !dbg !761
  %504 = load i32, i32* %6, align 4, !dbg !763
  %505 = add nsw i32 %504, 1, !dbg !764
  %506 = icmp slt i32 %503, %505, !dbg !765
  br i1 %506, label %507, label %516, !dbg !766

; <label>:507:                                    ; preds = %502
  %508 = load i32, i32* %7, align 4, !dbg !767
  %509 = sub nsw i32 %508, 1, !dbg !769
  store i32 %509, i32* %46, align 4, !dbg !770
  %510 = load i32, i32* %46, align 4, !dbg !771
  %511 = sub nsw i32 0, %510, !dbg !772
  %512 = sitofp i32 %511 to double, !dbg !772
  %513 = load double, double* %8, align 8, !dbg !773
  %514 = call double @log(double %513) #6, !dbg !774
  %515 = fmul double %512, %514, !dbg !775
  store double %515, double* %47, align 8, !dbg !776
  br label %517, !dbg !777

; <label>:516:                                    ; preds = %502
  store i32 0, i32* %46, align 4, !dbg !778
  store double 0.000000e+00, double* %47, align 8, !dbg !780
  br label %517

; <label>:517:                                    ; preds = %516, %507
  %518 = load i32, i32* %6, align 4, !dbg !781
  %519 = sitofp i32 %518 to double, !dbg !781
  %520 = load i32, i32* %7, align 4, !dbg !782
  %521 = sitofp i32 %520 to double, !dbg !782
  %522 = load double, double* %8, align 8, !dbg !783
  %523 = call i32 @hyperg_U_CF1(double %519, double %521, i32 0, double %522, double* %44, i32* %45), !dbg !784
  store i32 %523, i32* %43, align 4, !dbg !785
  store double 1.000000e+00, double* %48, align 8, !dbg !786
  %524 = load double, double* %44, align 8, !dbg !787
  %525 = load i32, i32* %6, align 4, !dbg !788
  %526 = sitofp i32 %525 to double, !dbg !788
  %527 = fdiv double %524, %526, !dbg !789
  %528 = load double, double* %48, align 8, !dbg !790
  %529 = fmul double %527, %528, !dbg !791
  store double %529, double* %49, align 8, !dbg !792
  %530 = load i32, i32* %6, align 4, !dbg !793
  store i32 %530, i32* %51, align 4, !dbg !795
  br label %531, !dbg !796

; <label>:531:                                    ; preds = %586, %517
  %532 = load i32, i32* %51, align 4, !dbg !797
  %533 = load i32, i32* %46, align 4, !dbg !800
  %534 = icmp sgt i32 %532, %533, !dbg !801
  br i1 %534, label %535, label %589, !dbg !802

; <label>:535:                                    ; preds = %531
  %536 = load i32, i32* %7, align 4, !dbg !803
  %537 = sitofp i32 %536 to double, !dbg !803
  %538 = load i32, i32* %51, align 4, !dbg !805
  %539 = sitofp i32 %538 to double, !dbg !805
  %540 = fmul double 2.000000e+00, %539, !dbg !806
  %541 = fsub double %537, %540, !dbg !807
  %542 = load double, double* %8, align 8, !dbg !808
  %543 = fsub double %541, %542, !dbg !809
  %544 = load double, double* %48, align 8, !dbg !810
  %545 = fmul double %543, %544, !dbg !811
  %546 = load i32, i32* %51, align 4, !dbg !812
  %547 = sitofp i32 %546 to double, !dbg !812
  %548 = load i32, i32* %51, align 4, !dbg !813
  %549 = sitofp i32 %548 to double, !dbg !813
  %550 = fadd double 1.000000e+00, %549, !dbg !814
  %551 = load i32, i32* %7, align 4, !dbg !815
  %552 = sitofp i32 %551 to double, !dbg !815
  %553 = fsub double %550, %552, !dbg !816
  %554 = fmul double %547, %553, !dbg !817
  %555 = load double, double* %49, align 8, !dbg !818
  %556 = fmul double %554, %555, !dbg !819
  %557 = fadd double %545, %556, !dbg !820
  %558 = fsub double -0.000000e+00, %557, !dbg !821
  store double %558, double* %50, align 8, !dbg !822
  %559 = load double, double* %48, align 8, !dbg !823
  store double %559, double* %49, align 8, !dbg !824
  %560 = load double, double* %50, align 8, !dbg !825
  store double %560, double* %48, align 8, !dbg !826
  br label %561, !dbg !827, !llvm.loop !828

; <label>:561:                                    ; preds = %535
  call void @llvm.dbg.declare(metadata double* %52, metadata !829, metadata !63), !dbg !831
  %562 = load double, double* %48, align 8, !dbg !832
  %563 = call double @fabs(double %562) #1, !dbg !832
  store double %563, double* %52, align 8, !dbg !832
  %564 = load double, double* %52, align 8, !dbg !832
  %565 = fcmp ogt double %564, 0x5FEFFFFFFFFFFFFF, !dbg !832
  br i1 %565, label %566, label %573, !dbg !832

; <label>:566:                                    ; preds = %561
  %567 = load double, double* %48, align 8, !dbg !834
  %568 = fdiv double %567, 0x5FEFFFFFFFFFFFFF, !dbg !834
  store double %568, double* %48, align 8, !dbg !834
  %569 = load double, double* %49, align 8, !dbg !834
  %570 = fdiv double %569, 0x5FEFFFFFFFFFFFFF, !dbg !834
  store double %570, double* %49, align 8, !dbg !834
  %571 = load i32, i32* %42, align 4, !dbg !834
  %572 = add nsw i32 %571, 1, !dbg !834
  store i32 %572, i32* %42, align 4, !dbg !834
  br label %584, !dbg !834

; <label>:573:                                    ; preds = %561
  %574 = load double, double* %52, align 8, !dbg !838
  %575 = fcmp olt double %574, 0x1FF0000000000001, !dbg !838
  br i1 %575, label %576, label %583, !dbg !838

; <label>:576:                                    ; preds = %573
  %577 = load double, double* %48, align 8, !dbg !841
  %578 = fmul double %577, 0x5FEFFFFFFFFFFFFF, !dbg !841
  store double %578, double* %48, align 8, !dbg !841
  %579 = load double, double* %49, align 8, !dbg !841
  %580 = fmul double %579, 0x5FEFFFFFFFFFFFFF, !dbg !841
  store double %580, double* %49, align 8, !dbg !841
  %581 = load i32, i32* %42, align 4, !dbg !841
  %582 = add nsw i32 %581, -1, !dbg !841
  store i32 %582, i32* %42, align 4, !dbg !841
  br label %583, !dbg !841

; <label>:583:                                    ; preds = %576, %573
  br label %584

; <label>:584:                                    ; preds = %583, %566
  br label %585, !dbg !844

; <label>:585:                                    ; preds = %584
  br label %586, !dbg !846

; <label>:586:                                    ; preds = %585
  %587 = load i32, i32* %51, align 4, !dbg !847
  %588 = add nsw i32 %587, -1, !dbg !847
  store i32 %588, i32* %51, align 4, !dbg !847
  br label %531, !dbg !849, !llvm.loop !850

; <label>:589:                                    ; preds = %531
  %590 = load double, double* %48, align 8, !dbg !852
  %591 = fcmp oeq double %590, 0.000000e+00, !dbg !854
  br i1 %591, label %592, label %601, !dbg !855

; <label>:592:                                    ; preds = %589
  %593 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !856
  %594 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %593, i32 0, i32 0, !dbg !858
  store double 0.000000e+00, double* %594, align 8, !dbg !859
  %595 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !860
  %596 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %595, i32 0, i32 1, !dbg !861
  store double 0.000000e+00, double* %596, align 8, !dbg !862
  %597 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !863
  %598 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %597, i32 0, i32 2, !dbg !864
  store i32 0, i32* %598, align 8, !dbg !865
  br label %599, !dbg !866, !llvm.loop !867

; <label>:599:                                    ; preds = %592
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1002, i32 12), !dbg !868
  store i32 12, i32* %5, align 4, !dbg !868
  br label %1086, !dbg !868
                                                  ; No predecessors!
  br label %652, !dbg !871

; <label>:601:                                    ; preds = %589
  call void @llvm.dbg.declare(metadata double* %53, metadata !872, metadata !63), !dbg !874
  %602 = load i32, i32* %42, align 4, !dbg !875
  %603 = sub nsw i32 0, %602, !dbg !876
  %604 = sitofp i32 %603 to double, !dbg !876
  %605 = call double @log(double 0x5FEFFFFFFFFFFFFF) #6, !dbg !877
  %606 = fmul double %604, %605, !dbg !878
  store double %606, double* %53, align 8, !dbg !874
  call void @llvm.dbg.declare(metadata double* %54, metadata !879, metadata !63), !dbg !880
  %607 = load double, double* %47, align 8, !dbg !881
  %608 = load double, double* %53, align 8, !dbg !882
  %609 = fadd double %607, %608, !dbg !883
  store double %609, double* %54, align 8, !dbg !880
  call void @llvm.dbg.declare(metadata double* %55, metadata !884, metadata !63), !dbg !885
  %610 = load double, double* %47, align 8, !dbg !886
  %611 = call double @fabs(double %610) #1, !dbg !887
  %612 = load double, double* %53, align 8, !dbg !888
  %613 = call double @fabs(double %612) #1, !dbg !889
  %614 = fadd double %611, %613, !dbg !891
  %615 = fmul double 0x3CC0000000000000, %614, !dbg !892
  store double %615, double* %55, align 8, !dbg !885
  call void @llvm.dbg.declare(metadata double* %56, metadata !893, metadata !63), !dbg !894
  %616 = load i32, i32* %46, align 4, !dbg !895
  %617 = load i32, i32* %6, align 4, !dbg !896
  %618 = sub nsw i32 %616, %617, !dbg !897
  %619 = sitofp i32 %618 to double, !dbg !895
  %620 = call double @fabs(double %619) #1, !dbg !898
  %621 = load i32, i32* %45, align 4, !dbg !899
  %622 = sitofp i32 %621 to double, !dbg !899
  %623 = fadd double %620, %622, !dbg !900
  %624 = fadd double %623, 1.000000e+00, !dbg !901
  %625 = fmul double 2.000000e+00, %624, !dbg !902
  %626 = fmul double %625, 0x3CB0000000000000, !dbg !903
  %627 = load double, double* %48, align 8, !dbg !904
  %628 = fdiv double 1.000000e+00, %627, !dbg !905
  %629 = call double @fabs(double %628) #1, !dbg !906
  %630 = fmul double %626, %629, !dbg !907
  store double %630, double* %56, align 8, !dbg !894
  call void @llvm.dbg.declare(metadata i32* %57, metadata !908, metadata !63), !dbg !909
  %631 = load double, double* %54, align 8, !dbg !910
  %632 = load double, double* %55, align 8, !dbg !911
  %633 = load double, double* %48, align 8, !dbg !912
  %634 = fdiv double 1.000000e+00, %633, !dbg !913
  %635 = load double, double* %56, align 8, !dbg !914
  %636 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !915
  %637 = call i32 @gsl_sf_exp_mult_err_e10_e(double %631, double %632, double %634, double %635, %struct.gsl_sf_result_e10_struct* %636), !dbg !916
  store i32 %637, i32* %57, align 4, !dbg !909
  %638 = load i32, i32* %57, align 4, !dbg !917
  %639 = icmp ne i32 %638, 0, !dbg !917
  br i1 %639, label %640, label %642, !dbg !917

; <label>:640:                                    ; preds = %601
  %641 = load i32, i32* %57, align 4, !dbg !918
  br label %650, !dbg !918

; <label>:642:                                    ; preds = %601
  %643 = load i32, i32* %43, align 4, !dbg !919
  %644 = icmp ne i32 %643, 0, !dbg !919
  br i1 %644, label %645, label %647, !dbg !919

; <label>:645:                                    ; preds = %642
  %646 = load i32, i32* %43, align 4, !dbg !921
  br label %648, !dbg !921

; <label>:647:                                    ; preds = %642
  br label %648, !dbg !923

; <label>:648:                                    ; preds = %647, %645
  %649 = phi i32 [ %646, %645 ], [ 0, %647 ], !dbg !925
  br label %650, !dbg !925

; <label>:650:                                    ; preds = %648, %640
  %651 = phi i32 [ %641, %640 ], [ %649, %648 ], !dbg !927
  store i32 %651, i32* %5, align 4, !dbg !929
  br label %1086, !dbg !929

; <label>:652:                                    ; preds = %600
  br label %1079, !dbg !930

; <label>:653:                                    ; preds = %497
  call void @llvm.dbg.declare(metadata double* %58, metadata !931, metadata !63), !dbg !933
  store double 0x5FEFFFFFFFFFFFFF, double* %58, align 8, !dbg !933
  call void @llvm.dbg.declare(metadata i32* %59, metadata !934, metadata !63), !dbg !935
  store i32 0, i32* %59, align 4, !dbg !935
  call void @llvm.dbg.declare(metadata i32* %60, metadata !936, metadata !63), !dbg !937
  store i32 0, i32* %60, align 4, !dbg !937
  call void @llvm.dbg.declare(metadata i32* %61, metadata !938, metadata !63), !dbg !939
  store i32 1, i32* %61, align 4, !dbg !939
  call void @llvm.dbg.declare(metadata i32* %62, metadata !940, metadata !63), !dbg !941
  %654 = load i32, i32* %61, align 4, !dbg !942
  %655 = sitofp i32 %654 to double, !dbg !942
  %656 = load i32, i32* %7, align 4, !dbg !943
  %657 = sitofp i32 %656 to double, !dbg !943
  %658 = load double, double* %8, align 8, !dbg !944
  %659 = fsub double %657, %658, !dbg !945
  %660 = fmul double 5.000000e-01, %659, !dbg !946
  %661 = load i32, i32* %61, align 4, !dbg !947
  %662 = sitofp i32 %661 to double, !dbg !947
  %663 = fsub double %660, %662, !dbg !948
  %664 = call double @ceil(double %663) #1, !dbg !949
  %665 = fadd double %655, %664, !dbg !950
  %666 = fptosi double %665 to i32, !dbg !942
  store i32 %666, i32* %62, align 4, !dbg !941
  call void @llvm.dbg.declare(metadata double* %63, metadata !951, metadata !63), !dbg !952
  call void @llvm.dbg.declare(metadata double* %64, metadata !953, metadata !63), !dbg !954
  call void @llvm.dbg.declare(metadata double* %65, metadata !955, metadata !63), !dbg !956
  call void @llvm.dbg.declare(metadata double* %66, metadata !957, metadata !63), !dbg !958
  call void @llvm.dbg.declare(metadata i32* %67, metadata !959, metadata !63), !dbg !960
  call void @llvm.dbg.declare(metadata i32* %68, metadata !961, metadata !63), !dbg !962
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %69, metadata !963, metadata !63), !dbg !964
  call void @llvm.dbg.declare(metadata double* %70, metadata !965, metadata !63), !dbg !967
  call void @llvm.dbg.declare(metadata i32* %71, metadata !968, metadata !63), !dbg !969
  call void @llvm.dbg.declare(metadata i32* %72, metadata !970, metadata !63), !dbg !971
  %667 = load i32, i32* %6, align 4, !dbg !972
  %668 = sitofp i32 %667 to double, !dbg !972
  %669 = load i32, i32* %7, align 4, !dbg !973
  %670 = sitofp i32 %669 to double, !dbg !973
  %671 = load double, double* %8, align 8, !dbg !974
  %672 = call i32 @hyperg_U_CF1(double %668, double %670, i32 0, double %671, double* %70, i32* %71), !dbg !975
  store i32 %672, i32* %72, align 4, !dbg !971
  call void @llvm.dbg.declare(metadata double* %73, metadata !976, metadata !63), !dbg !977
  store double 1.000000e+00, double* %73, align 8, !dbg !977
  call void @llvm.dbg.declare(metadata double* %74, metadata !978, metadata !63), !dbg !979
  %673 = load double, double* %70, align 8, !dbg !980
  %674 = load i32, i32* %6, align 4, !dbg !981
  %675 = sitofp i32 %674 to double, !dbg !981
  %676 = fdiv double %673, %675, !dbg !982
  %677 = load double, double* %73, align 8, !dbg !983
  %678 = fmul double %676, %677, !dbg !984
  store double %678, double* %74, align 8, !dbg !979
  call void @llvm.dbg.declare(metadata double* %75, metadata !985, metadata !63), !dbg !986
  call void @llvm.dbg.declare(metadata i32* %76, metadata !987, metadata !63), !dbg !988
  %679 = load i32, i32* %6, align 4, !dbg !989
  store i32 %679, i32* %76, align 4, !dbg !991
  br label %680, !dbg !992

; <label>:680:                                    ; preds = %735, %653
  %681 = load i32, i32* %76, align 4, !dbg !993
  %682 = load i32, i32* %62, align 4, !dbg !996
  %683 = icmp sgt i32 %681, %682, !dbg !997
  br i1 %683, label %684, label %738, !dbg !998

; <label>:684:                                    ; preds = %680
  %685 = load i32, i32* %7, align 4, !dbg !999
  %686 = sitofp i32 %685 to double, !dbg !999
  %687 = load i32, i32* %76, align 4, !dbg !1001
  %688 = sitofp i32 %687 to double, !dbg !1001
  %689 = fmul double 2.000000e+00, %688, !dbg !1002
  %690 = fsub double %686, %689, !dbg !1003
  %691 = load double, double* %8, align 8, !dbg !1004
  %692 = fsub double %690, %691, !dbg !1005
  %693 = load double, double* %73, align 8, !dbg !1006
  %694 = fmul double %692, %693, !dbg !1007
  %695 = load i32, i32* %76, align 4, !dbg !1008
  %696 = sitofp i32 %695 to double, !dbg !1008
  %697 = load i32, i32* %76, align 4, !dbg !1009
  %698 = sitofp i32 %697 to double, !dbg !1009
  %699 = fadd double 1.000000e+00, %698, !dbg !1010
  %700 = load i32, i32* %7, align 4, !dbg !1011
  %701 = sitofp i32 %700 to double, !dbg !1011
  %702 = fsub double %699, %701, !dbg !1012
  %703 = fmul double %696, %702, !dbg !1013
  %704 = load double, double* %74, align 8, !dbg !1014
  %705 = fmul double %703, %704, !dbg !1015
  %706 = fadd double %694, %705, !dbg !1016
  %707 = fsub double -0.000000e+00, %706, !dbg !1017
  store double %707, double* %75, align 8, !dbg !1018
  %708 = load double, double* %73, align 8, !dbg !1019
  store double %708, double* %74, align 8, !dbg !1020
  %709 = load double, double* %75, align 8, !dbg !1021
  store double %709, double* %73, align 8, !dbg !1022
  br label %710, !dbg !1023, !llvm.loop !1024

; <label>:710:                                    ; preds = %684
  call void @llvm.dbg.declare(metadata double* %77, metadata !1025, metadata !63), !dbg !1027
  %711 = load double, double* %73, align 8, !dbg !1028
  %712 = call double @fabs(double %711) #1, !dbg !1028
  store double %712, double* %77, align 8, !dbg !1028
  %713 = load double, double* %77, align 8, !dbg !1028
  %714 = fcmp ogt double %713, 0x5FEFFFFFFFFFFFFF, !dbg !1028
  br i1 %714, label %715, label %722, !dbg !1028

; <label>:715:                                    ; preds = %710
  %716 = load double, double* %73, align 8, !dbg !1030
  %717 = fdiv double %716, 0x5FEFFFFFFFFFFFFF, !dbg !1030
  store double %717, double* %73, align 8, !dbg !1030
  %718 = load double, double* %74, align 8, !dbg !1030
  %719 = fdiv double %718, 0x5FEFFFFFFFFFFFFF, !dbg !1030
  store double %719, double* %74, align 8, !dbg !1030
  %720 = load i32, i32* %60, align 4, !dbg !1030
  %721 = add nsw i32 %720, 1, !dbg !1030
  store i32 %721, i32* %60, align 4, !dbg !1030
  br label %733, !dbg !1030

; <label>:722:                                    ; preds = %710
  %723 = load double, double* %77, align 8, !dbg !1034
  %724 = fcmp olt double %723, 0x1FF0000000000001, !dbg !1034
  br i1 %724, label %725, label %732, !dbg !1034

; <label>:725:                                    ; preds = %722
  %726 = load double, double* %73, align 8, !dbg !1037
  %727 = fmul double %726, 0x5FEFFFFFFFFFFFFF, !dbg !1037
  store double %727, double* %73, align 8, !dbg !1037
  %728 = load double, double* %74, align 8, !dbg !1037
  %729 = fmul double %728, 0x5FEFFFFFFFFFFFFF, !dbg !1037
  store double %729, double* %74, align 8, !dbg !1037
  %730 = load i32, i32* %60, align 4, !dbg !1037
  %731 = add nsw i32 %730, -1, !dbg !1037
  store i32 %731, i32* %60, align 4, !dbg !1037
  br label %732, !dbg !1037

; <label>:732:                                    ; preds = %725, %722
  br label %733

; <label>:733:                                    ; preds = %732, %715
  br label %734, !dbg !1040

; <label>:734:                                    ; preds = %733
  br label %735, !dbg !1042

; <label>:735:                                    ; preds = %734
  %736 = load i32, i32* %76, align 4, !dbg !1043
  %737 = add nsw i32 %736, -1, !dbg !1043
  store i32 %737, i32* %76, align 4, !dbg !1043
  br label %680, !dbg !1045, !llvm.loop !1046

; <label>:738:                                    ; preds = %680
  %739 = load double, double* %73, align 8, !dbg !1048
  store double %739, double* %63, align 8, !dbg !1049
  %740 = load i32, i32* %62, align 4, !dbg !1050
  %741 = load i32, i32* %6, align 4, !dbg !1051
  %742 = sub nsw i32 %740, %741, !dbg !1052
  %743 = sitofp i32 %742 to double, !dbg !1050
  %744 = call double @fabs(double %743) #1, !dbg !1053
  %745 = load i32, i32* %71, align 4, !dbg !1054
  %746 = sitofp i32 %745 to double, !dbg !1054
  %747 = fadd double %744, %746, !dbg !1055
  %748 = fadd double %747, 1.000000e+00, !dbg !1056
  %749 = fmul double 0x3CC0000000000000, %748, !dbg !1057
  %750 = load double, double* %73, align 8, !dbg !1058
  %751 = call double @fabs(double %750) #1, !dbg !1059
  %752 = fmul double %749, %751, !dbg !1061
  store double %752, double* %64, align 8, !dbg !1062
  %753 = load i32, i32* %72, align 4, !dbg !1063
  store i32 %753, i32* %68, align 4, !dbg !1064
  %754 = load i32, i32* %7, align 4, !dbg !1065
  %755 = load i32, i32* %62, align 4, !dbg !1067
  %756 = mul nsw i32 2, %755, !dbg !1068
  %757 = icmp eq i32 %754, %756, !dbg !1069
  br i1 %757, label %758, label %766, !dbg !1070

; <label>:758:                                    ; preds = %738
  %759 = load i32, i32* %62, align 4, !dbg !1071
  %760 = icmp sgt i32 %759, 1, !dbg !1073
  br i1 %760, label %761, label %766, !dbg !1074

; <label>:761:                                    ; preds = %758
  %762 = load i32, i32* %62, align 4, !dbg !1075
  %763 = sitofp i32 %762 to double, !dbg !1077
  %764 = load double, double* %8, align 8, !dbg !1078
  %765 = call i32 @hyperg_lnU_beq2a(double %763, double %764, %struct.gsl_sf_result_struct* %69), !dbg !1079
  store double 1.000000e+00, double* %65, align 8, !dbg !1080
  store double 0.000000e+00, double* %66, align 8, !dbg !1081
  store i32 0, i32* %67, align 4, !dbg !1082
  br label %962, !dbg !1083

; <label>:766:                                    ; preds = %758, %738
  %767 = load i32, i32* %7, align 4, !dbg !1084
  %768 = load i32, i32* %62, align 4, !dbg !1086
  %769 = mul nsw i32 2, %768, !dbg !1087
  %770 = sub nsw i32 %769, 1, !dbg !1088
  %771 = icmp eq i32 %767, %770, !dbg !1089
  br i1 %771, label %772, label %862, !dbg !1090

; <label>:772:                                    ; preds = %766
  %773 = load i32, i32* %62, align 4, !dbg !1091
  %774 = icmp sgt i32 %773, 1, !dbg !1093
  br i1 %774, label %775, label %862, !dbg !1094

; <label>:775:                                    ; preds = %772
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %78, metadata !1095, metadata !63), !dbg !1097
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %79, metadata !1098, metadata !63), !dbg !1099
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %80, metadata !1100, metadata !63), !dbg !1101
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %81, metadata !1102, metadata !63), !dbg !1103
  %776 = load i32, i32* %62, align 4, !dbg !1104
  %777 = sitofp i32 %776 to double, !dbg !1104
  %778 = fsub double %777, 1.000000e+00, !dbg !1105
  %779 = load double, double* %8, align 8, !dbg !1106
  %780 = call i32 @hyperg_lnU_beq2a(double %778, double %779, %struct.gsl_sf_result_struct* %78), !dbg !1107
  %781 = load i32, i32* %62, align 4, !dbg !1108
  %782 = sitofp i32 %781 to double, !dbg !1108
  %783 = load double, double* %8, align 8, !dbg !1109
  %784 = call i32 @hyperg_lnU_beq2a(double %782, double %783, %struct.gsl_sf_result_struct* %79), !dbg !1110
  %785 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !1111
  %786 = load double, double* %785, align 8, !dbg !1111
  %787 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !1113
  %788 = load double, double* %787, align 8, !dbg !1113
  %789 = fcmp ogt double %786, %788, !dbg !1114
  br i1 %789, label %790, label %810, !dbg !1115

; <label>:790:                                    ; preds = %775
  %791 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !1116
  %792 = load double, double* %791, align 8, !dbg !1116
  %793 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !1118
  store double %792, double* %793, align 8, !dbg !1119
  %794 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !1120
  %795 = load double, double* %794, align 8, !dbg !1120
  %796 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !1121
  store double %795, double* %796, align 8, !dbg !1122
  %797 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !1123
  store double 1.000000e+00, double* %797, align 8, !dbg !1124
  %798 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !1125
  store double 0.000000e+00, double* %798, align 8, !dbg !1126
  %799 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !1127
  %800 = load double, double* %799, align 8, !dbg !1127
  %801 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !1128
  %802 = load double, double* %801, align 8, !dbg !1128
  %803 = fsub double %800, %802, !dbg !1129
  %804 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !1130
  %805 = load double, double* %804, align 8, !dbg !1130
  %806 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !1131
  %807 = load double, double* %806, align 8, !dbg !1131
  %808 = fadd double %805, %807, !dbg !1132
  %809 = call i32 @gsl_sf_exp_err_e(double %803, double %808, %struct.gsl_sf_result_struct* %81), !dbg !1133
  br label %830, !dbg !1134

; <label>:810:                                    ; preds = %775
  %811 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !1135
  %812 = load double, double* %811, align 8, !dbg !1135
  %813 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !1137
  store double %812, double* %813, align 8, !dbg !1138
  %814 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !1139
  %815 = load double, double* %814, align 8, !dbg !1139
  %816 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !1140
  store double %815, double* %816, align 8, !dbg !1141
  %817 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !1142
  store double 1.000000e+00, double* %817, align 8, !dbg !1143
  %818 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !1144
  store double 0.000000e+00, double* %818, align 8, !dbg !1145
  %819 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 0, !dbg !1146
  %820 = load double, double* %819, align 8, !dbg !1146
  %821 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !1147
  %822 = load double, double* %821, align 8, !dbg !1147
  %823 = fsub double %820, %822, !dbg !1148
  %824 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %78, i32 0, i32 1, !dbg !1149
  %825 = load double, double* %824, align 8, !dbg !1149
  %826 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !1150
  %827 = load double, double* %826, align 8, !dbg !1150
  %828 = fadd double %825, %827, !dbg !1151
  %829 = call i32 @gsl_sf_exp_err_e(double %823, double %828, %struct.gsl_sf_result_struct* %80), !dbg !1152
  br label %830

; <label>:830:                                    ; preds = %810, %790
  %831 = load double, double* %8, align 8, !dbg !1153
  %832 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !1154
  %833 = load double, double* %832, align 8, !dbg !1154
  %834 = fmul double %831, %833, !dbg !1155
  %835 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !1156
  %836 = load double, double* %835, align 8, !dbg !1156
  %837 = fsub double %834, %836, !dbg !1157
  %838 = load i32, i32* %62, align 4, !dbg !1158
  %839 = sitofp i32 %838 to double, !dbg !1158
  %840 = fmul double 2.000000e+00, %839, !dbg !1159
  %841 = fsub double %840, 2.000000e+00, !dbg !1160
  %842 = fdiv double %837, %841, !dbg !1161
  store double %842, double* %65, align 8, !dbg !1162
  %843 = load double, double* %8, align 8, !dbg !1163
  %844 = call double @fabs(double %843) #1, !dbg !1164
  %845 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !1165
  %846 = load double, double* %845, align 8, !dbg !1165
  %847 = fmul double %844, %846, !dbg !1166
  %848 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !1167
  %849 = load double, double* %848, align 8, !dbg !1167
  %850 = fadd double %847, %849, !dbg !1168
  %851 = load i32, i32* %62, align 4, !dbg !1169
  %852 = sitofp i32 %851 to double, !dbg !1169
  %853 = fmul double 2.000000e+00, %852, !dbg !1170
  %854 = fsub double %853, 2.000000e+00, !dbg !1171
  %855 = call double @fabs(double %854) #1, !dbg !1172
  %856 = fdiv double %850, %855, !dbg !1174
  store double %856, double* %66, align 8, !dbg !1175
  %857 = load double, double* %65, align 8, !dbg !1176
  %858 = call double @fabs(double %857) #1, !dbg !1177
  %859 = fmul double 0x3CC0000000000000, %858, !dbg !1178
  %860 = load double, double* %66, align 8, !dbg !1179
  %861 = fadd double %860, %859, !dbg !1179
  store double %861, double* %66, align 8, !dbg !1179
  store i32 0, i32* %67, align 4, !dbg !1180
  br label %961, !dbg !1181

; <label>:862:                                    ; preds = %772, %766
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %82, metadata !1182, metadata !63), !dbg !1184
  call void @llvm.dbg.declare(metadata double* %83, metadata !1185, metadata !63), !dbg !1186
  store double 1.000000e+00, double* %83, align 8, !dbg !1186
  call void @llvm.dbg.declare(metadata double* %84, metadata !1187, metadata !63), !dbg !1188
  call void @llvm.dbg.declare(metadata double* %85, metadata !1189, metadata !63), !dbg !1190
  call void @llvm.dbg.declare(metadata i32* %86, metadata !1191, metadata !63), !dbg !1192
  call void @llvm.dbg.declare(metadata double* %87, metadata !1193, metadata !63), !dbg !1194
  %863 = load i32, i32* %61, align 4, !dbg !1195
  %864 = sitofp i32 %863 to double, !dbg !1195
  %865 = load i32, i32* %7, align 4, !dbg !1196
  %866 = sitofp i32 %865 to double, !dbg !1196
  %867 = load double, double* %8, align 8, !dbg !1197
  %868 = call i32 @hyperg_U_small_a_bgt0(double %864, double %866, double %867, %struct.gsl_sf_result_struct* %82, double* %87), !dbg !1198
  store i32 %868, i32* %67, align 4, !dbg !1199
  %869 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !1200
  %870 = load double, double* %869, align 8, !dbg !1200
  store double %870, double* %84, align 8, !dbg !1201
  %871 = load double, double* %87, align 8, !dbg !1202
  %872 = fsub double -0.000000e+00, %871, !dbg !1203
  %873 = call double @exp(double %872) #6, !dbg !1204
  %874 = load double, double* %83, align 8, !dbg !1205
  %875 = fmul double %874, %873, !dbg !1205
  store double %875, double* %83, align 8, !dbg !1205
  %876 = load double, double* %87, align 8, !dbg !1206
  %877 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !1207
  store double %876, double* %877, align 8, !dbg !1208
  %878 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !1209
  store double 0.000000e+00, double* %878, align 8, !dbg !1210
  %879 = load i32, i32* %61, align 4, !dbg !1211
  store i32 %879, i32* %86, align 4, !dbg !1213
  br label %880, !dbg !1214

; <label>:880:                                    ; preds = %935, %862
  %881 = load i32, i32* %86, align 4, !dbg !1215
  %882 = load i32, i32* %62, align 4, !dbg !1218
  %883 = icmp slt i32 %881, %882, !dbg !1219
  br i1 %883, label %884, label %938, !dbg !1220

; <label>:884:                                    ; preds = %880
  %885 = load double, double* %83, align 8, !dbg !1221
  %886 = load i32, i32* %7, align 4, !dbg !1223
  %887 = sitofp i32 %886 to double, !dbg !1223
  %888 = load i32, i32* %86, align 4, !dbg !1224
  %889 = sitofp i32 %888 to double, !dbg !1224
  %890 = fmul double 2.000000e+00, %889, !dbg !1225
  %891 = fsub double %887, %890, !dbg !1226
  %892 = load double, double* %8, align 8, !dbg !1227
  %893 = fsub double %891, %892, !dbg !1228
  %894 = load double, double* %84, align 8, !dbg !1229
  %895 = fmul double %893, %894, !dbg !1230
  %896 = fadd double %885, %895, !dbg !1231
  %897 = fsub double -0.000000e+00, %896, !dbg !1232
  %898 = load i32, i32* %86, align 4, !dbg !1233
  %899 = sitofp i32 %898 to double, !dbg !1233
  %900 = load i32, i32* %86, align 4, !dbg !1234
  %901 = sitofp i32 %900 to double, !dbg !1234
  %902 = fadd double 1.000000e+00, %901, !dbg !1235
  %903 = load i32, i32* %7, align 4, !dbg !1236
  %904 = sitofp i32 %903 to double, !dbg !1236
  %905 = fsub double %902, %904, !dbg !1237
  %906 = fmul double %899, %905, !dbg !1238
  %907 = fdiv double %897, %906, !dbg !1239
  store double %907, double* %85, align 8, !dbg !1240
  %908 = load double, double* %84, align 8, !dbg !1241
  store double %908, double* %83, align 8, !dbg !1242
  %909 = load double, double* %85, align 8, !dbg !1243
  store double %909, double* %84, align 8, !dbg !1244
  br label %910, !dbg !1245, !llvm.loop !1246

; <label>:910:                                    ; preds = %884
  call void @llvm.dbg.declare(metadata double* %88, metadata !1247, metadata !63), !dbg !1249
  %911 = load double, double* %84, align 8, !dbg !1250
  %912 = call double @fabs(double %911) #1, !dbg !1250
  store double %912, double* %88, align 8, !dbg !1250
  %913 = load double, double* %88, align 8, !dbg !1250
  %914 = fcmp ogt double %913, 0x5FEFFFFFFFFFFFFF, !dbg !1250
  br i1 %914, label %915, label %922, !dbg !1250

; <label>:915:                                    ; preds = %910
  %916 = load double, double* %84, align 8, !dbg !1252
  %917 = fdiv double %916, 0x5FEFFFFFFFFFFFFF, !dbg !1252
  store double %917, double* %84, align 8, !dbg !1252
  %918 = load double, double* %83, align 8, !dbg !1252
  %919 = fdiv double %918, 0x5FEFFFFFFFFFFFFF, !dbg !1252
  store double %919, double* %83, align 8, !dbg !1252
  %920 = load i32, i32* %59, align 4, !dbg !1252
  %921 = add nsw i32 %920, 1, !dbg !1252
  store i32 %921, i32* %59, align 4, !dbg !1252
  br label %933, !dbg !1252

; <label>:922:                                    ; preds = %910
  %923 = load double, double* %88, align 8, !dbg !1256
  %924 = fcmp olt double %923, 0x1FF0000000000001, !dbg !1256
  br i1 %924, label %925, label %932, !dbg !1256

; <label>:925:                                    ; preds = %922
  %926 = load double, double* %84, align 8, !dbg !1259
  %927 = fmul double %926, 0x5FEFFFFFFFFFFFFF, !dbg !1259
  store double %927, double* %84, align 8, !dbg !1259
  %928 = load double, double* %83, align 8, !dbg !1259
  %929 = fmul double %928, 0x5FEFFFFFFFFFFFFF, !dbg !1259
  store double %929, double* %83, align 8, !dbg !1259
  %930 = load i32, i32* %59, align 4, !dbg !1259
  %931 = add nsw i32 %930, -1, !dbg !1259
  store i32 %931, i32* %59, align 4, !dbg !1259
  br label %932, !dbg !1259

; <label>:932:                                    ; preds = %925, %922
  br label %933

; <label>:933:                                    ; preds = %932, %915
  br label %934, !dbg !1262

; <label>:934:                                    ; preds = %933
  br label %935, !dbg !1264

; <label>:935:                                    ; preds = %934
  %936 = load i32, i32* %86, align 4, !dbg !1265
  %937 = add nsw i32 %936, 1, !dbg !1265
  store i32 %937, i32* %86, align 4, !dbg !1265
  br label %880, !dbg !1267, !llvm.loop !1268

; <label>:938:                                    ; preds = %880
  %939 = load double, double* %84, align 8, !dbg !1270
  store double %939, double* %65, align 8, !dbg !1271
  %940 = load double, double* %84, align 8, !dbg !1272
  %941 = call double @fabs(double %940) #1, !dbg !1273
  %942 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 1, !dbg !1274
  %943 = load double, double* %942, align 8, !dbg !1274
  %944 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %82, i32 0, i32 0, !dbg !1275
  %945 = load double, double* %944, align 8, !dbg !1275
  %946 = fdiv double %943, %945, !dbg !1276
  %947 = call double @fabs(double %946) #1, !dbg !1277
  %948 = fmul double %941, %947, !dbg !1279
  store double %948, double* %66, align 8, !dbg !1280
  %949 = load i32, i32* %62, align 4, !dbg !1281
  %950 = load i32, i32* %61, align 4, !dbg !1282
  %951 = sub nsw i32 %949, %950, !dbg !1283
  %952 = sitofp i32 %951 to double, !dbg !1281
  %953 = call double @fabs(double %952) #1, !dbg !1284
  %954 = fadd double %953, 1.000000e+00, !dbg !1285
  %955 = fmul double 0x3CC0000000000000, %954, !dbg !1286
  %956 = load double, double* %65, align 8, !dbg !1287
  %957 = call double @fabs(double %956) #1, !dbg !1288
  %958 = fmul double %955, %957, !dbg !1289
  %959 = load double, double* %66, align 8, !dbg !1290
  %960 = fadd double %959, %958, !dbg !1290
  store double %960, double* %66, align 8, !dbg !1290
  br label %961

; <label>:961:                                    ; preds = %938, %830
  br label %962

; <label>:962:                                    ; preds = %961, %761
  %963 = load double, double* %63, align 8, !dbg !1291
  %964 = fcmp oeq double %963, 0.000000e+00, !dbg !1293
  br i1 %964, label %965, label %974, !dbg !1294

; <label>:965:                                    ; preds = %962
  %966 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1295
  %967 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %966, i32 0, i32 0, !dbg !1297
  store double 0.000000e+00, double* %967, align 8, !dbg !1298
  %968 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1299
  %969 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %968, i32 0, i32 1, !dbg !1300
  store double 0.000000e+00, double* %969, align 8, !dbg !1301
  %970 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1302
  %971 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %970, i32 0, i32 2, !dbg !1303
  store i32 0, i32* %971, align 8, !dbg !1304
  br label %972, !dbg !1305, !llvm.loop !1306

; <label>:972:                                    ; preds = %965
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1127, i32 12), !dbg !1307
  store i32 12, i32* %5, align 4, !dbg !1307
  br label %1086, !dbg !1307
                                                  ; No predecessors!
  br label %1078, !dbg !1310

; <label>:974:                                    ; preds = %962
  %975 = load double, double* %65, align 8, !dbg !1311
  %976 = fcmp oeq double %975, 0.000000e+00, !dbg !1313
  br i1 %976, label %977, label %988, !dbg !1314

; <label>:977:                                    ; preds = %974
  br label %978, !dbg !1315, !llvm.loop !1317

; <label>:978:                                    ; preds = %977
  %979 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1318
  %980 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %979, i32 0, i32 0, !dbg !1318
  store double 0.000000e+00, double* %980, align 8, !dbg !1318
  %981 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1318
  %982 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %981, i32 0, i32 1, !dbg !1318
  store double 0x10000000000000, double* %982, align 8, !dbg !1318
  %983 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1318
  %984 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %983, i32 0, i32 2, !dbg !1318
  store i32 0, i32* %984, align 8, !dbg !1318
  br label %985, !dbg !1318, !llvm.loop !1321

; <label>:985:                                    ; preds = %978
  call void @gsl_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1131, i32 15), !dbg !1323
  store i32 15, i32* %5, align 4, !dbg !1323
  br label %1086, !dbg !1323
                                                  ; No predecessors!
  br label %987, !dbg !1326

; <label>:987:                                    ; preds = %986
  br label %1077, !dbg !1328

; <label>:988:                                    ; preds = %974
  call void @llvm.dbg.declare(metadata double* %89, metadata !1329, metadata !63), !dbg !1331
  %989 = load i32, i32* %59, align 4, !dbg !1332
  %990 = load i32, i32* %60, align 4, !dbg !1333
  %991 = sub nsw i32 %989, %990, !dbg !1334
  %992 = sitofp i32 %991 to double, !dbg !1335
  %993 = call double @log(double 0x5FEFFFFFFFFFFFFF) #6, !dbg !1336
  %994 = fmul double %992, %993, !dbg !1337
  store double %994, double* %89, align 8, !dbg !1331
  call void @llvm.dbg.declare(metadata double* %90, metadata !1338, metadata !63), !dbg !1339
  %995 = load double, double* %65, align 8, !dbg !1340
  %996 = call double @fabs(double %995) #1, !dbg !1341
  %997 = call double @log(double %996) #6, !dbg !1342
  store double %997, double* %90, align 8, !dbg !1339
  call void @llvm.dbg.declare(metadata double* %91, metadata !1344, metadata !63), !dbg !1345
  %998 = load double, double* %66, align 8, !dbg !1346
  %999 = load double, double* %65, align 8, !dbg !1347
  %1000 = fdiv double %998, %999, !dbg !1348
  %1001 = call double @fabs(double %1000) #1, !dbg !1349
  %1002 = fadd double 0x3CB0000000000000, %1001, !dbg !1350
  store double %1002, double* %91, align 8, !dbg !1345
  call void @llvm.dbg.declare(metadata double* %92, metadata !1351, metadata !63), !dbg !1352
  %1003 = load double, double* %63, align 8, !dbg !1353
  %1004 = call double @fabs(double %1003) #1, !dbg !1354
  %1005 = call double @log(double %1004) #6, !dbg !1355
  store double %1005, double* %92, align 8, !dbg !1352
  call void @llvm.dbg.declare(metadata double* %93, metadata !1356, metadata !63), !dbg !1357
  %1006 = load double, double* %64, align 8, !dbg !1358
  %1007 = load double, double* %63, align 8, !dbg !1359
  %1008 = fdiv double %1006, %1007, !dbg !1360
  %1009 = call double @fabs(double %1008) #1, !dbg !1361
  %1010 = fadd double 0x3CB0000000000000, %1009, !dbg !1362
  store double %1010, double* %93, align 8, !dbg !1357
  call void @llvm.dbg.declare(metadata double* %94, metadata !1363, metadata !63), !dbg !1364
  %1011 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !1365
  %1012 = load double, double* %1011, align 8, !dbg !1365
  %1013 = load double, double* %90, align 8, !dbg !1366
  %1014 = fadd double %1012, %1013, !dbg !1367
  %1015 = load double, double* %92, align 8, !dbg !1368
  %1016 = fsub double %1014, %1015, !dbg !1369
  %1017 = load double, double* %89, align 8, !dbg !1370
  %1018 = fadd double %1016, %1017, !dbg !1371
  store double %1018, double* %94, align 8, !dbg !1364
  call void @llvm.dbg.declare(metadata double* %95, metadata !1372, metadata !63), !dbg !1373
  %1019 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 1, !dbg !1374
  %1020 = load double, double* %1019, align 8, !dbg !1374
  %1021 = load double, double* %91, align 8, !dbg !1375
  %1022 = fadd double %1020, %1021, !dbg !1376
  %1023 = load double, double* %93, align 8, !dbg !1377
  %1024 = fadd double %1022, %1023, !dbg !1378
  %1025 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %69, i32 0, i32 0, !dbg !1379
  %1026 = load double, double* %1025, align 8, !dbg !1379
  %1027 = call double @fabs(double %1026) #1, !dbg !1380
  %1028 = load double, double* %90, align 8, !dbg !1381
  %1029 = call double @fabs(double %1028) #1, !dbg !1382
  %1030 = fadd double %1027, %1029, !dbg !1383
  %1031 = load double, double* %92, align 8, !dbg !1384
  %1032 = call double @fabs(double %1031) #1, !dbg !1385
  %1033 = fadd double %1030, %1032, !dbg !1387
  %1034 = load double, double* %89, align 8, !dbg !1388
  %1035 = call double @fabs(double %1034) #1, !dbg !1389
  %1036 = fadd double %1033, %1035, !dbg !1391
  %1037 = fmul double 0x3CC0000000000000, %1036, !dbg !1392
  %1038 = fadd double %1024, %1037, !dbg !1393
  store double %1038, double* %95, align 8, !dbg !1373
  call void @llvm.dbg.declare(metadata double* %96, metadata !1394, metadata !63), !dbg !1395
  %1039 = load double, double* %65, align 8, !dbg !1396
  %1040 = fcmp oge double %1039, 0.000000e+00, !dbg !1396
  %1041 = select i1 %1040, i32 1, i32 -1, !dbg !1396
  %1042 = load double, double* %63, align 8, !dbg !1397
  %1043 = fcmp oge double %1042, 0.000000e+00, !dbg !1397
  %1044 = select i1 %1043, i32 1, i32 -1, !dbg !1397
  %1045 = mul nsw i32 %1041, %1044, !dbg !1398
  %1046 = sitofp i32 %1045 to double, !dbg !1396
  store double %1046, double* %96, align 8, !dbg !1395
  call void @llvm.dbg.declare(metadata i32* %97, metadata !1399, metadata !63), !dbg !1400
  %1047 = load double, double* %94, align 8, !dbg !1401
  %1048 = load double, double* %95, align 8, !dbg !1402
  %1049 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1403
  %1050 = call i32 @gsl_sf_exp_err_e10_e(double %1047, double %1048, %struct.gsl_sf_result_e10_struct* %1049), !dbg !1404
  store i32 %1050, i32* %97, align 4, !dbg !1400
  %1051 = load double, double* %96, align 8, !dbg !1405
  %1052 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1406
  %1053 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %1052, i32 0, i32 0, !dbg !1407
  %1054 = load double, double* %1053, align 8, !dbg !1408
  %1055 = fmul double %1054, %1051, !dbg !1408
  store double %1055, double* %1053, align 8, !dbg !1408
  %1056 = load i32, i32* %97, align 4, !dbg !1409
  %1057 = icmp ne i32 %1056, 0, !dbg !1409
  br i1 %1057, label %1058, label %1060, !dbg !1409

; <label>:1058:                                   ; preds = %988
  %1059 = load i32, i32* %97, align 4, !dbg !1410
  br label %1075, !dbg !1410

; <label>:1060:                                   ; preds = %988
  %1061 = load i32, i32* %68, align 4, !dbg !1411
  %1062 = icmp ne i32 %1061, 0, !dbg !1411
  br i1 %1062, label %1063, label %1065, !dbg !1411

; <label>:1063:                                   ; preds = %1060
  %1064 = load i32, i32* %68, align 4, !dbg !1412
  br label %1073, !dbg !1412

; <label>:1065:                                   ; preds = %1060
  %1066 = load i32, i32* %67, align 4, !dbg !1413
  %1067 = icmp ne i32 %1066, 0, !dbg !1413
  br i1 %1067, label %1068, label %1070, !dbg !1413

; <label>:1068:                                   ; preds = %1065
  %1069 = load i32, i32* %67, align 4, !dbg !1415
  br label %1071, !dbg !1415

; <label>:1070:                                   ; preds = %1065
  br label %1071, !dbg !1417

; <label>:1071:                                   ; preds = %1070, %1068
  %1072 = phi i32 [ %1069, %1068 ], [ 0, %1070 ], !dbg !1419
  br label %1073, !dbg !1419

; <label>:1073:                                   ; preds = %1071, %1063
  %1074 = phi i32 [ %1064, %1063 ], [ %1072, %1071 ], !dbg !1421
  br label %1075, !dbg !1421

; <label>:1075:                                   ; preds = %1073, %1058
  %1076 = phi i32 [ %1059, %1058 ], [ %1074, %1073 ], !dbg !1423
  store i32 %1076, i32* %5, align 4, !dbg !1425
  br label %1086, !dbg !1425

; <label>:1077:                                   ; preds = %987
  br label %1078

; <label>:1078:                                   ; preds = %1077, %973
  br label %1079

; <label>:1079:                                   ; preds = %1078, %652
  br label %1080

; <label>:1080:                                   ; preds = %1079
  br label %1081

; <label>:1081:                                   ; preds = %1080
  br label %1082

; <label>:1082:                                   ; preds = %1081
  br label %1083

; <label>:1083:                                   ; preds = %1082
  br label %1084

; <label>:1084:                                   ; preds = %1083
  br label %1085

; <label>:1085:                                   ; preds = %1084
  br label %1086

; <label>:1086:                                   ; preds = %100, %110, %143, %206, %236, %319, %495, %599, %650, %972, %985, %1075, %1085
  %1087 = load i32, i32* %5, align 4, !dbg !1426
  ret i32 %1087, !dbg !1426
}

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare i32 @gsl_sf_exp_mult_err_e10_e(double, double, double, double, %struct.gsl_sf_result_e10_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_U_e10_e(double, double, double, %struct.gsl_sf_result_e10_struct*) #0 !dbg !1427 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_e10_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.gsl_sf_result_e10_struct, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1430, metadata !63), !dbg !1431
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1432, metadata !63), !dbg !1433
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1434, metadata !63), !dbg !1435
  store %struct.gsl_sf_result_e10_struct* %3, %struct.gsl_sf_result_e10_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct** %9, metadata !1436, metadata !63), !dbg !1437
  call void @llvm.dbg.declare(metadata double* %10, metadata !1438, metadata !63), !dbg !1439
  %23 = load double, double* %6, align 8, !dbg !1440
  %24 = fadd double %23, 5.000000e-01, !dbg !1441
  %25 = call double @floor(double %24) #1, !dbg !1442
  store double %25, double* %10, align 8, !dbg !1439
  call void @llvm.dbg.declare(metadata double* %11, metadata !1443, metadata !63), !dbg !1444
  %26 = load double, double* %7, align 8, !dbg !1445
  %27 = fadd double %26, 5.000000e-01, !dbg !1446
  %28 = call double @floor(double %27) #1, !dbg !1447
  store double %28, double* %11, align 8, !dbg !1444
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1448, metadata !63), !dbg !1449
  %29 = load double, double* %6, align 8, !dbg !1450
  %30 = load double, double* %10, align 8, !dbg !1451
  %31 = fsub double %29, %30, !dbg !1452
  %32 = call double @fabs(double %31) #1, !dbg !1453
  %33 = fcmp olt double %32, 0x3D4F400000000000, !dbg !1454
  %34 = zext i1 %33 to i32, !dbg !1454
  store i32 %34, i32* %12, align 4, !dbg !1449
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1455, metadata !63), !dbg !1456
  %35 = load double, double* %7, align 8, !dbg !1457
  %36 = load double, double* %11, align 8, !dbg !1458
  %37 = fsub double %35, %36, !dbg !1459
  %38 = call double @fabs(double %37) #1, !dbg !1460
  %39 = fcmp olt double %38, 0x3D4F400000000000, !dbg !1461
  %40 = zext i1 %39 to i32, !dbg !1461
  store i32 %40, i32* %13, align 4, !dbg !1456
  %41 = load double, double* %8, align 8, !dbg !1462
  %42 = fcmp oeq double %41, 0.000000e+00, !dbg !1464
  br i1 %42, label %43, label %57, !dbg !1465

; <label>:43:                                     ; preds = %4
  %44 = load double, double* %7, align 8, !dbg !1466
  %45 = fcmp oge double %44, 1.000000e+00, !dbg !1468
  br i1 %45, label %46, label %57, !dbg !1469

; <label>:46:                                     ; preds = %43
  br label %47, !dbg !1470, !llvm.loop !1472

; <label>:47:                                     ; preds = %46
  %48 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1473
  %49 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %48, i32 0, i32 0, !dbg !1473
  store double 0x7FF8000000000000, double* %49, align 8, !dbg !1473
  %50 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1473
  %51 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %50, i32 0, i32 1, !dbg !1473
  store double 0x7FF8000000000000, double* %51, align 8, !dbg !1473
  %52 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1473
  %53 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %52, i32 0, i32 2, !dbg !1473
  store i32 0, i32* %53, align 8, !dbg !1473
  br label %54, !dbg !1473, !llvm.loop !1476

; <label>:54:                                     ; preds = %47
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1701, i32 1), !dbg !1478
  store i32 1, i32* %5, align 4, !dbg !1478
  br label %183, !dbg !1478
                                                  ; No predecessors!
  br label %56, !dbg !1481

; <label>:56:                                     ; preds = %55
  br label %183, !dbg !1483

; <label>:57:                                     ; preds = %43, %4
  %58 = load double, double* %6, align 8, !dbg !1484
  %59 = fcmp oeq double %58, 0.000000e+00, !dbg !1486
  br i1 %59, label %60, label %67, !dbg !1487

; <label>:60:                                     ; preds = %57
  %61 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1488
  %62 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %61, i32 0, i32 0, !dbg !1490
  store double 1.000000e+00, double* %62, align 8, !dbg !1491
  %63 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1492
  %64 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %63, i32 0, i32 1, !dbg !1493
  store double 0.000000e+00, double* %64, align 8, !dbg !1494
  %65 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1495
  %66 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %65, i32 0, i32 2, !dbg !1496
  store i32 0, i32* %66, align 8, !dbg !1497
  store i32 0, i32* %5, align 4, !dbg !1498
  br label %183, !dbg !1498

; <label>:67:                                     ; preds = %57
  %68 = load double, double* %8, align 8, !dbg !1499
  %69 = fcmp oeq double %68, 0.000000e+00, !dbg !1501
  br i1 %69, label %70, label %75, !dbg !1502

; <label>:70:                                     ; preds = %67
  %71 = load double, double* %6, align 8, !dbg !1503
  %72 = load double, double* %7, align 8, !dbg !1505
  %73 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1506
  %74 = call i32 @hyperg_U_origin(double %71, double %72, %struct.gsl_sf_result_e10_struct* %73), !dbg !1507
  store i32 %74, i32* %5, align 4, !dbg !1508
  br label %183, !dbg !1508

; <label>:75:                                     ; preds = %67
  %76 = load i32, i32* %12, align 4, !dbg !1509
  %77 = icmp ne i32 %76, 0, !dbg !1509
  br i1 %77, label %78, label %99, !dbg !1511

; <label>:78:                                     ; preds = %75
  %79 = load double, double* %7, align 8, !dbg !1512
  %80 = load double, double* %6, align 8, !dbg !1514
  %81 = fadd double %80, 1.000000e+00, !dbg !1515
  %82 = fcmp oeq double %79, %81, !dbg !1516
  br i1 %82, label %83, label %99, !dbg !1517

; <label>:83:                                     ; preds = %78
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1518, metadata !63), !dbg !1520
  %84 = load double, double* %8, align 8, !dbg !1521
  %85 = load double, double* %6, align 8, !dbg !1522
  %86 = fsub double -0.000000e+00, %85, !dbg !1523
  %87 = fptosi double %86 to i32, !dbg !1523
  %88 = call i32 @gsl_sf_pow_int_e(double %84, i32 %87, %struct.gsl_sf_result_struct* %14), !dbg !1524
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1525
  %90 = load double, double* %89, align 8, !dbg !1525
  %91 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1526
  %92 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %91, i32 0, i32 0, !dbg !1527
  store double %90, double* %92, align 8, !dbg !1528
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1529
  %94 = load double, double* %93, align 8, !dbg !1529
  %95 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1530
  %96 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %95, i32 0, i32 1, !dbg !1531
  store double %94, double* %96, align 8, !dbg !1532
  %97 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1533
  %98 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %97, i32 0, i32 2, !dbg !1534
  store i32 0, i32* %98, align 8, !dbg !1535
  store i32 0, i32* %5, align 4, !dbg !1536
  br label %183, !dbg !1536

; <label>:99:                                     ; preds = %78, %75
  %100 = load i32, i32* %12, align 4, !dbg !1537
  %101 = icmp ne i32 %100, 0, !dbg !1537
  br i1 %101, label %102, label %113, !dbg !1539

; <label>:102:                                    ; preds = %99
  %103 = load i32, i32* %13, align 4, !dbg !1540
  %104 = icmp ne i32 %103, 0, !dbg !1540
  br i1 %104, label %105, label %113, !dbg !1542

; <label>:105:                                    ; preds = %102
  %106 = load double, double* %10, align 8, !dbg !1543
  %107 = fptosi double %106 to i32, !dbg !1543
  %108 = load double, double* %11, align 8, !dbg !1545
  %109 = fptosi double %108 to i32, !dbg !1545
  %110 = load double, double* %8, align 8, !dbg !1546
  %111 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1547
  %112 = call i32 @gsl_sf_hyperg_U_int_e10_e(i32 %107, i32 %109, double %110, %struct.gsl_sf_result_e10_struct* %111), !dbg !1548
  store i32 %112, i32* %5, align 4, !dbg !1549
  br label %183, !dbg !1549

; <label>:113:                                    ; preds = %102, %99
  %114 = load double, double* %8, align 8, !dbg !1550
  %115 = fcmp olt double %114, 0.000000e+00, !dbg !1552
  br i1 %115, label %116, label %122, !dbg !1553

; <label>:116:                                    ; preds = %113
  %117 = load double, double* %6, align 8, !dbg !1554
  %118 = load double, double* %7, align 8, !dbg !1556
  %119 = load double, double* %8, align 8, !dbg !1557
  %120 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1558
  %121 = call i32 @hyperg_U_negx(double %117, double %118, double %119, %struct.gsl_sf_result_e10_struct* %120), !dbg !1559
  store i32 %121, i32* %5, align 4, !dbg !1560
  br label %183, !dbg !1560

; <label>:122:                                    ; preds = %113
  %123 = load double, double* %7, align 8, !dbg !1561
  %124 = fcmp oge double %123, 1.000000e+00, !dbg !1564
  br i1 %124, label %125, label %131, !dbg !1565

; <label>:125:                                    ; preds = %122
  %126 = load double, double* %6, align 8, !dbg !1566
  %127 = load double, double* %7, align 8, !dbg !1568
  %128 = load double, double* %8, align 8, !dbg !1569
  %129 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1570
  %130 = call i32 @hyperg_U_bge1(double %126, double %127, double %128, %struct.gsl_sf_result_e10_struct* %129), !dbg !1571
  store i32 %130, i32* %5, align 4, !dbg !1572
  br label %183, !dbg !1572

; <label>:131:                                    ; preds = %122
  call void @llvm.dbg.declare(metadata double* %15, metadata !1573, metadata !63), !dbg !1575
  %132 = load double, double* %8, align 8, !dbg !1576
  %133 = call double @log(double %132) #6, !dbg !1577
  store double %133, double* %15, align 8, !dbg !1575
  call void @llvm.dbg.declare(metadata double* %16, metadata !1578, metadata !63), !dbg !1579
  %134 = load double, double* %7, align 8, !dbg !1580
  %135 = fsub double 1.000000e+00, %134, !dbg !1581
  %136 = load double, double* %15, align 8, !dbg !1582
  %137 = fmul double %135, %136, !dbg !1583
  store double %137, double* %16, align 8, !dbg !1579
  call void @llvm.dbg.declare(metadata double* %17, metadata !1584, metadata !63), !dbg !1585
  %138 = load double, double* %15, align 8, !dbg !1586
  %139 = call double @fabs(double %138) #1, !dbg !1587
  %140 = fmul double %139, 2.000000e+00, !dbg !1588
  %141 = fmul double %140, 0x3CB0000000000000, !dbg !1589
  %142 = load double, double* %7, align 8, !dbg !1590
  %143 = call double @fabs(double %142) #1, !dbg !1591
  %144 = fadd double 1.000000e+00, %143, !dbg !1593
  %145 = fmul double %141, %144, !dbg !1594
  store double %145, double* %17, align 8, !dbg !1585
  call void @llvm.dbg.declare(metadata double* %18, metadata !1595, metadata !63), !dbg !1596
  %146 = load double, double* %6, align 8, !dbg !1597
  %147 = fadd double 1.000000e+00, %146, !dbg !1598
  %148 = load double, double* %7, align 8, !dbg !1599
  %149 = fsub double %147, %148, !dbg !1600
  store double %149, double* %18, align 8, !dbg !1596
  call void @llvm.dbg.declare(metadata double* %19, metadata !1601, metadata !63), !dbg !1602
  %150 = load double, double* %7, align 8, !dbg !1603
  %151 = fsub double 2.000000e+00, %150, !dbg !1604
  store double %151, double* %19, align 8, !dbg !1602
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct* %20, metadata !1605, metadata !63), !dbg !1606
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1607, metadata !63), !dbg !1608
  %152 = load double, double* %18, align 8, !dbg !1609
  %153 = load double, double* %19, align 8, !dbg !1610
  %154 = load double, double* %8, align 8, !dbg !1611
  %155 = call i32 @hyperg_U_bge1(double %152, double %153, double %154, %struct.gsl_sf_result_e10_struct* %20), !dbg !1612
  store i32 %155, i32* %21, align 4, !dbg !1608
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1613, metadata !63), !dbg !1614
  %156 = load double, double* %16, align 8, !dbg !1615
  %157 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %20, i32 0, i32 2, !dbg !1616
  %158 = load i32, i32* %157, align 8, !dbg !1616
  %159 = sitofp i32 %158 to double, !dbg !1617
  %160 = fmul double %159, 0x40026BB1BBB55516, !dbg !1618
  %161 = fadd double %156, %160, !dbg !1619
  %162 = load double, double* %17, align 8, !dbg !1620
  %163 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %20, i32 0, i32 0, !dbg !1621
  %164 = load double, double* %163, align 8, !dbg !1621
  %165 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %20, i32 0, i32 1, !dbg !1622
  %166 = load double, double* %165, align 8, !dbg !1622
  %167 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1623
  %168 = call i32 @gsl_sf_exp_mult_err_e10_e(double %161, double %162, double %164, double %166, %struct.gsl_sf_result_e10_struct* %167), !dbg !1624
  store i32 %168, i32* %22, align 4, !dbg !1614
  %169 = load i32, i32* %22, align 4, !dbg !1625
  %170 = icmp ne i32 %169, 0, !dbg !1625
  br i1 %170, label %171, label %173, !dbg !1625

; <label>:171:                                    ; preds = %131
  %172 = load i32, i32* %22, align 4, !dbg !1626
  br label %181, !dbg !1626

; <label>:173:                                    ; preds = %131
  %174 = load i32, i32* %21, align 4, !dbg !1627
  %175 = icmp ne i32 %174, 0, !dbg !1627
  br i1 %175, label %176, label %178, !dbg !1627

; <label>:176:                                    ; preds = %173
  %177 = load i32, i32* %21, align 4, !dbg !1629
  br label %179, !dbg !1629

; <label>:178:                                    ; preds = %173
  br label %179, !dbg !1631

; <label>:179:                                    ; preds = %178, %176
  %180 = phi i32 [ %177, %176 ], [ 0, %178 ], !dbg !1633
  br label %181, !dbg !1633

; <label>:181:                                    ; preds = %179, %171
  %182 = phi i32 [ %172, %171 ], [ %180, %179 ], !dbg !1635
  store i32 %182, i32* %5, align 4, !dbg !1637
  br label %183, !dbg !1637

; <label>:183:                                    ; preds = %54, %60, %70, %83, %105, %116, %125, %181, %56
  %184 = load i32, i32* %5, align 4, !dbg !1638
  ret i32 %184, !dbg !1638
}

; Function Attrs: nounwind readnone
declare double @floor(double) #4

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_origin(double, double, %struct.gsl_sf_result_e10_struct*) #0 !dbg !1639 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_e10_struct*, align 8
  %7 = alloca %struct.gsl_sf_result_struct, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1642, metadata !63), !dbg !1643
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1644, metadata !63), !dbg !1645
  store %struct.gsl_sf_result_e10_struct* %2, %struct.gsl_sf_result_e10_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct** %6, metadata !1646, metadata !63), !dbg !1647
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %7, metadata !1648, metadata !63), !dbg !1649
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1650, metadata !63), !dbg !1651
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1652, metadata !63), !dbg !1653
  %12 = load double, double* %4, align 8, !dbg !1654
  %13 = fadd double 1.000000e+00, %12, !dbg !1655
  %14 = load double, double* %5, align 8, !dbg !1656
  %15 = fsub double %13, %14, !dbg !1657
  %16 = call i32 @gsl_sf_gammainv_e(double %15, %struct.gsl_sf_result_struct* %7), !dbg !1658
  store i32 %16, i32* %9, align 4, !dbg !1653
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1659, metadata !63), !dbg !1660
  %17 = load double, double* %5, align 8, !dbg !1661
  %18 = call i32 @gsl_sf_gammainv_e(double %17, %struct.gsl_sf_result_struct* %8), !dbg !1662
  store i32 %18, i32* %10, align 4, !dbg !1660
  call void @llvm.dbg.declare(metadata double* %11, metadata !1663, metadata !63), !dbg !1664
  %19 = load double, double* %5, align 8, !dbg !1665
  %20 = fmul double 0x400921FB54442D18, %19, !dbg !1666
  %21 = call double @sin(double %20) #6, !dbg !1667
  %22 = fdiv double 0x400921FB54442D18, %21, !dbg !1668
  store double %22, double* %11, align 8, !dbg !1664
  %23 = load double, double* %11, align 8, !dbg !1669
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 0, !dbg !1670
  %25 = load double, double* %24, align 8, !dbg !1670
  %26 = fmul double %23, %25, !dbg !1671
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1672
  %28 = load double, double* %27, align 8, !dbg !1672
  %29 = fmul double %26, %28, !dbg !1673
  %30 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %6, align 8, !dbg !1674
  %31 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %30, i32 0, i32 0, !dbg !1675
  store double %29, double* %31, align 8, !dbg !1676
  %32 = load double, double* %11, align 8, !dbg !1677
  %33 = call double @fabs(double %32) #1, !dbg !1678
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %7, i32 0, i32 1, !dbg !1679
  %35 = load double, double* %34, align 8, !dbg !1679
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 1, !dbg !1680
  %37 = load double, double* %36, align 8, !dbg !1680
  %38 = fadd double %35, %37, !dbg !1681
  %39 = fmul double %33, %38, !dbg !1682
  %40 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %6, align 8, !dbg !1683
  %41 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %40, i32 0, i32 1, !dbg !1684
  store double %39, double* %41, align 8, !dbg !1685
  %42 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %6, align 8, !dbg !1686
  %43 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %42, i32 0, i32 2, !dbg !1687
  store i32 0, i32* %43, align 8, !dbg !1688
  %44 = load i32, i32* %9, align 4, !dbg !1689
  %45 = icmp ne i32 %44, 0, !dbg !1689
  br i1 %45, label %46, label %48, !dbg !1689

; <label>:46:                                     ; preds = %3
  %47 = load i32, i32* %9, align 4, !dbg !1690
  br label %56, !dbg !1690

; <label>:48:                                     ; preds = %3
  %49 = load i32, i32* %10, align 4, !dbg !1692
  %50 = icmp ne i32 %49, 0, !dbg !1692
  br i1 %50, label %51, label %53, !dbg !1692

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %10, align 4, !dbg !1694
  br label %54, !dbg !1694

; <label>:53:                                     ; preds = %48
  br label %54, !dbg !1696

; <label>:54:                                     ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ], !dbg !1698
  br label %56, !dbg !1698

; <label>:56:                                     ; preds = %54, %46
  %57 = phi i32 [ %47, %46 ], [ %55, %54 ], !dbg !1700
  ret i32 %57, !dbg !1702
}

declare i32 @gsl_sf_pow_int_e(double, i32, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_negx(double, double, double, %struct.gsl_sf_result_e10_struct*) #0 !dbg !1703 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_e10_struct*, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1704, metadata !63), !dbg !1705
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1706, metadata !63), !dbg !1707
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1708, metadata !63), !dbg !1709
  store %struct.gsl_sf_result_e10_struct* %3, %struct.gsl_sf_result_e10_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct** %9, metadata !1710, metadata !63), !dbg !1711
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !1712, metadata !63), !dbg !1713
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !1714, metadata !63), !dbg !1715
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1716, metadata !63), !dbg !1717
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1718, metadata !63), !dbg !1719
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1720, metadata !63), !dbg !1721
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1722, metadata !63), !dbg !1723
  %26 = load double, double* %6, align 8, !dbg !1724
  %27 = load double, double* %6, align 8, !dbg !1725
  %28 = call double @floor(double %27) #1, !dbg !1726
  %29 = fcmp oeq double %26, %28, !dbg !1727
  %30 = zext i1 %29 to i32, !dbg !1727
  store i32 %30, i32* %15, align 4, !dbg !1723
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1728, metadata !63), !dbg !1729
  %31 = load double, double* %7, align 8, !dbg !1730
  %32 = load double, double* %7, align 8, !dbg !1731
  %33 = call double @floor(double %32) #1, !dbg !1732
  %34 = fcmp oeq double %31, %33, !dbg !1733
  %35 = zext i1 %34 to i32, !dbg !1733
  store i32 %35, i32* %16, align 4, !dbg !1729
  call void @llvm.dbg.declare(metadata double* %17, metadata !1734, metadata !63), !dbg !1735
  store double 0.000000e+00, double* %17, align 8, !dbg !1735
  call void @llvm.dbg.declare(metadata double* %18, metadata !1736, metadata !63), !dbg !1737
  store double 0.000000e+00, double* %18, align 8, !dbg !1737
  call void @llvm.dbg.declare(metadata double* %19, metadata !1738, metadata !63), !dbg !1739
  store double 0.000000e+00, double* %19, align 8, !dbg !1739
  call void @llvm.dbg.declare(metadata double* %20, metadata !1740, metadata !63), !dbg !1741
  store double 0.000000e+00, double* %20, align 8, !dbg !1741
  %36 = load i32, i32* %16, align 4, !dbg !1742
  %37 = icmp ne i32 %36, 0, !dbg !1742
  br i1 %37, label %38, label %58, !dbg !1744

; <label>:38:                                     ; preds = %4
  %39 = load double, double* %7, align 8, !dbg !1745
  %40 = fcmp ole double %39, 0.000000e+00, !dbg !1747
  br i1 %40, label %41, label %58, !dbg !1748

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %15, align 4, !dbg !1749
  %43 = icmp ne i32 %42, 0, !dbg !1749
  br i1 %43, label %44, label %51, !dbg !1751

; <label>:44:                                     ; preds = %41
  %45 = load double, double* %6, align 8, !dbg !1752
  %46 = fcmp ole double %45, 0.000000e+00, !dbg !1754
  br i1 %46, label %47, label %51, !dbg !1755

; <label>:47:                                     ; preds = %44
  %48 = load double, double* %6, align 8, !dbg !1756
  %49 = load double, double* %7, align 8, !dbg !1758
  %50 = fcmp oge double %48, %49, !dbg !1759
  br i1 %50, label %58, label %51, !dbg !1760

; <label>:51:                                     ; preds = %47, %44, %41
  %52 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1761
  %53 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %52, i32 0, i32 0, !dbg !1763
  store double 0x7FF8000000000000, double* %53, align 8, !dbg !1764
  %54 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1765
  %55 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %54, i32 0, i32 1, !dbg !1766
  store double 0x7FF8000000000000, double* %55, align 8, !dbg !1767
  br label %56, !dbg !1768, !llvm.loop !1769

; <label>:56:                                     ; preds = %51
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1548, i32 24), !dbg !1770
  store i32 24, i32* %5, align 4, !dbg !1770
  br label %252, !dbg !1770
                                                  ; No predecessors!
  br label %112, !dbg !1773

; <label>:58:                                     ; preds = %47, %38, %4
  %59 = load double, double* %6, align 8, !dbg !1774
  %60 = fadd double 1.000000e+00, %59, !dbg !1776
  %61 = load double, double* %7, align 8, !dbg !1777
  %62 = fsub double %60, %61, !dbg !1778
  %63 = load double, double* %6, align 8, !dbg !1779
  %64 = fsub double -0.000000e+00, %63, !dbg !1780
  %65 = call i32 @gsl_sf_poch_e(double %62, double %64, %struct.gsl_sf_result_struct* %10), !dbg !1781
  store i32 %65, i32* %12, align 4, !dbg !1782
  %66 = load i32, i32* %12, align 4, !dbg !1783
  store i32 %66, i32* %14, align 4, !dbg !1784
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1785
  %68 = load double, double* %67, align 8, !dbg !1785
  %69 = fcmp une double %68, 0.000000e+00, !dbg !1787
  br i1 %69, label %70, label %111, !dbg !1788

; <label>:70:                                     ; preds = %58
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !1789, metadata !63), !dbg !1791
  call void @llvm.dbg.declare(metadata i32* %22, metadata !1792, metadata !63), !dbg !1793
  %71 = load double, double* %6, align 8, !dbg !1794
  %72 = load double, double* %7, align 8, !dbg !1795
  %73 = load double, double* %8, align 8, !dbg !1796
  %74 = call i32 @gsl_sf_hyperg_1F1_e(double %71, double %72, double %73, %struct.gsl_sf_result_struct* %21), !dbg !1797
  store i32 %74, i32* %22, align 4, !dbg !1793
  %75 = load i32, i32* %14, align 4, !dbg !1798
  %76 = icmp ne i32 %75, 0, !dbg !1798
  br i1 %76, label %77, label %79, !dbg !1798

; <label>:77:                                     ; preds = %70
  %78 = load i32, i32* %14, align 4, !dbg !1799
  br label %87, !dbg !1799

; <label>:79:                                     ; preds = %70
  %80 = load i32, i32* %22, align 4, !dbg !1801
  %81 = icmp ne i32 %80, 0, !dbg !1801
  br i1 %81, label %82, label %84, !dbg !1801

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %22, align 4, !dbg !1803
  br label %85, !dbg !1803

; <label>:84:                                     ; preds = %79
  br label %85, !dbg !1805

; <label>:85:                                     ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ], !dbg !1807
  br label %87, !dbg !1807

; <label>:87:                                     ; preds = %85, %77
  %88 = phi i32 [ %78, %77 ], [ %86, %85 ], !dbg !1809
  store i32 %88, i32* %14, align 4, !dbg !1811
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !1812
  %90 = load double, double* %89, align 8, !dbg !1812
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1813
  %92 = load double, double* %91, align 8, !dbg !1813
  %93 = fmul double %90, %92, !dbg !1814
  store double %93, double* %17, align 8, !dbg !1815
  %94 = load double, double* %17, align 8, !dbg !1816
  %95 = call double @fabs(double %94) #1, !dbg !1817
  %96 = fmul double 0x3CC0000000000000, %95, !dbg !1818
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 1, !dbg !1819
  %98 = load double, double* %97, align 8, !dbg !1819
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !1820
  %100 = load double, double* %99, align 8, !dbg !1820
  %101 = fmul double %98, %100, !dbg !1821
  %102 = call double @fabs(double %101) #1, !dbg !1822
  %103 = fadd double %96, %102, !dbg !1823
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %21, i32 0, i32 0, !dbg !1824
  %105 = load double, double* %104, align 8, !dbg !1824
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !1825
  %107 = load double, double* %106, align 8, !dbg !1825
  %108 = fmul double %105, %107, !dbg !1826
  %109 = call double @fabs(double %108) #1, !dbg !1827
  %110 = fadd double %103, %109, !dbg !1828
  store double %110, double* %18, align 8, !dbg !1829
  br label %111, !dbg !1830

; <label>:111:                                    ; preds = %87, %58
  br label %112

; <label>:112:                                    ; preds = %111, %57
  %113 = load i32, i32* %16, align 4, !dbg !1831
  %114 = icmp ne i32 %113, 0, !dbg !1831
  br i1 %114, label %115, label %133, !dbg !1833

; <label>:115:                                    ; preds = %112
  %116 = load double, double* %7, align 8, !dbg !1834
  %117 = fcmp oge double %116, 2.000000e+00, !dbg !1836
  br i1 %117, label %118, label %133, !dbg !1837

; <label>:118:                                    ; preds = %115
  %119 = load i32, i32* %15, align 4, !dbg !1838
  %120 = icmp ne i32 %119, 0, !dbg !1838
  br i1 %120, label %121, label %126, !dbg !1840

; <label>:121:                                    ; preds = %118
  %122 = load double, double* %6, align 8, !dbg !1841
  %123 = load double, double* %7, align 8, !dbg !1843
  %124 = fsub double %123, 2.000000e+00, !dbg !1844
  %125 = fcmp ole double %122, %124, !dbg !1845
  br i1 %125, label %133, label %126, !dbg !1846

; <label>:126:                                    ; preds = %121, %118
  %127 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1847
  %128 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %127, i32 0, i32 0, !dbg !1849
  store double 0x7FF8000000000000, double* %128, align 8, !dbg !1850
  %129 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1851
  %130 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %129, i32 0, i32 1, !dbg !1852
  store double 0x7FF8000000000000, double* %130, align 8, !dbg !1853
  br label %131, !dbg !1854, !llvm.loop !1855

; <label>:131:                                    ; preds = %126
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1581, i32 24), !dbg !1856
  store i32 24, i32* %5, align 4, !dbg !1856
  br label %252, !dbg !1856
                                                  ; No predecessors!
  br label %232, !dbg !1859

; <label>:133:                                    ; preds = %121, %115, %112
  %134 = load i32, i32* %15, align 4, !dbg !1860
  %135 = icmp ne i32 %134, 0, !dbg !1860
  br i1 %135, label %136, label %145, !dbg !1863

; <label>:136:                                    ; preds = %133
  %137 = load double, double* %6, align 8, !dbg !1864
  %138 = fcmp ole double %137, 0.000000e+00, !dbg !1866
  br i1 %138, label %139, label %145, !dbg !1867

; <label>:139:                                    ; preds = %136
  %140 = load double, double* %7, align 8, !dbg !1868
  %141 = fcmp oge double %140, 1.000000e+00, !dbg !1870
  br i1 %141, label %142, label %145, !dbg !1871

; <label>:142:                                    ; preds = %139
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1872
  store double 0.000000e+00, double* %143, align 8, !dbg !1874
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !1875
  store double 0.000000e+00, double* %144, align 8, !dbg !1876
  br label %167, !dbg !1877

; <label>:145:                                    ; preds = %139, %136, %133
  %146 = load double, double* %6, align 8, !dbg !1878
  %147 = load double, double* %6, align 8, !dbg !1880
  %148 = fadd double 1.000000e+00, %147, !dbg !1881
  %149 = load double, double* %7, align 8, !dbg !1882
  %150 = fsub double %148, %149, !dbg !1883
  %151 = fsub double -0.000000e+00, %150, !dbg !1884
  %152 = call i32 @gsl_sf_poch_e(double %146, double %151, %struct.gsl_sf_result_struct* %11), !dbg !1885
  store i32 %152, i32* %13, align 4, !dbg !1886
  %153 = load i32, i32* %14, align 4, !dbg !1887
  %154 = icmp ne i32 %153, 0, !dbg !1887
  br i1 %154, label %155, label %157, !dbg !1887

; <label>:155:                                    ; preds = %145
  %156 = load i32, i32* %14, align 4, !dbg !1888
  br label %165, !dbg !1888

; <label>:157:                                    ; preds = %145
  %158 = load i32, i32* %13, align 4, !dbg !1890
  %159 = icmp ne i32 %158, 0, !dbg !1890
  br i1 %159, label %160, label %162, !dbg !1890

; <label>:160:                                    ; preds = %157
  %161 = load i32, i32* %13, align 4, !dbg !1892
  br label %163, !dbg !1892

; <label>:162:                                    ; preds = %157
  br label %163, !dbg !1894

; <label>:163:                                    ; preds = %162, %160
  %164 = phi i32 [ %161, %160 ], [ 0, %162 ], !dbg !1896
  br label %165, !dbg !1896

; <label>:165:                                    ; preds = %163, %155
  %166 = phi i32 [ %156, %155 ], [ %164, %163 ], !dbg !1898
  store i32 %166, i32* %14, align 4, !dbg !1900
  br label %167

; <label>:167:                                    ; preds = %165, %142
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1901
  %169 = load double, double* %168, align 8, !dbg !1901
  %170 = fcmp une double %169, 0.000000e+00, !dbg !1903
  br i1 %170, label %171, label %231, !dbg !1904

; <label>:171:                                    ; preds = %167
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !1905, metadata !63), !dbg !1907
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1908, metadata !63), !dbg !1909
  %172 = load double, double* %6, align 8, !dbg !1910
  %173 = fadd double 1.000000e+00, %172, !dbg !1911
  %174 = load double, double* %7, align 8, !dbg !1912
  %175 = fsub double %173, %174, !dbg !1913
  %176 = load double, double* %7, align 8, !dbg !1914
  %177 = fsub double 2.000000e+00, %176, !dbg !1915
  %178 = load double, double* %8, align 8, !dbg !1916
  %179 = call i32 @gsl_sf_hyperg_1F1_e(double %175, double %177, double %178, %struct.gsl_sf_result_struct* %23), !dbg !1917
  store i32 %179, i32* %24, align 4, !dbg !1909
  %180 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1918
  %181 = load double, double* %180, align 8, !dbg !1918
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1919
  %183 = load double, double* %182, align 8, !dbg !1919
  %184 = fmul double %181, %183, !dbg !1920
  store double %184, double* %19, align 8, !dbg !1921
  %185 = load double, double* %19, align 8, !dbg !1922
  %186 = call double @fabs(double %185) #1, !dbg !1923
  %187 = fmul double 0x3CC0000000000000, %186, !dbg !1924
  %188 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !1925
  %189 = load double, double* %188, align 8, !dbg !1925
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !1926
  %191 = load double, double* %190, align 8, !dbg !1926
  %192 = fmul double %189, %191, !dbg !1927
  %193 = call double @fabs(double %192) #1, !dbg !1928
  %194 = fadd double %187, %193, !dbg !1929
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !1930
  %196 = load double, double* %195, align 8, !dbg !1930
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !1931
  %198 = load double, double* %197, align 8, !dbg !1931
  %199 = fmul double %196, %198, !dbg !1932
  %200 = call double @fabs(double %199) #1, !dbg !1933
  %201 = fadd double %194, %200, !dbg !1935
  store double %201, double* %20, align 8, !dbg !1936
  %202 = load i32, i32* %14, align 4, !dbg !1937
  %203 = icmp ne i32 %202, 0, !dbg !1937
  br i1 %203, label %204, label %206, !dbg !1937

; <label>:204:                                    ; preds = %171
  %205 = load i32, i32* %14, align 4, !dbg !1938
  br label %214, !dbg !1938

; <label>:206:                                    ; preds = %171
  %207 = load i32, i32* %24, align 4, !dbg !1939
  %208 = icmp ne i32 %207, 0, !dbg !1939
  br i1 %208, label %209, label %211, !dbg !1939

; <label>:209:                                    ; preds = %206
  %210 = load i32, i32* %24, align 4, !dbg !1941
  br label %212, !dbg !1941

; <label>:211:                                    ; preds = %206
  br label %212, !dbg !1943

; <label>:212:                                    ; preds = %211, %209
  %213 = phi i32 [ %210, %209 ], [ 0, %211 ], !dbg !1945
  br label %214, !dbg !1945

; <label>:214:                                    ; preds = %212, %204
  %215 = phi i32 [ %205, %204 ], [ %213, %212 ], !dbg !1947
  store i32 %215, i32* %14, align 4, !dbg !1949
  %216 = load double, double* %19, align 8, !dbg !1950
  %217 = fcmp une double %216, 0.000000e+00, !dbg !1952
  br i1 %217, label %218, label %230, !dbg !1953

; <label>:218:                                    ; preds = %214
  call void @llvm.dbg.declare(metadata double* %25, metadata !1954, metadata !63), !dbg !1956
  %219 = load double, double* %8, align 8, !dbg !1957
  %220 = load double, double* %7, align 8, !dbg !1958
  %221 = fsub double 1.000000e+00, %220, !dbg !1959
  %222 = call double @pow(double %219, double %221) #6, !dbg !1960
  store double %222, double* %25, align 8, !dbg !1956
  %223 = load double, double* %25, align 8, !dbg !1961
  %224 = load double, double* %19, align 8, !dbg !1962
  %225 = fmul double %223, %224, !dbg !1963
  store double %225, double* %19, align 8, !dbg !1964
  %226 = load double, double* %25, align 8, !dbg !1965
  %227 = call double @fabs(double %226) #1, !dbg !1966
  %228 = load double, double* %20, align 8, !dbg !1967
  %229 = fmul double %227, %228, !dbg !1968
  store double %229, double* %20, align 8, !dbg !1969
  br label %230, !dbg !1970

; <label>:230:                                    ; preds = %218, %214
  br label %231, !dbg !1971

; <label>:231:                                    ; preds = %230, %167
  br label %232

; <label>:232:                                    ; preds = %231, %132
  %233 = load double, double* %17, align 8, !dbg !1972
  %234 = load double, double* %19, align 8, !dbg !1973
  %235 = fadd double %233, %234, !dbg !1974
  %236 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1975
  %237 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %236, i32 0, i32 0, !dbg !1976
  store double %235, double* %237, align 8, !dbg !1977
  %238 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1978
  %239 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %238, i32 0, i32 0, !dbg !1979
  %240 = load double, double* %239, align 8, !dbg !1979
  %241 = call double @fabs(double %240) #1, !dbg !1980
  %242 = fmul double 0x3CC0000000000000, %241, !dbg !1981
  %243 = load double, double* %18, align 8, !dbg !1982
  %244 = load double, double* %20, align 8, !dbg !1983
  %245 = fadd double %243, %244, !dbg !1984
  %246 = fadd double %242, %245, !dbg !1985
  %247 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1986
  %248 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %247, i32 0, i32 1, !dbg !1987
  store double %246, double* %248, align 8, !dbg !1988
  %249 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !1989
  %250 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %249, i32 0, i32 2, !dbg !1990
  store i32 0, i32* %250, align 8, !dbg !1991
  %251 = load i32, i32* %14, align 4, !dbg !1992
  store i32 %251, i32* %5, align 4, !dbg !1993
  br label %252, !dbg !1993

; <label>:252:                                    ; preds = %232, %131, %56
  %253 = load i32, i32* %5, align 4, !dbg !1994
  ret i32 %253, !dbg !1994
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_bge1(double, double, double, %struct.gsl_sf_result_e10_struct*) #0 !dbg !1995 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_e10_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.gsl_sf_result_struct, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca %struct.gsl_sf_result_struct, align 8
  %37 = alloca %struct.gsl_sf_result_struct, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca double, align 8
  %42 = alloca double, align 8
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca %struct.gsl_sf_result_struct, align 8
  %48 = alloca %struct.gsl_sf_result_struct, align 8
  %49 = alloca double, align 8
  %50 = alloca double, align 8
  %51 = alloca %struct.gsl_sf_result_struct, align 8
  %52 = alloca %struct.gsl_sf_result_struct, align 8
  %53 = alloca double, align 8
  %54 = alloca double, align 8
  %55 = alloca double, align 8
  %56 = alloca double, align 8
  %57 = alloca double, align 8
  %58 = alloca i32, align 4
  %59 = alloca double, align 8
  %60 = alloca double, align 8
  %61 = alloca double, align 8
  %62 = alloca double, align 8
  %63 = alloca double, align 8
  %64 = alloca double, align 8
  %65 = alloca %struct.gsl_sf_result_struct, align 8
  %66 = alloca %struct.gsl_sf_result_struct, align 8
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca %struct.gsl_sf_result_struct, align 8
  %71 = alloca %struct.gsl_sf_result_struct, align 8
  %72 = alloca double, align 8
  %73 = alloca double, align 8
  %74 = alloca double, align 8
  %75 = alloca double, align 8
  %76 = alloca double, align 8
  %77 = alloca double, align 8
  %78 = alloca double, align 8
  %79 = alloca i32, align 4
  %80 = alloca %struct.gsl_sf_result_struct, align 8
  %81 = alloca %struct.gsl_sf_result_struct, align 8
  %82 = alloca double, align 8
  %83 = alloca double, align 8
  %84 = alloca double, align 8
  %85 = alloca double, align 8
  %86 = alloca double, align 8
  %87 = alloca %struct.gsl_sf_result_struct, align 8
  %88 = alloca double, align 8
  %89 = alloca double, align 8
  %90 = alloca double, align 8
  %91 = alloca i32, align 4
  %92 = alloca i32, align 4
  %93 = alloca i32, align 4
  %94 = alloca i32, align 4
  %95 = alloca double, align 8
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca double, align 8
  %99 = alloca double, align 8
  %100 = alloca double, align 8
  %101 = alloca double, align 8
  %102 = alloca %struct.gsl_sf_result_struct, align 8
  %103 = alloca %struct.gsl_sf_result_struct, align 8
  %104 = alloca double, align 8
  %105 = alloca double, align 8
  %106 = alloca double, align 8
  %107 = alloca double, align 8
  %108 = alloca i32, align 4
  %109 = alloca i32, align 4
  %110 = alloca i32, align 4
  %111 = alloca i32, align 4
  %112 = alloca double, align 8
  %113 = alloca double, align 8
  %114 = alloca double, align 8
  %115 = alloca double, align 8
  %116 = alloca double, align 8
  %117 = alloca double, align 8
  %118 = alloca i32, align 4
  %119 = alloca double, align 8
  %120 = alloca %struct.gsl_sf_result_struct, align 8
  %121 = alloca %struct.gsl_sf_result_struct, align 8
  %122 = alloca double, align 8
  %123 = alloca double, align 8
  %124 = alloca i32, align 4
  %125 = alloca i32, align 4
  %126 = alloca double, align 8
  %127 = alloca double, align 8
  %128 = alloca double, align 8
  %129 = alloca double, align 8
  %130 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1996, metadata !63), !dbg !1997
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1998, metadata !63), !dbg !1999
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !2000, metadata !63), !dbg !2001
  store %struct.gsl_sf_result_e10_struct* %3, %struct.gsl_sf_result_e10_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct** %9, metadata !2002, metadata !63), !dbg !2003
  call void @llvm.dbg.declare(metadata double* %10, metadata !2004, metadata !63), !dbg !2005
  %131 = load double, double* %6, align 8, !dbg !2006
  %132 = fadd double %131, 5.000000e-01, !dbg !2007
  %133 = call double @floor(double %132) #1, !dbg !2008
  store double %133, double* %10, align 8, !dbg !2005
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2009, metadata !63), !dbg !2010
  %134 = load double, double* %6, align 8, !dbg !2011
  %135 = fcmp olt double %134, 0.000000e+00, !dbg !2012
  br i1 %135, label %136, label %142, !dbg !2013

; <label>:136:                                    ; preds = %4
  %137 = load double, double* %6, align 8, !dbg !2014
  %138 = load double, double* %10, align 8, !dbg !2016
  %139 = fsub double %137, %138, !dbg !2017
  %140 = call double @fabs(double %139) #1, !dbg !2018
  %141 = fcmp olt double %140, 0x3D4F400000000000, !dbg !2019
  br label %142

; <label>:142:                                    ; preds = %136, %4
  %143 = phi i1 [ false, %4 ], [ %141, %136 ]
  %144 = zext i1 %143 to i32, !dbg !2020
  store i32 %144, i32* %11, align 4, !dbg !2022
  %145 = load double, double* %6, align 8, !dbg !2023
  %146 = fcmp oeq double %145, 0.000000e+00, !dbg !2025
  br i1 %146, label %147, label %154, !dbg !2026

; <label>:147:                                    ; preds = %142
  %148 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !2027
  %149 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %148, i32 0, i32 0, !dbg !2029
  store double 1.000000e+00, double* %149, align 8, !dbg !2030
  %150 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !2031
  %151 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %150, i32 0, i32 1, !dbg !2032
  store double 0.000000e+00, double* %151, align 8, !dbg !2033
  %152 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !2034
  %153 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %152, i32 0, i32 2, !dbg !2035
  store i32 0, i32* %153, align 8, !dbg !2036
  store i32 0, i32* %5, align 4, !dbg !2037
  br label %1320, !dbg !2037

; <label>:154:                                    ; preds = %142
  %155 = load i32, i32* %11, align 4, !dbg !2038
  %156 = icmp ne i32 %155, 0, !dbg !2038
  br i1 %156, label %157, label %202, !dbg !2040

; <label>:157:                                    ; preds = %154
  %158 = load double, double* %10, align 8, !dbg !2041
  %159 = call double @fabs(double %158) #1, !dbg !2043
  %160 = fcmp olt double %159, 0x41DFFFFFFFC00000, !dbg !2044
  br i1 %160, label %161, label %202, !dbg !2045

; <label>:161:                                    ; preds = %157
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2046, metadata !63), !dbg !2048
  %162 = load double, double* %10, align 8, !dbg !2049
  %163 = fptosi double %162 to i32, !dbg !2050
  %164 = sub nsw i32 0, %163, !dbg !2051
  store i32 %164, i32* %12, align 4, !dbg !2048
  call void @llvm.dbg.declare(metadata double* %13, metadata !2052, metadata !63), !dbg !2053
  %165 = load i32, i32* %12, align 4, !dbg !2054
  %166 = and i32 %165, 1, !dbg !2054
  %167 = icmp ne i32 %166, 0, !dbg !2054
  %168 = select i1 %167, double -1.000000e+00, double 1.000000e+00, !dbg !2054
  store double %168, double* %13, align 8, !dbg !2053
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !2055, metadata !63), !dbg !2056
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !2057, metadata !63), !dbg !2058
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2059, metadata !63), !dbg !2060
  %169 = load i32, i32* %12, align 4, !dbg !2061
  %170 = load double, double* %7, align 8, !dbg !2062
  %171 = fsub double %170, 1.000000e+00, !dbg !2063
  %172 = load double, double* %8, align 8, !dbg !2064
  %173 = call i32 @gsl_sf_laguerre_n_e(i32 %169, double %171, double %172, %struct.gsl_sf_result_struct* %15), !dbg !2065
  store i32 %173, i32* %16, align 4, !dbg !2060
  %174 = load i32, i32* %12, align 4, !dbg !2066
  %175 = call i32 @gsl_sf_lnfact_e(i32 %174, %struct.gsl_sf_result_struct* %14), !dbg !2067
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2068, metadata !63), !dbg !2070
  %176 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !2071
  %177 = load double, double* %176, align 8, !dbg !2071
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !2072
  %179 = load double, double* %178, align 8, !dbg !2072
  %180 = load double, double* %13, align 8, !dbg !2073
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !2074
  %182 = load double, double* %181, align 8, !dbg !2074
  %183 = fmul double %180, %182, !dbg !2075
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !2076
  %185 = load double, double* %184, align 8, !dbg !2076
  %186 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !2077
  %187 = call i32 @gsl_sf_exp_mult_err_e10_e(double %177, double %179, double %183, double %185, %struct.gsl_sf_result_e10_struct* %186), !dbg !2078
  store i32 %187, i32* %17, align 4, !dbg !2070
  %188 = load i32, i32* %17, align 4, !dbg !2079
  %189 = icmp ne i32 %188, 0, !dbg !2079
  br i1 %189, label %190, label %192, !dbg !2079

; <label>:190:                                    ; preds = %161
  %191 = load i32, i32* %17, align 4, !dbg !2080
  br label %200, !dbg !2080

; <label>:192:                                    ; preds = %161
  %193 = load i32, i32* %16, align 4, !dbg !2082
  %194 = icmp ne i32 %193, 0, !dbg !2082
  br i1 %194, label %195, label %197, !dbg !2082

; <label>:195:                                    ; preds = %192
  %196 = load i32, i32* %16, align 4, !dbg !2084
  br label %198, !dbg !2084

; <label>:197:                                    ; preds = %192
  br label %198, !dbg !2086

; <label>:198:                                    ; preds = %197, %195
  %199 = phi i32 [ %196, %195 ], [ 0, %197 ], !dbg !2088
  br label %200, !dbg !2088

; <label>:200:                                    ; preds = %198, %190
  %201 = phi i32 [ %191, %190 ], [ %199, %198 ], !dbg !2090
  store i32 %201, i32* %5, align 4, !dbg !2092
  br label %1320, !dbg !2092

; <label>:202:                                    ; preds = %157, %154
  %203 = load double, double* %6, align 8, !dbg !2093
  %204 = call double @fabs(double %203) #1, !dbg !2093
  %205 = call double @GSL_MAX_DBL(double %204, double 1.000000e+00), !dbg !2095
  %206 = load double, double* %6, align 8, !dbg !2093
  %207 = fadd double 1.000000e+00, %206, !dbg !2093
  %208 = load double, double* %7, align 8, !dbg !2093
  %209 = fsub double %207, %208, !dbg !2093
  %210 = call double @fabs(double %209) #1, !dbg !2097
  %211 = call double @GSL_MAX_DBL(double %210, double 1.000000e+00), !dbg !2099
  %212 = fmul double %205, %211, !dbg !2093
  %213 = load double, double* %8, align 8, !dbg !2093
  %214 = call double @fabs(double %213) #1, !dbg !2101
  %215 = fmul double 9.900000e-01, %214, !dbg !2093
  %216 = fcmp olt double %212, %215, !dbg !2093
  br i1 %216, label %217, label %252, !dbg !2103

; <label>:217:                                    ; preds = %202
  call void @llvm.dbg.declare(metadata double* %18, metadata !2104, metadata !63), !dbg !2106
  %218 = load double, double* %6, align 8, !dbg !2107
  %219 = fsub double -0.000000e+00, %218, !dbg !2108
  %220 = load double, double* %8, align 8, !dbg !2109
  %221 = call double @log(double %220) #6, !dbg !2110
  %222 = fmul double %219, %221, !dbg !2111
  store double %222, double* %18, align 8, !dbg !2106
  call void @llvm.dbg.declare(metadata double* %19, metadata !2112, metadata !63), !dbg !2113
  %223 = load double, double* %18, align 8, !dbg !2114
  %224 = call double @fabs(double %223) #1, !dbg !2115
  %225 = fmul double 0x3CC0000000000000, %224, !dbg !2116
  store double %225, double* %19, align 8, !dbg !2113
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %20, metadata !2117, metadata !63), !dbg !2118
  call void @llvm.dbg.declare(metadata i32* %21, metadata !2119, metadata !63), !dbg !2120
  %226 = load double, double* %6, align 8, !dbg !2121
  %227 = load double, double* %7, align 8, !dbg !2122
  %228 = load double, double* %8, align 8, !dbg !2123
  %229 = call i32 @hyperg_zaU_asymp(double %226, double %227, double %228, %struct.gsl_sf_result_struct* %20), !dbg !2124
  store i32 %229, i32* %21, align 4, !dbg !2120
  call void @llvm.dbg.declare(metadata i32* %22, metadata !2125, metadata !63), !dbg !2126
  %230 = load double, double* %18, align 8, !dbg !2127
  %231 = load double, double* %19, align 8, !dbg !2128
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !2129
  %233 = load double, double* %232, align 8, !dbg !2129
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 1, !dbg !2130
  %235 = load double, double* %234, align 8, !dbg !2130
  %236 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !2131
  %237 = call i32 @gsl_sf_exp_mult_err_e10_e(double %230, double %231, double %233, double %235, %struct.gsl_sf_result_e10_struct* %236), !dbg !2132
  store i32 %237, i32* %22, align 4, !dbg !2126
  %238 = load i32, i32* %22, align 4, !dbg !2133
  %239 = icmp ne i32 %238, 0, !dbg !2133
  br i1 %239, label %240, label %242, !dbg !2133

; <label>:240:                                    ; preds = %217
  %241 = load i32, i32* %22, align 4, !dbg !2134
  br label %250, !dbg !2134

; <label>:242:                                    ; preds = %217
  %243 = load i32, i32* %21, align 4, !dbg !2136
  %244 = icmp ne i32 %243, 0, !dbg !2136
  br i1 %244, label %245, label %247, !dbg !2136

; <label>:245:                                    ; preds = %242
  %246 = load i32, i32* %21, align 4, !dbg !2138
  br label %248, !dbg !2138

; <label>:247:                                    ; preds = %242
  br label %248, !dbg !2140

; <label>:248:                                    ; preds = %247, %245
  %249 = phi i32 [ %246, %245 ], [ 0, %247 ], !dbg !2142
  br label %250, !dbg !2142

; <label>:250:                                    ; preds = %248, %240
  %251 = phi i32 [ %241, %240 ], [ %249, %248 ], !dbg !2144
  store i32 %251, i32* %5, align 4, !dbg !2146
  br label %1320, !dbg !2146

; <label>:252:                                    ; preds = %202
  %253 = load double, double* %6, align 8, !dbg !2147
  %254 = call double @fabs(double %253) #1, !dbg !2149
  %255 = fcmp ole double %254, 1.000000e+00, !dbg !2150
  br i1 %255, label %256, label %285, !dbg !2151

; <label>:256:                                    ; preds = %252
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !2152, metadata !63), !dbg !2154
  call void @llvm.dbg.declare(metadata double* %24, metadata !2155, metadata !63), !dbg !2156
  call void @llvm.dbg.declare(metadata i32* %25, metadata !2157, metadata !63), !dbg !2158
  %257 = load double, double* %6, align 8, !dbg !2159
  %258 = load double, double* %7, align 8, !dbg !2160
  %259 = load double, double* %8, align 8, !dbg !2161
  %260 = call i32 @hyperg_U_small_a_bgt0(double %257, double %258, double %259, %struct.gsl_sf_result_struct* %23, double* %24), !dbg !2162
  store i32 %260, i32* %25, align 4, !dbg !2158
  call void @llvm.dbg.declare(metadata i32* %26, metadata !2163, metadata !63), !dbg !2164
  %261 = load double, double* %24, align 8, !dbg !2165
  %262 = load double, double* %24, align 8, !dbg !2166
  %263 = call double @fabs(double %262) #1, !dbg !2167
  %264 = fmul double 0x3CC0000000000000, %263, !dbg !2168
  %265 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !2169
  %266 = load double, double* %265, align 8, !dbg !2169
  %267 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !2170
  %268 = load double, double* %267, align 8, !dbg !2170
  %269 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !2171
  %270 = call i32 @gsl_sf_exp_mult_err_e10_e(double %261, double %264, double %266, double %268, %struct.gsl_sf_result_e10_struct* %269), !dbg !2172
  store i32 %270, i32* %26, align 4, !dbg !2164
  %271 = load i32, i32* %25, align 4, !dbg !2174
  %272 = icmp ne i32 %271, 0, !dbg !2174
  br i1 %272, label %273, label %275, !dbg !2174

; <label>:273:                                    ; preds = %256
  %274 = load i32, i32* %25, align 4, !dbg !2175
  br label %283, !dbg !2175

; <label>:275:                                    ; preds = %256
  %276 = load i32, i32* %26, align 4, !dbg !2176
  %277 = icmp ne i32 %276, 0, !dbg !2176
  br i1 %277, label %278, label %280, !dbg !2176

; <label>:278:                                    ; preds = %275
  %279 = load i32, i32* %26, align 4, !dbg !2178
  br label %281, !dbg !2178

; <label>:280:                                    ; preds = %275
  br label %281, !dbg !2180

; <label>:281:                                    ; preds = %280, %278
  %282 = phi i32 [ %279, %278 ], [ 0, %280 ], !dbg !2182
  br label %283, !dbg !2182

; <label>:283:                                    ; preds = %281, %273
  %284 = phi i32 [ %274, %273 ], [ %282, %281 ], !dbg !2184
  store i32 %284, i32* %5, align 4, !dbg !2186
  br label %1320, !dbg !2186

; <label>:285:                                    ; preds = %252
  %286 = load double, double* %6, align 8, !dbg !2187
  %287 = call double @fabs(double %286) #1, !dbg !2187
  %288 = fcmp olt double %287, 5.000000e+00, !dbg !2187
  br i1 %288, label %289, label %295, !dbg !2187

; <label>:289:                                    ; preds = %285
  %290 = load double, double* %7, align 8, !dbg !2189
  %291 = fcmp olt double %290, 5.000000e+00, !dbg !2189
  br i1 %291, label %292, label %295, !dbg !2189

; <label>:292:                                    ; preds = %289
  %293 = load double, double* %8, align 8, !dbg !2191
  %294 = fcmp olt double %293, 2.000000e+00, !dbg !2191
  br i1 %294, label %305, label %295, !dbg !2191

; <label>:295:                                    ; preds = %292, %289, %285
  %296 = load double, double* %6, align 8, !dbg !2193
  %297 = call double @fabs(double %296) #1, !dbg !2193
  %298 = fcmp olt double %297, 1.000000e+01, !dbg !2193
  br i1 %298, label %299, label %321, !dbg !2193

; <label>:299:                                    ; preds = %295
  %300 = load double, double* %7, align 8, !dbg !2195
  %301 = fcmp olt double %300, 1.000000e+01, !dbg !2195
  br i1 %301, label %302, label %321, !dbg !2195

; <label>:302:                                    ; preds = %299
  %303 = load double, double* %8, align 8, !dbg !2197
  %304 = fcmp olt double %303, 1.000000e+00, !dbg !2197
  br i1 %304, label %305, label %321, !dbg !2197

; <label>:305:                                    ; preds = %302, %292
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !2199, metadata !63), !dbg !2201
  call void @llvm.dbg.declare(metadata i32* %28, metadata !2202, metadata !63), !dbg !2203
  %306 = load double, double* %6, align 8, !dbg !2204
  %307 = load double, double* %7, align 8, !dbg !2205
  %308 = load double, double* %8, align 8, !dbg !2206
  %309 = call i32 @hyperg_U_series(double %306, double %307, double %308, %struct.gsl_sf_result_struct* %27), !dbg !2207
  store i32 %309, i32* %28, align 4, !dbg !2203
  %310 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !2208
  %311 = load double, double* %310, align 8, !dbg !2208
  %312 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !2209
  %313 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %312, i32 0, i32 0, !dbg !2210
  store double %311, double* %313, align 8, !dbg !2211
  %314 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !2212
  %315 = load double, double* %314, align 8, !dbg !2212
  %316 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !2213
  %317 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %316, i32 0, i32 1, !dbg !2214
  store double %315, double* %317, align 8, !dbg !2215
  %318 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !2216
  %319 = getelementptr inbounds %struct.gsl_sf_result_e10_struct, %struct.gsl_sf_result_e10_struct* %318, i32 0, i32 2, !dbg !2217
  store i32 0, i32* %319, align 8, !dbg !2218
  %320 = load i32, i32* %28, align 4, !dbg !2219
  store i32 %320, i32* %5, align 4, !dbg !2220
  br label %1320, !dbg !2220

; <label>:321:                                    ; preds = %302, %299, %295
  %322 = load double, double* %6, align 8, !dbg !2221
  %323 = fcmp olt double %322, 0.000000e+00, !dbg !2223
  br i1 %323, label %324, label %693, !dbg !2224

; <label>:324:                                    ; preds = %321
  call void @llvm.dbg.declare(metadata double* %29, metadata !2225, metadata !63), !dbg !2227
  store double 0x5FEFFFFFFFFFFFFF, double* %29, align 8, !dbg !2227
  call void @llvm.dbg.declare(metadata double* %30, metadata !2228, metadata !63), !dbg !2229
  %325 = load double, double* %6, align 8, !dbg !2230
  %326 = load double, double* %6, align 8, !dbg !2231
  %327 = call double @floor(double %326) #1, !dbg !2232
  %328 = fsub double %325, %327, !dbg !2233
  %329 = fsub double %328, 1.000000e+00, !dbg !2234
  store double %329, double* %30, align 8, !dbg !2229
  call void @llvm.dbg.declare(metadata double* %31, metadata !2235, metadata !63), !dbg !2236
  %330 = load double, double* %7, align 8, !dbg !2237
  %331 = load double, double* %7, align 8, !dbg !2238
  %332 = call double @floor(double %331) #1, !dbg !2239
  %333 = fsub double %330, %332, !dbg !2240
  %334 = fadd double %333, 1.000000e+00, !dbg !2241
  store double %334, double* %31, align 8, !dbg !2236
  call void @llvm.dbg.declare(metadata i32* %32, metadata !2242, metadata !63), !dbg !2243
  store i32 0, i32* %32, align 4, !dbg !2243
  call void @llvm.dbg.declare(metadata double* %33, metadata !2244, metadata !63), !dbg !2245
  call void @llvm.dbg.declare(metadata double* %34, metadata !2246, metadata !63), !dbg !2247
  call void @llvm.dbg.declare(metadata double* %35, metadata !2248, metadata !63), !dbg !2249
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %36, metadata !2250, metadata !63), !dbg !2251
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %37, metadata !2252, metadata !63), !dbg !2253
  call void @llvm.dbg.declare(metadata i32* %38, metadata !2254, metadata !63), !dbg !2255
  %335 = load double, double* %30, align 8, !dbg !2256
  %336 = fadd double %335, 1.000000e+00, !dbg !2257
  %337 = load double, double* %31, align 8, !dbg !2258
  %338 = load double, double* %8, align 8, !dbg !2259
  %339 = call i32 @hyperg_U_small_a_bgt0(double %336, double %337, double %338, %struct.gsl_sf_result_struct* %36, double* %33), !dbg !2260
  store i32 %339, i32* %38, align 4, !dbg !2255
  call void @llvm.dbg.declare(metadata i32* %39, metadata !2261, metadata !63), !dbg !2262
  %340 = load double, double* %30, align 8, !dbg !2263
  %341 = load double, double* %31, align 8, !dbg !2264
  %342 = load double, double* %8, align 8, !dbg !2265
  %343 = call i32 @hyperg_U_small_a_bgt0(double %340, double %341, double %342, %struct.gsl_sf_result_struct* %37, double* %34), !dbg !2266
  store i32 %343, i32* %39, align 4, !dbg !2262
  call void @llvm.dbg.declare(metadata i32* %40, metadata !2267, metadata !63), !dbg !2268
  call void @llvm.dbg.declare(metadata double* %41, metadata !2269, metadata !63), !dbg !2270
  %344 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !2271
  %345 = load double, double* %344, align 8, !dbg !2271
  store double %345, double* %41, align 8, !dbg !2270
  call void @llvm.dbg.declare(metadata double* %42, metadata !2272, metadata !63), !dbg !2273
  %346 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !2274
  %347 = load double, double* %346, align 8, !dbg !2274
  store double %347, double* %42, align 8, !dbg !2273
  call void @llvm.dbg.declare(metadata double* %43, metadata !2275, metadata !63), !dbg !2276
  call void @llvm.dbg.declare(metadata double* %44, metadata !2277, metadata !63), !dbg !2278
  %348 = load double, double* %33, align 8, !dbg !2279
  %349 = load double, double* %34, align 8, !dbg !2279
  %350 = fcmp ogt double %348, %349, !dbg !2279
  br i1 %350, label %351, label %353, !dbg !2279

; <label>:351:                                    ; preds = %324
  %352 = load double, double* %33, align 8, !dbg !2280
  br label %355, !dbg !2280

; <label>:353:                                    ; preds = %324
  %354 = load double, double* %34, align 8, !dbg !2282
  br label %355, !dbg !2282

; <label>:355:                                    ; preds = %353, %351
  %356 = phi double [ %352, %351 ], [ %354, %353 ], !dbg !2284
  store double %356, double* %35, align 8, !dbg !2286
  %357 = load double, double* %33, align 8, !dbg !2287
  %358 = load double, double* %35, align 8, !dbg !2288
  %359 = fsub double %357, %358, !dbg !2289
  %360 = call double @exp(double %359) #6, !dbg !2290
  %361 = load double, double* %41, align 8, !dbg !2291
  %362 = fmul double %361, %360, !dbg !2291
  store double %362, double* %41, align 8, !dbg !2291
  %363 = load double, double* %34, align 8, !dbg !2292
  %364 = load double, double* %35, align 8, !dbg !2293
  %365 = fsub double %363, %364, !dbg !2294
  %366 = call double @exp(double %365) #6, !dbg !2295
  %367 = load double, double* %42, align 8, !dbg !2296
  %368 = fmul double %367, %366, !dbg !2296
  store double %368, double* %42, align 8, !dbg !2296
  %369 = load double, double* %30, align 8, !dbg !2297
  store double %369, double* %44, align 8, !dbg !2299
  br label %370, !dbg !2300

; <label>:370:                                    ; preds = %420, %355
  %371 = load double, double* %44, align 8, !dbg !2301
  %372 = load double, double* %6, align 8, !dbg !2304
  %373 = fadd double %372, 1.000000e-01, !dbg !2305
  %374 = fcmp ogt double %371, %373, !dbg !2306
  br i1 %374, label %375, label %423, !dbg !2307

; <label>:375:                                    ; preds = %370
  %376 = load double, double* %44, align 8, !dbg !2308
  %377 = load double, double* %31, align 8, !dbg !2310
  %378 = load double, double* %44, align 8, !dbg !2311
  %379 = fsub double %377, %378, !dbg !2312
  %380 = fsub double %379, 1.000000e+00, !dbg !2313
  %381 = fmul double %376, %380, !dbg !2314
  %382 = load double, double* %41, align 8, !dbg !2315
  %383 = fmul double %381, %382, !dbg !2316
  %384 = load double, double* %8, align 8, !dbg !2317
  %385 = load double, double* %44, align 8, !dbg !2318
  %386 = fmul double 2.000000e+00, %385, !dbg !2319
  %387 = fadd double %384, %386, !dbg !2320
  %388 = load double, double* %31, align 8, !dbg !2321
  %389 = fsub double %387, %388, !dbg !2322
  %390 = load double, double* %42, align 8, !dbg !2323
  %391 = fmul double %389, %390, !dbg !2324
  %392 = fadd double %383, %391, !dbg !2325
  store double %392, double* %43, align 8, !dbg !2326
  %393 = load double, double* %42, align 8, !dbg !2327
  store double %393, double* %41, align 8, !dbg !2328
  %394 = load double, double* %43, align 8, !dbg !2329
  store double %394, double* %42, align 8, !dbg !2330
  br label %395, !dbg !2331, !llvm.loop !2332

; <label>:395:                                    ; preds = %375
  call void @llvm.dbg.declare(metadata double* %45, metadata !2333, metadata !63), !dbg !2335
  %396 = load double, double* %42, align 8, !dbg !2336
  %397 = call double @fabs(double %396) #1, !dbg !2336
  store double %397, double* %45, align 8, !dbg !2336
  %398 = load double, double* %45, align 8, !dbg !2336
  %399 = fcmp ogt double %398, 0x5FEFFFFFFFFFFFFF, !dbg !2336
  br i1 %399, label %400, label %407, !dbg !2336

; <label>:400:                                    ; preds = %395
  %401 = load double, double* %42, align 8, !dbg !2338
  %402 = fdiv double %401, 0x5FEFFFFFFFFFFFFF, !dbg !2338
  store double %402, double* %42, align 8, !dbg !2338
  %403 = load double, double* %41, align 8, !dbg !2338
  %404 = fdiv double %403, 0x5FEFFFFFFFFFFFFF, !dbg !2338
  store double %404, double* %41, align 8, !dbg !2338
  %405 = load i32, i32* %32, align 4, !dbg !2338
  %406 = add nsw i32 %405, 1, !dbg !2338
  store i32 %406, i32* %32, align 4, !dbg !2338
  br label %418, !dbg !2338

; <label>:407:                                    ; preds = %395
  %408 = load double, double* %45, align 8, !dbg !2342
  %409 = fcmp olt double %408, 0x1FF0000000000001, !dbg !2342
  br i1 %409, label %410, label %417, !dbg !2342

; <label>:410:                                    ; preds = %407
  %411 = load double, double* %42, align 8, !dbg !2345
  %412 = fmul double %411, 0x5FEFFFFFFFFFFFFF, !dbg !2345
  store double %412, double* %42, align 8, !dbg !2345
  %413 = load double, double* %41, align 8, !dbg !2345
  %414 = fmul double %413, 0x5FEFFFFFFFFFFFFF, !dbg !2345
  store double %414, double* %41, align 8, !dbg !2345
  %415 = load i32, i32* %32, align 4, !dbg !2345
  %416 = add nsw i32 %415, -1, !dbg !2345
  store i32 %416, i32* %32, align 4, !dbg !2345
  br label %417, !dbg !2345

; <label>:417:                                    ; preds = %410, %407
  br label %418

; <label>:418:                                    ; preds = %417, %400
  br label %419, !dbg !2348

; <label>:419:                                    ; preds = %418
  br label %420, !dbg !2350

; <label>:420:                                    ; preds = %419
  %421 = load double, double* %44, align 8, !dbg !2351
  %422 = fsub double %421, 1.000000e+00, !dbg !2351
  store double %422, double* %44, align 8, !dbg !2351
  br label %370, !dbg !2353, !llvm.loop !2354

; <label>:423:                                    ; preds = %370
  %424 = load double, double* %7, align 8, !dbg !2356
  %425 = fcmp olt double %424, 2.000000e+00, !dbg !2358
  br i1 %425, label %426, label %507, !dbg !2359

; <label>:426:                                    ; preds = %423
  call void @llvm.dbg.declare(metadata double* %46, metadata !2360, metadata !63), !dbg !2362
  %427 = call double @log(double 0x5FEFFFFFFFFFFFFF) #6, !dbg !2363
  store double %427, double* %46, align 8, !dbg !2362
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %47, metadata !2364, metadata !63), !dbg !2365
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %48, metadata !2366, metadata !63), !dbg !2367
  %428 = load double, double* %35, align 8, !dbg !2368
  %429 = load i32, i32* %32, align 4, !dbg !2369
  %430 = sitofp i32 %429 to double, !dbg !2369
  %431 = load double, double* %46, align 8, !dbg !2370
  %432 = fmul double %430, %431, !dbg !2371
  %433 = fadd double %428, %432, !dbg !2372
  %434 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !2373
  store double %433, double* %434, align 8, !dbg !2374
  %435 = load double, double* %35, align 8, !dbg !2375
  %436 = call double @fabs(double %435) #1, !dbg !2376
  %437 = load i32, i32* %32, align 4, !dbg !2377
  %438 = sitofp i32 %437 to double, !dbg !2377
  %439 = load double, double* %46, align 8, !dbg !2378
  %440 = call double @fabs(double %439) #1, !dbg !2379
  %441 = fmul double %438, %440, !dbg !2381
  %442 = fadd double %436, %441, !dbg !2382
  %443 = fmul double 0x3CC0000000000000, %442, !dbg !2383
  %444 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !2384
  store double %443, double* %444, align 8, !dbg !2385
  %445 = load double, double* %42, align 8, !dbg !2386
  %446 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !2387
  store double %445, double* %446, align 8, !dbg !2388
  %447 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !2389
  %448 = load double, double* %447, align 8, !dbg !2389
  %449 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !2390
  %450 = load double, double* %449, align 8, !dbg !2390
  %451 = fdiv double %448, %450, !dbg !2391
  %452 = call double @fabs(double %451) #1, !dbg !2392
  %453 = load double, double* %42, align 8, !dbg !2393
  %454 = call double @fabs(double %453) #1, !dbg !2394
  %455 = fmul double %452, %454, !dbg !2395
  %456 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !2396
  store double %455, double* %456, align 8, !dbg !2397
  %457 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !2398
  %458 = load double, double* %457, align 8, !dbg !2398
  %459 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !2399
  %460 = load double, double* %459, align 8, !dbg !2399
  %461 = fdiv double %458, %460, !dbg !2400
  %462 = call double @fabs(double %461) #1, !dbg !2401
  %463 = load double, double* %42, align 8, !dbg !2402
  %464 = call double @fabs(double %463) #1, !dbg !2403
  %465 = fmul double %462, %464, !dbg !2404
  %466 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !2405
  %467 = load double, double* %466, align 8, !dbg !2406
  %468 = fadd double %467, %465, !dbg !2406
  store double %468, double* %466, align 8, !dbg !2406
  %469 = load double, double* %6, align 8, !dbg !2407
  %470 = load double, double* %30, align 8, !dbg !2408
  %471 = fsub double %469, %470, !dbg !2409
  %472 = call double @fabs(double %471) #1, !dbg !2410
  %473 = fadd double %472, 1.000000e+00, !dbg !2411
  %474 = fmul double 0x3CC0000000000000, %473, !dbg !2412
  %475 = load double, double* %42, align 8, !dbg !2413
  %476 = call double @fabs(double %475) #1, !dbg !2414
  %477 = fmul double %474, %476, !dbg !2415
  %478 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !2416
  %479 = load double, double* %478, align 8, !dbg !2417
  %480 = fadd double %479, %477, !dbg !2417
  store double %480, double* %478, align 8, !dbg !2417
  %481 = load double, double* %33, align 8, !dbg !2418
  %482 = load double, double* %35, align 8, !dbg !2419
  %483 = fsub double %481, %482, !dbg !2420
  %484 = call double @fabs(double %483) #1, !dbg !2421
  %485 = fadd double %484, 1.000000e+00, !dbg !2422
  %486 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !2423
  %487 = load double, double* %486, align 8, !dbg !2424
  %488 = fmul double %487, %485, !dbg !2424
  store double %488, double* %486, align 8, !dbg !2424
  %489 = load double, double* %34, align 8, !dbg !2425
  %490 = load double, double* %35, align 8, !dbg !2426
  %491 = fsub double %489, %490, !dbg !2427
  %492 = call double @fabs(double %491) #1, !dbg !2428
  %493 = fadd double %492, 1.000000e+00, !dbg !2429
  %494 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !2430
  %495 = load double, double* %494, align 8, !dbg !2431
  %496 = fmul double %495, %493, !dbg !2431
  store double %496, double* %494, align 8, !dbg !2431
  %497 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !2432
  %498 = load double, double* %497, align 8, !dbg !2432
  %499 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 1, !dbg !2433
  %500 = load double, double* %499, align 8, !dbg !2433
  %501 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !2434
  %502 = load double, double* %501, align 8, !dbg !2434
  %503 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 1, !dbg !2435
  %504 = load double, double* %503, align 8, !dbg !2435
  %505 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !2436
  %506 = call i32 @gsl_sf_exp_mult_err_e10_e(double %498, double %500, double %502, double %504, %struct.gsl_sf_result_e10_struct* %505), !dbg !2437
  store i32 %506, i32* %40, align 4, !dbg !2438
  br label %671, !dbg !2439

; <label>:507:                                    ; preds = %423
  call void @llvm.dbg.declare(metadata double* %49, metadata !2440, metadata !63), !dbg !2442
  %508 = load double, double* %7, align 8, !dbg !2443
  %509 = load double, double* %31, align 8, !dbg !2444
  %510 = fsub double %508, %509, !dbg !2445
  %511 = call double @fabs(double %510) #1, !dbg !2446
  %512 = load double, double* %6, align 8, !dbg !2447
  %513 = load double, double* %30, align 8, !dbg !2448
  %514 = fsub double %512, %513, !dbg !2449
  %515 = call double @fabs(double %514) #1, !dbg !2450
  %516 = fadd double %511, %515, !dbg !2452
  %517 = fadd double %516, 1.000000e+00, !dbg !2453
  store double %517, double* %49, align 8, !dbg !2442
  call void @llvm.dbg.declare(metadata double* %50, metadata !2454, metadata !63), !dbg !2455
  %518 = call double @log(double 0x5FEFFFFFFFFFFFFF) #6, !dbg !2456
  store double %518, double* %50, align 8, !dbg !2455
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %51, metadata !2457, metadata !63), !dbg !2458
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %52, metadata !2459, metadata !63), !dbg !2460
  call void @llvm.dbg.declare(metadata double* %53, metadata !2461, metadata !63), !dbg !2462
  %519 = load double, double* %42, align 8, !dbg !2463
  store double %519, double* %53, align 8, !dbg !2462
  call void @llvm.dbg.declare(metadata double* %54, metadata !2464, metadata !63), !dbg !2465
  %520 = load double, double* %6, align 8, !dbg !2466
  %521 = load double, double* %31, align 8, !dbg !2467
  %522 = load double, double* %6, align 8, !dbg !2468
  %523 = fsub double %521, %522, !dbg !2469
  %524 = fsub double %523, 1.000000e+00, !dbg !2470
  %525 = fmul double %520, %524, !dbg !2471
  %526 = load double, double* %41, align 8, !dbg !2472
  %527 = fmul double %525, %526, !dbg !2473
  %528 = load double, double* %6, align 8, !dbg !2474
  %529 = load double, double* %8, align 8, !dbg !2475
  %530 = fadd double %528, %529, !dbg !2476
  %531 = load double, double* %42, align 8, !dbg !2477
  %532 = fmul double %530, %531, !dbg !2478
  %533 = fadd double %527, %532, !dbg !2479
  %534 = load double, double* %8, align 8, !dbg !2480
  %535 = fdiv double %533, %534, !dbg !2481
  store double %535, double* %54, align 8, !dbg !2465
  call void @llvm.dbg.declare(metadata double* %55, metadata !2482, metadata !63), !dbg !2483
  call void @llvm.dbg.declare(metadata double* %56, metadata !2484, metadata !63), !dbg !2485
  %536 = load double, double* %31, align 8, !dbg !2486
  %537 = fadd double %536, 1.000000e+00, !dbg !2488
  store double %537, double* %56, align 8, !dbg !2489
  br label %538, !dbg !2490

; <label>:538:                                    ; preds = %586, %507
  %539 = load double, double* %56, align 8, !dbg !2491
  %540 = load double, double* %7, align 8, !dbg !2494
  %541 = fsub double %540, 1.000000e-01, !dbg !2495
  %542 = fcmp olt double %539, %541, !dbg !2496
  br i1 %542, label %543, label %589, !dbg !2497

; <label>:543:                                    ; preds = %538
  %544 = load double, double* %6, align 8, !dbg !2498
  %545 = fadd double 1.000000e+00, %544, !dbg !2500
  %546 = load double, double* %56, align 8, !dbg !2501
  %547 = fsub double %545, %546, !dbg !2502
  %548 = load double, double* %53, align 8, !dbg !2503
  %549 = fmul double %547, %548, !dbg !2504
  %550 = load double, double* %56, align 8, !dbg !2505
  %551 = load double, double* %8, align 8, !dbg !2506
  %552 = fadd double %550, %551, !dbg !2507
  %553 = fsub double %552, 1.000000e+00, !dbg !2508
  %554 = load double, double* %54, align 8, !dbg !2509
  %555 = fmul double %553, %554, !dbg !2510
  %556 = fadd double %549, %555, !dbg !2511
  %557 = load double, double* %8, align 8, !dbg !2512
  %558 = fdiv double %556, %557, !dbg !2513
  store double %558, double* %55, align 8, !dbg !2514
  %559 = load double, double* %54, align 8, !dbg !2515
  store double %559, double* %53, align 8, !dbg !2516
  %560 = load double, double* %55, align 8, !dbg !2517
  store double %560, double* %54, align 8, !dbg !2518
  br label %561, !dbg !2519, !llvm.loop !2520

; <label>:561:                                    ; preds = %543
  call void @llvm.dbg.declare(metadata double* %57, metadata !2521, metadata !63), !dbg !2523
  %562 = load double, double* %54, align 8, !dbg !2524
  %563 = call double @fabs(double %562) #1, !dbg !2524
  store double %563, double* %57, align 8, !dbg !2524
  %564 = load double, double* %57, align 8, !dbg !2524
  %565 = fcmp ogt double %564, 0x5FEFFFFFFFFFFFFF, !dbg !2524
  br i1 %565, label %566, label %573, !dbg !2524

; <label>:566:                                    ; preds = %561
  %567 = load double, double* %54, align 8, !dbg !2526
  %568 = fdiv double %567, 0x5FEFFFFFFFFFFFFF, !dbg !2526
  store double %568, double* %54, align 8, !dbg !2526
  %569 = load double, double* %53, align 8, !dbg !2526
  %570 = fdiv double %569, 0x5FEFFFFFFFFFFFFF, !dbg !2526
  store double %570, double* %53, align 8, !dbg !2526
  %571 = load i32, i32* %32, align 4, !dbg !2526
  %572 = add nsw i32 %571, 1, !dbg !2526
  store i32 %572, i32* %32, align 4, !dbg !2526
  br label %584, !dbg !2526

; <label>:573:                                    ; preds = %561
  %574 = load double, double* %57, align 8, !dbg !2530
  %575 = fcmp olt double %574, 0x1FF0000000000001, !dbg !2530
  br i1 %575, label %576, label %583, !dbg !2530

; <label>:576:                                    ; preds = %573
  %577 = load double, double* %54, align 8, !dbg !2533
  %578 = fmul double %577, 0x5FEFFFFFFFFFFFFF, !dbg !2533
  store double %578, double* %54, align 8, !dbg !2533
  %579 = load double, double* %53, align 8, !dbg !2533
  %580 = fmul double %579, 0x5FEFFFFFFFFFFFFF, !dbg !2533
  store double %580, double* %53, align 8, !dbg !2533
  %581 = load i32, i32* %32, align 4, !dbg !2533
  %582 = add nsw i32 %581, -1, !dbg !2533
  store i32 %582, i32* %32, align 4, !dbg !2533
  br label %583, !dbg !2533

; <label>:583:                                    ; preds = %576, %573
  br label %584

; <label>:584:                                    ; preds = %583, %566
  br label %585, !dbg !2536

; <label>:585:                                    ; preds = %584
  br label %586, !dbg !2538

; <label>:586:                                    ; preds = %585
  %587 = load double, double* %56, align 8, !dbg !2539
  %588 = fadd double %587, 1.000000e+00, !dbg !2539
  store double %588, double* %56, align 8, !dbg !2539
  br label %538, !dbg !2541, !llvm.loop !2542

; <label>:589:                                    ; preds = %538
  %590 = load double, double* %35, align 8, !dbg !2544
  %591 = load i32, i32* %32, align 4, !dbg !2545
  %592 = sitofp i32 %591 to double, !dbg !2545
  %593 = load double, double* %50, align 8, !dbg !2546
  %594 = fmul double %592, %593, !dbg !2547
  %595 = fadd double %590, %594, !dbg !2548
  %596 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !2549
  store double %595, double* %596, align 8, !dbg !2550
  %597 = load double, double* %35, align 8, !dbg !2551
  %598 = call double @fabs(double %597) #1, !dbg !2552
  %599 = load i32, i32* %32, align 4, !dbg !2553
  %600 = sitofp i32 %599 to double, !dbg !2553
  %601 = load double, double* %50, align 8, !dbg !2554
  %602 = fmul double %600, %601, !dbg !2555
  %603 = call double @fabs(double %602) #1, !dbg !2556
  %604 = fadd double %598, %603, !dbg !2557
  %605 = fmul double 0x3CC0000000000000, %604, !dbg !2558
  %606 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !2559
  store double %605, double* %606, align 8, !dbg !2560
  %607 = load double, double* %54, align 8, !dbg !2561
  %608 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !2562
  store double %607, double* %608, align 8, !dbg !2563
  %609 = load double, double* %49, align 8, !dbg !2564
  %610 = fmul double 2.000000e+00, %609, !dbg !2565
  %611 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 1, !dbg !2566
  %612 = load double, double* %611, align 8, !dbg !2566
  %613 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !2567
  %614 = load double, double* %613, align 8, !dbg !2567
  %615 = fdiv double %612, %614, !dbg !2568
  %616 = call double @fabs(double %615) #1, !dbg !2569
  %617 = fmul double %610, %616, !dbg !2570
  %618 = load double, double* %54, align 8, !dbg !2571
  %619 = call double @fabs(double %618) #1, !dbg !2572
  %620 = fmul double %617, %619, !dbg !2573
  %621 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !2574
  store double %620, double* %621, align 8, !dbg !2575
  %622 = load double, double* %49, align 8, !dbg !2576
  %623 = fmul double 2.000000e+00, %622, !dbg !2577
  %624 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !2578
  %625 = load double, double* %624, align 8, !dbg !2578
  %626 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 0, !dbg !2579
  %627 = load double, double* %626, align 8, !dbg !2579
  %628 = fdiv double %625, %627, !dbg !2580
  %629 = call double @fabs(double %628) #1, !dbg !2581
  %630 = fmul double %623, %629, !dbg !2582
  %631 = load double, double* %54, align 8, !dbg !2583
  %632 = call double @fabs(double %631) #1, !dbg !2584
  %633 = fmul double %630, %632, !dbg !2585
  %634 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !2586
  %635 = load double, double* %634, align 8, !dbg !2587
  %636 = fadd double %635, %633, !dbg !2587
  store double %636, double* %634, align 8, !dbg !2587
  %637 = load double, double* %49, align 8, !dbg !2588
  %638 = fmul double 0x3CC0000000000000, %637, !dbg !2589
  %639 = load double, double* %54, align 8, !dbg !2590
  %640 = call double @fabs(double %639) #1, !dbg !2591
  %641 = fmul double %638, %640, !dbg !2592
  %642 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !2593
  %643 = load double, double* %642, align 8, !dbg !2594
  %644 = fadd double %643, %641, !dbg !2594
  store double %644, double* %642, align 8, !dbg !2594
  %645 = load double, double* %33, align 8, !dbg !2595
  %646 = load double, double* %35, align 8, !dbg !2596
  %647 = fsub double %645, %646, !dbg !2597
  %648 = call double @fabs(double %647) #1, !dbg !2598
  %649 = fadd double %648, 1.000000e+00, !dbg !2599
  %650 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !2600
  %651 = load double, double* %650, align 8, !dbg !2601
  %652 = fmul double %651, %649, !dbg !2601
  store double %652, double* %650, align 8, !dbg !2601
  %653 = load double, double* %34, align 8, !dbg !2602
  %654 = load double, double* %35, align 8, !dbg !2603
  %655 = fsub double %653, %654, !dbg !2604
  %656 = call double @fabs(double %655) #1, !dbg !2605
  %657 = fadd double %656, 1.000000e+00, !dbg !2606
  %658 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !2607
  %659 = load double, double* %658, align 8, !dbg !2608
  %660 = fmul double %659, %657, !dbg !2608
  store double %660, double* %658, align 8, !dbg !2608
  %661 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !2609
  %662 = load double, double* %661, align 8, !dbg !2609
  %663 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !2610
  %664 = load double, double* %663, align 8, !dbg !2610
  %665 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !2611
  %666 = load double, double* %665, align 8, !dbg !2611
  %667 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !2612
  %668 = load double, double* %667, align 8, !dbg !2612
  %669 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !2613
  %670 = call i32 @gsl_sf_exp_mult_err_e10_e(double %662, double %664, double %666, double %668, %struct.gsl_sf_result_e10_struct* %669), !dbg !2614
  store i32 %670, i32* %40, align 4, !dbg !2615
  br label %671

; <label>:671:                                    ; preds = %589, %426
  %672 = load i32, i32* %40, align 4, !dbg !2616
  %673 = icmp ne i32 %672, 0, !dbg !2616
  br i1 %673, label %674, label %676, !dbg !2616

; <label>:674:                                    ; preds = %671
  %675 = load i32, i32* %40, align 4, !dbg !2617
  br label %691, !dbg !2617

; <label>:676:                                    ; preds = %671
  %677 = load i32, i32* %38, align 4, !dbg !2618
  %678 = icmp ne i32 %677, 0, !dbg !2618
  br i1 %678, label %679, label %681, !dbg !2618

; <label>:679:                                    ; preds = %676
  %680 = load i32, i32* %38, align 4, !dbg !2619
  br label %689, !dbg !2619

; <label>:681:                                    ; preds = %676
  %682 = load i32, i32* %39, align 4, !dbg !2620
  %683 = icmp ne i32 %682, 0, !dbg !2620
  br i1 %683, label %684, label %686, !dbg !2620

; <label>:684:                                    ; preds = %681
  %685 = load i32, i32* %39, align 4, !dbg !2622
  br label %687, !dbg !2622

; <label>:686:                                    ; preds = %681
  br label %687, !dbg !2624

; <label>:687:                                    ; preds = %686, %684
  %688 = phi i32 [ %685, %684 ], [ 0, %686 ], !dbg !2626
  br label %689, !dbg !2626

; <label>:689:                                    ; preds = %687, %679
  %690 = phi i32 [ %680, %679 ], [ %688, %687 ], !dbg !2628
  br label %691, !dbg !2628

; <label>:691:                                    ; preds = %689, %674
  %692 = phi i32 [ %675, %674 ], [ %690, %689 ], !dbg !2630
  store i32 %692, i32* %5, align 4, !dbg !2632
  br label %1320, !dbg !2632

; <label>:693:                                    ; preds = %321
  %694 = load double, double* %7, align 8, !dbg !2633
  %695 = load double, double* %6, align 8, !dbg !2635
  %696 = fmul double 2.000000e+00, %695, !dbg !2636
  %697 = load double, double* %8, align 8, !dbg !2637
  %698 = fadd double %696, %697, !dbg !2638
  %699 = fcmp oge double %694, %698, !dbg !2639
  br i1 %699, label %700, label %896, !dbg !2640

; <label>:700:                                    ; preds = %693
  call void @llvm.dbg.declare(metadata i32* %58, metadata !2641, metadata !63), !dbg !2643
  store i32 0, i32* %58, align 4, !dbg !2643
  call void @llvm.dbg.declare(metadata double* %59, metadata !2644, metadata !63), !dbg !2645
  %701 = load double, double* %6, align 8, !dbg !2646
  %702 = load double, double* %6, align 8, !dbg !2647
  %703 = call double @floor(double %702) #1, !dbg !2648
  %704 = fsub double %701, %703, !dbg !2649
  store double %704, double* %59, align 8, !dbg !2645
  call void @llvm.dbg.declare(metadata double* %60, metadata !2650, metadata !63), !dbg !2651
  store double 0x5FEFFFFFFFFFFFFF, double* %60, align 8, !dbg !2651
  call void @llvm.dbg.declare(metadata double* %61, metadata !2652, metadata !63), !dbg !2653
  call void @llvm.dbg.declare(metadata double* %62, metadata !2654, metadata !63), !dbg !2655
  call void @llvm.dbg.declare(metadata double* %63, metadata !2656, metadata !63), !dbg !2657
  call void @llvm.dbg.declare(metadata double* %64, metadata !2658, metadata !63), !dbg !2659
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %65, metadata !2660, metadata !63), !dbg !2661
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %66, metadata !2662, metadata !63), !dbg !2663
  call void @llvm.dbg.declare(metadata i32* %67, metadata !2664, metadata !63), !dbg !2665
  %705 = load double, double* %59, align 8, !dbg !2666
  %706 = fsub double %705, 1.000000e+00, !dbg !2667
  %707 = load double, double* %7, align 8, !dbg !2668
  %708 = load double, double* %8, align 8, !dbg !2669
  %709 = call i32 @hyperg_U_small_a_bgt0(double %706, double %707, double %708, %struct.gsl_sf_result_struct* %65, double* %62), !dbg !2670
  store i32 %709, i32* %67, align 4, !dbg !2665
  call void @llvm.dbg.declare(metadata i32* %68, metadata !2671, metadata !63), !dbg !2672
  %710 = load double, double* %59, align 8, !dbg !2673
  %711 = load double, double* %7, align 8, !dbg !2674
  %712 = load double, double* %8, align 8, !dbg !2675
  %713 = call i32 @hyperg_U_small_a_bgt0(double %710, double %711, double %712, %struct.gsl_sf_result_struct* %66, double* %63), !dbg !2676
  store i32 %713, i32* %68, align 4, !dbg !2672
  call void @llvm.dbg.declare(metadata i32* %69, metadata !2677, metadata !63), !dbg !2678
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %70, metadata !2679, metadata !63), !dbg !2680
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %71, metadata !2681, metadata !63), !dbg !2682
  call void @llvm.dbg.declare(metadata double* %72, metadata !2683, metadata !63), !dbg !2684
  %714 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !2685
  %715 = load double, double* %714, align 8, !dbg !2685
  store double %715, double* %72, align 8, !dbg !2684
  call void @llvm.dbg.declare(metadata double* %73, metadata !2686, metadata !63), !dbg !2687
  %716 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !2688
  %717 = load double, double* %716, align 8, !dbg !2688
  store double %717, double* %73, align 8, !dbg !2687
  call void @llvm.dbg.declare(metadata double* %74, metadata !2689, metadata !63), !dbg !2690
  call void @llvm.dbg.declare(metadata double* %75, metadata !2691, metadata !63), !dbg !2692
  %718 = load double, double* %62, align 8, !dbg !2693
  %719 = load double, double* %63, align 8, !dbg !2693
  %720 = fcmp ogt double %718, %719, !dbg !2693
  br i1 %720, label %721, label %723, !dbg !2693

; <label>:721:                                    ; preds = %700
  %722 = load double, double* %62, align 8, !dbg !2694
  br label %725, !dbg !2694

; <label>:723:                                    ; preds = %700
  %724 = load double, double* %63, align 8, !dbg !2696
  br label %725, !dbg !2696

; <label>:725:                                    ; preds = %723, %721
  %726 = phi double [ %722, %721 ], [ %724, %723 ], !dbg !2698
  store double %726, double* %64, align 8, !dbg !2700
  %727 = load double, double* %62, align 8, !dbg !2701
  %728 = load double, double* %64, align 8, !dbg !2702
  %729 = fsub double %727, %728, !dbg !2703
  %730 = call double @exp(double %729) #6, !dbg !2704
  %731 = load double, double* %72, align 8, !dbg !2705
  %732 = fmul double %731, %730, !dbg !2705
  store double %732, double* %72, align 8, !dbg !2705
  %733 = load double, double* %63, align 8, !dbg !2706
  %734 = load double, double* %64, align 8, !dbg !2707
  %735 = fsub double %733, %734, !dbg !2708
  %736 = call double @exp(double %735) #6, !dbg !2709
  %737 = load double, double* %73, align 8, !dbg !2710
  %738 = fmul double %737, %736, !dbg !2710
  store double %738, double* %73, align 8, !dbg !2710
  %739 = load double, double* %59, align 8, !dbg !2711
  store double %739, double* %75, align 8, !dbg !2713
  br label %740, !dbg !2714

; <label>:740:                                    ; preds = %791, %725
  %741 = load double, double* %75, align 8, !dbg !2715
  %742 = load double, double* %6, align 8, !dbg !2718
  %743 = fsub double %742, 1.000000e-01, !dbg !2719
  %744 = fcmp olt double %741, %743, !dbg !2720
  br i1 %744, label %745, label %794, !dbg !2721

; <label>:745:                                    ; preds = %740
  %746 = load double, double* %72, align 8, !dbg !2722
  %747 = load double, double* %7, align 8, !dbg !2724
  %748 = load double, double* %75, align 8, !dbg !2725
  %749 = fmul double 2.000000e+00, %748, !dbg !2726
  %750 = fsub double %747, %749, !dbg !2727
  %751 = load double, double* %8, align 8, !dbg !2728
  %752 = fsub double %750, %751, !dbg !2729
  %753 = load double, double* %73, align 8, !dbg !2730
  %754 = fmul double %752, %753, !dbg !2731
  %755 = fadd double %746, %754, !dbg !2732
  %756 = fsub double -0.000000e+00, %755, !dbg !2733
  %757 = load double, double* %75, align 8, !dbg !2734
  %758 = load double, double* %75, align 8, !dbg !2735
  %759 = fadd double 1.000000e+00, %758, !dbg !2736
  %760 = load double, double* %7, align 8, !dbg !2737
  %761 = fsub double %759, %760, !dbg !2738
  %762 = fmul double %757, %761, !dbg !2739
  %763 = fdiv double %756, %762, !dbg !2740
  store double %763, double* %74, align 8, !dbg !2741
  %764 = load double, double* %73, align 8, !dbg !2742
  store double %764, double* %72, align 8, !dbg !2743
  %765 = load double, double* %74, align 8, !dbg !2744
  store double %765, double* %73, align 8, !dbg !2745
  br label %766, !dbg !2746, !llvm.loop !2747

; <label>:766:                                    ; preds = %745
  call void @llvm.dbg.declare(metadata double* %76, metadata !2748, metadata !63), !dbg !2750
  %767 = load double, double* %73, align 8, !dbg !2751
  %768 = call double @fabs(double %767) #1, !dbg !2751
  store double %768, double* %76, align 8, !dbg !2751
  %769 = load double, double* %76, align 8, !dbg !2751
  %770 = fcmp ogt double %769, 0x5FEFFFFFFFFFFFFF, !dbg !2751
  br i1 %770, label %771, label %778, !dbg !2751

; <label>:771:                                    ; preds = %766
  %772 = load double, double* %73, align 8, !dbg !2753
  %773 = fdiv double %772, 0x5FEFFFFFFFFFFFFF, !dbg !2753
  store double %773, double* %73, align 8, !dbg !2753
  %774 = load double, double* %72, align 8, !dbg !2753
  %775 = fdiv double %774, 0x5FEFFFFFFFFFFFFF, !dbg !2753
  store double %775, double* %72, align 8, !dbg !2753
  %776 = load i32, i32* %58, align 4, !dbg !2753
  %777 = add nsw i32 %776, 1, !dbg !2753
  store i32 %777, i32* %58, align 4, !dbg !2753
  br label %789, !dbg !2753

; <label>:778:                                    ; preds = %766
  %779 = load double, double* %76, align 8, !dbg !2757
  %780 = fcmp olt double %779, 0x1FF0000000000001, !dbg !2757
  br i1 %780, label %781, label %788, !dbg !2757

; <label>:781:                                    ; preds = %778
  %782 = load double, double* %73, align 8, !dbg !2760
  %783 = fmul double %782, 0x5FEFFFFFFFFFFFFF, !dbg !2760
  store double %783, double* %73, align 8, !dbg !2760
  %784 = load double, double* %72, align 8, !dbg !2760
  %785 = fmul double %784, 0x5FEFFFFFFFFFFFFF, !dbg !2760
  store double %785, double* %72, align 8, !dbg !2760
  %786 = load i32, i32* %58, align 4, !dbg !2760
  %787 = add nsw i32 %786, -1, !dbg !2760
  store i32 %787, i32* %58, align 4, !dbg !2760
  br label %788, !dbg !2760

; <label>:788:                                    ; preds = %781, %778
  br label %789

; <label>:789:                                    ; preds = %788, %771
  br label %790, !dbg !2763

; <label>:790:                                    ; preds = %789
  br label %791, !dbg !2765

; <label>:791:                                    ; preds = %790
  %792 = load double, double* %75, align 8, !dbg !2766
  %793 = fadd double %792, 1.000000e+00, !dbg !2766
  store double %793, double* %75, align 8, !dbg !2766
  br label %740, !dbg !2768, !llvm.loop !2769

; <label>:794:                                    ; preds = %740
  %795 = call double @log(double 0x5FEFFFFFFFFFFFFF) #6, !dbg !2771
  store double %795, double* %61, align 8, !dbg !2772
  %796 = load double, double* %64, align 8, !dbg !2773
  %797 = load i32, i32* %58, align 4, !dbg !2774
  %798 = sitofp i32 %797 to double, !dbg !2774
  %799 = load double, double* %61, align 8, !dbg !2775
  %800 = fmul double %798, %799, !dbg !2776
  %801 = fadd double %796, %800, !dbg !2777
  %802 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !2778
  store double %801, double* %802, align 8, !dbg !2779
  %803 = load double, double* %64, align 8, !dbg !2780
  %804 = call double @fabs(double %803) #1, !dbg !2781
  %805 = load i32, i32* %58, align 4, !dbg !2782
  %806 = sitofp i32 %805 to double, !dbg !2782
  %807 = load double, double* %61, align 8, !dbg !2783
  %808 = fmul double %806, %807, !dbg !2784
  %809 = call double @fabs(double %808) #1, !dbg !2785
  %810 = fadd double %804, %809, !dbg !2786
  %811 = fmul double 0x3CC0000000000000, %810, !dbg !2787
  %812 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 1, !dbg !2788
  store double %811, double* %812, align 8, !dbg !2789
  %813 = load double, double* %73, align 8, !dbg !2790
  %814 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !2791
  store double %813, double* %814, align 8, !dbg !2792
  %815 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 1, !dbg !2793
  %816 = load double, double* %815, align 8, !dbg !2793
  %817 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !2794
  %818 = load double, double* %817, align 8, !dbg !2794
  %819 = fdiv double %816, %818, !dbg !2795
  %820 = call double @fabs(double %819) #1, !dbg !2796
  %821 = load double, double* %73, align 8, !dbg !2797
  %822 = call double @fabs(double %821) #1, !dbg !2798
  %823 = fmul double %820, %822, !dbg !2799
  %824 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !2800
  store double %823, double* %824, align 8, !dbg !2801
  %825 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 1, !dbg !2802
  %826 = load double, double* %825, align 8, !dbg !2802
  %827 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %66, i32 0, i32 0, !dbg !2803
  %828 = load double, double* %827, align 8, !dbg !2803
  %829 = fdiv double %826, %828, !dbg !2804
  %830 = call double @fabs(double %829) #1, !dbg !2805
  %831 = load double, double* %73, align 8, !dbg !2806
  %832 = call double @fabs(double %831) #1, !dbg !2807
  %833 = fmul double %830, %832, !dbg !2808
  %834 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !2809
  %835 = load double, double* %834, align 8, !dbg !2810
  %836 = fadd double %835, %833, !dbg !2810
  store double %836, double* %834, align 8, !dbg !2810
  %837 = load double, double* %6, align 8, !dbg !2811
  %838 = load double, double* %59, align 8, !dbg !2812
  %839 = fsub double %837, %838, !dbg !2813
  %840 = call double @fabs(double %839) #1, !dbg !2814
  %841 = fadd double %840, 1.000000e+00, !dbg !2815
  %842 = fmul double 0x3CC0000000000000, %841, !dbg !2816
  %843 = load double, double* %73, align 8, !dbg !2817
  %844 = call double @fabs(double %843) #1, !dbg !2818
  %845 = fmul double %842, %844, !dbg !2819
  %846 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !2820
  %847 = load double, double* %846, align 8, !dbg !2821
  %848 = fadd double %847, %845, !dbg !2821
  store double %848, double* %846, align 8, !dbg !2821
  %849 = load double, double* %62, align 8, !dbg !2822
  %850 = load double, double* %64, align 8, !dbg !2823
  %851 = fsub double %849, %850, !dbg !2824
  %852 = call double @fabs(double %851) #1, !dbg !2825
  %853 = fadd double %852, 1.000000e+00, !dbg !2826
  %854 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !2827
  %855 = load double, double* %854, align 8, !dbg !2828
  %856 = fmul double %855, %853, !dbg !2828
  store double %856, double* %854, align 8, !dbg !2828
  %857 = load double, double* %63, align 8, !dbg !2829
  %858 = load double, double* %64, align 8, !dbg !2830
  %859 = fsub double %857, %858, !dbg !2831
  %860 = call double @fabs(double %859) #1, !dbg !2832
  %861 = fadd double %860, 1.000000e+00, !dbg !2833
  %862 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !2834
  %863 = load double, double* %862, align 8, !dbg !2835
  %864 = fmul double %863, %861, !dbg !2835
  store double %864, double* %862, align 8, !dbg !2835
  %865 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 0, !dbg !2836
  %866 = load double, double* %865, align 8, !dbg !2836
  %867 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 1, !dbg !2837
  %868 = load double, double* %867, align 8, !dbg !2837
  %869 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 0, !dbg !2838
  %870 = load double, double* %869, align 8, !dbg !2838
  %871 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %71, i32 0, i32 1, !dbg !2839
  %872 = load double, double* %871, align 8, !dbg !2839
  %873 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !2840
  %874 = call i32 @gsl_sf_exp_mult_err_e10_e(double %866, double %868, double %870, double %872, %struct.gsl_sf_result_e10_struct* %873), !dbg !2841
  store i32 %874, i32* %69, align 4, !dbg !2842
  %875 = load i32, i32* %69, align 4, !dbg !2843
  %876 = icmp ne i32 %875, 0, !dbg !2843
  br i1 %876, label %877, label %879, !dbg !2843

; <label>:877:                                    ; preds = %794
  %878 = load i32, i32* %69, align 4, !dbg !2844
  br label %894, !dbg !2844

; <label>:879:                                    ; preds = %794
  %880 = load i32, i32* %67, align 4, !dbg !2845
  %881 = icmp ne i32 %880, 0, !dbg !2845
  br i1 %881, label %882, label %884, !dbg !2845

; <label>:882:                                    ; preds = %879
  %883 = load i32, i32* %67, align 4, !dbg !2846
  br label %892, !dbg !2846

; <label>:884:                                    ; preds = %879
  %885 = load i32, i32* %68, align 4, !dbg !2847
  %886 = icmp ne i32 %885, 0, !dbg !2847
  br i1 %886, label %887, label %889, !dbg !2847

; <label>:887:                                    ; preds = %884
  %888 = load i32, i32* %68, align 4, !dbg !2849
  br label %890, !dbg !2849

; <label>:889:                                    ; preds = %884
  br label %890, !dbg !2851

; <label>:890:                                    ; preds = %889, %887
  %891 = phi i32 [ %888, %887 ], [ 0, %889 ], !dbg !2853
  br label %892, !dbg !2853

; <label>:892:                                    ; preds = %890, %882
  %893 = phi i32 [ %883, %882 ], [ %891, %890 ], !dbg !2855
  br label %894, !dbg !2855

; <label>:894:                                    ; preds = %892, %877
  %895 = phi i32 [ %878, %877 ], [ %893, %892 ], !dbg !2857
  store i32 %895, i32* %5, align 4, !dbg !2859
  br label %1320, !dbg !2859

; <label>:896:                                    ; preds = %693
  %897 = load double, double* %7, align 8, !dbg !2860
  %898 = load double, double* %8, align 8, !dbg !2863
  %899 = fcmp ole double %897, %898, !dbg !2864
  br i1 %899, label %900, label %1053, !dbg !2865

; <label>:900:                                    ; preds = %896
  call void @llvm.dbg.declare(metadata double* %77, metadata !2866, metadata !63), !dbg !2868
  %901 = load double, double* %6, align 8, !dbg !2869
  %902 = load double, double* %6, align 8, !dbg !2870
  %903 = call double @floor(double %902) #1, !dbg !2871
  %904 = fsub double %901, %903, !dbg !2872
  store double %904, double* %77, align 8, !dbg !2868
  call void @llvm.dbg.declare(metadata double* %78, metadata !2873, metadata !63), !dbg !2874
  store double 0x5FEFFFFFFFFFFFFF, double* %78, align 8, !dbg !2874
  call void @llvm.dbg.declare(metadata i32* %79, metadata !2875, metadata !63), !dbg !2876
  store i32 0, i32* %79, align 4, !dbg !2876
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %80, metadata !2877, metadata !63), !dbg !2878
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %81, metadata !2879, metadata !63), !dbg !2880
  call void @llvm.dbg.declare(metadata double* %82, metadata !2881, metadata !63), !dbg !2882
  call void @llvm.dbg.declare(metadata double* %83, metadata !2883, metadata !63), !dbg !2884
  call void @llvm.dbg.declare(metadata double* %84, metadata !2885, metadata !63), !dbg !2886
  call void @llvm.dbg.declare(metadata double* %85, metadata !2887, metadata !63), !dbg !2888
  call void @llvm.dbg.declare(metadata double* %86, metadata !2889, metadata !63), !dbg !2890
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %87, metadata !2891, metadata !63), !dbg !2892
  call void @llvm.dbg.declare(metadata double* %88, metadata !2893, metadata !63), !dbg !2894
  call void @llvm.dbg.declare(metadata double* %89, metadata !2895, metadata !63), !dbg !2896
  call void @llvm.dbg.declare(metadata double* %90, metadata !2897, metadata !63), !dbg !2898
  call void @llvm.dbg.declare(metadata i32* %91, metadata !2899, metadata !63), !dbg !2900
  call void @llvm.dbg.declare(metadata i32* %92, metadata !2901, metadata !63), !dbg !2902
  %905 = load double, double* %6, align 8, !dbg !2903
  %906 = load double, double* %7, align 8, !dbg !2904
  %907 = load double, double* %8, align 8, !dbg !2905
  %908 = call i32 @hyperg_U_CF1(double %905, double %906, i32 0, double %907, double* %89, i32* %91), !dbg !2906
  store i32 %908, i32* %92, align 4, !dbg !2902
  call void @llvm.dbg.declare(metadata i32* %93, metadata !2907, metadata !63), !dbg !2908
  call void @llvm.dbg.declare(metadata i32* %94, metadata !2909, metadata !63), !dbg !2910
  %909 = load double, double* %89, align 8, !dbg !2911
  %910 = load double, double* %6, align 8, !dbg !2912
  %911 = fdiv double %909, %910, !dbg !2913
  store double %911, double* %90, align 8, !dbg !2914
  store double 0x2000000000000000, double* %85, align 8, !dbg !2915
  %912 = load double, double* %90, align 8, !dbg !2916
  %913 = load double, double* %85, align 8, !dbg !2917
  %914 = fmul double %912, %913, !dbg !2918
  store double %914, double* %84, align 8, !dbg !2919
  %915 = load double, double* %6, align 8, !dbg !2920
  store double %915, double* %88, align 8, !dbg !2922
  br label %916, !dbg !2923

; <label>:916:                                    ; preds = %967, %900
  %917 = load double, double* %88, align 8, !dbg !2924
  %918 = load double, double* %77, align 8, !dbg !2927
  %919 = fadd double %918, 1.000000e-01, !dbg !2928
  %920 = fcmp ogt double %917, %919, !dbg !2929
  br i1 %920, label %921, label %970, !dbg !2930

; <label>:921:                                    ; preds = %916
  %922 = load double, double* %7, align 8, !dbg !2931
  %923 = load double, double* %88, align 8, !dbg !2933
  %924 = fmul double 2.000000e+00, %923, !dbg !2934
  %925 = fsub double %922, %924, !dbg !2935
  %926 = load double, double* %8, align 8, !dbg !2936
  %927 = fsub double %925, %926, !dbg !2937
  %928 = load double, double* %85, align 8, !dbg !2938
  %929 = fmul double %927, %928, !dbg !2939
  %930 = load double, double* %88, align 8, !dbg !2940
  %931 = load double, double* %88, align 8, !dbg !2941
  %932 = fadd double 1.000000e+00, %931, !dbg !2942
  %933 = load double, double* %7, align 8, !dbg !2943
  %934 = fsub double %932, %933, !dbg !2944
  %935 = fmul double %930, %934, !dbg !2945
  %936 = load double, double* %84, align 8, !dbg !2946
  %937 = fmul double %935, %936, !dbg !2947
  %938 = fadd double %929, %937, !dbg !2948
  %939 = fsub double -0.000000e+00, %938, !dbg !2949
  store double %939, double* %86, align 8, !dbg !2950
  %940 = load double, double* %85, align 8, !dbg !2951
  store double %940, double* %84, align 8, !dbg !2952
  %941 = load double, double* %86, align 8, !dbg !2953
  store double %941, double* %85, align 8, !dbg !2954
  br label %942, !dbg !2955, !llvm.loop !2956

; <label>:942:                                    ; preds = %921
  call void @llvm.dbg.declare(metadata double* %95, metadata !2957, metadata !63), !dbg !2959
  %943 = load double, double* %85, align 8, !dbg !2960
  %944 = call double @fabs(double %943) #1, !dbg !2960
  store double %944, double* %95, align 8, !dbg !2960
  %945 = load double, double* %95, align 8, !dbg !2960
  %946 = fcmp ogt double %945, 0x5FEFFFFFFFFFFFFF, !dbg !2960
  br i1 %946, label %947, label %954, !dbg !2960

; <label>:947:                                    ; preds = %942
  %948 = load double, double* %85, align 8, !dbg !2962
  %949 = fdiv double %948, 0x5FEFFFFFFFFFFFFF, !dbg !2962
  store double %949, double* %85, align 8, !dbg !2962
  %950 = load double, double* %84, align 8, !dbg !2962
  %951 = fdiv double %950, 0x5FEFFFFFFFFFFFFF, !dbg !2962
  store double %951, double* %84, align 8, !dbg !2962
  %952 = load i32, i32* %79, align 4, !dbg !2962
  %953 = add nsw i32 %952, 1, !dbg !2962
  store i32 %953, i32* %79, align 4, !dbg !2962
  br label %965, !dbg !2962

; <label>:954:                                    ; preds = %942
  %955 = load double, double* %95, align 8, !dbg !2966
  %956 = fcmp olt double %955, 0x1FF0000000000001, !dbg !2966
  br i1 %956, label %957, label %964, !dbg !2966

; <label>:957:                                    ; preds = %954
  %958 = load double, double* %85, align 8, !dbg !2969
  %959 = fmul double %958, 0x5FEFFFFFFFFFFFFF, !dbg !2969
  store double %959, double* %85, align 8, !dbg !2969
  %960 = load double, double* %84, align 8, !dbg !2969
  %961 = fmul double %960, 0x5FEFFFFFFFFFFFFF, !dbg !2969
  store double %961, double* %84, align 8, !dbg !2969
  %962 = load i32, i32* %79, align 4, !dbg !2969
  %963 = add nsw i32 %962, -1, !dbg !2969
  store i32 %963, i32* %79, align 4, !dbg !2969
  br label %964, !dbg !2969

; <label>:964:                                    ; preds = %957, %954
  br label %965

; <label>:965:                                    ; preds = %964, %947
  br label %966, !dbg !2972

; <label>:966:                                    ; preds = %965
  br label %967, !dbg !2974

; <label>:967:                                    ; preds = %966
  %968 = load double, double* %88, align 8, !dbg !2975
  %969 = fsub double %968, 1.000000e+00, !dbg !2975
  store double %969, double* %88, align 8, !dbg !2975
  br label %916, !dbg !2977, !llvm.loop !2978

; <label>:970:                                    ; preds = %916
  %971 = load double, double* %77, align 8, !dbg !2980
  %972 = load double, double* %7, align 8, !dbg !2981
  %973 = load double, double* %8, align 8, !dbg !2982
  %974 = call i32 @hyperg_U_small_a_bgt0(double %971, double %972, double %973, %struct.gsl_sf_result_struct* %87, double* %83), !dbg !2983
  store i32 %974, i32* %93, align 4, !dbg !2984
  %975 = call double @log(double 0x5FEFFFFFFFFFFFFF) #6, !dbg !2985
  store double %975, double* %82, align 8, !dbg !2986
  %976 = load double, double* %83, align 8, !dbg !2987
  %977 = load i32, i32* %79, align 4, !dbg !2988
  %978 = sitofp i32 %977 to double, !dbg !2988
  %979 = load double, double* %82, align 8, !dbg !2989
  %980 = fmul double %978, %979, !dbg !2990
  %981 = fsub double %976, %980, !dbg !2991
  %982 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !2992
  store double %981, double* %982, align 8, !dbg !2993
  %983 = load double, double* %83, align 8, !dbg !2994
  %984 = call double @fabs(double %983) #1, !dbg !2995
  %985 = load i32, i32* %79, align 4, !dbg !2996
  %986 = sitofp i32 %985 to double, !dbg !2996
  %987 = load double, double* %82, align 8, !dbg !2997
  %988 = fmul double %986, %987, !dbg !2998
  %989 = call double @fabs(double %988) #1, !dbg !2999
  %990 = fadd double %984, %989, !dbg !3001
  %991 = fmul double 0x3CC0000000000000, %990, !dbg !3002
  %992 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !3003
  store double %991, double* %992, align 8, !dbg !3004
  %993 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 0, !dbg !3005
  %994 = load double, double* %993, align 8, !dbg !3005
  %995 = load double, double* %85, align 8, !dbg !3006
  %996 = fdiv double %994, %995, !dbg !3007
  %997 = fmul double 0x2000000000000000, %996, !dbg !3008
  %998 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !3009
  store double %997, double* %998, align 8, !dbg !3010
  %999 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %87, i32 0, i32 1, !dbg !3011
  %1000 = load double, double* %999, align 8, !dbg !3011
  %1001 = load double, double* %85, align 8, !dbg !3012
  %1002 = call double @fabs(double %1001) #1, !dbg !3013
  %1003 = fdiv double %1000, %1002, !dbg !3014
  %1004 = fmul double 0x2000000000000000, %1003, !dbg !3015
  %1005 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !3016
  store double %1004, double* %1005, align 8, !dbg !3017
  %1006 = load double, double* %77, align 8, !dbg !3018
  %1007 = load double, double* %6, align 8, !dbg !3019
  %1008 = fsub double %1006, %1007, !dbg !3020
  %1009 = call double @fabs(double %1008) #1, !dbg !3021
  %1010 = load i32, i32* %91, align 4, !dbg !3022
  %1011 = sitofp i32 %1010 to double, !dbg !3022
  %1012 = fadd double %1009, %1011, !dbg !3023
  %1013 = fadd double %1012, 1.000000e+00, !dbg !3024
  %1014 = fmul double 0x3CC0000000000000, %1013, !dbg !3025
  %1015 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !3026
  %1016 = load double, double* %1015, align 8, !dbg !3026
  %1017 = call double @fabs(double %1016) #1, !dbg !3027
  %1018 = fmul double %1014, %1017, !dbg !3028
  %1019 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !3029
  %1020 = load double, double* %1019, align 8, !dbg !3030
  %1021 = fadd double %1020, %1018, !dbg !3030
  store double %1021, double* %1019, align 8, !dbg !3030
  %1022 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 0, !dbg !3031
  %1023 = load double, double* %1022, align 8, !dbg !3031
  %1024 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %80, i32 0, i32 1, !dbg !3032
  %1025 = load double, double* %1024, align 8, !dbg !3032
  %1026 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !3033
  %1027 = load double, double* %1026, align 8, !dbg !3033
  %1028 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !3034
  %1029 = load double, double* %1028, align 8, !dbg !3034
  %1030 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !3035
  %1031 = call i32 @gsl_sf_exp_mult_err_e10_e(double %1023, double %1025, double %1027, double %1029, %struct.gsl_sf_result_e10_struct* %1030), !dbg !3036
  store i32 %1031, i32* %94, align 4, !dbg !3037
  %1032 = load i32, i32* %94, align 4, !dbg !3038
  %1033 = icmp ne i32 %1032, 0, !dbg !3038
  br i1 %1033, label %1034, label %1036, !dbg !3038

; <label>:1034:                                   ; preds = %970
  %1035 = load i32, i32* %94, align 4, !dbg !3039
  br label %1051, !dbg !3039

; <label>:1036:                                   ; preds = %970
  %1037 = load i32, i32* %93, align 4, !dbg !3040
  %1038 = icmp ne i32 %1037, 0, !dbg !3040
  br i1 %1038, label %1039, label %1041, !dbg !3040

; <label>:1039:                                   ; preds = %1036
  %1040 = load i32, i32* %93, align 4, !dbg !3042
  br label %1049, !dbg !3042

; <label>:1041:                                   ; preds = %1036
  %1042 = load i32, i32* %92, align 4, !dbg !3044
  %1043 = icmp ne i32 %1042, 0, !dbg !3044
  br i1 %1043, label %1044, label %1046, !dbg !3044

; <label>:1044:                                   ; preds = %1041
  %1045 = load i32, i32* %92, align 4, !dbg !3046
  br label %1047, !dbg !3046

; <label>:1046:                                   ; preds = %1041
  br label %1047, !dbg !3048

; <label>:1047:                                   ; preds = %1046, %1044
  %1048 = phi i32 [ %1045, %1044 ], [ 0, %1046 ], !dbg !3050
  br label %1049, !dbg !3050

; <label>:1049:                                   ; preds = %1047, %1039
  %1050 = phi i32 [ %1040, %1039 ], [ %1048, %1047 ], !dbg !3052
  br label %1051, !dbg !3052

; <label>:1051:                                   ; preds = %1049, %1034
  %1052 = phi i32 [ %1035, %1034 ], [ %1050, %1049 ], !dbg !3054
  store i32 %1052, i32* %5, align 4, !dbg !3056
  br label %1320, !dbg !3056

; <label>:1053:                                   ; preds = %896
  call void @llvm.dbg.declare(metadata i32* %96, metadata !3057, metadata !63), !dbg !3059
  store i32 0, i32* %96, align 4, !dbg !3059
  call void @llvm.dbg.declare(metadata i32* %97, metadata !3060, metadata !63), !dbg !3061
  store i32 0, i32* %97, align 4, !dbg !3061
  call void @llvm.dbg.declare(metadata double* %98, metadata !3062, metadata !63), !dbg !3063
  store double 0x5FEFFFFFFFFFFFFF, double* %98, align 8, !dbg !3063
  call void @llvm.dbg.declare(metadata double* %99, metadata !3064, metadata !63), !dbg !3065
  %1054 = load double, double* %6, align 8, !dbg !3066
  %1055 = load double, double* %6, align 8, !dbg !3067
  %1056 = call double @floor(double %1055) #1, !dbg !3068
  %1057 = fsub double %1054, %1056, !dbg !3069
  store double %1057, double* %99, align 8, !dbg !3065
  call void @llvm.dbg.declare(metadata double* %100, metadata !3070, metadata !63), !dbg !3071
  %1058 = load double, double* %99, align 8, !dbg !3072
  %1059 = fcmp oeq double %1058, 0.000000e+00, !dbg !3073
  br i1 %1059, label %1060, label %1061, !dbg !3072

; <label>:1060:                                   ; preds = %1053
  br label %1063, !dbg !3074

; <label>:1061:                                   ; preds = %1053
  %1062 = load double, double* %99, align 8, !dbg !3076
  br label %1063, !dbg !3078

; <label>:1063:                                   ; preds = %1061, %1060
  %1064 = phi double [ 1.000000e+00, %1060 ], [ %1062, %1061 ], !dbg !3079
  store double %1064, double* %100, align 8, !dbg !3081
  call void @llvm.dbg.declare(metadata double* %101, metadata !3082, metadata !63), !dbg !3083
  %1065 = load double, double* %100, align 8, !dbg !3084
  %1066 = load double, double* %7, align 8, !dbg !3085
  %1067 = load double, double* %8, align 8, !dbg !3086
  %1068 = fsub double %1066, %1067, !dbg !3087
  %1069 = fmul double 5.000000e-01, %1068, !dbg !3088
  %1070 = load double, double* %100, align 8, !dbg !3089
  %1071 = fsub double %1069, %1070, !dbg !3090
  %1072 = call double @ceil(double %1071) #1, !dbg !3091
  %1073 = fadd double %1065, %1072, !dbg !3092
  store double %1073, double* %101, align 8, !dbg !3083
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %102, metadata !3093, metadata !63), !dbg !3094
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %103, metadata !3095, metadata !63), !dbg !3096
  call void @llvm.dbg.declare(metadata double* %104, metadata !3097, metadata !63), !dbg !3098
  call void @llvm.dbg.declare(metadata double* %105, metadata !3099, metadata !63), !dbg !3100
  call void @llvm.dbg.declare(metadata double* %106, metadata !3101, metadata !63), !dbg !3102
  call void @llvm.dbg.declare(metadata double* %107, metadata !3103, metadata !63), !dbg !3104
  call void @llvm.dbg.declare(metadata i32* %108, metadata !3105, metadata !63), !dbg !3106
  call void @llvm.dbg.declare(metadata i32* %109, metadata !3107, metadata !63), !dbg !3108
  call void @llvm.dbg.declare(metadata i32* %110, metadata !3109, metadata !63), !dbg !3110
  call void @llvm.dbg.declare(metadata i32* %111, metadata !3111, metadata !63), !dbg !3112
  call void @llvm.dbg.declare(metadata double* %112, metadata !3113, metadata !63), !dbg !3115
  call void @llvm.dbg.declare(metadata double* %113, metadata !3116, metadata !63), !dbg !3117
  call void @llvm.dbg.declare(metadata double* %114, metadata !3118, metadata !63), !dbg !3119
  call void @llvm.dbg.declare(metadata double* %115, metadata !3120, metadata !63), !dbg !3121
  call void @llvm.dbg.declare(metadata double* %116, metadata !3122, metadata !63), !dbg !3123
  call void @llvm.dbg.declare(metadata double* %117, metadata !3124, metadata !63), !dbg !3125
  call void @llvm.dbg.declare(metadata i32* %118, metadata !3126, metadata !63), !dbg !3127
  %1074 = load double, double* %6, align 8, !dbg !3128
  %1075 = load double, double* %7, align 8, !dbg !3129
  %1076 = load double, double* %8, align 8, !dbg !3130
  %1077 = call i32 @hyperg_U_CF1(double %1074, double %1075, i32 0, double %1076, double* %116, i32* %111), !dbg !3131
  store i32 %1077, i32* %118, align 4, !dbg !3127
  %1078 = load double, double* %116, align 8, !dbg !3132
  %1079 = load double, double* %6, align 8, !dbg !3133
  %1080 = fdiv double %1078, %1079, !dbg !3134
  store double %1080, double* %117, align 8, !dbg !3135
  store double 0x2000000000000000, double* %113, align 8, !dbg !3136
  %1081 = load double, double* %117, align 8, !dbg !3137
  %1082 = load double, double* %113, align 8, !dbg !3138
  %1083 = fmul double %1081, %1082, !dbg !3139
  store double %1083, double* %112, align 8, !dbg !3140
  %1084 = load double, double* %6, align 8, !dbg !3141
  store double %1084, double* %115, align 8, !dbg !3143
  br label %1085, !dbg !3144

; <label>:1085:                                   ; preds = %1136, %1063
  %1086 = load double, double* %115, align 8, !dbg !3145
  %1087 = load double, double* %101, align 8, !dbg !3148
  %1088 = fadd double %1087, 1.000000e-01, !dbg !3149
  %1089 = fcmp ogt double %1086, %1088, !dbg !3150
  br i1 %1089, label %1090, label %1139, !dbg !3151

; <label>:1090:                                   ; preds = %1085
  %1091 = load double, double* %7, align 8, !dbg !3152
  %1092 = load double, double* %115, align 8, !dbg !3154
  %1093 = fmul double 2.000000e+00, %1092, !dbg !3155
  %1094 = fsub double %1091, %1093, !dbg !3156
  %1095 = load double, double* %8, align 8, !dbg !3157
  %1096 = fsub double %1094, %1095, !dbg !3158
  %1097 = load double, double* %113, align 8, !dbg !3159
  %1098 = fmul double %1096, %1097, !dbg !3160
  %1099 = load double, double* %115, align 8, !dbg !3161
  %1100 = load double, double* %115, align 8, !dbg !3162
  %1101 = fadd double 1.000000e+00, %1100, !dbg !3163
  %1102 = load double, double* %7, align 8, !dbg !3164
  %1103 = fsub double %1101, %1102, !dbg !3165
  %1104 = fmul double %1099, %1103, !dbg !3166
  %1105 = load double, double* %112, align 8, !dbg !3167
  %1106 = fmul double %1104, %1105, !dbg !3168
  %1107 = fadd double %1098, %1106, !dbg !3169
  %1108 = fsub double -0.000000e+00, %1107, !dbg !3170
  store double %1108, double* %114, align 8, !dbg !3171
  %1109 = load double, double* %113, align 8, !dbg !3172
  store double %1109, double* %112, align 8, !dbg !3173
  %1110 = load double, double* %114, align 8, !dbg !3174
  store double %1110, double* %113, align 8, !dbg !3175
  br label %1111, !dbg !3176, !llvm.loop !3177

; <label>:1111:                                   ; preds = %1090
  call void @llvm.dbg.declare(metadata double* %119, metadata !3178, metadata !63), !dbg !3180
  %1112 = load double, double* %113, align 8, !dbg !3181
  %1113 = call double @fabs(double %1112) #1, !dbg !3181
  store double %1113, double* %119, align 8, !dbg !3181
  %1114 = load double, double* %119, align 8, !dbg !3181
  %1115 = fcmp ogt double %1114, 0x5FEFFFFFFFFFFFFF, !dbg !3181
  br i1 %1115, label %1116, label %1123, !dbg !3181

; <label>:1116:                                   ; preds = %1111
  %1117 = load double, double* %113, align 8, !dbg !3183
  %1118 = fdiv double %1117, 0x5FEFFFFFFFFFFFFF, !dbg !3183
  store double %1118, double* %113, align 8, !dbg !3183
  %1119 = load double, double* %112, align 8, !dbg !3183
  %1120 = fdiv double %1119, 0x5FEFFFFFFFFFFFFF, !dbg !3183
  store double %1120, double* %112, align 8, !dbg !3183
  %1121 = load i32, i32* %97, align 4, !dbg !3183
  %1122 = add nsw i32 %1121, 1, !dbg !3183
  store i32 %1122, i32* %97, align 4, !dbg !3183
  br label %1134, !dbg !3183

; <label>:1123:                                   ; preds = %1111
  %1124 = load double, double* %119, align 8, !dbg !3187
  %1125 = fcmp olt double %1124, 0x1FF0000000000001, !dbg !3187
  br i1 %1125, label %1126, label %1133, !dbg !3187

; <label>:1126:                                   ; preds = %1123
  %1127 = load double, double* %113, align 8, !dbg !3190
  %1128 = fmul double %1127, 0x5FEFFFFFFFFFFFFF, !dbg !3190
  store double %1128, double* %113, align 8, !dbg !3190
  %1129 = load double, double* %112, align 8, !dbg !3190
  %1130 = fmul double %1129, 0x5FEFFFFFFFFFFFFF, !dbg !3190
  store double %1130, double* %112, align 8, !dbg !3190
  %1131 = load i32, i32* %97, align 4, !dbg !3190
  %1132 = add nsw i32 %1131, -1, !dbg !3190
  store i32 %1132, i32* %97, align 4, !dbg !3190
  br label %1133, !dbg !3190

; <label>:1133:                                   ; preds = %1126, %1123
  br label %1134

; <label>:1134:                                   ; preds = %1133, %1116
  br label %1135, !dbg !3193

; <label>:1135:                                   ; preds = %1134
  br label %1136, !dbg !3195

; <label>:1136:                                   ; preds = %1135
  %1137 = load double, double* %115, align 8, !dbg !3196
  %1138 = fsub double %1137, 1.000000e+00, !dbg !3196
  store double %1138, double* %115, align 8, !dbg !3196
  br label %1085, !dbg !3198, !llvm.loop !3199

; <label>:1139:                                   ; preds = %1085
  %1140 = load double, double* %113, align 8, !dbg !3201
  store double %1140, double* %106, align 8, !dbg !3202
  %1141 = load i32, i32* %118, align 4, !dbg !3203
  store i32 %1141, i32* %109, align 4, !dbg !3204
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %120, metadata !3205, metadata !63), !dbg !3207
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %121, metadata !3208, metadata !63), !dbg !3209
  call void @llvm.dbg.declare(metadata double* %122, metadata !3210, metadata !63), !dbg !3211
  call void @llvm.dbg.declare(metadata double* %123, metadata !3212, metadata !63), !dbg !3213
  call void @llvm.dbg.declare(metadata i32* %124, metadata !3214, metadata !63), !dbg !3215
  %1142 = load double, double* %100, align 8, !dbg !3216
  %1143 = fsub double %1142, 1.000000e+00, !dbg !3217
  %1144 = load double, double* %7, align 8, !dbg !3218
  %1145 = load double, double* %8, align 8, !dbg !3219
  %1146 = call i32 @hyperg_U_small_a_bgt0(double %1143, double %1144, double %1145, %struct.gsl_sf_result_struct* %120, double* %122), !dbg !3220
  store i32 %1146, i32* %124, align 4, !dbg !3215
  call void @llvm.dbg.declare(metadata i32* %125, metadata !3221, metadata !63), !dbg !3222
  %1147 = load double, double* %100, align 8, !dbg !3223
  %1148 = load double, double* %7, align 8, !dbg !3224
  %1149 = load double, double* %8, align 8, !dbg !3225
  %1150 = call i32 @hyperg_U_small_a_bgt0(double %1147, double %1148, double %1149, %struct.gsl_sf_result_struct* %121, double* %123), !dbg !3226
  store i32 %1150, i32* %125, align 4, !dbg !3222
  call void @llvm.dbg.declare(metadata double* %126, metadata !3227, metadata !63), !dbg !3228
  %1151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %120, i32 0, i32 0, !dbg !3229
  %1152 = load double, double* %1151, align 8, !dbg !3229
  store double %1152, double* %126, align 8, !dbg !3228
  call void @llvm.dbg.declare(metadata double* %127, metadata !3230, metadata !63), !dbg !3231
  %1153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 0, !dbg !3232
  %1154 = load double, double* %1153, align 8, !dbg !3232
  store double %1154, double* %127, align 8, !dbg !3231
  call void @llvm.dbg.declare(metadata double* %128, metadata !3233, metadata !63), !dbg !3234
  call void @llvm.dbg.declare(metadata double* %129, metadata !3235, metadata !63), !dbg !3236
  %1155 = load double, double* %122, align 8, !dbg !3237
  %1156 = load double, double* %123, align 8, !dbg !3237
  %1157 = fcmp ogt double %1155, %1156, !dbg !3237
  br i1 %1157, label %1158, label %1160, !dbg !3237

; <label>:1158:                                   ; preds = %1139
  %1159 = load double, double* %122, align 8, !dbg !3238
  br label %1162, !dbg !3238

; <label>:1160:                                   ; preds = %1139
  %1161 = load double, double* %123, align 8, !dbg !3240
  br label %1162, !dbg !3240

; <label>:1162:                                   ; preds = %1160, %1158
  %1163 = phi double [ %1159, %1158 ], [ %1161, %1160 ], !dbg !3242
  store double %1163, double* %104, align 8, !dbg !3244
  %1164 = load double, double* %122, align 8, !dbg !3245
  %1165 = load double, double* %104, align 8, !dbg !3246
  %1166 = fsub double %1164, %1165, !dbg !3247
  %1167 = call double @exp(double %1166) #6, !dbg !3248
  %1168 = load double, double* %126, align 8, !dbg !3249
  %1169 = fmul double %1168, %1167, !dbg !3249
  store double %1169, double* %126, align 8, !dbg !3249
  %1170 = load double, double* %123, align 8, !dbg !3250
  %1171 = load double, double* %104, align 8, !dbg !3251
  %1172 = fsub double %1170, %1171, !dbg !3252
  %1173 = call double @exp(double %1172) #6, !dbg !3253
  %1174 = load double, double* %127, align 8, !dbg !3254
  %1175 = fmul double %1174, %1173, !dbg !3254
  store double %1175, double* %127, align 8, !dbg !3254
  %1176 = load double, double* %100, align 8, !dbg !3255
  store double %1176, double* %129, align 8, !dbg !3257
  br label %1177, !dbg !3258

; <label>:1177:                                   ; preds = %1228, %1162
  %1178 = load double, double* %129, align 8, !dbg !3259
  %1179 = load double, double* %101, align 8, !dbg !3262
  %1180 = fsub double %1179, 1.000000e-01, !dbg !3263
  %1181 = fcmp olt double %1178, %1180, !dbg !3264
  br i1 %1181, label %1182, label %1231, !dbg !3265

; <label>:1182:                                   ; preds = %1177
  %1183 = load double, double* %126, align 8, !dbg !3266
  %1184 = load double, double* %7, align 8, !dbg !3268
  %1185 = load double, double* %129, align 8, !dbg !3269
  %1186 = fmul double 2.000000e+00, %1185, !dbg !3270
  %1187 = fsub double %1184, %1186, !dbg !3271
  %1188 = load double, double* %8, align 8, !dbg !3272
  %1189 = fsub double %1187, %1188, !dbg !3273
  %1190 = load double, double* %127, align 8, !dbg !3274
  %1191 = fmul double %1189, %1190, !dbg !3275
  %1192 = fadd double %1183, %1191, !dbg !3276
  %1193 = fsub double -0.000000e+00, %1192, !dbg !3277
  %1194 = load double, double* %129, align 8, !dbg !3278
  %1195 = load double, double* %129, align 8, !dbg !3279
  %1196 = fadd double 1.000000e+00, %1195, !dbg !3280
  %1197 = load double, double* %7, align 8, !dbg !3281
  %1198 = fsub double %1196, %1197, !dbg !3282
  %1199 = fmul double %1194, %1198, !dbg !3283
  %1200 = fdiv double %1193, %1199, !dbg !3284
  store double %1200, double* %128, align 8, !dbg !3285
  %1201 = load double, double* %127, align 8, !dbg !3286
  store double %1201, double* %126, align 8, !dbg !3287
  %1202 = load double, double* %128, align 8, !dbg !3288
  store double %1202, double* %127, align 8, !dbg !3289
  br label %1203, !dbg !3290, !llvm.loop !3291

; <label>:1203:                                   ; preds = %1182
  call void @llvm.dbg.declare(metadata double* %130, metadata !3292, metadata !63), !dbg !3294
  %1204 = load double, double* %127, align 8, !dbg !3295
  %1205 = call double @fabs(double %1204) #1, !dbg !3295
  store double %1205, double* %130, align 8, !dbg !3295
  %1206 = load double, double* %130, align 8, !dbg !3295
  %1207 = fcmp ogt double %1206, 0x5FEFFFFFFFFFFFFF, !dbg !3295
  br i1 %1207, label %1208, label %1215, !dbg !3295

; <label>:1208:                                   ; preds = %1203
  %1209 = load double, double* %127, align 8, !dbg !3297
  %1210 = fdiv double %1209, 0x5FEFFFFFFFFFFFFF, !dbg !3297
  store double %1210, double* %127, align 8, !dbg !3297
  %1211 = load double, double* %126, align 8, !dbg !3297
  %1212 = fdiv double %1211, 0x5FEFFFFFFFFFFFFF, !dbg !3297
  store double %1212, double* %126, align 8, !dbg !3297
  %1213 = load i32, i32* %96, align 4, !dbg !3297
  %1214 = add nsw i32 %1213, 1, !dbg !3297
  store i32 %1214, i32* %96, align 4, !dbg !3297
  br label %1226, !dbg !3297

; <label>:1215:                                   ; preds = %1203
  %1216 = load double, double* %130, align 8, !dbg !3301
  %1217 = fcmp olt double %1216, 0x1FF0000000000001, !dbg !3301
  br i1 %1217, label %1218, label %1225, !dbg !3301

; <label>:1218:                                   ; preds = %1215
  %1219 = load double, double* %127, align 8, !dbg !3304
  %1220 = fmul double %1219, 0x5FEFFFFFFFFFFFFF, !dbg !3304
  store double %1220, double* %127, align 8, !dbg !3304
  %1221 = load double, double* %126, align 8, !dbg !3304
  %1222 = fmul double %1221, 0x5FEFFFFFFFFFFFFF, !dbg !3304
  store double %1222, double* %126, align 8, !dbg !3304
  %1223 = load i32, i32* %96, align 4, !dbg !3304
  %1224 = add nsw i32 %1223, -1, !dbg !3304
  store i32 %1224, i32* %96, align 4, !dbg !3304
  br label %1225, !dbg !3304

; <label>:1225:                                   ; preds = %1218, %1215
  br label %1226

; <label>:1226:                                   ; preds = %1225, %1208
  br label %1227, !dbg !3307

; <label>:1227:                                   ; preds = %1226
  br label %1228, !dbg !3309

; <label>:1228:                                   ; preds = %1227
  %1229 = load double, double* %129, align 8, !dbg !3310
  %1230 = fadd double %1229, 1.000000e+00, !dbg !3310
  store double %1230, double* %129, align 8, !dbg !3310
  br label %1177, !dbg !3312, !llvm.loop !3313

; <label>:1231:                                   ; preds = %1177
  %1232 = load double, double* %127, align 8, !dbg !3315
  store double %1232, double* %107, align 8, !dbg !3316
  %1233 = load i32, i32* %124, align 4, !dbg !3317
  %1234 = icmp ne i32 %1233, 0, !dbg !3317
  br i1 %1234, label %1235, label %1237, !dbg !3317

; <label>:1235:                                   ; preds = %1231
  %1236 = load i32, i32* %124, align 4, !dbg !3318
  br label %1245, !dbg !3318

; <label>:1237:                                   ; preds = %1231
  %1238 = load i32, i32* %125, align 4, !dbg !3319
  %1239 = icmp ne i32 %1238, 0, !dbg !3319
  br i1 %1239, label %1240, label %1242, !dbg !3319

; <label>:1240:                                   ; preds = %1237
  %1241 = load i32, i32* %125, align 4, !dbg !3320
  br label %1243, !dbg !3320

; <label>:1242:                                   ; preds = %1237
  br label %1243, !dbg !3321

; <label>:1243:                                   ; preds = %1242, %1240
  %1244 = phi i32 [ %1241, %1240 ], [ 0, %1242 ], !dbg !3323
  br label %1245, !dbg !3323

; <label>:1245:                                   ; preds = %1243, %1235
  %1246 = phi i32 [ %1236, %1235 ], [ %1244, %1243 ], !dbg !3325
  store i32 %1246, i32* %108, align 4, !dbg !3327
  %1247 = call double @log(double 0x5FEFFFFFFFFFFFFF) #6, !dbg !3328
  store double %1247, double* %105, align 8, !dbg !3329
  %1248 = load double, double* %104, align 8, !dbg !3330
  %1249 = load i32, i32* %96, align 4, !dbg !3331
  %1250 = load i32, i32* %97, align 4, !dbg !3332
  %1251 = sub nsw i32 %1249, %1250, !dbg !3333
  %1252 = sitofp i32 %1251 to double, !dbg !3334
  %1253 = load double, double* %105, align 8, !dbg !3335
  %1254 = fmul double %1252, %1253, !dbg !3336
  %1255 = fadd double %1248, %1254, !dbg !3337
  %1256 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !3338
  store double %1255, double* %1256, align 8, !dbg !3339
  %1257 = load double, double* %104, align 8, !dbg !3340
  %1258 = call double @fabs(double %1257) #1, !dbg !3341
  %1259 = load i32, i32* %96, align 4, !dbg !3342
  %1260 = load i32, i32* %97, align 4, !dbg !3343
  %1261 = sub nsw i32 %1259, %1260, !dbg !3344
  %1262 = sitofp i32 %1261 to double, !dbg !3342
  %1263 = call double @fabs(double %1262) #1, !dbg !3345
  %1264 = load double, double* %105, align 8, !dbg !3346
  %1265 = call double @fabs(double %1264) #1, !dbg !3347
  %1266 = fmul double %1263, %1265, !dbg !3348
  %1267 = fadd double %1258, %1266, !dbg !3349
  %1268 = fmul double 0x3CC0000000000000, %1267, !dbg !3350
  %1269 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 1, !dbg !3351
  store double %1268, double* %1269, align 8, !dbg !3352
  %1270 = load double, double* %107, align 8, !dbg !3353
  %1271 = fmul double 0x2000000000000000, %1270, !dbg !3354
  %1272 = load double, double* %106, align 8, !dbg !3355
  %1273 = fdiv double %1271, %1272, !dbg !3356
  %1274 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !3357
  store double %1273, double* %1274, align 8, !dbg !3358
  %1275 = load double, double* %6, align 8, !dbg !3359
  %1276 = load double, double* %100, align 8, !dbg !3360
  %1277 = fsub double %1275, %1276, !dbg !3361
  %1278 = call double @fabs(double %1277) #1, !dbg !3362
  %1279 = load i32, i32* %111, align 4, !dbg !3363
  %1280 = sitofp i32 %1279 to double, !dbg !3363
  %1281 = fadd double %1278, %1280, !dbg !3364
  %1282 = fadd double %1281, 1.000000e+00, !dbg !3365
  %1283 = fmul double 0x3CC0000000000000, %1282, !dbg !3366
  %1284 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !3367
  %1285 = load double, double* %1284, align 8, !dbg !3367
  %1286 = call double @fabs(double %1285) #1, !dbg !3368
  %1287 = fmul double %1283, %1286, !dbg !3369
  %1288 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 1, !dbg !3370
  store double %1287, double* %1288, align 8, !dbg !3371
  %1289 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 0, !dbg !3372
  %1290 = load double, double* %1289, align 8, !dbg !3372
  %1291 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %102, i32 0, i32 1, !dbg !3373
  %1292 = load double, double* %1291, align 8, !dbg !3373
  %1293 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !3374
  %1294 = load double, double* %1293, align 8, !dbg !3374
  %1295 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 1, !dbg !3375
  %1296 = load double, double* %1295, align 8, !dbg !3375
  %1297 = load %struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_e10_struct** %9, align 8, !dbg !3376
  %1298 = call i32 @gsl_sf_exp_mult_err_e10_e(double %1290, double %1292, double %1294, double %1296, %struct.gsl_sf_result_e10_struct* %1297), !dbg !3377
  store i32 %1298, i32* %110, align 4, !dbg !3378
  %1299 = load i32, i32* %110, align 4, !dbg !3379
  %1300 = icmp ne i32 %1299, 0, !dbg !3379
  br i1 %1300, label %1301, label %1303, !dbg !3379

; <label>:1301:                                   ; preds = %1245
  %1302 = load i32, i32* %110, align 4, !dbg !3380
  br label %1318, !dbg !3380

; <label>:1303:                                   ; preds = %1245
  %1304 = load i32, i32* %109, align 4, !dbg !3381
  %1305 = icmp ne i32 %1304, 0, !dbg !3381
  br i1 %1305, label %1306, label %1308, !dbg !3381

; <label>:1306:                                   ; preds = %1303
  %1307 = load i32, i32* %109, align 4, !dbg !3382
  br label %1316, !dbg !3382

; <label>:1308:                                   ; preds = %1303
  %1309 = load i32, i32* %108, align 4, !dbg !3383
  %1310 = icmp ne i32 %1309, 0, !dbg !3383
  br i1 %1310, label %1311, label %1313, !dbg !3383

; <label>:1311:                                   ; preds = %1308
  %1312 = load i32, i32* %108, align 4, !dbg !3385
  br label %1314, !dbg !3385

; <label>:1313:                                   ; preds = %1308
  br label %1314, !dbg !3387

; <label>:1314:                                   ; preds = %1313, %1311
  %1315 = phi i32 [ %1312, %1311 ], [ 0, %1313 ], !dbg !3389
  br label %1316, !dbg !3389

; <label>:1316:                                   ; preds = %1314, %1306
  %1317 = phi i32 [ %1307, %1306 ], [ %1315, %1314 ], !dbg !3391
  br label %1318, !dbg !3391

; <label>:1318:                                   ; preds = %1316, %1301
  %1319 = phi i32 [ %1302, %1301 ], [ %1317, %1316 ], !dbg !3393
  store i32 %1319, i32* %5, align 4, !dbg !3395
  br label %1320, !dbg !3395

; <label>:1320:                                   ; preds = %1318, %1051, %894, %691, %305, %283, %250, %200, %147
  %1321 = load i32, i32* %5, align 4, !dbg !3396
  ret i32 %1321, !dbg !3396
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_U_int_e(i32, i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !3397 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_e10_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3401, metadata !63), !dbg !3402
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3403, metadata !63), !dbg !3404
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3405, metadata !63), !dbg !3406
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !3407, metadata !63), !dbg !3408
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct* %9, metadata !3409, metadata !63), !dbg !3410
  %12 = bitcast %struct.gsl_sf_result_e10_struct* %9 to i8*, !dbg !3410
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 24, i32 8, i1 false), !dbg !3410
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3411, metadata !63), !dbg !3412
  %13 = load i32, i32* %5, align 4, !dbg !3413
  %14 = load i32, i32* %6, align 4, !dbg !3414
  %15 = load double, double* %7, align 8, !dbg !3415
  %16 = call i32 @gsl_sf_hyperg_U_int_e10_e(i32 %13, i32 %14, double %15, %struct.gsl_sf_result_e10_struct* %9), !dbg !3416
  store i32 %16, i32* %10, align 4, !dbg !3412
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3417, metadata !63), !dbg !3418
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !3419
  %18 = call i32 @gsl_sf_result_smash_e(%struct.gsl_sf_result_e10_struct* %9, %struct.gsl_sf_result_struct* %17), !dbg !3420
  store i32 %18, i32* %11, align 4, !dbg !3418
  %19 = load i32, i32* %11, align 4, !dbg !3421
  %20 = icmp ne i32 %19, 0, !dbg !3421
  br i1 %20, label %21, label %23, !dbg !3421

; <label>:21:                                     ; preds = %4
  %22 = load i32, i32* %11, align 4, !dbg !3422
  br label %31, !dbg !3422

; <label>:23:                                     ; preds = %4
  %24 = load i32, i32* %10, align 4, !dbg !3424
  %25 = icmp ne i32 %24, 0, !dbg !3424
  br i1 %25, label %26, label %28, !dbg !3424

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %10, align 4, !dbg !3426
  br label %29, !dbg !3426

; <label>:28:                                     ; preds = %23
  br label %29, !dbg !3428

; <label>:29:                                     ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ], !dbg !3430
  br label %31, !dbg !3430

; <label>:31:                                     ; preds = %29, %21
  %32 = phi i32 [ %22, %21 ], [ %30, %29 ], !dbg !3432
  ret i32 %32, !dbg !3434
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare i32 @gsl_sf_result_smash_e(%struct.gsl_sf_result_e10_struct*, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_hyperg_U_e(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !3435 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca %struct.gsl_sf_result_e10_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !3438, metadata !63), !dbg !3439
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3440, metadata !63), !dbg !3441
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3442, metadata !63), !dbg !3443
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !3444, metadata !63), !dbg !3445
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_e10_struct* %9, metadata !3446, metadata !63), !dbg !3447
  %12 = bitcast %struct.gsl_sf_result_e10_struct* %9 to i8*, !dbg !3447
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 24, i32 8, i1 false), !dbg !3447
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3448, metadata !63), !dbg !3449
  %13 = load double, double* %5, align 8, !dbg !3450
  %14 = load double, double* %6, align 8, !dbg !3451
  %15 = load double, double* %7, align 8, !dbg !3452
  %16 = call i32 @gsl_sf_hyperg_U_e10_e(double %13, double %14, double %15, %struct.gsl_sf_result_e10_struct* %9), !dbg !3453
  store i32 %16, i32* %10, align 4, !dbg !3449
  call void @llvm.dbg.declare(metadata i32* %11, metadata !3454, metadata !63), !dbg !3455
  %17 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !3456
  %18 = call i32 @gsl_sf_result_smash_e(%struct.gsl_sf_result_e10_struct* %9, %struct.gsl_sf_result_struct* %17), !dbg !3457
  store i32 %18, i32* %11, align 4, !dbg !3455
  %19 = load i32, i32* %11, align 4, !dbg !3458
  %20 = icmp ne i32 %19, 0, !dbg !3458
  br i1 %20, label %21, label %23, !dbg !3458

; <label>:21:                                     ; preds = %4
  %22 = load i32, i32* %11, align 4, !dbg !3459
  br label %31, !dbg !3459

; <label>:23:                                     ; preds = %4
  %24 = load i32, i32* %10, align 4, !dbg !3461
  %25 = icmp ne i32 %24, 0, !dbg !3461
  br i1 %25, label %26, label %28, !dbg !3461

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %10, align 4, !dbg !3463
  br label %29, !dbg !3463

; <label>:28:                                     ; preds = %23
  br label %29, !dbg !3465

; <label>:29:                                     ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ], !dbg !3467
  br label %31, !dbg !3467

; <label>:31:                                     ; preds = %29, %21
  %32 = phi i32 [ %22, %21 ], [ %30, %29 ], !dbg !3469
  ret i32 %32, !dbg !3471
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_U_int(i32, i32, double) #0 !dbg !3472 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3475, metadata !63), !dbg !3476
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3477, metadata !63), !dbg !3478
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3479, metadata !63), !dbg !3480
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !3481, metadata !63), !dbg !3482
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3483, metadata !63), !dbg !3482
  %10 = load i32, i32* %5, align 4, !dbg !3482
  %11 = load i32, i32* %6, align 4, !dbg !3482
  %12 = load double, double* %7, align 8, !dbg !3482
  %13 = call i32 @gsl_sf_hyperg_U_int_e(i32 %10, i32 %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !3482
  store i32 %13, i32* %9, align 4, !dbg !3482
  %14 = load i32, i32* %9, align 4, !dbg !3484
  %15 = icmp ne i32 %14, 0, !dbg !3484
  br i1 %15, label %16, label %22, !dbg !3482

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !3486, !llvm.loop !3489

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !3491
  call void @gsl_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1781, i32 %18), !dbg !3491
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !3491
  %20 = load double, double* %19, align 8, !dbg !3491
  store double %20, double* %4, align 8, !dbg !3491
  br label %25, !dbg !3491
                                                  ; No predecessors!
  br label %22, !dbg !3494

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !3496
  %24 = load double, double* %23, align 8, !dbg !3496
  store double %24, double* %4, align 8, !dbg !3496
  br label %25, !dbg !3496

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !3498
  ret double %26, !dbg !3498
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_hyperg_U(double, double, double) #0 !dbg !3499 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !3502, metadata !63), !dbg !3503
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3504, metadata !63), !dbg !3505
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3506, metadata !63), !dbg !3507
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !3508, metadata !63), !dbg !3509
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3510, metadata !63), !dbg !3509
  %10 = load double, double* %5, align 8, !dbg !3509
  %11 = load double, double* %6, align 8, !dbg !3509
  %12 = load double, double* %7, align 8, !dbg !3509
  %13 = call i32 @gsl_sf_hyperg_U_e(double %10, double %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !3509
  store i32 %13, i32* %9, align 4, !dbg !3509
  %14 = load i32, i32* %9, align 4, !dbg !3511
  %15 = icmp ne i32 %14, 0, !dbg !3511
  br i1 %15, label %16, label %22, !dbg !3509

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !3513, !llvm.loop !3516

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !3518
  call void @gsl_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 1786, i32 %18), !dbg !3518
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !3518
  %20 = load double, double* %19, align 8, !dbg !3518
  store double %20, double* %4, align 8, !dbg !3518
  br label %25, !dbg !3518
                                                  ; No predecessors!
  br label %22, !dbg !3521

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !3523
  %24 = load double, double* %23, align 8, !dbg !3523
  store double %24, double* %4, align 8, !dbg !3523
  br label %25, !dbg !3523

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !3525
  ret double %26, !dbg !3525
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

declare i32 @gsl_sf_exp_e10_e(double, %struct.gsl_sf_result_e10_struct*) #2

declare double @GSL_MAX_DBL(double, double) #2

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_zaU_asymp(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !3526 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3527, metadata !63), !dbg !3528
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3529, metadata !63), !dbg !3530
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3531, metadata !63), !dbg !3532
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !3533, metadata !63), !dbg !3534
  call void @llvm.dbg.declare(metadata double* %10, metadata !3535, metadata !63), !dbg !3536
  %24 = load double, double* %6, align 8, !dbg !3537
  store double %24, double* %10, align 8, !dbg !3536
  call void @llvm.dbg.declare(metadata double* %11, metadata !3538, metadata !63), !dbg !3539
  %25 = load double, double* %6, align 8, !dbg !3540
  %26 = fadd double 1.000000e+00, %25, !dbg !3541
  %27 = load double, double* %7, align 8, !dbg !3542
  %28 = fsub double %26, %27, !dbg !3543
  store double %28, double* %11, align 8, !dbg !3539
  call void @llvm.dbg.declare(metadata double* %12, metadata !3544, metadata !63), !dbg !3545
  %29 = load double, double* %10, align 8, !dbg !3546
  %30 = fadd double %29, 5.000000e-01, !dbg !3547
  %31 = call double @floor(double %30) #1, !dbg !3548
  store double %31, double* %12, align 8, !dbg !3545
  call void @llvm.dbg.declare(metadata double* %13, metadata !3549, metadata !63), !dbg !3550
  %32 = load double, double* %11, align 8, !dbg !3551
  %33 = fadd double %32, 5.000000e-01, !dbg !3552
  %34 = call double @floor(double %33) #1, !dbg !3553
  store double %34, double* %13, align 8, !dbg !3550
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3554, metadata !63), !dbg !3555
  %35 = load double, double* %10, align 8, !dbg !3556
  %36 = fcmp olt double %35, 0.000000e+00, !dbg !3557
  br i1 %36, label %37, label %43, !dbg !3558

; <label>:37:                                     ; preds = %4
  %38 = load double, double* %10, align 8, !dbg !3559
  %39 = load double, double* %12, align 8, !dbg !3561
  %40 = fsub double %38, %39, !dbg !3562
  %41 = call double @fabs(double %40) #1, !dbg !3563
  %42 = fcmp olt double %41, 0x3D4F400000000000, !dbg !3564
  br label %43

; <label>:43:                                     ; preds = %37, %4
  %44 = phi i1 [ false, %4 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32, !dbg !3565
  store i32 %45, i32* %14, align 4, !dbg !3567
  call void @llvm.dbg.declare(metadata i32* %15, metadata !3568, metadata !63), !dbg !3569
  %46 = load double, double* %11, align 8, !dbg !3570
  %47 = fcmp olt double %46, 0.000000e+00, !dbg !3571
  br i1 %47, label %48, label %54, !dbg !3572

; <label>:48:                                     ; preds = %43
  %49 = load double, double* %11, align 8, !dbg !3573
  %50 = load double, double* %13, align 8, !dbg !3574
  %51 = fsub double %49, %50, !dbg !3575
  %52 = call double @fabs(double %51) #1, !dbg !3576
  %53 = fcmp olt double %52, 0x3D4F400000000000, !dbg !3577
  br label %54

; <label>:54:                                     ; preds = %48, %43
  %55 = phi i1 [ false, %43 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32, !dbg !3578
  store i32 %56, i32* %15, align 4, !dbg !3579
  %57 = load i32, i32* %14, align 4, !dbg !3580
  %58 = icmp ne i32 %57, 0, !dbg !3580
  br i1 %58, label %62, label %59, !dbg !3582

; <label>:59:                                     ; preds = %54
  %60 = load i32, i32* %15, align 4, !dbg !3583
  %61 = icmp ne i32 %60, 0, !dbg !3583
  br i1 %61, label %62, label %128, !dbg !3585

; <label>:62:                                     ; preds = %59, %54
  call void @llvm.dbg.declare(metadata double* %16, metadata !3586, metadata !63), !dbg !3588
  %63 = load double, double* %8, align 8, !dbg !3589
  %64 = fdiv double -1.000000e+00, %63, !dbg !3590
  store double %64, double* %16, align 8, !dbg !3588
  call void @llvm.dbg.declare(metadata double* %17, metadata !3591, metadata !63), !dbg !3592
  %65 = load double, double* %10, align 8, !dbg !3593
  %66 = load double, double* %11, align 8, !dbg !3593
  %67 = fcmp olt double %65, %66, !dbg !3593
  br i1 %67, label %68, label %70, !dbg !3593

; <label>:68:                                     ; preds = %62
  %69 = load double, double* %10, align 8, !dbg !3594
  br label %72, !dbg !3594

; <label>:70:                                     ; preds = %62
  %71 = load double, double* %11, align 8, !dbg !3596
  br label %72, !dbg !3596

; <label>:72:                                     ; preds = %70, %68
  %73 = phi double [ %69, %68 ], [ %71, %70 ], !dbg !3598
  %74 = fsub double %73, 1.000000e-01, !dbg !3600
  %75 = fptosi double %74 to i32, !dbg !3601
  %76 = sub nsw i32 0, %75, !dbg !3602
  %77 = sitofp i32 %76 to double, !dbg !3602
  store double %77, double* %17, align 8, !dbg !3603
  call void @llvm.dbg.declare(metadata double* %18, metadata !3604, metadata !63), !dbg !3605
  store double 1.000000e+00, double* %18, align 8, !dbg !3605
  call void @llvm.dbg.declare(metadata double* %19, metadata !3606, metadata !63), !dbg !3607
  store double 1.000000e+00, double* %19, align 8, !dbg !3607
  call void @llvm.dbg.declare(metadata double* %20, metadata !3608, metadata !63), !dbg !3609
  store double 1.000000e+00, double* %20, align 8, !dbg !3609
  call void @llvm.dbg.declare(metadata double* %21, metadata !3610, metadata !63), !dbg !3611
  store double 0.000000e+00, double* %21, align 8, !dbg !3611
  br label %78, !dbg !3612

; <label>:78:                                     ; preds = %82, %72
  %79 = load double, double* %20, align 8, !dbg !3613
  %80 = load double, double* %17, align 8, !dbg !3614
  %81 = fcmp ole double %79, %80, !dbg !3615
  br i1 %81, label %82, label %110, !dbg !3616

; <label>:82:                                     ; preds = %78
  call void @llvm.dbg.declare(metadata double* %22, metadata !3617, metadata !63), !dbg !3619
  %83 = load double, double* %10, align 8, !dbg !3620
  %84 = load double, double* %20, align 8, !dbg !3621
  %85 = fadd double %83, %84, !dbg !3622
  %86 = fsub double %85, 1.000000e+00, !dbg !3623
  store double %86, double* %22, align 8, !dbg !3619
  call void @llvm.dbg.declare(metadata double* %23, metadata !3624, metadata !63), !dbg !3625
  %87 = load double, double* %11, align 8, !dbg !3626
  %88 = load double, double* %20, align 8, !dbg !3627
  %89 = fadd double %87, %88, !dbg !3628
  %90 = fsub double %89, 1.000000e+00, !dbg !3629
  store double %90, double* %23, align 8, !dbg !3625
  %91 = load double, double* %22, align 8, !dbg !3630
  %92 = load double, double* %20, align 8, !dbg !3631
  %93 = fdiv double %91, %92, !dbg !3632
  %94 = load double, double* %16, align 8, !dbg !3633
  %95 = fmul double %93, %94, !dbg !3634
  %96 = load double, double* %23, align 8, !dbg !3635
  %97 = fmul double %95, %96, !dbg !3636
  %98 = load double, double* %18, align 8, !dbg !3637
  %99 = fmul double %98, %97, !dbg !3637
  store double %99, double* %18, align 8, !dbg !3637
  %100 = load double, double* %18, align 8, !dbg !3638
  %101 = load double, double* %19, align 8, !dbg !3639
  %102 = fadd double %101, %100, !dbg !3639
  store double %102, double* %19, align 8, !dbg !3639
  %103 = load double, double* %18, align 8, !dbg !3640
  %104 = call double @fabs(double %103) #1, !dbg !3641
  %105 = fmul double 0x3CC0000000000000, %104, !dbg !3642
  %106 = load double, double* %21, align 8, !dbg !3643
  %107 = fadd double %106, %105, !dbg !3643
  store double %107, double* %21, align 8, !dbg !3643
  %108 = load double, double* %20, align 8, !dbg !3644
  %109 = fadd double %108, 1.000000e+00, !dbg !3644
  store double %109, double* %20, align 8, !dbg !3644
  br label %78, !dbg !3645, !llvm.loop !3646

; <label>:110:                                    ; preds = %78
  %111 = load double, double* %19, align 8, !dbg !3647
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3648
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 0, !dbg !3649
  store double %111, double* %113, align 8, !dbg !3650
  %114 = load double, double* %21, align 8, !dbg !3651
  %115 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3652
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %115, i32 0, i32 1, !dbg !3653
  store double %114, double* %116, align 8, !dbg !3654
  %117 = load double, double* %17, align 8, !dbg !3655
  %118 = call double @fabs(double %117) #1, !dbg !3656
  %119 = fadd double %118, 1.000000e+00, !dbg !3657
  %120 = fmul double 0x3CC0000000000000, %119, !dbg !3658
  %121 = load double, double* %19, align 8, !dbg !3659
  %122 = call double @fabs(double %121) #1, !dbg !3660
  %123 = fmul double %120, %122, !dbg !3661
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3662
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 1, !dbg !3663
  %126 = load double, double* %125, align 8, !dbg !3664
  %127 = fadd double %126, %123, !dbg !3664
  store double %127, double* %125, align 8, !dbg !3664
  store i32 0, i32* %5, align 4, !dbg !3665
  br label %134, !dbg !3665

; <label>:128:                                    ; preds = %59
  %129 = load double, double* %6, align 8, !dbg !3666
  %130 = load double, double* %7, align 8, !dbg !3668
  %131 = load double, double* %8, align 8, !dbg !3669
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3670
  %133 = call i32 @d9chu(double %129, double %130, double %131, %struct.gsl_sf_result_struct* %132), !dbg !3671
  store i32 %133, i32* %5, align 4, !dbg !3672
  br label %134, !dbg !3672

; <label>:134:                                    ; preds = %128, %110
  %135 = load i32, i32* %5, align 4, !dbg !3673
  ret i32 %135, !dbg !3673
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_series(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !3674 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca %struct.gsl_sf_result_struct, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !3675, metadata !63), !dbg !3676
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3677, metadata !63), !dbg !3678
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3679, metadata !63), !dbg !3680
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !3681, metadata !63), !dbg !3682
  call void @llvm.dbg.declare(metadata double* %10, metadata !3683, metadata !63), !dbg !3684
  store double 0x3E56A09E667F3BCD, double* %10, align 8, !dbg !3684
  call void @llvm.dbg.declare(metadata double* %11, metadata !3685, metadata !63), !dbg !3686
  %24 = load double, double* %7, align 8, !dbg !3687
  %25 = fcmp olt double %24, 0.000000e+00, !dbg !3688
  br i1 %25, label %26, label %30, !dbg !3687

; <label>:26:                                     ; preds = %4
  %27 = load double, double* %7, align 8, !dbg !3689
  %28 = fsub double %27, 5.000000e-01, !dbg !3691
  %29 = call double @ceil(double %28) #1, !dbg !3692
  br label %34, !dbg !3693

; <label>:30:                                     ; preds = %4
  %31 = load double, double* %7, align 8, !dbg !3694
  %32 = fadd double %31, 5.000000e-01, !dbg !3696
  %33 = call double @floor(double %32) #1, !dbg !3697
  br label %34, !dbg !3698

; <label>:34:                                     ; preds = %30, %26
  %35 = phi double [ %29, %26 ], [ %33, %30 ], !dbg !3699
  store double %35, double* %11, align 8, !dbg !3701
  call void @llvm.dbg.declare(metadata double* %12, metadata !3702, metadata !63), !dbg !3703
  %36 = load double, double* %7, align 8, !dbg !3704
  %37 = load double, double* %11, align 8, !dbg !3705
  %38 = fsub double %36, %37, !dbg !3706
  store double %38, double* %12, align 8, !dbg !3703
  call void @llvm.dbg.declare(metadata double* %13, metadata !3707, metadata !63), !dbg !3708
  %39 = load double, double* %6, align 8, !dbg !3709
  %40 = load double, double* %12, align 8, !dbg !3710
  %41 = fsub double %39, %40, !dbg !3711
  store double %41, double* %13, align 8, !dbg !3708
  call void @llvm.dbg.declare(metadata double* %14, metadata !3712, metadata !63), !dbg !3713
  %42 = load double, double* %13, align 8, !dbg !3714
  %43 = fadd double %42, 5.000000e-01, !dbg !3715
  %44 = call double @floor(double %43) #1, !dbg !3716
  store double %44, double* %14, align 8, !dbg !3713
  call void @llvm.dbg.declare(metadata double* %15, metadata !3717, metadata !63), !dbg !3718
  %45 = load double, double* %13, align 8, !dbg !3719
  %46 = load double, double* %14, align 8, !dbg !3720
  %47 = fsub double %45, %46, !dbg !3721
  %48 = call double @fabs(double %47) #1, !dbg !3722
  %49 = fcmp olt double %48, 0x3D4F400000000000, !dbg !3723
  %50 = zext i1 %49 to i32, !dbg !3723
  %51 = sitofp i32 %50 to double, !dbg !3724
  store double %51, double* %15, align 8, !dbg !3718
  %52 = load double, double* %15, align 8, !dbg !3725
  %53 = fcmp une double %52, 0.000000e+00, !dbg !3725
  br i1 %53, label %54, label %68, !dbg !3727

; <label>:54:                                     ; preds = %34
  %55 = load double, double* %13, align 8, !dbg !3728
  %56 = fcmp ole double %55, 0.000000e+00, !dbg !3730
  br i1 %56, label %57, label %68, !dbg !3731

; <label>:57:                                     ; preds = %54
  %58 = load double, double* %12, align 8, !dbg !3732
  %59 = fsub double %58, 1.000000e+00, !dbg !3734
  %60 = load double, double* %13, align 8, !dbg !3735
  %61 = call double @floor(double %60) #1, !dbg !3736
  %62 = fadd double %59, %61, !dbg !3737
  store double %62, double* %12, align 8, !dbg !3738
  %63 = load double, double* %11, align 8, !dbg !3739
  %64 = fadd double %63, 1.000000e+00, !dbg !3740
  %65 = load double, double* %13, align 8, !dbg !3741
  %66 = call double @floor(double %65) #1, !dbg !3742
  %67 = fsub double %64, %66, !dbg !3744
  store double %67, double* %11, align 8, !dbg !3745
  br label %68, !dbg !3746

; <label>:68:                                     ; preds = %57, %54, %34
  %69 = load double, double* %6, align 8, !dbg !3747
  %70 = fadd double 1.000000e+00, %69, !dbg !3749
  %71 = load double, double* %7, align 8, !dbg !3750
  %72 = fsub double %70, %71, !dbg !3751
  %73 = call double @fabs(double %72) #1, !dbg !3752
  %74 = fcmp olt double %73, 0x3E56A09E667F3BCD, !dbg !3753
  br i1 %74, label %75, label %94, !dbg !3754

; <label>:75:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata double* %16, metadata !3755, metadata !63), !dbg !3757
  %76 = load double, double* %6, align 8, !dbg !3758
  %77 = fsub double -0.000000e+00, %76, !dbg !3759
  %78 = load double, double* %8, align 8, !dbg !3760
  %79 = call double @log(double %78) #6, !dbg !3761
  %80 = fmul double %77, %79, !dbg !3762
  store double %80, double* %16, align 8, !dbg !3757
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3763, metadata !63), !dbg !3764
  %81 = load double, double* %16, align 8, !dbg !3765
  %82 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3766
  %83 = call i32 @gsl_sf_exp_e(double %81, %struct.gsl_sf_result_struct* %82), !dbg !3767
  store i32 %83, i32* %17, align 4, !dbg !3764
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3768
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !3769
  %86 = load double, double* %85, align 8, !dbg !3769
  %87 = call double @fabs(double %86) #1, !dbg !3770
  %88 = fmul double 0x3E66A09E667F3BCD, %87, !dbg !3771
  %89 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3772
  %90 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %89, i32 0, i32 1, !dbg !3773
  %91 = load double, double* %90, align 8, !dbg !3774
  %92 = fadd double %91, %88, !dbg !3774
  store double %92, double* %90, align 8, !dbg !3774
  %93 = load i32, i32* %17, align 4, !dbg !3775
  store i32 %93, i32* %5, align 4, !dbg !3776
  br label %195, !dbg !3776

; <label>:94:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3777, metadata !63), !dbg !3779
  %95 = load double, double* %11, align 8, !dbg !3780
  %96 = fptosi double %95 to i32, !dbg !3781
  store i32 %96, i32* %18, align 4, !dbg !3779
  call void @llvm.dbg.declare(metadata double* %19, metadata !3782, metadata !63), !dbg !3783
  %97 = load double, double* %8, align 8, !dbg !3784
  %98 = call double @log(double %97) #6, !dbg !3785
  store double %98, double* %19, align 8, !dbg !3783
  call void @llvm.dbg.declare(metadata double* %20, metadata !3786, metadata !63), !dbg !3787
  %99 = load double, double* %12, align 8, !dbg !3788
  %100 = fsub double -0.000000e+00, %99, !dbg !3789
  %101 = load double, double* %19, align 8, !dbg !3790
  %102 = fmul double %100, %101, !dbg !3791
  %103 = call double @exp(double %102) #6, !dbg !3792
  store double %103, double* %20, align 8, !dbg !3787
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %21, metadata !3793, metadata !63), !dbg !3794
  call void @llvm.dbg.declare(metadata i32* %22, metadata !3795, metadata !63), !dbg !3796
  %104 = load i32, i32* %18, align 4, !dbg !3797
  %105 = load double, double* %6, align 8, !dbg !3798
  %106 = load double, double* %7, align 8, !dbg !3799
  %107 = load double, double* %8, align 8, !dbg !3800
  %108 = load double, double* %20, align 8, !dbg !3801
  %109 = call i32 @hyperg_U_finite_sum(i32 %104, double %105, double %106, double %107, double %108, %struct.gsl_sf_result_struct* %21), !dbg !3802
  store i32 %109, i32* %22, align 4, !dbg !3796
  call void @llvm.dbg.declare(metadata i32* %23, metadata !3803, metadata !63), !dbg !3804
  %110 = load double, double* %20, align 8, !dbg !3805
  %111 = fsub double %110, 1.000000e+00, !dbg !3807
  %112 = call double @fabs(double %111) #1, !dbg !3808
  %113 = fcmp ogt double %112, 5.000000e-01, !dbg !3809
  br i1 %113, label %114, label %129, !dbg !3810

; <label>:114:                                    ; preds = %94
  %115 = load i32, i32* %18, align 4, !dbg !3811
  %116 = load double, double* %6, align 8, !dbg !3813
  %117 = load double, double* %11, align 8, !dbg !3814
  %118 = load double, double* %7, align 8, !dbg !3815
  %119 = load double, double* %12, align 8, !dbg !3816
  %120 = load double, double* %8, align 8, !dbg !3817
  %121 = load double, double* %20, align 8, !dbg !3818
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3819
  %123 = bitcast %struct.gsl_sf_result_struct* %21 to { double, double }*, !dbg !3820
  %124 = getelementptr inbounds { double, double }, { double, double }* %123, i32 0, i32 0, !dbg !3820
  %125 = load double, double* %124, align 8, !dbg !3820
  %126 = getelementptr inbounds { double, double }, { double, double }* %123, i32 0, i32 1, !dbg !3820
  %127 = load double, double* %126, align 8, !dbg !3820
  %128 = call i32 @hyperg_U_infinite_sum_stable(i32 %115, double %116, double %117, double %118, double %119, double %120, double %121, double %125, double %127, %struct.gsl_sf_result_struct* %122), !dbg !3820
  store i32 %128, i32* %23, align 4, !dbg !3821
  br label %180, !dbg !3822

; <label>:129:                                    ; preds = %94
  %130 = load double, double* %6, align 8, !dbg !3823
  %131 = fadd double 1.000000e+00, %130, !dbg !3826
  %132 = load double, double* %7, align 8, !dbg !3827
  %133 = fsub double %131, %132, !dbg !3828
  %134 = fcmp olt double %133, 0.000000e+00, !dbg !3829
  br i1 %134, label %135, label %164, !dbg !3830

; <label>:135:                                    ; preds = %129
  %136 = load double, double* %6, align 8, !dbg !3831
  %137 = fadd double 1.000000e+00, %136, !dbg !3833
  %138 = load double, double* %7, align 8, !dbg !3834
  %139 = fsub double %137, %138, !dbg !3835
  %140 = load double, double* %6, align 8, !dbg !3836
  %141 = fadd double 1.000000e+00, %140, !dbg !3837
  %142 = load double, double* %7, align 8, !dbg !3838
  %143 = fsub double %141, %142, !dbg !3839
  %144 = call double @floor(double %143) #1, !dbg !3840
  %145 = fcmp oeq double %139, %144, !dbg !3841
  br i1 %145, label %146, label %164, !dbg !3842

; <label>:146:                                    ; preds = %135
  %147 = load double, double* %12, align 8, !dbg !3843
  %148 = fcmp une double %147, 0.000000e+00, !dbg !3845
  br i1 %148, label %149, label %164, !dbg !3846

; <label>:149:                                    ; preds = %146
  %150 = load i32, i32* %18, align 4, !dbg !3847
  %151 = load double, double* %6, align 8, !dbg !3849
  %152 = load double, double* %11, align 8, !dbg !3850
  %153 = load double, double* %7, align 8, !dbg !3851
  %154 = load double, double* %12, align 8, !dbg !3852
  %155 = load double, double* %8, align 8, !dbg !3853
  %156 = load double, double* %20, align 8, !dbg !3854
  %157 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3855
  %158 = bitcast %struct.gsl_sf_result_struct* %21 to { double, double }*, !dbg !3856
  %159 = getelementptr inbounds { double, double }, { double, double }* %158, i32 0, i32 0, !dbg !3856
  %160 = load double, double* %159, align 8, !dbg !3856
  %161 = getelementptr inbounds { double, double }, { double, double }* %158, i32 0, i32 1, !dbg !3856
  %162 = load double, double* %161, align 8, !dbg !3856
  %163 = call i32 @hyperg_U_infinite_sum_simple(i32 %150, double %151, double %152, double %153, double %154, double %155, double %156, double %160, double %162, %struct.gsl_sf_result_struct* %157), !dbg !3856
  store i32 %163, i32* %23, align 4, !dbg !3857
  br label %179, !dbg !3858

; <label>:164:                                    ; preds = %146, %135, %129
  %165 = load i32, i32* %18, align 4, !dbg !3859
  %166 = load double, double* %6, align 8, !dbg !3861
  %167 = load double, double* %11, align 8, !dbg !3862
  %168 = load double, double* %7, align 8, !dbg !3863
  %169 = load double, double* %12, align 8, !dbg !3864
  %170 = load double, double* %8, align 8, !dbg !3865
  %171 = load double, double* %20, align 8, !dbg !3866
  %172 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !3867
  %173 = bitcast %struct.gsl_sf_result_struct* %21 to { double, double }*, !dbg !3868
  %174 = getelementptr inbounds { double, double }, { double, double }* %173, i32 0, i32 0, !dbg !3868
  %175 = load double, double* %174, align 8, !dbg !3868
  %176 = getelementptr inbounds { double, double }, { double, double }* %173, i32 0, i32 1, !dbg !3868
  %177 = load double, double* %176, align 8, !dbg !3868
  %178 = call i32 @hyperg_U_infinite_sum_improved(i32 %165, double %166, double %167, double %168, double %169, double %170, double %171, double %175, double %177, %struct.gsl_sf_result_struct* %172), !dbg !3868
  store i32 %178, i32* %23, align 4, !dbg !3869
  br label %179

; <label>:179:                                    ; preds = %164, %149
  br label %180

; <label>:180:                                    ; preds = %179, %114
  %181 = load i32, i32* %22, align 4, !dbg !3870
  %182 = icmp ne i32 %181, 0, !dbg !3870
  br i1 %182, label %183, label %185, !dbg !3870

; <label>:183:                                    ; preds = %180
  %184 = load i32, i32* %22, align 4, !dbg !3871
  br label %193, !dbg !3871

; <label>:185:                                    ; preds = %180
  %186 = load i32, i32* %23, align 4, !dbg !3873
  %187 = icmp ne i32 %186, 0, !dbg !3873
  br i1 %187, label %188, label %190, !dbg !3873

; <label>:188:                                    ; preds = %185
  %189 = load i32, i32* %23, align 4, !dbg !3875
  br label %191, !dbg !3875

; <label>:190:                                    ; preds = %185
  br label %191, !dbg !3877

; <label>:191:                                    ; preds = %190, %188
  %192 = phi i32 [ %189, %188 ], [ 0, %190 ], !dbg !3879
  br label %193, !dbg !3879

; <label>:193:                                    ; preds = %191, %183
  %194 = phi i32 [ %184, %183 ], [ %192, %191 ], !dbg !3881
  store i32 %194, i32* %5, align 4, !dbg !3883
  br label %195, !dbg !3883

; <label>:195:                                    ; preds = %193, %75
  %196 = load i32, i32* %5, align 4, !dbg !3884
  ret i32 %196, !dbg !3884
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_small_a_bgt0(double, double, double, %struct.gsl_sf_result_struct*, double*) #0 !dbg !3885 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store double %0, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !3889, metadata !63), !dbg !3890
  store double %1, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !3891, metadata !63), !dbg !3892
  store double %2, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !3893, metadata !63), !dbg !3894
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %10, metadata !3895, metadata !63), !dbg !3896
  store double* %4, double** %11, align 8
  call void @llvm.dbg.declare(metadata double** %11, metadata !3897, metadata !63), !dbg !3898
  %23 = load double, double* %7, align 8, !dbg !3899
  %24 = fcmp oeq double %23, 0.000000e+00, !dbg !3901
  br i1 %24, label %25, label %31, !dbg !3902

; <label>:25:                                     ; preds = %5
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !3903
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !3905
  store double 1.000000e+00, double* %27, align 8, !dbg !3906
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !3907
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !3908
  store double 0.000000e+00, double* %29, align 8, !dbg !3909
  %30 = load double*, double** %11, align 8, !dbg !3910
  store double 0.000000e+00, double* %30, align 8, !dbg !3911
  store i32 0, i32* %6, align 4, !dbg !3912
  br label %169, !dbg !3912

; <label>:31:                                     ; preds = %5
  %32 = load double, double* %8, align 8, !dbg !3913
  %33 = fcmp ogt double %32, 5.000000e+03, !dbg !3915
  br i1 %33, label %34, label %40, !dbg !3916

; <label>:34:                                     ; preds = %31
  %35 = load double, double* %9, align 8, !dbg !3917
  %36 = load double, double* %8, align 8, !dbg !3919
  %37 = call double @fabs(double %36) #1, !dbg !3920
  %38 = fmul double 9.000000e-01, %37, !dbg !3921
  %39 = fcmp olt double %35, %38, !dbg !3922
  br i1 %39, label %49, label %40, !dbg !3923

; <label>:40:                                     ; preds = %34, %31
  %41 = load double, double* %8, align 8, !dbg !3924
  %42 = fcmp ogt double %41, 5.000000e+02, !dbg !3925
  br i1 %42, label %43, label %61, !dbg !3926

; <label>:43:                                     ; preds = %40
  %44 = load double, double* %9, align 8, !dbg !3927
  %45 = load double, double* %8, align 8, !dbg !3929
  %46 = call double @fabs(double %45) #1, !dbg !3930
  %47 = fmul double 5.000000e-01, %46, !dbg !3931
  %48 = fcmp olt double %44, %47, !dbg !3932
  br i1 %48, label %49, label %61, !dbg !3933

; <label>:49:                                     ; preds = %43, %34
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3935, metadata !63), !dbg !3937
  %50 = load double, double* %7, align 8, !dbg !3938
  %51 = load double, double* %8, align 8, !dbg !3939
  %52 = load double, double* %9, align 8, !dbg !3940
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !3941
  %54 = load double*, double** %11, align 8, !dbg !3942
  %55 = call i32 @gsl_sf_hyperg_U_large_b_e(double %50, double %51, double %52, %struct.gsl_sf_result_struct* %53, double* %54), !dbg !3943
  store i32 %55, i32* %12, align 4, !dbg !3937
  %56 = load i32, i32* %12, align 4, !dbg !3944
  %57 = icmp eq i32 %56, 16, !dbg !3946
  br i1 %57, label %58, label %59, !dbg !3947

; <label>:58:                                     ; preds = %49
  store i32 0, i32* %6, align 4, !dbg !3948
  br label %169, !dbg !3948

; <label>:59:                                     ; preds = %49
  %60 = load i32, i32* %12, align 4, !dbg !3949
  store i32 %60, i32* %6, align 4, !dbg !3950
  br label %169, !dbg !3950

; <label>:61:                                     ; preds = %43, %40
  %62 = load double, double* %8, align 8, !dbg !3951
  %63 = fcmp ogt double %62, 1.500000e+01, !dbg !3953
  br i1 %63, label %64, label %162, !dbg !3954

; <label>:64:                                     ; preds = %61
  call void @llvm.dbg.declare(metadata double* %13, metadata !3955, metadata !63), !dbg !3957
  %65 = load double, double* %8, align 8, !dbg !3958
  %66 = load double, double* %8, align 8, !dbg !3959
  %67 = call double @floor(double %66) #1, !dbg !3960
  %68 = fsub double %65, %67, !dbg !3961
  store double %68, double* %13, align 8, !dbg !3957
  call void @llvm.dbg.declare(metadata double* %14, metadata !3962, metadata !63), !dbg !3963
  %69 = load double, double* %13, align 8, !dbg !3964
  %70 = fadd double 1.000000e+00, %69, !dbg !3965
  store double %70, double* %14, align 8, !dbg !3963
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !3966, metadata !63), !dbg !3967
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !3968, metadata !63), !dbg !3969
  call void @llvm.dbg.declare(metadata i32* %17, metadata !3970, metadata !63), !dbg !3971
  %71 = load double, double* %7, align 8, !dbg !3972
  %72 = load double, double* %14, align 8, !dbg !3973
  %73 = load double, double* %9, align 8, !dbg !3974
  %74 = call i32 @hyperg_U_small_ab(double %71, double %72, double %73, %struct.gsl_sf_result_struct* %15), !dbg !3975
  store i32 %74, i32* %17, align 4, !dbg !3971
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3976, metadata !63), !dbg !3977
  %75 = load double, double* %7, align 8, !dbg !3978
  %76 = load double, double* %14, align 8, !dbg !3979
  %77 = fadd double %76, 1.000000e+00, !dbg !3980
  %78 = load double, double* %9, align 8, !dbg !3981
  %79 = call i32 @hyperg_U_small_ab(double %75, double %77, double %78, %struct.gsl_sf_result_struct* %16), !dbg !3982
  store i32 %79, i32* %18, align 4, !dbg !3977
  call void @llvm.dbg.declare(metadata double* %19, metadata !3983, metadata !63), !dbg !3984
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !3985
  %81 = load double, double* %80, align 8, !dbg !3985
  store double %81, double* %19, align 8, !dbg !3984
  call void @llvm.dbg.declare(metadata double* %20, metadata !3986, metadata !63), !dbg !3987
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !3988
  %83 = load double, double* %82, align 8, !dbg !3988
  store double %83, double* %20, align 8, !dbg !3987
  call void @llvm.dbg.declare(metadata double* %21, metadata !3989, metadata !63), !dbg !3990
  call void @llvm.dbg.declare(metadata double* %22, metadata !3991, metadata !63), !dbg !3992
  %84 = load double, double* %14, align 8, !dbg !3993
  %85 = fadd double %84, 1.000000e+00, !dbg !3995
  store double %85, double* %22, align 8, !dbg !3996
  br label %86, !dbg !3997

; <label>:86:                                     ; preds = %109, %64
  %87 = load double, double* %22, align 8, !dbg !3998
  %88 = load double, double* %8, align 8, !dbg !4001
  %89 = fsub double %88, 1.000000e-01, !dbg !4002
  %90 = fcmp olt double %87, %89, !dbg !4003
  br i1 %90, label %91, label %112, !dbg !4004

; <label>:91:                                     ; preds = %86
  %92 = load double, double* %7, align 8, !dbg !4005
  %93 = fadd double 1.000000e+00, %92, !dbg !4007
  %94 = load double, double* %22, align 8, !dbg !4008
  %95 = fsub double %93, %94, !dbg !4009
  %96 = load double, double* %19, align 8, !dbg !4010
  %97 = fmul double %95, %96, !dbg !4011
  %98 = load double, double* %22, align 8, !dbg !4012
  %99 = load double, double* %9, align 8, !dbg !4013
  %100 = fadd double %98, %99, !dbg !4014
  %101 = fsub double %100, 1.000000e+00, !dbg !4015
  %102 = load double, double* %20, align 8, !dbg !4016
  %103 = fmul double %101, %102, !dbg !4017
  %104 = fadd double %97, %103, !dbg !4018
  %105 = load double, double* %9, align 8, !dbg !4019
  %106 = fdiv double %104, %105, !dbg !4020
  store double %106, double* %21, align 8, !dbg !4021
  %107 = load double, double* %20, align 8, !dbg !4022
  store double %107, double* %19, align 8, !dbg !4023
  %108 = load double, double* %21, align 8, !dbg !4024
  store double %108, double* %20, align 8, !dbg !4025
  br label %109, !dbg !4026

; <label>:109:                                    ; preds = %91
  %110 = load double, double* %22, align 8, !dbg !4027
  %111 = fadd double %110, 1.000000e+00, !dbg !4027
  store double %111, double* %22, align 8, !dbg !4027
  br label %86, !dbg !4029, !llvm.loop !4030

; <label>:112:                                    ; preds = %86
  %113 = load double, double* %20, align 8, !dbg !4032
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !4033
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 0, !dbg !4034
  store double %113, double* %115, align 8, !dbg !4035
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !4036
  %117 = load double, double* %116, align 8, !dbg !4036
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !4037
  %119 = load double, double* %118, align 8, !dbg !4037
  %120 = fdiv double %117, %119, !dbg !4038
  %121 = call double @fabs(double %120) #1, !dbg !4039
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !4040
  %123 = load double, double* %122, align 8, !dbg !4040
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !4041
  %125 = load double, double* %124, align 8, !dbg !4041
  %126 = fdiv double %123, %125, !dbg !4042
  %127 = call double @fabs(double %126) #1, !dbg !4043
  %128 = fadd double %121, %127, !dbg !4045
  %129 = load double, double* %20, align 8, !dbg !4046
  %130 = call double @fabs(double %129) #1, !dbg !4047
  %131 = fmul double %128, %130, !dbg !4049
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !4050
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 1, !dbg !4051
  store double %131, double* %133, align 8, !dbg !4052
  %134 = load double, double* %8, align 8, !dbg !4053
  %135 = load double, double* %14, align 8, !dbg !4054
  %136 = fsub double %134, %135, !dbg !4055
  %137 = call double @fabs(double %136) #1, !dbg !4056
  %138 = fadd double %137, 1.000000e+00, !dbg !4057
  %139 = fmul double 0x3CC0000000000000, %138, !dbg !4058
  %140 = load double, double* %20, align 8, !dbg !4059
  %141 = call double @fabs(double %140) #1, !dbg !4060
  %142 = fmul double %139, %141, !dbg !4061
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !4062
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 1, !dbg !4063
  %145 = load double, double* %144, align 8, !dbg !4064
  %146 = fadd double %145, %142, !dbg !4064
  store double %146, double* %144, align 8, !dbg !4064
  %147 = load double*, double** %11, align 8, !dbg !4065
  store double 0.000000e+00, double* %147, align 8, !dbg !4066
  %148 = load i32, i32* %17, align 4, !dbg !4067
  %149 = icmp ne i32 %148, 0, !dbg !4067
  br i1 %149, label %150, label %152, !dbg !4067

; <label>:150:                                    ; preds = %112
  %151 = load i32, i32* %17, align 4, !dbg !4068
  br label %160, !dbg !4068

; <label>:152:                                    ; preds = %112
  %153 = load i32, i32* %18, align 4, !dbg !4069
  %154 = icmp ne i32 %153, 0, !dbg !4069
  br i1 %154, label %155, label %157, !dbg !4069

; <label>:155:                                    ; preds = %152
  %156 = load i32, i32* %18, align 4, !dbg !4070
  br label %158, !dbg !4070

; <label>:157:                                    ; preds = %152
  br label %158, !dbg !4072

; <label>:158:                                    ; preds = %157, %155
  %159 = phi i32 [ %156, %155 ], [ 0, %157 ], !dbg !4074
  br label %160, !dbg !4074

; <label>:160:                                    ; preds = %158, %150
  %161 = phi i32 [ %151, %150 ], [ %159, %158 ], !dbg !4076
  store i32 %161, i32* %6, align 4, !dbg !4078
  br label %169, !dbg !4078

; <label>:162:                                    ; preds = %61
  %163 = load double*, double** %11, align 8, !dbg !4079
  store double 0.000000e+00, double* %163, align 8, !dbg !4081
  %164 = load double, double* %7, align 8, !dbg !4082
  %165 = load double, double* %8, align 8, !dbg !4083
  %166 = load double, double* %9, align 8, !dbg !4084
  %167 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %10, align 8, !dbg !4085
  %168 = call i32 @hyperg_U_small_ab(double %164, double %165, double %166, %struct.gsl_sf_result_struct* %167), !dbg !4086
  store i32 %168, i32* %6, align 4, !dbg !4087
  br label %169, !dbg !4087

; <label>:169:                                    ; preds = %162, %160, %59, %58, %25
  %170 = load i32, i32* %6, align 4, !dbg !4088
  ret i32 %170, !dbg !4088
}

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_CF1(double, double, i32, double, double*, i32*) #0 !dbg !4089 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
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
  store double %0, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !4093, metadata !63), !dbg !4094
  store double %1, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !4095, metadata !63), !dbg !4096
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4097, metadata !63), !dbg !4098
  store double %3, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !4099, metadata !63), !dbg !4100
  store double* %4, double** %12, align 8
  call void @llvm.dbg.declare(metadata double** %12, metadata !4101, metadata !63), !dbg !4102
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !4103, metadata !63), !dbg !4104
  call void @llvm.dbg.declare(metadata double* %14, metadata !4105, metadata !63), !dbg !4106
  store double 0x5FEFFFFFFFFFFFFF, double* %14, align 8, !dbg !4106
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4107, metadata !63), !dbg !4108
  store i32 20000, i32* %15, align 4, !dbg !4108
  call void @llvm.dbg.declare(metadata i32* %16, metadata !4109, metadata !63), !dbg !4110
  store i32 1, i32* %16, align 4, !dbg !4110
  call void @llvm.dbg.declare(metadata double* %17, metadata !4111, metadata !63), !dbg !4112
  store double 1.000000e+00, double* %17, align 8, !dbg !4112
  call void @llvm.dbg.declare(metadata double* %18, metadata !4113, metadata !63), !dbg !4114
  store double 0.000000e+00, double* %18, align 8, !dbg !4114
  call void @llvm.dbg.declare(metadata double* %19, metadata !4115, metadata !63), !dbg !4116
  store double 0.000000e+00, double* %19, align 8, !dbg !4116
  call void @llvm.dbg.declare(metadata double* %20, metadata !4117, metadata !63), !dbg !4118
  store double 1.000000e+00, double* %20, align 8, !dbg !4118
  call void @llvm.dbg.declare(metadata double* %21, metadata !4119, metadata !63), !dbg !4120
  %30 = load double, double* %8, align 8, !dbg !4121
  %31 = load i32, i32* %10, align 4, !dbg !4122
  %32 = sitofp i32 %31 to double, !dbg !4122
  %33 = fadd double %30, %32, !dbg !4123
  %34 = fsub double -0.000000e+00, %33, !dbg !4124
  store double %34, double* %21, align 8, !dbg !4120
  call void @llvm.dbg.declare(metadata double* %22, metadata !4125, metadata !63), !dbg !4126
  %35 = load double, double* %9, align 8, !dbg !4127
  %36 = load double, double* %8, align 8, !dbg !4128
  %37 = fmul double 2.000000e+00, %36, !dbg !4129
  %38 = fsub double %35, %37, !dbg !4130
  %39 = load double, double* %11, align 8, !dbg !4131
  %40 = fsub double %38, %39, !dbg !4132
  %41 = load i32, i32* %10, align 4, !dbg !4133
  %42 = add nsw i32 %41, 1, !dbg !4134
  %43 = sitofp i32 %42 to double, !dbg !4135
  %44 = fmul double 2.000000e+00, %43, !dbg !4136
  %45 = fsub double %40, %44, !dbg !4137
  store double %45, double* %22, align 8, !dbg !4126
  call void @llvm.dbg.declare(metadata double* %23, metadata !4138, metadata !63), !dbg !4139
  %46 = load double, double* %22, align 8, !dbg !4140
  %47 = load double, double* %19, align 8, !dbg !4141
  %48 = fmul double %46, %47, !dbg !4142
  %49 = load double, double* %21, align 8, !dbg !4143
  %50 = load double, double* %17, align 8, !dbg !4144
  %51 = fmul double %49, %50, !dbg !4145
  %52 = fadd double %48, %51, !dbg !4146
  store double %52, double* %23, align 8, !dbg !4139
  call void @llvm.dbg.declare(metadata double* %24, metadata !4147, metadata !63), !dbg !4148
  %53 = load double, double* %22, align 8, !dbg !4149
  %54 = load double, double* %20, align 8, !dbg !4150
  %55 = fmul double %53, %54, !dbg !4151
  %56 = load double, double* %21, align 8, !dbg !4152
  %57 = load double, double* %18, align 8, !dbg !4153
  %58 = fmul double %56, %57, !dbg !4154
  %59 = fadd double %55, %58, !dbg !4155
  store double %59, double* %24, align 8, !dbg !4148
  call void @llvm.dbg.declare(metadata double* %25, metadata !4156, metadata !63), !dbg !4157
  call void @llvm.dbg.declare(metadata double* %26, metadata !4158, metadata !63), !dbg !4159
  call void @llvm.dbg.declare(metadata double* %27, metadata !4160, metadata !63), !dbg !4161
  %60 = load double, double* %23, align 8, !dbg !4162
  %61 = load double, double* %24, align 8, !dbg !4163
  %62 = fdiv double %60, %61, !dbg !4164
  store double %62, double* %27, align 8, !dbg !4161
  br label %63, !dbg !4165

; <label>:63:                                     ; preds = %151, %6
  %64 = load i32, i32* %16, align 4, !dbg !4166
  %65 = icmp slt i32 %64, 20000, !dbg !4168
  br i1 %65, label %66, label %152, !dbg !4169

; <label>:66:                                     ; preds = %63
  call void @llvm.dbg.declare(metadata double* %28, metadata !4170, metadata !63), !dbg !4172
  call void @llvm.dbg.declare(metadata double* %29, metadata !4173, metadata !63), !dbg !4174
  %67 = load i32, i32* %16, align 4, !dbg !4175
  %68 = add nsw i32 %67, 1, !dbg !4175
  store i32 %68, i32* %16, align 4, !dbg !4175
  %69 = load double, double* %19, align 8, !dbg !4176
  store double %69, double* %17, align 8, !dbg !4177
  %70 = load double, double* %20, align 8, !dbg !4178
  store double %70, double* %18, align 8, !dbg !4179
  %71 = load double, double* %23, align 8, !dbg !4180
  store double %71, double* %19, align 8, !dbg !4181
  %72 = load double, double* %24, align 8, !dbg !4182
  store double %72, double* %20, align 8, !dbg !4183
  %73 = load double, double* %8, align 8, !dbg !4184
  %74 = load i32, i32* %10, align 4, !dbg !4185
  %75 = sitofp i32 %74 to double, !dbg !4185
  %76 = fadd double %73, %75, !dbg !4186
  %77 = load i32, i32* %16, align 4, !dbg !4187
  %78 = sitofp i32 %77 to double, !dbg !4187
  %79 = fadd double %76, %78, !dbg !4188
  %80 = load double, double* %9, align 8, !dbg !4189
  %81 = fsub double %79, %80, !dbg !4190
  %82 = fsub double -0.000000e+00, %81, !dbg !4191
  %83 = load double, double* %8, align 8, !dbg !4192
  %84 = load i32, i32* %10, align 4, !dbg !4193
  %85 = sitofp i32 %84 to double, !dbg !4193
  %86 = fadd double %83, %85, !dbg !4194
  %87 = load i32, i32* %16, align 4, !dbg !4195
  %88 = sitofp i32 %87 to double, !dbg !4195
  %89 = fadd double %86, %88, !dbg !4196
  %90 = fsub double %89, 1.000000e+00, !dbg !4197
  %91 = fmul double %82, %90, !dbg !4198
  store double %91, double* %25, align 8, !dbg !4199
  %92 = load double, double* %9, align 8, !dbg !4200
  %93 = load double, double* %8, align 8, !dbg !4201
  %94 = fmul double 2.000000e+00, %93, !dbg !4202
  %95 = fsub double %92, %94, !dbg !4203
  %96 = load double, double* %11, align 8, !dbg !4204
  %97 = fsub double %95, %96, !dbg !4205
  %98 = load i32, i32* %10, align 4, !dbg !4206
  %99 = load i32, i32* %16, align 4, !dbg !4207
  %100 = add nsw i32 %98, %99, !dbg !4208
  %101 = sitofp i32 %100 to double, !dbg !4209
  %102 = fmul double 2.000000e+00, %101, !dbg !4210
  %103 = fsub double %97, %102, !dbg !4211
  store double %103, double* %26, align 8, !dbg !4212
  %104 = load double, double* %26, align 8, !dbg !4213
  %105 = load double, double* %19, align 8, !dbg !4214
  %106 = fmul double %104, %105, !dbg !4215
  %107 = load double, double* %25, align 8, !dbg !4216
  %108 = load double, double* %17, align 8, !dbg !4217
  %109 = fmul double %107, %108, !dbg !4218
  %110 = fadd double %106, %109, !dbg !4219
  store double %110, double* %23, align 8, !dbg !4220
  %111 = load double, double* %26, align 8, !dbg !4221
  %112 = load double, double* %20, align 8, !dbg !4222
  %113 = fmul double %111, %112, !dbg !4223
  %114 = load double, double* %25, align 8, !dbg !4224
  %115 = load double, double* %18, align 8, !dbg !4225
  %116 = fmul double %114, %115, !dbg !4226
  %117 = fadd double %113, %116, !dbg !4227
  store double %117, double* %24, align 8, !dbg !4228
  %118 = load double, double* %23, align 8, !dbg !4229
  %119 = call double @fabs(double %118) #1, !dbg !4231
  %120 = fcmp ogt double %119, 0x5FEFFFFFFFFFFFFF, !dbg !4232
  br i1 %120, label %125, label %121, !dbg !4233

; <label>:121:                                    ; preds = %66
  %122 = load double, double* %24, align 8, !dbg !4234
  %123 = call double @fabs(double %122) #1, !dbg !4236
  %124 = fcmp ogt double %123, 0x5FEFFFFFFFFFFFFF, !dbg !4237
  br i1 %124, label %125, label %138, !dbg !4238

; <label>:125:                                    ; preds = %121, %66
  %126 = load double, double* %23, align 8, !dbg !4239
  %127 = fdiv double %126, 0x5FEFFFFFFFFFFFFF, !dbg !4239
  store double %127, double* %23, align 8, !dbg !4239
  %128 = load double, double* %24, align 8, !dbg !4241
  %129 = fdiv double %128, 0x5FEFFFFFFFFFFFFF, !dbg !4241
  store double %129, double* %24, align 8, !dbg !4241
  %130 = load double, double* %19, align 8, !dbg !4242
  %131 = fdiv double %130, 0x5FEFFFFFFFFFFFFF, !dbg !4242
  store double %131, double* %19, align 8, !dbg !4242
  %132 = load double, double* %20, align 8, !dbg !4243
  %133 = fdiv double %132, 0x5FEFFFFFFFFFFFFF, !dbg !4243
  store double %133, double* %20, align 8, !dbg !4243
  %134 = load double, double* %17, align 8, !dbg !4244
  %135 = fdiv double %134, 0x5FEFFFFFFFFFFFFF, !dbg !4244
  store double %135, double* %17, align 8, !dbg !4244
  %136 = load double, double* %18, align 8, !dbg !4245
  %137 = fdiv double %136, 0x5FEFFFFFFFFFFFFF, !dbg !4245
  store double %137, double* %18, align 8, !dbg !4245
  br label %138, !dbg !4246

; <label>:138:                                    ; preds = %125, %121
  %139 = load double, double* %27, align 8, !dbg !4247
  store double %139, double* %28, align 8, !dbg !4248
  %140 = load double, double* %23, align 8, !dbg !4249
  %141 = load double, double* %24, align 8, !dbg !4250
  %142 = fdiv double %140, %141, !dbg !4251
  store double %142, double* %27, align 8, !dbg !4252
  %143 = load double, double* %28, align 8, !dbg !4253
  %144 = load double, double* %27, align 8, !dbg !4254
  %145 = fdiv double %143, %144, !dbg !4255
  store double %145, double* %29, align 8, !dbg !4256
  %146 = load double, double* %29, align 8, !dbg !4257
  %147 = fsub double %146, 1.000000e+00, !dbg !4259
  %148 = call double @fabs(double %147) #1, !dbg !4260
  %149 = fcmp olt double %148, 0x3CE4000000000000, !dbg !4261
  br i1 %149, label %150, label %151, !dbg !4262

; <label>:150:                                    ; preds = %138
  br label %152, !dbg !4263

; <label>:151:                                    ; preds = %138
  br label %63, !dbg !4265, !llvm.loop !4267

; <label>:152:                                    ; preds = %150, %63
  %153 = load double, double* %27, align 8, !dbg !4268
  %154 = load double*, double** %12, align 8, !dbg !4269
  store double %153, double* %154, align 8, !dbg !4270
  %155 = load i32, i32* %16, align 4, !dbg !4271
  %156 = load i32*, i32** %13, align 8, !dbg !4272
  store i32 %155, i32* %156, align 4, !dbg !4273
  %157 = load i32, i32* %16, align 4, !dbg !4274
  %158 = icmp eq i32 %157, 20000, !dbg !4276
  br i1 %158, label %159, label %162, !dbg !4277

; <label>:159:                                    ; preds = %152
  br label %160, !dbg !4278, !llvm.loop !4279

; <label>:160:                                    ; preds = %159
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 121, i32 11), !dbg !4280
  store i32 11, i32* %7, align 4, !dbg !4280
  br label %163, !dbg !4280
                                                  ; No predecessors!
  br label %163, !dbg !4283

; <label>:162:                                    ; preds = %152
  store i32 0, i32* %7, align 4, !dbg !4285
  br label %163, !dbg !4285

; <label>:163:                                    ; preds = %160, %162, %161
  %164 = load i32, i32* %7, align 4, !dbg !4286
  ret i32 %164, !dbg !4286
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_lnU_beq2a(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !4287 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !4290, metadata !63), !dbg !4291
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !4292, metadata !63), !dbg !4293
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %6, metadata !4294, metadata !63), !dbg !4295
  call void @llvm.dbg.declare(metadata double* %7, metadata !4296, metadata !63), !dbg !4297
  %11 = load double, double* %5, align 8, !dbg !4298
  %12 = call double @log(double %11) #6, !dbg !4299
  store double %12, double* %7, align 8, !dbg !4297
  call void @llvm.dbg.declare(metadata double* %8, metadata !4300, metadata !63), !dbg !4301
  %13 = load double, double* %4, align 8, !dbg !4302
  %14 = fsub double %13, 5.000000e-01, !dbg !4303
  store double %14, double* %8, align 8, !dbg !4301
  call void @llvm.dbg.declare(metadata double* %9, metadata !4304, metadata !63), !dbg !4305
  %15 = load double, double* %5, align 8, !dbg !4306
  %16 = fsub double %15, 0x3FF250D048E7A1BD, !dbg !4307
  %17 = fmul double 5.000000e-01, %16, !dbg !4308
  %18 = load double, double* %8, align 8, !dbg !4309
  %19 = load double, double* %7, align 8, !dbg !4310
  %20 = fmul double %18, %19, !dbg !4311
  %21 = fsub double %17, %20, !dbg !4312
  store double %21, double* %9, align 8, !dbg !4305
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !4313, metadata !63), !dbg !4314
  %22 = load double, double* %8, align 8, !dbg !4315
  %23 = load double, double* %5, align 8, !dbg !4316
  %24 = fmul double 5.000000e-01, %23, !dbg !4317
  %25 = call i32 @gsl_sf_bessel_lnKnu_e(double %22, double %24, %struct.gsl_sf_result_struct* %10), !dbg !4318
  %26 = load double, double* %9, align 8, !dbg !4319
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !4320
  %28 = load double, double* %27, align 8, !dbg !4320
  %29 = fadd double %26, %28, !dbg !4321
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !4322
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !4323
  store double %29, double* %31, align 8, !dbg !4324
  %32 = load double, double* %5, align 8, !dbg !4325
  %33 = fmul double 5.000000e-01, %32, !dbg !4326
  %34 = call double @fabs(double %33) #1, !dbg !4327
  %35 = fadd double %34, 0x3FE250D048E7A1BD, !dbg !4328
  %36 = load double, double* %8, align 8, !dbg !4329
  %37 = load double, double* %7, align 8, !dbg !4330
  %38 = fmul double %36, %37, !dbg !4331
  %39 = call double @fabs(double %38) #1, !dbg !4332
  %40 = fadd double %35, %39, !dbg !4334
  %41 = fmul double 0x3CC0000000000000, %40, !dbg !4335
  %42 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !4336
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !4337
  store double %41, double* %43, align 8, !dbg !4338
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 1, !dbg !4339
  %45 = load double, double* %44, align 8, !dbg !4339
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !4340
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !4341
  %48 = load double, double* %47, align 8, !dbg !4342
  %49 = fadd double %48, %45, !dbg !4342
  store double %49, double* %47, align 8, !dbg !4342
  %50 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !4343
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !4344
  %52 = load double, double* %51, align 8, !dbg !4344
  %53 = call double @fabs(double %52) #1, !dbg !4345
  %54 = fmul double 0x3CC0000000000000, %53, !dbg !4346
  %55 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %6, align 8, !dbg !4347
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %55, i32 0, i32 1, !dbg !4348
  %57 = load double, double* %56, align 8, !dbg !4349
  %58 = fadd double %57, %54, !dbg !4349
  store double %58, double* %56, align 8, !dbg !4349
  ret i32 0, !dbg !4350
}

declare i32 @gsl_sf_exp_err_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exp_err_e10_e(double, double, %struct.gsl_sf_result_e10_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @d9chu(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !4351 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x double], align 16
  %13 = alloca [4 x double], align 16
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !4352, metadata !63), !dbg !4353
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !4354, metadata !63), !dbg !4355
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !4356, metadata !63), !dbg !4357
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !4358, metadata !63), !dbg !4359
  call void @llvm.dbg.declare(metadata double* %10, metadata !4360, metadata !63), !dbg !4361
  store double 0x3CE0000000000000, double* %10, align 8, !dbg !4361
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4362, metadata !63), !dbg !4363
  store i32 500, i32* %11, align 4, !dbg !4363
  call void @llvm.dbg.declare(metadata [4 x double]* %12, metadata !4364, metadata !63), !dbg !4368
  call void @llvm.dbg.declare(metadata [4 x double]* %13, metadata !4369, metadata !63), !dbg !4370
  call void @llvm.dbg.declare(metadata i32* %14, metadata !4371, metadata !63), !dbg !4372
  call void @llvm.dbg.declare(metadata double* %15, metadata !4373, metadata !63), !dbg !4374
  %29 = load double, double* %6, align 8, !dbg !4375
  %30 = fadd double 1.000000e+00, %29, !dbg !4376
  %31 = load double, double* %7, align 8, !dbg !4377
  %32 = fsub double %30, %31, !dbg !4378
  store double %32, double* %15, align 8, !dbg !4374
  call void @llvm.dbg.declare(metadata double* %16, metadata !4379, metadata !63), !dbg !4380
  %33 = load double, double* %6, align 8, !dbg !4381
  %34 = load double, double* %15, align 8, !dbg !4382
  %35 = fmul double %33, %34, !dbg !4383
  store double %35, double* %16, align 8, !dbg !4380
  call void @llvm.dbg.declare(metadata double* %17, metadata !4384, metadata !63), !dbg !4385
  %36 = load double, double* %8, align 8, !dbg !4386
  %37 = load double, double* %16, align 8, !dbg !4387
  %38 = fsub double %36, %37, !dbg !4388
  %39 = fmul double 2.000000e+00, %38, !dbg !4389
  store double %39, double* %17, align 8, !dbg !4385
  call void @llvm.dbg.declare(metadata double* %18, metadata !4390, metadata !63), !dbg !4391
  %40 = load double, double* %6, align 8, !dbg !4392
  %41 = load double, double* %15, align 8, !dbg !4393
  %42 = fadd double %40, %41, !dbg !4394
  store double %42, double* %18, align 8, !dbg !4391
  call void @llvm.dbg.declare(metadata double* %19, metadata !4395, metadata !63), !dbg !4396
  %43 = load double, double* %18, align 8, !dbg !4397
  %44 = fadd double %43, 1.000000e+00, !dbg !4398
  %45 = load double, double* %16, align 8, !dbg !4399
  %46 = fadd double %44, %45, !dbg !4400
  store double %46, double* %19, align 8, !dbg !4396
  call void @llvm.dbg.declare(metadata double* %20, metadata !4401, metadata !63), !dbg !4402
  %47 = load double, double* %19, align 8, !dbg !4403
  %48 = load double, double* %18, align 8, !dbg !4404
  %49 = fadd double %47, %48, !dbg !4405
  %50 = fadd double %49, 3.000000e+00, !dbg !4406
  store double %50, double* %20, align 8, !dbg !4402
  call void @llvm.dbg.declare(metadata double* %21, metadata !4407, metadata !63), !dbg !4408
  %51 = load double, double* %8, align 8, !dbg !4409
  %52 = fmul double 2.000000e+00, %51, !dbg !4410
  %53 = load double, double* %20, align 8, !dbg !4411
  %54 = fdiv double %52, %53, !dbg !4412
  %55 = fadd double 1.000000e+00, %54, !dbg !4413
  store double %55, double* %21, align 8, !dbg !4408
  %56 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 0, !dbg !4414
  store double 1.000000e+00, double* %56, align 16, !dbg !4415
  %57 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0, !dbg !4416
  store double 1.000000e+00, double* %57, align 16, !dbg !4417
  %58 = load double, double* %8, align 8, !dbg !4418
  %59 = fmul double 2.000000e+00, %58, !dbg !4419
  %60 = load double, double* %19, align 8, !dbg !4420
  %61 = fdiv double %59, %60, !dbg !4421
  %62 = fadd double 1.000000e+00, %61, !dbg !4422
  %63 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 1, !dbg !4423
  store double %62, double* %63, align 8, !dbg !4424
  %64 = load double, double* %17, align 8, !dbg !4425
  %65 = load double, double* %19, align 8, !dbg !4426
  %66 = fdiv double %64, %65, !dbg !4427
  %67 = fadd double 1.000000e+00, %66, !dbg !4428
  %68 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 1, !dbg !4429
  store double %67, double* %68, align 8, !dbg !4430
  %69 = load double, double* %21, align 8, !dbg !4431
  %70 = fmul double 6.000000e+00, %69, !dbg !4432
  %71 = load double, double* %8, align 8, !dbg !4433
  %72 = fmul double %70, %71, !dbg !4434
  %73 = load double, double* %19, align 8, !dbg !4435
  %74 = fdiv double %72, %73, !dbg !4436
  %75 = fadd double 1.000000e+00, %74, !dbg !4437
  %76 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 2, !dbg !4438
  store double %75, double* %76, align 16, !dbg !4439
  %77 = load double, double* %16, align 8, !dbg !4440
  %78 = fmul double 6.000000e+00, %77, !dbg !4441
  %79 = load double, double* %20, align 8, !dbg !4442
  %80 = fdiv double %78, %79, !dbg !4443
  %81 = fadd double 1.000000e+00, %80, !dbg !4444
  %82 = load double, double* %21, align 8, !dbg !4445
  %83 = fmul double 3.000000e+00, %82, !dbg !4446
  %84 = load double, double* %17, align 8, !dbg !4447
  %85 = fmul double %83, %84, !dbg !4448
  %86 = load double, double* %19, align 8, !dbg !4449
  %87 = fdiv double %85, %86, !dbg !4450
  %88 = fadd double %81, %87, !dbg !4451
  %89 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2, !dbg !4452
  store double %88, double* %89, align 16, !dbg !4453
  store i32 4, i32* %14, align 4, !dbg !4454
  br label %90, !dbg !4456

; <label>:90:                                     ; preds = %217, %4
  %91 = load i32, i32* %14, align 4, !dbg !4457
  %92 = icmp slt i32 %91, 500, !dbg !4460
  br i1 %92, label %93, label %220, !dbg !4461

; <label>:93:                                     ; preds = %90
  call void @llvm.dbg.declare(metadata i32* %22, metadata !4462, metadata !63), !dbg !4464
  call void @llvm.dbg.declare(metadata double* %23, metadata !4465, metadata !63), !dbg !4466
  call void @llvm.dbg.declare(metadata double* %24, metadata !4467, metadata !63), !dbg !4468
  call void @llvm.dbg.declare(metadata double* %25, metadata !4469, metadata !63), !dbg !4470
  call void @llvm.dbg.declare(metadata double* %26, metadata !4471, metadata !63), !dbg !4472
  call void @llvm.dbg.declare(metadata double* %27, metadata !4473, metadata !63), !dbg !4474
  call void @llvm.dbg.declare(metadata double* %28, metadata !4475, metadata !63), !dbg !4476
  %94 = load i32, i32* %14, align 4, !dbg !4477
  %95 = mul nsw i32 2, %94, !dbg !4478
  %96 = sub nsw i32 %95, 3, !dbg !4479
  %97 = sitofp i32 %96 to double, !dbg !4480
  store double %97, double* %28, align 8, !dbg !4476
  %98 = load double, double* %28, align 8, !dbg !4481
  %99 = load double, double* %28, align 8, !dbg !4482
  %100 = fsub double %99, 2.000000e+00, !dbg !4483
  %101 = fdiv double %98, %100, !dbg !4484
  store double %101, double* %21, align 8, !dbg !4485
  %102 = load double, double* %28, align 8, !dbg !4486
  %103 = load double, double* %18, align 8, !dbg !4487
  %104 = fadd double %102, %103, !dbg !4488
  %105 = load double, double* %20, align 8, !dbg !4489
  %106 = fadd double %105, %104, !dbg !4489
  store double %106, double* %20, align 8, !dbg !4489
  %107 = load double, double* %28, align 8, !dbg !4490
  %108 = fsub double %107, 1.000000e+00, !dbg !4491
  %109 = load double, double* %20, align 8, !dbg !4492
  %110 = fdiv double %108, %109, !dbg !4493
  store double %110, double* %17, align 8, !dbg !4494
  %111 = load double, double* %28, align 8, !dbg !4495
  %112 = load double, double* %17, align 8, !dbg !4496
  %113 = fmul double %111, %112, !dbg !4497
  %114 = fsub double %113, 1.000000e+00, !dbg !4498
  store double %114, double* %23, align 8, !dbg !4499
  %115 = load double, double* %28, align 8, !dbg !4500
  %116 = fmul double 2.000000e+00, %115, !dbg !4501
  %117 = load double, double* %8, align 8, !dbg !4502
  %118 = fmul double %116, %117, !dbg !4503
  %119 = load double, double* %20, align 8, !dbg !4504
  %120 = fdiv double %118, %119, !dbg !4505
  store double %120, double* %24, align 8, !dbg !4506
  %121 = load double, double* %18, align 8, !dbg !4507
  %122 = load double, double* %17, align 8, !dbg !4508
  %123 = fmul double %121, %122, !dbg !4509
  store double %123, double* %19, align 8, !dbg !4510
  %124 = load double, double* %24, align 8, !dbg !4511
  %125 = load double, double* %21, align 8, !dbg !4512
  %126 = load double, double* %23, align 8, !dbg !4513
  %127 = load double, double* %19, align 8, !dbg !4514
  %128 = fadd double %126, %127, !dbg !4515
  %129 = fmul double %125, %128, !dbg !4516
  %130 = fadd double %124, %129, !dbg !4517
  store double %130, double* %25, align 8, !dbg !4518
  %131 = load double, double* %24, align 8, !dbg !4519
  %132 = load double, double* %23, align 8, !dbg !4520
  %133 = fsub double %131, %132, !dbg !4521
  store double %133, double* %26, align 8, !dbg !4522
  %134 = load double, double* %21, align 8, !dbg !4523
  %135 = load double, double* %19, align 8, !dbg !4524
  %136 = fsub double 1.000000e+00, %135, !dbg !4525
  %137 = load double, double* %17, align 8, !dbg !4526
  %138 = fmul double 2.000000e+00, %137, !dbg !4527
  %139 = fsub double %136, %138, !dbg !4528
  %140 = fmul double %134, %139, !dbg !4529
  store double %140, double* %27, align 8, !dbg !4530
  %141 = load double, double* %25, align 8, !dbg !4531
  %142 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 2, !dbg !4532
  %143 = load double, double* %142, align 16, !dbg !4532
  %144 = fmul double %141, %143, !dbg !4533
  %145 = load double, double* %26, align 8, !dbg !4534
  %146 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 1, !dbg !4535
  %147 = load double, double* %146, align 8, !dbg !4535
  %148 = fmul double %145, %147, !dbg !4536
  %149 = fadd double %144, %148, !dbg !4537
  %150 = load double, double* %27, align 8, !dbg !4538
  %151 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 0, !dbg !4539
  %152 = load double, double* %151, align 16, !dbg !4539
  %153 = fmul double %150, %152, !dbg !4540
  %154 = fadd double %149, %153, !dbg !4541
  %155 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 3, !dbg !4542
  store double %154, double* %155, align 8, !dbg !4543
  %156 = load double, double* %25, align 8, !dbg !4544
  %157 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 2, !dbg !4545
  %158 = load double, double* %157, align 16, !dbg !4545
  %159 = fmul double %156, %158, !dbg !4546
  %160 = load double, double* %26, align 8, !dbg !4547
  %161 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 1, !dbg !4548
  %162 = load double, double* %161, align 8, !dbg !4548
  %163 = fmul double %160, %162, !dbg !4549
  %164 = fadd double %159, %163, !dbg !4550
  %165 = load double, double* %27, align 8, !dbg !4551
  %166 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0, !dbg !4552
  %167 = load double, double* %166, align 16, !dbg !4552
  %168 = fmul double %165, %167, !dbg !4553
  %169 = fadd double %164, %168, !dbg !4554
  %170 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3, !dbg !4555
  store double %169, double* %170, align 8, !dbg !4556
  %171 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3, !dbg !4557
  %172 = load double, double* %171, align 8, !dbg !4557
  %173 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 0, !dbg !4559
  %174 = load double, double* %173, align 16, !dbg !4559
  %175 = fmul double %172, %174, !dbg !4560
  %176 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 0, !dbg !4561
  %177 = load double, double* %176, align 16, !dbg !4561
  %178 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 3, !dbg !4562
  %179 = load double, double* %178, align 8, !dbg !4562
  %180 = fmul double %177, %179, !dbg !4563
  %181 = fsub double %175, %180, !dbg !4564
  %182 = call double @fabs(double %181) #1, !dbg !4565
  %183 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 3, !dbg !4566
  %184 = load double, double* %183, align 8, !dbg !4566
  %185 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 0, !dbg !4567
  %186 = load double, double* %185, align 16, !dbg !4567
  %187 = fmul double %184, %186, !dbg !4568
  %188 = call double @fabs(double %187) #1, !dbg !4569
  %189 = fmul double 0x3CE0000000000000, %188, !dbg !4571
  %190 = fcmp olt double %182, %189, !dbg !4572
  br i1 %190, label %191, label %192, !dbg !4573

; <label>:191:                                    ; preds = %93
  br label %220, !dbg !4574

; <label>:192:                                    ; preds = %93
  store i32 0, i32* %22, align 4, !dbg !4576
  br label %193, !dbg !4578

; <label>:193:                                    ; preds = %213, %192
  %194 = load i32, i32* %22, align 4, !dbg !4579
  %195 = icmp slt i32 %194, 3, !dbg !4582
  br i1 %195, label %196, label %216, !dbg !4583

; <label>:196:                                    ; preds = %193
  %197 = load i32, i32* %22, align 4, !dbg !4584
  %198 = add nsw i32 %197, 1, !dbg !4586
  %199 = sext i32 %198 to i64, !dbg !4587
  %200 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 %199, !dbg !4587
  %201 = load double, double* %200, align 8, !dbg !4587
  %202 = load i32, i32* %22, align 4, !dbg !4588
  %203 = sext i32 %202 to i64, !dbg !4589
  %204 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 %203, !dbg !4589
  store double %201, double* %204, align 8, !dbg !4590
  %205 = load i32, i32* %22, align 4, !dbg !4591
  %206 = add nsw i32 %205, 1, !dbg !4592
  %207 = sext i32 %206 to i64, !dbg !4593
  %208 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 %207, !dbg !4593
  %209 = load double, double* %208, align 8, !dbg !4593
  %210 = load i32, i32* %22, align 4, !dbg !4594
  %211 = sext i32 %210 to i64, !dbg !4595
  %212 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 %211, !dbg !4595
  store double %209, double* %212, align 8, !dbg !4596
  br label %213, !dbg !4597

; <label>:213:                                    ; preds = %196
  %214 = load i32, i32* %22, align 4, !dbg !4598
  %215 = add nsw i32 %214, 1, !dbg !4598
  store i32 %215, i32* %22, align 4, !dbg !4598
  br label %193, !dbg !4600, !llvm.loop !4601

; <label>:216:                                    ; preds = %193
  br label %217, !dbg !4603

; <label>:217:                                    ; preds = %216
  %218 = load i32, i32* %14, align 4, !dbg !4604
  %219 = add nsw i32 %218, 1, !dbg !4604
  store i32 %219, i32* %14, align 4, !dbg !4604
  br label %90, !dbg !4606, !llvm.loop !4607

; <label>:220:                                    ; preds = %191, %90
  %221 = getelementptr inbounds [4 x double], [4 x double]* %12, i64 0, i64 3, !dbg !4609
  %222 = load double, double* %221, align 8, !dbg !4609
  %223 = getelementptr inbounds [4 x double], [4 x double]* %13, i64 0, i64 3, !dbg !4610
  %224 = load double, double* %223, align 8, !dbg !4610
  %225 = fdiv double %222, %224, !dbg !4611
  %226 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4612
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %226, i32 0, i32 0, !dbg !4613
  store double %225, double* %227, align 8, !dbg !4614
  %228 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4615
  %229 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %228, i32 0, i32 0, !dbg !4616
  %230 = load double, double* %229, align 8, !dbg !4616
  %231 = call double @fabs(double %230) #1, !dbg !4617
  %232 = fmul double 0x3CE0000000000000, %231, !dbg !4618
  %233 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !4619
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %233, i32 0, i32 1, !dbg !4620
  store double %232, double* %234, align 8, !dbg !4621
  %235 = load i32, i32* %14, align 4, !dbg !4622
  %236 = icmp eq i32 %235, 500, !dbg !4624
  br i1 %236, label %237, label %240, !dbg !4625

; <label>:237:                                    ; preds = %220
  br label %238, !dbg !4626, !llvm.loop !4628

; <label>:238:                                    ; preds = %237
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 201, i32 11), !dbg !4629
  store i32 11, i32* %5, align 4, !dbg !4629
  br label %241, !dbg !4629
                                                  ; No predecessors!
  br label %241, !dbg !4632

; <label>:240:                                    ; preds = %220
  store i32 0, i32* %5, align 4, !dbg !4633
  br label %241, !dbg !4633

; <label>:241:                                    ; preds = %238, %240, %239
  %242 = load i32, i32* %5, align 4, !dbg !4635
  ret i32 %242, !dbg !4635
}

declare i32 @gsl_sf_exp_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_finite_sum(i32, double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !4636 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct*, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.gsl_sf_result_struct, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca i32, align 4
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4639, metadata !63), !dbg !4640
  store double %1, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !4641, metadata !63), !dbg !4642
  store double %2, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !4643, metadata !63), !dbg !4644
  store double %3, double* %11, align 8
  call void @llvm.dbg.declare(metadata double* %11, metadata !4645, metadata !63), !dbg !4646
  store double %4, double* %12, align 8
  call void @llvm.dbg.declare(metadata double* %12, metadata !4647, metadata !63), !dbg !4648
  store %struct.gsl_sf_result_struct* %5, %struct.gsl_sf_result_struct** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %13, metadata !4649, metadata !63), !dbg !4650
  call void @llvm.dbg.declare(metadata i32* %14, metadata !4651, metadata !63), !dbg !4652
  call void @llvm.dbg.declare(metadata double* %15, metadata !4653, metadata !63), !dbg !4654
  call void @llvm.dbg.declare(metadata double* %16, metadata !4655, metadata !63), !dbg !4656
  %37 = load i32, i32* %8, align 4, !dbg !4657
  %38 = icmp sle i32 %37, 0, !dbg !4659
  br i1 %38, label %39, label %142, !dbg !4660

; <label>:39:                                     ; preds = %6
  call void @llvm.dbg.declare(metadata double* %17, metadata !4661, metadata !63), !dbg !4663
  store double 1.000000e+00, double* %17, align 8, !dbg !4663
  call void @llvm.dbg.declare(metadata double* %18, metadata !4664, metadata !63), !dbg !4665
  store double 0.000000e+00, double* %18, align 8, !dbg !4665
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %19, metadata !4666, metadata !63), !dbg !4667
  call void @llvm.dbg.declare(metadata i32* %20, metadata !4668, metadata !63), !dbg !4669
  store double 1.000000e+00, double* %15, align 8, !dbg !4670
  store double 0.000000e+00, double* %16, align 8, !dbg !4671
  store i32 1, i32* %14, align 4, !dbg !4672
  br label %40, !dbg !4674

; <label>:40:                                     ; preds = %82, %39
  %41 = load i32, i32* %14, align 4, !dbg !4675
  %42 = load i32, i32* %8, align 4, !dbg !4678
  %43 = sub nsw i32 0, %42, !dbg !4679
  %44 = icmp sle i32 %41, %43, !dbg !4680
  br i1 %44, label %45, label %85, !dbg !4681

; <label>:45:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata double* %21, metadata !4682, metadata !63), !dbg !4684
  %46 = load i32, i32* %14, align 4, !dbg !4685
  %47 = sub nsw i32 %46, 1, !dbg !4686
  %48 = sitofp i32 %47 to double, !dbg !4685
  store double %48, double* %21, align 8, !dbg !4684
  call void @llvm.dbg.declare(metadata double* %22, metadata !4687, metadata !63), !dbg !4688
  %49 = load double, double* %9, align 8, !dbg !4689
  %50 = load double, double* %21, align 8, !dbg !4690
  %51 = fadd double %49, %50, !dbg !4691
  %52 = load double, double* %11, align 8, !dbg !4692
  %53 = fmul double %51, %52, !dbg !4693
  %54 = load double, double* %10, align 8, !dbg !4694
  %55 = load double, double* %21, align 8, !dbg !4695
  %56 = fadd double %54, %55, !dbg !4696
  %57 = load double, double* %21, align 8, !dbg !4697
  %58 = fadd double %57, 1.000000e+00, !dbg !4698
  %59 = fmul double %56, %58, !dbg !4699
  %60 = fdiv double %53, %59, !dbg !4700
  store double %60, double* %22, align 8, !dbg !4688
  %61 = load double, double* %22, align 8, !dbg !4701
  %62 = load double, double* %17, align 8, !dbg !4702
  %63 = fmul double %62, %61, !dbg !4702
  store double %63, double* %17, align 8, !dbg !4702
  %64 = load double, double* %22, align 8, !dbg !4703
  %65 = call double @fabs(double %64) #1, !dbg !4704
  %66 = load double, double* %18, align 8, !dbg !4705
  %67 = fmul double %65, %66, !dbg !4706
  %68 = load double, double* %17, align 8, !dbg !4707
  %69 = call double @fabs(double %68) #1, !dbg !4708
  %70 = fmul double %69, 8.000000e+00, !dbg !4710
  %71 = fmul double %70, 2.000000e+00, !dbg !4711
  %72 = fmul double %71, 0x3CB0000000000000, !dbg !4712
  %73 = fadd double %67, %72, !dbg !4713
  %74 = load double, double* %18, align 8, !dbg !4714
  %75 = fadd double %74, %73, !dbg !4714
  store double %75, double* %18, align 8, !dbg !4714
  %76 = load double, double* %17, align 8, !dbg !4715
  %77 = load double, double* %15, align 8, !dbg !4716
  %78 = fadd double %77, %76, !dbg !4716
  store double %78, double* %15, align 8, !dbg !4716
  %79 = load double, double* %18, align 8, !dbg !4717
  %80 = load double, double* %16, align 8, !dbg !4718
  %81 = fadd double %80, %79, !dbg !4718
  store double %81, double* %16, align 8, !dbg !4718
  br label %82, !dbg !4719

; <label>:82:                                     ; preds = %45
  %83 = load i32, i32* %14, align 4, !dbg !4720
  %84 = add nsw i32 %83, 1, !dbg !4720
  store i32 %84, i32* %14, align 4, !dbg !4720
  br label %40, !dbg !4722, !llvm.loop !4723

; <label>:85:                                     ; preds = %40
  %86 = load double, double* %9, align 8, !dbg !4725
  %87 = fadd double 1.000000e+00, %86, !dbg !4726
  %88 = load double, double* %10, align 8, !dbg !4727
  %89 = fsub double %87, %88, !dbg !4728
  %90 = load double, double* %9, align 8, !dbg !4729
  %91 = fsub double -0.000000e+00, %90, !dbg !4730
  %92 = call i32 @gsl_sf_poch_e(double %89, double %91, %struct.gsl_sf_result_struct* %19), !dbg !4731
  store i32 %92, i32* %20, align 4, !dbg !4732
  %93 = load double, double* %15, align 8, !dbg !4733
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !4734
  %95 = load double, double* %94, align 8, !dbg !4734
  %96 = fmul double %93, %95, !dbg !4735
  %97 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4736
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %97, i32 0, i32 0, !dbg !4737
  store double %96, double* %98, align 8, !dbg !4738
  %99 = load double, double* %15, align 8, !dbg !4739
  %100 = call double @fabs(double %99) #1, !dbg !4740
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 1, !dbg !4741
  %102 = load double, double* %101, align 8, !dbg !4741
  %103 = fmul double %100, %102, !dbg !4742
  %104 = load double, double* %16, align 8, !dbg !4743
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !4744
  %106 = load double, double* %105, align 8, !dbg !4744
  %107 = call double @fabs(double %106) #1, !dbg !4745
  %108 = fmul double %104, %107, !dbg !4747
  %109 = fadd double %103, %108, !dbg !4748
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4749
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 1, !dbg !4750
  store double %109, double* %111, align 8, !dbg !4751
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %19, i32 0, i32 0, !dbg !4752
  %113 = load double, double* %112, align 8, !dbg !4752
  %114 = call double @fabs(double %113) #1, !dbg !4753
  %115 = load i32, i32* %8, align 4, !dbg !4754
  %116 = sitofp i32 %115 to double, !dbg !4754
  %117 = call double @fabs(double %116) #1, !dbg !4755
  %118 = fadd double %117, 2.000000e+00, !dbg !4756
  %119 = fmul double %114, %118, !dbg !4757
  %120 = fmul double %119, 0x3CB0000000000000, !dbg !4758
  %121 = load double, double* %15, align 8, !dbg !4759
  %122 = call double @fabs(double %121) #1, !dbg !4760
  %123 = fmul double %120, %122, !dbg !4762
  %124 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4763
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %124, i32 0, i32 1, !dbg !4764
  %126 = load double, double* %125, align 8, !dbg !4765
  %127 = fadd double %126, %123, !dbg !4765
  store double %127, double* %125, align 8, !dbg !4765
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4766
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 0, !dbg !4767
  %130 = load double, double* %129, align 8, !dbg !4767
  %131 = call double @fabs(double %130) #1, !dbg !4768
  %132 = fmul double 0x3CC0000000000000, %131, !dbg !4769
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4770
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 1, !dbg !4771
  %135 = load double, double* %134, align 8, !dbg !4772
  %136 = fadd double %135, %132, !dbg !4772
  store double %136, double* %134, align 8, !dbg !4772
  %137 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4773
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %137, i32 0, i32 1, !dbg !4774
  %139 = load double, double* %138, align 8, !dbg !4775
  %140 = fmul double %139, 2.000000e+00, !dbg !4775
  store double %140, double* %138, align 8, !dbg !4775
  %141 = load i32, i32* %20, align 4, !dbg !4776
  store i32 %141, i32* %7, align 4, !dbg !4777
  br label %302, !dbg !4777

; <label>:142:                                    ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %23, metadata !4778, metadata !63), !dbg !4780
  %143 = load i32, i32* %8, align 4, !dbg !4781
  %144 = sub nsw i32 %143, 2, !dbg !4782
  store i32 %144, i32* %23, align 4, !dbg !4780
  %145 = load i32, i32* %23, align 4, !dbg !4783
  %146 = icmp slt i32 %145, 0, !dbg !4785
  br i1 %146, label %147, label %152, !dbg !4786

; <label>:147:                                    ; preds = %142
  %148 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4787
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %148, i32 0, i32 0, !dbg !4789
  store double 0.000000e+00, double* %149, align 8, !dbg !4790
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4791
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 1, !dbg !4792
  store double 0.000000e+00, double* %151, align 8, !dbg !4793
  store i32 0, i32* %7, align 4, !dbg !4794
  br label %302, !dbg !4794

; <label>:152:                                    ; preds = %142
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !4795, metadata !63), !dbg !4797
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !4798, metadata !63), !dbg !4799
  call void @llvm.dbg.declare(metadata i32* %26, metadata !4800, metadata !63), !dbg !4801
  call void @llvm.dbg.declare(metadata i32* %27, metadata !4802, metadata !63), !dbg !4803
  call void @llvm.dbg.declare(metadata double* %28, metadata !4804, metadata !63), !dbg !4805
  store double 1.000000e+00, double* %28, align 8, !dbg !4805
  call void @llvm.dbg.declare(metadata double* %29, metadata !4806, metadata !63), !dbg !4807
  store double 0.000000e+00, double* %29, align 8, !dbg !4807
  store double 1.000000e+00, double* %15, align 8, !dbg !4808
  store double 0.000000e+00, double* %16, align 8, !dbg !4809
  store i32 1, i32* %14, align 4, !dbg !4810
  br label %153, !dbg !4812

; <label>:153:                                    ; preds = %196, %152
  %154 = load i32, i32* %14, align 4, !dbg !4813
  %155 = load i32, i32* %23, align 4, !dbg !4816
  %156 = icmp sle i32 %154, %155, !dbg !4817
  br i1 %156, label %157, label %199, !dbg !4818

; <label>:157:                                    ; preds = %153
  call void @llvm.dbg.declare(metadata double* %30, metadata !4819, metadata !63), !dbg !4821
  %158 = load double, double* %9, align 8, !dbg !4822
  %159 = load double, double* %10, align 8, !dbg !4823
  %160 = fsub double %158, %159, !dbg !4824
  %161 = load i32, i32* %14, align 4, !dbg !4825
  %162 = sitofp i32 %161 to double, !dbg !4825
  %163 = fadd double %160, %162, !dbg !4826
  %164 = load double, double* %11, align 8, !dbg !4827
  %165 = fmul double %163, %164, !dbg !4828
  %166 = load double, double* %10, align 8, !dbg !4829
  %167 = fsub double 1.000000e+00, %166, !dbg !4830
  %168 = load i32, i32* %14, align 4, !dbg !4831
  %169 = sitofp i32 %168 to double, !dbg !4831
  %170 = fadd double %167, %169, !dbg !4832
  %171 = load i32, i32* %14, align 4, !dbg !4833
  %172 = sitofp i32 %171 to double, !dbg !4833
  %173 = fmul double %170, %172, !dbg !4834
  %174 = fdiv double %165, %173, !dbg !4835
  store double %174, double* %30, align 8, !dbg !4821
  %175 = load double, double* %30, align 8, !dbg !4836
  %176 = load double, double* %28, align 8, !dbg !4837
  %177 = fmul double %176, %175, !dbg !4837
  store double %177, double* %28, align 8, !dbg !4837
  %178 = load double, double* %29, align 8, !dbg !4838
  %179 = load double, double* %30, align 8, !dbg !4839
  %180 = call double @fabs(double %179) #1, !dbg !4840
  %181 = fmul double %178, %180, !dbg !4841
  %182 = load double, double* %28, align 8, !dbg !4842
  %183 = call double @fabs(double %182) #1, !dbg !4843
  %184 = fmul double %183, 8.000000e+00, !dbg !4845
  %185 = fmul double %184, 2.000000e+00, !dbg !4846
  %186 = fmul double %185, 0x3CB0000000000000, !dbg !4847
  %187 = fadd double %181, %186, !dbg !4848
  %188 = load double, double* %29, align 8, !dbg !4849
  %189 = fadd double %188, %187, !dbg !4849
  store double %189, double* %29, align 8, !dbg !4849
  %190 = load double, double* %28, align 8, !dbg !4850
  %191 = load double, double* %15, align 8, !dbg !4851
  %192 = fadd double %191, %190, !dbg !4851
  store double %192, double* %15, align 8, !dbg !4851
  %193 = load double, double* %29, align 8, !dbg !4852
  %194 = load double, double* %16, align 8, !dbg !4853
  %195 = fadd double %194, %193, !dbg !4853
  store double %195, double* %16, align 8, !dbg !4853
  br label %196, !dbg !4854

; <label>:196:                                    ; preds = %157
  %197 = load i32, i32* %14, align 4, !dbg !4855
  %198 = add nsw i32 %197, 1, !dbg !4855
  store i32 %198, i32* %14, align 4, !dbg !4855
  br label %153, !dbg !4857, !llvm.loop !4858

; <label>:199:                                    ; preds = %153
  %200 = load double, double* %10, align 8, !dbg !4860
  %201 = fsub double %200, 1.000000e+00, !dbg !4861
  %202 = call i32 @gsl_sf_gamma_e(double %201, %struct.gsl_sf_result_struct* %24), !dbg !4862
  store i32 %202, i32* %26, align 4, !dbg !4863
  %203 = load double, double* %9, align 8, !dbg !4864
  %204 = call i32 @gsl_sf_gammainv_e(double %203, %struct.gsl_sf_result_struct* %25), !dbg !4865
  store i32 %204, i32* %27, align 4, !dbg !4866
  %205 = load i32, i32* %26, align 4, !dbg !4867
  %206 = icmp eq i32 %205, 0, !dbg !4869
  br i1 %206, label %207, label %296, !dbg !4870

; <label>:207:                                    ; preds = %199
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !4871, metadata !63), !dbg !4873
  call void @llvm.dbg.declare(metadata i32* %32, metadata !4874, metadata !63), !dbg !4875
  %208 = load double, double* %11, align 8, !dbg !4876
  %209 = load i32, i32* %8, align 4, !dbg !4877
  %210 = sub nsw i32 1, %209, !dbg !4878
  %211 = call i32 @gsl_sf_pow_int_e(double %208, i32 %210, %struct.gsl_sf_result_struct* %31), !dbg !4879
  store i32 %211, i32* %32, align 4, !dbg !4875
  call void @llvm.dbg.declare(metadata double* %33, metadata !4880, metadata !63), !dbg !4881
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !4882
  %213 = load double, double* %212, align 8, !dbg !4882
  %214 = load double, double* %12, align 8, !dbg !4883
  %215 = fmul double %213, %214, !dbg !4884
  store double %215, double* %33, align 8, !dbg !4881
  call void @llvm.dbg.declare(metadata double* %34, metadata !4885, metadata !63), !dbg !4886
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !4887
  %217 = load double, double* %216, align 8, !dbg !4887
  %218 = load double, double* %12, align 8, !dbg !4888
  %219 = call double @fabs(double %218) #1, !dbg !4889
  %220 = fmul double %217, %219, !dbg !4890
  %221 = load double, double* %33, align 8, !dbg !4891
  %222 = call double @fabs(double %221) #1, !dbg !4892
  %223 = fmul double 0x3CC0000000000000, %222, !dbg !4894
  %224 = fadd double %220, %223, !dbg !4895
  store double %224, double* %34, align 8, !dbg !4886
  call void @llvm.dbg.declare(metadata double* %35, metadata !4896, metadata !63), !dbg !4897
  %225 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !4898
  %226 = load double, double* %225, align 8, !dbg !4898
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !4899
  %228 = load double, double* %227, align 8, !dbg !4899
  %229 = fmul double %226, %228, !dbg !4900
  %230 = load double, double* %33, align 8, !dbg !4901
  %231 = fmul double %229, %230, !dbg !4902
  store double %231, double* %35, align 8, !dbg !4897
  call void @llvm.dbg.declare(metadata double* %36, metadata !4903, metadata !63), !dbg !4904
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !4905
  %233 = load double, double* %232, align 8, !dbg !4905
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !4906
  %235 = load double, double* %234, align 8, !dbg !4906
  %236 = load double, double* %33, align 8, !dbg !4907
  %237 = fmul double %235, %236, !dbg !4908
  %238 = call double @fabs(double %237) #1, !dbg !4909
  %239 = fmul double %233, %238, !dbg !4910
  %240 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !4911
  %241 = load double, double* %240, align 8, !dbg !4911
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !4912
  %243 = load double, double* %242, align 8, !dbg !4912
  %244 = load double, double* %33, align 8, !dbg !4913
  %245 = fmul double %243, %244, !dbg !4914
  %246 = call double @fabs(double %245) #1, !dbg !4915
  %247 = fmul double %241, %246, !dbg !4916
  %248 = fadd double %239, %247, !dbg !4917
  %249 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !4918
  %250 = load double, double* %249, align 8, !dbg !4918
  %251 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !4919
  %252 = load double, double* %251, align 8, !dbg !4919
  %253 = fmul double %250, %252, !dbg !4920
  %254 = call double @fabs(double %253) #1, !dbg !4921
  %255 = load double, double* %34, align 8, !dbg !4922
  %256 = fmul double %254, %255, !dbg !4923
  %257 = fadd double %248, %256, !dbg !4924
  %258 = load double, double* %35, align 8, !dbg !4925
  %259 = call double @fabs(double %258) #1, !dbg !4926
  %260 = fmul double 0x3CC0000000000000, %259, !dbg !4927
  %261 = fadd double %257, %260, !dbg !4928
  store double %261, double* %36, align 8, !dbg !4904
  %262 = load double, double* %15, align 8, !dbg !4929
  %263 = load double, double* %35, align 8, !dbg !4930
  %264 = fmul double %262, %263, !dbg !4931
  %265 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4932
  %266 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %265, i32 0, i32 0, !dbg !4933
  store double %264, double* %266, align 8, !dbg !4934
  %267 = load double, double* %15, align 8, !dbg !4935
  %268 = call double @fabs(double %267) #1, !dbg !4936
  %269 = load double, double* %36, align 8, !dbg !4937
  %270 = fmul double %268, %269, !dbg !4938
  %271 = load double, double* %16, align 8, !dbg !4939
  %272 = load double, double* %35, align 8, !dbg !4940
  %273 = call double @fabs(double %272) #1, !dbg !4941
  %274 = fmul double %271, %273, !dbg !4942
  %275 = fadd double %270, %274, !dbg !4943
  %276 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4944
  %277 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %276, i32 0, i32 1, !dbg !4945
  store double %275, double* %277, align 8, !dbg !4946
  %278 = load i32, i32* %23, align 4, !dbg !4947
  %279 = sitofp i32 %278 to double, !dbg !4947
  %280 = fadd double %279, 2.000000e+00, !dbg !4948
  %281 = fmul double 0x3CC0000000000000, %280, !dbg !4949
  %282 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4950
  %283 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %282, i32 0, i32 0, !dbg !4951
  %284 = load double, double* %283, align 8, !dbg !4951
  %285 = call double @fabs(double %284) #1, !dbg !4952
  %286 = fmul double %281, %285, !dbg !4953
  %287 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4954
  %288 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %287, i32 0, i32 1, !dbg !4955
  %289 = load double, double* %288, align 8, !dbg !4956
  %290 = fadd double %289, %286, !dbg !4956
  store double %290, double* %288, align 8, !dbg !4956
  %291 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4957
  %292 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %291, i32 0, i32 1, !dbg !4958
  %293 = load double, double* %292, align 8, !dbg !4959
  %294 = fmul double %293, 2.000000e+00, !dbg !4959
  store double %294, double* %292, align 8, !dbg !4959
  %295 = load i32, i32* %32, align 4, !dbg !4960
  store i32 %295, i32* %7, align 4, !dbg !4961
  br label %302, !dbg !4961

; <label>:296:                                    ; preds = %199
  %297 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4962
  %298 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %297, i32 0, i32 0, !dbg !4964
  store double 0.000000e+00, double* %298, align 8, !dbg !4965
  %299 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %13, align 8, !dbg !4966
  %300 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %299, i32 0, i32 1, !dbg !4967
  store double 0.000000e+00, double* %300, align 8, !dbg !4968
  %301 = load i32, i32* %26, align 4, !dbg !4969
  store i32 %301, i32* %7, align 4, !dbg !4970
  br label %302, !dbg !4970

; <label>:302:                                    ; preds = %296, %207, %147, %85
  %303 = load i32, i32* %7, align 4, !dbg !4971
  ret i32 %303, !dbg !4971
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_infinite_sum_stable(i32, double, double, double, double, double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !4972 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.gsl_sf_result_struct*, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca %struct.gsl_sf_result_struct, align 8
  %33 = alloca %struct.gsl_sf_result_struct, align 8
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.gsl_sf_result_struct, align 8
  %41 = alloca %struct.gsl_sf_result_struct, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca double, align 8
  %46 = alloca double, align 8
  %47 = alloca i32, align 4
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca double, align 8
  %51 = alloca double, align 8
  %52 = alloca %struct.gsl_sf_result_struct, align 8
  %53 = alloca i32, align 4
  %54 = alloca double, align 8
  %55 = alloca double, align 8
  %56 = alloca double, align 8
  %57 = alloca double, align 8
  %58 = alloca double, align 8
  %59 = alloca double, align 8
  %60 = bitcast %struct.gsl_sf_result_struct* %12 to { double, double }*
  %61 = getelementptr inbounds { double, double }, { double, double }* %60, i32 0, i32 0
  store double %7, double* %61, align 8
  %62 = getelementptr inbounds { double, double }, { double, double }* %60, i32 0, i32 1
  store double %8, double* %62, align 8
  store i32 %0, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4975, metadata !63), !dbg !4976
  store double %1, double* %14, align 8
  call void @llvm.dbg.declare(metadata double* %14, metadata !4977, metadata !63), !dbg !4978
  store double %2, double* %15, align 8
  call void @llvm.dbg.declare(metadata double* %15, metadata !4979, metadata !63), !dbg !4980
  store double %3, double* %16, align 8
  call void @llvm.dbg.declare(metadata double* %16, metadata !4981, metadata !63), !dbg !4982
  store double %4, double* %17, align 8
  call void @llvm.dbg.declare(metadata double* %17, metadata !4983, metadata !63), !dbg !4984
  store double %5, double* %18, align 8
  call void @llvm.dbg.declare(metadata double* %18, metadata !4985, metadata !63), !dbg !4986
  store double %6, double* %19, align 8
  call void @llvm.dbg.declare(metadata double* %19, metadata !4987, metadata !63), !dbg !4988
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !4989, metadata !63), !dbg !4990
  store %struct.gsl_sf_result_struct* %9, %struct.gsl_sf_result_struct** %20, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %20, metadata !4991, metadata !63), !dbg !4992
  call void @llvm.dbg.declare(metadata double* %21, metadata !4993, metadata !63), !dbg !4994
  store double 0x3CC0000000000000, double* %21, align 8, !dbg !4994
  call void @llvm.dbg.declare(metadata i32* %22, metadata !4995, metadata !63), !dbg !4996
  %63 = load i32, i32* %13, align 4, !dbg !4997
  %64 = icmp slt i32 %63, 1, !dbg !4998
  br i1 %64, label %65, label %68, !dbg !4997

; <label>:65:                                     ; preds = %10
  %66 = load i32, i32* %13, align 4, !dbg !4999
  %67 = sub nsw i32 1, %66, !dbg !5001
  br label %69, !dbg !5002

; <label>:68:                                     ; preds = %10
  br label %69, !dbg !5003

; <label>:69:                                     ; preds = %68, %65
  %70 = phi i32 [ %67, %65 ], [ 0, %68 ], !dbg !5005
  store i32 %70, i32* %22, align 4, !dbg !5007
  call void @llvm.dbg.declare(metadata double* %23, metadata !5008, metadata !63), !dbg !5009
  %71 = load i32, i32* %22, align 4, !dbg !5010
  %72 = sitofp i32 %71 to double, !dbg !5010
  store double %72, double* %23, align 8, !dbg !5009
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !5011, metadata !63), !dbg !5012
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !5013, metadata !63), !dbg !5014
  call void @llvm.dbg.declare(metadata i32* %26, metadata !5015, metadata !63), !dbg !5016
  %73 = load double, double* %14, align 8, !dbg !5017
  %74 = fadd double 1.000000e+00, %73, !dbg !5018
  %75 = load double, double* %16, align 8, !dbg !5019
  %76 = fsub double %74, %75, !dbg !5020
  %77 = call i32 @gsl_sf_gammainv_e(double %76, %struct.gsl_sf_result_struct* %24), !dbg !5021
  store i32 %77, i32* %26, align 4, !dbg !5016
  call void @llvm.dbg.declare(metadata i32* %27, metadata !5022, metadata !63), !dbg !5023
  %78 = load double, double* %18, align 8, !dbg !5024
  %79 = load i32, i32* %22, align 4, !dbg !5025
  %80 = call i32 @gsl_sf_pow_int_e(double %78, i32 %79, %struct.gsl_sf_result_struct* %25), !dbg !5026
  store i32 %80, i32* %27, align 4, !dbg !5023
  call void @llvm.dbg.declare(metadata double* %28, metadata !5027, metadata !63), !dbg !5028
  %81 = load double, double* %17, align 8, !dbg !5029
  %82 = fmul double %81, 0x400921FB54442D18, !dbg !5030
  store double %82, double* %28, align 8, !dbg !5028
  call void @llvm.dbg.declare(metadata double* %29, metadata !5031, metadata !63), !dbg !5032
  %83 = load double, double* %28, align 8, !dbg !5033
  %84 = fcmp une double %83, 0.000000e+00, !dbg !5034
  br i1 %84, label %85, label %90, !dbg !5033

; <label>:85:                                     ; preds = %69
  %86 = load double, double* %28, align 8, !dbg !5035
  %87 = load double, double* %28, align 8, !dbg !5036
  %88 = call double @sin(double %87) #6, !dbg !5037
  %89 = fdiv double %86, %88, !dbg !5038
  br label %91, !dbg !5039

; <label>:90:                                     ; preds = %69
  br label %91, !dbg !5040

; <label>:91:                                     ; preds = %90, %85
  %92 = phi double [ %89, %85 ], [ 1.000000e+00, %90 ], !dbg !5041
  store double %92, double* %29, align 8, !dbg !5042
  call void @llvm.dbg.declare(metadata double* %30, metadata !5043, metadata !63), !dbg !5044
  %93 = load double, double* %29, align 8, !dbg !5045
  %94 = load i32, i32* %13, align 4, !dbg !5046
  %95 = and i32 %94, 1, !dbg !5046
  %96 = icmp ne i32 %95, 0, !dbg !5046
  %97 = select i1 %96, double -1.000000e+00, double 1.000000e+00, !dbg !5046
  %98 = fmul double %93, %97, !dbg !5047
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !5048
  %100 = load double, double* %99, align 8, !dbg !5048
  %101 = fmul double %98, %100, !dbg !5049
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !5050
  %103 = load double, double* %102, align 8, !dbg !5050
  %104 = fmul double %101, %103, !dbg !5051
  store double %104, double* %30, align 8, !dbg !5044
  call void @llvm.dbg.declare(metadata double* %31, metadata !5052, metadata !63), !dbg !5053
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !5054
  %106 = load double, double* %105, align 8, !dbg !5054
  %107 = call double @fabs(double %106) #1, !dbg !5055
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !5056
  %109 = load double, double* %108, align 8, !dbg !5056
  %110 = fmul double %107, %109, !dbg !5057
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !5058
  %112 = load double, double* %111, align 8, !dbg !5058
  %113 = call double @fabs(double %112) #1, !dbg !5059
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !5060
  %115 = load double, double* %114, align 8, !dbg !5060
  %116 = fmul double %113, %115, !dbg !5061
  %117 = fadd double %110, %116, !dbg !5062
  %118 = load double, double* %30, align 8, !dbg !5063
  %119 = call double @fabs(double %118) #1, !dbg !5064
  %120 = fmul double 0x3CC0000000000000, %119, !dbg !5065
  %121 = fadd double %117, %120, !dbg !5066
  store double %121, double* %31, align 8, !dbg !5053
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %32, metadata !5067, metadata !63), !dbg !5068
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %33, metadata !5069, metadata !63), !dbg !5070
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !5071, metadata !63), !dbg !5072
  call void @llvm.dbg.declare(metadata i32* %35, metadata !5073, metadata !63), !dbg !5074
  %122 = load double, double* %14, align 8, !dbg !5075
  %123 = load double, double* %23, align 8, !dbg !5076
  %124 = call i32 @gsl_sf_poch_e(double %122, double %123, %struct.gsl_sf_result_struct* %32), !dbg !5077
  store i32 %124, i32* %35, align 4, !dbg !5074
  call void @llvm.dbg.declare(metadata i32* %36, metadata !5078, metadata !63), !dbg !5079
  %125 = load double, double* %23, align 8, !dbg !5080
  %126 = fadd double %125, 1.000000e+00, !dbg !5081
  %127 = call i32 @gsl_sf_gammainv_e(double %126, %struct.gsl_sf_result_struct* %33), !dbg !5082
  store i32 %127, i32* %36, align 4, !dbg !5079
  call void @llvm.dbg.declare(metadata i32* %37, metadata !5083, metadata !63), !dbg !5084
  %128 = load double, double* %15, align 8, !dbg !5085
  %129 = load double, double* %23, align 8, !dbg !5086
  %130 = fadd double %128, %129, !dbg !5087
  %131 = call i32 @gsl_sf_gammainv_e(double %130, %struct.gsl_sf_result_struct* %34), !dbg !5088
  store i32 %131, i32* %37, align 4, !dbg !5084
  call void @llvm.dbg.declare(metadata i32* %38, metadata !5089, metadata !63), !dbg !5090
  %132 = load i32, i32* %26, align 4, !dbg !5091
  %133 = icmp ne i32 %132, 0, !dbg !5091
  br i1 %133, label %134, label %136, !dbg !5091

; <label>:134:                                    ; preds = %91
  %135 = load i32, i32* %26, align 4, !dbg !5092
  br label %151, !dbg !5092

; <label>:136:                                    ; preds = %91
  %137 = load i32, i32* %36, align 4, !dbg !5093
  %138 = icmp ne i32 %137, 0, !dbg !5093
  br i1 %138, label %139, label %141, !dbg !5093

; <label>:139:                                    ; preds = %136
  %140 = load i32, i32* %36, align 4, !dbg !5094
  br label %149, !dbg !5094

; <label>:141:                                    ; preds = %136
  %142 = load i32, i32* %37, align 4, !dbg !5095
  %143 = icmp ne i32 %142, 0, !dbg !5095
  br i1 %143, label %144, label %146, !dbg !5095

; <label>:144:                                    ; preds = %141
  %145 = load i32, i32* %37, align 4, !dbg !5097
  br label %147, !dbg !5097

; <label>:146:                                    ; preds = %141
  br label %147, !dbg !5099

; <label>:147:                                    ; preds = %146, %144
  %148 = phi i32 [ %145, %144 ], [ 0, %146 ], !dbg !5101
  br label %149, !dbg !5101

; <label>:149:                                    ; preds = %147, %139
  %150 = phi i32 [ %140, %139 ], [ %148, %147 ], !dbg !5103
  br label %151, !dbg !5103

; <label>:151:                                    ; preds = %149, %134
  %152 = phi i32 [ %135, %134 ], [ %150, %149 ], !dbg !5105
  store i32 %152, i32* %38, align 4, !dbg !5107
  call void @llvm.dbg.declare(metadata i32* %39, metadata !5108, metadata !63), !dbg !5109
  %153 = load i32, i32* %38, align 4, !dbg !5110
  %154 = icmp ne i32 %153, 0, !dbg !5110
  br i1 %154, label %155, label %157, !dbg !5110

; <label>:155:                                    ; preds = %151
  %156 = load i32, i32* %38, align 4, !dbg !5111
  br label %172, !dbg !5111

; <label>:157:                                    ; preds = %151
  %158 = load i32, i32* %35, align 4, !dbg !5112
  %159 = icmp ne i32 %158, 0, !dbg !5112
  br i1 %159, label %160, label %162, !dbg !5112

; <label>:160:                                    ; preds = %157
  %161 = load i32, i32* %35, align 4, !dbg !5113
  br label %170, !dbg !5113

; <label>:162:                                    ; preds = %157
  %163 = load i32, i32* %27, align 4, !dbg !5114
  %164 = icmp ne i32 %163, 0, !dbg !5114
  br i1 %164, label %165, label %167, !dbg !5114

; <label>:165:                                    ; preds = %162
  %166 = load i32, i32* %27, align 4, !dbg !5115
  br label %168, !dbg !5115

; <label>:167:                                    ; preds = %162
  br label %168, !dbg !5116

; <label>:168:                                    ; preds = %167, %165
  %169 = phi i32 [ %166, %165 ], [ 0, %167 ], !dbg !5117
  br label %170, !dbg !5117

; <label>:170:                                    ; preds = %168, %160
  %171 = phi i32 [ %161, %160 ], [ %169, %168 ], !dbg !5118
  br label %172, !dbg !5118

; <label>:172:                                    ; preds = %170, %155
  %173 = phi i32 [ %156, %155 ], [ %171, %170 ], !dbg !5119
  store i32 %173, i32* %39, align 4, !dbg !5120
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %40, metadata !5121, metadata !63), !dbg !5122
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %41, metadata !5123, metadata !63), !dbg !5124
  call void @llvm.dbg.declare(metadata i32* %42, metadata !5125, metadata !63), !dbg !5126
  %174 = load double, double* %14, align 8, !dbg !5127
  %175 = load double, double* %23, align 8, !dbg !5128
  %176 = load double, double* %17, align 8, !dbg !5129
  %177 = fsub double %175, %176, !dbg !5130
  %178 = call i32 @gsl_sf_poch_e(double %174, double %177, %struct.gsl_sf_result_struct* %40), !dbg !5131
  store i32 %178, i32* %42, align 4, !dbg !5126
  call void @llvm.dbg.declare(metadata i32* %43, metadata !5132, metadata !63), !dbg !5133
  %179 = load double, double* %23, align 8, !dbg !5134
  %180 = fadd double %179, 1.000000e+00, !dbg !5135
  %181 = load double, double* %17, align 8, !dbg !5136
  %182 = fsub double %180, %181, !dbg !5137
  %183 = call i32 @gsl_sf_gammainv_e(double %182, %struct.gsl_sf_result_struct* %41), !dbg !5138
  store i32 %183, i32* %43, align 4, !dbg !5133
  call void @llvm.dbg.declare(metadata i32* %44, metadata !5139, metadata !63), !dbg !5140
  %184 = load i32, i32* %39, align 4, !dbg !5141
  %185 = icmp ne i32 %184, 0, !dbg !5141
  br i1 %185, label %186, label %188, !dbg !5141

; <label>:186:                                    ; preds = %172
  %187 = load i32, i32* %39, align 4, !dbg !5142
  br label %203, !dbg !5142

; <label>:188:                                    ; preds = %172
  %189 = load i32, i32* %42, align 4, !dbg !5143
  %190 = icmp ne i32 %189, 0, !dbg !5143
  br i1 %190, label %191, label %193, !dbg !5143

; <label>:191:                                    ; preds = %188
  %192 = load i32, i32* %42, align 4, !dbg !5144
  br label %201, !dbg !5144

; <label>:193:                                    ; preds = %188
  %194 = load i32, i32* %43, align 4, !dbg !5145
  %195 = icmp ne i32 %194, 0, !dbg !5145
  br i1 %195, label %196, label %198, !dbg !5145

; <label>:196:                                    ; preds = %193
  %197 = load i32, i32* %43, align 4, !dbg !5146
  br label %199, !dbg !5146

; <label>:198:                                    ; preds = %193
  br label %199, !dbg !5147

; <label>:199:                                    ; preds = %198, %196
  %200 = phi i32 [ %197, %196 ], [ 0, %198 ], !dbg !5148
  br label %201, !dbg !5148

; <label>:201:                                    ; preds = %199, %191
  %202 = phi i32 [ %192, %191 ], [ %200, %199 ], !dbg !5149
  br label %203, !dbg !5149

; <label>:203:                                    ; preds = %201, %186
  %204 = phi i32 [ %187, %186 ], [ %202, %201 ], !dbg !5150
  store i32 %204, i32* %44, align 4, !dbg !5151
  call void @llvm.dbg.declare(metadata double* %45, metadata !5152, metadata !63), !dbg !5153
  %205 = load double, double* %30, align 8, !dbg !5154
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !5155
  %207 = load double, double* %206, align 8, !dbg !5155
  %208 = fmul double %205, %207, !dbg !5156
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !5157
  %210 = load double, double* %209, align 8, !dbg !5157
  %211 = fmul double %208, %210, !dbg !5158
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !5159
  %213 = load double, double* %212, align 8, !dbg !5159
  %214 = fmul double %211, %213, !dbg !5160
  store double %214, double* %45, align 8, !dbg !5153
  call void @llvm.dbg.declare(metadata double* %46, metadata !5161, metadata !63), !dbg !5162
  %215 = load double, double* %30, align 8, !dbg !5163
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !5164
  %217 = load double, double* %216, align 8, !dbg !5164
  %218 = fmul double %215, %217, !dbg !5165
  %219 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !5166
  %220 = load double, double* %219, align 8, !dbg !5166
  %221 = fmul double %218, %220, !dbg !5167
  %222 = call double @fabs(double %221) #1, !dbg !5168
  %223 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !5169
  %224 = load double, double* %223, align 8, !dbg !5169
  %225 = fmul double %222, %224, !dbg !5170
  %226 = load double, double* %30, align 8, !dbg !5171
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !5172
  %228 = load double, double* %227, align 8, !dbg !5172
  %229 = fmul double %226, %228, !dbg !5173
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !5174
  %231 = load double, double* %230, align 8, !dbg !5174
  %232 = fmul double %229, %231, !dbg !5175
  %233 = call double @fabs(double %232) #1, !dbg !5176
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !5177
  %235 = load double, double* %234, align 8, !dbg !5177
  %236 = fmul double %233, %235, !dbg !5178
  %237 = fadd double %225, %236, !dbg !5179
  %238 = load double, double* %30, align 8, !dbg !5180
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !5181
  %240 = load double, double* %239, align 8, !dbg !5181
  %241 = fmul double %238, %240, !dbg !5182
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !5183
  %243 = load double, double* %242, align 8, !dbg !5183
  %244 = fmul double %241, %243, !dbg !5184
  %245 = call double @fabs(double %244) #1, !dbg !5185
  %246 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !5186
  %247 = load double, double* %246, align 8, !dbg !5186
  %248 = fmul double %245, %247, !dbg !5187
  %249 = fadd double %237, %248, !dbg !5188
  %250 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 0, !dbg !5189
  %251 = load double, double* %250, align 8, !dbg !5189
  %252 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !5190
  %253 = load double, double* %252, align 8, !dbg !5190
  %254 = fmul double %251, %253, !dbg !5191
  %255 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !5192
  %256 = load double, double* %255, align 8, !dbg !5192
  %257 = fmul double %254, %256, !dbg !5193
  %258 = call double @fabs(double %257) #1, !dbg !5194
  %259 = load double, double* %31, align 8, !dbg !5195
  %260 = fmul double %258, %259, !dbg !5196
  %261 = fadd double %249, %260, !dbg !5197
  %262 = load double, double* %45, align 8, !dbg !5198
  %263 = call double @fabs(double %262) #1, !dbg !5199
  %264 = fmul double 0x3CC0000000000000, %263, !dbg !5200
  %265 = fadd double %261, %264, !dbg !5201
  store double %265, double* %46, align 8, !dbg !5162
  call void @llvm.dbg.declare(metadata i32* %47, metadata !5202, metadata !63), !dbg !5203
  call void @llvm.dbg.declare(metadata double* %48, metadata !5204, metadata !63), !dbg !5205
  call void @llvm.dbg.declare(metadata double* %49, metadata !5206, metadata !63), !dbg !5207
  call void @llvm.dbg.declare(metadata double* %50, metadata !5208, metadata !63), !dbg !5209
  call void @llvm.dbg.declare(metadata double* %51, metadata !5210, metadata !63), !dbg !5211
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %52, metadata !5212, metadata !63), !dbg !5213
  call void @llvm.dbg.declare(metadata i32* %53, metadata !5214, metadata !63), !dbg !5215
  %266 = load double, double* %16, align 8, !dbg !5216
  %267 = load double, double* %23, align 8, !dbg !5217
  %268 = fadd double %266, %267, !dbg !5218
  %269 = call i32 @gsl_sf_gammainv_e(double %268, %struct.gsl_sf_result_struct* %52), !dbg !5219
  store i32 %269, i32* %53, align 4, !dbg !5215
  call void @llvm.dbg.declare(metadata double* %54, metadata !5220, metadata !63), !dbg !5221
  %270 = load double, double* %30, align 8, !dbg !5222
  %271 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !5223
  %272 = load double, double* %271, align 8, !dbg !5223
  %273 = fmul double %270, %272, !dbg !5224
  %274 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !5225
  %275 = load double, double* %274, align 8, !dbg !5225
  %276 = fmul double %273, %275, !dbg !5226
  %277 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !5227
  %278 = load double, double* %277, align 8, !dbg !5227
  %279 = fmul double %276, %278, !dbg !5228
  %280 = load double, double* %17, align 8, !dbg !5229
  %281 = fdiv double %279, %280, !dbg !5230
  store double %281, double* %54, align 8, !dbg !5221
  call void @llvm.dbg.declare(metadata double* %55, metadata !5231, metadata !63), !dbg !5232
  %282 = load double, double* %30, align 8, !dbg !5233
  %283 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !5234
  %284 = load double, double* %283, align 8, !dbg !5234
  %285 = fmul double %282, %284, !dbg !5235
  %286 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !5236
  %287 = load double, double* %286, align 8, !dbg !5236
  %288 = fmul double %285, %287, !dbg !5237
  %289 = load double, double* %17, align 8, !dbg !5238
  %290 = fdiv double %288, %289, !dbg !5239
  %291 = call double @fabs(double %290) #1, !dbg !5240
  %292 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !5241
  %293 = load double, double* %292, align 8, !dbg !5241
  %294 = fmul double %291, %293, !dbg !5242
  %295 = load double, double* %30, align 8, !dbg !5243
  %296 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !5244
  %297 = load double, double* %296, align 8, !dbg !5244
  %298 = fmul double %295, %297, !dbg !5245
  %299 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !5246
  %300 = load double, double* %299, align 8, !dbg !5246
  %301 = fmul double %298, %300, !dbg !5247
  %302 = load double, double* %17, align 8, !dbg !5248
  %303 = fdiv double %301, %302, !dbg !5249
  %304 = call double @fabs(double %303) #1, !dbg !5250
  %305 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !5251
  %306 = load double, double* %305, align 8, !dbg !5251
  %307 = fmul double %304, %306, !dbg !5252
  %308 = fadd double %294, %307, !dbg !5253
  %309 = load double, double* %30, align 8, !dbg !5254
  %310 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !5255
  %311 = load double, double* %310, align 8, !dbg !5255
  %312 = fmul double %309, %311, !dbg !5256
  %313 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !5257
  %314 = load double, double* %313, align 8, !dbg !5257
  %315 = fmul double %312, %314, !dbg !5258
  %316 = load double, double* %17, align 8, !dbg !5259
  %317 = fdiv double %315, %316, !dbg !5260
  %318 = call double @fabs(double %317) #1, !dbg !5261
  %319 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !5262
  %320 = load double, double* %319, align 8, !dbg !5262
  %321 = fmul double %318, %320, !dbg !5263
  %322 = fadd double %308, %321, !dbg !5264
  %323 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !5265
  %324 = load double, double* %323, align 8, !dbg !5265
  %325 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !5266
  %326 = load double, double* %325, align 8, !dbg !5266
  %327 = fmul double %324, %326, !dbg !5267
  %328 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !5268
  %329 = load double, double* %328, align 8, !dbg !5268
  %330 = fmul double %327, %329, !dbg !5269
  %331 = load double, double* %17, align 8, !dbg !5270
  %332 = fdiv double %330, %331, !dbg !5271
  %333 = call double @fabs(double %332) #1, !dbg !5272
  %334 = load double, double* %31, align 8, !dbg !5273
  %335 = fmul double %333, %334, !dbg !5274
  %336 = fadd double %322, %335, !dbg !5275
  %337 = load double, double* %54, align 8, !dbg !5276
  %338 = call double @fabs(double %337) #1, !dbg !5277
  %339 = fmul double 0x3CC0000000000000, %338, !dbg !5278
  %340 = fadd double %336, %339, !dbg !5279
  store double %340, double* %55, align 8, !dbg !5232
  %341 = load i32, i32* %44, align 4, !dbg !5280
  %342 = icmp ne i32 %341, 0, !dbg !5280
  br i1 %342, label %343, label %345, !dbg !5280

; <label>:343:                                    ; preds = %203
  %344 = load i32, i32* %44, align 4, !dbg !5281
  br label %353, !dbg !5281

; <label>:345:                                    ; preds = %203
  %346 = load i32, i32* %53, align 4, !dbg !5282
  %347 = icmp ne i32 %346, 0, !dbg !5282
  br i1 %347, label %348, label %350, !dbg !5282

; <label>:348:                                    ; preds = %345
  %349 = load i32, i32* %53, align 4, !dbg !5283
  br label %351, !dbg !5283

; <label>:350:                                    ; preds = %345
  br label %351, !dbg !5284

; <label>:351:                                    ; preds = %350, %348
  %352 = phi i32 [ %349, %348 ], [ 0, %350 ], !dbg !5285
  br label %353, !dbg !5285

; <label>:353:                                    ; preds = %351, %343
  %354 = phi i32 [ %344, %343 ], [ %352, %351 ], !dbg !5286
  store i32 %354, i32* %44, align 4, !dbg !5287
  %355 = load double, double* %19, align 8, !dbg !5288
  %356 = load double, double* %45, align 8, !dbg !5289
  %357 = fmul double %355, %356, !dbg !5290
  %358 = load double, double* %17, align 8, !dbg !5291
  %359 = fdiv double %357, %358, !dbg !5292
  store double %359, double* %45, align 8, !dbg !5293
  %360 = load double, double* %19, align 8, !dbg !5294
  %361 = load double, double* %17, align 8, !dbg !5295
  %362 = fdiv double %360, %361, !dbg !5296
  %363 = call double @fabs(double %362) #1, !dbg !5297
  %364 = load double, double* %46, align 8, !dbg !5298
  %365 = fmul double %363, %364, !dbg !5299
  %366 = load double, double* %45, align 8, !dbg !5300
  %367 = call double @fabs(double %366) #1, !dbg !5301
  %368 = fmul double 0x3CD0000000000000, %367, !dbg !5302
  %369 = fadd double %365, %368, !dbg !5303
  store double %369, double* %46, align 8, !dbg !5304
  %370 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !5305
  %371 = load double, double* %370, align 8, !dbg !5305
  %372 = load double, double* %54, align 8, !dbg !5306
  %373 = fadd double %371, %372, !dbg !5307
  %374 = load double, double* %45, align 8, !dbg !5308
  %375 = fsub double %373, %374, !dbg !5309
  store double %375, double* %48, align 8, !dbg !5310
  %376 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !5311
  %377 = load double, double* %376, align 8, !dbg !5311
  %378 = load double, double* %55, align 8, !dbg !5312
  %379 = fadd double %377, %378, !dbg !5313
  %380 = load double, double* %46, align 8, !dbg !5314
  %381 = fadd double %379, %380, !dbg !5315
  %382 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !5316
  %383 = load double, double* %382, align 8, !dbg !5316
  %384 = call double @fabs(double %383) #1, !dbg !5317
  %385 = load double, double* %54, align 8, !dbg !5318
  %386 = call double @fabs(double %385) #1, !dbg !5319
  %387 = fadd double %384, %386, !dbg !5320
  %388 = load double, double* %45, align 8, !dbg !5321
  %389 = call double @fabs(double %388) #1, !dbg !5322
  %390 = fadd double %387, %389, !dbg !5323
  %391 = fmul double 0x3CC0000000000000, %390, !dbg !5324
  %392 = fadd double %381, %391, !dbg !5325
  store double %392, double* %49, align 8, !dbg !5326
  store i32 1, i32* %47, align 4, !dbg !5327
  br label %393, !dbg !5329

; <label>:393:                                    ; preds = %470, %353
  %394 = load i32, i32* %47, align 4, !dbg !5330
  %395 = icmp slt i32 %394, 2000, !dbg !5333
  br i1 %395, label %396, label %473, !dbg !5334

; <label>:396:                                    ; preds = %393
  call void @llvm.dbg.declare(metadata double* %56, metadata !5335, metadata !63), !dbg !5337
  %397 = load i32, i32* %22, align 4, !dbg !5338
  %398 = load i32, i32* %47, align 4, !dbg !5339
  %399 = add nsw i32 %397, %398, !dbg !5340
  %400 = sitofp i32 %399 to double, !dbg !5338
  store double %400, double* %56, align 8, !dbg !5337
  call void @llvm.dbg.declare(metadata double* %57, metadata !5341, metadata !63), !dbg !5342
  %401 = load i32, i32* %22, align 4, !dbg !5343
  %402 = load i32, i32* %47, align 4, !dbg !5344
  %403 = add nsw i32 %401, %402, !dbg !5345
  %404 = sub nsw i32 %403, 1, !dbg !5346
  %405 = sitofp i32 %404 to double, !dbg !5343
  store double %405, double* %57, align 8, !dbg !5342
  call void @llvm.dbg.declare(metadata double* %58, metadata !5347, metadata !63), !dbg !5348
  %406 = load double, double* %14, align 8, !dbg !5349
  %407 = load double, double* %57, align 8, !dbg !5350
  %408 = fadd double %406, %407, !dbg !5351
  %409 = load double, double* %18, align 8, !dbg !5352
  %410 = fmul double %408, %409, !dbg !5353
  %411 = load double, double* %16, align 8, !dbg !5354
  %412 = load double, double* %57, align 8, !dbg !5355
  %413 = fadd double %411, %412, !dbg !5356
  %414 = load double, double* %56, align 8, !dbg !5357
  %415 = fmul double %413, %414, !dbg !5358
  %416 = fdiv double %410, %415, !dbg !5359
  store double %416, double* %58, align 8, !dbg !5348
  call void @llvm.dbg.declare(metadata double* %59, metadata !5360, metadata !63), !dbg !5361
  %417 = load double, double* %14, align 8, !dbg !5362
  %418 = load double, double* %57, align 8, !dbg !5363
  %419 = fadd double %417, %418, !dbg !5364
  %420 = load double, double* %17, align 8, !dbg !5365
  %421 = fsub double %419, %420, !dbg !5366
  %422 = load double, double* %18, align 8, !dbg !5367
  %423 = fmul double %421, %422, !dbg !5368
  %424 = load double, double* %15, align 8, !dbg !5369
  %425 = load double, double* %57, align 8, !dbg !5370
  %426 = fadd double %424, %425, !dbg !5371
  %427 = load double, double* %56, align 8, !dbg !5372
  %428 = load double, double* %17, align 8, !dbg !5373
  %429 = fsub double %427, %428, !dbg !5374
  %430 = fmul double %426, %429, !dbg !5375
  %431 = fdiv double %423, %430, !dbg !5376
  store double %431, double* %59, align 8, !dbg !5361
  %432 = load double, double* %58, align 8, !dbg !5377
  %433 = load double, double* %54, align 8, !dbg !5378
  %434 = fmul double %433, %432, !dbg !5378
  store double %434, double* %54, align 8, !dbg !5378
  %435 = load double, double* %58, align 8, !dbg !5379
  %436 = call double @fabs(double %435) #1, !dbg !5380
  %437 = load double, double* %55, align 8, !dbg !5381
  %438 = fmul double %436, %437, !dbg !5382
  %439 = load double, double* %55, align 8, !dbg !5383
  %440 = fadd double %439, %438, !dbg !5383
  store double %440, double* %55, align 8, !dbg !5383
  %441 = load double, double* %59, align 8, !dbg !5384
  %442 = load double, double* %45, align 8, !dbg !5385
  %443 = fmul double %442, %441, !dbg !5385
  store double %443, double* %45, align 8, !dbg !5385
  %444 = load double, double* %59, align 8, !dbg !5386
  %445 = call double @fabs(double %444) #1, !dbg !5387
  %446 = load double, double* %46, align 8, !dbg !5388
  %447 = fmul double %445, %446, !dbg !5389
  %448 = load double, double* %46, align 8, !dbg !5390
  %449 = fadd double %448, %447, !dbg !5390
  store double %449, double* %46, align 8, !dbg !5390
  %450 = load double, double* %54, align 8, !dbg !5391
  %451 = load double, double* %45, align 8, !dbg !5392
  %452 = fsub double %450, %451, !dbg !5393
  store double %452, double* %50, align 8, !dbg !5394
  %453 = load double, double* %55, align 8, !dbg !5395
  %454 = load double, double* %46, align 8, !dbg !5396
  %455 = fadd double %453, %454, !dbg !5397
  store double %455, double* %51, align 8, !dbg !5398
  %456 = load double, double* %50, align 8, !dbg !5399
  %457 = load double, double* %48, align 8, !dbg !5400
  %458 = fadd double %457, %456, !dbg !5400
  store double %458, double* %48, align 8, !dbg !5400
  %459 = load double, double* %51, align 8, !dbg !5401
  %460 = load double, double* %49, align 8, !dbg !5402
  %461 = fadd double %460, %459, !dbg !5402
  store double %461, double* %49, align 8, !dbg !5402
  %462 = load double, double* %50, align 8, !dbg !5403
  %463 = call double @fabs(double %462) #1, !dbg !5405
  %464 = load double, double* %48, align 8, !dbg !5406
  %465 = call double @fabs(double %464) #1, !dbg !5407
  %466 = fmul double 0x3CC0000000000000, %465, !dbg !5409
  %467 = fcmp olt double %463, %466, !dbg !5410
  br i1 %467, label %468, label %469, !dbg !5411

; <label>:468:                                    ; preds = %396
  br label %473, !dbg !5412

; <label>:469:                                    ; preds = %396
  br label %470, !dbg !5414

; <label>:470:                                    ; preds = %469
  %471 = load i32, i32* %47, align 4, !dbg !5415
  %472 = add nsw i32 %471, 1, !dbg !5415
  store i32 %472, i32* %47, align 4, !dbg !5415
  br label %393, !dbg !5417, !llvm.loop !5418

; <label>:473:                                    ; preds = %468, %393
  %474 = load double, double* %48, align 8, !dbg !5420
  %475 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !5421
  %476 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %475, i32 0, i32 0, !dbg !5422
  store double %474, double* %476, align 8, !dbg !5423
  %477 = load double, double* %49, align 8, !dbg !5424
  %478 = fmul double 2.000000e+00, %477, !dbg !5425
  %479 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !5426
  %480 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %479, i32 0, i32 1, !dbg !5427
  store double %478, double* %480, align 8, !dbg !5428
  %481 = load double, double* %50, align 8, !dbg !5429
  %482 = call double @fabs(double %481) #1, !dbg !5430
  %483 = fmul double 2.000000e+00, %482, !dbg !5431
  %484 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !5432
  %485 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %484, i32 0, i32 1, !dbg !5433
  %486 = load double, double* %485, align 8, !dbg !5434
  %487 = fadd double %486, %483, !dbg !5434
  store double %487, double* %485, align 8, !dbg !5434
  %488 = load i32, i32* %47, align 4, !dbg !5435
  %489 = sitofp i32 %488 to double, !dbg !5435
  %490 = fadd double %489, 2.000000e+00, !dbg !5436
  %491 = fmul double 0x3CD0000000000000, %490, !dbg !5437
  %492 = load double, double* %48, align 8, !dbg !5438
  %493 = call double @fabs(double %492) #1, !dbg !5439
  %494 = fmul double %491, %493, !dbg !5440
  %495 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !5441
  %496 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %495, i32 0, i32 1, !dbg !5442
  %497 = load double, double* %496, align 8, !dbg !5443
  %498 = fadd double %497, %494, !dbg !5443
  store double %498, double* %496, align 8, !dbg !5443
  %499 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !5444
  %500 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %499, i32 0, i32 1, !dbg !5445
  %501 = load double, double* %500, align 8, !dbg !5446
  %502 = fmul double %501, 2.000000e+00, !dbg !5446
  store double %502, double* %500, align 8, !dbg !5446
  %503 = load i32, i32* %47, align 4, !dbg !5447
  %504 = icmp sge i32 %503, 2000, !dbg !5449
  br i1 %504, label %505, label %508, !dbg !5450

; <label>:505:                                    ; preds = %473
  br label %506, !dbg !5451, !llvm.loop !5453

; <label>:506:                                    ; preds = %505
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 438, i32 11), !dbg !5454
  store i32 11, i32* %11, align 4, !dbg !5454
  br label %510, !dbg !5454
                                                  ; No predecessors!
  br label %510, !dbg !5457

; <label>:508:                                    ; preds = %473
  %509 = load i32, i32* %44, align 4, !dbg !5458
  store i32 %509, i32* %11, align 4, !dbg !5460
  br label %510, !dbg !5460

; <label>:510:                                    ; preds = %506, %508, %507
  %511 = load i32, i32* %11, align 4, !dbg !5461
  ret i32 %511, !dbg !5461
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_infinite_sum_simple(i32, double, double, double, double, double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !5462 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.gsl_sf_result_struct*, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca %struct.gsl_sf_result_struct, align 8
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca %struct.gsl_sf_result_struct, align 8
  %31 = alloca %struct.gsl_sf_result_struct, align 8
  %32 = alloca %struct.gsl_sf_result_struct, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.gsl_sf_result_struct, align 8
  %39 = alloca %struct.gsl_sf_result_struct, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca double, align 8
  %44 = alloca double, align 8
  %45 = alloca double, align 8
  %46 = alloca i32, align 4
  %47 = alloca double, align 8
  %48 = alloca double, align 8
  %49 = alloca double, align 8
  %50 = alloca double, align 8
  %51 = alloca %struct.gsl_sf_result_struct, align 8
  %52 = alloca %struct.gsl_sf_result_struct, align 8
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca double, align 8
  %56 = alloca double, align 8
  %57 = alloca double, align 8
  %58 = alloca double, align 8
  %59 = alloca double, align 8
  %60 = alloca double, align 8
  %61 = bitcast %struct.gsl_sf_result_struct* %12 to { double, double }*
  %62 = getelementptr inbounds { double, double }, { double, double }* %61, i32 0, i32 0
  store double %7, double* %62, align 8
  %63 = getelementptr inbounds { double, double }, { double, double }* %61, i32 0, i32 1
  store double %8, double* %63, align 8
  store i32 %0, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !5463, metadata !63), !dbg !5464
  store double %1, double* %14, align 8
  call void @llvm.dbg.declare(metadata double* %14, metadata !5465, metadata !63), !dbg !5466
  store double %2, double* %15, align 8
  call void @llvm.dbg.declare(metadata double* %15, metadata !5467, metadata !63), !dbg !5468
  store double %3, double* %16, align 8
  call void @llvm.dbg.declare(metadata double* %16, metadata !5469, metadata !63), !dbg !5470
  store double %4, double* %17, align 8
  call void @llvm.dbg.declare(metadata double* %17, metadata !5471, metadata !63), !dbg !5472
  store double %5, double* %18, align 8
  call void @llvm.dbg.declare(metadata double* %18, metadata !5473, metadata !63), !dbg !5474
  store double %6, double* %19, align 8
  call void @llvm.dbg.declare(metadata double* %19, metadata !5475, metadata !63), !dbg !5476
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !5477, metadata !63), !dbg !5478
  store %struct.gsl_sf_result_struct* %9, %struct.gsl_sf_result_struct** %20, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %20, metadata !5479, metadata !63), !dbg !5480
  call void @llvm.dbg.declare(metadata double* %21, metadata !5481, metadata !63), !dbg !5482
  store double 0x3CC0000000000000, double* %21, align 8, !dbg !5482
  call void @llvm.dbg.declare(metadata i32* %22, metadata !5483, metadata !63), !dbg !5484
  %64 = load i32, i32* %13, align 4, !dbg !5485
  %65 = icmp slt i32 %64, 1, !dbg !5486
  br i1 %65, label %66, label %69, !dbg !5485

; <label>:66:                                     ; preds = %10
  %67 = load i32, i32* %13, align 4, !dbg !5487
  %68 = sub nsw i32 1, %67, !dbg !5489
  br label %70, !dbg !5490

; <label>:69:                                     ; preds = %10
  br label %70, !dbg !5491

; <label>:70:                                     ; preds = %69, %66
  %71 = phi i32 [ %68, %66 ], [ 0, %69 ], !dbg !5493
  store i32 %71, i32* %22, align 4, !dbg !5495
  call void @llvm.dbg.declare(metadata double* %23, metadata !5496, metadata !63), !dbg !5497
  %72 = load i32, i32* %22, align 4, !dbg !5498
  %73 = sitofp i32 %72 to double, !dbg !5498
  store double %73, double* %23, align 8, !dbg !5497
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %24, metadata !5499, metadata !63), !dbg !5500
  call void @llvm.dbg.declare(metadata i32* %25, metadata !5501, metadata !63), !dbg !5502
  %74 = load double, double* %18, align 8, !dbg !5503
  %75 = load i32, i32* %22, align 4, !dbg !5504
  %76 = call i32 @gsl_sf_pow_int_e(double %74, i32 %75, %struct.gsl_sf_result_struct* %24), !dbg !5505
  store i32 %76, i32* %25, align 4, !dbg !5502
  call void @llvm.dbg.declare(metadata double* %26, metadata !5506, metadata !63), !dbg !5507
  %77 = load double, double* %17, align 8, !dbg !5508
  %78 = fmul double %77, 0x400921FB54442D18, !dbg !5509
  store double %78, double* %26, align 8, !dbg !5507
  call void @llvm.dbg.declare(metadata double* %27, metadata !5510, metadata !63), !dbg !5511
  %79 = load double, double* %26, align 8, !dbg !5512
  %80 = fcmp une double %79, 0.000000e+00, !dbg !5513
  br i1 %80, label %81, label %86, !dbg !5512

; <label>:81:                                     ; preds = %70
  %82 = load double, double* %26, align 8, !dbg !5514
  %83 = load double, double* %26, align 8, !dbg !5515
  %84 = call double @sin(double %83) #6, !dbg !5516
  %85 = fdiv double %82, %84, !dbg !5517
  br label %87, !dbg !5518

; <label>:86:                                     ; preds = %70
  br label %87, !dbg !5519

; <label>:87:                                     ; preds = %86, %81
  %88 = phi double [ %85, %81 ], [ 1.000000e+00, %86 ], !dbg !5520
  store double %88, double* %27, align 8, !dbg !5521
  call void @llvm.dbg.declare(metadata double* %28, metadata !5522, metadata !63), !dbg !5523
  %89 = load double, double* %27, align 8, !dbg !5524
  %90 = load i32, i32* %13, align 4, !dbg !5525
  %91 = and i32 %90, 1, !dbg !5525
  %92 = icmp ne i32 %91, 0, !dbg !5525
  %93 = select i1 %92, double -1.000000e+00, double 1.000000e+00, !dbg !5525
  %94 = fmul double %89, %93, !dbg !5526
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !5527
  %96 = load double, double* %95, align 8, !dbg !5527
  %97 = fmul double %94, %96, !dbg !5528
  store double %97, double* %28, align 8, !dbg !5523
  call void @llvm.dbg.declare(metadata double* %29, metadata !5529, metadata !63), !dbg !5530
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !5531
  %99 = load double, double* %98, align 8, !dbg !5531
  %100 = call double @fabs(double %99) #1, !dbg !5532
  %101 = load double, double* %28, align 8, !dbg !5533
  %102 = call double @fabs(double %101) #1, !dbg !5534
  %103 = fmul double 0x3CC0000000000000, %102, !dbg !5535
  %104 = fadd double %100, %103, !dbg !5536
  store double %104, double* %29, align 8, !dbg !5530
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %30, metadata !5537, metadata !63), !dbg !5538
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %31, metadata !5539, metadata !63), !dbg !5540
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %32, metadata !5541, metadata !63), !dbg !5542
  call void @llvm.dbg.declare(metadata i32* %33, metadata !5543, metadata !63), !dbg !5544
  %105 = load double, double* %14, align 8, !dbg !5545
  %106 = load double, double* %23, align 8, !dbg !5546
  %107 = call i32 @gsl_sf_poch_e(double %105, double %106, %struct.gsl_sf_result_struct* %30), !dbg !5547
  store i32 %107, i32* %33, align 4, !dbg !5544
  call void @llvm.dbg.declare(metadata i32* %34, metadata !5548, metadata !63), !dbg !5549
  %108 = load double, double* %23, align 8, !dbg !5550
  %109 = fadd double %108, 1.000000e+00, !dbg !5551
  %110 = call i32 @gsl_sf_gammainv_e(double %109, %struct.gsl_sf_result_struct* %31), !dbg !5552
  store i32 %110, i32* %34, align 4, !dbg !5549
  call void @llvm.dbg.declare(metadata i32* %35, metadata !5553, metadata !63), !dbg !5554
  %111 = load double, double* %15, align 8, !dbg !5555
  %112 = load double, double* %23, align 8, !dbg !5556
  %113 = fadd double %111, %112, !dbg !5557
  %114 = call i32 @gsl_sf_gammainv_e(double %113, %struct.gsl_sf_result_struct* %32), !dbg !5558
  store i32 %114, i32* %35, align 4, !dbg !5554
  call void @llvm.dbg.declare(metadata i32* %36, metadata !5559, metadata !63), !dbg !5560
  %115 = load i32, i32* %34, align 4, !dbg !5561
  %116 = icmp ne i32 %115, 0, !dbg !5561
  br i1 %116, label %117, label %119, !dbg !5561

; <label>:117:                                    ; preds = %87
  %118 = load i32, i32* %34, align 4, !dbg !5562
  br label %127, !dbg !5562

; <label>:119:                                    ; preds = %87
  %120 = load i32, i32* %35, align 4, !dbg !5563
  %121 = icmp ne i32 %120, 0, !dbg !5563
  br i1 %121, label %122, label %124, !dbg !5563

; <label>:122:                                    ; preds = %119
  %123 = load i32, i32* %35, align 4, !dbg !5564
  br label %125, !dbg !5564

; <label>:124:                                    ; preds = %119
  br label %125, !dbg !5565

; <label>:125:                                    ; preds = %124, %122
  %126 = phi i32 [ %123, %122 ], [ 0, %124 ], !dbg !5567
  br label %127, !dbg !5567

; <label>:127:                                    ; preds = %125, %117
  %128 = phi i32 [ %118, %117 ], [ %126, %125 ], !dbg !5569
  store i32 %128, i32* %36, align 4, !dbg !5571
  call void @llvm.dbg.declare(metadata i32* %37, metadata !5572, metadata !63), !dbg !5573
  %129 = load i32, i32* %36, align 4, !dbg !5574
  %130 = icmp ne i32 %129, 0, !dbg !5574
  br i1 %130, label %131, label %133, !dbg !5574

; <label>:131:                                    ; preds = %127
  %132 = load i32, i32* %36, align 4, !dbg !5575
  br label %148, !dbg !5575

; <label>:133:                                    ; preds = %127
  %134 = load i32, i32* %33, align 4, !dbg !5576
  %135 = icmp ne i32 %134, 0, !dbg !5576
  br i1 %135, label %136, label %138, !dbg !5576

; <label>:136:                                    ; preds = %133
  %137 = load i32, i32* %33, align 4, !dbg !5577
  br label %146, !dbg !5577

; <label>:138:                                    ; preds = %133
  %139 = load i32, i32* %25, align 4, !dbg !5578
  %140 = icmp ne i32 %139, 0, !dbg !5578
  br i1 %140, label %141, label %143, !dbg !5578

; <label>:141:                                    ; preds = %138
  %142 = load i32, i32* %25, align 4, !dbg !5579
  br label %144, !dbg !5579

; <label>:143:                                    ; preds = %138
  br label %144, !dbg !5580

; <label>:144:                                    ; preds = %143, %141
  %145 = phi i32 [ %142, %141 ], [ 0, %143 ], !dbg !5581
  br label %146, !dbg !5581

; <label>:146:                                    ; preds = %144, %136
  %147 = phi i32 [ %137, %136 ], [ %145, %144 ], !dbg !5583
  br label %148, !dbg !5583

; <label>:148:                                    ; preds = %146, %131
  %149 = phi i32 [ %132, %131 ], [ %147, %146 ], !dbg !5585
  store i32 %149, i32* %37, align 4, !dbg !5587
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %38, metadata !5588, metadata !63), !dbg !5589
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %39, metadata !5590, metadata !63), !dbg !5591
  call void @llvm.dbg.declare(metadata i32* %40, metadata !5592, metadata !63), !dbg !5593
  %150 = load double, double* %14, align 8, !dbg !5594
  %151 = load double, double* %23, align 8, !dbg !5595
  %152 = load double, double* %17, align 8, !dbg !5596
  %153 = fsub double %151, %152, !dbg !5597
  %154 = call i32 @gsl_sf_poch_e(double %150, double %153, %struct.gsl_sf_result_struct* %38), !dbg !5598
  store i32 %154, i32* %40, align 4, !dbg !5593
  call void @llvm.dbg.declare(metadata i32* %41, metadata !5599, metadata !63), !dbg !5600
  %155 = load double, double* %23, align 8, !dbg !5601
  %156 = fadd double %155, 1.000000e+00, !dbg !5602
  %157 = load double, double* %17, align 8, !dbg !5603
  %158 = fsub double %156, %157, !dbg !5604
  %159 = call i32 @gsl_sf_gammainv_e(double %158, %struct.gsl_sf_result_struct* %39), !dbg !5605
  store i32 %159, i32* %41, align 4, !dbg !5600
  call void @llvm.dbg.declare(metadata i32* %42, metadata !5606, metadata !63), !dbg !5607
  %160 = load i32, i32* %37, align 4, !dbg !5608
  %161 = icmp ne i32 %160, 0, !dbg !5608
  br i1 %161, label %162, label %164, !dbg !5608

; <label>:162:                                    ; preds = %148
  %163 = load i32, i32* %37, align 4, !dbg !5609
  br label %179, !dbg !5609

; <label>:164:                                    ; preds = %148
  %165 = load i32, i32* %40, align 4, !dbg !5610
  %166 = icmp ne i32 %165, 0, !dbg !5610
  br i1 %166, label %167, label %169, !dbg !5610

; <label>:167:                                    ; preds = %164
  %168 = load i32, i32* %40, align 4, !dbg !5611
  br label %177, !dbg !5611

; <label>:169:                                    ; preds = %164
  %170 = load i32, i32* %41, align 4, !dbg !5612
  %171 = icmp ne i32 %170, 0, !dbg !5612
  br i1 %171, label %172, label %174, !dbg !5612

; <label>:172:                                    ; preds = %169
  %173 = load i32, i32* %41, align 4, !dbg !5613
  br label %175, !dbg !5613

; <label>:174:                                    ; preds = %169
  br label %175, !dbg !5614

; <label>:175:                                    ; preds = %174, %172
  %176 = phi i32 [ %173, %172 ], [ 0, %174 ], !dbg !5615
  br label %177, !dbg !5615

; <label>:177:                                    ; preds = %175, %167
  %178 = phi i32 [ %168, %167 ], [ %176, %175 ], !dbg !5616
  br label %179, !dbg !5616

; <label>:179:                                    ; preds = %177, %162
  %180 = phi i32 [ %163, %162 ], [ %178, %177 ], !dbg !5617
  store i32 %180, i32* %42, align 4, !dbg !5618
  call void @llvm.dbg.declare(metadata double* %43, metadata !5619, metadata !63), !dbg !5620
  %181 = load double, double* %27, align 8, !dbg !5621
  %182 = load i32, i32* %13, align 4, !dbg !5622
  %183 = and i32 %182, 1, !dbg !5622
  %184 = icmp ne i32 %183, 0, !dbg !5622
  %185 = select i1 %184, double -1.000000e+00, double 1.000000e+00, !dbg !5622
  %186 = fmul double %181, %185, !dbg !5623
  %187 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !5624
  %188 = load double, double* %187, align 8, !dbg !5624
  %189 = fmul double %186, %188, !dbg !5625
  %190 = load double, double* %14, align 8, !dbg !5626
  %191 = fadd double 1.000000e+00, %190, !dbg !5627
  %192 = load double, double* %16, align 8, !dbg !5628
  %193 = fsub double %191, %192, !dbg !5629
  %194 = load double, double* %23, align 8, !dbg !5630
  %195 = fsub double %194, 1.000000e+00, !dbg !5631
  %196 = load double, double* %16, align 8, !dbg !5632
  %197 = fadd double %195, %196, !dbg !5633
  %198 = load double, double* %17, align 8, !dbg !5634
  %199 = fsub double %197, %198, !dbg !5635
  %200 = call double @gsl_sf_poch(double %193, double %199), !dbg !5636
  %201 = fmul double %189, %200, !dbg !5637
  %202 = load double, double* %14, align 8, !dbg !5638
  %203 = call double @gsl_sf_gammainv(double %202), !dbg !5639
  %204 = fmul double %201, %203, !dbg !5640
  store double %204, double* %43, align 8, !dbg !5620
  call void @llvm.dbg.declare(metadata double* %44, metadata !5641, metadata !63), !dbg !5642
  %205 = load double, double* %43, align 8, !dbg !5643
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !5644
  %207 = load double, double* %206, align 8, !dbg !5644
  %208 = fmul double %205, %207, !dbg !5645
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !5646
  %210 = load double, double* %209, align 8, !dbg !5646
  %211 = fmul double %208, %210, !dbg !5647
  store double %211, double* %44, align 8, !dbg !5642
  call void @llvm.dbg.declare(metadata double* %45, metadata !5648, metadata !63), !dbg !5649
  %212 = load double, double* %28, align 8, !dbg !5650
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !5651
  %214 = load double, double* %213, align 8, !dbg !5651
  %215 = fmul double %212, %214, !dbg !5652
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !5653
  %217 = load double, double* %216, align 8, !dbg !5653
  %218 = fmul double %215, %217, !dbg !5654
  %219 = call double @fabs(double %218) #1, !dbg !5655
  %220 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 1, !dbg !5656
  %221 = load double, double* %220, align 8, !dbg !5656
  %222 = fmul double %219, %221, !dbg !5657
  %223 = load double, double* %28, align 8, !dbg !5658
  %224 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !5659
  %225 = load double, double* %224, align 8, !dbg !5659
  %226 = fmul double %223, %225, !dbg !5660
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !5661
  %228 = load double, double* %227, align 8, !dbg !5661
  %229 = fmul double %226, %228, !dbg !5662
  %230 = call double @fabs(double %229) #1, !dbg !5663
  %231 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !5664
  %232 = load double, double* %231, align 8, !dbg !5664
  %233 = fmul double %230, %232, !dbg !5665
  %234 = fadd double %222, %233, !dbg !5666
  %235 = load double, double* %28, align 8, !dbg !5667
  %236 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !5668
  %237 = load double, double* %236, align 8, !dbg !5668
  %238 = fmul double %235, %237, !dbg !5669
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !5670
  %240 = load double, double* %239, align 8, !dbg !5670
  %241 = fmul double %238, %240, !dbg !5671
  %242 = call double @fabs(double %241) #1, !dbg !5672
  %243 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !5673
  %244 = load double, double* %243, align 8, !dbg !5673
  %245 = fmul double %242, %244, !dbg !5674
  %246 = fadd double %234, %245, !dbg !5675
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !5676
  %248 = load double, double* %247, align 8, !dbg !5676
  %249 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !5677
  %250 = load double, double* %249, align 8, !dbg !5677
  %251 = fmul double %248, %250, !dbg !5678
  %252 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !5679
  %253 = load double, double* %252, align 8, !dbg !5679
  %254 = fmul double %251, %253, !dbg !5680
  %255 = call double @fabs(double %254) #1, !dbg !5681
  %256 = load double, double* %29, align 8, !dbg !5682
  %257 = fmul double %255, %256, !dbg !5683
  %258 = fadd double %246, %257, !dbg !5684
  %259 = load double, double* %44, align 8, !dbg !5685
  %260 = call double @fabs(double %259) #1, !dbg !5686
  %261 = fmul double 0x3CC0000000000000, %260, !dbg !5687
  %262 = fadd double %258, %261, !dbg !5688
  store double %262, double* %45, align 8, !dbg !5649
  call void @llvm.dbg.declare(metadata i32* %46, metadata !5689, metadata !63), !dbg !5690
  call void @llvm.dbg.declare(metadata double* %47, metadata !5691, metadata !63), !dbg !5692
  call void @llvm.dbg.declare(metadata double* %48, metadata !5693, metadata !63), !dbg !5694
  call void @llvm.dbg.declare(metadata double* %49, metadata !5695, metadata !63), !dbg !5696
  call void @llvm.dbg.declare(metadata double* %50, metadata !5697, metadata !63), !dbg !5698
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %51, metadata !5699, metadata !63), !dbg !5700
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %52, metadata !5701, metadata !63), !dbg !5702
  call void @llvm.dbg.declare(metadata i32* %53, metadata !5703, metadata !63), !dbg !5704
  %263 = load double, double* %14, align 8, !dbg !5705
  %264 = fadd double 1.000000e+00, %263, !dbg !5706
  %265 = load double, double* %16, align 8, !dbg !5707
  %266 = fsub double %264, %265, !dbg !5708
  %267 = call i32 @gsl_sf_gammainv_e(double %266, %struct.gsl_sf_result_struct* %51), !dbg !5709
  store i32 %267, i32* %53, align 4, !dbg !5704
  call void @llvm.dbg.declare(metadata i32* %54, metadata !5710, metadata !63), !dbg !5711
  %268 = load double, double* %16, align 8, !dbg !5712
  %269 = load double, double* %23, align 8, !dbg !5713
  %270 = fadd double %268, %269, !dbg !5714
  %271 = call i32 @gsl_sf_gammainv_e(double %270, %struct.gsl_sf_result_struct* %52), !dbg !5715
  store i32 %271, i32* %54, align 4, !dbg !5711
  call void @llvm.dbg.declare(metadata double* %55, metadata !5716, metadata !63), !dbg !5717
  %272 = load double, double* %28, align 8, !dbg !5718
  %273 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !5719
  %274 = load double, double* %273, align 8, !dbg !5719
  %275 = fmul double %272, %274, !dbg !5720
  %276 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !5721
  %277 = load double, double* %276, align 8, !dbg !5721
  %278 = fmul double %275, %277, !dbg !5722
  %279 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !5723
  %280 = load double, double* %279, align 8, !dbg !5723
  %281 = fmul double %278, %280, !dbg !5724
  %282 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !5725
  %283 = load double, double* %282, align 8, !dbg !5725
  %284 = fmul double %281, %283, !dbg !5726
  %285 = load double, double* %17, align 8, !dbg !5727
  %286 = fdiv double %284, %285, !dbg !5728
  store double %286, double* %55, align 8, !dbg !5717
  call void @llvm.dbg.declare(metadata double* %56, metadata !5729, metadata !63), !dbg !5730
  %287 = load double, double* %28, align 8, !dbg !5731
  %288 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !5732
  %289 = load double, double* %288, align 8, !dbg !5732
  %290 = fmul double %287, %289, !dbg !5733
  %291 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !5734
  %292 = load double, double* %291, align 8, !dbg !5734
  %293 = fmul double %290, %292, !dbg !5735
  %294 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !5736
  %295 = load double, double* %294, align 8, !dbg !5736
  %296 = fmul double %293, %295, !dbg !5737
  %297 = load double, double* %17, align 8, !dbg !5738
  %298 = fdiv double %296, %297, !dbg !5739
  %299 = call double @fabs(double %298) #1, !dbg !5740
  %300 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !5741
  %301 = load double, double* %300, align 8, !dbg !5741
  %302 = fmul double %299, %301, !dbg !5742
  %303 = load double, double* %28, align 8, !dbg !5743
  %304 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !5744
  %305 = load double, double* %304, align 8, !dbg !5744
  %306 = fmul double %303, %305, !dbg !5745
  %307 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !5746
  %308 = load double, double* %307, align 8, !dbg !5746
  %309 = fmul double %306, %308, !dbg !5747
  %310 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !5748
  %311 = load double, double* %310, align 8, !dbg !5748
  %312 = fmul double %309, %311, !dbg !5749
  %313 = load double, double* %17, align 8, !dbg !5750
  %314 = fdiv double %312, %313, !dbg !5751
  %315 = call double @fabs(double %314) #1, !dbg !5752
  %316 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 1, !dbg !5753
  %317 = load double, double* %316, align 8, !dbg !5753
  %318 = fmul double %315, %317, !dbg !5754
  %319 = fadd double %302, %318, !dbg !5755
  %320 = load double, double* %28, align 8, !dbg !5756
  %321 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !5757
  %322 = load double, double* %321, align 8, !dbg !5757
  %323 = fmul double %320, %322, !dbg !5758
  %324 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !5759
  %325 = load double, double* %324, align 8, !dbg !5759
  %326 = fmul double %323, %325, !dbg !5760
  %327 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !5761
  %328 = load double, double* %327, align 8, !dbg !5761
  %329 = fmul double %326, %328, !dbg !5762
  %330 = load double, double* %17, align 8, !dbg !5763
  %331 = fdiv double %329, %330, !dbg !5764
  %332 = call double @fabs(double %331) #1, !dbg !5765
  %333 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 1, !dbg !5766
  %334 = load double, double* %333, align 8, !dbg !5766
  %335 = fmul double %332, %334, !dbg !5767
  %336 = fadd double %319, %335, !dbg !5768
  %337 = load double, double* %28, align 8, !dbg !5769
  %338 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !5770
  %339 = load double, double* %338, align 8, !dbg !5770
  %340 = fmul double %337, %339, !dbg !5771
  %341 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !5772
  %342 = load double, double* %341, align 8, !dbg !5772
  %343 = fmul double %340, %342, !dbg !5773
  %344 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !5774
  %345 = load double, double* %344, align 8, !dbg !5774
  %346 = fmul double %343, %345, !dbg !5775
  %347 = load double, double* %17, align 8, !dbg !5776
  %348 = fdiv double %346, %347, !dbg !5777
  %349 = call double @fabs(double %348) #1, !dbg !5778
  %350 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 1, !dbg !5779
  %351 = load double, double* %350, align 8, !dbg !5779
  %352 = fmul double %349, %351, !dbg !5780
  %353 = fadd double %336, %352, !dbg !5781
  %354 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !5782
  %355 = load double, double* %354, align 8, !dbg !5782
  %356 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !5783
  %357 = load double, double* %356, align 8, !dbg !5783
  %358 = fmul double %355, %357, !dbg !5784
  %359 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !5785
  %360 = load double, double* %359, align 8, !dbg !5785
  %361 = fmul double %358, %360, !dbg !5786
  %362 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %31, i32 0, i32 0, !dbg !5787
  %363 = load double, double* %362, align 8, !dbg !5787
  %364 = fmul double %361, %363, !dbg !5788
  %365 = load double, double* %17, align 8, !dbg !5789
  %366 = fdiv double %364, %365, !dbg !5790
  %367 = call double @fabs(double %366) #1, !dbg !5791
  %368 = load double, double* %29, align 8, !dbg !5792
  %369 = fmul double %367, %368, !dbg !5793
  %370 = fadd double %353, %369, !dbg !5794
  %371 = load double, double* %55, align 8, !dbg !5795
  %372 = call double @fabs(double %371) #1, !dbg !5796
  %373 = fmul double 0x3CC0000000000000, %372, !dbg !5797
  %374 = fadd double %370, %373, !dbg !5798
  store double %374, double* %56, align 8, !dbg !5730
  %375 = load i32, i32* %42, align 4, !dbg !5799
  %376 = icmp ne i32 %375, 0, !dbg !5799
  br i1 %376, label %377, label %379, !dbg !5799

; <label>:377:                                    ; preds = %179
  %378 = load i32, i32* %42, align 4, !dbg !5800
  br label %394, !dbg !5800

; <label>:379:                                    ; preds = %179
  %380 = load i32, i32* %53, align 4, !dbg !5801
  %381 = icmp ne i32 %380, 0, !dbg !5801
  br i1 %381, label %382, label %384, !dbg !5801

; <label>:382:                                    ; preds = %379
  %383 = load i32, i32* %53, align 4, !dbg !5802
  br label %392, !dbg !5802

; <label>:384:                                    ; preds = %379
  %385 = load i32, i32* %54, align 4, !dbg !5803
  %386 = icmp ne i32 %385, 0, !dbg !5803
  br i1 %386, label %387, label %389, !dbg !5803

; <label>:387:                                    ; preds = %384
  %388 = load i32, i32* %54, align 4, !dbg !5804
  br label %390, !dbg !5804

; <label>:389:                                    ; preds = %384
  br label %390, !dbg !5805

; <label>:390:                                    ; preds = %389, %387
  %391 = phi i32 [ %388, %387 ], [ 0, %389 ], !dbg !5806
  br label %392, !dbg !5806

; <label>:392:                                    ; preds = %390, %382
  %393 = phi i32 [ %383, %382 ], [ %391, %390 ], !dbg !5807
  br label %394, !dbg !5807

; <label>:394:                                    ; preds = %392, %377
  %395 = phi i32 [ %378, %377 ], [ %393, %392 ], !dbg !5808
  store i32 %395, i32* %42, align 4, !dbg !5809
  %396 = load double, double* %19, align 8, !dbg !5810
  %397 = load double, double* %44, align 8, !dbg !5811
  %398 = fmul double %396, %397, !dbg !5812
  %399 = load double, double* %17, align 8, !dbg !5813
  %400 = fdiv double %398, %399, !dbg !5814
  store double %400, double* %44, align 8, !dbg !5815
  %401 = load double, double* %19, align 8, !dbg !5816
  %402 = load double, double* %17, align 8, !dbg !5817
  %403 = fdiv double %401, %402, !dbg !5818
  %404 = call double @fabs(double %403) #1, !dbg !5819
  %405 = load double, double* %45, align 8, !dbg !5820
  %406 = fmul double %404, %405, !dbg !5821
  %407 = load double, double* %44, align 8, !dbg !5822
  %408 = call double @fabs(double %407) #1, !dbg !5823
  %409 = fmul double 0x3CD0000000000000, %408, !dbg !5824
  %410 = fadd double %406, %409, !dbg !5825
  store double %410, double* %45, align 8, !dbg !5826
  %411 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !5827
  %412 = load double, double* %411, align 8, !dbg !5827
  %413 = load double, double* %55, align 8, !dbg !5828
  %414 = fadd double %412, %413, !dbg !5829
  %415 = load double, double* %44, align 8, !dbg !5830
  %416 = fsub double %414, %415, !dbg !5831
  store double %416, double* %47, align 8, !dbg !5832
  %417 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !5833
  %418 = load double, double* %417, align 8, !dbg !5833
  %419 = load double, double* %56, align 8, !dbg !5834
  %420 = fadd double %418, %419, !dbg !5835
  %421 = load double, double* %45, align 8, !dbg !5836
  %422 = fadd double %420, %421, !dbg !5837
  %423 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !5838
  %424 = load double, double* %423, align 8, !dbg !5838
  %425 = call double @fabs(double %424) #1, !dbg !5839
  %426 = load double, double* %55, align 8, !dbg !5840
  %427 = call double @fabs(double %426) #1, !dbg !5841
  %428 = fadd double %425, %427, !dbg !5842
  %429 = load double, double* %44, align 8, !dbg !5843
  %430 = call double @fabs(double %429) #1, !dbg !5844
  %431 = fadd double %428, %430, !dbg !5845
  %432 = fmul double 0x3CC0000000000000, %431, !dbg !5846
  %433 = fadd double %422, %432, !dbg !5847
  store double %433, double* %48, align 8, !dbg !5848
  store i32 1, i32* %46, align 4, !dbg !5849
  br label %434, !dbg !5851

; <label>:434:                                    ; preds = %515, %394
  %435 = load i32, i32* %46, align 4, !dbg !5852
  %436 = icmp slt i32 %435, 2000, !dbg !5855
  br i1 %436, label %437, label %518, !dbg !5856

; <label>:437:                                    ; preds = %434
  call void @llvm.dbg.declare(metadata double* %57, metadata !5857, metadata !63), !dbg !5859
  %438 = load i32, i32* %22, align 4, !dbg !5860
  %439 = load i32, i32* %46, align 4, !dbg !5861
  %440 = add nsw i32 %438, %439, !dbg !5862
  %441 = sitofp i32 %440 to double, !dbg !5860
  store double %441, double* %57, align 8, !dbg !5859
  call void @llvm.dbg.declare(metadata double* %58, metadata !5863, metadata !63), !dbg !5864
  %442 = load i32, i32* %22, align 4, !dbg !5865
  %443 = load i32, i32* %46, align 4, !dbg !5866
  %444 = add nsw i32 %442, %443, !dbg !5867
  %445 = sub nsw i32 %444, 1, !dbg !5868
  %446 = sitofp i32 %445 to double, !dbg !5865
  store double %446, double* %58, align 8, !dbg !5864
  call void @llvm.dbg.declare(metadata double* %59, metadata !5869, metadata !63), !dbg !5870
  %447 = load double, double* %14, align 8, !dbg !5871
  %448 = load double, double* %58, align 8, !dbg !5872
  %449 = fadd double %447, %448, !dbg !5873
  %450 = load double, double* %18, align 8, !dbg !5874
  %451 = fmul double %449, %450, !dbg !5875
  %452 = load double, double* %16, align 8, !dbg !5876
  %453 = load double, double* %58, align 8, !dbg !5877
  %454 = fadd double %452, %453, !dbg !5878
  %455 = load double, double* %57, align 8, !dbg !5879
  %456 = fmul double %454, %455, !dbg !5880
  %457 = fdiv double %451, %456, !dbg !5881
  store double %457, double* %59, align 8, !dbg !5870
  call void @llvm.dbg.declare(metadata double* %60, metadata !5882, metadata !63), !dbg !5883
  %458 = load double, double* %14, align 8, !dbg !5884
  %459 = load double, double* %58, align 8, !dbg !5885
  %460 = fadd double %458, %459, !dbg !5886
  %461 = load double, double* %17, align 8, !dbg !5887
  %462 = fsub double %460, %461, !dbg !5888
  %463 = load double, double* %18, align 8, !dbg !5889
  %464 = fmul double %462, %463, !dbg !5890
  %465 = load double, double* %15, align 8, !dbg !5891
  %466 = load double, double* %58, align 8, !dbg !5892
  %467 = fadd double %465, %466, !dbg !5893
  %468 = load double, double* %57, align 8, !dbg !5894
  %469 = load double, double* %17, align 8, !dbg !5895
  %470 = fsub double %468, %469, !dbg !5896
  %471 = fmul double %467, %470, !dbg !5897
  %472 = fdiv double %464, %471, !dbg !5898
  store double %472, double* %60, align 8, !dbg !5883
  %473 = load double, double* %59, align 8, !dbg !5899
  %474 = load double, double* %55, align 8, !dbg !5900
  %475 = fmul double %474, %473, !dbg !5900
  store double %475, double* %55, align 8, !dbg !5900
  %476 = load double, double* %59, align 8, !dbg !5901
  %477 = call double @fabs(double %476) #1, !dbg !5902
  %478 = load double, double* %56, align 8, !dbg !5903
  %479 = fmul double %477, %478, !dbg !5904
  %480 = load double, double* %56, align 8, !dbg !5905
  %481 = fadd double %480, %479, !dbg !5905
  store double %481, double* %56, align 8, !dbg !5905
  %482 = load double, double* %60, align 8, !dbg !5906
  %483 = load double, double* %44, align 8, !dbg !5907
  %484 = fmul double %483, %482, !dbg !5907
  store double %484, double* %44, align 8, !dbg !5907
  %485 = load double, double* %60, align 8, !dbg !5908
  %486 = call double @fabs(double %485) #1, !dbg !5909
  %487 = load double, double* %45, align 8, !dbg !5910
  %488 = fmul double %486, %487, !dbg !5911
  %489 = load double, double* %45, align 8, !dbg !5912
  %490 = fadd double %489, %488, !dbg !5912
  store double %490, double* %45, align 8, !dbg !5912
  %491 = load double, double* %55, align 8, !dbg !5913
  %492 = load double, double* %44, align 8, !dbg !5914
  %493 = fsub double %491, %492, !dbg !5915
  store double %493, double* %49, align 8, !dbg !5916
  %494 = load double, double* %56, align 8, !dbg !5917
  %495 = load double, double* %45, align 8, !dbg !5918
  %496 = fadd double %494, %495, !dbg !5919
  store double %496, double* %50, align 8, !dbg !5920
  %497 = load double, double* %49, align 8, !dbg !5921
  %498 = load double, double* %47, align 8, !dbg !5922
  %499 = fadd double %498, %497, !dbg !5922
  store double %499, double* %47, align 8, !dbg !5922
  %500 = load double, double* %50, align 8, !dbg !5923
  %501 = load double, double* %48, align 8, !dbg !5924
  %502 = fadd double %501, %500, !dbg !5924
  store double %502, double* %48, align 8, !dbg !5924
  %503 = load double, double* %49, align 8, !dbg !5925
  %504 = call i32 @gsl_finite(double %503), !dbg !5927
  %505 = icmp ne i32 %504, 0, !dbg !5927
  br i1 %505, label %506, label %513, !dbg !5928

; <label>:506:                                    ; preds = %437
  %507 = load double, double* %49, align 8, !dbg !5929
  %508 = call double @fabs(double %507) #1, !dbg !5931
  %509 = load double, double* %47, align 8, !dbg !5932
  %510 = call double @fabs(double %509) #1, !dbg !5933
  %511 = fmul double 0x3CC0000000000000, %510, !dbg !5935
  %512 = fcmp olt double %508, %511, !dbg !5936
  br i1 %512, label %513, label %514, !dbg !5937

; <label>:513:                                    ; preds = %506, %437
  br label %518, !dbg !5938

; <label>:514:                                    ; preds = %506
  br label %515, !dbg !5940

; <label>:515:                                    ; preds = %514
  %516 = load i32, i32* %46, align 4, !dbg !5941
  %517 = add nsw i32 %516, 1, !dbg !5941
  store i32 %517, i32* %46, align 4, !dbg !5941
  br label %434, !dbg !5943, !llvm.loop !5944

; <label>:518:                                    ; preds = %513, %434
  %519 = load double, double* %47, align 8, !dbg !5946
  %520 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !5947
  %521 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %520, i32 0, i32 0, !dbg !5948
  store double %519, double* %521, align 8, !dbg !5949
  %522 = load double, double* %48, align 8, !dbg !5950
  %523 = fmul double 2.000000e+00, %522, !dbg !5951
  %524 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !5952
  %525 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %524, i32 0, i32 1, !dbg !5953
  store double %523, double* %525, align 8, !dbg !5954
  %526 = load double, double* %49, align 8, !dbg !5955
  %527 = call double @fabs(double %526) #1, !dbg !5956
  %528 = fmul double 2.000000e+00, %527, !dbg !5957
  %529 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !5958
  %530 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %529, i32 0, i32 1, !dbg !5959
  %531 = load double, double* %530, align 8, !dbg !5960
  %532 = fadd double %531, %528, !dbg !5960
  store double %532, double* %530, align 8, !dbg !5960
  %533 = load i32, i32* %46, align 4, !dbg !5961
  %534 = sitofp i32 %533 to double, !dbg !5961
  %535 = fadd double %534, 2.000000e+00, !dbg !5962
  %536 = fmul double 0x3CD0000000000000, %535, !dbg !5963
  %537 = load double, double* %47, align 8, !dbg !5964
  %538 = call double @fabs(double %537) #1, !dbg !5965
  %539 = fmul double %536, %538, !dbg !5966
  %540 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !5967
  %541 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %540, i32 0, i32 1, !dbg !5968
  %542 = load double, double* %541, align 8, !dbg !5969
  %543 = fadd double %542, %539, !dbg !5969
  store double %543, double* %541, align 8, !dbg !5969
  %544 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !5970
  %545 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %544, i32 0, i32 1, !dbg !5971
  %546 = load double, double* %545, align 8, !dbg !5972
  %547 = fmul double %546, 2.000000e+00, !dbg !5972
  store double %547, double* %545, align 8, !dbg !5972
  %548 = load i32, i32* %46, align 4, !dbg !5973
  %549 = icmp sge i32 %548, 2000, !dbg !5975
  br i1 %549, label %550, label %553, !dbg !5976

; <label>:550:                                    ; preds = %518
  br label %551, !dbg !5977, !llvm.loop !5979

; <label>:551:                                    ; preds = %550
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 537, i32 11), !dbg !5980
  store i32 11, i32* %11, align 4, !dbg !5980
  br label %555, !dbg !5980
                                                  ; No predecessors!
  br label %555, !dbg !5983

; <label>:553:                                    ; preds = %518
  %554 = load i32, i32* %42, align 4, !dbg !5984
  store i32 %554, i32* %11, align 4, !dbg !5986
  br label %555, !dbg !5986

; <label>:555:                                    ; preds = %551, %553, %552
  %556 = load i32, i32* %11, align 4, !dbg !5987
  ret i32 %556, !dbg !5987
}

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_infinite_sum_improved(i32, double, double, double, double, double, double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !5988 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.gsl_sf_result_struct*, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca %struct.gsl_sf_result_struct, align 8
  %26 = alloca %struct.gsl_sf_result_struct, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca %struct.gsl_sf_result_struct, align 8
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca %struct.gsl_sf_result_struct, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.gsl_sf_result_struct, align 8
  %42 = alloca %struct.gsl_sf_result_struct, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca double, align 8
  %47 = alloca double, align 8
  %48 = alloca i32, align 4
  %49 = alloca %struct.gsl_sf_result_struct, align 8
  %50 = alloca %struct.gsl_sf_result_struct, align 8
  %51 = alloca %struct.gsl_sf_result_struct, align 8
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca double, align 8
  %56 = alloca double, align 8
  %57 = alloca double, align 8
  %58 = alloca double, align 8
  %59 = alloca double, align 8
  %60 = alloca double, align 8
  %61 = alloca %struct.gsl_sf_result_struct, align 8
  %62 = alloca i32, align 4
  %63 = alloca double, align 8
  %64 = alloca double, align 8
  %65 = alloca double, align 8
  %66 = alloca double, align 8
  %67 = alloca double, align 8
  %68 = alloca double, align 8
  %69 = alloca double, align 8
  %70 = alloca double, align 8
  %71 = alloca double, align 8
  %72 = alloca double, align 8
  %73 = alloca double, align 8
  %74 = alloca double, align 8
  %75 = alloca double, align 8
  %76 = bitcast %struct.gsl_sf_result_struct* %12 to { double, double }*
  %77 = getelementptr inbounds { double, double }, { double, double }* %76, i32 0, i32 0
  store double %7, double* %77, align 8
  %78 = getelementptr inbounds { double, double }, { double, double }* %76, i32 0, i32 1
  store double %8, double* %78, align 8
  store i32 %0, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !5989, metadata !63), !dbg !5990
  store double %1, double* %14, align 8
  call void @llvm.dbg.declare(metadata double* %14, metadata !5991, metadata !63), !dbg !5992
  store double %2, double* %15, align 8
  call void @llvm.dbg.declare(metadata double* %15, metadata !5993, metadata !63), !dbg !5994
  store double %3, double* %16, align 8
  call void @llvm.dbg.declare(metadata double* %16, metadata !5995, metadata !63), !dbg !5996
  store double %4, double* %17, align 8
  call void @llvm.dbg.declare(metadata double* %17, metadata !5997, metadata !63), !dbg !5998
  store double %5, double* %18, align 8
  call void @llvm.dbg.declare(metadata double* %18, metadata !5999, metadata !63), !dbg !6000
  store double %6, double* %19, align 8
  call void @llvm.dbg.declare(metadata double* %19, metadata !6001, metadata !63), !dbg !6002
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !6003, metadata !63), !dbg !6004
  store %struct.gsl_sf_result_struct* %9, %struct.gsl_sf_result_struct** %20, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %20, metadata !6005, metadata !63), !dbg !6006
  call void @llvm.dbg.declare(metadata double* %21, metadata !6007, metadata !63), !dbg !6008
  store double 0x3CC0000000000000, double* %21, align 8, !dbg !6008
  call void @llvm.dbg.declare(metadata double* %22, metadata !6009, metadata !63), !dbg !6010
  %79 = load double, double* %18, align 8, !dbg !6011
  %80 = call double @log(double %79) #6, !dbg !6012
  store double %80, double* %22, align 8, !dbg !6010
  call void @llvm.dbg.declare(metadata i32* %23, metadata !6013, metadata !63), !dbg !6014
  %81 = load i32, i32* %13, align 4, !dbg !6015
  %82 = icmp slt i32 %81, 1, !dbg !6016
  br i1 %82, label %83, label %86, !dbg !6015

; <label>:83:                                     ; preds = %10
  %84 = load i32, i32* %13, align 4, !dbg !6017
  %85 = sub nsw i32 1, %84, !dbg !6019
  br label %87, !dbg !6020

; <label>:86:                                     ; preds = %10
  br label %87, !dbg !6021

; <label>:87:                                     ; preds = %86, %83
  %88 = phi i32 [ %85, %83 ], [ 0, %86 ], !dbg !6023
  store i32 %88, i32* %23, align 4, !dbg !6025
  call void @llvm.dbg.declare(metadata double* %24, metadata !6026, metadata !63), !dbg !6027
  %89 = load i32, i32* %23, align 4, !dbg !6028
  %90 = sitofp i32 %89 to double, !dbg !6028
  store double %90, double* %24, align 8, !dbg !6027
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %25, metadata !6029, metadata !63), !dbg !6030
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %26, metadata !6031, metadata !63), !dbg !6032
  call void @llvm.dbg.declare(metadata i32* %27, metadata !6033, metadata !63), !dbg !6034
  %91 = load double, double* %14, align 8, !dbg !6035
  %92 = fadd double 1.000000e+00, %91, !dbg !6036
  %93 = load double, double* %16, align 8, !dbg !6037
  %94 = fsub double %92, %93, !dbg !6038
  %95 = call i32 @gsl_sf_gammainv_e(double %94, %struct.gsl_sf_result_struct* %25), !dbg !6039
  store i32 %95, i32* %27, align 4, !dbg !6034
  call void @llvm.dbg.declare(metadata i32* %28, metadata !6040, metadata !63), !dbg !6041
  %96 = load double, double* %18, align 8, !dbg !6042
  %97 = load i32, i32* %23, align 4, !dbg !6043
  %98 = call i32 @gsl_sf_pow_int_e(double %96, i32 %97, %struct.gsl_sf_result_struct* %26), !dbg !6044
  store i32 %98, i32* %28, align 4, !dbg !6041
  call void @llvm.dbg.declare(metadata double* %29, metadata !6045, metadata !63), !dbg !6046
  %99 = load double, double* %17, align 8, !dbg !6047
  %100 = fmul double %99, 0x400921FB54442D18, !dbg !6048
  store double %100, double* %29, align 8, !dbg !6046
  call void @llvm.dbg.declare(metadata double* %30, metadata !6049, metadata !63), !dbg !6050
  %101 = load double, double* %29, align 8, !dbg !6051
  %102 = fcmp une double %101, 0.000000e+00, !dbg !6052
  br i1 %102, label %103, label %108, !dbg !6051

; <label>:103:                                    ; preds = %87
  %104 = load double, double* %29, align 8, !dbg !6053
  %105 = load double, double* %29, align 8, !dbg !6054
  %106 = call double @sin(double %105) #6, !dbg !6055
  %107 = fdiv double %104, %106, !dbg !6056
  br label %109, !dbg !6057

; <label>:108:                                    ; preds = %87
  br label %109, !dbg !6058

; <label>:109:                                    ; preds = %108, %103
  %110 = phi double [ %107, %103 ], [ 1.000000e+00, %108 ], !dbg !6059
  store double %110, double* %30, align 8, !dbg !6060
  call void @llvm.dbg.declare(metadata double* %31, metadata !6061, metadata !63), !dbg !6062
  %111 = load double, double* %30, align 8, !dbg !6063
  %112 = load i32, i32* %13, align 4, !dbg !6064
  %113 = and i32 %112, 1, !dbg !6064
  %114 = icmp ne i32 %113, 0, !dbg !6064
  %115 = select i1 %114, double -1.000000e+00, double 1.000000e+00, !dbg !6064
  %116 = fmul double %111, %115, !dbg !6065
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !6066
  %118 = load double, double* %117, align 8, !dbg !6066
  %119 = fmul double %116, %118, !dbg !6067
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !6068
  %121 = load double, double* %120, align 8, !dbg !6068
  %122 = fmul double %119, %121, !dbg !6069
  store double %122, double* %31, align 8, !dbg !6062
  call void @llvm.dbg.declare(metadata double* %32, metadata !6070, metadata !63), !dbg !6071
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 0, !dbg !6072
  %124 = load double, double* %123, align 8, !dbg !6072
  %125 = call double @fabs(double %124) #1, !dbg !6073
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !6074
  %127 = load double, double* %126, align 8, !dbg !6074
  %128 = fmul double %125, %127, !dbg !6075
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !6076
  %130 = load double, double* %129, align 8, !dbg !6076
  %131 = call double @fabs(double %130) #1, !dbg !6077
  %132 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %25, i32 0, i32 1, !dbg !6078
  %133 = load double, double* %132, align 8, !dbg !6078
  %134 = fmul double %131, %133, !dbg !6079
  %135 = fadd double %128, %134, !dbg !6080
  %136 = load double, double* %31, align 8, !dbg !6081
  %137 = call double @fabs(double %136) #1, !dbg !6082
  %138 = fmul double 0x3CC0000000000000, %137, !dbg !6083
  %139 = fadd double %135, %138, !dbg !6084
  store double %139, double* %32, align 8, !dbg !6071
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %33, metadata !6085, metadata !63), !dbg !6086
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !6087, metadata !63), !dbg !6088
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %35, metadata !6089, metadata !63), !dbg !6090
  call void @llvm.dbg.declare(metadata i32* %36, metadata !6091, metadata !63), !dbg !6092
  %140 = load double, double* %14, align 8, !dbg !6093
  %141 = load double, double* %24, align 8, !dbg !6094
  %142 = call i32 @gsl_sf_poch_e(double %140, double %141, %struct.gsl_sf_result_struct* %33), !dbg !6095
  store i32 %142, i32* %36, align 4, !dbg !6092
  call void @llvm.dbg.declare(metadata i32* %37, metadata !6096, metadata !63), !dbg !6097
  %143 = load double, double* %24, align 8, !dbg !6098
  %144 = fadd double %143, 1.000000e+00, !dbg !6099
  %145 = call i32 @gsl_sf_gammainv_e(double %144, %struct.gsl_sf_result_struct* %34), !dbg !6100
  store i32 %145, i32* %37, align 4, !dbg !6097
  call void @llvm.dbg.declare(metadata i32* %38, metadata !6101, metadata !63), !dbg !6102
  %146 = load double, double* %15, align 8, !dbg !6103
  %147 = load double, double* %24, align 8, !dbg !6104
  %148 = fadd double %146, %147, !dbg !6105
  %149 = call i32 @gsl_sf_gammainv_e(double %148, %struct.gsl_sf_result_struct* %35), !dbg !6106
  store i32 %149, i32* %38, align 4, !dbg !6102
  call void @llvm.dbg.declare(metadata i32* %39, metadata !6107, metadata !63), !dbg !6108
  %150 = load i32, i32* %27, align 4, !dbg !6109
  %151 = icmp ne i32 %150, 0, !dbg !6109
  br i1 %151, label %152, label %154, !dbg !6109

; <label>:152:                                    ; preds = %109
  %153 = load i32, i32* %27, align 4, !dbg !6110
  br label %169, !dbg !6110

; <label>:154:                                    ; preds = %109
  %155 = load i32, i32* %37, align 4, !dbg !6111
  %156 = icmp ne i32 %155, 0, !dbg !6111
  br i1 %156, label %157, label %159, !dbg !6111

; <label>:157:                                    ; preds = %154
  %158 = load i32, i32* %37, align 4, !dbg !6112
  br label %167, !dbg !6112

; <label>:159:                                    ; preds = %154
  %160 = load i32, i32* %38, align 4, !dbg !6113
  %161 = icmp ne i32 %160, 0, !dbg !6113
  br i1 %161, label %162, label %164, !dbg !6113

; <label>:162:                                    ; preds = %159
  %163 = load i32, i32* %38, align 4, !dbg !6115
  br label %165, !dbg !6115

; <label>:164:                                    ; preds = %159
  br label %165, !dbg !6117

; <label>:165:                                    ; preds = %164, %162
  %166 = phi i32 [ %163, %162 ], [ 0, %164 ], !dbg !6119
  br label %167, !dbg !6119

; <label>:167:                                    ; preds = %165, %157
  %168 = phi i32 [ %158, %157 ], [ %166, %165 ], !dbg !6121
  br label %169, !dbg !6121

; <label>:169:                                    ; preds = %167, %152
  %170 = phi i32 [ %153, %152 ], [ %168, %167 ], !dbg !6123
  store i32 %170, i32* %39, align 4, !dbg !6125
  call void @llvm.dbg.declare(metadata i32* %40, metadata !6126, metadata !63), !dbg !6127
  %171 = load i32, i32* %39, align 4, !dbg !6128
  %172 = icmp ne i32 %171, 0, !dbg !6128
  br i1 %172, label %173, label %175, !dbg !6128

; <label>:173:                                    ; preds = %169
  %174 = load i32, i32* %39, align 4, !dbg !6129
  br label %190, !dbg !6129

; <label>:175:                                    ; preds = %169
  %176 = load i32, i32* %36, align 4, !dbg !6130
  %177 = icmp ne i32 %176, 0, !dbg !6130
  br i1 %177, label %178, label %180, !dbg !6130

; <label>:178:                                    ; preds = %175
  %179 = load i32, i32* %36, align 4, !dbg !6131
  br label %188, !dbg !6131

; <label>:180:                                    ; preds = %175
  %181 = load i32, i32* %28, align 4, !dbg !6132
  %182 = icmp ne i32 %181, 0, !dbg !6132
  br i1 %182, label %183, label %185, !dbg !6132

; <label>:183:                                    ; preds = %180
  %184 = load i32, i32* %28, align 4, !dbg !6133
  br label %186, !dbg !6133

; <label>:185:                                    ; preds = %180
  br label %186, !dbg !6134

; <label>:186:                                    ; preds = %185, %183
  %187 = phi i32 [ %184, %183 ], [ 0, %185 ], !dbg !6135
  br label %188, !dbg !6135

; <label>:188:                                    ; preds = %186, %178
  %189 = phi i32 [ %179, %178 ], [ %187, %186 ], !dbg !6136
  br label %190, !dbg !6136

; <label>:190:                                    ; preds = %188, %173
  %191 = phi i32 [ %174, %173 ], [ %189, %188 ], !dbg !6137
  store i32 %191, i32* %40, align 4, !dbg !6138
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %41, metadata !6139, metadata !63), !dbg !6140
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %42, metadata !6141, metadata !63), !dbg !6142
  call void @llvm.dbg.declare(metadata i32* %43, metadata !6143, metadata !63), !dbg !6144
  %192 = load double, double* %14, align 8, !dbg !6145
  %193 = load double, double* %24, align 8, !dbg !6146
  %194 = load double, double* %17, align 8, !dbg !6147
  %195 = fsub double %193, %194, !dbg !6148
  %196 = call i32 @gsl_sf_poch_e(double %192, double %195, %struct.gsl_sf_result_struct* %41), !dbg !6149
  store i32 %196, i32* %43, align 4, !dbg !6144
  call void @llvm.dbg.declare(metadata i32* %44, metadata !6150, metadata !63), !dbg !6151
  %197 = load double, double* %24, align 8, !dbg !6152
  %198 = fadd double %197, 1.000000e+00, !dbg !6153
  %199 = load double, double* %17, align 8, !dbg !6154
  %200 = fsub double %198, %199, !dbg !6155
  %201 = call i32 @gsl_sf_gammainv_e(double %200, %struct.gsl_sf_result_struct* %42), !dbg !6156
  store i32 %201, i32* %44, align 4, !dbg !6151
  call void @llvm.dbg.declare(metadata i32* %45, metadata !6157, metadata !63), !dbg !6158
  %202 = load i32, i32* %40, align 4, !dbg !6159
  %203 = icmp ne i32 %202, 0, !dbg !6159
  br i1 %203, label %204, label %206, !dbg !6159

; <label>:204:                                    ; preds = %190
  %205 = load i32, i32* %40, align 4, !dbg !6160
  br label %221, !dbg !6160

; <label>:206:                                    ; preds = %190
  %207 = load i32, i32* %43, align 4, !dbg !6161
  %208 = icmp ne i32 %207, 0, !dbg !6161
  br i1 %208, label %209, label %211, !dbg !6161

; <label>:209:                                    ; preds = %206
  %210 = load i32, i32* %43, align 4, !dbg !6162
  br label %219, !dbg !6162

; <label>:211:                                    ; preds = %206
  %212 = load i32, i32* %44, align 4, !dbg !6163
  %213 = icmp ne i32 %212, 0, !dbg !6163
  br i1 %213, label %214, label %216, !dbg !6163

; <label>:214:                                    ; preds = %211
  %215 = load i32, i32* %44, align 4, !dbg !6164
  br label %217, !dbg !6164

; <label>:216:                                    ; preds = %211
  br label %217, !dbg !6165

; <label>:217:                                    ; preds = %216, %214
  %218 = phi i32 [ %215, %214 ], [ 0, %216 ], !dbg !6166
  br label %219, !dbg !6166

; <label>:219:                                    ; preds = %217, %209
  %220 = phi i32 [ %210, %209 ], [ %218, %217 ], !dbg !6167
  br label %221, !dbg !6167

; <label>:221:                                    ; preds = %219, %204
  %222 = phi i32 [ %205, %204 ], [ %220, %219 ], !dbg !6168
  store i32 %222, i32* %45, align 4, !dbg !6169
  call void @llvm.dbg.declare(metadata double* %46, metadata !6170, metadata !63), !dbg !6171
  %223 = load double, double* %31, align 8, !dbg !6172
  %224 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !6173
  %225 = load double, double* %224, align 8, !dbg !6173
  %226 = fmul double %223, %225, !dbg !6174
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !6175
  %228 = load double, double* %227, align 8, !dbg !6175
  %229 = fmul double %226, %228, !dbg !6176
  %230 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !6177
  %231 = load double, double* %230, align 8, !dbg !6177
  %232 = fmul double %229, %231, !dbg !6178
  store double %232, double* %46, align 8, !dbg !6171
  call void @llvm.dbg.declare(metadata double* %47, metadata !6179, metadata !63), !dbg !6180
  %233 = load double, double* %31, align 8, !dbg !6181
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !6182
  %235 = load double, double* %234, align 8, !dbg !6182
  %236 = fmul double %233, %235, !dbg !6183
  %237 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !6184
  %238 = load double, double* %237, align 8, !dbg !6184
  %239 = fmul double %236, %238, !dbg !6185
  %240 = call double @fabs(double %239) #1, !dbg !6186
  %241 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !6187
  %242 = load double, double* %241, align 8, !dbg !6187
  %243 = fmul double %240, %242, !dbg !6188
  %244 = load double, double* %31, align 8, !dbg !6189
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !6190
  %246 = load double, double* %245, align 8, !dbg !6190
  %247 = fmul double %244, %246, !dbg !6191
  %248 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !6192
  %249 = load double, double* %248, align 8, !dbg !6192
  %250 = fmul double %247, %249, !dbg !6193
  %251 = call double @fabs(double %250) #1, !dbg !6194
  %252 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !6195
  %253 = load double, double* %252, align 8, !dbg !6195
  %254 = fmul double %251, %253, !dbg !6196
  %255 = fadd double %243, %254, !dbg !6197
  %256 = load double, double* %31, align 8, !dbg !6198
  %257 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !6199
  %258 = load double, double* %257, align 8, !dbg !6199
  %259 = fmul double %256, %258, !dbg !6200
  %260 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !6201
  %261 = load double, double* %260, align 8, !dbg !6201
  %262 = fmul double %259, %261, !dbg !6202
  %263 = call double @fabs(double %262) #1, !dbg !6203
  %264 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 1, !dbg !6204
  %265 = load double, double* %264, align 8, !dbg !6204
  %266 = fmul double %263, %265, !dbg !6205
  %267 = fadd double %255, %266, !dbg !6206
  %268 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %41, i32 0, i32 0, !dbg !6207
  %269 = load double, double* %268, align 8, !dbg !6207
  %270 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !6208
  %271 = load double, double* %270, align 8, !dbg !6208
  %272 = fmul double %269, %271, !dbg !6209
  %273 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !6210
  %274 = load double, double* %273, align 8, !dbg !6210
  %275 = fmul double %272, %274, !dbg !6211
  %276 = call double @fabs(double %275) #1, !dbg !6212
  %277 = load double, double* %32, align 8, !dbg !6213
  %278 = fmul double %276, %277, !dbg !6214
  %279 = fadd double %267, %278, !dbg !6215
  %280 = load double, double* %46, align 8, !dbg !6216
  %281 = call double @fabs(double %280) #1, !dbg !6217
  %282 = fmul double 0x3CC0000000000000, %281, !dbg !6218
  %283 = fadd double %279, %282, !dbg !6219
  store double %283, double* %47, align 8, !dbg !6180
  call void @llvm.dbg.declare(metadata i32* %48, metadata !6220, metadata !63), !dbg !6221
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %49, metadata !6222, metadata !63), !dbg !6223
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %50, metadata !6224, metadata !63), !dbg !6225
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %51, metadata !6226, metadata !63), !dbg !6227
  call void @llvm.dbg.declare(metadata i32* %52, metadata !6228, metadata !63), !dbg !6229
  %284 = load double, double* %14, align 8, !dbg !6230
  %285 = load double, double* %24, align 8, !dbg !6231
  %286 = fadd double %284, %285, !dbg !6232
  %287 = load double, double* %17, align 8, !dbg !6233
  %288 = fsub double -0.000000e+00, %287, !dbg !6234
  %289 = call i32 @gsl_sf_pochrel_e(double %286, double %288, %struct.gsl_sf_result_struct* %49), !dbg !6235
  store i32 %289, i32* %52, align 4, !dbg !6229
  call void @llvm.dbg.declare(metadata i32* %53, metadata !6236, metadata !63), !dbg !6237
  %290 = load double, double* %24, align 8, !dbg !6238
  %291 = fadd double %290, 1.000000e+00, !dbg !6239
  %292 = load double, double* %17, align 8, !dbg !6240
  %293 = fsub double %291, %292, !dbg !6241
  %294 = load double, double* %17, align 8, !dbg !6242
  %295 = call i32 @gsl_sf_pochrel_e(double %293, double %294, %struct.gsl_sf_result_struct* %50), !dbg !6243
  store i32 %295, i32* %53, align 4, !dbg !6237
  call void @llvm.dbg.declare(metadata i32* %54, metadata !6244, metadata !63), !dbg !6245
  %296 = load double, double* %16, align 8, !dbg !6246
  %297 = load double, double* %24, align 8, !dbg !6247
  %298 = fadd double %296, %297, !dbg !6248
  %299 = load double, double* %17, align 8, !dbg !6249
  %300 = fsub double -0.000000e+00, %299, !dbg !6250
  %301 = call i32 @gsl_sf_pochrel_e(double %298, double %300, %struct.gsl_sf_result_struct* %51), !dbg !6251
  store i32 %301, i32* %54, align 4, !dbg !6245
  call void @llvm.dbg.declare(metadata double* %55, metadata !6252, metadata !63), !dbg !6253
  %302 = load double, double* %17, align 8, !dbg !6254
  %303 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !6255
  %304 = load double, double* %303, align 8, !dbg !6255
  %305 = fmul double %302, %304, !dbg !6256
  %306 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !6257
  %307 = load double, double* %306, align 8, !dbg !6257
  %308 = fmul double %305, %307, !dbg !6258
  store double %308, double* %55, align 8, !dbg !6253
  call void @llvm.dbg.declare(metadata double* %56, metadata !6259, metadata !63), !dbg !6260
  %309 = load double, double* %17, align 8, !dbg !6261
  %310 = call double @fabs(double %309) #1, !dbg !6262
  %311 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !6263
  %312 = load double, double* %311, align 8, !dbg !6263
  %313 = call double @fabs(double %312) #1, !dbg !6264
  %314 = fmul double %310, %313, !dbg !6265
  %315 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 1, !dbg !6266
  %316 = load double, double* %315, align 8, !dbg !6266
  %317 = fmul double %314, %316, !dbg !6267
  %318 = load double, double* %17, align 8, !dbg !6268
  %319 = call double @fabs(double %318) #1, !dbg !6269
  %320 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !6270
  %321 = load double, double* %320, align 8, !dbg !6270
  %322 = call double @fabs(double %321) #1, !dbg !6271
  %323 = fmul double %319, %322, !dbg !6272
  %324 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !6273
  %325 = load double, double* %324, align 8, !dbg !6273
  %326 = fmul double %323, %325, !dbg !6274
  %327 = fadd double %317, %326, !dbg !6275
  %328 = load double, double* %55, align 8, !dbg !6276
  %329 = call double @fabs(double %328) #1, !dbg !6277
  %330 = fmul double 0x3CC0000000000000, %329, !dbg !6278
  %331 = fadd double %327, %330, !dbg !6279
  store double %331, double* %56, align 8, !dbg !6260
  call void @llvm.dbg.declare(metadata double* %57, metadata !6280, metadata !63), !dbg !6281
  %332 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 0, !dbg !6282
  %333 = load double, double* %332, align 8, !dbg !6282
  %334 = fsub double -0.000000e+00, %333, !dbg !6283
  %335 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !6284
  %336 = load double, double* %335, align 8, !dbg !6284
  %337 = fadd double %334, %336, !dbg !6285
  %338 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 0, !dbg !6286
  %339 = load double, double* %338, align 8, !dbg !6286
  %340 = fsub double %337, %339, !dbg !6287
  %341 = load double, double* %55, align 8, !dbg !6288
  %342 = fadd double %340, %341, !dbg !6289
  store double %342, double* %57, align 8, !dbg !6281
  call void @llvm.dbg.declare(metadata double* %58, metadata !6290, metadata !63), !dbg !6291
  %343 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %51, i32 0, i32 1, !dbg !6292
  %344 = load double, double* %343, align 8, !dbg !6292
  %345 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 1, !dbg !6293
  %346 = load double, double* %345, align 8, !dbg !6293
  %347 = fadd double %344, %346, !dbg !6294
  %348 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %50, i32 0, i32 1, !dbg !6295
  %349 = load double, double* %348, align 8, !dbg !6295
  %350 = fadd double %347, %349, !dbg !6296
  %351 = load double, double* %56, align 8, !dbg !6297
  %352 = fadd double %350, %351, !dbg !6298
  %353 = load double, double* %57, align 8, !dbg !6299
  %354 = call double @fabs(double %353) #1, !dbg !6300
  %355 = fmul double 0x3CC0000000000000, %354, !dbg !6301
  %356 = fadd double %352, %355, !dbg !6302
  store double %356, double* %58, align 8, !dbg !6291
  call void @llvm.dbg.declare(metadata double* %59, metadata !6303, metadata !63), !dbg !6304
  %357 = load double, double* %31, align 8, !dbg !6305
  %358 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !6306
  %359 = load double, double* %358, align 8, !dbg !6306
  %360 = fmul double %357, %359, !dbg !6307
  %361 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !6308
  %362 = load double, double* %361, align 8, !dbg !6308
  %363 = fmul double %360, %362, !dbg !6309
  %364 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !6310
  %365 = load double, double* %364, align 8, !dbg !6310
  %366 = fmul double %363, %365, !dbg !6311
  %367 = load double, double* %57, align 8, !dbg !6312
  %368 = fmul double %366, %367, !dbg !6313
  store double %368, double* %59, align 8, !dbg !6304
  call void @llvm.dbg.declare(metadata double* %60, metadata !6314, metadata !63), !dbg !6315
  %369 = load double, double* %31, align 8, !dbg !6316
  %370 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !6317
  %371 = load double, double* %370, align 8, !dbg !6317
  %372 = fmul double %369, %371, !dbg !6318
  %373 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !6319
  %374 = load double, double* %373, align 8, !dbg !6319
  %375 = fmul double %372, %374, !dbg !6320
  %376 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !6321
  %377 = load double, double* %376, align 8, !dbg !6321
  %378 = fmul double %375, %377, !dbg !6322
  %379 = call double @fabs(double %378) #1, !dbg !6323
  %380 = load double, double* %58, align 8, !dbg !6324
  %381 = fmul double %379, %380, !dbg !6325
  %382 = load double, double* %31, align 8, !dbg !6326
  %383 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !6327
  %384 = load double, double* %383, align 8, !dbg !6327
  %385 = fmul double %382, %384, !dbg !6328
  %386 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !6329
  %387 = load double, double* %386, align 8, !dbg !6329
  %388 = fmul double %385, %387, !dbg !6330
  %389 = load double, double* %57, align 8, !dbg !6331
  %390 = fmul double %388, %389, !dbg !6332
  %391 = call double @fabs(double %390) #1, !dbg !6333
  %392 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !6334
  %393 = load double, double* %392, align 8, !dbg !6334
  %394 = fmul double %391, %393, !dbg !6335
  %395 = fadd double %381, %394, !dbg !6336
  %396 = load double, double* %31, align 8, !dbg !6337
  %397 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !6338
  %398 = load double, double* %397, align 8, !dbg !6338
  %399 = fmul double %396, %398, !dbg !6339
  %400 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !6340
  %401 = load double, double* %400, align 8, !dbg !6340
  %402 = fmul double %399, %401, !dbg !6341
  %403 = load double, double* %57, align 8, !dbg !6342
  %404 = fmul double %402, %403, !dbg !6343
  %405 = call double @fabs(double %404) #1, !dbg !6344
  %406 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !6345
  %407 = load double, double* %406, align 8, !dbg !6345
  %408 = fmul double %405, %407, !dbg !6346
  %409 = fadd double %395, %408, !dbg !6347
  %410 = load double, double* %31, align 8, !dbg !6348
  %411 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !6349
  %412 = load double, double* %411, align 8, !dbg !6349
  %413 = fmul double %410, %412, !dbg !6350
  %414 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !6351
  %415 = load double, double* %414, align 8, !dbg !6351
  %416 = fmul double %413, %415, !dbg !6352
  %417 = load double, double* %57, align 8, !dbg !6353
  %418 = fmul double %416, %417, !dbg !6354
  %419 = call double @fabs(double %418) #1, !dbg !6355
  %420 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 1, !dbg !6356
  %421 = load double, double* %420, align 8, !dbg !6356
  %422 = fmul double %419, %421, !dbg !6357
  %423 = fadd double %409, %422, !dbg !6358
  %424 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !6359
  %425 = load double, double* %424, align 8, !dbg !6359
  %426 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !6360
  %427 = load double, double* %426, align 8, !dbg !6360
  %428 = fmul double %425, %427, !dbg !6361
  %429 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !6362
  %430 = load double, double* %429, align 8, !dbg !6362
  %431 = fmul double %428, %430, !dbg !6363
  %432 = load double, double* %57, align 8, !dbg !6364
  %433 = fmul double %431, %432, !dbg !6365
  %434 = call double @fabs(double %433) #1, !dbg !6366
  %435 = load double, double* %32, align 8, !dbg !6367
  %436 = fmul double %434, %435, !dbg !6368
  %437 = fadd double %423, %436, !dbg !6369
  %438 = load double, double* %59, align 8, !dbg !6370
  %439 = call double @fabs(double %438) #1, !dbg !6371
  %440 = fmul double 0x3CC0000000000000, %439, !dbg !6372
  %441 = fadd double %437, %440, !dbg !6373
  store double %441, double* %60, align 8, !dbg !6315
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %61, metadata !6374, metadata !63), !dbg !6375
  call void @llvm.dbg.declare(metadata i32* %62, metadata !6376, metadata !63), !dbg !6377
  %442 = load double, double* %17, align 8, !dbg !6378
  %443 = fsub double -0.000000e+00, %442, !dbg !6379
  %444 = load double, double* %22, align 8, !dbg !6380
  %445 = fmul double %443, %444, !dbg !6381
  %446 = call i32 @gsl_sf_exprel_e(double %445, %struct.gsl_sf_result_struct* %61), !dbg !6382
  store i32 %446, i32* %62, align 4, !dbg !6377
  call void @llvm.dbg.declare(metadata double* %63, metadata !6383, metadata !63), !dbg !6384
  %447 = load double, double* %22, align 8, !dbg !6385
  %448 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !6386
  %449 = load double, double* %448, align 8, !dbg !6386
  %450 = fmul double %447, %449, !dbg !6387
  store double %450, double* %63, align 8, !dbg !6384
  call void @llvm.dbg.declare(metadata double* %64, metadata !6388, metadata !63), !dbg !6389
  %451 = load double, double* %17, align 8, !dbg !6390
  %452 = load double, double* %22, align 8, !dbg !6391
  %453 = fmul double %451, %452, !dbg !6392
  %454 = call double @fabs(double %453) #1, !dbg !6393
  %455 = fadd double 1.000000e+00, %454, !dbg !6394
  %456 = fmul double 0x3CC0000000000000, %455, !dbg !6395
  %457 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 0, !dbg !6396
  %458 = load double, double* %457, align 8, !dbg !6396
  %459 = call double @fabs(double %458) #1, !dbg !6397
  %460 = fmul double %456, %459, !dbg !6398
  %461 = load double, double* %22, align 8, !dbg !6399
  %462 = call double @fabs(double %461) #1, !dbg !6400
  %463 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !6401
  %464 = load double, double* %463, align 8, !dbg !6401
  %465 = fmul double %462, %464, !dbg !6402
  %466 = fadd double %460, %465, !dbg !6403
  %467 = load double, double* %63, align 8, !dbg !6404
  %468 = call double @fabs(double %467) #1, !dbg !6405
  %469 = fmul double 0x3CC0000000000000, %468, !dbg !6406
  %470 = fadd double %466, %469, !dbg !6407
  store double %470, double* %64, align 8, !dbg !6389
  call void @llvm.dbg.declare(metadata double* %65, metadata !6408, metadata !63), !dbg !6409
  %471 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !6410
  %472 = load double, double* %471, align 8, !dbg !6410
  %473 = load double, double* %59, align 8, !dbg !6411
  %474 = fadd double %472, %473, !dbg !6412
  %475 = load double, double* %63, align 8, !dbg !6413
  %476 = load double, double* %46, align 8, !dbg !6414
  %477 = fmul double %475, %476, !dbg !6415
  %478 = fadd double %474, %477, !dbg !6416
  store double %478, double* %65, align 8, !dbg !6409
  call void @llvm.dbg.declare(metadata double* %66, metadata !6417, metadata !63), !dbg !6418
  %479 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !6419
  %480 = load double, double* %479, align 8, !dbg !6419
  %481 = load double, double* %60, align 8, !dbg !6420
  %482 = fadd double %480, %481, !dbg !6421
  %483 = load double, double* %63, align 8, !dbg !6422
  %484 = call double @fabs(double %483) #1, !dbg !6423
  %485 = load double, double* %47, align 8, !dbg !6424
  %486 = fmul double %484, %485, !dbg !6425
  %487 = fadd double %482, %486, !dbg !6426
  %488 = load double, double* %64, align 8, !dbg !6427
  %489 = load double, double* %46, align 8, !dbg !6428
  %490 = call double @fabs(double %489) #1, !dbg !6429
  %491 = fmul double %488, %490, !dbg !6430
  %492 = fadd double %487, %491, !dbg !6431
  %493 = load double, double* %46, align 8, !dbg !6432
  %494 = load double, double* %22, align 8, !dbg !6433
  %495 = fmul double %493, %494, !dbg !6434
  %496 = call double @fabs(double %495) #1, !dbg !6435
  %497 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !6436
  %498 = load double, double* %497, align 8, !dbg !6436
  %499 = fmul double %496, %498, !dbg !6437
  %500 = fadd double %492, %499, !dbg !6438
  %501 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !6439
  %502 = load double, double* %501, align 8, !dbg !6439
  %503 = call double @fabs(double %502) #1, !dbg !6440
  %504 = load double, double* %59, align 8, !dbg !6441
  %505 = call double @fabs(double %504) #1, !dbg !6442
  %506 = fadd double %503, %505, !dbg !6443
  %507 = load double, double* %63, align 8, !dbg !6444
  %508 = load double, double* %46, align 8, !dbg !6445
  %509 = fmul double %507, %508, !dbg !6446
  %510 = call double @fabs(double %509) #1, !dbg !6447
  %511 = fadd double %506, %510, !dbg !6448
  %512 = fmul double 0x3CC0000000000000, %511, !dbg !6449
  %513 = fadd double %500, %512, !dbg !6450
  store double %513, double* %66, align 8, !dbg !6418
  call void @llvm.dbg.declare(metadata double* %67, metadata !6451, metadata !63), !dbg !6452
  %514 = load i32, i32* %13, align 4, !dbg !6453
  %515 = sitofp i32 %514 to double, !dbg !6453
  store double %515, double* %67, align 8, !dbg !6452
  call void @llvm.dbg.declare(metadata double* %68, metadata !6454, metadata !63), !dbg !6455
  call void @llvm.dbg.declare(metadata double* %69, metadata !6456, metadata !63), !dbg !6457
  %516 = load i32, i32* %45, align 4, !dbg !6458
  %517 = icmp ne i32 %516, 0, !dbg !6458
  br i1 %517, label %518, label %520, !dbg !6458

; <label>:518:                                    ; preds = %221
  %519 = load i32, i32* %45, align 4, !dbg !6459
  br label %549, !dbg !6459

; <label>:520:                                    ; preds = %221
  %521 = load i32, i32* %62, align 4, !dbg !6460
  %522 = icmp ne i32 %521, 0, !dbg !6460
  br i1 %522, label %523, label %525, !dbg !6460

; <label>:523:                                    ; preds = %520
  %524 = load i32, i32* %62, align 4, !dbg !6461
  br label %547, !dbg !6461

; <label>:525:                                    ; preds = %520
  %526 = load i32, i32* %54, align 4, !dbg !6462
  %527 = icmp ne i32 %526, 0, !dbg !6462
  br i1 %527, label %528, label %530, !dbg !6462

; <label>:528:                                    ; preds = %525
  %529 = load i32, i32* %54, align 4, !dbg !6463
  br label %545, !dbg !6463

; <label>:530:                                    ; preds = %525
  %531 = load i32, i32* %53, align 4, !dbg !6464
  %532 = icmp ne i32 %531, 0, !dbg !6464
  br i1 %532, label %533, label %535, !dbg !6464

; <label>:533:                                    ; preds = %530
  %534 = load i32, i32* %53, align 4, !dbg !6465
  br label %543, !dbg !6465

; <label>:535:                                    ; preds = %530
  %536 = load i32, i32* %52, align 4, !dbg !6466
  %537 = icmp ne i32 %536, 0, !dbg !6466
  br i1 %537, label %538, label %540, !dbg !6466

; <label>:538:                                    ; preds = %535
  %539 = load i32, i32* %52, align 4, !dbg !6467
  br label %541, !dbg !6467

; <label>:540:                                    ; preds = %535
  br label %541, !dbg !6468

; <label>:541:                                    ; preds = %540, %538
  %542 = phi i32 [ %539, %538 ], [ 0, %540 ], !dbg !6470
  br label %543, !dbg !6470

; <label>:543:                                    ; preds = %541, %533
  %544 = phi i32 [ %534, %533 ], [ %542, %541 ], !dbg !6472
  br label %545, !dbg !6472

; <label>:545:                                    ; preds = %543, %528
  %546 = phi i32 [ %529, %528 ], [ %544, %543 ], !dbg !6474
  br label %547, !dbg !6474

; <label>:547:                                    ; preds = %545, %523
  %548 = phi i32 [ %524, %523 ], [ %546, %545 ], !dbg !6476
  br label %549, !dbg !6476

; <label>:549:                                    ; preds = %547, %518
  %550 = phi i32 [ %519, %518 ], [ %548, %547 ], !dbg !6478
  store i32 %550, i32* %45, align 4, !dbg !6480
  store i32 1, i32* %48, align 4, !dbg !6481
  br label %551, !dbg !6483

; <label>:551:                                    ; preds = %702, %549
  %552 = load i32, i32* %48, align 4, !dbg !6484
  %553 = icmp slt i32 %552, 2000, !dbg !6487
  br i1 %553, label %554, label %705, !dbg !6488

; <label>:554:                                    ; preds = %551
  call void @llvm.dbg.declare(metadata double* %70, metadata !6489, metadata !63), !dbg !6491
  %555 = load i32, i32* %23, align 4, !dbg !6492
  %556 = load i32, i32* %48, align 4, !dbg !6493
  %557 = add nsw i32 %555, %556, !dbg !6494
  %558 = sitofp i32 %557 to double, !dbg !6492
  store double %558, double* %70, align 8, !dbg !6491
  call void @llvm.dbg.declare(metadata double* %71, metadata !6495, metadata !63), !dbg !6496
  %559 = load i32, i32* %23, align 4, !dbg !6497
  %560 = load i32, i32* %48, align 4, !dbg !6498
  %561 = add nsw i32 %559, %560, !dbg !6499
  %562 = sub nsw i32 %561, 1, !dbg !6500
  %563 = sitofp i32 %562 to double, !dbg !6497
  store double %563, double* %71, align 8, !dbg !6496
  call void @llvm.dbg.declare(metadata double* %72, metadata !6501, metadata !63), !dbg !6502
  %564 = load double, double* %14, align 8, !dbg !6503
  %565 = fsub double %564, 1.000000e+00, !dbg !6504
  %566 = load double, double* %67, align 8, !dbg !6505
  %567 = load double, double* %70, align 8, !dbg !6506
  %568 = fmul double 2.000000e+00, %567, !dbg !6507
  %569 = fadd double %566, %568, !dbg !6508
  %570 = fsub double %569, 1.000000e+00, !dbg !6509
  %571 = fmul double %565, %570, !dbg !6510
  %572 = load double, double* %70, align 8, !dbg !6511
  %573 = load double, double* %70, align 8, !dbg !6512
  %574 = load double, double* %17, align 8, !dbg !6513
  %575 = fsub double %573, %574, !dbg !6514
  %576 = fmul double %572, %575, !dbg !6515
  %577 = fadd double %571, %576, !dbg !6516
  store double %577, double* %72, align 8, !dbg !6502
  call void @llvm.dbg.declare(metadata double* %73, metadata !6517, metadata !63), !dbg !6518
  %578 = load double, double* %14, align 8, !dbg !6519
  %579 = load double, double* %71, align 8, !dbg !6520
  %580 = fadd double %578, %579, !dbg !6521
  %581 = load double, double* %17, align 8, !dbg !6522
  %582 = fsub double %580, %581, !dbg !6523
  %583 = load double, double* %18, align 8, !dbg !6524
  %584 = fmul double %582, %583, !dbg !6525
  %585 = load double, double* %67, align 8, !dbg !6526
  %586 = load double, double* %71, align 8, !dbg !6527
  %587 = fadd double %585, %586, !dbg !6528
  %588 = load double, double* %70, align 8, !dbg !6529
  %589 = load double, double* %17, align 8, !dbg !6530
  %590 = fsub double %588, %589, !dbg !6531
  %591 = fmul double %587, %590, !dbg !6532
  %592 = fdiv double %584, %591, !dbg !6533
  store double %592, double* %73, align 8, !dbg !6518
  call void @llvm.dbg.declare(metadata double* %74, metadata !6534, metadata !63), !dbg !6535
  %593 = load double, double* %14, align 8, !dbg !6536
  %594 = load double, double* %71, align 8, !dbg !6537
  %595 = fadd double %593, %594, !dbg !6538
  %596 = load double, double* %18, align 8, !dbg !6539
  %597 = fmul double %595, %596, !dbg !6540
  %598 = load double, double* %16, align 8, !dbg !6541
  %599 = load double, double* %71, align 8, !dbg !6542
  %600 = fadd double %598, %599, !dbg !6543
  %601 = load double, double* %70, align 8, !dbg !6544
  %602 = fmul double %600, %601, !dbg !6545
  %603 = fdiv double %597, %602, !dbg !6546
  store double %603, double* %74, align 8, !dbg !6535
  call void @llvm.dbg.declare(metadata double* %75, metadata !6547, metadata !63), !dbg !6548
  %604 = load double, double* %72, align 8, !dbg !6549
  %605 = load double, double* %70, align 8, !dbg !6550
  %606 = load double, double* %16, align 8, !dbg !6551
  %607 = load double, double* %71, align 8, !dbg !6552
  %608 = fadd double %606, %607, !dbg !6553
  %609 = fmul double %605, %608, !dbg !6554
  %610 = load double, double* %14, align 8, !dbg !6555
  %611 = load double, double* %71, align 8, !dbg !6556
  %612 = fadd double %610, %611, !dbg !6557
  %613 = load double, double* %17, align 8, !dbg !6558
  %614 = fsub double %612, %613, !dbg !6559
  %615 = fmul double %609, %614, !dbg !6560
  %616 = fdiv double %604, %615, !dbg !6561
  store double %616, double* %75, align 8, !dbg !6548
  %617 = load double, double* %73, align 8, !dbg !6562
  %618 = load double, double* %46, align 8, !dbg !6563
  %619 = fmul double %618, %617, !dbg !6563
  store double %619, double* %46, align 8, !dbg !6563
  %620 = load double, double* %73, align 8, !dbg !6564
  %621 = call double @fabs(double %620) #1, !dbg !6565
  %622 = load double, double* %47, align 8, !dbg !6566
  %623 = fmul double %621, %622, !dbg !6567
  %624 = load double, double* %46, align 8, !dbg !6568
  %625 = call double @fabs(double %624) #1, !dbg !6569
  %626 = fmul double %625, 8.000000e+00, !dbg !6571
  %627 = fmul double %626, 2.000000e+00, !dbg !6572
  %628 = fmul double %627, 0x3CB0000000000000, !dbg !6573
  %629 = fadd double %623, %628, !dbg !6574
  %630 = load double, double* %47, align 8, !dbg !6575
  %631 = fadd double %630, %629, !dbg !6575
  store double %631, double* %47, align 8, !dbg !6575
  %632 = load double, double* %74, align 8, !dbg !6576
  %633 = load double, double* %59, align 8, !dbg !6577
  %634 = fmul double %632, %633, !dbg !6578
  %635 = load double, double* %75, align 8, !dbg !6579
  %636 = load double, double* %46, align 8, !dbg !6580
  %637 = fmul double %635, %636, !dbg !6581
  %638 = fsub double %634, %637, !dbg !6582
  store double %638, double* %59, align 8, !dbg !6583
  %639 = load double, double* %74, align 8, !dbg !6584
  %640 = call double @fabs(double %639) #1, !dbg !6585
  %641 = load double, double* %60, align 8, !dbg !6586
  %642 = fmul double %640, %641, !dbg !6587
  %643 = load double, double* %75, align 8, !dbg !6588
  %644 = call double @fabs(double %643) #1, !dbg !6589
  %645 = load double, double* %47, align 8, !dbg !6590
  %646 = fmul double %644, %645, !dbg !6591
  %647 = fadd double %642, %646, !dbg !6592
  %648 = load double, double* %59, align 8, !dbg !6593
  %649 = call double @fabs(double %648) #1, !dbg !6594
  %650 = fmul double %649, 8.000000e+00, !dbg !6595
  %651 = fmul double %650, 2.000000e+00, !dbg !6596
  %652 = fmul double %651, 0x3CB0000000000000, !dbg !6597
  %653 = fadd double %647, %652, !dbg !6598
  %654 = load double, double* %46, align 8, !dbg !6599
  %655 = load double, double* %75, align 8, !dbg !6600
  %656 = fmul double %654, %655, !dbg !6601
  %657 = call double @fabs(double %656) #1, !dbg !6602
  %658 = fmul double %657, 1.600000e+01, !dbg !6603
  %659 = fmul double %658, 2.000000e+00, !dbg !6604
  %660 = fmul double %659, 0x3CB0000000000000, !dbg !6605
  %661 = fadd double %653, %660, !dbg !6606
  store double %661, double* %60, align 8, !dbg !6607
  %662 = load double, double* %59, align 8, !dbg !6608
  %663 = load double, double* %63, align 8, !dbg !6609
  %664 = load double, double* %46, align 8, !dbg !6610
  %665 = fmul double %663, %664, !dbg !6611
  %666 = fadd double %662, %665, !dbg !6612
  store double %666, double* %68, align 8, !dbg !6613
  %667 = load double, double* %60, align 8, !dbg !6614
  %668 = load double, double* %63, align 8, !dbg !6615
  %669 = call double @fabs(double %668) #1, !dbg !6616
  %670 = load double, double* %47, align 8, !dbg !6617
  %671 = fmul double %669, %670, !dbg !6618
  %672 = fadd double %667, %671, !dbg !6619
  store double %672, double* %69, align 8, !dbg !6620
  %673 = load double, double* %46, align 8, !dbg !6621
  %674 = load double, double* %22, align 8, !dbg !6622
  %675 = fmul double %673, %674, !dbg !6623
  %676 = call double @fabs(double %675) #1, !dbg !6624
  %677 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %61, i32 0, i32 1, !dbg !6625
  %678 = load double, double* %677, align 8, !dbg !6625
  %679 = fmul double %676, %678, !dbg !6626
  %680 = load double, double* %69, align 8, !dbg !6627
  %681 = fadd double %680, %679, !dbg !6627
  store double %681, double* %69, align 8, !dbg !6627
  %682 = load double, double* %46, align 8, !dbg !6628
  %683 = call double @fabs(double %682) #1, !dbg !6629
  %684 = load double, double* %64, align 8, !dbg !6630
  %685 = fmul double %683, %684, !dbg !6631
  %686 = load double, double* %69, align 8, !dbg !6632
  %687 = fadd double %686, %685, !dbg !6632
  store double %687, double* %69, align 8, !dbg !6632
  %688 = load double, double* %68, align 8, !dbg !6633
  %689 = load double, double* %65, align 8, !dbg !6634
  %690 = fadd double %689, %688, !dbg !6634
  store double %690, double* %65, align 8, !dbg !6634
  %691 = load double, double* %69, align 8, !dbg !6635
  %692 = load double, double* %66, align 8, !dbg !6636
  %693 = fadd double %692, %691, !dbg !6636
  store double %693, double* %66, align 8, !dbg !6636
  %694 = load double, double* %68, align 8, !dbg !6637
  %695 = call double @fabs(double %694) #1, !dbg !6639
  %696 = load double, double* %65, align 8, !dbg !6640
  %697 = call double @fabs(double %696) #1, !dbg !6641
  %698 = fmul double 0x3CC0000000000000, %697, !dbg !6643
  %699 = fcmp olt double %695, %698, !dbg !6644
  br i1 %699, label %700, label %701, !dbg !6645

; <label>:700:                                    ; preds = %554
  br label %705, !dbg !6646

; <label>:701:                                    ; preds = %554
  br label %702, !dbg !6648

; <label>:702:                                    ; preds = %701
  %703 = load i32, i32* %48, align 4, !dbg !6649
  %704 = add nsw i32 %703, 1, !dbg !6649
  store i32 %704, i32* %48, align 4, !dbg !6649
  br label %551, !dbg !6651, !llvm.loop !6652

; <label>:705:                                    ; preds = %700, %551
  %706 = load double, double* %65, align 8, !dbg !6654
  %707 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !6655
  %708 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %707, i32 0, i32 0, !dbg !6656
  store double %706, double* %708, align 8, !dbg !6657
  %709 = load double, double* %66, align 8, !dbg !6658
  %710 = fmul double 2.000000e+00, %709, !dbg !6659
  %711 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !6660
  %712 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %711, i32 0, i32 1, !dbg !6661
  store double %710, double* %712, align 8, !dbg !6662
  %713 = load double, double* %68, align 8, !dbg !6663
  %714 = call double @fabs(double %713) #1, !dbg !6664
  %715 = fmul double 2.000000e+00, %714, !dbg !6665
  %716 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !6666
  %717 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %716, i32 0, i32 1, !dbg !6667
  %718 = load double, double* %717, align 8, !dbg !6668
  %719 = fadd double %718, %715, !dbg !6668
  store double %719, double* %717, align 8, !dbg !6668
  %720 = load i32, i32* %48, align 4, !dbg !6669
  %721 = sitofp i32 %720 to double, !dbg !6669
  %722 = fadd double %721, 2.000000e+00, !dbg !6670
  %723 = fmul double 0x3CD0000000000000, %722, !dbg !6671
  %724 = load double, double* %65, align 8, !dbg !6672
  %725 = call double @fabs(double %724) #1, !dbg !6673
  %726 = fmul double %723, %725, !dbg !6674
  %727 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !6675
  %728 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %727, i32 0, i32 1, !dbg !6676
  %729 = load double, double* %728, align 8, !dbg !6677
  %730 = fadd double %729, %726, !dbg !6677
  store double %730, double* %728, align 8, !dbg !6677
  %731 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %20, align 8, !dbg !6678
  %732 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %731, i32 0, i32 1, !dbg !6679
  %733 = load double, double* %732, align 8, !dbg !6680
  %734 = fmul double %733, 2.000000e+00, !dbg !6680
  store double %734, double* %732, align 8, !dbg !6680
  %735 = load i32, i32* %48, align 4, !dbg !6681
  %736 = icmp sge i32 %735, 2000, !dbg !6683
  br i1 %736, label %737, label %740, !dbg !6684

; <label>:737:                                    ; preds = %705
  br label %738, !dbg !6685, !llvm.loop !6687

; <label>:738:                                    ; preds = %737
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 664, i32 11), !dbg !6688
  store i32 11, i32* %11, align 4, !dbg !6688
  br label %742, !dbg !6688
                                                  ; No predecessors!
  br label %742, !dbg !6691

; <label>:740:                                    ; preds = %705
  %741 = load i32, i32* %45, align 4, !dbg !6692
  store i32 %741, i32* %11, align 4, !dbg !6694
  br label %742, !dbg !6694

; <label>:742:                                    ; preds = %738, %740, %739
  %743 = load i32, i32* %11, align 4, !dbg !6695
  ret i32 %743, !dbg !6695
}

declare i32 @gsl_sf_poch_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_gamma_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_gammainv_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @sin(double) #3

declare double @gsl_sf_poch(double, double) #2

declare double @gsl_sf_gammainv(double) #2

declare i32 @gsl_finite(double) #2

declare i32 @gsl_sf_pochrel_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_exprel_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_hyperg_U_large_b_e(double, double, double, %struct.gsl_sf_result_struct*, double*) #2

; Function Attrs: nounwind uwtable
define internal i32 @hyperg_U_small_ab(double, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !6696 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !6697, metadata !63), !dbg !6698
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !6699, metadata !63), !dbg !6700
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !6701, metadata !63), !dbg !6702
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !6703, metadata !63), !dbg !6704
  %13 = load double, double* %6, align 8, !dbg !6705
  %14 = fcmp oeq double %13, -1.000000e+00, !dbg !6707
  br i1 %14, label %15, label %39, !dbg !6708

; <label>:15:                                     ; preds = %4
  %16 = load double, double* %7, align 8, !dbg !6709
  %17 = fsub double -0.000000e+00, %16, !dbg !6711
  %18 = load double, double* %8, align 8, !dbg !6712
  %19 = fadd double %17, %18, !dbg !6713
  %20 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6714
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %20, i32 0, i32 0, !dbg !6715
  store double %19, double* %21, align 8, !dbg !6716
  %22 = load double, double* %7, align 8, !dbg !6717
  %23 = call double @fabs(double %22) #1, !dbg !6718
  %24 = load double, double* %8, align 8, !dbg !6719
  %25 = call double @fabs(double %24) #1, !dbg !6720
  %26 = fadd double %23, %25, !dbg !6722
  %27 = fmul double 0x3CC0000000000000, %26, !dbg !6723
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6724
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !6725
  store double %27, double* %29, align 8, !dbg !6726
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6727
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !6728
  %32 = load double, double* %31, align 8, !dbg !6728
  %33 = call double @fabs(double %32) #1, !dbg !6729
  %34 = fmul double 0x3CC0000000000000, %33, !dbg !6730
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6731
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !6732
  %37 = load double, double* %36, align 8, !dbg !6733
  %38 = fadd double %37, %34, !dbg !6733
  store double %38, double* %36, align 8, !dbg !6733
  store i32 0, i32* %5, align 4, !dbg !6734
  br label %112, !dbg !6734

; <label>:39:                                     ; preds = %4
  %40 = load double, double* %6, align 8, !dbg !6735
  %41 = fcmp oeq double %40, 0.000000e+00, !dbg !6737
  br i1 %41, label %42, label %47, !dbg !6738

; <label>:42:                                     ; preds = %39
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6739
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !6741
  store double 1.000000e+00, double* %44, align 8, !dbg !6742
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6743
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !6744
  store double 0.000000e+00, double* %46, align 8, !dbg !6745
  store i32 0, i32* %5, align 4, !dbg !6746
  br label %112, !dbg !6746

; <label>:47:                                     ; preds = %39
  %48 = load double, double* %6, align 8, !dbg !6747
  %49 = call double @fabs(double %48) #1, !dbg !6747
  %50 = call double @GSL_MAX_DBL(double %49, double 1.000000e+00), !dbg !6749
  %51 = load double, double* %6, align 8, !dbg !6747
  %52 = fadd double 1.000000e+00, %51, !dbg !6747
  %53 = load double, double* %7, align 8, !dbg !6747
  %54 = fsub double %52, %53, !dbg !6747
  %55 = call double @fabs(double %54) #1, !dbg !6751
  %56 = call double @GSL_MAX_DBL(double %55, double 1.000000e+00), !dbg !6753
  %57 = fmul double %50, %56, !dbg !6747
  %58 = load double, double* %8, align 8, !dbg !6747
  %59 = call double @fabs(double %58) #1, !dbg !6755
  %60 = fmul double 9.900000e-01, %59, !dbg !6747
  %61 = fcmp olt double %57, %60, !dbg !6747
  br i1 %61, label %62, label %106, !dbg !6757

; <label>:62:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata double* %10, metadata !6758, metadata !63), !dbg !6760
  %63 = load double, double* %8, align 8, !dbg !6761
  %64 = load double, double* %6, align 8, !dbg !6762
  %65 = fsub double -0.000000e+00, %64, !dbg !6763
  %66 = call double @pow(double %63, double %65) #6, !dbg !6764
  store double %66, double* %10, align 8, !dbg !6760
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !6765, metadata !63), !dbg !6766
  call void @llvm.dbg.declare(metadata i32* %12, metadata !6767, metadata !63), !dbg !6768
  %67 = load double, double* %6, align 8, !dbg !6769
  %68 = load double, double* %7, align 8, !dbg !6770
  %69 = load double, double* %8, align 8, !dbg !6771
  %70 = call i32 @hyperg_zaU_asymp(double %67, double %68, double %69, %struct.gsl_sf_result_struct* %11), !dbg !6772
  store i32 %70, i32* %12, align 4, !dbg !6768
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !6773
  %72 = load double, double* %71, align 8, !dbg !6773
  %73 = load double, double* %10, align 8, !dbg !6774
  %74 = fmul double %72, %73, !dbg !6775
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6776
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 0, !dbg !6777
  store double %74, double* %76, align 8, !dbg !6778
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 1, !dbg !6779
  %78 = load double, double* %77, align 8, !dbg !6779
  %79 = load double, double* %10, align 8, !dbg !6780
  %80 = fmul double %78, %79, !dbg !6781
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6782
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 1, !dbg !6783
  store double %80, double* %82, align 8, !dbg !6784
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !6785
  %84 = load double, double* %83, align 8, !dbg !6785
  %85 = call double @fabs(double %84) #1, !dbg !6786
  %86 = fmul double %85, 0x3CB0000000000000, !dbg !6787
  %87 = load double, double* %6, align 8, !dbg !6788
  %88 = call double @fabs(double %87) #1, !dbg !6789
  %89 = fmul double %86, %88, !dbg !6791
  %90 = load double, double* %10, align 8, !dbg !6792
  %91 = fmul double %89, %90, !dbg !6793
  %92 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6794
  %93 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %92, i32 0, i32 1, !dbg !6795
  %94 = load double, double* %93, align 8, !dbg !6796
  %95 = fadd double %94, %91, !dbg !6796
  store double %95, double* %93, align 8, !dbg !6796
  %96 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6797
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %96, i32 0, i32 0, !dbg !6798
  %98 = load double, double* %97, align 8, !dbg !6798
  %99 = call double @fabs(double %98) #1, !dbg !6799
  %100 = fmul double 0x3CC0000000000000, %99, !dbg !6800
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6801
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !6802
  %103 = load double, double* %102, align 8, !dbg !6803
  %104 = fadd double %103, %100, !dbg !6803
  store double %104, double* %102, align 8, !dbg !6803
  %105 = load i32, i32* %12, align 4, !dbg !6804
  store i32 %105, i32* %5, align 4, !dbg !6805
  br label %112, !dbg !6805

; <label>:106:                                    ; preds = %47
  %107 = load double, double* %6, align 8, !dbg !6806
  %108 = load double, double* %7, align 8, !dbg !6808
  %109 = load double, double* %8, align 8, !dbg !6809
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !6810
  %111 = call i32 @hyperg_U_series(double %107, double %108, double %109, %struct.gsl_sf_result_struct* %110), !dbg !6811
  store i32 %111, i32* %5, align 4, !dbg !6812
  br label %112, !dbg !6812

; <label>:112:                                    ; preds = %106, %62, %42, %15
  %113 = load i32, i32* %5, align 4, !dbg !6813
  ret i32 %113, !dbg !6813
}

declare i32 @gsl_sf_bessel_lnKnu_e(double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_hyperg_1F1_e(double, double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_laguerre_n_e(i32, double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_lnfact_e(i32, %struct.gsl_sf_result_struct*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41)
!1 = !DIFile(filename: "hyperg_U.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!43 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!44 = !{i32 2, !"Dwarf Version", i32 4}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"PIC Level", i32 2}
!47 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!48 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_int_e10_e", scope: !1, file: !1, line: 1650, type: !49, isLocal: false, isDefinition: true, scopeLine: 1652, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!49 = !DISubroutineType(types: !50)
!50 = !{!43, !51, !51, !52, !53}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result_e10", file: !55, line: 51, baseType: !56)
!55 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_e10_struct", file: !55, line: 46, size: 192, align: 64, elements: !57)
!57 = !{!58, !59, !60}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !56, file: !55, line: 47, baseType: !42, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !56, file: !55, line: 48, baseType: !42, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "e10", scope: !56, file: !55, line: 49, baseType: !43, size: 32, align: 32, offset: 128)
!61 = !{}
!62 = !DILocalVariable(name: "a", arg: 1, scope: !48, file: !1, line: 1650, type: !51)
!63 = !DIExpression()
!64 = !DILocation(line: 1650, column: 37, scope: !48)
!65 = !DILocalVariable(name: "b", arg: 2, scope: !48, file: !1, line: 1650, type: !51)
!66 = !DILocation(line: 1650, column: 50, scope: !48)
!67 = !DILocalVariable(name: "x", arg: 3, scope: !48, file: !1, line: 1650, type: !52)
!68 = !DILocation(line: 1650, column: 66, scope: !48)
!69 = !DILocalVariable(name: "result", arg: 4, scope: !48, file: !1, line: 1651, type: !53)
!70 = !DILocation(line: 1651, column: 50, scope: !48)
!71 = !DILocation(line: 1655, column: 6, scope: !72)
!72 = distinct !DILexicalBlock(scope: !48, file: !1, line: 1655, column: 6)
!73 = !DILocation(line: 1655, column: 8, scope: !72)
!74 = !DILocation(line: 1655, column: 15, scope: !72)
!75 = !DILocation(line: 1655, column: 18, scope: !76)
!76 = !DILexicalBlockFile(scope: !72, file: !1, discriminator: 1)
!77 = !DILocation(line: 1655, column: 20, scope: !76)
!78 = !DILocation(line: 1655, column: 6, scope: !76)
!79 = !DILocation(line: 1656, column: 5, scope: !80)
!80 = distinct !DILexicalBlock(scope: !72, file: !1, line: 1655, column: 26)
!81 = distinct !{!81, !79}
!82 = !DILocation(line: 1656, column: 5, scope: !83)
!83 = !DILexicalBlockFile(scope: !84, file: !1, discriminator: 1)
!84 = distinct !DILexicalBlock(scope: !80, file: !1, line: 1656, column: 5)
!85 = distinct !{!85, !86}
!86 = !DILocation(line: 1656, column: 5, scope: !84)
!87 = !DILocation(line: 1656, column: 5, scope: !88)
!88 = !DILexicalBlockFile(scope: !89, file: !1, discriminator: 2)
!89 = distinct !DILexicalBlock(scope: !84, file: !1, line: 1656, column: 5)
!90 = !DILocation(line: 1656, column: 5, scope: !91)
!91 = !DILexicalBlockFile(scope: !84, file: !1, discriminator: 3)
!92 = !DILocation(line: 1657, column: 3, scope: !80)
!93 = !DILocation(line: 1658, column: 12, scope: !94)
!94 = distinct !DILexicalBlock(scope: !72, file: !1, line: 1658, column: 12)
!95 = !DILocation(line: 1658, column: 14, scope: !94)
!96 = !DILocation(line: 1658, column: 12, scope: !72)
!97 = !DILocation(line: 1659, column: 33, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 1658, column: 22)
!99 = !DILocation(line: 1659, column: 36, scope: !98)
!100 = !DILocation(line: 1659, column: 39, scope: !98)
!101 = !DILocation(line: 1659, column: 12, scope: !98)
!102 = !DILocation(line: 1659, column: 5, scope: !98)
!103 = !DILocation(line: 1660, column: 14, scope: !104)
!104 = distinct !DILexicalBlock(scope: !94, file: !1, line: 1660, column: 14)
!105 = !DILocation(line: 1660, column: 16, scope: !104)
!106 = !DILocation(line: 1660, column: 14, scope: !94)
!107 = !DILocation(line: 1661, column: 31, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 1660, column: 24)
!109 = !DILocation(line: 1661, column: 34, scope: !108)
!110 = !DILocation(line: 1661, column: 37, scope: !108)
!111 = !DILocation(line: 1661, column: 40, scope: !108)
!112 = !DILocation(line: 1661, column: 12, scope: !108)
!113 = !DILocation(line: 1661, column: 5, scope: !108)
!114 = !DILocation(line: 1664, column: 8, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 1664, column: 8)
!116 = distinct !DILexicalBlock(scope: !104, file: !1, line: 1663, column: 8)
!117 = !DILocation(line: 1664, column: 10, scope: !115)
!118 = !DILocation(line: 1664, column: 8, scope: !116)
!119 = !DILocation(line: 1665, column: 32, scope: !120)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 1664, column: 16)
!121 = !DILocation(line: 1665, column: 35, scope: !120)
!122 = !DILocation(line: 1665, column: 38, scope: !120)
!123 = !DILocation(line: 1665, column: 41, scope: !120)
!124 = !DILocation(line: 1665, column: 14, scope: !120)
!125 = !DILocation(line: 1665, column: 7, scope: !120)
!126 = !DILocalVariable(name: "U", scope: !127, file: !1, line: 1671, type: !54)
!127 = distinct !DILexicalBlock(scope: !115, file: !1, line: 1667, column: 10)
!128 = !DILocation(line: 1671, column: 25, scope: !127)
!129 = !DILocalVariable(name: "ln_x", scope: !127, file: !1, line: 1672, type: !42)
!130 = !DILocation(line: 1672, column: 14, scope: !127)
!131 = !DILocation(line: 1672, column: 25, scope: !127)
!132 = !DILocation(line: 1672, column: 21, scope: !127)
!133 = !DILocalVariable(name: "ap", scope: !127, file: !1, line: 1673, type: !43)
!134 = !DILocation(line: 1673, column: 11, scope: !127)
!135 = !DILocation(line: 1673, column: 20, scope: !127)
!136 = !DILocation(line: 1673, column: 18, scope: !127)
!137 = !DILocation(line: 1673, column: 24, scope: !127)
!138 = !DILocation(line: 1673, column: 22, scope: !127)
!139 = !DILocalVariable(name: "bp", scope: !127, file: !1, line: 1674, type: !43)
!140 = !DILocation(line: 1674, column: 11, scope: !127)
!141 = !DILocation(line: 1674, column: 20, scope: !127)
!142 = !DILocation(line: 1674, column: 18, scope: !127)
!143 = !DILocalVariable(name: "stat_e", scope: !127, file: !1, line: 1675, type: !43)
!144 = !DILocation(line: 1675, column: 11, scope: !127)
!145 = !DILocalVariable(name: "stat_U", scope: !127, file: !1, line: 1676, type: !43)
!146 = !DILocation(line: 1676, column: 11, scope: !127)
!147 = !DILocation(line: 1676, column: 38, scope: !127)
!148 = !DILocation(line: 1676, column: 42, scope: !127)
!149 = !DILocation(line: 1676, column: 46, scope: !127)
!150 = !DILocation(line: 1676, column: 20, scope: !127)
!151 = !DILocalVariable(name: "ln_pre_val", scope: !127, file: !1, line: 1677, type: !42)
!152 = !DILocation(line: 1677, column: 14, scope: !127)
!153 = !DILocation(line: 1677, column: 32, scope: !127)
!154 = !DILocation(line: 1677, column: 31, scope: !127)
!155 = !DILocation(line: 1677, column: 35, scope: !127)
!156 = !DILocation(line: 1677, column: 34, scope: !127)
!157 = !DILocalVariable(name: "ln_pre_err", scope: !127, file: !1, line: 1678, type: !42)
!158 = !DILocation(line: 1678, column: 14, scope: !127)
!159 = !DILocation(line: 1678, column: 57, scope: !127)
!160 = !DILocation(line: 1678, column: 52, scope: !127)
!161 = !DILocation(line: 1678, column: 59, scope: !127)
!162 = !DILocation(line: 1678, column: 49, scope: !127)
!163 = !DILocation(line: 1678, column: 72, scope: !127)
!164 = !DILocation(line: 1678, column: 67, scope: !165)
!165 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 1)
!166 = !DILocation(line: 1678, column: 65, scope: !127)
!167 = !DILocation(line: 1679, column: 54, scope: !127)
!168 = !DILocation(line: 1679, column: 53, scope: !127)
!169 = !DILocation(line: 1679, column: 45, scope: !127)
!170 = !DILocation(line: 1679, column: 43, scope: !127)
!171 = !DILocation(line: 1679, column: 18, scope: !127)
!172 = !DILocation(line: 1680, column: 42, scope: !127)
!173 = !DILocation(line: 1680, column: 57, scope: !127)
!174 = !DILocation(line: 1680, column: 55, scope: !127)
!175 = !DILocation(line: 1680, column: 60, scope: !127)
!176 = !DILocation(line: 1680, column: 53, scope: !127)
!177 = !DILocation(line: 1680, column: 69, scope: !127)
!178 = !DILocation(line: 1681, column: 47, scope: !127)
!179 = !DILocation(line: 1681, column: 54, scope: !127)
!180 = !DILocation(line: 1682, column: 45, scope: !127)
!181 = !DILocation(line: 1680, column: 16, scope: !127)
!182 = !DILocation(line: 1680, column: 14, scope: !127)
!183 = !DILocation(line: 1683, column: 14, scope: !127)
!184 = !DILocation(line: 1683, column: 14, scope: !165)
!185 = !DILocation(line: 1683, column: 14, scope: !186)
!186 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 2)
!187 = !DILocation(line: 1683, column: 14, scope: !188)
!188 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 3)
!189 = !DILocation(line: 1683, column: 14, scope: !190)
!190 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 4)
!191 = !DILocation(line: 1683, column: 14, scope: !192)
!192 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 5)
!193 = !DILocation(line: 1683, column: 14, scope: !194)
!194 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 6)
!195 = !DILocation(line: 1683, column: 7, scope: !194)
!196 = !DILocation(line: 1686, column: 1, scope: !48)
!197 = distinct !DISubprogram(name: "hyperg_U_int_origin", scope: !1, file: !1, line: 1487, type: !198, isLocal: true, isDefinition: true, scopeLine: 1488, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!198 = !DISubroutineType(types: !199)
!199 = !{!43, !51, !51, !53}
!200 = !DILocalVariable(name: "a", arg: 1, scope: !197, file: !1, line: 1487, type: !51)
!201 = !DILocation(line: 1487, column: 32, scope: !197)
!202 = !DILocalVariable(name: "b", arg: 2, scope: !197, file: !1, line: 1487, type: !51)
!203 = !DILocation(line: 1487, column: 45, scope: !197)
!204 = !DILocalVariable(name: "result", arg: 3, scope: !197, file: !1, line: 1487, type: !53)
!205 = !DILocation(line: 1487, column: 68, scope: !197)
!206 = !DILocation(line: 1489, column: 27, scope: !197)
!207 = !DILocation(line: 1489, column: 30, scope: !197)
!208 = !DILocation(line: 1489, column: 33, scope: !197)
!209 = !DILocation(line: 1489, column: 10, scope: !197)
!210 = !DILocation(line: 1489, column: 3, scope: !197)
!211 = distinct !DISubprogram(name: "hyperg_U_int_negx", scope: !1, file: !1, line: 1622, type: !49, isLocal: true, isDefinition: true, scopeLine: 1623, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!212 = !DILocalVariable(name: "a", arg: 1, scope: !211, file: !1, line: 1622, type: !51)
!213 = !DILocation(line: 1622, column: 30, scope: !211)
!214 = !DILocalVariable(name: "b", arg: 2, scope: !211, file: !1, line: 1622, type: !51)
!215 = !DILocation(line: 1622, column: 43, scope: !211)
!216 = !DILocalVariable(name: "x", arg: 3, scope: !211, file: !1, line: 1622, type: !52)
!217 = !DILocation(line: 1622, column: 59, scope: !211)
!218 = !DILocalVariable(name: "result", arg: 4, scope: !211, file: !1, line: 1622, type: !53)
!219 = !DILocation(line: 1622, column: 82, scope: !211)
!220 = !DILocation(line: 1628, column: 7, scope: !221)
!221 = distinct !DILexicalBlock(scope: !211, file: !1, line: 1628, column: 7)
!222 = !DILocation(line: 1628, column: 9, scope: !221)
!223 = !DILocation(line: 1628, column: 8, scope: !221)
!224 = !DILocation(line: 1628, column: 11, scope: !221)
!225 = !DILocation(line: 1628, column: 14, scope: !226)
!226 = !DILexicalBlockFile(scope: !221, file: !1, discriminator: 1)
!227 = !DILocation(line: 1628, column: 15, scope: !226)
!228 = !DILocation(line: 1628, column: 7, scope: !226)
!229 = !DILocalVariable(name: "r1", scope: !230, file: !1, line: 1630, type: !54)
!230 = distinct !DILexicalBlock(scope: !221, file: !1, line: 1629, column: 5)
!231 = !DILocation(line: 1630, column: 25, scope: !230)
!232 = !DILocalVariable(name: "z21_z", scope: !230, file: !1, line: 1631, type: !42)
!233 = !DILocation(line: 1631, column: 14, scope: !230)
!234 = !DILocation(line: 1631, column: 26, scope: !230)
!235 = !DILocation(line: 1631, column: 31, scope: !230)
!236 = !DILocation(line: 1631, column: 30, scope: !230)
!237 = !DILocation(line: 1631, column: 29, scope: !230)
!238 = !DILocation(line: 1631, column: 22, scope: !230)
!239 = !DILocalVariable(name: "status", scope: !230, file: !1, line: 1632, type: !43)
!240 = !DILocation(line: 1632, column: 11, scope: !230)
!241 = !DILocation(line: 1632, column: 37, scope: !230)
!242 = !DILocation(line: 1632, column: 36, scope: !230)
!243 = !DILocation(line: 1632, column: 39, scope: !230)
!244 = !DILocation(line: 1632, column: 38, scope: !230)
!245 = !DILocation(line: 1632, column: 35, scope: !230)
!246 = !DILocation(line: 1632, column: 43, scope: !230)
!247 = !DILocation(line: 1632, column: 42, scope: !230)
!248 = !DILocation(line: 1632, column: 41, scope: !230)
!249 = !DILocation(line: 1632, column: 46, scope: !230)
!250 = !DILocation(line: 1632, column: 20, scope: !230)
!251 = !DILocalVariable(name: "res_tem", scope: !230, file: !1, line: 1633, type: !42)
!252 = !DILocation(line: 1633, column: 14, scope: !230)
!253 = !DILocation(line: 1633, column: 22, scope: !230)
!254 = !DILocation(line: 1633, column: 31, scope: !230)
!255 = !DILocation(line: 1633, column: 27, scope: !230)
!256 = !DILocalVariable(name: "res_tem_err", scope: !230, file: !1, line: 1634, type: !42)
!257 = !DILocation(line: 1634, column: 14, scope: !230)
!258 = !DILocation(line: 1634, column: 33, scope: !230)
!259 = !DILocation(line: 1634, column: 28, scope: !230)
!260 = !DILocation(line: 1634, column: 43, scope: !230)
!261 = !DILocation(line: 1634, column: 39, scope: !230)
!262 = !DILocation(line: 1635, column: 21, scope: !230)
!263 = !DILocation(line: 1635, column: 7, scope: !230)
!264 = !DILocation(line: 1635, column: 15, scope: !230)
!265 = !DILocation(line: 1635, column: 19, scope: !230)
!266 = !DILocation(line: 1636, column: 21, scope: !230)
!267 = !DILocation(line: 1636, column: 7, scope: !230)
!268 = !DILocation(line: 1636, column: 15, scope: !230)
!269 = !DILocation(line: 1636, column: 19, scope: !230)
!270 = !DILocation(line: 1637, column: 14, scope: !230)
!271 = !DILocation(line: 1637, column: 7, scope: !230)
!272 = !DILocation(line: 1641, column: 29, scope: !273)
!273 = distinct !DILexicalBlock(scope: !221, file: !1, line: 1640, column: 5)
!274 = !DILocation(line: 1641, column: 32, scope: !273)
!275 = !DILocation(line: 1641, column: 35, scope: !273)
!276 = !DILocation(line: 1641, column: 38, scope: !273)
!277 = !DILocation(line: 1641, column: 14, scope: !273)
!278 = !DILocation(line: 1641, column: 7, scope: !273)
!279 = !DILocation(line: 1643, column: 1, scope: !211)
!280 = distinct !DISubprogram(name: "hyperg_U_int_bge1", scope: !1, file: !1, line: 860, type: !49, isLocal: true, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!281 = !DILocalVariable(name: "a", arg: 1, scope: !280, file: !1, line: 860, type: !51)
!282 = !DILocation(line: 860, column: 29, scope: !280)
!283 = !DILocalVariable(name: "b", arg: 2, scope: !280, file: !1, line: 860, type: !51)
!284 = !DILocation(line: 860, column: 42, scope: !280)
!285 = !DILocalVariable(name: "x", arg: 3, scope: !280, file: !1, line: 860, type: !52)
!286 = !DILocation(line: 860, column: 58, scope: !280)
!287 = !DILocalVariable(name: "result", arg: 4, scope: !280, file: !1, line: 861, type: !53)
!288 = !DILocation(line: 861, column: 39, scope: !280)
!289 = !DILocation(line: 863, column: 6, scope: !290)
!290 = distinct !DILexicalBlock(scope: !280, file: !1, line: 863, column: 6)
!291 = !DILocation(line: 863, column: 8, scope: !290)
!292 = !DILocation(line: 863, column: 6, scope: !280)
!293 = !DILocation(line: 864, column: 5, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !1, line: 863, column: 14)
!295 = !DILocation(line: 864, column: 13, scope: !294)
!296 = !DILocation(line: 864, column: 17, scope: !294)
!297 = !DILocation(line: 865, column: 5, scope: !294)
!298 = !DILocation(line: 865, column: 13, scope: !294)
!299 = !DILocation(line: 865, column: 17, scope: !294)
!300 = !DILocation(line: 866, column: 5, scope: !294)
!301 = !DILocation(line: 866, column: 13, scope: !294)
!302 = !DILocation(line: 866, column: 17, scope: !294)
!303 = !DILocation(line: 867, column: 5, scope: !294)
!304 = !DILocation(line: 869, column: 11, scope: !305)
!305 = distinct !DILexicalBlock(scope: !290, file: !1, line: 869, column: 11)
!306 = !DILocation(line: 869, column: 13, scope: !305)
!307 = !DILocation(line: 869, column: 11, scope: !290)
!308 = !DILocation(line: 870, column: 21, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !1, line: 869, column: 20)
!310 = !DILocation(line: 870, column: 20, scope: !309)
!311 = !DILocation(line: 870, column: 25, scope: !309)
!312 = !DILocation(line: 870, column: 23, scope: !309)
!313 = !DILocation(line: 870, column: 5, scope: !309)
!314 = !DILocation(line: 870, column: 13, scope: !309)
!315 = !DILocation(line: 870, column: 18, scope: !309)
!316 = !DILocation(line: 871, column: 50, scope: !309)
!317 = !DILocation(line: 871, column: 45, scope: !309)
!318 = !DILocation(line: 871, column: 60, scope: !309)
!319 = !DILocation(line: 871, column: 55, scope: !320)
!320 = !DILexicalBlockFile(scope: !309, file: !1, discriminator: 1)
!321 = !DILocation(line: 871, column: 53, scope: !309)
!322 = !DILocation(line: 871, column: 42, scope: !309)
!323 = !DILocation(line: 871, column: 5, scope: !309)
!324 = !DILocation(line: 871, column: 13, scope: !309)
!325 = !DILocation(line: 871, column: 18, scope: !309)
!326 = !DILocation(line: 872, column: 49, scope: !309)
!327 = !DILocation(line: 872, column: 57, scope: !309)
!328 = !DILocation(line: 872, column: 44, scope: !309)
!329 = !DILocation(line: 872, column: 42, scope: !309)
!330 = !DILocation(line: 872, column: 5, scope: !309)
!331 = !DILocation(line: 872, column: 13, scope: !309)
!332 = !DILocation(line: 872, column: 17, scope: !309)
!333 = !DILocation(line: 873, column: 5, scope: !309)
!334 = !DILocation(line: 873, column: 13, scope: !309)
!335 = !DILocation(line: 873, column: 18, scope: !309)
!336 = !DILocation(line: 874, column: 5, scope: !309)
!337 = !DILocation(line: 876, column: 11, scope: !338)
!338 = distinct !DILexicalBlock(scope: !305, file: !1, line: 876, column: 11)
!339 = !DILocation(line: 876, column: 16, scope: !338)
!340 = !DILocation(line: 876, column: 18, scope: !338)
!341 = !DILocation(line: 876, column: 13, scope: !338)
!342 = !DILocation(line: 876, column: 11, scope: !305)
!343 = !DILocation(line: 879, column: 30, scope: !344)
!344 = distinct !DILexicalBlock(scope: !338, file: !1, line: 876, column: 23)
!345 = !DILocation(line: 879, column: 29, scope: !344)
!346 = !DILocation(line: 879, column: 36, scope: !344)
!347 = !DILocation(line: 879, column: 32, scope: !344)
!348 = !DILocation(line: 879, column: 31, scope: !344)
!349 = !DILocation(line: 879, column: 40, scope: !344)
!350 = !DILocation(line: 879, column: 12, scope: !351)
!351 = !DILexicalBlockFile(scope: !344, file: !1, discriminator: 1)
!352 = !DILocation(line: 879, column: 5, scope: !344)
!353 = !DILocation(line: 881, column: 11, scope: !354)
!354 = distinct !DILexicalBlock(scope: !338, file: !1, line: 881, column: 11)
!355 = !DILocation(line: 881, column: 11, scope: !356)
!356 = !DILexicalBlockFile(scope: !354, file: !1, discriminator: 1)
!357 = !DILocation(line: 881, column: 11, scope: !358)
!358 = !DILexicalBlockFile(scope: !354, file: !1, discriminator: 2)
!359 = !DILocation(line: 881, column: 11, scope: !360)
!360 = !DILexicalBlockFile(scope: !354, file: !1, discriminator: 3)
!361 = !DILocation(line: 881, column: 11, scope: !362)
!362 = !DILexicalBlockFile(scope: !354, file: !1, discriminator: 4)
!363 = !DILocation(line: 881, column: 11, scope: !338)
!364 = !DILocalVariable(name: "ln_pre_val", scope: !365, file: !1, line: 882, type: !52)
!365 = distinct !DILexicalBlock(scope: !354, file: !1, line: 881, column: 33)
!366 = !DILocation(line: 882, column: 18, scope: !365)
!367 = !DILocation(line: 882, column: 32, scope: !365)
!368 = !DILocation(line: 882, column: 31, scope: !365)
!369 = !DILocation(line: 882, column: 38, scope: !365)
!370 = !DILocation(line: 882, column: 34, scope: !365)
!371 = !DILocation(line: 882, column: 33, scope: !365)
!372 = !DILocalVariable(name: "ln_pre_err", scope: !365, file: !1, line: 883, type: !52)
!373 = !DILocation(line: 883, column: 18, scope: !365)
!374 = !DILocation(line: 883, column: 60, scope: !365)
!375 = !DILocation(line: 883, column: 55, scope: !365)
!376 = !DILocation(line: 883, column: 53, scope: !365)
!377 = !DILocalVariable(name: "asymp", scope: !365, file: !1, line: 884, type: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !55, line: 41, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !55, line: 37, size: 128, align: 64, elements: !380)
!380 = !{!381, !382}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !379, file: !55, line: 38, baseType: !42, size: 64, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !379, file: !55, line: 39, baseType: !42, size: 64, align: 64, offset: 64)
!383 = !DILocation(line: 884, column: 19, scope: !365)
!384 = !DILocalVariable(name: "stat_asymp", scope: !365, file: !1, line: 885, type: !43)
!385 = !DILocation(line: 885, column: 9, scope: !365)
!386 = !DILocation(line: 885, column: 39, scope: !365)
!387 = !DILocation(line: 885, column: 42, scope: !365)
!388 = !DILocation(line: 885, column: 45, scope: !365)
!389 = !DILocation(line: 885, column: 22, scope: !365)
!390 = !DILocalVariable(name: "stat_e", scope: !365, file: !1, line: 886, type: !43)
!391 = !DILocation(line: 886, column: 9, scope: !365)
!392 = !DILocation(line: 886, column: 44, scope: !365)
!393 = !DILocation(line: 886, column: 56, scope: !365)
!394 = !DILocation(line: 887, column: 53, scope: !365)
!395 = !DILocation(line: 887, column: 64, scope: !365)
!396 = !DILocation(line: 888, column: 47, scope: !365)
!397 = !DILocation(line: 886, column: 18, scope: !365)
!398 = !DILocation(line: 889, column: 12, scope: !365)
!399 = !DILocation(line: 889, column: 12, scope: !400)
!400 = !DILexicalBlockFile(scope: !365, file: !1, discriminator: 1)
!401 = !DILocation(line: 889, column: 12, scope: !402)
!402 = !DILexicalBlockFile(scope: !365, file: !1, discriminator: 2)
!403 = !DILocation(line: 889, column: 12, scope: !404)
!404 = !DILexicalBlockFile(scope: !365, file: !1, discriminator: 3)
!405 = !DILocation(line: 889, column: 12, scope: !406)
!406 = !DILexicalBlockFile(scope: !365, file: !1, discriminator: 4)
!407 = !DILocation(line: 889, column: 12, scope: !408)
!408 = !DILexicalBlockFile(scope: !365, file: !1, discriminator: 5)
!409 = !DILocation(line: 889, column: 12, scope: !410)
!410 = !DILexicalBlockFile(scope: !365, file: !1, discriminator: 6)
!411 = !DILocation(line: 889, column: 5, scope: !410)
!412 = !DILocation(line: 891, column: 11, scope: !413)
!413 = distinct !DILexicalBlock(scope: !354, file: !1, line: 891, column: 11)
!414 = !DILocation(line: 891, column: 11, scope: !415)
!415 = !DILexicalBlockFile(scope: !413, file: !1, discriminator: 1)
!416 = !DILocation(line: 891, column: 11, scope: !417)
!417 = !DILexicalBlockFile(scope: !413, file: !1, discriminator: 2)
!418 = !DILocation(line: 891, column: 11, scope: !419)
!419 = !DILexicalBlockFile(scope: !413, file: !1, discriminator: 3)
!420 = !DILocation(line: 891, column: 11, scope: !421)
!421 = !DILexicalBlockFile(scope: !413, file: !1, discriminator: 4)
!422 = !DILocation(line: 891, column: 11, scope: !423)
!423 = !DILexicalBlockFile(scope: !413, file: !1, discriminator: 5)
!424 = !DILocation(line: 891, column: 33, scope: !423)
!425 = !DILocation(line: 891, column: 40, scope: !426)
!426 = !DILexicalBlockFile(scope: !413, file: !1, discriminator: 6)
!427 = !DILocation(line: 891, column: 38, scope: !426)
!428 = !DILocation(line: 891, column: 44, scope: !426)
!429 = !DILocation(line: 891, column: 42, scope: !426)
!430 = !DILocation(line: 891, column: 46, scope: !426)
!431 = !DILocation(line: 891, column: 11, scope: !426)
!432 = !DILocalVariable(name: "ser", scope: !433, file: !1, line: 892, type: !378)
!433 = distinct !DILexicalBlock(scope: !413, file: !1, line: 891, column: 51)
!434 = !DILocation(line: 892, column: 19, scope: !433)
!435 = !DILocalVariable(name: "stat_ser", scope: !433, file: !1, line: 893, type: !51)
!436 = !DILocation(line: 893, column: 15, scope: !433)
!437 = !DILocation(line: 893, column: 42, scope: !433)
!438 = !DILocation(line: 893, column: 45, scope: !433)
!439 = !DILocation(line: 893, column: 48, scope: !433)
!440 = !DILocation(line: 893, column: 26, scope: !433)
!441 = !DILocation(line: 894, column: 23, scope: !433)
!442 = !DILocation(line: 894, column: 5, scope: !433)
!443 = !DILocation(line: 894, column: 13, scope: !433)
!444 = !DILocation(line: 894, column: 17, scope: !433)
!445 = !DILocation(line: 895, column: 23, scope: !433)
!446 = !DILocation(line: 895, column: 5, scope: !433)
!447 = !DILocation(line: 895, column: 13, scope: !433)
!448 = !DILocation(line: 895, column: 17, scope: !433)
!449 = !DILocation(line: 896, column: 5, scope: !433)
!450 = !DILocation(line: 896, column: 13, scope: !433)
!451 = !DILocation(line: 896, column: 17, scope: !433)
!452 = !DILocation(line: 897, column: 12, scope: !433)
!453 = !DILocation(line: 897, column: 5, scope: !433)
!454 = !DILocation(line: 899, column: 11, scope: !455)
!455 = distinct !DILexicalBlock(scope: !413, file: !1, line: 899, column: 11)
!456 = !DILocation(line: 899, column: 13, scope: !455)
!457 = !DILocation(line: 899, column: 11, scope: !413)
!458 = !DILocalVariable(name: "scale_count", scope: !459, file: !1, line: 902, type: !43)
!459 = distinct !DILexicalBlock(scope: !455, file: !1, line: 899, column: 18)
!460 = !DILocation(line: 902, column: 9, scope: !459)
!461 = !DILocalVariable(name: "scale_factor", scope: !459, file: !1, line: 903, type: !52)
!462 = !DILocation(line: 903, column: 18, scope: !459)
!463 = !DILocalVariable(name: "lnm", scope: !459, file: !1, line: 904, type: !378)
!464 = !DILocation(line: 904, column: 19, scope: !459)
!465 = !DILocalVariable(name: "y", scope: !459, file: !1, line: 905, type: !378)
!466 = !DILocation(line: 905, column: 19, scope: !459)
!467 = !DILocalVariable(name: "lnscale", scope: !459, file: !1, line: 906, type: !42)
!468 = !DILocation(line: 906, column: 12, scope: !459)
!469 = !DILocalVariable(name: "Uap1", scope: !459, file: !1, line: 907, type: !42)
!470 = !DILocation(line: 907, column: 12, scope: !459)
!471 = !DILocalVariable(name: "Ua", scope: !459, file: !1, line: 908, type: !42)
!472 = !DILocation(line: 908, column: 12, scope: !459)
!473 = !DILocation(line: 908, column: 20, scope: !459)
!474 = !DILocation(line: 908, column: 19, scope: !459)
!475 = !DILocation(line: 908, column: 24, scope: !459)
!476 = !DILocation(line: 908, column: 22, scope: !459)
!477 = !DILocalVariable(name: "Uam1", scope: !459, file: !1, line: 909, type: !42)
!478 = !DILocation(line: 909, column: 12, scope: !459)
!479 = !DILocalVariable(name: "ap", scope: !459, file: !1, line: 910, type: !43)
!480 = !DILocation(line: 910, column: 9, scope: !459)
!481 = !DILocation(line: 912, column: 11, scope: !482)
!482 = distinct !DILexicalBlock(scope: !459, file: !1, line: 912, column: 5)
!483 = !DILocation(line: 912, column: 9, scope: !482)
!484 = !DILocation(line: 912, column: 16, scope: !485)
!485 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 1)
!486 = distinct !DILexicalBlock(scope: !482, file: !1, line: 912, column: 5)
!487 = !DILocation(line: 912, column: 19, scope: !485)
!488 = !DILocation(line: 912, column: 18, scope: !485)
!489 = !DILocation(line: 912, column: 5, scope: !485)
!490 = !DILocation(line: 913, column: 14, scope: !491)
!491 = distinct !DILexicalBlock(scope: !486, file: !1, line: 912, column: 28)
!492 = !DILocation(line: 913, column: 18, scope: !491)
!493 = !DILocation(line: 913, column: 20, scope: !491)
!494 = !DILocation(line: 913, column: 19, scope: !491)
!495 = !DILocation(line: 913, column: 22, scope: !491)
!496 = !DILocation(line: 913, column: 16, scope: !491)
!497 = !DILocation(line: 913, column: 28, scope: !491)
!498 = !DILocation(line: 913, column: 27, scope: !491)
!499 = !DILocation(line: 913, column: 36, scope: !491)
!500 = !DILocation(line: 913, column: 42, scope: !491)
!501 = !DILocation(line: 913, column: 41, scope: !491)
!502 = !DILocation(line: 913, column: 37, scope: !491)
!503 = !DILocation(line: 913, column: 45, scope: !491)
!504 = !DILocation(line: 913, column: 44, scope: !491)
!505 = !DILocation(line: 913, column: 48, scope: !491)
!506 = !DILocation(line: 913, column: 47, scope: !491)
!507 = !DILocation(line: 913, column: 33, scope: !491)
!508 = !DILocation(line: 913, column: 12, scope: !491)
!509 = !DILocation(line: 914, column: 14, scope: !491)
!510 = !DILocation(line: 914, column: 12, scope: !491)
!511 = !DILocation(line: 915, column: 14, scope: !491)
!512 = !DILocation(line: 915, column: 12, scope: !491)
!513 = !DILocation(line: 916, column: 7, scope: !491)
!514 = distinct !{!514, !513}
!515 = !DILocalVariable(name: "au0", scope: !516, file: !1, line: 916, type: !42)
!516 = distinct !DILexicalBlock(scope: !491, file: !1, line: 916, column: 7)
!517 = !DILocation(line: 916, column: 7, scope: !516)
!518 = !DILocation(line: 916, column: 7, scope: !519)
!519 = !DILexicalBlockFile(scope: !516, file: !1, discriminator: 1)
!520 = !DILocation(line: 916, column: 7, scope: !521)
!521 = !DILexicalBlockFile(scope: !522, file: !1, discriminator: 2)
!522 = distinct !DILexicalBlock(scope: !523, file: !1, line: 916, column: 7)
!523 = distinct !DILexicalBlock(scope: !516, file: !1, line: 916, column: 7)
!524 = !DILocation(line: 916, column: 7, scope: !525)
!525 = !DILexicalBlockFile(scope: !526, file: !1, discriminator: 3)
!526 = distinct !DILexicalBlock(scope: !523, file: !1, line: 916, column: 7)
!527 = !DILocation(line: 916, column: 7, scope: !528)
!528 = !DILexicalBlockFile(scope: !529, file: !1, discriminator: 4)
!529 = distinct !DILexicalBlock(scope: !526, file: !1, line: 916, column: 7)
!530 = !DILocation(line: 916, column: 7, scope: !531)
!531 = !DILexicalBlockFile(scope: !516, file: !1, discriminator: 5)
!532 = !DILocation(line: 917, column: 5, scope: !491)
!533 = !DILocation(line: 912, column: 24, scope: !534)
!534 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 2)
!535 = !DILocation(line: 912, column: 5, scope: !534)
!536 = distinct !{!536, !537}
!537 = !DILocation(line: 912, column: 5, scope: !459)
!538 = !DILocation(line: 919, column: 15, scope: !459)
!539 = !DILocation(line: 919, column: 13, scope: !459)
!540 = !DILocation(line: 920, column: 15, scope: !459)
!541 = !DILocation(line: 920, column: 27, scope: !459)
!542 = !DILocation(line: 920, column: 26, scope: !459)
!543 = !DILocation(line: 920, column: 9, scope: !459)
!544 = !DILocation(line: 920, column: 13, scope: !459)
!545 = !DILocation(line: 921, column: 48, scope: !459)
!546 = !DILocation(line: 921, column: 39, scope: !459)
!547 = !DILocation(line: 921, column: 37, scope: !459)
!548 = !DILocation(line: 921, column: 9, scope: !459)
!549 = !DILocation(line: 921, column: 13, scope: !459)
!550 = !DILocation(line: 922, column: 13, scope: !459)
!551 = !DILocation(line: 922, column: 7, scope: !459)
!552 = !DILocation(line: 922, column: 11, scope: !459)
!553 = !DILocation(line: 923, column: 43, scope: !459)
!554 = !DILocation(line: 923, column: 38, scope: !459)
!555 = !DILocation(line: 923, column: 45, scope: !459)
!556 = !DILocation(line: 923, column: 35, scope: !459)
!557 = !DILocation(line: 923, column: 58, scope: !459)
!558 = !DILocation(line: 923, column: 53, scope: !559)
!559 = !DILexicalBlockFile(scope: !459, file: !1, discriminator: 1)
!560 = !DILocation(line: 923, column: 51, scope: !459)
!561 = !DILocation(line: 923, column: 7, scope: !459)
!562 = !DILocation(line: 923, column: 11, scope: !459)
!563 = !DILocation(line: 924, column: 42, scope: !459)
!564 = !DILocation(line: 924, column: 51, scope: !459)
!565 = !DILocation(line: 924, column: 58, scope: !459)
!566 = !DILocation(line: 924, column: 65, scope: !459)
!567 = !DILocation(line: 924, column: 70, scope: !459)
!568 = !DILocation(line: 924, column: 12, scope: !459)
!569 = !DILocation(line: 924, column: 5, scope: !459)
!570 = !DILocation(line: 926, column: 11, scope: !571)
!571 = distinct !DILexicalBlock(scope: !455, file: !1, line: 926, column: 11)
!572 = !DILocation(line: 926, column: 20, scope: !571)
!573 = !DILocation(line: 926, column: 19, scope: !571)
!574 = !DILocation(line: 926, column: 24, scope: !571)
!575 = !DILocation(line: 926, column: 22, scope: !571)
!576 = !DILocation(line: 926, column: 13, scope: !571)
!577 = !DILocation(line: 926, column: 11, scope: !455)
!578 = !DILocalVariable(name: "scale_count", scope: !579, file: !1, line: 929, type: !43)
!579 = distinct !DILexicalBlock(scope: !571, file: !1, line: 926, column: 27)
!580 = !DILocation(line: 929, column: 9, scope: !579)
!581 = !DILocalVariable(name: "scale_factor", scope: !579, file: !1, line: 930, type: !52)
!582 = !DILocation(line: 930, column: 18, scope: !579)
!583 = !DILocalVariable(name: "r_Ua", scope: !579, file: !1, line: 931, type: !378)
!584 = !DILocation(line: 931, column: 19, scope: !579)
!585 = !DILocalVariable(name: "lnm", scope: !579, file: !1, line: 932, type: !378)
!586 = !DILocation(line: 932, column: 19, scope: !579)
!587 = !DILocalVariable(name: "y", scope: !579, file: !1, line: 933, type: !378)
!588 = !DILocation(line: 933, column: 19, scope: !579)
!589 = !DILocalVariable(name: "lnscale", scope: !579, file: !1, line: 934, type: !42)
!590 = !DILocation(line: 934, column: 12, scope: !579)
!591 = !DILocalVariable(name: "lm", scope: !579, file: !1, line: 935, type: !42)
!592 = !DILocation(line: 935, column: 12, scope: !579)
!593 = !DILocalVariable(name: "stat_1", scope: !579, file: !1, line: 936, type: !43)
!594 = !DILocation(line: 936, column: 9, scope: !579)
!595 = !DILocation(line: 936, column: 45, scope: !579)
!596 = !DILocation(line: 936, column: 48, scope: !579)
!597 = !DILocation(line: 936, column: 18, scope: !579)
!598 = !DILocalVariable(name: "stat_e", scope: !579, file: !1, line: 937, type: !43)
!599 = !DILocation(line: 937, column: 9, scope: !579)
!600 = !DILocalVariable(name: "Uam1", scope: !579, file: !1, line: 938, type: !42)
!601 = !DILocation(line: 938, column: 12, scope: !579)
!602 = !DILocalVariable(name: "Ua", scope: !579, file: !1, line: 939, type: !42)
!603 = !DILocation(line: 939, column: 12, scope: !579)
!604 = !DILocation(line: 939, column: 24, scope: !579)
!605 = !DILocalVariable(name: "Uap1", scope: !579, file: !1, line: 940, type: !42)
!606 = !DILocation(line: 940, column: 12, scope: !579)
!607 = !DILocalVariable(name: "ap", scope: !579, file: !1, line: 941, type: !43)
!608 = !DILocation(line: 941, column: 9, scope: !579)
!609 = !DILocation(line: 943, column: 18, scope: !579)
!610 = !DILocation(line: 943, column: 17, scope: !579)
!611 = !DILocation(line: 943, column: 13, scope: !579)
!612 = !DILocation(line: 943, column: 10, scope: !579)
!613 = !DILocation(line: 945, column: 11, scope: !614)
!614 = distinct !DILexicalBlock(scope: !579, file: !1, line: 945, column: 5)
!615 = !DILocation(line: 945, column: 9, scope: !614)
!616 = !DILocation(line: 945, column: 15, scope: !617)
!617 = !DILexicalBlockFile(scope: !618, file: !1, discriminator: 1)
!618 = distinct !DILexicalBlock(scope: !614, file: !1, line: 945, column: 5)
!619 = !DILocation(line: 945, column: 18, scope: !617)
!620 = !DILocation(line: 945, column: 17, scope: !617)
!621 = !DILocation(line: 945, column: 5, scope: !617)
!622 = !DILocation(line: 946, column: 16, scope: !623)
!623 = distinct !DILexicalBlock(scope: !618, file: !1, line: 945, column: 27)
!624 = !DILocation(line: 946, column: 24, scope: !623)
!625 = !DILocation(line: 946, column: 30, scope: !623)
!626 = !DILocation(line: 946, column: 29, scope: !623)
!627 = !DILocation(line: 946, column: 25, scope: !623)
!628 = !DILocation(line: 946, column: 33, scope: !623)
!629 = !DILocation(line: 946, column: 32, scope: !623)
!630 = !DILocation(line: 946, column: 36, scope: !623)
!631 = !DILocation(line: 946, column: 35, scope: !623)
!632 = !DILocation(line: 946, column: 21, scope: !623)
!633 = !DILocation(line: 946, column: 14, scope: !623)
!634 = !DILocation(line: 946, column: 41, scope: !623)
!635 = !DILocation(line: 946, column: 49, scope: !623)
!636 = !DILocation(line: 946, column: 48, scope: !623)
!637 = !DILocation(line: 946, column: 52, scope: !623)
!638 = !DILocation(line: 946, column: 51, scope: !623)
!639 = !DILocation(line: 946, column: 43, scope: !623)
!640 = !DILocation(line: 946, column: 39, scope: !623)
!641 = !DILocation(line: 946, column: 12, scope: !623)
!642 = !DILocation(line: 947, column: 14, scope: !623)
!643 = !DILocation(line: 947, column: 12, scope: !623)
!644 = !DILocation(line: 948, column: 14, scope: !623)
!645 = !DILocation(line: 948, column: 12, scope: !623)
!646 = !DILocation(line: 949, column: 7, scope: !623)
!647 = distinct !{!647, !646}
!648 = !DILocalVariable(name: "au0", scope: !649, file: !1, line: 949, type: !42)
!649 = distinct !DILexicalBlock(scope: !623, file: !1, line: 949, column: 7)
!650 = !DILocation(line: 949, column: 7, scope: !649)
!651 = !DILocation(line: 949, column: 7, scope: !652)
!652 = !DILexicalBlockFile(scope: !649, file: !1, discriminator: 1)
!653 = !DILocation(line: 949, column: 7, scope: !654)
!654 = !DILexicalBlockFile(scope: !655, file: !1, discriminator: 2)
!655 = distinct !DILexicalBlock(scope: !656, file: !1, line: 949, column: 7)
!656 = distinct !DILexicalBlock(scope: !649, file: !1, line: 949, column: 7)
!657 = !DILocation(line: 949, column: 7, scope: !658)
!658 = !DILexicalBlockFile(scope: !659, file: !1, discriminator: 3)
!659 = distinct !DILexicalBlock(scope: !656, file: !1, line: 949, column: 7)
!660 = !DILocation(line: 949, column: 7, scope: !661)
!661 = !DILexicalBlockFile(scope: !662, file: !1, discriminator: 4)
!662 = distinct !DILexicalBlock(scope: !659, file: !1, line: 949, column: 7)
!663 = !DILocation(line: 949, column: 7, scope: !664)
!664 = !DILexicalBlockFile(scope: !649, file: !1, discriminator: 5)
!665 = !DILocation(line: 950, column: 5, scope: !623)
!666 = !DILocation(line: 945, column: 23, scope: !667)
!667 = !DILexicalBlockFile(scope: !618, file: !1, discriminator: 2)
!668 = !DILocation(line: 945, column: 5, scope: !667)
!669 = distinct !{!669, !670}
!670 = !DILocation(line: 945, column: 5, scope: !579)
!671 = !DILocation(line: 952, column: 15, scope: !579)
!672 = !DILocation(line: 952, column: 13, scope: !579)
!673 = !DILocation(line: 953, column: 15, scope: !579)
!674 = !DILocation(line: 953, column: 20, scope: !579)
!675 = !DILocation(line: 953, column: 34, scope: !579)
!676 = !DILocation(line: 953, column: 32, scope: !579)
!677 = !DILocation(line: 953, column: 18, scope: !579)
!678 = !DILocation(line: 953, column: 9, scope: !579)
!679 = !DILocation(line: 953, column: 13, scope: !579)
!680 = !DILocation(line: 954, column: 45, scope: !579)
!681 = !DILocation(line: 954, column: 40, scope: !579)
!682 = !DILocation(line: 954, column: 56, scope: !579)
!683 = !DILocation(line: 954, column: 68, scope: !579)
!684 = !DILocation(line: 954, column: 67, scope: !579)
!685 = !DILocation(line: 954, column: 51, scope: !686)
!686 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 1)
!687 = !DILocation(line: 954, column: 49, scope: !579)
!688 = !DILocation(line: 954, column: 37, scope: !579)
!689 = !DILocation(line: 954, column: 9, scope: !579)
!690 = !DILocation(line: 954, column: 13, scope: !579)
!691 = !DILocation(line: 955, column: 14, scope: !579)
!692 = !DILocation(line: 955, column: 7, scope: !579)
!693 = !DILocation(line: 955, column: 12, scope: !579)
!694 = !DILocation(line: 956, column: 24, scope: !579)
!695 = !DILocation(line: 956, column: 33, scope: !579)
!696 = !DILocation(line: 956, column: 27, scope: !579)
!697 = !DILocation(line: 956, column: 14, scope: !579)
!698 = !DILocation(line: 956, column: 45, scope: !579)
!699 = !DILocation(line: 956, column: 40, scope: !686)
!700 = !DILocation(line: 956, column: 38, scope: !579)
!701 = !DILocation(line: 956, column: 7, scope: !579)
!702 = !DILocation(line: 956, column: 12, scope: !579)
!703 = !DILocation(line: 957, column: 44, scope: !579)
!704 = !DILocation(line: 957, column: 39, scope: !579)
!705 = !DILocation(line: 957, column: 47, scope: !579)
!706 = !DILocation(line: 957, column: 36, scope: !579)
!707 = !DILocation(line: 957, column: 61, scope: !579)
!708 = !DILocation(line: 957, column: 56, scope: !686)
!709 = !DILocation(line: 957, column: 54, scope: !579)
!710 = !DILocation(line: 957, column: 7, scope: !579)
!711 = !DILocation(line: 957, column: 11, scope: !579)
!712 = !DILocation(line: 958, column: 44, scope: !579)
!713 = !DILocation(line: 958, column: 53, scope: !579)
!714 = !DILocation(line: 958, column: 60, scope: !579)
!715 = !DILocation(line: 958, column: 67, scope: !579)
!716 = !DILocation(line: 958, column: 72, scope: !579)
!717 = !DILocation(line: 958, column: 14, scope: !579)
!718 = !DILocation(line: 958, column: 12, scope: !579)
!719 = !DILocation(line: 959, column: 12, scope: !579)
!720 = !DILocation(line: 959, column: 12, scope: !686)
!721 = !DILocation(line: 959, column: 12, scope: !722)
!722 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 2)
!723 = !DILocation(line: 959, column: 12, scope: !724)
!724 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 3)
!725 = !DILocation(line: 959, column: 12, scope: !726)
!726 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 4)
!727 = !DILocation(line: 959, column: 12, scope: !728)
!728 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 5)
!729 = !DILocation(line: 959, column: 12, scope: !730)
!730 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 6)
!731 = !DILocation(line: 959, column: 5, scope: !730)
!732 = !DILocation(line: 962, column: 8, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !1, line: 962, column: 8)
!734 = distinct !DILexicalBlock(scope: !571, file: !1, line: 961, column: 8)
!735 = !DILocation(line: 962, column: 13, scope: !733)
!736 = !DILocation(line: 962, column: 10, scope: !733)
!737 = !DILocation(line: 962, column: 8, scope: !734)
!738 = !DILocalVariable(name: "scale_factor", scope: !739, file: !1, line: 966, type: !52)
!739 = distinct !DILexicalBlock(scope: !733, file: !1, line: 962, column: 16)
!740 = !DILocation(line: 966, column: 20, scope: !739)
!741 = !DILocalVariable(name: "scale_count", scope: !739, file: !1, line: 967, type: !43)
!742 = !DILocation(line: 967, column: 11, scope: !739)
!743 = !DILocalVariable(name: "stat_CF1", scope: !739, file: !1, line: 968, type: !43)
!744 = !DILocation(line: 968, column: 11, scope: !739)
!745 = !DILocalVariable(name: "ru", scope: !739, file: !1, line: 969, type: !42)
!746 = !DILocation(line: 969, column: 14, scope: !739)
!747 = !DILocalVariable(name: "CF1_count", scope: !739, file: !1, line: 970, type: !43)
!748 = !DILocation(line: 970, column: 11, scope: !739)
!749 = !DILocalVariable(name: "a_target", scope: !739, file: !1, line: 971, type: !43)
!750 = !DILocation(line: 971, column: 11, scope: !739)
!751 = !DILocalVariable(name: "lnU_target", scope: !739, file: !1, line: 972, type: !42)
!752 = !DILocation(line: 972, column: 14, scope: !739)
!753 = !DILocalVariable(name: "Ua", scope: !739, file: !1, line: 973, type: !42)
!754 = !DILocation(line: 973, column: 14, scope: !739)
!755 = !DILocalVariable(name: "Uap1", scope: !739, file: !1, line: 974, type: !42)
!756 = !DILocation(line: 974, column: 14, scope: !739)
!757 = !DILocalVariable(name: "Uam1", scope: !739, file: !1, line: 975, type: !42)
!758 = !DILocation(line: 975, column: 14, scope: !739)
!759 = !DILocalVariable(name: "ap", scope: !739, file: !1, line: 976, type: !43)
!760 = !DILocation(line: 976, column: 11, scope: !739)
!761 = !DILocation(line: 978, column: 10, scope: !762)
!762 = distinct !DILexicalBlock(scope: !739, file: !1, line: 978, column: 10)
!763 = !DILocation(line: 978, column: 14, scope: !762)
!764 = !DILocation(line: 978, column: 16, scope: !762)
!765 = !DILocation(line: 978, column: 12, scope: !762)
!766 = !DILocation(line: 978, column: 10, scope: !739)
!767 = !DILocation(line: 979, column: 20, scope: !768)
!768 = distinct !DILexicalBlock(scope: !762, file: !1, line: 978, column: 21)
!769 = !DILocation(line: 979, column: 21, scope: !768)
!770 = !DILocation(line: 979, column: 18, scope: !768)
!771 = !DILocation(line: 980, column: 23, scope: !768)
!772 = !DILocation(line: 980, column: 22, scope: !768)
!773 = !DILocation(line: 980, column: 36, scope: !768)
!774 = !DILocation(line: 980, column: 32, scope: !768)
!775 = !DILocation(line: 980, column: 31, scope: !768)
!776 = !DILocation(line: 980, column: 20, scope: !768)
!777 = !DILocation(line: 981, column: 7, scope: !768)
!778 = !DILocation(line: 983, column: 18, scope: !779)
!779 = distinct !DILexicalBlock(scope: !762, file: !1, line: 982, column: 12)
!780 = !DILocation(line: 984, column: 20, scope: !779)
!781 = !DILocation(line: 987, column: 31, scope: !739)
!782 = !DILocation(line: 987, column: 34, scope: !739)
!783 = !DILocation(line: 987, column: 40, scope: !739)
!784 = !DILocation(line: 987, column: 18, scope: !739)
!785 = !DILocation(line: 987, column: 16, scope: !739)
!786 = !DILocation(line: 989, column: 12, scope: !739)
!787 = !DILocation(line: 990, column: 14, scope: !739)
!788 = !DILocation(line: 990, column: 17, scope: !739)
!789 = !DILocation(line: 990, column: 16, scope: !739)
!790 = !DILocation(line: 990, column: 21, scope: !739)
!791 = !DILocation(line: 990, column: 19, scope: !739)
!792 = !DILocation(line: 990, column: 12, scope: !739)
!793 = !DILocation(line: 991, column: 14, scope: !794)
!794 = distinct !DILexicalBlock(scope: !739, file: !1, line: 991, column: 7)
!795 = !DILocation(line: 991, column: 13, scope: !794)
!796 = !DILocation(line: 991, column: 11, scope: !794)
!797 = !DILocation(line: 991, column: 17, scope: !798)
!798 = !DILexicalBlockFile(scope: !799, file: !1, discriminator: 1)
!799 = distinct !DILexicalBlock(scope: !794, file: !1, line: 991, column: 7)
!800 = !DILocation(line: 991, column: 20, scope: !798)
!801 = !DILocation(line: 991, column: 19, scope: !798)
!802 = !DILocation(line: 991, column: 7, scope: !798)
!803 = !DILocation(line: 992, column: 19, scope: !804)
!804 = distinct !DILexicalBlock(scope: !799, file: !1, line: 991, column: 36)
!805 = !DILocation(line: 992, column: 25, scope: !804)
!806 = !DILocation(line: 992, column: 24, scope: !804)
!807 = !DILocation(line: 992, column: 20, scope: !804)
!808 = !DILocation(line: 992, column: 28, scope: !804)
!809 = !DILocation(line: 992, column: 27, scope: !804)
!810 = !DILocation(line: 992, column: 31, scope: !804)
!811 = !DILocation(line: 992, column: 30, scope: !804)
!812 = !DILocation(line: 992, column: 36, scope: !804)
!813 = !DILocation(line: 992, column: 44, scope: !804)
!814 = !DILocation(line: 992, column: 43, scope: !804)
!815 = !DILocation(line: 992, column: 47, scope: !804)
!816 = !DILocation(line: 992, column: 46, scope: !804)
!817 = !DILocation(line: 992, column: 38, scope: !804)
!818 = !DILocation(line: 992, column: 50, scope: !804)
!819 = !DILocation(line: 992, column: 49, scope: !804)
!820 = !DILocation(line: 992, column: 34, scope: !804)
!821 = !DILocation(line: 992, column: 16, scope: !804)
!822 = !DILocation(line: 992, column: 14, scope: !804)
!823 = !DILocation(line: 993, column: 16, scope: !804)
!824 = !DILocation(line: 993, column: 14, scope: !804)
!825 = !DILocation(line: 994, column: 16, scope: !804)
!826 = !DILocation(line: 994, column: 14, scope: !804)
!827 = !DILocation(line: 995, column: 9, scope: !804)
!828 = distinct !{!828, !827}
!829 = !DILocalVariable(name: "au0", scope: !830, file: !1, line: 995, type: !42)
!830 = distinct !DILexicalBlock(scope: !804, file: !1, line: 995, column: 9)
!831 = !DILocation(line: 995, column: 9, scope: !830)
!832 = !DILocation(line: 995, column: 9, scope: !833)
!833 = !DILexicalBlockFile(scope: !830, file: !1, discriminator: 1)
!834 = !DILocation(line: 995, column: 9, scope: !835)
!835 = !DILexicalBlockFile(scope: !836, file: !1, discriminator: 2)
!836 = distinct !DILexicalBlock(scope: !837, file: !1, line: 995, column: 9)
!837 = distinct !DILexicalBlock(scope: !830, file: !1, line: 995, column: 9)
!838 = !DILocation(line: 995, column: 9, scope: !839)
!839 = !DILexicalBlockFile(scope: !840, file: !1, discriminator: 3)
!840 = distinct !DILexicalBlock(scope: !837, file: !1, line: 995, column: 9)
!841 = !DILocation(line: 995, column: 9, scope: !842)
!842 = !DILexicalBlockFile(scope: !843, file: !1, discriminator: 4)
!843 = distinct !DILexicalBlock(scope: !840, file: !1, line: 995, column: 9)
!844 = !DILocation(line: 995, column: 9, scope: !845)
!845 = !DILexicalBlockFile(scope: !830, file: !1, discriminator: 5)
!846 = !DILocation(line: 996, column: 7, scope: !804)
!847 = !DILocation(line: 991, column: 32, scope: !848)
!848 = !DILexicalBlockFile(scope: !799, file: !1, discriminator: 2)
!849 = !DILocation(line: 991, column: 7, scope: !848)
!850 = distinct !{!850, !851}
!851 = !DILocation(line: 991, column: 7, scope: !739)
!852 = !DILocation(line: 998, column: 10, scope: !853)
!853 = distinct !DILexicalBlock(scope: !739, file: !1, line: 998, column: 10)
!854 = !DILocation(line: 998, column: 13, scope: !853)
!855 = !DILocation(line: 998, column: 10, scope: !739)
!856 = !DILocation(line: 999, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !853, file: !1, line: 998, column: 21)
!858 = !DILocation(line: 999, column: 17, scope: !857)
!859 = !DILocation(line: 999, column: 21, scope: !857)
!860 = !DILocation(line: 1000, column: 9, scope: !857)
!861 = !DILocation(line: 1000, column: 17, scope: !857)
!862 = !DILocation(line: 1000, column: 21, scope: !857)
!863 = !DILocation(line: 1001, column: 9, scope: !857)
!864 = !DILocation(line: 1001, column: 17, scope: !857)
!865 = !DILocation(line: 1001, column: 21, scope: !857)
!866 = !DILocation(line: 1002, column: 9, scope: !857)
!867 = distinct !{!867, !866}
!868 = !DILocation(line: 1002, column: 9, scope: !869)
!869 = !DILexicalBlockFile(scope: !870, file: !1, discriminator: 1)
!870 = distinct !DILexicalBlock(scope: !857, file: !1, line: 1002, column: 9)
!871 = !DILocation(line: 1003, column: 7, scope: !857)
!872 = !DILocalVariable(name: "lnscl", scope: !873, file: !1, line: 1005, type: !42)
!873 = distinct !DILexicalBlock(scope: !853, file: !1, line: 1004, column: 12)
!874 = !DILocation(line: 1005, column: 16, scope: !873)
!875 = !DILocation(line: 1005, column: 25, scope: !873)
!876 = !DILocation(line: 1005, column: 24, scope: !873)
!877 = !DILocation(line: 1005, column: 37, scope: !873)
!878 = !DILocation(line: 1005, column: 36, scope: !873)
!879 = !DILocalVariable(name: "lnpre_val", scope: !873, file: !1, line: 1006, type: !42)
!880 = !DILocation(line: 1006, column: 16, scope: !873)
!881 = !DILocation(line: 1006, column: 28, scope: !873)
!882 = !DILocation(line: 1006, column: 41, scope: !873)
!883 = !DILocation(line: 1006, column: 39, scope: !873)
!884 = !DILocalVariable(name: "lnpre_err", scope: !873, file: !1, line: 1007, type: !42)
!885 = !DILocation(line: 1007, column: 16, scope: !873)
!886 = !DILocation(line: 1007, column: 58, scope: !873)
!887 = !DILocation(line: 1007, column: 53, scope: !873)
!888 = !DILocation(line: 1007, column: 77, scope: !873)
!889 = !DILocation(line: 1007, column: 72, scope: !890)
!890 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 1)
!891 = !DILocation(line: 1007, column: 70, scope: !873)
!892 = !DILocation(line: 1007, column: 50, scope: !873)
!893 = !DILocalVariable(name: "oUa_err", scope: !873, file: !1, line: 1008, type: !42)
!894 = !DILocation(line: 1008, column: 16, scope: !873)
!895 = !DILocation(line: 1008, column: 40, scope: !873)
!896 = !DILocation(line: 1008, column: 49, scope: !873)
!897 = !DILocation(line: 1008, column: 48, scope: !873)
!898 = !DILocation(line: 1008, column: 35, scope: !873)
!899 = !DILocation(line: 1008, column: 54, scope: !873)
!900 = !DILocation(line: 1008, column: 52, scope: !873)
!901 = !DILocation(line: 1008, column: 64, scope: !873)
!902 = !DILocation(line: 1008, column: 32, scope: !873)
!903 = !DILocation(line: 1008, column: 71, scope: !873)
!904 = !DILocation(line: 1008, column: 100, scope: !873)
!905 = !DILocation(line: 1008, column: 99, scope: !873)
!906 = !DILocation(line: 1008, column: 91, scope: !890)
!907 = !DILocation(line: 1008, column: 89, scope: !873)
!908 = !DILocalVariable(name: "stat_e", scope: !873, file: !1, line: 1009, type: !43)
!909 = !DILocation(line: 1009, column: 13, scope: !873)
!910 = !DILocation(line: 1009, column: 48, scope: !873)
!911 = !DILocation(line: 1009, column: 59, scope: !873)
!912 = !DILocation(line: 1010, column: 55, scope: !873)
!913 = !DILocation(line: 1010, column: 54, scope: !873)
!914 = !DILocation(line: 1010, column: 59, scope: !873)
!915 = !DILocation(line: 1011, column: 51, scope: !873)
!916 = !DILocation(line: 1009, column: 22, scope: !873)
!917 = !DILocation(line: 1012, column: 16, scope: !873)
!918 = !DILocation(line: 1012, column: 16, scope: !890)
!919 = !DILocation(line: 1012, column: 16, scope: !920)
!920 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 2)
!921 = !DILocation(line: 1012, column: 16, scope: !922)
!922 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 3)
!923 = !DILocation(line: 1012, column: 16, scope: !924)
!924 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 4)
!925 = !DILocation(line: 1012, column: 16, scope: !926)
!926 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 5)
!927 = !DILocation(line: 1012, column: 16, scope: !928)
!928 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 6)
!929 = !DILocation(line: 1012, column: 9, scope: !928)
!930 = !DILocation(line: 1014, column: 5, scope: !739)
!931 = !DILocalVariable(name: "scale_factor", scope: !932, file: !1, line: 1022, type: !52)
!932 = distinct !DILexicalBlock(scope: !733, file: !1, line: 1015, column: 10)
!933 = !DILocation(line: 1022, column: 20, scope: !932)
!934 = !DILocalVariable(name: "scale_count_for", scope: !932, file: !1, line: 1023, type: !43)
!935 = !DILocation(line: 1023, column: 11, scope: !932)
!936 = !DILocalVariable(name: "scale_count_bck", scope: !932, file: !1, line: 1024, type: !43)
!937 = !DILocation(line: 1024, column: 11, scope: !932)
!938 = !DILocalVariable(name: "a0", scope: !932, file: !1, line: 1025, type: !43)
!939 = !DILocation(line: 1025, column: 11, scope: !932)
!940 = !DILocalVariable(name: "a1", scope: !932, file: !1, line: 1026, type: !43)
!941 = !DILocation(line: 1026, column: 11, scope: !932)
!942 = !DILocation(line: 1026, column: 16, scope: !932)
!943 = !DILocation(line: 1026, column: 31, scope: !932)
!944 = !DILocation(line: 1026, column: 33, scope: !932)
!945 = !DILocation(line: 1026, column: 32, scope: !932)
!946 = !DILocation(line: 1026, column: 29, scope: !932)
!947 = !DILocation(line: 1026, column: 38, scope: !932)
!948 = !DILocation(line: 1026, column: 36, scope: !932)
!949 = !DILocation(line: 1026, column: 21, scope: !932)
!950 = !DILocation(line: 1026, column: 19, scope: !932)
!951 = !DILocalVariable(name: "Ua1_bck_val", scope: !932, file: !1, line: 1027, type: !42)
!952 = !DILocation(line: 1027, column: 14, scope: !932)
!953 = !DILocalVariable(name: "Ua1_bck_err", scope: !932, file: !1, line: 1028, type: !42)
!954 = !DILocation(line: 1028, column: 14, scope: !932)
!955 = !DILocalVariable(name: "Ua1_for_val", scope: !932, file: !1, line: 1029, type: !42)
!956 = !DILocation(line: 1029, column: 14, scope: !932)
!957 = !DILocalVariable(name: "Ua1_for_err", scope: !932, file: !1, line: 1030, type: !42)
!958 = !DILocation(line: 1030, column: 14, scope: !932)
!959 = !DILocalVariable(name: "stat_for", scope: !932, file: !1, line: 1031, type: !43)
!960 = !DILocation(line: 1031, column: 11, scope: !932)
!961 = !DILocalVariable(name: "stat_bck", scope: !932, file: !1, line: 1032, type: !43)
!962 = !DILocation(line: 1032, column: 11, scope: !932)
!963 = !DILocalVariable(name: "lm_for", scope: !932, file: !1, line: 1033, type: !378)
!964 = !DILocation(line: 1033, column: 21, scope: !932)
!965 = !DILocalVariable(name: "ru", scope: !966, file: !1, line: 1038, type: !42)
!966 = distinct !DILexicalBlock(scope: !932, file: !1, line: 1035, column: 7)
!967 = !DILocation(line: 1038, column: 16, scope: !966)
!968 = !DILocalVariable(name: "CF1_count", scope: !966, file: !1, line: 1039, type: !43)
!969 = !DILocation(line: 1039, column: 13, scope: !966)
!970 = !DILocalVariable(name: "stat_CF1", scope: !966, file: !1, line: 1040, type: !43)
!971 = !DILocation(line: 1040, column: 13, scope: !966)
!972 = !DILocation(line: 1040, column: 37, scope: !966)
!973 = !DILocation(line: 1040, column: 40, scope: !966)
!974 = !DILocation(line: 1040, column: 46, scope: !966)
!975 = !DILocation(line: 1040, column: 24, scope: !966)
!976 = !DILocalVariable(name: "Ua", scope: !966, file: !1, line: 1041, type: !42)
!977 = !DILocation(line: 1041, column: 16, scope: !966)
!978 = !DILocalVariable(name: "Uap1", scope: !966, file: !1, line: 1042, type: !42)
!979 = !DILocation(line: 1042, column: 16, scope: !966)
!980 = !DILocation(line: 1042, column: 23, scope: !966)
!981 = !DILocation(line: 1042, column: 26, scope: !966)
!982 = !DILocation(line: 1042, column: 25, scope: !966)
!983 = !DILocation(line: 1042, column: 30, scope: !966)
!984 = !DILocation(line: 1042, column: 28, scope: !966)
!985 = !DILocalVariable(name: "Uam1", scope: !966, file: !1, line: 1043, type: !42)
!986 = !DILocation(line: 1043, column: 16, scope: !966)
!987 = !DILocalVariable(name: "ap", scope: !966, file: !1, line: 1044, type: !43)
!988 = !DILocation(line: 1044, column: 13, scope: !966)
!989 = !DILocation(line: 1045, column: 16, scope: !990)
!990 = distinct !DILexicalBlock(scope: !966, file: !1, line: 1045, column: 9)
!991 = !DILocation(line: 1045, column: 15, scope: !990)
!992 = !DILocation(line: 1045, column: 13, scope: !990)
!993 = !DILocation(line: 1045, column: 19, scope: !994)
!994 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 1)
!995 = distinct !DILexicalBlock(scope: !990, file: !1, line: 1045, column: 9)
!996 = !DILocation(line: 1045, column: 22, scope: !994)
!997 = !DILocation(line: 1045, column: 21, scope: !994)
!998 = !DILocation(line: 1045, column: 9, scope: !994)
!999 = !DILocation(line: 1046, column: 21, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !995, file: !1, line: 1045, column: 32)
!1001 = !DILocation(line: 1046, column: 27, scope: !1000)
!1002 = !DILocation(line: 1046, column: 26, scope: !1000)
!1003 = !DILocation(line: 1046, column: 22, scope: !1000)
!1004 = !DILocation(line: 1046, column: 30, scope: !1000)
!1005 = !DILocation(line: 1046, column: 29, scope: !1000)
!1006 = !DILocation(line: 1046, column: 33, scope: !1000)
!1007 = !DILocation(line: 1046, column: 32, scope: !1000)
!1008 = !DILocation(line: 1046, column: 38, scope: !1000)
!1009 = !DILocation(line: 1046, column: 46, scope: !1000)
!1010 = !DILocation(line: 1046, column: 45, scope: !1000)
!1011 = !DILocation(line: 1046, column: 49, scope: !1000)
!1012 = !DILocation(line: 1046, column: 48, scope: !1000)
!1013 = !DILocation(line: 1046, column: 40, scope: !1000)
!1014 = !DILocation(line: 1046, column: 52, scope: !1000)
!1015 = !DILocation(line: 1046, column: 51, scope: !1000)
!1016 = !DILocation(line: 1046, column: 36, scope: !1000)
!1017 = !DILocation(line: 1046, column: 18, scope: !1000)
!1018 = !DILocation(line: 1046, column: 16, scope: !1000)
!1019 = !DILocation(line: 1047, column: 18, scope: !1000)
!1020 = !DILocation(line: 1047, column: 16, scope: !1000)
!1021 = !DILocation(line: 1048, column: 18, scope: !1000)
!1022 = !DILocation(line: 1048, column: 16, scope: !1000)
!1023 = !DILocation(line: 1049, column: 11, scope: !1000)
!1024 = distinct !{!1024, !1023}
!1025 = !DILocalVariable(name: "au0", scope: !1026, file: !1, line: 1049, type: !42)
!1026 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 1049, column: 11)
!1027 = !DILocation(line: 1049, column: 11, scope: !1026)
!1028 = !DILocation(line: 1049, column: 11, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1026, file: !1, discriminator: 1)
!1030 = !DILocation(line: 1049, column: 11, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1032, file: !1, discriminator: 2)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 1049, column: 11)
!1033 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 1049, column: 11)
!1034 = !DILocation(line: 1049, column: 11, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1036, file: !1, discriminator: 3)
!1036 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 1049, column: 11)
!1037 = !DILocation(line: 1049, column: 11, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1039, file: !1, discriminator: 4)
!1039 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 1049, column: 11)
!1040 = !DILocation(line: 1049, column: 11, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1026, file: !1, discriminator: 5)
!1042 = !DILocation(line: 1050, column: 9, scope: !1000)
!1043 = !DILocation(line: 1045, column: 28, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 2)
!1045 = !DILocation(line: 1045, column: 9, scope: !1044)
!1046 = distinct !{!1046, !1047}
!1047 = !DILocation(line: 1045, column: 9, scope: !966)
!1048 = !DILocation(line: 1051, column: 23, scope: !966)
!1049 = !DILocation(line: 1051, column: 21, scope: !966)
!1050 = !DILocation(line: 1052, column: 53, scope: !966)
!1051 = !DILocation(line: 1052, column: 56, scope: !966)
!1052 = !DILocation(line: 1052, column: 55, scope: !966)
!1053 = !DILocation(line: 1052, column: 48, scope: !966)
!1054 = !DILocation(line: 1052, column: 59, scope: !966)
!1055 = !DILocation(line: 1052, column: 58, scope: !966)
!1056 = !DILocation(line: 1052, column: 68, scope: !966)
!1057 = !DILocation(line: 1052, column: 45, scope: !966)
!1058 = !DILocation(line: 1052, column: 81, scope: !966)
!1059 = !DILocation(line: 1052, column: 76, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !966, file: !1, discriminator: 1)
!1061 = !DILocation(line: 1052, column: 74, scope: !966)
!1062 = !DILocation(line: 1052, column: 21, scope: !966)
!1063 = !DILocation(line: 1053, column: 20, scope: !966)
!1064 = !DILocation(line: 1053, column: 18, scope: !966)
!1065 = !DILocation(line: 1056, column: 10, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !932, file: !1, line: 1056, column: 10)
!1067 = !DILocation(line: 1056, column: 17, scope: !1066)
!1068 = !DILocation(line: 1056, column: 16, scope: !1066)
!1069 = !DILocation(line: 1056, column: 12, scope: !1066)
!1070 = !DILocation(line: 1056, column: 20, scope: !1066)
!1071 = !DILocation(line: 1056, column: 23, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1066, file: !1, discriminator: 1)
!1073 = !DILocation(line: 1056, column: 26, scope: !1072)
!1074 = !DILocation(line: 1056, column: 10, scope: !1072)
!1075 = !DILocation(line: 1061, column: 34, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1066, file: !1, line: 1056, column: 31)
!1077 = !DILocation(line: 1061, column: 26, scope: !1076)
!1078 = !DILocation(line: 1061, column: 38, scope: !1076)
!1079 = !DILocation(line: 1061, column: 9, scope: !1076)
!1080 = !DILocation(line: 1062, column: 21, scope: !1076)
!1081 = !DILocation(line: 1063, column: 21, scope: !1076)
!1082 = !DILocation(line: 1064, column: 18, scope: !1076)
!1083 = !DILocation(line: 1065, column: 7, scope: !1076)
!1084 = !DILocation(line: 1066, column: 15, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1066, file: !1, line: 1066, column: 15)
!1086 = !DILocation(line: 1066, column: 22, scope: !1085)
!1087 = !DILocation(line: 1066, column: 21, scope: !1085)
!1088 = !DILocation(line: 1066, column: 25, scope: !1085)
!1089 = !DILocation(line: 1066, column: 17, scope: !1085)
!1090 = !DILocation(line: 1066, column: 29, scope: !1085)
!1091 = !DILocation(line: 1066, column: 32, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1085, file: !1, discriminator: 1)
!1093 = !DILocation(line: 1066, column: 35, scope: !1092)
!1094 = !DILocation(line: 1066, column: 15, scope: !1092)
!1095 = !DILocalVariable(name: "lnU00", scope: !1096, file: !1, line: 1071, type: !378)
!1096 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 1066, column: 40)
!1097 = !DILocation(line: 1071, column: 23, scope: !1096)
!1098 = !DILocalVariable(name: "lnU12", scope: !1096, file: !1, line: 1071, type: !378)
!1099 = !DILocation(line: 1071, column: 30, scope: !1096)
!1100 = !DILocalVariable(name: "U00", scope: !1096, file: !1, line: 1072, type: !378)
!1101 = !DILocation(line: 1072, column: 23, scope: !1096)
!1102 = !DILocalVariable(name: "U12", scope: !1096, file: !1, line: 1072, type: !378)
!1103 = !DILocation(line: 1072, column: 28, scope: !1096)
!1104 = !DILocation(line: 1073, column: 26, scope: !1096)
!1105 = !DILocation(line: 1073, column: 28, scope: !1096)
!1106 = !DILocation(line: 1073, column: 34, scope: !1096)
!1107 = !DILocation(line: 1073, column: 9, scope: !1096)
!1108 = !DILocation(line: 1074, column: 26, scope: !1096)
!1109 = !DILocation(line: 1074, column: 34, scope: !1096)
!1110 = !DILocation(line: 1074, column: 9, scope: !1096)
!1111 = !DILocation(line: 1075, column: 18, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 1075, column: 12)
!1113 = !DILocation(line: 1075, column: 30, scope: !1112)
!1114 = !DILocation(line: 1075, column: 22, scope: !1112)
!1115 = !DILocation(line: 1075, column: 12, scope: !1096)
!1116 = !DILocation(line: 1076, column: 30, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 1075, column: 35)
!1118 = !DILocation(line: 1076, column: 18, scope: !1117)
!1119 = !DILocation(line: 1076, column: 22, scope: !1117)
!1120 = !DILocation(line: 1077, column: 30, scope: !1117)
!1121 = !DILocation(line: 1077, column: 18, scope: !1117)
!1122 = !DILocation(line: 1077, column: 22, scope: !1117)
!1123 = !DILocation(line: 1078, column: 15, scope: !1117)
!1124 = !DILocation(line: 1078, column: 19, scope: !1117)
!1125 = !DILocation(line: 1079, column: 15, scope: !1117)
!1126 = !DILocation(line: 1079, column: 19, scope: !1117)
!1127 = !DILocation(line: 1080, column: 34, scope: !1117)
!1128 = !DILocation(line: 1080, column: 47, scope: !1117)
!1129 = !DILocation(line: 1080, column: 38, scope: !1117)
!1130 = !DILocation(line: 1080, column: 58, scope: !1117)
!1131 = !DILocation(line: 1080, column: 71, scope: !1117)
!1132 = !DILocation(line: 1080, column: 62, scope: !1117)
!1133 = !DILocation(line: 1080, column: 11, scope: !1117)
!1134 = !DILocation(line: 1081, column: 9, scope: !1117)
!1135 = !DILocation(line: 1083, column: 30, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 1082, column: 14)
!1137 = !DILocation(line: 1083, column: 18, scope: !1136)
!1138 = !DILocation(line: 1083, column: 22, scope: !1136)
!1139 = !DILocation(line: 1084, column: 30, scope: !1136)
!1140 = !DILocation(line: 1084, column: 18, scope: !1136)
!1141 = !DILocation(line: 1084, column: 22, scope: !1136)
!1142 = !DILocation(line: 1085, column: 15, scope: !1136)
!1143 = !DILocation(line: 1085, column: 19, scope: !1136)
!1144 = !DILocation(line: 1086, column: 15, scope: !1136)
!1145 = !DILocation(line: 1086, column: 19, scope: !1136)
!1146 = !DILocation(line: 1087, column: 34, scope: !1136)
!1147 = !DILocation(line: 1087, column: 47, scope: !1136)
!1148 = !DILocation(line: 1087, column: 38, scope: !1136)
!1149 = !DILocation(line: 1087, column: 58, scope: !1136)
!1150 = !DILocation(line: 1087, column: 71, scope: !1136)
!1151 = !DILocation(line: 1087, column: 62, scope: !1136)
!1152 = !DILocation(line: 1087, column: 11, scope: !1136)
!1153 = !DILocation(line: 1089, column: 25, scope: !1096)
!1154 = !DILocation(line: 1089, column: 33, scope: !1096)
!1155 = !DILocation(line: 1089, column: 27, scope: !1096)
!1156 = !DILocation(line: 1089, column: 43, scope: !1096)
!1157 = !DILocation(line: 1089, column: 37, scope: !1096)
!1158 = !DILocation(line: 1089, column: 55, scope: !1096)
!1159 = !DILocation(line: 1089, column: 54, scope: !1096)
!1160 = !DILocation(line: 1089, column: 58, scope: !1096)
!1161 = !DILocation(line: 1089, column: 48, scope: !1096)
!1162 = !DILocation(line: 1089, column: 22, scope: !1096)
!1163 = !DILocation(line: 1090, column: 30, scope: !1096)
!1164 = !DILocation(line: 1090, column: 25, scope: !1096)
!1165 = !DILocation(line: 1090, column: 37, scope: !1096)
!1166 = !DILocation(line: 1090, column: 32, scope: !1096)
!1167 = !DILocation(line: 1090, column: 47, scope: !1096)
!1168 = !DILocation(line: 1090, column: 41, scope: !1096)
!1169 = !DILocation(line: 1090, column: 63, scope: !1096)
!1170 = !DILocation(line: 1090, column: 62, scope: !1096)
!1171 = !DILocation(line: 1090, column: 66, scope: !1096)
!1172 = !DILocation(line: 1090, column: 54, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1096, file: !1, discriminator: 1)
!1174 = !DILocation(line: 1090, column: 52, scope: !1096)
!1175 = !DILocation(line: 1090, column: 22, scope: !1096)
!1176 = !DILocation(line: 1091, column: 53, scope: !1096)
!1177 = !DILocation(line: 1091, column: 48, scope: !1096)
!1178 = !DILocation(line: 1091, column: 46, scope: !1096)
!1179 = !DILocation(line: 1091, column: 21, scope: !1096)
!1180 = !DILocation(line: 1092, column: 18, scope: !1096)
!1181 = !DILocation(line: 1093, column: 7, scope: !1096)
!1182 = !DILocalVariable(name: "r_Ua", scope: !1183, file: !1, line: 1098, type: !378)
!1183 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 1094, column: 12)
!1184 = !DILocation(line: 1098, column: 23, scope: !1183)
!1185 = !DILocalVariable(name: "Uam1", scope: !1183, file: !1, line: 1099, type: !42)
!1186 = !DILocation(line: 1099, column: 16, scope: !1183)
!1187 = !DILocalVariable(name: "Ua", scope: !1183, file: !1, line: 1100, type: !42)
!1188 = !DILocation(line: 1100, column: 16, scope: !1183)
!1189 = !DILocalVariable(name: "Uap1", scope: !1183, file: !1, line: 1101, type: !42)
!1190 = !DILocation(line: 1101, column: 16, scope: !1183)
!1191 = !DILocalVariable(name: "ap", scope: !1183, file: !1, line: 1102, type: !43)
!1192 = !DILocation(line: 1102, column: 13, scope: !1183)
!1193 = !DILocalVariable(name: "lm_for_local", scope: !1183, file: !1, line: 1103, type: !42)
!1194 = !DILocation(line: 1103, column: 16, scope: !1183)
!1195 = !DILocation(line: 1104, column: 42, scope: !1183)
!1196 = !DILocation(line: 1104, column: 46, scope: !1183)
!1197 = !DILocation(line: 1104, column: 49, scope: !1183)
!1198 = !DILocation(line: 1104, column: 20, scope: !1183)
!1199 = !DILocation(line: 1104, column: 18, scope: !1183)
!1200 = !DILocation(line: 1105, column: 19, scope: !1183)
!1201 = !DILocation(line: 1105, column: 12, scope: !1183)
!1202 = !DILocation(line: 1106, column: 22, scope: !1183)
!1203 = !DILocation(line: 1106, column: 21, scope: !1183)
!1204 = !DILocation(line: 1106, column: 17, scope: !1183)
!1205 = !DILocation(line: 1106, column: 14, scope: !1183)
!1206 = !DILocation(line: 1107, column: 22, scope: !1183)
!1207 = !DILocation(line: 1107, column: 16, scope: !1183)
!1208 = !DILocation(line: 1107, column: 20, scope: !1183)
!1209 = !DILocation(line: 1108, column: 16, scope: !1183)
!1210 = !DILocation(line: 1108, column: 20, scope: !1183)
!1211 = !DILocation(line: 1110, column: 16, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1183, file: !1, line: 1110, column: 9)
!1213 = !DILocation(line: 1110, column: 15, scope: !1212)
!1214 = !DILocation(line: 1110, column: 13, scope: !1212)
!1215 = !DILocation(line: 1110, column: 20, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1217, file: !1, discriminator: 1)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 1110, column: 9)
!1218 = !DILocation(line: 1110, column: 23, scope: !1216)
!1219 = !DILocation(line: 1110, column: 22, scope: !1216)
!1220 = !DILocation(line: 1110, column: 9, scope: !1216)
!1221 = !DILocation(line: 1111, column: 20, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 1110, column: 33)
!1223 = !DILocation(line: 1111, column: 28, scope: !1222)
!1224 = !DILocation(line: 1111, column: 34, scope: !1222)
!1225 = !DILocation(line: 1111, column: 33, scope: !1222)
!1226 = !DILocation(line: 1111, column: 29, scope: !1222)
!1227 = !DILocation(line: 1111, column: 37, scope: !1222)
!1228 = !DILocation(line: 1111, column: 36, scope: !1222)
!1229 = !DILocation(line: 1111, column: 40, scope: !1222)
!1230 = !DILocation(line: 1111, column: 39, scope: !1222)
!1231 = !DILocation(line: 1111, column: 25, scope: !1222)
!1232 = !DILocation(line: 1111, column: 18, scope: !1222)
!1233 = !DILocation(line: 1111, column: 45, scope: !1222)
!1234 = !DILocation(line: 1111, column: 53, scope: !1222)
!1235 = !DILocation(line: 1111, column: 52, scope: !1222)
!1236 = !DILocation(line: 1111, column: 56, scope: !1222)
!1237 = !DILocation(line: 1111, column: 55, scope: !1222)
!1238 = !DILocation(line: 1111, column: 47, scope: !1222)
!1239 = !DILocation(line: 1111, column: 43, scope: !1222)
!1240 = !DILocation(line: 1111, column: 16, scope: !1222)
!1241 = !DILocation(line: 1112, column: 18, scope: !1222)
!1242 = !DILocation(line: 1112, column: 16, scope: !1222)
!1243 = !DILocation(line: 1113, column: 18, scope: !1222)
!1244 = !DILocation(line: 1113, column: 16, scope: !1222)
!1245 = !DILocation(line: 1114, column: 11, scope: !1222)
!1246 = distinct !{!1246, !1245}
!1247 = !DILocalVariable(name: "au0", scope: !1248, file: !1, line: 1114, type: !42)
!1248 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 1114, column: 11)
!1249 = !DILocation(line: 1114, column: 11, scope: !1248)
!1250 = !DILocation(line: 1114, column: 11, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1248, file: !1, discriminator: 1)
!1252 = !DILocation(line: 1114, column: 11, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1254, file: !1, discriminator: 2)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 1114, column: 11)
!1255 = distinct !DILexicalBlock(scope: !1248, file: !1, line: 1114, column: 11)
!1256 = !DILocation(line: 1114, column: 11, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1258, file: !1, discriminator: 3)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 1114, column: 11)
!1259 = !DILocation(line: 1114, column: 11, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1261, file: !1, discriminator: 4)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !1, line: 1114, column: 11)
!1262 = !DILocation(line: 1114, column: 11, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1248, file: !1, discriminator: 5)
!1264 = !DILocation(line: 1115, column: 9, scope: !1222)
!1265 = !DILocation(line: 1110, column: 29, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1217, file: !1, discriminator: 2)
!1267 = !DILocation(line: 1110, column: 9, scope: !1266)
!1268 = distinct !{!1268, !1269}
!1269 = !DILocation(line: 1110, column: 9, scope: !1183)
!1270 = !DILocation(line: 1116, column: 24, scope: !1183)
!1271 = !DILocation(line: 1116, column: 22, scope: !1183)
!1272 = !DILocation(line: 1117, column: 29, scope: !1183)
!1273 = !DILocation(line: 1117, column: 24, scope: !1183)
!1274 = !DILocation(line: 1117, column: 45, scope: !1183)
!1275 = !DILocation(line: 1117, column: 54, scope: !1183)
!1276 = !DILocation(line: 1117, column: 48, scope: !1183)
!1277 = !DILocation(line: 1117, column: 35, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1183, file: !1, discriminator: 1)
!1279 = !DILocation(line: 1117, column: 33, scope: !1183)
!1280 = !DILocation(line: 1117, column: 22, scope: !1183)
!1281 = !DILocation(line: 1118, column: 54, scope: !1183)
!1282 = !DILocation(line: 1118, column: 57, scope: !1183)
!1283 = !DILocation(line: 1118, column: 56, scope: !1183)
!1284 = !DILocation(line: 1118, column: 49, scope: !1183)
!1285 = !DILocation(line: 1118, column: 60, scope: !1183)
!1286 = !DILocation(line: 1118, column: 46, scope: !1183)
!1287 = !DILocation(line: 1118, column: 73, scope: !1183)
!1288 = !DILocation(line: 1118, column: 68, scope: !1278)
!1289 = !DILocation(line: 1118, column: 66, scope: !1183)
!1290 = !DILocation(line: 1118, column: 21, scope: !1183)
!1291 = !DILocation(line: 1123, column: 10, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !932, file: !1, line: 1123, column: 10)
!1293 = !DILocation(line: 1123, column: 22, scope: !1292)
!1294 = !DILocation(line: 1123, column: 10, scope: !932)
!1295 = !DILocation(line: 1124, column: 9, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !1, line: 1123, column: 30)
!1297 = !DILocation(line: 1124, column: 17, scope: !1296)
!1298 = !DILocation(line: 1124, column: 21, scope: !1296)
!1299 = !DILocation(line: 1125, column: 9, scope: !1296)
!1300 = !DILocation(line: 1125, column: 17, scope: !1296)
!1301 = !DILocation(line: 1125, column: 21, scope: !1296)
!1302 = !DILocation(line: 1126, column: 9, scope: !1296)
!1303 = !DILocation(line: 1126, column: 17, scope: !1296)
!1304 = !DILocation(line: 1126, column: 21, scope: !1296)
!1305 = !DILocation(line: 1127, column: 9, scope: !1296)
!1306 = distinct !{!1306, !1305}
!1307 = !DILocation(line: 1127, column: 9, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1309, file: !1, discriminator: 1)
!1309 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 1127, column: 9)
!1310 = !DILocation(line: 1128, column: 7, scope: !1296)
!1311 = !DILocation(line: 1129, column: 15, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1292, file: !1, line: 1129, column: 15)
!1313 = !DILocation(line: 1129, column: 27, scope: !1312)
!1314 = !DILocation(line: 1129, column: 15, scope: !1292)
!1315 = !DILocation(line: 1131, column: 9, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 1129, column: 35)
!1317 = distinct !{!1317, !1315}
!1318 = !DILocation(line: 1131, column: 9, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1320, file: !1, discriminator: 1)
!1320 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 1131, column: 9)
!1321 = distinct !{!1321, !1322}
!1322 = !DILocation(line: 1131, column: 9, scope: !1320)
!1323 = !DILocation(line: 1131, column: 9, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1325, file: !1, discriminator: 2)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !1, line: 1131, column: 9)
!1326 = !DILocation(line: 1131, column: 9, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1320, file: !1, discriminator: 3)
!1328 = !DILocation(line: 1132, column: 7, scope: !1316)
!1329 = !DILocalVariable(name: "lns", scope: !1330, file: !1, line: 1134, type: !42)
!1330 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 1133, column: 12)
!1331 = !DILocation(line: 1134, column: 16, scope: !1330)
!1332 = !DILocation(line: 1134, column: 23, scope: !1330)
!1333 = !DILocation(line: 1134, column: 41, scope: !1330)
!1334 = !DILocation(line: 1134, column: 39, scope: !1330)
!1335 = !DILocation(line: 1134, column: 22, scope: !1330)
!1336 = !DILocation(line: 1134, column: 58, scope: !1330)
!1337 = !DILocation(line: 1134, column: 57, scope: !1330)
!1338 = !DILocalVariable(name: "ln_for_val", scope: !1330, file: !1, line: 1135, type: !42)
!1339 = !DILocation(line: 1135, column: 16, scope: !1330)
!1340 = !DILocation(line: 1135, column: 38, scope: !1330)
!1341 = !DILocation(line: 1135, column: 33, scope: !1330)
!1342 = !DILocation(line: 1135, column: 29, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1330, file: !1, discriminator: 1)
!1344 = !DILocalVariable(name: "ln_for_err", scope: !1330, file: !1, line: 1136, type: !42)
!1345 = !DILocation(line: 1136, column: 16, scope: !1330)
!1346 = !DILocation(line: 1136, column: 52, scope: !1330)
!1347 = !DILocation(line: 1136, column: 64, scope: !1330)
!1348 = !DILocation(line: 1136, column: 63, scope: !1330)
!1349 = !DILocation(line: 1136, column: 47, scope: !1330)
!1350 = !DILocation(line: 1136, column: 45, scope: !1330)
!1351 = !DILocalVariable(name: "ln_bck_val", scope: !1330, file: !1, line: 1137, type: !42)
!1352 = !DILocation(line: 1137, column: 16, scope: !1330)
!1353 = !DILocation(line: 1137, column: 38, scope: !1330)
!1354 = !DILocation(line: 1137, column: 33, scope: !1330)
!1355 = !DILocation(line: 1137, column: 29, scope: !1343)
!1356 = !DILocalVariable(name: "ln_bck_err", scope: !1330, file: !1, line: 1138, type: !42)
!1357 = !DILocation(line: 1138, column: 16, scope: !1330)
!1358 = !DILocation(line: 1138, column: 52, scope: !1330)
!1359 = !DILocation(line: 1138, column: 64, scope: !1330)
!1360 = !DILocation(line: 1138, column: 63, scope: !1330)
!1361 = !DILocation(line: 1138, column: 47, scope: !1330)
!1362 = !DILocation(line: 1138, column: 45, scope: !1330)
!1363 = !DILocalVariable(name: "lnr_val", scope: !1330, file: !1, line: 1139, type: !42)
!1364 = !DILocation(line: 1139, column: 16, scope: !1330)
!1365 = !DILocation(line: 1139, column: 33, scope: !1330)
!1366 = !DILocation(line: 1139, column: 39, scope: !1330)
!1367 = !DILocation(line: 1139, column: 37, scope: !1330)
!1368 = !DILocation(line: 1139, column: 52, scope: !1330)
!1369 = !DILocation(line: 1139, column: 50, scope: !1330)
!1370 = !DILocation(line: 1139, column: 65, scope: !1330)
!1371 = !DILocation(line: 1139, column: 63, scope: !1330)
!1372 = !DILocalVariable(name: "lnr_err", scope: !1330, file: !1, line: 1140, type: !42)
!1373 = !DILocation(line: 1140, column: 16, scope: !1330)
!1374 = !DILocation(line: 1140, column: 33, scope: !1330)
!1375 = !DILocation(line: 1140, column: 39, scope: !1330)
!1376 = !DILocation(line: 1140, column: 37, scope: !1330)
!1377 = !DILocation(line: 1140, column: 52, scope: !1330)
!1378 = !DILocation(line: 1140, column: 50, scope: !1330)
!1379 = !DILocation(line: 1141, column: 50, scope: !1330)
!1380 = !DILocation(line: 1141, column: 38, scope: !1330)
!1381 = !DILocation(line: 1141, column: 62, scope: !1330)
!1382 = !DILocation(line: 1141, column: 57, scope: !1343)
!1383 = !DILocation(line: 1141, column: 55, scope: !1330)
!1384 = !DILocation(line: 1141, column: 81, scope: !1330)
!1385 = !DILocation(line: 1141, column: 76, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1330, file: !1, discriminator: 2)
!1387 = !DILocation(line: 1141, column: 74, scope: !1330)
!1388 = !DILocation(line: 1141, column: 100, scope: !1330)
!1389 = !DILocation(line: 1141, column: 95, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1330, file: !1, discriminator: 3)
!1391 = !DILocation(line: 1141, column: 93, scope: !1330)
!1392 = !DILocation(line: 1141, column: 35, scope: !1330)
!1393 = !DILocation(line: 1141, column: 11, scope: !1330)
!1394 = !DILocalVariable(name: "sgn", scope: !1330, file: !1, line: 1142, type: !42)
!1395 = !DILocation(line: 1142, column: 16, scope: !1330)
!1396 = !DILocation(line: 1142, column: 22, scope: !1330)
!1397 = !DILocation(line: 1142, column: 46, scope: !1330)
!1398 = !DILocation(line: 1142, column: 44, scope: !1330)
!1399 = !DILocalVariable(name: "stat_e", scope: !1330, file: !1, line: 1143, type: !43)
!1400 = !DILocation(line: 1143, column: 13, scope: !1330)
!1401 = !DILocation(line: 1143, column: 43, scope: !1330)
!1402 = !DILocation(line: 1143, column: 52, scope: !1330)
!1403 = !DILocation(line: 1143, column: 61, scope: !1330)
!1404 = !DILocation(line: 1143, column: 22, scope: !1330)
!1405 = !DILocation(line: 1144, column: 24, scope: !1330)
!1406 = !DILocation(line: 1144, column: 9, scope: !1330)
!1407 = !DILocation(line: 1144, column: 17, scope: !1330)
!1408 = !DILocation(line: 1144, column: 21, scope: !1330)
!1409 = !DILocation(line: 1145, column: 16, scope: !1330)
!1410 = !DILocation(line: 1145, column: 16, scope: !1343)
!1411 = !DILocation(line: 1145, column: 16, scope: !1386)
!1412 = !DILocation(line: 1145, column: 16, scope: !1390)
!1413 = !DILocation(line: 1145, column: 16, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1330, file: !1, discriminator: 4)
!1415 = !DILocation(line: 1145, column: 16, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1330, file: !1, discriminator: 5)
!1417 = !DILocation(line: 1145, column: 16, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1330, file: !1, discriminator: 6)
!1419 = !DILocation(line: 1145, column: 16, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1330, file: !1, discriminator: 7)
!1421 = !DILocation(line: 1145, column: 16, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1330, file: !1, discriminator: 8)
!1423 = !DILocation(line: 1145, column: 16, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1330, file: !1, discriminator: 9)
!1425 = !DILocation(line: 1145, column: 9, scope: !1424)
!1426 = !DILocation(line: 1149, column: 1, scope: !280)
!1427 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_e10_e", scope: !1, file: !1, line: 1690, type: !1428, isLocal: false, isDefinition: true, scopeLine: 1692, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!43, !52, !52, !52, !53}
!1430 = !DILocalVariable(name: "a", arg: 1, scope: !1427, file: !1, line: 1690, type: !52)
!1431 = !DILocation(line: 1690, column: 36, scope: !1427)
!1432 = !DILocalVariable(name: "b", arg: 2, scope: !1427, file: !1, line: 1690, type: !52)
!1433 = !DILocation(line: 1690, column: 52, scope: !1427)
!1434 = !DILocalVariable(name: "x", arg: 3, scope: !1427, file: !1, line: 1690, type: !52)
!1435 = !DILocation(line: 1690, column: 68, scope: !1427)
!1436 = !DILocalVariable(name: "result", arg: 4, scope: !1427, file: !1, line: 1691, type: !53)
!1437 = !DILocation(line: 1691, column: 46, scope: !1427)
!1438 = !DILocalVariable(name: "rinta", scope: !1427, file: !1, line: 1693, type: !52)
!1439 = !DILocation(line: 1693, column: 16, scope: !1427)
!1440 = !DILocation(line: 1693, column: 30, scope: !1427)
!1441 = !DILocation(line: 1693, column: 32, scope: !1427)
!1442 = !DILocation(line: 1693, column: 24, scope: !1427)
!1443 = !DILocalVariable(name: "rintb", scope: !1427, file: !1, line: 1694, type: !52)
!1444 = !DILocation(line: 1694, column: 16, scope: !1427)
!1445 = !DILocation(line: 1694, column: 30, scope: !1427)
!1446 = !DILocation(line: 1694, column: 32, scope: !1427)
!1447 = !DILocation(line: 1694, column: 24, scope: !1427)
!1448 = !DILocalVariable(name: "a_integer", scope: !1427, file: !1, line: 1695, type: !51)
!1449 = !DILocation(line: 1695, column: 13, scope: !1427)
!1450 = !DILocation(line: 1695, column: 32, scope: !1427)
!1451 = !DILocation(line: 1695, column: 36, scope: !1427)
!1452 = !DILocation(line: 1695, column: 34, scope: !1427)
!1453 = !DILocation(line: 1695, column: 27, scope: !1427)
!1454 = !DILocation(line: 1695, column: 43, scope: !1427)
!1455 = !DILocalVariable(name: "b_integer", scope: !1427, file: !1, line: 1696, type: !51)
!1456 = !DILocation(line: 1696, column: 13, scope: !1427)
!1457 = !DILocation(line: 1696, column: 32, scope: !1427)
!1458 = !DILocation(line: 1696, column: 36, scope: !1427)
!1459 = !DILocation(line: 1696, column: 34, scope: !1427)
!1460 = !DILocation(line: 1696, column: 27, scope: !1427)
!1461 = !DILocation(line: 1696, column: 43, scope: !1427)
!1462 = !DILocation(line: 1700, column: 6, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1427, file: !1, line: 1700, column: 6)
!1464 = !DILocation(line: 1700, column: 8, scope: !1463)
!1465 = !DILocation(line: 1700, column: 15, scope: !1463)
!1466 = !DILocation(line: 1700, column: 18, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1463, file: !1, discriminator: 1)
!1468 = !DILocation(line: 1700, column: 20, scope: !1467)
!1469 = !DILocation(line: 1700, column: 6, scope: !1467)
!1470 = !DILocation(line: 1701, column: 5, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1463, file: !1, line: 1700, column: 26)
!1472 = distinct !{!1472, !1470}
!1473 = !DILocation(line: 1701, column: 5, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1475, file: !1, discriminator: 1)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !1, line: 1701, column: 5)
!1476 = distinct !{!1476, !1477}
!1477 = !DILocation(line: 1701, column: 5, scope: !1475)
!1478 = !DILocation(line: 1701, column: 5, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1480, file: !1, discriminator: 2)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 1701, column: 5)
!1481 = !DILocation(line: 1701, column: 5, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1475, file: !1, discriminator: 3)
!1483 = !DILocation(line: 1702, column: 3, scope: !1471)
!1484 = !DILocation(line: 1703, column: 11, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1463, file: !1, line: 1703, column: 11)
!1486 = !DILocation(line: 1703, column: 13, scope: !1485)
!1487 = !DILocation(line: 1703, column: 11, scope: !1463)
!1488 = !DILocation(line: 1704, column: 5, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !1, line: 1703, column: 21)
!1490 = !DILocation(line: 1704, column: 13, scope: !1489)
!1491 = !DILocation(line: 1704, column: 17, scope: !1489)
!1492 = !DILocation(line: 1705, column: 5, scope: !1489)
!1493 = !DILocation(line: 1705, column: 13, scope: !1489)
!1494 = !DILocation(line: 1705, column: 17, scope: !1489)
!1495 = !DILocation(line: 1706, column: 5, scope: !1489)
!1496 = !DILocation(line: 1706, column: 13, scope: !1489)
!1497 = !DILocation(line: 1706, column: 17, scope: !1489)
!1498 = !DILocation(line: 1707, column: 5, scope: !1489)
!1499 = !DILocation(line: 1709, column: 12, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1485, file: !1, line: 1709, column: 12)
!1501 = !DILocation(line: 1709, column: 14, scope: !1500)
!1502 = !DILocation(line: 1709, column: 12, scope: !1485)
!1503 = !DILocation(line: 1710, column: 29, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !1, line: 1709, column: 22)
!1505 = !DILocation(line: 1710, column: 32, scope: !1504)
!1506 = !DILocation(line: 1710, column: 35, scope: !1504)
!1507 = !DILocation(line: 1710, column: 12, scope: !1504)
!1508 = !DILocation(line: 1710, column: 5, scope: !1504)
!1509 = !DILocation(line: 1712, column: 11, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1500, file: !1, line: 1712, column: 11)
!1511 = !DILocation(line: 1712, column: 21, scope: !1510)
!1512 = !DILocation(line: 1712, column: 24, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1510, file: !1, discriminator: 1)
!1514 = !DILocation(line: 1712, column: 29, scope: !1513)
!1515 = !DILocation(line: 1712, column: 31, scope: !1513)
!1516 = !DILocation(line: 1712, column: 26, scope: !1513)
!1517 = !DILocation(line: 1712, column: 11, scope: !1513)
!1518 = !DILocalVariable(name: "powx1N_1", scope: !1519, file: !1, line: 1715, type: !378)
!1519 = distinct !DILexicalBlock(scope: !1510, file: !1, line: 1714, column: 4)
!1520 = !DILocation(line: 1715, column: 20, scope: !1519)
!1521 = !DILocation(line: 1716, column: 23, scope: !1519)
!1522 = !DILocation(line: 1716, column: 27, scope: !1519)
!1523 = !DILocation(line: 1716, column: 26, scope: !1519)
!1524 = !DILocation(line: 1716, column: 6, scope: !1519)
!1525 = !DILocation(line: 1717, column: 29, scope: !1519)
!1526 = !DILocation(line: 1717, column: 6, scope: !1519)
!1527 = !DILocation(line: 1717, column: 14, scope: !1519)
!1528 = !DILocation(line: 1717, column: 18, scope: !1519)
!1529 = !DILocation(line: 1718, column: 29, scope: !1519)
!1530 = !DILocation(line: 1718, column: 6, scope: !1519)
!1531 = !DILocation(line: 1718, column: 14, scope: !1519)
!1532 = !DILocation(line: 1718, column: 18, scope: !1519)
!1533 = !DILocation(line: 1719, column: 6, scope: !1519)
!1534 = !DILocation(line: 1719, column: 14, scope: !1519)
!1535 = !DILocation(line: 1719, column: 18, scope: !1519)
!1536 = !DILocation(line: 1720, column: 6, scope: !1519)
!1537 = !DILocation(line: 1723, column: 12, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1510, file: !1, line: 1723, column: 12)
!1539 = !DILocation(line: 1723, column: 22, scope: !1538)
!1540 = !DILocation(line: 1723, column: 25, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !1538, file: !1, discriminator: 1)
!1542 = !DILocation(line: 1723, column: 12, scope: !1541)
!1543 = !DILocation(line: 1724, column: 39, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1538, file: !1, line: 1723, column: 36)
!1545 = !DILocation(line: 1724, column: 46, scope: !1544)
!1546 = !DILocation(line: 1724, column: 53, scope: !1544)
!1547 = !DILocation(line: 1724, column: 56, scope: !1544)
!1548 = !DILocation(line: 1724, column: 13, scope: !1544)
!1549 = !DILocation(line: 1724, column: 6, scope: !1544)
!1550 = !DILocation(line: 1726, column: 12, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1538, file: !1, line: 1726, column: 12)
!1552 = !DILocation(line: 1726, column: 14, scope: !1551)
!1553 = !DILocation(line: 1726, column: 12, scope: !1538)
!1554 = !DILocation(line: 1727, column: 27, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 1726, column: 21)
!1556 = !DILocation(line: 1727, column: 30, scope: !1555)
!1557 = !DILocation(line: 1727, column: 33, scope: !1555)
!1558 = !DILocation(line: 1727, column: 36, scope: !1555)
!1559 = !DILocation(line: 1727, column: 12, scope: !1555)
!1560 = !DILocation(line: 1727, column: 5, scope: !1555)
!1561 = !DILocation(line: 1730, column: 8, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 1730, column: 8)
!1563 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 1729, column: 8)
!1564 = !DILocation(line: 1730, column: 10, scope: !1562)
!1565 = !DILocation(line: 1730, column: 8, scope: !1563)
!1566 = !DILocation(line: 1733, column: 28, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !1, line: 1730, column: 18)
!1568 = !DILocation(line: 1733, column: 31, scope: !1567)
!1569 = !DILocation(line: 1733, column: 34, scope: !1567)
!1570 = !DILocation(line: 1733, column: 37, scope: !1567)
!1571 = !DILocation(line: 1733, column: 14, scope: !1567)
!1572 = !DILocation(line: 1733, column: 7, scope: !1567)
!1573 = !DILocalVariable(name: "lnx", scope: !1574, file: !1, line: 1739, type: !52)
!1574 = distinct !DILexicalBlock(scope: !1562, file: !1, line: 1735, column: 10)
!1575 = !DILocation(line: 1739, column: 20, scope: !1574)
!1576 = !DILocation(line: 1739, column: 30, scope: !1574)
!1577 = !DILocation(line: 1739, column: 26, scope: !1574)
!1578 = !DILocalVariable(name: "ln_pre_val", scope: !1574, file: !1, line: 1740, type: !52)
!1579 = !DILocation(line: 1740, column: 20, scope: !1574)
!1580 = !DILocation(line: 1740, column: 38, scope: !1574)
!1581 = !DILocation(line: 1740, column: 37, scope: !1574)
!1582 = !DILocation(line: 1740, column: 41, scope: !1574)
!1583 = !DILocation(line: 1740, column: 40, scope: !1574)
!1584 = !DILocalVariable(name: "ln_pre_err", scope: !1574, file: !1, line: 1741, type: !52)
!1585 = !DILocation(line: 1741, column: 20, scope: !1574)
!1586 = !DILocation(line: 1741, column: 38, scope: !1574)
!1587 = !DILocation(line: 1741, column: 33, scope: !1574)
!1588 = !DILocation(line: 1741, column: 43, scope: !1574)
!1589 = !DILocation(line: 1741, column: 49, scope: !1574)
!1590 = !DILocation(line: 1741, column: 81, scope: !1574)
!1591 = !DILocation(line: 1741, column: 76, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1574, file: !1, discriminator: 1)
!1593 = !DILocation(line: 1741, column: 74, scope: !1574)
!1594 = !DILocation(line: 1741, column: 67, scope: !1574)
!1595 = !DILocalVariable(name: "ap", scope: !1574, file: !1, line: 1742, type: !52)
!1596 = !DILocation(line: 1742, column: 20, scope: !1574)
!1597 = !DILocation(line: 1742, column: 31, scope: !1574)
!1598 = !DILocation(line: 1742, column: 29, scope: !1574)
!1599 = !DILocation(line: 1742, column: 35, scope: !1574)
!1600 = !DILocation(line: 1742, column: 33, scope: !1574)
!1601 = !DILocalVariable(name: "bp", scope: !1574, file: !1, line: 1743, type: !52)
!1602 = !DILocation(line: 1743, column: 20, scope: !1574)
!1603 = !DILocation(line: 1743, column: 31, scope: !1574)
!1604 = !DILocation(line: 1743, column: 29, scope: !1574)
!1605 = !DILocalVariable(name: "U", scope: !1574, file: !1, line: 1744, type: !54)
!1606 = !DILocation(line: 1744, column: 25, scope: !1574)
!1607 = !DILocalVariable(name: "stat_U", scope: !1574, file: !1, line: 1745, type: !43)
!1608 = !DILocation(line: 1745, column: 11, scope: !1574)
!1609 = !DILocation(line: 1745, column: 34, scope: !1574)
!1610 = !DILocation(line: 1745, column: 38, scope: !1574)
!1611 = !DILocation(line: 1745, column: 42, scope: !1574)
!1612 = !DILocation(line: 1745, column: 20, scope: !1574)
!1613 = !DILocalVariable(name: "stat_e", scope: !1574, file: !1, line: 1746, type: !43)
!1614 = !DILocation(line: 1746, column: 11, scope: !1574)
!1615 = !DILocation(line: 1746, column: 46, scope: !1574)
!1616 = !DILocation(line: 1746, column: 61, scope: !1574)
!1617 = !DILocation(line: 1746, column: 59, scope: !1574)
!1618 = !DILocation(line: 1746, column: 64, scope: !1574)
!1619 = !DILocation(line: 1746, column: 57, scope: !1574)
!1620 = !DILocation(line: 1746, column: 73, scope: !1574)
!1621 = !DILocation(line: 1747, column: 47, scope: !1574)
!1622 = !DILocation(line: 1747, column: 54, scope: !1574)
!1623 = !DILocation(line: 1748, column: 45, scope: !1574)
!1624 = !DILocation(line: 1746, column: 20, scope: !1574)
!1625 = !DILocation(line: 1749, column: 14, scope: !1574)
!1626 = !DILocation(line: 1749, column: 14, scope: !1592)
!1627 = !DILocation(line: 1749, column: 14, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1574, file: !1, discriminator: 2)
!1629 = !DILocation(line: 1749, column: 14, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1574, file: !1, discriminator: 3)
!1631 = !DILocation(line: 1749, column: 14, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1574, file: !1, discriminator: 4)
!1633 = !DILocation(line: 1749, column: 14, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1574, file: !1, discriminator: 5)
!1635 = !DILocation(line: 1749, column: 14, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1574, file: !1, discriminator: 6)
!1637 = !DILocation(line: 1749, column: 7, scope: !1636)
!1638 = !DILocation(line: 1752, column: 1, scope: !1427)
!1639 = distinct !DISubprogram(name: "hyperg_U_origin", scope: !1, file: !1, line: 1472, type: !1640, isLocal: true, isDefinition: true, scopeLine: 1473, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!43, !52, !52, !53}
!1642 = !DILocalVariable(name: "a", arg: 1, scope: !1639, file: !1, line: 1472, type: !52)
!1643 = !DILocation(line: 1472, column: 31, scope: !1639)
!1644 = !DILocalVariable(name: "b", arg: 2, scope: !1639, file: !1, line: 1472, type: !52)
!1645 = !DILocation(line: 1472, column: 47, scope: !1639)
!1646 = !DILocalVariable(name: "result", arg: 3, scope: !1639, file: !1, line: 1472, type: !53)
!1647 = !DILocation(line: 1472, column: 70, scope: !1639)
!1648 = !DILocalVariable(name: "r1", scope: !1639, file: !1, line: 1474, type: !378)
!1649 = !DILocation(line: 1474, column: 17, scope: !1639)
!1650 = !DILocalVariable(name: "r2", scope: !1639, file: !1, line: 1474, type: !378)
!1651 = !DILocation(line: 1474, column: 21, scope: !1639)
!1652 = !DILocalVariable(name: "stat_1", scope: !1639, file: !1, line: 1475, type: !43)
!1653 = !DILocation(line: 1475, column: 7, scope: !1639)
!1654 = !DILocation(line: 1475, column: 36, scope: !1639)
!1655 = !DILocation(line: 1475, column: 35, scope: !1639)
!1656 = !DILocation(line: 1475, column: 38, scope: !1639)
!1657 = !DILocation(line: 1475, column: 37, scope: !1639)
!1658 = !DILocation(line: 1475, column: 16, scope: !1639)
!1659 = !DILocalVariable(name: "stat_2", scope: !1639, file: !1, line: 1476, type: !43)
!1660 = !DILocation(line: 1476, column: 7, scope: !1639)
!1661 = !DILocation(line: 1476, column: 34, scope: !1639)
!1662 = !DILocation(line: 1476, column: 16, scope: !1639)
!1663 = !DILocalVariable(name: "factor", scope: !1639, file: !1, line: 1477, type: !42)
!1664 = !DILocation(line: 1477, column: 10, scope: !1639)
!1665 = !DILocation(line: 1477, column: 35, scope: !1639)
!1666 = !DILocation(line: 1477, column: 34, scope: !1639)
!1667 = !DILocation(line: 1477, column: 26, scope: !1639)
!1668 = !DILocation(line: 1477, column: 24, scope: !1639)
!1669 = !DILocation(line: 1479, column: 17, scope: !1639)
!1670 = !DILocation(line: 1479, column: 29, scope: !1639)
!1671 = !DILocation(line: 1479, column: 24, scope: !1639)
!1672 = !DILocation(line: 1479, column: 38, scope: !1639)
!1673 = !DILocation(line: 1479, column: 33, scope: !1639)
!1674 = !DILocation(line: 1479, column: 3, scope: !1639)
!1675 = !DILocation(line: 1479, column: 11, scope: !1639)
!1676 = !DILocation(line: 1479, column: 15, scope: !1639)
!1677 = !DILocation(line: 1480, column: 22, scope: !1639)
!1678 = !DILocation(line: 1480, column: 17, scope: !1639)
!1679 = !DILocation(line: 1480, column: 36, scope: !1639)
!1680 = !DILocation(line: 1480, column: 45, scope: !1639)
!1681 = !DILocation(line: 1480, column: 40, scope: !1639)
!1682 = !DILocation(line: 1480, column: 30, scope: !1639)
!1683 = !DILocation(line: 1480, column: 3, scope: !1639)
!1684 = !DILocation(line: 1480, column: 11, scope: !1639)
!1685 = !DILocation(line: 1480, column: 15, scope: !1639)
!1686 = !DILocation(line: 1481, column: 3, scope: !1639)
!1687 = !DILocation(line: 1481, column: 11, scope: !1639)
!1688 = !DILocation(line: 1481, column: 15, scope: !1639)
!1689 = !DILocation(line: 1483, column: 10, scope: !1639)
!1690 = !DILocation(line: 1483, column: 10, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1639, file: !1, discriminator: 1)
!1692 = !DILocation(line: 1483, column: 10, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1639, file: !1, discriminator: 2)
!1694 = !DILocation(line: 1483, column: 10, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1639, file: !1, discriminator: 3)
!1696 = !DILocation(line: 1483, column: 10, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1639, file: !1, discriminator: 4)
!1698 = !DILocation(line: 1483, column: 10, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1639, file: !1, discriminator: 5)
!1700 = !DILocation(line: 1483, column: 10, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1639, file: !1, discriminator: 6)
!1702 = !DILocation(line: 1483, column: 3, scope: !1701)
!1703 = distinct !DISubprogram(name: "hyperg_U_negx", scope: !1, file: !1, line: 1522, type: !1428, isLocal: true, isDefinition: true, scopeLine: 1523, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!1704 = !DILocalVariable(name: "a", arg: 1, scope: !1703, file: !1, line: 1522, type: !52)
!1705 = !DILocation(line: 1522, column: 29, scope: !1703)
!1706 = !DILocalVariable(name: "b", arg: 2, scope: !1703, file: !1, line: 1522, type: !52)
!1707 = !DILocation(line: 1522, column: 45, scope: !1703)
!1708 = !DILocalVariable(name: "x", arg: 3, scope: !1703, file: !1, line: 1522, type: !52)
!1709 = !DILocation(line: 1522, column: 61, scope: !1703)
!1710 = !DILocalVariable(name: "result", arg: 4, scope: !1703, file: !1, line: 1522, type: !53)
!1711 = !DILocation(line: 1522, column: 84, scope: !1703)
!1712 = !DILocalVariable(name: "r1", scope: !1703, file: !1, line: 1524, type: !378)
!1713 = !DILocation(line: 1524, column: 17, scope: !1703)
!1714 = !DILocalVariable(name: "r2", scope: !1703, file: !1, line: 1524, type: !378)
!1715 = !DILocation(line: 1524, column: 21, scope: !1703)
!1716 = !DILocalVariable(name: "stat_1", scope: !1703, file: !1, line: 1525, type: !43)
!1717 = !DILocation(line: 1525, column: 7, scope: !1703)
!1718 = !DILocalVariable(name: "stat_2", scope: !1703, file: !1, line: 1525, type: !43)
!1719 = !DILocation(line: 1525, column: 15, scope: !1703)
!1720 = !DILocalVariable(name: "status", scope: !1703, file: !1, line: 1525, type: !43)
!1721 = !DILocation(line: 1525, column: 23, scope: !1703)
!1722 = !DILocalVariable(name: "a_int", scope: !1703, file: !1, line: 1526, type: !43)
!1723 = !DILocation(line: 1526, column: 7, scope: !1703)
!1724 = !DILocation(line: 1526, column: 16, scope: !1703)
!1725 = !DILocation(line: 1526, column: 27, scope: !1703)
!1726 = !DILocation(line: 1526, column: 21, scope: !1703)
!1727 = !DILocation(line: 1526, column: 18, scope: !1703)
!1728 = !DILocalVariable(name: "b_int", scope: !1703, file: !1, line: 1527, type: !43)
!1729 = !DILocation(line: 1527, column: 7, scope: !1703)
!1730 = !DILocation(line: 1527, column: 16, scope: !1703)
!1731 = !DILocation(line: 1527, column: 27, scope: !1703)
!1732 = !DILocation(line: 1527, column: 21, scope: !1703)
!1733 = !DILocation(line: 1527, column: 18, scope: !1703)
!1734 = !DILocalVariable(name: "T1", scope: !1703, file: !1, line: 1529, type: !42)
!1735 = !DILocation(line: 1529, column: 10, scope: !1703)
!1736 = !DILocalVariable(name: "T1_err", scope: !1703, file: !1, line: 1529, type: !42)
!1737 = !DILocation(line: 1529, column: 18, scope: !1703)
!1738 = !DILocalVariable(name: "T2", scope: !1703, file: !1, line: 1529, type: !42)
!1739 = !DILocation(line: 1529, column: 30, scope: !1703)
!1740 = !DILocalVariable(name: "T2_err", scope: !1703, file: !1, line: 1529, type: !42)
!1741 = !DILocation(line: 1529, column: 38, scope: !1703)
!1742 = !DILocation(line: 1533, column: 7, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1703, file: !1, line: 1533, column: 7)
!1744 = !DILocation(line: 1533, column: 13, scope: !1743)
!1745 = !DILocation(line: 1533, column: 16, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1743, file: !1, discriminator: 1)
!1747 = !DILocation(line: 1533, column: 18, scope: !1746)
!1748 = !DILocation(line: 1533, column: 23, scope: !1746)
!1749 = !DILocation(line: 1533, column: 28, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1743, file: !1, discriminator: 2)
!1751 = !DILocation(line: 1533, column: 34, scope: !1750)
!1752 = !DILocation(line: 1533, column: 37, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !1743, file: !1, discriminator: 3)
!1754 = !DILocation(line: 1533, column: 39, scope: !1753)
!1755 = !DILocation(line: 1533, column: 44, scope: !1753)
!1756 = !DILocation(line: 1533, column: 47, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1743, file: !1, discriminator: 4)
!1758 = !DILocation(line: 1533, column: 52, scope: !1757)
!1759 = !DILocation(line: 1533, column: 49, scope: !1757)
!1760 = !DILocation(line: 1533, column: 7, scope: !1757)
!1761 = !DILocation(line: 1547, column: 7, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1743, file: !1, line: 1534, column: 5)
!1763 = !DILocation(line: 1547, column: 15, scope: !1762)
!1764 = !DILocation(line: 1547, column: 19, scope: !1762)
!1765 = !DILocation(line: 1547, column: 30, scope: !1762)
!1766 = !DILocation(line: 1547, column: 38, scope: !1762)
!1767 = !DILocation(line: 1547, column: 42, scope: !1762)
!1768 = !DILocation(line: 1548, column: 7, scope: !1762)
!1769 = distinct !{!1769, !1768}
!1770 = !DILocation(line: 1548, column: 7, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1772, file: !1, discriminator: 1)
!1772 = distinct !DILexicalBlock(scope: !1762, file: !1, line: 1548, column: 7)
!1773 = !DILocation(line: 1549, column: 5, scope: !1762)
!1774 = !DILocation(line: 1552, column: 32, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1743, file: !1, line: 1551, column: 5)
!1776 = !DILocation(line: 1552, column: 31, scope: !1775)
!1777 = !DILocation(line: 1552, column: 34, scope: !1775)
!1778 = !DILocation(line: 1552, column: 33, scope: !1775)
!1779 = !DILocation(line: 1552, column: 37, scope: !1775)
!1780 = !DILocation(line: 1552, column: 36, scope: !1775)
!1781 = !DILocation(line: 1552, column: 16, scope: !1775)
!1782 = !DILocation(line: 1552, column: 14, scope: !1775)
!1783 = !DILocation(line: 1553, column: 16, scope: !1775)
!1784 = !DILocation(line: 1553, column: 14, scope: !1775)
!1785 = !DILocation(line: 1555, column: 14, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1775, file: !1, line: 1555, column: 11)
!1787 = !DILocation(line: 1555, column: 18, scope: !1786)
!1788 = !DILocation(line: 1555, column: 11, scope: !1775)
!1789 = !DILocalVariable(name: "Mr1", scope: !1790, file: !1, line: 1557, type: !378)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !1, line: 1556, column: 9)
!1791 = !DILocation(line: 1557, column: 25, scope: !1790)
!1792 = !DILocalVariable(name: "stat_Mr1", scope: !1790, file: !1, line: 1558, type: !43)
!1793 = !DILocation(line: 1558, column: 15, scope: !1790)
!1794 = !DILocation(line: 1558, column: 47, scope: !1790)
!1795 = !DILocation(line: 1558, column: 50, scope: !1790)
!1796 = !DILocation(line: 1558, column: 53, scope: !1790)
!1797 = !DILocation(line: 1558, column: 26, scope: !1790)
!1798 = !DILocation(line: 1559, column: 20, scope: !1790)
!1799 = !DILocation(line: 1559, column: 20, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1790, file: !1, discriminator: 1)
!1801 = !DILocation(line: 1559, column: 20, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1790, file: !1, discriminator: 2)
!1803 = !DILocation(line: 1559, column: 20, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1790, file: !1, discriminator: 3)
!1805 = !DILocation(line: 1559, column: 20, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1790, file: !1, discriminator: 4)
!1807 = !DILocation(line: 1559, column: 20, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1790, file: !1, discriminator: 5)
!1809 = !DILocation(line: 1559, column: 20, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1790, file: !1, discriminator: 6)
!1811 = !DILocation(line: 1559, column: 18, scope: !1810)
!1812 = !DILocation(line: 1561, column: 20, scope: !1790)
!1813 = !DILocation(line: 1561, column: 29, scope: !1790)
!1814 = !DILocation(line: 1561, column: 24, scope: !1790)
!1815 = !DILocation(line: 1561, column: 14, scope: !1790)
!1816 = !DILocation(line: 1562, column: 49, scope: !1790)
!1817 = !DILocation(line: 1562, column: 44, scope: !1790)
!1818 = !DILocation(line: 1562, column: 42, scope: !1790)
!1819 = !DILocation(line: 1563, column: 24, scope: !1790)
!1820 = !DILocation(line: 1563, column: 33, scope: !1790)
!1821 = !DILocation(line: 1563, column: 28, scope: !1790)
!1822 = !DILocation(line: 1563, column: 15, scope: !1790)
!1823 = !DILocation(line: 1563, column: 13, scope: !1790)
!1824 = !DILocation(line: 1563, column: 49, scope: !1790)
!1825 = !DILocation(line: 1563, column: 58, scope: !1790)
!1826 = !DILocation(line: 1563, column: 53, scope: !1790)
!1827 = !DILocation(line: 1563, column: 40, scope: !1800)
!1828 = !DILocation(line: 1563, column: 38, scope: !1790)
!1829 = !DILocation(line: 1562, column: 18, scope: !1790)
!1830 = !DILocation(line: 1564, column: 9, scope: !1790)
!1831 = !DILocation(line: 1570, column: 7, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1703, file: !1, line: 1570, column: 7)
!1833 = !DILocation(line: 1570, column: 13, scope: !1832)
!1834 = !DILocation(line: 1570, column: 16, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1832, file: !1, discriminator: 1)
!1836 = !DILocation(line: 1570, column: 18, scope: !1835)
!1837 = !DILocation(line: 1570, column: 23, scope: !1835)
!1838 = !DILocation(line: 1570, column: 28, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1832, file: !1, discriminator: 2)
!1840 = !DILocation(line: 1570, column: 34, scope: !1839)
!1841 = !DILocation(line: 1570, column: 37, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1832, file: !1, discriminator: 3)
!1843 = !DILocation(line: 1570, column: 43, scope: !1842)
!1844 = !DILocation(line: 1570, column: 45, scope: !1842)
!1845 = !DILocation(line: 1570, column: 39, scope: !1842)
!1846 = !DILocation(line: 1570, column: 7, scope: !1842)
!1847 = !DILocation(line: 1580, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1832, file: !1, line: 1571, column: 5)
!1849 = !DILocation(line: 1580, column: 15, scope: !1848)
!1850 = !DILocation(line: 1580, column: 19, scope: !1848)
!1851 = !DILocation(line: 1580, column: 30, scope: !1848)
!1852 = !DILocation(line: 1580, column: 38, scope: !1848)
!1853 = !DILocation(line: 1580, column: 42, scope: !1848)
!1854 = !DILocation(line: 1581, column: 7, scope: !1848)
!1855 = distinct !{!1855, !1854}
!1856 = !DILocation(line: 1581, column: 7, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1858, file: !1, discriminator: 1)
!1858 = distinct !DILexicalBlock(scope: !1848, file: !1, line: 1581, column: 7)
!1859 = !DILocation(line: 1582, column: 5, scope: !1848)
!1860 = !DILocation(line: 1585, column: 11, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 1585, column: 11)
!1862 = distinct !DILexicalBlock(scope: !1832, file: !1, line: 1584, column: 5)
!1863 = !DILocation(line: 1585, column: 17, scope: !1861)
!1864 = !DILocation(line: 1585, column: 20, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1861, file: !1, discriminator: 1)
!1866 = !DILocation(line: 1585, column: 22, scope: !1865)
!1867 = !DILocation(line: 1585, column: 27, scope: !1865)
!1868 = !DILocation(line: 1585, column: 31, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1861, file: !1, discriminator: 2)
!1870 = !DILocation(line: 1585, column: 34, scope: !1869)
!1871 = !DILocation(line: 1585, column: 11, scope: !1869)
!1872 = !DILocation(line: 1587, column: 14, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1861, file: !1, line: 1586, column: 9)
!1874 = !DILocation(line: 1587, column: 18, scope: !1873)
!1875 = !DILocation(line: 1588, column: 14, scope: !1873)
!1876 = !DILocation(line: 1588, column: 18, scope: !1873)
!1877 = !DILocation(line: 1589, column: 9, scope: !1873)
!1878 = !DILocation(line: 1592, column: 34, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1861, file: !1, line: 1591, column: 9)
!1880 = !DILocation(line: 1592, column: 40, scope: !1879)
!1881 = !DILocation(line: 1592, column: 39, scope: !1879)
!1882 = !DILocation(line: 1592, column: 42, scope: !1879)
!1883 = !DILocation(line: 1592, column: 41, scope: !1879)
!1884 = !DILocation(line: 1592, column: 36, scope: !1879)
!1885 = !DILocation(line: 1592, column: 20, scope: !1879)
!1886 = !DILocation(line: 1592, column: 18, scope: !1879)
!1887 = !DILocation(line: 1593, column: 20, scope: !1879)
!1888 = !DILocation(line: 1593, column: 20, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1879, file: !1, discriminator: 1)
!1890 = !DILocation(line: 1593, column: 20, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1879, file: !1, discriminator: 2)
!1892 = !DILocation(line: 1593, column: 20, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1879, file: !1, discriminator: 3)
!1894 = !DILocation(line: 1593, column: 20, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !1879, file: !1, discriminator: 4)
!1896 = !DILocation(line: 1593, column: 20, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1879, file: !1, discriminator: 5)
!1898 = !DILocation(line: 1593, column: 20, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1879, file: !1, discriminator: 6)
!1900 = !DILocation(line: 1593, column: 18, scope: !1899)
!1901 = !DILocation(line: 1596, column: 14, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 1596, column: 11)
!1903 = !DILocation(line: 1596, column: 18, scope: !1902)
!1904 = !DILocation(line: 1596, column: 11, scope: !1862)
!1905 = !DILocalVariable(name: "Mr2", scope: !1906, file: !1, line: 1598, type: !378)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !1, line: 1597, column: 9)
!1907 = !DILocation(line: 1598, column: 25, scope: !1906)
!1908 = !DILocalVariable(name: "stat_Mr2", scope: !1906, file: !1, line: 1599, type: !43)
!1909 = !DILocation(line: 1599, column: 15, scope: !1906)
!1910 = !DILocation(line: 1599, column: 49, scope: !1906)
!1911 = !DILocation(line: 1599, column: 48, scope: !1906)
!1912 = !DILocation(line: 1599, column: 51, scope: !1906)
!1913 = !DILocation(line: 1599, column: 50, scope: !1906)
!1914 = !DILocation(line: 1599, column: 56, scope: !1906)
!1915 = !DILocation(line: 1599, column: 55, scope: !1906)
!1916 = !DILocation(line: 1599, column: 59, scope: !1906)
!1917 = !DILocation(line: 1599, column: 26, scope: !1906)
!1918 = !DILocation(line: 1600, column: 21, scope: !1906)
!1919 = !DILocation(line: 1600, column: 30, scope: !1906)
!1920 = !DILocation(line: 1600, column: 25, scope: !1906)
!1921 = !DILocation(line: 1600, column: 14, scope: !1906)
!1922 = !DILocation(line: 1601, column: 49, scope: !1906)
!1923 = !DILocation(line: 1601, column: 44, scope: !1906)
!1924 = !DILocation(line: 1601, column: 42, scope: !1906)
!1925 = !DILocation(line: 1602, column: 24, scope: !1906)
!1926 = !DILocation(line: 1602, column: 33, scope: !1906)
!1927 = !DILocation(line: 1602, column: 28, scope: !1906)
!1928 = !DILocation(line: 1602, column: 15, scope: !1906)
!1929 = !DILocation(line: 1602, column: 13, scope: !1906)
!1930 = !DILocation(line: 1602, column: 49, scope: !1906)
!1931 = !DILocation(line: 1602, column: 58, scope: !1906)
!1932 = !DILocation(line: 1602, column: 53, scope: !1906)
!1933 = !DILocation(line: 1602, column: 40, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1906, file: !1, discriminator: 1)
!1935 = !DILocation(line: 1602, column: 38, scope: !1906)
!1936 = !DILocation(line: 1601, column: 18, scope: !1906)
!1937 = !DILocation(line: 1603, column: 20, scope: !1906)
!1938 = !DILocation(line: 1603, column: 20, scope: !1934)
!1939 = !DILocation(line: 1603, column: 20, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1906, file: !1, discriminator: 2)
!1941 = !DILocation(line: 1603, column: 20, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1906, file: !1, discriminator: 3)
!1943 = !DILocation(line: 1603, column: 20, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1906, file: !1, discriminator: 4)
!1945 = !DILocation(line: 1603, column: 20, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1906, file: !1, discriminator: 5)
!1947 = !DILocation(line: 1603, column: 20, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1906, file: !1, discriminator: 6)
!1949 = !DILocation(line: 1603, column: 18, scope: !1948)
!1950 = !DILocation(line: 1605, column: 15, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1906, file: !1, line: 1605, column: 15)
!1952 = !DILocation(line: 1605, column: 18, scope: !1951)
!1953 = !DILocation(line: 1605, column: 15, scope: !1906)
!1954 = !DILocalVariable(name: "x1mb", scope: !1955, file: !1, line: 1607, type: !42)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 1606, column: 13)
!1956 = !DILocation(line: 1607, column: 22, scope: !1955)
!1957 = !DILocation(line: 1607, column: 33, scope: !1955)
!1958 = !DILocation(line: 1607, column: 38, scope: !1955)
!1959 = !DILocation(line: 1607, column: 37, scope: !1955)
!1960 = !DILocation(line: 1607, column: 29, scope: !1955)
!1961 = !DILocation(line: 1608, column: 20, scope: !1955)
!1962 = !DILocation(line: 1608, column: 27, scope: !1955)
!1963 = !DILocation(line: 1608, column: 25, scope: !1955)
!1964 = !DILocation(line: 1608, column: 18, scope: !1955)
!1965 = !DILocation(line: 1609, column: 29, scope: !1955)
!1966 = !DILocation(line: 1609, column: 24, scope: !1955)
!1967 = !DILocation(line: 1609, column: 37, scope: !1955)
!1968 = !DILocation(line: 1609, column: 35, scope: !1955)
!1969 = !DILocation(line: 1609, column: 22, scope: !1955)
!1970 = !DILocation(line: 1610, column: 13, scope: !1955)
!1971 = !DILocation(line: 1611, column: 9, scope: !1906)
!1972 = !DILocation(line: 1614, column: 18, scope: !1703)
!1973 = !DILocation(line: 1614, column: 23, scope: !1703)
!1974 = !DILocation(line: 1614, column: 21, scope: !1703)
!1975 = !DILocation(line: 1614, column: 3, scope: !1703)
!1976 = !DILocation(line: 1614, column: 11, scope: !1703)
!1977 = !DILocation(line: 1614, column: 15, scope: !1703)
!1978 = !DILocation(line: 1615, column: 46, scope: !1703)
!1979 = !DILocation(line: 1615, column: 54, scope: !1703)
!1980 = !DILocation(line: 1615, column: 41, scope: !1703)
!1981 = !DILocation(line: 1615, column: 39, scope: !1703)
!1982 = !DILocation(line: 1615, column: 62, scope: !1703)
!1983 = !DILocation(line: 1615, column: 71, scope: !1703)
!1984 = !DILocation(line: 1615, column: 69, scope: !1703)
!1985 = !DILocation(line: 1615, column: 59, scope: !1703)
!1986 = !DILocation(line: 1615, column: 3, scope: !1703)
!1987 = !DILocation(line: 1615, column: 11, scope: !1703)
!1988 = !DILocation(line: 1615, column: 15, scope: !1703)
!1989 = !DILocation(line: 1616, column: 3, scope: !1703)
!1990 = !DILocation(line: 1616, column: 11, scope: !1703)
!1991 = !DILocation(line: 1616, column: 15, scope: !1703)
!1992 = !DILocation(line: 1618, column: 10, scope: !1703)
!1993 = !DILocation(line: 1618, column: 3, scope: !1703)
!1994 = !DILocation(line: 1619, column: 1, scope: !1703)
!1995 = distinct !DISubprogram(name: "hyperg_U_bge1", scope: !1, file: !1, line: 1156, type: !1428, isLocal: true, isDefinition: true, scopeLine: 1158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!1996 = !DILocalVariable(name: "a", arg: 1, scope: !1995, file: !1, line: 1156, type: !52)
!1997 = !DILocation(line: 1156, column: 28, scope: !1995)
!1998 = !DILocalVariable(name: "b", arg: 2, scope: !1995, file: !1, line: 1156, type: !52)
!1999 = !DILocation(line: 1156, column: 44, scope: !1995)
!2000 = !DILocalVariable(name: "x", arg: 3, scope: !1995, file: !1, line: 1156, type: !52)
!2001 = !DILocation(line: 1156, column: 60, scope: !1995)
!2002 = !DILocalVariable(name: "result", arg: 4, scope: !1995, file: !1, line: 1157, type: !53)
!2003 = !DILocation(line: 1157, column: 35, scope: !1995)
!2004 = !DILocalVariable(name: "rinta", scope: !1995, file: !1, line: 1159, type: !52)
!2005 = !DILocation(line: 1159, column: 16, scope: !1995)
!2006 = !DILocation(line: 1159, column: 30, scope: !1995)
!2007 = !DILocation(line: 1159, column: 31, scope: !1995)
!2008 = !DILocation(line: 1159, column: 24, scope: !1995)
!2009 = !DILocalVariable(name: "a_neg_integer", scope: !1995, file: !1, line: 1160, type: !51)
!2010 = !DILocation(line: 1160, column: 13, scope: !1995)
!2011 = !DILocation(line: 1160, column: 30, scope: !1995)
!2012 = !DILocation(line: 1160, column: 32, scope: !1995)
!2013 = !DILocation(line: 1160, column: 38, scope: !1995)
!2014 = !DILocation(line: 1160, column: 46, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !1995, file: !1, discriminator: 1)
!2016 = !DILocation(line: 1160, column: 50, scope: !2015)
!2017 = !DILocation(line: 1160, column: 48, scope: !2015)
!2018 = !DILocation(line: 1160, column: 41, scope: !2015)
!2019 = !DILocation(line: 1160, column: 57, scope: !2015)
!2020 = !DILocation(line: 1160, column: 38, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !1995, file: !1, discriminator: 2)
!2022 = !DILocation(line: 1160, column: 13, scope: !2021)
!2023 = !DILocation(line: 1162, column: 6, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1995, file: !1, line: 1162, column: 6)
!2025 = !DILocation(line: 1162, column: 8, scope: !2024)
!2026 = !DILocation(line: 1162, column: 6, scope: !1995)
!2027 = !DILocation(line: 1163, column: 5, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2024, file: !1, line: 1162, column: 16)
!2029 = !DILocation(line: 1163, column: 13, scope: !2028)
!2030 = !DILocation(line: 1163, column: 17, scope: !2028)
!2031 = !DILocation(line: 1164, column: 5, scope: !2028)
!2032 = !DILocation(line: 1164, column: 13, scope: !2028)
!2033 = !DILocation(line: 1164, column: 17, scope: !2028)
!2034 = !DILocation(line: 1165, column: 5, scope: !2028)
!2035 = !DILocation(line: 1165, column: 13, scope: !2028)
!2036 = !DILocation(line: 1165, column: 17, scope: !2028)
!2037 = !DILocation(line: 1166, column: 5, scope: !2028)
!2038 = !DILocation(line: 1168, column: 11, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2024, file: !1, line: 1168, column: 11)
!2040 = !DILocation(line: 1168, column: 25, scope: !2039)
!2041 = !DILocation(line: 1168, column: 33, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2039, file: !1, discriminator: 1)
!2043 = !DILocation(line: 1168, column: 28, scope: !2042)
!2044 = !DILocation(line: 1168, column: 40, scope: !2042)
!2045 = !DILocation(line: 1168, column: 11, scope: !2042)
!2046 = !DILocalVariable(name: "n", scope: !2047, file: !1, line: 1171, type: !51)
!2047 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 1168, column: 51)
!2048 = !DILocation(line: 1171, column: 15, scope: !2047)
!2049 = !DILocation(line: 1171, column: 25, scope: !2047)
!2050 = !DILocation(line: 1171, column: 20, scope: !2047)
!2051 = !DILocation(line: 1171, column: 19, scope: !2047)
!2052 = !DILocalVariable(name: "sgn", scope: !2047, file: !1, line: 1172, type: !52)
!2053 = !DILocation(line: 1172, column: 18, scope: !2047)
!2054 = !DILocation(line: 1172, column: 25, scope: !2047)
!2055 = !DILocalVariable(name: "lnfact", scope: !2047, file: !1, line: 1173, type: !378)
!2056 = !DILocation(line: 1173, column: 19, scope: !2047)
!2057 = !DILocalVariable(name: "L", scope: !2047, file: !1, line: 1174, type: !378)
!2058 = !DILocation(line: 1174, column: 19, scope: !2047)
!2059 = !DILocalVariable(name: "stat_L", scope: !2047, file: !1, line: 1175, type: !51)
!2060 = !DILocation(line: 1175, column: 15, scope: !2047)
!2061 = !DILocation(line: 1175, column: 44, scope: !2047)
!2062 = !DILocation(line: 1175, column: 47, scope: !2047)
!2063 = !DILocation(line: 1175, column: 48, scope: !2047)
!2064 = !DILocation(line: 1175, column: 54, scope: !2047)
!2065 = !DILocation(line: 1175, column: 24, scope: !2047)
!2066 = !DILocation(line: 1176, column: 21, scope: !2047)
!2067 = !DILocation(line: 1176, column: 5, scope: !2047)
!2068 = !DILocalVariable(name: "stat_e", scope: !2069, file: !1, line: 1178, type: !51)
!2069 = distinct !DILexicalBlock(scope: !2047, file: !1, line: 1177, column: 5)
!2070 = !DILocation(line: 1178, column: 17, scope: !2069)
!2071 = !DILocation(line: 1178, column: 59, scope: !2069)
!2072 = !DILocation(line: 1178, column: 71, scope: !2069)
!2073 = !DILocation(line: 1179, column: 55, scope: !2069)
!2074 = !DILocation(line: 1179, column: 61, scope: !2069)
!2075 = !DILocation(line: 1179, column: 58, scope: !2069)
!2076 = !DILocation(line: 1179, column: 68, scope: !2069)
!2077 = !DILocation(line: 1180, column: 55, scope: !2069)
!2078 = !DILocation(line: 1178, column: 26, scope: !2069)
!2079 = !DILocation(line: 1181, column: 14, scope: !2069)
!2080 = !DILocation(line: 1181, column: 14, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2069, file: !1, discriminator: 1)
!2082 = !DILocation(line: 1181, column: 14, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2069, file: !1, discriminator: 2)
!2084 = !DILocation(line: 1181, column: 14, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2069, file: !1, discriminator: 3)
!2086 = !DILocation(line: 1181, column: 14, scope: !2087)
!2087 = !DILexicalBlockFile(scope: !2069, file: !1, discriminator: 4)
!2088 = !DILocation(line: 1181, column: 14, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !2069, file: !1, discriminator: 5)
!2090 = !DILocation(line: 1181, column: 14, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2069, file: !1, discriminator: 6)
!2092 = !DILocation(line: 1181, column: 7, scope: !2091)
!2093 = !DILocation(line: 1184, column: 11, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2039, file: !1, line: 1184, column: 11)
!2095 = !DILocation(line: 1184, column: 11, scope: !2096)
!2096 = !DILexicalBlockFile(scope: !2094, file: !1, discriminator: 1)
!2097 = !DILocation(line: 1184, column: 11, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2094, file: !1, discriminator: 2)
!2099 = !DILocation(line: 1184, column: 11, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2094, file: !1, discriminator: 3)
!2101 = !DILocation(line: 1184, column: 11, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2094, file: !1, discriminator: 4)
!2103 = !DILocation(line: 1184, column: 11, scope: !2039)
!2104 = !DILocalVariable(name: "ln_pre_val", scope: !2105, file: !1, line: 1185, type: !52)
!2105 = distinct !DILexicalBlock(scope: !2094, file: !1, line: 1184, column: 33)
!2106 = !DILocation(line: 1185, column: 18, scope: !2105)
!2107 = !DILocation(line: 1185, column: 32, scope: !2105)
!2108 = !DILocation(line: 1185, column: 31, scope: !2105)
!2109 = !DILocation(line: 1185, column: 38, scope: !2105)
!2110 = !DILocation(line: 1185, column: 34, scope: !2105)
!2111 = !DILocation(line: 1185, column: 33, scope: !2105)
!2112 = !DILocalVariable(name: "ln_pre_err", scope: !2105, file: !1, line: 1186, type: !52)
!2113 = !DILocation(line: 1186, column: 18, scope: !2105)
!2114 = !DILocation(line: 1186, column: 60, scope: !2105)
!2115 = !DILocation(line: 1186, column: 55, scope: !2105)
!2116 = !DILocation(line: 1186, column: 53, scope: !2105)
!2117 = !DILocalVariable(name: "asymp", scope: !2105, file: !1, line: 1187, type: !378)
!2118 = !DILocation(line: 1187, column: 19, scope: !2105)
!2119 = !DILocalVariable(name: "stat_asymp", scope: !2105, file: !1, line: 1188, type: !43)
!2120 = !DILocation(line: 1188, column: 9, scope: !2105)
!2121 = !DILocation(line: 1188, column: 39, scope: !2105)
!2122 = !DILocation(line: 1188, column: 42, scope: !2105)
!2123 = !DILocation(line: 1188, column: 45, scope: !2105)
!2124 = !DILocation(line: 1188, column: 22, scope: !2105)
!2125 = !DILocalVariable(name: "stat_e", scope: !2105, file: !1, line: 1189, type: !43)
!2126 = !DILocation(line: 1189, column: 9, scope: !2105)
!2127 = !DILocation(line: 1189, column: 44, scope: !2105)
!2128 = !DILocation(line: 1189, column: 56, scope: !2105)
!2129 = !DILocation(line: 1190, column: 53, scope: !2105)
!2130 = !DILocation(line: 1190, column: 64, scope: !2105)
!2131 = !DILocation(line: 1191, column: 47, scope: !2105)
!2132 = !DILocation(line: 1189, column: 18, scope: !2105)
!2133 = !DILocation(line: 1192, column: 12, scope: !2105)
!2134 = !DILocation(line: 1192, column: 12, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2105, file: !1, discriminator: 1)
!2136 = !DILocation(line: 1192, column: 12, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2105, file: !1, discriminator: 2)
!2138 = !DILocation(line: 1192, column: 12, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2105, file: !1, discriminator: 3)
!2140 = !DILocation(line: 1192, column: 12, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2105, file: !1, discriminator: 4)
!2142 = !DILocation(line: 1192, column: 12, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2105, file: !1, discriminator: 5)
!2144 = !DILocation(line: 1192, column: 12, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !2105, file: !1, discriminator: 6)
!2146 = !DILocation(line: 1192, column: 5, scope: !2145)
!2147 = !DILocation(line: 1194, column: 16, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2094, file: !1, line: 1194, column: 11)
!2149 = !DILocation(line: 1194, column: 11, scope: !2148)
!2150 = !DILocation(line: 1194, column: 19, scope: !2148)
!2151 = !DILocation(line: 1194, column: 11, scope: !2094)
!2152 = !DILocalVariable(name: "rU", scope: !2153, file: !1, line: 1195, type: !378)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 1194, column: 27)
!2154 = !DILocation(line: 1195, column: 19, scope: !2153)
!2155 = !DILocalVariable(name: "ln_multiplier", scope: !2153, file: !1, line: 1196, type: !42)
!2156 = !DILocation(line: 1196, column: 12, scope: !2153)
!2157 = !DILocalVariable(name: "stat_U", scope: !2153, file: !1, line: 1197, type: !43)
!2158 = !DILocation(line: 1197, column: 9, scope: !2153)
!2159 = !DILocation(line: 1197, column: 40, scope: !2153)
!2160 = !DILocation(line: 1197, column: 43, scope: !2153)
!2161 = !DILocation(line: 1197, column: 46, scope: !2153)
!2162 = !DILocation(line: 1197, column: 18, scope: !2153)
!2163 = !DILocalVariable(name: "stat_e", scope: !2153, file: !1, line: 1198, type: !43)
!2164 = !DILocation(line: 1198, column: 9, scope: !2153)
!2165 = !DILocation(line: 1198, column: 44, scope: !2153)
!2166 = !DILocation(line: 1198, column: 84, scope: !2153)
!2167 = !DILocation(line: 1198, column: 79, scope: !2153)
!2168 = !DILocation(line: 1198, column: 78, scope: !2153)
!2169 = !DILocation(line: 1198, column: 103, scope: !2153)
!2170 = !DILocation(line: 1198, column: 111, scope: !2153)
!2171 = !DILocation(line: 1198, column: 116, scope: !2153)
!2172 = !DILocation(line: 1198, column: 18, scope: !2173)
!2173 = !DILexicalBlockFile(scope: !2153, file: !1, discriminator: 1)
!2174 = !DILocation(line: 1199, column: 12, scope: !2153)
!2175 = !DILocation(line: 1199, column: 12, scope: !2173)
!2176 = !DILocation(line: 1199, column: 12, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2153, file: !1, discriminator: 2)
!2178 = !DILocation(line: 1199, column: 12, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2153, file: !1, discriminator: 3)
!2180 = !DILocation(line: 1199, column: 12, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2153, file: !1, discriminator: 4)
!2182 = !DILocation(line: 1199, column: 12, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2153, file: !1, discriminator: 5)
!2184 = !DILocation(line: 1199, column: 12, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2153, file: !1, discriminator: 6)
!2186 = !DILocation(line: 1199, column: 5, scope: !2185)
!2187 = !DILocation(line: 1201, column: 11, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 1201, column: 11)
!2189 = !DILocation(line: 1201, column: 11, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !2188, file: !1, discriminator: 1)
!2191 = !DILocation(line: 1201, column: 11, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2188, file: !1, discriminator: 2)
!2193 = !DILocation(line: 1201, column: 11, scope: !2194)
!2194 = !DILexicalBlockFile(scope: !2188, file: !1, discriminator: 3)
!2195 = !DILocation(line: 1201, column: 11, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2188, file: !1, discriminator: 4)
!2197 = !DILocation(line: 1201, column: 11, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2188, file: !1, discriminator: 5)
!2199 = !DILocalVariable(name: "ser", scope: !2200, file: !1, line: 1202, type: !378)
!2200 = distinct !DILexicalBlock(scope: !2188, file: !1, line: 1201, column: 34)
!2201 = !DILocation(line: 1202, column: 19, scope: !2200)
!2202 = !DILocalVariable(name: "stat_ser", scope: !2200, file: !1, line: 1203, type: !51)
!2203 = !DILocation(line: 1203, column: 15, scope: !2200)
!2204 = !DILocation(line: 1203, column: 42, scope: !2200)
!2205 = !DILocation(line: 1203, column: 45, scope: !2200)
!2206 = !DILocation(line: 1203, column: 48, scope: !2200)
!2207 = !DILocation(line: 1203, column: 26, scope: !2200)
!2208 = !DILocation(line: 1204, column: 23, scope: !2200)
!2209 = !DILocation(line: 1204, column: 5, scope: !2200)
!2210 = !DILocation(line: 1204, column: 13, scope: !2200)
!2211 = !DILocation(line: 1204, column: 17, scope: !2200)
!2212 = !DILocation(line: 1205, column: 23, scope: !2200)
!2213 = !DILocation(line: 1205, column: 5, scope: !2200)
!2214 = !DILocation(line: 1205, column: 13, scope: !2200)
!2215 = !DILocation(line: 1205, column: 17, scope: !2200)
!2216 = !DILocation(line: 1206, column: 5, scope: !2200)
!2217 = !DILocation(line: 1206, column: 13, scope: !2200)
!2218 = !DILocation(line: 1206, column: 17, scope: !2200)
!2219 = !DILocation(line: 1207, column: 12, scope: !2200)
!2220 = !DILocation(line: 1207, column: 5, scope: !2200)
!2221 = !DILocation(line: 1209, column: 11, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2188, file: !1, line: 1209, column: 11)
!2223 = !DILocation(line: 1209, column: 13, scope: !2222)
!2224 = !DILocation(line: 1209, column: 11, scope: !2188)
!2225 = !DILocalVariable(name: "scale_factor", scope: !2226, file: !1, line: 1212, type: !52)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 1209, column: 20)
!2227 = !DILocation(line: 1212, column: 18, scope: !2226)
!2228 = !DILocalVariable(name: "a0", scope: !2226, file: !1, line: 1213, type: !52)
!2229 = !DILocation(line: 1213, column: 18, scope: !2226)
!2230 = !DILocation(line: 1213, column: 23, scope: !2226)
!2231 = !DILocation(line: 1213, column: 33, scope: !2226)
!2232 = !DILocation(line: 1213, column: 27, scope: !2226)
!2233 = !DILocation(line: 1213, column: 25, scope: !2226)
!2234 = !DILocation(line: 1213, column: 36, scope: !2226)
!2235 = !DILocalVariable(name: "b0", scope: !2226, file: !1, line: 1214, type: !52)
!2236 = !DILocation(line: 1214, column: 18, scope: !2226)
!2237 = !DILocation(line: 1214, column: 23, scope: !2226)
!2238 = !DILocation(line: 1214, column: 33, scope: !2226)
!2239 = !DILocation(line: 1214, column: 27, scope: !2226)
!2240 = !DILocation(line: 1214, column: 25, scope: !2226)
!2241 = !DILocation(line: 1214, column: 36, scope: !2226)
!2242 = !DILocalVariable(name: "scale_count", scope: !2226, file: !1, line: 1215, type: !43)
!2243 = !DILocation(line: 1215, column: 9, scope: !2226)
!2244 = !DILocalVariable(name: "lm_0", scope: !2226, file: !1, line: 1216, type: !42)
!2245 = !DILocation(line: 1216, column: 12, scope: !2226)
!2246 = !DILocalVariable(name: "lm_1", scope: !2226, file: !1, line: 1216, type: !42)
!2247 = !DILocation(line: 1216, column: 18, scope: !2226)
!2248 = !DILocalVariable(name: "lm_max", scope: !2226, file: !1, line: 1217, type: !42)
!2249 = !DILocation(line: 1217, column: 12, scope: !2226)
!2250 = !DILocalVariable(name: "r_Uap1", scope: !2226, file: !1, line: 1218, type: !378)
!2251 = !DILocation(line: 1218, column: 19, scope: !2226)
!2252 = !DILocalVariable(name: "r_Ua", scope: !2226, file: !1, line: 1219, type: !378)
!2253 = !DILocation(line: 1219, column: 19, scope: !2226)
!2254 = !DILocalVariable(name: "stat_0", scope: !2226, file: !1, line: 1220, type: !43)
!2255 = !DILocation(line: 1220, column: 9, scope: !2226)
!2256 = !DILocation(line: 1220, column: 40, scope: !2226)
!2257 = !DILocation(line: 1220, column: 42, scope: !2226)
!2258 = !DILocation(line: 1220, column: 48, scope: !2226)
!2259 = !DILocation(line: 1220, column: 52, scope: !2226)
!2260 = !DILocation(line: 1220, column: 18, scope: !2226)
!2261 = !DILocalVariable(name: "stat_1", scope: !2226, file: !1, line: 1221, type: !43)
!2262 = !DILocation(line: 1221, column: 9, scope: !2226)
!2263 = !DILocation(line: 1221, column: 40, scope: !2226)
!2264 = !DILocation(line: 1221, column: 48, scope: !2226)
!2265 = !DILocation(line: 1221, column: 52, scope: !2226)
!2266 = !DILocation(line: 1221, column: 18, scope: !2226)
!2267 = !DILocalVariable(name: "stat_e", scope: !2226, file: !1, line: 1222, type: !43)
!2268 = !DILocation(line: 1222, column: 9, scope: !2226)
!2269 = !DILocalVariable(name: "Uap1", scope: !2226, file: !1, line: 1223, type: !42)
!2270 = !DILocation(line: 1223, column: 12, scope: !2226)
!2271 = !DILocation(line: 1223, column: 26, scope: !2226)
!2272 = !DILocalVariable(name: "Ua", scope: !2226, file: !1, line: 1224, type: !42)
!2273 = !DILocation(line: 1224, column: 12, scope: !2226)
!2274 = !DILocation(line: 1224, column: 24, scope: !2226)
!2275 = !DILocalVariable(name: "Uam1", scope: !2226, file: !1, line: 1225, type: !42)
!2276 = !DILocation(line: 1225, column: 12, scope: !2226)
!2277 = !DILocalVariable(name: "ap", scope: !2226, file: !1, line: 1226, type: !42)
!2278 = !DILocation(line: 1226, column: 12, scope: !2226)
!2279 = !DILocation(line: 1227, column: 14, scope: !2226)
!2280 = !DILocation(line: 1227, column: 14, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2226, file: !1, discriminator: 1)
!2282 = !DILocation(line: 1227, column: 14, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2226, file: !1, discriminator: 2)
!2284 = !DILocation(line: 1227, column: 14, scope: !2285)
!2285 = !DILexicalBlockFile(scope: !2226, file: !1, discriminator: 3)
!2286 = !DILocation(line: 1227, column: 12, scope: !2285)
!2287 = !DILocation(line: 1228, column: 17, scope: !2226)
!2288 = !DILocation(line: 1228, column: 22, scope: !2226)
!2289 = !DILocation(line: 1228, column: 21, scope: !2226)
!2290 = !DILocation(line: 1228, column: 13, scope: !2226)
!2291 = !DILocation(line: 1228, column: 10, scope: !2226)
!2292 = !DILocation(line: 1229, column: 17, scope: !2226)
!2293 = !DILocation(line: 1229, column: 22, scope: !2226)
!2294 = !DILocation(line: 1229, column: 21, scope: !2226)
!2295 = !DILocation(line: 1229, column: 13, scope: !2226)
!2296 = !DILocation(line: 1229, column: 10, scope: !2226)
!2297 = !DILocation(line: 1233, column: 12, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2226, file: !1, line: 1233, column: 5)
!2299 = !DILocation(line: 1233, column: 11, scope: !2298)
!2300 = !DILocation(line: 1233, column: 9, scope: !2298)
!2301 = !DILocation(line: 1233, column: 16, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2303, file: !1, discriminator: 1)
!2303 = distinct !DILexicalBlock(scope: !2298, file: !1, line: 1233, column: 5)
!2304 = !DILocation(line: 1233, column: 19, scope: !2302)
!2305 = !DILocation(line: 1233, column: 20, scope: !2302)
!2306 = !DILocation(line: 1233, column: 18, scope: !2302)
!2307 = !DILocation(line: 1233, column: 5, scope: !2302)
!2308 = !DILocation(line: 1234, column: 14, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 1233, column: 37)
!2310 = !DILocation(line: 1234, column: 18, scope: !2309)
!2311 = !DILocation(line: 1234, column: 21, scope: !2309)
!2312 = !DILocation(line: 1234, column: 20, scope: !2309)
!2313 = !DILocation(line: 1234, column: 23, scope: !2309)
!2314 = !DILocation(line: 1234, column: 16, scope: !2309)
!2315 = !DILocation(line: 1234, column: 29, scope: !2309)
!2316 = !DILocation(line: 1234, column: 28, scope: !2309)
!2317 = !DILocation(line: 1234, column: 37, scope: !2309)
!2318 = !DILocation(line: 1234, column: 43, scope: !2309)
!2319 = !DILocation(line: 1234, column: 42, scope: !2309)
!2320 = !DILocation(line: 1234, column: 38, scope: !2309)
!2321 = !DILocation(line: 1234, column: 46, scope: !2309)
!2322 = !DILocation(line: 1234, column: 45, scope: !2309)
!2323 = !DILocation(line: 1234, column: 50, scope: !2309)
!2324 = !DILocation(line: 1234, column: 49, scope: !2309)
!2325 = !DILocation(line: 1234, column: 34, scope: !2309)
!2326 = !DILocation(line: 1234, column: 12, scope: !2309)
!2327 = !DILocation(line: 1235, column: 14, scope: !2309)
!2328 = !DILocation(line: 1235, column: 12, scope: !2309)
!2329 = !DILocation(line: 1236, column: 14, scope: !2309)
!2330 = !DILocation(line: 1236, column: 12, scope: !2309)
!2331 = !DILocation(line: 1237, column: 7, scope: !2309)
!2332 = distinct !{!2332, !2331}
!2333 = !DILocalVariable(name: "au0", scope: !2334, file: !1, line: 1237, type: !42)
!2334 = distinct !DILexicalBlock(scope: !2309, file: !1, line: 1237, column: 7)
!2335 = !DILocation(line: 1237, column: 7, scope: !2334)
!2336 = !DILocation(line: 1237, column: 7, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2334, file: !1, discriminator: 1)
!2338 = !DILocation(line: 1237, column: 7, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2340, file: !1, discriminator: 2)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !1, line: 1237, column: 7)
!2341 = distinct !DILexicalBlock(scope: !2334, file: !1, line: 1237, column: 7)
!2342 = !DILocation(line: 1237, column: 7, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !2344, file: !1, discriminator: 3)
!2344 = distinct !DILexicalBlock(scope: !2341, file: !1, line: 1237, column: 7)
!2345 = !DILocation(line: 1237, column: 7, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2347, file: !1, discriminator: 4)
!2347 = distinct !DILexicalBlock(scope: !2344, file: !1, line: 1237, column: 7)
!2348 = !DILocation(line: 1237, column: 7, scope: !2349)
!2349 = !DILexicalBlockFile(scope: !2334, file: !1, discriminator: 5)
!2350 = !DILocation(line: 1238, column: 5, scope: !2309)
!2351 = !DILocation(line: 1233, column: 29, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !2303, file: !1, discriminator: 2)
!2353 = !DILocation(line: 1233, column: 5, scope: !2352)
!2354 = distinct !{!2354, !2355}
!2355 = !DILocation(line: 1233, column: 5, scope: !2226)
!2356 = !DILocation(line: 1240, column: 8, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2226, file: !1, line: 1240, column: 8)
!2358 = !DILocation(line: 1240, column: 10, scope: !2357)
!2359 = !DILocation(line: 1240, column: 8, scope: !2226)
!2360 = !DILocalVariable(name: "lnscale", scope: !2361, file: !1, line: 1243, type: !52)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !1, line: 1240, column: 17)
!2362 = !DILocation(line: 1243, column: 20, scope: !2361)
!2363 = !DILocation(line: 1243, column: 30, scope: !2361)
!2364 = !DILocalVariable(name: "lnm", scope: !2361, file: !1, line: 1244, type: !378)
!2365 = !DILocation(line: 1244, column: 21, scope: !2361)
!2366 = !DILocalVariable(name: "y", scope: !2361, file: !1, line: 1245, type: !378)
!2367 = !DILocation(line: 1245, column: 21, scope: !2361)
!2368 = !DILocation(line: 1246, column: 17, scope: !2361)
!2369 = !DILocation(line: 1246, column: 26, scope: !2361)
!2370 = !DILocation(line: 1246, column: 40, scope: !2361)
!2371 = !DILocation(line: 1246, column: 38, scope: !2361)
!2372 = !DILocation(line: 1246, column: 24, scope: !2361)
!2373 = !DILocation(line: 1246, column: 11, scope: !2361)
!2374 = !DILocation(line: 1246, column: 15, scope: !2361)
!2375 = !DILocation(line: 1247, column: 47, scope: !2361)
!2376 = !DILocation(line: 1247, column: 42, scope: !2361)
!2377 = !DILocation(line: 1247, column: 57, scope: !2361)
!2378 = !DILocation(line: 1247, column: 76, scope: !2361)
!2379 = !DILocation(line: 1247, column: 71, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2361, file: !1, discriminator: 1)
!2381 = !DILocation(line: 1247, column: 69, scope: !2361)
!2382 = !DILocation(line: 1247, column: 55, scope: !2361)
!2383 = !DILocation(line: 1247, column: 39, scope: !2361)
!2384 = !DILocation(line: 1247, column: 11, scope: !2361)
!2385 = !DILocation(line: 1247, column: 15, scope: !2361)
!2386 = !DILocation(line: 1248, column: 16, scope: !2361)
!2387 = !DILocation(line: 1248, column: 9, scope: !2361)
!2388 = !DILocation(line: 1248, column: 14, scope: !2361)
!2389 = !DILocation(line: 1249, column: 28, scope: !2361)
!2390 = !DILocation(line: 1249, column: 39, scope: !2361)
!2391 = !DILocation(line: 1249, column: 31, scope: !2361)
!2392 = !DILocation(line: 1249, column: 16, scope: !2361)
!2393 = !DILocation(line: 1249, column: 51, scope: !2361)
!2394 = !DILocation(line: 1249, column: 46, scope: !2380)
!2395 = !DILocation(line: 1249, column: 44, scope: !2361)
!2396 = !DILocation(line: 1249, column: 9, scope: !2361)
!2397 = !DILocation(line: 1249, column: 14, scope: !2361)
!2398 = !DILocation(line: 1250, column: 26, scope: !2361)
!2399 = !DILocation(line: 1250, column: 35, scope: !2361)
!2400 = !DILocation(line: 1250, column: 29, scope: !2361)
!2401 = !DILocation(line: 1250, column: 16, scope: !2361)
!2402 = !DILocation(line: 1250, column: 47, scope: !2361)
!2403 = !DILocation(line: 1250, column: 42, scope: !2380)
!2404 = !DILocation(line: 1250, column: 40, scope: !2361)
!2405 = !DILocation(line: 1250, column: 9, scope: !2361)
!2406 = !DILocation(line: 1250, column: 13, scope: !2361)
!2407 = !DILocation(line: 1251, column: 46, scope: !2361)
!2408 = !DILocation(line: 1251, column: 48, scope: !2361)
!2409 = !DILocation(line: 1251, column: 47, scope: !2361)
!2410 = !DILocation(line: 1251, column: 41, scope: !2361)
!2411 = !DILocation(line: 1251, column: 52, scope: !2361)
!2412 = !DILocation(line: 1251, column: 38, scope: !2361)
!2413 = !DILocation(line: 1251, column: 66, scope: !2361)
!2414 = !DILocation(line: 1251, column: 61, scope: !2380)
!2415 = !DILocation(line: 1251, column: 59, scope: !2361)
!2416 = !DILocation(line: 1251, column: 9, scope: !2361)
!2417 = !DILocation(line: 1251, column: 13, scope: !2361)
!2418 = !DILocation(line: 1252, column: 21, scope: !2361)
!2419 = !DILocation(line: 1252, column: 26, scope: !2361)
!2420 = !DILocation(line: 1252, column: 25, scope: !2361)
!2421 = !DILocation(line: 1252, column: 16, scope: !2361)
!2422 = !DILocation(line: 1252, column: 34, scope: !2361)
!2423 = !DILocation(line: 1252, column: 9, scope: !2361)
!2424 = !DILocation(line: 1252, column: 13, scope: !2361)
!2425 = !DILocation(line: 1253, column: 21, scope: !2361)
!2426 = !DILocation(line: 1253, column: 26, scope: !2361)
!2427 = !DILocation(line: 1253, column: 25, scope: !2361)
!2428 = !DILocation(line: 1253, column: 16, scope: !2361)
!2429 = !DILocation(line: 1253, column: 34, scope: !2361)
!2430 = !DILocation(line: 1253, column: 9, scope: !2361)
!2431 = !DILocation(line: 1253, column: 13, scope: !2361)
!2432 = !DILocation(line: 1254, column: 46, scope: !2361)
!2433 = !DILocation(line: 1254, column: 55, scope: !2361)
!2434 = !DILocation(line: 1254, column: 62, scope: !2361)
!2435 = !DILocation(line: 1254, column: 69, scope: !2361)
!2436 = !DILocation(line: 1254, column: 74, scope: !2361)
!2437 = !DILocation(line: 1254, column: 16, scope: !2361)
!2438 = !DILocation(line: 1254, column: 14, scope: !2361)
!2439 = !DILocation(line: 1255, column: 5, scope: !2361)
!2440 = !DILocalVariable(name: "err_mult", scope: !2441, file: !1, line: 1259, type: !52)
!2441 = distinct !DILexicalBlock(scope: !2357, file: !1, line: 1256, column: 10)
!2442 = !DILocation(line: 1259, column: 20, scope: !2441)
!2443 = !DILocation(line: 1259, column: 36, scope: !2441)
!2444 = !DILocation(line: 1259, column: 38, scope: !2441)
!2445 = !DILocation(line: 1259, column: 37, scope: !2441)
!2446 = !DILocation(line: 1259, column: 31, scope: !2441)
!2447 = !DILocation(line: 1259, column: 49, scope: !2441)
!2448 = !DILocation(line: 1259, column: 51, scope: !2441)
!2449 = !DILocation(line: 1259, column: 50, scope: !2441)
!2450 = !DILocation(line: 1259, column: 44, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2441, file: !1, discriminator: 1)
!2452 = !DILocation(line: 1259, column: 42, scope: !2441)
!2453 = !DILocation(line: 1259, column: 55, scope: !2441)
!2454 = !DILocalVariable(name: "lnscale", scope: !2441, file: !1, line: 1260, type: !52)
!2455 = !DILocation(line: 1260, column: 20, scope: !2441)
!2456 = !DILocation(line: 1260, column: 30, scope: !2441)
!2457 = !DILocalVariable(name: "lnm", scope: !2441, file: !1, line: 1261, type: !378)
!2458 = !DILocation(line: 1261, column: 21, scope: !2441)
!2459 = !DILocalVariable(name: "y", scope: !2441, file: !1, line: 1262, type: !378)
!2460 = !DILocation(line: 1262, column: 21, scope: !2441)
!2461 = !DILocalVariable(name: "Ubm1", scope: !2441, file: !1, line: 1264, type: !42)
!2462 = !DILocation(line: 1264, column: 14, scope: !2441)
!2463 = !DILocation(line: 1264, column: 21, scope: !2441)
!2464 = !DILocalVariable(name: "Ub", scope: !2441, file: !1, line: 1265, type: !42)
!2465 = !DILocation(line: 1265, column: 14, scope: !2441)
!2466 = !DILocation(line: 1265, column: 22, scope: !2441)
!2467 = !DILocation(line: 1265, column: 25, scope: !2441)
!2468 = !DILocation(line: 1265, column: 28, scope: !2441)
!2469 = !DILocation(line: 1265, column: 27, scope: !2441)
!2470 = !DILocation(line: 1265, column: 29, scope: !2441)
!2471 = !DILocation(line: 1265, column: 23, scope: !2441)
!2472 = !DILocation(line: 1265, column: 35, scope: !2441)
!2473 = !DILocation(line: 1265, column: 34, scope: !2441)
!2474 = !DILocation(line: 1265, column: 43, scope: !2441)
!2475 = !DILocation(line: 1265, column: 45, scope: !2441)
!2476 = !DILocation(line: 1265, column: 44, scope: !2441)
!2477 = !DILocation(line: 1265, column: 48, scope: !2441)
!2478 = !DILocation(line: 1265, column: 47, scope: !2441)
!2479 = !DILocation(line: 1265, column: 40, scope: !2441)
!2480 = !DILocation(line: 1265, column: 52, scope: !2441)
!2481 = !DILocation(line: 1265, column: 51, scope: !2441)
!2482 = !DILocalVariable(name: "Ubp1", scope: !2441, file: !1, line: 1266, type: !42)
!2483 = !DILocation(line: 1266, column: 14, scope: !2441)
!2484 = !DILocalVariable(name: "bp", scope: !2441, file: !1, line: 1267, type: !42)
!2485 = !DILocation(line: 1267, column: 14, scope: !2441)
!2486 = !DILocation(line: 1268, column: 14, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2441, file: !1, line: 1268, column: 7)
!2488 = !DILocation(line: 1268, column: 16, scope: !2487)
!2489 = !DILocation(line: 1268, column: 13, scope: !2487)
!2490 = !DILocation(line: 1268, column: 11, scope: !2487)
!2491 = !DILocation(line: 1268, column: 22, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2493, file: !1, discriminator: 1)
!2493 = distinct !DILexicalBlock(scope: !2487, file: !1, line: 1268, column: 7)
!2494 = !DILocation(line: 1268, column: 25, scope: !2492)
!2495 = !DILocation(line: 1268, column: 26, scope: !2492)
!2496 = !DILocation(line: 1268, column: 24, scope: !2492)
!2497 = !DILocation(line: 1268, column: 7, scope: !2492)
!2498 = !DILocation(line: 1269, column: 22, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2493, file: !1, line: 1268, column: 43)
!2500 = !DILocation(line: 1269, column: 21, scope: !2499)
!2501 = !DILocation(line: 1269, column: 24, scope: !2499)
!2502 = !DILocation(line: 1269, column: 23, scope: !2499)
!2503 = !DILocation(line: 1269, column: 28, scope: !2499)
!2504 = !DILocation(line: 1269, column: 27, scope: !2499)
!2505 = !DILocation(line: 1269, column: 36, scope: !2499)
!2506 = !DILocation(line: 1269, column: 39, scope: !2499)
!2507 = !DILocation(line: 1269, column: 38, scope: !2499)
!2508 = !DILocation(line: 1269, column: 40, scope: !2499)
!2509 = !DILocation(line: 1269, column: 46, scope: !2499)
!2510 = !DILocation(line: 1269, column: 45, scope: !2499)
!2511 = !DILocation(line: 1269, column: 33, scope: !2499)
!2512 = !DILocation(line: 1269, column: 50, scope: !2499)
!2513 = !DILocation(line: 1269, column: 49, scope: !2499)
!2514 = !DILocation(line: 1269, column: 14, scope: !2499)
!2515 = !DILocation(line: 1270, column: 16, scope: !2499)
!2516 = !DILocation(line: 1270, column: 14, scope: !2499)
!2517 = !DILocation(line: 1271, column: 16, scope: !2499)
!2518 = !DILocation(line: 1271, column: 14, scope: !2499)
!2519 = !DILocation(line: 1272, column: 9, scope: !2499)
!2520 = distinct !{!2520, !2519}
!2521 = !DILocalVariable(name: "au0", scope: !2522, file: !1, line: 1272, type: !42)
!2522 = distinct !DILexicalBlock(scope: !2499, file: !1, line: 1272, column: 9)
!2523 = !DILocation(line: 1272, column: 9, scope: !2522)
!2524 = !DILocation(line: 1272, column: 9, scope: !2525)
!2525 = !DILexicalBlockFile(scope: !2522, file: !1, discriminator: 1)
!2526 = !DILocation(line: 1272, column: 9, scope: !2527)
!2527 = !DILexicalBlockFile(scope: !2528, file: !1, discriminator: 2)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 1272, column: 9)
!2529 = distinct !DILexicalBlock(scope: !2522, file: !1, line: 1272, column: 9)
!2530 = !DILocation(line: 1272, column: 9, scope: !2531)
!2531 = !DILexicalBlockFile(scope: !2532, file: !1, discriminator: 3)
!2532 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 1272, column: 9)
!2533 = !DILocation(line: 1272, column: 9, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2535, file: !1, discriminator: 4)
!2535 = distinct !DILexicalBlock(scope: !2532, file: !1, line: 1272, column: 9)
!2536 = !DILocation(line: 1272, column: 9, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2522, file: !1, discriminator: 5)
!2538 = !DILocation(line: 1273, column: 7, scope: !2499)
!2539 = !DILocation(line: 1268, column: 35, scope: !2540)
!2540 = !DILexicalBlockFile(scope: !2493, file: !1, discriminator: 2)
!2541 = !DILocation(line: 1268, column: 7, scope: !2540)
!2542 = distinct !{!2542, !2543}
!2543 = !DILocation(line: 1268, column: 7, scope: !2441)
!2544 = !DILocation(line: 1275, column: 17, scope: !2441)
!2545 = !DILocation(line: 1275, column: 26, scope: !2441)
!2546 = !DILocation(line: 1275, column: 40, scope: !2441)
!2547 = !DILocation(line: 1275, column: 38, scope: !2441)
!2548 = !DILocation(line: 1275, column: 24, scope: !2441)
!2549 = !DILocation(line: 1275, column: 11, scope: !2441)
!2550 = !DILocation(line: 1275, column: 15, scope: !2441)
!2551 = !DILocation(line: 1276, column: 47, scope: !2441)
!2552 = !DILocation(line: 1276, column: 42, scope: !2441)
!2553 = !DILocation(line: 1276, column: 62, scope: !2441)
!2554 = !DILocation(line: 1276, column: 76, scope: !2441)
!2555 = !DILocation(line: 1276, column: 74, scope: !2441)
!2556 = !DILocation(line: 1276, column: 57, scope: !2451)
!2557 = !DILocation(line: 1276, column: 55, scope: !2441)
!2558 = !DILocation(line: 1276, column: 39, scope: !2441)
!2559 = !DILocation(line: 1276, column: 11, scope: !2441)
!2560 = !DILocation(line: 1276, column: 15, scope: !2441)
!2561 = !DILocation(line: 1277, column: 15, scope: !2441)
!2562 = !DILocation(line: 1277, column: 9, scope: !2441)
!2563 = !DILocation(line: 1277, column: 13, scope: !2441)
!2564 = !DILocation(line: 1278, column: 22, scope: !2441)
!2565 = !DILocation(line: 1278, column: 20, scope: !2441)
!2566 = !DILocation(line: 1278, column: 45, scope: !2441)
!2567 = !DILocation(line: 1278, column: 56, scope: !2441)
!2568 = !DILocation(line: 1278, column: 48, scope: !2441)
!2569 = !DILocation(line: 1278, column: 33, scope: !2441)
!2570 = !DILocation(line: 1278, column: 31, scope: !2441)
!2571 = !DILocation(line: 1278, column: 68, scope: !2441)
!2572 = !DILocation(line: 1278, column: 63, scope: !2451)
!2573 = !DILocation(line: 1278, column: 61, scope: !2441)
!2574 = !DILocation(line: 1278, column: 9, scope: !2441)
!2575 = !DILocation(line: 1278, column: 14, scope: !2441)
!2576 = !DILocation(line: 1279, column: 22, scope: !2441)
!2577 = !DILocation(line: 1279, column: 20, scope: !2441)
!2578 = !DILocation(line: 1279, column: 43, scope: !2441)
!2579 = !DILocation(line: 1279, column: 52, scope: !2441)
!2580 = !DILocation(line: 1279, column: 46, scope: !2441)
!2581 = !DILocation(line: 1279, column: 33, scope: !2441)
!2582 = !DILocation(line: 1279, column: 31, scope: !2441)
!2583 = !DILocation(line: 1279, column: 64, scope: !2441)
!2584 = !DILocation(line: 1279, column: 59, scope: !2451)
!2585 = !DILocation(line: 1279, column: 57, scope: !2441)
!2586 = !DILocation(line: 1279, column: 9, scope: !2441)
!2587 = !DILocation(line: 1279, column: 13, scope: !2441)
!2588 = !DILocation(line: 1280, column: 40, scope: !2441)
!2589 = !DILocation(line: 1280, column: 38, scope: !2441)
!2590 = !DILocation(line: 1280, column: 56, scope: !2441)
!2591 = !DILocation(line: 1280, column: 51, scope: !2441)
!2592 = !DILocation(line: 1280, column: 49, scope: !2441)
!2593 = !DILocation(line: 1280, column: 9, scope: !2441)
!2594 = !DILocation(line: 1280, column: 13, scope: !2441)
!2595 = !DILocation(line: 1281, column: 21, scope: !2441)
!2596 = !DILocation(line: 1281, column: 26, scope: !2441)
!2597 = !DILocation(line: 1281, column: 25, scope: !2441)
!2598 = !DILocation(line: 1281, column: 16, scope: !2441)
!2599 = !DILocation(line: 1281, column: 34, scope: !2441)
!2600 = !DILocation(line: 1281, column: 9, scope: !2441)
!2601 = !DILocation(line: 1281, column: 13, scope: !2441)
!2602 = !DILocation(line: 1282, column: 21, scope: !2441)
!2603 = !DILocation(line: 1282, column: 26, scope: !2441)
!2604 = !DILocation(line: 1282, column: 25, scope: !2441)
!2605 = !DILocation(line: 1282, column: 16, scope: !2441)
!2606 = !DILocation(line: 1282, column: 34, scope: !2441)
!2607 = !DILocation(line: 1282, column: 9, scope: !2441)
!2608 = !DILocation(line: 1282, column: 13, scope: !2441)
!2609 = !DILocation(line: 1283, column: 46, scope: !2441)
!2610 = !DILocation(line: 1283, column: 55, scope: !2441)
!2611 = !DILocation(line: 1283, column: 62, scope: !2441)
!2612 = !DILocation(line: 1283, column: 69, scope: !2441)
!2613 = !DILocation(line: 1283, column: 74, scope: !2441)
!2614 = !DILocation(line: 1283, column: 16, scope: !2441)
!2615 = !DILocation(line: 1283, column: 14, scope: !2441)
!2616 = !DILocation(line: 1285, column: 12, scope: !2226)
!2617 = !DILocation(line: 1285, column: 12, scope: !2281)
!2618 = !DILocation(line: 1285, column: 12, scope: !2283)
!2619 = !DILocation(line: 1285, column: 12, scope: !2285)
!2620 = !DILocation(line: 1285, column: 12, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2226, file: !1, discriminator: 4)
!2622 = !DILocation(line: 1285, column: 12, scope: !2623)
!2623 = !DILexicalBlockFile(scope: !2226, file: !1, discriminator: 5)
!2624 = !DILocation(line: 1285, column: 12, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2226, file: !1, discriminator: 6)
!2626 = !DILocation(line: 1285, column: 12, scope: !2627)
!2627 = !DILexicalBlockFile(scope: !2226, file: !1, discriminator: 7)
!2628 = !DILocation(line: 1285, column: 12, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !2226, file: !1, discriminator: 8)
!2630 = !DILocation(line: 1285, column: 12, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2226, file: !1, discriminator: 9)
!2632 = !DILocation(line: 1285, column: 5, scope: !2631)
!2633 = !DILocation(line: 1287, column: 11, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 1287, column: 11)
!2635 = !DILocation(line: 1287, column: 18, scope: !2634)
!2636 = !DILocation(line: 1287, column: 17, scope: !2634)
!2637 = !DILocation(line: 1287, column: 22, scope: !2634)
!2638 = !DILocation(line: 1287, column: 20, scope: !2634)
!2639 = !DILocation(line: 1287, column: 13, scope: !2634)
!2640 = !DILocation(line: 1287, column: 11, scope: !2222)
!2641 = !DILocalVariable(name: "scale_count", scope: !2642, file: !1, line: 1294, type: !43)
!2642 = distinct !DILexicalBlock(scope: !2634, file: !1, line: 1287, column: 25)
!2643 = !DILocation(line: 1294, column: 9, scope: !2642)
!2644 = !DILocalVariable(name: "a0", scope: !2642, file: !1, line: 1295, type: !52)
!2645 = !DILocation(line: 1295, column: 18, scope: !2642)
!2646 = !DILocation(line: 1295, column: 23, scope: !2642)
!2647 = !DILocation(line: 1295, column: 33, scope: !2642)
!2648 = !DILocation(line: 1295, column: 27, scope: !2642)
!2649 = !DILocation(line: 1295, column: 25, scope: !2642)
!2650 = !DILocalVariable(name: "scale_factor", scope: !2642, file: !1, line: 1296, type: !52)
!2651 = !DILocation(line: 1296, column: 18, scope: !2642)
!2652 = !DILocalVariable(name: "lnscale", scope: !2642, file: !1, line: 1297, type: !42)
!2653 = !DILocation(line: 1297, column: 12, scope: !2642)
!2654 = !DILocalVariable(name: "lm_0", scope: !2642, file: !1, line: 1298, type: !42)
!2655 = !DILocation(line: 1298, column: 12, scope: !2642)
!2656 = !DILocalVariable(name: "lm_1", scope: !2642, file: !1, line: 1298, type: !42)
!2657 = !DILocation(line: 1298, column: 18, scope: !2642)
!2658 = !DILocalVariable(name: "lm_max", scope: !2642, file: !1, line: 1298, type: !42)
!2659 = !DILocation(line: 1298, column: 24, scope: !2642)
!2660 = !DILocalVariable(name: "r_Uam1", scope: !2642, file: !1, line: 1299, type: !378)
!2661 = !DILocation(line: 1299, column: 19, scope: !2642)
!2662 = !DILocalVariable(name: "r_Ua", scope: !2642, file: !1, line: 1300, type: !378)
!2663 = !DILocation(line: 1300, column: 19, scope: !2642)
!2664 = !DILocalVariable(name: "stat_0", scope: !2642, file: !1, line: 1301, type: !43)
!2665 = !DILocation(line: 1301, column: 9, scope: !2642)
!2666 = !DILocation(line: 1301, column: 40, scope: !2642)
!2667 = !DILocation(line: 1301, column: 42, scope: !2642)
!2668 = !DILocation(line: 1301, column: 48, scope: !2642)
!2669 = !DILocation(line: 1301, column: 51, scope: !2642)
!2670 = !DILocation(line: 1301, column: 18, scope: !2642)
!2671 = !DILocalVariable(name: "stat_1", scope: !2642, file: !1, line: 1302, type: !43)
!2672 = !DILocation(line: 1302, column: 9, scope: !2642)
!2673 = !DILocation(line: 1302, column: 40, scope: !2642)
!2674 = !DILocation(line: 1302, column: 48, scope: !2642)
!2675 = !DILocation(line: 1302, column: 51, scope: !2642)
!2676 = !DILocation(line: 1302, column: 18, scope: !2642)
!2677 = !DILocalVariable(name: "stat_e", scope: !2642, file: !1, line: 1303, type: !43)
!2678 = !DILocation(line: 1303, column: 9, scope: !2642)
!2679 = !DILocalVariable(name: "lnm", scope: !2642, file: !1, line: 1304, type: !378)
!2680 = !DILocation(line: 1304, column: 19, scope: !2642)
!2681 = !DILocalVariable(name: "y", scope: !2642, file: !1, line: 1305, type: !378)
!2682 = !DILocation(line: 1305, column: 19, scope: !2642)
!2683 = !DILocalVariable(name: "Uam1", scope: !2642, file: !1, line: 1306, type: !42)
!2684 = !DILocation(line: 1306, column: 12, scope: !2642)
!2685 = !DILocation(line: 1306, column: 26, scope: !2642)
!2686 = !DILocalVariable(name: "Ua", scope: !2642, file: !1, line: 1307, type: !42)
!2687 = !DILocation(line: 1307, column: 12, scope: !2642)
!2688 = !DILocation(line: 1307, column: 24, scope: !2642)
!2689 = !DILocalVariable(name: "Uap1", scope: !2642, file: !1, line: 1308, type: !42)
!2690 = !DILocation(line: 1308, column: 12, scope: !2642)
!2691 = !DILocalVariable(name: "ap", scope: !2642, file: !1, line: 1309, type: !42)
!2692 = !DILocation(line: 1309, column: 12, scope: !2642)
!2693 = !DILocation(line: 1310, column: 14, scope: !2642)
!2694 = !DILocation(line: 1310, column: 14, scope: !2695)
!2695 = !DILexicalBlockFile(scope: !2642, file: !1, discriminator: 1)
!2696 = !DILocation(line: 1310, column: 14, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !2642, file: !1, discriminator: 2)
!2698 = !DILocation(line: 1310, column: 14, scope: !2699)
!2699 = !DILexicalBlockFile(scope: !2642, file: !1, discriminator: 3)
!2700 = !DILocation(line: 1310, column: 12, scope: !2699)
!2701 = !DILocation(line: 1311, column: 17, scope: !2642)
!2702 = !DILocation(line: 1311, column: 22, scope: !2642)
!2703 = !DILocation(line: 1311, column: 21, scope: !2642)
!2704 = !DILocation(line: 1311, column: 13, scope: !2642)
!2705 = !DILocation(line: 1311, column: 10, scope: !2642)
!2706 = !DILocation(line: 1312, column: 17, scope: !2642)
!2707 = !DILocation(line: 1312, column: 22, scope: !2642)
!2708 = !DILocation(line: 1312, column: 21, scope: !2642)
!2709 = !DILocation(line: 1312, column: 13, scope: !2642)
!2710 = !DILocation(line: 1312, column: 10, scope: !2642)
!2711 = !DILocation(line: 1314, column: 12, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2642, file: !1, line: 1314, column: 5)
!2713 = !DILocation(line: 1314, column: 11, scope: !2712)
!2714 = !DILocation(line: 1314, column: 9, scope: !2712)
!2715 = !DILocation(line: 1314, column: 16, scope: !2716)
!2716 = !DILexicalBlockFile(scope: !2717, file: !1, discriminator: 1)
!2717 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 1314, column: 5)
!2718 = !DILocation(line: 1314, column: 19, scope: !2716)
!2719 = !DILocation(line: 1314, column: 20, scope: !2716)
!2720 = !DILocation(line: 1314, column: 18, scope: !2716)
!2721 = !DILocation(line: 1314, column: 5, scope: !2716)
!2722 = !DILocation(line: 1315, column: 16, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2717, file: !1, line: 1314, column: 37)
!2724 = !DILocation(line: 1315, column: 24, scope: !2723)
!2725 = !DILocation(line: 1315, column: 30, scope: !2723)
!2726 = !DILocation(line: 1315, column: 29, scope: !2723)
!2727 = !DILocation(line: 1315, column: 25, scope: !2723)
!2728 = !DILocation(line: 1315, column: 33, scope: !2723)
!2729 = !DILocation(line: 1315, column: 32, scope: !2723)
!2730 = !DILocation(line: 1315, column: 36, scope: !2723)
!2731 = !DILocation(line: 1315, column: 35, scope: !2723)
!2732 = !DILocation(line: 1315, column: 21, scope: !2723)
!2733 = !DILocation(line: 1315, column: 14, scope: !2723)
!2734 = !DILocation(line: 1315, column: 41, scope: !2723)
!2735 = !DILocation(line: 1315, column: 49, scope: !2723)
!2736 = !DILocation(line: 1315, column: 48, scope: !2723)
!2737 = !DILocation(line: 1315, column: 52, scope: !2723)
!2738 = !DILocation(line: 1315, column: 51, scope: !2723)
!2739 = !DILocation(line: 1315, column: 43, scope: !2723)
!2740 = !DILocation(line: 1315, column: 39, scope: !2723)
!2741 = !DILocation(line: 1315, column: 12, scope: !2723)
!2742 = !DILocation(line: 1316, column: 14, scope: !2723)
!2743 = !DILocation(line: 1316, column: 12, scope: !2723)
!2744 = !DILocation(line: 1317, column: 14, scope: !2723)
!2745 = !DILocation(line: 1317, column: 12, scope: !2723)
!2746 = !DILocation(line: 1318, column: 7, scope: !2723)
!2747 = distinct !{!2747, !2746}
!2748 = !DILocalVariable(name: "au0", scope: !2749, file: !1, line: 1318, type: !42)
!2749 = distinct !DILexicalBlock(scope: !2723, file: !1, line: 1318, column: 7)
!2750 = !DILocation(line: 1318, column: 7, scope: !2749)
!2751 = !DILocation(line: 1318, column: 7, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2749, file: !1, discriminator: 1)
!2753 = !DILocation(line: 1318, column: 7, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !2755, file: !1, discriminator: 2)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !1, line: 1318, column: 7)
!2756 = distinct !DILexicalBlock(scope: !2749, file: !1, line: 1318, column: 7)
!2757 = !DILocation(line: 1318, column: 7, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !2759, file: !1, discriminator: 3)
!2759 = distinct !DILexicalBlock(scope: !2756, file: !1, line: 1318, column: 7)
!2760 = !DILocation(line: 1318, column: 7, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !2762, file: !1, discriminator: 4)
!2762 = distinct !DILexicalBlock(scope: !2759, file: !1, line: 1318, column: 7)
!2763 = !DILocation(line: 1318, column: 7, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2749, file: !1, discriminator: 5)
!2765 = !DILocation(line: 1319, column: 5, scope: !2723)
!2766 = !DILocation(line: 1314, column: 29, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !2717, file: !1, discriminator: 2)
!2768 = !DILocation(line: 1314, column: 5, scope: !2767)
!2769 = distinct !{!2769, !2770}
!2770 = !DILocation(line: 1314, column: 5, scope: !2642)
!2771 = !DILocation(line: 1321, column: 15, scope: !2642)
!2772 = !DILocation(line: 1321, column: 13, scope: !2642)
!2773 = !DILocation(line: 1322, column: 15, scope: !2642)
!2774 = !DILocation(line: 1322, column: 24, scope: !2642)
!2775 = !DILocation(line: 1322, column: 38, scope: !2642)
!2776 = !DILocation(line: 1322, column: 36, scope: !2642)
!2777 = !DILocation(line: 1322, column: 22, scope: !2642)
!2778 = !DILocation(line: 1322, column: 9, scope: !2642)
!2779 = !DILocation(line: 1322, column: 13, scope: !2642)
!2780 = !DILocation(line: 1323, column: 45, scope: !2642)
!2781 = !DILocation(line: 1323, column: 40, scope: !2642)
!2782 = !DILocation(line: 1323, column: 60, scope: !2642)
!2783 = !DILocation(line: 1323, column: 74, scope: !2642)
!2784 = !DILocation(line: 1323, column: 72, scope: !2642)
!2785 = !DILocation(line: 1323, column: 55, scope: !2695)
!2786 = !DILocation(line: 1323, column: 53, scope: !2642)
!2787 = !DILocation(line: 1323, column: 37, scope: !2642)
!2788 = !DILocation(line: 1323, column: 9, scope: !2642)
!2789 = !DILocation(line: 1323, column: 13, scope: !2642)
!2790 = !DILocation(line: 1324, column: 14, scope: !2642)
!2791 = !DILocation(line: 1324, column: 7, scope: !2642)
!2792 = !DILocation(line: 1324, column: 12, scope: !2642)
!2793 = !DILocation(line: 1325, column: 26, scope: !2642)
!2794 = !DILocation(line: 1325, column: 37, scope: !2642)
!2795 = !DILocation(line: 1325, column: 29, scope: !2642)
!2796 = !DILocation(line: 1325, column: 14, scope: !2642)
!2797 = !DILocation(line: 1325, column: 49, scope: !2642)
!2798 = !DILocation(line: 1325, column: 44, scope: !2695)
!2799 = !DILocation(line: 1325, column: 42, scope: !2642)
!2800 = !DILocation(line: 1325, column: 7, scope: !2642)
!2801 = !DILocation(line: 1325, column: 12, scope: !2642)
!2802 = !DILocation(line: 1326, column: 24, scope: !2642)
!2803 = !DILocation(line: 1326, column: 33, scope: !2642)
!2804 = !DILocation(line: 1326, column: 27, scope: !2642)
!2805 = !DILocation(line: 1326, column: 14, scope: !2642)
!2806 = !DILocation(line: 1326, column: 45, scope: !2642)
!2807 = !DILocation(line: 1326, column: 40, scope: !2695)
!2808 = !DILocation(line: 1326, column: 38, scope: !2642)
!2809 = !DILocation(line: 1326, column: 7, scope: !2642)
!2810 = !DILocation(line: 1326, column: 11, scope: !2642)
!2811 = !DILocation(line: 1327, column: 44, scope: !2642)
!2812 = !DILocation(line: 1327, column: 46, scope: !2642)
!2813 = !DILocation(line: 1327, column: 45, scope: !2642)
!2814 = !DILocation(line: 1327, column: 39, scope: !2642)
!2815 = !DILocation(line: 1327, column: 50, scope: !2642)
!2816 = !DILocation(line: 1327, column: 36, scope: !2642)
!2817 = !DILocation(line: 1327, column: 64, scope: !2642)
!2818 = !DILocation(line: 1327, column: 59, scope: !2695)
!2819 = !DILocation(line: 1327, column: 57, scope: !2642)
!2820 = !DILocation(line: 1327, column: 7, scope: !2642)
!2821 = !DILocation(line: 1327, column: 11, scope: !2642)
!2822 = !DILocation(line: 1328, column: 19, scope: !2642)
!2823 = !DILocation(line: 1328, column: 24, scope: !2642)
!2824 = !DILocation(line: 1328, column: 23, scope: !2642)
!2825 = !DILocation(line: 1328, column: 14, scope: !2642)
!2826 = !DILocation(line: 1328, column: 32, scope: !2642)
!2827 = !DILocation(line: 1328, column: 7, scope: !2642)
!2828 = !DILocation(line: 1328, column: 11, scope: !2642)
!2829 = !DILocation(line: 1329, column: 19, scope: !2642)
!2830 = !DILocation(line: 1329, column: 24, scope: !2642)
!2831 = !DILocation(line: 1329, column: 23, scope: !2642)
!2832 = !DILocation(line: 1329, column: 14, scope: !2642)
!2833 = !DILocation(line: 1329, column: 32, scope: !2642)
!2834 = !DILocation(line: 1329, column: 7, scope: !2642)
!2835 = !DILocation(line: 1329, column: 11, scope: !2642)
!2836 = !DILocation(line: 1330, column: 44, scope: !2642)
!2837 = !DILocation(line: 1330, column: 53, scope: !2642)
!2838 = !DILocation(line: 1330, column: 60, scope: !2642)
!2839 = !DILocation(line: 1330, column: 67, scope: !2642)
!2840 = !DILocation(line: 1330, column: 72, scope: !2642)
!2841 = !DILocation(line: 1330, column: 14, scope: !2642)
!2842 = !DILocation(line: 1330, column: 12, scope: !2642)
!2843 = !DILocation(line: 1331, column: 12, scope: !2642)
!2844 = !DILocation(line: 1331, column: 12, scope: !2695)
!2845 = !DILocation(line: 1331, column: 12, scope: !2697)
!2846 = !DILocation(line: 1331, column: 12, scope: !2699)
!2847 = !DILocation(line: 1331, column: 12, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !2642, file: !1, discriminator: 4)
!2849 = !DILocation(line: 1331, column: 12, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2642, file: !1, discriminator: 5)
!2851 = !DILocation(line: 1331, column: 12, scope: !2852)
!2852 = !DILexicalBlockFile(scope: !2642, file: !1, discriminator: 6)
!2853 = !DILocation(line: 1331, column: 12, scope: !2854)
!2854 = !DILexicalBlockFile(scope: !2642, file: !1, discriminator: 7)
!2855 = !DILocation(line: 1331, column: 12, scope: !2856)
!2856 = !DILexicalBlockFile(scope: !2642, file: !1, discriminator: 8)
!2857 = !DILocation(line: 1331, column: 12, scope: !2858)
!2858 = !DILexicalBlockFile(scope: !2642, file: !1, discriminator: 9)
!2859 = !DILocation(line: 1331, column: 5, scope: !2858)
!2860 = !DILocation(line: 1334, column: 8, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !1, line: 1334, column: 8)
!2862 = distinct !DILexicalBlock(scope: !2634, file: !1, line: 1333, column: 8)
!2863 = !DILocation(line: 1334, column: 13, scope: !2861)
!2864 = !DILocation(line: 1334, column: 10, scope: !2861)
!2865 = !DILocation(line: 1334, column: 8, scope: !2862)
!2866 = !DILocalVariable(name: "a0", scope: !2867, file: !1, line: 1337, type: !52)
!2867 = distinct !DILexicalBlock(scope: !2861, file: !1, line: 1334, column: 16)
!2868 = !DILocation(line: 1337, column: 20, scope: !2867)
!2869 = !DILocation(line: 1337, column: 25, scope: !2867)
!2870 = !DILocation(line: 1337, column: 35, scope: !2867)
!2871 = !DILocation(line: 1337, column: 29, scope: !2867)
!2872 = !DILocation(line: 1337, column: 27, scope: !2867)
!2873 = !DILocalVariable(name: "scale_factor", scope: !2867, file: !1, line: 1338, type: !52)
!2874 = !DILocation(line: 1338, column: 20, scope: !2867)
!2875 = !DILocalVariable(name: "scale_count", scope: !2867, file: !1, line: 1339, type: !43)
!2876 = !DILocation(line: 1339, column: 11, scope: !2867)
!2877 = !DILocalVariable(name: "lnm", scope: !2867, file: !1, line: 1340, type: !378)
!2878 = !DILocation(line: 1340, column: 21, scope: !2867)
!2879 = !DILocalVariable(name: "y", scope: !2867, file: !1, line: 1341, type: !378)
!2880 = !DILocation(line: 1341, column: 21, scope: !2867)
!2881 = !DILocalVariable(name: "lnscale", scope: !2867, file: !1, line: 1342, type: !42)
!2882 = !DILocation(line: 1342, column: 14, scope: !2867)
!2883 = !DILocalVariable(name: "lm_0", scope: !2867, file: !1, line: 1343, type: !42)
!2884 = !DILocation(line: 1343, column: 14, scope: !2867)
!2885 = !DILocalVariable(name: "Uap1", scope: !2867, file: !1, line: 1344, type: !42)
!2886 = !DILocation(line: 1344, column: 14, scope: !2867)
!2887 = !DILocalVariable(name: "Ua", scope: !2867, file: !1, line: 1345, type: !42)
!2888 = !DILocation(line: 1345, column: 14, scope: !2867)
!2889 = !DILocalVariable(name: "Uam1", scope: !2867, file: !1, line: 1346, type: !42)
!2890 = !DILocation(line: 1346, column: 14, scope: !2867)
!2891 = !DILocalVariable(name: "U0", scope: !2867, file: !1, line: 1347, type: !378)
!2892 = !DILocation(line: 1347, column: 21, scope: !2867)
!2893 = !DILocalVariable(name: "ap", scope: !2867, file: !1, line: 1348, type: !42)
!2894 = !DILocation(line: 1348, column: 14, scope: !2867)
!2895 = !DILocalVariable(name: "ru", scope: !2867, file: !1, line: 1349, type: !42)
!2896 = !DILocation(line: 1349, column: 14, scope: !2867)
!2897 = !DILocalVariable(name: "r", scope: !2867, file: !1, line: 1350, type: !42)
!2898 = !DILocation(line: 1350, column: 14, scope: !2867)
!2899 = !DILocalVariable(name: "CF1_count", scope: !2867, file: !1, line: 1351, type: !43)
!2900 = !DILocation(line: 1351, column: 11, scope: !2867)
!2901 = !DILocalVariable(name: "stat_CF1", scope: !2867, file: !1, line: 1352, type: !43)
!2902 = !DILocation(line: 1352, column: 11, scope: !2867)
!2903 = !DILocation(line: 1352, column: 35, scope: !2867)
!2904 = !DILocation(line: 1352, column: 38, scope: !2867)
!2905 = !DILocation(line: 1352, column: 44, scope: !2867)
!2906 = !DILocation(line: 1352, column: 22, scope: !2867)
!2907 = !DILocalVariable(name: "stat_U0", scope: !2867, file: !1, line: 1353, type: !43)
!2908 = !DILocation(line: 1353, column: 11, scope: !2867)
!2909 = !DILocalVariable(name: "stat_e", scope: !2867, file: !1, line: 1354, type: !43)
!2910 = !DILocation(line: 1354, column: 11, scope: !2867)
!2911 = !DILocation(line: 1355, column: 11, scope: !2867)
!2912 = !DILocation(line: 1355, column: 14, scope: !2867)
!2913 = !DILocation(line: 1355, column: 13, scope: !2867)
!2914 = !DILocation(line: 1355, column: 9, scope: !2867)
!2915 = !DILocation(line: 1356, column: 12, scope: !2867)
!2916 = !DILocation(line: 1357, column: 14, scope: !2867)
!2917 = !DILocation(line: 1357, column: 18, scope: !2867)
!2918 = !DILocation(line: 1357, column: 16, scope: !2867)
!2919 = !DILocation(line: 1357, column: 12, scope: !2867)
!2920 = !DILocation(line: 1358, column: 14, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2867, file: !1, line: 1358, column: 7)
!2922 = !DILocation(line: 1358, column: 13, scope: !2921)
!2923 = !DILocation(line: 1358, column: 11, scope: !2921)
!2924 = !DILocation(line: 1358, column: 17, scope: !2925)
!2925 = !DILexicalBlockFile(scope: !2926, file: !1, discriminator: 1)
!2926 = distinct !DILexicalBlock(scope: !2921, file: !1, line: 1358, column: 7)
!2927 = !DILocation(line: 1358, column: 20, scope: !2925)
!2928 = !DILocation(line: 1358, column: 22, scope: !2925)
!2929 = !DILocation(line: 1358, column: 19, scope: !2925)
!2930 = !DILocation(line: 1358, column: 7, scope: !2925)
!2931 = !DILocation(line: 1359, column: 19, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2926, file: !1, line: 1358, column: 39)
!2933 = !DILocation(line: 1359, column: 25, scope: !2932)
!2934 = !DILocation(line: 1359, column: 24, scope: !2932)
!2935 = !DILocation(line: 1359, column: 20, scope: !2932)
!2936 = !DILocation(line: 1359, column: 28, scope: !2932)
!2937 = !DILocation(line: 1359, column: 27, scope: !2932)
!2938 = !DILocation(line: 1359, column: 31, scope: !2932)
!2939 = !DILocation(line: 1359, column: 30, scope: !2932)
!2940 = !DILocation(line: 1359, column: 36, scope: !2932)
!2941 = !DILocation(line: 1359, column: 44, scope: !2932)
!2942 = !DILocation(line: 1359, column: 43, scope: !2932)
!2943 = !DILocation(line: 1359, column: 47, scope: !2932)
!2944 = !DILocation(line: 1359, column: 46, scope: !2932)
!2945 = !DILocation(line: 1359, column: 38, scope: !2932)
!2946 = !DILocation(line: 1359, column: 50, scope: !2932)
!2947 = !DILocation(line: 1359, column: 49, scope: !2932)
!2948 = !DILocation(line: 1359, column: 34, scope: !2932)
!2949 = !DILocation(line: 1359, column: 16, scope: !2932)
!2950 = !DILocation(line: 1359, column: 14, scope: !2932)
!2951 = !DILocation(line: 1360, column: 16, scope: !2932)
!2952 = !DILocation(line: 1360, column: 14, scope: !2932)
!2953 = !DILocation(line: 1361, column: 16, scope: !2932)
!2954 = !DILocation(line: 1361, column: 14, scope: !2932)
!2955 = !DILocation(line: 1362, column: 9, scope: !2932)
!2956 = distinct !{!2956, !2955}
!2957 = !DILocalVariable(name: "au0", scope: !2958, file: !1, line: 1362, type: !42)
!2958 = distinct !DILexicalBlock(scope: !2932, file: !1, line: 1362, column: 9)
!2959 = !DILocation(line: 1362, column: 9, scope: !2958)
!2960 = !DILocation(line: 1362, column: 9, scope: !2961)
!2961 = !DILexicalBlockFile(scope: !2958, file: !1, discriminator: 1)
!2962 = !DILocation(line: 1362, column: 9, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !2964, file: !1, discriminator: 2)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !1, line: 1362, column: 9)
!2965 = distinct !DILexicalBlock(scope: !2958, file: !1, line: 1362, column: 9)
!2966 = !DILocation(line: 1362, column: 9, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2968, file: !1, discriminator: 3)
!2968 = distinct !DILexicalBlock(scope: !2965, file: !1, line: 1362, column: 9)
!2969 = !DILocation(line: 1362, column: 9, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !2971, file: !1, discriminator: 4)
!2971 = distinct !DILexicalBlock(scope: !2968, file: !1, line: 1362, column: 9)
!2972 = !DILocation(line: 1362, column: 9, scope: !2973)
!2973 = !DILexicalBlockFile(scope: !2958, file: !1, discriminator: 5)
!2974 = !DILocation(line: 1363, column: 7, scope: !2932)
!2975 = !DILocation(line: 1358, column: 31, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2926, file: !1, discriminator: 2)
!2977 = !DILocation(line: 1358, column: 7, scope: !2976)
!2978 = distinct !{!2978, !2979}
!2979 = !DILocation(line: 1358, column: 7, scope: !2867)
!2980 = !DILocation(line: 1365, column: 39, scope: !2867)
!2981 = !DILocation(line: 1365, column: 43, scope: !2867)
!2982 = !DILocation(line: 1365, column: 46, scope: !2867)
!2983 = !DILocation(line: 1365, column: 17, scope: !2867)
!2984 = !DILocation(line: 1365, column: 15, scope: !2867)
!2985 = !DILocation(line: 1367, column: 17, scope: !2867)
!2986 = !DILocation(line: 1367, column: 15, scope: !2867)
!2987 = !DILocation(line: 1368, column: 17, scope: !2867)
!2988 = !DILocation(line: 1368, column: 24, scope: !2867)
!2989 = !DILocation(line: 1368, column: 38, scope: !2867)
!2990 = !DILocation(line: 1368, column: 36, scope: !2867)
!2991 = !DILocation(line: 1368, column: 22, scope: !2867)
!2992 = !DILocation(line: 1368, column: 11, scope: !2867)
!2993 = !DILocation(line: 1368, column: 15, scope: !2867)
!2994 = !DILocation(line: 1369, column: 47, scope: !2867)
!2995 = !DILocation(line: 1369, column: 42, scope: !2867)
!2996 = !DILocation(line: 1369, column: 60, scope: !2867)
!2997 = !DILocation(line: 1369, column: 74, scope: !2867)
!2998 = !DILocation(line: 1369, column: 72, scope: !2867)
!2999 = !DILocation(line: 1369, column: 55, scope: !3000)
!3000 = !DILexicalBlockFile(scope: !2867, file: !1, discriminator: 1)
!3001 = !DILocation(line: 1369, column: 53, scope: !2867)
!3002 = !DILocation(line: 1369, column: 39, scope: !2867)
!3003 = !DILocation(line: 1369, column: 11, scope: !2867)
!3004 = !DILocation(line: 1369, column: 15, scope: !2867)
!3005 = !DILocation(line: 1370, column: 37, scope: !2867)
!3006 = !DILocation(line: 1370, column: 41, scope: !2867)
!3007 = !DILocation(line: 1370, column: 40, scope: !2867)
!3008 = !DILocation(line: 1370, column: 32, scope: !2867)
!3009 = !DILocation(line: 1370, column: 9, scope: !2867)
!3010 = !DILocation(line: 1370, column: 14, scope: !2867)
!3011 = !DILocation(line: 1371, column: 37, scope: !2867)
!3012 = !DILocation(line: 1371, column: 46, scope: !2867)
!3013 = !DILocation(line: 1371, column: 41, scope: !2867)
!3014 = !DILocation(line: 1371, column: 40, scope: !2867)
!3015 = !DILocation(line: 1371, column: 32, scope: !2867)
!3016 = !DILocation(line: 1371, column: 9, scope: !2867)
!3017 = !DILocation(line: 1371, column: 14, scope: !2867)
!3018 = !DILocation(line: 1372, column: 46, scope: !2867)
!3019 = !DILocation(line: 1372, column: 49, scope: !2867)
!3020 = !DILocation(line: 1372, column: 48, scope: !2867)
!3021 = !DILocation(line: 1372, column: 41, scope: !2867)
!3022 = !DILocation(line: 1372, column: 54, scope: !2867)
!3023 = !DILocation(line: 1372, column: 52, scope: !2867)
!3024 = !DILocation(line: 1372, column: 64, scope: !2867)
!3025 = !DILocation(line: 1372, column: 38, scope: !2867)
!3026 = !DILocation(line: 1372, column: 80, scope: !2867)
!3027 = !DILocation(line: 1372, column: 73, scope: !3000)
!3028 = !DILocation(line: 1372, column: 71, scope: !2867)
!3029 = !DILocation(line: 1372, column: 9, scope: !2867)
!3030 = !DILocation(line: 1372, column: 13, scope: !2867)
!3031 = !DILocation(line: 1373, column: 46, scope: !2867)
!3032 = !DILocation(line: 1373, column: 55, scope: !2867)
!3033 = !DILocation(line: 1373, column: 62, scope: !2867)
!3034 = !DILocation(line: 1373, column: 69, scope: !2867)
!3035 = !DILocation(line: 1373, column: 74, scope: !2867)
!3036 = !DILocation(line: 1373, column: 16, scope: !2867)
!3037 = !DILocation(line: 1373, column: 14, scope: !2867)
!3038 = !DILocation(line: 1374, column: 14, scope: !2867)
!3039 = !DILocation(line: 1374, column: 14, scope: !3000)
!3040 = !DILocation(line: 1374, column: 14, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !2867, file: !1, discriminator: 2)
!3042 = !DILocation(line: 1374, column: 14, scope: !3043)
!3043 = !DILexicalBlockFile(scope: !2867, file: !1, discriminator: 3)
!3044 = !DILocation(line: 1374, column: 14, scope: !3045)
!3045 = !DILexicalBlockFile(scope: !2867, file: !1, discriminator: 4)
!3046 = !DILocation(line: 1374, column: 14, scope: !3047)
!3047 = !DILexicalBlockFile(scope: !2867, file: !1, discriminator: 5)
!3048 = !DILocation(line: 1374, column: 14, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !2867, file: !1, discriminator: 6)
!3050 = !DILocation(line: 1374, column: 14, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !2867, file: !1, discriminator: 7)
!3052 = !DILocation(line: 1374, column: 14, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !2867, file: !1, discriminator: 8)
!3054 = !DILocation(line: 1374, column: 14, scope: !3055)
!3055 = !DILexicalBlockFile(scope: !2867, file: !1, discriminator: 9)
!3056 = !DILocation(line: 1374, column: 7, scope: !3055)
!3057 = !DILocalVariable(name: "scale_count_for", scope: !3058, file: !1, line: 1380, type: !43)
!3058 = distinct !DILexicalBlock(scope: !2861, file: !1, line: 1376, column: 10)
!3059 = !DILocation(line: 1380, column: 11, scope: !3058)
!3060 = !DILocalVariable(name: "scale_count_bck", scope: !3058, file: !1, line: 1381, type: !43)
!3061 = !DILocation(line: 1381, column: 11, scope: !3058)
!3062 = !DILocalVariable(name: "scale_factor", scope: !3058, file: !1, line: 1382, type: !52)
!3063 = !DILocation(line: 1382, column: 20, scope: !3058)
!3064 = !DILocalVariable(name: "eps", scope: !3058, file: !1, line: 1383, type: !52)
!3065 = !DILocation(line: 1383, column: 20, scope: !3058)
!3066 = !DILocation(line: 1383, column: 26, scope: !3058)
!3067 = !DILocation(line: 1383, column: 36, scope: !3058)
!3068 = !DILocation(line: 1383, column: 30, scope: !3058)
!3069 = !DILocation(line: 1383, column: 28, scope: !3058)
!3070 = !DILocalVariable(name: "a0", scope: !3058, file: !1, line: 1384, type: !52)
!3071 = !DILocation(line: 1384, column: 20, scope: !3058)
!3072 = !DILocation(line: 1384, column: 27, scope: !3058)
!3073 = !DILocation(line: 1384, column: 31, scope: !3058)
!3074 = !DILocation(line: 1384, column: 27, scope: !3075)
!3075 = !DILexicalBlockFile(scope: !3058, file: !1, discriminator: 1)
!3076 = !DILocation(line: 1384, column: 46, scope: !3077)
!3077 = !DILexicalBlockFile(scope: !3058, file: !1, discriminator: 2)
!3078 = !DILocation(line: 1384, column: 27, scope: !3077)
!3079 = !DILocation(line: 1384, column: 27, scope: !3080)
!3080 = !DILexicalBlockFile(scope: !3058, file: !1, discriminator: 3)
!3081 = !DILocation(line: 1384, column: 20, scope: !3080)
!3082 = !DILocalVariable(name: "a1", scope: !3058, file: !1, line: 1385, type: !52)
!3083 = !DILocation(line: 1385, column: 20, scope: !3058)
!3084 = !DILocation(line: 1385, column: 25, scope: !3058)
!3085 = !DILocation(line: 1385, column: 40, scope: !3058)
!3086 = !DILocation(line: 1385, column: 42, scope: !3058)
!3087 = !DILocation(line: 1385, column: 41, scope: !3058)
!3088 = !DILocation(line: 1385, column: 38, scope: !3058)
!3089 = !DILocation(line: 1385, column: 47, scope: !3058)
!3090 = !DILocation(line: 1385, column: 45, scope: !3058)
!3091 = !DILocation(line: 1385, column: 30, scope: !3058)
!3092 = !DILocation(line: 1385, column: 28, scope: !3058)
!3093 = !DILocalVariable(name: "lnm", scope: !3058, file: !1, line: 1386, type: !378)
!3094 = !DILocation(line: 1386, column: 21, scope: !3058)
!3095 = !DILocalVariable(name: "y", scope: !3058, file: !1, line: 1387, type: !378)
!3096 = !DILocation(line: 1387, column: 21, scope: !3058)
!3097 = !DILocalVariable(name: "lm_for", scope: !3058, file: !1, line: 1388, type: !42)
!3098 = !DILocation(line: 1388, column: 14, scope: !3058)
!3099 = !DILocalVariable(name: "lnscale", scope: !3058, file: !1, line: 1389, type: !42)
!3100 = !DILocation(line: 1389, column: 14, scope: !3058)
!3101 = !DILocalVariable(name: "Ua1_bck", scope: !3058, file: !1, line: 1390, type: !42)
!3102 = !DILocation(line: 1390, column: 14, scope: !3058)
!3103 = !DILocalVariable(name: "Ua1_for", scope: !3058, file: !1, line: 1391, type: !42)
!3104 = !DILocation(line: 1391, column: 14, scope: !3058)
!3105 = !DILocalVariable(name: "stat_for", scope: !3058, file: !1, line: 1392, type: !43)
!3106 = !DILocation(line: 1392, column: 11, scope: !3058)
!3107 = !DILocalVariable(name: "stat_bck", scope: !3058, file: !1, line: 1393, type: !43)
!3108 = !DILocation(line: 1393, column: 11, scope: !3058)
!3109 = !DILocalVariable(name: "stat_e", scope: !3058, file: !1, line: 1394, type: !43)
!3110 = !DILocation(line: 1394, column: 11, scope: !3058)
!3111 = !DILocalVariable(name: "CF1_count", scope: !3058, file: !1, line: 1395, type: !43)
!3112 = !DILocation(line: 1395, column: 11, scope: !3058)
!3113 = !DILocalVariable(name: "Uap1", scope: !3114, file: !1, line: 1400, type: !42)
!3114 = distinct !DILexicalBlock(scope: !3058, file: !1, line: 1397, column: 7)
!3115 = !DILocation(line: 1400, column: 16, scope: !3114)
!3116 = !DILocalVariable(name: "Ua", scope: !3114, file: !1, line: 1401, type: !42)
!3117 = !DILocation(line: 1401, column: 16, scope: !3114)
!3118 = !DILocalVariable(name: "Uam1", scope: !3114, file: !1, line: 1402, type: !42)
!3119 = !DILocation(line: 1402, column: 16, scope: !3114)
!3120 = !DILocalVariable(name: "ap", scope: !3114, file: !1, line: 1403, type: !42)
!3121 = !DILocation(line: 1403, column: 16, scope: !3114)
!3122 = !DILocalVariable(name: "ru", scope: !3114, file: !1, line: 1404, type: !42)
!3123 = !DILocation(line: 1404, column: 16, scope: !3114)
!3124 = !DILocalVariable(name: "r", scope: !3114, file: !1, line: 1405, type: !42)
!3125 = !DILocation(line: 1405, column: 16, scope: !3114)
!3126 = !DILocalVariable(name: "stat_CF1", scope: !3114, file: !1, line: 1406, type: !43)
!3127 = !DILocation(line: 1406, column: 13, scope: !3114)
!3128 = !DILocation(line: 1406, column: 37, scope: !3114)
!3129 = !DILocation(line: 1406, column: 40, scope: !3114)
!3130 = !DILocation(line: 1406, column: 46, scope: !3114)
!3131 = !DILocation(line: 1406, column: 24, scope: !3114)
!3132 = !DILocation(line: 1407, column: 13, scope: !3114)
!3133 = !DILocation(line: 1407, column: 16, scope: !3114)
!3134 = !DILocation(line: 1407, column: 15, scope: !3114)
!3135 = !DILocation(line: 1407, column: 11, scope: !3114)
!3136 = !DILocation(line: 1408, column: 14, scope: !3114)
!3137 = !DILocation(line: 1409, column: 16, scope: !3114)
!3138 = !DILocation(line: 1409, column: 20, scope: !3114)
!3139 = !DILocation(line: 1409, column: 18, scope: !3114)
!3140 = !DILocation(line: 1409, column: 14, scope: !3114)
!3141 = !DILocation(line: 1410, column: 16, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3114, file: !1, line: 1410, column: 9)
!3143 = !DILocation(line: 1410, column: 15, scope: !3142)
!3144 = !DILocation(line: 1410, column: 13, scope: !3142)
!3145 = !DILocation(line: 1410, column: 19, scope: !3146)
!3146 = !DILexicalBlockFile(scope: !3147, file: !1, discriminator: 1)
!3147 = distinct !DILexicalBlock(scope: !3142, file: !1, line: 1410, column: 9)
!3148 = !DILocation(line: 1410, column: 22, scope: !3146)
!3149 = !DILocation(line: 1410, column: 24, scope: !3146)
!3150 = !DILocation(line: 1410, column: 21, scope: !3146)
!3151 = !DILocation(line: 1410, column: 9, scope: !3146)
!3152 = !DILocation(line: 1411, column: 21, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3147, file: !1, line: 1410, column: 41)
!3154 = !DILocation(line: 1411, column: 27, scope: !3153)
!3155 = !DILocation(line: 1411, column: 26, scope: !3153)
!3156 = !DILocation(line: 1411, column: 22, scope: !3153)
!3157 = !DILocation(line: 1411, column: 30, scope: !3153)
!3158 = !DILocation(line: 1411, column: 29, scope: !3153)
!3159 = !DILocation(line: 1411, column: 33, scope: !3153)
!3160 = !DILocation(line: 1411, column: 32, scope: !3153)
!3161 = !DILocation(line: 1411, column: 38, scope: !3153)
!3162 = !DILocation(line: 1411, column: 46, scope: !3153)
!3163 = !DILocation(line: 1411, column: 45, scope: !3153)
!3164 = !DILocation(line: 1411, column: 49, scope: !3153)
!3165 = !DILocation(line: 1411, column: 48, scope: !3153)
!3166 = !DILocation(line: 1411, column: 40, scope: !3153)
!3167 = !DILocation(line: 1411, column: 52, scope: !3153)
!3168 = !DILocation(line: 1411, column: 51, scope: !3153)
!3169 = !DILocation(line: 1411, column: 36, scope: !3153)
!3170 = !DILocation(line: 1411, column: 18, scope: !3153)
!3171 = !DILocation(line: 1411, column: 16, scope: !3153)
!3172 = !DILocation(line: 1412, column: 18, scope: !3153)
!3173 = !DILocation(line: 1412, column: 16, scope: !3153)
!3174 = !DILocation(line: 1413, column: 18, scope: !3153)
!3175 = !DILocation(line: 1413, column: 16, scope: !3153)
!3176 = !DILocation(line: 1414, column: 11, scope: !3153)
!3177 = distinct !{!3177, !3176}
!3178 = !DILocalVariable(name: "au0", scope: !3179, file: !1, line: 1414, type: !42)
!3179 = distinct !DILexicalBlock(scope: !3153, file: !1, line: 1414, column: 11)
!3180 = !DILocation(line: 1414, column: 11, scope: !3179)
!3181 = !DILocation(line: 1414, column: 11, scope: !3182)
!3182 = !DILexicalBlockFile(scope: !3179, file: !1, discriminator: 1)
!3183 = !DILocation(line: 1414, column: 11, scope: !3184)
!3184 = !DILexicalBlockFile(scope: !3185, file: !1, discriminator: 2)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !1, line: 1414, column: 11)
!3186 = distinct !DILexicalBlock(scope: !3179, file: !1, line: 1414, column: 11)
!3187 = !DILocation(line: 1414, column: 11, scope: !3188)
!3188 = !DILexicalBlockFile(scope: !3189, file: !1, discriminator: 3)
!3189 = distinct !DILexicalBlock(scope: !3186, file: !1, line: 1414, column: 11)
!3190 = !DILocation(line: 1414, column: 11, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3192, file: !1, discriminator: 4)
!3192 = distinct !DILexicalBlock(scope: !3189, file: !1, line: 1414, column: 11)
!3193 = !DILocation(line: 1414, column: 11, scope: !3194)
!3194 = !DILexicalBlockFile(scope: !3179, file: !1, discriminator: 5)
!3195 = !DILocation(line: 1415, column: 9, scope: !3153)
!3196 = !DILocation(line: 1410, column: 33, scope: !3197)
!3197 = !DILexicalBlockFile(scope: !3147, file: !1, discriminator: 2)
!3198 = !DILocation(line: 1410, column: 9, scope: !3197)
!3199 = distinct !{!3199, !3200}
!3200 = !DILocation(line: 1410, column: 9, scope: !3114)
!3201 = !DILocation(line: 1416, column: 19, scope: !3114)
!3202 = !DILocation(line: 1416, column: 17, scope: !3114)
!3203 = !DILocation(line: 1417, column: 20, scope: !3114)
!3204 = !DILocation(line: 1417, column: 18, scope: !3114)
!3205 = !DILocalVariable(name: "r_Uam1", scope: !3206, file: !1, line: 1423, type: !378)
!3206 = distinct !DILexicalBlock(scope: !3058, file: !1, line: 1419, column: 7)
!3207 = !DILocation(line: 1423, column: 23, scope: !3206)
!3208 = !DILocalVariable(name: "r_Ua", scope: !3206, file: !1, line: 1424, type: !378)
!3209 = !DILocation(line: 1424, column: 23, scope: !3206)
!3210 = !DILocalVariable(name: "lm_0", scope: !3206, file: !1, line: 1425, type: !42)
!3211 = !DILocation(line: 1425, column: 16, scope: !3206)
!3212 = !DILocalVariable(name: "lm_1", scope: !3206, file: !1, line: 1425, type: !42)
!3213 = !DILocation(line: 1425, column: 22, scope: !3206)
!3214 = !DILocalVariable(name: "stat_0", scope: !3206, file: !1, line: 1426, type: !43)
!3215 = !DILocation(line: 1426, column: 13, scope: !3206)
!3216 = !DILocation(line: 1426, column: 44, scope: !3206)
!3217 = !DILocation(line: 1426, column: 46, scope: !3206)
!3218 = !DILocation(line: 1426, column: 52, scope: !3206)
!3219 = !DILocation(line: 1426, column: 55, scope: !3206)
!3220 = !DILocation(line: 1426, column: 22, scope: !3206)
!3221 = !DILocalVariable(name: "stat_1", scope: !3206, file: !1, line: 1427, type: !43)
!3222 = !DILocation(line: 1427, column: 13, scope: !3206)
!3223 = !DILocation(line: 1427, column: 44, scope: !3206)
!3224 = !DILocation(line: 1427, column: 52, scope: !3206)
!3225 = !DILocation(line: 1427, column: 55, scope: !3206)
!3226 = !DILocation(line: 1427, column: 22, scope: !3206)
!3227 = !DILocalVariable(name: "Uam1", scope: !3206, file: !1, line: 1428, type: !42)
!3228 = !DILocation(line: 1428, column: 16, scope: !3206)
!3229 = !DILocation(line: 1428, column: 30, scope: !3206)
!3230 = !DILocalVariable(name: "Ua", scope: !3206, file: !1, line: 1429, type: !42)
!3231 = !DILocation(line: 1429, column: 16, scope: !3206)
!3232 = !DILocation(line: 1429, column: 28, scope: !3206)
!3233 = !DILocalVariable(name: "Uap1", scope: !3206, file: !1, line: 1430, type: !42)
!3234 = !DILocation(line: 1430, column: 16, scope: !3206)
!3235 = !DILocalVariable(name: "ap", scope: !3206, file: !1, line: 1431, type: !42)
!3236 = !DILocation(line: 1431, column: 16, scope: !3206)
!3237 = !DILocation(line: 1433, column: 18, scope: !3206)
!3238 = !DILocation(line: 1433, column: 18, scope: !3239)
!3239 = !DILexicalBlockFile(scope: !3206, file: !1, discriminator: 1)
!3240 = !DILocation(line: 1433, column: 18, scope: !3241)
!3241 = !DILexicalBlockFile(scope: !3206, file: !1, discriminator: 2)
!3242 = !DILocation(line: 1433, column: 18, scope: !3243)
!3243 = !DILexicalBlockFile(scope: !3206, file: !1, discriminator: 3)
!3244 = !DILocation(line: 1433, column: 16, scope: !3243)
!3245 = !DILocation(line: 1434, column: 21, scope: !3206)
!3246 = !DILocation(line: 1434, column: 28, scope: !3206)
!3247 = !DILocation(line: 1434, column: 26, scope: !3206)
!3248 = !DILocation(line: 1434, column: 17, scope: !3206)
!3249 = !DILocation(line: 1434, column: 14, scope: !3206)
!3250 = !DILocation(line: 1435, column: 21, scope: !3206)
!3251 = !DILocation(line: 1435, column: 28, scope: !3206)
!3252 = !DILocation(line: 1435, column: 26, scope: !3206)
!3253 = !DILocation(line: 1435, column: 17, scope: !3206)
!3254 = !DILocation(line: 1435, column: 14, scope: !3206)
!3255 = !DILocation(line: 1437, column: 16, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3206, file: !1, line: 1437, column: 9)
!3257 = !DILocation(line: 1437, column: 15, scope: !3256)
!3258 = !DILocation(line: 1437, column: 13, scope: !3256)
!3259 = !DILocation(line: 1437, column: 20, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !3261, file: !1, discriminator: 1)
!3261 = distinct !DILexicalBlock(scope: !3256, file: !1, line: 1437, column: 9)
!3262 = !DILocation(line: 1437, column: 23, scope: !3260)
!3263 = !DILocation(line: 1437, column: 25, scope: !3260)
!3264 = !DILocation(line: 1437, column: 22, scope: !3260)
!3265 = !DILocation(line: 1437, column: 9, scope: !3260)
!3266 = !DILocation(line: 1438, column: 20, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3261, file: !1, line: 1437, column: 42)
!3268 = !DILocation(line: 1438, column: 28, scope: !3267)
!3269 = !DILocation(line: 1438, column: 34, scope: !3267)
!3270 = !DILocation(line: 1438, column: 33, scope: !3267)
!3271 = !DILocation(line: 1438, column: 29, scope: !3267)
!3272 = !DILocation(line: 1438, column: 37, scope: !3267)
!3273 = !DILocation(line: 1438, column: 36, scope: !3267)
!3274 = !DILocation(line: 1438, column: 40, scope: !3267)
!3275 = !DILocation(line: 1438, column: 39, scope: !3267)
!3276 = !DILocation(line: 1438, column: 25, scope: !3267)
!3277 = !DILocation(line: 1438, column: 18, scope: !3267)
!3278 = !DILocation(line: 1438, column: 45, scope: !3267)
!3279 = !DILocation(line: 1438, column: 53, scope: !3267)
!3280 = !DILocation(line: 1438, column: 52, scope: !3267)
!3281 = !DILocation(line: 1438, column: 56, scope: !3267)
!3282 = !DILocation(line: 1438, column: 55, scope: !3267)
!3283 = !DILocation(line: 1438, column: 47, scope: !3267)
!3284 = !DILocation(line: 1438, column: 43, scope: !3267)
!3285 = !DILocation(line: 1438, column: 16, scope: !3267)
!3286 = !DILocation(line: 1439, column: 18, scope: !3267)
!3287 = !DILocation(line: 1439, column: 16, scope: !3267)
!3288 = !DILocation(line: 1440, column: 18, scope: !3267)
!3289 = !DILocation(line: 1440, column: 16, scope: !3267)
!3290 = !DILocation(line: 1441, column: 11, scope: !3267)
!3291 = distinct !{!3291, !3290}
!3292 = !DILocalVariable(name: "au0", scope: !3293, file: !1, line: 1441, type: !42)
!3293 = distinct !DILexicalBlock(scope: !3267, file: !1, line: 1441, column: 11)
!3294 = !DILocation(line: 1441, column: 11, scope: !3293)
!3295 = !DILocation(line: 1441, column: 11, scope: !3296)
!3296 = !DILexicalBlockFile(scope: !3293, file: !1, discriminator: 1)
!3297 = !DILocation(line: 1441, column: 11, scope: !3298)
!3298 = !DILexicalBlockFile(scope: !3299, file: !1, discriminator: 2)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !1, line: 1441, column: 11)
!3300 = distinct !DILexicalBlock(scope: !3293, file: !1, line: 1441, column: 11)
!3301 = !DILocation(line: 1441, column: 11, scope: !3302)
!3302 = !DILexicalBlockFile(scope: !3303, file: !1, discriminator: 3)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !1, line: 1441, column: 11)
!3304 = !DILocation(line: 1441, column: 11, scope: !3305)
!3305 = !DILexicalBlockFile(scope: !3306, file: !1, discriminator: 4)
!3306 = distinct !DILexicalBlock(scope: !3303, file: !1, line: 1441, column: 11)
!3307 = !DILocation(line: 1441, column: 11, scope: !3308)
!3308 = !DILexicalBlockFile(scope: !3293, file: !1, discriminator: 5)
!3309 = !DILocation(line: 1442, column: 9, scope: !3267)
!3310 = !DILocation(line: 1437, column: 34, scope: !3311)
!3311 = !DILexicalBlockFile(scope: !3261, file: !1, discriminator: 2)
!3312 = !DILocation(line: 1437, column: 9, scope: !3311)
!3313 = distinct !{!3313, !3314}
!3314 = !DILocation(line: 1437, column: 9, scope: !3206)
!3315 = !DILocation(line: 1443, column: 19, scope: !3206)
!3316 = !DILocation(line: 1443, column: 17, scope: !3206)
!3317 = !DILocation(line: 1444, column: 20, scope: !3206)
!3318 = !DILocation(line: 1444, column: 20, scope: !3239)
!3319 = !DILocation(line: 1444, column: 20, scope: !3241)
!3320 = !DILocation(line: 1444, column: 20, scope: !3243)
!3321 = !DILocation(line: 1444, column: 20, scope: !3322)
!3322 = !DILexicalBlockFile(scope: !3206, file: !1, discriminator: 4)
!3323 = !DILocation(line: 1444, column: 20, scope: !3324)
!3324 = !DILexicalBlockFile(scope: !3206, file: !1, discriminator: 5)
!3325 = !DILocation(line: 1444, column: 20, scope: !3326)
!3326 = !DILexicalBlockFile(scope: !3206, file: !1, discriminator: 6)
!3327 = !DILocation(line: 1444, column: 18, scope: !3326)
!3328 = !DILocation(line: 1447, column: 17, scope: !3058)
!3329 = !DILocation(line: 1447, column: 15, scope: !3058)
!3330 = !DILocation(line: 1448, column: 17, scope: !3058)
!3331 = !DILocation(line: 1448, column: 27, scope: !3058)
!3332 = !DILocation(line: 1448, column: 45, scope: !3058)
!3333 = !DILocation(line: 1448, column: 43, scope: !3058)
!3334 = !DILocation(line: 1448, column: 26, scope: !3058)
!3335 = !DILocation(line: 1448, column: 62, scope: !3058)
!3336 = !DILocation(line: 1448, column: 61, scope: !3058)
!3337 = !DILocation(line: 1448, column: 24, scope: !3058)
!3338 = !DILocation(line: 1448, column: 11, scope: !3058)
!3339 = !DILocation(line: 1448, column: 15, scope: !3058)
!3340 = !DILocation(line: 1449, column: 47, scope: !3058)
!3341 = !DILocation(line: 1449, column: 42, scope: !3058)
!3342 = !DILocation(line: 1449, column: 62, scope: !3058)
!3343 = !DILocation(line: 1449, column: 80, scope: !3058)
!3344 = !DILocation(line: 1449, column: 78, scope: !3058)
!3345 = !DILocation(line: 1449, column: 57, scope: !3075)
!3346 = !DILocation(line: 1449, column: 102, scope: !3058)
!3347 = !DILocation(line: 1449, column: 97, scope: !3077)
!3348 = !DILocation(line: 1449, column: 96, scope: !3058)
!3349 = !DILocation(line: 1449, column: 55, scope: !3058)
!3350 = !DILocation(line: 1449, column: 39, scope: !3058)
!3351 = !DILocation(line: 1449, column: 11, scope: !3058)
!3352 = !DILocation(line: 1449, column: 15, scope: !3058)
!3353 = !DILocation(line: 1450, column: 32, scope: !3058)
!3354 = !DILocation(line: 1450, column: 31, scope: !3058)
!3355 = !DILocation(line: 1450, column: 40, scope: !3058)
!3356 = !DILocation(line: 1450, column: 39, scope: !3058)
!3357 = !DILocation(line: 1450, column: 9, scope: !3058)
!3358 = !DILocation(line: 1450, column: 13, scope: !3058)
!3359 = !DILocation(line: 1451, column: 45, scope: !3058)
!3360 = !DILocation(line: 1451, column: 47, scope: !3058)
!3361 = !DILocation(line: 1451, column: 46, scope: !3058)
!3362 = !DILocation(line: 1451, column: 40, scope: !3058)
!3363 = !DILocation(line: 1451, column: 53, scope: !3058)
!3364 = !DILocation(line: 1451, column: 51, scope: !3058)
!3365 = !DILocation(line: 1451, column: 63, scope: !3058)
!3366 = !DILocation(line: 1451, column: 37, scope: !3058)
!3367 = !DILocation(line: 1451, column: 79, scope: !3058)
!3368 = !DILocation(line: 1451, column: 72, scope: !3075)
!3369 = !DILocation(line: 1451, column: 70, scope: !3058)
!3370 = !DILocation(line: 1451, column: 9, scope: !3058)
!3371 = !DILocation(line: 1451, column: 13, scope: !3058)
!3372 = !DILocation(line: 1452, column: 46, scope: !3058)
!3373 = !DILocation(line: 1452, column: 55, scope: !3058)
!3374 = !DILocation(line: 1452, column: 62, scope: !3058)
!3375 = !DILocation(line: 1452, column: 69, scope: !3058)
!3376 = !DILocation(line: 1452, column: 74, scope: !3058)
!3377 = !DILocation(line: 1452, column: 16, scope: !3058)
!3378 = !DILocation(line: 1452, column: 14, scope: !3058)
!3379 = !DILocation(line: 1453, column: 14, scope: !3058)
!3380 = !DILocation(line: 1453, column: 14, scope: !3075)
!3381 = !DILocation(line: 1453, column: 14, scope: !3077)
!3382 = !DILocation(line: 1453, column: 14, scope: !3080)
!3383 = !DILocation(line: 1453, column: 14, scope: !3384)
!3384 = !DILexicalBlockFile(scope: !3058, file: !1, discriminator: 4)
!3385 = !DILocation(line: 1453, column: 14, scope: !3386)
!3386 = !DILexicalBlockFile(scope: !3058, file: !1, discriminator: 5)
!3387 = !DILocation(line: 1453, column: 14, scope: !3388)
!3388 = !DILexicalBlockFile(scope: !3058, file: !1, discriminator: 6)
!3389 = !DILocation(line: 1453, column: 14, scope: !3390)
!3390 = !DILexicalBlockFile(scope: !3058, file: !1, discriminator: 7)
!3391 = !DILocation(line: 1453, column: 14, scope: !3392)
!3392 = !DILexicalBlockFile(scope: !3058, file: !1, discriminator: 8)
!3393 = !DILocation(line: 1453, column: 14, scope: !3394)
!3394 = !DILexicalBlockFile(scope: !3058, file: !1, discriminator: 9)
!3395 = !DILocation(line: 1453, column: 7, scope: !3394)
!3396 = !DILocation(line: 1456, column: 1, scope: !1995)
!3397 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_int_e", scope: !1, file: !1, line: 1756, type: !3398, isLocal: false, isDefinition: true, scopeLine: 1757, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!43, !51, !51, !52, !3400}
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!3401 = !DILocalVariable(name: "a", arg: 1, scope: !3397, file: !1, line: 1756, type: !51)
!3402 = !DILocation(line: 1756, column: 33, scope: !3397)
!3403 = !DILocalVariable(name: "b", arg: 2, scope: !3397, file: !1, line: 1756, type: !51)
!3404 = !DILocation(line: 1756, column: 46, scope: !3397)
!3405 = !DILocalVariable(name: "x", arg: 3, scope: !3397, file: !1, line: 1756, type: !52)
!3406 = !DILocation(line: 1756, column: 62, scope: !3397)
!3407 = !DILocalVariable(name: "result", arg: 4, scope: !3397, file: !1, line: 1756, type: !3400)
!3408 = !DILocation(line: 1756, column: 81, scope: !3397)
!3409 = !DILocalVariable(name: "re", scope: !3397, file: !1, line: 1758, type: !54)
!3410 = !DILocation(line: 1758, column: 21, scope: !3397)
!3411 = !DILocalVariable(name: "stat_U", scope: !3397, file: !1, line: 1759, type: !43)
!3412 = !DILocation(line: 1759, column: 7, scope: !3397)
!3413 = !DILocation(line: 1759, column: 42, scope: !3397)
!3414 = !DILocation(line: 1759, column: 45, scope: !3397)
!3415 = !DILocation(line: 1759, column: 48, scope: !3397)
!3416 = !DILocation(line: 1759, column: 16, scope: !3397)
!3417 = !DILocalVariable(name: "stat_c", scope: !3397, file: !1, line: 1760, type: !43)
!3418 = !DILocation(line: 1760, column: 7, scope: !3397)
!3419 = !DILocation(line: 1760, column: 43, scope: !3397)
!3420 = !DILocation(line: 1760, column: 16, scope: !3397)
!3421 = !DILocation(line: 1761, column: 10, scope: !3397)
!3422 = !DILocation(line: 1761, column: 10, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !3397, file: !1, discriminator: 1)
!3424 = !DILocation(line: 1761, column: 10, scope: !3425)
!3425 = !DILexicalBlockFile(scope: !3397, file: !1, discriminator: 2)
!3426 = !DILocation(line: 1761, column: 10, scope: !3427)
!3427 = !DILexicalBlockFile(scope: !3397, file: !1, discriminator: 3)
!3428 = !DILocation(line: 1761, column: 10, scope: !3429)
!3429 = !DILexicalBlockFile(scope: !3397, file: !1, discriminator: 4)
!3430 = !DILocation(line: 1761, column: 10, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3397, file: !1, discriminator: 5)
!3432 = !DILocation(line: 1761, column: 10, scope: !3433)
!3433 = !DILexicalBlockFile(scope: !3397, file: !1, discriminator: 6)
!3434 = !DILocation(line: 1761, column: 3, scope: !3433)
!3435 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_e", scope: !1, file: !1, line: 1766, type: !3436, isLocal: false, isDefinition: true, scopeLine: 1767, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!43, !52, !52, !52, !3400}
!3438 = !DILocalVariable(name: "a", arg: 1, scope: !3435, file: !1, line: 1766, type: !52)
!3439 = !DILocation(line: 1766, column: 32, scope: !3435)
!3440 = !DILocalVariable(name: "b", arg: 2, scope: !3435, file: !1, line: 1766, type: !52)
!3441 = !DILocation(line: 1766, column: 48, scope: !3435)
!3442 = !DILocalVariable(name: "x", arg: 3, scope: !3435, file: !1, line: 1766, type: !52)
!3443 = !DILocation(line: 1766, column: 64, scope: !3435)
!3444 = !DILocalVariable(name: "result", arg: 4, scope: !3435, file: !1, line: 1766, type: !3400)
!3445 = !DILocation(line: 1766, column: 83, scope: !3435)
!3446 = !DILocalVariable(name: "re", scope: !3435, file: !1, line: 1768, type: !54)
!3447 = !DILocation(line: 1768, column: 21, scope: !3435)
!3448 = !DILocalVariable(name: "stat_U", scope: !3435, file: !1, line: 1769, type: !43)
!3449 = !DILocation(line: 1769, column: 7, scope: !3435)
!3450 = !DILocation(line: 1769, column: 38, scope: !3435)
!3451 = !DILocation(line: 1769, column: 41, scope: !3435)
!3452 = !DILocation(line: 1769, column: 44, scope: !3435)
!3453 = !DILocation(line: 1769, column: 16, scope: !3435)
!3454 = !DILocalVariable(name: "stat_c", scope: !3435, file: !1, line: 1770, type: !43)
!3455 = !DILocation(line: 1770, column: 7, scope: !3435)
!3456 = !DILocation(line: 1770, column: 43, scope: !3435)
!3457 = !DILocation(line: 1770, column: 16, scope: !3435)
!3458 = !DILocation(line: 1771, column: 10, scope: !3435)
!3459 = !DILocation(line: 1771, column: 10, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3435, file: !1, discriminator: 1)
!3461 = !DILocation(line: 1771, column: 10, scope: !3462)
!3462 = !DILexicalBlockFile(scope: !3435, file: !1, discriminator: 2)
!3463 = !DILocation(line: 1771, column: 10, scope: !3464)
!3464 = !DILexicalBlockFile(scope: !3435, file: !1, discriminator: 3)
!3465 = !DILocation(line: 1771, column: 10, scope: !3466)
!3466 = !DILexicalBlockFile(scope: !3435, file: !1, discriminator: 4)
!3467 = !DILocation(line: 1771, column: 10, scope: !3468)
!3468 = !DILexicalBlockFile(scope: !3435, file: !1, discriminator: 5)
!3469 = !DILocation(line: 1771, column: 10, scope: !3470)
!3470 = !DILexicalBlockFile(scope: !3435, file: !1, discriminator: 6)
!3471 = !DILocation(line: 1771, column: 3, scope: !3470)
!3472 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_int", scope: !1, file: !1, line: 1779, type: !3473, isLocal: false, isDefinition: true, scopeLine: 1780, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!42, !51, !51, !52}
!3475 = !DILocalVariable(name: "a", arg: 1, scope: !3472, file: !1, line: 1779, type: !51)
!3476 = !DILocation(line: 1779, column: 38, scope: !3472)
!3477 = !DILocalVariable(name: "b", arg: 2, scope: !3472, file: !1, line: 1779, type: !51)
!3478 = !DILocation(line: 1779, column: 51, scope: !3472)
!3479 = !DILocalVariable(name: "x", arg: 3, scope: !3472, file: !1, line: 1779, type: !52)
!3480 = !DILocation(line: 1779, column: 67, scope: !3472)
!3481 = !DILocalVariable(name: "result", scope: !3472, file: !1, line: 1781, type: !378)
!3482 = !DILocation(line: 1781, column: 3, scope: !3472)
!3483 = !DILocalVariable(name: "status", scope: !3472, file: !1, line: 1781, type: !43)
!3484 = !DILocation(line: 1781, column: 3, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 1781, column: 3)
!3486 = !DILocation(line: 1781, column: 3, scope: !3487)
!3487 = !DILexicalBlockFile(scope: !3488, file: !1, discriminator: 1)
!3488 = distinct !DILexicalBlock(scope: !3485, file: !1, line: 1781, column: 3)
!3489 = distinct !{!3489, !3490}
!3490 = !DILocation(line: 1781, column: 3, scope: !3488)
!3491 = !DILocation(line: 1781, column: 3, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !3493, file: !1, discriminator: 2)
!3493 = distinct !DILexicalBlock(scope: !3488, file: !1, line: 1781, column: 3)
!3494 = !DILocation(line: 1781, column: 3, scope: !3495)
!3495 = !DILexicalBlockFile(scope: !3488, file: !1, discriminator: 3)
!3496 = !DILocation(line: 1781, column: 3, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3472, file: !1, discriminator: 4)
!3498 = !DILocation(line: 1782, column: 1, scope: !3472)
!3499 = distinct !DISubprogram(name: "gsl_sf_hyperg_U", scope: !1, file: !1, line: 1784, type: !3500, isLocal: false, isDefinition: true, scopeLine: 1785, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{!42, !52, !52, !52}
!3502 = !DILocalVariable(name: "a", arg: 1, scope: !3499, file: !1, line: 1784, type: !52)
!3503 = !DILocation(line: 1784, column: 37, scope: !3499)
!3504 = !DILocalVariable(name: "b", arg: 2, scope: !3499, file: !1, line: 1784, type: !52)
!3505 = !DILocation(line: 1784, column: 53, scope: !3499)
!3506 = !DILocalVariable(name: "x", arg: 3, scope: !3499, file: !1, line: 1784, type: !52)
!3507 = !DILocation(line: 1784, column: 69, scope: !3499)
!3508 = !DILocalVariable(name: "result", scope: !3499, file: !1, line: 1786, type: !378)
!3509 = !DILocation(line: 1786, column: 3, scope: !3499)
!3510 = !DILocalVariable(name: "status", scope: !3499, file: !1, line: 1786, type: !43)
!3511 = !DILocation(line: 1786, column: 3, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3499, file: !1, line: 1786, column: 3)
!3513 = !DILocation(line: 1786, column: 3, scope: !3514)
!3514 = !DILexicalBlockFile(scope: !3515, file: !1, discriminator: 1)
!3515 = distinct !DILexicalBlock(scope: !3512, file: !1, line: 1786, column: 3)
!3516 = distinct !{!3516, !3517}
!3517 = !DILocation(line: 1786, column: 3, scope: !3515)
!3518 = !DILocation(line: 1786, column: 3, scope: !3519)
!3519 = !DILexicalBlockFile(scope: !3520, file: !1, discriminator: 2)
!3520 = distinct !DILexicalBlock(scope: !3515, file: !1, line: 1786, column: 3)
!3521 = !DILocation(line: 1786, column: 3, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !3515, file: !1, discriminator: 3)
!3523 = !DILocation(line: 1786, column: 3, scope: !3524)
!3524 = !DILexicalBlockFile(scope: !3499, file: !1, discriminator: 4)
!3525 = !DILocation(line: 1787, column: 1, scope: !3499)
!3526 = distinct !DISubprogram(name: "hyperg_zaU_asymp", scope: !1, file: !1, line: 216, type: !3436, isLocal: true, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!3527 = !DILocalVariable(name: "a", arg: 1, scope: !3526, file: !1, line: 216, type: !52)
!3528 = !DILocation(line: 216, column: 31, scope: !3526)
!3529 = !DILocalVariable(name: "b", arg: 2, scope: !3526, file: !1, line: 216, type: !52)
!3530 = !DILocation(line: 216, column: 47, scope: !3526)
!3531 = !DILocalVariable(name: "x", arg: 3, scope: !3526, file: !1, line: 216, type: !52)
!3532 = !DILocation(line: 216, column: 63, scope: !3526)
!3533 = !DILocalVariable(name: "result", arg: 4, scope: !3526, file: !1, line: 216, type: !3400)
!3534 = !DILocation(line: 216, column: 81, scope: !3526)
!3535 = !DILocalVariable(name: "ap", scope: !3526, file: !1, line: 218, type: !52)
!3536 = !DILocation(line: 218, column: 16, scope: !3526)
!3537 = !DILocation(line: 218, column: 21, scope: !3526)
!3538 = !DILocalVariable(name: "bp", scope: !3526, file: !1, line: 219, type: !52)
!3539 = !DILocation(line: 219, column: 16, scope: !3526)
!3540 = !DILocation(line: 219, column: 27, scope: !3526)
!3541 = !DILocation(line: 219, column: 25, scope: !3526)
!3542 = !DILocation(line: 219, column: 31, scope: !3526)
!3543 = !DILocation(line: 219, column: 29, scope: !3526)
!3544 = !DILocalVariable(name: "rintap", scope: !3526, file: !1, line: 220, type: !52)
!3545 = !DILocation(line: 220, column: 16, scope: !3526)
!3546 = !DILocation(line: 220, column: 31, scope: !3526)
!3547 = !DILocation(line: 220, column: 34, scope: !3526)
!3548 = !DILocation(line: 220, column: 25, scope: !3526)
!3549 = !DILocalVariable(name: "rintbp", scope: !3526, file: !1, line: 221, type: !52)
!3550 = !DILocation(line: 221, column: 16, scope: !3526)
!3551 = !DILocation(line: 221, column: 31, scope: !3526)
!3552 = !DILocation(line: 221, column: 34, scope: !3526)
!3553 = !DILocation(line: 221, column: 25, scope: !3526)
!3554 = !DILocalVariable(name: "ap_neg_int", scope: !3526, file: !1, line: 222, type: !51)
!3555 = !DILocation(line: 222, column: 13, scope: !3526)
!3556 = !DILocation(line: 222, column: 28, scope: !3526)
!3557 = !DILocation(line: 222, column: 31, scope: !3526)
!3558 = !DILocation(line: 222, column: 37, scope: !3526)
!3559 = !DILocation(line: 222, column: 45, scope: !3560)
!3560 = !DILexicalBlockFile(scope: !3526, file: !1, discriminator: 1)
!3561 = !DILocation(line: 222, column: 50, scope: !3560)
!3562 = !DILocation(line: 222, column: 48, scope: !3560)
!3563 = !DILocation(line: 222, column: 40, scope: !3560)
!3564 = !DILocation(line: 222, column: 58, scope: !3560)
!3565 = !DILocation(line: 222, column: 37, scope: !3566)
!3566 = !DILexicalBlockFile(scope: !3526, file: !1, discriminator: 2)
!3567 = !DILocation(line: 222, column: 13, scope: !3566)
!3568 = !DILocalVariable(name: "bp_neg_int", scope: !3526, file: !1, line: 223, type: !51)
!3569 = !DILocation(line: 223, column: 13, scope: !3526)
!3570 = !DILocation(line: 223, column: 28, scope: !3526)
!3571 = !DILocation(line: 223, column: 31, scope: !3526)
!3572 = !DILocation(line: 223, column: 37, scope: !3526)
!3573 = !DILocation(line: 223, column: 45, scope: !3560)
!3574 = !DILocation(line: 223, column: 50, scope: !3560)
!3575 = !DILocation(line: 223, column: 48, scope: !3560)
!3576 = !DILocation(line: 223, column: 40, scope: !3560)
!3577 = !DILocation(line: 223, column: 58, scope: !3560)
!3578 = !DILocation(line: 223, column: 37, scope: !3566)
!3579 = !DILocation(line: 223, column: 13, scope: !3566)
!3580 = !DILocation(line: 225, column: 6, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3526, file: !1, line: 225, column: 6)
!3582 = !DILocation(line: 225, column: 17, scope: !3581)
!3583 = !DILocation(line: 225, column: 20, scope: !3584)
!3584 = !DILexicalBlockFile(scope: !3581, file: !1, discriminator: 1)
!3585 = !DILocation(line: 225, column: 6, scope: !3584)
!3586 = !DILocalVariable(name: "mxi", scope: !3587, file: !1, line: 228, type: !42)
!3587 = distinct !DILexicalBlock(scope: !3581, file: !1, line: 225, column: 32)
!3588 = !DILocation(line: 228, column: 12, scope: !3587)
!3589 = !DILocation(line: 228, column: 23, scope: !3587)
!3590 = !DILocation(line: 228, column: 22, scope: !3587)
!3591 = !DILocalVariable(name: "nmax", scope: !3587, file: !1, line: 229, type: !42)
!3592 = !DILocation(line: 229, column: 12, scope: !3587)
!3593 = !DILocation(line: 229, column: 26, scope: !3587)
!3594 = !DILocation(line: 229, column: 26, scope: !3595)
!3595 = !DILexicalBlockFile(scope: !3587, file: !1, discriminator: 1)
!3596 = !DILocation(line: 229, column: 26, scope: !3597)
!3597 = !DILexicalBlockFile(scope: !3587, file: !1, discriminator: 2)
!3598 = !DILocation(line: 229, column: 26, scope: !3599)
!3599 = !DILexicalBlockFile(scope: !3587, file: !1, discriminator: 3)
!3600 = !DILocation(line: 229, column: 41, scope: !3599)
!3601 = !DILocation(line: 229, column: 20, scope: !3599)
!3602 = !DILocation(line: 229, column: 19, scope: !3599)
!3603 = !DILocation(line: 229, column: 12, scope: !3599)
!3604 = !DILocalVariable(name: "tn", scope: !3587, file: !1, line: 230, type: !42)
!3605 = !DILocation(line: 230, column: 12, scope: !3587)
!3606 = !DILocalVariable(name: "sum", scope: !3587, file: !1, line: 231, type: !42)
!3607 = !DILocation(line: 231, column: 12, scope: !3587)
!3608 = !DILocalVariable(name: "n", scope: !3587, file: !1, line: 232, type: !42)
!3609 = !DILocation(line: 232, column: 12, scope: !3587)
!3610 = !DILocalVariable(name: "sum_err", scope: !3587, file: !1, line: 233, type: !42)
!3611 = !DILocation(line: 233, column: 12, scope: !3587)
!3612 = !DILocation(line: 234, column: 5, scope: !3587)
!3613 = !DILocation(line: 234, column: 11, scope: !3595)
!3614 = !DILocation(line: 234, column: 16, scope: !3595)
!3615 = !DILocation(line: 234, column: 13, scope: !3595)
!3616 = !DILocation(line: 234, column: 5, scope: !3595)
!3617 = !DILocalVariable(name: "apn", scope: !3618, file: !1, line: 235, type: !42)
!3618 = distinct !DILexicalBlock(scope: !3587, file: !1, line: 234, column: 22)
!3619 = !DILocation(line: 235, column: 14, scope: !3618)
!3620 = !DILocation(line: 235, column: 21, scope: !3618)
!3621 = !DILocation(line: 235, column: 24, scope: !3618)
!3622 = !DILocation(line: 235, column: 23, scope: !3618)
!3623 = !DILocation(line: 235, column: 25, scope: !3618)
!3624 = !DILocalVariable(name: "bpn", scope: !3618, file: !1, line: 236, type: !42)
!3625 = !DILocation(line: 236, column: 14, scope: !3618)
!3626 = !DILocation(line: 236, column: 21, scope: !3618)
!3627 = !DILocation(line: 236, column: 24, scope: !3618)
!3628 = !DILocation(line: 236, column: 23, scope: !3618)
!3629 = !DILocation(line: 236, column: 25, scope: !3618)
!3630 = !DILocation(line: 237, column: 16, scope: !3618)
!3631 = !DILocation(line: 237, column: 20, scope: !3618)
!3632 = !DILocation(line: 237, column: 19, scope: !3618)
!3633 = !DILocation(line: 237, column: 23, scope: !3618)
!3634 = !DILocation(line: 237, column: 22, scope: !3618)
!3635 = !DILocation(line: 237, column: 28, scope: !3618)
!3636 = !DILocation(line: 237, column: 27, scope: !3618)
!3637 = !DILocation(line: 237, column: 11, scope: !3618)
!3638 = !DILocation(line: 238, column: 14, scope: !3618)
!3639 = !DILocation(line: 238, column: 11, scope: !3618)
!3640 = !DILocation(line: 239, column: 47, scope: !3618)
!3641 = !DILocation(line: 239, column: 42, scope: !3618)
!3642 = !DILocation(line: 239, column: 40, scope: !3618)
!3643 = !DILocation(line: 239, column: 15, scope: !3618)
!3644 = !DILocation(line: 240, column: 9, scope: !3618)
!3645 = !DILocation(line: 234, column: 5, scope: !3597)
!3646 = distinct !{!3646, !3612}
!3647 = !DILocation(line: 242, column: 20, scope: !3587)
!3648 = !DILocation(line: 242, column: 5, scope: !3587)
!3649 = !DILocation(line: 242, column: 13, scope: !3587)
!3650 = !DILocation(line: 242, column: 18, scope: !3587)
!3651 = !DILocation(line: 243, column: 20, scope: !3587)
!3652 = !DILocation(line: 243, column: 5, scope: !3587)
!3653 = !DILocation(line: 243, column: 13, scope: !3587)
!3654 = !DILocation(line: 243, column: 18, scope: !3587)
!3655 = !DILocation(line: 244, column: 50, scope: !3587)
!3656 = !DILocation(line: 244, column: 45, scope: !3587)
!3657 = !DILocation(line: 244, column: 55, scope: !3587)
!3658 = !DILocation(line: 244, column: 42, scope: !3587)
!3659 = !DILocation(line: 244, column: 68, scope: !3587)
!3660 = !DILocation(line: 244, column: 63, scope: !3595)
!3661 = !DILocation(line: 244, column: 61, scope: !3587)
!3662 = !DILocation(line: 244, column: 5, scope: !3587)
!3663 = !DILocation(line: 244, column: 13, scope: !3587)
!3664 = !DILocation(line: 244, column: 17, scope: !3587)
!3665 = !DILocation(line: 245, column: 5, scope: !3587)
!3666 = !DILocation(line: 248, column: 18, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3581, file: !1, line: 247, column: 8)
!3668 = !DILocation(line: 248, column: 20, scope: !3667)
!3669 = !DILocation(line: 248, column: 22, scope: !3667)
!3670 = !DILocation(line: 248, column: 24, scope: !3667)
!3671 = !DILocation(line: 248, column: 12, scope: !3667)
!3672 = !DILocation(line: 248, column: 5, scope: !3667)
!3673 = !DILocation(line: 250, column: 1, scope: !3526)
!3674 = distinct !DISubprogram(name: "hyperg_U_series", scope: !1, file: !1, line: 680, type: !3436, isLocal: true, isDefinition: true, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!3675 = !DILocalVariable(name: "a", arg: 1, scope: !3674, file: !1, line: 680, type: !52)
!3676 = !DILocation(line: 680, column: 30, scope: !3674)
!3677 = !DILocalVariable(name: "b", arg: 2, scope: !3674, file: !1, line: 680, type: !52)
!3678 = !DILocation(line: 680, column: 46, scope: !3674)
!3679 = !DILocalVariable(name: "x", arg: 3, scope: !3674, file: !1, line: 680, type: !52)
!3680 = !DILocation(line: 680, column: 62, scope: !3674)
!3681 = !DILocalVariable(name: "result", arg: 4, scope: !3674, file: !1, line: 680, type: !3400)
!3682 = !DILocation(line: 680, column: 81, scope: !3674)
!3683 = !DILocalVariable(name: "SQRT_EPS", scope: !3674, file: !1, line: 682, type: !52)
!3684 = !DILocation(line: 682, column: 16, scope: !3674)
!3685 = !DILocalVariable(name: "bint", scope: !3674, file: !1, line: 683, type: !42)
!3686 = !DILocation(line: 683, column: 8, scope: !3674)
!3687 = !DILocation(line: 683, column: 17, scope: !3674)
!3688 = !DILocation(line: 683, column: 19, scope: !3674)
!3689 = !DILocation(line: 683, column: 32, scope: !3690)
!3690 = !DILexicalBlockFile(scope: !3674, file: !1, discriminator: 1)
!3691 = !DILocation(line: 683, column: 33, scope: !3690)
!3692 = !DILocation(line: 683, column: 27, scope: !3690)
!3693 = !DILocation(line: 683, column: 17, scope: !3690)
!3694 = !DILocation(line: 683, column: 47, scope: !3695)
!3695 = !DILexicalBlockFile(scope: !3674, file: !1, discriminator: 2)
!3696 = !DILocation(line: 683, column: 48, scope: !3695)
!3697 = !DILocation(line: 683, column: 41, scope: !3695)
!3698 = !DILocation(line: 683, column: 17, scope: !3695)
!3699 = !DILocation(line: 683, column: 17, scope: !3700)
!3700 = !DILexicalBlockFile(scope: !3674, file: !1, discriminator: 3)
!3701 = !DILocation(line: 683, column: 8, scope: !3700)
!3702 = !DILocalVariable(name: "beps", scope: !3674, file: !1, line: 684, type: !42)
!3703 = !DILocation(line: 684, column: 10, scope: !3674)
!3704 = !DILocation(line: 684, column: 18, scope: !3674)
!3705 = !DILocation(line: 684, column: 22, scope: !3674)
!3706 = !DILocation(line: 684, column: 20, scope: !3674)
!3707 = !DILocalVariable(name: "a_beps", scope: !3674, file: !1, line: 685, type: !42)
!3708 = !DILocation(line: 685, column: 10, scope: !3674)
!3709 = !DILocation(line: 685, column: 19, scope: !3674)
!3710 = !DILocation(line: 685, column: 23, scope: !3674)
!3711 = !DILocation(line: 685, column: 21, scope: !3674)
!3712 = !DILocalVariable(name: "r_a_beps", scope: !3674, file: !1, line: 686, type: !42)
!3713 = !DILocation(line: 686, column: 10, scope: !3674)
!3714 = !DILocation(line: 686, column: 27, scope: !3674)
!3715 = !DILocation(line: 686, column: 34, scope: !3674)
!3716 = !DILocation(line: 686, column: 21, scope: !3674)
!3717 = !DILocalVariable(name: "a_beps_int", scope: !3674, file: !1, line: 687, type: !42)
!3718 = !DILocation(line: 687, column: 10, scope: !3674)
!3719 = !DILocation(line: 687, column: 30, scope: !3674)
!3720 = !DILocation(line: 687, column: 39, scope: !3674)
!3721 = !DILocation(line: 687, column: 37, scope: !3674)
!3722 = !DILocation(line: 687, column: 25, scope: !3674)
!3723 = !DILocation(line: 687, column: 49, scope: !3674)
!3724 = !DILocation(line: 687, column: 23, scope: !3674)
!3725 = !DILocation(line: 692, column: 7, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3674, file: !1, line: 692, column: 7)
!3727 = !DILocation(line: 692, column: 18, scope: !3726)
!3728 = !DILocation(line: 692, column: 21, scope: !3729)
!3729 = !DILexicalBlockFile(scope: !3726, file: !1, discriminator: 1)
!3730 = !DILocation(line: 692, column: 28, scope: !3729)
!3731 = !DILocation(line: 692, column: 7, scope: !3729)
!3732 = !DILocation(line: 693, column: 11, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3726, file: !1, line: 693, column: 3)
!3734 = !DILocation(line: 693, column: 16, scope: !3733)
!3735 = !DILocation(line: 693, column: 28, scope: !3733)
!3736 = !DILocation(line: 693, column: 22, scope: !3733)
!3737 = !DILocation(line: 693, column: 20, scope: !3733)
!3738 = !DILocation(line: 693, column: 10, scope: !3733)
!3739 = !DILocation(line: 693, column: 41, scope: !3733)
!3740 = !DILocation(line: 693, column: 46, scope: !3733)
!3741 = !DILocation(line: 693, column: 58, scope: !3733)
!3742 = !DILocation(line: 693, column: 52, scope: !3743)
!3743 = !DILexicalBlockFile(scope: !3733, file: !1, discriminator: 1)
!3744 = !DILocation(line: 693, column: 50, scope: !3733)
!3745 = !DILocation(line: 693, column: 40, scope: !3733)
!3746 = !DILocation(line: 694, column: 3, scope: !3733)
!3747 = !DILocation(line: 696, column: 17, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3674, file: !1, line: 696, column: 6)
!3749 = !DILocation(line: 696, column: 15, scope: !3748)
!3750 = !DILocation(line: 696, column: 21, scope: !3748)
!3751 = !DILocation(line: 696, column: 19, scope: !3748)
!3752 = !DILocation(line: 696, column: 6, scope: !3748)
!3753 = !DILocation(line: 696, column: 24, scope: !3748)
!3754 = !DILocation(line: 696, column: 6, scope: !3674)
!3755 = !DILocalVariable(name: "lnr", scope: !3756, file: !1, line: 703, type: !42)
!3756 = distinct !DILexicalBlock(scope: !3748, file: !1, line: 696, column: 36)
!3757 = !DILocation(line: 703, column: 12, scope: !3756)
!3758 = !DILocation(line: 703, column: 19, scope: !3756)
!3759 = !DILocation(line: 703, column: 18, scope: !3756)
!3760 = !DILocation(line: 703, column: 27, scope: !3756)
!3761 = !DILocation(line: 703, column: 23, scope: !3756)
!3762 = !DILocation(line: 703, column: 21, scope: !3756)
!3763 = !DILocalVariable(name: "stat_e", scope: !3756, file: !1, line: 704, type: !43)
!3764 = !DILocation(line: 704, column: 9, scope: !3756)
!3765 = !DILocation(line: 704, column: 32, scope: !3756)
!3766 = !DILocation(line: 704, column: 37, scope: !3756)
!3767 = !DILocation(line: 704, column: 19, scope: !3756)
!3768 = !DILocation(line: 705, column: 42, scope: !3756)
!3769 = !DILocation(line: 705, column: 50, scope: !3756)
!3770 = !DILocation(line: 705, column: 37, scope: !3756)
!3771 = !DILocation(line: 705, column: 35, scope: !3756)
!3772 = !DILocation(line: 705, column: 5, scope: !3756)
!3773 = !DILocation(line: 705, column: 13, scope: !3756)
!3774 = !DILocation(line: 705, column: 17, scope: !3756)
!3775 = !DILocation(line: 706, column: 12, scope: !3756)
!3776 = !DILocation(line: 706, column: 5, scope: !3756)
!3777 = !DILocalVariable(name: "N", scope: !3778, file: !1, line: 709, type: !43)
!3778 = distinct !DILexicalBlock(scope: !3748, file: !1, line: 708, column: 8)
!3779 = !DILocation(line: 709, column: 10, scope: !3778)
!3780 = !DILocation(line: 709, column: 20, scope: !3778)
!3781 = !DILocation(line: 709, column: 14, scope: !3778)
!3782 = !DILocalVariable(name: "lnx", scope: !3778, file: !1, line: 711, type: !42)
!3783 = !DILocation(line: 711, column: 12, scope: !3778)
!3784 = !DILocation(line: 711, column: 23, scope: !3778)
!3785 = !DILocation(line: 711, column: 19, scope: !3778)
!3786 = !DILocalVariable(name: "xeps", scope: !3778, file: !1, line: 712, type: !42)
!3787 = !DILocation(line: 712, column: 12, scope: !3778)
!3788 = !DILocation(line: 712, column: 24, scope: !3778)
!3789 = !DILocation(line: 712, column: 23, scope: !3778)
!3790 = !DILocation(line: 712, column: 29, scope: !3778)
!3791 = !DILocation(line: 712, column: 28, scope: !3778)
!3792 = !DILocation(line: 712, column: 19, scope: !3778)
!3793 = !DILocalVariable(name: "sum", scope: !3778, file: !1, line: 716, type: !378)
!3794 = !DILocation(line: 716, column: 19, scope: !3778)
!3795 = !DILocalVariable(name: "stat_sum", scope: !3778, file: !1, line: 717, type: !43)
!3796 = !DILocation(line: 717, column: 9, scope: !3778)
!3797 = !DILocation(line: 717, column: 40, scope: !3778)
!3798 = !DILocation(line: 717, column: 43, scope: !3778)
!3799 = !DILocation(line: 717, column: 46, scope: !3778)
!3800 = !DILocation(line: 717, column: 49, scope: !3778)
!3801 = !DILocation(line: 717, column: 52, scope: !3778)
!3802 = !DILocation(line: 717, column: 20, scope: !3778)
!3803 = !DILocalVariable(name: "stat_inf", scope: !3778, file: !1, line: 718, type: !43)
!3804 = !DILocation(line: 718, column: 9, scope: !3778)
!3805 = !DILocation(line: 721, column: 13, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3778, file: !1, line: 721, column: 8)
!3807 = !DILocation(line: 721, column: 17, scope: !3806)
!3808 = !DILocation(line: 721, column: 8, scope: !3806)
!3809 = !DILocation(line: 721, column: 23, scope: !3806)
!3810 = !DILocation(line: 721, column: 8, scope: !3778)
!3811 = !DILocation(line: 722, column: 47, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3806, file: !1, line: 721, column: 31)
!3813 = !DILocation(line: 722, column: 50, scope: !3812)
!3814 = !DILocation(line: 722, column: 53, scope: !3812)
!3815 = !DILocation(line: 722, column: 59, scope: !3812)
!3816 = !DILocation(line: 722, column: 62, scope: !3812)
!3817 = !DILocation(line: 722, column: 68, scope: !3812)
!3818 = !DILocation(line: 722, column: 71, scope: !3812)
!3819 = !DILocation(line: 722, column: 82, scope: !3812)
!3820 = !DILocation(line: 722, column: 18, scope: !3812)
!3821 = !DILocation(line: 722, column: 16, scope: !3812)
!3822 = !DILocation(line: 723, column: 5, scope: !3812)
!3823 = !DILocation(line: 723, column: 18, scope: !3824)
!3824 = !DILexicalBlockFile(scope: !3825, file: !1, discriminator: 1)
!3825 = distinct !DILexicalBlock(scope: !3806, file: !1, line: 723, column: 16)
!3826 = !DILocation(line: 723, column: 17, scope: !3824)
!3827 = !DILocation(line: 723, column: 20, scope: !3824)
!3828 = !DILocation(line: 723, column: 19, scope: !3824)
!3829 = !DILocation(line: 723, column: 22, scope: !3824)
!3830 = !DILocation(line: 723, column: 26, scope: !3824)
!3831 = !DILocation(line: 723, column: 31, scope: !3832)
!3832 = !DILexicalBlockFile(scope: !3825, file: !1, discriminator: 2)
!3833 = !DILocation(line: 723, column: 30, scope: !3832)
!3834 = !DILocation(line: 723, column: 33, scope: !3832)
!3835 = !DILocation(line: 723, column: 32, scope: !3832)
!3836 = !DILocation(line: 723, column: 44, scope: !3832)
!3837 = !DILocation(line: 723, column: 43, scope: !3832)
!3838 = !DILocation(line: 723, column: 46, scope: !3832)
!3839 = !DILocation(line: 723, column: 45, scope: !3832)
!3840 = !DILocation(line: 723, column: 36, scope: !3832)
!3841 = !DILocation(line: 723, column: 34, scope: !3832)
!3842 = !DILocation(line: 723, column: 49, scope: !3832)
!3843 = !DILocation(line: 723, column: 52, scope: !3844)
!3844 = !DILexicalBlockFile(scope: !3825, file: !1, discriminator: 3)
!3845 = !DILocation(line: 723, column: 57, scope: !3844)
!3846 = !DILocation(line: 723, column: 16, scope: !3844)
!3847 = !DILocation(line: 724, column: 48, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 723, column: 63)
!3849 = !DILocation(line: 724, column: 51, scope: !3848)
!3850 = !DILocation(line: 724, column: 54, scope: !3848)
!3851 = !DILocation(line: 724, column: 60, scope: !3848)
!3852 = !DILocation(line: 724, column: 63, scope: !3848)
!3853 = !DILocation(line: 724, column: 69, scope: !3848)
!3854 = !DILocation(line: 724, column: 72, scope: !3848)
!3855 = !DILocation(line: 724, column: 83, scope: !3848)
!3856 = !DILocation(line: 724, column: 19, scope: !3848)
!3857 = !DILocation(line: 724, column: 17, scope: !3848)
!3858 = !DILocation(line: 725, column: 5, scope: !3848)
!3859 = !DILocation(line: 726, column: 49, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3825, file: !1, line: 725, column: 12)
!3861 = !DILocation(line: 726, column: 52, scope: !3860)
!3862 = !DILocation(line: 726, column: 55, scope: !3860)
!3863 = !DILocation(line: 726, column: 61, scope: !3860)
!3864 = !DILocation(line: 726, column: 64, scope: !3860)
!3865 = !DILocation(line: 726, column: 70, scope: !3860)
!3866 = !DILocation(line: 726, column: 73, scope: !3860)
!3867 = !DILocation(line: 726, column: 84, scope: !3860)
!3868 = !DILocation(line: 726, column: 18, scope: !3860)
!3869 = !DILocation(line: 726, column: 16, scope: !3860)
!3870 = !DILocation(line: 729, column: 12, scope: !3778)
!3871 = !DILocation(line: 729, column: 12, scope: !3872)
!3872 = !DILexicalBlockFile(scope: !3778, file: !1, discriminator: 1)
!3873 = !DILocation(line: 729, column: 12, scope: !3874)
!3874 = !DILexicalBlockFile(scope: !3778, file: !1, discriminator: 2)
!3875 = !DILocation(line: 729, column: 12, scope: !3876)
!3876 = !DILexicalBlockFile(scope: !3778, file: !1, discriminator: 3)
!3877 = !DILocation(line: 729, column: 12, scope: !3878)
!3878 = !DILexicalBlockFile(scope: !3778, file: !1, discriminator: 4)
!3879 = !DILocation(line: 729, column: 12, scope: !3880)
!3880 = !DILexicalBlockFile(scope: !3778, file: !1, discriminator: 5)
!3881 = !DILocation(line: 729, column: 12, scope: !3882)
!3882 = !DILexicalBlockFile(scope: !3778, file: !1, discriminator: 6)
!3883 = !DILocation(line: 729, column: 5, scope: !3882)
!3884 = !DILocation(line: 732, column: 1, scope: !3674)
!3885 = distinct !DISubprogram(name: "hyperg_U_small_a_bgt0", scope: !1, file: !1, line: 777, type: !3886, isLocal: true, isDefinition: true, scopeLine: 781, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!43, !52, !52, !52, !3400, !3888}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!3889 = !DILocalVariable(name: "a", arg: 1, scope: !3885, file: !1, line: 777, type: !52)
!3890 = !DILocation(line: 777, column: 36, scope: !3885)
!3891 = !DILocalVariable(name: "b", arg: 2, scope: !3885, file: !1, line: 777, type: !52)
!3892 = !DILocation(line: 777, column: 52, scope: !3885)
!3893 = !DILocalVariable(name: "x", arg: 3, scope: !3885, file: !1, line: 777, type: !52)
!3894 = !DILocation(line: 777, column: 68, scope: !3885)
!3895 = !DILocalVariable(name: "result", arg: 4, scope: !3885, file: !1, line: 778, type: !3400)
!3896 = !DILocation(line: 778, column: 39, scope: !3885)
!3897 = !DILocalVariable(name: "ln_multiplier", arg: 5, scope: !3885, file: !1, line: 779, type: !3888)
!3898 = !DILocation(line: 779, column: 32, scope: !3885)
!3899 = !DILocation(line: 782, column: 6, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3885, file: !1, line: 782, column: 6)
!3901 = !DILocation(line: 782, column: 8, scope: !3900)
!3902 = !DILocation(line: 782, column: 6, scope: !3885)
!3903 = !DILocation(line: 783, column: 5, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3900, file: !1, line: 782, column: 16)
!3905 = !DILocation(line: 783, column: 13, scope: !3904)
!3906 = !DILocation(line: 783, column: 17, scope: !3904)
!3907 = !DILocation(line: 784, column: 5, scope: !3904)
!3908 = !DILocation(line: 784, column: 13, scope: !3904)
!3909 = !DILocation(line: 784, column: 17, scope: !3904)
!3910 = !DILocation(line: 785, column: 6, scope: !3904)
!3911 = !DILocation(line: 785, column: 20, scope: !3904)
!3912 = !DILocation(line: 786, column: 5, scope: !3904)
!3913 = !DILocation(line: 788, column: 15, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3900, file: !1, line: 788, column: 14)
!3915 = !DILocation(line: 788, column: 17, scope: !3914)
!3916 = !DILocation(line: 788, column: 26, scope: !3914)
!3917 = !DILocation(line: 788, column: 29, scope: !3918)
!3918 = !DILexicalBlockFile(scope: !3914, file: !1, discriminator: 1)
!3919 = !DILocation(line: 788, column: 45, scope: !3918)
!3920 = !DILocation(line: 788, column: 40, scope: !3918)
!3921 = !DILocation(line: 788, column: 38, scope: !3918)
!3922 = !DILocation(line: 788, column: 31, scope: !3918)
!3923 = !DILocation(line: 789, column: 11, scope: !3914)
!3924 = !DILocation(line: 789, column: 15, scope: !3918)
!3925 = !DILocation(line: 789, column: 17, scope: !3918)
!3926 = !DILocation(line: 789, column: 26, scope: !3918)
!3927 = !DILocation(line: 789, column: 29, scope: !3928)
!3928 = !DILexicalBlockFile(scope: !3914, file: !1, discriminator: 2)
!3929 = !DILocation(line: 789, column: 45, scope: !3928)
!3930 = !DILocation(line: 789, column: 40, scope: !3928)
!3931 = !DILocation(line: 789, column: 38, scope: !3928)
!3932 = !DILocation(line: 789, column: 31, scope: !3928)
!3933 = !DILocation(line: 788, column: 14, scope: !3934)
!3934 = !DILexicalBlockFile(scope: !3900, file: !1, discriminator: 2)
!3935 = !DILocalVariable(name: "stat", scope: !3936, file: !1, line: 791, type: !43)
!3936 = distinct !DILexicalBlock(scope: !3914, file: !1, line: 790, column: 7)
!3937 = !DILocation(line: 791, column: 9, scope: !3936)
!3938 = !DILocation(line: 791, column: 42, scope: !3936)
!3939 = !DILocation(line: 791, column: 45, scope: !3936)
!3940 = !DILocation(line: 791, column: 48, scope: !3936)
!3941 = !DILocation(line: 791, column: 51, scope: !3936)
!3942 = !DILocation(line: 791, column: 59, scope: !3936)
!3943 = !DILocation(line: 791, column: 16, scope: !3936)
!3944 = !DILocation(line: 792, column: 8, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3936, file: !1, line: 792, column: 8)
!3946 = !DILocation(line: 792, column: 13, scope: !3945)
!3947 = !DILocation(line: 792, column: 8, scope: !3936)
!3948 = !DILocation(line: 793, column: 7, scope: !3945)
!3949 = !DILocation(line: 795, column: 14, scope: !3945)
!3950 = !DILocation(line: 795, column: 7, scope: !3945)
!3951 = !DILocation(line: 797, column: 11, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3914, file: !1, line: 797, column: 11)
!3953 = !DILocation(line: 797, column: 13, scope: !3952)
!3954 = !DILocation(line: 797, column: 11, scope: !3914)
!3955 = !DILocalVariable(name: "eps", scope: !3956, file: !1, line: 800, type: !42)
!3956 = distinct !DILexicalBlock(scope: !3952, file: !1, line: 797, column: 21)
!3957 = !DILocation(line: 800, column: 12, scope: !3956)
!3958 = !DILocation(line: 800, column: 18, scope: !3956)
!3959 = !DILocation(line: 800, column: 28, scope: !3956)
!3960 = !DILocation(line: 800, column: 22, scope: !3956)
!3961 = !DILocation(line: 800, column: 20, scope: !3956)
!3962 = !DILocalVariable(name: "b0", scope: !3956, file: !1, line: 801, type: !42)
!3963 = !DILocation(line: 801, column: 12, scope: !3956)
!3964 = !DILocation(line: 801, column: 24, scope: !3956)
!3965 = !DILocation(line: 801, column: 22, scope: !3956)
!3966 = !DILocalVariable(name: "r_Ubm1", scope: !3956, file: !1, line: 802, type: !378)
!3967 = !DILocation(line: 802, column: 19, scope: !3956)
!3968 = !DILocalVariable(name: "r_Ub", scope: !3956, file: !1, line: 803, type: !378)
!3969 = !DILocation(line: 803, column: 19, scope: !3956)
!3970 = !DILocalVariable(name: "stat_0", scope: !3956, file: !1, line: 804, type: !43)
!3971 = !DILocation(line: 804, column: 9, scope: !3956)
!3972 = !DILocation(line: 804, column: 36, scope: !3956)
!3973 = !DILocation(line: 804, column: 39, scope: !3956)
!3974 = !DILocation(line: 804, column: 47, scope: !3956)
!3975 = !DILocation(line: 804, column: 18, scope: !3956)
!3976 = !DILocalVariable(name: "stat_1", scope: !3956, file: !1, line: 805, type: !43)
!3977 = !DILocation(line: 805, column: 9, scope: !3956)
!3978 = !DILocation(line: 805, column: 36, scope: !3956)
!3979 = !DILocation(line: 805, column: 39, scope: !3956)
!3980 = !DILocation(line: 805, column: 41, scope: !3956)
!3981 = !DILocation(line: 805, column: 47, scope: !3956)
!3982 = !DILocation(line: 805, column: 18, scope: !3956)
!3983 = !DILocalVariable(name: "Ubm1", scope: !3956, file: !1, line: 806, type: !42)
!3984 = !DILocation(line: 806, column: 12, scope: !3956)
!3985 = !DILocation(line: 806, column: 26, scope: !3956)
!3986 = !DILocalVariable(name: "Ub", scope: !3956, file: !1, line: 807, type: !42)
!3987 = !DILocation(line: 807, column: 12, scope: !3956)
!3988 = !DILocation(line: 807, column: 24, scope: !3956)
!3989 = !DILocalVariable(name: "Ubp1", scope: !3956, file: !1, line: 808, type: !42)
!3990 = !DILocation(line: 808, column: 12, scope: !3956)
!3991 = !DILocalVariable(name: "bp", scope: !3956, file: !1, line: 809, type: !42)
!3992 = !DILocation(line: 809, column: 12, scope: !3956)
!3993 = !DILocation(line: 811, column: 14, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3956, file: !1, line: 811, column: 5)
!3995 = !DILocation(line: 811, column: 16, scope: !3994)
!3996 = !DILocation(line: 811, column: 12, scope: !3994)
!3997 = !DILocation(line: 811, column: 9, scope: !3994)
!3998 = !DILocation(line: 811, column: 22, scope: !3999)
!3999 = !DILexicalBlockFile(scope: !4000, file: !1, discriminator: 1)
!4000 = distinct !DILexicalBlock(scope: !3994, file: !1, line: 811, column: 5)
!4001 = !DILocation(line: 811, column: 25, scope: !3999)
!4002 = !DILocation(line: 811, column: 26, scope: !3999)
!4003 = !DILocation(line: 811, column: 24, scope: !3999)
!4004 = !DILocation(line: 811, column: 5, scope: !3999)
!4005 = !DILocation(line: 812, column: 20, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4000, file: !1, line: 811, column: 43)
!4007 = !DILocation(line: 812, column: 19, scope: !4006)
!4008 = !DILocation(line: 812, column: 22, scope: !4006)
!4009 = !DILocation(line: 812, column: 21, scope: !4006)
!4010 = !DILocation(line: 812, column: 26, scope: !4006)
!4011 = !DILocation(line: 812, column: 25, scope: !4006)
!4012 = !DILocation(line: 812, column: 34, scope: !4006)
!4013 = !DILocation(line: 812, column: 37, scope: !4006)
!4014 = !DILocation(line: 812, column: 36, scope: !4006)
!4015 = !DILocation(line: 812, column: 38, scope: !4006)
!4016 = !DILocation(line: 812, column: 44, scope: !4006)
!4017 = !DILocation(line: 812, column: 43, scope: !4006)
!4018 = !DILocation(line: 812, column: 31, scope: !4006)
!4019 = !DILocation(line: 812, column: 48, scope: !4006)
!4020 = !DILocation(line: 812, column: 47, scope: !4006)
!4021 = !DILocation(line: 812, column: 12, scope: !4006)
!4022 = !DILocation(line: 813, column: 14, scope: !4006)
!4023 = !DILocation(line: 813, column: 12, scope: !4006)
!4024 = !DILocation(line: 814, column: 14, scope: !4006)
!4025 = !DILocation(line: 814, column: 12, scope: !4006)
!4026 = !DILocation(line: 815, column: 5, scope: !4006)
!4027 = !DILocation(line: 811, column: 35, scope: !4028)
!4028 = !DILexicalBlockFile(scope: !4000, file: !1, discriminator: 2)
!4029 = !DILocation(line: 811, column: 5, scope: !4028)
!4030 = distinct !{!4030, !4031}
!4031 = !DILocation(line: 811, column: 5, scope: !3956)
!4032 = !DILocation(line: 816, column: 20, scope: !3956)
!4033 = !DILocation(line: 816, column: 5, scope: !3956)
!4034 = !DILocation(line: 816, column: 13, scope: !3956)
!4035 = !DILocation(line: 816, column: 18, scope: !3956)
!4036 = !DILocation(line: 817, column: 33, scope: !3956)
!4037 = !DILocation(line: 817, column: 44, scope: !3956)
!4038 = !DILocation(line: 817, column: 36, scope: !3956)
!4039 = !DILocation(line: 817, column: 21, scope: !3956)
!4040 = !DILocation(line: 817, column: 61, scope: !3956)
!4041 = !DILocation(line: 817, column: 70, scope: !3956)
!4042 = !DILocation(line: 817, column: 64, scope: !3956)
!4043 = !DILocation(line: 817, column: 51, scope: !4044)
!4044 = !DILexicalBlockFile(scope: !3956, file: !1, discriminator: 1)
!4045 = !DILocation(line: 817, column: 49, scope: !3956)
!4046 = !DILocation(line: 817, column: 83, scope: !3956)
!4047 = !DILocation(line: 817, column: 78, scope: !4048)
!4048 = !DILexicalBlockFile(scope: !3956, file: !1, discriminator: 2)
!4049 = !DILocation(line: 817, column: 76, scope: !3956)
!4050 = !DILocation(line: 817, column: 5, scope: !3956)
!4051 = !DILocation(line: 817, column: 13, scope: !3956)
!4052 = !DILocation(line: 817, column: 18, scope: !3956)
!4053 = !DILocation(line: 818, column: 50, scope: !3956)
!4054 = !DILocation(line: 818, column: 52, scope: !3956)
!4055 = !DILocation(line: 818, column: 51, scope: !3956)
!4056 = !DILocation(line: 818, column: 45, scope: !3956)
!4057 = !DILocation(line: 818, column: 55, scope: !3956)
!4058 = !DILocation(line: 818, column: 42, scope: !3956)
!4059 = !DILocation(line: 818, column: 68, scope: !3956)
!4060 = !DILocation(line: 818, column: 63, scope: !4044)
!4061 = !DILocation(line: 818, column: 61, scope: !3956)
!4062 = !DILocation(line: 818, column: 5, scope: !3956)
!4063 = !DILocation(line: 818, column: 13, scope: !3956)
!4064 = !DILocation(line: 818, column: 17, scope: !3956)
!4065 = !DILocation(line: 819, column: 6, scope: !3956)
!4066 = !DILocation(line: 819, column: 20, scope: !3956)
!4067 = !DILocation(line: 820, column: 12, scope: !3956)
!4068 = !DILocation(line: 820, column: 12, scope: !4044)
!4069 = !DILocation(line: 820, column: 12, scope: !4048)
!4070 = !DILocation(line: 820, column: 12, scope: !4071)
!4071 = !DILexicalBlockFile(scope: !3956, file: !1, discriminator: 3)
!4072 = !DILocation(line: 820, column: 12, scope: !4073)
!4073 = !DILexicalBlockFile(scope: !3956, file: !1, discriminator: 4)
!4074 = !DILocation(line: 820, column: 12, scope: !4075)
!4075 = !DILexicalBlockFile(scope: !3956, file: !1, discriminator: 5)
!4076 = !DILocation(line: 820, column: 12, scope: !4077)
!4077 = !DILexicalBlockFile(scope: !3956, file: !1, discriminator: 6)
!4078 = !DILocation(line: 820, column: 5, scope: !4077)
!4079 = !DILocation(line: 823, column: 6, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !3952, file: !1, line: 822, column: 8)
!4081 = !DILocation(line: 823, column: 20, scope: !4080)
!4082 = !DILocation(line: 824, column: 30, scope: !4080)
!4083 = !DILocation(line: 824, column: 33, scope: !4080)
!4084 = !DILocation(line: 824, column: 36, scope: !4080)
!4085 = !DILocation(line: 824, column: 39, scope: !4080)
!4086 = !DILocation(line: 824, column: 12, scope: !4080)
!4087 = !DILocation(line: 824, column: 5, scope: !4080)
!4088 = !DILocation(line: 826, column: 1, scope: !3885)
!4089 = distinct !DISubprogram(name: "hyperg_U_CF1", scope: !1, file: !1, line: 71, type: !4090, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!43, !52, !52, !51, !52, !3888, !4092}
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!4093 = !DILocalVariable(name: "a", arg: 1, scope: !4089, file: !1, line: 71, type: !52)
!4094 = !DILocation(line: 71, column: 27, scope: !4089)
!4095 = !DILocalVariable(name: "b", arg: 2, scope: !4089, file: !1, line: 71, type: !52)
!4096 = !DILocation(line: 71, column: 43, scope: !4089)
!4097 = !DILocalVariable(name: "N", arg: 3, scope: !4089, file: !1, line: 71, type: !51)
!4098 = !DILocation(line: 71, column: 56, scope: !4089)
!4099 = !DILocalVariable(name: "x", arg: 4, scope: !4089, file: !1, line: 71, type: !52)
!4100 = !DILocation(line: 71, column: 72, scope: !4089)
!4101 = !DILocalVariable(name: "result", arg: 5, scope: !4089, file: !1, line: 72, type: !3888)
!4102 = !DILocation(line: 72, column: 23, scope: !4089)
!4103 = !DILocalVariable(name: "count", arg: 6, scope: !4089, file: !1, line: 72, type: !4092)
!4104 = !DILocation(line: 72, column: 37, scope: !4089)
!4105 = !DILocalVariable(name: "RECUR_BIG", scope: !4089, file: !1, line: 74, type: !52)
!4106 = !DILocation(line: 74, column: 16, scope: !4089)
!4107 = !DILocalVariable(name: "maxiter", scope: !4089, file: !1, line: 75, type: !51)
!4108 = !DILocation(line: 75, column: 13, scope: !4089)
!4109 = !DILocalVariable(name: "n", scope: !4089, file: !1, line: 76, type: !43)
!4110 = !DILocation(line: 76, column: 7, scope: !4089)
!4111 = !DILocalVariable(name: "Anm2", scope: !4089, file: !1, line: 77, type: !42)
!4112 = !DILocation(line: 77, column: 10, scope: !4089)
!4113 = !DILocalVariable(name: "Bnm2", scope: !4089, file: !1, line: 78, type: !42)
!4114 = !DILocation(line: 78, column: 10, scope: !4089)
!4115 = !DILocalVariable(name: "Anm1", scope: !4089, file: !1, line: 79, type: !42)
!4116 = !DILocation(line: 79, column: 10, scope: !4089)
!4117 = !DILocalVariable(name: "Bnm1", scope: !4089, file: !1, line: 80, type: !42)
!4118 = !DILocation(line: 80, column: 10, scope: !4089)
!4119 = !DILocalVariable(name: "a1", scope: !4089, file: !1, line: 81, type: !42)
!4120 = !DILocation(line: 81, column: 10, scope: !4089)
!4121 = !DILocation(line: 81, column: 17, scope: !4089)
!4122 = !DILocation(line: 81, column: 21, scope: !4089)
!4123 = !DILocation(line: 81, column: 19, scope: !4089)
!4124 = !DILocation(line: 81, column: 15, scope: !4089)
!4125 = !DILocalVariable(name: "b1", scope: !4089, file: !1, line: 82, type: !42)
!4126 = !DILocation(line: 82, column: 10, scope: !4089)
!4127 = !DILocation(line: 82, column: 17, scope: !4089)
!4128 = !DILocation(line: 82, column: 25, scope: !4089)
!4129 = !DILocation(line: 82, column: 24, scope: !4089)
!4130 = !DILocation(line: 82, column: 19, scope: !4089)
!4131 = !DILocation(line: 82, column: 29, scope: !4089)
!4132 = !DILocation(line: 82, column: 27, scope: !4089)
!4133 = !DILocation(line: 82, column: 38, scope: !4089)
!4134 = !DILocation(line: 82, column: 39, scope: !4089)
!4135 = !DILocation(line: 82, column: 37, scope: !4089)
!4136 = !DILocation(line: 82, column: 36, scope: !4089)
!4137 = !DILocation(line: 82, column: 31, scope: !4089)
!4138 = !DILocalVariable(name: "An", scope: !4089, file: !1, line: 83, type: !42)
!4139 = !DILocation(line: 83, column: 10, scope: !4089)
!4140 = !DILocation(line: 83, column: 15, scope: !4089)
!4141 = !DILocation(line: 83, column: 18, scope: !4089)
!4142 = !DILocation(line: 83, column: 17, scope: !4089)
!4143 = !DILocation(line: 83, column: 25, scope: !4089)
!4144 = !DILocation(line: 83, column: 28, scope: !4089)
!4145 = !DILocation(line: 83, column: 27, scope: !4089)
!4146 = !DILocation(line: 83, column: 23, scope: !4089)
!4147 = !DILocalVariable(name: "Bn", scope: !4089, file: !1, line: 84, type: !42)
!4148 = !DILocation(line: 84, column: 10, scope: !4089)
!4149 = !DILocation(line: 84, column: 15, scope: !4089)
!4150 = !DILocation(line: 84, column: 18, scope: !4089)
!4151 = !DILocation(line: 84, column: 17, scope: !4089)
!4152 = !DILocation(line: 84, column: 25, scope: !4089)
!4153 = !DILocation(line: 84, column: 28, scope: !4089)
!4154 = !DILocation(line: 84, column: 27, scope: !4089)
!4155 = !DILocation(line: 84, column: 23, scope: !4089)
!4156 = !DILocalVariable(name: "an", scope: !4089, file: !1, line: 85, type: !42)
!4157 = !DILocation(line: 85, column: 10, scope: !4089)
!4158 = !DILocalVariable(name: "bn", scope: !4089, file: !1, line: 85, type: !42)
!4159 = !DILocation(line: 85, column: 14, scope: !4089)
!4160 = !DILocalVariable(name: "fn", scope: !4089, file: !1, line: 86, type: !42)
!4161 = !DILocation(line: 86, column: 10, scope: !4089)
!4162 = !DILocation(line: 86, column: 15, scope: !4089)
!4163 = !DILocation(line: 86, column: 18, scope: !4089)
!4164 = !DILocation(line: 86, column: 17, scope: !4089)
!4165 = !DILocation(line: 88, column: 3, scope: !4089)
!4166 = !DILocation(line: 88, column: 9, scope: !4167)
!4167 = !DILexicalBlockFile(scope: !4089, file: !1, discriminator: 1)
!4168 = !DILocation(line: 88, column: 11, scope: !4167)
!4169 = !DILocation(line: 88, column: 3, scope: !4167)
!4170 = !DILocalVariable(name: "old_fn", scope: !4171, file: !1, line: 89, type: !42)
!4171 = distinct !DILexicalBlock(scope: !4089, file: !1, line: 88, column: 22)
!4172 = !DILocation(line: 89, column: 12, scope: !4171)
!4173 = !DILocalVariable(name: "del", scope: !4171, file: !1, line: 90, type: !42)
!4174 = !DILocation(line: 90, column: 12, scope: !4171)
!4175 = !DILocation(line: 91, column: 6, scope: !4171)
!4176 = !DILocation(line: 92, column: 12, scope: !4171)
!4177 = !DILocation(line: 92, column: 10, scope: !4171)
!4178 = !DILocation(line: 93, column: 12, scope: !4171)
!4179 = !DILocation(line: 93, column: 10, scope: !4171)
!4180 = !DILocation(line: 94, column: 12, scope: !4171)
!4181 = !DILocation(line: 94, column: 10, scope: !4171)
!4182 = !DILocation(line: 95, column: 12, scope: !4171)
!4183 = !DILocation(line: 95, column: 10, scope: !4171)
!4184 = !DILocation(line: 96, column: 12, scope: !4171)
!4185 = !DILocation(line: 96, column: 16, scope: !4171)
!4186 = !DILocation(line: 96, column: 14, scope: !4171)
!4187 = !DILocation(line: 96, column: 20, scope: !4171)
!4188 = !DILocation(line: 96, column: 18, scope: !4171)
!4189 = !DILocation(line: 96, column: 24, scope: !4171)
!4190 = !DILocation(line: 96, column: 22, scope: !4171)
!4191 = !DILocation(line: 96, column: 10, scope: !4171)
!4192 = !DILocation(line: 96, column: 28, scope: !4171)
!4193 = !DILocation(line: 96, column: 32, scope: !4171)
!4194 = !DILocation(line: 96, column: 30, scope: !4171)
!4195 = !DILocation(line: 96, column: 36, scope: !4171)
!4196 = !DILocation(line: 96, column: 34, scope: !4171)
!4197 = !DILocation(line: 96, column: 38, scope: !4171)
!4198 = !DILocation(line: 96, column: 26, scope: !4171)
!4199 = !DILocation(line: 96, column: 8, scope: !4171)
!4200 = !DILocation(line: 97, column: 12, scope: !4171)
!4201 = !DILocation(line: 97, column: 20, scope: !4171)
!4202 = !DILocation(line: 97, column: 19, scope: !4171)
!4203 = !DILocation(line: 97, column: 14, scope: !4171)
!4204 = !DILocation(line: 97, column: 24, scope: !4171)
!4205 = !DILocation(line: 97, column: 22, scope: !4171)
!4206 = !DILocation(line: 97, column: 33, scope: !4171)
!4207 = !DILocation(line: 97, column: 35, scope: !4171)
!4208 = !DILocation(line: 97, column: 34, scope: !4171)
!4209 = !DILocation(line: 97, column: 32, scope: !4171)
!4210 = !DILocation(line: 97, column: 31, scope: !4171)
!4211 = !DILocation(line: 97, column: 26, scope: !4171)
!4212 = !DILocation(line: 97, column: 8, scope: !4171)
!4213 = !DILocation(line: 98, column: 10, scope: !4171)
!4214 = !DILocation(line: 98, column: 13, scope: !4171)
!4215 = !DILocation(line: 98, column: 12, scope: !4171)
!4216 = !DILocation(line: 98, column: 20, scope: !4171)
!4217 = !DILocation(line: 98, column: 23, scope: !4171)
!4218 = !DILocation(line: 98, column: 22, scope: !4171)
!4219 = !DILocation(line: 98, column: 18, scope: !4171)
!4220 = !DILocation(line: 98, column: 8, scope: !4171)
!4221 = !DILocation(line: 99, column: 10, scope: !4171)
!4222 = !DILocation(line: 99, column: 13, scope: !4171)
!4223 = !DILocation(line: 99, column: 12, scope: !4171)
!4224 = !DILocation(line: 99, column: 20, scope: !4171)
!4225 = !DILocation(line: 99, column: 23, scope: !4171)
!4226 = !DILocation(line: 99, column: 22, scope: !4171)
!4227 = !DILocation(line: 99, column: 18, scope: !4171)
!4228 = !DILocation(line: 99, column: 8, scope: !4171)
!4229 = !DILocation(line: 101, column: 13, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4171, file: !1, line: 101, column: 8)
!4231 = !DILocation(line: 101, column: 8, scope: !4230)
!4232 = !DILocation(line: 101, column: 17, scope: !4230)
!4233 = !DILocation(line: 101, column: 29, scope: !4230)
!4234 = !DILocation(line: 101, column: 37, scope: !4235)
!4235 = !DILexicalBlockFile(scope: !4230, file: !1, discriminator: 1)
!4236 = !DILocation(line: 101, column: 32, scope: !4235)
!4237 = !DILocation(line: 101, column: 41, scope: !4235)
!4238 = !DILocation(line: 101, column: 8, scope: !4235)
!4239 = !DILocation(line: 102, column: 10, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4230, file: !1, line: 101, column: 54)
!4241 = !DILocation(line: 103, column: 10, scope: !4240)
!4242 = !DILocation(line: 104, column: 12, scope: !4240)
!4243 = !DILocation(line: 105, column: 12, scope: !4240)
!4244 = !DILocation(line: 106, column: 12, scope: !4240)
!4245 = !DILocation(line: 107, column: 12, scope: !4240)
!4246 = !DILocation(line: 108, column: 5, scope: !4240)
!4247 = !DILocation(line: 110, column: 14, scope: !4171)
!4248 = !DILocation(line: 110, column: 12, scope: !4171)
!4249 = !DILocation(line: 111, column: 10, scope: !4171)
!4250 = !DILocation(line: 111, column: 13, scope: !4171)
!4251 = !DILocation(line: 111, column: 12, scope: !4171)
!4252 = !DILocation(line: 111, column: 8, scope: !4171)
!4253 = !DILocation(line: 112, column: 11, scope: !4171)
!4254 = !DILocation(line: 112, column: 18, scope: !4171)
!4255 = !DILocation(line: 112, column: 17, scope: !4171)
!4256 = !DILocation(line: 112, column: 9, scope: !4171)
!4257 = !DILocation(line: 114, column: 13, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4171, file: !1, line: 114, column: 8)
!4259 = !DILocation(line: 114, column: 17, scope: !4258)
!4260 = !DILocation(line: 114, column: 8, scope: !4258)
!4261 = !DILocation(line: 114, column: 24, scope: !4258)
!4262 = !DILocation(line: 114, column: 8, scope: !4171)
!4263 = !DILocation(line: 114, column: 48, scope: !4264)
!4264 = !DILexicalBlockFile(scope: !4258, file: !1, discriminator: 1)
!4265 = !DILocation(line: 88, column: 3, scope: !4266)
!4266 = !DILexicalBlockFile(scope: !4089, file: !1, discriminator: 2)
!4267 = distinct !{!4267, !4165}
!4268 = !DILocation(line: 117, column: 13, scope: !4089)
!4269 = !DILocation(line: 117, column: 4, scope: !4089)
!4270 = !DILocation(line: 117, column: 11, scope: !4089)
!4271 = !DILocation(line: 118, column: 13, scope: !4089)
!4272 = !DILocation(line: 118, column: 4, scope: !4089)
!4273 = !DILocation(line: 118, column: 11, scope: !4089)
!4274 = !DILocation(line: 120, column: 6, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4089, file: !1, line: 120, column: 6)
!4276 = !DILocation(line: 120, column: 8, scope: !4275)
!4277 = !DILocation(line: 120, column: 6, scope: !4089)
!4278 = !DILocation(line: 121, column: 5, scope: !4275)
!4279 = distinct !{!4279, !4278}
!4280 = !DILocation(line: 121, column: 5, scope: !4281)
!4281 = !DILexicalBlockFile(scope: !4282, file: !1, discriminator: 1)
!4282 = distinct !DILexicalBlock(scope: !4275, file: !1, line: 121, column: 5)
!4283 = !DILocation(line: 121, column: 5, scope: !4284)
!4284 = !DILexicalBlockFile(scope: !4282, file: !1, discriminator: 2)
!4285 = !DILocation(line: 123, column: 5, scope: !4275)
!4286 = !DILocation(line: 124, column: 1, scope: !4089)
!4287 = distinct !DISubprogram(name: "hyperg_lnU_beq2a", scope: !1, file: !1, line: 48, type: !4288, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!43, !52, !52, !3400}
!4290 = !DILocalVariable(name: "a", arg: 1, scope: !4287, file: !1, line: 48, type: !52)
!4291 = !DILocation(line: 48, column: 31, scope: !4287)
!4292 = !DILocalVariable(name: "x", arg: 2, scope: !4287, file: !1, line: 48, type: !52)
!4293 = !DILocation(line: 48, column: 47, scope: !4287)
!4294 = !DILocalVariable(name: "result", arg: 3, scope: !4287, file: !1, line: 48, type: !3400)
!4295 = !DILocation(line: 48, column: 66, scope: !4287)
!4296 = !DILocalVariable(name: "lx", scope: !4287, file: !1, line: 50, type: !52)
!4297 = !DILocation(line: 50, column: 16, scope: !4287)
!4298 = !DILocation(line: 50, column: 25, scope: !4287)
!4299 = !DILocation(line: 50, column: 21, scope: !4287)
!4300 = !DILocalVariable(name: "nu", scope: !4287, file: !1, line: 51, type: !52)
!4301 = !DILocation(line: 51, column: 16, scope: !4287)
!4302 = !DILocation(line: 51, column: 21, scope: !4287)
!4303 = !DILocation(line: 51, column: 23, scope: !4287)
!4304 = !DILocalVariable(name: "lnpre", scope: !4287, file: !1, line: 52, type: !52)
!4305 = !DILocation(line: 52, column: 16, scope: !4287)
!4306 = !DILocation(line: 52, column: 29, scope: !4287)
!4307 = !DILocation(line: 52, column: 31, scope: !4287)
!4308 = !DILocation(line: 52, column: 27, scope: !4287)
!4309 = !DILocation(line: 52, column: 43, scope: !4287)
!4310 = !DILocation(line: 52, column: 46, scope: !4287)
!4311 = !DILocation(line: 52, column: 45, scope: !4287)
!4312 = !DILocation(line: 52, column: 41, scope: !4287)
!4313 = !DILocalVariable(name: "lnK", scope: !4287, file: !1, line: 53, type: !378)
!4314 = !DILocation(line: 53, column: 17, scope: !4287)
!4315 = !DILocation(line: 54, column: 25, scope: !4287)
!4316 = !DILocation(line: 54, column: 33, scope: !4287)
!4317 = !DILocation(line: 54, column: 32, scope: !4287)
!4318 = !DILocation(line: 54, column: 3, scope: !4287)
!4319 = !DILocation(line: 55, column: 18, scope: !4287)
!4320 = !DILocation(line: 55, column: 30, scope: !4287)
!4321 = !DILocation(line: 55, column: 24, scope: !4287)
!4322 = !DILocation(line: 55, column: 3, scope: !4287)
!4323 = !DILocation(line: 55, column: 11, scope: !4287)
!4324 = !DILocation(line: 55, column: 16, scope: !4287)
!4325 = !DILocation(line: 56, column: 52, scope: !4287)
!4326 = !DILocation(line: 56, column: 51, scope: !4287)
!4327 = !DILocation(line: 56, column: 43, scope: !4287)
!4328 = !DILocation(line: 56, column: 55, scope: !4287)
!4329 = !DILocation(line: 56, column: 75, scope: !4287)
!4330 = !DILocation(line: 56, column: 78, scope: !4287)
!4331 = !DILocation(line: 56, column: 77, scope: !4287)
!4332 = !DILocation(line: 56, column: 70, scope: !4333)
!4333 = !DILexicalBlockFile(scope: !4287, file: !1, discriminator: 1)
!4334 = !DILocation(line: 56, column: 68, scope: !4287)
!4335 = !DILocation(line: 56, column: 40, scope: !4287)
!4336 = !DILocation(line: 56, column: 3, scope: !4287)
!4337 = !DILocation(line: 56, column: 11, scope: !4287)
!4338 = !DILocation(line: 56, column: 16, scope: !4287)
!4339 = !DILocation(line: 57, column: 22, scope: !4287)
!4340 = !DILocation(line: 57, column: 3, scope: !4287)
!4341 = !DILocation(line: 57, column: 11, scope: !4287)
!4342 = !DILocation(line: 57, column: 15, scope: !4287)
!4343 = !DILocation(line: 58, column: 47, scope: !4287)
!4344 = !DILocation(line: 58, column: 55, scope: !4287)
!4345 = !DILocation(line: 58, column: 42, scope: !4287)
!4346 = !DILocation(line: 58, column: 40, scope: !4287)
!4347 = !DILocation(line: 58, column: 3, scope: !4287)
!4348 = !DILocation(line: 58, column: 11, scope: !4287)
!4349 = !DILocation(line: 58, column: 15, scope: !4287)
!4350 = !DILocation(line: 59, column: 3, scope: !4287)
!4351 = distinct !DISubprogram(name: "d9chu", scope: !1, file: !1, line: 144, type: !3436, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!4352 = !DILocalVariable(name: "a", arg: 1, scope: !4351, file: !1, line: 144, type: !52)
!4353 = !DILocation(line: 144, column: 20, scope: !4351)
!4354 = !DILocalVariable(name: "b", arg: 2, scope: !4351, file: !1, line: 144, type: !52)
!4355 = !DILocation(line: 144, column: 36, scope: !4351)
!4356 = !DILocalVariable(name: "x", arg: 3, scope: !4351, file: !1, line: 144, type: !52)
!4357 = !DILocation(line: 144, column: 52, scope: !4351)
!4358 = !DILocalVariable(name: "result", arg: 4, scope: !4351, file: !1, line: 144, type: !3400)
!4359 = !DILocation(line: 144, column: 71, scope: !4351)
!4360 = !DILocalVariable(name: "EPS", scope: !4351, file: !1, line: 146, type: !52)
!4361 = !DILocation(line: 146, column: 16, scope: !4351)
!4362 = !DILocalVariable(name: "maxiter", scope: !4351, file: !1, line: 147, type: !51)
!4363 = !DILocation(line: 147, column: 13, scope: !4351)
!4364 = !DILocalVariable(name: "aa", scope: !4351, file: !1, line: 148, type: !4365)
!4365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, align: 64, elements: !4366)
!4366 = !{!4367}
!4367 = !DISubrange(count: 4)
!4368 = !DILocation(line: 148, column: 10, scope: !4351)
!4369 = !DILocalVariable(name: "bb", scope: !4351, file: !1, line: 148, type: !4365)
!4370 = !DILocation(line: 148, column: 17, scope: !4351)
!4371 = !DILocalVariable(name: "i", scope: !4351, file: !1, line: 149, type: !43)
!4372 = !DILocation(line: 149, column: 7, scope: !4351)
!4373 = !DILocalVariable(name: "bp", scope: !4351, file: !1, line: 151, type: !42)
!4374 = !DILocation(line: 151, column: 10, scope: !4351)
!4375 = !DILocation(line: 151, column: 21, scope: !4351)
!4376 = !DILocation(line: 151, column: 19, scope: !4351)
!4377 = !DILocation(line: 151, column: 25, scope: !4351)
!4378 = !DILocation(line: 151, column: 23, scope: !4351)
!4379 = !DILocalVariable(name: "ab", scope: !4351, file: !1, line: 152, type: !42)
!4380 = !DILocation(line: 152, column: 10, scope: !4351)
!4381 = !DILocation(line: 152, column: 15, scope: !4351)
!4382 = !DILocation(line: 152, column: 17, scope: !4351)
!4383 = !DILocation(line: 152, column: 16, scope: !4351)
!4384 = !DILocalVariable(name: "ct2", scope: !4351, file: !1, line: 153, type: !42)
!4385 = !DILocation(line: 153, column: 10, scope: !4351)
!4386 = !DILocation(line: 153, column: 23, scope: !4351)
!4387 = !DILocation(line: 153, column: 27, scope: !4351)
!4388 = !DILocation(line: 153, column: 25, scope: !4351)
!4389 = !DILocation(line: 153, column: 20, scope: !4351)
!4390 = !DILocalVariable(name: "sab", scope: !4351, file: !1, line: 154, type: !42)
!4391 = !DILocation(line: 154, column: 10, scope: !4351)
!4392 = !DILocation(line: 154, column: 16, scope: !4351)
!4393 = !DILocation(line: 154, column: 20, scope: !4351)
!4394 = !DILocation(line: 154, column: 18, scope: !4351)
!4395 = !DILocalVariable(name: "ct3", scope: !4351, file: !1, line: 156, type: !42)
!4396 = !DILocation(line: 156, column: 10, scope: !4351)
!4397 = !DILocation(line: 156, column: 16, scope: !4351)
!4398 = !DILocation(line: 156, column: 20, scope: !4351)
!4399 = !DILocation(line: 156, column: 28, scope: !4351)
!4400 = !DILocation(line: 156, column: 26, scope: !4351)
!4401 = !DILocalVariable(name: "anbn", scope: !4351, file: !1, line: 157, type: !42)
!4402 = !DILocation(line: 157, column: 10, scope: !4351)
!4403 = !DILocation(line: 157, column: 17, scope: !4351)
!4404 = !DILocation(line: 157, column: 23, scope: !4351)
!4405 = !DILocation(line: 157, column: 21, scope: !4351)
!4406 = !DILocation(line: 157, column: 27, scope: !4351)
!4407 = !DILocalVariable(name: "ct1", scope: !4351, file: !1, line: 158, type: !42)
!4408 = !DILocation(line: 158, column: 10, scope: !4351)
!4409 = !DILocation(line: 158, column: 26, scope: !4351)
!4410 = !DILocation(line: 158, column: 25, scope: !4351)
!4411 = !DILocation(line: 158, column: 28, scope: !4351)
!4412 = !DILocation(line: 158, column: 27, scope: !4351)
!4413 = !DILocation(line: 158, column: 20, scope: !4351)
!4414 = !DILocation(line: 160, column: 3, scope: !4351)
!4415 = !DILocation(line: 160, column: 9, scope: !4351)
!4416 = !DILocation(line: 161, column: 3, scope: !4351)
!4417 = !DILocation(line: 161, column: 9, scope: !4351)
!4418 = !DILocation(line: 163, column: 21, scope: !4351)
!4419 = !DILocation(line: 163, column: 20, scope: !4351)
!4420 = !DILocation(line: 163, column: 23, scope: !4351)
!4421 = !DILocation(line: 163, column: 22, scope: !4351)
!4422 = !DILocation(line: 163, column: 15, scope: !4351)
!4423 = !DILocation(line: 163, column: 3, scope: !4351)
!4424 = !DILocation(line: 163, column: 9, scope: !4351)
!4425 = !DILocation(line: 164, column: 17, scope: !4351)
!4426 = !DILocation(line: 164, column: 21, scope: !4351)
!4427 = !DILocation(line: 164, column: 20, scope: !4351)
!4428 = !DILocation(line: 164, column: 15, scope: !4351)
!4429 = !DILocation(line: 164, column: 3, scope: !4351)
!4430 = !DILocation(line: 164, column: 9, scope: !4351)
!4431 = !DILocation(line: 166, column: 21, scope: !4351)
!4432 = !DILocation(line: 166, column: 20, scope: !4351)
!4433 = !DILocation(line: 166, column: 25, scope: !4351)
!4434 = !DILocation(line: 166, column: 24, scope: !4351)
!4435 = !DILocation(line: 166, column: 27, scope: !4351)
!4436 = !DILocation(line: 166, column: 26, scope: !4351)
!4437 = !DILocation(line: 166, column: 15, scope: !4351)
!4438 = !DILocation(line: 166, column: 3, scope: !4351)
!4439 = !DILocation(line: 166, column: 9, scope: !4351)
!4440 = !DILocation(line: 167, column: 21, scope: !4351)
!4441 = !DILocation(line: 167, column: 20, scope: !4351)
!4442 = !DILocation(line: 167, column: 24, scope: !4351)
!4443 = !DILocation(line: 167, column: 23, scope: !4351)
!4444 = !DILocation(line: 167, column: 15, scope: !4351)
!4445 = !DILocation(line: 167, column: 35, scope: !4351)
!4446 = !DILocation(line: 167, column: 34, scope: !4351)
!4447 = !DILocation(line: 167, column: 39, scope: !4351)
!4448 = !DILocation(line: 167, column: 38, scope: !4351)
!4449 = !DILocation(line: 167, column: 43, scope: !4351)
!4450 = !DILocation(line: 167, column: 42, scope: !4351)
!4451 = !DILocation(line: 167, column: 29, scope: !4351)
!4452 = !DILocation(line: 167, column: 3, scope: !4351)
!4453 = !DILocation(line: 167, column: 9, scope: !4351)
!4454 = !DILocation(line: 169, column: 8, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4351, file: !1, line: 169, column: 3)
!4456 = !DILocation(line: 169, column: 7, scope: !4455)
!4457 = !DILocation(line: 169, column: 12, scope: !4458)
!4458 = !DILexicalBlockFile(scope: !4459, file: !1, discriminator: 1)
!4459 = distinct !DILexicalBlock(scope: !4455, file: !1, line: 169, column: 3)
!4460 = !DILocation(line: 169, column: 13, scope: !4458)
!4461 = !DILocation(line: 169, column: 3, scope: !4458)
!4462 = !DILocalVariable(name: "j", scope: !4463, file: !1, line: 170, type: !43)
!4463 = distinct !DILexicalBlock(scope: !4459, file: !1, line: 169, column: 28)
!4464 = !DILocation(line: 170, column: 9, scope: !4463)
!4465 = !DILocalVariable(name: "c2", scope: !4463, file: !1, line: 171, type: !42)
!4466 = !DILocation(line: 171, column: 12, scope: !4463)
!4467 = !DILocalVariable(name: "d1z", scope: !4463, file: !1, line: 172, type: !42)
!4468 = !DILocation(line: 172, column: 12, scope: !4463)
!4469 = !DILocalVariable(name: "g1", scope: !4463, file: !1, line: 173, type: !42)
!4470 = !DILocation(line: 173, column: 12, scope: !4463)
!4471 = !DILocalVariable(name: "g2", scope: !4463, file: !1, line: 173, type: !42)
!4472 = !DILocation(line: 173, column: 16, scope: !4463)
!4473 = !DILocalVariable(name: "g3", scope: !4463, file: !1, line: 173, type: !42)
!4474 = !DILocation(line: 173, column: 20, scope: !4463)
!4475 = !DILocalVariable(name: "x2i1", scope: !4463, file: !1, line: 174, type: !42)
!4476 = !DILocation(line: 174, column: 12, scope: !4463)
!4477 = !DILocation(line: 174, column: 21, scope: !4463)
!4478 = !DILocation(line: 174, column: 20, scope: !4463)
!4479 = !DILocation(line: 174, column: 23, scope: !4463)
!4480 = !DILocation(line: 174, column: 19, scope: !4463)
!4481 = !DILocation(line: 175, column: 13, scope: !4463)
!4482 = !DILocation(line: 175, column: 19, scope: !4463)
!4483 = !DILocation(line: 175, column: 23, scope: !4463)
!4484 = !DILocation(line: 175, column: 17, scope: !4463)
!4485 = !DILocation(line: 175, column: 11, scope: !4463)
!4486 = !DILocation(line: 176, column: 13, scope: !4463)
!4487 = !DILocation(line: 176, column: 20, scope: !4463)
!4488 = !DILocation(line: 176, column: 18, scope: !4463)
!4489 = !DILocation(line: 176, column: 10, scope: !4463)
!4490 = !DILocation(line: 177, column: 14, scope: !4463)
!4491 = !DILocation(line: 177, column: 19, scope: !4463)
!4492 = !DILocation(line: 177, column: 26, scope: !4463)
!4493 = !DILocation(line: 177, column: 25, scope: !4463)
!4494 = !DILocation(line: 177, column: 11, scope: !4463)
!4495 = !DILocation(line: 178, column: 13, scope: !4463)
!4496 = !DILocation(line: 178, column: 18, scope: !4463)
!4497 = !DILocation(line: 178, column: 17, scope: !4463)
!4498 = !DILocation(line: 178, column: 22, scope: !4463)
!4499 = !DILocation(line: 178, column: 11, scope: !4463)
!4500 = !DILocation(line: 179, column: 17, scope: !4463)
!4501 = !DILocation(line: 179, column: 16, scope: !4463)
!4502 = !DILocation(line: 179, column: 22, scope: !4463)
!4503 = !DILocation(line: 179, column: 21, scope: !4463)
!4504 = !DILocation(line: 179, column: 24, scope: !4463)
!4505 = !DILocation(line: 179, column: 23, scope: !4463)
!4506 = !DILocation(line: 179, column: 11, scope: !4463)
!4507 = !DILocation(line: 181, column: 11, scope: !4463)
!4508 = !DILocation(line: 181, column: 15, scope: !4463)
!4509 = !DILocation(line: 181, column: 14, scope: !4463)
!4510 = !DILocation(line: 181, column: 9, scope: !4463)
!4511 = !DILocation(line: 182, column: 11, scope: !4463)
!4512 = !DILocation(line: 182, column: 17, scope: !4463)
!4513 = !DILocation(line: 182, column: 22, scope: !4463)
!4514 = !DILocation(line: 182, column: 25, scope: !4463)
!4515 = !DILocation(line: 182, column: 24, scope: !4463)
!4516 = !DILocation(line: 182, column: 20, scope: !4463)
!4517 = !DILocation(line: 182, column: 15, scope: !4463)
!4518 = !DILocation(line: 182, column: 9, scope: !4463)
!4519 = !DILocation(line: 183, column: 11, scope: !4463)
!4520 = !DILocation(line: 183, column: 17, scope: !4463)
!4521 = !DILocation(line: 183, column: 15, scope: !4463)
!4522 = !DILocation(line: 183, column: 9, scope: !4463)
!4523 = !DILocation(line: 184, column: 11, scope: !4463)
!4524 = !DILocation(line: 184, column: 22, scope: !4463)
!4525 = !DILocation(line: 184, column: 20, scope: !4463)
!4526 = !DILocation(line: 184, column: 32, scope: !4463)
!4527 = !DILocation(line: 184, column: 31, scope: !4463)
!4528 = !DILocation(line: 184, column: 26, scope: !4463)
!4529 = !DILocation(line: 184, column: 14, scope: !4463)
!4530 = !DILocation(line: 184, column: 9, scope: !4463)
!4531 = !DILocation(line: 186, column: 13, scope: !4463)
!4532 = !DILocation(line: 186, column: 16, scope: !4463)
!4533 = !DILocation(line: 186, column: 15, scope: !4463)
!4534 = !DILocation(line: 186, column: 24, scope: !4463)
!4535 = !DILocation(line: 186, column: 27, scope: !4463)
!4536 = !DILocation(line: 186, column: 26, scope: !4463)
!4537 = !DILocation(line: 186, column: 22, scope: !4463)
!4538 = !DILocation(line: 186, column: 35, scope: !4463)
!4539 = !DILocation(line: 186, column: 38, scope: !4463)
!4540 = !DILocation(line: 186, column: 37, scope: !4463)
!4541 = !DILocation(line: 186, column: 33, scope: !4463)
!4542 = !DILocation(line: 186, column: 5, scope: !4463)
!4543 = !DILocation(line: 186, column: 11, scope: !4463)
!4544 = !DILocation(line: 187, column: 13, scope: !4463)
!4545 = !DILocation(line: 187, column: 16, scope: !4463)
!4546 = !DILocation(line: 187, column: 15, scope: !4463)
!4547 = !DILocation(line: 187, column: 24, scope: !4463)
!4548 = !DILocation(line: 187, column: 27, scope: !4463)
!4549 = !DILocation(line: 187, column: 26, scope: !4463)
!4550 = !DILocation(line: 187, column: 22, scope: !4463)
!4551 = !DILocation(line: 187, column: 35, scope: !4463)
!4552 = !DILocation(line: 187, column: 38, scope: !4463)
!4553 = !DILocation(line: 187, column: 37, scope: !4463)
!4554 = !DILocation(line: 187, column: 33, scope: !4463)
!4555 = !DILocation(line: 187, column: 5, scope: !4463)
!4556 = !DILocation(line: 187, column: 11, scope: !4463)
!4557 = !DILocation(line: 189, column: 13, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4463, file: !1, line: 189, column: 8)
!4559 = !DILocation(line: 189, column: 19, scope: !4558)
!4560 = !DILocation(line: 189, column: 18, scope: !4558)
!4561 = !DILocation(line: 189, column: 25, scope: !4558)
!4562 = !DILocation(line: 189, column: 31, scope: !4558)
!4563 = !DILocation(line: 189, column: 30, scope: !4558)
!4564 = !DILocation(line: 189, column: 24, scope: !4558)
!4565 = !DILocation(line: 189, column: 8, scope: !4558)
!4566 = !DILocation(line: 189, column: 49, scope: !4558)
!4567 = !DILocation(line: 189, column: 55, scope: !4558)
!4568 = !DILocation(line: 189, column: 54, scope: !4558)
!4569 = !DILocation(line: 189, column: 44, scope: !4570)
!4570 = !DILexicalBlockFile(scope: !4558, file: !1, discriminator: 2)
!4571 = !DILocation(line: 189, column: 43, scope: !4558)
!4572 = !DILocation(line: 189, column: 38, scope: !4558)
!4573 = !DILocation(line: 189, column: 8, scope: !4463)
!4574 = !DILocation(line: 189, column: 63, scope: !4575)
!4575 = !DILexicalBlockFile(scope: !4558, file: !1, discriminator: 1)
!4576 = !DILocation(line: 191, column: 10, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4463, file: !1, line: 191, column: 5)
!4578 = !DILocation(line: 191, column: 9, scope: !4577)
!4579 = !DILocation(line: 191, column: 14, scope: !4580)
!4580 = !DILexicalBlockFile(scope: !4581, file: !1, discriminator: 1)
!4581 = distinct !DILexicalBlock(scope: !4577, file: !1, line: 191, column: 5)
!4582 = !DILocation(line: 191, column: 15, scope: !4580)
!4583 = !DILocation(line: 191, column: 5, scope: !4580)
!4584 = !DILocation(line: 192, column: 18, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4581, file: !1, line: 191, column: 24)
!4586 = !DILocation(line: 192, column: 19, scope: !4585)
!4587 = !DILocation(line: 192, column: 15, scope: !4585)
!4588 = !DILocation(line: 192, column: 10, scope: !4585)
!4589 = !DILocation(line: 192, column: 7, scope: !4585)
!4590 = !DILocation(line: 192, column: 13, scope: !4585)
!4591 = !DILocation(line: 193, column: 18, scope: !4585)
!4592 = !DILocation(line: 193, column: 19, scope: !4585)
!4593 = !DILocation(line: 193, column: 15, scope: !4585)
!4594 = !DILocation(line: 193, column: 10, scope: !4585)
!4595 = !DILocation(line: 193, column: 7, scope: !4585)
!4596 = !DILocation(line: 193, column: 13, scope: !4585)
!4597 = !DILocation(line: 194, column: 5, scope: !4585)
!4598 = !DILocation(line: 191, column: 20, scope: !4599)
!4599 = !DILexicalBlockFile(scope: !4581, file: !1, discriminator: 2)
!4600 = !DILocation(line: 191, column: 5, scope: !4599)
!4601 = distinct !{!4601, !4602}
!4602 = !DILocation(line: 191, column: 5, scope: !4463)
!4603 = !DILocation(line: 195, column: 3, scope: !4463)
!4604 = !DILocation(line: 169, column: 24, scope: !4605)
!4605 = !DILexicalBlockFile(scope: !4459, file: !1, discriminator: 2)
!4606 = !DILocation(line: 169, column: 3, scope: !4605)
!4607 = distinct !{!4607, !4608}
!4608 = !DILocation(line: 169, column: 3, scope: !4351)
!4609 = !DILocation(line: 197, column: 17, scope: !4351)
!4610 = !DILocation(line: 197, column: 23, scope: !4351)
!4611 = !DILocation(line: 197, column: 22, scope: !4351)
!4612 = !DILocation(line: 197, column: 3, scope: !4351)
!4613 = !DILocation(line: 197, column: 11, scope: !4351)
!4614 = !DILocation(line: 197, column: 15, scope: !4351)
!4615 = !DILocation(line: 198, column: 46, scope: !4351)
!4616 = !DILocation(line: 198, column: 54, scope: !4351)
!4617 = !DILocation(line: 198, column: 41, scope: !4351)
!4618 = !DILocation(line: 198, column: 39, scope: !4351)
!4619 = !DILocation(line: 198, column: 3, scope: !4351)
!4620 = !DILocation(line: 198, column: 11, scope: !4351)
!4621 = !DILocation(line: 198, column: 15, scope: !4351)
!4622 = !DILocation(line: 200, column: 6, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4351, file: !1, line: 200, column: 6)
!4624 = !DILocation(line: 200, column: 8, scope: !4623)
!4625 = !DILocation(line: 200, column: 6, scope: !4351)
!4626 = !DILocation(line: 201, column: 5, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4623, file: !1, line: 200, column: 20)
!4628 = distinct !{!4628, !4626}
!4629 = !DILocation(line: 201, column: 5, scope: !4630)
!4630 = !DILexicalBlockFile(scope: !4631, file: !1, discriminator: 1)
!4631 = distinct !DILexicalBlock(scope: !4627, file: !1, line: 201, column: 5)
!4632 = !DILocation(line: 202, column: 3, scope: !4627)
!4633 = !DILocation(line: 204, column: 5, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4623, file: !1, line: 203, column: 8)
!4635 = !DILocation(line: 206, column: 1, scope: !4351)
!4636 = distinct !DISubprogram(name: "hyperg_U_finite_sum", scope: !1, file: !1, line: 257, type: !4637, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!43, !43, !42, !42, !42, !42, !3400}
!4639 = !DILocalVariable(name: "N", arg: 1, scope: !4636, file: !1, line: 257, type: !43)
!4640 = !DILocation(line: 257, column: 25, scope: !4636)
!4641 = !DILocalVariable(name: "a", arg: 2, scope: !4636, file: !1, line: 257, type: !42)
!4642 = !DILocation(line: 257, column: 35, scope: !4636)
!4643 = !DILocalVariable(name: "b", arg: 3, scope: !4636, file: !1, line: 257, type: !42)
!4644 = !DILocation(line: 257, column: 45, scope: !4636)
!4645 = !DILocalVariable(name: "x", arg: 4, scope: !4636, file: !1, line: 257, type: !42)
!4646 = !DILocation(line: 257, column: 55, scope: !4636)
!4647 = !DILocalVariable(name: "xeps", arg: 5, scope: !4636, file: !1, line: 257, type: !42)
!4648 = !DILocation(line: 257, column: 65, scope: !4636)
!4649 = !DILocalVariable(name: "result", arg: 6, scope: !4636, file: !1, line: 258, type: !3400)
!4650 = !DILocation(line: 258, column: 37, scope: !4636)
!4651 = !DILocalVariable(name: "i", scope: !4636, file: !1, line: 260, type: !43)
!4652 = !DILocation(line: 260, column: 7, scope: !4636)
!4653 = !DILocalVariable(name: "sum_val", scope: !4636, file: !1, line: 261, type: !42)
!4654 = !DILocation(line: 261, column: 10, scope: !4636)
!4655 = !DILocalVariable(name: "sum_err", scope: !4636, file: !1, line: 262, type: !42)
!4656 = !DILocation(line: 262, column: 10, scope: !4636)
!4657 = !DILocation(line: 264, column: 6, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4636, file: !1, line: 264, column: 6)
!4659 = !DILocation(line: 264, column: 8, scope: !4658)
!4660 = !DILocation(line: 264, column: 6, scope: !4636)
!4661 = !DILocalVariable(name: "t_val", scope: !4662, file: !1, line: 265, type: !42)
!4662 = distinct !DILexicalBlock(scope: !4658, file: !1, line: 264, column: 14)
!4663 = !DILocation(line: 265, column: 12, scope: !4662)
!4664 = !DILocalVariable(name: "t_err", scope: !4662, file: !1, line: 266, type: !42)
!4665 = !DILocation(line: 266, column: 12, scope: !4662)
!4666 = !DILocalVariable(name: "poch", scope: !4662, file: !1, line: 267, type: !378)
!4667 = !DILocation(line: 267, column: 19, scope: !4662)
!4668 = !DILocalVariable(name: "stat_poch", scope: !4662, file: !1, line: 268, type: !43)
!4669 = !DILocation(line: 268, column: 9, scope: !4662)
!4670 = !DILocation(line: 270, column: 13, scope: !4662)
!4671 = !DILocation(line: 271, column: 13, scope: !4662)
!4672 = !DILocation(line: 272, column: 10, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4662, file: !1, line: 272, column: 5)
!4674 = !DILocation(line: 272, column: 9, scope: !4673)
!4675 = !DILocation(line: 272, column: 14, scope: !4676)
!4676 = !DILexicalBlockFile(scope: !4677, file: !1, discriminator: 1)
!4677 = distinct !DILexicalBlock(scope: !4673, file: !1, line: 272, column: 5)
!4678 = !DILocation(line: 272, column: 19, scope: !4676)
!4679 = !DILocation(line: 272, column: 18, scope: !4676)
!4680 = !DILocation(line: 272, column: 15, scope: !4676)
!4681 = !DILocation(line: 272, column: 5, scope: !4676)
!4682 = !DILocalVariable(name: "xi1", scope: !4683, file: !1, line: 273, type: !52)
!4683 = distinct !DILexicalBlock(scope: !4677, file: !1, line: 272, column: 27)
!4684 = !DILocation(line: 273, column: 20, scope: !4683)
!4685 = !DILocation(line: 273, column: 27, scope: !4683)
!4686 = !DILocation(line: 273, column: 29, scope: !4683)
!4687 = !DILocalVariable(name: "mult", scope: !4683, file: !1, line: 274, type: !52)
!4688 = !DILocation(line: 274, column: 20, scope: !4683)
!4689 = !DILocation(line: 274, column: 28, scope: !4683)
!4690 = !DILocation(line: 274, column: 30, scope: !4683)
!4691 = !DILocation(line: 274, column: 29, scope: !4683)
!4692 = !DILocation(line: 274, column: 35, scope: !4683)
!4693 = !DILocation(line: 274, column: 34, scope: !4683)
!4694 = !DILocation(line: 274, column: 39, scope: !4683)
!4695 = !DILocation(line: 274, column: 41, scope: !4683)
!4696 = !DILocation(line: 274, column: 40, scope: !4683)
!4697 = !DILocation(line: 274, column: 47, scope: !4683)
!4698 = !DILocation(line: 274, column: 50, scope: !4683)
!4699 = !DILocation(line: 274, column: 45, scope: !4683)
!4700 = !DILocation(line: 274, column: 36, scope: !4683)
!4701 = !DILocation(line: 275, column: 16, scope: !4683)
!4702 = !DILocation(line: 275, column: 13, scope: !4683)
!4703 = !DILocation(line: 276, column: 21, scope: !4683)
!4704 = !DILocation(line: 276, column: 16, scope: !4683)
!4705 = !DILocation(line: 276, column: 29, scope: !4683)
!4706 = !DILocation(line: 276, column: 27, scope: !4683)
!4707 = !DILocation(line: 276, column: 42, scope: !4683)
!4708 = !DILocation(line: 276, column: 37, scope: !4709)
!4709 = !DILexicalBlockFile(scope: !4683, file: !1, discriminator: 1)
!4710 = !DILocation(line: 276, column: 49, scope: !4683)
!4711 = !DILocation(line: 276, column: 55, scope: !4683)
!4712 = !DILocation(line: 276, column: 61, scope: !4683)
!4713 = !DILocation(line: 276, column: 35, scope: !4683)
!4714 = !DILocation(line: 276, column: 13, scope: !4683)
!4715 = !DILocation(line: 277, column: 18, scope: !4683)
!4716 = !DILocation(line: 277, column: 15, scope: !4683)
!4717 = !DILocation(line: 278, column: 18, scope: !4683)
!4718 = !DILocation(line: 278, column: 15, scope: !4683)
!4719 = !DILocation(line: 279, column: 5, scope: !4683)
!4720 = !DILocation(line: 272, column: 23, scope: !4721)
!4721 = !DILexicalBlockFile(scope: !4677, file: !1, discriminator: 2)
!4722 = !DILocation(line: 272, column: 5, scope: !4721)
!4723 = distinct !{!4723, !4724}
!4724 = !DILocation(line: 272, column: 5, scope: !4662)
!4725 = !DILocation(line: 281, column: 35, scope: !4662)
!4726 = !DILocation(line: 281, column: 34, scope: !4662)
!4727 = !DILocation(line: 281, column: 37, scope: !4662)
!4728 = !DILocation(line: 281, column: 36, scope: !4662)
!4729 = !DILocation(line: 281, column: 41, scope: !4662)
!4730 = !DILocation(line: 281, column: 40, scope: !4662)
!4731 = !DILocation(line: 281, column: 17, scope: !4662)
!4732 = !DILocation(line: 281, column: 15, scope: !4662)
!4733 = !DILocation(line: 283, column: 20, scope: !4662)
!4734 = !DILocation(line: 283, column: 35, scope: !4662)
!4735 = !DILocation(line: 283, column: 28, scope: !4662)
!4736 = !DILocation(line: 283, column: 5, scope: !4662)
!4737 = !DILocation(line: 283, column: 13, scope: !4662)
!4738 = !DILocation(line: 283, column: 18, scope: !4662)
!4739 = !DILocation(line: 284, column: 25, scope: !4662)
!4740 = !DILocation(line: 284, column: 20, scope: !4662)
!4741 = !DILocation(line: 284, column: 41, scope: !4662)
!4742 = !DILocation(line: 284, column: 34, scope: !4662)
!4743 = !DILocation(line: 284, column: 47, scope: !4662)
!4744 = !DILocation(line: 284, column: 67, scope: !4662)
!4745 = !DILocation(line: 284, column: 57, scope: !4746)
!4746 = !DILexicalBlockFile(scope: !4662, file: !1, discriminator: 1)
!4747 = !DILocation(line: 284, column: 55, scope: !4662)
!4748 = !DILocation(line: 284, column: 45, scope: !4662)
!4749 = !DILocation(line: 284, column: 5, scope: !4662)
!4750 = !DILocation(line: 284, column: 13, scope: !4662)
!4751 = !DILocation(line: 284, column: 18, scope: !4662)
!4752 = !DILocation(line: 285, column: 30, scope: !4662)
!4753 = !DILocation(line: 285, column: 20, scope: !4662)
!4754 = !DILocation(line: 285, column: 43, scope: !4662)
!4755 = !DILocation(line: 285, column: 38, scope: !4746)
!4756 = !DILocation(line: 285, column: 46, scope: !4662)
!4757 = !DILocation(line: 285, column: 35, scope: !4662)
!4758 = !DILocation(line: 285, column: 53, scope: !4662)
!4759 = !DILocation(line: 285, column: 78, scope: !4662)
!4760 = !DILocation(line: 285, column: 73, scope: !4761)
!4761 = !DILexicalBlockFile(scope: !4662, file: !1, discriminator: 2)
!4762 = !DILocation(line: 285, column: 71, scope: !4662)
!4763 = !DILocation(line: 285, column: 5, scope: !4662)
!4764 = !DILocation(line: 285, column: 13, scope: !4662)
!4765 = !DILocation(line: 285, column: 17, scope: !4662)
!4766 = !DILocation(line: 286, column: 49, scope: !4662)
!4767 = !DILocation(line: 286, column: 57, scope: !4662)
!4768 = !DILocation(line: 286, column: 44, scope: !4662)
!4769 = !DILocation(line: 286, column: 42, scope: !4662)
!4770 = !DILocation(line: 286, column: 5, scope: !4662)
!4771 = !DILocation(line: 286, column: 13, scope: !4662)
!4772 = !DILocation(line: 286, column: 17, scope: !4662)
!4773 = !DILocation(line: 287, column: 5, scope: !4662)
!4774 = !DILocation(line: 287, column: 13, scope: !4662)
!4775 = !DILocation(line: 287, column: 17, scope: !4662)
!4776 = !DILocation(line: 288, column: 12, scope: !4662)
!4777 = !DILocation(line: 288, column: 5, scope: !4662)
!4778 = !DILocalVariable(name: "M", scope: !4779, file: !1, line: 291, type: !51)
!4779 = distinct !DILexicalBlock(scope: !4658, file: !1, line: 290, column: 8)
!4780 = !DILocation(line: 291, column: 15, scope: !4779)
!4781 = !DILocation(line: 291, column: 19, scope: !4779)
!4782 = !DILocation(line: 291, column: 21, scope: !4779)
!4783 = !DILocation(line: 292, column: 8, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4779, file: !1, line: 292, column: 8)
!4785 = !DILocation(line: 292, column: 10, scope: !4784)
!4786 = !DILocation(line: 292, column: 8, scope: !4779)
!4787 = !DILocation(line: 293, column: 7, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4784, file: !1, line: 292, column: 15)
!4789 = !DILocation(line: 293, column: 15, scope: !4788)
!4790 = !DILocation(line: 293, column: 19, scope: !4788)
!4791 = !DILocation(line: 294, column: 7, scope: !4788)
!4792 = !DILocation(line: 294, column: 15, scope: !4788)
!4793 = !DILocation(line: 294, column: 19, scope: !4788)
!4794 = !DILocation(line: 295, column: 7, scope: !4788)
!4795 = !DILocalVariable(name: "gbm1", scope: !4796, file: !1, line: 298, type: !378)
!4796 = distinct !DILexicalBlock(scope: !4784, file: !1, line: 297, column: 10)
!4797 = !DILocation(line: 298, column: 21, scope: !4796)
!4798 = !DILocalVariable(name: "gamr", scope: !4796, file: !1, line: 299, type: !378)
!4799 = !DILocation(line: 299, column: 21, scope: !4796)
!4800 = !DILocalVariable(name: "stat_gbm1", scope: !4796, file: !1, line: 300, type: !43)
!4801 = !DILocation(line: 300, column: 11, scope: !4796)
!4802 = !DILocalVariable(name: "stat_gamr", scope: !4796, file: !1, line: 301, type: !43)
!4803 = !DILocation(line: 301, column: 11, scope: !4796)
!4804 = !DILocalVariable(name: "t_val", scope: !4796, file: !1, line: 302, type: !42)
!4805 = !DILocation(line: 302, column: 14, scope: !4796)
!4806 = !DILocalVariable(name: "t_err", scope: !4796, file: !1, line: 303, type: !42)
!4807 = !DILocation(line: 303, column: 14, scope: !4796)
!4808 = !DILocation(line: 305, column: 15, scope: !4796)
!4809 = !DILocation(line: 306, column: 15, scope: !4796)
!4810 = !DILocation(line: 307, column: 12, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4796, file: !1, line: 307, column: 7)
!4812 = !DILocation(line: 307, column: 11, scope: !4811)
!4813 = !DILocation(line: 307, column: 16, scope: !4814)
!4814 = !DILexicalBlockFile(scope: !4815, file: !1, discriminator: 1)
!4815 = distinct !DILexicalBlock(scope: !4811, file: !1, line: 307, column: 7)
!4816 = !DILocation(line: 307, column: 19, scope: !4814)
!4817 = !DILocation(line: 307, column: 17, scope: !4814)
!4818 = !DILocation(line: 307, column: 7, scope: !4814)
!4819 = !DILocalVariable(name: "mult", scope: !4820, file: !1, line: 308, type: !52)
!4820 = distinct !DILexicalBlock(scope: !4815, file: !1, line: 307, column: 27)
!4821 = !DILocation(line: 308, column: 22, scope: !4820)
!4822 = !DILocation(line: 308, column: 30, scope: !4820)
!4823 = !DILocation(line: 308, column: 32, scope: !4820)
!4824 = !DILocation(line: 308, column: 31, scope: !4820)
!4825 = !DILocation(line: 308, column: 34, scope: !4820)
!4826 = !DILocation(line: 308, column: 33, scope: !4820)
!4827 = !DILocation(line: 308, column: 37, scope: !4820)
!4828 = !DILocation(line: 308, column: 36, scope: !4820)
!4829 = !DILocation(line: 308, column: 45, scope: !4820)
!4830 = !DILocation(line: 308, column: 44, scope: !4820)
!4831 = !DILocation(line: 308, column: 47, scope: !4820)
!4832 = !DILocation(line: 308, column: 46, scope: !4820)
!4833 = !DILocation(line: 308, column: 50, scope: !4820)
!4834 = !DILocation(line: 308, column: 49, scope: !4820)
!4835 = !DILocation(line: 308, column: 38, scope: !4820)
!4836 = !DILocation(line: 309, column: 18, scope: !4820)
!4837 = !DILocation(line: 309, column: 15, scope: !4820)
!4838 = !DILocation(line: 310, column: 18, scope: !4820)
!4839 = !DILocation(line: 310, column: 31, scope: !4820)
!4840 = !DILocation(line: 310, column: 26, scope: !4820)
!4841 = !DILocation(line: 310, column: 24, scope: !4820)
!4842 = !DILocation(line: 310, column: 44, scope: !4820)
!4843 = !DILocation(line: 310, column: 39, scope: !4844)
!4844 = !DILexicalBlockFile(scope: !4820, file: !1, discriminator: 1)
!4845 = !DILocation(line: 310, column: 51, scope: !4820)
!4846 = !DILocation(line: 310, column: 57, scope: !4820)
!4847 = !DILocation(line: 310, column: 63, scope: !4820)
!4848 = !DILocation(line: 310, column: 37, scope: !4820)
!4849 = !DILocation(line: 310, column: 15, scope: !4820)
!4850 = !DILocation(line: 311, column: 20, scope: !4820)
!4851 = !DILocation(line: 311, column: 17, scope: !4820)
!4852 = !DILocation(line: 312, column: 20, scope: !4820)
!4853 = !DILocation(line: 312, column: 17, scope: !4820)
!4854 = !DILocation(line: 313, column: 7, scope: !4820)
!4855 = !DILocation(line: 307, column: 23, scope: !4856)
!4856 = !DILexicalBlockFile(scope: !4815, file: !1, discriminator: 2)
!4857 = !DILocation(line: 307, column: 7, scope: !4856)
!4858 = distinct !{!4858, !4859}
!4859 = !DILocation(line: 307, column: 7, scope: !4796)
!4860 = !DILocation(line: 315, column: 34, scope: !4796)
!4861 = !DILocation(line: 315, column: 35, scope: !4796)
!4862 = !DILocation(line: 315, column: 19, scope: !4796)
!4863 = !DILocation(line: 315, column: 17, scope: !4796)
!4864 = !DILocation(line: 316, column: 37, scope: !4796)
!4865 = !DILocation(line: 316, column: 19, scope: !4796)
!4866 = !DILocation(line: 316, column: 17, scope: !4796)
!4867 = !DILocation(line: 318, column: 10, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4796, file: !1, line: 318, column: 10)
!4869 = !DILocation(line: 318, column: 20, scope: !4868)
!4870 = !DILocation(line: 318, column: 10, scope: !4796)
!4871 = !DILocalVariable(name: "powx1N", scope: !4872, file: !1, line: 319, type: !378)
!4872 = distinct !DILexicalBlock(scope: !4868, file: !1, line: 318, column: 36)
!4873 = !DILocation(line: 319, column: 23, scope: !4872)
!4874 = !DILocalVariable(name: "stat_p", scope: !4872, file: !1, line: 320, type: !43)
!4875 = !DILocation(line: 320, column: 13, scope: !4872)
!4876 = !DILocation(line: 320, column: 39, scope: !4872)
!4877 = !DILocation(line: 320, column: 44, scope: !4872)
!4878 = !DILocation(line: 320, column: 43, scope: !4872)
!4879 = !DILocation(line: 320, column: 22, scope: !4872)
!4880 = !DILocalVariable(name: "pe_val", scope: !4872, file: !1, line: 321, type: !42)
!4881 = !DILocation(line: 321, column: 16, scope: !4872)
!4882 = !DILocation(line: 321, column: 32, scope: !4872)
!4883 = !DILocation(line: 321, column: 38, scope: !4872)
!4884 = !DILocation(line: 321, column: 36, scope: !4872)
!4885 = !DILocalVariable(name: "pe_err", scope: !4872, file: !1, line: 322, type: !42)
!4886 = !DILocation(line: 322, column: 16, scope: !4872)
!4887 = !DILocation(line: 322, column: 32, scope: !4872)
!4888 = !DILocation(line: 322, column: 43, scope: !4872)
!4889 = !DILocation(line: 322, column: 38, scope: !4872)
!4890 = !DILocation(line: 322, column: 36, scope: !4872)
!4891 = !DILocation(line: 322, column: 80, scope: !4872)
!4892 = !DILocation(line: 322, column: 75, scope: !4893)
!4893 = !DILexicalBlockFile(scope: !4872, file: !1, discriminator: 1)
!4894 = !DILocation(line: 322, column: 73, scope: !4872)
!4895 = !DILocation(line: 322, column: 49, scope: !4872)
!4896 = !DILocalVariable(name: "coeff_val", scope: !4872, file: !1, line: 323, type: !42)
!4897 = !DILocation(line: 323, column: 16, scope: !4872)
!4898 = !DILocation(line: 323, column: 33, scope: !4872)
!4899 = !DILocation(line: 323, column: 44, scope: !4872)
!4900 = !DILocation(line: 323, column: 37, scope: !4872)
!4901 = !DILocation(line: 323, column: 50, scope: !4872)
!4902 = !DILocation(line: 323, column: 48, scope: !4872)
!4903 = !DILocalVariable(name: "coeff_err", scope: !4872, file: !1, line: 324, type: !42)
!4904 = !DILocation(line: 324, column: 16, scope: !4872)
!4905 = !DILocation(line: 324, column: 33, scope: !4872)
!4906 = !DILocation(line: 324, column: 49, scope: !4872)
!4907 = !DILocation(line: 324, column: 55, scope: !4872)
!4908 = !DILocation(line: 324, column: 53, scope: !4872)
!4909 = !DILocation(line: 324, column: 39, scope: !4872)
!4910 = !DILocation(line: 324, column: 37, scope: !4872)
!4911 = !DILocation(line: 325, column: 33, scope: !4872)
!4912 = !DILocation(line: 325, column: 49, scope: !4872)
!4913 = !DILocation(line: 325, column: 55, scope: !4872)
!4914 = !DILocation(line: 325, column: 53, scope: !4872)
!4915 = !DILocation(line: 325, column: 39, scope: !4872)
!4916 = !DILocation(line: 325, column: 37, scope: !4872)
!4917 = !DILocation(line: 325, column: 26, scope: !4872)
!4918 = !DILocation(line: 326, column: 38, scope: !4872)
!4919 = !DILocation(line: 326, column: 49, scope: !4872)
!4920 = !DILocation(line: 326, column: 42, scope: !4872)
!4921 = !DILocation(line: 326, column: 28, scope: !4872)
!4922 = !DILocation(line: 326, column: 56, scope: !4872)
!4923 = !DILocation(line: 326, column: 54, scope: !4872)
!4924 = !DILocation(line: 326, column: 26, scope: !4872)
!4925 = !DILocation(line: 327, column: 57, scope: !4872)
!4926 = !DILocation(line: 327, column: 52, scope: !4872)
!4927 = !DILocation(line: 327, column: 50, scope: !4872)
!4928 = !DILocation(line: 327, column: 26, scope: !4872)
!4929 = !DILocation(line: 329, column: 24, scope: !4872)
!4930 = !DILocation(line: 329, column: 34, scope: !4872)
!4931 = !DILocation(line: 329, column: 32, scope: !4872)
!4932 = !DILocation(line: 329, column: 9, scope: !4872)
!4933 = !DILocation(line: 329, column: 17, scope: !4872)
!4934 = !DILocation(line: 329, column: 22, scope: !4872)
!4935 = !DILocation(line: 330, column: 29, scope: !4872)
!4936 = !DILocation(line: 330, column: 24, scope: !4872)
!4937 = !DILocation(line: 330, column: 40, scope: !4872)
!4938 = !DILocation(line: 330, column: 38, scope: !4872)
!4939 = !DILocation(line: 330, column: 52, scope: !4872)
!4940 = !DILocation(line: 330, column: 67, scope: !4872)
!4941 = !DILocation(line: 330, column: 62, scope: !4893)
!4942 = !DILocation(line: 330, column: 60, scope: !4872)
!4943 = !DILocation(line: 330, column: 50, scope: !4872)
!4944 = !DILocation(line: 330, column: 9, scope: !4872)
!4945 = !DILocation(line: 330, column: 17, scope: !4872)
!4946 = !DILocation(line: 330, column: 22, scope: !4872)
!4947 = !DILocation(line: 331, column: 49, scope: !4872)
!4948 = !DILocation(line: 331, column: 50, scope: !4872)
!4949 = !DILocation(line: 331, column: 46, scope: !4872)
!4950 = !DILocation(line: 331, column: 63, scope: !4872)
!4951 = !DILocation(line: 331, column: 71, scope: !4872)
!4952 = !DILocation(line: 331, column: 58, scope: !4872)
!4953 = !DILocation(line: 331, column: 56, scope: !4872)
!4954 = !DILocation(line: 331, column: 9, scope: !4872)
!4955 = !DILocation(line: 331, column: 17, scope: !4872)
!4956 = !DILocation(line: 331, column: 21, scope: !4872)
!4957 = !DILocation(line: 332, column: 9, scope: !4872)
!4958 = !DILocation(line: 332, column: 17, scope: !4872)
!4959 = !DILocation(line: 332, column: 21, scope: !4872)
!4960 = !DILocation(line: 333, column: 16, scope: !4872)
!4961 = !DILocation(line: 333, column: 9, scope: !4872)
!4962 = !DILocation(line: 336, column: 9, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4868, file: !1, line: 335, column: 12)
!4964 = !DILocation(line: 336, column: 17, scope: !4963)
!4965 = !DILocation(line: 336, column: 21, scope: !4963)
!4966 = !DILocation(line: 337, column: 9, scope: !4963)
!4967 = !DILocation(line: 337, column: 17, scope: !4963)
!4968 = !DILocation(line: 337, column: 21, scope: !4963)
!4969 = !DILocation(line: 338, column: 16, scope: !4963)
!4970 = !DILocation(line: 338, column: 9, scope: !4963)
!4971 = !DILocation(line: 342, column: 1, scope: !4636)
!4972 = distinct !DISubprogram(name: "hyperg_U_infinite_sum_stable", scope: !1, file: !1, line: 349, type: !4973, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!43, !43, !42, !42, !42, !42, !42, !42, !378, !3400}
!4975 = !DILocalVariable(name: "N", arg: 1, scope: !4972, file: !1, line: 349, type: !43)
!4976 = !DILocation(line: 349, column: 34, scope: !4972)
!4977 = !DILocalVariable(name: "a", arg: 2, scope: !4972, file: !1, line: 349, type: !42)
!4978 = !DILocation(line: 349, column: 44, scope: !4972)
!4979 = !DILocalVariable(name: "bint", arg: 3, scope: !4972, file: !1, line: 349, type: !42)
!4980 = !DILocation(line: 349, column: 54, scope: !4972)
!4981 = !DILocalVariable(name: "b", arg: 4, scope: !4972, file: !1, line: 349, type: !42)
!4982 = !DILocation(line: 349, column: 67, scope: !4972)
!4983 = !DILocalVariable(name: "beps", arg: 5, scope: !4972, file: !1, line: 349, type: !42)
!4984 = !DILocation(line: 349, column: 77, scope: !4972)
!4985 = !DILocalVariable(name: "x", arg: 6, scope: !4972, file: !1, line: 349, type: !42)
!4986 = !DILocation(line: 349, column: 90, scope: !4972)
!4987 = !DILocalVariable(name: "xeps", arg: 7, scope: !4972, file: !1, line: 349, type: !42)
!4988 = !DILocation(line: 349, column: 100, scope: !4972)
!4989 = !DILocalVariable(name: "sum", arg: 8, scope: !4972, file: !1, line: 349, type: !378)
!4990 = !DILocation(line: 349, column: 120, scope: !4972)
!4991 = !DILocalVariable(name: "result", arg: 9, scope: !4972, file: !1, line: 350, type: !3400)
!4992 = !DILocation(line: 350, column: 46, scope: !4972)
!4993 = !DILocalVariable(name: "EPS", scope: !4972, file: !1, line: 352, type: !52)
!4994 = !DILocation(line: 352, column: 16, scope: !4972)
!4995 = !DILocalVariable(name: "istrt", scope: !4972, file: !1, line: 354, type: !43)
!4996 = !DILocation(line: 354, column: 9, scope: !4972)
!4997 = !DILocation(line: 354, column: 19, scope: !4972)
!4998 = !DILocation(line: 354, column: 21, scope: !4972)
!4999 = !DILocation(line: 354, column: 29, scope: !5000)
!5000 = !DILexicalBlockFile(scope: !4972, file: !1, discriminator: 1)
!5001 = !DILocation(line: 354, column: 28, scope: !5000)
!5002 = !DILocation(line: 354, column: 19, scope: !5000)
!5003 = !DILocation(line: 354, column: 19, scope: !5004)
!5004 = !DILexicalBlockFile(scope: !4972, file: !1, discriminator: 2)
!5005 = !DILocation(line: 354, column: 19, scope: !5006)
!5006 = !DILexicalBlockFile(scope: !4972, file: !1, discriminator: 3)
!5007 = !DILocation(line: 354, column: 9, scope: !5006)
!5008 = !DILocalVariable(name: "xi", scope: !4972, file: !1, line: 355, type: !42)
!5009 = !DILocation(line: 355, column: 12, scope: !4972)
!5010 = !DILocation(line: 355, column: 17, scope: !4972)
!5011 = !DILocalVariable(name: "gamr", scope: !4972, file: !1, line: 357, type: !378)
!5012 = !DILocation(line: 357, column: 19, scope: !4972)
!5013 = !DILocalVariable(name: "powx", scope: !4972, file: !1, line: 358, type: !378)
!5014 = !DILocation(line: 358, column: 19, scope: !4972)
!5015 = !DILocalVariable(name: "stat_gamr", scope: !4972, file: !1, line: 359, type: !43)
!5016 = !DILocation(line: 359, column: 9, scope: !4972)
!5017 = !DILocation(line: 359, column: 43, scope: !4972)
!5018 = !DILocation(line: 359, column: 42, scope: !4972)
!5019 = !DILocation(line: 359, column: 45, scope: !4972)
!5020 = !DILocation(line: 359, column: 44, scope: !4972)
!5021 = !DILocation(line: 359, column: 21, scope: !4972)
!5022 = !DILocalVariable(name: "stat_powx", scope: !4972, file: !1, line: 360, type: !43)
!5023 = !DILocation(line: 360, column: 9, scope: !4972)
!5024 = !DILocation(line: 360, column: 38, scope: !4972)
!5025 = !DILocation(line: 360, column: 41, scope: !4972)
!5026 = !DILocation(line: 360, column: 21, scope: !4972)
!5027 = !DILocalVariable(name: "sarg", scope: !4972, file: !1, line: 361, type: !42)
!5028 = !DILocation(line: 361, column: 12, scope: !4972)
!5029 = !DILocation(line: 361, column: 21, scope: !4972)
!5030 = !DILocation(line: 361, column: 25, scope: !4972)
!5031 = !DILocalVariable(name: "sfact", scope: !4972, file: !1, line: 362, type: !42)
!5032 = !DILocation(line: 362, column: 12, scope: !4972)
!5033 = !DILocation(line: 362, column: 23, scope: !4972)
!5034 = !DILocation(line: 362, column: 28, scope: !4972)
!5035 = !DILocation(line: 362, column: 37, scope: !5000)
!5036 = !DILocation(line: 362, column: 46, scope: !5000)
!5037 = !DILocation(line: 362, column: 42, scope: !5000)
!5038 = !DILocation(line: 362, column: 41, scope: !5000)
!5039 = !DILocation(line: 362, column: 23, scope: !5000)
!5040 = !DILocation(line: 362, column: 23, scope: !5004)
!5041 = !DILocation(line: 362, column: 23, scope: !5006)
!5042 = !DILocation(line: 362, column: 12, scope: !5006)
!5043 = !DILocalVariable(name: "factor_val", scope: !4972, file: !1, line: 363, type: !42)
!5044 = !DILocation(line: 363, column: 12, scope: !4972)
!5045 = !DILocation(line: 363, column: 25, scope: !4972)
!5046 = !DILocation(line: 363, column: 35, scope: !4972)
!5047 = !DILocation(line: 363, column: 31, scope: !4972)
!5048 = !DILocation(line: 363, column: 71, scope: !4972)
!5049 = !DILocation(line: 363, column: 64, scope: !4972)
!5050 = !DILocation(line: 363, column: 82, scope: !4972)
!5051 = !DILocation(line: 363, column: 75, scope: !4972)
!5052 = !DILocalVariable(name: "factor_err", scope: !4972, file: !1, line: 364, type: !42)
!5053 = !DILocation(line: 364, column: 12, scope: !4972)
!5054 = !DILocation(line: 364, column: 35, scope: !4972)
!5055 = !DILocation(line: 364, column: 25, scope: !4972)
!5056 = !DILocation(line: 364, column: 47, scope: !4972)
!5057 = !DILocation(line: 364, column: 40, scope: !4972)
!5058 = !DILocation(line: 364, column: 63, scope: !4972)
!5059 = !DILocation(line: 364, column: 53, scope: !5000)
!5060 = !DILocation(line: 364, column: 75, scope: !4972)
!5061 = !DILocation(line: 364, column: 68, scope: !4972)
!5062 = !DILocation(line: 364, column: 51, scope: !4972)
!5063 = !DILocation(line: 365, column: 54, scope: !4972)
!5064 = !DILocation(line: 365, column: 49, scope: !4972)
!5065 = !DILocation(line: 365, column: 47, scope: !4972)
!5066 = !DILocation(line: 365, column: 23, scope: !4972)
!5067 = !DILocalVariable(name: "pochai", scope: !4972, file: !1, line: 367, type: !378)
!5068 = !DILocation(line: 367, column: 19, scope: !4972)
!5069 = !DILocalVariable(name: "gamri1", scope: !4972, file: !1, line: 368, type: !378)
!5070 = !DILocation(line: 368, column: 19, scope: !4972)
!5071 = !DILocalVariable(name: "gamrni", scope: !4972, file: !1, line: 369, type: !378)
!5072 = !DILocation(line: 369, column: 19, scope: !4972)
!5073 = !DILocalVariable(name: "stat_pochai", scope: !4972, file: !1, line: 370, type: !43)
!5074 = !DILocation(line: 370, column: 9, scope: !4972)
!5075 = !DILocation(line: 370, column: 37, scope: !4972)
!5076 = !DILocation(line: 370, column: 40, scope: !4972)
!5077 = !DILocation(line: 370, column: 23, scope: !4972)
!5078 = !DILocalVariable(name: "stat_gamri1", scope: !4972, file: !1, line: 371, type: !43)
!5079 = !DILocation(line: 371, column: 9, scope: !4972)
!5080 = !DILocation(line: 371, column: 41, scope: !4972)
!5081 = !DILocation(line: 371, column: 44, scope: !4972)
!5082 = !DILocation(line: 371, column: 23, scope: !4972)
!5083 = !DILocalVariable(name: "stat_gamrni", scope: !4972, file: !1, line: 372, type: !43)
!5084 = !DILocation(line: 372, column: 9, scope: !4972)
!5085 = !DILocation(line: 372, column: 41, scope: !4972)
!5086 = !DILocation(line: 372, column: 48, scope: !4972)
!5087 = !DILocation(line: 372, column: 46, scope: !4972)
!5088 = !DILocation(line: 372, column: 23, scope: !4972)
!5089 = !DILocalVariable(name: "stat_gam123", scope: !4972, file: !1, line: 373, type: !43)
!5090 = !DILocation(line: 373, column: 9, scope: !4972)
!5091 = !DILocation(line: 373, column: 23, scope: !4972)
!5092 = !DILocation(line: 373, column: 23, scope: !5000)
!5093 = !DILocation(line: 373, column: 23, scope: !5004)
!5094 = !DILocation(line: 373, column: 23, scope: !5006)
!5095 = !DILocation(line: 373, column: 23, scope: !5096)
!5096 = !DILexicalBlockFile(scope: !4972, file: !1, discriminator: 4)
!5097 = !DILocation(line: 373, column: 23, scope: !5098)
!5098 = !DILexicalBlockFile(scope: !4972, file: !1, discriminator: 5)
!5099 = !DILocation(line: 373, column: 23, scope: !5100)
!5100 = !DILexicalBlockFile(scope: !4972, file: !1, discriminator: 6)
!5101 = !DILocation(line: 373, column: 23, scope: !5102)
!5102 = !DILexicalBlockFile(scope: !4972, file: !1, discriminator: 7)
!5103 = !DILocation(line: 373, column: 23, scope: !5104)
!5104 = !DILexicalBlockFile(scope: !4972, file: !1, discriminator: 8)
!5105 = !DILocation(line: 373, column: 23, scope: !5106)
!5106 = !DILexicalBlockFile(scope: !4972, file: !1, discriminator: 9)
!5107 = !DILocation(line: 373, column: 9, scope: !5106)
!5108 = !DILocalVariable(name: "stat_gamall", scope: !4972, file: !1, line: 374, type: !43)
!5109 = !DILocation(line: 374, column: 9, scope: !4972)
!5110 = !DILocation(line: 374, column: 23, scope: !4972)
!5111 = !DILocation(line: 374, column: 23, scope: !5000)
!5112 = !DILocation(line: 374, column: 23, scope: !5004)
!5113 = !DILocation(line: 374, column: 23, scope: !5006)
!5114 = !DILocation(line: 374, column: 23, scope: !5096)
!5115 = !DILocation(line: 374, column: 23, scope: !5098)
!5116 = !DILocation(line: 374, column: 23, scope: !5100)
!5117 = !DILocation(line: 374, column: 23, scope: !5102)
!5118 = !DILocation(line: 374, column: 23, scope: !5104)
!5119 = !DILocation(line: 374, column: 23, scope: !5106)
!5120 = !DILocation(line: 374, column: 9, scope: !5106)
!5121 = !DILocalVariable(name: "pochaxibeps", scope: !4972, file: !1, line: 376, type: !378)
!5122 = !DILocation(line: 376, column: 19, scope: !4972)
!5123 = !DILocalVariable(name: "gamrxi1beps", scope: !4972, file: !1, line: 377, type: !378)
!5124 = !DILocation(line: 377, column: 19, scope: !4972)
!5125 = !DILocalVariable(name: "stat_pochaxibeps", scope: !4972, file: !1, line: 378, type: !43)
!5126 = !DILocation(line: 378, column: 9, scope: !4972)
!5127 = !DILocation(line: 378, column: 42, scope: !4972)
!5128 = !DILocation(line: 378, column: 45, scope: !4972)
!5129 = !DILocation(line: 378, column: 48, scope: !4972)
!5130 = !DILocation(line: 378, column: 47, scope: !4972)
!5131 = !DILocation(line: 378, column: 28, scope: !4972)
!5132 = !DILocalVariable(name: "stat_gamrxi1beps", scope: !4972, file: !1, line: 379, type: !43)
!5133 = !DILocation(line: 379, column: 9, scope: !4972)
!5134 = !DILocation(line: 379, column: 46, scope: !4972)
!5135 = !DILocation(line: 379, column: 49, scope: !4972)
!5136 = !DILocation(line: 379, column: 57, scope: !4972)
!5137 = !DILocation(line: 379, column: 55, scope: !4972)
!5138 = !DILocation(line: 379, column: 28, scope: !4972)
!5139 = !DILocalVariable(name: "stat_all", scope: !4972, file: !1, line: 381, type: !43)
!5140 = !DILocation(line: 381, column: 9, scope: !4972)
!5141 = !DILocation(line: 381, column: 20, scope: !4972)
!5142 = !DILocation(line: 381, column: 20, scope: !5000)
!5143 = !DILocation(line: 381, column: 20, scope: !5004)
!5144 = !DILocation(line: 381, column: 20, scope: !5006)
!5145 = !DILocation(line: 381, column: 20, scope: !5096)
!5146 = !DILocation(line: 381, column: 20, scope: !5098)
!5147 = !DILocation(line: 381, column: 20, scope: !5100)
!5148 = !DILocation(line: 381, column: 20, scope: !5102)
!5149 = !DILocation(line: 381, column: 20, scope: !5104)
!5150 = !DILocation(line: 381, column: 20, scope: !5106)
!5151 = !DILocation(line: 381, column: 9, scope: !5106)
!5152 = !DILocalVariable(name: "b0_val", scope: !4972, file: !1, line: 383, type: !42)
!5153 = !DILocation(line: 383, column: 12, scope: !4972)
!5154 = !DILocation(line: 383, column: 21, scope: !4972)
!5155 = !DILocation(line: 383, column: 46, scope: !4972)
!5156 = !DILocation(line: 383, column: 32, scope: !4972)
!5157 = !DILocation(line: 383, column: 59, scope: !4972)
!5158 = !DILocation(line: 383, column: 50, scope: !4972)
!5159 = !DILocation(line: 383, column: 77, scope: !4972)
!5160 = !DILocation(line: 383, column: 63, scope: !4972)
!5161 = !DILocalVariable(name: "b0_err", scope: !4972, file: !1, line: 384, type: !42)
!5162 = !DILocation(line: 384, column: 12, scope: !4972)
!5163 = !DILocation(line: 384, column: 27, scope: !4972)
!5164 = !DILocation(line: 384, column: 52, scope: !4972)
!5165 = !DILocation(line: 384, column: 38, scope: !4972)
!5166 = !DILocation(line: 384, column: 65, scope: !4972)
!5167 = !DILocation(line: 384, column: 56, scope: !4972)
!5168 = !DILocation(line: 384, column: 22, scope: !4972)
!5169 = !DILocation(line: 384, column: 84, scope: !4972)
!5170 = !DILocation(line: 384, column: 70, scope: !4972)
!5171 = !DILocation(line: 385, column: 27, scope: !4972)
!5172 = !DILocation(line: 385, column: 52, scope: !4972)
!5173 = !DILocation(line: 385, column: 38, scope: !4972)
!5174 = !DILocation(line: 385, column: 70, scope: !4972)
!5175 = !DILocation(line: 385, column: 56, scope: !4972)
!5176 = !DILocation(line: 385, column: 22, scope: !4972)
!5177 = !DILocation(line: 385, column: 84, scope: !4972)
!5178 = !DILocation(line: 385, column: 75, scope: !4972)
!5179 = !DILocation(line: 385, column: 20, scope: !4972)
!5180 = !DILocation(line: 386, column: 27, scope: !4972)
!5181 = !DILocation(line: 386, column: 47, scope: !4972)
!5182 = !DILocation(line: 386, column: 38, scope: !4972)
!5183 = !DILocation(line: 386, column: 65, scope: !4972)
!5184 = !DILocation(line: 386, column: 51, scope: !4972)
!5185 = !DILocation(line: 386, column: 22, scope: !4972)
!5186 = !DILocation(line: 386, column: 84, scope: !4972)
!5187 = !DILocation(line: 386, column: 70, scope: !4972)
!5188 = !DILocation(line: 386, column: 20, scope: !4972)
!5189 = !DILocation(line: 387, column: 39, scope: !4972)
!5190 = !DILocation(line: 387, column: 52, scope: !4972)
!5191 = !DILocation(line: 387, column: 43, scope: !4972)
!5192 = !DILocation(line: 387, column: 70, scope: !4972)
!5193 = !DILocation(line: 387, column: 56, scope: !4972)
!5194 = !DILocation(line: 387, column: 22, scope: !4972)
!5195 = !DILocation(line: 387, column: 77, scope: !4972)
!5196 = !DILocation(line: 387, column: 75, scope: !4972)
!5197 = !DILocation(line: 387, column: 20, scope: !4972)
!5198 = !DILocation(line: 388, column: 51, scope: !4972)
!5199 = !DILocation(line: 388, column: 46, scope: !4972)
!5200 = !DILocation(line: 388, column: 44, scope: !4972)
!5201 = !DILocation(line: 388, column: 20, scope: !4972)
!5202 = !DILocalVariable(name: "i", scope: !4972, file: !1, line: 394, type: !43)
!5203 = !DILocation(line: 394, column: 11, scope: !4972)
!5204 = !DILocalVariable(name: "dchu_val", scope: !4972, file: !1, line: 395, type: !42)
!5205 = !DILocation(line: 395, column: 14, scope: !4972)
!5206 = !DILocalVariable(name: "dchu_err", scope: !4972, file: !1, line: 396, type: !42)
!5207 = !DILocation(line: 396, column: 14, scope: !4972)
!5208 = !DILocalVariable(name: "t_val", scope: !4972, file: !1, line: 397, type: !42)
!5209 = !DILocation(line: 397, column: 14, scope: !4972)
!5210 = !DILocalVariable(name: "t_err", scope: !4972, file: !1, line: 398, type: !42)
!5211 = !DILocation(line: 398, column: 14, scope: !4972)
!5212 = !DILocalVariable(name: "dgamrbxi", scope: !4972, file: !1, line: 399, type: !378)
!5213 = !DILocation(line: 399, column: 21, scope: !4972)
!5214 = !DILocalVariable(name: "stat_dgamrbxi", scope: !4972, file: !1, line: 400, type: !43)
!5215 = !DILocation(line: 400, column: 11, scope: !4972)
!5216 = !DILocation(line: 400, column: 45, scope: !4972)
!5217 = !DILocation(line: 400, column: 47, scope: !4972)
!5218 = !DILocation(line: 400, column: 46, scope: !4972)
!5219 = !DILocation(line: 400, column: 27, scope: !4972)
!5220 = !DILocalVariable(name: "a0_val", scope: !4972, file: !1, line: 401, type: !42)
!5221 = !DILocation(line: 401, column: 14, scope: !4972)
!5222 = !DILocation(line: 401, column: 23, scope: !4972)
!5223 = !DILocation(line: 401, column: 43, scope: !4972)
!5224 = !DILocation(line: 401, column: 34, scope: !4972)
!5225 = !DILocation(line: 401, column: 58, scope: !4972)
!5226 = !DILocation(line: 401, column: 47, scope: !4972)
!5227 = !DILocation(line: 401, column: 71, scope: !4972)
!5228 = !DILocation(line: 401, column: 62, scope: !4972)
!5229 = !DILocation(line: 401, column: 77, scope: !4972)
!5230 = !DILocation(line: 401, column: 75, scope: !4972)
!5231 = !DILocalVariable(name: "a0_err", scope: !4972, file: !1, line: 402, type: !42)
!5232 = !DILocation(line: 402, column: 14, scope: !4972)
!5233 = !DILocation(line: 402, column: 29, scope: !4972)
!5234 = !DILocation(line: 402, column: 49, scope: !4972)
!5235 = !DILocation(line: 402, column: 40, scope: !4972)
!5236 = !DILocation(line: 402, column: 64, scope: !4972)
!5237 = !DILocation(line: 402, column: 53, scope: !4972)
!5238 = !DILocation(line: 402, column: 70, scope: !4972)
!5239 = !DILocation(line: 402, column: 68, scope: !4972)
!5240 = !DILocation(line: 402, column: 24, scope: !4972)
!5241 = !DILocation(line: 402, column: 85, scope: !4972)
!5242 = !DILocation(line: 402, column: 76, scope: !4972)
!5243 = !DILocation(line: 403, column: 29, scope: !4972)
!5244 = !DILocation(line: 403, column: 49, scope: !4972)
!5245 = !DILocation(line: 403, column: 40, scope: !4972)
!5246 = !DILocation(line: 403, column: 62, scope: !4972)
!5247 = !DILocation(line: 403, column: 53, scope: !4972)
!5248 = !DILocation(line: 403, column: 68, scope: !4972)
!5249 = !DILocation(line: 403, column: 66, scope: !4972)
!5250 = !DILocation(line: 403, column: 24, scope: !4972)
!5251 = !DILocation(line: 403, column: 85, scope: !4972)
!5252 = !DILocation(line: 403, column: 74, scope: !4972)
!5253 = !DILocation(line: 403, column: 22, scope: !4972)
!5254 = !DILocation(line: 404, column: 29, scope: !4972)
!5255 = !DILocation(line: 404, column: 51, scope: !4972)
!5256 = !DILocation(line: 404, column: 40, scope: !4972)
!5257 = !DILocation(line: 404, column: 64, scope: !4972)
!5258 = !DILocation(line: 404, column: 55, scope: !4972)
!5259 = !DILocation(line: 404, column: 70, scope: !4972)
!5260 = !DILocation(line: 404, column: 68, scope: !4972)
!5261 = !DILocation(line: 404, column: 24, scope: !4972)
!5262 = !DILocation(line: 404, column: 85, scope: !4972)
!5263 = !DILocation(line: 404, column: 76, scope: !4972)
!5264 = !DILocation(line: 404, column: 22, scope: !4972)
!5265 = !DILocation(line: 405, column: 36, scope: !4972)
!5266 = !DILocation(line: 405, column: 51, scope: !4972)
!5267 = !DILocation(line: 405, column: 40, scope: !4972)
!5268 = !DILocation(line: 405, column: 64, scope: !4972)
!5269 = !DILocation(line: 405, column: 55, scope: !4972)
!5270 = !DILocation(line: 405, column: 70, scope: !4972)
!5271 = !DILocation(line: 405, column: 68, scope: !4972)
!5272 = !DILocation(line: 405, column: 24, scope: !4972)
!5273 = !DILocation(line: 405, column: 78, scope: !4972)
!5274 = !DILocation(line: 405, column: 76, scope: !4972)
!5275 = !DILocation(line: 405, column: 22, scope: !4972)
!5276 = !DILocation(line: 406, column: 53, scope: !4972)
!5277 = !DILocation(line: 406, column: 48, scope: !4972)
!5278 = !DILocation(line: 406, column: 46, scope: !4972)
!5279 = !DILocation(line: 406, column: 22, scope: !4972)
!5280 = !DILocation(line: 407, column: 18, scope: !4972)
!5281 = !DILocation(line: 407, column: 18, scope: !5000)
!5282 = !DILocation(line: 407, column: 18, scope: !5004)
!5283 = !DILocation(line: 407, column: 18, scope: !5006)
!5284 = !DILocation(line: 407, column: 18, scope: !5096)
!5285 = !DILocation(line: 407, column: 18, scope: !5098)
!5286 = !DILocation(line: 407, column: 18, scope: !5100)
!5287 = !DILocation(line: 407, column: 16, scope: !5100)
!5288 = !DILocation(line: 409, column: 16, scope: !4972)
!5289 = !DILocation(line: 409, column: 23, scope: !4972)
!5290 = !DILocation(line: 409, column: 21, scope: !4972)
!5291 = !DILocation(line: 409, column: 32, scope: !4972)
!5292 = !DILocation(line: 409, column: 30, scope: !4972)
!5293 = !DILocation(line: 409, column: 14, scope: !4972)
!5294 = !DILocation(line: 410, column: 21, scope: !4972)
!5295 = !DILocation(line: 410, column: 28, scope: !4972)
!5296 = !DILocation(line: 410, column: 26, scope: !4972)
!5297 = !DILocation(line: 410, column: 16, scope: !4972)
!5298 = !DILocation(line: 410, column: 36, scope: !4972)
!5299 = !DILocation(line: 410, column: 34, scope: !4972)
!5300 = !DILocation(line: 410, column: 74, scope: !4972)
!5301 = !DILocation(line: 410, column: 69, scope: !5000)
!5302 = !DILocation(line: 410, column: 67, scope: !4972)
!5303 = !DILocation(line: 410, column: 43, scope: !4972)
!5304 = !DILocation(line: 410, column: 14, scope: !4972)
!5305 = !DILocation(line: 411, column: 22, scope: !4972)
!5306 = !DILocation(line: 411, column: 28, scope: !4972)
!5307 = !DILocation(line: 411, column: 26, scope: !4972)
!5308 = !DILocation(line: 411, column: 37, scope: !4972)
!5309 = !DILocation(line: 411, column: 35, scope: !4972)
!5310 = !DILocation(line: 411, column: 16, scope: !4972)
!5311 = !DILocation(line: 412, column: 22, scope: !4972)
!5312 = !DILocation(line: 412, column: 28, scope: !4972)
!5313 = !DILocation(line: 412, column: 26, scope: !4972)
!5314 = !DILocation(line: 412, column: 37, scope: !4972)
!5315 = !DILocation(line: 412, column: 35, scope: !4972)
!5316 = !DILocation(line: 413, column: 45, scope: !4972)
!5317 = !DILocation(line: 413, column: 36, scope: !4972)
!5318 = !DILocation(line: 413, column: 57, scope: !4972)
!5319 = !DILocation(line: 413, column: 52, scope: !5000)
!5320 = !DILocation(line: 413, column: 50, scope: !4972)
!5321 = !DILocation(line: 413, column: 72, scope: !4972)
!5322 = !DILocation(line: 413, column: 67, scope: !5004)
!5323 = !DILocation(line: 413, column: 65, scope: !4972)
!5324 = !DILocation(line: 413, column: 33, scope: !4972)
!5325 = !DILocation(line: 413, column: 9, scope: !4972)
!5326 = !DILocation(line: 412, column: 16, scope: !4972)
!5327 = !DILocation(line: 415, column: 12, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !4972, file: !1, line: 415, column: 7)
!5329 = !DILocation(line: 415, column: 11, scope: !5328)
!5330 = !DILocation(line: 415, column: 16, scope: !5331)
!5331 = !DILexicalBlockFile(scope: !5332, file: !1, discriminator: 1)
!5332 = distinct !DILexicalBlock(scope: !5328, file: !1, line: 415, column: 7)
!5333 = !DILocation(line: 415, column: 17, scope: !5331)
!5334 = !DILocation(line: 415, column: 7, scope: !5331)
!5335 = !DILocalVariable(name: "xi", scope: !5336, file: !1, line: 416, type: !42)
!5336 = distinct !DILexicalBlock(scope: !5332, file: !1, line: 415, column: 29)
!5337 = !DILocation(line: 416, column: 16, scope: !5336)
!5338 = !DILocation(line: 416, column: 21, scope: !5336)
!5339 = !DILocation(line: 416, column: 29, scope: !5336)
!5340 = !DILocation(line: 416, column: 27, scope: !5336)
!5341 = !DILocalVariable(name: "xi1", scope: !5336, file: !1, line: 417, type: !42)
!5342 = !DILocation(line: 417, column: 16, scope: !5336)
!5343 = !DILocation(line: 417, column: 22, scope: !5336)
!5344 = !DILocation(line: 417, column: 30, scope: !5336)
!5345 = !DILocation(line: 417, column: 28, scope: !5336)
!5346 = !DILocation(line: 417, column: 32, scope: !5336)
!5347 = !DILocalVariable(name: "a0_multiplier", scope: !5336, file: !1, line: 418, type: !42)
!5348 = !DILocation(line: 418, column: 16, scope: !5336)
!5349 = !DILocation(line: 418, column: 33, scope: !5336)
!5350 = !DILocation(line: 418, column: 35, scope: !5336)
!5351 = !DILocation(line: 418, column: 34, scope: !5336)
!5352 = !DILocation(line: 418, column: 40, scope: !5336)
!5353 = !DILocation(line: 418, column: 39, scope: !5336)
!5354 = !DILocation(line: 418, column: 44, scope: !5336)
!5355 = !DILocation(line: 418, column: 46, scope: !5336)
!5356 = !DILocation(line: 418, column: 45, scope: !5336)
!5357 = !DILocation(line: 418, column: 51, scope: !5336)
!5358 = !DILocation(line: 418, column: 50, scope: !5336)
!5359 = !DILocation(line: 418, column: 41, scope: !5336)
!5360 = !DILocalVariable(name: "b0_multiplier", scope: !5336, file: !1, line: 419, type: !42)
!5361 = !DILocation(line: 419, column: 16, scope: !5336)
!5362 = !DILocation(line: 419, column: 33, scope: !5336)
!5363 = !DILocation(line: 419, column: 35, scope: !5336)
!5364 = !DILocation(line: 419, column: 34, scope: !5336)
!5365 = !DILocation(line: 419, column: 39, scope: !5336)
!5366 = !DILocation(line: 419, column: 38, scope: !5336)
!5367 = !DILocation(line: 419, column: 45, scope: !5336)
!5368 = !DILocation(line: 419, column: 44, scope: !5336)
!5369 = !DILocation(line: 419, column: 49, scope: !5336)
!5370 = !DILocation(line: 419, column: 54, scope: !5336)
!5371 = !DILocation(line: 419, column: 53, scope: !5336)
!5372 = !DILocation(line: 419, column: 60, scope: !5336)
!5373 = !DILocation(line: 419, column: 63, scope: !5336)
!5374 = !DILocation(line: 419, column: 62, scope: !5336)
!5375 = !DILocation(line: 419, column: 58, scope: !5336)
!5376 = !DILocation(line: 419, column: 46, scope: !5336)
!5377 = !DILocation(line: 420, column: 19, scope: !5336)
!5378 = !DILocation(line: 420, column: 16, scope: !5336)
!5379 = !DILocation(line: 421, column: 24, scope: !5336)
!5380 = !DILocation(line: 421, column: 19, scope: !5336)
!5381 = !DILocation(line: 421, column: 41, scope: !5336)
!5382 = !DILocation(line: 421, column: 39, scope: !5336)
!5383 = !DILocation(line: 421, column: 16, scope: !5336)
!5384 = !DILocation(line: 422, column: 19, scope: !5336)
!5385 = !DILocation(line: 422, column: 16, scope: !5336)
!5386 = !DILocation(line: 423, column: 24, scope: !5336)
!5387 = !DILocation(line: 423, column: 19, scope: !5336)
!5388 = !DILocation(line: 423, column: 41, scope: !5336)
!5389 = !DILocation(line: 423, column: 39, scope: !5336)
!5390 = !DILocation(line: 423, column: 16, scope: !5336)
!5391 = !DILocation(line: 424, column: 17, scope: !5336)
!5392 = !DILocation(line: 424, column: 26, scope: !5336)
!5393 = !DILocation(line: 424, column: 24, scope: !5336)
!5394 = !DILocation(line: 424, column: 15, scope: !5336)
!5395 = !DILocation(line: 425, column: 17, scope: !5336)
!5396 = !DILocation(line: 425, column: 26, scope: !5336)
!5397 = !DILocation(line: 425, column: 24, scope: !5336)
!5398 = !DILocation(line: 425, column: 15, scope: !5336)
!5399 = !DILocation(line: 426, column: 21, scope: !5336)
!5400 = !DILocation(line: 426, column: 18, scope: !5336)
!5401 = !DILocation(line: 427, column: 21, scope: !5336)
!5402 = !DILocation(line: 427, column: 18, scope: !5336)
!5403 = !DILocation(line: 428, column: 17, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5336, file: !1, line: 428, column: 12)
!5405 = !DILocation(line: 428, column: 12, scope: !5404)
!5406 = !DILocation(line: 428, column: 35, scope: !5404)
!5407 = !DILocation(line: 428, column: 30, scope: !5408)
!5408 = !DILexicalBlockFile(scope: !5404, file: !1, discriminator: 2)
!5409 = !DILocation(line: 428, column: 29, scope: !5404)
!5410 = !DILocation(line: 428, column: 24, scope: !5404)
!5411 = !DILocation(line: 428, column: 12, scope: !5336)
!5412 = !DILocation(line: 428, column: 46, scope: !5413)
!5413 = !DILexicalBlockFile(scope: !5404, file: !1, discriminator: 1)
!5414 = !DILocation(line: 429, column: 7, scope: !5336)
!5415 = !DILocation(line: 415, column: 25, scope: !5416)
!5416 = !DILexicalBlockFile(scope: !5332, file: !1, discriminator: 2)
!5417 = !DILocation(line: 415, column: 7, scope: !5416)
!5418 = distinct !{!5418, !5419}
!5419 = !DILocation(line: 415, column: 7, scope: !4972)
!5420 = !DILocation(line: 431, column: 22, scope: !4972)
!5421 = !DILocation(line: 431, column: 7, scope: !4972)
!5422 = !DILocation(line: 431, column: 15, scope: !4972)
!5423 = !DILocation(line: 431, column: 20, scope: !4972)
!5424 = !DILocation(line: 432, column: 28, scope: !4972)
!5425 = !DILocation(line: 432, column: 26, scope: !4972)
!5426 = !DILocation(line: 432, column: 7, scope: !4972)
!5427 = !DILocation(line: 432, column: 15, scope: !4972)
!5428 = !DILocation(line: 432, column: 20, scope: !4972)
!5429 = !DILocation(line: 433, column: 33, scope: !4972)
!5430 = !DILocation(line: 433, column: 28, scope: !4972)
!5431 = !DILocation(line: 433, column: 26, scope: !4972)
!5432 = !DILocation(line: 433, column: 7, scope: !4972)
!5433 = !DILocation(line: 433, column: 15, scope: !4972)
!5434 = !DILocation(line: 433, column: 19, scope: !4972)
!5435 = !DILocation(line: 434, column: 47, scope: !4972)
!5436 = !DILocation(line: 434, column: 48, scope: !4972)
!5437 = !DILocation(line: 434, column: 44, scope: !4972)
!5438 = !DILocation(line: 434, column: 61, scope: !4972)
!5439 = !DILocation(line: 434, column: 56, scope: !4972)
!5440 = !DILocation(line: 434, column: 54, scope: !4972)
!5441 = !DILocation(line: 434, column: 7, scope: !4972)
!5442 = !DILocation(line: 434, column: 15, scope: !4972)
!5443 = !DILocation(line: 434, column: 19, scope: !4972)
!5444 = !DILocation(line: 435, column: 7, scope: !4972)
!5445 = !DILocation(line: 435, column: 15, scope: !4972)
!5446 = !DILocation(line: 435, column: 19, scope: !4972)
!5447 = !DILocation(line: 437, column: 10, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !4972, file: !1, line: 437, column: 10)
!5449 = !DILocation(line: 437, column: 12, scope: !5448)
!5450 = !DILocation(line: 437, column: 10, scope: !4972)
!5451 = !DILocation(line: 438, column: 9, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5448, file: !1, line: 437, column: 21)
!5453 = distinct !{!5453, !5451}
!5454 = !DILocation(line: 438, column: 9, scope: !5455)
!5455 = !DILexicalBlockFile(scope: !5456, file: !1, discriminator: 1)
!5456 = distinct !DILexicalBlock(scope: !5452, file: !1, line: 438, column: 9)
!5457 = !DILocation(line: 439, column: 7, scope: !5452)
!5458 = !DILocation(line: 441, column: 16, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5448, file: !1, line: 440, column: 12)
!5460 = !DILocation(line: 441, column: 9, scope: !5459)
!5461 = !DILocation(line: 443, column: 1, scope: !4972)
!5462 = distinct !DISubprogram(name: "hyperg_U_infinite_sum_simple", scope: !1, file: !1, line: 447, type: !4973, isLocal: true, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!5463 = !DILocalVariable(name: "N", arg: 1, scope: !5462, file: !1, line: 447, type: !43)
!5464 = !DILocation(line: 447, column: 34, scope: !5462)
!5465 = !DILocalVariable(name: "a", arg: 2, scope: !5462, file: !1, line: 447, type: !42)
!5466 = !DILocation(line: 447, column: 44, scope: !5462)
!5467 = !DILocalVariable(name: "bint", arg: 3, scope: !5462, file: !1, line: 447, type: !42)
!5468 = !DILocation(line: 447, column: 54, scope: !5462)
!5469 = !DILocalVariable(name: "b", arg: 4, scope: !5462, file: !1, line: 447, type: !42)
!5470 = !DILocation(line: 447, column: 67, scope: !5462)
!5471 = !DILocalVariable(name: "beps", arg: 5, scope: !5462, file: !1, line: 447, type: !42)
!5472 = !DILocation(line: 447, column: 77, scope: !5462)
!5473 = !DILocalVariable(name: "x", arg: 6, scope: !5462, file: !1, line: 447, type: !42)
!5474 = !DILocation(line: 447, column: 90, scope: !5462)
!5475 = !DILocalVariable(name: "xeps", arg: 7, scope: !5462, file: !1, line: 447, type: !42)
!5476 = !DILocation(line: 447, column: 100, scope: !5462)
!5477 = !DILocalVariable(name: "sum", arg: 8, scope: !5462, file: !1, line: 447, type: !378)
!5478 = !DILocation(line: 447, column: 120, scope: !5462)
!5479 = !DILocalVariable(name: "result", arg: 9, scope: !5462, file: !1, line: 448, type: !3400)
!5480 = !DILocation(line: 448, column: 46, scope: !5462)
!5481 = !DILocalVariable(name: "EPS", scope: !5462, file: !1, line: 450, type: !52)
!5482 = !DILocation(line: 450, column: 16, scope: !5462)
!5483 = !DILocalVariable(name: "istrt", scope: !5462, file: !1, line: 452, type: !43)
!5484 = !DILocation(line: 452, column: 9, scope: !5462)
!5485 = !DILocation(line: 452, column: 19, scope: !5462)
!5486 = !DILocation(line: 452, column: 21, scope: !5462)
!5487 = !DILocation(line: 452, column: 29, scope: !5488)
!5488 = !DILexicalBlockFile(scope: !5462, file: !1, discriminator: 1)
!5489 = !DILocation(line: 452, column: 28, scope: !5488)
!5490 = !DILocation(line: 452, column: 19, scope: !5488)
!5491 = !DILocation(line: 452, column: 19, scope: !5492)
!5492 = !DILexicalBlockFile(scope: !5462, file: !1, discriminator: 2)
!5493 = !DILocation(line: 452, column: 19, scope: !5494)
!5494 = !DILexicalBlockFile(scope: !5462, file: !1, discriminator: 3)
!5495 = !DILocation(line: 452, column: 9, scope: !5494)
!5496 = !DILocalVariable(name: "xi", scope: !5462, file: !1, line: 453, type: !42)
!5497 = !DILocation(line: 453, column: 12, scope: !5462)
!5498 = !DILocation(line: 453, column: 17, scope: !5462)
!5499 = !DILocalVariable(name: "powx", scope: !5462, file: !1, line: 455, type: !378)
!5500 = !DILocation(line: 455, column: 19, scope: !5462)
!5501 = !DILocalVariable(name: "stat_powx", scope: !5462, file: !1, line: 456, type: !43)
!5502 = !DILocation(line: 456, column: 9, scope: !5462)
!5503 = !DILocation(line: 456, column: 38, scope: !5462)
!5504 = !DILocation(line: 456, column: 41, scope: !5462)
!5505 = !DILocation(line: 456, column: 21, scope: !5462)
!5506 = !DILocalVariable(name: "sarg", scope: !5462, file: !1, line: 457, type: !42)
!5507 = !DILocation(line: 457, column: 12, scope: !5462)
!5508 = !DILocation(line: 457, column: 21, scope: !5462)
!5509 = !DILocation(line: 457, column: 25, scope: !5462)
!5510 = !DILocalVariable(name: "sfact", scope: !5462, file: !1, line: 458, type: !42)
!5511 = !DILocation(line: 458, column: 12, scope: !5462)
!5512 = !DILocation(line: 458, column: 23, scope: !5462)
!5513 = !DILocation(line: 458, column: 28, scope: !5462)
!5514 = !DILocation(line: 458, column: 37, scope: !5488)
!5515 = !DILocation(line: 458, column: 46, scope: !5488)
!5516 = !DILocation(line: 458, column: 42, scope: !5488)
!5517 = !DILocation(line: 458, column: 41, scope: !5488)
!5518 = !DILocation(line: 458, column: 23, scope: !5488)
!5519 = !DILocation(line: 458, column: 23, scope: !5492)
!5520 = !DILocation(line: 458, column: 23, scope: !5494)
!5521 = !DILocation(line: 458, column: 12, scope: !5494)
!5522 = !DILocalVariable(name: "factor_val", scope: !5462, file: !1, line: 459, type: !42)
!5523 = !DILocation(line: 459, column: 12, scope: !5462)
!5524 = !DILocation(line: 459, column: 25, scope: !5462)
!5525 = !DILocation(line: 459, column: 35, scope: !5462)
!5526 = !DILocation(line: 459, column: 31, scope: !5462)
!5527 = !DILocation(line: 459, column: 71, scope: !5462)
!5528 = !DILocation(line: 459, column: 64, scope: !5462)
!5529 = !DILocalVariable(name: "factor_err", scope: !5462, file: !1, line: 460, type: !42)
!5530 = !DILocation(line: 460, column: 12, scope: !5462)
!5531 = !DILocation(line: 460, column: 35, scope: !5462)
!5532 = !DILocation(line: 460, column: 25, scope: !5462)
!5533 = !DILocation(line: 460, column: 71, scope: !5462)
!5534 = !DILocation(line: 460, column: 66, scope: !5488)
!5535 = !DILocation(line: 460, column: 64, scope: !5462)
!5536 = !DILocation(line: 460, column: 40, scope: !5462)
!5537 = !DILocalVariable(name: "pochai", scope: !5462, file: !1, line: 462, type: !378)
!5538 = !DILocation(line: 462, column: 19, scope: !5462)
!5539 = !DILocalVariable(name: "gamri1", scope: !5462, file: !1, line: 463, type: !378)
!5540 = !DILocation(line: 463, column: 19, scope: !5462)
!5541 = !DILocalVariable(name: "gamrni", scope: !5462, file: !1, line: 464, type: !378)
!5542 = !DILocation(line: 464, column: 19, scope: !5462)
!5543 = !DILocalVariable(name: "stat_pochai", scope: !5462, file: !1, line: 465, type: !43)
!5544 = !DILocation(line: 465, column: 9, scope: !5462)
!5545 = !DILocation(line: 465, column: 37, scope: !5462)
!5546 = !DILocation(line: 465, column: 40, scope: !5462)
!5547 = !DILocation(line: 465, column: 23, scope: !5462)
!5548 = !DILocalVariable(name: "stat_gamri1", scope: !5462, file: !1, line: 466, type: !43)
!5549 = !DILocation(line: 466, column: 9, scope: !5462)
!5550 = !DILocation(line: 466, column: 41, scope: !5462)
!5551 = !DILocation(line: 466, column: 44, scope: !5462)
!5552 = !DILocation(line: 466, column: 23, scope: !5462)
!5553 = !DILocalVariable(name: "stat_gamrni", scope: !5462, file: !1, line: 467, type: !43)
!5554 = !DILocation(line: 467, column: 9, scope: !5462)
!5555 = !DILocation(line: 467, column: 41, scope: !5462)
!5556 = !DILocation(line: 467, column: 48, scope: !5462)
!5557 = !DILocation(line: 467, column: 46, scope: !5462)
!5558 = !DILocation(line: 467, column: 23, scope: !5462)
!5559 = !DILocalVariable(name: "stat_gam123", scope: !5462, file: !1, line: 468, type: !43)
!5560 = !DILocation(line: 468, column: 9, scope: !5462)
!5561 = !DILocation(line: 468, column: 23, scope: !5462)
!5562 = !DILocation(line: 468, column: 23, scope: !5488)
!5563 = !DILocation(line: 468, column: 23, scope: !5492)
!5564 = !DILocation(line: 468, column: 23, scope: !5494)
!5565 = !DILocation(line: 468, column: 23, scope: !5566)
!5566 = !DILexicalBlockFile(scope: !5462, file: !1, discriminator: 4)
!5567 = !DILocation(line: 468, column: 23, scope: !5568)
!5568 = !DILexicalBlockFile(scope: !5462, file: !1, discriminator: 5)
!5569 = !DILocation(line: 468, column: 23, scope: !5570)
!5570 = !DILexicalBlockFile(scope: !5462, file: !1, discriminator: 6)
!5571 = !DILocation(line: 468, column: 9, scope: !5570)
!5572 = !DILocalVariable(name: "stat_gamall", scope: !5462, file: !1, line: 469, type: !43)
!5573 = !DILocation(line: 469, column: 9, scope: !5462)
!5574 = !DILocation(line: 469, column: 23, scope: !5462)
!5575 = !DILocation(line: 469, column: 23, scope: !5488)
!5576 = !DILocation(line: 469, column: 23, scope: !5492)
!5577 = !DILocation(line: 469, column: 23, scope: !5494)
!5578 = !DILocation(line: 469, column: 23, scope: !5566)
!5579 = !DILocation(line: 469, column: 23, scope: !5568)
!5580 = !DILocation(line: 469, column: 23, scope: !5570)
!5581 = !DILocation(line: 469, column: 23, scope: !5582)
!5582 = !DILexicalBlockFile(scope: !5462, file: !1, discriminator: 7)
!5583 = !DILocation(line: 469, column: 23, scope: !5584)
!5584 = !DILexicalBlockFile(scope: !5462, file: !1, discriminator: 8)
!5585 = !DILocation(line: 469, column: 23, scope: !5586)
!5586 = !DILexicalBlockFile(scope: !5462, file: !1, discriminator: 9)
!5587 = !DILocation(line: 469, column: 9, scope: !5586)
!5588 = !DILocalVariable(name: "pochaxibeps", scope: !5462, file: !1, line: 471, type: !378)
!5589 = !DILocation(line: 471, column: 19, scope: !5462)
!5590 = !DILocalVariable(name: "gamrxi1beps", scope: !5462, file: !1, line: 472, type: !378)
!5591 = !DILocation(line: 472, column: 19, scope: !5462)
!5592 = !DILocalVariable(name: "stat_pochaxibeps", scope: !5462, file: !1, line: 473, type: !43)
!5593 = !DILocation(line: 473, column: 9, scope: !5462)
!5594 = !DILocation(line: 473, column: 42, scope: !5462)
!5595 = !DILocation(line: 473, column: 45, scope: !5462)
!5596 = !DILocation(line: 473, column: 48, scope: !5462)
!5597 = !DILocation(line: 473, column: 47, scope: !5462)
!5598 = !DILocation(line: 473, column: 28, scope: !5462)
!5599 = !DILocalVariable(name: "stat_gamrxi1beps", scope: !5462, file: !1, line: 474, type: !43)
!5600 = !DILocation(line: 474, column: 9, scope: !5462)
!5601 = !DILocation(line: 474, column: 46, scope: !5462)
!5602 = !DILocation(line: 474, column: 49, scope: !5462)
!5603 = !DILocation(line: 474, column: 57, scope: !5462)
!5604 = !DILocation(line: 474, column: 55, scope: !5462)
!5605 = !DILocation(line: 474, column: 28, scope: !5462)
!5606 = !DILocalVariable(name: "stat_all", scope: !5462, file: !1, line: 476, type: !43)
!5607 = !DILocation(line: 476, column: 9, scope: !5462)
!5608 = !DILocation(line: 476, column: 20, scope: !5462)
!5609 = !DILocation(line: 476, column: 20, scope: !5488)
!5610 = !DILocation(line: 476, column: 20, scope: !5492)
!5611 = !DILocation(line: 476, column: 20, scope: !5494)
!5612 = !DILocation(line: 476, column: 20, scope: !5566)
!5613 = !DILocation(line: 476, column: 20, scope: !5568)
!5614 = !DILocation(line: 476, column: 20, scope: !5570)
!5615 = !DILocation(line: 476, column: 20, scope: !5582)
!5616 = !DILocation(line: 476, column: 20, scope: !5584)
!5617 = !DILocation(line: 476, column: 20, scope: !5586)
!5618 = !DILocation(line: 476, column: 9, scope: !5586)
!5619 = !DILocalVariable(name: "X", scope: !5462, file: !1, line: 478, type: !42)
!5620 = !DILocation(line: 478, column: 12, scope: !5462)
!5621 = !DILocation(line: 478, column: 17, scope: !5462)
!5622 = !DILocation(line: 478, column: 27, scope: !5462)
!5623 = !DILocation(line: 478, column: 23, scope: !5462)
!5624 = !DILocation(line: 478, column: 63, scope: !5462)
!5625 = !DILocation(line: 478, column: 56, scope: !5462)
!5626 = !DILocation(line: 478, column: 85, scope: !5462)
!5627 = !DILocation(line: 478, column: 83, scope: !5462)
!5628 = !DILocation(line: 478, column: 89, scope: !5462)
!5629 = !DILocation(line: 478, column: 87, scope: !5462)
!5630 = !DILocation(line: 478, column: 92, scope: !5462)
!5631 = !DILocation(line: 478, column: 95, scope: !5462)
!5632 = !DILocation(line: 478, column: 101, scope: !5462)
!5633 = !DILocation(line: 478, column: 99, scope: !5462)
!5634 = !DILocation(line: 478, column: 105, scope: !5462)
!5635 = !DILocation(line: 478, column: 103, scope: !5462)
!5636 = !DILocation(line: 478, column: 69, scope: !5462)
!5637 = !DILocation(line: 478, column: 67, scope: !5462)
!5638 = !DILocation(line: 478, column: 129, scope: !5462)
!5639 = !DILocation(line: 478, column: 113, scope: !5488)
!5640 = !DILocation(line: 478, column: 111, scope: !5462)
!5641 = !DILocalVariable(name: "b0_val", scope: !5462, file: !1, line: 480, type: !42)
!5642 = !DILocation(line: 480, column: 12, scope: !5462)
!5643 = !DILocation(line: 480, column: 21, scope: !5462)
!5644 = !DILocation(line: 480, column: 32, scope: !5462)
!5645 = !DILocation(line: 480, column: 23, scope: !5462)
!5646 = !DILocation(line: 480, column: 50, scope: !5462)
!5647 = !DILocation(line: 480, column: 36, scope: !5462)
!5648 = !DILocalVariable(name: "b0_err", scope: !5462, file: !1, line: 481, type: !42)
!5649 = !DILocation(line: 481, column: 12, scope: !5462)
!5650 = !DILocation(line: 481, column: 27, scope: !5462)
!5651 = !DILocation(line: 481, column: 52, scope: !5462)
!5652 = !DILocation(line: 481, column: 38, scope: !5462)
!5653 = !DILocation(line: 481, column: 65, scope: !5462)
!5654 = !DILocation(line: 481, column: 56, scope: !5462)
!5655 = !DILocation(line: 481, column: 22, scope: !5462)
!5656 = !DILocation(line: 481, column: 84, scope: !5462)
!5657 = !DILocation(line: 481, column: 70, scope: !5462)
!5658 = !DILocation(line: 482, column: 27, scope: !5462)
!5659 = !DILocation(line: 482, column: 52, scope: !5462)
!5660 = !DILocation(line: 482, column: 38, scope: !5462)
!5661 = !DILocation(line: 482, column: 70, scope: !5462)
!5662 = !DILocation(line: 482, column: 56, scope: !5462)
!5663 = !DILocation(line: 482, column: 22, scope: !5462)
!5664 = !DILocation(line: 482, column: 84, scope: !5462)
!5665 = !DILocation(line: 482, column: 75, scope: !5462)
!5666 = !DILocation(line: 482, column: 20, scope: !5462)
!5667 = !DILocation(line: 483, column: 27, scope: !5462)
!5668 = !DILocation(line: 483, column: 47, scope: !5462)
!5669 = !DILocation(line: 483, column: 38, scope: !5462)
!5670 = !DILocation(line: 483, column: 65, scope: !5462)
!5671 = !DILocation(line: 483, column: 51, scope: !5462)
!5672 = !DILocation(line: 483, column: 22, scope: !5462)
!5673 = !DILocation(line: 483, column: 84, scope: !5462)
!5674 = !DILocation(line: 483, column: 70, scope: !5462)
!5675 = !DILocation(line: 483, column: 20, scope: !5462)
!5676 = !DILocation(line: 484, column: 39, scope: !5462)
!5677 = !DILocation(line: 484, column: 52, scope: !5462)
!5678 = !DILocation(line: 484, column: 43, scope: !5462)
!5679 = !DILocation(line: 484, column: 70, scope: !5462)
!5680 = !DILocation(line: 484, column: 56, scope: !5462)
!5681 = !DILocation(line: 484, column: 22, scope: !5462)
!5682 = !DILocation(line: 484, column: 77, scope: !5462)
!5683 = !DILocation(line: 484, column: 75, scope: !5462)
!5684 = !DILocation(line: 484, column: 20, scope: !5462)
!5685 = !DILocation(line: 485, column: 51, scope: !5462)
!5686 = !DILocation(line: 485, column: 46, scope: !5462)
!5687 = !DILocation(line: 485, column: 44, scope: !5462)
!5688 = !DILocation(line: 485, column: 20, scope: !5462)
!5689 = !DILocalVariable(name: "i", scope: !5462, file: !1, line: 491, type: !43)
!5690 = !DILocation(line: 491, column: 11, scope: !5462)
!5691 = !DILocalVariable(name: "dchu_val", scope: !5462, file: !1, line: 492, type: !42)
!5692 = !DILocation(line: 492, column: 14, scope: !5462)
!5693 = !DILocalVariable(name: "dchu_err", scope: !5462, file: !1, line: 493, type: !42)
!5694 = !DILocation(line: 493, column: 14, scope: !5462)
!5695 = !DILocalVariable(name: "t_val", scope: !5462, file: !1, line: 494, type: !42)
!5696 = !DILocation(line: 494, column: 14, scope: !5462)
!5697 = !DILocalVariable(name: "t_err", scope: !5462, file: !1, line: 495, type: !42)
!5698 = !DILocation(line: 495, column: 14, scope: !5462)
!5699 = !DILocalVariable(name: "gamr", scope: !5462, file: !1, line: 496, type: !378)
!5700 = !DILocation(line: 496, column: 21, scope: !5462)
!5701 = !DILocalVariable(name: "dgamrbxi", scope: !5462, file: !1, line: 497, type: !378)
!5702 = !DILocation(line: 497, column: 21, scope: !5462)
!5703 = !DILocalVariable(name: "stat_gamr", scope: !5462, file: !1, line: 498, type: !43)
!5704 = !DILocation(line: 498, column: 11, scope: !5462)
!5705 = !DILocation(line: 498, column: 45, scope: !5462)
!5706 = !DILocation(line: 498, column: 44, scope: !5462)
!5707 = !DILocation(line: 498, column: 47, scope: !5462)
!5708 = !DILocation(line: 498, column: 46, scope: !5462)
!5709 = !DILocation(line: 498, column: 23, scope: !5462)
!5710 = !DILocalVariable(name: "stat_dgamrbxi", scope: !5462, file: !1, line: 499, type: !43)
!5711 = !DILocation(line: 499, column: 11, scope: !5462)
!5712 = !DILocation(line: 499, column: 45, scope: !5462)
!5713 = !DILocation(line: 499, column: 47, scope: !5462)
!5714 = !DILocation(line: 499, column: 46, scope: !5462)
!5715 = !DILocation(line: 499, column: 27, scope: !5462)
!5716 = !DILocalVariable(name: "a0_val", scope: !5462, file: !1, line: 500, type: !42)
!5717 = !DILocation(line: 500, column: 14, scope: !5462)
!5718 = !DILocation(line: 500, column: 23, scope: !5462)
!5719 = !DILocation(line: 500, column: 41, scope: !5462)
!5720 = !DILocation(line: 500, column: 34, scope: !5462)
!5721 = !DILocation(line: 500, column: 54, scope: !5462)
!5722 = !DILocation(line: 500, column: 45, scope: !5462)
!5723 = !DILocation(line: 500, column: 69, scope: !5462)
!5724 = !DILocation(line: 500, column: 58, scope: !5462)
!5725 = !DILocation(line: 500, column: 82, scope: !5462)
!5726 = !DILocation(line: 500, column: 73, scope: !5462)
!5727 = !DILocation(line: 500, column: 88, scope: !5462)
!5728 = !DILocation(line: 500, column: 86, scope: !5462)
!5729 = !DILocalVariable(name: "a0_err", scope: !5462, file: !1, line: 501, type: !42)
!5730 = !DILocation(line: 501, column: 14, scope: !5462)
!5731 = !DILocation(line: 501, column: 29, scope: !5462)
!5732 = !DILocation(line: 501, column: 49, scope: !5462)
!5733 = !DILocation(line: 501, column: 40, scope: !5462)
!5734 = !DILocation(line: 501, column: 64, scope: !5462)
!5735 = !DILocation(line: 501, column: 53, scope: !5462)
!5736 = !DILocation(line: 501, column: 77, scope: !5462)
!5737 = !DILocation(line: 501, column: 68, scope: !5462)
!5738 = !DILocation(line: 501, column: 83, scope: !5462)
!5739 = !DILocation(line: 501, column: 81, scope: !5462)
!5740 = !DILocation(line: 501, column: 24, scope: !5462)
!5741 = !DILocation(line: 501, column: 96, scope: !5462)
!5742 = !DILocation(line: 501, column: 89, scope: !5462)
!5743 = !DILocation(line: 502, column: 29, scope: !5462)
!5744 = !DILocation(line: 502, column: 47, scope: !5462)
!5745 = !DILocation(line: 502, column: 40, scope: !5462)
!5746 = !DILocation(line: 502, column: 62, scope: !5462)
!5747 = !DILocation(line: 502, column: 51, scope: !5462)
!5748 = !DILocation(line: 502, column: 75, scope: !5462)
!5749 = !DILocation(line: 502, column: 66, scope: !5462)
!5750 = !DILocation(line: 502, column: 81, scope: !5462)
!5751 = !DILocation(line: 502, column: 79, scope: !5462)
!5752 = !DILocation(line: 502, column: 24, scope: !5462)
!5753 = !DILocation(line: 502, column: 96, scope: !5462)
!5754 = !DILocation(line: 502, column: 87, scope: !5462)
!5755 = !DILocation(line: 502, column: 22, scope: !5462)
!5756 = !DILocation(line: 503, column: 29, scope: !5462)
!5757 = !DILocation(line: 503, column: 47, scope: !5462)
!5758 = !DILocation(line: 503, column: 40, scope: !5462)
!5759 = !DILocation(line: 503, column: 60, scope: !5462)
!5760 = !DILocation(line: 503, column: 51, scope: !5462)
!5761 = !DILocation(line: 503, column: 73, scope: !5462)
!5762 = !DILocation(line: 503, column: 64, scope: !5462)
!5763 = !DILocation(line: 503, column: 79, scope: !5462)
!5764 = !DILocation(line: 503, column: 77, scope: !5462)
!5765 = !DILocation(line: 503, column: 24, scope: !5462)
!5766 = !DILocation(line: 503, column: 96, scope: !5462)
!5767 = !DILocation(line: 503, column: 85, scope: !5462)
!5768 = !DILocation(line: 503, column: 22, scope: !5462)
!5769 = !DILocation(line: 504, column: 29, scope: !5462)
!5770 = !DILocation(line: 504, column: 47, scope: !5462)
!5771 = !DILocation(line: 504, column: 40, scope: !5462)
!5772 = !DILocation(line: 504, column: 60, scope: !5462)
!5773 = !DILocation(line: 504, column: 51, scope: !5462)
!5774 = !DILocation(line: 504, column: 75, scope: !5462)
!5775 = !DILocation(line: 504, column: 64, scope: !5462)
!5776 = !DILocation(line: 504, column: 81, scope: !5462)
!5777 = !DILocation(line: 504, column: 79, scope: !5462)
!5778 = !DILocation(line: 504, column: 24, scope: !5462)
!5779 = !DILocation(line: 504, column: 96, scope: !5462)
!5780 = !DILocation(line: 504, column: 87, scope: !5462)
!5781 = !DILocation(line: 504, column: 22, scope: !5462)
!5782 = !DILocation(line: 505, column: 36, scope: !5462)
!5783 = !DILocation(line: 505, column: 47, scope: !5462)
!5784 = !DILocation(line: 505, column: 40, scope: !5462)
!5785 = !DILocation(line: 505, column: 62, scope: !5462)
!5786 = !DILocation(line: 505, column: 51, scope: !5462)
!5787 = !DILocation(line: 505, column: 75, scope: !5462)
!5788 = !DILocation(line: 505, column: 66, scope: !5462)
!5789 = !DILocation(line: 505, column: 81, scope: !5462)
!5790 = !DILocation(line: 505, column: 79, scope: !5462)
!5791 = !DILocation(line: 505, column: 24, scope: !5462)
!5792 = !DILocation(line: 505, column: 89, scope: !5462)
!5793 = !DILocation(line: 505, column: 87, scope: !5462)
!5794 = !DILocation(line: 505, column: 22, scope: !5462)
!5795 = !DILocation(line: 506, column: 53, scope: !5462)
!5796 = !DILocation(line: 506, column: 48, scope: !5462)
!5797 = !DILocation(line: 506, column: 46, scope: !5462)
!5798 = !DILocation(line: 506, column: 22, scope: !5462)
!5799 = !DILocation(line: 507, column: 18, scope: !5462)
!5800 = !DILocation(line: 507, column: 18, scope: !5488)
!5801 = !DILocation(line: 507, column: 18, scope: !5492)
!5802 = !DILocation(line: 507, column: 18, scope: !5494)
!5803 = !DILocation(line: 507, column: 18, scope: !5566)
!5804 = !DILocation(line: 507, column: 18, scope: !5568)
!5805 = !DILocation(line: 507, column: 18, scope: !5570)
!5806 = !DILocation(line: 507, column: 18, scope: !5582)
!5807 = !DILocation(line: 507, column: 18, scope: !5584)
!5808 = !DILocation(line: 507, column: 18, scope: !5586)
!5809 = !DILocation(line: 507, column: 16, scope: !5586)
!5810 = !DILocation(line: 509, column: 16, scope: !5462)
!5811 = !DILocation(line: 509, column: 23, scope: !5462)
!5812 = !DILocation(line: 509, column: 21, scope: !5462)
!5813 = !DILocation(line: 509, column: 32, scope: !5462)
!5814 = !DILocation(line: 509, column: 30, scope: !5462)
!5815 = !DILocation(line: 509, column: 14, scope: !5462)
!5816 = !DILocation(line: 510, column: 21, scope: !5462)
!5817 = !DILocation(line: 510, column: 28, scope: !5462)
!5818 = !DILocation(line: 510, column: 26, scope: !5462)
!5819 = !DILocation(line: 510, column: 16, scope: !5462)
!5820 = !DILocation(line: 510, column: 36, scope: !5462)
!5821 = !DILocation(line: 510, column: 34, scope: !5462)
!5822 = !DILocation(line: 510, column: 74, scope: !5462)
!5823 = !DILocation(line: 510, column: 69, scope: !5488)
!5824 = !DILocation(line: 510, column: 67, scope: !5462)
!5825 = !DILocation(line: 510, column: 43, scope: !5462)
!5826 = !DILocation(line: 510, column: 14, scope: !5462)
!5827 = !DILocation(line: 511, column: 22, scope: !5462)
!5828 = !DILocation(line: 511, column: 28, scope: !5462)
!5829 = !DILocation(line: 511, column: 26, scope: !5462)
!5830 = !DILocation(line: 511, column: 37, scope: !5462)
!5831 = !DILocation(line: 511, column: 35, scope: !5462)
!5832 = !DILocation(line: 511, column: 16, scope: !5462)
!5833 = !DILocation(line: 512, column: 22, scope: !5462)
!5834 = !DILocation(line: 512, column: 28, scope: !5462)
!5835 = !DILocation(line: 512, column: 26, scope: !5462)
!5836 = !DILocation(line: 512, column: 37, scope: !5462)
!5837 = !DILocation(line: 512, column: 35, scope: !5462)
!5838 = !DILocation(line: 513, column: 45, scope: !5462)
!5839 = !DILocation(line: 513, column: 36, scope: !5462)
!5840 = !DILocation(line: 513, column: 57, scope: !5462)
!5841 = !DILocation(line: 513, column: 52, scope: !5488)
!5842 = !DILocation(line: 513, column: 50, scope: !5462)
!5843 = !DILocation(line: 513, column: 72, scope: !5462)
!5844 = !DILocation(line: 513, column: 67, scope: !5492)
!5845 = !DILocation(line: 513, column: 65, scope: !5462)
!5846 = !DILocation(line: 513, column: 33, scope: !5462)
!5847 = !DILocation(line: 513, column: 9, scope: !5462)
!5848 = !DILocation(line: 512, column: 16, scope: !5462)
!5849 = !DILocation(line: 514, column: 12, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5462, file: !1, line: 514, column: 7)
!5851 = !DILocation(line: 514, column: 11, scope: !5850)
!5852 = !DILocation(line: 514, column: 16, scope: !5853)
!5853 = !DILexicalBlockFile(scope: !5854, file: !1, discriminator: 1)
!5854 = distinct !DILexicalBlock(scope: !5850, file: !1, line: 514, column: 7)
!5855 = !DILocation(line: 514, column: 17, scope: !5853)
!5856 = !DILocation(line: 514, column: 7, scope: !5853)
!5857 = !DILocalVariable(name: "xi", scope: !5858, file: !1, line: 515, type: !42)
!5858 = distinct !DILexicalBlock(scope: !5854, file: !1, line: 514, column: 29)
!5859 = !DILocation(line: 515, column: 16, scope: !5858)
!5860 = !DILocation(line: 515, column: 21, scope: !5858)
!5861 = !DILocation(line: 515, column: 29, scope: !5858)
!5862 = !DILocation(line: 515, column: 27, scope: !5858)
!5863 = !DILocalVariable(name: "xi1", scope: !5858, file: !1, line: 516, type: !42)
!5864 = !DILocation(line: 516, column: 16, scope: !5858)
!5865 = !DILocation(line: 516, column: 22, scope: !5858)
!5866 = !DILocation(line: 516, column: 30, scope: !5858)
!5867 = !DILocation(line: 516, column: 28, scope: !5858)
!5868 = !DILocation(line: 516, column: 32, scope: !5858)
!5869 = !DILocalVariable(name: "a0_multiplier", scope: !5858, file: !1, line: 517, type: !42)
!5870 = !DILocation(line: 517, column: 16, scope: !5858)
!5871 = !DILocation(line: 517, column: 33, scope: !5858)
!5872 = !DILocation(line: 517, column: 35, scope: !5858)
!5873 = !DILocation(line: 517, column: 34, scope: !5858)
!5874 = !DILocation(line: 517, column: 40, scope: !5858)
!5875 = !DILocation(line: 517, column: 39, scope: !5858)
!5876 = !DILocation(line: 517, column: 44, scope: !5858)
!5877 = !DILocation(line: 517, column: 46, scope: !5858)
!5878 = !DILocation(line: 517, column: 45, scope: !5858)
!5879 = !DILocation(line: 517, column: 51, scope: !5858)
!5880 = !DILocation(line: 517, column: 50, scope: !5858)
!5881 = !DILocation(line: 517, column: 41, scope: !5858)
!5882 = !DILocalVariable(name: "b0_multiplier", scope: !5858, file: !1, line: 518, type: !42)
!5883 = !DILocation(line: 518, column: 16, scope: !5858)
!5884 = !DILocation(line: 518, column: 33, scope: !5858)
!5885 = !DILocation(line: 518, column: 35, scope: !5858)
!5886 = !DILocation(line: 518, column: 34, scope: !5858)
!5887 = !DILocation(line: 518, column: 39, scope: !5858)
!5888 = !DILocation(line: 518, column: 38, scope: !5858)
!5889 = !DILocation(line: 518, column: 45, scope: !5858)
!5890 = !DILocation(line: 518, column: 44, scope: !5858)
!5891 = !DILocation(line: 518, column: 49, scope: !5858)
!5892 = !DILocation(line: 518, column: 54, scope: !5858)
!5893 = !DILocation(line: 518, column: 53, scope: !5858)
!5894 = !DILocation(line: 518, column: 60, scope: !5858)
!5895 = !DILocation(line: 518, column: 63, scope: !5858)
!5896 = !DILocation(line: 518, column: 62, scope: !5858)
!5897 = !DILocation(line: 518, column: 58, scope: !5858)
!5898 = !DILocation(line: 518, column: 46, scope: !5858)
!5899 = !DILocation(line: 519, column: 19, scope: !5858)
!5900 = !DILocation(line: 519, column: 16, scope: !5858)
!5901 = !DILocation(line: 520, column: 24, scope: !5858)
!5902 = !DILocation(line: 520, column: 19, scope: !5858)
!5903 = !DILocation(line: 520, column: 41, scope: !5858)
!5904 = !DILocation(line: 520, column: 39, scope: !5858)
!5905 = !DILocation(line: 520, column: 16, scope: !5858)
!5906 = !DILocation(line: 521, column: 19, scope: !5858)
!5907 = !DILocation(line: 521, column: 16, scope: !5858)
!5908 = !DILocation(line: 522, column: 24, scope: !5858)
!5909 = !DILocation(line: 522, column: 19, scope: !5858)
!5910 = !DILocation(line: 522, column: 41, scope: !5858)
!5911 = !DILocation(line: 522, column: 39, scope: !5858)
!5912 = !DILocation(line: 522, column: 16, scope: !5858)
!5913 = !DILocation(line: 523, column: 17, scope: !5858)
!5914 = !DILocation(line: 523, column: 26, scope: !5858)
!5915 = !DILocation(line: 523, column: 24, scope: !5858)
!5916 = !DILocation(line: 523, column: 15, scope: !5858)
!5917 = !DILocation(line: 524, column: 17, scope: !5858)
!5918 = !DILocation(line: 524, column: 26, scope: !5858)
!5919 = !DILocation(line: 524, column: 24, scope: !5858)
!5920 = !DILocation(line: 524, column: 15, scope: !5858)
!5921 = !DILocation(line: 525, column: 21, scope: !5858)
!5922 = !DILocation(line: 525, column: 18, scope: !5858)
!5923 = !DILocation(line: 526, column: 21, scope: !5858)
!5924 = !DILocation(line: 526, column: 18, scope: !5858)
!5925 = !DILocation(line: 527, column: 24, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5858, file: !1, line: 527, column: 12)
!5927 = !DILocation(line: 527, column: 13, scope: !5926)
!5928 = !DILocation(line: 527, column: 31, scope: !5926)
!5929 = !DILocation(line: 527, column: 39, scope: !5930)
!5930 = !DILexicalBlockFile(scope: !5926, file: !1, discriminator: 1)
!5931 = !DILocation(line: 527, column: 34, scope: !5930)
!5932 = !DILocation(line: 527, column: 57, scope: !5930)
!5933 = !DILocation(line: 527, column: 52, scope: !5934)
!5934 = !DILexicalBlockFile(scope: !5930, file: !1, discriminator: 3)
!5935 = !DILocation(line: 527, column: 51, scope: !5930)
!5936 = !DILocation(line: 527, column: 46, scope: !5930)
!5937 = !DILocation(line: 527, column: 12, scope: !5930)
!5938 = !DILocation(line: 527, column: 68, scope: !5939)
!5939 = !DILexicalBlockFile(scope: !5926, file: !1, discriminator: 2)
!5940 = !DILocation(line: 528, column: 7, scope: !5858)
!5941 = !DILocation(line: 514, column: 25, scope: !5942)
!5942 = !DILexicalBlockFile(scope: !5854, file: !1, discriminator: 2)
!5943 = !DILocation(line: 514, column: 7, scope: !5942)
!5944 = distinct !{!5944, !5945}
!5945 = !DILocation(line: 514, column: 7, scope: !5462)
!5946 = !DILocation(line: 530, column: 22, scope: !5462)
!5947 = !DILocation(line: 530, column: 7, scope: !5462)
!5948 = !DILocation(line: 530, column: 15, scope: !5462)
!5949 = !DILocation(line: 530, column: 20, scope: !5462)
!5950 = !DILocation(line: 531, column: 28, scope: !5462)
!5951 = !DILocation(line: 531, column: 26, scope: !5462)
!5952 = !DILocation(line: 531, column: 7, scope: !5462)
!5953 = !DILocation(line: 531, column: 15, scope: !5462)
!5954 = !DILocation(line: 531, column: 20, scope: !5462)
!5955 = !DILocation(line: 532, column: 33, scope: !5462)
!5956 = !DILocation(line: 532, column: 28, scope: !5462)
!5957 = !DILocation(line: 532, column: 26, scope: !5462)
!5958 = !DILocation(line: 532, column: 7, scope: !5462)
!5959 = !DILocation(line: 532, column: 15, scope: !5462)
!5960 = !DILocation(line: 532, column: 19, scope: !5462)
!5961 = !DILocation(line: 533, column: 47, scope: !5462)
!5962 = !DILocation(line: 533, column: 48, scope: !5462)
!5963 = !DILocation(line: 533, column: 44, scope: !5462)
!5964 = !DILocation(line: 533, column: 61, scope: !5462)
!5965 = !DILocation(line: 533, column: 56, scope: !5462)
!5966 = !DILocation(line: 533, column: 54, scope: !5462)
!5967 = !DILocation(line: 533, column: 7, scope: !5462)
!5968 = !DILocation(line: 533, column: 15, scope: !5462)
!5969 = !DILocation(line: 533, column: 19, scope: !5462)
!5970 = !DILocation(line: 534, column: 7, scope: !5462)
!5971 = !DILocation(line: 534, column: 15, scope: !5462)
!5972 = !DILocation(line: 534, column: 19, scope: !5462)
!5973 = !DILocation(line: 536, column: 10, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5462, file: !1, line: 536, column: 10)
!5975 = !DILocation(line: 536, column: 12, scope: !5974)
!5976 = !DILocation(line: 536, column: 10, scope: !5462)
!5977 = !DILocation(line: 537, column: 9, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5974, file: !1, line: 536, column: 21)
!5979 = distinct !{!5979, !5977}
!5980 = !DILocation(line: 537, column: 9, scope: !5981)
!5981 = !DILexicalBlockFile(scope: !5982, file: !1, discriminator: 1)
!5982 = distinct !DILexicalBlock(scope: !5978, file: !1, line: 537, column: 9)
!5983 = !DILocation(line: 538, column: 7, scope: !5978)
!5984 = !DILocation(line: 540, column: 16, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5974, file: !1, line: 539, column: 12)
!5986 = !DILocation(line: 540, column: 9, scope: !5985)
!5987 = !DILocation(line: 542, column: 1, scope: !5462)
!5988 = distinct !DISubprogram(name: "hyperg_U_infinite_sum_improved", scope: !1, file: !1, line: 547, type: !4973, isLocal: true, isDefinition: true, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!5989 = !DILocalVariable(name: "N", arg: 1, scope: !5988, file: !1, line: 547, type: !43)
!5990 = !DILocation(line: 547, column: 36, scope: !5988)
!5991 = !DILocalVariable(name: "a", arg: 2, scope: !5988, file: !1, line: 547, type: !42)
!5992 = !DILocation(line: 547, column: 46, scope: !5988)
!5993 = !DILocalVariable(name: "bint", arg: 3, scope: !5988, file: !1, line: 547, type: !42)
!5994 = !DILocation(line: 547, column: 56, scope: !5988)
!5995 = !DILocalVariable(name: "b", arg: 4, scope: !5988, file: !1, line: 547, type: !42)
!5996 = !DILocation(line: 547, column: 69, scope: !5988)
!5997 = !DILocalVariable(name: "beps", arg: 5, scope: !5988, file: !1, line: 547, type: !42)
!5998 = !DILocation(line: 547, column: 79, scope: !5988)
!5999 = !DILocalVariable(name: "x", arg: 6, scope: !5988, file: !1, line: 547, type: !42)
!6000 = !DILocation(line: 547, column: 92, scope: !5988)
!6001 = !DILocalVariable(name: "xeps", arg: 7, scope: !5988, file: !1, line: 547, type: !42)
!6002 = !DILocation(line: 547, column: 102, scope: !5988)
!6003 = !DILocalVariable(name: "sum", arg: 8, scope: !5988, file: !1, line: 547, type: !378)
!6004 = !DILocation(line: 547, column: 122, scope: !5988)
!6005 = !DILocalVariable(name: "result", arg: 9, scope: !5988, file: !1, line: 548, type: !3400)
!6006 = !DILocation(line: 548, column: 48, scope: !5988)
!6007 = !DILocalVariable(name: "EPS", scope: !5988, file: !1, line: 550, type: !52)
!6008 = !DILocation(line: 550, column: 16, scope: !5988)
!6009 = !DILocalVariable(name: "lnx", scope: !5988, file: !1, line: 551, type: !52)
!6010 = !DILocation(line: 551, column: 16, scope: !5988)
!6011 = !DILocation(line: 551, column: 26, scope: !5988)
!6012 = !DILocation(line: 551, column: 22, scope: !5988)
!6013 = !DILocalVariable(name: "istrt", scope: !5988, file: !1, line: 553, type: !43)
!6014 = !DILocation(line: 553, column: 9, scope: !5988)
!6015 = !DILocation(line: 553, column: 19, scope: !5988)
!6016 = !DILocation(line: 553, column: 21, scope: !5988)
!6017 = !DILocation(line: 553, column: 29, scope: !6018)
!6018 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 1)
!6019 = !DILocation(line: 553, column: 28, scope: !6018)
!6020 = !DILocation(line: 553, column: 19, scope: !6018)
!6021 = !DILocation(line: 553, column: 19, scope: !6022)
!6022 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 2)
!6023 = !DILocation(line: 553, column: 19, scope: !6024)
!6024 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 3)
!6025 = !DILocation(line: 553, column: 9, scope: !6024)
!6026 = !DILocalVariable(name: "xi", scope: !5988, file: !1, line: 554, type: !42)
!6027 = !DILocation(line: 554, column: 12, scope: !5988)
!6028 = !DILocation(line: 554, column: 17, scope: !5988)
!6029 = !DILocalVariable(name: "gamr", scope: !5988, file: !1, line: 556, type: !378)
!6030 = !DILocation(line: 556, column: 19, scope: !5988)
!6031 = !DILocalVariable(name: "powx", scope: !5988, file: !1, line: 557, type: !378)
!6032 = !DILocation(line: 557, column: 19, scope: !5988)
!6033 = !DILocalVariable(name: "stat_gamr", scope: !5988, file: !1, line: 558, type: !43)
!6034 = !DILocation(line: 558, column: 9, scope: !5988)
!6035 = !DILocation(line: 558, column: 43, scope: !5988)
!6036 = !DILocation(line: 558, column: 42, scope: !5988)
!6037 = !DILocation(line: 558, column: 45, scope: !5988)
!6038 = !DILocation(line: 558, column: 44, scope: !5988)
!6039 = !DILocation(line: 558, column: 21, scope: !5988)
!6040 = !DILocalVariable(name: "stat_powx", scope: !5988, file: !1, line: 559, type: !43)
!6041 = !DILocation(line: 559, column: 9, scope: !5988)
!6042 = !DILocation(line: 559, column: 38, scope: !5988)
!6043 = !DILocation(line: 559, column: 41, scope: !5988)
!6044 = !DILocation(line: 559, column: 21, scope: !5988)
!6045 = !DILocalVariable(name: "sarg", scope: !5988, file: !1, line: 560, type: !42)
!6046 = !DILocation(line: 560, column: 12, scope: !5988)
!6047 = !DILocation(line: 560, column: 21, scope: !5988)
!6048 = !DILocation(line: 560, column: 25, scope: !5988)
!6049 = !DILocalVariable(name: "sfact", scope: !5988, file: !1, line: 561, type: !42)
!6050 = !DILocation(line: 561, column: 12, scope: !5988)
!6051 = !DILocation(line: 561, column: 23, scope: !5988)
!6052 = !DILocation(line: 561, column: 28, scope: !5988)
!6053 = !DILocation(line: 561, column: 37, scope: !6018)
!6054 = !DILocation(line: 561, column: 46, scope: !6018)
!6055 = !DILocation(line: 561, column: 42, scope: !6018)
!6056 = !DILocation(line: 561, column: 41, scope: !6018)
!6057 = !DILocation(line: 561, column: 23, scope: !6018)
!6058 = !DILocation(line: 561, column: 23, scope: !6022)
!6059 = !DILocation(line: 561, column: 23, scope: !6024)
!6060 = !DILocation(line: 561, column: 12, scope: !6024)
!6061 = !DILocalVariable(name: "factor_val", scope: !5988, file: !1, line: 562, type: !42)
!6062 = !DILocation(line: 562, column: 12, scope: !5988)
!6063 = !DILocation(line: 562, column: 25, scope: !5988)
!6064 = !DILocation(line: 562, column: 35, scope: !5988)
!6065 = !DILocation(line: 562, column: 31, scope: !5988)
!6066 = !DILocation(line: 562, column: 71, scope: !5988)
!6067 = !DILocation(line: 562, column: 64, scope: !5988)
!6068 = !DILocation(line: 562, column: 82, scope: !5988)
!6069 = !DILocation(line: 562, column: 75, scope: !5988)
!6070 = !DILocalVariable(name: "factor_err", scope: !5988, file: !1, line: 563, type: !42)
!6071 = !DILocation(line: 563, column: 12, scope: !5988)
!6072 = !DILocation(line: 563, column: 35, scope: !5988)
!6073 = !DILocation(line: 563, column: 25, scope: !5988)
!6074 = !DILocation(line: 563, column: 47, scope: !5988)
!6075 = !DILocation(line: 563, column: 40, scope: !5988)
!6076 = !DILocation(line: 563, column: 63, scope: !5988)
!6077 = !DILocation(line: 563, column: 53, scope: !6018)
!6078 = !DILocation(line: 563, column: 75, scope: !5988)
!6079 = !DILocation(line: 563, column: 68, scope: !5988)
!6080 = !DILocation(line: 563, column: 51, scope: !5988)
!6081 = !DILocation(line: 564, column: 54, scope: !5988)
!6082 = !DILocation(line: 564, column: 49, scope: !5988)
!6083 = !DILocation(line: 564, column: 47, scope: !5988)
!6084 = !DILocation(line: 564, column: 23, scope: !5988)
!6085 = !DILocalVariable(name: "pochai", scope: !5988, file: !1, line: 566, type: !378)
!6086 = !DILocation(line: 566, column: 19, scope: !5988)
!6087 = !DILocalVariable(name: "gamri1", scope: !5988, file: !1, line: 567, type: !378)
!6088 = !DILocation(line: 567, column: 19, scope: !5988)
!6089 = !DILocalVariable(name: "gamrni", scope: !5988, file: !1, line: 568, type: !378)
!6090 = !DILocation(line: 568, column: 19, scope: !5988)
!6091 = !DILocalVariable(name: "stat_pochai", scope: !5988, file: !1, line: 569, type: !43)
!6092 = !DILocation(line: 569, column: 9, scope: !5988)
!6093 = !DILocation(line: 569, column: 37, scope: !5988)
!6094 = !DILocation(line: 569, column: 40, scope: !5988)
!6095 = !DILocation(line: 569, column: 23, scope: !5988)
!6096 = !DILocalVariable(name: "stat_gamri1", scope: !5988, file: !1, line: 570, type: !43)
!6097 = !DILocation(line: 570, column: 9, scope: !5988)
!6098 = !DILocation(line: 570, column: 41, scope: !5988)
!6099 = !DILocation(line: 570, column: 44, scope: !5988)
!6100 = !DILocation(line: 570, column: 23, scope: !5988)
!6101 = !DILocalVariable(name: "stat_gamrni", scope: !5988, file: !1, line: 571, type: !43)
!6102 = !DILocation(line: 571, column: 9, scope: !5988)
!6103 = !DILocation(line: 571, column: 41, scope: !5988)
!6104 = !DILocation(line: 571, column: 48, scope: !5988)
!6105 = !DILocation(line: 571, column: 46, scope: !5988)
!6106 = !DILocation(line: 571, column: 23, scope: !5988)
!6107 = !DILocalVariable(name: "stat_gam123", scope: !5988, file: !1, line: 572, type: !43)
!6108 = !DILocation(line: 572, column: 9, scope: !5988)
!6109 = !DILocation(line: 572, column: 23, scope: !5988)
!6110 = !DILocation(line: 572, column: 23, scope: !6018)
!6111 = !DILocation(line: 572, column: 23, scope: !6022)
!6112 = !DILocation(line: 572, column: 23, scope: !6024)
!6113 = !DILocation(line: 572, column: 23, scope: !6114)
!6114 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 4)
!6115 = !DILocation(line: 572, column: 23, scope: !6116)
!6116 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 5)
!6117 = !DILocation(line: 572, column: 23, scope: !6118)
!6118 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 6)
!6119 = !DILocation(line: 572, column: 23, scope: !6120)
!6120 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 7)
!6121 = !DILocation(line: 572, column: 23, scope: !6122)
!6122 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 8)
!6123 = !DILocation(line: 572, column: 23, scope: !6124)
!6124 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 9)
!6125 = !DILocation(line: 572, column: 9, scope: !6124)
!6126 = !DILocalVariable(name: "stat_gamall", scope: !5988, file: !1, line: 573, type: !43)
!6127 = !DILocation(line: 573, column: 9, scope: !5988)
!6128 = !DILocation(line: 573, column: 23, scope: !5988)
!6129 = !DILocation(line: 573, column: 23, scope: !6018)
!6130 = !DILocation(line: 573, column: 23, scope: !6022)
!6131 = !DILocation(line: 573, column: 23, scope: !6024)
!6132 = !DILocation(line: 573, column: 23, scope: !6114)
!6133 = !DILocation(line: 573, column: 23, scope: !6116)
!6134 = !DILocation(line: 573, column: 23, scope: !6118)
!6135 = !DILocation(line: 573, column: 23, scope: !6120)
!6136 = !DILocation(line: 573, column: 23, scope: !6122)
!6137 = !DILocation(line: 573, column: 23, scope: !6124)
!6138 = !DILocation(line: 573, column: 9, scope: !6124)
!6139 = !DILocalVariable(name: "pochaxibeps", scope: !5988, file: !1, line: 575, type: !378)
!6140 = !DILocation(line: 575, column: 19, scope: !5988)
!6141 = !DILocalVariable(name: "gamrxi1beps", scope: !5988, file: !1, line: 576, type: !378)
!6142 = !DILocation(line: 576, column: 19, scope: !5988)
!6143 = !DILocalVariable(name: "stat_pochaxibeps", scope: !5988, file: !1, line: 577, type: !43)
!6144 = !DILocation(line: 577, column: 9, scope: !5988)
!6145 = !DILocation(line: 577, column: 42, scope: !5988)
!6146 = !DILocation(line: 577, column: 45, scope: !5988)
!6147 = !DILocation(line: 577, column: 48, scope: !5988)
!6148 = !DILocation(line: 577, column: 47, scope: !5988)
!6149 = !DILocation(line: 577, column: 28, scope: !5988)
!6150 = !DILocalVariable(name: "stat_gamrxi1beps", scope: !5988, file: !1, line: 578, type: !43)
!6151 = !DILocation(line: 578, column: 9, scope: !5988)
!6152 = !DILocation(line: 578, column: 46, scope: !5988)
!6153 = !DILocation(line: 578, column: 49, scope: !5988)
!6154 = !DILocation(line: 578, column: 57, scope: !5988)
!6155 = !DILocation(line: 578, column: 55, scope: !5988)
!6156 = !DILocation(line: 578, column: 28, scope: !5988)
!6157 = !DILocalVariable(name: "stat_all", scope: !5988, file: !1, line: 580, type: !43)
!6158 = !DILocation(line: 580, column: 9, scope: !5988)
!6159 = !DILocation(line: 580, column: 20, scope: !5988)
!6160 = !DILocation(line: 580, column: 20, scope: !6018)
!6161 = !DILocation(line: 580, column: 20, scope: !6022)
!6162 = !DILocation(line: 580, column: 20, scope: !6024)
!6163 = !DILocation(line: 580, column: 20, scope: !6114)
!6164 = !DILocation(line: 580, column: 20, scope: !6116)
!6165 = !DILocation(line: 580, column: 20, scope: !6118)
!6166 = !DILocation(line: 580, column: 20, scope: !6120)
!6167 = !DILocation(line: 580, column: 20, scope: !6122)
!6168 = !DILocation(line: 580, column: 20, scope: !6124)
!6169 = !DILocation(line: 580, column: 9, scope: !6124)
!6170 = !DILocalVariable(name: "b0_val", scope: !5988, file: !1, line: 582, type: !42)
!6171 = !DILocation(line: 582, column: 12, scope: !5988)
!6172 = !DILocation(line: 582, column: 21, scope: !5988)
!6173 = !DILocation(line: 582, column: 46, scope: !5988)
!6174 = !DILocation(line: 582, column: 32, scope: !5988)
!6175 = !DILocation(line: 582, column: 59, scope: !5988)
!6176 = !DILocation(line: 582, column: 50, scope: !5988)
!6177 = !DILocation(line: 582, column: 77, scope: !5988)
!6178 = !DILocation(line: 582, column: 63, scope: !5988)
!6179 = !DILocalVariable(name: "b0_err", scope: !5988, file: !1, line: 583, type: !42)
!6180 = !DILocation(line: 583, column: 12, scope: !5988)
!6181 = !DILocation(line: 583, column: 27, scope: !5988)
!6182 = !DILocation(line: 583, column: 52, scope: !5988)
!6183 = !DILocation(line: 583, column: 38, scope: !5988)
!6184 = !DILocation(line: 583, column: 65, scope: !5988)
!6185 = !DILocation(line: 583, column: 56, scope: !5988)
!6186 = !DILocation(line: 583, column: 22, scope: !5988)
!6187 = !DILocation(line: 583, column: 84, scope: !5988)
!6188 = !DILocation(line: 583, column: 70, scope: !5988)
!6189 = !DILocation(line: 584, column: 27, scope: !5988)
!6190 = !DILocation(line: 584, column: 52, scope: !5988)
!6191 = !DILocation(line: 584, column: 38, scope: !5988)
!6192 = !DILocation(line: 584, column: 70, scope: !5988)
!6193 = !DILocation(line: 584, column: 56, scope: !5988)
!6194 = !DILocation(line: 584, column: 22, scope: !5988)
!6195 = !DILocation(line: 584, column: 84, scope: !5988)
!6196 = !DILocation(line: 584, column: 75, scope: !5988)
!6197 = !DILocation(line: 584, column: 20, scope: !5988)
!6198 = !DILocation(line: 585, column: 27, scope: !5988)
!6199 = !DILocation(line: 585, column: 47, scope: !5988)
!6200 = !DILocation(line: 585, column: 38, scope: !5988)
!6201 = !DILocation(line: 585, column: 65, scope: !5988)
!6202 = !DILocation(line: 585, column: 51, scope: !5988)
!6203 = !DILocation(line: 585, column: 22, scope: !5988)
!6204 = !DILocation(line: 585, column: 84, scope: !5988)
!6205 = !DILocation(line: 585, column: 70, scope: !5988)
!6206 = !DILocation(line: 585, column: 20, scope: !5988)
!6207 = !DILocation(line: 586, column: 39, scope: !5988)
!6208 = !DILocation(line: 586, column: 52, scope: !5988)
!6209 = !DILocation(line: 586, column: 43, scope: !5988)
!6210 = !DILocation(line: 586, column: 70, scope: !5988)
!6211 = !DILocation(line: 586, column: 56, scope: !5988)
!6212 = !DILocation(line: 586, column: 22, scope: !5988)
!6213 = !DILocation(line: 586, column: 77, scope: !5988)
!6214 = !DILocation(line: 586, column: 75, scope: !5988)
!6215 = !DILocation(line: 586, column: 20, scope: !5988)
!6216 = !DILocation(line: 587, column: 51, scope: !5988)
!6217 = !DILocation(line: 587, column: 46, scope: !5988)
!6218 = !DILocation(line: 587, column: 44, scope: !5988)
!6219 = !DILocation(line: 587, column: 20, scope: !5988)
!6220 = !DILocalVariable(name: "i", scope: !5988, file: !1, line: 593, type: !43)
!6221 = !DILocation(line: 593, column: 11, scope: !5988)
!6222 = !DILocalVariable(name: "pch1ai", scope: !5988, file: !1, line: 594, type: !378)
!6223 = !DILocation(line: 594, column: 21, scope: !5988)
!6224 = !DILocalVariable(name: "pch1i", scope: !5988, file: !1, line: 595, type: !378)
!6225 = !DILocation(line: 595, column: 21, scope: !5988)
!6226 = !DILocalVariable(name: "poch1bxibeps", scope: !5988, file: !1, line: 596, type: !378)
!6227 = !DILocation(line: 596, column: 21, scope: !5988)
!6228 = !DILocalVariable(name: "stat_pch1ai", scope: !5988, file: !1, line: 597, type: !43)
!6229 = !DILocation(line: 597, column: 11, scope: !5988)
!6230 = !DILocation(line: 597, column: 42, scope: !5988)
!6231 = !DILocation(line: 597, column: 46, scope: !5988)
!6232 = !DILocation(line: 597, column: 44, scope: !5988)
!6233 = !DILocation(line: 597, column: 51, scope: !5988)
!6234 = !DILocation(line: 597, column: 50, scope: !5988)
!6235 = !DILocation(line: 597, column: 25, scope: !5988)
!6236 = !DILocalVariable(name: "stat_pch1i", scope: !5988, file: !1, line: 598, type: !43)
!6237 = !DILocation(line: 598, column: 11, scope: !5988)
!6238 = !DILocation(line: 598, column: 42, scope: !5988)
!6239 = !DILocation(line: 598, column: 45, scope: !5988)
!6240 = !DILocation(line: 598, column: 53, scope: !5988)
!6241 = !DILocation(line: 598, column: 51, scope: !5988)
!6242 = !DILocation(line: 598, column: 59, scope: !5988)
!6243 = !DILocation(line: 598, column: 25, scope: !5988)
!6244 = !DILocalVariable(name: "stat_poch1bxibeps", scope: !5988, file: !1, line: 599, type: !43)
!6245 = !DILocation(line: 599, column: 11, scope: !5988)
!6246 = !DILocation(line: 599, column: 48, scope: !5988)
!6247 = !DILocation(line: 599, column: 50, scope: !5988)
!6248 = !DILocation(line: 599, column: 49, scope: !5988)
!6249 = !DILocation(line: 599, column: 55, scope: !5988)
!6250 = !DILocation(line: 599, column: 54, scope: !5988)
!6251 = !DILocation(line: 599, column: 31, scope: !5988)
!6252 = !DILocalVariable(name: "c0_t1_val", scope: !5988, file: !1, line: 600, type: !42)
!6253 = !DILocation(line: 600, column: 14, scope: !5988)
!6254 = !DILocation(line: 600, column: 26, scope: !5988)
!6255 = !DILocation(line: 600, column: 38, scope: !5988)
!6256 = !DILocation(line: 600, column: 30, scope: !5988)
!6257 = !DILocation(line: 600, column: 48, scope: !5988)
!6258 = !DILocation(line: 600, column: 41, scope: !5988)
!6259 = !DILocalVariable(name: "c0_t1_err", scope: !5988, file: !1, line: 601, type: !42)
!6260 = !DILocation(line: 601, column: 14, scope: !5988)
!6261 = !DILocation(line: 601, column: 31, scope: !5988)
!6262 = !DILocation(line: 601, column: 26, scope: !5988)
!6263 = !DILocation(line: 601, column: 51, scope: !5988)
!6264 = !DILocation(line: 601, column: 39, scope: !6018)
!6265 = !DILocation(line: 601, column: 37, scope: !5988)
!6266 = !DILocation(line: 601, column: 64, scope: !5988)
!6267 = !DILocation(line: 601, column: 56, scope: !5988)
!6268 = !DILocation(line: 602, column: 31, scope: !5988)
!6269 = !DILocation(line: 602, column: 26, scope: !5988)
!6270 = !DILocation(line: 602, column: 50, scope: !5988)
!6271 = !DILocation(line: 602, column: 39, scope: !6018)
!6272 = !DILocation(line: 602, column: 37, scope: !5988)
!6273 = !DILocation(line: 602, column: 65, scope: !5988)
!6274 = !DILocation(line: 602, column: 56, scope: !5988)
!6275 = !DILocation(line: 602, column: 24, scope: !5988)
!6276 = !DILocation(line: 603, column: 55, scope: !5988)
!6277 = !DILocation(line: 603, column: 50, scope: !5988)
!6278 = !DILocation(line: 603, column: 48, scope: !5988)
!6279 = !DILocation(line: 603, column: 24, scope: !5988)
!6280 = !DILocalVariable(name: "c0_t2_val", scope: !5988, file: !1, line: 604, type: !42)
!6281 = !DILocation(line: 604, column: 14, scope: !5988)
!6282 = !DILocation(line: 604, column: 40, scope: !5988)
!6283 = !DILocation(line: 604, column: 26, scope: !5988)
!6284 = !DILocation(line: 604, column: 53, scope: !5988)
!6285 = !DILocation(line: 604, column: 44, scope: !5988)
!6286 = !DILocation(line: 604, column: 65, scope: !5988)
!6287 = !DILocation(line: 604, column: 57, scope: !5988)
!6288 = !DILocation(line: 604, column: 71, scope: !5988)
!6289 = !DILocation(line: 604, column: 69, scope: !5988)
!6290 = !DILocalVariable(name: "c0_t2_err", scope: !5988, file: !1, line: 605, type: !42)
!6291 = !DILocation(line: 605, column: 14, scope: !5988)
!6292 = !DILocation(line: 605, column: 40, scope: !5988)
!6293 = !DILocation(line: 605, column: 53, scope: !5988)
!6294 = !DILocation(line: 605, column: 44, scope: !5988)
!6295 = !DILocation(line: 605, column: 65, scope: !5988)
!6296 = !DILocation(line: 605, column: 57, scope: !5988)
!6297 = !DILocation(line: 605, column: 71, scope: !5988)
!6298 = !DILocation(line: 605, column: 69, scope: !5988)
!6299 = !DILocation(line: 606, column: 55, scope: !5988)
!6300 = !DILocation(line: 606, column: 50, scope: !5988)
!6301 = !DILocation(line: 606, column: 48, scope: !5988)
!6302 = !DILocation(line: 606, column: 24, scope: !5988)
!6303 = !DILocalVariable(name: "c0_val", scope: !5988, file: !1, line: 607, type: !42)
!6304 = !DILocation(line: 607, column: 14, scope: !5988)
!6305 = !DILocation(line: 607, column: 23, scope: !5988)
!6306 = !DILocation(line: 607, column: 43, scope: !5988)
!6307 = !DILocation(line: 607, column: 34, scope: !5988)
!6308 = !DILocation(line: 607, column: 56, scope: !5988)
!6309 = !DILocation(line: 607, column: 47, scope: !5988)
!6310 = !DILocation(line: 607, column: 69, scope: !5988)
!6311 = !DILocation(line: 607, column: 60, scope: !5988)
!6312 = !DILocation(line: 607, column: 75, scope: !5988)
!6313 = !DILocation(line: 607, column: 73, scope: !5988)
!6314 = !DILocalVariable(name: "c0_err", scope: !5988, file: !1, line: 608, type: !42)
!6315 = !DILocation(line: 608, column: 14, scope: !5988)
!6316 = !DILocation(line: 608, column: 29, scope: !5988)
!6317 = !DILocation(line: 608, column: 49, scope: !5988)
!6318 = !DILocation(line: 608, column: 40, scope: !5988)
!6319 = !DILocation(line: 608, column: 62, scope: !5988)
!6320 = !DILocation(line: 608, column: 53, scope: !5988)
!6321 = !DILocation(line: 608, column: 75, scope: !5988)
!6322 = !DILocation(line: 608, column: 66, scope: !5988)
!6323 = !DILocation(line: 608, column: 24, scope: !5988)
!6324 = !DILocation(line: 608, column: 82, scope: !5988)
!6325 = !DILocation(line: 608, column: 80, scope: !5988)
!6326 = !DILocation(line: 609, column: 29, scope: !5988)
!6327 = !DILocation(line: 609, column: 49, scope: !5988)
!6328 = !DILocation(line: 609, column: 40, scope: !5988)
!6329 = !DILocation(line: 609, column: 62, scope: !5988)
!6330 = !DILocation(line: 609, column: 53, scope: !5988)
!6331 = !DILocation(line: 609, column: 68, scope: !5988)
!6332 = !DILocation(line: 609, column: 66, scope: !5988)
!6333 = !DILocation(line: 609, column: 24, scope: !5988)
!6334 = !DILocation(line: 609, column: 88, scope: !5988)
!6335 = !DILocation(line: 609, column: 79, scope: !5988)
!6336 = !DILocation(line: 609, column: 22, scope: !5988)
!6337 = !DILocation(line: 610, column: 29, scope: !5988)
!6338 = !DILocation(line: 610, column: 49, scope: !5988)
!6339 = !DILocation(line: 610, column: 40, scope: !5988)
!6340 = !DILocation(line: 610, column: 62, scope: !5988)
!6341 = !DILocation(line: 610, column: 53, scope: !5988)
!6342 = !DILocation(line: 610, column: 68, scope: !5988)
!6343 = !DILocation(line: 610, column: 66, scope: !5988)
!6344 = !DILocation(line: 610, column: 24, scope: !5988)
!6345 = !DILocation(line: 610, column: 88, scope: !5988)
!6346 = !DILocation(line: 610, column: 79, scope: !5988)
!6347 = !DILocation(line: 610, column: 22, scope: !5988)
!6348 = !DILocation(line: 611, column: 29, scope: !5988)
!6349 = !DILocation(line: 611, column: 49, scope: !5988)
!6350 = !DILocation(line: 611, column: 40, scope: !5988)
!6351 = !DILocation(line: 611, column: 62, scope: !5988)
!6352 = !DILocation(line: 611, column: 53, scope: !5988)
!6353 = !DILocation(line: 611, column: 68, scope: !5988)
!6354 = !DILocation(line: 611, column: 66, scope: !5988)
!6355 = !DILocation(line: 611, column: 24, scope: !5988)
!6356 = !DILocation(line: 611, column: 88, scope: !5988)
!6357 = !DILocation(line: 611, column: 79, scope: !5988)
!6358 = !DILocation(line: 611, column: 22, scope: !5988)
!6359 = !DILocation(line: 612, column: 36, scope: !5988)
!6360 = !DILocation(line: 612, column: 49, scope: !5988)
!6361 = !DILocation(line: 612, column: 40, scope: !5988)
!6362 = !DILocation(line: 612, column: 62, scope: !5988)
!6363 = !DILocation(line: 612, column: 53, scope: !5988)
!6364 = !DILocation(line: 612, column: 68, scope: !5988)
!6365 = !DILocation(line: 612, column: 66, scope: !5988)
!6366 = !DILocation(line: 612, column: 24, scope: !5988)
!6367 = !DILocation(line: 612, column: 81, scope: !5988)
!6368 = !DILocation(line: 612, column: 79, scope: !5988)
!6369 = !DILocation(line: 612, column: 22, scope: !5988)
!6370 = !DILocation(line: 613, column: 53, scope: !5988)
!6371 = !DILocation(line: 613, column: 48, scope: !5988)
!6372 = !DILocation(line: 613, column: 46, scope: !5988)
!6373 = !DILocation(line: 613, column: 22, scope: !5988)
!6374 = !DILocalVariable(name: "dexprl", scope: !5988, file: !1, line: 617, type: !378)
!6375 = !DILocation(line: 617, column: 21, scope: !5988)
!6376 = !DILocalVariable(name: "stat_dexprl", scope: !5988, file: !1, line: 618, type: !43)
!6377 = !DILocation(line: 618, column: 11, scope: !5988)
!6378 = !DILocation(line: 618, column: 42, scope: !5988)
!6379 = !DILocation(line: 618, column: 41, scope: !5988)
!6380 = !DILocation(line: 618, column: 47, scope: !5988)
!6381 = !DILocation(line: 618, column: 46, scope: !5988)
!6382 = !DILocation(line: 618, column: 25, scope: !5988)
!6383 = !DILocalVariable(name: "xeps1_val", scope: !5988, file: !1, line: 619, type: !42)
!6384 = !DILocation(line: 619, column: 14, scope: !5988)
!6385 = !DILocation(line: 619, column: 26, scope: !5988)
!6386 = !DILocation(line: 619, column: 39, scope: !5988)
!6387 = !DILocation(line: 619, column: 30, scope: !5988)
!6388 = !DILocalVariable(name: "xeps1_err", scope: !5988, file: !1, line: 620, type: !42)
!6389 = !DILocation(line: 620, column: 14, scope: !5988)
!6390 = !DILocation(line: 620, column: 62, scope: !5988)
!6391 = !DILocation(line: 620, column: 67, scope: !5988)
!6392 = !DILocation(line: 620, column: 66, scope: !5988)
!6393 = !DILocation(line: 620, column: 57, scope: !5988)
!6394 = !DILocation(line: 620, column: 55, scope: !5988)
!6395 = !DILocation(line: 620, column: 48, scope: !5988)
!6396 = !DILocation(line: 620, column: 87, scope: !5988)
!6397 = !DILocation(line: 620, column: 75, scope: !6018)
!6398 = !DILocation(line: 620, column: 73, scope: !5988)
!6399 = !DILocation(line: 621, column: 31, scope: !5988)
!6400 = !DILocation(line: 621, column: 26, scope: !5988)
!6401 = !DILocation(line: 621, column: 45, scope: !5988)
!6402 = !DILocation(line: 621, column: 36, scope: !5988)
!6403 = !DILocation(line: 621, column: 24, scope: !5988)
!6404 = !DILocation(line: 622, column: 55, scope: !5988)
!6405 = !DILocation(line: 622, column: 50, scope: !5988)
!6406 = !DILocation(line: 622, column: 48, scope: !5988)
!6407 = !DILocation(line: 622, column: 24, scope: !5988)
!6408 = !DILocalVariable(name: "dchu_val", scope: !5988, file: !1, line: 623, type: !42)
!6409 = !DILocation(line: 623, column: 14, scope: !5988)
!6410 = !DILocation(line: 623, column: 29, scope: !5988)
!6411 = !DILocation(line: 623, column: 35, scope: !5988)
!6412 = !DILocation(line: 623, column: 33, scope: !5988)
!6413 = !DILocation(line: 623, column: 44, scope: !5988)
!6414 = !DILocation(line: 623, column: 54, scope: !5988)
!6415 = !DILocation(line: 623, column: 53, scope: !5988)
!6416 = !DILocation(line: 623, column: 42, scope: !5988)
!6417 = !DILocalVariable(name: "dchu_err", scope: !5988, file: !1, line: 624, type: !42)
!6418 = !DILocation(line: 624, column: 14, scope: !5988)
!6419 = !DILocation(line: 624, column: 29, scope: !5988)
!6420 = !DILocation(line: 624, column: 35, scope: !5988)
!6421 = !DILocation(line: 624, column: 33, scope: !5988)
!6422 = !DILocation(line: 625, column: 30, scope: !5988)
!6423 = !DILocation(line: 625, column: 25, scope: !5988)
!6424 = !DILocation(line: 625, column: 41, scope: !5988)
!6425 = !DILocation(line: 625, column: 40, scope: !5988)
!6426 = !DILocation(line: 625, column: 23, scope: !5988)
!6427 = !DILocation(line: 625, column: 50, scope: !5988)
!6428 = !DILocation(line: 625, column: 67, scope: !5988)
!6429 = !DILocation(line: 625, column: 62, scope: !6018)
!6430 = !DILocation(line: 625, column: 60, scope: !5988)
!6431 = !DILocation(line: 625, column: 48, scope: !5988)
!6432 = !DILocation(line: 626, column: 30, scope: !5988)
!6433 = !DILocation(line: 626, column: 37, scope: !5988)
!6434 = !DILocation(line: 626, column: 36, scope: !5988)
!6435 = !DILocation(line: 626, column: 25, scope: !5988)
!6436 = !DILocation(line: 626, column: 49, scope: !5988)
!6437 = !DILocation(line: 626, column: 41, scope: !5988)
!6438 = !DILocation(line: 626, column: 23, scope: !5988)
!6439 = !DILocation(line: 627, column: 59, scope: !5988)
!6440 = !DILocation(line: 627, column: 50, scope: !5988)
!6441 = !DILocation(line: 627, column: 71, scope: !5988)
!6442 = !DILocation(line: 627, column: 66, scope: !6018)
!6443 = !DILocation(line: 627, column: 64, scope: !5988)
!6444 = !DILocation(line: 627, column: 86, scope: !5988)
!6445 = !DILocation(line: 627, column: 96, scope: !5988)
!6446 = !DILocation(line: 627, column: 95, scope: !5988)
!6447 = !DILocation(line: 627, column: 81, scope: !6022)
!6448 = !DILocation(line: 627, column: 79, scope: !5988)
!6449 = !DILocation(line: 627, column: 47, scope: !5988)
!6450 = !DILocation(line: 627, column: 23, scope: !5988)
!6451 = !DILocalVariable(name: "xn", scope: !5988, file: !1, line: 628, type: !42)
!6452 = !DILocation(line: 628, column: 14, scope: !5988)
!6453 = !DILocation(line: 628, column: 19, scope: !5988)
!6454 = !DILocalVariable(name: "t_val", scope: !5988, file: !1, line: 629, type: !42)
!6455 = !DILocation(line: 629, column: 14, scope: !5988)
!6456 = !DILocalVariable(name: "t_err", scope: !5988, file: !1, line: 630, type: !42)
!6457 = !DILocation(line: 630, column: 14, scope: !5988)
!6458 = !DILocation(line: 632, column: 18, scope: !5988)
!6459 = !DILocation(line: 632, column: 18, scope: !6018)
!6460 = !DILocation(line: 632, column: 18, scope: !6022)
!6461 = !DILocation(line: 632, column: 18, scope: !6024)
!6462 = !DILocation(line: 632, column: 18, scope: !6114)
!6463 = !DILocation(line: 632, column: 18, scope: !6116)
!6464 = !DILocation(line: 632, column: 18, scope: !6118)
!6465 = !DILocation(line: 632, column: 18, scope: !6120)
!6466 = !DILocation(line: 632, column: 18, scope: !6122)
!6467 = !DILocation(line: 632, column: 18, scope: !6124)
!6468 = !DILocation(line: 632, column: 18, scope: !6469)
!6469 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 10)
!6470 = !DILocation(line: 632, column: 18, scope: !6471)
!6471 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 11)
!6472 = !DILocation(line: 632, column: 18, scope: !6473)
!6473 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 12)
!6474 = !DILocation(line: 632, column: 18, scope: !6475)
!6475 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 13)
!6476 = !DILocation(line: 632, column: 18, scope: !6477)
!6477 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 14)
!6478 = !DILocation(line: 632, column: 18, scope: !6479)
!6479 = !DILexicalBlockFile(scope: !5988, file: !1, discriminator: 15)
!6480 = !DILocation(line: 632, column: 16, scope: !6479)
!6481 = !DILocation(line: 634, column: 12, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !5988, file: !1, line: 634, column: 7)
!6483 = !DILocation(line: 634, column: 11, scope: !6482)
!6484 = !DILocation(line: 634, column: 16, scope: !6485)
!6485 = !DILexicalBlockFile(scope: !6486, file: !1, discriminator: 1)
!6486 = distinct !DILexicalBlock(scope: !6482, file: !1, line: 634, column: 7)
!6487 = !DILocation(line: 634, column: 17, scope: !6485)
!6488 = !DILocation(line: 634, column: 7, scope: !6485)
!6489 = !DILocalVariable(name: "xi", scope: !6490, file: !1, line: 635, type: !52)
!6490 = distinct !DILexicalBlock(scope: !6486, file: !1, line: 634, column: 29)
!6491 = !DILocation(line: 635, column: 22, scope: !6490)
!6492 = !DILocation(line: 635, column: 28, scope: !6490)
!6493 = !DILocation(line: 635, column: 36, scope: !6490)
!6494 = !DILocation(line: 635, column: 34, scope: !6490)
!6495 = !DILocalVariable(name: "xi1", scope: !6490, file: !1, line: 636, type: !52)
!6496 = !DILocation(line: 636, column: 22, scope: !6490)
!6497 = !DILocation(line: 636, column: 28, scope: !6490)
!6498 = !DILocation(line: 636, column: 36, scope: !6490)
!6499 = !DILocation(line: 636, column: 34, scope: !6490)
!6500 = !DILocation(line: 636, column: 38, scope: !6490)
!6501 = !DILocalVariable(name: "tmp", scope: !6490, file: !1, line: 637, type: !52)
!6502 = !DILocation(line: 637, column: 22, scope: !6490)
!6503 = !DILocation(line: 637, column: 29, scope: !6490)
!6504 = !DILocation(line: 637, column: 30, scope: !6490)
!6505 = !DILocation(line: 637, column: 37, scope: !6490)
!6506 = !DILocation(line: 637, column: 44, scope: !6490)
!6507 = !DILocation(line: 637, column: 43, scope: !6490)
!6508 = !DILocation(line: 637, column: 39, scope: !6490)
!6509 = !DILocation(line: 637, column: 46, scope: !6490)
!6510 = !DILocation(line: 637, column: 35, scope: !6490)
!6511 = !DILocation(line: 637, column: 54, scope: !6490)
!6512 = !DILocation(line: 637, column: 58, scope: !6490)
!6513 = !DILocation(line: 637, column: 61, scope: !6490)
!6514 = !DILocation(line: 637, column: 60, scope: !6490)
!6515 = !DILocation(line: 637, column: 56, scope: !6490)
!6516 = !DILocation(line: 637, column: 52, scope: !6490)
!6517 = !DILocalVariable(name: "b0_multiplier", scope: !6490, file: !1, line: 638, type: !52)
!6518 = !DILocation(line: 638, column: 22, scope: !6490)
!6519 = !DILocation(line: 638, column: 39, scope: !6490)
!6520 = !DILocation(line: 638, column: 41, scope: !6490)
!6521 = !DILocation(line: 638, column: 40, scope: !6490)
!6522 = !DILocation(line: 638, column: 45, scope: !6490)
!6523 = !DILocation(line: 638, column: 44, scope: !6490)
!6524 = !DILocation(line: 638, column: 51, scope: !6490)
!6525 = !DILocation(line: 638, column: 50, scope: !6490)
!6526 = !DILocation(line: 638, column: 55, scope: !6490)
!6527 = !DILocation(line: 638, column: 58, scope: !6490)
!6528 = !DILocation(line: 638, column: 57, scope: !6490)
!6529 = !DILocation(line: 638, column: 64, scope: !6490)
!6530 = !DILocation(line: 638, column: 67, scope: !6490)
!6531 = !DILocation(line: 638, column: 66, scope: !6490)
!6532 = !DILocation(line: 638, column: 62, scope: !6490)
!6533 = !DILocation(line: 638, column: 52, scope: !6490)
!6534 = !DILocalVariable(name: "c0_multiplier_1", scope: !6490, file: !1, line: 639, type: !52)
!6535 = !DILocation(line: 639, column: 22, scope: !6490)
!6536 = !DILocation(line: 639, column: 41, scope: !6490)
!6537 = !DILocation(line: 639, column: 43, scope: !6490)
!6538 = !DILocation(line: 639, column: 42, scope: !6490)
!6539 = !DILocation(line: 639, column: 48, scope: !6490)
!6540 = !DILocation(line: 639, column: 47, scope: !6490)
!6541 = !DILocation(line: 639, column: 52, scope: !6490)
!6542 = !DILocation(line: 639, column: 54, scope: !6490)
!6543 = !DILocation(line: 639, column: 53, scope: !6490)
!6544 = !DILocation(line: 639, column: 59, scope: !6490)
!6545 = !DILocation(line: 639, column: 58, scope: !6490)
!6546 = !DILocation(line: 639, column: 49, scope: !6490)
!6547 = !DILocalVariable(name: "c0_multiplier_2", scope: !6490, file: !1, line: 640, type: !52)
!6548 = !DILocation(line: 640, column: 22, scope: !6490)
!6549 = !DILocation(line: 640, column: 40, scope: !6490)
!6550 = !DILocation(line: 640, column: 47, scope: !6490)
!6551 = !DILocation(line: 640, column: 51, scope: !6490)
!6552 = !DILocation(line: 640, column: 53, scope: !6490)
!6553 = !DILocation(line: 640, column: 52, scope: !6490)
!6554 = !DILocation(line: 640, column: 49, scope: !6490)
!6555 = !DILocation(line: 640, column: 59, scope: !6490)
!6556 = !DILocation(line: 640, column: 61, scope: !6490)
!6557 = !DILocation(line: 640, column: 60, scope: !6490)
!6558 = !DILocation(line: 640, column: 65, scope: !6490)
!6559 = !DILocation(line: 640, column: 64, scope: !6490)
!6560 = !DILocation(line: 640, column: 57, scope: !6490)
!6561 = !DILocation(line: 640, column: 44, scope: !6490)
!6562 = !DILocation(line: 641, column: 19, scope: !6490)
!6563 = !DILocation(line: 641, column: 16, scope: !6490)
!6564 = !DILocation(line: 642, column: 24, scope: !6490)
!6565 = !DILocation(line: 642, column: 19, scope: !6490)
!6566 = !DILocation(line: 642, column: 41, scope: !6490)
!6567 = !DILocation(line: 642, column: 39, scope: !6490)
!6568 = !DILocation(line: 642, column: 55, scope: !6490)
!6569 = !DILocation(line: 642, column: 50, scope: !6570)
!6570 = !DILexicalBlockFile(scope: !6490, file: !1, discriminator: 1)
!6571 = !DILocation(line: 642, column: 63, scope: !6490)
!6572 = !DILocation(line: 642, column: 69, scope: !6490)
!6573 = !DILocation(line: 642, column: 75, scope: !6490)
!6574 = !DILocation(line: 642, column: 48, scope: !6490)
!6575 = !DILocation(line: 642, column: 16, scope: !6490)
!6576 = !DILocation(line: 643, column: 19, scope: !6490)
!6577 = !DILocation(line: 643, column: 37, scope: !6490)
!6578 = !DILocation(line: 643, column: 35, scope: !6490)
!6579 = !DILocation(line: 643, column: 46, scope: !6490)
!6580 = !DILocation(line: 643, column: 64, scope: !6490)
!6581 = !DILocation(line: 643, column: 62, scope: !6490)
!6582 = !DILocation(line: 643, column: 44, scope: !6490)
!6583 = !DILocation(line: 643, column: 17, scope: !6490)
!6584 = !DILocation(line: 644, column: 25, scope: !6490)
!6585 = !DILocation(line: 644, column: 20, scope: !6490)
!6586 = !DILocation(line: 644, column: 44, scope: !6490)
!6587 = !DILocation(line: 644, column: 42, scope: !6490)
!6588 = !DILocation(line: 645, column: 25, scope: !6490)
!6589 = !DILocation(line: 645, column: 20, scope: !6490)
!6590 = !DILocation(line: 645, column: 44, scope: !6490)
!6591 = !DILocation(line: 645, column: 42, scope: !6490)
!6592 = !DILocation(line: 645, column: 18, scope: !6490)
!6593 = !DILocation(line: 646, column: 25, scope: !6490)
!6594 = !DILocation(line: 646, column: 20, scope: !6490)
!6595 = !DILocation(line: 646, column: 33, scope: !6490)
!6596 = !DILocation(line: 646, column: 39, scope: !6490)
!6597 = !DILocation(line: 646, column: 45, scope: !6490)
!6598 = !DILocation(line: 646, column: 18, scope: !6490)
!6599 = !DILocation(line: 647, column: 25, scope: !6490)
!6600 = !DILocation(line: 647, column: 34, scope: !6490)
!6601 = !DILocation(line: 647, column: 32, scope: !6490)
!6602 = !DILocation(line: 647, column: 20, scope: !6490)
!6603 = !DILocation(line: 647, column: 51, scope: !6490)
!6604 = !DILocation(line: 647, column: 58, scope: !6490)
!6605 = !DILocation(line: 647, column: 64, scope: !6490)
!6606 = !DILocation(line: 647, column: 18, scope: !6490)
!6607 = !DILocation(line: 644, column: 17, scope: !6490)
!6608 = !DILocation(line: 648, column: 18, scope: !6490)
!6609 = !DILocation(line: 648, column: 27, scope: !6490)
!6610 = !DILocation(line: 648, column: 37, scope: !6490)
!6611 = !DILocation(line: 648, column: 36, scope: !6490)
!6612 = !DILocation(line: 648, column: 25, scope: !6490)
!6613 = !DILocation(line: 648, column: 16, scope: !6490)
!6614 = !DILocation(line: 649, column: 18, scope: !6490)
!6615 = !DILocation(line: 649, column: 32, scope: !6490)
!6616 = !DILocation(line: 649, column: 27, scope: !6490)
!6617 = !DILocation(line: 649, column: 43, scope: !6490)
!6618 = !DILocation(line: 649, column: 42, scope: !6490)
!6619 = !DILocation(line: 649, column: 25, scope: !6490)
!6620 = !DILocation(line: 649, column: 16, scope: !6490)
!6621 = !DILocation(line: 650, column: 23, scope: !6490)
!6622 = !DILocation(line: 650, column: 30, scope: !6490)
!6623 = !DILocation(line: 650, column: 29, scope: !6490)
!6624 = !DILocation(line: 650, column: 18, scope: !6490)
!6625 = !DILocation(line: 650, column: 44, scope: !6490)
!6626 = !DILocation(line: 650, column: 35, scope: !6490)
!6627 = !DILocation(line: 650, column: 15, scope: !6490)
!6628 = !DILocation(line: 651, column: 23, scope: !6490)
!6629 = !DILocation(line: 651, column: 18, scope: !6490)
!6630 = !DILocation(line: 651, column: 31, scope: !6490)
!6631 = !DILocation(line: 651, column: 30, scope: !6490)
!6632 = !DILocation(line: 651, column: 15, scope: !6490)
!6633 = !DILocation(line: 652, column: 21, scope: !6490)
!6634 = !DILocation(line: 652, column: 18, scope: !6490)
!6635 = !DILocation(line: 653, column: 21, scope: !6490)
!6636 = !DILocation(line: 653, column: 18, scope: !6490)
!6637 = !DILocation(line: 654, column: 17, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6490, file: !1, line: 654, column: 12)
!6639 = !DILocation(line: 654, column: 12, scope: !6638)
!6640 = !DILocation(line: 654, column: 35, scope: !6638)
!6641 = !DILocation(line: 654, column: 30, scope: !6642)
!6642 = !DILexicalBlockFile(scope: !6638, file: !1, discriminator: 2)
!6643 = !DILocation(line: 654, column: 29, scope: !6638)
!6644 = !DILocation(line: 654, column: 24, scope: !6638)
!6645 = !DILocation(line: 654, column: 12, scope: !6490)
!6646 = !DILocation(line: 654, column: 46, scope: !6647)
!6647 = !DILexicalBlockFile(scope: !6638, file: !1, discriminator: 1)
!6648 = !DILocation(line: 655, column: 7, scope: !6490)
!6649 = !DILocation(line: 634, column: 25, scope: !6650)
!6650 = !DILexicalBlockFile(scope: !6486, file: !1, discriminator: 2)
!6651 = !DILocation(line: 634, column: 7, scope: !6650)
!6652 = distinct !{!6652, !6653}
!6653 = !DILocation(line: 634, column: 7, scope: !5988)
!6654 = !DILocation(line: 657, column: 22, scope: !5988)
!6655 = !DILocation(line: 657, column: 7, scope: !5988)
!6656 = !DILocation(line: 657, column: 15, scope: !5988)
!6657 = !DILocation(line: 657, column: 20, scope: !5988)
!6658 = !DILocation(line: 658, column: 28, scope: !5988)
!6659 = !DILocation(line: 658, column: 26, scope: !5988)
!6660 = !DILocation(line: 658, column: 7, scope: !5988)
!6661 = !DILocation(line: 658, column: 15, scope: !5988)
!6662 = !DILocation(line: 658, column: 20, scope: !5988)
!6663 = !DILocation(line: 659, column: 33, scope: !5988)
!6664 = !DILocation(line: 659, column: 28, scope: !5988)
!6665 = !DILocation(line: 659, column: 26, scope: !5988)
!6666 = !DILocation(line: 659, column: 7, scope: !5988)
!6667 = !DILocation(line: 659, column: 15, scope: !5988)
!6668 = !DILocation(line: 659, column: 19, scope: !5988)
!6669 = !DILocation(line: 660, column: 47, scope: !5988)
!6670 = !DILocation(line: 660, column: 48, scope: !5988)
!6671 = !DILocation(line: 660, column: 44, scope: !5988)
!6672 = !DILocation(line: 660, column: 61, scope: !5988)
!6673 = !DILocation(line: 660, column: 56, scope: !5988)
!6674 = !DILocation(line: 660, column: 54, scope: !5988)
!6675 = !DILocation(line: 660, column: 7, scope: !5988)
!6676 = !DILocation(line: 660, column: 15, scope: !5988)
!6677 = !DILocation(line: 660, column: 19, scope: !5988)
!6678 = !DILocation(line: 661, column: 7, scope: !5988)
!6679 = !DILocation(line: 661, column: 15, scope: !5988)
!6680 = !DILocation(line: 661, column: 19, scope: !5988)
!6681 = !DILocation(line: 663, column: 10, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !5988, file: !1, line: 663, column: 10)
!6683 = !DILocation(line: 663, column: 12, scope: !6682)
!6684 = !DILocation(line: 663, column: 10, scope: !5988)
!6685 = !DILocation(line: 664, column: 9, scope: !6686)
!6686 = distinct !DILexicalBlock(scope: !6682, file: !1, line: 663, column: 21)
!6687 = distinct !{!6687, !6685}
!6688 = !DILocation(line: 664, column: 9, scope: !6689)
!6689 = !DILexicalBlockFile(scope: !6690, file: !1, discriminator: 1)
!6690 = distinct !DILexicalBlock(scope: !6686, file: !1, line: 664, column: 9)
!6691 = !DILocation(line: 665, column: 7, scope: !6686)
!6692 = !DILocation(line: 667, column: 16, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6682, file: !1, line: 666, column: 12)
!6694 = !DILocation(line: 667, column: 9, scope: !6693)
!6695 = !DILocation(line: 669, column: 1, scope: !5988)
!6696 = distinct !DISubprogram(name: "hyperg_U_small_ab", scope: !1, file: !1, line: 740, type: !3436, isLocal: true, isDefinition: true, scopeLine: 741, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !61)
!6697 = !DILocalVariable(name: "a", arg: 1, scope: !6696, file: !1, line: 740, type: !52)
!6698 = !DILocation(line: 740, column: 32, scope: !6696)
!6699 = !DILocalVariable(name: "b", arg: 2, scope: !6696, file: !1, line: 740, type: !52)
!6700 = !DILocation(line: 740, column: 48, scope: !6696)
!6701 = !DILocalVariable(name: "x", arg: 3, scope: !6696, file: !1, line: 740, type: !52)
!6702 = !DILocation(line: 740, column: 64, scope: !6696)
!6703 = !DILocalVariable(name: "result", arg: 4, scope: !6696, file: !1, line: 740, type: !3400)
!6704 = !DILocation(line: 740, column: 83, scope: !6696)
!6705 = !DILocation(line: 742, column: 6, scope: !6706)
!6706 = distinct !DILexicalBlock(scope: !6696, file: !1, line: 742, column: 6)
!6707 = !DILocation(line: 742, column: 8, scope: !6706)
!6708 = !DILocation(line: 742, column: 6, scope: !6696)
!6709 = !DILocation(line: 745, column: 21, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6706, file: !1, line: 742, column: 17)
!6711 = !DILocation(line: 745, column: 20, scope: !6710)
!6712 = !DILocation(line: 745, column: 25, scope: !6710)
!6713 = !DILocation(line: 745, column: 23, scope: !6710)
!6714 = !DILocation(line: 745, column: 5, scope: !6710)
!6715 = !DILocation(line: 745, column: 13, scope: !6710)
!6716 = !DILocation(line: 745, column: 18, scope: !6710)
!6717 = !DILocation(line: 746, column: 50, scope: !6710)
!6718 = !DILocation(line: 746, column: 45, scope: !6710)
!6719 = !DILocation(line: 746, column: 60, scope: !6710)
!6720 = !DILocation(line: 746, column: 55, scope: !6721)
!6721 = !DILexicalBlockFile(scope: !6710, file: !1, discriminator: 1)
!6722 = !DILocation(line: 746, column: 53, scope: !6710)
!6723 = !DILocation(line: 746, column: 42, scope: !6710)
!6724 = !DILocation(line: 746, column: 5, scope: !6710)
!6725 = !DILocation(line: 746, column: 13, scope: !6710)
!6726 = !DILocation(line: 746, column: 18, scope: !6710)
!6727 = !DILocation(line: 747, column: 49, scope: !6710)
!6728 = !DILocation(line: 747, column: 57, scope: !6710)
!6729 = !DILocation(line: 747, column: 44, scope: !6710)
!6730 = !DILocation(line: 747, column: 42, scope: !6710)
!6731 = !DILocation(line: 747, column: 5, scope: !6710)
!6732 = !DILocation(line: 747, column: 13, scope: !6710)
!6733 = !DILocation(line: 747, column: 17, scope: !6710)
!6734 = !DILocation(line: 748, column: 5, scope: !6710)
!6735 = !DILocation(line: 750, column: 11, scope: !6736)
!6736 = distinct !DILexicalBlock(scope: !6706, file: !1, line: 750, column: 11)
!6737 = !DILocation(line: 750, column: 13, scope: !6736)
!6738 = !DILocation(line: 750, column: 11, scope: !6706)
!6739 = !DILocation(line: 753, column: 5, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6736, file: !1, line: 750, column: 21)
!6741 = !DILocation(line: 753, column: 13, scope: !6740)
!6742 = !DILocation(line: 753, column: 17, scope: !6740)
!6743 = !DILocation(line: 754, column: 5, scope: !6740)
!6744 = !DILocation(line: 754, column: 13, scope: !6740)
!6745 = !DILocation(line: 754, column: 17, scope: !6740)
!6746 = !DILocation(line: 755, column: 5, scope: !6740)
!6747 = !DILocation(line: 757, column: 11, scope: !6748)
!6748 = distinct !DILexicalBlock(scope: !6736, file: !1, line: 757, column: 11)
!6749 = !DILocation(line: 757, column: 11, scope: !6750)
!6750 = !DILexicalBlockFile(scope: !6748, file: !1, discriminator: 1)
!6751 = !DILocation(line: 757, column: 11, scope: !6752)
!6752 = !DILexicalBlockFile(scope: !6748, file: !1, discriminator: 2)
!6753 = !DILocation(line: 757, column: 11, scope: !6754)
!6754 = !DILexicalBlockFile(scope: !6748, file: !1, discriminator: 3)
!6755 = !DILocation(line: 757, column: 11, scope: !6756)
!6756 = !DILexicalBlockFile(scope: !6748, file: !1, discriminator: 4)
!6757 = !DILocation(line: 757, column: 11, scope: !6736)
!6758 = !DILocalVariable(name: "p", scope: !6759, file: !1, line: 758, type: !42)
!6759 = distinct !DILexicalBlock(scope: !6748, file: !1, line: 757, column: 33)
!6760 = !DILocation(line: 758, column: 12, scope: !6759)
!6761 = !DILocation(line: 758, column: 20, scope: !6759)
!6762 = !DILocation(line: 758, column: 24, scope: !6759)
!6763 = !DILocation(line: 758, column: 23, scope: !6759)
!6764 = !DILocation(line: 758, column: 16, scope: !6759)
!6765 = !DILocalVariable(name: "asymp", scope: !6759, file: !1, line: 759, type: !378)
!6766 = !DILocation(line: 759, column: 19, scope: !6759)
!6767 = !DILocalVariable(name: "stat_asymp", scope: !6759, file: !1, line: 760, type: !43)
!6768 = !DILocation(line: 760, column: 9, scope: !6759)
!6769 = !DILocation(line: 760, column: 39, scope: !6759)
!6770 = !DILocation(line: 760, column: 42, scope: !6759)
!6771 = !DILocation(line: 760, column: 45, scope: !6759)
!6772 = !DILocation(line: 760, column: 22, scope: !6759)
!6773 = !DILocation(line: 761, column: 26, scope: !6759)
!6774 = !DILocation(line: 761, column: 32, scope: !6759)
!6775 = !DILocation(line: 761, column: 30, scope: !6759)
!6776 = !DILocation(line: 761, column: 5, scope: !6759)
!6777 = !DILocation(line: 761, column: 13, scope: !6759)
!6778 = !DILocation(line: 761, column: 18, scope: !6759)
!6779 = !DILocation(line: 762, column: 26, scope: !6759)
!6780 = !DILocation(line: 762, column: 32, scope: !6759)
!6781 = !DILocation(line: 762, column: 30, scope: !6759)
!6782 = !DILocation(line: 762, column: 5, scope: !6759)
!6783 = !DILocation(line: 762, column: 13, scope: !6759)
!6784 = !DILocation(line: 762, column: 18, scope: !6759)
!6785 = !DILocation(line: 763, column: 31, scope: !6759)
!6786 = !DILocation(line: 763, column: 20, scope: !6759)
!6787 = !DILocation(line: 763, column: 36, scope: !6759)
!6788 = !DILocation(line: 763, column: 61, scope: !6759)
!6789 = !DILocation(line: 763, column: 56, scope: !6790)
!6790 = !DILexicalBlockFile(scope: !6759, file: !1, discriminator: 1)
!6791 = !DILocation(line: 763, column: 54, scope: !6759)
!6792 = !DILocation(line: 763, column: 66, scope: !6759)
!6793 = !DILocation(line: 763, column: 64, scope: !6759)
!6794 = !DILocation(line: 763, column: 5, scope: !6759)
!6795 = !DILocation(line: 763, column: 13, scope: !6759)
!6796 = !DILocation(line: 763, column: 17, scope: !6759)
!6797 = !DILocation(line: 764, column: 49, scope: !6759)
!6798 = !DILocation(line: 764, column: 57, scope: !6759)
!6799 = !DILocation(line: 764, column: 44, scope: !6759)
!6800 = !DILocation(line: 764, column: 42, scope: !6759)
!6801 = !DILocation(line: 764, column: 5, scope: !6759)
!6802 = !DILocation(line: 764, column: 13, scope: !6759)
!6803 = !DILocation(line: 764, column: 17, scope: !6759)
!6804 = !DILocation(line: 765, column: 12, scope: !6759)
!6805 = !DILocation(line: 765, column: 5, scope: !6759)
!6806 = !DILocation(line: 768, column: 28, scope: !6807)
!6807 = distinct !DILexicalBlock(scope: !6748, file: !1, line: 767, column: 8)
!6808 = !DILocation(line: 768, column: 31, scope: !6807)
!6809 = !DILocation(line: 768, column: 34, scope: !6807)
!6810 = !DILocation(line: 768, column: 37, scope: !6807)
!6811 = !DILocation(line: 768, column: 12, scope: !6807)
!6812 = !DILocation(line: 768, column: 5, scope: !6807)
!6813 = !DILocation(line: 770, column: 1, scope: !6696)
