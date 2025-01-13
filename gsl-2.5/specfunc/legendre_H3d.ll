; ModuleID = 'legendre_H3d.c'
source_filename = "legendre_H3d.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"legendre_H3d.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"gsl_sf_legendre_H3d_0_e(lambda, eta, &result)\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"gsl_sf_legendre_H3d_1_e(lambda, eta, &result)\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"gsl_sf_legendre_H3d_e(l, lambda, eta, &result)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_H3d_0_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !59, metadata !60), !dbg !61
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !62, metadata !60), !dbg !63
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !64, metadata !60), !dbg !65
  %12 = load double, double* %6, align 8, !dbg !66
  %13 = fcmp olt double %12, 0.000000e+00, !dbg !68
  br i1 %13, label %14, label %23, !dbg !69

; <label>:14:                                     ; preds = %3
  br label %15, !dbg !70, !llvm.loop !72

; <label>:15:                                     ; preds = %14
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !73
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !73
  store double 0x7FF8000000000000, double* %17, align 8, !dbg !73
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !73
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !73
  store double 0x7FF8000000000000, double* %19, align 8, !dbg !73
  br label %20, !dbg !73, !llvm.loop !76

; <label>:20:                                     ; preds = %15
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 253, i32 1), !dbg !78
  store i32 1, i32* %4, align 4, !dbg !78
  br label %131, !dbg !78
                                                  ; No predecessors!
  br label %22, !dbg !81

; <label>:22:                                     ; preds = %21
  br label %131, !dbg !83

; <label>:23:                                     ; preds = %3
  %24 = load double, double* %6, align 8, !dbg !84
  %25 = fcmp oeq double %24, 0.000000e+00, !dbg !86
  br i1 %25, label %29, label %26, !dbg !87

; <label>:26:                                     ; preds = %23
  %27 = load double, double* %5, align 8, !dbg !88
  %28 = fcmp oeq double %27, 0.000000e+00, !dbg !90
  br i1 %28, label %29, label %34, !dbg !91

; <label>:29:                                     ; preds = %26, %23
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !92
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !94
  store double 1.000000e+00, double* %31, align 8, !dbg !95
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !96
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 1, !dbg !97
  store double 0.000000e+00, double* %33, align 8, !dbg !98
  store i32 0, i32* %4, align 4, !dbg !99
  br label %131, !dbg !99

; <label>:34:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata double* %8, metadata !100, metadata !60), !dbg !102
  %35 = load double, double* %5, align 8, !dbg !103
  %36 = load double, double* %6, align 8, !dbg !104
  %37 = fmul double %35, %36, !dbg !105
  store double %37, double* %8, align 8, !dbg !102
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %9, metadata !106, metadata !60), !dbg !107
  %38 = load double, double* %8, align 8, !dbg !108
  %39 = load double, double* %8, align 8, !dbg !109
  %40 = call double @fabs(double %39) #1, !dbg !110
  %41 = fmul double 0x3CC0000000000000, %40, !dbg !111
  %42 = call i32 @gsl_sf_sin_err_e(double %38, double %41, %struct.gsl_sf_result_struct* %9), !dbg !112
  %43 = load double, double* %6, align 8, !dbg !114
  %44 = fcmp ogt double %43, 0x403205966F2B4F12, !dbg !116
  br i1 %44, label %45, label %88, !dbg !117

; <label>:45:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata double* %10, metadata !118, metadata !60), !dbg !120
  %46 = load double, double* %5, align 8, !dbg !121
  %47 = fdiv double 2.000000e+00, %46, !dbg !122
  %48 = load double, double* %6, align 8, !dbg !123
  %49 = fsub double -0.000000e+00, %48, !dbg !124
  %50 = call double @exp(double %49) #5, !dbg !125
  %51 = fmul double %47, %50, !dbg !126
  store double %51, double* %10, align 8, !dbg !120
  %52 = load double, double* %10, align 8, !dbg !127
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !128
  %54 = load double, double* %53, align 8, !dbg !128
  %55 = fmul double %52, %54, !dbg !129
  %56 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !130
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %56, i32 0, i32 0, !dbg !131
  store double %55, double* %57, align 8, !dbg !132
  %58 = load double, double* %10, align 8, !dbg !133
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !134
  %60 = load double, double* %59, align 8, !dbg !134
  %61 = fmul double %58, %60, !dbg !135
  %62 = call double @fabs(double %61) #1, !dbg !136
  %63 = load double, double* %6, align 8, !dbg !137
  %64 = call double @fabs(double %63) #1, !dbg !138
  %65 = fadd double %64, 1.000000e+00, !dbg !140
  %66 = fmul double %62, %65, !dbg !141
  %67 = fmul double %66, 0x3CB0000000000000, !dbg !142
  %68 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !143
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %68, i32 0, i32 1, !dbg !144
  store double %67, double* %69, align 8, !dbg !145
  %70 = load double, double* %10, align 8, !dbg !146
  %71 = call double @fabs(double %70) #1, !dbg !147
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !148
  %73 = load double, double* %72, align 8, !dbg !148
  %74 = fmul double %71, %73, !dbg !149
  %75 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !150
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %75, i32 0, i32 1, !dbg !151
  %77 = load double, double* %76, align 8, !dbg !152
  %78 = fadd double %77, %74, !dbg !152
  store double %78, double* %76, align 8, !dbg !152
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !153
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 0, !dbg !154
  %81 = load double, double* %80, align 8, !dbg !154
  %82 = call double @fabs(double %81) #1, !dbg !155
  %83 = fmul double 0x3CC0000000000000, %82, !dbg !156
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !157
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 1, !dbg !158
  %86 = load double, double* %85, align 8, !dbg !159
  %87 = fadd double %86, %83, !dbg !159
  store double %87, double* %85, align 8, !dbg !159
  br label %130, !dbg !160

; <label>:88:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata double* %11, metadata !161, metadata !60), !dbg !163
  %89 = load double, double* %5, align 8, !dbg !164
  %90 = load double, double* %6, align 8, !dbg !165
  %91 = call double @sinh(double %90) #5, !dbg !166
  %92 = fmul double %89, %91, !dbg !167
  %93 = fdiv double 1.000000e+00, %92, !dbg !168
  store double %93, double* %11, align 8, !dbg !163
  %94 = load double, double* %11, align 8, !dbg !169
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !170
  %96 = load double, double* %95, align 8, !dbg !170
  %97 = fmul double %94, %96, !dbg !171
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !172
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 0, !dbg !173
  store double %97, double* %99, align 8, !dbg !174
  %100 = load double, double* %11, align 8, !dbg !175
  %101 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 0, !dbg !176
  %102 = load double, double* %101, align 8, !dbg !176
  %103 = fmul double %100, %102, !dbg !177
  %104 = call double @fabs(double %103) #1, !dbg !178
  %105 = load double, double* %6, align 8, !dbg !179
  %106 = call double @fabs(double %105) #1, !dbg !180
  %107 = fadd double %106, 1.000000e+00, !dbg !182
  %108 = fmul double %104, %107, !dbg !183
  %109 = fmul double %108, 0x3CB0000000000000, !dbg !184
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !185
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 1, !dbg !186
  store double %109, double* %111, align 8, !dbg !187
  %112 = load double, double* %11, align 8, !dbg !188
  %113 = call double @fabs(double %112) #1, !dbg !189
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %9, i32 0, i32 1, !dbg !190
  %115 = load double, double* %114, align 8, !dbg !190
  %116 = fmul double %113, %115, !dbg !191
  %117 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !192
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %117, i32 0, i32 1, !dbg !193
  %119 = load double, double* %118, align 8, !dbg !194
  %120 = fadd double %119, %116, !dbg !194
  store double %120, double* %118, align 8, !dbg !194
  %121 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !195
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %121, i32 0, i32 0, !dbg !196
  %123 = load double, double* %122, align 8, !dbg !196
  %124 = call double @fabs(double %123) #1, !dbg !197
  %125 = fmul double 0x3CC0000000000000, %124, !dbg !198
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !199
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 1, !dbg !200
  %128 = load double, double* %127, align 8, !dbg !201
  %129 = fadd double %128, %125, !dbg !201
  store double %129, double* %127, align 8, !dbg !201
  br label %130

; <label>:130:                                    ; preds = %88, %45
  store i32 0, i32* %4, align 4, !dbg !202
  br label %131, !dbg !202

; <label>:131:                                    ; preds = %20, %29, %130, %22
  %132 = load i32, i32* %4, align 4, !dbg !203
  ret i32 %132, !dbg !203
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

declare i32 @gsl_sf_sin_err_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind
declare double @sinh(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_H3d_1_e(double, double, %struct.gsl_sf_result_struct*) #0 !dbg !204 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
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
  %28 = alloca %struct.gsl_sf_result_struct, align 8
  %29 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !205, metadata !60), !dbg !206
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !207, metadata !60), !dbg !208
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !209, metadata !60), !dbg !210
  call void @llvm.dbg.declare(metadata double* %8, metadata !211, metadata !60), !dbg !212
  %30 = load double, double* %6, align 8, !dbg !213
  %31 = load double, double* %5, align 8, !dbg !214
  %32 = fmul double %30, %31, !dbg !215
  %33 = call double @fabs(double %32) #1, !dbg !216
  store double %33, double* %8, align 8, !dbg !212
  call void @llvm.dbg.declare(metadata double* %9, metadata !217, metadata !60), !dbg !218
  %34 = load double, double* %5, align 8, !dbg !219
  %35 = load double, double* %5, align 8, !dbg !220
  %36 = fmul double %34, %35, !dbg !221
  store double %36, double* %9, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata double* %10, metadata !222, metadata !60), !dbg !223
  %37 = load double, double* %9, align 8, !dbg !224
  %38 = fadd double %37, 1.000000e+00, !dbg !225
  store double %38, double* %10, align 8, !dbg !223
  %39 = load double, double* %6, align 8, !dbg !226
  %40 = fcmp olt double %39, 0.000000e+00, !dbg !228
  br i1 %40, label %41, label %50, !dbg !229

; <label>:41:                                     ; preds = %3
  br label %42, !dbg !230, !llvm.loop !232

; <label>:42:                                     ; preds = %41
  %43 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !233
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %43, i32 0, i32 0, !dbg !233
  store double 0x7FF8000000000000, double* %44, align 8, !dbg !233
  %45 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !233
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %45, i32 0, i32 1, !dbg !233
  store double 0x7FF8000000000000, double* %46, align 8, !dbg !233
  br label %47, !dbg !233, !llvm.loop !236

; <label>:47:                                     ; preds = %42
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 293, i32 1), !dbg !238
  store i32 1, i32* %4, align 4, !dbg !238
  br label %281, !dbg !238
                                                  ; No predecessors!
  br label %49, !dbg !241

; <label>:49:                                     ; preds = %48
  br label %281, !dbg !243

; <label>:50:                                     ; preds = %3
  %51 = load double, double* %6, align 8, !dbg !244
  %52 = fcmp oeq double %51, 0.000000e+00, !dbg !246
  br i1 %52, label %56, label %53, !dbg !247

; <label>:53:                                     ; preds = %50
  %54 = load double, double* %5, align 8, !dbg !248
  %55 = fcmp oeq double %54, 0.000000e+00, !dbg !250
  br i1 %55, label %56, label %61, !dbg !251

; <label>:56:                                     ; preds = %53, %50
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !252
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 0, !dbg !254
  store double 0.000000e+00, double* %58, align 8, !dbg !255
  %59 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !256
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %59, i32 0, i32 1, !dbg !257
  store double 0.000000e+00, double* %60, align 8, !dbg !258
  store i32 0, i32* %4, align 4, !dbg !259
  br label %281, !dbg !259

; <label>:61:                                     ; preds = %53
  %62 = load double, double* %8, align 8, !dbg !260
  %63 = fcmp olt double %62, 0x3F48406003B2AE5A, !dbg !262
  br i1 %63, label %64, label %137, !dbg !263

; <label>:64:                                     ; preds = %61
  %65 = load double, double* %6, align 8, !dbg !264
  %66 = fcmp olt double %65, 0x3F48406003B2AE5A, !dbg !266
  br i1 %66, label %67, label %137, !dbg !267

; <label>:67:                                     ; preds = %64
  call void @llvm.dbg.declare(metadata double* %11, metadata !268, metadata !60), !dbg !270
  %68 = load double, double* %6, align 8, !dbg !271
  %69 = load double, double* %6, align 8, !dbg !272
  %70 = fmul double %68, %69, !dbg !273
  store double %70, double* %11, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata double* %12, metadata !274, metadata !60), !dbg !275
  %71 = load double, double* %8, align 8, !dbg !276
  %72 = load double, double* %8, align 8, !dbg !277
  %73 = fmul double %71, %72, !dbg !278
  store double %73, double* %12, align 8, !dbg !275
  call void @llvm.dbg.declare(metadata double* %13, metadata !279, metadata !60), !dbg !280
  %74 = load double, double* %11, align 8, !dbg !281
  %75 = load double, double* %12, align 8, !dbg !282
  %76 = fadd double %74, %75, !dbg !283
  %77 = fdiv double %76, 3.000000e+00, !dbg !284
  store double %77, double* %13, align 8, !dbg !280
  call void @llvm.dbg.declare(metadata double* %14, metadata !285, metadata !60), !dbg !286
  %78 = load double, double* %11, align 8, !dbg !287
  %79 = fmul double 2.000000e+00, %78, !dbg !288
  %80 = load double, double* %11, align 8, !dbg !289
  %81 = fmul double %79, %80, !dbg !290
  %82 = load double, double* %11, align 8, !dbg !291
  %83 = fmul double 5.000000e+00, %82, !dbg !292
  %84 = load double, double* %12, align 8, !dbg !293
  %85 = fmul double %83, %84, !dbg !294
  %86 = fadd double %81, %85, !dbg !295
  %87 = load double, double* %12, align 8, !dbg !296
  %88 = fmul double 3.000000e+00, %87, !dbg !297
  %89 = load double, double* %12, align 8, !dbg !298
  %90 = fmul double %88, %89, !dbg !299
  %91 = fadd double %86, %90, !dbg !300
  %92 = fsub double -0.000000e+00, %91, !dbg !301
  %93 = fdiv double %92, 9.000000e+01, !dbg !302
  store double %93, double* %14, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata double* %15, metadata !303, metadata !60), !dbg !304
  %94 = load double, double* %6, align 8, !dbg !305
  %95 = load double, double* %6, align 8, !dbg !306
  %96 = fmul double %94, %95, !dbg !307
  %97 = fdiv double %96, 6.000000e+00, !dbg !308
  %98 = load double, double* %6, align 8, !dbg !309
  %99 = fmul double 0x3FBDDDDDDDDDDDDE, %98, !dbg !310
  %100 = load double, double* %6, align 8, !dbg !311
  %101 = fmul double %99, %100, !dbg !312
  %102 = fsub double 1.000000e+00, %101, !dbg !313
  %103 = fmul double %97, %102, !dbg !314
  %104 = fsub double 1.000000e+00, %103, !dbg !315
  store double %104, double* %15, align 8, !dbg !304
  call void @llvm.dbg.declare(metadata double* %16, metadata !316, metadata !60), !dbg !317
  %105 = load double, double* %15, align 8, !dbg !318
  %106 = load double, double* %10, align 8, !dbg !319
  %107 = call double @sqrt(double %106) #5, !dbg !320
  %108 = fdiv double %105, %107, !dbg !321
  %109 = load double, double* %6, align 8, !dbg !322
  %110 = fdiv double %108, %109, !dbg !323
  store double %110, double* %16, align 8, !dbg !317
  %111 = load double, double* %16, align 8, !dbg !324
  %112 = load double, double* %13, align 8, !dbg !325
  %113 = load double, double* %14, align 8, !dbg !326
  %114 = fadd double %112, %113, !dbg !327
  %115 = fmul double %111, %114, !dbg !328
  %116 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !329
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %116, i32 0, i32 0, !dbg !330
  store double %115, double* %117, align 8, !dbg !331
  %118 = load double, double* %16, align 8, !dbg !332
  %119 = fmul double %118, 0x3CB0000000000000, !dbg !333
  %120 = load double, double* %13, align 8, !dbg !334
  %121 = call double @fabs(double %120) #1, !dbg !335
  %122 = load double, double* %14, align 8, !dbg !336
  %123 = call double @fabs(double %122) #1, !dbg !337
  %124 = fadd double %121, %123, !dbg !339
  %125 = fmul double %119, %124, !dbg !340
  %126 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !341
  %127 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %126, i32 0, i32 1, !dbg !342
  store double %125, double* %127, align 8, !dbg !343
  %128 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !344
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %128, i32 0, i32 0, !dbg !345
  %130 = load double, double* %129, align 8, !dbg !345
  %131 = call double @fabs(double %130) #1, !dbg !346
  %132 = fmul double 0x3CC0000000000000, %131, !dbg !347
  %133 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !348
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %133, i32 0, i32 1, !dbg !349
  %135 = load double, double* %134, align 8, !dbg !350
  %136 = fadd double %135, %132, !dbg !350
  store double %136, double* %134, align 8, !dbg !350
  store i32 0, i32* %4, align 4, !dbg !351
  br label %281, !dbg !351

; <label>:137:                                    ; preds = %64, %61
  call void @llvm.dbg.declare(metadata double* %17, metadata !352, metadata !60), !dbg !354
  call void @llvm.dbg.declare(metadata double* %18, metadata !355, metadata !60), !dbg !356
  call void @llvm.dbg.declare(metadata double* %19, metadata !357, metadata !60), !dbg !358
  call void @llvm.dbg.declare(metadata double* %20, metadata !359, metadata !60), !dbg !360
  call void @llvm.dbg.declare(metadata double* %21, metadata !361, metadata !60), !dbg !362
  call void @llvm.dbg.declare(metadata double* %22, metadata !363, metadata !60), !dbg !364
  call void @llvm.dbg.declare(metadata double* %23, metadata !365, metadata !60), !dbg !366
  call void @llvm.dbg.declare(metadata double* %24, metadata !367, metadata !60), !dbg !368
  call void @llvm.dbg.declare(metadata double* %25, metadata !369, metadata !60), !dbg !370
  call void @llvm.dbg.declare(metadata double* %26, metadata !371, metadata !60), !dbg !372
  call void @llvm.dbg.declare(metadata double* %27, metadata !373, metadata !60), !dbg !374
  %138 = load double, double* %8, align 8, !dbg !375
  %139 = fcmp olt double %138, 0x3F48406003B2AE5A, !dbg !377
  br i1 %139, label %140, label %163, !dbg !378

; <label>:140:                                    ; preds = %137
  %141 = load double, double* %8, align 8, !dbg !379
  %142 = load double, double* %8, align 8, !dbg !381
  %143 = fmul double %141, %142, !dbg !382
  %144 = fdiv double %143, 6.000000e+00, !dbg !383
  %145 = load double, double* %8, align 8, !dbg !384
  %146 = load double, double* %8, align 8, !dbg !385
  %147 = fmul double %145, %146, !dbg !386
  %148 = fdiv double %147, 2.000000e+01, !dbg !387
  %149 = fsub double 1.000000e+00, %148, !dbg !388
  %150 = fmul double %144, %149, !dbg !389
  %151 = fsub double 1.000000e+00, %150, !dbg !390
  store double %151, double* %17, align 8, !dbg !391
  %152 = load double, double* %8, align 8, !dbg !392
  %153 = fmul double 5.000000e-01, %152, !dbg !393
  %154 = load double, double* %8, align 8, !dbg !394
  %155 = fmul double %153, %154, !dbg !395
  %156 = load double, double* %8, align 8, !dbg !396
  %157 = load double, double* %8, align 8, !dbg !397
  %158 = fmul double %156, %157, !dbg !398
  %159 = fdiv double %158, 1.200000e+01, !dbg !399
  %160 = fsub double 1.000000e+00, %159, !dbg !400
  %161 = fmul double %155, %160, !dbg !401
  %162 = fsub double 1.000000e+00, %161, !dbg !402
  store double %162, double* %18, align 8, !dbg !403
  store double 0x3CB0000000000000, double* %21, align 8, !dbg !404
  store double 0x3CB0000000000000, double* %22, align 8, !dbg !405
  br label %181, !dbg !406

; <label>:163:                                    ; preds = %137
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %28, metadata !407, metadata !60), !dbg !409
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %29, metadata !410, metadata !60), !dbg !411
  %164 = load double, double* %8, align 8, !dbg !412
  %165 = call i32 @gsl_sf_sin_e(double %164, %struct.gsl_sf_result_struct* %28), !dbg !413
  %166 = load double, double* %8, align 8, !dbg !414
  %167 = call i32 @gsl_sf_cos_e(double %166, %struct.gsl_sf_result_struct* %29), !dbg !415
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !416
  %169 = load double, double* %168, align 8, !dbg !416
  %170 = load double, double* %8, align 8, !dbg !417
  %171 = fdiv double %169, %170, !dbg !418
  store double %171, double* %17, align 8, !dbg !419
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 0, !dbg !420
  %173 = load double, double* %172, align 8, !dbg !420
  store double %173, double* %18, align 8, !dbg !421
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !422
  %175 = load double, double* %174, align 8, !dbg !422
  %176 = load double, double* %8, align 8, !dbg !423
  %177 = call double @fabs(double %176) #1, !dbg !424
  %178 = fdiv double %175, %177, !dbg !425
  store double %178, double* %21, align 8, !dbg !426
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !427
  %180 = load double, double* %179, align 8, !dbg !427
  store double %180, double* %22, align 8, !dbg !428
  br label %181

; <label>:181:                                    ; preds = %163, %140
  %182 = load double, double* %6, align 8, !dbg !429
  %183 = fcmp olt double %182, 0x3F48406003B2AE5A, !dbg !431
  br i1 %183, label %184, label %207, !dbg !432

; <label>:184:                                    ; preds = %181
  %185 = load double, double* %6, align 8, !dbg !433
  %186 = load double, double* %6, align 8, !dbg !435
  %187 = fmul double %185, %186, !dbg !436
  %188 = fdiv double %187, 3.000000e+00, !dbg !437
  %189 = load double, double* %6, align 8, !dbg !438
  %190 = load double, double* %6, align 8, !dbg !439
  %191 = fmul double %189, %190, !dbg !440
  %192 = fdiv double %191, 1.500000e+01, !dbg !441
  %193 = fsub double 1.000000e+00, %192, !dbg !442
  %194 = fmul double %188, %193, !dbg !443
  %195 = fadd double 1.000000e+00, %194, !dbg !444
  store double %195, double* %19, align 8, !dbg !445
  %196 = load double, double* %6, align 8, !dbg !446
  %197 = load double, double* %6, align 8, !dbg !447
  %198 = fmul double %196, %197, !dbg !448
  %199 = fdiv double %198, 6.000000e+00, !dbg !449
  %200 = load double, double* %6, align 8, !dbg !450
  %201 = fmul double 0x3FBDDDDDDDDDDDDE, %200, !dbg !451
  %202 = load double, double* %6, align 8, !dbg !452
  %203 = fmul double %201, %202, !dbg !453
  %204 = fsub double 1.000000e+00, %203, !dbg !454
  %205 = fmul double %199, %204, !dbg !455
  %206 = fsub double 1.000000e+00, %205, !dbg !456
  store double %206, double* %20, align 8, !dbg !457
  br label %216, !dbg !458

; <label>:207:                                    ; preds = %181
  %208 = load double, double* %6, align 8, !dbg !459
  %209 = load double, double* %6, align 8, !dbg !461
  %210 = call double @tanh(double %209) #5, !dbg !462
  %211 = fdiv double %208, %210, !dbg !463
  store double %211, double* %19, align 8, !dbg !464
  %212 = load double, double* %6, align 8, !dbg !465
  %213 = load double, double* %6, align 8, !dbg !466
  %214 = call double @sinh(double %213) #5, !dbg !467
  %215 = fdiv double %212, %214, !dbg !468
  store double %215, double* %20, align 8, !dbg !469
  br label %216

; <label>:216:                                    ; preds = %207, %184
  %217 = load double, double* %10, align 8, !dbg !470
  %218 = call double @sqrt(double %217) #5, !dbg !471
  %219 = load double, double* %6, align 8, !dbg !472
  %220 = fmul double %218, %219, !dbg !473
  store double %220, double* %23, align 8, !dbg !474
  %221 = load double, double* %20, align 8, !dbg !475
  %222 = load double, double* %23, align 8, !dbg !476
  %223 = fdiv double %221, %222, !dbg !477
  store double %223, double* %24, align 8, !dbg !478
  %224 = load double, double* %24, align 8, !dbg !479
  %225 = call double @fabs(double %224) #1, !dbg !480
  %226 = fmul double 0x3CC0000000000000, %225, !dbg !481
  store double %226, double* %25, align 8, !dbg !482
  %227 = load double, double* %17, align 8, !dbg !483
  %228 = load double, double* %19, align 8, !dbg !484
  %229 = fmul double %227, %228, !dbg !485
  store double %229, double* %26, align 8, !dbg !486
  %230 = load double, double* %18, align 8, !dbg !487
  store double %230, double* %27, align 8, !dbg !488
  %231 = load double, double* %24, align 8, !dbg !489
  %232 = load double, double* %26, align 8, !dbg !490
  %233 = load double, double* %27, align 8, !dbg !491
  %234 = fsub double %232, %233, !dbg !492
  %235 = fmul double %231, %234, !dbg !493
  %236 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !494
  %237 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %236, i32 0, i32 0, !dbg !495
  store double %235, double* %237, align 8, !dbg !496
  %238 = load double, double* %25, align 8, !dbg !497
  %239 = load double, double* %26, align 8, !dbg !498
  %240 = load double, double* %27, align 8, !dbg !499
  %241 = fsub double %239, %240, !dbg !500
  %242 = call double @fabs(double %241) #1, !dbg !501
  %243 = fmul double %238, %242, !dbg !502
  %244 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !503
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %244, i32 0, i32 1, !dbg !504
  store double %243, double* %245, align 8, !dbg !505
  %246 = load double, double* %24, align 8, !dbg !506
  %247 = load double, double* %21, align 8, !dbg !507
  %248 = load double, double* %19, align 8, !dbg !508
  %249 = fmul double %247, %248, !dbg !509
  %250 = load double, double* %22, align 8, !dbg !510
  %251 = fadd double %249, %250, !dbg !511
  %252 = fmul double %246, %251, !dbg !512
  %253 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !513
  %254 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %253, i32 0, i32 1, !dbg !514
  %255 = load double, double* %254, align 8, !dbg !515
  %256 = fadd double %255, %252, !dbg !515
  store double %256, double* %254, align 8, !dbg !515
  %257 = load double, double* %24, align 8, !dbg !516
  %258 = load double, double* %26, align 8, !dbg !517
  %259 = load double, double* %27, align 8, !dbg !518
  %260 = fsub double %258, %259, !dbg !519
  %261 = call double @fabs(double %260) #1, !dbg !520
  %262 = fmul double %257, %261, !dbg !521
  %263 = load double, double* %6, align 8, !dbg !522
  %264 = call double @fabs(double %263) #1, !dbg !523
  %265 = fadd double %264, 1.000000e+00, !dbg !525
  %266 = fmul double %262, %265, !dbg !526
  %267 = fmul double %266, 0x3CB0000000000000, !dbg !527
  %268 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !528
  %269 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %268, i32 0, i32 1, !dbg !529
  %270 = load double, double* %269, align 8, !dbg !530
  %271 = fadd double %270, %267, !dbg !530
  store double %271, double* %269, align 8, !dbg !530
  %272 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !531
  %273 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %272, i32 0, i32 0, !dbg !532
  %274 = load double, double* %273, align 8, !dbg !532
  %275 = call double @fabs(double %274) #1, !dbg !533
  %276 = fmul double 0x3CC0000000000000, %275, !dbg !534
  %277 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !535
  %278 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %277, i32 0, i32 1, !dbg !536
  %279 = load double, double* %278, align 8, !dbg !537
  %280 = fadd double %279, %276, !dbg !537
  store double %280, double* %278, align 8, !dbg !537
  store i32 0, i32* %4, align 4, !dbg !538
  br label %281, !dbg !538

; <label>:281:                                    ; preds = %47, %56, %67, %216, %49
  %282 = load i32, i32* %4, align 4, !dbg !539
  ret i32 %282, !dbg !539
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @gsl_sf_sin_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_cos_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @tanh(double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_H3d_e(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !540 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.gsl_sf_result_struct, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca %struct.gsl_sf_result_struct, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca %struct.gsl_sf_result_struct, align 8
  %35 = alloca i32, align 4
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca i32, align 4
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  %42 = alloca %struct.gsl_sf_result_struct, align 8
  %43 = alloca i32, align 4
  %44 = alloca %struct.gsl_sf_result_struct, align 8
  %45 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !544, metadata !60), !dbg !545
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !546, metadata !60), !dbg !547
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !548, metadata !60), !dbg !549
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !550, metadata !60), !dbg !551
  call void @llvm.dbg.declare(metadata double* %10, metadata !552, metadata !60), !dbg !553
  %46 = load double, double* %7, align 8, !dbg !554
  %47 = call double @fabs(double %46) #1, !dbg !555
  store double %47, double* %10, align 8, !dbg !553
  call void @llvm.dbg.declare(metadata double* %11, metadata !556, metadata !60), !dbg !557
  %48 = load double, double* %10, align 8, !dbg !558
  %49 = load double, double* %10, align 8, !dbg !559
  %50 = fmul double %48, %49, !dbg !560
  store double %50, double* %11, align 8, !dbg !557
  call void @llvm.dbg.declare(metadata double* %12, metadata !561, metadata !60), !dbg !562
  %51 = load double, double* %10, align 8, !dbg !563
  %52 = load double, double* %8, align 8, !dbg !564
  %53 = fmul double %51, %52, !dbg !565
  store double %53, double* %12, align 8, !dbg !562
  call void @llvm.dbg.declare(metadata double* %13, metadata !566, metadata !60), !dbg !567
  %54 = load double, double* %8, align 8, !dbg !568
  %55 = call double @cosh(double %54) #5, !dbg !569
  store double %55, double* %13, align 8, !dbg !567
  %56 = load double, double* %8, align 8, !dbg !570
  %57 = fcmp olt double %56, 0.000000e+00, !dbg !572
  br i1 %57, label %58, label %67, !dbg !573

