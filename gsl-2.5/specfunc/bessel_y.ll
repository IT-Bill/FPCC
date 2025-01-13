; ModuleID = 'bessel_y.c'
source_filename = "bessel_y.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bessel_y.c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_y0_e(x, &result)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_y1_e(x, &result)\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_y2_e(x, &result)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_yl_e(l, x, &result)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_y0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !59, metadata !60), !dbg !61
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !62, metadata !60), !dbg !63
  %8 = load double, double* %4, align 8, !dbg !64
  %9 = fcmp ole double %8, 0.000000e+00, !dbg !66
  br i1 %9, label %10, label %19, !dbg !67

; <label>:10:                                     ; preds = %2
  br label %11, !dbg !68, !llvm.loop !70

; <label>:11:                                     ; preds = %10
  %12 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !71
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !71
  store double 0x7FF8000000000000, double* %13, align 8, !dbg !71
  %14 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !71
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !71
  store double 0x7FF8000000000000, double* %15, align 8, !dbg !71
  br label %16, !dbg !71, !llvm.loop !74

; <label>:16:                                     ; preds = %11
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 82, i32 1), !dbg !76
  store i32 1, i32* %3, align 4, !dbg !76
  br label %59, !dbg !76
                                                  ; No predecessors!
  br label %18, !dbg !79

; <label>:18:                                     ; preds = %17
  br label %59, !dbg !81

; <label>:19:                                     ; preds = %2
  %20 = load double, double* %4, align 8, !dbg !82
  %21 = fcmp olt double %20, 0x4000000000000, !dbg !84
  br i1 %21, label %22, label %31, !dbg !85

; <label>:22:                                     ; preds = %19
  br label %23, !dbg !86, !llvm.loop !88

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !89
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !89
  store double 0x7FF0000000000000, double* %25, align 8, !dbg !89
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !89
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !89
  store double 0x7FF0000000000000, double* %27, align 8, !dbg !89
  br label %28, !dbg !89, !llvm.loop !92

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 85, i32 16), !dbg !94
  store i32 16, i32* %3, align 4, !dbg !94
  br label %59, !dbg !94
                                                  ; No predecessors!
  br label %30, !dbg !97

; <label>:30:                                     ; preds = %29
  br label %58, !dbg !99

; <label>:31:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !100, metadata !60), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %7, metadata !103, metadata !60), !dbg !105
  %32 = load double, double* %4, align 8, !dbg !106
  %33 = call i32 @gsl_sf_cos_e(double %32, %struct.gsl_sf_result_struct* %6), !dbg !107
  store i32 %33, i32* %7, align 4, !dbg !105
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !108
  %35 = load double, double* %34, align 8, !dbg !108
  %36 = fsub double -0.000000e+00, %35, !dbg !109
  %37 = load double, double* %4, align 8, !dbg !110
  %38 = fdiv double %36, %37, !dbg !111
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !112
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %39, i32 0, i32 0, !dbg !113
  store double %38, double* %40, align 8, !dbg !114
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 1, !dbg !115
  %42 = load double, double* %41, align 8, !dbg !115
  %43 = load double, double* %4, align 8, !dbg !116
  %44 = fdiv double %42, %43, !dbg !117
  %45 = call double @fabs(double %44) #1, !dbg !118
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !119
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %46, i32 0, i32 1, !dbg !120
  store double %45, double* %47, align 8, !dbg !121
  %48 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !122
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %48, i32 0, i32 0, !dbg !123
  %50 = load double, double* %49, align 8, !dbg !123
  %51 = call double @fabs(double %50) #1, !dbg !124
  %52 = fmul double 0x3CC0000000000000, %51, !dbg !125
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !126
  %54 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %53, i32 0, i32 1, !dbg !127
  %55 = load double, double* %54, align 8, !dbg !128
  %56 = fadd double %55, %52, !dbg !128
  store double %56, double* %54, align 8, !dbg !128
  %57 = load i32, i32* %7, align 4, !dbg !129
  store i32 %57, i32* %3, align 4, !dbg !130
  br label %59, !dbg !130

; <label>:58:                                     ; preds = %30
  br label %59

; <label>:59:                                     ; preds = %16, %28, %31, %58, %18
  %60 = load i32, i32* %3, align 4, !dbg !131
  ret i32 %60, !dbg !131
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @gsl_error(i8*, i8*, i32, i32) #2

declare i32 @gsl_sf_cos_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_y1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !132 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.gsl_sf_result_struct, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !133, metadata !60), !dbg !134
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !135, metadata !60), !dbg !136
  %20 = load double, double* %4, align 8, !dbg !137
  %21 = fcmp ole double %20, 0.000000e+00, !dbg !139
  br i1 %21, label %22, label %31, !dbg !140

; <label>:22:                                     ; preds = %2
  br label %23, !dbg !141, !llvm.loop !143

; <label>:23:                                     ; preds = %22
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !144
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !144
  store double 0x7FF8000000000000, double* %25, align 8, !dbg !144
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !144
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !144
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !144
  br label %28, !dbg !144, !llvm.loop !147

; <label>:28:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 103, i32 1), !dbg !149
  store i32 1, i32* %3, align 4, !dbg !149
  br label %144, !dbg !149
                                                  ; No predecessors!
  br label %30, !dbg !152

; <label>:30:                                     ; preds = %29
  br label %144, !dbg !154

; <label>:31:                                     ; preds = %2
  %32 = load double, double* %4, align 8, !dbg !155
  %33 = fcmp olt double %32, 0x1FF0000000000001, !dbg !157
  br i1 %33, label %34, label %43, !dbg !158

; <label>:34:                                     ; preds = %31
  br label %35, !dbg !159, !llvm.loop !161

; <label>:35:                                     ; preds = %34
  %36 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !162
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %36, i32 0, i32 0, !dbg !162
  store double 0x7FF0000000000000, double* %37, align 8, !dbg !162
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !162
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 1, !dbg !162
  store double 0x7FF0000000000000, double* %39, align 8, !dbg !162
  br label %40, !dbg !162, !llvm.loop !165

; <label>:40:                                     ; preds = %35
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 106, i32 16), !dbg !167
  store i32 16, i32* %3, align 4, !dbg !167
  br label %144, !dbg !167
                                                  ; No predecessors!
  br label %42, !dbg !170

; <label>:42:                                     ; preds = %41
  br label %143, !dbg !172

; <label>:43:                                     ; preds = %31
  %44 = load double, double* %4, align 8, !dbg !173
  %45 = fcmp olt double %44, 2.500000e-01, !dbg !175
  br i1 %45, label %46, label %81, !dbg !176

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata double* %6, metadata !177, metadata !60), !dbg !179
  %47 = load double, double* %4, align 8, !dbg !180
  %48 = load double, double* %4, align 8, !dbg !181
  %49 = fmul double %47, %48, !dbg !182
  store double %49, double* %6, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata double* %7, metadata !183, metadata !60), !dbg !184
  store double 5.000000e-01, double* %7, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata double* %8, metadata !185, metadata !60), !dbg !186
  store double -1.250000e-01, double* %8, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata double* %9, metadata !187, metadata !60), !dbg !188
  store double 0x3F7C71C71C71C71C, double* %9, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata double* %10, metadata !189, metadata !60), !dbg !190
  store double 0xBF26C16C16C16C17, double* %10, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata double* %11, metadata !191, metadata !60), !dbg !192
  store double 0x3EC4CE19AE67B348, double* %11, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata double* %12, metadata !193, metadata !60), !dbg !194
  store double 0xBE58A86A49F629D1, double* %12, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata double* %13, metadata !195, metadata !60), !dbg !196
  %50 = load double, double* %6, align 8, !dbg !197
  %51 = load double, double* %6, align 8, !dbg !198
  %52 = load double, double* %6, align 8, !dbg !199
  %53 = load double, double* %6, align 8, !dbg !200
  %54 = load double, double* %6, align 8, !dbg !201
  %55 = load double, double* %6, align 8, !dbg !202
  %56 = fmul double %55, 0xBE58A86A49F629D1, !dbg !203
  %57 = fadd double 0x3EC4CE19AE67B348, %56, !dbg !204
  %58 = fmul double %54, %57, !dbg !205
  %59 = fadd double 0xBF26C16C16C16C17, %58, !dbg !206
  %60 = fmul double %53, %59, !dbg !207
  %61 = fadd double 0x3F7C71C71C71C71C, %60, !dbg !208
  %62 = fmul double %52, %61, !dbg !209
  %63 = fadd double -1.250000e-01, %62, !dbg !210
  %64 = fmul double %51, %63, !dbg !211
  %65 = fadd double 5.000000e-01, %64, !dbg !212
  %66 = fmul double %50, %65, !dbg !213
  %67 = fadd double 1.000000e+00, %66, !dbg !214
  store double %67, double* %13, align 8, !dbg !196
  %68 = load double, double* %13, align 8, !dbg !215
  %69 = fsub double -0.000000e+00, %68, !dbg !216
  %70 = load double, double* %6, align 8, !dbg !217
  %71 = fdiv double %69, %70, !dbg !218
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !219
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !220
  store double %71, double* %73, align 8, !dbg !221
  %74 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !222
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %74, i32 0, i32 0, !dbg !223
  %76 = load double, double* %75, align 8, !dbg !223
  %77 = call double @fabs(double %76) #1, !dbg !224
  %78 = fmul double 0x3CB0000000000000, %77, !dbg !225
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !226
  %80 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %79, i32 0, i32 1, !dbg !227
  store double %78, double* %80, align 8, !dbg !228
  store i32 0, i32* %3, align 4, !dbg !229
  br label %144, !dbg !229

; <label>:81:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %14, metadata !230, metadata !60), !dbg !232
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !233, metadata !60), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %16, metadata !235, metadata !60), !dbg !236
  %82 = load double, double* %4, align 8, !dbg !237
  %83 = call i32 @gsl_sf_cos_e(double %82, %struct.gsl_sf_result_struct* %14), !dbg !238
  store i32 %83, i32* %16, align 4, !dbg !236
  call void @llvm.dbg.declare(metadata i32* %17, metadata !239, metadata !60), !dbg !240
  %84 = load double, double* %4, align 8, !dbg !241
  %85 = call i32 @gsl_sf_sin_e(double %84, %struct.gsl_sf_result_struct* %15), !dbg !242
  store i32 %85, i32* %17, align 4, !dbg !240
  call void @llvm.dbg.declare(metadata double* %18, metadata !243, metadata !60), !dbg !244
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 0, !dbg !245
  %87 = load double, double* %86, align 8, !dbg !245
  store double %87, double* %18, align 8, !dbg !244
  call void @llvm.dbg.declare(metadata double* %19, metadata !246, metadata !60), !dbg !247
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !248
  %89 = load double, double* %88, align 8, !dbg !248
  store double %89, double* %19, align 8, !dbg !247
  %90 = load double, double* %18, align 8, !dbg !249
  %91 = load double, double* %4, align 8, !dbg !250
  %92 = fdiv double %90, %91, !dbg !251
  %93 = load double, double* %19, align 8, !dbg !252
  %94 = fadd double %92, %93, !dbg !253
  %95 = fsub double -0.000000e+00, %94, !dbg !254
  %96 = load double, double* %4, align 8, !dbg !255
  %97 = fdiv double %95, %96, !dbg !256
  %98 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !257
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %98, i32 0, i32 0, !dbg !258
  store double %97, double* %99, align 8, !dbg !259
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %14, i32 0, i32 1, !dbg !260
  %101 = load double, double* %100, align 8, !dbg !260
  %102 = load double, double* %4, align 8, !dbg !261
  %103 = fdiv double %101, %102, !dbg !262
  %104 = call double @fabs(double %103) #1, !dbg !263
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !264
  %106 = load double, double* %105, align 8, !dbg !264
  %107 = fadd double %104, %106, !dbg !265
  %108 = load double, double* %4, align 8, !dbg !266
  %109 = call double @fabs(double %108) #1, !dbg !267
  %110 = fdiv double %107, %109, !dbg !269
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !270
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 1, !dbg !271
  store double %110, double* %112, align 8, !dbg !272
  %113 = load double, double* %19, align 8, !dbg !273
  %114 = load double, double* %4, align 8, !dbg !274
  %115 = fdiv double %113, %114, !dbg !275
  %116 = call double @fabs(double %115) #1, !dbg !276
  %117 = load double, double* %18, align 8, !dbg !277
  %118 = load double, double* %4, align 8, !dbg !278
  %119 = load double, double* %4, align 8, !dbg !279
  %120 = fmul double %118, %119, !dbg !280
  %121 = fdiv double %117, %120, !dbg !281
  %122 = call double @fabs(double %121) #1, !dbg !282
  %123 = fadd double %116, %122, !dbg !283
  %124 = fmul double 0x3CB0000000000000, %123, !dbg !284
  %125 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !285
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %125, i32 0, i32 1, !dbg !286
  %127 = load double, double* %126, align 8, !dbg !287
  %128 = fadd double %127, %124, !dbg !287
  store double %128, double* %126, align 8, !dbg !287
  %129 = load i32, i32* %16, align 4, !dbg !288
  %130 = icmp ne i32 %129, 0, !dbg !288
  br i1 %130, label %131, label %133, !dbg !288

; <label>:131:                                    ; preds = %81
  %132 = load i32, i32* %16, align 4, !dbg !289
  br label %141, !dbg !289

; <label>:133:                                    ; preds = %81
  %134 = load i32, i32* %17, align 4, !dbg !290
  %135 = icmp ne i32 %134, 0, !dbg !290
  br i1 %135, label %136, label %138, !dbg !290

; <label>:136:                                    ; preds = %133
  %137 = load i32, i32* %17, align 4, !dbg !292
  br label %139, !dbg !292

; <label>:138:                                    ; preds = %133
  br label %139, !dbg !294

; <label>:139:                                    ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 0, %138 ], !dbg !296
  br label %141, !dbg !296

; <label>:141:                                    ; preds = %139, %131
  %142 = phi i32 [ %132, %131 ], [ %140, %139 ], !dbg !298
  store i32 %142, i32* %3, align 4, !dbg !300
  br label %144, !dbg !300

; <label>:143:                                    ; preds = %42
  br label %144

; <label>:144:                                    ; preds = %28, %40, %46, %141, %143, %30
  %145 = load i32, i32* %3, align 4, !dbg !301
  ret i32 %145, !dbg !301
}

declare i32 @gsl_sf_sin_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_y2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !302 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.gsl_sf_result_struct, align 8
  %16 = alloca %struct.gsl_sf_result_struct, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !303, metadata !60), !dbg !304
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !305, metadata !60), !dbg !306
  %22 = load double, double* %4, align 8, !dbg !307
  %23 = fcmp ole double %22, 0.000000e+00, !dbg !309
  br i1 %23, label %24, label %33, !dbg !310

; <label>:24:                                     ; preds = %2
  br label %25, !dbg !311, !llvm.loop !313

; <label>:25:                                     ; preds = %24
  %26 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !314
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !314
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !314
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !314
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 1, !dbg !314
  store double 0x7FF8000000000000, double* %29, align 8, !dbg !314
  br label %30, !dbg !314, !llvm.loop !317

; <label>:30:                                     ; preds = %25
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 141, i32 1), !dbg !319
  store i32 1, i32* %3, align 4, !dbg !319
  br label %162, !dbg !319
                                                  ; No predecessors!
  br label %32, !dbg !322

; <label>:32:                                     ; preds = %31
  br label %162, !dbg !324

; <label>:33:                                     ; preds = %2
  %34 = load double, double* %4, align 8, !dbg !325
  %35 = fcmp olt double %34, 0x2A9965FEA53D6E98, !dbg !327
  br i1 %35, label %36, label %45, !dbg !328

; <label>:36:                                     ; preds = %33
  br label %37, !dbg !329, !llvm.loop !331

; <label>:37:                                     ; preds = %36
  %38 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !332
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %38, i32 0, i32 0, !dbg !332
  store double 0x7FF0000000000000, double* %39, align 8, !dbg !332
  %40 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !332
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %40, i32 0, i32 1, !dbg !332
  store double 0x7FF0000000000000, double* %41, align 8, !dbg !332
  br label %42, !dbg !332, !llvm.loop !335

