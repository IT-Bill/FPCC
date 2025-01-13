; ModuleID = 'lambert.c'
source_filename = "lambert.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@gsl_sf_lambert_W0_e.MAX_ITERS = internal constant i32 10, align 4
@gsl_sf_lambert_Wm1_e.MAX_ITERS = internal constant i32 32, align 4
@.str = private unnamed_addr constant [32 x i8] c"gsl_sf_lambert_W0_e(x, &result)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"lambert.c\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"gsl_sf_lambert_Wm1_e(x, &result)\00", align 1
@series_eval.c = internal constant [12 x double] [double -1.000000e+00, double 0x4002A734F5B6FFBE, double 0xBFFCFEB8B970748C, double 0x3FFEFC70E852924C, double 0xC002D412A70C581F, double 0x400888ED51CBABF5, double 0xC010B38B2CF3BBCD, double 0x40176E9DC5CC0431, double 0xC020CD541845D0D1, double 0x40288062C34F0196, double 0xC03219C747875FC1, double 0x403B076F7ADDDE88], align 16

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lambert_W0_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !43 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !72, metadata !73), !dbg !74
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !75, metadata !73), !dbg !76
  call void @llvm.dbg.declare(metadata double* %6, metadata !77, metadata !73), !dbg !78
  store double 0x3FD78B56362CEF38, double* %6, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata double* %7, metadata !79, metadata !73), !dbg !80
  %11 = load double, double* %4, align 8, !dbg !81
  %12 = fadd double %11, 0x3FD78B56362CEF38, !dbg !82
  store double %12, double* %7, align 8, !dbg !80
  %13 = load double, double* %4, align 8, !dbg !83
  %14 = fcmp oeq double %13, 0.000000e+00, !dbg !85
  br i1 %14, label %15, label %20, !dbg !86

; <label>:15:                                     ; preds = %2
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !87
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %16, i32 0, i32 0, !dbg !89
  store double 0.000000e+00, double* %17, align 8, !dbg !90
  %18 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !91
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %18, i32 0, i32 1, !dbg !92
  store double 0.000000e+00, double* %19, align 8, !dbg !93
  store i32 0, i32* %3, align 4, !dbg !94
  br label %89, !dbg !94

; <label>:20:                                     ; preds = %2
  %21 = load double, double* %7, align 8, !dbg !95
  %22 = fcmp olt double %21, 0.000000e+00, !dbg !97
  br i1 %22, label %23, label %31, !dbg !98

; <label>:23:                                     ; preds = %20
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !99
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 0, !dbg !101
  store double -1.000000e+00, double* %25, align 8, !dbg !102
  %26 = load double, double* %7, align 8, !dbg !103
  %27 = fsub double -0.000000e+00, %26, !dbg !104
  %28 = call double @sqrt(double %27) #5, !dbg !105
  %29 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !106
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %29, i32 0, i32 1, !dbg !107
  store double %28, double* %30, align 8, !dbg !108
  store i32 1, i32* %3, align 4, !dbg !109
  br label %89, !dbg !109

; <label>:31:                                     ; preds = %20
  %32 = load double, double* %7, align 8, !dbg !110
  %33 = fcmp oeq double %32, 0.000000e+00, !dbg !112
  br i1 %33, label %34, label %39, !dbg !113

; <label>:34:                                     ; preds = %31
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !114
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 0, !dbg !116
  store double -1.000000e+00, double* %36, align 8, !dbg !117
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !118
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !119
  store double 0x3CB0000000000000, double* %38, align 8, !dbg !120
  store i32 0, i32* %3, align 4, !dbg !121
  br label %89, !dbg !121

; <label>:39:                                     ; preds = %31
  %40 = load double, double* %7, align 8, !dbg !122
  %41 = fcmp olt double %40, 1.000000e-03, !dbg !124
  br i1 %41, label %42, label %56, !dbg !125

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata double* %8, metadata !126, metadata !73), !dbg !128
  %43 = load double, double* %7, align 8, !dbg !129
  %44 = call double @sqrt(double %43) #5, !dbg !130
  store double %44, double* %8, align 8, !dbg !128
  %45 = load double, double* %8, align 8, !dbg !131
  %46 = call double @series_eval(double %45), !dbg !132
  %47 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !133
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %47, i32 0, i32 0, !dbg !134
  store double %46, double* %48, align 8, !dbg !135
  %49 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !136
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %49, i32 0, i32 0, !dbg !137
  %51 = load double, double* %50, align 8, !dbg !137
  %52 = call double @fabs(double %51) #1, !dbg !138
  %53 = fmul double 0x3CC0000000000000, %52, !dbg !139
  %54 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !140
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %54, i32 0, i32 1, !dbg !141
  store double %53, double* %55, align 8, !dbg !142
  store i32 0, i32* %3, align 4, !dbg !143
  br label %89, !dbg !143

; <label>:56:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata double* %9, metadata !144, metadata !73), !dbg !146
  %57 = load double, double* %4, align 8, !dbg !147
  %58 = fcmp olt double %57, 1.000000e+00, !dbg !149
  br i1 %58, label %59, label %73, !dbg !150

; <label>:59:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata double* %10, metadata !151, metadata !73), !dbg !153
  %60 = load double, double* %7, align 8, !dbg !154
  %61 = fmul double 0x4015BF0A8B145769, %60, !dbg !155
  %62 = call double @sqrt(double %61) #5, !dbg !156
  store double %62, double* %10, align 8, !dbg !153
  %63 = load double, double* %10, align 8, !dbg !157
  %64 = load double, double* %10, align 8, !dbg !158
  %65 = load double, double* %10, align 8, !dbg !159
  %66 = fmul double %65, 1.100000e+01, !dbg !160
  %67 = fdiv double %66, 7.200000e+01, !dbg !161
  %68 = fadd double 0xBFD5555555555555, %67, !dbg !162
  %69 = fmul double %64, %68, !dbg !163
  %70 = fadd double 1.000000e+00, %69, !dbg !164
  %71 = fmul double %63, %70, !dbg !165
  %72 = fadd double -1.000000e+00, %71, !dbg !166
  store double %72, double* %9, align 8, !dbg !167
  br label %84, !dbg !168

; <label>:73:                                     ; preds = %56
  %74 = load double, double* %4, align 8, !dbg !169
  %75 = call double @log(double %74) #5, !dbg !171
  store double %75, double* %9, align 8, !dbg !172
  %76 = load double, double* %4, align 8, !dbg !173
  %77 = fcmp ogt double %76, 3.000000e+00, !dbg !175
  br i1 %77, label %78, label %83, !dbg !176

; <label>:78:                                     ; preds = %73
  %79 = load double, double* %9, align 8, !dbg !177
  %80 = call double @log(double %79) #5, !dbg !179
  %81 = load double, double* %9, align 8, !dbg !180
  %82 = fsub double %81, %80, !dbg !180
  store double %82, double* %9, align 8, !dbg !180
  br label %83, !dbg !181

; <label>:83:                                     ; preds = %78, %73
  br label %84

; <label>:84:                                     ; preds = %83, %59
  %85 = load double, double* %4, align 8, !dbg !182
  %86 = load double, double* %9, align 8, !dbg !183
  %87 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !184
  %88 = call i32 @halley_iteration(double %85, double %86, i32 10, %struct.gsl_sf_result_struct* %87), !dbg !185
  store i32 %88, i32* %3, align 4, !dbg !186
  br label %89, !dbg !186