; <label>:58:                                     ; preds = %4
  br label %59, !dbg !574, !llvm.loop !576

; <label>:59:                                     ; preds = %58
  %60 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !577
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %60, i32 0, i32 0, !dbg !577
  store double 0x7FF8000000000000, double* %61, align 8, !dbg !577
  %62 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !577
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %62, i32 0, i32 1, !dbg !577
  store double 0x7FF8000000000000, double* %63, align 8, !dbg !577
  br label %64, !dbg !577, !llvm.loop !580

; <label>:64:                                     ; preds = %59
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 375, i32 1), !dbg !582
  store i32 1, i32* %5, align 4, !dbg !582
  br label %468, !dbg !582
                                                  ; No predecessors!
  br label %66, !dbg !585

; <label>:66:                                     ; preds = %65
  br label %468, !dbg !587

; <label>:67:                                     ; preds = %4
  %68 = load double, double* %8, align 8, !dbg !588
  %69 = fcmp ogt double %68, 0x40862E42FEFA39EF, !dbg !590
  br i1 %69, label %70, label %79, !dbg !591

; <label>:70:                                     ; preds = %67
  br label %71, !dbg !592, !llvm.loop !594

; <label>:71:                                     ; preds = %70
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !595
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !595
  store double 0x7FF0000000000000, double* %73, align 8, !dbg !595
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !595
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 1, !dbg !595
  store double 0x7FF0000000000000, double* %75, align 8, !dbg !595
  br label %76, !dbg !595, !llvm.loop !598

; <label>:76:                                     ; preds = %71
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 379, i32 16), !dbg !600
  store i32 16, i32* %5, align 4, !dbg !600
  br label %468, !dbg !600
                                                  ; No predecessors!
  br label %78, !dbg !603

; <label>:78:                                     ; preds = %77
  br label %467, !dbg !605

; <label>:79:                                     ; preds = %67
  %80 = load i32, i32* %6, align 4, !dbg !606
  %81 = icmp eq i32 %80, 0, !dbg !608
  br i1 %81, label %82, label %87, !dbg !609

; <label>:82:                                     ; preds = %79
  %83 = load double, double* %7, align 8, !dbg !610
  %84 = load double, double* %8, align 8, !dbg !612
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !613
  %86 = call i32 @gsl_sf_legendre_H3d_0_e(double %83, double %84, %struct.gsl_sf_result_struct* %85), !dbg !614
  store i32 %86, i32* %5, align 4, !dbg !615
  br label %468, !dbg !615

; <label>:87:                                     ; preds = %79
  %88 = load i32, i32* %6, align 4, !dbg !616
  %89 = icmp eq i32 %88, 1, !dbg !618
  br i1 %89, label %90, label %95, !dbg !619

; <label>:90:                                     ; preds = %87
  %91 = load double, double* %7, align 8, !dbg !620
  %92 = load double, double* %8, align 8, !dbg !622
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !623
  %94 = call i32 @gsl_sf_legendre_H3d_1_e(double %91, double %92, %struct.gsl_sf_result_struct* %93), !dbg !624
  store i32 %94, i32* %5, align 4, !dbg !625
  br label %468, !dbg !625

; <label>:95:                                     ; preds = %87
  %96 = load double, double* %8, align 8, !dbg !626
  %97 = fcmp oeq double %96, 0.000000e+00, !dbg !628
  br i1 %97, label %98, label %103, !dbg !629

; <label>:98:                                     ; preds = %95
  %99 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !630
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %99, i32 0, i32 0, !dbg !632
  store double 0.000000e+00, double* %100, align 8, !dbg !633
  %101 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !634
  %102 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %101, i32 0, i32 1, !dbg !635
  store double 0.000000e+00, double* %102, align 8, !dbg !636
  store i32 0, i32* %5, align 4, !dbg !637
  br label %468, !dbg !637

; <label>:103:                                    ; preds = %95
  %104 = load double, double* %12, align 8, !dbg !638
  %105 = fcmp olt double %104, 1.000000e+00, !dbg !640
  br i1 %105, label %106, label %112, !dbg !641

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %6, align 4, !dbg !642
  %108 = load double, double* %7, align 8, !dbg !644
  %109 = load double, double* %8, align 8, !dbg !645
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !646
  %111 = call i32 @legendre_H3d_series(i32 %107, double %108, double %109, %struct.gsl_sf_result_struct* %110), !dbg !647
  store i32 %111, i32* %5, align 4, !dbg !648
  br label %468, !dbg !648

; <label>:112:                                    ; preds = %103
  %113 = load i32, i32* %6, align 4, !dbg !649
  %114 = load i32, i32* %6, align 4, !dbg !651
  %115 = mul nsw i32 %113, %114, !dbg !652
  %116 = sitofp i32 %115 to double, !dbg !649
  %117 = load double, double* %11, align 8, !dbg !653
  %118 = fadd double %116, %117, !dbg !654
  %119 = load double, double* %11, align 8, !dbg !655
  %120 = fadd double 1.000000e+00, %119, !dbg !656
  %121 = call double @sqrt(double %120) #5, !dbg !657
  %122 = fdiv double %118, %121, !dbg !658
  %123 = load double, double* %13, align 8, !dbg !659
  %124 = load double, double* %13, align 8, !dbg !660
  %125 = fmul double %123, %124, !dbg !661
  %126 = fdiv double %122, %125, !dbg !662
  %127 = fcmp olt double %126, 0x3EFFBF7E4E8CC9D1, !dbg !663
  br i1 %127, label %128, label %203, !dbg !664

; <label>:128:                                    ; preds = %112
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !665, metadata !60), !dbg !667
  call void @llvm.dbg.declare(metadata double* %15, metadata !668, metadata !60), !dbg !669
  call void @llvm.dbg.declare(metadata i32* %16, metadata !670, metadata !60), !dbg !671
  %129 = load i32, i32* %6, align 4, !dbg !672
  %130 = sub nsw i32 0, %129, !dbg !673
  %131 = sitofp i32 %130 to double, !dbg !673
  %132 = fsub double %131, 5.000000e-01, !dbg !674
  %133 = load double, double* %7, align 8, !dbg !675
  %134 = load double, double* %13, align 8, !dbg !676
  %135 = call i32 @gsl_sf_conicalP_large_x_e(double %132, double %133, double %134, %struct.gsl_sf_result_struct* %14, double* %15), !dbg !677
  store i32 %135, i32* %16, align 4, !dbg !671
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !678
  %137 = load double, double* %136, align 8, !dbg !678
  %138 = fcmp oeq double %137, 0.000000e+00, !dbg !680
  br i1 %138, label %139, label %145, !dbg !681

; <label>:139:                                    ; preds = %128
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !682
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 0, !dbg !684
  store double 0.000000e+00, double* %141, align 8, !dbg !685
  %142 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !686
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %142, i32 0, i32 1, !dbg !687
  store double 0.000000e+00, double* %143, align 8, !dbg !688
  %144 = load i32, i32* %16, align 4, !dbg !689
  store i32 %144, i32* %5, align 4, !dbg !690
  br label %468, !dbg !690

; <label>:145:                                    ; preds = %128
  call void @llvm.dbg.declare(metadata double* %17, metadata !691, metadata !60), !dbg !693
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !694, metadata !60), !dbg !695
  call void @llvm.dbg.declare(metadata double* %19, metadata !696, metadata !60), !dbg !697
  call void @llvm.dbg.declare(metadata double* %20, metadata !698, metadata !60), !dbg !699
  call void @llvm.dbg.declare(metadata double* %21, metadata !700, metadata !60), !dbg !701
  call void @llvm.dbg.declare(metadata i32* %22, metadata !702, metadata !60), !dbg !703
  %146 = load double, double* %8, align 8, !dbg !704
  %147 = call i32 @gsl_sf_lnsinh_e(double %146, %struct.gsl_sf_result_struct* %18), !dbg !705
  %148 = load i32, i32* %6, align 4, !dbg !706
  %149 = load double, double* %7, align 8, !dbg !707
  %150 = call i32 @legendre_H3d_lnnorm(i32 %148, double %149, double* %17), !dbg !708
  %151 = load double, double* %10, align 8, !dbg !709
  %152 = call double @log(double %151) #5, !dbg !710
  store double %152, double* %19, align 8, !dbg !711
  %153 = load double, double* %17, align 8, !dbg !712
  %154 = fadd double 0x3FF250D048E7A1BD, %153, !dbg !713
  %155 = fsub double %154, 0x3FE62E42FEFA39EF, !dbg !714
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !715
  %157 = load double, double* %156, align 8, !dbg !715
  %158 = fsub double %155, %157, !dbg !716
  %159 = fmul double 5.000000e-01, %158, !dbg !717
  %160 = load double, double* %19, align 8, !dbg !718
  %161 = fsub double %159, %160, !dbg !719
  store double %161, double* %20, align 8, !dbg !720
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !721
  %163 = load double, double* %162, align 8, !dbg !721
  store double %163, double* %21, align 8, !dbg !722
  %164 = load double, double* %17, align 8, !dbg !723
  %165 = call double @fabs(double %164) #1, !dbg !724
  %166 = fadd double 0x3FFD67F1C864BEB4, %165, !dbg !725
  %167 = fmul double 5.000000e-01, %166, !dbg !726
  %168 = load double, double* %19, align 8, !dbg !727
  %169 = call double @fabs(double %168) #1, !dbg !728
  %170 = fadd double %167, %169, !dbg !730
  %171 = fmul double 0x3CC0000000000000, %170, !dbg !731
  %172 = load double, double* %21, align 8, !dbg !732
  %173 = fadd double %172, %171, !dbg !732
  store double %173, double* %21, align 8, !dbg !732
  %174 = load double, double* %20, align 8, !dbg !733
  %175 = call double @fabs(double %174) #1, !dbg !734
  %176 = fmul double 0x3CC0000000000000, %175, !dbg !735
  %177 = load double, double* %21, align 8, !dbg !736
  %178 = fadd double %177, %176, !dbg !736
  store double %178, double* %21, align 8, !dbg !736
  %179 = load double, double* %20, align 8, !dbg !737
  %180 = load double, double* %15, align 8, !dbg !738
  %181 = fadd double %179, %180, !dbg !739
  %182 = load double, double* %21, align 8, !dbg !740
  %183 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !741
  %184 = load double, double* %183, align 8, !dbg !741
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !742
  %186 = load double, double* %185, align 8, !dbg !742
  %187 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !743
  %188 = call i32 @gsl_sf_exp_mult_err_e(double %181, double %182, double %184, double %186, %struct.gsl_sf_result_struct* %187), !dbg !744
  store i32 %188, i32* %22, align 4, !dbg !745
  %189 = load i32, i32* %22, align 4, !dbg !746
  %190 = icmp ne i32 %189, 0, !dbg !746
  br i1 %190, label %191, label %193, !dbg !746

; <label>:191:                                    ; preds = %145
  %192 = load i32, i32* %22, align 4, !dbg !747
  br label %201, !dbg !747

; <label>:193:                                    ; preds = %145
  %194 = load i32, i32* %16, align 4, !dbg !748
  %195 = icmp ne i32 %194, 0, !dbg !748
  br i1 %195, label %196, label %198, !dbg !748

; <label>:196:                                    ; preds = %193
  %197 = load i32, i32* %16, align 4, !dbg !750
  br label %199, !dbg !750

; <label>:198:                                    ; preds = %193
  br label %199, !dbg !752

; <label>:199:                                    ; preds = %198, %196
  %200 = phi i32 [ %197, %196 ], [ 0, %198 ], !dbg !754
  br label %201, !dbg !754

; <label>:201:                                    ; preds = %199, %191
  %202 = phi i32 [ %192, %191 ], [ %200, %199 ], !dbg !756
  store i32 %202, i32* %5, align 4, !dbg !758
  br label %468, !dbg !758

; <label>:203:                                    ; preds = %112
  %204 = load double, double* %10, align 8, !dbg !759
  %205 = load i32, i32* %6, align 4, !dbg !761
  %206 = sitofp i32 %205 to double, !dbg !761
  %207 = fmul double 1.000000e+03, %206, !dbg !762
  %208 = load i32, i32* %6, align 4, !dbg !763
  %209 = sitofp i32 %208 to double, !dbg !763
  %210 = fmul double %207, %209, !dbg !764
  %211 = fcmp ogt double %204, %210, !dbg !765
  br i1 %211, label %212, label %287, !dbg !766

; <label>:212:                                    ; preds = %203
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %23, metadata !767, metadata !60), !dbg !769
  call void @llvm.dbg.declare(metadata double* %24, metadata !770, metadata !60), !dbg !771
  call void @llvm.dbg.declare(metadata i32* %25, metadata !772, metadata !60), !dbg !773
  %213 = load i32, i32* %6, align 4, !dbg !774
  %214 = sitofp i32 %213 to double, !dbg !774
  %215 = fadd double %214, 5.000000e-01, !dbg !775
  %216 = load double, double* %7, align 8, !dbg !776
  %217 = load double, double* %13, align 8, !dbg !777
  %218 = load double, double* %8, align 8, !dbg !778
  %219 = call i32 @gsl_sf_conicalP_xgt1_neg_mu_largetau_e(double %215, double %216, double %217, double %218, %struct.gsl_sf_result_struct* %23, double* %24), !dbg !779
  store i32 %219, i32* %25, align 4, !dbg !773
  %220 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !780
  %221 = load double, double* %220, align 8, !dbg !780
  %222 = fcmp oeq double %221, 0.000000e+00, !dbg !782
  br i1 %222, label %223, label %229, !dbg !783

; <label>:223:                                    ; preds = %212
  %224 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !784
  %225 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %224, i32 0, i32 0, !dbg !786
  store double 0.000000e+00, double* %225, align 8, !dbg !787
  %226 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !788
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %226, i32 0, i32 1, !dbg !789
  store double 0.000000e+00, double* %227, align 8, !dbg !790
  %228 = load i32, i32* %25, align 4, !dbg !791
  store i32 %228, i32* %5, align 4, !dbg !792
  br label %468, !dbg !792

; <label>:229:                                    ; preds = %212
  call void @llvm.dbg.declare(metadata double* %26, metadata !793, metadata !60), !dbg !795
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %27, metadata !796, metadata !60), !dbg !797
  call void @llvm.dbg.declare(metadata double* %28, metadata !798, metadata !60), !dbg !799
  call void @llvm.dbg.declare(metadata double* %29, metadata !800, metadata !60), !dbg !801
  call void @llvm.dbg.declare(metadata double* %30, metadata !802, metadata !60), !dbg !803
  call void @llvm.dbg.declare(metadata i32* %31, metadata !804, metadata !60), !dbg !805
  %230 = load double, double* %8, align 8, !dbg !806
  %231 = call i32 @gsl_sf_lnsinh_e(double %230, %struct.gsl_sf_result_struct* %27), !dbg !807
  %232 = load i32, i32* %6, align 4, !dbg !808
  %233 = load double, double* %7, align 8, !dbg !809
  %234 = call i32 @legendre_H3d_lnnorm(i32 %232, double %233, double* %26), !dbg !810
  %235 = load double, double* %10, align 8, !dbg !811
  %236 = call double @log(double %235) #5, !dbg !812
  store double %236, double* %28, align 8, !dbg !813
  %237 = load double, double* %26, align 8, !dbg !814
  %238 = fadd double 0x3FF250D048E7A1BD, %237, !dbg !815
  %239 = fsub double %238, 0x3FE62E42FEFA39EF, !dbg !816
  %240 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !817
  %241 = load double, double* %240, align 8, !dbg !817
  %242 = fsub double %239, %241, !dbg !818
  %243 = fmul double 5.000000e-01, %242, !dbg !819
  %244 = load double, double* %28, align 8, !dbg !820
  %245 = fsub double %243, %244, !dbg !821
  store double %245, double* %29, align 8, !dbg !822
  %246 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 1, !dbg !823
  %247 = load double, double* %246, align 8, !dbg !823
  store double %247, double* %30, align 8, !dbg !824
  %248 = load double, double* %26, align 8, !dbg !825
  %249 = call double @fabs(double %248) #1, !dbg !826
  %250 = fadd double 0x3FFD67F1C864BEB4, %249, !dbg !827
  %251 = fmul double 5.000000e-01, %250, !dbg !828
  %252 = load double, double* %28, align 8, !dbg !829
  %253 = call double @fabs(double %252) #1, !dbg !830
  %254 = fadd double %251, %253, !dbg !832
  %255 = fmul double 0x3CB0000000000000, %254, !dbg !833
  %256 = load double, double* %30, align 8, !dbg !834
  %257 = fadd double %256, %255, !dbg !834
  store double %257, double* %30, align 8, !dbg !834
  %258 = load double, double* %29, align 8, !dbg !835
  %259 = call double @fabs(double %258) #1, !dbg !836
  %260 = fmul double 0x3CC0000000000000, %259, !dbg !837
  %261 = load double, double* %30, align 8, !dbg !838
  %262 = fadd double %261, %260, !dbg !838
  store double %262, double* %30, align 8, !dbg !838
  %263 = load double, double* %29, align 8, !dbg !839
  %264 = load double, double* %24, align 8, !dbg !840
  %265 = fadd double %263, %264, !dbg !841
  %266 = load double, double* %30, align 8, !dbg !842
  %267 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 0, !dbg !843
  %268 = load double, double* %267, align 8, !dbg !843
  %269 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %23, i32 0, i32 1, !dbg !844
  %270 = load double, double* %269, align 8, !dbg !844
  %271 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !845
  %272 = call i32 @gsl_sf_exp_mult_err_e(double %265, double %266, double %268, double %270, %struct.gsl_sf_result_struct* %271), !dbg !846
  store i32 %272, i32* %31, align 4, !dbg !847
  %273 = load i32, i32* %31, align 4, !dbg !848
  %274 = icmp ne i32 %273, 0, !dbg !848
  br i1 %274, label %275, label %277, !dbg !848

; <label>:275:                                    ; preds = %229
  %276 = load i32, i32* %31, align 4, !dbg !849
  br label %285, !dbg !849

; <label>:277:                                    ; preds = %229
  %278 = load i32, i32* %25, align 4, !dbg !850
  %279 = icmp ne i32 %278, 0, !dbg !850
  br i1 %279, label %280, label %282, !dbg !850

; <label>:280:                                    ; preds = %277
  %281 = load i32, i32* %25, align 4, !dbg !852
  br label %283, !dbg !852

; <label>:282:                                    ; preds = %277
  br label %283, !dbg !854

; <label>:283:                                    ; preds = %282, %280
  %284 = phi i32 [ %281, %280 ], [ 0, %282 ], !dbg !856
  br label %285, !dbg !856

; <label>:285:                                    ; preds = %283, %275
  %286 = phi i32 [ %276, %275 ], [ %284, %283 ], !dbg !858
  store i32 %286, i32* %5, align 4, !dbg !860
  br label %468, !dbg !860

; <label>:287:                                    ; preds = %203
  call void @llvm.dbg.declare(metadata double* %32, metadata !861, metadata !60), !dbg !863
  %288 = load double, double* %8, align 8, !dbg !864
  %289 = call double @tanh(double %288) #5, !dbg !865
  %290 = fdiv double 1.000000e+00, %289, !dbg !866
  store double %290, double* %32, align 8, !dbg !863
  call void @llvm.dbg.declare(metadata double* %33, metadata !867, metadata !60), !dbg !868
  %291 = load double, double* %8, align 8, !dbg !869
  %292 = call double @fabs(double %291) #1, !dbg !870
  %293 = fadd double %292, 1.000000e+00, !dbg !871
  store double %293, double* %33, align 8, !dbg !868
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %34, metadata !872, metadata !60), !dbg !873
  call void @llvm.dbg.declare(metadata i32* %35, metadata !874, metadata !60), !dbg !875
  %294 = load i32, i32* %6, align 4, !dbg !876
  %295 = load double, double* %7, align 8, !dbg !877
  %296 = load double, double* %32, align 8, !dbg !878
  %297 = call i32 @legendre_H3d_CF1_ser(i32 %294, double %295, double %296, %struct.gsl_sf_result_struct* %34), !dbg !879
  store i32 %297, i32* %35, align 4, !dbg !875
  call void @llvm.dbg.declare(metadata double* %36, metadata !880, metadata !60), !dbg !881
  call void @llvm.dbg.declare(metadata double* %37, metadata !882, metadata !60), !dbg !883
  store double 0x2000000000000000, double* %37, align 8, !dbg !883
  call void @llvm.dbg.declare(metadata double* %38, metadata !884, metadata !60), !dbg !885
  %298 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !886
  %299 = load double, double* %298, align 8, !dbg !886
  %300 = load double, double* %37, align 8, !dbg !887
  %301 = fmul double %299, %300, !dbg !888
  store double %301, double* %38, align 8, !dbg !885
  call void @llvm.dbg.declare(metadata i32* %39, metadata !889, metadata !60), !dbg !890
  %302 = load i32, i32* %6, align 4, !dbg !891
  store i32 %302, i32* %39, align 4, !dbg !893
  br label %303, !dbg !894

; <label>:303:                                    ; preds = %332, %287
  %304 = load i32, i32* %39, align 4, !dbg !895
  %305 = icmp sgt i32 %304, 0, !dbg !898
  br i1 %305, label %306, label %335, !dbg !899

; <label>:306:                                    ; preds = %303
  call void @llvm.dbg.declare(metadata double* %40, metadata !900, metadata !60), !dbg !902
  %307 = load double, double* %7, align 8, !dbg !903
  %308 = load i32, i32* %39, align 4, !dbg !904
  %309 = sitofp i32 %308 to double, !dbg !904
  %310 = call double @hypot(double %307, double %309) #5, !dbg !905
  store double %310, double* %40, align 8, !dbg !902
  call void @llvm.dbg.declare(metadata double* %41, metadata !906, metadata !60), !dbg !907
  %311 = load double, double* %7, align 8, !dbg !908
  %312 = load i32, i32* %39, align 4, !dbg !909
  %313 = sitofp i32 %312 to double, !dbg !909
  %314 = fadd double %313, 1.000000e+00, !dbg !910
  %315 = call double @hypot(double %311, double %314) #5, !dbg !911
  store double %315, double* %41, align 8, !dbg !907
  %316 = load i32, i32* %39, align 4, !dbg !912
  %317 = sitofp i32 %316 to double, !dbg !912
  %318 = fmul double 2.000000e+00, %317, !dbg !913
  %319 = fadd double %318, 1.000000e+00, !dbg !914
  %320 = load double, double* %32, align 8, !dbg !915
  %321 = fmul double %319, %320, !dbg !916
  %322 = load double, double* %37, align 8, !dbg !917
  %323 = fmul double %321, %322, !dbg !918
  %324 = load double, double* %41, align 8, !dbg !919
  %325 = load double, double* %38, align 8, !dbg !920
  %326 = fmul double %324, %325, !dbg !921
  %327 = fsub double %323, %326, !dbg !922
  %328 = load double, double* %40, align 8, !dbg !923
  %329 = fdiv double %327, %328, !dbg !924
  store double %329, double* %36, align 8, !dbg !925
  %330 = load double, double* %37, align 8, !dbg !926
  store double %330, double* %38, align 8, !dbg !927
  %331 = load double, double* %36, align 8, !dbg !928
  store double %331, double* %37, align 8, !dbg !929
  br label %332, !dbg !930

; <label>:332:                                    ; preds = %306
  %333 = load i32, i32* %39, align 4, !dbg !931
  %334 = add nsw i32 %333, -1, !dbg !931
  store i32 %334, i32* %39, align 4, !dbg !931
  br label %303, !dbg !933, !llvm.loop !934

; <label>:335:                                    ; preds = %303
  %336 = load double, double* %37, align 8, !dbg !936
  %337 = call double @fabs(double %336) #1, !dbg !938
  %338 = load double, double* %38, align 8, !dbg !939
  %339 = call double @fabs(double %338) #1, !dbg !940
  %340 = fcmp ogt double %337, %339, !dbg !942
  br i1 %340, label %341, label %404, !dbg !943

; <label>:341:                                    ; preds = %335
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %42, metadata !944, metadata !60), !dbg !946
  call void @llvm.dbg.declare(metadata i32* %43, metadata !947, metadata !60), !dbg !948
  %342 = load double, double* %7, align 8, !dbg !949
  %343 = load double, double* %8, align 8, !dbg !950
  %344 = call i32 @gsl_sf_legendre_H3d_0_e(double %342, double %343, %struct.gsl_sf_result_struct* %42), !dbg !951
  store i32 %344, i32* %43, align 4, !dbg !948
  %345 = load double, double* %37, align 8, !dbg !952
  %346 = fdiv double 0x2000000000000000, %345, !dbg !953
  %347 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 0, !dbg !954
  %348 = load double, double* %347, align 8, !dbg !954
  %349 = fmul double %346, %348, !dbg !955
  %350 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !956
  %351 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %350, i32 0, i32 0, !dbg !957
  store double %349, double* %351, align 8, !dbg !958
  %352 = load double, double* %37, align 8, !dbg !959
  %353 = call double @fabs(double %352) #1, !dbg !960
  %354 = fdiv double 0x2000000000000000, %353, !dbg !961
  %355 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %42, i32 0, i32 1, !dbg !962
  %356 = load double, double* %355, align 8, !dbg !962
  %357 = fmul double %354, %356, !dbg !963
  %358 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !964
  %359 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %358, i32 0, i32 1, !dbg !965
  store double %357, double* %359, align 8, !dbg !966
  %360 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !967
  %361 = load double, double* %360, align 8, !dbg !967
  %362 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !968
  %363 = load double, double* %362, align 8, !dbg !968
  %364 = fdiv double %361, %363, !dbg !969
  %365 = call double @fabs(double %364) #1, !dbg !970
  %366 = load i32, i32* %6, align 4, !dbg !971
  %367 = sitofp i32 %366 to double, !dbg !971
  %368 = fadd double %367, 1.000000e+00, !dbg !972
  %369 = fmul double %365, %368, !dbg !973
  %370 = load double, double* %33, align 8, !dbg !974
  %371 = fmul double %369, %370, !dbg !975
  %372 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !976
  %373 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %372, i32 0, i32 0, !dbg !977
  %374 = load double, double* %373, align 8, !dbg !977
  %375 = call double @fabs(double %374) #1, !dbg !978
  %376 = fmul double %371, %375, !dbg !980
  %377 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !981
  %378 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %377, i32 0, i32 1, !dbg !982
  %379 = load double, double* %378, align 8, !dbg !983
  %380 = fadd double %379, %376, !dbg !983
  store double %380, double* %378, align 8, !dbg !983
  %381 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !984
  %382 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %381, i32 0, i32 0, !dbg !985
  %383 = load double, double* %382, align 8, !dbg !985
  %384 = call double @fabs(double %383) #1, !dbg !986
  %385 = fmul double 0x3CC0000000000000, %384, !dbg !987
  %386 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !988
  %387 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %386, i32 0, i32 1, !dbg !989
  %388 = load double, double* %387, align 8, !dbg !990
  %389 = fadd double %388, %385, !dbg !990
  store double %389, double* %387, align 8, !dbg !990
  %390 = load i32, i32* %43, align 4, !dbg !991
  %391 = icmp ne i32 %390, 0, !dbg !991
  br i1 %391, label %392, label %394, !dbg !991

; <label>:392:                                    ; preds = %341
  %393 = load i32, i32* %43, align 4, !dbg !992
  br label %402, !dbg !992

; <label>:394:                                    ; preds = %341
  %395 = load i32, i32* %35, align 4, !dbg !993
  %396 = icmp ne i32 %395, 0, !dbg !993
  br i1 %396, label %397, label %399, !dbg !993

; <label>:397:                                    ; preds = %394
  %398 = load i32, i32* %35, align 4, !dbg !995
  br label %400, !dbg !995

; <label>:399:                                    ; preds = %394
  br label %400, !dbg !997

; <label>:400:                                    ; preds = %399, %397
  %401 = phi i32 [ %398, %397 ], [ 0, %399 ], !dbg !999
  br label %402, !dbg !999

; <label>:402:                                    ; preds = %400, %392
  %403 = phi i32 [ %393, %392 ], [ %401, %400 ], !dbg !1001
  store i32 %403, i32* %5, align 4, !dbg !1003
  br label %468, !dbg !1003