; <label>:42:                                     ; preds = %37
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 144, i32 16), !dbg !337
  store i32 16, i32* %3, align 4, !dbg !337
  br label %162, !dbg !337
                                                  ; No predecessors!
  br label %44, !dbg !340

; <label>:44:                                     ; preds = %43
  br label %161, !dbg !342

; <label>:45:                                     ; preds = %33
  %46 = load double, double* %4, align 8, !dbg !343
  %47 = fcmp olt double %46, 5.000000e-01, !dbg !345
  br i1 %47, label %48, label %90, !dbg !346

; <label>:48:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata double* %6, metadata !347, metadata !60), !dbg !349
  %49 = load double, double* %4, align 8, !dbg !350
  %50 = load double, double* %4, align 8, !dbg !351
  %51 = fmul double %49, %50, !dbg !352
  store double %51, double* %6, align 8, !dbg !349
  call void @llvm.dbg.declare(metadata double* %7, metadata !353, metadata !60), !dbg !354
  store double 0x3FC5555555555555, double* %7, align 8, !dbg !354
  call void @llvm.dbg.declare(metadata double* %8, metadata !355, metadata !60), !dbg !356
  store double 0x3FA5555555555555, double* %8, align 8, !dbg !356
  call void @llvm.dbg.declare(metadata double* %9, metadata !357, metadata !60), !dbg !358
  store double 0xBF7C71C71C71C71C, double* %9, align 8, !dbg !358
  call void @llvm.dbg.declare(metadata double* %10, metadata !359, metadata !60), !dbg !360
  store double 0x3F32F684BDA12F68, double* %10, align 8, !dbg !360
  call void @llvm.dbg.declare(metadata double* %11, metadata !361, metadata !60), !dbg !362
  store double 0xBED845C8A0CE5129, double* %11, align 8, !dbg !362
  call void @llvm.dbg.declare(metadata double* %12, metadata !363, metadata !60), !dbg !364
  store double 0x3E727E4FB7789F5C, double* %12, align 8, !dbg !364
  call void @llvm.dbg.declare(metadata double* %13, metadata !365, metadata !60), !dbg !366
  store double 0xBE02C9758DAF5CD0, double* %13, align 8, !dbg !366
  call void @llvm.dbg.declare(metadata double* %14, metadata !367, metadata !60), !dbg !368
  %52 = load double, double* %6, align 8, !dbg !369
  %53 = load double, double* %6, align 8, !dbg !370
  %54 = load double, double* %6, align 8, !dbg !371
  %55 = load double, double* %6, align 8, !dbg !372
  %56 = load double, double* %6, align 8, !dbg !373
  %57 = load double, double* %6, align 8, !dbg !374
  %58 = load double, double* %6, align 8, !dbg !375
  %59 = fmul double %58, 0xBE02C9758DAF5CD0, !dbg !376
  %60 = fadd double 0x3E727E4FB7789F5C, %59, !dbg !377
  %61 = fmul double %57, %60, !dbg !378
  %62 = fadd double 0xBED845C8A0CE5129, %61, !dbg !379
  %63 = fmul double %56, %62, !dbg !380
  %64 = fadd double 0x3F32F684BDA12F68, %63, !dbg !381
  %65 = fmul double %55, %64, !dbg !382
  %66 = fadd double 0xBF7C71C71C71C71C, %65, !dbg !383
  %67 = fmul double %54, %66, !dbg !384
  %68 = fadd double 0x3FA5555555555555, %67, !dbg !385
  %69 = fmul double %53, %68, !dbg !386
  %70 = fadd double 0x3FC5555555555555, %69, !dbg !387
  %71 = fmul double %52, %70, !dbg !388
  %72 = fadd double 1.000000e+00, %71, !dbg !389
  store double %72, double* %14, align 8, !dbg !368
  %73 = load double, double* %4, align 8, !dbg !390
  %74 = load double, double* %4, align 8, !dbg !391
  %75 = fmul double %73, %74, !dbg !392
  %76 = load double, double* %4, align 8, !dbg !393
  %77 = fmul double %75, %76, !dbg !394
  %78 = fdiv double -3.000000e+00, %77, !dbg !395
  %79 = load double, double* %14, align 8, !dbg !396
  %80 = fmul double %78, %79, !dbg !397
  %81 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !398
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %81, i32 0, i32 0, !dbg !399
  store double %80, double* %82, align 8, !dbg !400
  %83 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !401
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %83, i32 0, i32 0, !dbg !402
  %85 = load double, double* %84, align 8, !dbg !402
  %86 = call double @fabs(double %85) #1, !dbg !403
  %87 = fmul double 0x3CB0000000000000, %86, !dbg !404
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !405
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !406
  store double %87, double* %89, align 8, !dbg !407
  store i32 0, i32* %3, align 4, !dbg !408
  br label %162, !dbg !408

; <label>:90:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %15, metadata !409, metadata !60), !dbg !411
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %16, metadata !412, metadata !60), !dbg !413
  call void @llvm.dbg.declare(metadata i32* %17, metadata !414, metadata !60), !dbg !415
  %91 = load double, double* %4, align 8, !dbg !416
  %92 = call i32 @gsl_sf_cos_e(double %91, %struct.gsl_sf_result_struct* %15), !dbg !417
  store i32 %92, i32* %17, align 4, !dbg !415
  call void @llvm.dbg.declare(metadata i32* %18, metadata !418, metadata !60), !dbg !419
  %93 = load double, double* %4, align 8, !dbg !420
  %94 = call i32 @gsl_sf_sin_e(double %93, %struct.gsl_sf_result_struct* %16), !dbg !421
  store i32 %94, i32* %18, align 4, !dbg !419
  call void @llvm.dbg.declare(metadata double* %19, metadata !422, metadata !60), !dbg !423
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !424
  %96 = load double, double* %95, align 8, !dbg !424
  store double %96, double* %19, align 8, !dbg !423
  call void @llvm.dbg.declare(metadata double* %20, metadata !425, metadata !60), !dbg !426
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 0, !dbg !427
  %98 = load double, double* %97, align 8, !dbg !427
  store double %98, double* %20, align 8, !dbg !426
  call void @llvm.dbg.declare(metadata double* %21, metadata !428, metadata !60), !dbg !429
  %99 = load double, double* %4, align 8, !dbg !430
  %100 = load double, double* %4, align 8, !dbg !431
  %101 = fmul double %99, %100, !dbg !432
  %102 = fdiv double 3.000000e+00, %101, !dbg !433
  store double %102, double* %21, align 8, !dbg !429
  %103 = load double, double* %21, align 8, !dbg !434
  %104 = fsub double 1.000000e+00, %103, !dbg !435
  %105 = load double, double* %4, align 8, !dbg !436
  %106 = fdiv double %104, %105, !dbg !437
  %107 = load double, double* %20, align 8, !dbg !438
  %108 = fmul double %106, %107, !dbg !439
  %109 = load double, double* %21, align 8, !dbg !440
  %110 = load double, double* %19, align 8, !dbg !441
  %111 = fmul double %109, %110, !dbg !442
  %112 = fsub double %108, %111, !dbg !443
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !444
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 0, !dbg !445
  store double %112, double* %114, align 8, !dbg !446
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %15, i32 0, i32 1, !dbg !447
  %116 = load double, double* %115, align 8, !dbg !447
  %117 = load double, double* %21, align 8, !dbg !448
  %118 = fsub double 1.000000e+00, %117, !dbg !449
  %119 = load double, double* %4, align 8, !dbg !450
  %120 = fdiv double %118, %119, !dbg !451
  %121 = call double @fabs(double %120) #1, !dbg !452
  %122 = fmul double %116, %121, !dbg !453
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 1, !dbg !454
  %124 = load double, double* %123, align 8, !dbg !454
  %125 = load double, double* %21, align 8, !dbg !455
  %126 = call double @fabs(double %125) #1, !dbg !456
  %127 = fmul double %124, %126, !dbg !458
  %128 = fadd double %122, %127, !dbg !459
  %129 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !460
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %129, i32 0, i32 1, !dbg !461
  store double %128, double* %130, align 8, !dbg !462
  %131 = load double, double* %20, align 8, !dbg !463
  %132 = load double, double* %4, align 8, !dbg !464
  %133 = fdiv double %131, %132, !dbg !465
  %134 = call double @fabs(double %133) #1, !dbg !466
  %135 = load double, double* %19, align 8, !dbg !467
  %136 = load double, double* %4, align 8, !dbg !468
  %137 = load double, double* %4, align 8, !dbg !469
  %138 = fmul double %136, %137, !dbg !470
  %139 = fdiv double %135, %138, !dbg !471
  %140 = call double @fabs(double %139) #1, !dbg !472
  %141 = fadd double %134, %140, !dbg !473
  %142 = fmul double 0x3CB0000000000000, %141, !dbg !474
  %143 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !475
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %143, i32 0, i32 1, !dbg !476
  %145 = load double, double* %144, align 8, !dbg !477
  %146 = fadd double %145, %142, !dbg !477
  store double %146, double* %144, align 8, !dbg !477
  %147 = load i32, i32* %17, align 4, !dbg !478
  %148 = icmp ne i32 %147, 0, !dbg !478
  br i1 %148, label %149, label %151, !dbg !478

; <label>:149:                                    ; preds = %90
  %150 = load i32, i32* %17, align 4, !dbg !479
  br label %159, !dbg !479

; <label>:151:                                    ; preds = %90
  %152 = load i32, i32* %18, align 4, !dbg !480
  %153 = icmp ne i32 %152, 0, !dbg !480
  br i1 %153, label %154, label %156, !dbg !480

; <label>:154:                                    ; preds = %151
  %155 = load i32, i32* %18, align 4, !dbg !482
  br label %157, !dbg !482

; <label>:156:                                    ; preds = %151
  br label %157, !dbg !484

; <label>:157:                                    ; preds = %156, %154
  %158 = phi i32 [ %155, %154 ], [ 0, %156 ], !dbg !486
  br label %159, !dbg !486

; <label>:159:                                    ; preds = %157, %149
  %160 = phi i32 [ %150, %149 ], [ %158, %157 ], !dbg !488
  store i32 %160, i32* %3, align 4, !dbg !490
  br label %162, !dbg !490

; <label>:161:                                    ; preds = %44
  br label %162

; <label>:162:                                    ; preds = %30, %42, %48, %159, %161, %32
  %163 = load i32, i32* %3, align 4, !dbg !491
  ret i32 %163, !dbg !491
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_yl_e(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !492 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.gsl_sf_result_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca %struct.gsl_sf_result_struct, align 8
  %13 = alloca %struct.gsl_sf_result_struct, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !495, metadata !60), !dbg !496
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !497, metadata !60), !dbg !498
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !499, metadata !60), !dbg !500
  %20 = load i32, i32* %5, align 4, !dbg !501
  %21 = icmp slt i32 %20, 0, !dbg !503
  br i1 %21, label %25, label %22, !dbg !504

; <label>:22:                                     ; preds = %3
  %23 = load double, double* %6, align 8, !dbg !505
  %24 = fcmp ole double %23, 0.000000e+00, !dbg !507
  br i1 %24, label %25, label %34, !dbg !508

; <label>:25:                                     ; preds = %22, %3
  br label %26, !dbg !509, !llvm.loop !511

; <label>:26:                                     ; preds = %25
  %27 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !512
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %27, i32 0, i32 0, !dbg !512
  store double 0x7FF8000000000000, double* %28, align 8, !dbg !512
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !512
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !512
  store double 0x7FF8000000000000, double* %30, align 8, !dbg !512
  br label %31, !dbg !512, !llvm.loop !515

; <label>:31:                                     ; preds = %26
  call void @gsl_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 181, i32 1), !dbg !517
  store i32 1, i32* %4, align 4, !dbg !517
  br label %187, !dbg !517
                                                  ; No predecessors!
  br label %33, !dbg !520

; <label>:33:                                     ; preds = %32
  br label %187, !dbg !522

; <label>:34:                                     ; preds = %22
  %35 = load i32, i32* %5, align 4, !dbg !523
  %36 = icmp eq i32 %35, 0, !dbg !525
  br i1 %36, label %37, label %41, !dbg !526

; <label>:37:                                     ; preds = %34
  %38 = load double, double* %6, align 8, !dbg !527
  %39 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !529
  %40 = call i32 @gsl_sf_bessel_y0_e(double %38, %struct.gsl_sf_result_struct* %39), !dbg !530
  store i32 %40, i32* %4, align 4, !dbg !531
  br label %187, !dbg !531

; <label>:41:                                     ; preds = %34
  %42 = load i32, i32* %5, align 4, !dbg !532
  %43 = icmp eq i32 %42, 1, !dbg !534
  br i1 %43, label %44, label %48, !dbg !535

; <label>:44:                                     ; preds = %41
  %45 = load double, double* %6, align 8, !dbg !536
  %46 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !538
  %47 = call i32 @gsl_sf_bessel_y1_e(double %45, %struct.gsl_sf_result_struct* %46), !dbg !539
  store i32 %47, i32* %4, align 4, !dbg !540
  br label %187, !dbg !540

; <label>:48:                                     ; preds = %41
  %49 = load i32, i32* %5, align 4, !dbg !541
  %50 = icmp eq i32 %49, 2, !dbg !543
  br i1 %50, label %51, label %55, !dbg !544

; <label>:51:                                     ; preds = %48
  %52 = load double, double* %6, align 8, !dbg !545
  %53 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !547
  %54 = call i32 @gsl_sf_bessel_y2_e(double %52, %struct.gsl_sf_result_struct* %53), !dbg !548
  store i32 %54, i32* %4, align 4, !dbg !549
  br label %187, !dbg !549

; <label>:55:                                     ; preds = %48
  %56 = load double, double* %6, align 8, !dbg !550
  %57 = fcmp olt double %56, 3.000000e+00, !dbg !552
  br i1 %57, label %58, label %63, !dbg !553

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %5, align 4, !dbg !554
  %60 = load double, double* %6, align 8, !dbg !556
  %61 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !557
  %62 = call i32 @bessel_yl_small_x(i32 %59, double %60, %struct.gsl_sf_result_struct* %61), !dbg !558
  store i32 %62, i32* %4, align 4, !dbg !559
  br label %187, !dbg !559

; <label>:63:                                     ; preds = %55
  %64 = load double, double* %6, align 8, !dbg !560
  %65 = fmul double 0x3ED965FEA53D6E41, %64, !dbg !562
  %66 = load i32, i32* %5, align 4, !dbg !563
  %67 = load i32, i32* %5, align 4, !dbg !564
  %68 = mul nsw i32 %66, %67, !dbg !565
  %69 = load i32, i32* %5, align 4, !dbg !566
  %70 = add nsw i32 %68, %69, !dbg !567
  %71 = sitofp i32 %70 to double, !dbg !563
  %72 = fadd double %71, 1.000000e+00, !dbg !568
  %73 = fcmp ogt double %65, %72, !dbg !569
  br i1 %73, label %74, label %95, !dbg !570

; <label>:74:                                     ; preds = %63
  call void @llvm.dbg.declare(metadata i32* %8, metadata !571, metadata !60), !dbg !573
  %75 = load i32, i32* %5, align 4, !dbg !574
  %76 = sitofp i32 %75 to double, !dbg !574
  %77 = fadd double %76, 5.000000e-01, !dbg !575
  %78 = load double, double* %6, align 8, !dbg !576
  %79 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !577
  %80 = call i32 @gsl_sf_bessel_Ynu_asympx_e(double %77, double %78, %struct.gsl_sf_result_struct* %79), !dbg !578
  store i32 %80, i32* %8, align 4, !dbg !573
  call void @llvm.dbg.declare(metadata double* %9, metadata !579, metadata !60), !dbg !580
  %81 = load double, double* %6, align 8, !dbg !581
  %82 = fdiv double 0x3FF921FB54442D18, %81, !dbg !582
  %83 = call double @sqrt(double %82) #5, !dbg !583
  store double %83, double* %9, align 8, !dbg !580
  %84 = load double, double* %9, align 8, !dbg !584
  %85 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !585
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %85, i32 0, i32 0, !dbg !586
  %87 = load double, double* %86, align 8, !dbg !587
  %88 = fmul double %87, %84, !dbg !587
  store double %88, double* %86, align 8, !dbg !587
  %89 = load double, double* %9, align 8, !dbg !588
  %90 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !589
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %90, i32 0, i32 1, !dbg !590
  %92 = load double, double* %91, align 8, !dbg !591
  %93 = fmul double %92, %89, !dbg !591
  store double %93, double* %91, align 8, !dbg !591
  %94 = load i32, i32* %8, align 4, !dbg !592
  store i32 %94, i32* %4, align 4, !dbg !593
  br label %187, !dbg !593