; <label>:89:                                     ; preds = %84, %42, %34, %23, %15
  %90 = load i32, i32* %3, align 4, !dbg !187
  ret i32 %90, !dbg !187
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define internal double @series_eval(double) #0 !dbg !61 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %2, align 8
  call void @llvm.dbg.declare(metadata double* %2, metadata !188, metadata !73), !dbg !189
  call void @llvm.dbg.declare(metadata double* %3, metadata !190, metadata !73), !dbg !191
  %6 = load double, double* getelementptr inbounds ([12 x double], [12 x double]* @series_eval.c, i64 0, i64 8), align 16, !dbg !192
  %7 = load double, double* %2, align 8, !dbg !193
  %8 = load double, double* getelementptr inbounds ([12 x double], [12 x double]* @series_eval.c, i64 0, i64 9), align 8, !dbg !194
  %9 = load double, double* %2, align 8, !dbg !195
  %10 = load double, double* getelementptr inbounds ([12 x double], [12 x double]* @series_eval.c, i64 0, i64 10), align 16, !dbg !196
  %11 = load double, double* %2, align 8, !dbg !197
  %12 = load double, double* getelementptr inbounds ([12 x double], [12 x double]* @series_eval.c, i64 0, i64 11), align 8, !dbg !198
  %13 = fmul double %11, %12, !dbg !199
  %14 = fadd double %10, %13, !dbg !200
  %15 = fmul double %9, %14, !dbg !201
  %16 = fadd double %8, %15, !dbg !202
  %17 = fmul double %7, %16, !dbg !203
  %18 = fadd double %6, %17, !dbg !204
  store double %18, double* %3, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata double* %4, metadata !205, metadata !73), !dbg !206
  %19 = load double, double* getelementptr inbounds ([12 x double], [12 x double]* @series_eval.c, i64 0, i64 5), align 8, !dbg !207
  %20 = load double, double* %2, align 8, !dbg !208
  %21 = load double, double* getelementptr inbounds ([12 x double], [12 x double]* @series_eval.c, i64 0, i64 6), align 16, !dbg !209
  %22 = load double, double* %2, align 8, !dbg !210
  %23 = load double, double* getelementptr inbounds ([12 x double], [12 x double]* @series_eval.c, i64 0, i64 7), align 8, !dbg !211
  %24 = load double, double* %2, align 8, !dbg !212
  %25 = load double, double* %3, align 8, !dbg !213
  %26 = fmul double %24, %25, !dbg !214
  %27 = fadd double %23, %26, !dbg !215
  %28 = fmul double %22, %27, !dbg !216
  %29 = fadd double %21, %28, !dbg !217
  %30 = fmul double %20, %29, !dbg !218
  %31 = fadd double %19, %30, !dbg !219
  store double %31, double* %4, align 8, !dbg !206
  call void @llvm.dbg.declare(metadata double* %5, metadata !220, metadata !73), !dbg !221
  %32 = load double, double* getelementptr inbounds ([12 x double], [12 x double]* @series_eval.c, i64 0, i64 1), align 8, !dbg !222
  %33 = load double, double* %2, align 8, !dbg !223
  %34 = load double, double* getelementptr inbounds ([12 x double], [12 x double]* @series_eval.c, i64 0, i64 2), align 16, !dbg !224
  %35 = load double, double* %2, align 8, !dbg !225
  %36 = load double, double* getelementptr inbounds ([12 x double], [12 x double]* @series_eval.c, i64 0, i64 3), align 8, !dbg !226
  %37 = load double, double* %2, align 8, !dbg !227
  %38 = load double, double* getelementptr inbounds ([12 x double], [12 x double]* @series_eval.c, i64 0, i64 4), align 16, !dbg !228
  %39 = load double, double* %2, align 8, !dbg !229
  %40 = load double, double* %4, align 8, !dbg !230
  %41 = fmul double %39, %40, !dbg !231
  %42 = fadd double %38, %41, !dbg !232
  %43 = fmul double %37, %42, !dbg !233
  %44 = fadd double %36, %43, !dbg !234
  %45 = fmul double %35, %44, !dbg !235
  %46 = fadd double %34, %45, !dbg !236
  %47 = fmul double %33, %46, !dbg !237
  %48 = fadd double %32, %47, !dbg !238
  store double %48, double* %5, align 8, !dbg !221
  %49 = load double, double* getelementptr inbounds ([12 x double], [12 x double]* @series_eval.c, i64 0, i64 0), align 16, !dbg !239
  %50 = load double, double* %2, align 8, !dbg !240
  %51 = load double, double* %5, align 8, !dbg !241
  %52 = fmul double %50, %51, !dbg !242
  %53 = fadd double %49, %52, !dbg !243
  ret double %53, !dbg !244
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare double @log(double) #2

; Function Attrs: nounwind uwtable
define internal i32 @halley_iteration(double, double, i32, %struct.gsl_sf_result_struct*) #0 !dbg !245 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gsl_sf_result_struct*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store double %0, double* %6, align 8
  call void @llvm.dbg.declare(metadata double* %6, metadata !248, metadata !73), !dbg !249
  store double %1, double* %7, align 8
  call void @llvm.dbg.declare(metadata double* %7, metadata !250, metadata !73), !dbg !251
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !252, metadata !73), !dbg !253
  store %struct.gsl_sf_result_struct* %3, %struct.gsl_sf_result_struct** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %9, metadata !254, metadata !73), !dbg !255
  call void @llvm.dbg.declare(metadata double* %10, metadata !256, metadata !73), !dbg !257
  %16 = load double, double* %7, align 8, !dbg !258
  store double %16, double* %10, align 8, !dbg !257
  call void @llvm.dbg.declare(metadata i32* %11, metadata !259, metadata !73), !dbg !260
  store i32 0, i32* %11, align 4, !dbg !261
  br label %17, !dbg !263

; <label>:17:                                     ; preds = %79, %4
  %18 = load i32, i32* %11, align 4, !dbg !264
  %19 = load i32, i32* %8, align 4, !dbg !267
  %20 = icmp ult i32 %18, %19, !dbg !268
  br i1 %20, label %21, label %82, !dbg !269

; <label>:21:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata double* %12, metadata !270, metadata !73), !dbg !272
  call void @llvm.dbg.declare(metadata double* %13, metadata !273, metadata !73), !dbg !274
  %22 = load double, double* %10, align 8, !dbg !275
  %23 = call double @exp(double %22) #5, !dbg !276
  store double %23, double* %13, align 8, !dbg !274
  call void @llvm.dbg.declare(metadata double* %14, metadata !277, metadata !73), !dbg !278
  %24 = load double, double* %10, align 8, !dbg !279
  %25 = fadd double %24, 1.000000e+00, !dbg !280
  store double %25, double* %14, align 8, !dbg !278
  call void @llvm.dbg.declare(metadata double* %15, metadata !281, metadata !73), !dbg !282
  %26 = load double, double* %10, align 8, !dbg !283
  %27 = load double, double* %13, align 8, !dbg !284
  %28 = fmul double %26, %27, !dbg !285
  %29 = load double, double* %6, align 8, !dbg !286
  %30 = fsub double %28, %29, !dbg !287
  store double %30, double* %15, align 8, !dbg !282
  %31 = load double, double* %10, align 8, !dbg !288
  %32 = fcmp ogt double %31, 0.000000e+00, !dbg !290
  br i1 %32, label %33, label %39, !dbg !291

; <label>:33:                                     ; preds = %21
  %34 = load double, double* %15, align 8, !dbg !292
  %35 = load double, double* %14, align 8, !dbg !294
  %36 = fdiv double %34, %35, !dbg !295
  %37 = load double, double* %13, align 8, !dbg !296
  %38 = fdiv double %36, %37, !dbg !297
  store double %38, double* %15, align 8, !dbg !298
  br label %53, !dbg !299