; <label>:404:                                    ; preds = %335
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %44, metadata !1004, metadata !60), !dbg !1006
  call void @llvm.dbg.declare(metadata i32* %45, metadata !1007, metadata !60), !dbg !1008
  %405 = load double, double* %7, align 8, !dbg !1009
  %406 = load double, double* %8, align 8, !dbg !1010
  %407 = call i32 @gsl_sf_legendre_H3d_1_e(double %405, double %406, %struct.gsl_sf_result_struct* %44), !dbg !1011
  store i32 %407, i32* %45, align 4, !dbg !1008
  %408 = load double, double* %38, align 8, !dbg !1012
  %409 = fdiv double 0x2000000000000000, %408, !dbg !1013
  %410 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 0, !dbg !1014
  %411 = load double, double* %410, align 8, !dbg !1014
  %412 = fmul double %409, %411, !dbg !1015
  %413 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1016
  %414 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %413, i32 0, i32 0, !dbg !1017
  store double %412, double* %414, align 8, !dbg !1018
  %415 = load double, double* %38, align 8, !dbg !1019
  %416 = call double @fabs(double %415) #1, !dbg !1020
  %417 = fdiv double 0x2000000000000000, %416, !dbg !1021
  %418 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %44, i32 0, i32 1, !dbg !1022
  %419 = load double, double* %418, align 8, !dbg !1022
  %420 = fmul double %417, %419, !dbg !1023
  %421 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1024
  %422 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %421, i32 0, i32 1, !dbg !1025
  store double %420, double* %422, align 8, !dbg !1026
  %423 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 1, !dbg !1027
  %424 = load double, double* %423, align 8, !dbg !1027
  %425 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %34, i32 0, i32 0, !dbg !1028
  %426 = load double, double* %425, align 8, !dbg !1028
  %427 = fdiv double %424, %426, !dbg !1029
  %428 = call double @fabs(double %427) #1, !dbg !1030
  %429 = load i32, i32* %6, align 4, !dbg !1031
  %430 = sitofp i32 %429 to double, !dbg !1031
  %431 = fadd double %430, 1.000000e+00, !dbg !1032
  %432 = fmul double %428, %431, !dbg !1033
  %433 = load double, double* %33, align 8, !dbg !1034
  %434 = fmul double %432, %433, !dbg !1035
  %435 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1036
  %436 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %435, i32 0, i32 0, !dbg !1037
  %437 = load double, double* %436, align 8, !dbg !1037
  %438 = call double @fabs(double %437) #1, !dbg !1038
  %439 = fmul double %434, %438, !dbg !1040
  %440 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1041
  %441 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %440, i32 0, i32 1, !dbg !1042
  %442 = load double, double* %441, align 8, !dbg !1043
  %443 = fadd double %442, %439, !dbg !1043
  store double %443, double* %441, align 8, !dbg !1043
  %444 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1044
  %445 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %444, i32 0, i32 0, !dbg !1045
  %446 = load double, double* %445, align 8, !dbg !1045
  %447 = call double @fabs(double %446) #1, !dbg !1046
  %448 = fmul double 0x3CC0000000000000, %447, !dbg !1047
  %449 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1048
  %450 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %449, i32 0, i32 1, !dbg !1049
  %451 = load double, double* %450, align 8, !dbg !1050
  %452 = fadd double %451, %448, !dbg !1050
  store double %452, double* %450, align 8, !dbg !1050
  %453 = load i32, i32* %45, align 4, !dbg !1051
  %454 = icmp ne i32 %453, 0, !dbg !1051
  br i1 %454, label %455, label %457, !dbg !1051

; <label>:455:                                    ; preds = %404
  %456 = load i32, i32* %45, align 4, !dbg !1052
  br label %465, !dbg !1052

; <label>:457:                                    ; preds = %404
  %458 = load i32, i32* %35, align 4, !dbg !1053
  %459 = icmp ne i32 %458, 0, !dbg !1053
  br i1 %459, label %460, label %462, !dbg !1053

; <label>:460:                                    ; preds = %457
  %461 = load i32, i32* %35, align 4, !dbg !1055
  br label %463, !dbg !1055

; <label>:462:                                    ; preds = %457
  br label %463, !dbg !1057

; <label>:463:                                    ; preds = %462, %460
  %464 = phi i32 [ %461, %460 ], [ 0, %462 ], !dbg !1059
  br label %465, !dbg !1059

; <label>:465:                                    ; preds = %463, %455
  %466 = phi i32 [ %456, %455 ], [ %464, %463 ], !dbg !1061
  store i32 %466, i32* %5, align 4, !dbg !1063
  br label %468, !dbg !1063

; <label>:467:                                    ; preds = %78
  br label %468

; <label>:468:                                    ; preds = %64, %76, %82, %90, %98, %106, %139, %201, %223, %285, %402, %465, %467, %66
  %469 = load i32, i32* %5, align 4, !dbg !1064
  ret i32 %469, !dbg !1064
}

; Function Attrs: nounwind
declare double @cosh(double) #4

; Function Attrs: nounwind uwtable
define internal i32 @legendre_H3d_series(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1065 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.gsl_sf_result_struct, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1066, metadata !60), !dbg !1067
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1068, metadata !60), !dbg !1069
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1070, metadata !60), !dbg !1071
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %8, metadata !1072, metadata !60), !dbg !1073
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1074, metadata !60), !dbg !1075
  store i32 5000, i32* %9, align 4, !dbg !1075
  call void @llvm.dbg.declare(metadata double* %10, metadata !1076, metadata !60), !dbg !1077
  %26 = load double, double* %7, align 8, !dbg !1078
  %27 = fmul double 5.000000e-01, %26, !dbg !1079
  %28 = call double @sinh(double %27) #5, !dbg !1080
  store double %28, double* %10, align 8, !dbg !1077
  call void @llvm.dbg.declare(metadata double* %11, metadata !1081, metadata !60), !dbg !1082
  %29 = load double, double* %10, align 8, !dbg !1083
  %30 = load double, double* %10, align 8, !dbg !1084
  %31 = fmul double %29, %30, !dbg !1085
  %32 = fadd double 1.000000e+00, %31, !dbg !1086
  %33 = call double @log(double %32) #5, !dbg !1087
  %34 = fadd double 0x3FE62E42FEFA39EF, %33, !dbg !1088
  store double %34, double* %11, align 8, !dbg !1082
  call void @llvm.dbg.declare(metadata double* %12, metadata !1089, metadata !60), !dbg !1090
  %35 = load double, double* %10, align 8, !dbg !1091
  %36 = call double @log(double %35) #5, !dbg !1092
  %37 = fmul double 2.000000e+00, %36, !dbg !1093
  %38 = fadd double 0x3FE62E42FEFA39EF, %37, !dbg !1094
  store double %38, double* %12, align 8, !dbg !1090
  call void @llvm.dbg.declare(metadata double* %13, metadata !1095, metadata !60), !dbg !1096
  %39 = load double, double* %10, align 8, !dbg !1097
  %40 = fsub double -0.000000e+00, %39, !dbg !1098
  %41 = load double, double* %10, align 8, !dbg !1099
  %42 = fmul double %40, %41, !dbg !1100
  store double %42, double* %13, align 8, !dbg !1096
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1101, metadata !60), !dbg !1102
  call void @llvm.dbg.declare(metadata double* %15, metadata !1103, metadata !60), !dbg !1104
  store double 1.000000e+00, double* %15, align 8, !dbg !1104
  call void @llvm.dbg.declare(metadata double* %16, metadata !1105, metadata !60), !dbg !1106
  store double 1.000000e+00, double* %16, align 8, !dbg !1106
  call void @llvm.dbg.declare(metadata double* %17, metadata !1107, metadata !60), !dbg !1108
  store double 0.000000e+00, double* %17, align 8, !dbg !1108
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %18, metadata !1109, metadata !60), !dbg !1110
  call void @llvm.dbg.declare(metadata double* %19, metadata !1111, metadata !60), !dbg !1112
  call void @llvm.dbg.declare(metadata double* %20, metadata !1113, metadata !60), !dbg !1114
  call void @llvm.dbg.declare(metadata double* %21, metadata !1115, metadata !60), !dbg !1116
  call void @llvm.dbg.declare(metadata double* %22, metadata !1117, metadata !60), !dbg !1118
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1119, metadata !60), !dbg !1120
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1121, metadata !60), !dbg !1122
  %43 = load i32, i32* %5, align 4, !dbg !1123
  %44 = sitofp i32 %43 to double, !dbg !1123
  %45 = fadd double %44, 1.500000e+00, !dbg !1124
  %46 = call i32 @gsl_sf_lngamma_e(double %45, %struct.gsl_sf_result_struct* %14), !dbg !1125
  %47 = load double, double* %7, align 8, !dbg !1126
  %48 = call i32 @gsl_sf_lnsinh_e(double %47, %struct.gsl_sf_result_struct* %18), !dbg !1127
  %49 = load i32, i32* %5, align 4, !dbg !1128
  %50 = load double, double* %6, align 8, !dbg !1129
  %51 = call i32 @legendre_H3d_lnnorm(i32 %49, double %50, double* %19), !dbg !1130
  %52 = load i32, i32* %5, align 4, !dbg !1131
  %53 = sitofp i32 %52 to double, !dbg !1131
  %54 = fadd double %53, 5.000000e-01, !dbg !1132
  %55 = fmul double 5.000000e-01, %54, !dbg !1133
  %56 = load double, double* %12, align 8, !dbg !1134
  %57 = load double, double* %11, align 8, !dbg !1135
  %58 = fsub double %56, %57, !dbg !1136
  %59 = fmul double %55, %58, !dbg !1137
  store double %59, double* %22, align 8, !dbg !1138
  %60 = load double, double* %22, align 8, !dbg !1139
  %61 = load double, double* %19, align 8, !dbg !1140
  %62 = fadd double %61, 0x3FF250D048E7A1BD, !dbg !1141
  %63 = fsub double %62, 0x3FE62E42FEFA39EF, !dbg !1142
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 0, !dbg !1143
  %65 = load double, double* %64, align 8, !dbg !1143
  %66 = fsub double %63, %65, !dbg !1144
  %67 = fmul double 5.000000e-01, %66, !dbg !1145
  %68 = fadd double %60, %67, !dbg !1146
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1147
  %70 = load double, double* %69, align 8, !dbg !1147
  %71 = fsub double %68, %70, !dbg !1148
  %72 = load double, double* %6, align 8, !dbg !1149
  %73 = call double @fabs(double %72) #1, !dbg !1150
  %74 = call double @log(double %73) #5, !dbg !1151
  %75 = fsub double %71, %74, !dbg !1153
  store double %75, double* %20, align 8, !dbg !1154
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !1155
  %77 = load double, double* %76, align 8, !dbg !1155
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !1156
  %79 = load double, double* %78, align 8, !dbg !1156
  %80 = fadd double %77, %79, !dbg !1157
  %81 = load double, double* %20, align 8, !dbg !1158
  %82 = call double @fabs(double %81) #1, !dbg !1159
  %83 = fmul double 0x3CB0000000000000, %82, !dbg !1160
  %84 = fadd double %80, %83, !dbg !1161
  store double %84, double* %21, align 8, !dbg !1162
  %85 = load double, double* %19, align 8, !dbg !1163
  %86 = call double @fabs(double %85) #1, !dbg !1164
  %87 = fadd double %86, 0x3FF250D048E7A1BD, !dbg !1165
  %88 = fadd double %87, 0x3FE62E42FEFA39EF, !dbg !1166
  %89 = fmul double 0x3CC0000000000000, %88, !dbg !1167
  %90 = load double, double* %21, align 8, !dbg !1168
  %91 = fadd double %90, %89, !dbg !1168
  store double %91, double* %21, align 8, !dbg !1168
  %92 = load i32, i32* %5, align 4, !dbg !1169
  %93 = sitofp i32 %92 to double, !dbg !1169
  %94 = fadd double %93, 5.000000e-01, !dbg !1170
  %95 = fmul double 5.000000e-01, %94, !dbg !1171
  %96 = load double, double* %12, align 8, !dbg !1172
  %97 = call double @fabs(double %96) #1, !dbg !1173
  %98 = load double, double* %11, align 8, !dbg !1174
  %99 = call double @fabs(double %98) #1, !dbg !1175
  %100 = fadd double %97, %99, !dbg !1176
  %101 = fmul double %95, %100, !dbg !1177
  %102 = fmul double 0x3CC0000000000000, %101, !dbg !1178
  %103 = load double, double* %21, align 8, !dbg !1179
  %104 = fadd double %103, %102, !dbg !1179
  store double %104, double* %21, align 8, !dbg !1179
  store i32 1, i32* %24, align 4, !dbg !1180
  br label %105, !dbg !1182

; <label>:105:                                    ; preds = %147, %4
  %106 = load i32, i32* %24, align 4, !dbg !1183
  %107 = icmp slt i32 %106, 5000, !dbg !1186
  br i1 %107, label %108, label %150, !dbg !1187

; <label>:108:                                    ; preds = %105
  call void @llvm.dbg.declare(metadata double* %25, metadata !1188, metadata !60), !dbg !1190
  %109 = load i32, i32* %24, align 4, !dbg !1191
  %110 = sitofp i32 %109 to double, !dbg !1191
  %111 = fsub double %110, 5.000000e-01, !dbg !1192
  store double %111, double* %25, align 8, !dbg !1190
  %112 = load double, double* %25, align 8, !dbg !1193
  %113 = load double, double* %25, align 8, !dbg !1194
  %114 = fmul double %112, %113, !dbg !1195
  %115 = load double, double* %6, align 8, !dbg !1196
  %116 = load double, double* %6, align 8, !dbg !1197
  %117 = fmul double %115, %116, !dbg !1198
  %118 = fadd double %114, %117, !dbg !1199
  %119 = load double, double* %13, align 8, !dbg !1200
  %120 = fmul double %118, %119, !dbg !1201
  %121 = load i32, i32* %5, align 4, !dbg !1202
  %122 = load i32, i32* %24, align 4, !dbg !1203
  %123 = add nsw i32 %121, %122, !dbg !1204
  %124 = sitofp i32 %123 to double, !dbg !1202
  %125 = fadd double %124, 5.000000e-01, !dbg !1205
  %126 = fdiv double %120, %125, !dbg !1206
  %127 = load i32, i32* %24, align 4, !dbg !1207
  %128 = sitofp i32 %127 to double, !dbg !1207
  %129 = fdiv double %126, %128, !dbg !1208
  %130 = load double, double* %15, align 8, !dbg !1209
  %131 = fmul double %130, %129, !dbg !1209
  store double %131, double* %15, align 8, !dbg !1209
  %132 = load double, double* %15, align 8, !dbg !1210
  %133 = load double, double* %16, align 8, !dbg !1211
  %134 = fadd double %133, %132, !dbg !1211
  store double %134, double* %16, align 8, !dbg !1211
  %135 = load double, double* %15, align 8, !dbg !1212
  %136 = call double @fabs(double %135) #1, !dbg !1213
  %137 = fmul double 0x3CC0000000000000, %136, !dbg !1214
  %138 = load double, double* %17, align 8, !dbg !1215
  %139 = fadd double %138, %137, !dbg !1215
  store double %139, double* %17, align 8, !dbg !1215
  %140 = load double, double* %15, align 8, !dbg !1216
  %141 = load double, double* %16, align 8, !dbg !1218
  %142 = fdiv double %140, %141, !dbg !1219
  %143 = call double @fabs(double %142) #1, !dbg !1220
  %144 = fcmp olt double %143, 0x3CC0000000000000, !dbg !1221
  br i1 %144, label %145, label %146, !dbg !1222

; <label>:145:                                    ; preds = %108
  br label %150, !dbg !1223

; <label>:146:                                    ; preds = %108
  br label %147, !dbg !1225

; <label>:147:                                    ; preds = %146
  %148 = load i32, i32* %24, align 4, !dbg !1226
  %149 = add nsw i32 %148, 1, !dbg !1226
  store i32 %149, i32* %24, align 4, !dbg !1226
  br label %105, !dbg !1228, !llvm.loop !1229

; <label>:150:                                    ; preds = %145, %105
  %151 = load double, double* %20, align 8, !dbg !1231
  %152 = load double, double* %21, align 8, !dbg !1232
  %153 = load double, double* %16, align 8, !dbg !1233
  %154 = load double, double* %15, align 8, !dbg !1234
  %155 = call double @fabs(double %154) #1, !dbg !1235
  %156 = load double, double* %17, align 8, !dbg !1236
  %157 = fadd double %155, %156, !dbg !1237
  %158 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %8, align 8, !dbg !1238
  %159 = call i32 @gsl_sf_exp_mult_err_e(double %151, double %152, double %153, double %157, %struct.gsl_sf_result_struct* %158), !dbg !1239
  store i32 %159, i32* %23, align 4, !dbg !1240
  %160 = load i32, i32* %23, align 4, !dbg !1241
  %161 = icmp ne i32 %160, 0, !dbg !1241
  br i1 %161, label %162, label %164, !dbg !1241

; <label>:162:                                    ; preds = %150
  %163 = load i32, i32* %23, align 4, !dbg !1242
  br label %176, !dbg !1242

; <label>:164:                                    ; preds = %150
  %165 = load i32, i32* %24, align 4, !dbg !1243
  %166 = icmp eq i32 %165, 5000, !dbg !1243
  %167 = select i1 %166, i32 11, i32 0, !dbg !1243
  %168 = icmp ne i32 %167, 0, !dbg !1243
  br i1 %168, label %169, label %173, !dbg !1243

; <label>:169:                                    ; preds = %164
  %170 = load i32, i32* %24, align 4, !dbg !1245
  %171 = icmp eq i32 %170, 5000, !dbg !1245
  %172 = select i1 %171, i32 11, i32 0, !dbg !1245
  br label %174, !dbg !1245

; <label>:173:                                    ; preds = %164
  br label %174, !dbg !1247

; <label>:174:                                    ; preds = %173, %169
  %175 = phi i32 [ %172, %169 ], [ 0, %173 ], !dbg !1249
  br label %176, !dbg !1249

; <label>:176:                                    ; preds = %174, %162
  %177 = phi i32 [ %163, %162 ], [ %175, %174 ], !dbg !1251
  ret i32 %177, !dbg !1253
}

declare i32 @gsl_sf_conicalP_large_x_e(double, double, double, %struct.gsl_sf_result_struct*, double*) #2

declare i32 @gsl_sf_lnsinh_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define internal i32 @legendre_H3d_lnnorm(i32, double, double*) #0 !dbg !1254 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1258, metadata !60), !dbg !1259
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1260, metadata !60), !dbg !1261
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !1262, metadata !60), !dbg !1263
  call void @llvm.dbg.declare(metadata double* %8, metadata !1264, metadata !60), !dbg !1265
  %16 = load double, double* %6, align 8, !dbg !1266
  %17 = call double @fabs(double %16) #1, !dbg !1267
  store double %17, double* %8, align 8, !dbg !1265
  %18 = load double, double* %8, align 8, !dbg !1268
  %19 = fcmp oeq double %18, 0.000000e+00, !dbg !1270
  br i1 %19, label %20, label %24, !dbg !1271

; <label>:20:                                     ; preds = %3
  %21 = load double*, double** %7, align 8, !dbg !1272
  store double 0.000000e+00, double* %21, align 8, !dbg !1274
  br label %22, !dbg !1275, !llvm.loop !1276

; <label>:22:                                     ; preds = %20
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 52, i32 1), !dbg !1277
  store i32 1, i32* %4, align 4, !dbg !1277
  br label %101, !dbg !1277
                                                  ; No predecessors!
  br label %101, !dbg !1280

; <label>:24:                                     ; preds = %3
  %25 = load double, double* %6, align 8, !dbg !1281
  %26 = load i32, i32* %5, align 4, !dbg !1283
  %27 = sitofp i32 %26 to double, !dbg !1283
  %28 = fadd double %27, 1.000000e+00, !dbg !1284
  %29 = fdiv double %28, 0x3ED965FEA53D6E41, !dbg !1285
  %30 = fcmp ogt double %25, %29, !dbg !1286
  br i1 %30, label %31, label %81, !dbg !1287

; <label>:31:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata double* %9, metadata !1288, metadata !60), !dbg !1290
  %32 = load i32, i32* %5, align 4, !dbg !1291
  %33 = sitofp i32 %32 to double, !dbg !1291
  %34 = fadd double %33, 1.000000e+00, !dbg !1292
  %35 = load double, double* %6, align 8, !dbg !1293
  %36 = fdiv double %34, %35, !dbg !1294
  store double %36, double* %9, align 8, !dbg !1290
  call void @llvm.dbg.declare(metadata double* %10, metadata !1295, metadata !60), !dbg !1296
  %37 = load double, double* %6, align 8, !dbg !1297
  %38 = call double @log(double %37) #5, !dbg !1298
  %39 = fmul double 2.000000e+00, %38, !dbg !1299
  %40 = load double, double* %9, align 8, !dbg !1300
  %41 = load double, double* %9, align 8, !dbg !1301
  %42 = fmul double %40, %41, !dbg !1302
  %43 = fadd double 1.000000e+00, %42, !dbg !1303
  %44 = call double @log(double %43) #5, !dbg !1304
  %45 = fadd double %39, %44, !dbg !1306
  store double %45, double* %10, align 8, !dbg !1296
  call void @llvm.dbg.declare(metadata double* %11, metadata !1307, metadata !60), !dbg !1308
  %46 = load i32, i32* %5, align 4, !dbg !1309
  %47 = sitofp i32 %46 to double, !dbg !1309
  %48 = fadd double %47, 1.000000e+00, !dbg !1310
  %49 = fmul double -2.000000e+00, %48, !dbg !1311
  %50 = fadd double %49, 0x3FF250D048E7A1BD, !dbg !1312
  %51 = load i32, i32* %5, align 4, !dbg !1313
  %52 = sitofp i32 %51 to double, !dbg !1313
  %53 = fadd double %52, 5.000000e-01, !dbg !1314
  %54 = load double, double* %10, align 8, !dbg !1315
  %55 = fmul double %53, %54, !dbg !1316
  %56 = fadd double %50, %55, !dbg !1317
  %57 = load double, double* %6, align 8, !dbg !1318
  %58 = fmul double 2.880000e+02, %57, !dbg !1319
  %59 = load double, double* %6, align 8, !dbg !1320
  %60 = fmul double %58, %59, !dbg !1321
  %61 = fdiv double 1.000000e+00, %60, !dbg !1322
  %62 = fadd double %56, %61, !dbg !1323
  store double %62, double* %11, align 8, !dbg !1308
  call void @llvm.dbg.declare(metadata double* %12, metadata !1324, metadata !60), !dbg !1325
  %63 = load double, double* %6, align 8, !dbg !1326
  %64 = fmul double %63, 2.000000e+00, !dbg !1327
  %65 = load double, double* %9, align 8, !dbg !1328
  %66 = fmul double %64, %65, !dbg !1329
  %67 = load double, double* %9, align 8, !dbg !1330
  %68 = load double, double* %9, align 8, !dbg !1331
  %69 = fmul double %67, %68, !dbg !1332
  %70 = fdiv double %69, 3.000000e+00, !dbg !1333
  %71 = fsub double 1.000000e+00, %70, !dbg !1334
  %72 = fmul double %66, %71, !dbg !1335
  store double %72, double* %12, align 8, !dbg !1325
  %73 = load double, double* %8, align 8, !dbg !1336
  %74 = call double @log(double %73) #5, !dbg !1337
  %75 = load double, double* %11, align 8, !dbg !1338
  %76 = fadd double %74, %75, !dbg !1339
  %77 = load double, double* %12, align 8, !dbg !1340
  %78 = fadd double %76, %77, !dbg !1341
  %79 = fsub double %78, 0x3FF250D048E7A1BD, !dbg !1342
  %80 = load double*, double** %7, align 8, !dbg !1343
  store double %79, double* %80, align 8, !dbg !1344
  store i32 0, i32* %4, align 4, !dbg !1345
  br label %101, !dbg !1345

; <label>:81:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !1346, metadata !60), !dbg !1348
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1349, metadata !60), !dbg !1350
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1351, metadata !60), !dbg !1352
  %82 = load i32, i32* %5, align 4, !dbg !1353
  %83 = sitofp i32 %82 to double, !dbg !1353
  %84 = fadd double %83, 1.000000e+00, !dbg !1354
  %85 = load double, double* %6, align 8, !dbg !1355
  %86 = call i32 @gsl_sf_lngamma_complex_e(double %84, double %85, %struct.gsl_sf_result_struct* %13, %struct.gsl_sf_result_struct* %14), !dbg !1356
  %87 = load double, double* %8, align 8, !dbg !1357
  %88 = fmul double 0x400921FB54442D18, %87, !dbg !1358
  %89 = call i32 @gsl_sf_lnsinh_e(double %88, %struct.gsl_sf_result_struct* %15), !dbg !1359
  %90 = load double, double* %8, align 8, !dbg !1360
  %91 = call double @log(double %90) #5, !dbg !1361
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1362
  %93 = load double, double* %92, align 8, !dbg !1362
  %94 = fadd double %91, %93, !dbg !1363
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !1364
  %96 = load double, double* %95, align 8, !dbg !1364
  %97 = fmul double 2.000000e+00, %96, !dbg !1365
  %98 = fadd double %94, %97, !dbg !1366
  %99 = fsub double %98, 0x3FF250D048E7A1BD, !dbg !1367
  %100 = load double*, double** %7, align 8, !dbg !1368
  store double %99, double* %100, align 8, !dbg !1369
  store i32 0, i32* %4, align 4, !dbg !1370
  br label %101, !dbg !1370

; <label>:101:                                    ; preds = %22, %31, %81, %23
  %102 = load i32, i32* %4, align 4, !dbg !1371
  ret i32 %102, !dbg !1371
}

; Function Attrs: nounwind
declare double @log(double) #4

declare i32 @gsl_sf_exp_mult_err_e(double, double, double, double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_conicalP_xgt1_neg_mu_largetau_e(double, double, double, double, %struct.gsl_sf_result_struct*, double*) #2

; Function Attrs: nounwind uwtable
define internal i32 @legendre_H3d_CF1_ser(i32, double, double, %struct.gsl_sf_result_struct*) #0 !dbg !1372 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1373, metadata !60), !dbg !1374
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1375, metadata !60), !dbg !1376
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1377, metadata !60), !dbg !1378
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !1379, metadata !60), !dbg !1380
  call void @llvm.dbg.declare(metadata double* %10, metadata !1381, metadata !60), !dbg !1382
  %20 = load double, double* %7, align 8, !dbg !1383
  %21 = load i32, i32* %6, align 4, !dbg !1384
  %22 = sitofp i32 %21 to double, !dbg !1384
  %23 = fadd double %22, 1.000000e+00, !dbg !1385
  %24 = call double @hypot(double %20, double %23) #5, !dbg !1386
  %25 = load i32, i32* %6, align 4, !dbg !1387
  %26 = sitofp i32 %25 to double, !dbg !1387
  %27 = fmul double 2.000000e+00, %26, !dbg !1388
  %28 = fadd double %27, 3.000000e+00, !dbg !1389
  %29 = load double, double* %8, align 8, !dbg !1390
  %30 = fmul double %28, %29, !dbg !1391
  %31 = fdiv double %24, %30, !dbg !1392
  store double %31, double* %10, align 8, !dbg !1382
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1393, metadata !60), !dbg !1394
  store i32 20000, i32* %11, align 4, !dbg !1394
  call void @llvm.dbg.declare(metadata double* %12, metadata !1395, metadata !60), !dbg !1396
  store double 1.000000e+00, double* %12, align 8, !dbg !1396
  call void @llvm.dbg.declare(metadata double* %13, metadata !1397, metadata !60), !dbg !1398
  store double 1.000000e+00, double* %13, align 8, !dbg !1398
  call void @llvm.dbg.declare(metadata double* %14, metadata !1399, metadata !60), !dbg !1400
  store double 0.000000e+00, double* %14, align 8, !dbg !1400
  call void @llvm.dbg.declare(metadata double* %15, metadata !1401, metadata !60), !dbg !1402
  store double 0.000000e+00, double* %15, align 8, !dbg !1402
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1403, metadata !60), !dbg !1404
  store i32 1, i32* %16, align 4, !dbg !1405
  br label %32, !dbg !1407

; <label>:32:                                     ; preds = %99, %4
  %33 = load i32, i32* %16, align 4, !dbg !1408
  %34 = icmp slt i32 %33, 20000, !dbg !1411
  br i1 %34, label %35, label %102, !dbg !1412