; <label>:95:                                     ; preds = %63
  %96 = load i32, i32* %5, align 4, !dbg !594
  %97 = icmp sgt i32 %96, 40, !dbg !596
  br i1 %97, label %98, label %119, !dbg !597

; <label>:98:                                     ; preds = %95
  call void @llvm.dbg.declare(metadata i32* %10, metadata !598, metadata !60), !dbg !600
  %99 = load i32, i32* %5, align 4, !dbg !601
  %100 = sitofp i32 %99 to double, !dbg !601
  %101 = fadd double %100, 5.000000e-01, !dbg !602
  %102 = load double, double* %6, align 8, !dbg !603
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !604
  %104 = call i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double %101, double %102, %struct.gsl_sf_result_struct* %103), !dbg !605
  store i32 %104, i32* %10, align 4, !dbg !600
  call void @llvm.dbg.declare(metadata double* %11, metadata !606, metadata !60), !dbg !607
  %105 = load double, double* %6, align 8, !dbg !608
  %106 = fdiv double 0x3FF921FB54442D18, %105, !dbg !609
  %107 = call double @sqrt(double %106) #5, !dbg !610
  store double %107, double* %11, align 8, !dbg !607
  %108 = load double, double* %11, align 8, !dbg !611
  %109 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !612
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %109, i32 0, i32 0, !dbg !613
  %111 = load double, double* %110, align 8, !dbg !614
  %112 = fmul double %111, %108, !dbg !614
  store double %112, double* %110, align 8, !dbg !614
  %113 = load double, double* %11, align 8, !dbg !615
  %114 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !616
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %114, i32 0, i32 1, !dbg !617
  %116 = load double, double* %115, align 8, !dbg !618
  %117 = fmul double %116, %113, !dbg !618
  store double %117, double* %115, align 8, !dbg !618
  %118 = load i32, i32* %10, align 4, !dbg !619
  store i32 %118, i32* %4, align 4, !dbg !620
  br label %187, !dbg !620

; <label>:119:                                    ; preds = %95
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %12, metadata !621, metadata !60), !dbg !623
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %13, metadata !624, metadata !60), !dbg !625
  call void @llvm.dbg.declare(metadata i32* %14, metadata !626, metadata !60), !dbg !627
  %120 = load double, double* %6, align 8, !dbg !628
  %121 = call i32 @gsl_sf_bessel_y1_e(double %120, %struct.gsl_sf_result_struct* %12), !dbg !629
  store i32 %121, i32* %14, align 4, !dbg !627
  call void @llvm.dbg.declare(metadata i32* %15, metadata !630, metadata !60), !dbg !631
  %122 = load double, double* %6, align 8, !dbg !632
  %123 = call i32 @gsl_sf_bessel_y0_e(double %122, %struct.gsl_sf_result_struct* %13), !dbg !633
  store i32 %123, i32* %15, align 4, !dbg !631
  call void @llvm.dbg.declare(metadata double* %16, metadata !634, metadata !60), !dbg !635
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !636
  %125 = load double, double* %124, align 8, !dbg !636
  store double %125, double* %16, align 8, !dbg !635
  call void @llvm.dbg.declare(metadata double* %17, metadata !637, metadata !60), !dbg !638
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !639
  %127 = load double, double* %126, align 8, !dbg !639
  store double %127, double* %17, align 8, !dbg !638
  call void @llvm.dbg.declare(metadata double* %18, metadata !640, metadata !60), !dbg !641
  call void @llvm.dbg.declare(metadata i32* %19, metadata !642, metadata !60), !dbg !643
  store i32 1, i32* %19, align 4, !dbg !644
  br label %128, !dbg !646

; <label>:128:                                    ; preds = %145, %119
  %129 = load i32, i32* %19, align 4, !dbg !647
  %130 = load i32, i32* %5, align 4, !dbg !650
  %131 = icmp slt i32 %129, %130, !dbg !651
  br i1 %131, label %132, label %148, !dbg !652

; <label>:132:                                    ; preds = %128
  %133 = load i32, i32* %19, align 4, !dbg !653
  %134 = mul nsw i32 2, %133, !dbg !655
  %135 = add nsw i32 %134, 1, !dbg !656
  %136 = sitofp i32 %135 to double, !dbg !657
  %137 = load double, double* %6, align 8, !dbg !658
  %138 = fdiv double %136, %137, !dbg !659
  %139 = load double, double* %17, align 8, !dbg !660
  %140 = fmul double %138, %139, !dbg !661
  %141 = load double, double* %16, align 8, !dbg !662
  %142 = fsub double %140, %141, !dbg !663
  store double %142, double* %18, align 8, !dbg !664
  %143 = load double, double* %17, align 8, !dbg !665
  store double %143, double* %16, align 8, !dbg !666
  %144 = load double, double* %18, align 8, !dbg !667
  store double %144, double* %17, align 8, !dbg !668
  br label %145, !dbg !669

; <label>:145:                                    ; preds = %132
  %146 = load i32, i32* %19, align 4, !dbg !670
  %147 = add nsw i32 %146, 1, !dbg !670
  store i32 %147, i32* %19, align 4, !dbg !670
  br label %128, !dbg !672, !llvm.loop !673

; <label>:148:                                    ; preds = %128
  %149 = load double, double* %17, align 8, !dbg !675
  %150 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !676
  %151 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %150, i32 0, i32 0, !dbg !677
  store double %149, double* %151, align 8, !dbg !678
  %152 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !679
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %152, i32 0, i32 0, !dbg !680
  %154 = load double, double* %153, align 8, !dbg !680
  %155 = call double @fabs(double %154) #1, !dbg !681
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 1, !dbg !682
  %157 = load double, double* %156, align 8, !dbg !682
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %12, i32 0, i32 0, !dbg !683
  %159 = load double, double* %158, align 8, !dbg !683
  %160 = fdiv double %157, %159, !dbg !684
  %161 = call double @fabs(double %160) #1, !dbg !685
  %162 = fadd double 0x3CB0000000000000, %161, !dbg !687
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 1, !dbg !688
  %164 = load double, double* %163, align 8, !dbg !688
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %13, i32 0, i32 0, !dbg !689
  %166 = load double, double* %165, align 8, !dbg !689
  %167 = fdiv double %164, %166, !dbg !690
  %168 = call double @fabs(double %167) #1, !dbg !691
  %169 = fadd double %162, %168, !dbg !693
  %170 = fmul double %155, %169, !dbg !694
  %171 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !695
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %171, i32 0, i32 1, !dbg !696
  store double %170, double* %172, align 8, !dbg !697
  %173 = load i32, i32* %14, align 4, !dbg !698
  %174 = icmp ne i32 %173, 0, !dbg !698
  br i1 %174, label %175, label %177, !dbg !698

; <label>:175:                                    ; preds = %148
  %176 = load i32, i32* %14, align 4, !dbg !699
  br label %185, !dbg !699

; <label>:177:                                    ; preds = %148
  %178 = load i32, i32* %15, align 4, !dbg !700
  %179 = icmp ne i32 %178, 0, !dbg !700
  br i1 %179, label %180, label %182, !dbg !700

; <label>:180:                                    ; preds = %177
  %181 = load i32, i32* %15, align 4, !dbg !701
  br label %183, !dbg !701

; <label>:182:                                    ; preds = %177
  br label %183, !dbg !703

; <label>:183:                                    ; preds = %182, %180
  %184 = phi i32 [ %181, %180 ], [ 0, %182 ], !dbg !705
  br label %185, !dbg !705

; <label>:185:                                    ; preds = %183, %175
  %186 = phi i32 [ %176, %175 ], [ %184, %183 ], !dbg !707
  store i32 %186, i32* %4, align 4, !dbg !709
  br label %187, !dbg !709

; <label>:187:                                    ; preds = %31, %37, %44, %51, %58, %74, %98, %185, %33
  %188 = load i32, i32* %4, align 4, !dbg !710
  ret i32 %188, !dbg !710
}

; Function Attrs: nounwind uwtable
define internal i32 @bessel_yl_small_x(i32, double, %struct.gsl_sf_result_struct*) #0 !dbg !711 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
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
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !712, metadata !60), !dbg !713
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !714, metadata !60), !dbg !715
  store %struct.gsl_sf_result_struct* %2, %struct.gsl_sf_result_struct** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %7, metadata !716, metadata !60), !dbg !717
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !718, metadata !60), !dbg !719
  call void @llvm.dbg.declare(metadata double* %9, metadata !720, metadata !60), !dbg !721
  %18 = load double, double* %6, align 8, !dbg !722
  %19 = load i32, i32* %5, align 4, !dbg !723
  %20 = add nsw i32 %19, 1, !dbg !724
  %21 = call double @gsl_sf_pow_int(double %18, i32 %20), !dbg !725
  store double %21, double* %9, align 8, !dbg !721
  call void @llvm.dbg.declare(metadata i32* %10, metadata !726, metadata !60), !dbg !727
  %22 = load i32, i32* %5, align 4, !dbg !728
  %23 = mul nsw i32 2, %22, !dbg !729
  %24 = sub nsw i32 %23, 1, !dbg !730
  %25 = call i32 @gsl_sf_doublefact_e(i32 %24, %struct.gsl_sf_result_struct* %8), !dbg !731
  store i32 %25, i32* %10, align 4, !dbg !727
  %26 = load i32, i32* %10, align 4, !dbg !732
  %27 = icmp ne i32 %26, 0, !dbg !734
  br i1 %27, label %31, label %28, !dbg !735

; <label>:28:                                     ; preds = %3
  %29 = load double, double* %9, align 8, !dbg !736
  %30 = fcmp oeq double %29, 0.000000e+00, !dbg !738
  br i1 %30, label %31, label %40, !dbg !739

; <label>:31:                                     ; preds = %28, %3
  br label %32, !dbg !740, !llvm.loop !742

; <label>:32:                                     ; preds = %31
  %33 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !743
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %33, i32 0, i32 0, !dbg !743
  store double 0x7FF0000000000000, double* %34, align 8, !dbg !743
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !743
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !743
  store double 0x7FF0000000000000, double* %36, align 8, !dbg !743
  br label %37, !dbg !743, !llvm.loop !746

; <label>:37:                                     ; preds = %32
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 49, i32 16), !dbg !748
  store i32 16, i32* %4, align 4, !dbg !748
  br label %95, !dbg !748
                                                  ; No predecessors!
  br label %39, !dbg !751

; <label>:39:                                     ; preds = %38
  br label %95, !dbg !753

; <label>:40:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata i32* %11, metadata !754, metadata !60), !dbg !756
  store i32 200, i32* %11, align 4, !dbg !756
  call void @llvm.dbg.declare(metadata double* %12, metadata !757, metadata !60), !dbg !758
  %41 = load double, double* %6, align 8, !dbg !759
  %42 = fmul double -5.000000e-01, %41, !dbg !760
  %43 = load double, double* %6, align 8, !dbg !761
  %44 = fmul double %42, %43, !dbg !762
  store double %44, double* %12, align 8, !dbg !758
  call void @llvm.dbg.declare(metadata double* %13, metadata !763, metadata !60), !dbg !764
  store double 1.000000e+00, double* %13, align 8, !dbg !764
  call void @llvm.dbg.declare(metadata double* %14, metadata !765, metadata !60), !dbg !766
  store double 1.000000e+00, double* %14, align 8, !dbg !766
  call void @llvm.dbg.declare(metadata double* %15, metadata !767, metadata !60), !dbg !768
  store double 1.000000e+00, double* %15, align 8, !dbg !768
  call void @llvm.dbg.declare(metadata double* %16, metadata !769, metadata !60), !dbg !770
  call void @llvm.dbg.declare(metadata i32* %17, metadata !771, metadata !60), !dbg !772
  store i32 1, i32* %17, align 4, !dbg !773
  br label %45, !dbg !775

; <label>:45:                                     ; preds = %75, %40
  %46 = load i32, i32* %17, align 4, !dbg !776
  %47 = icmp sle i32 %46, 200, !dbg !779
  br i1 %47, label %48, label %78, !dbg !780

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %17, align 4, !dbg !781
  %50 = load i32, i32* %17, align 4, !dbg !783
  %51 = load i32, i32* %5, align 4, !dbg !784
  %52 = sub nsw i32 %50, %51, !dbg !785
  %53 = mul nsw i32 2, %52, !dbg !786
  %54 = sub nsw i32 %53, 1, !dbg !787
  %55 = mul nsw i32 %49, %54, !dbg !788
  %56 = sitofp i32 %55 to double, !dbg !781
  %57 = load double, double* %14, align 8, !dbg !789
  %58 = fdiv double %57, %56, !dbg !789
  store double %58, double* %14, align 8, !dbg !789
  %59 = load double, double* %12, align 8, !dbg !790
  %60 = load double, double* %15, align 8, !dbg !791
  %61 = fmul double %60, %59, !dbg !791
  store double %61, double* %15, align 8, !dbg !791
  %62 = load double, double* %15, align 8, !dbg !792
  %63 = load double, double* %14, align 8, !dbg !793
  %64 = fmul double %62, %63, !dbg !794
  store double %64, double* %16, align 8, !dbg !795
  %65 = load double, double* %16, align 8, !dbg !796
  %66 = load double, double* %13, align 8, !dbg !797
  %67 = fadd double %66, %65, !dbg !797
  store double %67, double* %13, align 8, !dbg !797
  %68 = load double, double* %16, align 8, !dbg !798
  %69 = load double, double* %13, align 8, !dbg !800
  %70 = fdiv double %68, %69, !dbg !801
  %71 = call double @fabs(double %70) #1, !dbg !802
  %72 = fcmp olt double %71, 0x3CA0000000000000, !dbg !803
  br i1 %72, label %73, label %74, !dbg !804

; <label>:73:                                     ; preds = %48
  br label %78, !dbg !805

; <label>:74:                                     ; preds = %48
  br label %75, !dbg !807

; <label>:75:                                     ; preds = %74
  %76 = load i32, i32* %17, align 4, !dbg !808
  %77 = add nsw i32 %76, 1, !dbg !808
  store i32 %77, i32* %17, align 4, !dbg !808
  br label %45, !dbg !810, !llvm.loop !811

; <label>:78:                                     ; preds = %73, %45
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !813
  %80 = load double, double* %79, align 8, !dbg !813
  %81 = fsub double -0.000000e+00, %80, !dbg !814
  %82 = load double, double* %9, align 8, !dbg !815
  %83 = fdiv double %81, %82, !dbg !816
  %84 = load double, double* %13, align 8, !dbg !817
  %85 = fmul double %83, %84, !dbg !818
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !819
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !820
  store double %85, double* %87, align 8, !dbg !821
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !822
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 0, !dbg !823
  %90 = load double, double* %89, align 8, !dbg !823
  %91 = call double @fabs(double %90) #1, !dbg !824
  %92 = fmul double 0x3CB0000000000000, %91, !dbg !825
  %93 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %7, align 8, !dbg !826
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %93, i32 0, i32 1, !dbg !827
  store double %92, double* %94, align 8, !dbg !828
  store i32 0, i32* %4, align 4, !dbg !829
  br label %95, !dbg !829

; <label>:95:                                     ; preds = %37, %78, %39
  %96 = load i32, i32* %4, align 4, !dbg !830
  ret i32 %96, !dbg !830
}

declare i32 @gsl_sf_bessel_Ynu_asympx_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @sqrt(double) #4

declare i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double, double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_bessel_yl_array(i32, double, double*) #0 !dbg !831 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca %struct.gsl_sf_result_struct, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca %struct.gsl_sf_result_struct, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !835, metadata !60), !dbg !836
  store double %1, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !837, metadata !60), !dbg !838
  store double* %2, double** %7, align 8
  call void @llvm.dbg.declare(metadata double** %7, metadata !839, metadata !60), !dbg !840
  %18 = load i32, i32* %5, align 4, !dbg !841
  %19 = icmp slt i32 %18, 0, !dbg !843
  br i1 %19, label %23, label %20, !dbg !844