; <label>:39:                                     ; preds = %21
  %40 = load double, double* %13, align 8, !dbg !300
  %41 = load double, double* %14, align 8, !dbg !302
  %42 = fmul double %40, %41, !dbg !303
  %43 = load double, double* %14, align 8, !dbg !304
  %44 = fadd double %43, 1.000000e+00, !dbg !305
  %45 = fmul double 5.000000e-01, %44, !dbg !306
  %46 = load double, double* %15, align 8, !dbg !307
  %47 = fmul double %45, %46, !dbg !308
  %48 = load double, double* %14, align 8, !dbg !309
  %49 = fdiv double %47, %48, !dbg !310
  %50 = fsub double %42, %49, !dbg !311
  %51 = load double, double* %15, align 8, !dbg !312
  %52 = fdiv double %51, %50, !dbg !312
  store double %52, double* %15, align 8, !dbg !312
  br label %53

; <label>:53:                                     ; preds = %39, %33
  %54 = load double, double* %15, align 8, !dbg !313
  %55 = load double, double* %10, align 8, !dbg !314
  %56 = fsub double %55, %54, !dbg !314
  store double %56, double* %10, align 8, !dbg !314
  %57 = load double, double* %10, align 8, !dbg !315
  %58 = call double @fabs(double %57) #1, !dbg !316
  %59 = load double, double* %14, align 8, !dbg !317
  %60 = call double @fabs(double %59) #1, !dbg !318
  %61 = load double, double* %13, align 8, !dbg !320
  %62 = fmul double %60, %61, !dbg !321
  %63 = fdiv double 1.000000e+00, %62, !dbg !322
  %64 = call double @GSL_MAX_DBL(double %58, double %63), !dbg !323
  %65 = fmul double 0x3CE4000000000000, %64, !dbg !325
  store double %65, double* %12, align 8, !dbg !326
  %66 = load double, double* %15, align 8, !dbg !327
  %67 = call double @fabs(double %66) #1, !dbg !329
  %68 = load double, double* %12, align 8, !dbg !330
  %69 = fcmp olt double %67, %68, !dbg !331
  br i1 %69, label %70, label %78, !dbg !332

; <label>:70:                                     ; preds = %53
  %71 = load double, double* %10, align 8, !dbg !333
  %72 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !335
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %72, i32 0, i32 0, !dbg !336
  store double %71, double* %73, align 8, !dbg !337
  %74 = load double, double* %12, align 8, !dbg !338
  %75 = fmul double 2.000000e+00, %74, !dbg !339
  %76 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !340
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %76, i32 0, i32 1, !dbg !341
  store double %75, double* %77, align 8, !dbg !342
  store i32 0, i32* %5, align 4, !dbg !343
  br label %90, !dbg !343

; <label>:78:                                     ; preds = %53
  br label %79, !dbg !344

; <label>:79:                                     ; preds = %78
  %80 = load i32, i32* %11, align 4, !dbg !345
  %81 = add i32 %80, 1, !dbg !345
  store i32 %81, i32* %11, align 4, !dbg !345
  br label %17, !dbg !347, !llvm.loop !348

; <label>:82:                                     ; preds = %17
  %83 = load double, double* %10, align 8, !dbg !350
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !351
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !352
  store double %83, double* %85, align 8, !dbg !353
  %86 = load double, double* %10, align 8, !dbg !354
  %87 = call double @fabs(double %86) #1, !dbg !355
  %88 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %9, align 8, !dbg !356
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %88, i32 0, i32 1, !dbg !357
  store double %87, double* %89, align 8, !dbg !358
  store i32 11, i32* %5, align 4, !dbg !359
  br label %90, !dbg !359

; <label>:90:                                     ; preds = %82, %70
  %91 = load i32, i32* %5, align 4, !dbg !360
  ret i32 %91, !dbg !360
}

; Function Attrs: nounwind uwtable
define i32 @gsl_sf_lambert_Wm1_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !59 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca %struct.gsl_sf_result_struct*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %4, align 8
  call void @llvm.dbg.declare(metadata double* %4, metadata !361, metadata !73), !dbg !362
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %5, metadata !363, metadata !73), !dbg !364
  %12 = load double, double* %4, align 8, !dbg !365
  %13 = fcmp ogt double %12, 0.000000e+00, !dbg !367
  br i1 %13, label %14, label %18, !dbg !368

; <label>:14:                                     ; preds = %2
  %15 = load double, double* %4, align 8, !dbg !369
  %16 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !371
  %17 = call i32 @gsl_sf_lambert_W0_e(double %15, %struct.gsl_sf_result_struct* %16), !dbg !372
  store i32 %17, i32* %3, align 4, !dbg !373
  br label %79, !dbg !373

; <label>:18:                                     ; preds = %2
  %19 = load double, double* %4, align 8, !dbg !374
  %20 = fcmp oeq double %19, 0.000000e+00, !dbg !376
  br i1 %20, label %21, label %26, !dbg !377

; <label>:21:                                     ; preds = %18
  %22 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !378
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %22, i32 0, i32 0, !dbg !380
  store double 0.000000e+00, double* %23, align 8, !dbg !381
  %24 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !382
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %24, i32 0, i32 1, !dbg !383
  store double 0.000000e+00, double* %25, align 8, !dbg !384
  store i32 0, i32* %3, align 4, !dbg !385
  br label %79, !dbg !385

; <label>:26:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata double* %6, metadata !386, metadata !73), !dbg !388
  store double 0x3FD78B56362CEF38, double* %6, align 8, !dbg !388
  call void @llvm.dbg.declare(metadata double* %7, metadata !389, metadata !73), !dbg !390
  %27 = load double, double* %4, align 8, !dbg !391
  %28 = fadd double %27, 0x3FD78B56362CEF38, !dbg !392
  store double %28, double* %7, align 8, !dbg !390
  call void @llvm.dbg.declare(metadata double* %8, metadata !393, metadata !73), !dbg !394
  %29 = load double, double* %7, align 8, !dbg !395
  %30 = fcmp olt double %29, 0.000000e+00, !dbg !397
  br i1 %30, label %31, label %39, !dbg !398

; <label>:31:                                     ; preds = %26
  %32 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !399
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %32, i32 0, i32 0, !dbg !401
  store double -1.000000e+00, double* %33, align 8, !dbg !402
  %34 = load double, double* %7, align 8, !dbg !403
  %35 = fsub double -0.000000e+00, %34, !dbg !404
  %36 = call double @sqrt(double %35) #5, !dbg !405
  %37 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !406
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %37, i32 0, i32 1, !dbg !407
  store double %36, double* %38, align 8, !dbg !408
  store i32 1, i32* %3, align 4, !dbg !409
  br label %79, !dbg !409

; <label>:39:                                     ; preds = %26
  %40 = load double, double* %4, align 8, !dbg !410
  %41 = fcmp olt double %40, -1.000000e-06, !dbg !412
  br i1 %41, label %42, label %60, !dbg !413

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata double* %9, metadata !414, metadata !73), !dbg !416
  %43 = load double, double* %7, align 8, !dbg !417
  %44 = call double @sqrt(double %43) #5, !dbg !418
  %45 = fsub double -0.000000e+00, %44, !dbg !419
  store double %45, double* %9, align 8, !dbg !416
  %46 = load double, double* %9, align 8, !dbg !420
  %47 = call double @series_eval(double %46), !dbg !421
  store double %47, double* %8, align 8, !dbg !422
  %48 = load double, double* %7, align 8, !dbg !423
  %49 = fcmp olt double %48, 3.000000e-03, !dbg !425
  br i1 %49, label %50, label %59, !dbg !426