; <label>:35:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata double* %17, metadata !1413, metadata !60), !dbg !1415
  %36 = load i32, i32* %6, align 4, !dbg !1416
  %37 = sitofp i32 %36 to double, !dbg !1416
  %38 = fmul double 2.000000e+00, %37, !dbg !1417
  %39 = fadd double %38, 1.000000e+00, !dbg !1418
  %40 = load i32, i32* %16, align 4, !dbg !1419
  %41 = sitofp i32 %40 to double, !dbg !1419
  %42 = fmul double 2.000000e+00, %41, !dbg !1420
  %43 = fadd double %39, %42, !dbg !1421
  store double %43, double* %17, align 8, !dbg !1415
  call void @llvm.dbg.declare(metadata double* %18, metadata !1422, metadata !60), !dbg !1423
  %44 = load i32, i32* %6, align 4, !dbg !1424
  %45 = sitofp i32 %44 to double, !dbg !1424
  %46 = fadd double %45, 1.000000e+00, !dbg !1425
  %47 = load i32, i32* %16, align 4, !dbg !1426
  %48 = sitofp i32 %47 to double, !dbg !1426
  %49 = fadd double %46, %48, !dbg !1427
  store double %49, double* %18, align 8, !dbg !1423
  call void @llvm.dbg.declare(metadata double* %19, metadata !1428, metadata !60), !dbg !1429
  %50 = load double, double* %7, align 8, !dbg !1430
  %51 = load double, double* %7, align 8, !dbg !1431
  %52 = fmul double %50, %51, !dbg !1432
  %53 = load double, double* %18, align 8, !dbg !1433
  %54 = load double, double* %18, align 8, !dbg !1434
  %55 = fmul double %53, %54, !dbg !1435
  %56 = fadd double %52, %55, !dbg !1436
  %57 = fsub double -0.000000e+00, %56, !dbg !1437
  %58 = load double, double* %17, align 8, !dbg !1438
  %59 = load double, double* %17, align 8, !dbg !1439
  %60 = fadd double %59, 2.000000e+00, !dbg !1440
  %61 = fmul double %58, %60, !dbg !1441
  %62 = load double, double* %8, align 8, !dbg !1442
  %63 = fmul double %61, %62, !dbg !1443
  %64 = load double, double* %8, align 8, !dbg !1444
  %65 = fmul double %63, %64, !dbg !1445
  %66 = fdiv double %57, %65, !dbg !1446
  store double %66, double* %19, align 8, !dbg !1429
  %67 = load double, double* %19, align 8, !dbg !1447
  %68 = fsub double -0.000000e+00, %67, !dbg !1448
  %69 = load double, double* %14, align 8, !dbg !1449
  %70 = fadd double 1.000000e+00, %69, !dbg !1450
  %71 = fmul double %68, %70, !dbg !1451
  %72 = load double, double* %19, align 8, !dbg !1452
  %73 = load double, double* %14, align 8, !dbg !1453
  %74 = fadd double 1.000000e+00, %73, !dbg !1454
  %75 = fmul double %72, %74, !dbg !1455
  %76 = fadd double 1.000000e+00, %75, !dbg !1456
  %77 = fdiv double %71, %76, !dbg !1457
  store double %77, double* %14, align 8, !dbg !1458
  %78 = load double, double* %14, align 8, !dbg !1459
  %79 = load double, double* %12, align 8, !dbg !1460
  %80 = fmul double %79, %78, !dbg !1460
  store double %80, double* %12, align 8, !dbg !1460
  %81 = load double, double* %12, align 8, !dbg !1461
  %82 = load double, double* %13, align 8, !dbg !1462
  %83 = fadd double %82, %81, !dbg !1462
  store double %83, double* %13, align 8, !dbg !1462
  %84 = load i32, i32* %16, align 4, !dbg !1463
  %85 = sitofp i32 %84 to double, !dbg !1463
  %86 = fmul double 0x3CC0000000000000, %85, !dbg !1464
  %87 = load double, double* %12, align 8, !dbg !1465
  %88 = call double @fabs(double %87) #1, !dbg !1466
  %89 = fmul double %86, %88, !dbg !1467
  %90 = load double, double* %15, align 8, !dbg !1468
  %91 = fadd double %90, %89, !dbg !1468
  store double %91, double* %15, align 8, !dbg !1468
  %92 = load double, double* %12, align 8, !dbg !1469
  %93 = load double, double* %13, align 8, !dbg !1471
  %94 = fdiv double %92, %93, !dbg !1472
  %95 = call double @fabs(double %94) #1, !dbg !1473
  %96 = fcmp olt double %95, 0x3CB0000000000000, !dbg !1474
  br i1 %96, label %97, label %98, !dbg !1475

; <label>:97:                                     ; preds = %35
  br label %102, !dbg !1476

; <label>:98:                                     ; preds = %35
  br label %99, !dbg !1478

; <label>:99:                                     ; preds = %98
  %100 = load i32, i32* %16, align 4, !dbg !1479
  %101 = add nsw i32 %100, 1, !dbg !1479
  store i32 %101, i32* %16, align 4, !dbg !1479
  br label %32, !dbg !1481, !llvm.loop !1482

; <label>:102:                                    ; preds = %97, %32
  %103 = load double, double* %10, align 8, !dbg !1484
  %104 = load double, double* %13, align 8, !dbg !1485
  %105 = fmul double %103, %104, !dbg !1486
  %106 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1487
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %106, i32 0, i32 0, !dbg !1488
  store double %105, double* %107, align 8, !dbg !1489
  %108 = load double, double* %10, align 8, !dbg !1490
  %109 = load double, double* %12, align 8, !dbg !1491
  %110 = fmul double %108, %109, !dbg !1492
  %111 = call double @fabs(double %110) #1, !dbg !1493
  %112 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1494
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %112, i32 0, i32 1, !dbg !1495
  store double %111, double* %113, align 8, !dbg !1496
  %114 = load double, double* %10, align 8, !dbg !1497
  %115 = load double, double* %15, align 8, !dbg !1498
  %116 = fmul double %114, %115, !dbg !1499
  %117 = call double @fabs(double %116) #1, !dbg !1500
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1501
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 1, !dbg !1502
  %120 = load double, double* %119, align 8, !dbg !1503
  %121 = fadd double %120, %117, !dbg !1503
  store double %121, double* %119, align 8, !dbg !1503
  %122 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1504
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %122, i32 0, i32 0, !dbg !1505
  %124 = load double, double* %123, align 8, !dbg !1505
  %125 = call double @fabs(double %124) #1, !dbg !1506
  %126 = fmul double 0x3CD0000000000000, %125, !dbg !1507
  %127 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !1508
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %127, i32 0, i32 1, !dbg !1509
  %129 = load double, double* %128, align 8, !dbg !1510
  %130 = fadd double %129, %126, !dbg !1510
  store double %130, double* %128, align 8, !dbg !1510
  %131 = load i32, i32* %16, align 4, !dbg !1511
  %132 = icmp sge i32 %131, 20000, !dbg !1513
  br i1 %132, label %133, label %136, !dbg !1514

; <label>:133:                                    ; preds = %102
  br label %134, !dbg !1515, !llvm.loop !1516

; <label>:134:                                    ; preds = %133
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 238, i32 11), !dbg !1517
  store i32 11, i32* %5, align 4, !dbg !1517
  br label %137, !dbg !1517
                                                  ; No predecessors!
  br label %137, !dbg !1520

; <label>:136:                                    ; preds = %102
  store i32 0, i32* %5, align 4, !dbg !1522
  br label %137, !dbg !1522

; <label>:137:                                    ; preds = %134, %136, %135
  %138 = load i32, i32* %5, align 4, !dbg !1523
  ret i32 %138, !dbg !1523
}

; Function Attrs: nounwind
declare double @hypot(double, double) #4

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_legendre_H3d_array(i32, double, double, double*) #0 !dbg !1524 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1527, metadata !60), !dbg !1528
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1529, metadata !60), !dbg !1530
  store double %2, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !1531, metadata !60), !dbg !1532
  store double* %3, double** %9, align 8
  call void @llvm.dbg.declare(metadata double** %9, metadata !1533, metadata !60), !dbg !1534
  %27 = load double, double* %8, align 8, !dbg !1535
  %28 = fcmp olt double %27, 0.000000e+00, !dbg !1537
  br i1 %28, label %32, label %29, !dbg !1538

; <label>:29:                                     ; preds = %4
  %30 = load i32, i32* %6, align 4, !dbg !1539
  %31 = icmp slt i32 %30, 0, !dbg !1541
  br i1 %31, label %32, label %48, !dbg !1542

; <label>:32:                                     ; preds = %29, %4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1543, metadata !60), !dbg !1545
  store i32 0, i32* %10, align 4, !dbg !1546
  br label %33, !dbg !1548

; <label>:33:                                     ; preds = %42, %32
  %34 = load i32, i32* %10, align 4, !dbg !1549
  %35 = load i32, i32* %6, align 4, !dbg !1552
  %36 = icmp sle i32 %34, %35, !dbg !1553
  br i1 %36, label %37, label %45, !dbg !1554

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %10, align 4, !dbg !1555
  %39 = sext i32 %38 to i64, !dbg !1557
  %40 = load double*, double** %9, align 8, !dbg !1557
  %41 = getelementptr inbounds double, double* %40, i64 %39, !dbg !1557
  store double 0.000000e+00, double* %41, align 8, !dbg !1558
  br label %42, !dbg !1557

; <label>:42:                                     ; preds = %37
  %43 = load i32, i32* %10, align 4, !dbg !1559
  %44 = add nsw i32 %43, 1, !dbg !1559
  store i32 %44, i32* %10, align 4, !dbg !1559
  br label %33, !dbg !1561, !llvm.loop !1562

; <label>:45:                                     ; preds = %33
  br label %46, !dbg !1564, !llvm.loop !1565

; <label>:46:                                     ; preds = %45
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 503, i32 1), !dbg !1566
  store i32 1, i32* %5, align 4, !dbg !1566
  br label %181, !dbg !1566
                                                  ; No predecessors!
  br label %181, !dbg !1569

; <label>:48:                                     ; preds = %29
  %49 = load double, double* %8, align 8, !dbg !1570
  %50 = fcmp ogt double %49, 0x40862E42FEFA39EF, !dbg !1572
  br i1 %50, label %51, label %67, !dbg !1573

; <label>:51:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1574, metadata !60), !dbg !1576
  store i32 0, i32* %11, align 4, !dbg !1577
  br label %52, !dbg !1579

; <label>:52:                                     ; preds = %61, %51
  %53 = load i32, i32* %11, align 4, !dbg !1580
  %54 = load i32, i32* %6, align 4, !dbg !1583
  %55 = icmp sle i32 %53, %54, !dbg !1584
  br i1 %55, label %56, label %64, !dbg !1585

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* %11, align 4, !dbg !1586
  %58 = sext i32 %57 to i64, !dbg !1588
  %59 = load double*, double** %9, align 8, !dbg !1588
  %60 = getelementptr inbounds double, double* %59, i64 %58, !dbg !1588
  store double 0.000000e+00, double* %60, align 8, !dbg !1589
  br label %61, !dbg !1588

; <label>:61:                                     ; preds = %56
  %62 = load i32, i32* %11, align 4, !dbg !1590
  %63 = add nsw i32 %62, 1, !dbg !1590
  store i32 %63, i32* %11, align 4, !dbg !1590
  br label %52, !dbg !1592, !llvm.loop !1593

; <label>:64:                                     ; preds = %52
  br label %65, !dbg !1595, !llvm.loop !1596

; <label>:65:                                     ; preds = %64
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 509, i32 16), !dbg !1597
  store i32 16, i32* %5, align 4, !dbg !1597
  br label %181, !dbg !1597
                                                  ; No predecessors!
  br label %180, !dbg !1600

; <label>:67:                                     ; preds = %48
  %68 = load i32, i32* %6, align 4, !dbg !1601
  %69 = icmp eq i32 %68, 0, !dbg !1603
  br i1 %69, label %70, label %79, !dbg !1604

; <label>:70:                                     ; preds = %67
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !1605, metadata !60), !dbg !1607
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1608, metadata !60), !dbg !1609
  %71 = load double, double* %7, align 8, !dbg !1610
  %72 = load double, double* %8, align 8, !dbg !1611
  %73 = call i32 @gsl_sf_legendre_H3d_e(i32 0, double %71, double %72, %struct.gsl_sf_result_struct* %12), !dbg !1612
  store i32 %73, i32* %13, align 4, !dbg !1609
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !1613
  %75 = load double, double* %74, align 8, !dbg !1613
  %76 = load double*, double** %9, align 8, !dbg !1614
  %77 = getelementptr inbounds double, double* %76, i64 0, !dbg !1614
  store double %75, double* %77, align 8, !dbg !1615
  %78 = load i32, i32* %13, align 4, !dbg !1616
  store i32 %78, i32* %5, align 4, !dbg !1617
  br label %181, !dbg !1617

; <label>:79:                                     ; preds = %67
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !1618, metadata !60), !dbg !1620
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !1621, metadata !60), !dbg !1622
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1623, metadata !60), !dbg !1624
  %80 = load i32, i32* %6, align 4, !dbg !1625
  %81 = load double, double* %7, align 8, !dbg !1626
  %82 = load double, double* %8, align 8, !dbg !1627
  %83 = call i32 @gsl_sf_legendre_H3d_e(i32 %80, double %81, double %82, %struct.gsl_sf_result_struct* %14), !dbg !1628
  store i32 %83, i32* %16, align 4, !dbg !1624
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1629, metadata !60), !dbg !1630
  %84 = load i32, i32* %6, align 4, !dbg !1631
  %85 = sub nsw i32 %84, 1, !dbg !1632
  %86 = load double, double* %7, align 8, !dbg !1633
  %87 = load double, double* %8, align 8, !dbg !1634
  %88 = call i32 @gsl_sf_legendre_H3d_e(i32 %85, double %86, double %87, %struct.gsl_sf_result_struct* %15), !dbg !1635
  store i32 %88, i32* %17, align 4, !dbg !1630
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1636, metadata !60), !dbg !1637
  %89 = load i32, i32* %16, align 4, !dbg !1638
  %90 = icmp ne i32 %89, 0, !dbg !1638
  br i1 %90, label %91, label %93, !dbg !1638

; <label>:91:                                     ; preds = %79
  %92 = load i32, i32* %16, align 4, !dbg !1639
  br label %101, !dbg !1639

; <label>:93:                                     ; preds = %79
  %94 = load i32, i32* %17, align 4, !dbg !1641
  %95 = icmp ne i32 %94, 0, !dbg !1641
  br i1 %95, label %96, label %98, !dbg !1641

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %17, align 4, !dbg !1643
  br label %99, !dbg !1643

; <label>:98:                                     ; preds = %93
  br label %99, !dbg !1645

; <label>:99:                                     ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ], !dbg !1647
  br label %101, !dbg !1647

; <label>:101:                                    ; preds = %99, %91
  %102 = phi i32 [ %92, %91 ], [ %100, %99 ], !dbg !1649
  store i32 %102, i32* %18, align 4, !dbg !1651
  call void @llvm.dbg.declare(metadata double* %19, metadata !1652, metadata !60), !dbg !1653
  %103 = load double, double* %8, align 8, !dbg !1654
  %104 = call double @tanh(double %103) #5, !dbg !1655
  %105 = fdiv double 1.000000e+00, %104, !dbg !1656
  store double %105, double* %19, align 8, !dbg !1653
  call void @llvm.dbg.declare(metadata i32* %20, metadata !1657, metadata !60), !dbg !1658
  store i32 0, i32* %20, align 4, !dbg !1658
  call void @llvm.dbg.declare(metadata double* %21, metadata !1659, metadata !60), !dbg !1660
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !1661
  %107 = load double, double* %106, align 8, !dbg !1661
  store double %107, double* %21, align 8, !dbg !1660
  call void @llvm.dbg.declare(metadata double* %22, metadata !1662, metadata !60), !dbg !1663
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !1664
  %109 = load double, double* %108, align 8, !dbg !1664
  store double %109, double* %22, align 8, !dbg !1663
  call void @llvm.dbg.declare(metadata double* %23, metadata !1665, metadata !60), !dbg !1666
  call void @llvm.dbg.declare(metadata i32* %24, metadata !1667, metadata !60), !dbg !1668
  %110 = load double, double* %21, align 8, !dbg !1669
  %111 = load i32, i32* %6, align 4, !dbg !1670
  %112 = sext i32 %111 to i64, !dbg !1671
  %113 = load double*, double** %9, align 8, !dbg !1671
  %114 = getelementptr inbounds double, double* %113, i64 %112, !dbg !1671
  store double %110, double* %114, align 8, !dbg !1672
  %115 = load double, double* %22, align 8, !dbg !1673
  %116 = load i32, i32* %6, align 4, !dbg !1674
  %117 = sub nsw i32 %116, 1, !dbg !1675
  %118 = sext i32 %117 to i64, !dbg !1676
  %119 = load double*, double** %9, align 8, !dbg !1676
  %120 = getelementptr inbounds double, double* %119, i64 %118, !dbg !1676
  store double %115, double* %120, align 8, !dbg !1677
  %121 = load i32, i32* %6, align 4, !dbg !1678
  %122 = sub nsw i32 %121, 1, !dbg !1680
  store i32 %122, i32* %24, align 4, !dbg !1681
  br label %123, !dbg !1682

; <label>:123:                                    ; preds = %162, %101
  %124 = load i32, i32* %24, align 4, !dbg !1683
  %125 = icmp sgt i32 %124, 0, !dbg !1686
  br i1 %125, label %126, label %165, !dbg !1687

; <label>:126:                                    ; preds = %123
  call void @llvm.dbg.declare(metadata double* %25, metadata !1688, metadata !60), !dbg !1690
  %127 = load double, double* %7, align 8, !dbg !1691
  %128 = load i32, i32* %24, align 4, !dbg !1692
  %129 = sitofp i32 %128 to double, !dbg !1692
  %130 = call double @hypot(double %127, double %129) #5, !dbg !1693
  store double %130, double* %25, align 8, !dbg !1690
  call void @llvm.dbg.declare(metadata double* %26, metadata !1694, metadata !60), !dbg !1695
  %131 = load double, double* %7, align 8, !dbg !1696
  %132 = load i32, i32* %24, align 4, !dbg !1697
  %133 = sitofp i32 %132 to double, !dbg !1697
  %134 = fadd double %133, 1.000000e+00, !dbg !1698
  %135 = call double @hypot(double %131, double %134) #5, !dbg !1699
  store double %135, double* %26, align 8, !dbg !1695
  %136 = load i32, i32* %24, align 4, !dbg !1700
  %137 = sitofp i32 %136 to double, !dbg !1700
  %138 = fmul double 2.000000e+00, %137, !dbg !1701
  %139 = fadd double %138, 1.000000e+00, !dbg !1702
  %140 = load double, double* %19, align 8, !dbg !1703
  %141 = fmul double %139, %140, !dbg !1704
  %142 = load double, double* %22, align 8, !dbg !1705
  %143 = fmul double %141, %142, !dbg !1706
  %144 = load double, double* %26, align 8, !dbg !1707
  %145 = load double, double* %21, align 8, !dbg !1708
  %146 = fmul double %144, %145, !dbg !1709
  %147 = fsub double %143, %146, !dbg !1710
  %148 = load double, double* %25, align 8, !dbg !1711
  %149 = fdiv double %147, %148, !dbg !1712
  store double %149, double* %23, align 8, !dbg !1713
  %150 = load double, double* %23, align 8, !dbg !1714
  %151 = load i32, i32* %24, align 4, !dbg !1715
  %152 = sub nsw i32 %151, 1, !dbg !1716
  %153 = sext i32 %152 to i64, !dbg !1717
  %154 = load double*, double** %9, align 8, !dbg !1717
  %155 = getelementptr inbounds double, double* %154, i64 %153, !dbg !1717
  store double %150, double* %155, align 8, !dbg !1718
  %156 = load double, double* %23, align 8, !dbg !1719
  %157 = fcmp olt double %156, 0x7FEFFFFFFFFFFFFF, !dbg !1721
  br i1 %157, label %159, label %158, !dbg !1722

; <label>:158:                                    ; preds = %126
  store i32 16, i32* %20, align 4, !dbg !1723
  br label %159, !dbg !1725

; <label>:159:                                    ; preds = %158, %126
  %160 = load double, double* %22, align 8, !dbg !1726
  store double %160, double* %21, align 8, !dbg !1727
  %161 = load double, double* %23, align 8, !dbg !1728
  store double %161, double* %22, align 8, !dbg !1729
  br label %162, !dbg !1730

; <label>:162:                                    ; preds = %159
  %163 = load i32, i32* %24, align 4, !dbg !1731
  %164 = add nsw i32 %163, -1, !dbg !1731
  store i32 %164, i32* %24, align 4, !dbg !1731
  br label %123, !dbg !1733, !llvm.loop !1734

; <label>:165:                                    ; preds = %123
  %166 = load i32, i32* %20, align 4, !dbg !1736
  %167 = icmp ne i32 %166, 0, !dbg !1736
  br i1 %167, label %168, label %170, !dbg !1736

; <label>:168:                                    ; preds = %165
  %169 = load i32, i32* %20, align 4, !dbg !1737
  br label %178, !dbg !1737

; <label>:170:                                    ; preds = %165
  %171 = load i32, i32* %18, align 4, !dbg !1738
  %172 = icmp ne i32 %171, 0, !dbg !1738
  br i1 %172, label %173, label %175, !dbg !1738

; <label>:173:                                    ; preds = %170
  %174 = load i32, i32* %18, align 4, !dbg !1739
  br label %176, !dbg !1739

; <label>:175:                                    ; preds = %170
  br label %176, !dbg !1740

; <label>:176:                                    ; preds = %175, %173
  %177 = phi i32 [ %174, %173 ], [ 0, %175 ], !dbg !1741
  br label %178, !dbg !1741

; <label>:178:                                    ; preds = %176, %168
  %179 = phi i32 [ %169, %168 ], [ %177, %176 ], !dbg !1742
  store i32 %179, i32* %5, align 4, !dbg !1743
  br label %181, !dbg !1743

; <label>:180:                                    ; preds = %66
  br label %181

; <label>:181:                                    ; preds = %46, %65, %70, %178, %180, %47
  %182 = load i32, i32* %5, align 4, !dbg !1744
  ret i32 %182, !dbg !1744
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_H3d_0(double, double) #0 !dbg !1745 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1748, metadata !60), !dbg !1749
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1750, metadata !60), !dbg !1751
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1752, metadata !60), !dbg !1753
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1754, metadata !60), !dbg !1753
  %8 = load double, double* %4, align 8, !dbg !1753
  %9 = load double, double* %5, align 8, !dbg !1753
  %10 = call i32 @gsl_sf_legendre_H3d_0_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1753
  store i32 %10, i32* %7, align 4, !dbg !1753
  %11 = load i32, i32* %7, align 4, !dbg !1755
  %12 = icmp ne i32 %11, 0, !dbg !1755
  br i1 %12, label %13, label %19, !dbg !1753

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1757, !llvm.loop !1760

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1762
  call void @gsl_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 557, i32 %15), !dbg !1762
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1762
  %17 = load double, double* %16, align 8, !dbg !1762
  store double %17, double* %3, align 8, !dbg !1762
  br label %22, !dbg !1762
                                                  ; No predecessors!
  br label %19, !dbg !1765

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1767
  %21 = load double, double* %20, align 8, !dbg !1767
  store double %21, double* %3, align 8, !dbg !1767
  br label %22, !dbg !1767

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1769
  ret double %23, !dbg !1769
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_H3d_1(double, double) #0 !dbg !1770 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !1771, metadata !60), !dbg !1772
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1773, metadata !60), !dbg !1774
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1775, metadata !60), !dbg !1776
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1777, metadata !60), !dbg !1776
  %8 = load double, double* %4, align 8, !dbg !1776
  %9 = load double, double* %5, align 8, !dbg !1776
  %10 = call i32 @gsl_sf_legendre_H3d_1_e(double %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1776
  store i32 %10, i32* %7, align 4, !dbg !1776
  %11 = load i32, i32* %7, align 4, !dbg !1778
  %12 = icmp ne i32 %11, 0, !dbg !1778
  br i1 %12, label %13, label %19, !dbg !1776

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1780, !llvm.loop !1783

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1785
  call void @gsl_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 562, i32 %15), !dbg !1785
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1785
  %17 = load double, double* %16, align 8, !dbg !1785
  store double %17, double* %3, align 8, !dbg !1785
  br label %22, !dbg !1785
                                                  ; No predecessors!
  br label %19, !dbg !1788

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1790
  %21 = load double, double* %20, align 8, !dbg !1790
  store double %21, double* %3, align 8, !dbg !1790
  br label %22, !dbg !1790

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1792
  ret double %23, !dbg !1792
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_legendre_H3d(i32, double, double) #0 !dbg !1793 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1796, metadata !60), !dbg !1797
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !1798, metadata !60), !dbg !1799
  store double %2, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !1800, metadata !60), !dbg !1801
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !1802, metadata !60), !dbg !1803
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1804, metadata !60), !dbg !1803
  %10 = load i32, i32* %5, align 4, !dbg !1803
  %11 = load double, double* %6, align 8, !dbg !1803
  %12 = load double, double* %7, align 8, !dbg !1803
  %13 = call i32 @gsl_sf_legendre_H3d_e(i32 %10, double %11, double %12, %struct.gsl_sf_result_struct* %8), !dbg !1803
  store i32 %13, i32* %9, align 4, !dbg !1803
  %14 = load i32, i32* %9, align 4, !dbg !1805
  %15 = icmp ne i32 %14, 0, !dbg !1805
  br i1 %15, label %16, label %22, !dbg !1803

; <label>:16:                                     ; preds = %3
  br label %17, !dbg !1807, !llvm.loop !1810

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %9, align 4, !dbg !1812
  call void @gsl_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 567, i32 %18), !dbg !1812
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1812
  %20 = load double, double* %19, align 8, !dbg !1812
  store double %20, double* %4, align 8, !dbg !1812
  br label %25, !dbg !1812
                                                  ; No predecessors!
  br label %22, !dbg !1815

; <label>:22:                                     ; preds = %21, %3
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !1817
  %24 = load double, double* %23, align 8, !dbg !1817
  store double %24, double* %4, align 8, !dbg !1817
  br label %25, !dbg !1817

; <label>:25:                                     ; preds = %22, %17
  %26 = load double, double* %4, align 8, !dbg !1819
  ret double %26, !dbg !1819
}

declare i32 @gsl_sf_lngamma_e(double, %struct.gsl_sf_result_struct*) #2