; <label>:20:                                     ; preds = %3
  %21 = load double, double* %6, align 8, !dbg !845
  %22 = fcmp ole double %21, 0.000000e+00, !dbg !847
  br i1 %22, label %23, label %26, !dbg !848

; <label>:23:                                     ; preds = %20, %3
  br label %24, !dbg !849, !llvm.loop !851

; <label>:24:                                     ; preds = %23
  call void @gsl_error(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 237, i32 1), !dbg !852
  store i32 1, i32* %4, align 4, !dbg !852
  br label %93, !dbg !852
                                                  ; No predecessors!
  br label %93, !dbg !855

; <label>:26:                                     ; preds = %20
  %27 = load i32, i32* %5, align 4, !dbg !856
  %28 = icmp eq i32 %27, 0, !dbg !859
  br i1 %28, label %29, label %37, !dbg !856

; <label>:29:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %8, metadata !860, metadata !60), !dbg !862
  call void @llvm.dbg.declare(metadata i32* %9, metadata !863, metadata !60), !dbg !864
  %30 = load double, double* %6, align 8, !dbg !865
  %31 = call i32 @gsl_sf_bessel_y0_e(double %30, %struct.gsl_sf_result_struct* %8), !dbg !866
  store i32 %31, i32* %9, align 4, !dbg !864
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %8, i32 0, i32 0, !dbg !867
  %33 = load double, double* %32, align 8, !dbg !867
  %34 = load double*, double** %7, align 8, !dbg !868
  %35 = getelementptr inbounds double, double* %34, i64 0, !dbg !868
  store double %33, double* %35, align 8, !dbg !869
  %36 = load i32, i32* %9, align 4, !dbg !870
  store i32 %36, i32* %4, align 4, !dbg !871
  br label %93, !dbg !871

; <label>:37:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !872, metadata !60), !dbg !874
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %11, metadata !875, metadata !60), !dbg !876
  call void @llvm.dbg.declare(metadata i32* %12, metadata !877, metadata !60), !dbg !878
  %38 = load double, double* %6, align 8, !dbg !879
  %39 = call i32 @gsl_sf_bessel_y1_e(double %38, %struct.gsl_sf_result_struct* %10), !dbg !880
  store i32 %39, i32* %12, align 4, !dbg !878
  call void @llvm.dbg.declare(metadata i32* %13, metadata !881, metadata !60), !dbg !882
  %40 = load double, double* %6, align 8, !dbg !883
  %41 = call i32 @gsl_sf_bessel_y0_e(double %40, %struct.gsl_sf_result_struct* %11), !dbg !884
  store i32 %41, i32* %13, align 4, !dbg !882
  call void @llvm.dbg.declare(metadata double* %14, metadata !885, metadata !60), !dbg !886
  call void @llvm.dbg.declare(metadata double* %15, metadata !887, metadata !60), !dbg !888
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !889
  %43 = load double, double* %42, align 8, !dbg !889
  store double %43, double* %15, align 8, !dbg !888
  call void @llvm.dbg.declare(metadata double* %16, metadata !890, metadata !60), !dbg !891
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %11, i32 0, i32 0, !dbg !892
  %45 = load double, double* %44, align 8, !dbg !892
  store double %45, double* %16, align 8, !dbg !891
  call void @llvm.dbg.declare(metadata i32* %17, metadata !893, metadata !60), !dbg !894
  %46 = load double, double* %16, align 8, !dbg !895
  %47 = load double*, double** %7, align 8, !dbg !896
  %48 = getelementptr inbounds double, double* %47, i64 0, !dbg !896
  store double %46, double* %48, align 8, !dbg !897
  %49 = load double, double* %15, align 8, !dbg !898
  %50 = load double*, double** %7, align 8, !dbg !899
  %51 = getelementptr inbounds double, double* %50, i64 1, !dbg !899
  store double %49, double* %51, align 8, !dbg !900
  store i32 1, i32* %17, align 4, !dbg !901
  br label %52, !dbg !903

; <label>:52:                                     ; preds = %75, %37
  %53 = load i32, i32* %17, align 4, !dbg !904
  %54 = load i32, i32* %5, align 4, !dbg !907
  %55 = icmp slt i32 %53, %54, !dbg !908
  br i1 %55, label %56, label %78, !dbg !909

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* %17, align 4, !dbg !910
  %58 = mul nsw i32 2, %57, !dbg !912
  %59 = add nsw i32 %58, 1, !dbg !913
  %60 = sitofp i32 %59 to double, !dbg !914
  %61 = load double, double* %6, align 8, !dbg !915
  %62 = fdiv double %60, %61, !dbg !916
  %63 = load double, double* %15, align 8, !dbg !917
  %64 = fmul double %62, %63, !dbg !918
  %65 = load double, double* %16, align 8, !dbg !919
  %66 = fsub double %64, %65, !dbg !920
  store double %66, double* %14, align 8, !dbg !921
  %67 = load double, double* %14, align 8, !dbg !922
  %68 = load i32, i32* %17, align 4, !dbg !923
  %69 = add nsw i32 %68, 1, !dbg !924
  %70 = sext i32 %69 to i64, !dbg !925
  %71 = load double*, double** %7, align 8, !dbg !925
  %72 = getelementptr inbounds double, double* %71, i64 %70, !dbg !925
  store double %67, double* %72, align 8, !dbg !926
  %73 = load double, double* %15, align 8, !dbg !927
  store double %73, double* %16, align 8, !dbg !928
  %74 = load double, double* %14, align 8, !dbg !929
  store double %74, double* %15, align 8, !dbg !930
  br label %75, !dbg !931

; <label>:75:                                     ; preds = %56
  %76 = load i32, i32* %17, align 4, !dbg !932
  %77 = add nsw i32 %76, 1, !dbg !932
  store i32 %77, i32* %17, align 4, !dbg !932
  br label %52, !dbg !934, !llvm.loop !935

; <label>:78:                                     ; preds = %52
  %79 = load i32, i32* %13, align 4, !dbg !937
  %80 = icmp ne i32 %79, 0, !dbg !937
  br i1 %80, label %81, label %83, !dbg !937

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %13, align 4, !dbg !938
  br label %91, !dbg !938

; <label>:83:                                     ; preds = %78
  %84 = load i32, i32* %12, align 4, !dbg !940
  %85 = icmp ne i32 %84, 0, !dbg !940
  br i1 %85, label %86, label %88, !dbg !940

; <label>:86:                                     ; preds = %83
  %87 = load i32, i32* %12, align 4, !dbg !942
  br label %89, !dbg !942

; <label>:88:                                     ; preds = %83
  br label %89, !dbg !944

; <label>:89:                                     ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ], !dbg !946
  br label %91, !dbg !946

; <label>:91:                                     ; preds = %89, %81
  %92 = phi i32 [ %82, %81 ], [ %90, %89 ], !dbg !948
  store i32 %92, i32* %4, align 4, !dbg !950
  br label %93, !dbg !950

; <label>:93:                                     ; preds = %24, %29, %91, %25
  %94 = load i32, i32* %4, align 4, !dbg !951
  ret i32 %94, !dbg !951
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_y0(double) #0 !dbg !952 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !955, metadata !60), !dbg !956
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !957, metadata !60), !dbg !958
  call void @llvm.dbg.declare(metadata i32* %5, metadata !959, metadata !60), !dbg !958
  %6 = load double, double* %3, align 8, !dbg !958
  %7 = call i32 @gsl_sf_bessel_y0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !958
  store i32 %7, i32* %5, align 4, !dbg !958
  %8 = load i32, i32* %5, align 4, !dbg !960
  %9 = icmp ne i32 %8, 0, !dbg !960
  br i1 %9, label %10, label %16, !dbg !958

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !962, !llvm.loop !965

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !967
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 274, i32 %12), !dbg !967
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !967
  %14 = load double, double* %13, align 8, !dbg !967
  store double %14, double* %2, align 8, !dbg !967
  br label %19, !dbg !967
                                                  ; No predecessors!
  br label %16, !dbg !970

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !972
  %18 = load double, double* %17, align 8, !dbg !972
  store double %18, double* %2, align 8, !dbg !972
  br label %19, !dbg !972

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !974
  ret double %20, !dbg !974
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_y1(double) #0 !dbg !975 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !976, metadata !60), !dbg !977
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !978, metadata !60), !dbg !979
  call void @llvm.dbg.declare(metadata i32* %5, metadata !980, metadata !60), !dbg !979
  %6 = load double, double* %3, align 8, !dbg !979
  %7 = call i32 @gsl_sf_bessel_y1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !979
  store i32 %7, i32* %5, align 4, !dbg !979
  %8 = load i32, i32* %5, align 4, !dbg !981
  %9 = icmp ne i32 %8, 0, !dbg !981
  br i1 %9, label %10, label %16, !dbg !979

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !983, !llvm.loop !986

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !988
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 279, i32 %12), !dbg !988
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !988
  %14 = load double, double* %13, align 8, !dbg !988
  store double %14, double* %2, align 8, !dbg !988
  br label %19, !dbg !988
                                                  ; No predecessors!
  br label %16, !dbg !991

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !993
  %18 = load double, double* %17, align 8, !dbg !993
  store double %18, double* %2, align 8, !dbg !993
  br label %19, !dbg !993

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !995
  ret double %20, !dbg !995
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_y2(double) #0 !dbg !996 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !997, metadata !60), !dbg !998
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !999, metadata !60), !dbg !1000
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1001, metadata !60), !dbg !1000
  %6 = load double, double* %3, align 8, !dbg !1000
  %7 = call i32 @gsl_sf_bessel_y2_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !1000
  store i32 %7, i32* %5, align 4, !dbg !1000
  %8 = load i32, i32* %5, align 4, !dbg !1002
  %9 = icmp ne i32 %8, 0, !dbg !1002
  br i1 %9, label %10, label %16, !dbg !1000

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !1004, !llvm.loop !1007

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !1009
  call void @gsl_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 284, i32 %12), !dbg !1009
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1009
  %14 = load double, double* %13, align 8, !dbg !1009
  store double %14, double* %2, align 8, !dbg !1009
  br label %19, !dbg !1009
                                                  ; No predecessors!
  br label %16, !dbg !1012

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !1014
  %18 = load double, double* %17, align 8, !dbg !1014
  store double %18, double* %2, align 8, !dbg !1014
  br label %19, !dbg !1014

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !1016
  ret double %20, !dbg !1016
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_bessel_yl(i32, double) #0 !dbg !1017 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.gsl_sf_result_struct, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1020, metadata !60), !dbg !1021
  store double %1, double* %5, align 8
  call void @llvm.dbg.declare(metadata double* %5, metadata !1022, metadata !60), !dbg !1023
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %6, metadata !1024, metadata !60), !dbg !1025
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1026, metadata !60), !dbg !1025
  %8 = load i32, i32* %4, align 4, !dbg !1025
  %9 = load double, double* %5, align 8, !dbg !1025
  %10 = call i32 @gsl_sf_bessel_yl_e(i32 %8, double %9, %struct.gsl_sf_result_struct* %6), !dbg !1025
  store i32 %10, i32* %7, align 4, !dbg !1025
  %11 = load i32, i32* %7, align 4, !dbg !1027
  %12 = icmp ne i32 %11, 0, !dbg !1027
  br i1 %12, label %13, label %19, !dbg !1025

; <label>:13:                                     ; preds = %2
  br label %14, !dbg !1029, !llvm.loop !1032

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %7, align 4, !dbg !1034
  call void @gsl_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 289, i32 %15), !dbg !1034
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1034
  %17 = load double, double* %16, align 8, !dbg !1034
  store double %17, double* %3, align 8, !dbg !1034
  br label %22, !dbg !1034
                                                  ; No predecessors!
  br label %19, !dbg !1037

; <label>:19:                                     ; preds = %18, %2
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %6, i32 0, i32 0, !dbg !1039
  %21 = load double, double* %20, align 8, !dbg !1039
  store double %21, double* %3, align 8, !dbg !1039
  br label %22, !dbg !1039

; <label>:22:                                     ; preds = %19, %14
  %23 = load double, double* %3, align 8, !dbg !1041
  ret double %23, !dbg !1041
}

declare double @gsl_sf_pow_int(double, i32) #2