; <label>:50:                                     ; preds = %42
  %51 = load double, double* %8, align 8, !dbg !427
  %52 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !429
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %52, i32 0, i32 0, !dbg !430
  store double %51, double* %53, align 8, !dbg !431
  %54 = load double, double* %8, align 8, !dbg !432
  %55 = call double @fabs(double %54) #1, !dbg !433
  %56 = fmul double 0x3CD4000000000000, %55, !dbg !434
  %57 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !435
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %57, i32 0, i32 1, !dbg !436
  store double %56, double* %58, align 8, !dbg !437
  store i32 0, i32* %3, align 4, !dbg !438
  br label %79, !dbg !438

; <label>:59:                                     ; preds = %42
  br label %74, !dbg !439

; <label>:60:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata double* %10, metadata !440, metadata !73), !dbg !442
  %61 = load double, double* %4, align 8, !dbg !443
  %62 = fsub double -0.000000e+00, %61, !dbg !444
  %63 = call double @log(double %62) #5, !dbg !445
  store double %63, double* %10, align 8, !dbg !442
  call void @llvm.dbg.declare(metadata double* %11, metadata !446, metadata !73), !dbg !447
  %64 = load double, double* %10, align 8, !dbg !448
  %65 = fsub double -0.000000e+00, %64, !dbg !449
  %66 = call double @log(double %65) #5, !dbg !450
  store double %66, double* %11, align 8, !dbg !447
  %67 = load double, double* %10, align 8, !dbg !451
  %68 = load double, double* %11, align 8, !dbg !452
  %69 = fsub double %67, %68, !dbg !453
  %70 = load double, double* %11, align 8, !dbg !454
  %71 = load double, double* %10, align 8, !dbg !455
  %72 = fdiv double %70, %71, !dbg !456
  %73 = fadd double %69, %72, !dbg !457
  store double %73, double* %8, align 8, !dbg !458
  br label %74

; <label>:74:                                     ; preds = %60, %59
  %75 = load double, double* %4, align 8, !dbg !459
  %76 = load double, double* %8, align 8, !dbg !460
  %77 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %5, align 8, !dbg !461
  %78 = call i32 @halley_iteration(double %75, double %76, i32 32, %struct.gsl_sf_result_struct* %77), !dbg !462
  store i32 %78, i32* %3, align 4, !dbg !463
  br label %79, !dbg !463

; <label>:79:                                     ; preds = %74, %50, %31, %21, %14
  %80 = load i32, i32* %3, align 4, !dbg !464
  ret i32 %80, !dbg !464
}

; Function Attrs: nounwind uwtable
define double @gsl_sf_lambert_W0(double) #0 !dbg !465 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !466, metadata !73), !dbg !467
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !468, metadata !73), !dbg !469
  call void @llvm.dbg.declare(metadata i32* %5, metadata !470, metadata !73), !dbg !469
  %6 = load double, double* %3, align 8, !dbg !469
  %7 = call i32 @gsl_sf_lambert_W0_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !469
  store i32 %7, i32* %5, align 4, !dbg !469
  %8 = load i32, i32* %5, align 4, !dbg !471
  %9 = icmp ne i32 %8, 0, !dbg !471
  br i1 %9, label %10, label %16, !dbg !469

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !473, !llvm.loop !476

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !478
  call void @gsl_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 225, i32 %12), !dbg !478
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !478
  %14 = load double, double* %13, align 8, !dbg !478
  store double %14, double* %2, align 8, !dbg !478
  br label %19, !dbg !478
                                                  ; No predecessors!
  br label %16, !dbg !481

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !483
  %18 = load double, double* %17, align 8, !dbg !483
  store double %18, double* %2, align 8, !dbg !483
  br label %19, !dbg !483

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !485
  ret double %20, !dbg !485
}

declare void @gsl_error(i8*, i8*, i32, i32) #4

; Function Attrs: nounwind uwtable
define double @gsl_sf_lambert_Wm1(double) #0 !dbg !486 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.gsl_sf_result_struct, align 8
  %5 = alloca i32, align 4
  store double %0, double* %3, align 8
  call void @llvm.dbg.declare(metadata double* %3, metadata !487, metadata !73), !dbg !488
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %4, metadata !489, metadata !73), !dbg !490
  call void @llvm.dbg.declare(metadata i32* %5, metadata !491, metadata !73), !dbg !490
  %6 = load double, double* %3, align 8, !dbg !490
  %7 = call i32 @gsl_sf_lambert_Wm1_e(double %6, %struct.gsl_sf_result_struct* %4), !dbg !490
  store i32 %7, i32* %5, align 4, !dbg !490
  %8 = load i32, i32* %5, align 4, !dbg !492
  %9 = icmp ne i32 %8, 0, !dbg !492
  br i1 %9, label %10, label %16, !dbg !490

; <label>:10:                                     ; preds = %1
  br label %11, !dbg !494, !llvm.loop !497

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %5, align 4, !dbg !499
  call void @gsl_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 230, i32 %12), !dbg !499
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !499
  %14 = load double, double* %13, align 8, !dbg !499
  store double %14, double* %2, align 8, !dbg !499
  br label %19, !dbg !499
                                                  ; No predecessors!
  br label %16, !dbg !502

; <label>:16:                                     ; preds = %15, %1
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %4, i32 0, i32 0, !dbg !504
  %18 = load double, double* %17, align 8, !dbg !504
  store double %18, double* %2, align 8, !dbg !504
  br label %19, !dbg !504

; <label>:19:                                     ; preds = %16, %11
  %20 = load double, double* %2, align 8, !dbg !506
  ret double %20, !dbg !506
}

; Function Attrs: nounwind
declare double @exp(double) #2