declare i32 @gsl_sf_lngamma_complex_e(double, double, %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "legendre_H3d.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{i32 2, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"PIC Level", i32 2}
!44 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!45 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_0_e", scope: !1, file: !1, line: 248, type: !46, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !49, !51}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !53, line: 41, baseType: !54)
!53 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !53, line: 37, size: 128, align: 64, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !53, line: 38, baseType: !50, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !54, file: !53, line: 39, baseType: !50, size: 64, align: 64, offset: 64)
!58 = !{}
!59 = !DILocalVariable(name: "lambda", arg: 1, scope: !45, file: !1, line: 248, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 248, column: 38, scope: !45)
!62 = !DILocalVariable(name: "eta", arg: 2, scope: !45, file: !1, line: 248, type: !49)
!63 = !DILocation(line: 248, column: 59, scope: !45)
!64 = !DILocalVariable(name: "result", arg: 3, scope: !45, file: !1, line: 248, type: !51)
!65 = !DILocation(line: 248, column: 80, scope: !45)
!66 = !DILocation(line: 252, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !45, file: !1, line: 252, column: 6)
!68 = !DILocation(line: 252, column: 10, scope: !67)
!69 = !DILocation(line: 252, column: 6, scope: !45)
!70 = !DILocation(line: 253, column: 5, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 252, column: 17)
!72 = distinct !{!72, !70}
!73 = !DILocation(line: 253, column: 5, scope: !74)
!74 = !DILexicalBlockFile(scope: !75, file: !1, discriminator: 1)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 253, column: 5)
!76 = distinct !{!76, !77}
!77 = !DILocation(line: 253, column: 5, scope: !75)
!78 = !DILocation(line: 253, column: 5, scope: !79)
!79 = !DILexicalBlockFile(scope: !80, file: !1, discriminator: 2)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 253, column: 5)
!81 = !DILocation(line: 253, column: 5, scope: !82)
!82 = !DILexicalBlockFile(scope: !75, file: !1, discriminator: 3)
!83 = !DILocation(line: 254, column: 3, scope: !71)
!84 = !DILocation(line: 255, column: 11, scope: !85)
!85 = distinct !DILexicalBlock(scope: !67, file: !1, line: 255, column: 11)
!86 = !DILocation(line: 255, column: 15, scope: !85)
!87 = !DILocation(line: 255, column: 22, scope: !85)
!88 = !DILocation(line: 255, column: 25, scope: !89)
!89 = !DILexicalBlockFile(scope: !85, file: !1, discriminator: 1)
!90 = !DILocation(line: 255, column: 32, scope: !89)
!91 = !DILocation(line: 255, column: 11, scope: !89)
!92 = !DILocation(line: 256, column: 5, scope: !93)
!93 = distinct !DILexicalBlock(scope: !85, file: !1, line: 255, column: 40)
!94 = !DILocation(line: 256, column: 13, scope: !93)
!95 = !DILocation(line: 256, column: 17, scope: !93)
!96 = !DILocation(line: 257, column: 5, scope: !93)
!97 = !DILocation(line: 257, column: 13, scope: !93)
!98 = !DILocation(line: 257, column: 17, scope: !93)
!99 = !DILocation(line: 258, column: 5, scope: !93)
!100 = !DILocalVariable(name: "lam_eta", scope: !101, file: !1, line: 261, type: !49)
!101 = distinct !DILexicalBlock(scope: !85, file: !1, line: 260, column: 8)
!102 = !DILocation(line: 261, column: 18, scope: !101)
!103 = !DILocation(line: 261, column: 28, scope: !101)
!104 = !DILocation(line: 261, column: 37, scope: !101)
!105 = !DILocation(line: 261, column: 35, scope: !101)
!106 = !DILocalVariable(name: "s", scope: !101, file: !1, line: 262, type: !52)
!107 = !DILocation(line: 262, column: 19, scope: !101)
!108 = !DILocation(line: 263, column: 22, scope: !101)
!109 = !DILocation(line: 263, column: 58, scope: !101)
!110 = !DILocation(line: 263, column: 53, scope: !101)
!111 = !DILocation(line: 263, column: 51, scope: !101)
!112 = !DILocation(line: 263, column: 5, scope: !113)
!113 = !DILexicalBlockFile(scope: !101, file: !1, discriminator: 1)
!114 = !DILocation(line: 264, column: 8, scope: !115)
!115 = distinct !DILexicalBlock(scope: !101, file: !1, line: 264, column: 8)
!116 = !DILocation(line: 264, column: 12, scope: !115)
!117 = !DILocation(line: 264, column: 8, scope: !101)
!118 = !DILocalVariable(name: "f", scope: !119, file: !1, line: 265, type: !50)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 264, column: 40)
!120 = !DILocation(line: 265, column: 14, scope: !119)
!121 = !DILocation(line: 265, column: 24, scope: !119)
!122 = !DILocation(line: 265, column: 22, scope: !119)
!123 = !DILocation(line: 265, column: 38, scope: !119)
!124 = !DILocation(line: 265, column: 37, scope: !119)
!125 = !DILocation(line: 265, column: 33, scope: !119)
!126 = !DILocation(line: 265, column: 31, scope: !119)
!127 = !DILocation(line: 266, column: 22, scope: !119)
!128 = !DILocation(line: 266, column: 28, scope: !119)
!129 = !DILocation(line: 266, column: 24, scope: !119)
!130 = !DILocation(line: 266, column: 7, scope: !119)
!131 = !DILocation(line: 266, column: 15, scope: !119)
!132 = !DILocation(line: 266, column: 20, scope: !119)
!133 = !DILocation(line: 267, column: 27, scope: !119)
!134 = !DILocation(line: 267, column: 33, scope: !119)
!135 = !DILocation(line: 267, column: 29, scope: !119)
!136 = !DILocation(line: 267, column: 22, scope: !119)
!137 = !DILocation(line: 267, column: 46, scope: !119)
!138 = !DILocation(line: 267, column: 41, scope: !139)
!139 = !DILexicalBlockFile(scope: !119, file: !1, discriminator: 1)
!140 = !DILocation(line: 267, column: 51, scope: !119)
!141 = !DILocation(line: 267, column: 38, scope: !119)
!142 = !DILocation(line: 267, column: 58, scope: !119)
!143 = !DILocation(line: 267, column: 7, scope: !119)
!144 = !DILocation(line: 267, column: 15, scope: !119)
!145 = !DILocation(line: 267, column: 20, scope: !119)
!146 = !DILocation(line: 268, column: 27, scope: !119)
!147 = !DILocation(line: 268, column: 22, scope: !119)
!148 = !DILocation(line: 268, column: 34, scope: !119)
!149 = !DILocation(line: 268, column: 30, scope: !119)
!150 = !DILocation(line: 268, column: 7, scope: !119)
!151 = !DILocation(line: 268, column: 15, scope: !119)
!152 = !DILocation(line: 268, column: 19, scope: !119)
!153 = !DILocation(line: 269, column: 51, scope: !119)
!154 = !DILocation(line: 269, column: 59, scope: !119)
!155 = !DILocation(line: 269, column: 46, scope: !119)
!156 = !DILocation(line: 269, column: 44, scope: !119)
!157 = !DILocation(line: 269, column: 7, scope: !119)
!158 = !DILocation(line: 269, column: 15, scope: !119)
!159 = !DILocation(line: 269, column: 19, scope: !119)
!160 = !DILocation(line: 270, column: 5, scope: !119)
!161 = !DILocalVariable(name: "f", scope: !162, file: !1, line: 272, type: !50)
!162 = distinct !DILexicalBlock(scope: !115, file: !1, line: 271, column: 10)
!163 = !DILocation(line: 272, column: 14, scope: !162)
!164 = !DILocation(line: 272, column: 23, scope: !162)
!165 = !DILocation(line: 272, column: 35, scope: !162)
!166 = !DILocation(line: 272, column: 30, scope: !162)
!167 = !DILocation(line: 272, column: 29, scope: !162)
!168 = !DILocation(line: 272, column: 21, scope: !162)
!169 = !DILocation(line: 273, column: 22, scope: !162)
!170 = !DILocation(line: 273, column: 28, scope: !162)
!171 = !DILocation(line: 273, column: 24, scope: !162)
!172 = !DILocation(line: 273, column: 7, scope: !162)
!173 = !DILocation(line: 273, column: 15, scope: !162)
!174 = !DILocation(line: 273, column: 20, scope: !162)
!175 = !DILocation(line: 274, column: 27, scope: !162)
!176 = !DILocation(line: 274, column: 33, scope: !162)
!177 = !DILocation(line: 274, column: 29, scope: !162)
!178 = !DILocation(line: 274, column: 22, scope: !162)
!179 = !DILocation(line: 274, column: 46, scope: !162)
!180 = !DILocation(line: 274, column: 41, scope: !181)
!181 = !DILexicalBlockFile(scope: !162, file: !1, discriminator: 1)
!182 = !DILocation(line: 274, column: 51, scope: !162)
!183 = !DILocation(line: 274, column: 38, scope: !162)
!184 = !DILocation(line: 274, column: 58, scope: !162)
!185 = !DILocation(line: 274, column: 7, scope: !162)
!186 = !DILocation(line: 274, column: 15, scope: !162)
!187 = !DILocation(line: 274, column: 20, scope: !162)
!188 = !DILocation(line: 275, column: 27, scope: !162)
!189 = !DILocation(line: 275, column: 22, scope: !162)
!190 = !DILocation(line: 275, column: 34, scope: !162)
!191 = !DILocation(line: 275, column: 30, scope: !162)
!192 = !DILocation(line: 275, column: 7, scope: !162)
!193 = !DILocation(line: 275, column: 15, scope: !162)
!194 = !DILocation(line: 275, column: 19, scope: !162)
!195 = !DILocation(line: 276, column: 51, scope: !162)
!196 = !DILocation(line: 276, column: 59, scope: !162)
!197 = !DILocation(line: 276, column: 46, scope: !162)
!198 = !DILocation(line: 276, column: 44, scope: !162)
!199 = !DILocation(line: 276, column: 7, scope: !162)
!200 = !DILocation(line: 276, column: 15, scope: !162)
!201 = !DILocation(line: 276, column: 19, scope: !162)
!202 = !DILocation(line: 278, column: 5, scope: !101)
!203 = !DILocation(line: 280, column: 1, scope: !45)
!204 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_1_e", scope: !1, file: !1, line: 284, type: !46, isLocal: false, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!205 = !DILocalVariable(name: "lambda", arg: 1, scope: !204, file: !1, line: 284, type: !49)
!206 = !DILocation(line: 284, column: 38, scope: !204)
!207 = !DILocalVariable(name: "eta", arg: 2, scope: !204, file: !1, line: 284, type: !49)
!208 = !DILocation(line: 284, column: 59, scope: !204)
!209 = !DILocalVariable(name: "result", arg: 3, scope: !204, file: !1, line: 284, type: !51)
!210 = !DILocation(line: 284, column: 80, scope: !204)
!211 = !DILocalVariable(name: "xi", scope: !204, file: !1, line: 286, type: !49)
!212 = !DILocation(line: 286, column: 16, scope: !204)
!213 = !DILocation(line: 286, column: 29, scope: !204)
!214 = !DILocation(line: 286, column: 33, scope: !204)
!215 = !DILocation(line: 286, column: 32, scope: !204)
!216 = !DILocation(line: 286, column: 24, scope: !204)
!217 = !DILocalVariable(name: "lsq", scope: !204, file: !1, line: 287, type: !49)
!218 = !DILocation(line: 287, column: 16, scope: !204)
!219 = !DILocation(line: 287, column: 24, scope: !204)
!220 = !DILocation(line: 287, column: 31, scope: !204)
!221 = !DILocation(line: 287, column: 30, scope: !204)
!222 = !DILocalVariable(name: "lsqp1", scope: !204, file: !1, line: 288, type: !49)
!223 = !DILocation(line: 288, column: 16, scope: !204)
!224 = !DILocation(line: 288, column: 24, scope: !204)
!225 = !DILocation(line: 288, column: 28, scope: !204)
!226 = !DILocation(line: 292, column: 6, scope: !227)
!227 = distinct !DILexicalBlock(scope: !204, file: !1, line: 292, column: 6)
!228 = !DILocation(line: 292, column: 10, scope: !227)
!229 = !DILocation(line: 292, column: 6, scope: !204)
!230 = !DILocation(line: 293, column: 5, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !1, line: 292, column: 17)
!232 = distinct !{!232, !230}
!233 = !DILocation(line: 293, column: 5, scope: !234)
!234 = !DILexicalBlockFile(scope: !235, file: !1, discriminator: 1)
!235 = distinct !DILexicalBlock(scope: !231, file: !1, line: 293, column: 5)
!236 = distinct !{!236, !237}
!237 = !DILocation(line: 293, column: 5, scope: !235)
!238 = !DILocation(line: 293, column: 5, scope: !239)
!239 = !DILexicalBlockFile(scope: !240, file: !1, discriminator: 2)
!240 = distinct !DILexicalBlock(scope: !235, file: !1, line: 293, column: 5)
!241 = !DILocation(line: 293, column: 5, scope: !242)
!242 = !DILexicalBlockFile(scope: !235, file: !1, discriminator: 3)
!243 = !DILocation(line: 294, column: 3, scope: !231)
!244 = !DILocation(line: 295, column: 11, scope: !245)
!245 = distinct !DILexicalBlock(scope: !227, file: !1, line: 295, column: 11)
!246 = !DILocation(line: 295, column: 15, scope: !245)
!247 = !DILocation(line: 295, column: 22, scope: !245)
!248 = !DILocation(line: 295, column: 25, scope: !249)
!249 = !DILexicalBlockFile(scope: !245, file: !1, discriminator: 1)
!250 = !DILocation(line: 295, column: 32, scope: !249)
!251 = !DILocation(line: 295, column: 11, scope: !249)
!252 = !DILocation(line: 296, column: 5, scope: !253)
!253 = distinct !DILexicalBlock(scope: !245, file: !1, line: 295, column: 40)
!254 = !DILocation(line: 296, column: 13, scope: !253)
!255 = !DILocation(line: 296, column: 17, scope: !253)
!256 = !DILocation(line: 297, column: 5, scope: !253)
!257 = !DILocation(line: 297, column: 13, scope: !253)
!258 = !DILocation(line: 297, column: 17, scope: !253)
!259 = !DILocation(line: 298, column: 5, scope: !253)
!260 = !DILocation(line: 300, column: 11, scope: !261)
!261 = distinct !DILexicalBlock(scope: !245, file: !1, line: 300, column: 11)
!262 = !DILocation(line: 300, column: 14, scope: !261)
!263 = !DILocation(line: 300, column: 38, scope: !261)
!264 = !DILocation(line: 300, column: 41, scope: !265)
!265 = !DILexicalBlockFile(scope: !261, file: !1, discriminator: 1)
!266 = !DILocation(line: 300, column: 45, scope: !265)
!267 = !DILocation(line: 300, column: 11, scope: !265)
!268 = !DILocalVariable(name: "etasq", scope: !269, file: !1, line: 301, type: !50)
!269 = distinct !DILexicalBlock(scope: !261, file: !1, line: 300, column: 70)
!270 = !DILocation(line: 301, column: 12, scope: !269)
!271 = !DILocation(line: 301, column: 20, scope: !269)
!272 = !DILocation(line: 301, column: 24, scope: !269)
!273 = !DILocation(line: 301, column: 23, scope: !269)
!274 = !DILocalVariable(name: "xisq", scope: !269, file: !1, line: 302, type: !50)
!275 = !DILocation(line: 302, column: 12, scope: !269)
!276 = !DILocation(line: 302, column: 20, scope: !269)
!277 = !DILocation(line: 302, column: 23, scope: !269)
!278 = !DILocation(line: 302, column: 22, scope: !269)
!279 = !DILocalVariable(name: "term1", scope: !269, file: !1, line: 303, type: !50)
!280 = !DILocation(line: 303, column: 12, scope: !269)
!281 = !DILocation(line: 303, column: 21, scope: !269)
!282 = !DILocation(line: 303, column: 29, scope: !269)
!283 = !DILocation(line: 303, column: 27, scope: !269)
!284 = !DILocation(line: 303, column: 34, scope: !269)
!285 = !DILocalVariable(name: "term2", scope: !269, file: !1, line: 304, type: !50)
!286 = !DILocation(line: 304, column: 12, scope: !269)
!287 = !DILocation(line: 304, column: 26, scope: !269)
!288 = !DILocation(line: 304, column: 25, scope: !269)
!289 = !DILocation(line: 304, column: 32, scope: !269)
!290 = !DILocation(line: 304, column: 31, scope: !269)
!291 = !DILocation(line: 304, column: 44, scope: !269)
!292 = !DILocation(line: 304, column: 43, scope: !269)
!293 = !DILocation(line: 304, column: 50, scope: !269)
!294 = !DILocation(line: 304, column: 49, scope: !269)
!295 = !DILocation(line: 304, column: 38, scope: !269)
!296 = !DILocation(line: 304, column: 61, scope: !269)
!297 = !DILocation(line: 304, column: 60, scope: !269)
!298 = !DILocation(line: 304, column: 66, scope: !269)
!299 = !DILocation(line: 304, column: 65, scope: !269)
!300 = !DILocation(line: 304, column: 55, scope: !269)
!301 = !DILocation(line: 304, column: 20, scope: !269)
!302 = !DILocation(line: 304, column: 71, scope: !269)
!303 = !DILocalVariable(name: "sinh_term", scope: !269, file: !1, line: 305, type: !50)
!304 = !DILocation(line: 305, column: 12, scope: !269)
!305 = !DILocation(line: 305, column: 30, scope: !269)
!306 = !DILocation(line: 305, column: 34, scope: !269)
!307 = !DILocation(line: 305, column: 33, scope: !269)
!308 = !DILocation(line: 305, column: 37, scope: !269)
!309 = !DILocation(line: 305, column: 60, scope: !269)
!310 = !DILocation(line: 305, column: 59, scope: !269)
!311 = !DILocation(line: 305, column: 64, scope: !269)
!312 = !DILocation(line: 305, column: 63, scope: !269)
!313 = !DILocation(line: 305, column: 49, scope: !269)
!314 = !DILocation(line: 305, column: 42, scope: !269)
!315 = !DILocation(line: 305, column: 28, scope: !269)
!316 = !DILocalVariable(name: "pre", scope: !269, file: !1, line: 306, type: !50)
!317 = !DILocation(line: 306, column: 12, scope: !269)
!318 = !DILocation(line: 306, column: 18, scope: !269)
!319 = !DILocation(line: 306, column: 33, scope: !269)
!320 = !DILocation(line: 306, column: 28, scope: !269)
!321 = !DILocation(line: 306, column: 27, scope: !269)
!322 = !DILocation(line: 306, column: 42, scope: !269)
!323 = !DILocation(line: 306, column: 40, scope: !269)
!324 = !DILocation(line: 307, column: 20, scope: !269)
!325 = !DILocation(line: 307, column: 27, scope: !269)
!326 = !DILocation(line: 307, column: 35, scope: !269)
!327 = !DILocation(line: 307, column: 33, scope: !269)
!328 = !DILocation(line: 307, column: 24, scope: !269)
!329 = !DILocation(line: 307, column: 5, scope: !269)
!330 = !DILocation(line: 307, column: 13, scope: !269)
!331 = !DILocation(line: 307, column: 18, scope: !269)
!332 = !DILocation(line: 308, column: 20, scope: !269)
!333 = !DILocation(line: 308, column: 24, scope: !269)
!334 = !DILocation(line: 308, column: 50, scope: !269)
!335 = !DILocation(line: 308, column: 45, scope: !269)
!336 = !DILocation(line: 308, column: 64, scope: !269)
!337 = !DILocation(line: 308, column: 59, scope: !338)
!338 = !DILexicalBlockFile(scope: !269, file: !1, discriminator: 1)
!339 = !DILocation(line: 308, column: 57, scope: !269)
!340 = !DILocation(line: 308, column: 42, scope: !269)
!341 = !DILocation(line: 308, column: 5, scope: !269)
!342 = !DILocation(line: 308, column: 13, scope: !269)
!343 = !DILocation(line: 308, column: 18, scope: !269)
!344 = !DILocation(line: 309, column: 49, scope: !269)
!345 = !DILocation(line: 309, column: 57, scope: !269)
!346 = !DILocation(line: 309, column: 44, scope: !269)
!347 = !DILocation(line: 309, column: 42, scope: !269)
!348 = !DILocation(line: 309, column: 5, scope: !269)
!349 = !DILocation(line: 309, column: 13, scope: !269)
!350 = !DILocation(line: 309, column: 17, scope: !269)
!351 = !DILocation(line: 310, column: 5, scope: !269)
!352 = !DILocalVariable(name: "sin_term", scope: !353, file: !1, line: 313, type: !50)
!353 = distinct !DILexicalBlock(scope: !261, file: !1, line: 312, column: 8)
!354 = !DILocation(line: 313, column: 12, scope: !353)
!355 = !DILocalVariable(name: "cos_term", scope: !353, file: !1, line: 314, type: !50)
!356 = !DILocation(line: 314, column: 12, scope: !353)
!357 = !DILocalVariable(name: "coth_term", scope: !353, file: !1, line: 315, type: !50)
!358 = !DILocation(line: 315, column: 12, scope: !353)
!359 = !DILocalVariable(name: "sinh_term", scope: !353, file: !1, line: 316, type: !50)
!360 = !DILocation(line: 316, column: 12, scope: !353)
!361 = !DILocalVariable(name: "sin_term_err", scope: !353, file: !1, line: 317, type: !50)
!362 = !DILocation(line: 317, column: 12, scope: !353)
!363 = !DILocalVariable(name: "cos_term_err", scope: !353, file: !1, line: 318, type: !50)
!364 = !DILocation(line: 318, column: 12, scope: !353)
!365 = !DILocalVariable(name: "t1", scope: !353, file: !1, line: 319, type: !50)
!366 = !DILocation(line: 319, column: 12, scope: !353)
!367 = !DILocalVariable(name: "pre_val", scope: !353, file: !1, line: 320, type: !50)
!368 = !DILocation(line: 320, column: 12, scope: !353)
!369 = !DILocalVariable(name: "pre_err", scope: !353, file: !1, line: 321, type: !50)
!370 = !DILocation(line: 321, column: 12, scope: !353)
!371 = !DILocalVariable(name: "term1", scope: !353, file: !1, line: 322, type: !50)
!372 = !DILocation(line: 322, column: 12, scope: !353)
!373 = !DILocalVariable(name: "term2", scope: !353, file: !1, line: 323, type: !50)
!374 = !DILocation(line: 323, column: 12, scope: !353)
!375 = !DILocation(line: 324, column: 8, scope: !376)
!376 = distinct !DILexicalBlock(scope: !353, file: !1, line: 324, column: 8)
!377 = !DILocation(line: 324, column: 11, scope: !376)
!378 = !DILocation(line: 324, column: 8, scope: !353)
!379 = !DILocation(line: 325, column: 24, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !1, line: 324, column: 36)
!381 = !DILocation(line: 325, column: 27, scope: !380)
!382 = !DILocation(line: 325, column: 26, scope: !380)
!383 = !DILocation(line: 325, column: 29, scope: !380)
!384 = !DILocation(line: 325, column: 43, scope: !380)
!385 = !DILocation(line: 325, column: 46, scope: !380)
!386 = !DILocation(line: 325, column: 45, scope: !380)
!387 = !DILocation(line: 325, column: 48, scope: !380)
!388 = !DILocation(line: 325, column: 41, scope: !380)
!389 = !DILocation(line: 325, column: 34, scope: !380)
!390 = !DILocation(line: 325, column: 22, scope: !380)
!391 = !DILocation(line: 325, column: 16, scope: !380)
!392 = !DILocation(line: 326, column: 28, scope: !380)
!393 = !DILocation(line: 326, column: 27, scope: !380)
!394 = !DILocation(line: 326, column: 31, scope: !380)
!395 = !DILocation(line: 326, column: 30, scope: !380)
!396 = !DILocation(line: 326, column: 43, scope: !380)
!397 = !DILocation(line: 326, column: 46, scope: !380)
!398 = !DILocation(line: 326, column: 45, scope: !380)
!399 = !DILocation(line: 326, column: 48, scope: !380)
!400 = !DILocation(line: 326, column: 41, scope: !380)
!401 = !DILocation(line: 326, column: 34, scope: !380)
!402 = !DILocation(line: 326, column: 22, scope: !380)
!403 = !DILocation(line: 326, column: 16, scope: !380)
!404 = !DILocation(line: 327, column: 20, scope: !380)
!405 = !DILocation(line: 328, column: 20, scope: !380)
!406 = !DILocation(line: 329, column: 5, scope: !380)
!407 = !DILocalVariable(name: "sin_xi_result", scope: !408, file: !1, line: 331, type: !52)
!408 = distinct !DILexicalBlock(scope: !376, file: !1, line: 330, column: 10)
!409 = !DILocation(line: 331, column: 21, scope: !408)
!410 = !DILocalVariable(name: "cos_xi_result", scope: !408, file: !1, line: 332, type: !52)
!411 = !DILocation(line: 332, column: 21, scope: !408)
!412 = !DILocation(line: 333, column: 20, scope: !408)
!413 = !DILocation(line: 333, column: 7, scope: !408)
!414 = !DILocation(line: 334, column: 20, scope: !408)
!415 = !DILocation(line: 334, column: 7, scope: !408)
!416 = !DILocation(line: 335, column: 32, scope: !408)
!417 = !DILocation(line: 335, column: 36, scope: !408)
!418 = !DILocation(line: 335, column: 35, scope: !408)
!419 = !DILocation(line: 335, column: 16, scope: !408)
!420 = !DILocation(line: 336, column: 32, scope: !408)
!421 = !DILocation(line: 336, column: 16, scope: !408)
!422 = !DILocation(line: 337, column: 36, scope: !408)
!423 = !DILocation(line: 337, column: 45, scope: !408)
!424 = !DILocation(line: 337, column: 40, scope: !408)
!425 = !DILocation(line: 337, column: 39, scope: !408)
!426 = !DILocation(line: 337, column: 20, scope: !408)
!427 = !DILocation(line: 338, column: 36, scope: !408)
!428 = !DILocation(line: 338, column: 20, scope: !408)
!429 = !DILocation(line: 340, column: 8, scope: !430)
!430 = distinct !DILexicalBlock(scope: !353, file: !1, line: 340, column: 8)
!431 = !DILocation(line: 340, column: 12, scope: !430)
!432 = !DILocation(line: 340, column: 8, scope: !353)
!433 = !DILocation(line: 341, column: 25, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !1, line: 340, column: 37)
!435 = !DILocation(line: 341, column: 29, scope: !434)
!436 = !DILocation(line: 341, column: 28, scope: !434)
!437 = !DILocation(line: 341, column: 32, scope: !434)
!438 = !DILocation(line: 341, column: 46, scope: !434)
!439 = !DILocation(line: 341, column: 50, scope: !434)
!440 = !DILocation(line: 341, column: 49, scope: !434)
!441 = !DILocation(line: 341, column: 53, scope: !434)
!442 = !DILocation(line: 341, column: 44, scope: !434)
!443 = !DILocation(line: 341, column: 37, scope: !434)
!444 = !DILocation(line: 341, column: 23, scope: !434)
!445 = !DILocation(line: 341, column: 17, scope: !434)
!446 = !DILocation(line: 342, column: 25, scope: !434)
!447 = !DILocation(line: 342, column: 29, scope: !434)
!448 = !DILocation(line: 342, column: 28, scope: !434)
!449 = !DILocation(line: 342, column: 32, scope: !434)
!450 = !DILocation(line: 342, column: 55, scope: !434)
!451 = !DILocation(line: 342, column: 54, scope: !434)
!452 = !DILocation(line: 342, column: 59, scope: !434)
!453 = !DILocation(line: 342, column: 58, scope: !434)
!454 = !DILocation(line: 342, column: 44, scope: !434)
!455 = !DILocation(line: 342, column: 37, scope: !434)
!456 = !DILocation(line: 342, column: 23, scope: !434)
!457 = !DILocation(line: 342, column: 17, scope: !434)
!458 = !DILocation(line: 343, column: 5, scope: !434)
!459 = !DILocation(line: 345, column: 19, scope: !460)
!460 = distinct !DILexicalBlock(scope: !430, file: !1, line: 344, column: 10)
!461 = !DILocation(line: 345, column: 28, scope: !460)
!462 = !DILocation(line: 345, column: 23, scope: !460)
!463 = !DILocation(line: 345, column: 22, scope: !460)
!464 = !DILocation(line: 345, column: 17, scope: !460)
!465 = !DILocation(line: 346, column: 19, scope: !460)
!466 = !DILocation(line: 346, column: 28, scope: !460)
!467 = !DILocation(line: 346, column: 23, scope: !460)
!468 = !DILocation(line: 346, column: 22, scope: !460)
!469 = !DILocation(line: 346, column: 17, scope: !460)
!470 = !DILocation(line: 348, column: 15, scope: !353)
!471 = !DILocation(line: 348, column: 10, scope: !353)
!472 = !DILocation(line: 348, column: 24, scope: !353)
!473 = !DILocation(line: 348, column: 22, scope: !353)
!474 = !DILocation(line: 348, column: 8, scope: !353)
!475 = !DILocation(line: 349, column: 15, scope: !353)
!476 = !DILocation(line: 349, column: 25, scope: !353)
!477 = !DILocation(line: 349, column: 24, scope: !353)
!478 = !DILocation(line: 349, column: 13, scope: !353)
!479 = !DILocation(line: 350, column: 44, scope: !353)
!480 = !DILocation(line: 350, column: 39, scope: !353)
!481 = !DILocation(line: 350, column: 37, scope: !353)
!482 = !DILocation(line: 350, column: 13, scope: !353)
!483 = !DILocation(line: 351, column: 13, scope: !353)
!484 = !DILocation(line: 351, column: 22, scope: !353)
!485 = !DILocation(line: 351, column: 21, scope: !353)
!486 = !DILocation(line: 351, column: 11, scope: !353)
!487 = !DILocation(line: 352, column: 13, scope: !353)
!488 = !DILocation(line: 352, column: 11, scope: !353)
!489 = !DILocation(line: 353, column: 20, scope: !353)
!490 = !DILocation(line: 353, column: 31, scope: !353)
!491 = !DILocation(line: 353, column: 39, scope: !353)
!492 = !DILocation(line: 353, column: 37, scope: !353)
!493 = !DILocation(line: 353, column: 28, scope: !353)
!494 = !DILocation(line: 353, column: 5, scope: !353)
!495 = !DILocation(line: 353, column: 13, scope: !353)
!496 = !DILocation(line: 353, column: 18, scope: !353)
!497 = !DILocation(line: 354, column: 20, scope: !353)
!498 = !DILocation(line: 354, column: 35, scope: !353)
!499 = !DILocation(line: 354, column: 43, scope: !353)
!500 = !DILocation(line: 354, column: 41, scope: !353)
!501 = !DILocation(line: 354, column: 30, scope: !353)
!502 = !DILocation(line: 354, column: 28, scope: !353)
!503 = !DILocation(line: 354, column: 5, scope: !353)
!504 = !DILocation(line: 354, column: 13, scope: !353)
!505 = !DILocation(line: 354, column: 18, scope: !353)
!506 = !DILocation(line: 355, column: 20, scope: !353)
!507 = !DILocation(line: 355, column: 31, scope: !353)
!508 = !DILocation(line: 355, column: 46, scope: !353)
!509 = !DILocation(line: 355, column: 44, scope: !353)
!510 = !DILocation(line: 355, column: 58, scope: !353)
!511 = !DILocation(line: 355, column: 56, scope: !353)
!512 = !DILocation(line: 355, column: 28, scope: !353)
!513 = !DILocation(line: 355, column: 5, scope: !353)
!514 = !DILocation(line: 355, column: 13, scope: !353)
!515 = !DILocation(line: 355, column: 17, scope: !353)
!516 = !DILocation(line: 356, column: 20, scope: !353)
!517 = !DILocation(line: 356, column: 35, scope: !353)
!518 = !DILocation(line: 356, column: 41, scope: !353)
!519 = !DILocation(line: 356, column: 40, scope: !353)
!520 = !DILocation(line: 356, column: 30, scope: !353)
!521 = !DILocation(line: 356, column: 28, scope: !353)
!522 = !DILocation(line: 356, column: 56, scope: !353)
!523 = !DILocation(line: 356, column: 51, scope: !524)
!524 = !DILexicalBlockFile(scope: !353, file: !1, discriminator: 1)
!525 = !DILocation(line: 356, column: 61, scope: !353)
!526 = !DILocation(line: 356, column: 48, scope: !353)
!527 = !DILocation(line: 356, column: 68, scope: !353)
!528 = !DILocation(line: 356, column: 5, scope: !353)
!529 = !DILocation(line: 356, column: 13, scope: !353)
!530 = !DILocation(line: 356, column: 17, scope: !353)
!531 = !DILocation(line: 357, column: 49, scope: !353)
!532 = !DILocation(line: 357, column: 57, scope: !353)
!533 = !DILocation(line: 357, column: 44, scope: !353)
!534 = !DILocation(line: 357, column: 42, scope: !353)
!535 = !DILocation(line: 357, column: 5, scope: !353)
!536 = !DILocation(line: 357, column: 13, scope: !353)
!537 = !DILocation(line: 357, column: 17, scope: !353)
!538 = !DILocation(line: 358, column: 5, scope: !353)
!539 = !DILocation(line: 360, column: 1, scope: !204)
!540 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_e", scope: !1, file: !1, line: 364, type: !541, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!541 = !DISubroutineType(types: !542)
!542 = !{!48, !543, !49, !49, !51}
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!544 = !DILocalVariable(name: "ell", arg: 1, scope: !540, file: !1, line: 364, type: !543)
!545 = !DILocation(line: 364, column: 33, scope: !540)
!546 = !DILocalVariable(name: "lambda", arg: 2, scope: !540, file: !1, line: 364, type: !49)
!547 = !DILocation(line: 364, column: 51, scope: !540)
!548 = !DILocalVariable(name: "eta", arg: 3, scope: !540, file: !1, line: 364, type: !49)
!549 = !DILocation(line: 364, column: 72, scope: !540)
!550 = !DILocalVariable(name: "result", arg: 4, scope: !540, file: !1, line: 365, type: !51)
!551 = !DILocation(line: 365, column: 42, scope: !540)
!552 = !DILocalVariable(name: "abs_lam", scope: !540, file: !1, line: 367, type: !49)
!553 = !DILocation(line: 367, column: 16, scope: !540)
!554 = !DILocation(line: 367, column: 31, scope: !540)
!555 = !DILocation(line: 367, column: 26, scope: !540)
!556 = !DILocalVariable(name: "lsq", scope: !540, file: !1, line: 368, type: !49)
!557 = !DILocation(line: 368, column: 16, scope: !540)
!558 = !DILocation(line: 368, column: 26, scope: !540)
!559 = !DILocation(line: 368, column: 34, scope: !540)
!560 = !DILocation(line: 368, column: 33, scope: !540)
!561 = !DILocalVariable(name: "xi", scope: !540, file: !1, line: 369, type: !49)
!562 = !DILocation(line: 369, column: 16, scope: !540)
!563 = !DILocation(line: 369, column: 26, scope: !540)
!564 = !DILocation(line: 369, column: 36, scope: !540)
!565 = !DILocation(line: 369, column: 34, scope: !540)
!566 = !DILocalVariable(name: "cosh_eta", scope: !540, file: !1, line: 370, type: !49)
!567 = !DILocation(line: 370, column: 16, scope: !540)
!568 = !DILocation(line: 370, column: 32, scope: !540)
!569 = !DILocation(line: 370, column: 27, scope: !540)
!570 = !DILocation(line: 374, column: 6, scope: !571)
!571 = distinct !DILexicalBlock(scope: !540, file: !1, line: 374, column: 6)
!572 = !DILocation(line: 374, column: 10, scope: !571)
!573 = !DILocation(line: 374, column: 6, scope: !540)
!574 = !DILocation(line: 375, column: 5, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !1, line: 374, column: 17)
!576 = distinct !{!576, !574}
!577 = !DILocation(line: 375, column: 5, scope: !578)
!578 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 1)
!579 = distinct !DILexicalBlock(scope: !575, file: !1, line: 375, column: 5)
!580 = distinct !{!580, !581}
!581 = !DILocation(line: 375, column: 5, scope: !579)
!582 = !DILocation(line: 375, column: 5, scope: !583)
!583 = !DILexicalBlockFile(scope: !584, file: !1, discriminator: 2)
!584 = distinct !DILexicalBlock(scope: !579, file: !1, line: 375, column: 5)
!585 = !DILocation(line: 375, column: 5, scope: !586)
!586 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 3)
!587 = !DILocation(line: 376, column: 3, scope: !575)
!588 = !DILocation(line: 377, column: 11, scope: !589)
!589 = distinct !DILexicalBlock(scope: !571, file: !1, line: 377, column: 11)
!590 = !DILocation(line: 377, column: 15, scope: !589)
!591 = !DILocation(line: 377, column: 11, scope: !571)
!592 = !DILocation(line: 379, column: 5, scope: !593)
!593 = distinct !DILexicalBlock(scope: !589, file: !1, line: 377, column: 34)
!594 = distinct !{!594, !592}
!595 = !DILocation(line: 379, column: 5, scope: !596)
!596 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 1)
!597 = distinct !DILexicalBlock(scope: !593, file: !1, line: 379, column: 5)
!598 = distinct !{!598, !599}
!599 = !DILocation(line: 379, column: 5, scope: !597)
!600 = !DILocation(line: 379, column: 5, scope: !601)
!601 = !DILexicalBlockFile(scope: !602, file: !1, discriminator: 2)
!602 = distinct !DILexicalBlock(scope: !597, file: !1, line: 379, column: 5)
!603 = !DILocation(line: 379, column: 5, scope: !604)
!604 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 3)
!605 = !DILocation(line: 380, column: 3, scope: !593)
!606 = !DILocation(line: 381, column: 11, scope: !607)
!607 = distinct !DILexicalBlock(scope: !589, file: !1, line: 381, column: 11)
!608 = !DILocation(line: 381, column: 15, scope: !607)
!609 = !DILocation(line: 381, column: 11, scope: !589)
!610 = !DILocation(line: 382, column: 36, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !1, line: 381, column: 21)
!612 = !DILocation(line: 382, column: 44, scope: !611)
!613 = !DILocation(line: 382, column: 49, scope: !611)
!614 = !DILocation(line: 382, column: 12, scope: !611)
!615 = !DILocation(line: 382, column: 5, scope: !611)
!616 = !DILocation(line: 384, column: 11, scope: !617)
!617 = distinct !DILexicalBlock(scope: !607, file: !1, line: 384, column: 11)
!618 = !DILocation(line: 384, column: 15, scope: !617)
!619 = !DILocation(line: 384, column: 11, scope: !607)
!620 = !DILocation(line: 385, column: 36, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !1, line: 384, column: 21)
!622 = !DILocation(line: 385, column: 44, scope: !621)
!623 = !DILocation(line: 385, column: 49, scope: !621)
!624 = !DILocation(line: 385, column: 12, scope: !621)
!625 = !DILocation(line: 385, column: 5, scope: !621)
!626 = !DILocation(line: 387, column: 11, scope: !627)
!627 = distinct !DILexicalBlock(scope: !617, file: !1, line: 387, column: 11)
!628 = !DILocation(line: 387, column: 15, scope: !627)
!629 = !DILocation(line: 387, column: 11, scope: !617)
!630 = !DILocation(line: 388, column: 5, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !1, line: 387, column: 23)
!632 = !DILocation(line: 388, column: 13, scope: !631)
!633 = !DILocation(line: 388, column: 17, scope: !631)
!634 = !DILocation(line: 389, column: 5, scope: !631)
!635 = !DILocation(line: 389, column: 13, scope: !631)
!636 = !DILocation(line: 389, column: 17, scope: !631)
!637 = !DILocation(line: 390, column: 5, scope: !631)
!638 = !DILocation(line: 392, column: 11, scope: !639)
!639 = distinct !DILexicalBlock(scope: !627, file: !1, line: 392, column: 11)
!640 = !DILocation(line: 392, column: 14, scope: !639)
!641 = !DILocation(line: 392, column: 11, scope: !627)
!642 = !DILocation(line: 393, column: 32, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !1, line: 392, column: 21)
!644 = !DILocation(line: 393, column: 37, scope: !643)
!645 = !DILocation(line: 393, column: 45, scope: !643)
!646 = !DILocation(line: 393, column: 50, scope: !643)
!647 = !DILocation(line: 393, column: 12, scope: !643)
!648 = !DILocation(line: 393, column: 5, scope: !643)
!649 = !DILocation(line: 395, column: 12, scope: !650)
!650 = distinct !DILexicalBlock(scope: !639, file: !1, line: 395, column: 11)
!651 = !DILocation(line: 395, column: 16, scope: !650)
!652 = !DILocation(line: 395, column: 15, scope: !650)
!653 = !DILocation(line: 395, column: 20, scope: !650)
!654 = !DILocation(line: 395, column: 19, scope: !650)
!655 = !DILocation(line: 395, column: 34, scope: !650)
!656 = !DILocation(line: 395, column: 33, scope: !650)
!657 = !DILocation(line: 395, column: 25, scope: !650)
!658 = !DILocation(line: 395, column: 24, scope: !650)
!659 = !DILocation(line: 395, column: 40, scope: !650)
!660 = !DILocation(line: 395, column: 49, scope: !650)
!661 = !DILocation(line: 395, column: 48, scope: !650)
!662 = !DILocation(line: 395, column: 38, scope: !650)
!663 = !DILocation(line: 395, column: 59, scope: !650)
!664 = !DILocation(line: 395, column: 11, scope: !639)
!665 = !DILocalVariable(name: "P", scope: !666, file: !1, line: 398, type: !52)
!666 = distinct !DILexicalBlock(scope: !650, file: !1, line: 395, column: 88)
!667 = !DILocation(line: 398, column: 19, scope: !666)
!668 = !DILocalVariable(name: "lm", scope: !666, file: !1, line: 399, type: !50)
!669 = !DILocation(line: 399, column: 12, scope: !666)
!670 = !DILocalVariable(name: "stat_P", scope: !666, file: !1, line: 400, type: !48)
!671 = !DILocation(line: 400, column: 9, scope: !666)
!672 = !DILocation(line: 400, column: 45, scope: !666)
!673 = !DILocation(line: 400, column: 44, scope: !666)
!674 = !DILocation(line: 400, column: 48, scope: !666)
!675 = !DILocation(line: 400, column: 54, scope: !666)
!676 = !DILocation(line: 400, column: 62, scope: !666)
!677 = !DILocation(line: 400, column: 18, scope: !666)
!678 = !DILocation(line: 401, column: 10, scope: !679)
!679 = distinct !DILexicalBlock(scope: !666, file: !1, line: 401, column: 8)
!680 = !DILocation(line: 401, column: 14, scope: !679)
!681 = !DILocation(line: 401, column: 8, scope: !666)
!682 = !DILocation(line: 402, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !679, file: !1, line: 401, column: 22)
!684 = !DILocation(line: 402, column: 15, scope: !683)
!685 = !DILocation(line: 402, column: 19, scope: !683)
!686 = !DILocation(line: 403, column: 7, scope: !683)
!687 = !DILocation(line: 403, column: 15, scope: !683)
!688 = !DILocation(line: 403, column: 19, scope: !683)
!689 = !DILocation(line: 404, column: 14, scope: !683)
!690 = !DILocation(line: 404, column: 7, scope: !683)
!691 = !DILocalVariable(name: "lnN", scope: !692, file: !1, line: 407, type: !50)
!692 = distinct !DILexicalBlock(scope: !679, file: !1, line: 406, column: 10)
!693 = !DILocation(line: 407, column: 14, scope: !692)
!694 = !DILocalVariable(name: "lnsh", scope: !692, file: !1, line: 408, type: !52)
!695 = !DILocation(line: 408, column: 21, scope: !692)
!696 = !DILocalVariable(name: "ln_abslam", scope: !692, file: !1, line: 409, type: !50)
!697 = !DILocation(line: 409, column: 14, scope: !692)
!698 = !DILocalVariable(name: "lnpre_val", scope: !692, file: !1, line: 410, type: !50)
!699 = !DILocation(line: 410, column: 14, scope: !692)
!700 = !DILocalVariable(name: "lnpre_err", scope: !692, file: !1, line: 410, type: !50)
!701 = !DILocation(line: 410, column: 25, scope: !692)
!702 = !DILocalVariable(name: "stat_e", scope: !692, file: !1, line: 411, type: !48)
!703 = !DILocation(line: 411, column: 11, scope: !692)
!704 = !DILocation(line: 412, column: 23, scope: !692)
!705 = !DILocation(line: 412, column: 7, scope: !692)
!706 = !DILocation(line: 413, column: 27, scope: !692)
!707 = !DILocation(line: 413, column: 32, scope: !692)
!708 = !DILocation(line: 413, column: 7, scope: !692)
!709 = !DILocation(line: 414, column: 23, scope: !692)
!710 = !DILocation(line: 414, column: 19, scope: !692)
!711 = !DILocation(line: 414, column: 17, scope: !692)
!712 = !DILocation(line: 415, column: 34, scope: !692)
!713 = !DILocation(line: 415, column: 32, scope: !692)
!714 = !DILocation(line: 415, column: 38, scope: !692)
!715 = !DILocation(line: 415, column: 53, scope: !692)
!716 = !DILocation(line: 415, column: 46, scope: !692)
!717 = !DILocation(line: 415, column: 23, scope: !692)
!718 = !DILocation(line: 415, column: 60, scope: !692)
!719 = !DILocation(line: 415, column: 58, scope: !692)
!720 = !DILocation(line: 415, column: 18, scope: !692)
!721 = !DILocation(line: 416, column: 25, scope: !692)
!722 = !DILocation(line: 416, column: 18, scope: !692)
!723 = !DILocation(line: 417, column: 72, scope: !692)
!724 = !DILocation(line: 417, column: 67, scope: !692)
!725 = !DILocation(line: 417, column: 65, scope: !692)
!726 = !DILocation(line: 417, column: 48, scope: !692)
!727 = !DILocation(line: 417, column: 85, scope: !692)
!728 = !DILocation(line: 417, column: 80, scope: !729)
!729 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 1)
!730 = !DILocation(line: 417, column: 78, scope: !692)
!731 = !DILocation(line: 417, column: 42, scope: !692)
!732 = !DILocation(line: 417, column: 17, scope: !692)
!733 = !DILocation(line: 418, column: 49, scope: !692)
!734 = !DILocation(line: 418, column: 44, scope: !692)
!735 = !DILocation(line: 418, column: 42, scope: !692)
!736 = !DILocation(line: 418, column: 17, scope: !692)
!737 = !DILocation(line: 419, column: 38, scope: !692)
!738 = !DILocation(line: 419, column: 50, scope: !692)
!739 = !DILocation(line: 419, column: 48, scope: !692)
!740 = !DILocation(line: 419, column: 54, scope: !692)
!741 = !DILocation(line: 419, column: 67, scope: !692)
!742 = !DILocation(line: 419, column: 74, scope: !692)
!743 = !DILocation(line: 419, column: 79, scope: !692)
!744 = !DILocation(line: 419, column: 16, scope: !692)
!745 = !DILocation(line: 419, column: 14, scope: !692)
!746 = !DILocation(line: 420, column: 14, scope: !692)
!747 = !DILocation(line: 420, column: 14, scope: !729)
!748 = !DILocation(line: 420, column: 14, scope: !749)
!749 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 2)
!750 = !DILocation(line: 420, column: 14, scope: !751)
!751 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 3)
!752 = !DILocation(line: 420, column: 14, scope: !753)
!753 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 4)
!754 = !DILocation(line: 420, column: 14, scope: !755)
!755 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 5)
!756 = !DILocation(line: 420, column: 14, scope: !757)
!757 = !DILexicalBlockFile(scope: !692, file: !1, discriminator: 6)
!758 = !DILocation(line: 420, column: 7, scope: !757)
!759 = !DILocation(line: 423, column: 11, scope: !760)
!760 = distinct !DILexicalBlock(scope: !650, file: !1, line: 423, column: 11)
!761 = !DILocation(line: 423, column: 28, scope: !760)
!762 = !DILocation(line: 423, column: 27, scope: !760)
!763 = !DILocation(line: 423, column: 32, scope: !760)
!764 = !DILocation(line: 423, column: 31, scope: !760)
!765 = !DILocation(line: 423, column: 19, scope: !760)
!766 = !DILocation(line: 423, column: 11, scope: !650)
!767 = !DILocalVariable(name: "P", scope: !768, file: !1, line: 426, type: !52)
!768 = distinct !DILexicalBlock(scope: !760, file: !1, line: 423, column: 37)
!769 = !DILocation(line: 426, column: 19, scope: !768)
!770 = !DILocalVariable(name: "lm", scope: !768, file: !1, line: 427, type: !50)
!771 = !DILocation(line: 427, column: 12, scope: !768)
!772 = !DILocalVariable(name: "stat_P", scope: !768, file: !1, line: 428, type: !48)
!773 = !DILocation(line: 428, column: 9, scope: !768)
!774 = !DILocation(line: 428, column: 57, scope: !768)
!775 = !DILocation(line: 428, column: 60, scope: !768)
!776 = !DILocation(line: 429, column: 60, scope: !768)
!777 = !DILocation(line: 430, column: 60, scope: !768)
!778 = !DILocation(line: 430, column: 70, scope: !768)
!779 = !DILocation(line: 428, column: 18, scope: !768)
!780 = !DILocation(line: 432, column: 10, scope: !781)
!781 = distinct !DILexicalBlock(scope: !768, file: !1, line: 432, column: 8)
!782 = !DILocation(line: 432, column: 14, scope: !781)
!783 = !DILocation(line: 432, column: 8, scope: !768)
!784 = !DILocation(line: 433, column: 7, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !1, line: 432, column: 22)
!786 = !DILocation(line: 433, column: 15, scope: !785)
!787 = !DILocation(line: 433, column: 19, scope: !785)
!788 = !DILocation(line: 434, column: 7, scope: !785)
!789 = !DILocation(line: 434, column: 15, scope: !785)
!790 = !DILocation(line: 434, column: 19, scope: !785)
!791 = !DILocation(line: 435, column: 14, scope: !785)
!792 = !DILocation(line: 435, column: 7, scope: !785)
!793 = !DILocalVariable(name: "lnN", scope: !794, file: !1, line: 438, type: !50)
!794 = distinct !DILexicalBlock(scope: !781, file: !1, line: 437, column: 10)
!795 = !DILocation(line: 438, column: 14, scope: !794)
!796 = !DILocalVariable(name: "lnsh", scope: !794, file: !1, line: 439, type: !52)
!797 = !DILocation(line: 439, column: 21, scope: !794)
!798 = !DILocalVariable(name: "ln_abslam", scope: !794, file: !1, line: 440, type: !50)
!799 = !DILocation(line: 440, column: 14, scope: !794)
!800 = !DILocalVariable(name: "lnpre_val", scope: !794, file: !1, line: 441, type: !50)
!801 = !DILocation(line: 441, column: 14, scope: !794)
!802 = !DILocalVariable(name: "lnpre_err", scope: !794, file: !1, line: 441, type: !50)
!803 = !DILocation(line: 441, column: 25, scope: !794)
!804 = !DILocalVariable(name: "stat_e", scope: !794, file: !1, line: 442, type: !48)
!805 = !DILocation(line: 442, column: 11, scope: !794)
!806 = !DILocation(line: 443, column: 23, scope: !794)
!807 = !DILocation(line: 443, column: 7, scope: !794)
!808 = !DILocation(line: 444, column: 27, scope: !794)
!809 = !DILocation(line: 444, column: 32, scope: !794)
!810 = !DILocation(line: 444, column: 7, scope: !794)
!811 = !DILocation(line: 445, column: 23, scope: !794)
!812 = !DILocation(line: 445, column: 19, scope: !794)
!813 = !DILocation(line: 445, column: 17, scope: !794)
!814 = !DILocation(line: 446, column: 34, scope: !794)
!815 = !DILocation(line: 446, column: 32, scope: !794)
!816 = !DILocation(line: 446, column: 38, scope: !794)
!817 = !DILocation(line: 446, column: 53, scope: !794)
!818 = !DILocation(line: 446, column: 46, scope: !794)
!819 = !DILocation(line: 446, column: 23, scope: !794)
!820 = !DILocation(line: 446, column: 60, scope: !794)
!821 = !DILocation(line: 446, column: 58, scope: !794)
!822 = !DILocation(line: 446, column: 18, scope: !794)
!823 = !DILocation(line: 447, column: 25, scope: !794)
!824 = !DILocation(line: 447, column: 18, scope: !794)
!825 = !DILocation(line: 448, column: 66, scope: !794)
!826 = !DILocation(line: 448, column: 61, scope: !794)
!827 = !DILocation(line: 448, column: 59, scope: !794)
!828 = !DILocation(line: 448, column: 42, scope: !794)
!829 = !DILocation(line: 448, column: 79, scope: !794)
!830 = !DILocation(line: 448, column: 74, scope: !831)
!831 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 1)
!832 = !DILocation(line: 448, column: 72, scope: !794)
!833 = !DILocation(line: 448, column: 36, scope: !794)
!834 = !DILocation(line: 448, column: 17, scope: !794)
!835 = !DILocation(line: 449, column: 49, scope: !794)
!836 = !DILocation(line: 449, column: 44, scope: !794)
!837 = !DILocation(line: 449, column: 42, scope: !794)
!838 = !DILocation(line: 449, column: 17, scope: !794)
!839 = !DILocation(line: 450, column: 38, scope: !794)
!840 = !DILocation(line: 450, column: 50, scope: !794)
!841 = !DILocation(line: 450, column: 48, scope: !794)
!842 = !DILocation(line: 450, column: 54, scope: !794)
!843 = !DILocation(line: 450, column: 67, scope: !794)
!844 = !DILocation(line: 450, column: 74, scope: !794)
!845 = !DILocation(line: 450, column: 79, scope: !794)
!846 = !DILocation(line: 450, column: 16, scope: !794)
!847 = !DILocation(line: 450, column: 14, scope: !794)
!848 = !DILocation(line: 451, column: 14, scope: !794)
!849 = !DILocation(line: 451, column: 14, scope: !831)
!850 = !DILocation(line: 451, column: 14, scope: !851)
!851 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 2)
!852 = !DILocation(line: 451, column: 14, scope: !853)
!853 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 3)
!854 = !DILocation(line: 451, column: 14, scope: !855)
!855 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 4)
!856 = !DILocation(line: 451, column: 14, scope: !857)
!857 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 5)
!858 = !DILocation(line: 451, column: 14, scope: !859)
!859 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 6)
!860 = !DILocation(line: 451, column: 7, scope: !859)
!861 = !DILocalVariable(name: "coth_eta", scope: !862, file: !1, line: 457, type: !49)
!862 = distinct !DILexicalBlock(scope: !760, file: !1, line: 454, column: 8)
!863 = !DILocation(line: 457, column: 18, scope: !862)
!864 = !DILocation(line: 457, column: 38, scope: !862)
!865 = !DILocation(line: 457, column: 33, scope: !862)
!866 = !DILocation(line: 457, column: 32, scope: !862)
!867 = !DILocalVariable(name: "coth_err_mult", scope: !862, file: !1, line: 458, type: !49)
!868 = !DILocation(line: 458, column: 18, scope: !862)
!869 = !DILocation(line: 458, column: 39, scope: !862)
!870 = !DILocation(line: 458, column: 34, scope: !862)
!871 = !DILocation(line: 458, column: 44, scope: !862)
!872 = !DILocalVariable(name: "rH", scope: !862, file: !1, line: 459, type: !52)
!873 = !DILocation(line: 459, column: 19, scope: !862)
!874 = !DILocalVariable(name: "stat_CF1", scope: !862, file: !1, line: 460, type: !48)
!875 = !DILocation(line: 460, column: 9, scope: !862)
!876 = !DILocation(line: 460, column: 41, scope: !862)
!877 = !DILocation(line: 460, column: 46, scope: !862)
!878 = !DILocation(line: 460, column: 54, scope: !862)
!879 = !DILocation(line: 460, column: 20, scope: !862)
!880 = !DILocalVariable(name: "Hlm1", scope: !862, file: !1, line: 461, type: !50)
!881 = !DILocation(line: 461, column: 12, scope: !862)
!882 = !DILocalVariable(name: "Hl", scope: !862, file: !1, line: 462, type: !50)
!883 = !DILocation(line: 462, column: 12, scope: !862)
!884 = !DILocalVariable(name: "Hlp1", scope: !862, file: !1, line: 463, type: !50)
!885 = !DILocation(line: 463, column: 12, scope: !862)
!886 = !DILocation(line: 463, column: 23, scope: !862)
!887 = !DILocation(line: 463, column: 29, scope: !862)
!888 = !DILocation(line: 463, column: 27, scope: !862)
!889 = !DILocalVariable(name: "lp", scope: !862, file: !1, line: 464, type: !48)
!890 = !DILocation(line: 464, column: 9, scope: !862)
!891 = !DILocation(line: 465, column: 12, scope: !892)
!892 = distinct !DILexicalBlock(scope: !862, file: !1, line: 465, column: 5)
!893 = !DILocation(line: 465, column: 11, scope: !892)
!894 = !DILocation(line: 465, column: 9, scope: !892)
!895 = !DILocation(line: 465, column: 17, scope: !896)
!896 = !DILexicalBlockFile(scope: !897, file: !1, discriminator: 1)
!897 = distinct !DILexicalBlock(scope: !892, file: !1, line: 465, column: 5)
!898 = !DILocation(line: 465, column: 19, scope: !896)
!899 = !DILocation(line: 465, column: 5, scope: !896)
!900 = !DILocalVariable(name: "root_term_0", scope: !901, file: !1, line: 466, type: !50)
!901 = distinct !DILexicalBlock(scope: !897, file: !1, line: 465, column: 29)
!902 = !DILocation(line: 466, column: 14, scope: !901)
!903 = !DILocation(line: 466, column: 34, scope: !901)
!904 = !DILocation(line: 466, column: 41, scope: !901)
!905 = !DILocation(line: 466, column: 28, scope: !901)
!906 = !DILocalVariable(name: "root_term_1", scope: !901, file: !1, line: 467, type: !50)
!907 = !DILocation(line: 467, column: 14, scope: !901)
!908 = !DILocation(line: 467, column: 34, scope: !901)
!909 = !DILocation(line: 467, column: 41, scope: !901)
!910 = !DILocation(line: 467, column: 43, scope: !901)
!911 = !DILocation(line: 467, column: 28, scope: !901)
!912 = !DILocation(line: 468, column: 20, scope: !901)
!913 = !DILocation(line: 468, column: 19, scope: !901)
!914 = !DILocation(line: 468, column: 23, scope: !901)
!915 = !DILocation(line: 468, column: 30, scope: !901)
!916 = !DILocation(line: 468, column: 29, scope: !901)
!917 = !DILocation(line: 468, column: 39, scope: !901)
!918 = !DILocation(line: 468, column: 38, scope: !901)
!919 = !DILocation(line: 468, column: 44, scope: !901)
!920 = !DILocation(line: 468, column: 58, scope: !901)
!921 = !DILocation(line: 468, column: 56, scope: !901)
!922 = !DILocation(line: 468, column: 42, scope: !901)
!923 = !DILocation(line: 468, column: 64, scope: !901)
!924 = !DILocation(line: 468, column: 63, scope: !901)
!925 = !DILocation(line: 468, column: 12, scope: !901)
!926 = !DILocation(line: 469, column: 14, scope: !901)
!927 = !DILocation(line: 469, column: 12, scope: !901)
!928 = !DILocation(line: 470, column: 14, scope: !901)
!929 = !DILocation(line: 470, column: 12, scope: !901)
!930 = !DILocation(line: 471, column: 5, scope: !901)
!931 = !DILocation(line: 465, column: 25, scope: !932)
!932 = !DILexicalBlockFile(scope: !897, file: !1, discriminator: 2)
!933 = !DILocation(line: 465, column: 5, scope: !932)
!934 = distinct !{!934, !935}
!935 = !DILocation(line: 465, column: 5, scope: !862)
!936 = !DILocation(line: 473, column: 13, scope: !937)
!937 = distinct !DILexicalBlock(scope: !862, file: !1, line: 473, column: 8)
!938 = !DILocation(line: 473, column: 8, scope: !937)
!939 = !DILocation(line: 473, column: 24, scope: !937)
!940 = !DILocation(line: 473, column: 19, scope: !941)
!941 = !DILexicalBlockFile(scope: !937, file: !1, discriminator: 1)
!942 = !DILocation(line: 473, column: 17, scope: !937)
!943 = !DILocation(line: 473, column: 8, scope: !862)
!944 = !DILocalVariable(name: "H0", scope: !945, file: !1, line: 474, type: !52)
!945 = distinct !DILexicalBlock(scope: !937, file: !1, line: 473, column: 31)
!946 = !DILocation(line: 474, column: 21, scope: !945)
!947 = !DILocalVariable(name: "stat_H0", scope: !945, file: !1, line: 475, type: !48)
!948 = !DILocation(line: 475, column: 11, scope: !945)
!949 = !DILocation(line: 475, column: 45, scope: !945)
!950 = !DILocation(line: 475, column: 53, scope: !945)
!951 = !DILocation(line: 475, column: 21, scope: !945)
!952 = !DILocation(line: 476, column: 39, scope: !945)
!953 = !DILocation(line: 476, column: 38, scope: !945)
!954 = !DILocation(line: 476, column: 47, scope: !945)
!955 = !DILocation(line: 476, column: 42, scope: !945)
!956 = !DILocation(line: 476, column: 7, scope: !945)
!957 = !DILocation(line: 476, column: 15, scope: !945)
!958 = !DILocation(line: 476, column: 20, scope: !945)
!959 = !DILocation(line: 477, column: 44, scope: !945)
!960 = !DILocation(line: 477, column: 39, scope: !945)
!961 = !DILocation(line: 477, column: 38, scope: !945)
!962 = !DILocation(line: 477, column: 53, scope: !945)
!963 = !DILocation(line: 477, column: 48, scope: !945)
!964 = !DILocation(line: 477, column: 7, scope: !945)
!965 = !DILocation(line: 477, column: 15, scope: !945)
!966 = !DILocation(line: 477, column: 20, scope: !945)
!967 = !DILocation(line: 478, column: 30, scope: !945)
!968 = !DILocation(line: 478, column: 37, scope: !945)
!969 = !DILocation(line: 478, column: 33, scope: !945)
!970 = !DILocation(line: 478, column: 22, scope: !945)
!971 = !DILocation(line: 478, column: 45, scope: !945)
!972 = !DILocation(line: 478, column: 48, scope: !945)
!973 = !DILocation(line: 478, column: 42, scope: !945)
!974 = !DILocation(line: 478, column: 56, scope: !945)
!975 = !DILocation(line: 478, column: 54, scope: !945)
!976 = !DILocation(line: 478, column: 77, scope: !945)
!977 = !DILocation(line: 478, column: 85, scope: !945)
!978 = !DILocation(line: 478, column: 72, scope: !979)
!979 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 1)
!980 = !DILocation(line: 478, column: 70, scope: !945)
!981 = !DILocation(line: 478, column: 7, scope: !945)
!982 = !DILocation(line: 478, column: 15, scope: !945)
!983 = !DILocation(line: 478, column: 19, scope: !945)
!984 = !DILocation(line: 479, column: 51, scope: !945)
!985 = !DILocation(line: 479, column: 59, scope: !945)
!986 = !DILocation(line: 479, column: 46, scope: !945)
!987 = !DILocation(line: 479, column: 44, scope: !945)
!988 = !DILocation(line: 479, column: 7, scope: !945)
!989 = !DILocation(line: 479, column: 15, scope: !945)
!990 = !DILocation(line: 479, column: 19, scope: !945)
!991 = !DILocation(line: 480, column: 14, scope: !945)
!992 = !DILocation(line: 480, column: 14, scope: !979)
!993 = !DILocation(line: 480, column: 14, scope: !994)
!994 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 2)
!995 = !DILocation(line: 480, column: 14, scope: !996)
!996 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 3)
!997 = !DILocation(line: 480, column: 14, scope: !998)
!998 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 4)
!999 = !DILocation(line: 480, column: 14, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 5)
!1001 = !DILocation(line: 480, column: 14, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !945, file: !1, discriminator: 6)
!1003 = !DILocation(line: 480, column: 7, scope: !1002)
!1004 = !DILocalVariable(name: "H1", scope: !1005, file: !1, line: 483, type: !52)
!1005 = distinct !DILexicalBlock(scope: !937, file: !1, line: 482, column: 10)
!1006 = !DILocation(line: 483, column: 21, scope: !1005)
!1007 = !DILocalVariable(name: "stat_H1", scope: !1005, file: !1, line: 484, type: !48)
!1008 = !DILocation(line: 484, column: 11, scope: !1005)
!1009 = !DILocation(line: 484, column: 45, scope: !1005)
!1010 = !DILocation(line: 484, column: 53, scope: !1005)
!1011 = !DILocation(line: 484, column: 21, scope: !1005)
!1012 = !DILocation(line: 485, column: 39, scope: !1005)
!1013 = !DILocation(line: 485, column: 38, scope: !1005)
!1014 = !DILocation(line: 485, column: 49, scope: !1005)
!1015 = !DILocation(line: 485, column: 44, scope: !1005)
!1016 = !DILocation(line: 485, column: 7, scope: !1005)
!1017 = !DILocation(line: 485, column: 15, scope: !1005)
!1018 = !DILocation(line: 485, column: 20, scope: !1005)
!1019 = !DILocation(line: 486, column: 44, scope: !1005)
!1020 = !DILocation(line: 486, column: 39, scope: !1005)
!1021 = !DILocation(line: 486, column: 38, scope: !1005)
!1022 = !DILocation(line: 486, column: 55, scope: !1005)
!1023 = !DILocation(line: 486, column: 50, scope: !1005)
!1024 = !DILocation(line: 486, column: 7, scope: !1005)
!1025 = !DILocation(line: 486, column: 15, scope: !1005)
!1026 = !DILocation(line: 486, column: 20, scope: !1005)
!1027 = !DILocation(line: 487, column: 30, scope: !1005)
!1028 = !DILocation(line: 487, column: 37, scope: !1005)
!1029 = !DILocation(line: 487, column: 33, scope: !1005)
!1030 = !DILocation(line: 487, column: 22, scope: !1005)
!1031 = !DILocation(line: 487, column: 45, scope: !1005)
!1032 = !DILocation(line: 487, column: 48, scope: !1005)
!1033 = !DILocation(line: 487, column: 42, scope: !1005)
!1034 = !DILocation(line: 487, column: 56, scope: !1005)
!1035 = !DILocation(line: 487, column: 54, scope: !1005)
!1036 = !DILocation(line: 487, column: 77, scope: !1005)
!1037 = !DILocation(line: 487, column: 85, scope: !1005)
!1038 = !DILocation(line: 487, column: 72, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 1)
!1040 = !DILocation(line: 487, column: 70, scope: !1005)
!1041 = !DILocation(line: 487, column: 7, scope: !1005)
!1042 = !DILocation(line: 487, column: 15, scope: !1005)
!1043 = !DILocation(line: 487, column: 19, scope: !1005)
!1044 = !DILocation(line: 488, column: 51, scope: !1005)
!1045 = !DILocation(line: 488, column: 59, scope: !1005)
!1046 = !DILocation(line: 488, column: 46, scope: !1005)
!1047 = !DILocation(line: 488, column: 44, scope: !1005)
!1048 = !DILocation(line: 488, column: 7, scope: !1005)
!1049 = !DILocation(line: 488, column: 15, scope: !1005)
!1050 = !DILocation(line: 488, column: 19, scope: !1005)
!1051 = !DILocation(line: 489, column: 14, scope: !1005)
!1052 = !DILocation(line: 489, column: 14, scope: !1039)
!1053 = !DILocation(line: 489, column: 14, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 2)
!1055 = !DILocation(line: 489, column: 14, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 3)
!1057 = !DILocation(line: 489, column: 14, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 4)
!1059 = !DILocation(line: 489, column: 14, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 5)
!1061 = !DILocation(line: 489, column: 14, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 6)
!1063 = !DILocation(line: 489, column: 7, scope: !1062)
!1064 = !DILocation(line: 492, column: 1, scope: !540)
!1065 = distinct !DISubprogram(name: "legendre_H3d_series", scope: !1, file: !1, line: 97, type: !541, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1066 = !DILocalVariable(name: "ell", arg: 1, scope: !1065, file: !1, line: 97, type: !543)
!1067 = !DILocation(line: 97, column: 31, scope: !1065)
!1068 = !DILocalVariable(name: "lambda", arg: 2, scope: !1065, file: !1, line: 97, type: !49)
!1069 = !DILocation(line: 97, column: 49, scope: !1065)
!1070 = !DILocalVariable(name: "eta", arg: 3, scope: !1065, file: !1, line: 97, type: !49)
!1071 = !DILocation(line: 97, column: 70, scope: !1065)
!1072 = !DILocalVariable(name: "result", arg: 4, scope: !1065, file: !1, line: 98, type: !51)
!1073 = !DILocation(line: 98, column: 37, scope: !1065)
!1074 = !DILocalVariable(name: "nmax", scope: !1065, file: !1, line: 100, type: !543)
!1075 = !DILocation(line: 100, column: 13, scope: !1065)
!1076 = !DILocalVariable(name: "shheta", scope: !1065, file: !1, line: 101, type: !49)
!1077 = !DILocation(line: 101, column: 16, scope: !1065)
!1078 = !DILocation(line: 101, column: 34, scope: !1065)
!1079 = !DILocation(line: 101, column: 33, scope: !1065)
!1080 = !DILocation(line: 101, column: 25, scope: !1065)
!1081 = !DILocalVariable(name: "ln_zp1", scope: !1065, file: !1, line: 102, type: !49)
!1082 = !DILocation(line: 102, column: 16, scope: !1065)
!1083 = !DILocation(line: 102, column: 43, scope: !1065)
!1084 = !DILocation(line: 102, column: 50, scope: !1065)
!1085 = !DILocation(line: 102, column: 49, scope: !1065)
!1086 = !DILocation(line: 102, column: 41, scope: !1065)
!1087 = !DILocation(line: 102, column: 33, scope: !1065)
!1088 = !DILocation(line: 102, column: 31, scope: !1065)
!1089 = !DILocalVariable(name: "ln_zm1", scope: !1065, file: !1, line: 103, type: !49)
!1090 = !DILocation(line: 103, column: 16, scope: !1065)
!1091 = !DILocation(line: 103, column: 41, scope: !1065)
!1092 = !DILocation(line: 103, column: 37, scope: !1065)
!1093 = !DILocation(line: 103, column: 36, scope: !1065)
!1094 = !DILocation(line: 103, column: 31, scope: !1065)
!1095 = !DILocalVariable(name: "zeta", scope: !1065, file: !1, line: 104, type: !49)
!1096 = !DILocation(line: 104, column: 16, scope: !1065)
!1097 = !DILocation(line: 104, column: 24, scope: !1065)
!1098 = !DILocation(line: 104, column: 23, scope: !1065)
!1099 = !DILocation(line: 104, column: 31, scope: !1065)
!1100 = !DILocation(line: 104, column: 30, scope: !1065)
!1101 = !DILocalVariable(name: "lg_lp32", scope: !1065, file: !1, line: 105, type: !52)
!1102 = !DILocation(line: 105, column: 17, scope: !1065)
!1103 = !DILocalVariable(name: "term", scope: !1065, file: !1, line: 106, type: !50)
!1104 = !DILocation(line: 106, column: 10, scope: !1065)
!1105 = !DILocalVariable(name: "sum", scope: !1065, file: !1, line: 107, type: !50)
!1106 = !DILocation(line: 107, column: 10, scope: !1065)
!1107 = !DILocalVariable(name: "sum_err", scope: !1065, file: !1, line: 108, type: !50)
!1108 = !DILocation(line: 108, column: 10, scope: !1065)
!1109 = !DILocalVariable(name: "lnsheta", scope: !1065, file: !1, line: 109, type: !52)
!1110 = !DILocation(line: 109, column: 17, scope: !1065)
!1111 = !DILocalVariable(name: "lnN", scope: !1065, file: !1, line: 110, type: !50)
!1112 = !DILocation(line: 110, column: 10, scope: !1065)
!1113 = !DILocalVariable(name: "lnpre_val", scope: !1065, file: !1, line: 111, type: !50)
!1114 = !DILocation(line: 111, column: 10, scope: !1065)
!1115 = !DILocalVariable(name: "lnpre_err", scope: !1065, file: !1, line: 111, type: !50)
!1116 = !DILocation(line: 111, column: 21, scope: !1065)
!1117 = !DILocalVariable(name: "lnprepow", scope: !1065, file: !1, line: 111, type: !50)
!1118 = !DILocation(line: 111, column: 32, scope: !1065)
!1119 = !DILocalVariable(name: "stat_e", scope: !1065, file: !1, line: 112, type: !48)
!1120 = !DILocation(line: 112, column: 7, scope: !1065)
!1121 = !DILocalVariable(name: "n", scope: !1065, file: !1, line: 113, type: !48)
!1122 = !DILocation(line: 113, column: 7, scope: !1065)
!1123 = !DILocation(line: 115, column: 20, scope: !1065)
!1124 = !DILocation(line: 115, column: 24, scope: !1065)
!1125 = !DILocation(line: 115, column: 3, scope: !1065)
!1126 = !DILocation(line: 116, column: 19, scope: !1065)
!1127 = !DILocation(line: 116, column: 3, scope: !1065)
!1128 = !DILocation(line: 117, column: 23, scope: !1065)
!1129 = !DILocation(line: 117, column: 28, scope: !1065)
!1130 = !DILocation(line: 117, column: 3, scope: !1065)
!1131 = !DILocation(line: 118, column: 19, scope: !1065)
!1132 = !DILocation(line: 118, column: 23, scope: !1065)
!1133 = !DILocation(line: 118, column: 17, scope: !1065)
!1134 = !DILocation(line: 118, column: 33, scope: !1065)
!1135 = !DILocation(line: 118, column: 42, scope: !1065)
!1136 = !DILocation(line: 118, column: 40, scope: !1065)
!1137 = !DILocation(line: 118, column: 30, scope: !1065)
!1138 = !DILocation(line: 118, column: 12, scope: !1065)
!1139 = !DILocation(line: 119, column: 16, scope: !1065)
!1140 = !DILocation(line: 119, column: 32, scope: !1065)
!1141 = !DILocation(line: 119, column: 36, scope: !1065)
!1142 = !DILocation(line: 119, column: 45, scope: !1065)
!1143 = !DILocation(line: 119, column: 63, scope: !1065)
!1144 = !DILocation(line: 119, column: 53, scope: !1065)
!1145 = !DILocation(line: 119, column: 30, scope: !1065)
!1146 = !DILocation(line: 119, column: 25, scope: !1065)
!1147 = !DILocation(line: 119, column: 78, scope: !1065)
!1148 = !DILocation(line: 119, column: 68, scope: !1065)
!1149 = !DILocation(line: 119, column: 93, scope: !1065)
!1150 = !DILocation(line: 119, column: 88, scope: !1065)
!1151 = !DILocation(line: 119, column: 84, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 1)
!1153 = !DILocation(line: 119, column: 82, scope: !1065)
!1154 = !DILocation(line: 119, column: 14, scope: !1065)
!1155 = !DILocation(line: 120, column: 24, scope: !1065)
!1156 = !DILocation(line: 120, column: 38, scope: !1065)
!1157 = !DILocation(line: 120, column: 28, scope: !1065)
!1158 = !DILocation(line: 120, column: 67, scope: !1065)
!1159 = !DILocation(line: 120, column: 62, scope: !1065)
!1160 = !DILocation(line: 120, column: 60, scope: !1065)
!1161 = !DILocation(line: 120, column: 42, scope: !1065)
!1162 = !DILocation(line: 120, column: 14, scope: !1065)
!1163 = !DILocation(line: 121, column: 44, scope: !1065)
!1164 = !DILocation(line: 121, column: 39, scope: !1065)
!1165 = !DILocation(line: 121, column: 49, scope: !1065)
!1166 = !DILocation(line: 121, column: 58, scope: !1065)
!1167 = !DILocation(line: 121, column: 36, scope: !1065)
!1168 = !DILocation(line: 121, column: 13, scope: !1065)
!1169 = !DILocation(line: 122, column: 44, scope: !1065)
!1170 = !DILocation(line: 122, column: 48, scope: !1065)
!1171 = !DILocation(line: 122, column: 42, scope: !1065)
!1172 = !DILocation(line: 122, column: 63, scope: !1065)
!1173 = !DILocation(line: 122, column: 58, scope: !1065)
!1174 = !DILocation(line: 122, column: 78, scope: !1065)
!1175 = !DILocation(line: 122, column: 73, scope: !1152)
!1176 = !DILocation(line: 122, column: 71, scope: !1065)
!1177 = !DILocation(line: 122, column: 55, scope: !1065)
!1178 = !DILocation(line: 122, column: 36, scope: !1065)
!1179 = !DILocation(line: 122, column: 13, scope: !1065)
!1180 = !DILocation(line: 123, column: 8, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 123, column: 3)
!1182 = !DILocation(line: 123, column: 7, scope: !1181)
!1183 = !DILocation(line: 123, column: 12, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1185, file: !1, discriminator: 1)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 123, column: 3)
!1186 = !DILocation(line: 123, column: 13, scope: !1184)
!1187 = !DILocation(line: 123, column: 3, scope: !1184)
!1188 = !DILocalVariable(name: "aR", scope: !1189, file: !1, line: 124, type: !50)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 123, column: 25)
!1190 = !DILocation(line: 124, column: 12, scope: !1189)
!1191 = !DILocation(line: 124, column: 17, scope: !1189)
!1192 = !DILocation(line: 124, column: 19, scope: !1189)
!1193 = !DILocation(line: 125, column: 14, scope: !1189)
!1194 = !DILocation(line: 125, column: 17, scope: !1189)
!1195 = !DILocation(line: 125, column: 16, scope: !1189)
!1196 = !DILocation(line: 125, column: 22, scope: !1189)
!1197 = !DILocation(line: 125, column: 29, scope: !1189)
!1198 = !DILocation(line: 125, column: 28, scope: !1189)
!1199 = !DILocation(line: 125, column: 20, scope: !1189)
!1200 = !DILocation(line: 125, column: 37, scope: !1189)
!1201 = !DILocation(line: 125, column: 36, scope: !1189)
!1202 = !DILocation(line: 125, column: 43, scope: !1189)
!1203 = !DILocation(line: 125, column: 49, scope: !1189)
!1204 = !DILocation(line: 125, column: 47, scope: !1189)
!1205 = !DILocation(line: 125, column: 51, scope: !1189)
!1206 = !DILocation(line: 125, column: 41, scope: !1189)
!1207 = !DILocation(line: 125, column: 58, scope: !1189)
!1208 = !DILocation(line: 125, column: 57, scope: !1189)
!1209 = !DILocation(line: 125, column: 10, scope: !1189)
!1210 = !DILocation(line: 126, column: 13, scope: !1189)
!1211 = !DILocation(line: 126, column: 10, scope: !1189)
!1212 = !DILocation(line: 127, column: 41, scope: !1189)
!1213 = !DILocation(line: 127, column: 36, scope: !1189)
!1214 = !DILocation(line: 127, column: 35, scope: !1189)
!1215 = !DILocation(line: 127, column: 13, scope: !1189)
!1216 = !DILocation(line: 128, column: 13, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 128, column: 8)
!1218 = !DILocation(line: 128, column: 18, scope: !1217)
!1219 = !DILocation(line: 128, column: 17, scope: !1217)
!1220 = !DILocation(line: 128, column: 8, scope: !1217)
!1221 = !DILocation(line: 128, column: 23, scope: !1217)
!1222 = !DILocation(line: 128, column: 8, scope: !1189)
!1223 = !DILocation(line: 128, column: 48, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1217, file: !1, discriminator: 1)
!1225 = !DILocation(line: 129, column: 3, scope: !1189)
!1226 = !DILocation(line: 123, column: 21, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1185, file: !1, discriminator: 2)
!1228 = !DILocation(line: 123, column: 3, scope: !1227)
!1229 = distinct !{!1229, !1230}
!1230 = !DILocation(line: 123, column: 3, scope: !1065)
!1231 = !DILocation(line: 131, column: 34, scope: !1065)
!1232 = !DILocation(line: 131, column: 45, scope: !1065)
!1233 = !DILocation(line: 131, column: 56, scope: !1065)
!1234 = !DILocation(line: 131, column: 66, scope: !1065)
!1235 = !DILocation(line: 131, column: 61, scope: !1065)
!1236 = !DILocation(line: 131, column: 72, scope: !1065)
!1237 = !DILocation(line: 131, column: 71, scope: !1065)
!1238 = !DILocation(line: 131, column: 81, scope: !1065)
!1239 = !DILocation(line: 131, column: 12, scope: !1152)
!1240 = !DILocation(line: 131, column: 10, scope: !1065)
!1241 = !DILocation(line: 132, column: 10, scope: !1065)
!1242 = !DILocation(line: 132, column: 10, scope: !1152)
!1243 = !DILocation(line: 132, column: 10, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 2)
!1245 = !DILocation(line: 132, column: 10, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 3)
!1247 = !DILocation(line: 132, column: 10, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 4)
!1249 = !DILocation(line: 132, column: 10, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 5)
!1251 = !DILocation(line: 132, column: 10, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1065, file: !1, discriminator: 6)
!1253 = !DILocation(line: 132, column: 3, scope: !1252)
!1254 = distinct !DISubprogram(name: "legendre_H3d_lnnorm", scope: !1, file: !1, line: 46, type: !1255, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!48, !543, !49, !1257}
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!1258 = !DILocalVariable(name: "ell", arg: 1, scope: !1254, file: !1, line: 46, type: !543)
!1259 = !DILocation(line: 46, column: 31, scope: !1254)
!1260 = !DILocalVariable(name: "lambda", arg: 2, scope: !1254, file: !1, line: 46, type: !49)
!1261 = !DILocation(line: 46, column: 49, scope: !1254)
!1262 = !DILocalVariable(name: "result", arg: 3, scope: !1254, file: !1, line: 46, type: !1257)
!1263 = !DILocation(line: 46, column: 66, scope: !1254)
!1264 = !DILocalVariable(name: "abs_lam", scope: !1254, file: !1, line: 48, type: !50)
!1265 = !DILocation(line: 48, column: 10, scope: !1254)
!1266 = !DILocation(line: 48, column: 25, scope: !1254)
!1267 = !DILocation(line: 48, column: 20, scope: !1254)
!1268 = !DILocation(line: 50, column: 6, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 50, column: 6)
!1270 = !DILocation(line: 50, column: 14, scope: !1269)
!1271 = !DILocation(line: 50, column: 6, scope: !1254)
!1272 = !DILocation(line: 51, column: 6, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 50, column: 22)
!1274 = !DILocation(line: 51, column: 13, scope: !1273)
!1275 = !DILocation(line: 52, column: 5, scope: !1273)
!1276 = distinct !{!1276, !1275}
!1277 = !DILocation(line: 52, column: 5, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1279, file: !1, discriminator: 1)
!1279 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 52, column: 5)
!1280 = !DILocation(line: 53, column: 3, scope: !1273)
!1281 = !DILocation(line: 54, column: 11, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 54, column: 11)
!1283 = !DILocation(line: 54, column: 21, scope: !1282)
!1284 = !DILocation(line: 54, column: 25, scope: !1282)
!1285 = !DILocation(line: 54, column: 31, scope: !1282)
!1286 = !DILocation(line: 54, column: 18, scope: !1282)
!1287 = !DILocation(line: 54, column: 11, scope: !1269)
!1288 = !DILocalVariable(name: "rat", scope: !1289, file: !1, line: 62, type: !50)
!1289 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 54, column: 55)
!1290 = !DILocation(line: 62, column: 12, scope: !1289)
!1291 = !DILocation(line: 62, column: 19, scope: !1289)
!1292 = !DILocation(line: 62, column: 22, scope: !1289)
!1293 = !DILocation(line: 62, column: 28, scope: !1289)
!1294 = !DILocation(line: 62, column: 27, scope: !1289)
!1295 = !DILocalVariable(name: "ln_lam2ell2", scope: !1289, file: !1, line: 63, type: !50)
!1296 = !DILocation(line: 63, column: 12, scope: !1289)
!1297 = !DILocation(line: 63, column: 35, scope: !1289)
!1298 = !DILocation(line: 63, column: 31, scope: !1289)
!1299 = !DILocation(line: 63, column: 30, scope: !1289)
!1300 = !DILocation(line: 63, column: 55, scope: !1289)
!1301 = !DILocation(line: 63, column: 59, scope: !1289)
!1302 = !DILocation(line: 63, column: 58, scope: !1289)
!1303 = !DILocation(line: 63, column: 53, scope: !1289)
!1304 = !DILocation(line: 63, column: 45, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1289, file: !1, discriminator: 1)
!1306 = !DILocation(line: 63, column: 43, scope: !1289)
!1307 = !DILocalVariable(name: "lg_corrected", scope: !1289, file: !1, line: 64, type: !50)
!1308 = !DILocation(line: 64, column: 12, scope: !1289)
!1309 = !DILocation(line: 64, column: 33, scope: !1289)
!1310 = !DILocation(line: 64, column: 36, scope: !1289)
!1311 = !DILocation(line: 64, column: 31, scope: !1289)
!1312 = !DILocation(line: 64, column: 42, scope: !1289)
!1313 = !DILocation(line: 64, column: 54, scope: !1289)
!1314 = !DILocation(line: 64, column: 57, scope: !1289)
!1315 = !DILocation(line: 64, column: 63, scope: !1289)
!1316 = !DILocation(line: 64, column: 62, scope: !1289)
!1317 = !DILocation(line: 64, column: 51, scope: !1289)
!1318 = !DILocation(line: 64, column: 88, scope: !1289)
!1319 = !DILocation(line: 64, column: 87, scope: !1289)
!1320 = !DILocation(line: 64, column: 95, scope: !1289)
!1321 = !DILocation(line: 64, column: 94, scope: !1289)
!1322 = !DILocation(line: 64, column: 80, scope: !1289)
!1323 = !DILocation(line: 64, column: 75, scope: !1289)
!1324 = !DILocalVariable(name: "angle_terms", scope: !1289, file: !1, line: 65, type: !50)
!1325 = !DILocation(line: 65, column: 12, scope: !1289)
!1326 = !DILocation(line: 65, column: 27, scope: !1289)
!1327 = !DILocation(line: 65, column: 34, scope: !1289)
!1328 = !DILocation(line: 65, column: 42, scope: !1289)
!1329 = !DILocation(line: 65, column: 40, scope: !1289)
!1330 = !DILocation(line: 65, column: 55, scope: !1289)
!1331 = !DILocation(line: 65, column: 59, scope: !1289)
!1332 = !DILocation(line: 65, column: 58, scope: !1289)
!1333 = !DILocation(line: 65, column: 62, scope: !1289)
!1334 = !DILocation(line: 65, column: 53, scope: !1289)
!1335 = !DILocation(line: 65, column: 46, scope: !1289)
!1336 = !DILocation(line: 66, column: 19, scope: !1289)
!1337 = !DILocation(line: 66, column: 15, scope: !1289)
!1338 = !DILocation(line: 66, column: 30, scope: !1289)
!1339 = !DILocation(line: 66, column: 28, scope: !1289)
!1340 = !DILocation(line: 66, column: 45, scope: !1289)
!1341 = !DILocation(line: 66, column: 43, scope: !1289)
!1342 = !DILocation(line: 66, column: 57, scope: !1289)
!1343 = !DILocation(line: 66, column: 6, scope: !1289)
!1344 = !DILocation(line: 66, column: 13, scope: !1289)
!1345 = !DILocation(line: 67, column: 5, scope: !1289)
!1346 = !DILocalVariable(name: "lg_r", scope: !1347, file: !1, line: 70, type: !52)
!1347 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 69, column: 8)
!1348 = !DILocation(line: 70, column: 19, scope: !1347)
!1349 = !DILocalVariable(name: "lg_theta", scope: !1347, file: !1, line: 71, type: !52)
!1350 = !DILocation(line: 71, column: 19, scope: !1347)
!1351 = !DILocalVariable(name: "ln_sinh", scope: !1347, file: !1, line: 72, type: !52)
!1352 = !DILocation(line: 72, column: 19, scope: !1347)
!1353 = !DILocation(line: 73, column: 30, scope: !1347)
!1354 = !DILocation(line: 73, column: 33, scope: !1347)
!1355 = !DILocation(line: 73, column: 39, scope: !1347)
!1356 = !DILocation(line: 73, column: 5, scope: !1347)
!1357 = !DILocation(line: 74, column: 28, scope: !1347)
!1358 = !DILocation(line: 74, column: 26, scope: !1347)
!1359 = !DILocation(line: 74, column: 5, scope: !1347)
!1360 = !DILocation(line: 75, column: 19, scope: !1347)
!1361 = !DILocation(line: 75, column: 15, scope: !1347)
!1362 = !DILocation(line: 75, column: 38, scope: !1347)
!1363 = !DILocation(line: 75, column: 28, scope: !1347)
!1364 = !DILocation(line: 75, column: 53, scope: !1347)
!1365 = !DILocation(line: 75, column: 47, scope: !1347)
!1366 = !DILocation(line: 75, column: 42, scope: !1347)
!1367 = !DILocation(line: 75, column: 57, scope: !1347)
!1368 = !DILocation(line: 75, column: 6, scope: !1347)
!1369 = !DILocation(line: 75, column: 13, scope: !1347)
!1370 = !DILocation(line: 76, column: 5, scope: !1347)
!1371 = !DILocation(line: 78, column: 1, scope: !1254)
!1372 = distinct !DISubprogram(name: "legendre_H3d_CF1_ser", scope: !1, file: !1, line: 210, type: !541, isLocal: true, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1373 = !DILocalVariable(name: "ell", arg: 1, scope: !1372, file: !1, line: 210, type: !543)
!1374 = !DILocation(line: 210, column: 32, scope: !1372)
!1375 = !DILocalVariable(name: "lambda", arg: 2, scope: !1372, file: !1, line: 210, type: !49)
!1376 = !DILocation(line: 210, column: 50, scope: !1372)
!1377 = !DILocalVariable(name: "coth_eta", arg: 3, scope: !1372, file: !1, line: 210, type: !49)
!1378 = !DILocation(line: 210, column: 71, scope: !1372)
!1379 = !DILocalVariable(name: "result", arg: 4, scope: !1372, file: !1, line: 211, type: !51)
!1380 = !DILocation(line: 211, column: 38, scope: !1372)
!1381 = !DILocalVariable(name: "pre", scope: !1372, file: !1, line: 213, type: !49)
!1382 = !DILocation(line: 213, column: 16, scope: !1372)
!1383 = !DILocation(line: 213, column: 28, scope: !1372)
!1384 = !DILocation(line: 213, column: 36, scope: !1372)
!1385 = !DILocation(line: 213, column: 39, scope: !1372)
!1386 = !DILocation(line: 213, column: 22, scope: !1372)
!1387 = !DILocation(line: 213, column: 51, scope: !1372)
!1388 = !DILocation(line: 213, column: 50, scope: !1372)
!1389 = !DILocation(line: 213, column: 54, scope: !1372)
!1390 = !DILocation(line: 213, column: 58, scope: !1372)
!1391 = !DILocation(line: 213, column: 57, scope: !1372)
!1392 = !DILocation(line: 213, column: 44, scope: !1372)
!1393 = !DILocalVariable(name: "maxk", scope: !1372, file: !1, line: 214, type: !543)
!1394 = !DILocation(line: 214, column: 13, scope: !1372)
!1395 = !DILocalVariable(name: "tk", scope: !1372, file: !1, line: 215, type: !50)
!1396 = !DILocation(line: 215, column: 10, scope: !1372)
!1397 = !DILocalVariable(name: "sum", scope: !1372, file: !1, line: 216, type: !50)
!1398 = !DILocation(line: 216, column: 10, scope: !1372)
!1399 = !DILocalVariable(name: "rhok", scope: !1372, file: !1, line: 217, type: !50)
!1400 = !DILocation(line: 217, column: 10, scope: !1372)
!1401 = !DILocalVariable(name: "sum_err", scope: !1372, file: !1, line: 218, type: !50)
!1402 = !DILocation(line: 218, column: 10, scope: !1372)
!1403 = !DILocalVariable(name: "k", scope: !1372, file: !1, line: 219, type: !48)
!1404 = !DILocation(line: 219, column: 7, scope: !1372)
!1405 = !DILocation(line: 221, column: 8, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 221, column: 3)
!1407 = !DILocation(line: 221, column: 7, scope: !1406)
!1408 = !DILocation(line: 221, column: 12, scope: !1409)
!1409 = !DILexicalBlockFile(scope: !1410, file: !1, discriminator: 1)
!1410 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 221, column: 3)
!1411 = !DILocation(line: 221, column: 13, scope: !1409)
!1412 = !DILocation(line: 221, column: 3, scope: !1409)
!1413 = !DILocalVariable(name: "tlk", scope: !1414, file: !1, line: 222, type: !50)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !1, line: 221, column: 25)
!1415 = !DILocation(line: 222, column: 12, scope: !1414)
!1416 = !DILocation(line: 222, column: 23, scope: !1414)
!1417 = !DILocation(line: 222, column: 22, scope: !1414)
!1418 = !DILocation(line: 222, column: 27, scope: !1414)
!1419 = !DILocation(line: 222, column: 39, scope: !1414)
!1420 = !DILocation(line: 222, column: 38, scope: !1414)
!1421 = !DILocation(line: 222, column: 33, scope: !1414)
!1422 = !DILocalVariable(name: "l1k", scope: !1414, file: !1, line: 223, type: !50)
!1423 = !DILocation(line: 223, column: 12, scope: !1414)
!1424 = !DILocation(line: 223, column: 19, scope: !1414)
!1425 = !DILocation(line: 223, column: 23, scope: !1414)
!1426 = !DILocation(line: 223, column: 31, scope: !1414)
!1427 = !DILocation(line: 223, column: 29, scope: !1414)
!1428 = !DILocalVariable(name: "ak", scope: !1414, file: !1, line: 224, type: !50)
!1429 = !DILocation(line: 224, column: 12, scope: !1414)
!1430 = !DILocation(line: 224, column: 19, scope: !1414)
!1431 = !DILocation(line: 224, column: 26, scope: !1414)
!1432 = !DILocation(line: 224, column: 25, scope: !1414)
!1433 = !DILocation(line: 224, column: 35, scope: !1414)
!1434 = !DILocation(line: 224, column: 39, scope: !1414)
!1435 = !DILocation(line: 224, column: 38, scope: !1414)
!1436 = !DILocation(line: 224, column: 33, scope: !1414)
!1437 = !DILocation(line: 224, column: 17, scope: !1414)
!1438 = !DILocation(line: 224, column: 45, scope: !1414)
!1439 = !DILocation(line: 224, column: 50, scope: !1414)
!1440 = !DILocation(line: 224, column: 53, scope: !1414)
!1441 = !DILocation(line: 224, column: 48, scope: !1414)
!1442 = !DILocation(line: 224, column: 59, scope: !1414)
!1443 = !DILocation(line: 224, column: 58, scope: !1414)
!1444 = !DILocation(line: 224, column: 68, scope: !1414)
!1445 = !DILocation(line: 224, column: 67, scope: !1414)
!1446 = !DILocation(line: 224, column: 43, scope: !1414)
!1447 = !DILocation(line: 225, column: 13, scope: !1414)
!1448 = !DILocation(line: 225, column: 12, scope: !1414)
!1449 = !DILocation(line: 225, column: 23, scope: !1414)
!1450 = !DILocation(line: 225, column: 21, scope: !1414)
!1451 = !DILocation(line: 225, column: 15, scope: !1414)
!1452 = !DILocation(line: 225, column: 36, scope: !1414)
!1453 = !DILocation(line: 225, column: 46, scope: !1414)
!1454 = !DILocation(line: 225, column: 44, scope: !1414)
!1455 = !DILocation(line: 225, column: 38, scope: !1414)
!1456 = !DILocation(line: 225, column: 34, scope: !1414)
!1457 = !DILocation(line: 225, column: 28, scope: !1414)
!1458 = !DILocation(line: 225, column: 10, scope: !1414)
!1459 = !DILocation(line: 226, column: 12, scope: !1414)
!1460 = !DILocation(line: 226, column: 9, scope: !1414)
!1461 = !DILocation(line: 227, column: 12, scope: !1414)
!1462 = !DILocation(line: 227, column: 9, scope: !1414)
!1463 = !DILocation(line: 228, column: 40, scope: !1414)
!1464 = !DILocation(line: 228, column: 38, scope: !1414)
!1465 = !DILocation(line: 228, column: 49, scope: !1414)
!1466 = !DILocation(line: 228, column: 44, scope: !1414)
!1467 = !DILocation(line: 228, column: 42, scope: !1414)
!1468 = !DILocation(line: 228, column: 13, scope: !1414)
!1469 = !DILocation(line: 229, column: 13, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1414, file: !1, line: 229, column: 8)
!1471 = !DILocation(line: 229, column: 16, scope: !1470)
!1472 = !DILocation(line: 229, column: 15, scope: !1470)
!1473 = !DILocation(line: 229, column: 8, scope: !1470)
!1474 = !DILocation(line: 229, column: 21, scope: !1470)
!1475 = !DILocation(line: 229, column: 8, scope: !1414)
!1476 = !DILocation(line: 229, column: 40, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1470, file: !1, discriminator: 1)
!1478 = !DILocation(line: 230, column: 3, scope: !1414)
!1479 = !DILocation(line: 221, column: 21, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1410, file: !1, discriminator: 2)
!1481 = !DILocation(line: 221, column: 3, scope: !1480)
!1482 = distinct !{!1482, !1483}
!1483 = !DILocation(line: 221, column: 3, scope: !1372)
!1484 = !DILocation(line: 232, column: 18, scope: !1372)
!1485 = !DILocation(line: 232, column: 24, scope: !1372)
!1486 = !DILocation(line: 232, column: 22, scope: !1372)
!1487 = !DILocation(line: 232, column: 3, scope: !1372)
!1488 = !DILocation(line: 232, column: 11, scope: !1372)
!1489 = !DILocation(line: 232, column: 16, scope: !1372)
!1490 = !DILocation(line: 233, column: 23, scope: !1372)
!1491 = !DILocation(line: 233, column: 29, scope: !1372)
!1492 = !DILocation(line: 233, column: 27, scope: !1372)
!1493 = !DILocation(line: 233, column: 18, scope: !1372)
!1494 = !DILocation(line: 233, column: 3, scope: !1372)
!1495 = !DILocation(line: 233, column: 11, scope: !1372)
!1496 = !DILocation(line: 233, column: 16, scope: !1372)
!1497 = !DILocation(line: 234, column: 23, scope: !1372)
!1498 = !DILocation(line: 234, column: 29, scope: !1372)
!1499 = !DILocation(line: 234, column: 27, scope: !1372)
!1500 = !DILocation(line: 234, column: 18, scope: !1372)
!1501 = !DILocation(line: 234, column: 3, scope: !1372)
!1502 = !DILocation(line: 234, column: 11, scope: !1372)
!1503 = !DILocation(line: 234, column: 15, scope: !1372)
!1504 = !DILocation(line: 235, column: 47, scope: !1372)
!1505 = !DILocation(line: 235, column: 55, scope: !1372)
!1506 = !DILocation(line: 235, column: 42, scope: !1372)
!1507 = !DILocation(line: 235, column: 40, scope: !1372)
!1508 = !DILocation(line: 235, column: 3, scope: !1372)
!1509 = !DILocation(line: 235, column: 11, scope: !1372)
!1510 = !DILocation(line: 235, column: 15, scope: !1372)
!1511 = !DILocation(line: 237, column: 6, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 237, column: 6)
!1513 = !DILocation(line: 237, column: 8, scope: !1512)
!1514 = !DILocation(line: 237, column: 6, scope: !1372)
!1515 = !DILocation(line: 238, column: 5, scope: !1512)
!1516 = distinct !{!1516, !1515}
!1517 = !DILocation(line: 238, column: 5, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1519, file: !1, discriminator: 1)
!1519 = distinct !DILexicalBlock(scope: !1512, file: !1, line: 238, column: 5)
!1520 = !DILocation(line: 238, column: 5, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1519, file: !1, discriminator: 2)
!1522 = !DILocation(line: 240, column: 5, scope: !1512)
!1523 = !DILocation(line: 241, column: 1, scope: !1372)
!1524 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_array", scope: !1, file: !1, line: 496, type: !1525, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!48, !543, !49, !49, !1257}
!1527 = !DILocalVariable(name: "lmax", arg: 1, scope: !1524, file: !1, line: 496, type: !543)
!1528 = !DILocation(line: 496, column: 37, scope: !1524)
!1529 = !DILocalVariable(name: "lambda", arg: 2, scope: !1524, file: !1, line: 496, type: !49)
!1530 = !DILocation(line: 496, column: 56, scope: !1524)
!1531 = !DILocalVariable(name: "eta", arg: 3, scope: !1524, file: !1, line: 496, type: !49)
!1532 = !DILocation(line: 496, column: 77, scope: !1524)
!1533 = !DILocalVariable(name: "result_array", arg: 4, scope: !1524, file: !1, line: 496, type: !1257)
!1534 = !DILocation(line: 496, column: 91, scope: !1524)
!1535 = !DILocation(line: 500, column: 5, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1524, file: !1, line: 500, column: 5)
!1537 = !DILocation(line: 500, column: 9, scope: !1536)
!1538 = !DILocation(line: 500, column: 15, scope: !1536)
!1539 = !DILocation(line: 500, column: 18, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1536, file: !1, discriminator: 1)
!1541 = !DILocation(line: 500, column: 23, scope: !1540)
!1542 = !DILocation(line: 500, column: 5, scope: !1540)
!1543 = !DILocalVariable(name: "ell", scope: !1544, file: !1, line: 501, type: !48)
!1544 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 500, column: 28)
!1545 = !DILocation(line: 501, column: 9, scope: !1544)
!1546 = !DILocation(line: 502, column: 12, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1544, file: !1, line: 502, column: 5)
!1548 = !DILocation(line: 502, column: 9, scope: !1547)
!1549 = !DILocation(line: 502, column: 16, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1551, file: !1, discriminator: 1)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !1, line: 502, column: 5)
!1552 = !DILocation(line: 502, column: 21, scope: !1550)
!1553 = !DILocation(line: 502, column: 19, scope: !1550)
!1554 = !DILocation(line: 502, column: 5, scope: !1550)
!1555 = !DILocation(line: 502, column: 47, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1551, file: !1, discriminator: 2)
!1557 = !DILocation(line: 502, column: 34, scope: !1556)
!1558 = !DILocation(line: 502, column: 52, scope: !1556)
!1559 = !DILocation(line: 502, column: 30, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1551, file: !1, discriminator: 3)
!1561 = !DILocation(line: 502, column: 5, scope: !1560)
!1562 = distinct !{!1562, !1563}
!1563 = !DILocation(line: 502, column: 5, scope: !1544)
!1564 = !DILocation(line: 503, column: 5, scope: !1544)
!1565 = distinct !{!1565, !1564}
!1566 = !DILocation(line: 503, column: 5, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1568, file: !1, discriminator: 1)
!1568 = distinct !DILexicalBlock(scope: !1544, file: !1, line: 503, column: 5)
!1569 = !DILocation(line: 504, column: 3, scope: !1544)
!1570 = !DILocation(line: 505, column: 11, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 505, column: 11)
!1572 = !DILocation(line: 505, column: 15, scope: !1571)
!1573 = !DILocation(line: 505, column: 11, scope: !1536)
!1574 = !DILocalVariable(name: "ell", scope: !1575, file: !1, line: 507, type: !48)
!1575 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 505, column: 34)
!1576 = !DILocation(line: 507, column: 9, scope: !1575)
!1577 = !DILocation(line: 508, column: 12, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 508, column: 5)
!1579 = !DILocation(line: 508, column: 9, scope: !1578)
!1580 = !DILocation(line: 508, column: 16, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 1)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !1, line: 508, column: 5)
!1583 = !DILocation(line: 508, column: 21, scope: !1581)
!1584 = !DILocation(line: 508, column: 19, scope: !1581)
!1585 = !DILocation(line: 508, column: 5, scope: !1581)
!1586 = !DILocation(line: 508, column: 47, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 2)
!1588 = !DILocation(line: 508, column: 34, scope: !1587)
!1589 = !DILocation(line: 508, column: 52, scope: !1587)
!1590 = !DILocation(line: 508, column: 30, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1582, file: !1, discriminator: 3)
!1592 = !DILocation(line: 508, column: 5, scope: !1591)
!1593 = distinct !{!1593, !1594}
!1594 = !DILocation(line: 508, column: 5, scope: !1575)
!1595 = !DILocation(line: 509, column: 5, scope: !1575)
!1596 = distinct !{!1596, !1595}
!1597 = !DILocation(line: 509, column: 5, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1599, file: !1, discriminator: 1)
!1599 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 509, column: 5)
!1600 = !DILocation(line: 510, column: 3, scope: !1575)
!1601 = !DILocation(line: 511, column: 11, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1571, file: !1, line: 511, column: 11)
!1603 = !DILocation(line: 511, column: 16, scope: !1602)
!1604 = !DILocation(line: 511, column: 11, scope: !1571)
!1605 = !DILocalVariable(name: "H0", scope: !1606, file: !1, line: 512, type: !52)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !1, line: 511, column: 22)
!1607 = !DILocation(line: 512, column: 19, scope: !1606)
!1608 = !DILocalVariable(name: "stat", scope: !1606, file: !1, line: 513, type: !48)
!1609 = !DILocation(line: 513, column: 9, scope: !1606)
!1610 = !DILocation(line: 513, column: 41, scope: !1606)
!1611 = !DILocation(line: 513, column: 49, scope: !1606)
!1612 = !DILocation(line: 513, column: 16, scope: !1606)
!1613 = !DILocation(line: 514, column: 26, scope: !1606)
!1614 = !DILocation(line: 514, column: 5, scope: !1606)
!1615 = !DILocation(line: 514, column: 21, scope: !1606)
!1616 = !DILocation(line: 515, column: 12, scope: !1606)
!1617 = !DILocation(line: 515, column: 5, scope: !1606)
!1618 = !DILocalVariable(name: "r_Hlp1", scope: !1619, file: !1, line: 520, type: !52)
!1619 = distinct !DILexicalBlock(scope: !1602, file: !1, line: 517, column: 8)
!1620 = !DILocation(line: 520, column: 19, scope: !1619)
!1621 = !DILocalVariable(name: "r_Hl", scope: !1619, file: !1, line: 521, type: !52)
!1622 = !DILocation(line: 521, column: 19, scope: !1619)
!1623 = !DILocalVariable(name: "stat_lmax", scope: !1619, file: !1, line: 522, type: !48)
!1624 = !DILocation(line: 522, column: 9, scope: !1619)
!1625 = !DILocation(line: 522, column: 45, scope: !1619)
!1626 = !DILocation(line: 522, column: 53, scope: !1619)
!1627 = !DILocation(line: 522, column: 61, scope: !1619)
!1628 = !DILocation(line: 522, column: 23, scope: !1619)
!1629 = !DILocalVariable(name: "stat_lmaxm1", scope: !1619, file: !1, line: 523, type: !48)
!1630 = !DILocation(line: 523, column: 9, scope: !1619)
!1631 = !DILocation(line: 523, column: 45, scope: !1619)
!1632 = !DILocation(line: 523, column: 49, scope: !1619)
!1633 = !DILocation(line: 523, column: 53, scope: !1619)
!1634 = !DILocation(line: 523, column: 61, scope: !1619)
!1635 = !DILocation(line: 523, column: 23, scope: !1619)
!1636 = !DILocalVariable(name: "stat_max", scope: !1619, file: !1, line: 524, type: !48)
!1637 = !DILocation(line: 524, column: 9, scope: !1619)
!1638 = !DILocation(line: 524, column: 20, scope: !1619)
!1639 = !DILocation(line: 524, column: 20, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1619, file: !1, discriminator: 1)
!1641 = !DILocation(line: 524, column: 20, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1619, file: !1, discriminator: 2)
!1643 = !DILocation(line: 524, column: 20, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1619, file: !1, discriminator: 3)
!1645 = !DILocation(line: 524, column: 20, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1619, file: !1, discriminator: 4)
!1647 = !DILocation(line: 524, column: 20, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1619, file: !1, discriminator: 5)
!1649 = !DILocation(line: 524, column: 20, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1619, file: !1, discriminator: 6)
!1651 = !DILocation(line: 524, column: 9, scope: !1650)
!1652 = !DILocalVariable(name: "coth_eta", scope: !1619, file: !1, line: 526, type: !49)
!1653 = !DILocation(line: 526, column: 18, scope: !1619)
!1654 = !DILocation(line: 526, column: 38, scope: !1619)
!1655 = !DILocation(line: 526, column: 33, scope: !1619)
!1656 = !DILocation(line: 526, column: 32, scope: !1619)
!1657 = !DILocalVariable(name: "stat_recursion", scope: !1619, file: !1, line: 527, type: !48)
!1658 = !DILocation(line: 527, column: 9, scope: !1619)
!1659 = !DILocalVariable(name: "Hlp1", scope: !1619, file: !1, line: 528, type: !50)
!1660 = !DILocation(line: 528, column: 12, scope: !1619)
!1661 = !DILocation(line: 528, column: 26, scope: !1619)
!1662 = !DILocalVariable(name: "Hl", scope: !1619, file: !1, line: 529, type: !50)
!1663 = !DILocation(line: 529, column: 12, scope: !1619)
!1664 = !DILocation(line: 529, column: 24, scope: !1619)
!1665 = !DILocalVariable(name: "Hlm1", scope: !1619, file: !1, line: 530, type: !50)
!1666 = !DILocation(line: 530, column: 12, scope: !1619)
!1667 = !DILocalVariable(name: "ell", scope: !1619, file: !1, line: 531, type: !48)
!1668 = !DILocation(line: 531, column: 9, scope: !1619)
!1669 = !DILocation(line: 533, column: 28, scope: !1619)
!1670 = !DILocation(line: 533, column: 18, scope: !1619)
!1671 = !DILocation(line: 533, column: 5, scope: !1619)
!1672 = !DILocation(line: 533, column: 26, scope: !1619)
!1673 = !DILocation(line: 534, column: 28, scope: !1619)
!1674 = !DILocation(line: 534, column: 18, scope: !1619)
!1675 = !DILocation(line: 534, column: 22, scope: !1619)
!1676 = !DILocation(line: 534, column: 5, scope: !1619)
!1677 = !DILocation(line: 534, column: 26, scope: !1619)
!1678 = !DILocation(line: 536, column: 13, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1619, file: !1, line: 536, column: 5)
!1680 = !DILocation(line: 536, column: 17, scope: !1679)
!1681 = !DILocation(line: 536, column: 12, scope: !1679)
!1682 = !DILocation(line: 536, column: 9, scope: !1679)
!1683 = !DILocation(line: 536, column: 21, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1685, file: !1, discriminator: 1)
!1685 = distinct !DILexicalBlock(scope: !1679, file: !1, line: 536, column: 5)
!1686 = !DILocation(line: 536, column: 24, scope: !1684)
!1687 = !DILocation(line: 536, column: 5, scope: !1684)
!1688 = !DILocalVariable(name: "root_term_0", scope: !1689, file: !1, line: 537, type: !50)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 536, column: 35)
!1690 = !DILocation(line: 537, column: 14, scope: !1689)
!1691 = !DILocation(line: 537, column: 34, scope: !1689)
!1692 = !DILocation(line: 537, column: 41, scope: !1689)
!1693 = !DILocation(line: 537, column: 28, scope: !1689)
!1694 = !DILocalVariable(name: "root_term_1", scope: !1689, file: !1, line: 538, type: !50)
!1695 = !DILocation(line: 538, column: 14, scope: !1689)
!1696 = !DILocation(line: 538, column: 34, scope: !1689)
!1697 = !DILocation(line: 538, column: 41, scope: !1689)
!1698 = !DILocation(line: 538, column: 44, scope: !1689)
!1699 = !DILocation(line: 538, column: 28, scope: !1689)
!1700 = !DILocation(line: 539, column: 20, scope: !1689)
!1701 = !DILocation(line: 539, column: 19, scope: !1689)
!1702 = !DILocation(line: 539, column: 24, scope: !1689)
!1703 = !DILocation(line: 539, column: 31, scope: !1689)
!1704 = !DILocation(line: 539, column: 30, scope: !1689)
!1705 = !DILocation(line: 539, column: 40, scope: !1689)
!1706 = !DILocation(line: 539, column: 39, scope: !1689)
!1707 = !DILocation(line: 539, column: 45, scope: !1689)
!1708 = !DILocation(line: 539, column: 59, scope: !1689)
!1709 = !DILocation(line: 539, column: 57, scope: !1689)
!1710 = !DILocation(line: 539, column: 43, scope: !1689)
!1711 = !DILocation(line: 539, column: 65, scope: !1689)
!1712 = !DILocation(line: 539, column: 64, scope: !1689)
!1713 = !DILocation(line: 539, column: 12, scope: !1689)
!1714 = !DILocation(line: 540, column: 29, scope: !1689)
!1715 = !DILocation(line: 540, column: 20, scope: !1689)
!1716 = !DILocation(line: 540, column: 23, scope: !1689)
!1717 = !DILocation(line: 540, column: 7, scope: !1689)
!1718 = !DILocation(line: 540, column: 27, scope: !1689)
!1719 = !DILocation(line: 541, column: 12, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 541, column: 10)
!1721 = !DILocation(line: 541, column: 17, scope: !1720)
!1722 = !DILocation(line: 541, column: 10, scope: !1689)
!1723 = !DILocation(line: 541, column: 48, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1720, file: !1, discriminator: 1)
!1725 = !DILocation(line: 541, column: 33, scope: !1724)
!1726 = !DILocation(line: 542, column: 14, scope: !1689)
!1727 = !DILocation(line: 542, column: 12, scope: !1689)
!1728 = !DILocation(line: 543, column: 14, scope: !1689)
!1729 = !DILocation(line: 543, column: 12, scope: !1689)
!1730 = !DILocation(line: 544, column: 5, scope: !1689)
!1731 = !DILocation(line: 536, column: 31, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1685, file: !1, discriminator: 2)
!1733 = !DILocation(line: 536, column: 5, scope: !1732)
!1734 = distinct !{!1734, !1735}
!1735 = !DILocation(line: 536, column: 5, scope: !1619)
!1736 = !DILocation(line: 546, column: 12, scope: !1619)
!1737 = !DILocation(line: 546, column: 12, scope: !1640)
!1738 = !DILocation(line: 546, column: 12, scope: !1642)
!1739 = !DILocation(line: 546, column: 12, scope: !1644)
!1740 = !DILocation(line: 546, column: 12, scope: !1646)
!1741 = !DILocation(line: 546, column: 12, scope: !1648)
!1742 = !DILocation(line: 546, column: 12, scope: !1650)
!1743 = !DILocation(line: 546, column: 5, scope: !1650)
!1744 = !DILocation(line: 548, column: 1, scope: !1524)
!1745 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_0", scope: !1, file: !1, line: 555, type: !1746, isLocal: false, isDefinition: true, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!50, !49, !49}
!1748 = !DILocalVariable(name: "lambda", arg: 1, scope: !1745, file: !1, line: 555, type: !49)
!1749 = !DILocation(line: 555, column: 43, scope: !1745)
!1750 = !DILocalVariable(name: "eta", arg: 2, scope: !1745, file: !1, line: 555, type: !49)
!1751 = !DILocation(line: 555, column: 64, scope: !1745)
!1752 = !DILocalVariable(name: "result", scope: !1745, file: !1, line: 557, type: !52)
!1753 = !DILocation(line: 557, column: 3, scope: !1745)
!1754 = !DILocalVariable(name: "status", scope: !1745, file: !1, line: 557, type: !48)
!1755 = !DILocation(line: 557, column: 3, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1745, file: !1, line: 557, column: 3)
!1757 = !DILocation(line: 557, column: 3, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1759, file: !1, discriminator: 1)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 557, column: 3)
!1760 = distinct !{!1760, !1761}
!1761 = !DILocation(line: 557, column: 3, scope: !1759)
!1762 = !DILocation(line: 557, column: 3, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1764, file: !1, discriminator: 2)
!1764 = distinct !DILexicalBlock(scope: !1759, file: !1, line: 557, column: 3)
!1765 = !DILocation(line: 557, column: 3, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1759, file: !1, discriminator: 3)
!1767 = !DILocation(line: 557, column: 3, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1745, file: !1, discriminator: 4)
!1769 = !DILocation(line: 558, column: 1, scope: !1745)
!1770 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d_1", scope: !1, file: !1, line: 560, type: !1746, isLocal: false, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1771 = !DILocalVariable(name: "lambda", arg: 1, scope: !1770, file: !1, line: 560, type: !49)
!1772 = !DILocation(line: 560, column: 43, scope: !1770)
!1773 = !DILocalVariable(name: "eta", arg: 2, scope: !1770, file: !1, line: 560, type: !49)
!1774 = !DILocation(line: 560, column: 64, scope: !1770)
!1775 = !DILocalVariable(name: "result", scope: !1770, file: !1, line: 562, type: !52)
!1776 = !DILocation(line: 562, column: 3, scope: !1770)
!1777 = !DILocalVariable(name: "status", scope: !1770, file: !1, line: 562, type: !48)
!1778 = !DILocation(line: 562, column: 3, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 562, column: 3)
!1780 = !DILocation(line: 562, column: 3, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1782, file: !1, discriminator: 1)
!1782 = distinct !DILexicalBlock(scope: !1779, file: !1, line: 562, column: 3)
!1783 = distinct !{!1783, !1784}
!1784 = !DILocation(line: 562, column: 3, scope: !1782)
!1785 = !DILocation(line: 562, column: 3, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1787, file: !1, discriminator: 2)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !1, line: 562, column: 3)
!1788 = !DILocation(line: 562, column: 3, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1782, file: !1, discriminator: 3)
!1790 = !DILocation(line: 562, column: 3, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1770, file: !1, discriminator: 4)
!1792 = !DILocation(line: 563, column: 1, scope: !1770)
!1793 = distinct !DISubprogram(name: "gsl_sf_legendre_H3d", scope: !1, file: !1, line: 565, type: !1794, isLocal: false, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!50, !543, !49, !49}
!1796 = !DILocalVariable(name: "l", arg: 1, scope: !1793, file: !1, line: 565, type: !543)
!1797 = !DILocation(line: 565, column: 38, scope: !1793)
!1798 = !DILocalVariable(name: "lambda", arg: 2, scope: !1793, file: !1, line: 565, type: !49)
!1799 = !DILocation(line: 565, column: 54, scope: !1793)
!1800 = !DILocalVariable(name: "eta", arg: 3, scope: !1793, file: !1, line: 565, type: !49)
!1801 = !DILocation(line: 565, column: 75, scope: !1793)
!1802 = !DILocalVariable(name: "result", scope: !1793, file: !1, line: 567, type: !52)
!1803 = !DILocation(line: 567, column: 3, scope: !1793)
!1804 = !DILocalVariable(name: "status", scope: !1793, file: !1, line: 567, type: !48)
!1805 = !DILocation(line: 567, column: 3, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1793, file: !1, line: 567, column: 3)
!1807 = !DILocation(line: 567, column: 3, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1809, file: !1, discriminator: 1)
!1809 = distinct !DILexicalBlock(scope: !1806, file: !1, line: 567, column: 3)
!1810 = distinct !{!1810, !1811}
!1811 = !DILocation(line: 567, column: 3, scope: !1809)
!1812 = !DILocation(line: 567, column: 3, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1814, file: !1, discriminator: 2)
!1814 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 567, column: 3)
!1815 = !DILocation(line: 567, column: 3, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1809, file: !1, discriminator: 3)
!1817 = !DILocation(line: 567, column: 3, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1793, file: !1, discriminator: 4)
!1819 = !DILocation(line: 568, column: 1, scope: !1793)