declare i32 @gsl_sf_doublefact_e(i32, %struct.gsl_sf_result_struct*) #2

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
!1 = !DIFile(filename: "bessel_y.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!45 = distinct !DISubprogram(name: "gsl_sf_bessel_y0_e", scope: !1, file: !1, line: 77, type: !46, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !51}
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
!59 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !1, line: 77, type: !49)
!60 = !DIExpression()
!61 = !DILocation(line: 77, column: 37, scope: !45)
!62 = !DILocalVariable(name: "result", arg: 2, scope: !45, file: !1, line: 77, type: !51)
!63 = !DILocation(line: 77, column: 56, scope: !45)
!64 = !DILocation(line: 81, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !45, file: !1, line: 81, column: 6)
!66 = !DILocation(line: 81, column: 8, scope: !65)
!67 = !DILocation(line: 81, column: 6, scope: !45)
!68 = !DILocation(line: 82, column: 5, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 81, column: 16)
!70 = distinct !{!70, !68}
!71 = !DILocation(line: 82, column: 5, scope: !72)
!72 = !DILexicalBlockFile(scope: !73, file: !1, discriminator: 1)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 82, column: 5)
!74 = distinct !{!74, !75}
!75 = !DILocation(line: 82, column: 5, scope: !73)
!76 = !DILocation(line: 82, column: 5, scope: !77)
!77 = !DILexicalBlockFile(scope: !78, file: !1, discriminator: 2)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 82, column: 5)
!79 = !DILocation(line: 82, column: 5, scope: !80)
!80 = !DILexicalBlockFile(scope: !73, file: !1, discriminator: 3)
!81 = !DILocation(line: 83, column: 3, scope: !69)
!82 = !DILocation(line: 84, column: 36, scope: !83)
!83 = distinct !DILexicalBlock(scope: !65, file: !1, line: 84, column: 11)
!84 = !DILocation(line: 84, column: 38, scope: !83)
!85 = !DILocation(line: 84, column: 11, scope: !65)
!86 = !DILocation(line: 85, column: 5, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 84, column: 57)
!88 = distinct !{!88, !86}
!89 = !DILocation(line: 85, column: 5, scope: !90)
!90 = !DILexicalBlockFile(scope: !91, file: !1, discriminator: 1)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 85, column: 5)
!92 = distinct !{!92, !93}
!93 = !DILocation(line: 85, column: 5, scope: !91)
!94 = !DILocation(line: 85, column: 5, scope: !95)
!95 = !DILexicalBlockFile(scope: !96, file: !1, discriminator: 2)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 85, column: 5)
!97 = !DILocation(line: 85, column: 5, scope: !98)
!98 = !DILexicalBlockFile(scope: !91, file: !1, discriminator: 3)
!99 = !DILocation(line: 86, column: 3, scope: !87)
!100 = !DILocalVariable(name: "cos_result", scope: !101, file: !1, line: 88, type: !52)
!101 = distinct !DILexicalBlock(scope: !83, file: !1, line: 87, column: 8)
!102 = !DILocation(line: 88, column: 19, scope: !101)
!103 = !DILocalVariable(name: "stat", scope: !101, file: !1, line: 89, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!105 = !DILocation(line: 89, column: 15, scope: !101)
!106 = !DILocation(line: 89, column: 35, scope: !101)
!107 = !DILocation(line: 89, column: 22, scope: !101)
!108 = !DILocation(line: 90, column: 32, scope: !101)
!109 = !DILocation(line: 90, column: 20, scope: !101)
!110 = !DILocation(line: 90, column: 36, scope: !101)
!111 = !DILocation(line: 90, column: 35, scope: !101)
!112 = !DILocation(line: 90, column: 5, scope: !101)
!113 = !DILocation(line: 90, column: 13, scope: !101)
!114 = !DILocation(line: 90, column: 18, scope: !101)
!115 = !DILocation(line: 91, column: 36, scope: !101)
!116 = !DILocation(line: 91, column: 40, scope: !101)
!117 = !DILocation(line: 91, column: 39, scope: !101)
!118 = !DILocation(line: 91, column: 20, scope: !101)
!119 = !DILocation(line: 91, column: 5, scope: !101)
!120 = !DILocation(line: 91, column: 13, scope: !101)
!121 = !DILocation(line: 91, column: 18, scope: !101)
!122 = !DILocation(line: 92, column: 49, scope: !101)
!123 = !DILocation(line: 92, column: 57, scope: !101)
!124 = !DILocation(line: 92, column: 44, scope: !101)
!125 = !DILocation(line: 92, column: 42, scope: !101)
!126 = !DILocation(line: 92, column: 5, scope: !101)
!127 = !DILocation(line: 92, column: 13, scope: !101)
!128 = !DILocation(line: 92, column: 17, scope: !101)
!129 = !DILocation(line: 93, column: 12, scope: !101)
!130 = !DILocation(line: 93, column: 5, scope: !101)
!131 = !DILocation(line: 95, column: 1, scope: !45)
!132 = distinct !DISubprogram(name: "gsl_sf_bessel_y1_e", scope: !1, file: !1, line: 98, type: !46, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!133 = !DILocalVariable(name: "x", arg: 1, scope: !132, file: !1, line: 98, type: !49)
!134 = !DILocation(line: 98, column: 37, scope: !132)
!135 = !DILocalVariable(name: "result", arg: 2, scope: !132, file: !1, line: 98, type: !51)
!136 = !DILocation(line: 98, column: 56, scope: !132)
!137 = !DILocation(line: 102, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !132, file: !1, line: 102, column: 6)
!139 = !DILocation(line: 102, column: 8, scope: !138)
!140 = !DILocation(line: 102, column: 6, scope: !132)
!141 = !DILocation(line: 103, column: 5, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 102, column: 16)
!143 = distinct !{!143, !141}
!144 = !DILocation(line: 103, column: 5, scope: !145)
!145 = !DILexicalBlockFile(scope: !146, file: !1, discriminator: 1)
!146 = distinct !DILexicalBlock(scope: !142, file: !1, line: 103, column: 5)
!147 = distinct !{!147, !148}
!148 = !DILocation(line: 103, column: 5, scope: !146)
!149 = !DILocation(line: 103, column: 5, scope: !150)
!150 = !DILexicalBlockFile(scope: !151, file: !1, discriminator: 2)
!151 = distinct !DILexicalBlock(scope: !146, file: !1, line: 103, column: 5)
!152 = !DILocation(line: 103, column: 5, scope: !153)
!153 = !DILexicalBlockFile(scope: !146, file: !1, discriminator: 3)
!154 = !DILocation(line: 104, column: 3, scope: !142)
!155 = !DILocation(line: 105, column: 11, scope: !156)
!156 = distinct !DILexicalBlock(scope: !138, file: !1, line: 105, column: 11)
!157 = !DILocation(line: 105, column: 13, scope: !156)
!158 = !DILocation(line: 105, column: 11, scope: !138)
!159 = !DILocation(line: 106, column: 5, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 105, column: 37)
!161 = distinct !{!161, !159}
!162 = !DILocation(line: 106, column: 5, scope: !163)
!163 = !DILexicalBlockFile(scope: !164, file: !1, discriminator: 1)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 106, column: 5)
!165 = distinct !{!165, !166}
!166 = !DILocation(line: 106, column: 5, scope: !164)
!167 = !DILocation(line: 106, column: 5, scope: !168)
!168 = !DILexicalBlockFile(scope: !169, file: !1, discriminator: 2)
!169 = distinct !DILexicalBlock(scope: !164, file: !1, line: 106, column: 5)
!170 = !DILocation(line: 106, column: 5, scope: !171)
!171 = !DILexicalBlockFile(scope: !164, file: !1, discriminator: 3)
!172 = !DILocation(line: 107, column: 3, scope: !160)
!173 = !DILocation(line: 108, column: 11, scope: !174)
!174 = distinct !DILexicalBlock(scope: !156, file: !1, line: 108, column: 11)
!175 = !DILocation(line: 108, column: 13, scope: !174)
!176 = !DILocation(line: 108, column: 11, scope: !156)
!177 = !DILocalVariable(name: "y", scope: !178, file: !1, line: 109, type: !49)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 108, column: 21)
!179 = !DILocation(line: 109, column: 18, scope: !178)
!180 = !DILocation(line: 109, column: 22, scope: !178)
!181 = !DILocation(line: 109, column: 24, scope: !178)
!182 = !DILocation(line: 109, column: 23, scope: !178)
!183 = !DILocalVariable(name: "c1", scope: !178, file: !1, line: 110, type: !49)
!184 = !DILocation(line: 110, column: 18, scope: !178)
!185 = !DILocalVariable(name: "c2", scope: !178, file: !1, line: 111, type: !49)
!186 = !DILocation(line: 111, column: 18, scope: !178)
!187 = !DILocalVariable(name: "c3", scope: !178, file: !1, line: 112, type: !49)
!188 = !DILocation(line: 112, column: 18, scope: !178)
!189 = !DILocalVariable(name: "c4", scope: !178, file: !1, line: 113, type: !49)
!190 = !DILocation(line: 113, column: 18, scope: !178)
!191 = !DILocalVariable(name: "c5", scope: !178, file: !1, line: 114, type: !49)
!192 = !DILocation(line: 114, column: 18, scope: !178)
!193 = !DILocalVariable(name: "c6", scope: !178, file: !1, line: 115, type: !49)
!194 = !DILocation(line: 115, column: 18, scope: !178)
!195 = !DILocalVariable(name: "sum", scope: !178, file: !1, line: 116, type: !49)
!196 = !DILocation(line: 116, column: 18, scope: !178)
!197 = !DILocation(line: 116, column: 30, scope: !178)
!198 = !DILocation(line: 116, column: 38, scope: !178)
!199 = !DILocation(line: 116, column: 46, scope: !178)
!200 = !DILocation(line: 116, column: 54, scope: !178)
!201 = !DILocation(line: 116, column: 62, scope: !178)
!202 = !DILocation(line: 116, column: 70, scope: !178)
!203 = !DILocation(line: 116, column: 71, scope: !178)
!204 = !DILocation(line: 116, column: 68, scope: !178)
!205 = !DILocation(line: 116, column: 63, scope: !178)
!206 = !DILocation(line: 116, column: 60, scope: !178)
!207 = !DILocation(line: 116, column: 55, scope: !178)
!208 = !DILocation(line: 116, column: 52, scope: !178)
!209 = !DILocation(line: 116, column: 47, scope: !178)
!210 = !DILocation(line: 116, column: 44, scope: !178)
!211 = !DILocation(line: 116, column: 39, scope: !178)
!212 = !DILocation(line: 116, column: 36, scope: !178)
!213 = !DILocation(line: 116, column: 31, scope: !178)
!214 = !DILocation(line: 116, column: 28, scope: !178)
!215 = !DILocation(line: 117, column: 20, scope: !178)
!216 = !DILocation(line: 117, column: 19, scope: !178)
!217 = !DILocation(line: 117, column: 24, scope: !178)
!218 = !DILocation(line: 117, column: 23, scope: !178)
!219 = !DILocation(line: 117, column: 5, scope: !178)
!220 = !DILocation(line: 117, column: 13, scope: !178)
!221 = !DILocation(line: 117, column: 17, scope: !178)
!222 = !DILocation(line: 118, column: 42, scope: !178)
!223 = !DILocation(line: 118, column: 50, scope: !178)
!224 = !DILocation(line: 118, column: 37, scope: !178)
!225 = !DILocation(line: 118, column: 35, scope: !178)
!226 = !DILocation(line: 118, column: 5, scope: !178)
!227 = !DILocation(line: 118, column: 13, scope: !178)
!228 = !DILocation(line: 118, column: 17, scope: !178)
!229 = !DILocation(line: 119, column: 5, scope: !178)
!230 = !DILocalVariable(name: "cos_result", scope: !231, file: !1, line: 122, type: !52)
!231 = distinct !DILexicalBlock(scope: !174, file: !1, line: 121, column: 8)
!232 = !DILocation(line: 122, column: 19, scope: !231)
!233 = !DILocalVariable(name: "sin_result", scope: !231, file: !1, line: 123, type: !52)
!234 = !DILocation(line: 123, column: 19, scope: !231)
!235 = !DILocalVariable(name: "stat_cos", scope: !231, file: !1, line: 124, type: !104)
!236 = !DILocation(line: 124, column: 15, scope: !231)
!237 = !DILocation(line: 124, column: 39, scope: !231)
!238 = !DILocation(line: 124, column: 26, scope: !231)
!239 = !DILocalVariable(name: "stat_sin", scope: !231, file: !1, line: 125, type: !104)
!240 = !DILocation(line: 125, column: 15, scope: !231)
!241 = !DILocation(line: 125, column: 39, scope: !231)
!242 = !DILocation(line: 125, column: 26, scope: !231)
!243 = !DILocalVariable(name: "cx", scope: !231, file: !1, line: 126, type: !49)
!244 = !DILocation(line: 126, column: 18, scope: !231)
!245 = !DILocation(line: 126, column: 34, scope: !231)
!246 = !DILocalVariable(name: "sx", scope: !231, file: !1, line: 127, type: !49)
!247 = !DILocation(line: 127, column: 18, scope: !231)
!248 = !DILocation(line: 127, column: 34, scope: !231)
!249 = !DILocation(line: 128, column: 22, scope: !231)
!250 = !DILocation(line: 128, column: 25, scope: !231)
!251 = !DILocation(line: 128, column: 24, scope: !231)
!252 = !DILocation(line: 128, column: 29, scope: !231)
!253 = !DILocation(line: 128, column: 27, scope: !231)
!254 = !DILocation(line: 128, column: 20, scope: !231)
!255 = !DILocation(line: 128, column: 33, scope: !231)
!256 = !DILocation(line: 128, column: 32, scope: !231)
!257 = !DILocation(line: 128, column: 5, scope: !231)
!258 = !DILocation(line: 128, column: 13, scope: !231)
!259 = !DILocation(line: 128, column: 18, scope: !231)
!260 = !DILocation(line: 129, column: 37, scope: !231)
!261 = !DILocation(line: 129, column: 41, scope: !231)
!262 = !DILocation(line: 129, column: 40, scope: !231)
!263 = !DILocation(line: 129, column: 21, scope: !231)
!264 = !DILocation(line: 129, column: 57, scope: !231)
!265 = !DILocation(line: 129, column: 44, scope: !231)
!266 = !DILocation(line: 129, column: 67, scope: !231)
!267 = !DILocation(line: 129, column: 62, scope: !268)
!268 = !DILexicalBlockFile(scope: !231, file: !1, discriminator: 1)
!269 = !DILocation(line: 129, column: 61, scope: !231)
!270 = !DILocation(line: 129, column: 5, scope: !231)
!271 = !DILocation(line: 129, column: 13, scope: !231)
!272 = !DILocation(line: 129, column: 18, scope: !231)
!273 = !DILocation(line: 130, column: 44, scope: !231)
!274 = !DILocation(line: 130, column: 47, scope: !231)
!275 = !DILocation(line: 130, column: 46, scope: !231)
!276 = !DILocation(line: 130, column: 39, scope: !231)
!277 = !DILocation(line: 130, column: 57, scope: !231)
!278 = !DILocation(line: 130, column: 61, scope: !231)
!279 = !DILocation(line: 130, column: 63, scope: !231)
!280 = !DILocation(line: 130, column: 62, scope: !231)
!281 = !DILocation(line: 130, column: 59, scope: !231)
!282 = !DILocation(line: 130, column: 52, scope: !268)
!283 = !DILocation(line: 130, column: 50, scope: !231)
!284 = !DILocation(line: 130, column: 36, scope: !231)
!285 = !DILocation(line: 130, column: 5, scope: !231)
!286 = !DILocation(line: 130, column: 13, scope: !231)
!287 = !DILocation(line: 130, column: 17, scope: !231)
!288 = !DILocation(line: 131, column: 12, scope: !231)
!289 = !DILocation(line: 131, column: 12, scope: !268)
!290 = !DILocation(line: 131, column: 12, scope: !291)
!291 = !DILexicalBlockFile(scope: !231, file: !1, discriminator: 2)
!292 = !DILocation(line: 131, column: 12, scope: !293)
!293 = !DILexicalBlockFile(scope: !231, file: !1, discriminator: 3)
!294 = !DILocation(line: 131, column: 12, scope: !295)
!295 = !DILexicalBlockFile(scope: !231, file: !1, discriminator: 4)
!296 = !DILocation(line: 131, column: 12, scope: !297)
!297 = !DILexicalBlockFile(scope: !231, file: !1, discriminator: 5)
!298 = !DILocation(line: 131, column: 12, scope: !299)
!299 = !DILexicalBlockFile(scope: !231, file: !1, discriminator: 6)
!300 = !DILocation(line: 131, column: 5, scope: !299)
!301 = !DILocation(line: 133, column: 1, scope: !132)
!302 = distinct !DISubprogram(name: "gsl_sf_bessel_y2_e", scope: !1, file: !1, line: 136, type: !46, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!303 = !DILocalVariable(name: "x", arg: 1, scope: !302, file: !1, line: 136, type: !49)
!304 = !DILocation(line: 136, column: 37, scope: !302)
!305 = !DILocalVariable(name: "result", arg: 2, scope: !302, file: !1, line: 136, type: !51)
!306 = !DILocation(line: 136, column: 56, scope: !302)
!307 = !DILocation(line: 140, column: 6, scope: !308)
!308 = distinct !DILexicalBlock(scope: !302, file: !1, line: 140, column: 6)
!309 = !DILocation(line: 140, column: 8, scope: !308)
!310 = !DILocation(line: 140, column: 6, scope: !302)
!311 = !DILocation(line: 141, column: 5, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !1, line: 140, column: 16)
!313 = distinct !{!313, !311}
!314 = !DILocation(line: 141, column: 5, scope: !315)
!315 = !DILexicalBlockFile(scope: !316, file: !1, discriminator: 1)
!316 = distinct !DILexicalBlock(scope: !312, file: !1, line: 141, column: 5)
!317 = distinct !{!317, !318}
!318 = !DILocation(line: 141, column: 5, scope: !316)
!319 = !DILocation(line: 141, column: 5, scope: !320)
!320 = !DILexicalBlockFile(scope: !321, file: !1, discriminator: 2)
!321 = distinct !DILexicalBlock(scope: !316, file: !1, line: 141, column: 5)
!322 = !DILocation(line: 141, column: 5, scope: !323)
!323 = !DILexicalBlockFile(scope: !316, file: !1, discriminator: 3)
!324 = !DILocation(line: 142, column: 3, scope: !312)
!325 = !DILocation(line: 143, column: 11, scope: !326)
!326 = distinct !DILexicalBlock(scope: !308, file: !1, line: 143, column: 11)
!327 = !DILocation(line: 143, column: 13, scope: !326)
!328 = !DILocation(line: 143, column: 11, scope: !308)
!329 = !DILocation(line: 144, column: 5, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !1, line: 143, column: 38)
!331 = distinct !{!331, !329}
!332 = !DILocation(line: 144, column: 5, scope: !333)
!333 = !DILexicalBlockFile(scope: !334, file: !1, discriminator: 1)
!334 = distinct !DILexicalBlock(scope: !330, file: !1, line: 144, column: 5)
!335 = distinct !{!335, !336}
!336 = !DILocation(line: 144, column: 5, scope: !334)
!337 = !DILocation(line: 144, column: 5, scope: !338)
!338 = !DILexicalBlockFile(scope: !339, file: !1, discriminator: 2)
!339 = distinct !DILexicalBlock(scope: !334, file: !1, line: 144, column: 5)
!340 = !DILocation(line: 144, column: 5, scope: !341)
!341 = !DILexicalBlockFile(scope: !334, file: !1, discriminator: 3)
!342 = !DILocation(line: 145, column: 3, scope: !330)
!343 = !DILocation(line: 146, column: 11, scope: !344)
!344 = distinct !DILexicalBlock(scope: !326, file: !1, line: 146, column: 11)
!345 = !DILocation(line: 146, column: 13, scope: !344)
!346 = !DILocation(line: 146, column: 11, scope: !326)
!347 = !DILocalVariable(name: "y", scope: !348, file: !1, line: 147, type: !49)
!348 = distinct !DILexicalBlock(scope: !344, file: !1, line: 146, column: 20)
!349 = !DILocation(line: 147, column: 18, scope: !348)
!350 = !DILocation(line: 147, column: 22, scope: !348)
!351 = !DILocation(line: 147, column: 24, scope: !348)
!352 = !DILocation(line: 147, column: 23, scope: !348)
!353 = !DILocalVariable(name: "c1", scope: !348, file: !1, line: 148, type: !49)
!354 = !DILocation(line: 148, column: 18, scope: !348)
!355 = !DILocalVariable(name: "c2", scope: !348, file: !1, line: 149, type: !49)
!356 = !DILocation(line: 149, column: 18, scope: !348)
!357 = !DILocalVariable(name: "c3", scope: !348, file: !1, line: 150, type: !49)
!358 = !DILocation(line: 150, column: 18, scope: !348)
!359 = !DILocalVariable(name: "c4", scope: !348, file: !1, line: 151, type: !49)
!360 = !DILocation(line: 151, column: 18, scope: !348)
!361 = !DILocalVariable(name: "c5", scope: !348, file: !1, line: 152, type: !49)
!362 = !DILocation(line: 152, column: 18, scope: !348)
!363 = !DILocalVariable(name: "c6", scope: !348, file: !1, line: 153, type: !49)
!364 = !DILocation(line: 153, column: 18, scope: !348)
!365 = !DILocalVariable(name: "c7", scope: !348, file: !1, line: 154, type: !49)
!366 = !DILocation(line: 154, column: 18, scope: !348)
!367 = !DILocalVariable(name: "sum", scope: !348, file: !1, line: 155, type: !49)
!368 = !DILocation(line: 155, column: 18, scope: !348)
!369 = !DILocation(line: 155, column: 30, scope: !348)
!370 = !DILocation(line: 155, column: 38, scope: !348)
!371 = !DILocation(line: 155, column: 46, scope: !348)
!372 = !DILocation(line: 155, column: 54, scope: !348)
!373 = !DILocation(line: 155, column: 62, scope: !348)
!374 = !DILocation(line: 155, column: 70, scope: !348)
!375 = !DILocation(line: 155, column: 78, scope: !348)
!376 = !DILocation(line: 155, column: 79, scope: !348)
!377 = !DILocation(line: 155, column: 76, scope: !348)
!378 = !DILocation(line: 155, column: 71, scope: !348)
!379 = !DILocation(line: 155, column: 68, scope: !348)
!380 = !DILocation(line: 155, column: 63, scope: !348)
!381 = !DILocation(line: 155, column: 60, scope: !348)
!382 = !DILocation(line: 155, column: 55, scope: !348)
!383 = !DILocation(line: 155, column: 52, scope: !348)
!384 = !DILocation(line: 155, column: 47, scope: !348)
!385 = !DILocation(line: 155, column: 44, scope: !348)
!386 = !DILocation(line: 155, column: 39, scope: !348)
!387 = !DILocation(line: 155, column: 36, scope: !348)
!388 = !DILocation(line: 155, column: 31, scope: !348)
!389 = !DILocation(line: 155, column: 28, scope: !348)
!390 = !DILocation(line: 156, column: 25, scope: !348)
!391 = !DILocation(line: 156, column: 27, scope: !348)
!392 = !DILocation(line: 156, column: 26, scope: !348)
!393 = !DILocation(line: 156, column: 29, scope: !348)
!394 = !DILocation(line: 156, column: 28, scope: !348)
!395 = !DILocation(line: 156, column: 23, scope: !348)
!396 = !DILocation(line: 156, column: 34, scope: !348)
!397 = !DILocation(line: 156, column: 32, scope: !348)
!398 = !DILocation(line: 156, column: 5, scope: !348)
!399 = !DILocation(line: 156, column: 13, scope: !348)
!400 = !DILocation(line: 156, column: 17, scope: !348)
!401 = !DILocation(line: 157, column: 42, scope: !348)
!402 = !DILocation(line: 157, column: 50, scope: !348)
!403 = !DILocation(line: 157, column: 37, scope: !348)
!404 = !DILocation(line: 157, column: 35, scope: !348)
!405 = !DILocation(line: 157, column: 5, scope: !348)
!406 = !DILocation(line: 157, column: 13, scope: !348)
!407 = !DILocation(line: 157, column: 17, scope: !348)
!408 = !DILocation(line: 158, column: 5, scope: !348)
!409 = !DILocalVariable(name: "cos_result", scope: !410, file: !1, line: 161, type: !52)
!410 = distinct !DILexicalBlock(scope: !344, file: !1, line: 160, column: 8)
!411 = !DILocation(line: 161, column: 19, scope: !410)
!412 = !DILocalVariable(name: "sin_result", scope: !410, file: !1, line: 162, type: !52)
!413 = !DILocation(line: 162, column: 19, scope: !410)
!414 = !DILocalVariable(name: "stat_cos", scope: !410, file: !1, line: 163, type: !104)
!415 = !DILocation(line: 163, column: 15, scope: !410)
!416 = !DILocation(line: 163, column: 39, scope: !410)
!417 = !DILocation(line: 163, column: 26, scope: !410)
!418 = !DILocalVariable(name: "stat_sin", scope: !410, file: !1, line: 164, type: !104)
!419 = !DILocation(line: 164, column: 15, scope: !410)
!420 = !DILocation(line: 164, column: 39, scope: !410)
!421 = !DILocation(line: 164, column: 26, scope: !410)
!422 = !DILocalVariable(name: "sx", scope: !410, file: !1, line: 165, type: !49)
!423 = !DILocation(line: 165, column: 18, scope: !410)
!424 = !DILocation(line: 165, column: 34, scope: !410)
!425 = !DILocalVariable(name: "cx", scope: !410, file: !1, line: 166, type: !49)
!426 = !DILocation(line: 166, column: 18, scope: !410)
!427 = !DILocation(line: 166, column: 34, scope: !410)
!428 = !DILocalVariable(name: "a", scope: !410, file: !1, line: 167, type: !49)
!429 = !DILocation(line: 167, column: 18, scope: !410)
!430 = !DILocation(line: 167, column: 28, scope: !410)
!431 = !DILocation(line: 167, column: 30, scope: !410)
!432 = !DILocation(line: 167, column: 29, scope: !410)
!433 = !DILocation(line: 167, column: 26, scope: !410)
!434 = !DILocation(line: 168, column: 27, scope: !410)
!435 = !DILocation(line: 168, column: 25, scope: !410)
!436 = !DILocation(line: 168, column: 30, scope: !410)
!437 = !DILocation(line: 168, column: 29, scope: !410)
!438 = !DILocation(line: 168, column: 34, scope: !410)
!439 = !DILocation(line: 168, column: 32, scope: !410)
!440 = !DILocation(line: 168, column: 39, scope: !410)
!441 = !DILocation(line: 168, column: 43, scope: !410)
!442 = !DILocation(line: 168, column: 41, scope: !410)
!443 = !DILocation(line: 168, column: 37, scope: !410)
!444 = !DILocation(line: 168, column: 5, scope: !410)
!445 = !DILocation(line: 168, column: 13, scope: !410)
!446 = !DILocation(line: 168, column: 18, scope: !410)
!447 = !DILocation(line: 169, column: 31, scope: !410)
!448 = !DILocation(line: 169, column: 49, scope: !410)
!449 = !DILocation(line: 169, column: 47, scope: !410)
!450 = !DILocation(line: 169, column: 52, scope: !410)
!451 = !DILocation(line: 169, column: 51, scope: !410)
!452 = !DILocation(line: 169, column: 37, scope: !410)
!453 = !DILocation(line: 169, column: 35, scope: !410)
!454 = !DILocation(line: 169, column: 68, scope: !410)
!455 = !DILocation(line: 169, column: 79, scope: !410)
!456 = !DILocation(line: 169, column: 74, scope: !457)
!457 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 1)
!458 = !DILocation(line: 169, column: 72, scope: !410)
!459 = !DILocation(line: 169, column: 55, scope: !410)
!460 = !DILocation(line: 169, column: 5, scope: !410)
!461 = !DILocation(line: 169, column: 13, scope: !410)
!462 = !DILocation(line: 169, column: 18, scope: !410)
!463 = !DILocation(line: 170, column: 44, scope: !410)
!464 = !DILocation(line: 170, column: 47, scope: !410)
!465 = !DILocation(line: 170, column: 46, scope: !410)
!466 = !DILocation(line: 170, column: 39, scope: !410)
!467 = !DILocation(line: 170, column: 57, scope: !410)
!468 = !DILocation(line: 170, column: 61, scope: !410)
!469 = !DILocation(line: 170, column: 63, scope: !410)
!470 = !DILocation(line: 170, column: 62, scope: !410)
!471 = !DILocation(line: 170, column: 59, scope: !410)
!472 = !DILocation(line: 170, column: 52, scope: !457)
!473 = !DILocation(line: 170, column: 50, scope: !410)
!474 = !DILocation(line: 170, column: 36, scope: !410)
!475 = !DILocation(line: 170, column: 5, scope: !410)
!476 = !DILocation(line: 170, column: 13, scope: !410)
!477 = !DILocation(line: 170, column: 17, scope: !410)
!478 = !DILocation(line: 171, column: 12, scope: !410)
!479 = !DILocation(line: 171, column: 12, scope: !457)
!480 = !DILocation(line: 171, column: 12, scope: !481)
!481 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 2)
!482 = !DILocation(line: 171, column: 12, scope: !483)
!483 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 3)
!484 = !DILocation(line: 171, column: 12, scope: !485)
!485 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 4)
!486 = !DILocation(line: 171, column: 12, scope: !487)
!487 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 5)
!488 = !DILocation(line: 171, column: 12, scope: !489)
!489 = !DILexicalBlockFile(scope: !410, file: !1, discriminator: 6)
!490 = !DILocation(line: 171, column: 5, scope: !489)
!491 = !DILocation(line: 173, column: 1, scope: !302)
!492 = distinct !DISubprogram(name: "gsl_sf_bessel_yl_e", scope: !1, file: !1, line: 176, type: !493, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!493 = !DISubroutineType(types: !494)
!494 = !{!48, !48, !49, !51}
!495 = !DILocalVariable(name: "l", arg: 1, scope: !492, file: !1, line: 176, type: !48)
!496 = !DILocation(line: 176, column: 28, scope: !492)
!497 = !DILocalVariable(name: "x", arg: 2, scope: !492, file: !1, line: 176, type: !49)
!498 = !DILocation(line: 176, column: 44, scope: !492)
!499 = !DILocalVariable(name: "result", arg: 3, scope: !492, file: !1, line: 176, type: !51)
!500 = !DILocation(line: 176, column: 63, scope: !492)
!501 = !DILocation(line: 180, column: 6, scope: !502)
!502 = distinct !DILexicalBlock(scope: !492, file: !1, line: 180, column: 6)
!503 = !DILocation(line: 180, column: 8, scope: !502)
!504 = !DILocation(line: 180, column: 12, scope: !502)
!505 = !DILocation(line: 180, column: 15, scope: !506)
!506 = !DILexicalBlockFile(scope: !502, file: !1, discriminator: 1)
!507 = !DILocation(line: 180, column: 17, scope: !506)
!508 = !DILocation(line: 180, column: 6, scope: !506)
!509 = !DILocation(line: 181, column: 5, scope: !510)
!510 = distinct !DILexicalBlock(scope: !502, file: !1, line: 180, column: 25)
!511 = distinct !{!511, !509}
!512 = !DILocation(line: 181, column: 5, scope: !513)
!513 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 1)
!514 = distinct !DILexicalBlock(scope: !510, file: !1, line: 181, column: 5)
!515 = distinct !{!515, !516}
!516 = !DILocation(line: 181, column: 5, scope: !514)
!517 = !DILocation(line: 181, column: 5, scope: !518)
!518 = !DILexicalBlockFile(scope: !519, file: !1, discriminator: 2)
!519 = distinct !DILexicalBlock(scope: !514, file: !1, line: 181, column: 5)
!520 = !DILocation(line: 181, column: 5, scope: !521)
!521 = !DILexicalBlockFile(scope: !514, file: !1, discriminator: 3)
!522 = !DILocation(line: 182, column: 3, scope: !510)
!523 = !DILocation(line: 183, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !502, file: !1, line: 183, column: 11)
!525 = !DILocation(line: 183, column: 13, scope: !524)
!526 = !DILocation(line: 183, column: 11, scope: !502)
!527 = !DILocation(line: 184, column: 31, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !1, line: 183, column: 19)
!529 = !DILocation(line: 184, column: 34, scope: !528)
!530 = !DILocation(line: 184, column: 12, scope: !528)
!531 = !DILocation(line: 184, column: 5, scope: !528)
!532 = !DILocation(line: 186, column: 11, scope: !533)
!533 = distinct !DILexicalBlock(scope: !524, file: !1, line: 186, column: 11)
!534 = !DILocation(line: 186, column: 13, scope: !533)
!535 = !DILocation(line: 186, column: 11, scope: !524)
!536 = !DILocation(line: 187, column: 31, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !1, line: 186, column: 19)
!538 = !DILocation(line: 187, column: 34, scope: !537)
!539 = !DILocation(line: 187, column: 12, scope: !537)
!540 = !DILocation(line: 187, column: 5, scope: !537)
!541 = !DILocation(line: 189, column: 11, scope: !542)
!542 = distinct !DILexicalBlock(scope: !533, file: !1, line: 189, column: 11)
!543 = !DILocation(line: 189, column: 13, scope: !542)
!544 = !DILocation(line: 189, column: 11, scope: !533)
!545 = !DILocation(line: 190, column: 31, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !1, line: 189, column: 19)
!547 = !DILocation(line: 190, column: 34, scope: !546)
!548 = !DILocation(line: 190, column: 12, scope: !546)
!549 = !DILocation(line: 190, column: 5, scope: !546)
!550 = !DILocation(line: 192, column: 11, scope: !551)
!551 = distinct !DILexicalBlock(scope: !542, file: !1, line: 192, column: 11)
!552 = !DILocation(line: 192, column: 13, scope: !551)
!553 = !DILocation(line: 192, column: 11, scope: !542)
!554 = !DILocation(line: 193, column: 30, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !1, line: 192, column: 20)
!556 = !DILocation(line: 193, column: 33, scope: !555)
!557 = !DILocation(line: 193, column: 36, scope: !555)
!558 = !DILocation(line: 193, column: 12, scope: !555)
!559 = !DILocation(line: 193, column: 5, scope: !555)
!560 = !DILocation(line: 195, column: 35, scope: !561)
!561 = distinct !DILexicalBlock(scope: !551, file: !1, line: 195, column: 11)
!562 = !DILocation(line: 195, column: 33, scope: !561)
!563 = !DILocation(line: 195, column: 40, scope: !561)
!564 = !DILocation(line: 195, column: 42, scope: !561)
!565 = !DILocation(line: 195, column: 41, scope: !561)
!566 = !DILocation(line: 195, column: 46, scope: !561)
!567 = !DILocation(line: 195, column: 44, scope: !561)
!568 = !DILocation(line: 195, column: 48, scope: !561)
!569 = !DILocation(line: 195, column: 37, scope: !561)
!570 = !DILocation(line: 195, column: 11, scope: !551)
!571 = !DILocalVariable(name: "status", scope: !572, file: !1, line: 196, type: !48)
!572 = distinct !DILexicalBlock(scope: !561, file: !1, line: 195, column: 56)
!573 = !DILocation(line: 196, column: 9, scope: !572)
!574 = !DILocation(line: 196, column: 45, scope: !572)
!575 = !DILocation(line: 196, column: 47, scope: !572)
!576 = !DILocation(line: 196, column: 54, scope: !572)
!577 = !DILocation(line: 196, column: 57, scope: !572)
!578 = !DILocation(line: 196, column: 18, scope: !572)
!579 = !DILocalVariable(name: "pre", scope: !572, file: !1, line: 197, type: !50)
!580 = !DILocation(line: 197, column: 12, scope: !572)
!581 = !DILocation(line: 197, column: 34, scope: !572)
!582 = !DILocation(line: 197, column: 33, scope: !572)
!583 = !DILocation(line: 197, column: 18, scope: !572)
!584 = !DILocation(line: 198, column: 20, scope: !572)
!585 = !DILocation(line: 198, column: 5, scope: !572)
!586 = !DILocation(line: 198, column: 13, scope: !572)
!587 = !DILocation(line: 198, column: 17, scope: !572)
!588 = !DILocation(line: 199, column: 20, scope: !572)
!589 = !DILocation(line: 199, column: 5, scope: !572)
!590 = !DILocation(line: 199, column: 13, scope: !572)
!591 = !DILocation(line: 199, column: 17, scope: !572)
!592 = !DILocation(line: 200, column: 12, scope: !572)
!593 = !DILocation(line: 200, column: 5, scope: !572)
!594 = !DILocation(line: 202, column: 11, scope: !595)
!595 = distinct !DILexicalBlock(scope: !561, file: !1, line: 202, column: 11)
!596 = !DILocation(line: 202, column: 13, scope: !595)
!597 = !DILocation(line: 202, column: 11, scope: !561)
!598 = !DILocalVariable(name: "status", scope: !599, file: !1, line: 203, type: !48)
!599 = distinct !DILexicalBlock(scope: !595, file: !1, line: 202, column: 19)
!600 = !DILocation(line: 203, column: 9, scope: !599)
!601 = !DILocation(line: 203, column: 50, scope: !599)
!602 = !DILocation(line: 203, column: 52, scope: !599)
!603 = !DILocation(line: 203, column: 59, scope: !599)
!604 = !DILocation(line: 203, column: 62, scope: !599)
!605 = !DILocation(line: 203, column: 18, scope: !599)
!606 = !DILocalVariable(name: "pre", scope: !599, file: !1, line: 204, type: !50)
!607 = !DILocation(line: 204, column: 12, scope: !599)
!608 = !DILocation(line: 204, column: 34, scope: !599)
!609 = !DILocation(line: 204, column: 33, scope: !599)
!610 = !DILocation(line: 204, column: 18, scope: !599)
!611 = !DILocation(line: 205, column: 20, scope: !599)
!612 = !DILocation(line: 205, column: 5, scope: !599)
!613 = !DILocation(line: 205, column: 13, scope: !599)
!614 = !DILocation(line: 205, column: 17, scope: !599)
!615 = !DILocation(line: 206, column: 20, scope: !599)
!616 = !DILocation(line: 206, column: 5, scope: !599)
!617 = !DILocation(line: 206, column: 13, scope: !599)
!618 = !DILocation(line: 206, column: 17, scope: !599)
!619 = !DILocation(line: 207, column: 12, scope: !599)
!620 = !DILocation(line: 207, column: 5, scope: !599)
!621 = !DILocalVariable(name: "r_by", scope: !622, file: !1, line: 211, type: !52)
!622 = distinct !DILexicalBlock(scope: !595, file: !1, line: 209, column: 8)
!623 = !DILocation(line: 211, column: 19, scope: !622)
!624 = !DILocalVariable(name: "r_bym", scope: !622, file: !1, line: 212, type: !52)
!625 = !DILocation(line: 212, column: 19, scope: !622)
!626 = !DILocalVariable(name: "stat_1", scope: !622, file: !1, line: 213, type: !48)
!627 = !DILocation(line: 213, column: 9, scope: !622)
!628 = !DILocation(line: 213, column: 37, scope: !622)
!629 = !DILocation(line: 213, column: 18, scope: !622)
!630 = !DILocalVariable(name: "stat_0", scope: !622, file: !1, line: 214, type: !48)
!631 = !DILocation(line: 214, column: 9, scope: !622)
!632 = !DILocation(line: 214, column: 37, scope: !622)
!633 = !DILocation(line: 214, column: 18, scope: !622)
!634 = !DILocalVariable(name: "bym", scope: !622, file: !1, line: 215, type: !50)
!635 = !DILocation(line: 215, column: 12, scope: !622)
!636 = !DILocation(line: 215, column: 24, scope: !622)
!637 = !DILocalVariable(name: "by", scope: !622, file: !1, line: 216, type: !50)
!638 = !DILocation(line: 216, column: 12, scope: !622)
!639 = !DILocation(line: 216, column: 23, scope: !622)
!640 = !DILocalVariable(name: "byp", scope: !622, file: !1, line: 217, type: !50)
!641 = !DILocation(line: 217, column: 12, scope: !622)
!642 = !DILocalVariable(name: "j", scope: !622, file: !1, line: 218, type: !48)
!643 = !DILocation(line: 218, column: 9, scope: !622)
!644 = !DILocation(line: 219, column: 10, scope: !645)
!645 = distinct !DILexicalBlock(scope: !622, file: !1, line: 219, column: 5)
!646 = !DILocation(line: 219, column: 9, scope: !645)
!647 = !DILocation(line: 219, column: 14, scope: !648)
!648 = !DILexicalBlockFile(scope: !649, file: !1, discriminator: 1)
!649 = distinct !DILexicalBlock(scope: !645, file: !1, line: 219, column: 5)
!650 = !DILocation(line: 219, column: 16, scope: !648)
!651 = !DILocation(line: 219, column: 15, scope: !648)
!652 = !DILocation(line: 219, column: 5, scope: !648)
!653 = !DILocation(line: 220, column: 16, scope: !654)
!654 = distinct !DILexicalBlock(scope: !649, file: !1, line: 219, column: 24)
!655 = !DILocation(line: 220, column: 15, scope: !654)
!656 = !DILocation(line: 220, column: 17, scope: !654)
!657 = !DILocation(line: 220, column: 13, scope: !654)
!658 = !DILocation(line: 220, column: 21, scope: !654)
!659 = !DILocation(line: 220, column: 20, scope: !654)
!660 = !DILocation(line: 220, column: 23, scope: !654)
!661 = !DILocation(line: 220, column: 22, scope: !654)
!662 = !DILocation(line: 220, column: 28, scope: !654)
!663 = !DILocation(line: 220, column: 26, scope: !654)
!664 = !DILocation(line: 220, column: 11, scope: !654)
!665 = !DILocation(line: 221, column: 13, scope: !654)
!666 = !DILocation(line: 221, column: 11, scope: !654)
!667 = !DILocation(line: 222, column: 13, scope: !654)
!668 = !DILocation(line: 222, column: 11, scope: !654)
!669 = !DILocation(line: 223, column: 5, scope: !654)
!670 = !DILocation(line: 219, column: 20, scope: !671)
!671 = !DILexicalBlockFile(scope: !649, file: !1, discriminator: 2)
!672 = !DILocation(line: 219, column: 5, scope: !671)
!673 = distinct !{!673, !674}
!674 = !DILocation(line: 219, column: 5, scope: !622)
!675 = !DILocation(line: 224, column: 19, scope: !622)
!676 = !DILocation(line: 224, column: 5, scope: !622)
!677 = !DILocation(line: 224, column: 13, scope: !622)
!678 = !DILocation(line: 224, column: 17, scope: !622)
!679 = !DILocation(line: 225, column: 24, scope: !622)
!680 = !DILocation(line: 225, column: 32, scope: !622)
!681 = !DILocation(line: 225, column: 19, scope: !622)
!682 = !DILocation(line: 225, column: 68, scope: !622)
!683 = !DILocation(line: 225, column: 77, scope: !622)
!684 = !DILocation(line: 225, column: 71, scope: !622)
!685 = !DILocation(line: 225, column: 58, scope: !686)
!686 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 1)
!687 = !DILocation(line: 225, column: 56, scope: !622)
!688 = !DILocation(line: 225, column: 95, scope: !622)
!689 = !DILocation(line: 225, column: 105, scope: !622)
!690 = !DILocation(line: 225, column: 98, scope: !622)
!691 = !DILocation(line: 225, column: 84, scope: !692)
!692 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 2)
!693 = !DILocation(line: 225, column: 82, scope: !622)
!694 = !DILocation(line: 225, column: 37, scope: !622)
!695 = !DILocation(line: 225, column: 5, scope: !622)
!696 = !DILocation(line: 225, column: 13, scope: !622)
!697 = !DILocation(line: 225, column: 17, scope: !622)
!698 = !DILocation(line: 227, column: 12, scope: !622)
!699 = !DILocation(line: 227, column: 12, scope: !686)
!700 = !DILocation(line: 227, column: 12, scope: !692)
!701 = !DILocation(line: 227, column: 12, scope: !702)
!702 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 3)
!703 = !DILocation(line: 227, column: 12, scope: !704)
!704 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 4)
!705 = !DILocation(line: 227, column: 12, scope: !706)
!706 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 5)
!707 = !DILocation(line: 227, column: 12, scope: !708)
!708 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 6)
!709 = !DILocation(line: 227, column: 5, scope: !708)
!710 = !DILocation(line: 229, column: 1, scope: !492)
!711 = distinct !DISubprogram(name: "bessel_yl_small_x", scope: !1, file: !1, line: 42, type: !493, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!712 = !DILocalVariable(name: "l", arg: 1, scope: !711, file: !1, line: 42, type: !48)
!713 = !DILocation(line: 42, column: 34, scope: !711)
!714 = !DILocalVariable(name: "x", arg: 2, scope: !711, file: !1, line: 42, type: !49)
!715 = !DILocation(line: 42, column: 50, scope: !711)
!716 = !DILocalVariable(name: "result", arg: 3, scope: !711, file: !1, line: 42, type: !51)
!717 = !DILocation(line: 42, column: 69, scope: !711)
!718 = !DILocalVariable(name: "num_fact", scope: !711, file: !1, line: 44, type: !52)
!719 = !DILocation(line: 44, column: 17, scope: !711)
!720 = !DILocalVariable(name: "den", scope: !711, file: !1, line: 45, type: !50)
!721 = !DILocation(line: 45, column: 10, scope: !711)
!722 = !DILocation(line: 45, column: 31, scope: !711)
!723 = !DILocation(line: 45, column: 34, scope: !711)
!724 = !DILocation(line: 45, column: 35, scope: !711)
!725 = !DILocation(line: 45, column: 16, scope: !711)
!726 = !DILocalVariable(name: "stat_df", scope: !711, file: !1, line: 46, type: !48)
!727 = !DILocation(line: 46, column: 7, scope: !711)
!728 = !DILocation(line: 46, column: 39, scope: !711)
!729 = !DILocation(line: 46, column: 38, scope: !711)
!730 = !DILocation(line: 46, column: 40, scope: !711)
!731 = !DILocation(line: 46, column: 17, scope: !711)
!732 = !DILocation(line: 48, column: 6, scope: !733)
!733 = distinct !DILexicalBlock(scope: !711, file: !1, line: 48, column: 6)
!734 = !DILocation(line: 48, column: 14, scope: !733)
!735 = !DILocation(line: 48, column: 29, scope: !733)
!736 = !DILocation(line: 48, column: 32, scope: !737)
!737 = !DILexicalBlockFile(scope: !733, file: !1, discriminator: 1)
!738 = !DILocation(line: 48, column: 36, scope: !737)
!739 = !DILocation(line: 48, column: 6, scope: !737)
!740 = !DILocation(line: 49, column: 5, scope: !741)
!741 = distinct !DILexicalBlock(scope: !733, file: !1, line: 48, column: 44)
!742 = distinct !{!742, !740}
!743 = !DILocation(line: 49, column: 5, scope: !744)
!744 = !DILexicalBlockFile(scope: !745, file: !1, discriminator: 1)
!745 = distinct !DILexicalBlock(scope: !741, file: !1, line: 49, column: 5)
!746 = distinct !{!746, !747}
!747 = !DILocation(line: 49, column: 5, scope: !745)
!748 = !DILocation(line: 49, column: 5, scope: !749)
!749 = !DILexicalBlockFile(scope: !750, file: !1, discriminator: 2)
!750 = distinct !DILexicalBlock(scope: !745, file: !1, line: 49, column: 5)
!751 = !DILocation(line: 49, column: 5, scope: !752)
!752 = !DILexicalBlockFile(scope: !745, file: !1, discriminator: 3)
!753 = !DILocation(line: 50, column: 3, scope: !741)
!754 = !DILocalVariable(name: "lmax", scope: !755, file: !1, line: 52, type: !104)
!755 = distinct !DILexicalBlock(scope: !733, file: !1, line: 51, column: 8)
!756 = !DILocation(line: 52, column: 15, scope: !755)
!757 = !DILocalVariable(name: "t", scope: !755, file: !1, line: 53, type: !50)
!758 = !DILocation(line: 53, column: 12, scope: !755)
!759 = !DILocation(line: 53, column: 21, scope: !755)
!760 = !DILocation(line: 53, column: 20, scope: !755)
!761 = !DILocation(line: 53, column: 23, scope: !755)
!762 = !DILocation(line: 53, column: 22, scope: !755)
!763 = !DILocalVariable(name: "sum", scope: !755, file: !1, line: 54, type: !50)
!764 = !DILocation(line: 54, column: 12, scope: !755)
!765 = !DILocalVariable(name: "t_coeff", scope: !755, file: !1, line: 55, type: !50)
!766 = !DILocation(line: 55, column: 12, scope: !755)
!767 = !DILocalVariable(name: "t_power", scope: !755, file: !1, line: 56, type: !50)
!768 = !DILocation(line: 56, column: 12, scope: !755)
!769 = !DILocalVariable(name: "delta", scope: !755, file: !1, line: 57, type: !50)
!770 = !DILocation(line: 57, column: 12, scope: !755)
!771 = !DILocalVariable(name: "i", scope: !755, file: !1, line: 58, type: !48)
!772 = !DILocation(line: 58, column: 9, scope: !755)
!773 = !DILocation(line: 59, column: 10, scope: !774)
!774 = distinct !DILexicalBlock(scope: !755, file: !1, line: 59, column: 5)
!775 = !DILocation(line: 59, column: 9, scope: !774)
!776 = !DILocation(line: 59, column: 14, scope: !777)
!777 = !DILexicalBlockFile(scope: !778, file: !1, discriminator: 1)
!778 = distinct !DILexicalBlock(scope: !774, file: !1, line: 59, column: 5)
!779 = !DILocation(line: 59, column: 15, scope: !777)
!780 = !DILocation(line: 59, column: 5, scope: !777)
!781 = !DILocation(line: 60, column: 18, scope: !782)
!782 = distinct !DILexicalBlock(scope: !778, file: !1, line: 59, column: 28)
!783 = !DILocation(line: 60, column: 24, scope: !782)
!784 = !DILocation(line: 60, column: 26, scope: !782)
!785 = !DILocation(line: 60, column: 25, scope: !782)
!786 = !DILocation(line: 60, column: 22, scope: !782)
!787 = !DILocation(line: 60, column: 29, scope: !782)
!788 = !DILocation(line: 60, column: 19, scope: !782)
!789 = !DILocation(line: 60, column: 15, scope: !782)
!790 = !DILocation(line: 61, column: 18, scope: !782)
!791 = !DILocation(line: 61, column: 15, scope: !782)
!792 = !DILocation(line: 62, column: 15, scope: !782)
!793 = !DILocation(line: 62, column: 23, scope: !782)
!794 = !DILocation(line: 62, column: 22, scope: !782)
!795 = !DILocation(line: 62, column: 13, scope: !782)
!796 = !DILocation(line: 63, column: 14, scope: !782)
!797 = !DILocation(line: 63, column: 11, scope: !782)
!798 = !DILocation(line: 64, column: 15, scope: !799)
!799 = distinct !DILexicalBlock(scope: !782, file: !1, line: 64, column: 10)
!800 = !DILocation(line: 64, column: 21, scope: !799)
!801 = !DILocation(line: 64, column: 20, scope: !799)
!802 = !DILocation(line: 64, column: 10, scope: !799)
!803 = !DILocation(line: 64, column: 26, scope: !799)
!804 = !DILocation(line: 64, column: 10, scope: !782)
!805 = !DILocation(line: 64, column: 49, scope: !806)
!806 = !DILexicalBlockFile(scope: !799, file: !1, discriminator: 1)
!807 = !DILocation(line: 65, column: 5, scope: !782)
!808 = !DILocation(line: 59, column: 24, scope: !809)
!809 = !DILexicalBlockFile(scope: !778, file: !1, discriminator: 2)
!810 = !DILocation(line: 59, column: 5, scope: !809)
!811 = distinct !{!811, !812}
!812 = !DILocation(line: 59, column: 5, scope: !755)
!813 = !DILocation(line: 66, column: 29, scope: !755)
!814 = !DILocation(line: 66, column: 19, scope: !755)
!815 = !DILocation(line: 66, column: 33, scope: !755)
!816 = !DILocation(line: 66, column: 32, scope: !755)
!817 = !DILocation(line: 66, column: 39, scope: !755)
!818 = !DILocation(line: 66, column: 37, scope: !755)
!819 = !DILocation(line: 66, column: 5, scope: !755)
!820 = !DILocation(line: 66, column: 13, scope: !755)
!821 = !DILocation(line: 66, column: 17, scope: !755)
!822 = !DILocation(line: 67, column: 42, scope: !755)
!823 = !DILocation(line: 67, column: 50, scope: !755)
!824 = !DILocation(line: 67, column: 37, scope: !755)
!825 = !DILocation(line: 67, column: 35, scope: !755)
!826 = !DILocation(line: 67, column: 5, scope: !755)
!827 = !DILocation(line: 67, column: 13, scope: !755)
!828 = !DILocation(line: 67, column: 17, scope: !755)
!829 = !DILocation(line: 69, column: 5, scope: !755)
!830 = !DILocation(line: 71, column: 1, scope: !711)
!831 = distinct !DISubprogram(name: "gsl_sf_bessel_yl_array", scope: !1, file: !1, line: 232, type: !832, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!832 = !DISubroutineType(types: !833)
!833 = !{!48, !104, !49, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!835 = !DILocalVariable(name: "lmax", arg: 1, scope: !831, file: !1, line: 232, type: !104)
!836 = !DILocation(line: 232, column: 38, scope: !831)
!837 = !DILocalVariable(name: "x", arg: 2, scope: !831, file: !1, line: 232, type: !49)
!838 = !DILocation(line: 232, column: 57, scope: !831)
!839 = !DILocalVariable(name: "result_array", arg: 3, scope: !831, file: !1, line: 232, type: !834)
!840 = !DILocation(line: 232, column: 69, scope: !831)
!841 = !DILocation(line: 236, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !831, file: !1, line: 236, column: 6)
!843 = !DILocation(line: 236, column: 11, scope: !842)
!844 = !DILocation(line: 236, column: 15, scope: !842)
!845 = !DILocation(line: 236, column: 18, scope: !846)
!846 = !DILexicalBlockFile(scope: !842, file: !1, discriminator: 1)
!847 = !DILocation(line: 236, column: 20, scope: !846)
!848 = !DILocation(line: 236, column: 6, scope: !846)
!849 = !DILocation(line: 237, column: 5, scope: !850)
!850 = distinct !DILexicalBlock(scope: !842, file: !1, line: 236, column: 28)
!851 = distinct !{!851, !849}
!852 = !DILocation(line: 237, column: 5, scope: !853)
!853 = !DILexicalBlockFile(scope: !854, file: !1, discriminator: 1)
!854 = distinct !DILexicalBlock(scope: !850, file: !1, line: 237, column: 5)
!855 = !DILocation(line: 238, column: 3, scope: !850)
!856 = !DILocation(line: 238, column: 14, scope: !857)
!857 = !DILexicalBlockFile(scope: !858, file: !1, discriminator: 1)
!858 = distinct !DILexicalBlock(scope: !842, file: !1, line: 238, column: 14)
!859 = !DILocation(line: 238, column: 19, scope: !857)
!860 = !DILocalVariable(name: "result", scope: !861, file: !1, line: 239, type: !52)
!861 = distinct !DILexicalBlock(scope: !858, file: !1, line: 238, column: 25)
!862 = !DILocation(line: 239, column: 19, scope: !861)
!863 = !DILocalVariable(name: "stat", scope: !861, file: !1, line: 240, type: !48)
!864 = !DILocation(line: 240, column: 9, scope: !861)
!865 = !DILocation(line: 240, column: 35, scope: !861)
!866 = !DILocation(line: 240, column: 16, scope: !861)
!867 = !DILocation(line: 241, column: 30, scope: !861)
!868 = !DILocation(line: 241, column: 5, scope: !861)
!869 = !DILocation(line: 241, column: 21, scope: !861)
!870 = !DILocation(line: 242, column: 12, scope: !861)
!871 = !DILocation(line: 242, column: 5, scope: !861)
!872 = !DILocalVariable(name: "r_yell", scope: !873, file: !1, line: 244, type: !52)
!873 = distinct !DILexicalBlock(scope: !858, file: !1, line: 243, column: 10)
!874 = !DILocation(line: 244, column: 19, scope: !873)
!875 = !DILocalVariable(name: "r_yellm1", scope: !873, file: !1, line: 245, type: !52)
!876 = !DILocation(line: 245, column: 19, scope: !873)
!877 = !DILocalVariable(name: "stat_1", scope: !873, file: !1, line: 246, type: !48)
!878 = !DILocation(line: 246, column: 9, scope: !873)
!879 = !DILocation(line: 246, column: 37, scope: !873)
!880 = !DILocation(line: 246, column: 18, scope: !873)
!881 = !DILocalVariable(name: "stat_0", scope: !873, file: !1, line: 247, type: !48)
!882 = !DILocation(line: 247, column: 9, scope: !873)
!883 = !DILocation(line: 247, column: 37, scope: !873)
!884 = !DILocation(line: 247, column: 18, scope: !873)
!885 = !DILocalVariable(name: "yellp1", scope: !873, file: !1, line: 248, type: !50)
!886 = !DILocation(line: 248, column: 12, scope: !873)
!887 = !DILocalVariable(name: "yell", scope: !873, file: !1, line: 249, type: !50)
!888 = !DILocation(line: 249, column: 12, scope: !873)
!889 = !DILocation(line: 249, column: 28, scope: !873)
!890 = !DILocalVariable(name: "yellm1", scope: !873, file: !1, line: 250, type: !50)
!891 = !DILocation(line: 250, column: 12, scope: !873)
!892 = !DILocation(line: 250, column: 30, scope: !873)
!893 = !DILocalVariable(name: "ell", scope: !873, file: !1, line: 251, type: !48)
!894 = !DILocation(line: 251, column: 9, scope: !873)
!895 = !DILocation(line: 253, column: 23, scope: !873)
!896 = !DILocation(line: 253, column: 5, scope: !873)
!897 = !DILocation(line: 253, column: 21, scope: !873)
!898 = !DILocation(line: 254, column: 23, scope: !873)
!899 = !DILocation(line: 254, column: 5, scope: !873)
!900 = !DILocation(line: 254, column: 21, scope: !873)
!901 = !DILocation(line: 256, column: 13, scope: !902)
!902 = distinct !DILexicalBlock(scope: !873, file: !1, line: 256, column: 5)
!903 = !DILocation(line: 256, column: 9, scope: !902)
!904 = !DILocation(line: 256, column: 18, scope: !905)
!905 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 1)
!906 = distinct !DILexicalBlock(scope: !902, file: !1, line: 256, column: 5)
!907 = !DILocation(line: 256, column: 24, scope: !905)
!908 = !DILocation(line: 256, column: 22, scope: !905)
!909 = !DILocation(line: 256, column: 5, scope: !905)
!910 = !DILocation(line: 257, column: 19, scope: !911)
!911 = distinct !DILexicalBlock(scope: !906, file: !1, line: 256, column: 37)
!912 = !DILocation(line: 257, column: 18, scope: !911)
!913 = !DILocation(line: 257, column: 22, scope: !911)
!914 = !DILocation(line: 257, column: 16, scope: !911)
!915 = !DILocation(line: 257, column: 26, scope: !911)
!916 = !DILocation(line: 257, column: 25, scope: !911)
!917 = !DILocation(line: 257, column: 30, scope: !911)
!918 = !DILocation(line: 257, column: 28, scope: !911)
!919 = !DILocation(line: 257, column: 37, scope: !911)
!920 = !DILocation(line: 257, column: 35, scope: !911)
!921 = !DILocation(line: 257, column: 14, scope: !911)
!922 = !DILocation(line: 258, column: 29, scope: !911)
!923 = !DILocation(line: 258, column: 20, scope: !911)
!924 = !DILocation(line: 258, column: 23, scope: !911)
!925 = !DILocation(line: 258, column: 7, scope: !911)
!926 = !DILocation(line: 258, column: 27, scope: !911)
!927 = !DILocation(line: 259, column: 16, scope: !911)
!928 = !DILocation(line: 259, column: 14, scope: !911)
!929 = !DILocation(line: 260, column: 16, scope: !911)
!930 = !DILocation(line: 260, column: 14, scope: !911)
!931 = !DILocation(line: 261, column: 5, scope: !911)
!932 = !DILocation(line: 256, column: 33, scope: !933)
!933 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 2)
!934 = !DILocation(line: 256, column: 5, scope: !933)
!935 = distinct !{!935, !936}
!936 = !DILocation(line: 256, column: 5, scope: !873)
!937 = !DILocation(line: 263, column: 12, scope: !873)
!938 = !DILocation(line: 263, column: 12, scope: !939)
!939 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 1)
!940 = !DILocation(line: 263, column: 12, scope: !941)
!941 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 2)
!942 = !DILocation(line: 263, column: 12, scope: !943)
!943 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 3)
!944 = !DILocation(line: 263, column: 12, scope: !945)
!945 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 4)
!946 = !DILocation(line: 263, column: 12, scope: !947)
!947 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 5)
!948 = !DILocation(line: 263, column: 12, scope: !949)
!949 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 6)
!950 = !DILocation(line: 263, column: 5, scope: !949)
!951 = !DILocation(line: 265, column: 1, scope: !831)
!952 = distinct !DISubprogram(name: "gsl_sf_bessel_y0", scope: !1, file: !1, line: 272, type: !953, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!953 = !DISubroutineType(types: !954)
!954 = !{!50, !49}
!955 = !DILocalVariable(name: "x", arg: 1, scope: !952, file: !1, line: 272, type: !49)
!956 = !DILocation(line: 272, column: 38, scope: !952)
!957 = !DILocalVariable(name: "result", scope: !952, file: !1, line: 274, type: !52)
!958 = !DILocation(line: 274, column: 3, scope: !952)
!959 = !DILocalVariable(name: "status", scope: !952, file: !1, line: 274, type: !48)
!960 = !DILocation(line: 274, column: 3, scope: !961)
!961 = distinct !DILexicalBlock(scope: !952, file: !1, line: 274, column: 3)
!962 = !DILocation(line: 274, column: 3, scope: !963)
!963 = !DILexicalBlockFile(scope: !964, file: !1, discriminator: 1)
!964 = distinct !DILexicalBlock(scope: !961, file: !1, line: 274, column: 3)
!965 = distinct !{!965, !966}
!966 = !DILocation(line: 274, column: 3, scope: !964)
!967 = !DILocation(line: 274, column: 3, scope: !968)
!968 = !DILexicalBlockFile(scope: !969, file: !1, discriminator: 2)
!969 = distinct !DILexicalBlock(scope: !964, file: !1, line: 274, column: 3)
!970 = !DILocation(line: 274, column: 3, scope: !971)
!971 = !DILexicalBlockFile(scope: !964, file: !1, discriminator: 3)
!972 = !DILocation(line: 274, column: 3, scope: !973)
!973 = !DILexicalBlockFile(scope: !952, file: !1, discriminator: 4)
!974 = !DILocation(line: 275, column: 1, scope: !952)
!975 = distinct !DISubprogram(name: "gsl_sf_bessel_y1", scope: !1, file: !1, line: 277, type: !953, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!976 = !DILocalVariable(name: "x", arg: 1, scope: !975, file: !1, line: 277, type: !49)
!977 = !DILocation(line: 277, column: 38, scope: !975)
!978 = !DILocalVariable(name: "result", scope: !975, file: !1, line: 279, type: !52)
!979 = !DILocation(line: 279, column: 3, scope: !975)
!980 = !DILocalVariable(name: "status", scope: !975, file: !1, line: 279, type: !48)
!981 = !DILocation(line: 279, column: 3, scope: !982)
!982 = distinct !DILexicalBlock(scope: !975, file: !1, line: 279, column: 3)
!983 = !DILocation(line: 279, column: 3, scope: !984)
!984 = !DILexicalBlockFile(scope: !985, file: !1, discriminator: 1)
!985 = distinct !DILexicalBlock(scope: !982, file: !1, line: 279, column: 3)
!986 = distinct !{!986, !987}
!987 = !DILocation(line: 279, column: 3, scope: !985)
!988 = !DILocation(line: 279, column: 3, scope: !989)
!989 = !DILexicalBlockFile(scope: !990, file: !1, discriminator: 2)
!990 = distinct !DILexicalBlock(scope: !985, file: !1, line: 279, column: 3)
!991 = !DILocation(line: 279, column: 3, scope: !992)
!992 = !DILexicalBlockFile(scope: !985, file: !1, discriminator: 3)
!993 = !DILocation(line: 279, column: 3, scope: !994)
!994 = !DILexicalBlockFile(scope: !975, file: !1, discriminator: 4)
!995 = !DILocation(line: 280, column: 1, scope: !975)
!996 = distinct !DISubprogram(name: "gsl_sf_bessel_y2", scope: !1, file: !1, line: 282, type: !953, isLocal: false, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!997 = !DILocalVariable(name: "x", arg: 1, scope: !996, file: !1, line: 282, type: !49)
!998 = !DILocation(line: 282, column: 38, scope: !996)
!999 = !DILocalVariable(name: "result", scope: !996, file: !1, line: 284, type: !52)
!1000 = !DILocation(line: 284, column: 3, scope: !996)
!1001 = !DILocalVariable(name: "status", scope: !996, file: !1, line: 284, type: !48)
!1002 = !DILocation(line: 284, column: 3, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !996, file: !1, line: 284, column: 3)
!1004 = !DILocation(line: 284, column: 3, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1006, file: !1, discriminator: 1)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 284, column: 3)
!1007 = distinct !{!1007, !1008}
!1008 = !DILocation(line: 284, column: 3, scope: !1006)
!1009 = !DILocation(line: 284, column: 3, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 2)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 284, column: 3)
!1012 = !DILocation(line: 284, column: 3, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1006, file: !1, discriminator: 3)
!1014 = !DILocation(line: 284, column: 3, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !996, file: !1, discriminator: 4)
!1016 = !DILocation(line: 285, column: 1, scope: !996)
!1017 = distinct !DISubprogram(name: "gsl_sf_bessel_yl", scope: !1, file: !1, line: 287, type: !1018, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !58)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!50, !104, !49}
!1020 = !DILocalVariable(name: "l", arg: 1, scope: !1017, file: !1, line: 287, type: !104)
!1021 = !DILocation(line: 287, column: 35, scope: !1017)
!1022 = !DILocalVariable(name: "x", arg: 2, scope: !1017, file: !1, line: 287, type: !49)
!1023 = !DILocation(line: 287, column: 51, scope: !1017)
!1024 = !DILocalVariable(name: "result", scope: !1017, file: !1, line: 289, type: !52)
!1025 = !DILocation(line: 289, column: 3, scope: !1017)
!1026 = !DILocalVariable(name: "status", scope: !1017, file: !1, line: 289, type: !48)
!1027 = !DILocation(line: 289, column: 3, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 289, column: 3)
!1029 = !DILocation(line: 289, column: 3, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1031, file: !1, discriminator: 1)
!1031 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 289, column: 3)
!1032 = distinct !{!1032, !1033}
!1033 = !DILocation(line: 289, column: 3, scope: !1031)
!1034 = !DILocation(line: 289, column: 3, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1036, file: !1, discriminator: 2)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 289, column: 3)
!1037 = !DILocation(line: 289, column: 3, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1031, file: !1, discriminator: 3)
!1039 = !DILocation(line: 289, column: 3, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 4)
!1041 = !DILocation(line: 290, column: 1, scope: !1017)