declare double @GSL_MAX_DBL(double, double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!68, !69, !70}
!llvm.ident = !{!71}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !41)
!1 = !DIFile(filename: "lambert.c", directory: "/fpcc/gsl-2.5/specfunc")
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
!41 = !{!42, !58, !60}
!42 = distinct !DIGlobalVariable(name: "MAX_ITERS", scope: !43, file: !1, line: 144, type: !56, isLocal: true, isDefinition: true, variable: i32* @gsl_sf_lambert_W0_e.MAX_ITERS)
!43 = distinct !DISubprogram(name: "gsl_sf_lambert_W0_e", scope: !1, file: !1, line: 110, type: !44, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !47, !48}
!46 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!47 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !50, line: 41, baseType: !51)
!50 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/fpcc/gsl-2.5/specfunc")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !50, line: 37, size: 128, align: 64, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !51, file: !50, line: 38, baseType: !47, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !51, file: !50, line: 39, baseType: !47, size: 64, align: 64, offset: 64)
!55 = !{}
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!58 = distinct !DIGlobalVariable(name: "MAX_ITERS", scope: !59, file: !1, line: 178, type: !56, isLocal: true, isDefinition: true, variable: i32* @gsl_sf_lambert_Wm1_e.MAX_ITERS)
!59 = distinct !DISubprogram(name: "gsl_sf_lambert_Wm1_e", scope: !1, file: !1, line: 167, type: !44, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!60 = distinct !DIGlobalVariable(name: "c", scope: !61, file: !1, line: 86, type: !64, isLocal: true, isDefinition: true, variable: [12 x double]* @series_eval.c)
!61 = distinct !DISubprogram(name: "series_eval", scope: !1, file: !1, line: 84, type: !62, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!62 = !DISubroutineType(types: !63)
!63 = !{!47, !47}
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 768, align: 64, elements: !66)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!66 = !{!67}
!67 = !DISubrange(count: 12)
!68 = !{i32 2, !"Dwarf Version", i32 4}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"PIC Level", i32 2}
!71 = !{!"clang version 3.9.1-19ubuntu1 (tags/RELEASE_391/rc2)"}
!72 = !DILocalVariable(name: "x", arg: 1, scope: !43, file: !1, line: 110, type: !47)
!73 = !DIExpression()
!74 = !DILocation(line: 110, column: 28, scope: !43)
!75 = !DILocalVariable(name: "result", arg: 2, scope: !43, file: !1, line: 110, type: !48)
!76 = !DILocation(line: 110, column: 47, scope: !43)
!77 = !DILocalVariable(name: "one_over_E", scope: !43, file: !1, line: 112, type: !65)
!78 = !DILocation(line: 112, column: 16, scope: !43)
!79 = !DILocalVariable(name: "q", scope: !43, file: !1, line: 113, type: !65)
!80 = !DILocation(line: 113, column: 16, scope: !43)
!81 = !DILocation(line: 113, column: 20, scope: !43)
!82 = !DILocation(line: 113, column: 22, scope: !43)
!83 = !DILocation(line: 115, column: 6, scope: !84)
!84 = distinct !DILexicalBlock(scope: !43, file: !1, line: 115, column: 6)
!85 = !DILocation(line: 115, column: 8, scope: !84)
!86 = !DILocation(line: 115, column: 6, scope: !43)
!87 = !DILocation(line: 116, column: 5, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 115, column: 16)
!89 = !DILocation(line: 116, column: 13, scope: !88)
!90 = !DILocation(line: 116, column: 17, scope: !88)
!91 = !DILocation(line: 117, column: 5, scope: !88)
!92 = !DILocation(line: 117, column: 13, scope: !88)
!93 = !DILocation(line: 117, column: 17, scope: !88)
!94 = !DILocation(line: 118, column: 5, scope: !88)
!95 = !DILocation(line: 120, column: 11, scope: !96)
!96 = distinct !DILexicalBlock(scope: !84, file: !1, line: 120, column: 11)
!97 = !DILocation(line: 120, column: 13, scope: !96)
!98 = !DILocation(line: 120, column: 11, scope: !84)
!99 = !DILocation(line: 127, column: 5, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 120, column: 20)
!101 = !DILocation(line: 127, column: 13, scope: !100)
!102 = !DILocation(line: 127, column: 17, scope: !100)
!103 = !DILocation(line: 128, column: 26, scope: !100)
!104 = !DILocation(line: 128, column: 25, scope: !100)
!105 = !DILocation(line: 128, column: 20, scope: !100)
!106 = !DILocation(line: 128, column: 5, scope: !100)
!107 = !DILocation(line: 128, column: 13, scope: !100)
!108 = !DILocation(line: 128, column: 17, scope: !100)
!109 = !DILocation(line: 129, column: 5, scope: !100)
!110 = !DILocation(line: 131, column: 11, scope: !111)
!111 = distinct !DILexicalBlock(scope: !96, file: !1, line: 131, column: 11)
!112 = !DILocation(line: 131, column: 13, scope: !111)
!113 = !DILocation(line: 131, column: 11, scope: !96)
!114 = !DILocation(line: 132, column: 5, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 131, column: 21)
!116 = !DILocation(line: 132, column: 13, scope: !115)
!117 = !DILocation(line: 132, column: 17, scope: !115)
!118 = !DILocation(line: 133, column: 5, scope: !115)
!119 = !DILocation(line: 133, column: 13, scope: !115)
!120 = !DILocation(line: 133, column: 17, scope: !115)
!121 = !DILocation(line: 134, column: 5, scope: !115)
!122 = !DILocation(line: 136, column: 11, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !1, line: 136, column: 11)
!124 = !DILocation(line: 136, column: 13, scope: !123)
!125 = !DILocation(line: 136, column: 11, scope: !111)
!126 = !DILocalVariable(name: "r", scope: !127, file: !1, line: 138, type: !65)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 136, column: 24)
!128 = !DILocation(line: 138, column: 18, scope: !127)
!129 = !DILocation(line: 138, column: 27, scope: !127)
!130 = !DILocation(line: 138, column: 22, scope: !127)
!131 = !DILocation(line: 139, column: 31, scope: !127)
!132 = !DILocation(line: 139, column: 19, scope: !127)
!133 = !DILocation(line: 139, column: 5, scope: !127)
!134 = !DILocation(line: 139, column: 13, scope: !127)
!135 = !DILocation(line: 139, column: 17, scope: !127)
!136 = !DILocation(line: 140, column: 48, scope: !127)
!137 = !DILocation(line: 140, column: 56, scope: !127)
!138 = !DILocation(line: 140, column: 43, scope: !127)
!139 = !DILocation(line: 140, column: 41, scope: !127)
!140 = !DILocation(line: 140, column: 5, scope: !127)
!141 = !DILocation(line: 140, column: 13, scope: !127)
!142 = !DILocation(line: 140, column: 17, scope: !127)
!143 = !DILocation(line: 141, column: 5, scope: !127)
!144 = !DILocalVariable(name: "w", scope: !145, file: !1, line: 145, type: !47)
!145 = distinct !DILexicalBlock(scope: !123, file: !1, line: 143, column: 8)
!146 = !DILocation(line: 145, column: 12, scope: !145)
!147 = !DILocation(line: 147, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !1, line: 147, column: 9)
!149 = !DILocation(line: 147, column: 11, scope: !148)
!150 = !DILocation(line: 147, column: 9, scope: !145)
!151 = !DILocalVariable(name: "p", scope: !152, file: !1, line: 152, type: !65)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 147, column: 18)
!153 = !DILocation(line: 152, column: 20, scope: !152)
!154 = !DILocation(line: 152, column: 41, scope: !152)
!155 = !DILocation(line: 152, column: 39, scope: !152)
!156 = !DILocation(line: 152, column: 24, scope: !152)
!157 = !DILocation(line: 153, column: 18, scope: !152)
!158 = !DILocation(line: 153, column: 27, scope: !152)
!159 = !DILocation(line: 153, column: 41, scope: !152)
!160 = !DILocation(line: 153, column: 42, scope: !152)
!161 = !DILocation(line: 153, column: 47, scope: !152)
!162 = !DILocation(line: 153, column: 39, scope: !152)
!163 = !DILocation(line: 153, column: 28, scope: !152)
!164 = !DILocation(line: 153, column: 25, scope: !152)
!165 = !DILocation(line: 153, column: 19, scope: !152)
!166 = !DILocation(line: 153, column: 16, scope: !152)
!167 = !DILocation(line: 153, column: 9, scope: !152)
!168 = !DILocation(line: 154, column: 5, scope: !152)
!169 = !DILocation(line: 157, column: 15, scope: !170)
!170 = distinct !DILexicalBlock(scope: !148, file: !1, line: 155, column: 10)
!171 = !DILocation(line: 157, column: 11, scope: !170)
!172 = !DILocation(line: 157, column: 9, scope: !170)
!173 = !DILocation(line: 158, column: 10, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 158, column: 10)
!175 = !DILocation(line: 158, column: 12, scope: !174)
!176 = !DILocation(line: 158, column: 10, scope: !170)
!177 = !DILocation(line: 158, column: 28, scope: !178)
!178 = !DILexicalBlockFile(scope: !174, file: !1, discriminator: 1)
!179 = !DILocation(line: 158, column: 24, scope: !178)
!180 = !DILocation(line: 158, column: 21, scope: !178)
!181 = !DILocation(line: 158, column: 19, scope: !178)
!182 = !DILocation(line: 161, column: 29, scope: !145)
!183 = !DILocation(line: 161, column: 32, scope: !145)
!184 = !DILocation(line: 161, column: 46, scope: !145)
!185 = !DILocation(line: 161, column: 12, scope: !145)
!186 = !DILocation(line: 161, column: 5, scope: !145)
!187 = !DILocation(line: 163, column: 1, scope: !43)
!188 = !DILocalVariable(name: "r", arg: 1, scope: !61, file: !1, line: 84, type: !47)
!189 = !DILocation(line: 84, column: 20, scope: !61)
!190 = !DILocalVariable(name: "t_8", scope: !61, file: !1, line: 100, type: !65)
!191 = !DILocation(line: 100, column: 16, scope: !61)
!192 = !DILocation(line: 100, column: 22, scope: !61)
!193 = !DILocation(line: 100, column: 29, scope: !61)
!194 = !DILocation(line: 100, column: 32, scope: !61)
!195 = !DILocation(line: 100, column: 39, scope: !61)
!196 = !DILocation(line: 100, column: 42, scope: !61)
!197 = !DILocation(line: 100, column: 50, scope: !61)
!198 = !DILocation(line: 100, column: 52, scope: !61)
!199 = !DILocation(line: 100, column: 51, scope: !61)
!200 = !DILocation(line: 100, column: 48, scope: !61)
!201 = !DILocation(line: 100, column: 40, scope: !61)
!202 = !DILocation(line: 100, column: 37, scope: !61)
!203 = !DILocation(line: 100, column: 30, scope: !61)
!204 = !DILocation(line: 100, column: 27, scope: !61)
!205 = !DILocalVariable(name: "t_5", scope: !61, file: !1, line: 101, type: !65)
!206 = !DILocation(line: 101, column: 16, scope: !61)
!207 = !DILocation(line: 101, column: 22, scope: !61)
!208 = !DILocation(line: 101, column: 29, scope: !61)
!209 = !DILocation(line: 101, column: 32, scope: !61)
!210 = !DILocation(line: 101, column: 39, scope: !61)
!211 = !DILocation(line: 101, column: 42, scope: !61)
!212 = !DILocation(line: 101, column: 50, scope: !61)
!213 = !DILocation(line: 101, column: 52, scope: !61)
!214 = !DILocation(line: 101, column: 51, scope: !61)
!215 = !DILocation(line: 101, column: 48, scope: !61)
!216 = !DILocation(line: 101, column: 40, scope: !61)
!217 = !DILocation(line: 101, column: 37, scope: !61)
!218 = !DILocation(line: 101, column: 30, scope: !61)
!219 = !DILocation(line: 101, column: 27, scope: !61)
!220 = !DILocalVariable(name: "t_1", scope: !61, file: !1, line: 102, type: !65)
!221 = !DILocation(line: 102, column: 16, scope: !61)
!222 = !DILocation(line: 102, column: 22, scope: !61)
!223 = !DILocation(line: 102, column: 29, scope: !61)
!224 = !DILocation(line: 102, column: 32, scope: !61)
!225 = !DILocation(line: 102, column: 39, scope: !61)
!226 = !DILocation(line: 102, column: 42, scope: !61)
!227 = !DILocation(line: 102, column: 50, scope: !61)
!228 = !DILocation(line: 102, column: 53, scope: !61)
!229 = !DILocation(line: 102, column: 60, scope: !61)
!230 = !DILocation(line: 102, column: 62, scope: !61)
!231 = !DILocation(line: 102, column: 61, scope: !61)
!232 = !DILocation(line: 102, column: 58, scope: !61)
!233 = !DILocation(line: 102, column: 51, scope: !61)
!234 = !DILocation(line: 102, column: 48, scope: !61)
!235 = !DILocation(line: 102, column: 40, scope: !61)
!236 = !DILocation(line: 102, column: 37, scope: !61)
!237 = !DILocation(line: 102, column: 30, scope: !61)
!238 = !DILocation(line: 102, column: 27, scope: !61)
!239 = !DILocation(line: 103, column: 10, scope: !61)
!240 = !DILocation(line: 103, column: 17, scope: !61)
!241 = !DILocation(line: 103, column: 19, scope: !61)
!242 = !DILocation(line: 103, column: 18, scope: !61)
!243 = !DILocation(line: 103, column: 15, scope: !61)
!244 = !DILocation(line: 103, column: 3, scope: !61)
!245 = distinct !DISubprogram(name: "halley_iteration", scope: !1, file: !1, line: 38, type: !246, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!246 = !DISubroutineType(types: !247)
!247 = !{!46, !47, !47, !57, !48}
!248 = !DILocalVariable(name: "x", arg: 1, scope: !245, file: !1, line: 39, type: !47)
!249 = !DILocation(line: 39, column: 10, scope: !245)
!250 = !DILocalVariable(name: "w_initial", arg: 2, scope: !245, file: !1, line: 40, type: !47)
!251 = !DILocation(line: 40, column: 10, scope: !245)
!252 = !DILocalVariable(name: "max_iters", arg: 3, scope: !245, file: !1, line: 41, type: !57)
!253 = !DILocation(line: 41, column: 16, scope: !245)
!254 = !DILocalVariable(name: "result", arg: 4, scope: !245, file: !1, line: 42, type: !48)
!255 = !DILocation(line: 42, column: 19, scope: !245)
!256 = !DILocalVariable(name: "w", scope: !245, file: !1, line: 45, type: !47)
!257 = !DILocation(line: 45, column: 10, scope: !245)
!258 = !DILocation(line: 45, column: 14, scope: !245)
!259 = !DILocalVariable(name: "i", scope: !245, file: !1, line: 46, type: !57)
!260 = !DILocation(line: 46, column: 16, scope: !245)
!261 = !DILocation(line: 48, column: 8, scope: !262)
!262 = distinct !DILexicalBlock(scope: !245, file: !1, line: 48, column: 3)
!263 = !DILocation(line: 48, column: 7, scope: !262)
!264 = !DILocation(line: 48, column: 12, scope: !265)
!265 = !DILexicalBlockFile(scope: !266, file: !1, discriminator: 1)
!266 = distinct !DILexicalBlock(scope: !262, file: !1, line: 48, column: 3)
!267 = !DILocation(line: 48, column: 14, scope: !265)
!268 = !DILocation(line: 48, column: 13, scope: !265)
!269 = !DILocation(line: 48, column: 3, scope: !265)
!270 = !DILocalVariable(name: "tol", scope: !271, file: !1, line: 49, type: !47)
!271 = distinct !DILexicalBlock(scope: !266, file: !1, line: 48, column: 30)
!272 = !DILocation(line: 49, column: 12, scope: !271)
!273 = !DILocalVariable(name: "e", scope: !271, file: !1, line: 50, type: !65)
!274 = !DILocation(line: 50, column: 18, scope: !271)
!275 = !DILocation(line: 50, column: 26, scope: !271)
!276 = !DILocation(line: 50, column: 22, scope: !271)
!277 = !DILocalVariable(name: "p", scope: !271, file: !1, line: 51, type: !65)
!278 = !DILocation(line: 51, column: 18, scope: !271)
!279 = !DILocation(line: 51, column: 22, scope: !271)
!280 = !DILocation(line: 51, column: 24, scope: !271)
!281 = !DILocalVariable(name: "t", scope: !271, file: !1, line: 52, type: !47)
!282 = !DILocation(line: 52, column: 12, scope: !271)
!283 = !DILocation(line: 52, column: 16, scope: !271)
!284 = !DILocation(line: 52, column: 18, scope: !271)
!285 = !DILocation(line: 52, column: 17, scope: !271)
!286 = !DILocation(line: 52, column: 22, scope: !271)
!287 = !DILocation(line: 52, column: 20, scope: !271)
!288 = !DILocation(line: 55, column: 9, scope: !289)
!289 = distinct !DILexicalBlock(scope: !271, file: !1, line: 55, column: 9)
!290 = !DILocation(line: 55, column: 11, scope: !289)
!291 = !DILocation(line: 55, column: 9, scope: !271)
!292 = !DILocation(line: 56, column: 12, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !1, line: 55, column: 16)
!294 = !DILocation(line: 56, column: 14, scope: !293)
!295 = !DILocation(line: 56, column: 13, scope: !293)
!296 = !DILocation(line: 56, column: 17, scope: !293)
!297 = !DILocation(line: 56, column: 16, scope: !293)
!298 = !DILocation(line: 56, column: 9, scope: !293)
!299 = !DILocation(line: 57, column: 5, scope: !293)
!300 = !DILocation(line: 58, column: 12, scope: !301)
!301 = distinct !DILexicalBlock(scope: !289, file: !1, line: 57, column: 12)
!302 = !DILocation(line: 58, column: 14, scope: !301)
!303 = !DILocation(line: 58, column: 13, scope: !301)
!304 = !DILocation(line: 58, column: 23, scope: !301)
!305 = !DILocation(line: 58, column: 25, scope: !301)
!306 = !DILocation(line: 58, column: 21, scope: !301)
!307 = !DILocation(line: 58, column: 32, scope: !301)
!308 = !DILocation(line: 58, column: 31, scope: !301)
!309 = !DILocation(line: 58, column: 34, scope: !301)
!310 = !DILocation(line: 58, column: 33, scope: !301)
!311 = !DILocation(line: 58, column: 16, scope: !301)
!312 = !DILocation(line: 58, column: 9, scope: !301)
!313 = !DILocation(line: 61, column: 10, scope: !271)
!314 = !DILocation(line: 61, column: 7, scope: !271)
!315 = !DILocation(line: 63, column: 51, scope: !271)
!316 = !DILocation(line: 63, column: 46, scope: !271)
!317 = !DILocation(line: 63, column: 65, scope: !271)
!318 = !DILocation(line: 63, column: 60, scope: !319)
!319 = !DILexicalBlockFile(scope: !271, file: !1, discriminator: 1)
!320 = !DILocation(line: 63, column: 68, scope: !271)
!321 = !DILocation(line: 63, column: 67, scope: !271)
!322 = !DILocation(line: 63, column: 58, scope: !271)
!323 = !DILocation(line: 63, column: 34, scope: !324)
!324 = !DILexicalBlockFile(scope: !271, file: !1, discriminator: 2)
!325 = !DILocation(line: 63, column: 32, scope: !271)
!326 = !DILocation(line: 63, column: 9, scope: !271)
!327 = !DILocation(line: 65, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !271, file: !1, line: 65, column: 8)
!329 = !DILocation(line: 65, column: 8, scope: !328)
!330 = !DILocation(line: 65, column: 18, scope: !328)
!331 = !DILocation(line: 65, column: 16, scope: !328)
!332 = !DILocation(line: 65, column: 8, scope: !271)
!333 = !DILocation(line: 67, column: 21, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !1, line: 66, column: 5)
!335 = !DILocation(line: 67, column: 7, scope: !334)
!336 = !DILocation(line: 67, column: 15, scope: !334)
!337 = !DILocation(line: 67, column: 19, scope: !334)
!338 = !DILocation(line: 68, column: 25, scope: !334)
!339 = !DILocation(line: 68, column: 24, scope: !334)
!340 = !DILocation(line: 68, column: 7, scope: !334)
!341 = !DILocation(line: 68, column: 15, scope: !334)
!342 = !DILocation(line: 68, column: 19, scope: !334)
!343 = !DILocation(line: 69, column: 7, scope: !334)
!344 = !DILocation(line: 71, column: 3, scope: !271)
!345 = !DILocation(line: 48, column: 26, scope: !346)
!346 = !DILexicalBlockFile(scope: !266, file: !1, discriminator: 2)
!347 = !DILocation(line: 48, column: 3, scope: !346)
!348 = distinct !{!348, !349}
!349 = !DILocation(line: 48, column: 3, scope: !245)
!350 = !DILocation(line: 74, column: 17, scope: !245)
!351 = !DILocation(line: 74, column: 3, scope: !245)
!352 = !DILocation(line: 74, column: 11, scope: !245)
!353 = !DILocation(line: 74, column: 15, scope: !245)
!354 = !DILocation(line: 75, column: 22, scope: !245)
!355 = !DILocation(line: 75, column: 17, scope: !245)
!356 = !DILocation(line: 75, column: 3, scope: !245)
!357 = !DILocation(line: 75, column: 11, scope: !245)
!358 = !DILocation(line: 75, column: 15, scope: !245)
!359 = !DILocation(line: 76, column: 3, scope: !245)
!360 = !DILocation(line: 77, column: 1, scope: !245)
!361 = !DILocalVariable(name: "x", arg: 1, scope: !59, file: !1, line: 167, type: !47)
!362 = !DILocation(line: 167, column: 29, scope: !59)
!363 = !DILocalVariable(name: "result", arg: 2, scope: !59, file: !1, line: 167, type: !48)
!364 = !DILocation(line: 167, column: 48, scope: !59)
!365 = !DILocation(line: 169, column: 6, scope: !366)
!366 = distinct !DILexicalBlock(scope: !59, file: !1, line: 169, column: 6)
!367 = !DILocation(line: 169, column: 8, scope: !366)
!368 = !DILocation(line: 169, column: 6, scope: !59)
!369 = !DILocation(line: 170, column: 32, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !1, line: 169, column: 15)
!371 = !DILocation(line: 170, column: 35, scope: !370)
!372 = !DILocation(line: 170, column: 12, scope: !370)
!373 = !DILocation(line: 170, column: 5, scope: !370)
!374 = !DILocation(line: 172, column: 11, scope: !375)
!375 = distinct !DILexicalBlock(scope: !366, file: !1, line: 172, column: 11)
!376 = !DILocation(line: 172, column: 13, scope: !375)
!377 = !DILocation(line: 172, column: 11, scope: !366)
!378 = !DILocation(line: 173, column: 5, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !1, line: 172, column: 21)
!380 = !DILocation(line: 173, column: 13, scope: !379)
!381 = !DILocation(line: 173, column: 17, scope: !379)
!382 = !DILocation(line: 174, column: 5, scope: !379)
!383 = !DILocation(line: 174, column: 13, scope: !379)
!384 = !DILocation(line: 174, column: 17, scope: !379)
!385 = !DILocation(line: 175, column: 5, scope: !379)
!386 = !DILocalVariable(name: "one_over_E", scope: !387, file: !1, line: 179, type: !65)
!387 = distinct !DILexicalBlock(scope: !375, file: !1, line: 177, column: 8)
!388 = !DILocation(line: 179, column: 18, scope: !387)
!389 = !DILocalVariable(name: "q", scope: !387, file: !1, line: 180, type: !65)
!390 = !DILocation(line: 180, column: 18, scope: !387)
!391 = !DILocation(line: 180, column: 22, scope: !387)
!392 = !DILocation(line: 180, column: 24, scope: !387)
!393 = !DILocalVariable(name: "w", scope: !387, file: !1, line: 181, type: !47)
!394 = !DILocation(line: 181, column: 12, scope: !387)
!395 = !DILocation(line: 183, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !387, file: !1, line: 183, column: 9)
!397 = !DILocation(line: 183, column: 11, scope: !396)
!398 = !DILocation(line: 183, column: 9, scope: !387)
!399 = !DILocation(line: 185, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !1, line: 183, column: 18)
!401 = !DILocation(line: 185, column: 15, scope: !400)
!402 = !DILocation(line: 185, column: 19, scope: !400)
!403 = !DILocation(line: 186, column: 28, scope: !400)
!404 = !DILocation(line: 186, column: 27, scope: !400)
!405 = !DILocation(line: 186, column: 22, scope: !400)
!406 = !DILocation(line: 186, column: 7, scope: !400)
!407 = !DILocation(line: 186, column: 15, scope: !400)
!408 = !DILocation(line: 186, column: 19, scope: !400)
!409 = !DILocation(line: 187, column: 7, scope: !400)
!410 = !DILocation(line: 190, column: 8, scope: !411)
!411 = distinct !DILexicalBlock(scope: !387, file: !1, line: 190, column: 8)
!412 = !DILocation(line: 190, column: 10, scope: !411)
!413 = !DILocation(line: 190, column: 8, scope: !387)
!414 = !DILocalVariable(name: "r", scope: !415, file: !1, line: 198, type: !65)
!415 = distinct !DILexicalBlock(scope: !411, file: !1, line: 190, column: 21)
!416 = !DILocation(line: 198, column: 20, scope: !415)
!417 = !DILocation(line: 198, column: 30, scope: !415)
!418 = !DILocation(line: 198, column: 25, scope: !415)
!419 = !DILocation(line: 198, column: 24, scope: !415)
!420 = !DILocation(line: 199, column: 23, scope: !415)
!421 = !DILocation(line: 199, column: 11, scope: !415)
!422 = !DILocation(line: 199, column: 9, scope: !415)
!423 = !DILocation(line: 200, column: 10, scope: !424)
!424 = distinct !DILexicalBlock(scope: !415, file: !1, line: 200, column: 10)
!425 = !DILocation(line: 200, column: 12, scope: !424)
!426 = !DILocation(line: 200, column: 10, scope: !415)
!427 = !DILocation(line: 202, column: 23, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !1, line: 200, column: 22)
!429 = !DILocation(line: 202, column: 9, scope: !428)
!430 = !DILocation(line: 202, column: 17, scope: !428)
!431 = !DILocation(line: 202, column: 21, scope: !428)
!432 = !DILocation(line: 203, column: 52, scope: !428)
!433 = !DILocation(line: 203, column: 47, scope: !428)
!434 = !DILocation(line: 203, column: 45, scope: !428)
!435 = !DILocation(line: 203, column: 9, scope: !428)
!436 = !DILocation(line: 203, column: 17, scope: !428)
!437 = !DILocation(line: 203, column: 21, scope: !428)
!438 = !DILocation(line: 204, column: 9, scope: !428)
!439 = !DILocation(line: 206, column: 5, scope: !415)
!440 = !DILocalVariable(name: "L_1", scope: !441, file: !1, line: 209, type: !65)
!441 = distinct !DILexicalBlock(scope: !411, file: !1, line: 207, column: 10)
!442 = !DILocation(line: 209, column: 20, scope: !441)
!443 = !DILocation(line: 209, column: 31, scope: !441)
!444 = !DILocation(line: 209, column: 30, scope: !441)
!445 = !DILocation(line: 209, column: 26, scope: !441)
!446 = !DILocalVariable(name: "L_2", scope: !441, file: !1, line: 210, type: !65)
!447 = !DILocation(line: 210, column: 20, scope: !441)
!448 = !DILocation(line: 210, column: 31, scope: !441)
!449 = !DILocation(line: 210, column: 30, scope: !441)
!450 = !DILocation(line: 210, column: 26, scope: !441)
!451 = !DILocation(line: 211, column: 11, scope: !441)
!452 = !DILocation(line: 211, column: 17, scope: !441)
!453 = !DILocation(line: 211, column: 15, scope: !441)
!454 = !DILocation(line: 211, column: 23, scope: !441)
!455 = !DILocation(line: 211, column: 27, scope: !441)
!456 = !DILocation(line: 211, column: 26, scope: !441)
!457 = !DILocation(line: 211, column: 21, scope: !441)
!458 = !DILocation(line: 211, column: 9, scope: !441)
!459 = !DILocation(line: 214, column: 29, scope: !387)
!460 = !DILocation(line: 214, column: 32, scope: !387)
!461 = !DILocation(line: 214, column: 46, scope: !387)
!462 = !DILocation(line: 214, column: 12, scope: !387)
!463 = !DILocation(line: 214, column: 5, scope: !387)
!464 = !DILocation(line: 216, column: 1, scope: !59)
!465 = distinct !DISubprogram(name: "gsl_sf_lambert_W0", scope: !1, file: !1, line: 223, type: !62, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!466 = !DILocalVariable(name: "x", arg: 1, scope: !465, file: !1, line: 223, type: !47)
!467 = !DILocation(line: 223, column: 33, scope: !465)
!468 = !DILocalVariable(name: "result", scope: !465, file: !1, line: 225, type: !49)
!469 = !DILocation(line: 225, column: 3, scope: !465)
!470 = !DILocalVariable(name: "status", scope: !465, file: !1, line: 225, type: !46)
!471 = !DILocation(line: 225, column: 3, scope: !472)
!472 = distinct !DILexicalBlock(scope: !465, file: !1, line: 225, column: 3)
!473 = !DILocation(line: 225, column: 3, scope: !474)
!474 = !DILexicalBlockFile(scope: !475, file: !1, discriminator: 1)
!475 = distinct !DILexicalBlock(scope: !472, file: !1, line: 225, column: 3)
!476 = distinct !{!476, !477}
!477 = !DILocation(line: 225, column: 3, scope: !475)
!478 = !DILocation(line: 225, column: 3, scope: !479)
!479 = !DILexicalBlockFile(scope: !480, file: !1, discriminator: 2)
!480 = distinct !DILexicalBlock(scope: !475, file: !1, line: 225, column: 3)
!481 = !DILocation(line: 225, column: 3, scope: !482)
!482 = !DILexicalBlockFile(scope: !475, file: !1, discriminator: 3)
!483 = !DILocation(line: 225, column: 3, scope: !484)
!484 = !DILexicalBlockFile(scope: !465, file: !1, discriminator: 4)
!485 = !DILocation(line: 226, column: 1, scope: !465)
!486 = distinct !DISubprogram(name: "gsl_sf_lambert_Wm1", scope: !1, file: !1, line: 228, type: !62, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !55)
!487 = !DILocalVariable(name: "x", arg: 1, scope: !486, file: !1, line: 228, type: !47)
!488 = !DILocation(line: 228, column: 34, scope: !486)
!489 = !DILocalVariable(name: "result", scope: !486, file: !1, line: 230, type: !49)
!490 = !DILocation(line: 230, column: 3, scope: !486)
!491 = !DILocalVariable(name: "status", scope: !486, file: !1, line: 230, type: !46)
!492 = !DILocation(line: 230, column: 3, scope: !493)
!493 = distinct !DILexicalBlock(scope: !486, file: !1, line: 230, column: 3)
!494 = !DILocation(line: 230, column: 3, scope: !495)
!495 = !DILexicalBlockFile(scope: !496, file: !1, discriminator: 1)
!496 = distinct !DILexicalBlock(scope: !493, file: !1, line: 230, column: 3)
!497 = distinct !{!497, !498}
!498 = !DILocation(line: 230, column: 3, scope: !496)
!499 = !DILocation(line: 230, column: 3, scope: !500)
!500 = !DILexicalBlockFile(scope: !501, file: !1, discriminator: 2)
!501 = distinct !DILexicalBlock(scope: !496, file: !1, line: 230, column: 3)
!502 = !DILocation(line: 230, column: 3, scope: !503)
!503 = !DILexicalBlockFile(scope: !496, file: !1, discriminator: 3)
!504 = !DILocation(line: 230, column: 3, scope: !505)
!505 = !DILexicalBlockFile(scope: !486, file: !1, discriminator: 4)
!506 = !DILocation(line: 231, column: 1, scope: !486)
